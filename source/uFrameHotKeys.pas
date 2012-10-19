unit uFrameHotKeys;

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
  Dialogs, ComCtrls, StdCtrls, ExtCtrls;

type
  TframeHotKeys = class(TFrame)
    Label25: TLabel;
    Label26: TLabel;
    cmbAction1: TComboBox;
    cmbAction2: TComboBox;
    cmbAction3: TComboBox;
    cmbAction4: TComboBox;
    hkHotKey1: THotKey;
    hkHotKey2: THotKey;
    hkHotKey3: THotKey;
    hkHotKey4: THotKey;
    imgInfo: TImage;
    labelHotKeyInfo: TLabel;
    InfoPanel: TPanel;
    procedure OptionsChange(Sender: TObject);
    procedure HelpMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  end;

implementation

uses uMain, uGlobal, uTranslate;

{$R *.dfm}

{ TframeHotKeys }

constructor TframeHotKeys.Create(AOwner: TComponent);
var
  i : integer;
  st : string;
begin
  inherited;
  TranslateFrame(self);

  // fill action dropdowns
  for i := Low(Actions) to High(Actions) do
  begin
    st := Translate(Actions[i]);
    cmbAction1.Items.Add(st);
    cmbAction2.Items.Add(st);
    cmbAction3.Items.Add(st);
    cmbAction4.Items.Add(st);
  end;
  // options to screen
  Options.Busy := True;
  cmbAction1.ItemIndex := Options.Action1;
  cmbAction2.ItemIndex := Options.Action2;
  cmbAction3.ItemIndex := Options.Action3;
  cmbAction4.ItemIndex := Options.Action4;
  hkHotKey1.HotKey := Options.HotKey1;
  hkHotKey2.HotKey := Options.HotKey2;
  hkHotKey3.HotKey := Options.HotKey3;
  hkHotKey4.HotKey := Options.HotKey4;
  Options.Busy := False;

  //TODO: autosize info panel... InfoPanel.Height := labelHotKeyInfo.Height + 4;
end;

procedure TframeHotKeys.OptionsChange(Sender: TObject);
begin
  if not Options.Busy then
  begin
    // screen to options
    Options.Action1 := cmbAction1.ItemIndex;
    Options.Action2 := cmbAction2.ItemIndex;
    Options.Action3 := cmbAction3.ItemIndex;
    Options.Action4 := cmbAction4.ItemIndex;
    Options.HotKey1 := hkHotKey1.HotKey;
    Options.HotKey2 := hkHotKey2.HotKey;
    Options.HotKey3 := hkHotKey3.HotKey;
    Options.HotKey4 := hkHotKey4.HotKey;
    // buttons
    frmPopUMain.btnSaveOptions.Enabled := True;
    frmPopUMain.btnCancel.Enabled := True;
  end;
end;

procedure TframeHotKeys.HelpMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  frmPopUMain.QuickHelp(Sender, Button, Shift, X, Y);
end;

end.
