library ProtocolIMAP4;

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

uses
  Windows,
  SysUtils,
  IdComponent,
  IdMessage,
  IdIMAP4,
  IdSSLOpenSSL,
  uPlugins in '..\..\uPlugins.pas',
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
  IdStackConsts;

// general
function InterfaceVersion : integer; stdcall; forward;
procedure Init;  stdcall; forward;
function PluginType : TPluginType; stdcall; forward;
function PluginName : ShortString; stdcall; forward;
procedure ShowOptions; stdcall; forward;
procedure Unload; stdcall; forward;
procedure FreePChar(var p : PChar); stdcall; forward;
// protocol
function Protocols : ShortString; stdcall; forward;
procedure Connect(Server : PChar; Port : integer; Protocol,UserName,Password : PChar; TimeOut : integer); stdcall; forward;
procedure Disconnect; stdcall; forward;
function Connected : boolean; stdcall; forward;
function CheckMessages : integer; stdcall; forward;
function RetrieveHeader(const MsgNum : integer; var pHeader : PChar) : boolean; stdcall; forward;
function RetrieveRaw(const MsgNum : integer; var pRawMsg : PChar) : boolean; stdcall; forward;
function RetrieveTop(const MsgNum,LineCount: integer; var pDest: PChar) : boolean; stdcall; forward;
function RetrieveMsgSize(const MsgNum : integer) : integer; stdcall; forward;
function UIDL(var pUIDL : PChar; const MsgNum : integer = -1) : boolean; stdcall; forward;
function Delete(const MsgNum : integer) : boolean; stdcall; forward;
procedure SetOnWork(const OnWorkProc : TPluginWorkEvent); stdcall; forward;
function LastErrorMsg : PChar; stdcall; forward;
function PluginSupportsSSL : boolean; stdcall; forward;
function PluginSupportsAPOP : boolean; stdcall; forward;
function PluginSupportsSASL : boolean; stdcall; forward;
procedure SetSSLOptions(
  const useSSLorTLS : boolean;
  const authType : TAuthType = password;
  const sslVersion : TsslVer = sslAuto;
  const startTLS : boolean = false); stdcall; forward;


exports
  InterfaceVersion,
  // general
  Init,
  PluginType,
  PluginName,
  ShowOptions,
  FreePChar,
  Unload,
  // protocol
  Protocols,
  Connect,
  Disconnect,
  Connected,
  CheckMessages,
  RetrieveHeader,
  RetrieveRaw,
  RetrieveTop,
  RetrieveMsgSize,
  UIDL,
  Delete,
  SetOnWork,
  LastErrorMsg,
  SetSSLOptions,
  PluginSupportsSSL,
  PluginSupportsAPOP,
  PluginSupportsSASL;

type
  TIMAPWorkObject = class(TObject)
  public
    OnWork : TPluginWorkEvent;
    procedure IMAPWork(Sender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
  end;
var
  IMAP : TIdIMAP4;
  Msg : TIdMessage;
  //SSL : TIdSSLIOHandlerSocketOpenSSL;
  IMAPWorkObject : TIMAPWorkObject;

    mSSL : TIdSSLIOHandlerSocketOpenSSL;
    //mTimeout : integer;
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

    mLastErrorMsg : AnsiString;
    mHasErrorToReport : boolean;
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

function InterfaceVersion : integer; stdcall;
begin
  Result := 1;
end;

procedure Init;
var
  DLL1, DLL2 : THandle;
begin
  // init code goes here
  IMAP := TIdIMAP4.Create(nil);
  Msg := TIdMessage.Create(nil);
  Msg.NoEncode := True;
  Msg.NoDecode := True;
  IMAPWorkObject := TIMAPWorkObject.Create;
  IMAP.OnWork := IMAPWorkObject.IMAPWork;


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

function PluginType : TPluginType;
begin
  Result := piProtocol;
end;

function PluginName : ShortString;
begin
  Result := 'IMAP4 (Indy10)';
end;

procedure ShowOptions;
begin
  MessageBox(0,'IMAP Plugin For PopTrayU 4.1+','IMAP',MB_OK);
end;

procedure Unload;
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
  IMAPWorkObject.Free;
  Msg.Free;
end;

procedure FreePChar(var p : PChar); stdcall;
// Have to free the PChars from inside the DLL
begin
  StrDispose(p);
  p := nil;
end;

//--------------------------------------------------------- protocol exports ---

function Protocols : ShortString;
begin
  Result := 'IMAP4:143';
end;

procedure Connect(Server : PChar; Port : integer; Protocol,UserName,Password : PChar; TimeOut : integer);
begin
  IMAP.Host := Server;
  IMAP.Port := Port;
  IMAP.Username := Username;
  IMAP.Password := Password;
  IMAP.IOHandler := nil;

  if (not mSSLDisabled) then begin
    mIdUserPassProvider.Username := Username;
    mIdUserPassProvider.Password:= Password;
  end;

  {$IFDEF INDY9}
  IMAP.Connect(TimeOut);
  //TODO: if indy9 is ever used again, does not handle APOP auth errors.
  {$ELSE}  //INDY10
  IMAP.ConnectTimeout := TimeOut;

  IMAP.Connect(False);

  if (IMAP.IOHandler = mSSL) then begin  //SSL socket read/write timeout
    IMAP.Socket.Binding.SetSockOpt(Id_SOL_TCP, Id_SO_SNDTIMEO, TimeOut);
    IMAP.Socket.Binding.SetSockOpt(Id_SOL_TCP, Id_SO_RCVTIMEO, TimeOut);
  end;
  IMAP.Login;
  {$ENDIF}

  //try
  //except
    //on e : EIdDoesNotSupportAPOP do begin
    //  mHasErrorToReport := true;
    //  mLastErrorMsg := 'Server does not support APOP Authentication. Please fix account settings.';
    //end;
    //on e : EIdSASLNotSupported do begin // not tested! this could be the wrong error code?
    //  mHasErrorToReport := true;
    //  mLastErrorMsg := 'Server does not support SASL Authentication. Please fix account settings.';
    //end;
  //end;

  IMAP.SelectMailBox('INBOX');
end;


function LastErrorMsg : PChar;
begin
  if (mHasErrorToReport) then
    Result := PAnsiChar(mLastErrorMsg)
  else Result := nil;
  mHasErrorToReport := false;
end;

function PluginSupportsSSL : boolean;
begin
  Result := not mSSLDisabled;
end;

function PluginSupportsAPOP : boolean;
begin
  Result := false;
end;

function PluginSupportsSASL : boolean;
begin
  Result := false;
end;


procedure Disconnect;
begin
  IMAP.IOHandler.InputBuffer.clear;
  IMAP.Disconnect;
end;

function Connected : boolean;
begin
  Result := IMAP.Connected;
end;

function CheckMessages : integer;
begin
  Result := IMAP.MailBox.TotalMsgs;
end;

function RetrieveHeader(const MsgNum : integer; var pHeader : PChar) : boolean;
begin
  Msg.Clear;
  Result := IMAP.RetrieveHeader(MsgNum,Msg);
  if Result then
    pHeader := Msg.Headers.GetText;
end;

function RetrieveRaw(const MsgNum : integer; var pRawMsg : PChar) : boolean;
begin
  Msg.Clear;
  Result := IMAP.Retrieve(MsgNum,Msg);
  if Result then
    pRawMsg := StrNew(PChar(Msg.Headers.Text+#13#10+Msg.Body.Text));
end;

function RetrieveTop(const MsgNum,LineCount: integer; var pDest: PChar) : boolean;
//var
//  st : string;
begin
  Msg.Clear;
  // get header
  Result := IMAP.RetrieveHeader(MsgNum,Msg);
  if Result then
  begin
    // get first LineCount*70 octets
    IMAP.RetrievePeek(MsgNum, Msg);      //Temp replacement
{
    IMAP.WriteLn('xx FETCH '+IntToStr(MsgNum)+' BODY.PEEK[TEXT]<0.'+
                 IntToStr(LineCount*70)+'>');
    Result := IMAP.GetLineResponse('xx',[wsOK]) = wsOK;
    if Result then
    begin
      Msg.Body.Clear;
      st := IMAP.ReadlnWait; //Changed from ReadLn indy9
      while Copy(st,1,3) <> 'xx ' do
      begin
        Msg.Body.Add(st);
        st := IMAP.ReadlnWait; //Changed from ReadLn indy9;
      end;
      // delete last line
      Msg.Body.Strings[Msg.Body.Count-1] := '';
      pDest := StrNew(PChar(Msg.Headers.Text+#13#10+Msg.Body.Text));
    end; }
  end;
end;

function RetrieveMsgSize(const MsgNum : integer) : integer;
begin
  Result := IMAP.RetrieveMsgSize(MsgNum);
end;

function UIDL(var pUIDL : PChar; const MsgNum : integer = -1) : boolean;
var
  st,UID : string;
  i, nCount : integer;
begin
  if MsgNum > -1 then
  begin
    Result := IMAP.GetUID(MsgNum, UID);
    st := IntToStr(MsgNum) + ' ' +IMAP.MailBox.UIDValidity + '_' + UID;
    pUIDL := StrNew(PChar(st));
  end
  else begin
    st := '';
    nCount := IMAP.MailBox.TotalMsgs;
    for i := 0 to nCount-1 do
    begin
      IMAP.GetUID(nCount, UID); //changed MsgNum to nCount. MsgNum doesn't make sense (b/c we know it's -1)
      if UID <> '' then
        st := st + IntToStr(i+1) + ' ' + IMAP.MailBox.UIDValidity + '_' + UID + #13#10;

    end;
    pUIDL := StrNew(PChar(Trim(st)));
    Result := True;
  end;
end;

function Delete(const MsgNum : integer) : boolean;
begin
  Result := IMAP.DeleteMsgs([MsgNum]);
  IMAP.ExpungeMailBox;
end;

procedure SetOnWork(const OnWorkProc : TPluginWorkEvent);
begin
  IMAPWorkObject.OnWork := OnWorkProc;
end;

{ TIMAPWorkObject }

procedure TIMAPWorkObject.IMAPWork(Sender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
begin
  if Assigned(OnWork) then
    OnWork(AWorkCount);
end;



// called right before connecting.
procedure SetSSLOptions(
  const useSSLorTLS : boolean;
  const authType : TAuthType = password;
  const sslVersion : TsslVer = sslAuto;
  const startTLS : boolean = false);
begin
  if (not mSSLDisabled) and (useSSLorTLS) then 
  begin
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
    //autoAuth:
    //  if (not mSSLDisabled)
    //    then IMAP.AuthType := iatSASL
    //  else IMAP.AuthType := DEF_IMAP4_AUTH;
    password:
      IMAP.AuthType := iatUserPass;
    //apop:
    //  IMAP.AuthType := iatAPOP;
    //sasl:
    //  if (not mSSLDisabled) then
    //    IMAP.AuthType := iatSASL;
    else
      IMAP.AuthType := DEF_IMAP4_AUTH; //i.e. password
  end;

  if (mSSLDisabled and useSSLorTLS) then begin
    mHasErrorToReport := true;
    mLastErrorMsg := 'Account configured for SSL, but SSL is not available.';
  end;
end;


end.


// Exceptions for IMAP:EIdIMAP4ServerException, EIdIMAP4ImplicitTLSRequiresSSL,
// EIdReplyIMAP4Error
