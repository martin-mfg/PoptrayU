unit uFrameWhiteBlack;

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
  TframeWhiteBlack = class(TFrame)
    spltWhiteBlack: TSplitter;
    memWhiteList: TMemo;
    lblWhiteList: TLabel;
    lblBlackList: TLabel;
    memBlackList: TMemo;
    procedure FrameResize(Sender: TObject);
    procedure memListChange(Sender: TObject);
    procedure HelpMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure memWhiteListExit(Sender: TObject);
    procedure memBlackListExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  end;

implementation

uses uMain, uGlobal;

{$R *.dfm}

constructor TframeWhiteBlack.Create(AOwner: TComponent);
begin
  inherited;
  Options.Busy := True;
  frmPopUMain.TranslateFrame(self);
  memWhiteList.Lines.Text := Options.WhiteList.Text;
  memBlackList.Lines.Text := Options.BlackList.Text;
  Options.Busy := False;
end;

procedure TframeWhiteBlack.FrameResize(Sender: TObject);
begin
  memWhiteList.Height := (Self.Height - lblWhiteList.Height - lblBlackList.Height - spltWhiteBlack.Height) div 2;
  Self.Refresh; //refresh to make labels not disappear in Vista
end;

procedure TframeWhiteBlack.memListChange(Sender: TObject);
begin
  if not Options.Busy then
  begin
    // butons
    frmPopUMain.btnSaveOptions.Enabled := True;
    frmPopUMain.btnCancel.Enabled := True;
  end;
end;

procedure TframeWhiteBlack.HelpMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  frmPopUMain.QuickHelp(Sender, Button, Shift, X, Y);
end;

procedure TframeWhiteBlack.memWhiteListExit(Sender: TObject);
begin
  Options.WhiteList.Assign(memWhiteList.Lines)
end;

procedure TframeWhiteBlack.memBlackListExit(Sender: TObject);
begin
  Options.BlackList.Assign(memBlackList.Lines);
end;

end.
