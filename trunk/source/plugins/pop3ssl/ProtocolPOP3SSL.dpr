library ProtocolPOP3SSL;

{-------------------------------------------------------------------------------
POPTRAYU
Copyright (C) 2001-2005  Renier Crause
Copyright (C) 2012 Jessica Brown
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
  Windows, SysUtils,
  IdSSLOpenSSL,
  uPlugins in '..\..\uPlugins.pas',
  uPOP3 in '..\..\uPOP3.pas';

{$E dll}

// general
function InterfaceVersion : integer; stdcall; forward;
procedure Init; stdcall; forward;
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
  LastErrorMsg;

var
  POP : TPluginPOP3;
  SSL : TIdSSLIOHandlerSocket;

//---------------------------------------------------------- general exports ---

function InterfaceVersion : integer;
begin
  Result := 1;
end;

procedure Init;
begin
  // init code goes here
  POP := TPluginPOP3.Create;
  SSL := TIdSSLIOHandlerSocket.Create(nil);
  SSL.SSLOptions.Method := sslvSSLv23;
  SSL.SSLOptions.Mode := sslmClient;
end;

function PluginType : TPluginType;
begin
  Result := piProtocol;
end;

function PluginName : ShortString;
begin
  Result := 'POP3 with SSL or APOP';
end;

procedure ShowOptions;
begin
  MessageBox(0,'POP3 with SSL or APOP','PopTray Plugin',MB_OK);
end;

procedure Unload;
begin
  POP.Free;
  SSL.Free;
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
  Result := 'POP3 SSL:995,POP3 APOP:110,POP3 SSL+APOP:995';
end;

procedure Connect(Server : PChar; Port : integer; Protocol,UserName,Password : PChar; TimeOut : integer);
begin
  if Pos('APOP',Protocol) > 0 then
    POP.POP.APOP := True;
  if Port = 995 then
    POP.POP.IOHandler := SSL
  else
    POP.POP.IOHandler := nil;
  POP.Connect(Server,Port,Protocol,UserName,Password,TimeOut);
end;

procedure Disconnect;
begin
  POP.Disconnect;
end;

function Connected : boolean;
begin
  Result := POP.Connected;
end;

function CheckMessages : integer;
begin
  Result := POP.CheckMessages;
end;

function RetrieveHeader(const MsgNum : integer; var pHeader : PChar) : boolean;
begin
  Result := POP.RetrieveHeader(MsgNum,pHeader);
end;

function RetrieveRaw(const MsgNum : integer; var pRawMsg : PChar) : boolean;
begin
  Result := POP.RetrieveRaw(MsgNum,pRawMsg);
end;

function RetrieveTop(const MsgNum,LineCount: integer; var pDest: PChar) : boolean;
begin
  Result := POP.RetrieveTop(MsgNum,LineCount,pDest);
end;

function RetrieveMsgSize(const MsgNum : integer) : integer;
begin
  Result := POP.RetrieveMsgSize(MsgNum);
end;

function UIDL(var pUIDL : PChar; const MsgNum : integer = -1) : boolean;
begin
  Result := POP.UIDL(pUIDL,MsgNum);
end;

function Delete(const MsgNum : integer) : boolean;
begin
  Result := POP.Delete(MsgNum);
end;

procedure SetOnWork(const OnWorkProc : TPluginWorkEvent);
begin
  POP.OnWork := OnWorkProc;
end;

function LastErrorMsg : PChar;
begin
  Result := nil;
end;


end.
