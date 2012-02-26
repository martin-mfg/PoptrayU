program PopTrayU;

{-------------------------------------------------------------------------------
POPTRAY
Copyright (C) 2001-2005  Renier Crause
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

{$R 'icons.res' 'icons.rc'}
{$R 'PopTrayXP.res' 'PopTrayXP.rc'}

uses
  Forms,
  Windows,
  SysUtils,
  uMain in 'uMain.pas' {frmPopUMain},
  uPreview in 'uPreview.pas' {frmPreview},
  uRCUtils in 'uRCUtils.pas',
  uPassword in 'uPassword.pas' {frmPassword},
  uFrameInterval in 'uFrameInterval.pas' {frameInterval: TFrame},
  uFrameDefaults in 'uFrameDefaults.pas' {frameDefaults: TFrame},
  uFrameGeneralOptions in 'uFrameGeneralOptions.pas' {frameGeneralOptions: TFrame},
  uFrameAdvancedInterface in 'uFrameAdvancedInterface.pas' {frameAdvancedInterface: TFrame},
  uFrameAdvancedOptions in 'uFrameAdvancedOptions.pas' {frameAdvancedOptions: TFrame},
  uFrameAdvancedMisc in 'uFrameAdvancedMisc.pas' {frameAdvancedMisc: TFrame},
  uFrameMouseButtons in 'uFrameMouseButtons.pas' {frameMouseButtons: TFrame},
  uFrameHotKeys in 'uFrameHotKeys.pas' {frameHotKeys: TFrame},
  uFramePlugins in 'uFramePlugins.pas' {framePlugins: TFrame},
  uDM in 'uDM.pas' {dm: TDataModule},
  uInfo in 'uInfo.pas' {frmInfo},
  uFrameWhiteBlack in 'uFrameWhiteBlack.pas' {frameWhiteBlack: TFrame},
  uPlugins in 'uPlugins.pas',
  uGlobal in 'uGlobal.pas',
  uPOP3 in 'uPOP3.pas',
  uObjects in 'uObjects.pas',
  RegExpr in 'RegExpr.pas',
  uHeaderDecoder in 'uHeaderDecoder.pas',
  uCodePageConverter in 'uCodePageConverter.pas';

{$R *.RES}

var
  hFirstWin : HWND;
  WindowCaption : string;
  param : integer;

begin
  if not ParamSwitch('MULTIPLE') then
  begin
    // check for previous instance
    hFirstWin := FindWindow('TfrmPopUMain', nil);
    if hFirstWin <> 0 then
    begin
      // get window caption
      SetLength(WindowCaption,100);
      GetWindowText(hFirstWin,pchar(WindowCaption),100);
      SetLength(WindowCaption,Pos(#0,WindowCaption)-1);
      // not in IDE?
      if WindowCaption <> 'PopTrayU' then
      begin
        param := ParamSwitchIndex('ACTION');
        if param > 0 then
        begin
          repeat
            PostMessage(hFirstWin, UM_ACTION, Integer(StrToAction(ParamSwitchValue(param))), 0);
            param := ParamSwitchIndex('ACTION',param);
          until param = 0;
        end
        else begin
          if ParamSwitch('QUIT') then
            PostMessage(hFirstWin, UM_QUIT, 0, 0)
          else
            PostMessage(hFirstWin, UM_ACTIVATE, 0, 0);
        end;
        Exit;
      end;
    end;
    if ParamSwitch('QUIT') then
      Exit;
  end;
  Application.Initialize;
  Application.ShowMainForm := False;
  Application.Title := 'PopTrayU'; //App Title on Windows Taskbar
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfrmPopMain, frmPopMain);
  Application.Run;
end.
