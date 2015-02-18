unit uIMAP4;

{-------------------------------------------------------------------------------
POPTRAYU Copyright (C) 2012-2013 Jessica Brown
POPTRAY  Copyright (C) 2003  Renier Crause
All Rights Reserved.

This is free software.

Permission to use, copy, modify, and distribute this software and
its documentation for any purpose, without fee, and without written
agreement is hereby granted, provided that the above copyright
notice appear in all copies of this software.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
-------------------------------------------------------------------------------}
interface

uses
  Windows,
  SysUtils,
  IdComponent,
  IdGlobal,
  IdMessage,
  IdIMAP4,
  uPlugins,
  IdStackConsts,
  Classes,
  IdAttachment, IdAttachmentMemory;

type
  TPluginIMAP4 = class(TPluginProtocol)
  private
    procedure IMAPWork(Sender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
    procedure IdMessage1CreateAttachment(const AMsg: TIdMessage; const AHeaders: TStrings; var AAttachment: TIdAttachment);

  public
    // general
    IMAP : TIdIMAP4;
    constructor Create;
    // protocol
    function Protocols : ShortString; override;
    procedure Connect(Server : PChar; Port : integer; Protocol,UserName,Password : PChar; TimeOut : integer); override;
    procedure Disconnect; override;
    procedure DisconnectWithQuit; override;
    function Connected : boolean; override;
    function CheckMessages : integer; override;
    function RetrieveHeader(const MsgNum : integer; var pHeader : PChar) : boolean; override;
    function RetrieveRaw(const MsgNum : integer; var pRawMsg : PChar) : boolean; override;
    function RetrieveTop(const MsgNum,LineCount: integer; var pDest: PChar) : boolean; override;
    function RetrieveMsgSize(const MsgNum : integer) : integer; override;
    function UIDL(var pUIDL : PChar; const MsgNum : integer = -1) : boolean; override;
    function Delete(const MsgNum : integer) : boolean; override;
    procedure SetOnWork(const OnWorkProc : TPluginWorkEvent); override;
    function LastErrorMsg : PChar; override;
    function PluginSupportsSSL : boolean; override;
    function PluginSupportsAPOP : boolean; override;
    function PluginSupportsSASL : boolean; override;
    function SupportsUIDL(): boolean; override;
    function CountMessages(): LongInt; override;
    procedure SetSSLOptions(
      const useSSLorTLS : boolean;
      const authType : TAuthType = password;
      const sslVersion : TsslVer = sslAuto;
      const startTLS : boolean = false); override;
    destructor Destroy; override;
    procedure Expunge; override;
    function DeleteMsgsByUID(const uidList: array of String): boolean; override;
  end;


implementation
uses
  IdLogBase, IdLogFile, IdIntercept, uIniSettings,
  IdSASL_CRAM_MD5,
  IdSASLLogin,
  IdSASL_CRAM_SHA1,
  IdUserPassProvider,
  IdSASLUserPass,
  IdSASLPlain,
  IdSASLSKey,
  IdSASLOTP,
  IdSASLExternal,
  IdSASLDigest,
  IdSASLAnonymous,
  IdExplicitTLSClientServerBase,
  IdSSLOpenSSL;

const
  debugImap = false;

var
    Msg : TIdMessage;

    mSSL : TIdSSLIOHandlerSocketOpenSSL;
    mSSLDisabled : boolean = false;

    mIdUserPassProvider: TIdUserPassProvider;
    mIdSASLCRAMMD5: TIdSASLCRAMMD5;
    mIdSASLCRAMSHA1: TIdSASLCRAMSHA1;
    mIdSASLPlain: TIdSASLPlain;
    mIdSASLLogin: TIdSASLLogin;
    mIdSASLSKey: TIdSASLSKey;
    mIdSASLOTP: TIdSASLOTP;
    mIdSASLAnonymous: TIdSASLAnonymous;
    mIdSASLExternal: TIdSASLExternal;

    mLastErrorMsg : string;
    mHasErrorToReport : boolean;
    DebugLogger : TIdLogFile;


//------------------------------------------------------------------ helpers ---

function WordAfterStr(str,substr : string) : string;
var
  i : integer;
begin
  Result := '';
  if pos(substr,str) = 0 then Exit;
  for i := pos(substr,str)+length(substr) to length(str) do
  begin
    if not(str[i] in [' ',')',#13,#10]) then
      Result := Result + str[i];
  end;
end;

//---------------------------------------------------------- general exports ---

constructor TPluginIMAP4.Create;
var
  DLL1, DLL2 : THandle;
  //idLogFile1 : TidLogFile;//DEBUG - logging.
begin
  Self.PluginType := piProtocol;
  Self.Name := 'IMAP';
  Self.ProtocolType := protIMAP4;
  IMAP := TIdIMAP4.Create(nil);
  Msg := TIdMessage.Create(nil);
  Msg.OnCreateAttachment := IdMessage1CreateAttachment;
  Msg.NoEncode := True;
  Msg.NoDecode := True;

  //LogFile1 := TidLogFile.Create(nil);//DEBUG - logging.
  //idLogFile1.Filename := 'C:\temp\indy_imap_log.txt';
  //idLogFile1.active := True;
  //AP.Intercept := idLogFile1;//DEBUG - logging.

  IMAP.OnWork := IMAPWork;
  IMAP.MilliSecsToWaitToClearBuffer := 10;

  if (debugImap) then
  begin
    DebugLogger := TIdLogFile.Create(Nil);
    DebugLogger.Filename:= uIniSettings.GetSettingsFolder() + 'imap_debug.log';
    DebugLogger.Active:= True;
    IMAP.Intercept:= TIdConnectionIntercept(DebugLogger);
  end;

  DLL1 := LoadLibrary('libeay32.dll');
  if DLL1 = 0 then begin
    //MessageDlg('OpenSSL library libeay32.dll Not Found. SSL/TLS will be unavailable.', mtError, [mbOK], 0);
    mSSLDisabled := true;
  end
  else begin
    DLL2 := LoadLibrary('ssleay32.dll');
    if DLL2 = 0 then begin
      //MessageDlg('OpenSSL library ssleay32.dll Not Found. SSL/TLS will be unavailable.', mtError, [mbOK], 0);
      mSSLDisabled := true;
    end;
  end;

  // pretty much everything inside this IF will fail if the SSL DLLs fail to load
  if (not mSSLDisabled) then begin
    mSSL := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
    mSSL.SSLOptions.Mode := sslmClient;
    mSSL.PassThrough := False;
    mSSL.MaxLineAction := maException;
    mSSL.SSLOptions.VerifyMode := [];
    mSSL.SSLOptions.VerifyDepth := 0;


    mIdUserPassProvider := TIdUserPassProvider.Create(IMAP);

    // Initialize all the available SASL authentication mechnisms
    mIdSASLCRAMMD5 := TIdSASLCRAMMD5.Create(IMAP);
    mIdSASLCRAMMD5.UserPassProvider := mIdUserPassProvider;

    mIdSASLCRAMSHA1 := TIdSASLCRAMSHA1.Create(IMAP);
    mIdSASLCRAMSHA1.UserPassProvider := mIdUserPassProvider;

    mIdSASLPlain := TIdSASLPlain.Create(IMAP);
    mIdSASLPlain.UserPassProvider := mIdUserPassProvider;

    mIdSASLLogin := TIdSASLLogin.Create(IMAP);  // same as sasDefault
    mIdSASLLogin.UserPassProvider := mIdUserPassProvider;

    mIdSASLSKey := TIdSASLSKey.Create(IMAP);
    mIdSASLSKey.UserPassProvider := mIdUserPassProvider;

    mIdSASLOTP := TIdSASLOTP.Create(IMAP);
    mIdSASLOTP.UserPassProvider := mIdUserPassProvider;

    mIdSASLAnonymous := TIdSASLAnonymous.Create(IMAP);
    // doesn't use a IdUserPassProvider

    mIdSASLExternal := TIdSASLExternal.Create(IMAP);
    // doesn't use a IdUserPassProvider


    // The order of the SASL mechanisms is important, they need to be added
    // from most secure to least secure, so the most secure mechanisms are
    // tried first
    IMAP.SASLMechanisms.Add.SASL := mIdSASLCRAMSHA1;
    IMAP.SASLMechanisms.Add.SASL := mIdSASLCRAMMD5;
    IMAP.SASLMechanisms.Add.SASL := mIdSASLSKey;
    IMAP.SASLMechanisms.Add.SASL := mIdSASLOTP;
    IMAP.SASLMechanisms.Add.SASL := mIdSASLAnonymous;
    IMAP.SASLMechanisms.Add.SASL := mIdSASLExternal;
    IMAP.SASLMechanisms.Add.SASL := mIdSASLLogin;
    IMAP.SASLMechanisms.Add.SASL := mIdSASLPlain;


  end;


end;

destructor TPluginIMAP4.Destroy;
begin
  if (not mSSLDisabled) then begin
    mIdUserPassProvider.Free;
    mIdSASLCRAMMD5.Free;
    mIdSASLCRAMSHA1.Free;
    mIdSASLSKey.Free;
    mIdSASLOTP.Free;
    mIdSASLAnonymous.Free;
    mIdSASLExternal.Free;
    mIdSASLLogin.Free;
    mIdSASLPlain.Free;
    mSSL.Free;
  end;

  IMAP.Free;
  Msg.Free;
end;

//--------------------------------------------------------- protocol exports ---

function TPluginIMAP4.Protocols : ShortString;
begin
  Result := 'IMAP4:143';
end;

procedure TPluginIMAP4.Connect(Server : PChar; Port : integer; Protocol,UserName,Password : PChar; TimeOut : integer);
begin
  IMAP.Host := Server;
  IMAP.Port := Port;
  IMAP.Username := Username;
  IMAP.Password := Password;

  if (not mSSLDisabled) then begin
    mIdUserPassProvider.Username := Username;
    mIdUserPassProvider.Password:= Password;
  end;

  IMAP.ConnectTimeout := TimeOut; // ConnectTimeout expects milliseconds
  IMAP.ReadTimeout := TimeOut;
  IMAP.Connect(false);

  //if (IMAP.IOHandler = mSSL) then begin  //SSL socket read/write timeout
    //IMAP.Socket.Binding.SetSockOpt(Id_SOL_TCP, Id_SO_SNDTIMEO, TimeOut*1000);
    //IMAP.Socket.Binding.SetSockOpt(Id_SOL_TCP, Id_SO_RCVTIMEO, TimeOut*1000);
  //end;

  IMAP.Login;
  IMAP.SelectMailBox('INBOX');
end;


function TPluginIMAP4.LastErrorMsg : PChar;
begin
  if (mHasErrorToReport) then
    Result := PChar(mLastErrorMsg)
  else Result := nil;
  mHasErrorToReport := false;
end;

function TPluginIMAP4.PluginSupportsSSL : boolean;
begin
  Result := not mSSLDisabled;
end;

function TPluginIMAP4.PluginSupportsAPOP : boolean;
begin
  Result := false;
end;

function TPluginIMAP4.PluginSupportsSASL : boolean;
begin
  Result := true;
end;


procedure TPluginIMAP4.Disconnect;
begin
  IMAP.IOHandler.InputBuffer.clear;
  IMAP.Disconnect(false);
end;

procedure TPluginIMAP4.DisconnectWithQuit;
begin
  if IMAP.Connected then
  begin
    IMAP.IOHandler.InputBuffer.clear;
    IMAP.Disconnect(true);
  end;
end;

function TPluginIMAP4.Connected : boolean;
begin
  Result := IMAP.Connected;
end;

function TPluginIMAP4.CheckMessages : integer;
begin
  Result := IMAP.MailBox.TotalMsgs;
end;

function TPluginIMAP4.RetrieveHeader(const MsgNum : integer; var pHeader : PChar) : boolean;
begin
  Msg.Clear;
  IMAP.IOHandler.MaxLineAction := maSplit;
  Result := IMAP.RetrieveHeader(MsgNum,Msg);
  if Result then
    pHeader := Msg.Headers.GetText;
end;

function TPluginIMAP4.RetrieveRaw(const MsgNum : integer; var pRawMsg : PChar) : boolean;
begin
  Msg.Clear;
  IMAP.IOHandler.MaxLineAction := maSplit;
  Result := IMAP.Retrieve(MsgNum,Msg);
  if Result then
    pRawMsg := StrNew(PChar(Msg.Headers.Text+#13#10+Msg.Body.Text));
end;

function TPluginIMAP4.RetrieveTop(const MsgNum,LineCount: integer; var pDest: PChar) : boolean;
var
  st : string;
begin
  Msg.Clear;
  IMAP.IOHandler.MaxLineAction := maSplit;
  // get header
  Result := IMAP.RetrieveHeader(MsgNum,Msg);
  if Result then
  begin
    // get first LineCount*70 octets
    IMAP.WriteLn('xx FETCH '+IntToStr(MsgNum)+' BODY.PEEK[TEXT]<0.'+
                 IntToStr(LineCount*70)+'>');
    //Result := IMAP.GetLineResponse('xx',[wsOK]) = wsOK;    //indy9
    Result := IMAP.LastCmdResult.Code = 'OK';                //indy10

    if Result then
    begin
      Msg.Body.Clear;
      IMAP.IOHandler.ReadLn; // skip the first line, it's the response
        // acknowledging the fetch command, not part of the body
      st := IMAP.IOHandler.ReadLn;
      while Copy(st,1,3) <> 'xx ' do
      begin
        Msg.Body.Add(st);
        st := IMAP.IOHandler.ReadLn;
      end;
      // delete last line
      Msg.Body.Strings[Msg.Body.Count-1] := '';
      pDest := StrNew(PChar(Msg.Headers.Text+#13#10+Msg.Body.Text));
    end;
  end;
end;

function TPluginIMAP4.RetrieveMsgSize(const MsgNum : integer) : integer;
begin
  Result := IMAP.RetrieveMsgSize(MsgNum);
end;

function TPluginIMAP4.UIDL(var pUIDL : PChar; const MsgNum : integer = -1) : boolean;
var
  st,UID : string;
  i, nCount : integer;
begin

  if MsgNum > -1 then
  begin
    Result := IMAP.GetUID(MsgNum, UID);
    st := IntToStr(MsgNum) + ' ' + (*'UID' +*) UID (*+ '-' + IMAP.MailBox.UIDValidity*);
    pUIDL := StrNew(PChar(st));
  end
  else begin  //get a list of all UIDs in mailbox
    st := '';
    nCount := IMAP.MailBox.TotalMsgs; //number of messages on the server
    for i := 1 to nCount do  //Relative message numbers start from 1 and go up according to INDY docs
    begin
      UID := '';
      IMAP.GetUID(i, UID);
      if UID <> '' then
        st := st + IntToStr(i) + ' ' + (*'UID' +*) UID (*+ '-' + IMAP.MailBox.UIDValidity *)+ #13#10;

    end;
    pUIDL := StrNew(PChar(Trim(st)));
    //OutputDebugString(PChar(pUIDL));
    Result := True;
  end;
end;

function TPluginIMAP4.Delete(const MsgNum : integer) : boolean;
begin
  Result := IMAP.DeleteMsgs([MsgNum]);
end;

procedure  TPluginIMAP4.Expunge();
begin
  IMAP.ExpungeMailBox;
end;


procedure TPluginIMAP4.SetOnWork(const OnWorkProc : TPluginWorkEvent);
begin
  OnWork := OnWorkProc;
end;

{ TIMAPWorkObject }

procedure TPluginIMAP4.IMAPWork(Sender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
begin
  if Assigned(OnWork) then
    OnWork(AWorkCount);
end;



// called right before connecting.
procedure TPluginIMAP4.SetSSLOptions(
  const useSSLorTLS : boolean;
  const authType : TAuthType = password;
  const sslVersion : TsslVer = sslAuto;
  const startTLS : boolean = false);
begin
  if (not mSSLDisabled) and (useSSLorTLS) then
  begin
    if (IMAP.Connected) then begin
      IMAP.IOHandler.InputBuffer.clear;
      IMAP.Disconnect();
    end;

    IMAP.IOHandler := mSSL;


    case (sslVersion) of
      sslAuto :  mSSL.SSLOptions.Method := sslvSSLv23;// 23 = special value, means auto
      sslv2 :    mSSL.SSLOptions.Method := sslvSSLv2;
      sslv3 :    mSSL.SSLOptions.Method := sslvSSLv3;
      tlsv1 :    mSSL.SSLOptions.Method := sslvTLSv1;
      tlsv11 :   mSSL.SSLOptions.Method := sslvTLSv1_1;
      tlsv12 :   mSSL.SSLOptions.Method := sslvTLSv1_2;
    end;

    if (startTLS) then
      IMAP.UseTLS := utUseExplicitTLS
    else
      IMAP.UseTLS := utUseImplicitTLS;
  end
  else
  begin
    IMAP.IOHandler := nil;
    IMAP.UseTLS := utNoTLSSupport;
  end;

  case (authType) of
    autoAuth:
      if (not mSSLDisabled)
        then IMAP.AuthType := iatSASL
      else IMAP.AuthType := DEF_IMAP4_AUTH;
    password:
      IMAP.AuthType := iatUserPass;
    //apop:
    //  IMAP.AuthType := iatAPOP;
    sasl:
      if (not mSSLDisabled) then
        IMAP.AuthType := iatSASL;
    else
      IMAP.AuthType := DEF_IMAP4_AUTH; //i.e. password
  end;

  if (mSSLDisabled and useSSLorTLS) then begin
    mHasErrorToReport := true;
    mLastErrorMsg := 'Account configured for SSL, but SSL is not available.';
  end;
end;


// This method expects to already be connected.
// Returns true if server supports UIDL, false otherwise
function TPluginIMAP4.SupportsUIDL(): boolean;
begin
  Result:=true;
end;

function TPluginIMAP4.CountMessages(): LongInt;
begin
  if IMAP.SelectMailBox('INBOX') then
    Result := IMAP.MailBox.TotalMsgs
  else Result := -1;
end;

function TPluginIMAP4.DeleteMsgsByUID(const uidList: array of String): boolean;
begin
  Result := IMAP.UIDDeleteMsgs(uidList);
end;

procedure TPluginIMAP4.IdMessage1CreateAttachment(const AMsg: TIdMessage; const AHeaders: TStrings; var AAttachment: TIdAttachment);
begin
  AAttachment := TIdAttachmentMemory.Create(AMsg.MessageParts);
end;


// Exceptions for IMAP:EIdIMAP4ServerException, EIdIMAP4ImplicitTLSRequiresSSL,
// EIdReplyIMAP4Error

end.
