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
  uProtocol,
  IdStackConsts,
  Classes,
  IdAttachment, IdAttachmentMemory, System.Generics.Collections,
  IdMailbox,
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
  IdSSLOpenSSL,
  IdLogFile;

type
  TProtocolIMAP4 = class(TProtocol)
  private
    Msg : TIdMessage;

    mSSL : TIdSSLIOHandlerSocketOpenSSL;
    mSSLDisabled : boolean;// = false;

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
    capabilities : TStringList;
    procedure IMAPWork(Sender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
    procedure IdMessage1CreateAttachment(const AMsg: TIdMessage; const AHeaders: TStrings; var AAttachment: TIdAttachment);
    function HasCapa(capability: string) : boolean;
  public
    // general
    IMAP : TIdIMAP4;
    constructor Create;
    // protocol
    procedure Connect(Server : String; Port : integer; UserName,Password : String; TimeOut : integer); override;
    procedure Disconnect; override;
    procedure DisconnectWithQuit; override;
    function Connected : boolean; override;
    function CheckMessages : integer; override;
    function RetrieveHeader(const MsgNum : integer; var pHeader : PChar) : boolean; override;
    function RetrieveRaw(const MsgNum : integer; var pRawMsg : PChar) : boolean; override;
    function RetrieveTop(const MsgNum,LineCount: integer; var pDest: PChar) : boolean; override;
    function RetrieveMsgSize(const MsgNum : integer) : integer; override;
    function UIDL(var UIDLs : TStringList; const MsgNum : integer = -1; const maxUIDs : integer = -1) : boolean; override;
    function Delete(const MsgNum : integer) : boolean; override;
    procedure SetOnWork(const OnWorkProc : TPluginWorkEvent); override;
    function LastErrorMsg : PChar; override;
    function SupportsSSL : boolean; override;
    function SupportsAPOP : boolean; override;
    function SupportsSASL : boolean; override;
    function SupportsUIDL(): boolean; override;
    function CountMessages(): LongInt; override;
    procedure SetSSLOptions(
      const useSSLorTLS : boolean;
      const authType : TAuthType = password;
      const sslVersion : TsslVer = sslAuto;
      const startTLS : boolean = false); override;
    destructor Destroy; override;
    procedure Expunge;
    function DeleteMsgsByUID(const uidList: TStrings; expunge : boolean = true): boolean;
    function MoveToFolderByUID(const uidList: TStrings; destFolder : string): boolean;
    function GetUnseenUids(): TIntArray;
    function UIDRetrievePeekHeader(const UID: String; var outMsg: TIdMessage) : boolean;
    function UIDRetrievePeekEnvelope(const UID: String; var outMsg: TIdMessage) : boolean;
    function RetrieveMsgSizeByUID(const AMsgUID : String) : integer;
    function RetrieveRawByUid(const uid: String; var pRawMsg : PChar) : boolean;
    function MakeRead(const uid : string; isRead : boolean): boolean; override;
    function UIDCheckMsgSeen(const UID: String) : boolean;
    function GetFlags(const uid : string; var outFlags: TIdMessageFlagsSet) : Boolean;
    function SetImportantFlag(const uid : string; isImportant : boolean): boolean;
    function AddGmailLabelToMsgs(const uidList: TStrings; labelname : string): boolean;
    function RemoveGmailLabelFromMsgs(const uidList: TStrings; labelname : string): boolean;
  end;

  function AddQuotesIfNeeded(input: string) : string;

implementation
uses
    Log4D,   //TEMPORARY
    Math,

  IdLogBase, IdIntercept, uIniSettings, IdReplyIMAP4;

const
  debugImap = false;//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!




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

constructor TProtocolIMAP4.Create;
var
  DLL1, DLL2 : THandle;
  //idLogFile1 : TidLogFile;//DEBUG - logging.
begin
  Self.Name := 'IMAP';
  Self.ProtocolType := protIMAP4;
  IMAP := TIdIMAP4.Create(nil);
  Msg := TIdMessage.Create(nil);
  Msg.OnCreateAttachment := IdMessage1CreateAttachment;
  Msg.NoEncode := True;
  Msg.NoDecode := True;
  capabilities := TStringList.Create;

  IMAP.OnWork := IMAPWork;
  IMAP.MilliSecsToWaitToClearBuffer := 10;

  if (debugImap) then
  begin
    DebugLogger := TIdLogFile.Create(Nil);
    DebugLogger.Filename:= uIniSettings.GetSettingsFolder() + 'imap_debug_'+FormatDateTime('mmm-dd-yyyy hh-mm', Now)+'_'+IntToStr(Random(9999))+'.log';
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

destructor TProtocolIMAP4.Destroy;
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
  capabilities.Free;
end;


procedure TProtocolIMAP4.Connect(Server : String; Port : integer; UserName,Password : String; TimeOut : integer);
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


function TProtocolIMAP4.LastErrorMsg : PChar;
begin
  if (mHasErrorToReport) then
    Result := PChar(mLastErrorMsg)
  else Result := nil;
  mHasErrorToReport := false;
end;

function TProtocolIMAP4.SupportsSSL : boolean;
begin
  Result := not mSSLDisabled;
end;

function TProtocolIMAP4.SupportsAPOP : boolean;
begin
  Result := false;
end;

function TProtocolIMAP4.SupportsSASL : boolean;
begin
  Result := true;
end;


procedure TProtocolIMAP4.Disconnect;
begin
  IMAP.IOHandler.InputBuffer.clear;
  IMAP.Disconnect(false);
end;

procedure TProtocolIMAP4.DisconnectWithQuit;
begin
  if IMAP.Connected then
  begin
    IMAP.IOHandler.InputBuffer.clear;
    IMAP.Disconnect(true);
  end;
end;

function TProtocolIMAP4.Connected : boolean;
begin
  Result := IMAP.Connected;
end;

function TProtocolIMAP4.CheckMessages : integer;
begin
  Result := IMAP.MailBox.TotalMsgs;
end;

function TProtocolIMAP4.RetrieveHeader(const MsgNum : integer; var pHeader : PChar) : boolean;
begin
  Msg.Clear;
  IMAP.IOHandler.MaxLineAction := maSplit;
  Result := IMAP.RetrieveHeader(MsgNum,Msg);
  if Result then
    pHeader := Msg.Headers.GetText;
end;

function TProtocolIMAP4.RetrieveRaw(const MsgNum : integer; var pRawMsg : PChar) : boolean;
begin
  Msg.Clear;
  IMAP.IOHandler.MaxLineAction := maSplit;
  Result := IMAP.Retrieve(MsgNum,Msg);
  if Result then
    pRawMsg := StrNew(PChar(Msg.Headers.Text+#13#10+Msg.Body.Text));
end;

function TProtocolIMAP4.RetrieveRawByUid(const uid: String; var pRawMsg : PChar) : boolean;
begin
  Msg.Clear;
  IMAP.IOHandler.MaxLineAction := maSplit;
  Result := IMAP.UIDRetrieve(uid,Msg);
  if Result then
    pRawMsg := StrNew(PChar(Msg.Headers.Text+#13#10+Msg.Body.Text));
end;

function TProtocolIMAP4.RetrieveTop(const MsgNum,LineCount: integer; var pDest: PChar) : boolean;
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

function TProtocolIMAP4.RetrieveMsgSize(const MsgNum : integer) : integer;
begin
  Result := IMAP.RetrieveMsgSize(MsgNum);
end;

function TProtocolIMAP4.RetrieveMsgSizeByUID(const AMsgUID : String) : integer;
begin
  Result := IMAP.UIDRetrieveMsgSize(AMsgUID);
end;

function TProtocolIMAP4.UIDL(var UIDLs : TStringList; const MsgNum : integer = -1; const maxUIDs : integer = -1) : boolean;
var
  UID : string;
  i, nCount, startMsg : integer;
begin

  if MsgNum > -1 then
  begin
    Result := IMAP.GetUID(MsgNum, UID);
    UIDLs.Add(IntToStr(MsgNum) + ' ' + (*'UID' +*) UID (*+ '-' + IMAP.MailBox.UIDValidity*));
  end
  else begin  //get a list of all UIDs in mailbox
    nCount := IMAP.MailBox.TotalMsgs; //number of messages on the server

    if maxUIDs <= 0 then
      startMsg := 1
    else
      startMsg := Math.Min(nCount, nCount - maxUIDs);

    for i := startMsg to nCount do  //Relative message numbers start from 1 and go up according to INDY docs
    begin
      UID := '';
      IMAP.GetUID(i, UID);
      if UID <> '' then begin
        UIDLs.Add(IntToStr(i) + ' ' + (*'UID' +*) UID (*+ '-' + IMAP.MailBox.UIDValidity *));
      end;
    end;
    Result := True;
  end;
  if (Result = false) then begin
    TLogLogger.GetLogger('poptrayuLogger').Debug('TProtocolIMAP4.UIDL() FALSE'+#13#10+UIDLs.CommaText);
  end;
end;


function TProtocolIMAP4.Delete(const MsgNum : integer) : boolean;
begin
  Result := IMAP.DeleteMsgs([MsgNum]);
end;

procedure  TProtocolIMAP4.Expunge();
begin
  IMAP.ExpungeMailBox;
end;


procedure TProtocolIMAP4.SetOnWork(const OnWorkProc : TPluginWorkEvent);
begin
  OnWork := OnWorkProc;
end;

{ TIMAPWorkObject }

procedure TProtocolIMAP4.IMAPWork(Sender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
begin
  if Assigned(OnWork) then
    OnWork(AWorkCount);
end;



// called right before connecting.
procedure TProtocolIMAP4.SetSSLOptions(
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
function TProtocolIMAP4.SupportsUIDL(): boolean;
begin
  Result:=true;
end;

function TProtocolIMAP4.CountMessages(): LongInt;
begin
  if IMAP.SelectMailBox('INBOX') then
    Result := IMAP.MailBox.TotalMsgs
  else Result := -1;
end;

function TProtocolIMAP4.DeleteMsgsByUID(const uidList: TStrings; expunge : boolean): boolean;
begin
  Result := IMAP.UIDDeleteMsgs(uidList.ToStringArray);

  if (expunge) then
    if HasCapa('UIDPLUS') then
      IMAP.SendCmd('UID EXPUNGE '+uidList.commaText)
    else
      IMAP.ExpungeMailBox();
end;

// moves messages to the SPAM or other folder.
// does not expunge.
function TProtocolIMAP4.MoveToFolderByUID(const uidList: TStrings; destFolder : string): boolean;
begin

  if (uidList = nil) or (uidList.Count < 1) then exit;
  if (pos(' ',destFolder)<>-1) and (pos('"',destFolder)<>0) then
    destFolder := '"'+destFolder + '"';

  if HasCapa('MOVE') then begin
    //server supports RFC 6851 (MOVE Extension) https://tools.ietf.org/html/rfc6851
    IMAP.SendCmd('UID MOVE '+uidList.CommaText +' '+destFolder);
    Result := IMAP.LastCmdResult.Code = IMAP_OK;
  end else begin
    // server does not support MOVE so COPY and then DELETE and EXPUNGE the original
    Result := IMAP.UIDCopyMsgs(uidList, destFolder);
    DeleteMsgsByUID(uidList);
  end;

end;



procedure TProtocolIMAP4.IdMessage1CreateAttachment(const AMsg: TIdMessage; const AHeaders: TStrings; var AAttachment: TIdAttachment);
begin
  AAttachment := TIdAttachmentMemory.Create(AMsg.MessageParts);
end;


function TProtocolIMAP4.GetUnseenUids(): TIntArray;
var
  SearchInfo: array of TIdIMAP4SearchRec;
  I : integer;
  MsgObject: TIdMessage;
  Logger : TLogLogger;
begin


  TLogBasicConfigurator.Configure;

  // set the log level
  TLogLogger.GetRootLogger.Level := All;

  // create a named logger
  Logger := TLogLogger.GetLogger('poptrayuLogger');
  Logger.addAppender(TLogFileAppender.Create('filelogger','log'+(Chr(ord('a') + Random(26)))
    +(Chr(ord('a') + Random(26)))
    +(Chr(ord('a') + Random(26)))+(Chr(ord('a') + Random(26)))+ '.log'));


  // if the mailbox selection succeed, then...
  if IMAP.SelectMailBox('INBOX') then
  begin
    SetLength(SearchInfo, 1); // set length of the search criteria to 1
    SearchInfo[0].SearchKey := skUnseen;
    // TODO: to expand this search key idea to do a full gmail style body text search see
    // http://stackoverflow.com/questions/13612968/how-to-search-for-a-specific-e-mail-message-in-imap-mailbox

    if IMAP.UIDSearchMailBox(SearchInfo) then
    begin
      Result := IMAP.MailBox.SearchResult;

// this section here can be removed later, it is for debugging

      // iterate the search results
      for I := 0 to High(IMAP.MailBox.SearchResult) do
      begin
        //// make an instance of the message object
        //MsgObject := TIdMessage.Create(nil);
        //try
        //  if IMAP.RetrievePeek(IMAP.MailBox.SearchResult[I], MsgObject) then begin
        //    Logger.Debug(MsgObject.Subject);
        //  end;
        //finally
        //  MsgObject.Free;
        //end;
        Logger.Debug( IntToStr(Result[i]));
      end;
// end debug section

    end;
  end;

end;

function TProtocolIMAP4.UIDRetrievePeekHeader(const UID: String; var outMsg: TIdMessage) : boolean;
begin
  Result := IMAP.UIDRetrieveHeader(UID, outMsg);
end;

function TProtocolIMAP4.UIDRetrievePeekEnvelope(const UID: String; var outMsg: TIdMessage) : boolean;
begin
  Result := IMAP.UIDRetrieveEnvelope(UID, outMsg);
end;

// @Throws EIdNumberInvalid, EIdConnectionStateError
function TProtocolIMAP4.UIDCheckMsgSeen(const UID: String) : boolean;
begin
  Result := IMAP.UIDCheckMsgSeen(UID);
end;

//------------------------------------------------------------------------------
// MakeRead
//
// Changes the "read" or "seen" status on a message. Expects connection to
// already be open.
//------------------------------------------------------------------------------
function TProtocolIMAP4.MakeRead(const uid : string; isRead : boolean) : boolean;
var
  flags : TidMessageFlagsSet;
begin
  IMAP.UIDRetrieveFlags(uid, flags);
  if (isRead) then
    IMAP.UIDStoreFlags(uid, sdReplace, flags + [mfSeen])
  else
    IMAP.UIDStoreFlags(uid, sdReplace, flags - [mfSeen]);

    //TODO: this way is more efficient but doesn't work yet b/c of a bug in indy
//  if (isRead) then
//    IMAP.UIDStoreFlags(uid, sdAddSilent, [mfSeen])
//  else
//    IMAP.UIDStoreFlags(uid, sdRemoveSilent, [mfSeen]);

  Result := true;
end;

//------------------------------------------------------------------------------
// SetImportantFlag
//------------------------------------------------------------------------------
function TProtocolIMAP4.SetImportantFlag(const uid : string; isImportant : boolean): boolean;
 var
  flags : TidMessageFlagsSet;
begin
  IMAP.UIDRetrieveFlags(uid, flags);
  if (isImportant) then
    IMAP.UIDStoreFlags(uid, sdReplace, flags + [mfFlagged])
  else
    IMAP.UIDStoreFlags(uid, sdReplace, flags - [mfFlagged]);

    //TODO: this way is more efficient but doesn't work yet b/c of a bug in indy
//  if (isImportant) then
//    IMAP.UIDStoreFlags(uid, sdAddSilent, [mfFlagged])
//  else
//    IMAP.UIDStoreFlags(uid, sdRemoveSilent, [mfFlagged]);

  Result := true;
end;

//------------------------------------------------------------------------------
// GetFlags
//
// @throws EIdNumberInvalid exception when AMsgUID contains an invalid value for use as a UID.
// @throws EIdConnectionStateError if connection state is not csSelected
//------------------------------------------------------------------------------
function TProtocolIMAP4.GetFlags(const uid : string; var outFlags: TIdMessageFlagsSet ) : Boolean;
begin
  Result := IMAP.UIDRetrieveFlags(uid, outFlags);
end;


// Exceptions for IMAP:EIdIMAP4ServerException, EIdIMAP4ImplicitTLSRequiresSSL,
// EIdReplyIMAP4Error


// Wrapper to check whether the server has a specific IMAP capability.
// This will populate the capablity list only if it has not already been filled
// so it doesn't call CAPA every single deletion, etc.
function TProtocolIMAP4.HasCapa(capability: string) : boolean;
begin
  if (capabilities.count = 0) then begin
    IMAP.Capability(capabilities);
  end;
  Result := (capabilities.IndexOf(capability)<>-1);
end;

function TProtocolIMAP4.AddGmailLabelToMsgs(const uidList: TStrings; labelname : string) : boolean;
begin
  if HasCapa('X-GM-EXT-1') and (uidList.Count >0) and (labelname <> '') then begin
    IMAP.SendCmd('UID STORE '+uidList.CommaText+' +X-GM-LABELS ("'+ labelname + '")');
    Result := IMAP.LastCmdResult.Code = 'UID OK Success';
  end else
    Result := false;
end;

function TProtocolIMAP4.RemoveGmailLabelFromMsgs(const uidList: TStrings; labelname : string): boolean;
begin
  if HasCapa('X-GM-EXT-1') and (uidList.Count >0) and (labelname <> '')  then begin
    IMAP.SendCmd('UID STORE '+uidList.CommaText+' -X-GM-LABELS ("'+ labelname + '")');
    Result := IMAP.LastCmdResult.Code = 'UID OK Success';
  end else
    Result := false;
end;

function AddQuotesIfNeeded(input: string) : string;
begin
    if (pos(' ',input)<>-1) and ((FindDelimiter('"',input)<>1) and (LastDelimiter('"',input)>1)) then
    Result := '"'+input + '"';
end;

end.
