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

// Since PopTrayU only runs on Windows, turn off warnings for platform
// specific calls like DebugHook.
{$WARN SYMBOL_PLATFORM OFF}

uses
  madExcept,
  madLinkDisAsm,
  madListHardware,
  madListProcesses,
  madListModules,
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
  uFrameVisualAppearance in 'uFrameVisualAppearance.pas' {frameVisualAppearance: TFrame},
  uDM in 'uDM.pas' {dm: TDataModule},
  uInfo in 'uInfo.pas' {frmInfo},
  uFrameWhiteBlack in 'uFrameWhiteBlack.pas' {frameWhiteBlack: TFrame},
  uPlugins in 'uPlugins.pas',
  uGlobal in 'uGlobal.pas',
  uPOP3 in 'uPOP3.pas',
  uObjects in 'uObjects.pas',
  RegExpr in 'RegExpr.pas',
  uHeaderDecoder in 'uHeaderDecoder.pas',
  uCodePageConverter in 'uCodePageConverter.pas',
  uFSUtils in 'uFSUtils.pas',
  uHtmlDecoder in 'uHtmlDecoder.pas';

{$R *.RES}

var
  hFirstWin : HWND;
  param : integer;

begin
  if not ParamSwitch('MULTIPLE') then
  begin
    // check for previous instance
    hFirstWin := FindWindow('TfrmPopUMain', nil);
    if (hfirstWin = 0) then
    begin
      // If on a unicode platform, the class will have a different name.
      hFirstWin := FindWindow('TfrmPopUMain.UnicodeClass', nil);
    end;
    //if existing instance found AND we are NOT running in the debugger
    if (hFirstWin <> 0) AND (DebugHook = 0) then
    begin
      // If /ACTION specified on command line, execute actions, then quit
      param := ParamSwitchIndex('ACTION');
      if (param > 0) then
      begin
          repeat
            PostMessage(hFirstWin, UM_ACTION, Integer(StrToAction(ParamSwitchValue(param))), 0);
            param := ParamSwitchIndex('ACTION',param);
          until param = 0;
          Exit;
      end;

      // If /QUIT switch given, Kill other instance and then quit this one.
      if ParamSwitch('QUIT') then
      begin
          PostMessage(hFirstWin, UM_QUIT, 0, 0);
          Exit;
      end;

      // If user launches a second instance without /MULTIPLE switch,
      // Give focus to existing instance rather than launching a second copy.
      PostMessage(hFirstWin, UM_ACTIVATE, 0, 0);
      Exit;
    end;
    // If /QUIT specified but app isn't already running, just exit
    if ParamSwitch('QUIT') then Exit;
  end;

  // we expect to get here if the user specified /MULTIPLE, or if we've
  // fallen through the previous cases because PopTrayU isn't already
  // running, or if we are running in the debugger. In these cases, continue
  // initialization and start our new instance of the App/UI/etc.
  Application.Initialize;
  Application.ShowMainForm := False;
  Application.Title := 'PopTrayU'; //App Title on Windows Taskbar
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfrmPopUMain, frmPopUMain);
  Application.Run;
end.
