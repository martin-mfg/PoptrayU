unit uAccounts;

{$REGION 'License'}
{-------------------------------------------------------------------------------
POPTRAYU
Copyright (C) 2014 Jessica Brown, Copyright (C) 2001-2005  Renier Crause
All Rights Reserved.

This program is free software; you can redistribute it and/or modify it under
the terms of the GNU General Public License as published by the Free Software
Foundation; either version 2 of the License, or (at your option) any later
version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE.  See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with
this program; if not, write to the Free Software Foundation, Inc.,
675 Mass Ave, Cambridge, MA 02139, USA.

The GNU GPL can be found at: http://www.gnu.org/copyleft/gpl.html
-------------------------------------------------------------------------------}
{$ENDREGION}
interface

{$REGION '-- Interfaces --'}
uses
  Classes, ExtCtrls, Contnrs, SysUtils, Graphics, uPlugins, uMailItems,
  Generics.Collections, uProtocol;

type
  //------------------------------------------------------------------- Queue --
  TUniqueQueue = class(TQueue)
  protected
    procedure PushItem(AItem: Pointer); override;
  end;


  //------------------------------------------------------------ Account Item --
  TAccount = class
  public
    Name : string;
    Server : string;
    Port : integer;
    Protocol : string;
    Login : string;
    Password : string;
    MailProgram : string;
    Sound : string;
    Color : string;
    MsgIDs : string;
    ViewedMsgIDs : TStringList;
    IgnoreCount : integer;
    Enabled : boolean;
    Error : boolean;
    Status : string;
    Interval : real;
    Timer : TTimer;
    Size : integer;
    Connecting : boolean;
    OldNum : integer; //for re-ordering accounts
    Prot : TProtocol;
    UIDLSupported : boolean;
    Mail : TMailItems;
    UseSSLorTLS : boolean;
    DontCheckTimes : boolean;
    DontCheckStart : TDateTime;
    DontCheckEnd : TDateTime;
    AuthType : TAuthType;
    SslVersion : TsslVer;
    StartTLS : boolean;
    LastMsgCount : integer;
  private
    FAccountIndex : Integer; //zero based
    FAccountNum : Integer; //one based
  protected

  public
    property AccountIndex : Integer read FAccountIndex; //zero based
    property AccountNum : Integer read FAccountNum;
    constructor Create();
    procedure RefreshAccountStatus();

    function CountNew(): integer;
    function CountUnviewed(): integer;
    function CountStatus(statusses : TMailItemStatusSet): integer;

    function IsImap() : boolean;
    procedure Connect();
    procedure ConnectIfNeeded();
    procedure TestAccount();
    function GetUIDs(var UIDLs : TStringList; const maxUIDs : integer = -1): boolean;
    function GetUID(msgnum: integer): string;
    function DebugPrint(): String;
  end;

  //----------------------------------------------------------- Account Items --
  TAccounts = class(TObjectList<TAccount>)
  private
    function GetNumAccounts(): Integer;
  public
    constructor Create;
    function Add: TAccount;
    //function GetAccountNumber(Account : TAccount) : integer;
    property NumAccounts: Integer read GetNumAccounts;

    function CountAllNew: integer;
    function CountAll(UnviewedOnly: boolean): integer;
  end;

  //----------------------------------------------------------------- Globals --
var
  Accounts : TAccounts; //global

{$ENDREGION}

////////////////////////////////////////////////////////////////////////////////
implementation
uses uGlobal, IdException, uTranslate, Vcl.Forms, Vcl.Controls, uRCUtils,
  IdStack;

{$REGION '-- TUniqueQueue --'}
////////////////////////////////////////////////////////////////////////////////
{ TUniqueQueue }
////////////////////////////////////////////////////////////////////////////////

//------------------------------------------------------------------------------
// Unique Queue - Push Item
//------------------------------------------------------------------------------
procedure TUniqueQueue.PushItem(AItem: Pointer);
begin
  if List.IndexOf(AItem) = -1 then
    inherited;
end;
{$ENDREGION}

{$REGION '-- TAccount --'}
////////////////////////////////////////////////////////////////////////////////
{ TAccount }
////////////////////////////////////////////////////////////////////////////////

//------------------------------------------------------------------------------
//
//------------------------------------------------------------------------------
constructor TAccount.Create();
begin
  inherited;
  UIDLSupported := True;
  FAccountNum := 0;    //not set
  FAccountIndex := -1; //not set
  LastMsgCount := 0;
end;

procedure TAccount.ConnectIfNeeded();
begin
  if not Prot.Connected then
    Connect();
end;

procedure TAccount.Connect();
var
  aHost,aProtocol : string;
  aUsername,aPassword : string;
  aPort : integer;
  errMsg : PChar;
begin
  aHost := Server;
  aPort := Port;
  aProtocol := Protocol;
  aUsername := Login;
  aPassword := Password;
  self.Connecting := True;
  try
    self.Prot.SetSSLOptions(UseSSLorTLS, AuthType, SslVersion, StartTLS);
    self.Prot.Connect(PChar(aHost),aPort,PChar(aProtocol),PChar(aUsername),PChar(aPassword), Options.TimeOut*1000);
    errMsg := self.Prot.LastErrorMsg();
    if (errMsg <> nil) then
    begin
      raise EIdException.Create(errMsg);
    end;
  finally
    self.Connecting := False;
  end;
end;

procedure TAccount.TestAccount();
var
  msgcount : integer;
  info,st : string;
  sl : TStringList;
begin
  try
    self.Connect(); //includes Prot.Connect...
    try
      msgcount := integer(Prot.CountMessages);
      info := Translate('Login OK') + sLineBreak;
      info := info + Translate('Message Count:')+' ' +IntToStr(msgcount) + sLineBreak + sLineBreak;
      sl := TStringList.Create;
      try
        if ( Prot.SupportsUIDL ) then
          st := Translate('Supported')
        else st := Translate('NOT Supported');

        info := info + Translate('Quick Checking and Safe Delete (UIDL):')+' '+st;
      finally
        sl.Free;
      end;
    finally
      Prot.DisconnectWithQuit;
      // TODO: GetWelcomeMessage was throwing an exception on GetResponse causing the connection not to be closed
      // which appears to be worse than not having this info that I'm not sure actually shows anything.
      //if Accounts[num-1].Port in [110,143] then
        //info := GetWelcomeMessage(Accounts[num-1].Server,Accounts[num-1].Port) + sLineBreak + info;
      Screen.Cursor := crDefault;
      ShowMemo(Translate('Connection Info'),info,450,250); //synchronize
    end;
  except
    on e: EIdSocketError do
    begin
      info := Translate('Failure connecting to server.') + sLineBreak + e.Message;
      if ( e.LastError = 11004 ) then info := info + Translate('Server found, but is not a mail server.');
      ShowMemo(Translate('Connection Info'),info,450,250); //synchronize
    end;
    on e : EIdException do begin
      ShowMemo(Translate('Test Account'),Translate('An error occurred.')+ sLineBreak + e.Message,450,250); //synchronize
    end;
  end;
end;

function TAccount.GetUID(msgnum: integer): string;
////////////////////////////////////////////////////////////////////////////////
// Get UID from server.  Must be connected
var
  UIDLs : TStringList;
  res : boolean;
  pUIDL : PChar;
begin
  UIDLs := TStringList.Create;
  try
    try
      if self.UIDLSupported then begin
        res := Prot.UIDL(UIDLs,msgnum);
      end else begin
        res := False;
      end;
    except
      res := False;
    end;
    if (UIDLs.Count > 0) and res then
      Result := StrAfter(UIDLs[0],' ')
    else
      Result := 'Error'+IntToStr(Random(10000));
  finally
    UIDLs.Free;
  end;
end;

// @Return true if account supports UIDL
function TAccount.GetUIDs(var UIDLs : TStringList; const maxUIDs : integer = -1): boolean;
////////////////////////////////////////////////////////////////////////////////
// Get list of UIDS for this account from server. Must be connected.
// UIDLs is an OUTPUT parameter.
var
  pUIDL : PChar;
begin
  try
    if self.UIDLSupported then
    begin
      Result := Prot.UIDL(UIDLs, -1, maxUIDs);
      if not Result then
        self.UIDLSupported := False;
    end
    else begin
      Result := False;
    end;
  except
    // server doesn't support UIDL
    Result := False;
  end;
end;

//------------------------------------------------------------------------------
// Saves the RuleId for this account. The Rule ID is the array index into the
// accounts array + 1 (or 0 if account not saved, etc). The Rule ID is used for
// matching up rule to account for account-based rules. The Rule Number is
// basically the account number (one based).
//------------------------------------------------------------------------------
//procedure TAccount.setRuleId(id : Integer);
//begin
//  FRuleId := id;
//end;

//------------------------------------------------------------------------------
//
//------------------------------------------------------------------------------
(*procedure TAccount.AssignTo(Dest: TPersistent);
begin
  if Dest is TAccount then
    with TAccount(Dest) do
    begin
      Name := self.Name;
      Server := self.Server;
      Port := self.Port;
      Protocol := self.Protocol;
      Login := self.Login;
      Password := self.Password;
      MailProgram := self.MailProgram;
      Sound := self.Sound;
      Color := self.Color;
      MsgIDs := self.MsgIDs;
      ViewedMsgIDs := self.ViewedMsgIDs;
      IgnoreCount := self.IgnoreCount;
      Enabled := self.Enabled;
      Error := self.Error;
      Status := self.Status;
      Interval := self.Interval;
      Timer := self.Timer;
      Size := self.Size;
      Connecting := self.Connecting;
      OldNum := self.OldNum;
      Prot := self.Prot;
      UIDLSupported := self.UIDLSupported;
      Mail := self.Mail;
      DontCheckTimes := self.DontCheckTimes;
      DontCheckStart := self.DontCheckStart;
      DontCheckEnd := self.DontCheckEnd;
    end
  else inherited AssignTo(Dest);
end;   *)

//------------------------------------------------------------------------------
// IsImap
//------------------------------------------------------------------------------
function TAccount.IsImap() : boolean;
begin
  Result := false;
  if (Prot.ProtocolType = protIMAP4)
    then Result := true;
end;


//------------------------------------------------------------------------------
// RefreshAccountStatus
//------------------------------------------------------------------------------
procedure TAccount.RefreshAccountStatus();
var
  i : integer;
  mailItem : TMailItem;
begin
  self.MsgIDs := '';
  self.Size := 0;
  self.IgnoreCount := 0;
  for mailItem in self.Mail do
  begin
    MsgIDs := MsgIDs + mailItem.MsgID;
    Size := Size + mailItem.Size;
    if (mailItem.Ignored) or (mailItem.Spam) or
       (mailItem.ToDelete) then
      Inc(IgnoreCount);
  end;
end;

//------------------------------------------------------------------------------
// Count new messages from this account
//------------------------------------------------------------------------------
function TAccount.CountNew(): integer;
var
  mailItem : TMailItem;
begin
  Result := 0;
  if Mail = nil then exit;

  for mailItem in Mail do
    if mailItem.New and
      not mailItem.Ignored and
      not mailItem.ToDelete then
        Inc(Result);
end;


//------------------------------------------------------------------------------
// Creates a diagnostic list of mail items present in this account.
//------------------------------------------------------------------------------
function TAccount.DebugPrint(): String;
var
  mailItem : TMailItem;
begin
  Result := 'MsgNum,UID,Seen,Subject';
  if Mail = nil then exit;

  for mailItem in Mail do
    Result := Result + #13#10 + IntToStr(mailItem.MsgNum)+','+mailItem.UID+','+BoolToStr(mailItem.Seen, true)+',"'+mailItem.Subject+'"';
end;


//------------------------------------------------------------------------------
// Count unviewed messages from this account
//------------------------------------------------------------------------------
function TAccount.CountUnviewed(): integer;
var
  mailItem : TMailItem;
begin
  Result := 0;
  if Mail=nil then Exit;
  for mailItem in Mail do
    if not mailItem.Viewed and
       not mailItem.Ignored and
       not mailItem.ToDelete then
         Inc(Result);
end;

//------------------------------------------------------------------------------
// Count messages of the specified status
//------------------------------------------------------------------------------
function TAccount.CountStatus(statusses : TMailItemStatusSet): integer;
var
  mailItem : TMailItem;
begin
  Result := 0;
  for mailItem in Mail do
  begin
    if Options.HideViewed and mailItem.Viewed and (Statusses<>[misToBeDeleted]) then
      // ignore
    else if (misToBeDeleted in Statusses)   and mailItem.ToDelete      then Inc(Result)
    else if (misSpam in Statusses)          and mailItem.Spam          then Inc(Result)
    else if (misIgnored in Statusses)       and mailItem.Ignored       then Inc(Result)
    else if (misProtected in Statusses)     and mailItem.Protect       then Inc(Result)
    else if (misImportant in Statusses)     and mailItem.Important     then Inc(Result)
    else if (misHasAttachment in Statusses) and mailItem.HasAttachment then Inc(Result)
    else if (misViewed in Statusses)        and mailItem.Viewed        then Inc(Result)
    else if (misNew in Statusses)           and mailItem.New           then Inc(Result);
  end;
end;
{$ENDREGION}

{$REGION '-- TAccounts --'}
////////////////////////////////////////////////////////////////////////////////
{ TAccounts }
////////////////////////////////////////////////////////////////////////////////

//------------------------------------------------------------------------------
// Creates a new account item.
//------------------------------------------------------------------------------
constructor TAccounts.Create;
begin
  inherited Create();
  self.OwnsObjects := true;
end;


//------------------------------------------------------------------------------
// Gets the total number of accounts
//------------------------------------------------------------------------------
function TAccounts.GetNumAccounts() : Integer;
begin
  Result := Inherited Count;
end;

//------------------------------------------------------------------------------
//
//------------------------------------------------------------------------------
function TAccounts.Add: TAccount;
var
  accountIdx : integer;
begin
  Result := TAccount.Create();
  accountIdx := inherited Add(Result);
  Result.FAccountIndex := accountIdx;
  Result.FAccountNum := accountIdx + 1;
end;

//------------------------------------------------------------------------------
// Count the number of new messages from all accounts
//------------------------------------------------------------------------------
function TAccounts.CountAllNew: integer;

var
  account : TAccount;
begin
  Result := 0;
  for account in Accounts do
    Result := Result + account.CountNew();

end;

//------------------------------------------------------------------------------
// Count messages (either unviewed or all) from all accounts
//------------------------------------------------------------------------------
function TAccounts.CountAll(UnviewedOnly: boolean): integer;
var
  account : TAccount;
begin
  Result := 0;
  for account in Accounts do
  begin
    if account.Mail = nil then continue;
    if UnviewedOnly then
      Result := Result + account.CountUnviewed()
    else
      Result := Result + account.Mail.Count - account.IgnoreCount;
  end;
end;


////////////////////////////////////////////////////////////////////////////////
{$ENDREGION}
end.
