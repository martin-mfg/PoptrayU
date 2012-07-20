unit uFrameAdvancedMisc;

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
  Dialogs, StdCtrls, ExtCtrls, ComCtrls;

type
  TframeAdvancedMisc = class(TFrame)
    chkLogRules: TCheckBox;
    chkUseMAPI: TCheckBox;
    chkBlackListSpam: TCheckBox;
    Label2: TLabel;
    Label3: TLabel;
    chkDeleteConfirm: TCheckBox;
    chkDeleteConfirmProtected: TCheckBox;
    Label1: TLabel;
    chkDeleteNextCheck: TCheckBox;
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

uses uMain, uGlobal, uRCUtils;

{$R *.dfm}

{ TframeAdvancedMisc }

constructor TframeAdvancedMisc.Create(AOwner: TComponent);
begin
  inherited;
  Options.Busy := True;
  frmPopUMain.TranslateFrame(self);

  // screen to options
  chkDeleteConfirm.Checked := Options.DeleteConfirm;
  chkDeleteConfirmProtected.Checked := Options.DeleteConfirmProtected;
  chkDeleteNextCheck.Checked := Options.DeleteNextCheck;

  chkUseMAPI.Checked := Options.UseMAPI;
  chkLogRules.Checked := Options.LogRules;
  chkBlackListSpam.Checked := Options.BlackListSpam;

  // autosize
  AutoSizeAllCheckBox(Self);
  Options.Busy := False;
end;

procedure TframeAdvancedMisc.OptionsChange(Sender: TObject);
begin
  if not Options.Busy then
  begin
    // screen to options
    Options.DeleteNextCheck := chkDeleteNextCheck.Checked;
    Options.DeleteConfirm := chkDeleteConfirm.Checked;
    Options.DeleteConfirmProtected := chkDeleteConfirmProtected.Checked;

    Options.UseMAPI := chkUseMAPI.Checked;
    Options.LogRules := chkLogRules.Checked;
    Options.BlackListSpam := chkBlackListSpam.Checked;

    // buttons
    frmPopUMain.btnSaveOptions.Enabled := True;
    frmPopUMain.btnCancel.Enabled := True;
  end;
end;

procedure TframeAdvancedMisc.HelpMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  frmPopUMain.QuickHelp(Sender, Button, Shift, X, Y);
end;

end.
