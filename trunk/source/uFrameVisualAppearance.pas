{-------------------------------------------------------------------------------
Visual Appearance Frame
Copyright © 2012 Jessica Brown
All Rights Reserved.

 * This file is dual licensed; you can use it under the terms of
 * either the GPL, or the BSD license, at your option.
 *
 * I. GPL:
 *
 * This file is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This file is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
 *
 * The GNU GPL can be found at:
 *   http://www.gnu.org/copyleft/gpl.html
 *
 * Alternatively,
 *
 * II. BSD license:
 * 
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
-------------------------------------------------------------------------------}

unit uFrameVisualAppearance;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, ImgList;

type

  { TframeVisualAppearance }

  TframeVisualAppearance = class(TFrame)
    Label1: TLabel;
    lblListboxFontSample: TLabel;
    btnFontChange: TSpeedButton;
    listboxBgColorBox: TColorBox;
    listboxFgColorBox: TColorBox;
    resetListboxBtn: TSpeedButton;
    imgFg: TImage;
    imgBg: TImage;
    btnGlobalFont: TSpeedButton;
    btnVerticalTabFont: TSpeedButton;
    lblVerticalTabsSample: TLabel;
    lblGlobalSample: TLabel;
    cmbToolbarColors: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    imgVisualDk: TImageList;
    imgVisualLt: TImageList;
    procedure btnFontChangeClick(Sender: TObject);
    procedure OptionsChange(Sender: TObject);
    procedure HelpMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure listboxBgColorBoxChange(Sender: TObject);
    procedure listboxFgColorBoxChange(Sender: TObject);
    procedure resetListboxBtnClick(Sender: TObject);
    procedure cmbToolbarColorsChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    procedure SetColors();
  end;



implementation

uses uMain, uGlobal, StrUtils, uRCUtils, uFSUtils, uTranslate, uDM;

{$R *.dfm}

constructor TframeVisualAppearance.Create(AOwner: TComponent);
var
  i: integer;
begin
  inherited;
  TranslateFrame(self);
  for i := 0 to cmbToolbarColors.Items.Count-1 do
    ChangeItem(cmbToolbarColors,i,TranslateDir(cmbToolbarColors.Items[i],FromEnglish));

  // Options to screen

  // Global Font
  lblGlobalSample.Font.Assign(Options.GlobalFont);
  lblGlobalSample.Caption := lblGlobalSample.Font.Name;
  
  btnFontChange.Font.Assign(Options.GlobalFont);
  btnGlobalFont.Font.Assign(Options.GlobalFont);
  btnVerticalTabFont.Font.Assign(Options.GlobalFont);
  resetListboxBtn.Font.Assign(Options.GlobalFont);

  // Vertical Font
  lblVerticalTabsSample.Font.Assign(Options.VerticalFont);
  lblVerticalTabsSample.Caption := lblVerticalTabsSample.Font.Name;

  // Listbox Fonts/Colors
  lblListboxFontSample.Font.Assign(Options.ListboxFont);
  lblListboxFontSample.Caption := lblListboxFontSample.Font.Name;
  {$IFNDEF FPC}
  // Setting the background to not-transparent is only needed for Delphi
  // (not lazarus). Having this line execute in Lazarus causes the Font to
  // be ignored. Could be a bug in Lazarus?
  lblListboxFontSample.Transparent := false;
  {$ENDIF}
  lblListboxFontSample.Color := Options.ListboxBg;
  listboxFgColorBox.Selected := lblListboxFontSample.Font.Color;
  listboxBgColorBox.Selected := lblListboxFontSample.Color;

  cmbToolbarColors.ItemIndex := Options.ToolbarColorScheme;

  SetColors();

  Refresh;

end;

procedure TframeVisualAppearance.SetColors();
begin
  btnGlobalFont.Glyph := Nil;
  btnFontChange.Glyph := Nil;
  btnVerticalTabFont.Glyph := Nil;
  resetListboxBtn.Glyph := Nil;

  if (frmPopUMain.MailToolBar.ColorMap = frmPopUMain.TwilightColorMap1) then begin
    imgVisualDk.GetBitmap(0, btnGlobalFont.Glyph);
    imgVisualDk.GetBitmap(0, btnFontChange.Glyph);
    imgVisualDk.GetBitmap(0, btnVerticalTabFont.Glyph);
    imgVisualDk.GetBitmap(1, resetListboxBtn.Glyph);
    imgVisualDk.GetIcon(2, imgFg.Picture.Icon);
    imgVisualDk.GetIcon(3, imgBg.Picture.Icon);
  end else begin
    imgVisualLt.GetBitmap(0, btnGlobalFont.Glyph);
    imgVisualLt.GetBitmap(0, btnFontChange.Glyph);
    imgVisualLt.GetBitmap(0, btnVerticalTabFont.Glyph);
    imgVisualLt.GetBitmap(1, resetListboxBtn.Glyph);
    imgVisualLt.GetIcon(2, imgFg.Picture.Icon);
    imgVisualLt.GetIcon(3, imgBg.Picture.Icon);
  end;
  frmPopUMain.LoadSkin();
  Self.Repaint;
end;

procedure TframeVisualAppearance.OptionsChange(Sender: TObject);
begin
  if not Options.Busy then
  begin
    // screen to options
    Options.ListboxFont.Assign(lblListboxFontSample.Font);
    Options.ListboxBg := lblListboxFontSample.Color;

    frmPopUMain.lvMail.Font.Assign(lblListboxFontSample.Font);
    frmPopUMain.lvMail.Color := lblListboxFontSample.Color;

    Options.GlobalFont.Assign(lblGlobalSample.Font);
    Options.VerticalFont.Assign(lblVerticalTabsSample.Font);

    Options.ToolbarColorScheme := (cmbToolbarColors.ItemIndex);

    frmPopUMain.UpdateFonts();
    SetColors();

    // buttons
    frmPopUMain.btnSaveOptions.Enabled := True;
    frmPopUMain.btnCancel.Enabled := True;
  end;
end;

procedure TframeVisualAppearance.HelpMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  frmPopUMain.QuickHelp(Sender, Button, Shift, X, Y);
end;

procedure TframeVisualAppearance.btnFontChangeClick(Sender: TObject);
var
  fntDlg : TFontDialog;
begin
  fntDlg := TFontDialog.Create(nil);
  try
    fntDlg.Options := [];//not fdEffects

    if      sender = btnFontChange      then fntDlg.Font := Options.ListboxFont
    else if sender = btnGlobalFont      then fntDlg.Font := Options.GlobalFont
    else if sender = btnVerticalTabFont then fntDlg.Font := Options.VerticalFont;

    if fntDlg.Execute then
    begin
      if sender = btnFontChange then
      begin
        lblListboxFontSample.Font := fntDlg.Font;
        lblListboxFontSample.Caption := fntDlg.Font.Name;
      end
      else if sender = btnGlobalFont then
      begin
        lblGlobalSample.Font := fntDlg.Font;
        lblGlobalSample.Caption := fntDlg.Font.Name;
      end
      else if sender = btnVerticalTabFont then
      begin
        lblVerticalTabsSample.Font := fntDlg.Font;
        lblVerticalTabsSample.Caption := fntDlg.Font.Name;
      end;

      OptionsChange(Sender);
    end;
  finally
    fntDlg.Free;
  end;
end;

procedure TframeVisualAppearance.listboxBgColorBoxChange(Sender: TObject);
begin
   lblListboxFontSample.Color := listboxBgColorBox.Selected;
   OptionsChange(listboxBgColorBox);
end;

procedure TframeVisualAppearance.listboxFgColorBoxChange(Sender: TObject);
begin
    lblListboxFontSample.Font.Color := listboxFgColorBox.Selected;
    OptionsChange(listboxFgColorBox);
end;

procedure TframeVisualAppearance.resetListboxBtnClick(Sender: TObject);
var
  defaultFont : string;
  font : TFont;
begin
  lblListboxFontSample.Color := Graphics.clWindow;
  lblListboxFontSample.Font.Color := Graphics.clWindowText;
  defaultFont := IfThen(IsWinVista(), DEFAULT_FONT_VISTA, DEFAULT_FONT_XP);

  font := StringToFont(defaultFont);
  lblListboxFontSample.Font.Assign(font);
  lblListboxFontSample.Caption := lblListboxFontSample.Font.Name;
  //FreeAndNil(font);

  //font := StringToFont(defaultFont);
  lblGlobalSample.Font.Assign(font);
  lblGlobalSample.Caption := lblGlobalSample.Font.Name;
  FreeAndNil(font);

  font := StringToFont(DEFAULT_FONT_VERTICAL);
  lblVerticalTabsSample.Font.Assign(font);
  lblVerticalTabsSample.Caption := lblVerticalTabsSample.Font.Name;
  FreeAndNil(font);

  OptionsChange(resetListboxBtn);
end;

procedure TframeVisualAppearance.cmbToolbarColorsChange(Sender: TObject);
begin
  OptionsChange(cmbToolbarColors);
end;

end.
