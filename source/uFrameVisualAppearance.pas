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
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls;

type
  TframeVisualAppearance = class(TFrame)
    Label1: TLabel;
    lblListboxFontSample: TLabel;
    btnFontChange: TSpeedButton;
    listboxBgBtn: TSpeedButton;
    listboxBgColorBox: TColorBox;
    listboxFgColorBox: TColorBox;
    listboxFgBtn: TSpeedButton;
    resetListboxBtn: TSpeedButton;
    procedure btnFontChangeClick(Sender: TObject);
    procedure OptionsChange(Sender: TObject);
    procedure HelpMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure listboxBgBtnClick(Sender: TObject);
    procedure listboxBgColorBoxChange(Sender: TObject);
    procedure listboxFgColorBoxChange(Sender: TObject);
    procedure listboxFgBtnClick(Sender: TObject);
    procedure resetListboxBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  end;



implementation

uses uMain, uGlobal, uRCUtils;

{$R *.dfm}

constructor TframeVisualAppearance.Create(AOwner: TComponent);
begin
  inherited;
  frmPopUMain.TranslateFrame(self);
  lblListboxFontSample.Caption := frmPopUMain.lvMail.Font.Name;
  lblListboxFontSample.Font := frmPopUMain.lvMail.Font;
  lblListboxFontSample.Transparent := false;
  lblListboxFontSample.Color := frmPopUMain.lvMail.Color;

  Refresh;
end;


procedure TframeVisualAppearance.OptionsChange(Sender: TObject);
begin
  if not Options.Busy then
  begin
    // screen to options
    Options.ListboxFont := lblListboxFontSample.Font;
    Options.ListboxBg := lblListboxFontSample.Color;

    frmPopUMain.lvMail.Font := lblListboxFontSample.Font;
    frmPopUMain.lvMail.Color := lblListboxFontSample.Color;

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
    fntDlg.Font := frmPopUMain.lvMail.Font;
    if fntDlg.Execute then
    begin
      lblListboxFontSample.Font := fntDlg.Font;
      lblListboxFontSample.Caption := fntDlg.Font.Name;
      OptionsChange(btnFontChange);
    end;
  finally
    fntDlg.Free;
  end;
end;


procedure TframeVisualAppearance.listboxBgBtnClick(Sender: TObject);
var
  colorDlg : TColorDialog;
begin
  colorDlg := TColorDialog.Create(nil);
  try
    if (colorDlg.Execute) then
    begin
      lblListboxFontSample.Transparent := False; //XP Manifest makes this needed
      lblListboxFontSample.Color := colorDlg.Color;
      OptionsChange(listboxBgBtn);
    end;
  finally
    colorDlg.Free;
  end;
end;

procedure TframeVisualAppearance.listboxBgColorBoxChange(Sender: TObject);
begin
   lblListboxFontSample.Color := listboxBgColorBox.Selected;
   OptionsChange(listboxBgBtn);
end;

procedure TframeVisualAppearance.listboxFgColorBoxChange(Sender: TObject);
begin
    lblListboxFontSample.Font.Color := listboxFgColorBox.Selected;
    OptionsChange(listboxBgBtn);
end;

procedure TframeVisualAppearance.listboxFgBtnClick(Sender: TObject);
var
  colorDlg : TColorDialog;
begin
  colorDlg := TColorDialog.Create(nil);
  try
    if (colorDlg.Execute) then
    begin
      lblListboxFontSample.Transparent := False; //XP Manifest makes this needed
      lblListboxFontSample.Font.Color := colorDlg.Color;
      OptionsChange(listboxBgBtn);
    end;
  finally
    colorDlg.Free;
  end;
end;

procedure TframeVisualAppearance.resetListboxBtnClick(Sender: TObject);
begin
  lblListboxFontSample.Color := Graphics.clWindow;
  lblListboxFontSample.Font.Color := Graphics.clWindowText;
  lblListboxFontSample.Font.Name := 'MS Sans Serif';
  lblListboxFontSample.Font.Style := [];
  lblListboxFontSample.Font.Size := 8;
  lblListboxFontSample.Caption := lblListboxFontSample.Font.Name;

  OptionsChange(resetListboxBtn);
end;

end.
