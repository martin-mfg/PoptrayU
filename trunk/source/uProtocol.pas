unit uProtocol;

interface

uses
  System.Generics.Collections, IdMailBox, IdMessage;

type
  TAuthType = (autoAuth = 0, password = 1, apop = 2, sasl = 3);
  TsslVer = (sslAuto = 0, sslv2 = 1, sslv3 = 2, tlsv1 = 3, tlsv11 = 4, tlsv12 = 5 );
  TPluginWorkEvent = procedure(const AWorkCount: Integer) of object;
  TProtocolType = (protPOP3 = 0, protIMAP4 = 1, protOTHER = 2);

type
  TProtocol = class(TObject)
  public
    Name : string;
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
    function GetUnseenUids(): TIntArray;  virtual;
    function UIDRetrievePeekHeader(const UID: String; var outMsg: TIdMessage) : boolean; virtual;
    function RetrieveMsgSizeByUID(const AMsgUID : String) : integer; virtual;
    function RetrieveRawByUid(const uid: String; var pRawMsg : PChar) : boolean; virtual;
    function MakeRead(const uid : string; isRead : boolean): boolean; virtual;

    //TODO: this should be eliminated if we can weed out enough of the no longer needed PChar's
    procedure FreePChar(var p : PChar);

  end;

////////////////////////////////////////////////////////////////////////////////
///                                                                          ///
///                      Begin Implementation Section                        ///
///                                                                          ///
////////////////////////////////////////////////////////////////////////////////
implementation


uses
  SysUtils;


procedure TProtocol.FreePChar(var p : PChar);
begin
  StrDispose(p);
  p := nil;
end;

{ TProtocol }


function TProtocol.Protocols: ShortString;
begin
  Result := '';
  if Assigned(FProtocols) then
    Result := FProtocols;
end;

procedure TProtocol.Connect(Server: PChar; Port: integer; Protocol,UserName, Password: PChar; TimeOut : integer);
begin
  if Assigned(FConnect) then
    FConnect(Server, Port, Protocol, UserName, Password, Timeout)
  else
    raise Exception.Create('Plug-in Error: No Protocol to use in Connect');
end;

procedure TProtocol.Disconnect;
begin
  if Assigned(FDisconnect) then
    FDisconnect;
end;

procedure TProtocol.DisconnectWithQuit;
begin
  if Assigned(FDisconnectWithQuit) then
    FDisconnectWithQuit
  else if Assigned(FDisconnect) then
    FDisconnect;
end;

function TProtocol.Connected: boolean;
begin
  Result := False;
  if Assigned(FConnected) then
    Result := FConnected;
end;

function TProtocol.CheckMessages: integer;
begin
  Result := -1;
  if Assigned(FCheckMessages) then
    Result := FCheckMessages;
end;

function TProtocol.RetrieveHeader(const MsgNum: integer; var pHeader: PChar): boolean;
begin
  if Assigned(FRetrieveHeader) then
    Result := FRetrieveHeader(MsgNum,pHeader)
  else
    Result := False;
end;

function TProtocol.RetrieveRaw(const MsgNum: integer; var pRawMsg: PChar): boolean;
begin
  if Assigned(FRetrieveRaw) then
    Result := FRetrieveRaw(MsgNum,pRawMsg)
  else
    Result := False;
end;

function TProtocol.RetrieveTop(const MsgNum, LineCount: integer; var pDest: PChar): boolean;
begin
  if Assigned(FRetrieveTop) then
    Result := FRetrieveTop(MsgNum,LineCount,pDest)
  else
    Result := False;
end;

function TProtocol.RetrieveMsgSize(const MsgNum: integer): integer;
begin
  if Assigned(FRetrieveMsgSize) then
    Result := FRetrieveMsgSize(MsgNum)
  else
    Result := -1;
end;

function TProtocol.UIDL(var pUIDL: PChar; const MsgNum: integer = -1): boolean;
begin
  if Assigned(FUIDL) then
    Result := FUIDL(pUIDL,MsgNum)
  else
    Result := False;
end;

function TProtocol.Delete(const MsgNum: integer): boolean;
begin
  if Assigned(FDelete) then
    Result := FDelete(MsgNum)
  else
    Result := False;
end;

procedure TProtocol.SetOnWork(const OnWorkProc: TPluginWorkEvent);
begin
  if Assigned(FSetOnWork) then
    FSetOnWork(OnWorkProc);
end;

{ LastErrorMsg is called after each account check. The error message should
  be cleared/reset at the beginning of the following account check.         }
function TProtocol.LastErrorMsg: PChar;
begin
  if Assigned(FLastErrorMsg) then
    Result := FLastErrorMsg()
  else
    Result := nil;
end;

function TProtocol.PluginSupportsSSL: boolean;
begin
  if Assigned(FPluginSupportsSSL) then
    Result := FPluginSupportsSSL()
  else
    Result := false;
end;

function TProtocol.PluginSupportsSASL: boolean;
begin
  if Assigned(FPluginSupportsSASL) then
    Result := FPluginSupportsSASL()
  else
    Result := false;
end;

function TProtocol.PluginSupportsAPOP: boolean;
begin
  if Assigned(FPluginSupportsAPOP) then
    Result := FPluginSupportsAPOP()
  else
    Result := false;
end;

function TProtocol.SupportsUIDL: boolean;
begin
  if Assigned(FSupportsUIDL) then
    Result := FSupportsUIDL()
  else
    Result := false;
end;

function TProtocol.CountMessages: LongInt;
begin
  if Assigned(FCountMessages) then
    Result := FCountMessages()
  else
    Result := -1;
end;

procedure TProtocol.SetSSLOptions(const useSSLorTLS : boolean; const authType: TAuthType = password; const sslVersion : TsslVer = sslAuto; const startTLS : boolean = false);
begin
  if Assigned(FSetSSLOptions) then
    FSetSSLOptions(useSSLorTLS, authType, sslVersion, startTLS);
end;

procedure TProtocol.Expunge();
begin
  if Assigned(FExpunge) then
    FExpunge();
end;

function TProtocol.DeleteMsgsByUID(const uidList: array of String): boolean;
begin
    Result := false;
end;

function TProtocol.GetUnseenUids(): TIntArray;
begin
  Result := nil;
end;

function TProtocol.UIDRetrievePeekHeader(const UID: String; var outMsg: TIdMessage) : boolean;
begin
  Result := false;
end;

function TProtocol.RetrieveMsgSizeByUID(const AMsgUID : String) : integer;
begin
  Result := -1;
end;

function TProtocol.RetrieveRawByUid(const uid: String; var pRawMsg : PChar) : boolean;
begin
  result := false;
end;

function TProtocol.MakeRead(const uid : string; isRead : boolean): boolean;
begin
  result := false;
end;

end.
