unit uObjects;

{-------------------------------------------------------------------------------
POPTRAY
Copyright (C) 2001-2005  Renier Crause
All Rights Reserved.

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

The GNU GPL can be found at:
  http://www.gnu.org/copyleft/gpl.html
-------------------------------------------------------------------------------}

interface

uses
  Classes, ExtCtrls, Contnrs, SysUtils, Graphics,
  uPlugins,
  IdMessageClient, IdIOHandlerStream, IdMessage;

type
  //------------------------------------------------------------------- Queue --
  TUniqueQueue = class(TQueue)
  protected
    procedure PushItem(AItem: Pointer); override;
  end;

  //--------------------------------------------------------------- Mail Item --
  TMessagePriority = (mpHighest, mpHigh, mpNormal, mpLow, mpLowest);
  TMailItemStatus = (misProtected,misToBeDeleted,misIgnored,misSpam,misImportant,misHasAttachment,misViewed,misNew); // these have to match with cmbRuleStatus
  TMailItemStatusSet = set of TMailItemStatus;

  TMailItem = class(TCollectionItem)
  public
    MsgNum : integer;
    From : string;
    MailTo : string;
    Address : string;
    ReplyTo : string;
    Subject : string;
    Date : TDateTime;
    DateStr : string;
    Size : integer;
    Priority : TMessagePriority;
    Ignored : boolean;
    HasAttachment : boolean;
    Viewed : boolean;
    New : boolean;
    Important : boolean;
    Spam : boolean;
    Protect : boolean;
    ToDelete : boolean;
    MsgID : string;
    UID : string;
    TrayColor : TColor;
  public
    function GetStatusSet : TMailItemStatusSet;
  end;

  //-------------------------------------------------------------- Mail Items --
  TMailItems = class(TCollection)
  private
    function GetItem(Index: Integer): TMailItem;
    procedure SetItem(Index: Integer; Value: TMailItem);
  protected
    procedure Update(Item: TCollectionItem); override;
  public
    constructor Create;
    function Add: TMailItem;
    function FindMessage(MsgNum: Integer): TMailItem;
    function FindUID(UID: string): TMailItem;
    function FindUIDWithDuplicates(UID: string): TMailItem;
    procedure SetAllMsgNum(Value : integer);
    procedure SetAllNew(Value: boolean);
    function DeleteAllMsgNum(MsgNum : integer) : boolean;
    property Items[Index: Integer]: TMailItem read GetItem write SetItem; default;
  end;

  //------------------------------------------------------------ Account Item --
  TAccountItem = class(TCollectionItem)
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
    OldNum : integer;
    Prot : TPluginProtocol;
    UIDLSupported : boolean;
    Mail : TMailItems;
  protected
    procedure AssignTo(Dest: TPersistent); override;
  public
    constructor Create(Collection: TCollection); override;
  end;

  //----------------------------------------------------------- Account Items --
  TAccountItems = class(TCollection)
  private
    function GetItem(Index: Integer): TAccountItem;
    procedure SetItem(Index: Integer; Value: TAccountItem);
  public
    constructor Create;
    function Add: TAccountItem;
    procedure Move(CurIndex, NewIndex: Integer);
    property Items[Index: Integer]: TAccountItem read GetItem write SetItem; default;
  end;


  //---------------------------------------------------------------- Rule Row --
  TRuleArea = (raHeader,raFrom,raSubject,raTo,raCC,raFromName,raFromAddress,raStatus,raBody);  // has to match with cmbRuleArea + raBody at the end
  TRuleCompare = (rcContains,rcEquals,rcWildcard,rcEmpty,rcRegExpr);

  TRuleRow = class(TCollectionItem)
  public
    Area : TRuleArea;
    Compare : TRuleCompare;
    Text : string;
    RuleNot : boolean;
  protected
    procedure AssignTo(Dest: TPersistent); override;
  end;

  //--------------------------------------------------------------- Rule Rows --
  TRuleRows = class(TCollection)
  private
    function GetItem(Index: Integer): TRuleRow;
    procedure SetItem(Index: Integer; Value: TRuleRow);
  public
    constructor Create;
    function Add: TRuleRow;
    property Items[Index: Integer]: TRuleRow read GetItem write SetItem; default;
  end;

  //--------------------------------------------------------------- Rule Item --
  TRuleOperator = (roAny,roAll);

  TRuleItem = class(TCollectionItem)
  public
    Name : string;
    Enabled : boolean;
    New : boolean;
    Account : integer;
    Operator : TRuleOperator;
    Wav : string;
    Delete : boolean;
    Ignore : boolean;
    EXE : string;
    Important : boolean;
    Spam : boolean;
    Protect : boolean;
    Log : boolean;
    TrayColor : TColor;
    Rows : TRuleRows;
  protected
    procedure AssignTo(Dest: TPersistent); override;
  public
    constructor Create(Collection: TCollection); override;
  end;

  //--------------------------------------------------------------- Rule Items --
  TRuleItems = class(TCollection)
  private
    function GetItem(Index: Integer): TRuleItem;
    procedure SetItem(Index: Integer; Value: TRuleItem);
  public
    constructor Create;
    function Add: TRuleItem;
    procedure Move(CurIndex, NewIndex: Integer);
    property Items[Index: Integer]: TRuleItem read GetItem write SetItem; default;
  end;



implementation

{ TUniqueQueue }

procedure TUniqueQueue.PushItem(AItem: Pointer);
begin
  if List.IndexOf(AItem) = -1 then
    inherited;
end;

{ TMailItem }

function TMailItem.GetStatusSet: TMailItemStatusSet;
begin
  Result := [];
  if self.Protect then Result := Result + [misProtected];
  if self.ToDelete then Result := Result + [misToBeDeleted];
  if self.Ignored then Result := Result + [misIgnored];
  if self.Spam then Result := Result + [misSpam];
  if self.Important then Result := Result + [misImportant];
  if self.HasAttachment then Result := Result + [misHasAttachment];
  if self.Viewed then Result := Result + [misViewed];
  if self.New then Result := Result + [misNew];
end;

{ TMailItems }

constructor TMailItems.Create;
begin
  inherited Create(TMailItem);
end;

procedure TMailItems.Update(Item: TCollectionItem);
begin
  inherited;

end;

function TMailItems.GetItem(Index: Integer): TMailItem;
begin
  Result := TMailItem(inherited GetItem(Index));
end;

procedure TMailItems.SetItem(Index: Integer; Value: TMailItem);
begin
  inherited SetItem(Index, Value);
end;

function TMailItems.Add: TMailItem;
begin
  Result := TMailItem(inherited Add);
end;

function TMailItems.FindMessage(MsgNum: Integer): TMailItem;
////////////////////////////////////////////////////////////////////////////////
// Find message with MsgNum
var
  i : Integer;
begin
  for i := 0 to Count-1 do
  begin
    Result := Items[i];
    if Result.MsgNum = MsgNum then Exit;
  end;
  Result := nil;
end;

function TMailItems.FindUID(UID: string): TMailItem;
////////////////////////////////////////////////////////////////////////////////
// Find message with UID
var
  i : Integer;
begin
  if UID<>'' then
  begin
    for i := 0 to Count-1 do
    begin
      Result := Items[i];
      if Result.UID = UID then Exit;
    end;
  end;
  Result := nil;
end;

function TMailItems.FindUIDWithDuplicates(UID: string): TMailItem;
////////////////////////////////////////////////////////////////////////////////
// Find message with UID - non-unique UID allowed according to RFC1939
// NOTE: Call SetAllMsgNum(-1) before using this method
var
  i : Integer;
begin
  for i := 0 to Count-1 do
  begin
    Result := TMailItem(Items[i]);
    if (Result.UID = UID) and (Result.MsgNum = -1) then Exit;
  end;
  Result := nil;
end;

procedure TMailItems.SetAllMsgNum(Value: integer);
////////////////////////////////////////////////////////////////////////////////
// Set all items MsgNum property
var
  i : integer;
begin
  for i := 0 to Count-1 do
    Items[i].MsgNum := Value;
end;

procedure TMailItems.SetAllNew(Value: boolean);
////////////////////////////////////////////////////////////////////////////////
// Set all items New property
var
  i : integer;
begin
  for i := 0 to Count-1 do
    Items[i].New := Value;
end;

function TMailItems.DeleteAllMsgNum(MsgNum : integer) : boolean;
////////////////////////////////////////////////////////////////////////////////
// Delete all items with the specified MsgNum
var
  i : integer;
begin
  Result := False;
  i := 0;
  while i <= Count-1 do
  begin
    if Items[i].MsgNum = -1 then
    begin
      Self.Delete(i);
      Result := True;
    end
    else
      Inc(i);
  end;
end;

{ TAccountItem }

constructor TAccountItem.Create(Collection: TCollection);
begin
  inherited;
  UIDLSupported := True;
end;

procedure TAccountItem.AssignTo(Dest: TPersistent);
begin
  if Dest is TAccountItem then
    with TAccountItem(Dest) do
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
    end
  else inherited AssignTo(Dest);
end;

{ TAccountItems }

constructor TAccountItems.Create;
begin
  inherited Create(TAccountItem);
end;

function TAccountItems.Add: TAccountItem;
begin
  Result := TAccountItem(inherited Add);
end;

function TAccountItems.GetItem(Index: Integer): TAccountItem;
begin
  Result := TAccountItem(inherited GetItem(Index));
end;

procedure TAccountItems.SetItem(Index: Integer; Value: TAccountItem);
begin
  inherited SetItem(Index, Value);
end;

procedure TAccountItems.Move(CurIndex, NewIndex: Integer);
var
  TempItem: TAccountItem;
begin
  if CurIndex <> NewIndex then
  begin
    BeginUpdate;
    try
      TempItem := TAccountItem.Create(nil);
      try
        TempItem.Assign(GetItem(CurIndex));
        Delete(CurIndex);
        Insert(NewIndex);
        SetItem(NewIndex,TempItem);
      finally
        TempItem.Free;
      end;
    finally
      EndUpdate;
    end;
  end;
end;


{ TRuleRow }

procedure TRuleRow.AssignTo(Dest: TPersistent);
begin
    if Dest is TRuleItem then
    with TRuleItem(Dest) do
    begin
      Area := self.Area;
      Compare := self.Compare;
      Text := self.Text;
      RuleNot := self.RuleNot;
    end
  else inherited AssignTo(Dest);
end;

{ TRuleRows }

constructor TRuleRows.Create;
begin
  inherited Create(TRuleRow);
end;

function TRuleRows.Add: TRuleRow;
begin
  Result := TRuleRow(inherited Add);
end;

function TRuleRows.GetItem(Index: Integer): TRuleRow;
begin
  Result := TRuleRow(inherited GetItem(Index));
end;

procedure TRuleRows.SetItem(Index: Integer; Value: TRuleRow);
begin
  inherited SetItem(Index, Value);
end;


{ TRuleItem }

constructor TRuleItem.Create(Collection: TCollection);
begin
  inherited Create(Collection);
  Rows := TRuleRows.Create;
end;

procedure TRuleItem.AssignTo(Dest: TPersistent);
begin
  if Dest is TRuleItem then
    with TRuleItem(Dest) do
    begin
      Name := self.Name;
      Enabled := self.Enabled;
      New := self.New;
      Account := self.Account;
      Operator := self.Operator;
      Wav := self.Wav;
      Delete := self.Delete;
      Ignore := self.Ignore;
      EXE := self.EXE;
      Important := self.Important;
      Spam := self.Spam;
      Protect := self.Protect;
      Log := self.Log;
      TrayColor := self.TrayColor;
      Rows := self.Rows;
    end
  else inherited AssignTo(Dest);
end;

{ TRuleItems }

constructor TRuleItems.Create;
begin
  inherited Create(TRuleItem);
end;

function TRuleItems.Add: TRuleItem;
begin
  Result := TRuleItem(inherited Add);
end;

function TRuleItems.GetItem(Index: Integer): TRuleItem;
begin
  Result := TRuleItem(inherited GetItem(Index));
end;

procedure TRuleItems.SetItem(Index: Integer; Value: TRuleItem);
begin
  inherited SetItem(Index, Value);
end;

procedure TRuleItems.Move(CurIndex, NewIndex: Integer);
var
  TempItem: TRuleItem;
begin
  if CurIndex <> NewIndex then
  begin
    BeginUpdate;
    try
      TempItem := TRuleItem.Create(nil);
      try
        TempItem.Assign(GetItem(CurIndex));
        Delete(CurIndex);
        Insert(NewIndex);
        SetItem(NewIndex,TempItem);
      finally
        TempItem.Free;
      end;
    finally
      EndUpdate;
    end;
  end;
end;


end.
