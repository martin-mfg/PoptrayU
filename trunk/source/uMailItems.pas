unit uMailItems;

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
  Classes, SysUtils, Graphics, Generics.Collections;

type

  //--------------------------------------------------------------- Mail Item --
  TMessagePriority = (mpHighest, mpHigh, mpNormal, mpLow, mpLowest);
  TMailItemStatus = (misProtected,misToBeDeleted,misIgnored,misSpam,misImportant,misHasAttachment,misViewed,misNew); // these have to match with cmbRuleStatus
  TMailItemStatusSet = set of TMailItemStatus;

  TMailItem = class
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
  TMailItems = class (TObjectList<TMailItem>)
  public
    constructor Create;
    function Add: TMailItem;
    function FindMessage(MsgNum: Integer): TMailItem;
    function FindUID(UID: string): TMailItem;
    function FindUIDWithDuplicates(UID: string): TMailItem;
    procedure SetAllMsgNum(Value : integer);
    procedure SetAllNew(Value: boolean);
    function DeleteAllMsgNum(MsgNum : integer) : boolean;
  end;

implementation
uses uGlobal;

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
  inherited Create();
  self.OwnsObjects := true;
end;

function TMailItems.Add: TMailItem;
var
  item: TMailItem;
begin
  item := TMailItem.Create();
  inherited Add(item);
  Result := item;
end;

//------------------------------------------------------------------------------
// FindMessage - Finds a message numbered MsgNum
//
// Originally this had an inefficient sequential lookup that grows more and
// more inefficient every time the list gets longer, since this is called
// sequentially for every new message. It appears the correct behavior is
// to change one-based indexing (MsgNum) to zero-based indexing (Items[MsgNum-1]).
// For now I have left the old sequential search code "just in case" this
// turns out to be flawed somehow. But in all tested cases, sequential search
// has been unnecessary.
//------------------------------------------------------------------------------
function TMailItems.FindMessage(MsgNum: Integer): TMailItem;
var
  i : Integer;
begin
  if MsgNum < 0 then begin
    Result := nil;
    exit;
  end;
  if NOT Options.ShowNewestMessagesOnly  then begin
    try
      Result := Items[MsgNum-1];
      if (Result.MsgNum = MsgNum) then Exit; //Message found
    except on E: EArgumentOutOfRangeException do begin
      //Return nil if index is out of bounds/range
      end;
    end;
    Result := nil;
  end;

  // If Items[MsgNum-1] is not MsgNum, do a search of all msgs until found.
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
// Marks all emails as "new" or "viewed" depending on the parameter
var
  i : integer;
begin
  for i := 0 to Count-1 do
    Items[i].New := Value;
end;

function TMailItems.DeleteAllMsgNum(MsgNum : integer) : boolean;
////////////////////////////////////////////////////////////////////////////////
// Delete all items with the specified MsgNum. This is mainly used to delete
// all messages no longer on the server (indicated by msgnum = -1)
var
  mailItem : TMailItem;
begin
  Result := False;
  for mailItem in Self do
  begin
    if mailItem.MsgNum = -1 then
    begin
      Remove(mailItem);
      Result := True;
    end
  end;
end;


end.
