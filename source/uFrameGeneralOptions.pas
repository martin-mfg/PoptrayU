unit uFrameGeneralOptions;

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
  Dialogs, StdCtrls, ExtCtrls;

type
  TframeGeneralOptions = class(TFrame)
    chkMinimized: TCheckBox;
    chkAnimated: TCheckBox;
    chkResetTray: TCheckBox;
    chkStartUp: TCheckBox;
    chkShowForm: TCheckBox;
    chkRotateIcon: TCheckBox;
    chkBalloon: TCheckBox;
    lblFirstWait: TLabel;
    edFirstWait: TEdit;
    lblSeconds: TLabel;
    chkDeleteNextCheck: TCheckBox;
    procedure OptionsChange(Sender: TObject);
    procedure HelpMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FrameResize(Sender: TObject);
  private
    { Private declarations }
    procedure ShowFirstWait;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  end;

implementation

uses uMain, uGlobal, uRCUtils;

{$R *.dfm}

{ TframeGeneralOptions }

constructor TframeGeneralOptions.Create(AOwner: TComponent);
begin
  inherited;
  Options.Busy := True;
  frmPopMain.TranslateFrame(self);
  // options to screen
  chkStartUp.Checked := Options.StartUp;
  edFirstWait.Text := IntToStr(Options.FirstWait);
  chkMinimized.Checked := Options.Minimized;
  chkAnimated.Checked := Options.Animated;
  chkResetTray.Checked := Options.ResetTray;
  chkRotateIcon.Checked := Options.RotateIcon;
  chkShowForm.Checked := Options.ShowForm;
  chkBalloon.Checked := Options.Balloon;
  chkDeleteNextCheck.Checked := Options.DeleteNextCheck;
  // autosize
  AutoSizeAllCheckBox(Self);
  edFirstWait.Left := lblFirstWait.Left + lblFirstWait.Width + 4;
  lblSeconds.Left := edFirstWait.Left + edFirstWait.Width + 4;

  ShowFirstWait;
  Options.Busy := False;
end;

procedure TframeGeneralOptions.ShowFirstWait;
begin
  // firstwait
  edFirstWait.Enabled := Options.StartUp;
  if edFirstWait.Enabled then
  begin
    edFirstWait.Color := clWindow;
    if edFirstWait.Text = '' then edFirstWait.Text := '0';
  end
  else begin
    edFirstWait.Color := clBtnFace;
    edFirstWait.Text := '';
  end;
  // labels
  lblFirstWait.Enabled := Options.StartUp;
  lblSeconds.Enabled := Options.StartUp;
end;

procedure TframeGeneralOptions.OptionsChange(Sender: TObject);
begin
  if not Options.Busy then
  begin
    // screen to options
    Options.StartUp := chkStartUp.Checked;
    Options.FirstWait := StrToIntDef(edFirstWait.Text,0);
    Options.Minimized := chkMinimized.Checked;
    Options.Animated := chkAnimated.Checked;
    Options.ResetTray := chkResetTray.Checked;
    Options.RotateIcon := chkRotateIcon.Checked;
    Options.ShowForm := chkShowForm.Checked;
    Options.Balloon := chkBalloon.Checked;
    Options.DeleteNextCheck := chkDeleteNextCheck.Checked;
    ShowFirstWait;
    // buttons
    frmPopMain.btnSaveOptions.Enabled := True;
    frmPopMain.btnCancel.Enabled := True;
  end;
end;

procedure TframeGeneralOptions.HelpMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  frmPopMain.QuickHelp(Sender, Button, Shift, X, Y);
end;

procedure TframeGeneralOptions.FrameResize(Sender: TObject);
begin
    Self.Refresh; //refresh to make labels not disappear in Vista
end;

end.
