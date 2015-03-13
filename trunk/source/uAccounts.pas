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
  Generics.Collections;

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
    Prot : TPluginProtocol;
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
uses uGlobal;

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
