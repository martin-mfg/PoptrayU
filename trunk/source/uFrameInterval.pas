unit uFrameInterval;

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
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls;

type
  TframeInterval = class(TFrame)
    chkTimerAccount: TCheckBox;
    panInterval: TPanel;
    btnNever: TSpeedButton;
    lblMinutes: TLabel;
    lblCheckEvery: TLabel;
    edTime: TEdit;
    UpDown: TUpDown;
    procedure btnNeverClick(Sender: TObject);
    procedure OptionsChange(Sender: TObject);
    procedure HelpMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure UpDownClick(Sender: TObject; Button: TUDBtnType);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  end;

implementation

uses uMain, uGlobal, uRCUtils;

{$R *.dfm}

//-----------------------------------------------------------------[ public ]---

constructor TframeInterval.Create(AOwner: TComponent);
begin
  inherited;
  Options.Busy := True;
  frmPopMain.TranslateFrame(self);
  edTime.Tag := 1;
  // options to screen
  chkTimerAccount.Checked := Options.TimerAccount;
  edTime.Text := FloatToStr(Options.Interval);
  // autosize
  AutoSizeCheckBox(chkTimerAccount);
  edTime.Left := lblCheckEvery.Left + lblCheckEvery.Width + 4;
  UpDown.Left := edTime.Left + edTime.Width;
  lblMinutes.Left := UpDown.Left + UpDown.Width + 4;
  btnNever.Left := edTime.Left + (edTime.Width+UpDown.Width) div 2 - (btnNever.Width div 2);

  Options.Busy := False;
end;


//-----------------------------------------------------------------[ events ]---

procedure TframeInterval.OptionsChange(Sender: TObject);
begin
  if not Options.Busy then
  begin
    // screen to options
    Options.Interval := StrToFloatDef(edTime.Text,5); //UpDown.Position;
    Options.TimerAccount := chkTimerAccount.Checked;
    // buttons
    if (Sender = edTime) and (edTime.Tag = 1) then
      edTime.Tag := 0
    else
    begin
      frmPopMain.btnSaveOptions.Enabled := True;
      frmPopMain.btnCancel.Enabled := True;
    end;
  end;
  panInterval.Visible := not Options.TimerAccount;
  frmPopMain.panIntervalAccount.Visible := Options.TimerAccount;
end;

procedure TframeInterval.btnNeverClick(Sender: TObject);
begin
  UpDown.Position := 0;
  UpDown.Associate := edTime;
  OptionsChange(UpDown);
end;


procedure TframeInterval.HelpMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  frmPopMain.QuickHelp(Sender, Button, Shift, X, Y);
end;

procedure TframeInterval.UpDownClick(Sender: TObject; Button: TUDBtnType);
begin
  UpDown.Position := round(Options.Interval);
  UpDown.Associate := edTime;
  OptionsChange(UpDown);
end;

end.
