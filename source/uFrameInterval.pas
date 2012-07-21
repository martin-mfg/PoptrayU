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
    lblMinutes: TLabel;
    edTime: TEdit;
    UpDown: TUpDown;
    lblAnd: TLabel;
    chkDontCheckTimes: TCheckBox;
    dtStart: TDateTimePicker;
    dtEnd: TDateTimePicker;
    grpInterval: TGroupBox;
    radioCheckEvery: TRadioButton;
    radioNever: TRadioButton;
    radioTimerAccount: TRadioButton;
    chkOnline: TCheckBox;
    grpExcept: TGroupBox;
    chkCheckWhileMinimized: TCheckBox;
    //procedure btnNeverClick(Sender: TObject);
    procedure OptionsChange(Sender: TObject);
    procedure HelpMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure UpDownClick(Sender: TObject; Button: TUDBtnType);
    procedure chkDontCheckTimesClick(Sender: TObject);
    procedure radioNeverClick(Sender: TObject);
    procedure FrameResize(Sender: TObject);
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
  frmPopUMain.TranslateFrame(self);
  edTime.Tag := 1;
  // options to screen
  edTime.Text := FloatToStr(Options.Interval);
  radioTimerAccount.Checked := Options.TimerAccount;
  if NOT radioTimerAccount.Checked then
  begin
    radioCheckEvery.Checked := Options.Interval > 0;
    radioNever.Checked := Options.Interval <= 0;
  end;
  edTime.Enabled := radioCheckEvery.Checked;
  UpDown.Enabled := radioCheckEvery.Checked;

  chkOnline.Checked := Options.Online;

  chkCheckWhileMinimized.Checked := Options.CheckWhileMinimized;

  chkDontCheckTimes.Checked := Options.DontCheckTimes;
  dtStart.Time := Options.DontCheckStart;
  dtEnd.Time := Options.DontCheckEnd;
  // autosize
  AutoSizeCheckBox(radioCheckEvery);
  edTime.Left := radioCheckEvery.Left + radioCheckEvery.Width + 4;
  UpDown.Left := edTime.Left + edTime.Width;
  lblMinutes.Left := UpDown.Left + UpDown.Width + 4;

  AutoSizeCheckBox(chkDontCheckTimes);
  dtStart.Left := chkDontCheckTimes.Left + chkDontCheckTimes.Width + 4;
  lblAnd.Left := dtStart.Left + dtStart.Width + 6;
  dtEnd.Left := lblAnd.Left + lblAnd.Width + 8;

  Options.Busy := False;
end;


//-----------------------------------------------------------------[ events ]---

procedure TframeInterval.OptionsChange(Sender: TObject);
begin
  if not Options.Busy then
  begin
    // screen to options
    Options.Interval := StrToFloatDef(edTime.Text,5); //UpDown.Position;
    Options.TimerAccount := radioTimerAccount.Checked;

    Options.Online := chkOnline.Checked;
    Options.CheckWhileMinimized := chkCheckWhileMinimized.Checked;
    Options.DontCheckTimes := chkDontCheckTimes.Checked;
    Options.DontCheckStart := dtStart.Time;
    Options.DontCheckEnd := dtEnd.Time;

    // buttons
    if (Sender = edTime) and (edTime.Tag = 1) then
      edTime.Tag := 0
    else
    begin
      frmPopUMain.btnSaveOptions.Enabled := True;
      frmPopUMain.btnCancel.Enabled := True;
    end;
  end;

  edTime.Enabled := radioCheckEvery.Checked;
  UpDown.Enabled := radioCheckEvery.Checked;

  // autosize
  self.Font := Options.GlobalFont;
  AutoSizeCheckBox(radioCheckEvery);
  edTime.Left := radioCheckEvery.Left + radioCheckEvery.Width + 4;
  UpDown.Left := edTime.Left + edTime.Width;
  lblMinutes.Left := UpDown.Left + UpDown.Width + 4;

  AutoSizeCheckBox(chkDontCheckTimes);
  dtStart.Left := chkDontCheckTimes.Left + chkDontCheckTimes.Width + 4;
  lblAnd.Left := dtStart.Left + dtStart.Width + 6;
  dtEnd.Left := lblAnd.Left + lblAnd.Width + 8;

end;

procedure TframeInterval.HelpMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  frmPopUMain.QuickHelp(Sender, Button, Shift, X, Y);
end;

procedure TframeInterval.UpDownClick(Sender: TObject; Button: TUDBtnType);
begin
  UpDown.Position := round(Options.Interval);
  UpDown.Associate := edTime;
  OptionsChange(UpDown);
end;

procedure TframeInterval.chkDontCheckTimesClick(Sender: TObject);
begin
  dtStart.Enabled := chkDontCheckTimes.Checked;
  dtEnd.Enabled := chkDontCheckTimes.Checked;
  OptionsChange(chkDontCheckTimes);
end;


procedure TframeInterval.radioNeverClick(Sender: TObject);
begin
  UpDown.Position := 0;
  UpDown.Associate := edTime;
  OptionsChange(UpDown);
end;

procedure TframeInterval.FrameResize(Sender: TObject);
begin
    Self.Refresh; //refresh to make labels not disappear in Vista
  //lblAnd.Left := dtStart.Left + dtStart.Width + 6;
end;

end.
