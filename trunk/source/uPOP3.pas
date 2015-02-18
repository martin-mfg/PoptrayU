unit uPOP3;

{-------------------------------------------------------------------------------
POPTRAY
Copyright (C) 2003-2005  Renier Crause
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
  Classes, SysUtils,
  IdPOP3, IdMessage, IdComponent, IdExplicitTLSClientServerBase,
  uPlugins, Dialogs;

type
  TPluginPOP3 = class(TPluginProtocol)
  private
    {$IFDEF INDY9}
    procedure POPWork(Sender: TObject; AWorkMode: TWorkMode; const AWorkCount: Integer); //Indy9
    {$ELSE}
    procedure POPWork(Sender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64); //indy10
    {$ENDIF}
    procedure ShowHttpStatus(ASender: TObject; const AStatus: TIdStatus; const AStatusText: string);
    procedure OnHttpConnected(Sender: TObject);
  public
    POP : TIdPOP3;
    constructor Create;
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
    procedure SetSSLOptions(
      const useSSLorTLS : boolean;
      const authType : TAuthType = password;
      const sslVersion : TsslVer = sslAuto;
      const startTLS : boolean = false); override;
    destructor Destroy; override;
    function LastErrorMsg : PChar; override;
    function PluginSupportsSSL : boolean; override;
    function PluginSupportsAPOP : boolean; override;
    function PluginSupportsSASL : boolean; override;
  end;

implementation
  uses
    IdIMap4,  //for wsOk indy10
    IdHTTP, IdStackConsts, IdSSLOpenSSL, Windows,
    IdSASL_CRAM_MD5, IdSASLLogin, IdSASL_CRAM_SHA1, IdUserPassProvider, //SASL
    IdSASLUserPass, IdSASLPlain, IdSASLSKey,                            //SASL
    IdSASLOTP, IdSASLExternal, IdSASLDigest, IdSASLAnonymous            //SASL
    ;
  var
    mSSL : TIdSSLIOHandlerSocketOpenSSL;
    mTimeout : integer;
    mSSLDisabled : boolean = false;

    IdUserPassProvider: TIdUserPassProvider;
    IdSASLCRAMMD5: TIdSASLCRAMMD5;
    IdSASLCRAMSHA1: TIdSASLCRAMSHA1;
    IdSASLPlain: TIdSASLPlain;
    IdSASLLogin: TIdSASLLogin;
    IdSASLSKey: TIdSASLSKey;
    IdSASLOTP: TIdSASLOTP;
    IdSASLAnonymous: TIdSASLAnonymous;
    IdSASLExternal: TIdSASLExternal;

    mLastErrorMsg : AnsiString;
    mHasErrorToReport : boolean;


{ TPluginPOP3 }

constructor TPluginPOP3.Create;
var
  DLL1, DLL2 : THandle;
begin
  Self.PluginType := piProtocol;
  Self.Name := 'POP3';
  POP := TidPOP3.Create(nil);
  {$IFDEF INDY9}
  Pop.MaxLineLength := 64*1024; //Indy9
  {$ELSE}
  //Pop.IOHandler.MaxLineLength := 64*1024; //Do not need for Indy10?
  {$ENDIF}


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

    IdUserPassProvider := TIdUserPassProvider.Create(POP);

    // Initialize all the available SASL authentication mechnisms
    IdSASLCRAMMD5 := TIdSASLCRAMMD5.Create(POP);
    IdSASLCRAMMD5.UserPassProvider := IdUserPassProvider;

    IdSASLCRAMSHA1 := TIdSASLCRAMSHA1.Create(POP);
    IdSASLCRAMSHA1.UserPassProvider := IdUserPassProvider;

    IdSASLPlain := TIdSASLPlain.Create(POP);
    IdSASLPlain.UserPassProvider := IdUserPassProvider;

    IdSASLLogin := TIdSASLLogin.Create(POP);  // same as sasDefault
    IdSASLLogin.UserPassProvider := IdUserPassProvider;

    IdSASLSKey := TIdSASLSKey.Create(POP);
    IdSASLSKey.UserPassProvider := IdUserPassProvider;

    IdSASLOTP := TIdSASLOTP.Create(POP);
    IdSASLOTP.UserPassProvider := IdUserPassProvider;

    IdSASLAnonymous := TIdSASLAnonymous.Create(POP);
    // doesn't use a IdUserPassProvider

    IdSASLExternal := TIdSASLExternal.Create(POP);
    // doesn't use a IdUserPassProvider


    // The order of the SASL mechanisms is important, they need to be added
    // from most secure to least secure, so the most secure mechanisms are
    // tried first
    POP.SASLMechanisms.Add.SASL := IdSASLCRAMSHA1;
    POP.SASLMechanisms.Add.SASL := IdSASLCRAMMD5;
    POP.SASLMechanisms.Add.SASL := IdSASLSKey;
    POP.SASLMechanisms.Add.SASL := IdSASLOTP;
    POP.SASLMechanisms.Add.SASL := IdSASLAnonymous;
    POP.SASLMechanisms.Add.SASL := IdSASLExternal;
    POP.SASLMechanisms.Add.SASL := IdSASLLogin;
    POP.SASLMechanisms.Add.SASL := IdSASLPlain;

  end;

  mTimeout := 10000; //default timeout

  POP.OnWork := POPWork;
end;

// SSL options will be disabled for this protocol if the SSL plugin dlls
// did not load correctly in the constructor.
function TPluginPOP3.PluginSupportsSSL : boolean;
begin
  Result := not mSSLDisabled;
end;

function TPluginPOP3.Protocols: ShortString;
begin
  Result := 'POP3:110';
end;


procedure TPluginPOP3.ShowHttpStatus(ASender: TObject; const AStatus: TIdStatus; const AStatusText: string);
begin
{  case AStatus of
    hsResolving: ShowMessage('resolving...');
    hsConnecting: ShowMessage('connecting...');
    hsConnected: ShowMessage('connected...');
    hsDisconnecting: ShowMessage('disconnecting...');
    hsDisconnected: ShowMessage('disconnected...');
  end;     }
  //Update;
end;

procedure TPluginPOP3.OnHttpConnected(Sender: TObject);
begin
{  with TIdHTTP(Sender).Socket.Binding do
  begin
    SetSockOpt(Id_SOL_SOCKET, Id_SO_RCVTIMEO, mTimeout);
    SetSockOpt(Id_SOL_SOCKET, Id_SO_SNDTIMEO, mTimeout);
  end; }
end;

procedure TPluginPOP3.Connect(Server: PChar; Port: integer; Protocol,UserName, Password: PChar; TimeOut: integer);
begin
  if (mSSLDisabled and mHasErrorToReport) then begin
    // error already logged in SSL options, return to avoid trying to connect
    // in plaintext on ssl port
    exit;
  end;

  POP.Host := Server;
  POP.Port := Port;
  POP.Username := Username;
  POP.Password := Password;
  POP.ReadTimeout := TimeOut;

  if (not mSSLDisabled) then begin
    IdUserPassProvider.Username := Username;
    IdUserPassProvider.Password:= Password;
  end;

  POP.OnStatus := ShowHttpStatus;
  POP.OnConnected := OnHttpConnected;

  mTimeout := TimeOut;


  {$IFDEF INDY9}
  POP.Connect(TimeOut);
  //TODO: if indy9 is ever used again, does not handle APOP auth errors.
  {$ELSE}  //INDY10
  Pop.ConnectTimeout := TimeOut;
  try
    POP.Connect();
  except
    on e : EIdDoesNotSupportAPOP do begin
      mHasErrorToReport := true;
      mLastErrorMsg := 'Server does not support APOP Authentication. Please fix account settings.';
    end;
    //on e : EIdSASLNotSupported do begin // not tested! this could be the wrong error code?
    //  mHasErrorToReport := true;
    //  mLastErrorMsg := 'Server does not support SASL Authentication. Please fix account settings.';
    //end;
  end;
  {$ENDIF}

  // Set timeout for send/receive for SSL/TLS connections only.
  if (POP.UseTLS <> utNoTLSSupport) then begin
    //POP.Socket.Binding.SetSockOpt(Id_SOL_TCP, Id_SO_SNDTIMEO, TimeOut);
    //POP.Socket.Binding.SetSockOpt(Id_SOL_TCP, Id_SO_RCVTIMEO, mTimeout);
  end;
end;

function TPluginPOP3.LastErrorMsg : PChar;
begin
  if (mHasErrorToReport) then
    Result := PAnsiChar(mLastErrorMsg)
  else Result := nil;
  mHasErrorToReport := false;
end;

procedure TPluginPOP3.Disconnect;
begin
  if POP.Connected then
  begin
    POP.IOHandler.InputBuffer.clear; //Indy10 - need to clear input buffer to avoid already connected errors later.
    POP.Disconnect;
  end;
end;

procedure TPluginPOP3.DisconnectWithQuit;
begin
  if POP.Connected then
  begin
    POP.IOHandler.InputBuffer.clear;
    //if POP.SendCmd('QUIT',wsOK) = wsOk then      //removed for indy10
      POP.Disconnect;
  end;
end;

function TPluginPOP3.Connected: boolean;
begin
  Result := POP.Connected;
end;

function TPluginPOP3.CheckMessages: integer;
begin
  Result := POP.CheckMessages;
end;

function TPluginPOP3.RetrieveHeader(const MsgNum: integer; var pHeader: PChar): boolean;
var
  AMsg : TIdMessage;
begin
  AMsg := TIdMessage.Create(nil);
  try
    Result := POP.RetrieveHeader(MsgNum,AMsg);
  finally
    pHeader := AMsg.Headers.GetText;
    AMsg.Free;
  end;
end;

function TPluginPOP3.RetrieveRaw(const MsgNum: integer; var pRawMsg: PChar): boolean;
var
  RawMsg : TStringList;
begin
  RawMsg := TStringList.Create;
  try
    Result := POP.RetrieveRaw(MsgNum,RawMsg);
    pRawMsg := RawMsg.GetText;
  finally
    RawMsg.Free;
  end;
end;

function TPluginPOP3.RetrieveTop(const MsgNum,LineCount: integer; var pDest: PChar) : boolean;
var
  Dest : TStringList;
begin
  // send TOP command
  Result := POP.SendCmd('TOP '+IntToStr(MsgNum)+' '+IntToStr(LineCount)) = wsOk;
  if Result then
  begin
    Dest := TStringList.Create;
    try
      {$IFDEF INDY9}
      POP.Capture(Dest); //Indy9
      {$ELSE}
      POP.IOHandler.Capture(Dest); //Indy10 - add IOHandler
      {$ENDIF}
      pDest := Dest.GetText;
    finally
      Dest.Free;
    end;
  end;
end;

function TPluginPOP3.RetrieveMsgSize(const MsgNum: integer): integer;
begin
  Result := POP.RetrieveMsgSize(MsgNum);
end;

function TPluginPOP3.UIDL(var pUIDL : PChar; const MsgNum: integer = -1): boolean;
var
  UIDLs : TStringList;
begin
  UIDLs := TStringList.Create;
  try
    Result := POP.UIDL(UIDLs,MsgNum);
    {Result := POP.SendCmd('UIDa') = wsOk; // simulate server that doesn't support UIDL
    if Result then
      POP.Capture(UIDLs);}
    pUIDL := UIDLs.GetText;
  finally
    UIDLs.Free;
  end;
end;

function TPluginPOP3.Delete(const MsgNum: integer): boolean;
begin
  Result := POP.Delete(MsgNum);
end;

procedure TPluginPOP3.POPWork(Sender: TObject; AWorkMode: TWorkMode;
  {$IFDEF INDY9} const AWorkCount: Integer {$ELSE} AWorkCount: Int64 {$ENDIF});
begin
  if Assigned(OnWork) then
    OnWork(AWorkCount);
end;

procedure TPluginPOP3.SetOnWork(const OnWorkProc: TPluginWorkEvent);
begin
  OnWork := OnWorkProc;
end;

function TPluginPOP3.PluginSupportsAPOP : boolean;
begin
  Result := true;
end;

function TPluginPOP3.PluginSupportsSASL : boolean;
begin
  Result := true;
end;

// called right before connecting.
procedure TPluginPOP3.SetSSLOptions(
  const useSSLorTLS : boolean;
  const authType : TAuthType = password;
  const sslVersion : TsslVer = sslAuto;
  const startTLS : boolean = false);
begin
  if (not mSSLDisabled) and (useSSLorTLS) then //Pos('SSL',Protocol) > 0 then
  begin
    POP.IOHandler := mSSL;


    case (sslVersion) of
      sslAuto :  mSSL.SSLOptions.Method := sslvSSLv23;// 23 = special value, means auto
      sslv2 :    mSSL.SSLOptions.Method := sslvSSLv2;
      sslv3 :    mSSL.SSLOptions.Method := sslvSSLv3;
      tlsv1 :    mSSL.SSLOptions.Method := sslvTLSv1;
      tlsv11 :   mSSL.SSLOptions.Method := sslvTLSv1_1;
      tlsv12 :   mSSL.SSLOptions.Method := sslvTLSv1_2;
    end;

    try
    if (startTLS) then
      POP.UseTLS := utUseExplicitTLS
    else
      POP.UseTLS := utUseImplicitTLS;
    except on EIdTLSClientCanNotSetWhileConnected do begin end;
    end;
  end
  else
  begin
    POP.IOHandler := nil;
    POP.UseTLS := utNoTLSSupport;
  end;

  case (authType) of
    autoAuth:
      if (not mSSLDisabled)
        then POP.AuthType := patSASL
      else POP.AuthType := DEF_ATYPE;
    password:
      POP.AuthType := patUserPass;
    apop:
      POP.AuthType := patAPOP;
    sasl:
      if (not mSSLDisabled) then
        POP.AuthType := patSASL;
    else
      POP.AuthType := DEF_ATYPE; //i.e. password
  end;

  if (mSSLDisabled and useSSLorTLS) then begin
    mHasErrorToReport := true;
    mLastErrorMsg := 'Account configured for SSL, but SSL is not available.';
  end;
end;


destructor TPluginPOP3.Destroy;
begin
  if (not mSSLDisabled) then begin
    IdUserPassProvider.Free;
    IdSASLCRAMMD5.Free;
    IdSASLCRAMSHA1.Free;
    IdSASLSKey.Free;
    IdSASLOTP.Free;
    IdSASLAnonymous.Free;
    IdSASLExternal.Free;
    IdSASLLogin.Free;
    IdSASLPlain.Free;
  end;

  POP.Free;
  inherited;
end;

end.
