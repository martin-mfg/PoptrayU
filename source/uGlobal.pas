unit uGlobal;

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

interface

uses Classes, ExtCtrls, Contnrs, SysUtils, uPlugins, uObjects;

var
  Options : record
    Busy : boolean;
    // interval
    TimerAccount : boolean;
    Interval : real;
    // defaults
    MailProgram : string;
    DefSound : string;
    Languages : array of string;
    Language : integer;
    // general options
    StartUp : boolean;
    Minimized : boolean;
    Animated : boolean;
    ResetTray : boolean;
    RotateIcon : boolean;
    ShowForm : boolean;
    Balloon : boolean;
    FirstWait : integer;
    DeleteNextCheck : boolean;
    // advanced - connection
    TimeOut : integer;
    QuickCheck : boolean;
    CheckWhileMinimized : boolean;
    IgnoreRetrieveErrors : boolean;
    Online : boolean;
    TopLines : integer;
    GetBody : boolean;
    GetBodyLines : integer;
    GetBodySize : integer;
    // advanced - interface
    CheckingIcon : integer;
    ShowViewed : boolean;
    CloseMinimize : boolean;
    MinimizeTray : boolean;
    NoError : boolean;
    MultilineAccounts : boolean;
    DeleteConfirm : boolean;
    DeleteConfirmProtected : boolean;
    PasswordProtect : boolean;
    Password : string;
    OnTop : boolean;
    AdvInfo : boolean;
    AdvInfoDelay : integer;
    HideViewed : boolean;
    DoubleClickDelay : boolean;
    ShowWhileChecking : boolean;
    // advanced - misc
    UseMAPI : boolean;
    LogRules : boolean;
    SafeDelete : boolean;
    RememberViewed : boolean;
    BlackListSpam : boolean;
    DontCheckTimes : boolean;
    DontCheckStart : TDateTime;
    DontCheckEnd : TDateTime;
    // mouse buttons
    LeftClick : integer;
    RightClick : integer;
    MiddleClick : integer;
    DblClick : integer;
    ShiftLeftClick : integer;
    ShiftRightClick : integer;
    ShiftMiddleClick : integer;
    // hot keys
    Action1 : integer;
    Action2 : integer;
    Action3 : integer;
    Action4 : integer;
    HotKey1 : integer;
    HotKey2 : integer;
    HotKey3 : integer;
    HotKey4 : integer;
    // white list / black list
    WhiteList : TStringList;
    BlackList : TStringList;
    // info
    InfoTab : integer;
    InfoCol1 : integer;
    InfoCol2 : integer;
    InfoCol3 : integer;
    InfoCol4 : integer;
  end;

const
  // checking icon
  ciNone = 0;
  ciLightning = 1;
  ciStar = 2;
  ciAnimatedStar = 3;
  // options
  optInterval = 0;
  optDefaults = 1;
  optGeneralOptions = 2;
  optAdvancedOptions = 3;
  optAdvancedInterface = 4;
  optAdvancedMisc = 5;
  optMouseButtons = 6;
  optHotKeys = 7;
  optWhiteBlackList = 8;
  optPlugins = 9;


type
  TProtocol = record
    Name : string;
    Port : integer;
    Prot : TPluginProtocol;
  end;

var
  Protocols : array of TProtocol;

const
  Actions : array[0..15] of string =
    ('Nothing','Show Messages','Pop-Up Menu','Check for Mail',
     'Run E-Mail Client','Check and Show','Show Info','Check and Info',
     'Toggle Message Window','Toggle AutoCheck','New Message',
     'Toggle Sound','Delete Spam','Mark as Viewed','Check First Account',
     'Stop Checking');

type
  TCommand = (cmdNothing,cmdShow,cmdMenu,cmdCheck,
              cmdRun,cmdCheckShow,cmdInfo,cmdCheckInfo,
              cmdToggleShow,cmdToggleAutoCheck,cmdNewMessage,
              cmdToggleSound, cmdDeleteSpam, cmdMarkViewed,
              cmdCheckFirst, cmdStopChecking,
              // extra commands
              cmdAutoCheckOn,cmdAutoCheckOff,cmdSoundOn,cmdSoundOff);

function StrToAction(st: string): TCommand;

implementation

function StrToAction(st: string): TCommand;
begin
  st := UpperCase(st);
  Result := cmdNothing;
  if st = 'SHOW' then Result := cmdShow
  else if st = 'MENU' then Result := cmdMenu
  else if st = 'CHECK' then Result := cmdCheck
  else if st = 'CHECKALL' then Result := cmdCheck
  else if st = 'RUNCLIENT' then Result := cmdRun
  else if st = 'CHECKSHOW' then Result := cmdCheckShow
  else if st = 'INFO' then Result := cmdInfo
  else if st = 'CHECKINFO' then Result := cmdCheckInfo
  else if st = 'WINDOW' then Result := cmdToggleShow
  else if st = 'AUTOCHECK' then Result := cmdToggleAutoCheck
  else if st = 'NEW' then Result := cmdNewMessage
  else if st = 'SOUND' then Result := cmdToggleSound
  else if st = 'DELSPAM' then Result := cmdDeleteSpam
  else if st = 'MARKVIEWED' then Result := cmdMarkViewed
  else if st = 'STOPCHECKING' then Result := cmdStopChecking
  else if st = 'AUTOCHECKON' then Result := cmdAutoCheckOn
  else if st = 'AUTOCHECKOFF' then Result := cmdAutoCheckOff
  else if st = 'SOUNDON' then Result := cmdSoundOn
  else if st = 'SOUNDOFF' then Result := cmdSoundOff
end;


initialization
  Options.WhiteList := TStringList.Create;
  Options.BlackList := TStringList.Create;

finalization
  Options.WhiteList.Free;
  Options.BlackList.Free;


end.
