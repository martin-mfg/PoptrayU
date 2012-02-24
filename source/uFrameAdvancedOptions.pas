unit uFrameAdvancedOptions;

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
  TframeAdvancedOptions = class(TFrame)
    lblTimeOut: TLabel;
    lblSeconds: TLabel;
    chkOnline: TCheckBox;
    chkIgnoreRetrieveErrors: TCheckBox;
    chkCheckWhileMinimized: TCheckBox;
    edTimeOut: TEdit;
    chkQuickCheck: TCheckBox;
    chkRetrieveTop: TCheckBox;
    edTopLines: TEdit;
    chkNoError: TCheckBox;
    chkGetBody: TCheckBox;
    edGetBodyLines: TEdit;
    lblGetBodyLines: TLabel;
    chkGetBodySize: TCheckBox;
    edGetBodySize: TEdit;
    lblGetBodySize: TLabel;
    chkGetBodyLines: TCheckBox;
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

{ TframeAdvancedConnection }

constructor TframeAdvancedOptions.Create(AOwner: TComponent);
begin
  inherited;
  Options.Busy := True;
  frmPopMain.TranslateFrame(self);
  // options to screen
  edTimeOut.Text := IntToStr(Options.TimeOut);
  chkQuickCheck.Checked := Options.QuickCheck;
  chkNoError.Checked := Options.NoError;
  chkIgnoreRetrieveErrors.Checked := Options.IgnoreRetrieveErrors;
  chkCheckWhileMinimized.Checked := Options.CheckWhileMinimized;
  chkOnline.Checked := Options.Online;
  chkRetrieveTop.Checked := Options.TopLines>0;
  if chkRetrieveTop.Checked then edTopLines.Text := IntToStr(Options.TopLines);
  chkGetBody.Checked := Options.GetBody;
  chkGetBodySize.Checked := Options.GetBodySize > 0;
  if chkGetBodySize.Checked then edGetBodySize.Text := IntToStr(Options.GetBodySize);
  chkGetBodyLines.Checked := Options.GetBodyLines > 0;
  if chkGetBodyLines.Checked then edGetBodyLines.Text := IntToStr(Options.GetBodyLines);
  // autosize
  AutoSizeAllCheckBox(Self);
  edTopLines.Left := chkRetrieveTop.Left + chkRetrieveTop.Width + 4;
  edTimeOut.Left := lblTimeOut.Left + lblTimeOut.Width + 4;
  lblSeconds.Left := edTimeOut.Left + edTimeOut.Width + 4;
  edGetBodySize.Left := chkGetBodySize.Left + chkGetBodySize.Width + 4;
  lblGetBodySize.Left := edGetBodySize.Left + edGetBodySize.Width + 4;
  edGetBodyLines.Left := chkGetBodyLines.Left + chkGetBodyLines.Width + 4;
  lblGetBodyLines.Left := edGetBodyLines.Left + edGetBodyLines.Width + 4;

  Options.Busy := False;
end;

procedure TframeAdvancedOptions.OptionsChange(Sender: TObject);
begin
  // show top lines
  EnableControl(edTopLines,chkRetrieveTop.Checked);
  // get body
  if not chkGetBody.Checked then
  begin
    chkGetBodySize.Checked := false;
    chkGetBodyLines.Checked := false;
  end;
  // get body size
  chkGetBodySize.Enabled := chkGetBody.Checked;
  lblGetBodySize.Enabled := chkGetBody.Checked;
  EnableControl(edGetBodySize,chkGetBodySize.Checked);
  // get body lines
  chkGetBodyLines.Enabled := chkGetBody.Checked;
  lblGetBodyLines.Enabled := chkGetBody.Checked;
  EnableControl(edGetBodyLines,chkGetBodyLines.Checked);
  // other options
  if not Options.Busy then
  begin
    // screen to options
    Options.TimeOut := StrToIntDef(edTimeOut.Text,120);
    Options.QuickCheck := chkQuickCheck.Checked;
    Options.NoError := chkNoError.Checked;
    Options.IgnoreRetrieveErrors := chkIgnoreRetrieveErrors.Checked;
    Options.CheckWhileMinimized := chkCheckWhileMinimized.Checked;
    Options.Online := chkOnline.Checked;
    Options.TopLines := StrToIntDef(edTopLines.Text,0);
    Options.GetBody := chkGetBody.Checked;
    Options.GetBodyLines := StrToIntDef(edGetBodyLines.Text,0);
    Options.GetBodySize := StrToIntDef(edGetBodySize.Text,0);
    // get body size
    if edTopLines.Enabled and (Sender=chkRetrieveTop) then edTopLines.Text := '50';
    if not edTopLines.Enabled then edTopLines.Text := '';
    // get body size
    if edGetBodySize.Enabled and (Sender=chkGetBodySize) then edGetBodySize.Text := '20';
    if not edGetBodySize.Enabled then edGetBodySize.Text := '';
    // get body lines
    if edGetBodyLines.Enabled and (Sender=chkGetBodyLines) then edGetBodyLines.Text := '50';
    if not edGetBodyLines.Enabled then edGetBodyLines.Text := '';
    // rules area
    if Options.GetBody then
    begin
      if frmPopMain.TranslateToEnglish(frmPopMain.cmbRuleArea.Items[frmPopMain.cmbRuleArea.Items.Count-1]) <> 'Body' then
        frmPopMain.cmbRuleArea.Items.Add(frmPopMain.Translate('Body'));
    end
    else begin
      if frmPopMain.TranslateToEnglish(frmPopMain.cmbRuleArea.Items[frmPopMain.cmbRuleArea.Items.Count-1]) = 'Body' then
        frmPopMain.cmbRuleArea.Items.Delete(frmPopMain.cmbRuleArea.Items.Count-1);
    end;
    // enable buttons
    frmPopMain.btnSaveOptions.Enabled := True;
    frmPopMain.btnCancel.Enabled := True;
  end;
end;

procedure TframeAdvancedOptions.HelpMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  frmPopMain.QuickHelp(Sender, Button, Shift, X, Y);
end;

procedure TframeAdvancedOptions.FrameResize(Sender: TObject);
begin
    Self.Refresh; //refresh to make labels not disappear in Vista
end;

end.
