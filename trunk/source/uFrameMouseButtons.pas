unit uFrameMouseButtons;

{-------------------------------------------------------------------------------
POPTRAY
Copyright (C) 2003-2005  Renier Crause
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
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls;

type
  TframeMouseButtons = class(TFrame)
    lblLeft: TLabel;
    lblRight: TLabel;
    lblMiddle: TLabel;
    lblDouble: TLabel;
    Label13: TLabel;
    cmbLeftClick: TComboBox;
    cmbRightClick: TComboBox;
    cmbMiddleClick: TComboBox;
    cmbDblClick: TComboBox;
    lblSLeft: TLabel;
    cmbShiftLeftClick: TComboBox;
    lblSRight: TLabel;
    cmbShiftRightClick: TComboBox;
    lblSMiddle: TLabel;
    cmbShiftMiddleClick: TComboBox;
    procedure OptionsChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  end;

implementation

uses uMain, uGlobal;

{$R *.dfm}

{ TframeMouseButtons }

constructor TframeMouseButtons.Create(AOwner: TComponent);
var
  i : integer;
  st : string;
  max : TLabel;
begin
  inherited;
  Options.Busy := True;
  frmPopUMain.TranslateFrame(self);
  // fill action drop-downs
  for i := Low(Actions) to High(Actions) do
  begin
    st := frmPopUMain.Translate(Actions[i]);
    cmbLeftClick.Items.Add(st);
    cmbRightClick.Items.Add(st);
    cmbMiddleClick.Items.Add(st);
    cmbDblClick.Items.Add(st);
    cmbShiftLeftClick.Items.Add(st);
    cmbShiftRightClick.Items.Add(st);
    cmbShiftMiddleClick.Items.Add(st);
  end;
  // options to screen
  cmbLeftClick.ItemIndex := Options.LeftClick;
  cmbRightClick.ItemIndex := Options.RightClick;
  cmbMiddleClick.ItemIndex := Options.MiddleClick;
  cmbDblClick.ItemIndex := Options.DblClick;
  cmbShiftLeftClick.ItemIndex := Options.ShiftLeftClick;
  cmbShiftRightClick.ItemIndex := Options.ShiftRightClick;
  cmbShiftMiddleClick.ItemIndex := Options.ShiftMiddleClick;
  // re-align
  max := lblLeft;
  if lblRight.Width > max.Width then max := lblRight;
  if lblMiddle.Width > max.Width then max := lblMiddle;
  if lblDouble.Width > max.Width then max := lblDouble;
  if lblSLeft.Width > max.Width then max := lblSLeft;
  if lblSRight.Width > max.Width then max := lblSRight;
  if lblSMiddle.Width > max.Width then max := lblSMiddle;
  max.Left := 2;
  lblLeft.Left := max.Left + max.Width - lblLeft.Width;
  lblRight.Left := max.Left + max.Width - lblRight.Width;
  lblMiddle.Left := max.Left + max.Width - lblMiddle.Width;
  lblDouble.Left := max.Left + max.Width - lblDouble.Width;
  lblSLeft.Left := max.Left + max.Width - lblSLeft.Width;
  lblSRight.Left := max.Left + max.Width - lblSRight.Width;
  lblSMiddle.Left := max.Left + max.Width - lblSMiddle.Width;
  cmbLeftClick.Left := max.Left + max.Width + 4;
  cmbRightClick.Left := max.Left + max.Width + 4;
  cmbMiddleClick.Left := max.Left + max.Width + 4;
  cmbDblClick.Left := max.Left + max.Width + 4;
  cmbShiftLeftClick.Left := max.Left + max.Width + 4;
  cmbShiftRightClick.Left := max.Left + max.Width + 4;
  cmbShiftMiddleClick.Left := max.Left + max.Width + 4;

  Options.Busy := False;
end;

procedure TframeMouseButtons.OptionsChange(Sender: TObject);
begin
  if not Options.Busy then
  begin
    // screen to options
    Options.LeftClick := cmbLeftClick.ItemIndex;
    Options.RightClick := cmbRightClick.ItemIndex;
    Options.MiddleClick := cmbMiddleClick.ItemIndex;
    Options.DblClick := cmbDblClick.ItemIndex;
    Options.ShiftLeftClick := cmbShiftLeftClick.ItemIndex;
    Options.ShiftRightClick := cmbShiftRightClick.ItemIndex;
    Options.ShiftMiddleClick := cmbShiftMiddleClick.ItemIndex;
    // buttons
    frmPopUMain.btnSaveOptions.Enabled := True;
    frmPopUMain.btnCancel.Enabled := True;
  end;
end;

end.
