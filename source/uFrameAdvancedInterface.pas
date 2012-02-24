unit uFrameAdvancedInterface;

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
  TframeAdvancedInterface = class(TFrame)
    chkOnTop: TCheckBox;
    chkDeleteConfirm: TCheckBox;
    chkCloseMinimize: TCheckBox;
    chkDoubleClickDelay: TCheckBox;
    chkMinimizeTray: TCheckBox;
    chkPasswordProtect: TCheckBox;
    edPassword: TEdit;
    chkShowViewed: TCheckBox;
    chkMultilineAccounts: TCheckBox;
    chkAdvInfo: TCheckBox;
    chkHideViewed: TCheckBox;
    lblTrayIcon: TLabel;
    cmbCheckingIcon: TComboBox;
    edAdvInfoDelay: TEdit;
    lblAdvInfoDelay: TLabel;
    chkShowWhileChecking: TCheckBox;
    chkDeleteConfirmProtected: TCheckBox;
    procedure OptionsChange(Sender: TObject);
    procedure HelpMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
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

constructor TframeAdvancedInterface.Create(AOwner: TComponent);
var
  i : integer;
begin
  inherited;
  Options.Busy := True;
  frmPopMain.TranslateFrame(self);
  for i := 0 to cmbCheckingIcon.Items.Count-1 do
    cmbCheckingIcon.Items[i] := frmPopMain.Translate(cmbCheckingIcon.Items[i]);
  // options to screen
  chkShowViewed.Checked := Options.ShowViewed;
  chkCloseMinimize.Checked := Options.CloseMinimize;
  chkDoubleClickDelay.Checked := Options.DoubleClickDelay;
  chkMinimizeTray.Checked := Options.MinimizeTray;
  chkMultilineAccounts.Checked := Options.MultilineAccounts;
  chkDeleteConfirm.Checked := Options.DeleteConfirm;
  chkDeleteConfirmProtected.Checked := Options.DeleteConfirmProtected;
  chkPasswordProtect.Checked := Options.PasswordProtect;
  edPassword.Text := Options.Password;
  chkOnTop.Checked := Options.OnTop;
  chkAdvInfo.Checked := Options.AdvInfo;
  edAdvInfoDelay.Text := IntToStr(Options.AdvInfoDelay);
  chkHideViewed.Checked := Options.HideViewed;
  cmbCheckingIcon.ItemIndex := Options.CheckingIcon;
  chkShowWhileChecking.Checked := Options.ShowWhileChecking;
  // autosize
  AutoSizeAllCheckBox(Self);
  edPassword.Left := chkPasswordProtect.Left + chkPasswordProtect.Width + 4;
  edAdvInfoDelay.Left := chkAdvInfo.Left + chkAdvInfo.Width + 2;
  lblAdvInfoDelay.Left := edAdvInfoDelay.Left + edAdvInfoDelay.Width + 2;
  cmbCheckingIcon.Left := lblTrayIcon.Left + lblTrayIcon.Width + 4;

  Options.Busy := False;
end;

procedure TframeAdvancedInterface.OptionsChange(Sender: TObject);
begin
  // show password box
  EnableControl(edPassword,chkPasswordProtect.Checked);
  EnableControl(edAdvInfoDelay,chkAdvInfo.Checked);
  lblAdvInfoDelay.Enabled := chkAdvInfo.Checked;
  if not Options.Busy then
  begin
    // screen to options
    Options.ShowViewed := chkShowViewed.Checked;
    Options.CloseMinimize := chkCloseMinimize.Checked;
    Options.DoubleClickDelay := chkDoubleClickDelay.Checked;
    Options.MinimizeTray := chkMinimizeTray.Checked;
    Options.MultilineAccounts := chkMultilineAccounts.Checked;
    Options.DeleteConfirm := chkDeleteConfirm.Checked;
    Options.DeleteConfirmProtected := chkDeleteConfirmProtected.Checked;
    Options.PasswordProtect := chkPasswordProtect.Checked;
    Options.Password := edPassword.Text;
    Options.OnTop := chkOnTop.Checked;
    Options.AdvInfo := chkAdvInfo.Checked;
    Options.AdvInfoDelay := StrToIntDef(edAdvInfoDelay.Text,0);
    Options.HideViewed := chkHideViewed.Checked;
    Options.CheckingIcon := cmbCheckingIcon.ItemIndex;
    Options.ShowWhileChecking := chkShowWhileChecking.Checked;
    // enable buttons
    frmPopMain.btnSaveOptions.Enabled := True;
    frmPopMain.btnCancel.Enabled := True;
    // focus password
    if (Sender = chkPasswordProtect) and edPassword.Enabled and Self.Visible then
      edPassword.SetFocus;
  end;
end;

procedure TframeAdvancedInterface.HelpMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  frmPopMain.QuickHelp(Sender, Button, Shift, X, Y);
end;

procedure TframeAdvancedInterface.FrameResize(Sender: TObject);
begin
    Self.Refresh; //refresh to make labels not disappear in Vista
end;

end.
