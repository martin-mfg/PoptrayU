unit uPlugins;

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
  SysUtils, System.Generics.Collections, IdMailBox, IdMessage;

const
  INTERFACE_VERSION = 1;

type
  TPluginType = (piNotify, piProtocol, piRuleAction);
  TAuthType = (autoAuth = 0, password = 1, apop = 2, sasl = 3);
  TsslVer = (sslAuto = 0, sslv2 = 1, sslv3 = 2, tlsv1 = 3, tlsv11 = 4, tlsv12 = 5 );
  TPluginWorkEvent = procedure(const AWorkCount: Integer) of object;
  TProtocolType = (protPOP3 = 0, protIMAP4 = 1, protOTHER = 2);

  TPlugin = class(TObject)
  public
    PluginType : TPluginType;
    Name : string;
    DLLName : string;
    hPlugin : THandle;
    Enabled : boolean;
    FInit : procedure; stdcall;
    FFreePChar : procedure (var p : PChar); stdcall;
    FUnload : procedure; stdcall;
    procedure Init;
    procedure FreePChar(var p : PChar);
    procedure Unload;
  end;

  TPluginNotify = class(TPlugin)
  public
    FNotify : procedure (MailCount,UnviewedCount,NewCount : integer; ResetTray : boolean);  stdcall;
    FNotifyAccount : procedure (AccountNo:integer; AccountName,AccountColor:PChar; MailCount,UnviewedCount,NewCount : integer; ResetTray : boolean);  stdcall;
    FMessageCheck : procedure (MsgFrom,MsgTo,MsgSubject : PChar; MsgDate : TDateTime; Viewed,New,Important,Spam : boolean);  stdcall;
    FMessageBody : procedure (MsgHeader,MsgBody : PChar);  stdcall;
    procedure Notify(MailCount,UnviewedCount,NewCount : integer; ResetTray : boolean);
    procedure NotifyAccount(AccountNo:integer; AccountName,AccountColor:PChar; MailCount,UnviewedCount,NewCount : integer; ResetTray : boolean);
    procedure MessageCheck(MsgFrom,MsgTo,MsgSubject : PChar; MsgDate : TDateTime; Viewed,New,Important,Spam : boolean);
    procedure MessageBody(MsgHeader,MsgBody : PChar);
  end;

  TPluginProtocol = class(TPlugin)
  public
    ProtocolType : TProtocolType;
    OnWork : TPluginWorkEvent;
    FProtocols       : function : ShortString; stdcall;
    FConnect         : procedure (Server : PChar; Port : integer; Protocol,UserName,Password : PChar; Timeout : integer); stdcall;
    FDisconnect      : procedure; stdcall;
    FDisconnectWithQuit: procedure; stdcall;
    FConnected       : function : boolean; stdcall;
    FCheckMessages   : function : integer; stdcall;
    FRetrieveHeader  : function (const MsgNum : integer; var pHeader : PChar) : boolean; stdcall;
    FRetrieveRaw     : function (const MsgNum : integer; var pRawMsg : PChar) : boolean; stdcall;
    FRetrieveTop     : function (const MsgNum,LineCount: integer; var pDest: PChar) : boolean; stdcall;
    FRetrieveMsgSize : function (const MsgNum : integer) : integer; stdcall;
    FUIDL            : function (var pUIDL : PChar; const MsgNum : integer = -1) : boolean; stdcall;
    FDelete          : function (const MsgNum : integer) : boolean; stdcall;
    FSetOnWork       : procedure (const OnWorkProc : TPluginWorkEvent); stdcall;
    FLastErrorMsg    : function : PChar; stdcall;
    FSetSSLOptions   : procedure (const useSSLorTLS : boolean; const authType: TAuthType; sslVersion : TsslVer = sslAuto; startTLS : boolean = false); stdcall;
    FPluginSupportsSSL : function : boolean; stdcall;
    FPluginSupportsSASL : function : boolean; stdcall;
    FPluginSupportsAPOP : function : boolean; stdcall;
    FSupportsUIDL : function : boolean; stdcall;
    FCountMessages: function : LongInt; stdcall;
    FExpunge : procedure (); stdcall;
    function Protocols : ShortString; virtual;
    procedure Connect(Server : PChar; Port : integer; Protocol,UserName,Password : PChar; TimeOut : integer); virtual;
    procedure Disconnect; virtual;
    procedure DisconnectWithQuit; virtual;
    function Connected : boolean;  virtual;
    function CheckMessages : integer; virtual;
    function RetrieveHeader(const MsgNum : integer; var pHeader : PChar) : boolean; virtual;
    function RetrieveRaw(const MsgNum : integer; var pRawMsg : PChar) : boolean; virtual;
    function RetrieveTop(const MsgNum,LineCount: integer; var pDest: PChar) : boolean; virtual;
    function RetrieveMsgSize(const MsgNum : integer) : integer; virtual;
    function UIDL(var pUIDL : PChar; const MsgNum : integer = -1) : boolean; virtual;
    function Delete(const MsgNum : integer) : boolean; virtual;
    procedure SetOnWork(const OnWorkProc : TPluginWorkEvent); virtual;
    function LastErrorMsg : PChar; virtual;
    procedure SetSSLOptions(const useSSLorTLS : boolean; const authType: TAuthType = password;
      const sslVersion : TsslVer = sslAuto; const startTLS : boolean = false); virtual;
    function PluginSupportsSSL : boolean; virtual; //Should return true if SSL plugin is installed correctly.
    function PluginSupportsAPOP : boolean; virtual;
    function PluginSupportsSASL : boolean; virtual;
    function SupportsUIDL(): boolean; virtual;
    function CountMessages(): LongInt; virtual;
    procedure Expunge; virtual;
    function DeleteMsgsByUID(const uidList: array of String): boolean; virtual;
    function GetUnseenUids(): TLongIntArray;  virtual;
    function UIDRetrievePeekHeader(const UID: String; var outMsg: TIdMessage) : boolean; virtual;
    function RetrieveMsgSizeByUID(const AMsgUID : String) : integer; virtual;
  end;

var
  Plugins : array of TPlugin;

implementation

{ TPlugin }

procedure TPlugin.Init;
begin
  if Assigned(FInit) then FInit;
end;

procedure TPlugin.FreePChar(var p : PChar);
begin
  if Assigned(FFreePChar) then
    FFreePChar(p)
  else begin
    StrDispose(p);
    p := nil;
  end;
end;

procedure TPlugin.Unload;
begin
  if Assigned(FUnload) then FUnload;
end;

{ TPluginNotify }

procedure TPluginNotify.Notify(MailCount, UnviewedCount, NewCount: integer; ResetTray: boolean);
begin
  if Assigned(FNotify) then
    FNotify(MailCount, UnviewedCount, NewCount,  ResetTray);
end;

procedure TPluginNotify.NotifyAccount(AccountNo:integer; AccountName,AccountColor:PChar; MailCount,UnviewedCount,NewCount : integer; ResetTray : boolean);
begin
  if Assigned(FNotifyAccount) then
    FNotifyAccount(AccountNo, AccountName, AccountColor, MailCount, UnviewedCount, NewCount,  ResetTray);
end;

procedure TPluginNotify.MessageCheck(MsgFrom, MsgTo, MsgSubject: PChar;
  MsgDate: TDateTime; Viewed, New, Important, Spam: boolean);
begin
  if Assigned(FMessageCheck) then
    FMessageCheck(MsgFrom, MsgTo, MsgSubject, MsgDate, Viewed, New, Important, Spam);
end;


procedure TPluginNotify.MessageBody(MsgHeader, MsgBody : PChar);
begin
  if Assigned(FMessageBody) then
    FMessageBody(MsgHeader, MsgBody);
end;


{ TPluginProtocol }

function TPluginProtocol.Protocols: ShortString;
begin
  Result := '';
  if Assigned(FProtocols) then
    Result := FProtocols;
end;

procedure TPluginProtocol.Connect(Server: PChar; Port: integer; Protocol,UserName, Password: PChar; TimeOut : integer);
begin
  if Assigned(FConnect) then
    FConnect(Server, Port, Protocol, UserName, Password, Timeout)
  else
    raise Exception.Create('Plug-in Error: No Protocol to use in Connect');
end;

procedure TPluginProtocol.Disconnect;
begin
  if Assigned(FDisconnect) then
    FDisconnect;
end;

procedure TPluginProtocol.DisconnectWithQuit;
begin
  if Assigned(FDisconnectWithQuit) then
    FDisconnectWithQuit
  else if Assigned(FDisconnect) then
    FDisconnect;
end;

function TPluginProtocol.Connected: boolean;
begin
  Result := False;
  if Assigned(FConnected) then
    Result := FConnected;
end;

function TPluginProtocol.CheckMessages: integer;
begin
  Result := -1;
  if Assigned(FCheckMessages) then
    Result := FCheckMessages;
end;

function TPluginProtocol.RetrieveHeader(const MsgNum: integer; var pHeader: PChar): boolean;
begin
  if Assigned(FRetrieveHeader) then
    Result := FRetrieveHeader(MsgNum,pHeader)
  else
    Result := False;
end;

function TPluginProtocol.RetrieveRaw(const MsgNum: integer; var pRawMsg: PChar): boolean;
begin
  if Assigned(FRetrieveRaw) then
    Result := FRetrieveRaw(MsgNum,pRawMsg)
  else
    Result := False;
end;

function TPluginProtocol.RetrieveTop(const MsgNum, LineCount: integer; var pDest: PChar): boolean;
begin
  if Assigned(FRetrieveTop) then
    Result := FRetrieveTop(MsgNum,LineCount,pDest)
  else
    Result := False;
end;

function TPluginProtocol.RetrieveMsgSize(const MsgNum: integer): integer;
begin
  if Assigned(FRetrieveMsgSize) then
    Result := FRetrieveMsgSize(MsgNum)
  else
    Result := -1;
end;

function TPluginProtocol.UIDL(var pUIDL: PChar; const MsgNum: integer = -1): boolean;
begin
  if Assigned(FUIDL) then
    Result := FUIDL(pUIDL,MsgNum)
  else
    Result := False;
end;

function TPluginProtocol.Delete(const MsgNum: integer): boolean;
begin
  if Assigned(FDelete) then
    Result := FDelete(MsgNum)
  else
    Result := False;
end;

procedure TPluginProtocol.SetOnWork(const OnWorkProc: TPluginWorkEvent);
begin
  if Assigned(FSetOnWork) then
    FSetOnWork(OnWorkProc);
end;

{ LastErrorMsg is called after each account check. The error message should
  be cleared/reset at the beginning of the following account check.         }
function TPluginProtocol.LastErrorMsg: PChar;
begin
  if Assigned(FLastErrorMsg) then
    Result := FLastErrorMsg()
  else
    Result := nil;
end;

function TPluginProtocol.PluginSupportsSSL: boolean;
begin
  if Assigned(FPluginSupportsSSL) then
    Result := FPluginSupportsSSL()
  else
    Result := false;
end;

function TPluginProtocol.PluginSupportsSASL: boolean;
begin
  if Assigned(FPluginSupportsSASL) then
    Result := FPluginSupportsSASL()
  else
    Result := false;
end;

function TPluginProtocol.PluginSupportsAPOP: boolean;
begin
  if Assigned(FPluginSupportsAPOP) then
    Result := FPluginSupportsAPOP()
  else
    Result := false;
end;

function TPluginProtocol.SupportsUIDL: boolean;
begin
  if Assigned(FSupportsUIDL) then
    Result := FSupportsUIDL()
  else
    Result := false;
end;

function TPluginProtocol.CountMessages: LongInt;
begin
  if Assigned(FCountMessages) then
    Result := FCountMessages()
  else
    Result := -1;
end;

procedure TPluginProtocol.SetSSLOptions(const useSSLorTLS : boolean; const authType: TAuthType = password; const sslVersion : TsslVer = sslAuto; const startTLS : boolean = false);
begin
  if Assigned(FSetSSLOptions) then
    FSetSSLOptions(useSSLorTLS, authType, sslVersion, startTLS);
end;

procedure TPluginProtocol.Expunge();
begin
  if Assigned(FExpunge) then
    FExpunge();
end;

function TPluginProtocol.DeleteMsgsByUID(const uidList: array of String): boolean;
begin
    Result := false;
end;

function TPluginProtocol.GetUnseenUids(): TLongIntArray;
begin
  Result := nil;
end;

function TPluginProtocol.UIDRetrievePeekHeader(const UID: String; var outMsg: TIdMessage) : boolean;
begin
  Result := false;
end;

function TPluginProtocol.RetrieveMsgSizeByUID(const AMsgUID : String) : integer;
begin
  Result := -1;
end;

end.
