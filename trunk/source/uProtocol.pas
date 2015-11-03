unit uProtocol;

interface

uses
  System.Generics.Collections, IdMailBox, IdMessage, System.Classes;

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
    procedure Connect(Server : String; Port : integer; UserName,Password : String; TimeOut : integer); virtual; abstract;
    procedure Disconnect; virtual; abstract;
    procedure DisconnectWithQuit; virtual; abstract;
    function Connected : boolean;  virtual; abstract;
    function RetrieveHeader(const MsgNum : integer; var pHeader : PChar) : boolean; virtual; abstract;
    function RetrieveRaw(const MsgNum : integer; var pRawMsg : PChar) : boolean; virtual; abstract;
    function RetrieveTop(const MsgNum,LineCount: integer; var pDest: PChar) : boolean; virtual; abstract;
    function RetrieveMsgSize(const MsgNum : integer) : integer; virtual;  abstract;

    // maxUIDs may not be supported by all prototcols.  -1 means "no limit".
    function UIDL(var UIDLs : TStringList; const MsgNum : integer = -1; const maxUIDs : integer = -1) : boolean; virtual; abstract;

    function Delete(const MsgNum : integer) : boolean; virtual; abstract;
    procedure SetOnWork(const OnWorkProc : TPluginWorkEvent); virtual; abstract;
    function LastErrorMsg : String; virtual; abstract;
    procedure SetSSLOptions(const useSSLorTLS : boolean; const authType: TAuthType = password;
      const sslVersion : TsslVer = sslAuto; const startTLS : boolean = false); virtual; abstract;
    function SupportsSSL(): boolean; virtual; abstract; //Should return true if SSL plugin is installed correctly.
    function SupportsAPOP(): boolean; virtual; abstract;
    function SupportsSASL(): boolean; virtual; abstract;
    function SupportsUIDL(): boolean; virtual; abstract;
    function CountMessages(): LongInt; virtual; abstract;
    function MakeRead(const uid : string; isRead : boolean): boolean; virtual; abstract;

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



end.
