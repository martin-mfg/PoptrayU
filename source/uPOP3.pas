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
  IdPOP3, IdMessage, IdComponent,
  uPlugins;

type
  TPluginPOP3 = class(TPluginProtocol)
  private
    procedure POPWork(Sender: TObject; AWorkMode: TWorkMode; const AWorkCount: Integer);
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
    destructor Destroy; override;
  end;

implementation

{ TPluginPOP3 }

constructor TPluginPOP3.Create;
begin
  Self.PluginType := piProtocol;
  Self.Name := 'POP3';
  POP := TidPOP3.Create(nil);
  POP.MaxLineLength := 64*1024;
  POP.OnWork := POPWork;
end;

function TPluginPOP3.Protocols: ShortString;
begin
  Result := 'POP3:110';
end;

procedure TPluginPOP3.Connect(Server: PChar; Port: integer; Protocol,UserName, Password: PChar; TimeOut: integer);
begin
  POP.Host := Server;
  POP.Port := Port;
  POP.Username := Username;
  POP.Password := Password;
  POP.ReadTimeout := TimeOut;
  POP.Connect(TimeOut);
end;

procedure TPluginPOP3.Disconnect;
begin
  if POP.Connected then
  begin
    POP.Disconnect;
  end;
end;

procedure TPluginPOP3.DisconnectWithQuit;
begin
  if POP.Connected then
  begin
    if POP.SendCmd('QUIT',wsOK) = wsOk then
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
      POP.Capture(Dest);
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

procedure TPluginPOP3.POPWork(Sender: TObject; AWorkMode: TWorkMode; const AWorkCount: Integer);
begin
  if Assigned(OnWork) then
    OnWork(AWorkCount);
end;

procedure TPluginPOP3.SetOnWork(const OnWorkProc: TPluginWorkEvent);
begin
  OnWork := OnWorkProc;
end;

destructor TPluginPOP3.Destroy;
begin
  POP.Free;
  inherited;
end;

end.
