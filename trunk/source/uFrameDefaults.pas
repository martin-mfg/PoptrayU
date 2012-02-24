unit uFrameDefaults;

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
  Dialogs, StdCtrls, Buttons;

type
  TframeDefaults = class(TFrame)
    Label9: TLabel;
    btnEdProgram: TSpeedButton;
    btnTest: TSpeedButton;
    Label8: TLabel;
    btnEdDefSound: TSpeedButton;
    btnSndTest: TSpeedButton;
    Label24: TLabel;
    btnLanguageRefresh: TSpeedButton;
    edProgram: TEdit;
    edDefSound: TEdit;
    cmbLanguage: TComboBox;
    procedure btnEdProgramClick(Sender: TObject);
    procedure btnEdDefSoundClick(Sender: TObject);
    procedure cmbLanguageChange(Sender: TObject);
    procedure btnLanguageRefreshClick(Sender: TObject);
    procedure btnTestClick(Sender: TObject);
    procedure btnSndTestClick(Sender: TObject);
    procedure OptionsChange(Sender: TObject);
    procedure HelpMouseDown(Sender: TObject; Button: TMouseButton;
                            Shift: TShiftState; X, Y: Integer);
    procedure FrameResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    procedure ShowLanguages;
  end;

implementation

uses uMain, uRCUtils, uGlobal;

{$R *.dfm}

constructor TframeDefaults.Create(AOwner: TComponent);
begin
  inherited;
  Options.Busy := True;
  frmPopMain.TranslateFrame(self);
  // options to screen
  edProgram.Text := Options.MailProgram;
  edDefSound.Text := Options.DefSound;
  btnTest.Glyph.Assign(frmPopMain.btnStartProgram.Glyph);
  ShowLanguages;
  Options.Busy := False;
  self.Repaint;
end;

procedure TframeDefaults.ShowLanguages;
var
  i : integer;
  langs : TStringList;
begin
  langs := TStringList.Create;
  try
    // copy languages from options to stringlist
    for i := Low(Options.Languages)+1 to High(Options.Languages) do
      langs.Add(frmPopMain.Translate(Options.Languages[i]));

    // sort it
    langs.Sort;
    langs.Insert(0,frmPopMain.Translate(Options.Languages[0]));

    // copy from stringlist to combo-box
    cmbLanguage.Items.Assign(langs);
    cmbLanguage.ItemIndex := cmbLanguage.Items.IndexOf(Options.Languages[Options.Language]);
  finally
    langs.Free;
  end;
end;

procedure TframeDefaults.OptionsChange(Sender: TObject);
begin
  if not Options.Busy then
  begin
    // screen to options
    Options.MailProgram := edProgram.Text;
    Options.DefSound := edDefSound.Text;
    // buttons
    frmPopMain.btnSaveOptions.Enabled := True;
    frmPopMain.btnCancel.Enabled := True;
  end;
end;

procedure TframeDefaults.btnEdProgramClick(Sender: TObject);
var
  dlgOpen : TOpenDialog;
begin
  dlgOpen := TOpenDialog.Create(nil);
  try
    dlgOpen.InitialDir := ExtractFileDir(edProgram.Text);
    dlgOpen.Filter := frmPopMain.Translate('EXE files')+' (*.exe)|*.exe|'+
                      frmPopMain.Translate('All Files')+' (*.*)|*.*';
    if dlgOpen.Execute then
    begin
      edProgram.Text := dlgOpen.FileName;
      GetBitmapFromFileIcon(edProgram.Text,btnTest.Glyph,True);
    end;
  finally
    dlgOpen.Free;
  end;
end;


procedure TframeDefaults.btnEdDefSoundClick(Sender: TObject);
var
  dlgOpen : TOpenDialog;
begin
  dlgOpen := TOpenDialog.Create(nil);
  try
    dlgOpen.InitialDir := ExtractFileDir(edDefSound.Text);
    if dlgOpen.InitialDir='' then
       dlgOpen.InitialDir := ExtractFilePath(Application.ExeName)+'Sounds';  
    dlgOpen.Filter := frmPopMain.Translate('WAV files')+' (*.wav)|*.WAV';
    if dlgOpen.Execute then
    begin
      edDefSound.Text := dlgOpen.FileName;
    end;
  finally
    dlgOpen.Free;
  end;
end;

procedure TframeDefaults.cmbLanguageChange(Sender: TObject);
var
  i : integer;
  lang : string;
begin
  // screen to options
  lang := cmbLanguage.Text;
  for i := Low(Options.Languages) to High(Options.Languages) do
    if Options.Languages[i] = lang then
    begin
      Options.Language := i;
      Break;
    end;
  // butons
  frmPopMain.btnSaveOptions.Enabled := True;
  frmPopMain.btnCancel.Enabled := True;
end;

procedure TframeDefaults.btnLanguageRefreshClick(Sender: TObject);
begin
  frmPopMain.RefreshLanguages;
  ShowLanguages;
  Self.Refresh; //refresh to make labels not disappear in Vista
end;

procedure TframeDefaults.btnTestClick(Sender: TObject);
begin
  frmPopMain.ExecuteProgram;
end;

procedure TframeDefaults.btnSndTestClick(Sender: TObject);
begin
  PlayWav(Options.DefSound);
end;


procedure TframeDefaults.HelpMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  frmPopMain.QuickHelp(Sender, Button, Shift, X, Y);
end;


procedure TframeDefaults.FrameResize(Sender: TObject);
begin
    cmbLanguage.Width := Self.ClientWidth - btnLanguageRefresh.Width - 20;
    edProgram.Width   := Self.ClientWidth - btnLanguageRefresh.Width - 20;
    edDefSound.Width  := Self.ClientWidth - btnLanguageRefresh.Width - 20;
    Self.Refresh; //refresh to make labels not disappear in Vista
end;

end.
