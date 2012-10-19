library NotifyKeyboardLights;

{-------------------------------------------------------------------------------
POPTRAY
Copyright (C) 2003  Renier Crause
All Rights Reserved.

This is free software.

Permission to use, copy, modify, and distribute this software and
its documentation for any purpose, without fee, and without written
agreement is hereby granted, provided that the above copyright
notice appear in all copies of this software.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
-------------------------------------------------------------------------------}

uses
  Windows, SysUtils, 
  uPlugins in '..\..\uPlugins.pas';

function InterfaceVersion : integer; stdcall; forward;
procedure Init; stdcall; forward;
function PluginType : TPluginType; stdcall; forward;
function PluginName : ShortString; stdcall; forward;
procedure ShowOptions; stdcall; forward;
procedure Unload; stdcall; forward;
procedure MessageCheck(MsgFrom,MsgTo,MsgSubject : PChar; MsgDate : TDateTime; Viewed,New,Important,Spam : boolean); stdcall; forward;
procedure MessageBody(MsgHeader,MsgBody : PChar); stdcall; forward;
procedure Notify(MailCount,UnviewedCount,NewCount : integer; ResetTray : boolean); stdcall; forward;
procedure FreePChar(var p : PChar); forward;

exports
  InterfaceVersion,
  // general
  Init,
  PluginType,
  PluginName,
  ShowOptions,
  FreePChar,
  Unload,
  // notify
  MessageCheck,
  MessageBody,
  Notify;

var
  TimerHandle : UINT = 0;

//------------------------------------------------------------------ helpers ---

type
  TKeyboardLight = (klNumLock,klCapsLock,klScrollLock);

procedure ToggleKeyboardLight(Light : TKeyboardLight);
var
  vkey : byte;
begin
   case Light of
     klNumLock    : vkey := VK_NUMLOCK;
     klCapsLock   : vkey := VK_CAPITAL;
     klScrollLock : vkey := VK_SCROLL;
   else
     vkey := 0;
   end;
   // simulate a key press
   keybd_event(vkey,$45,KEYEVENTF_EXTENDEDKEY or 0,0 );
   keybd_event(vkey,$45,KEYEVENTF_EXTENDEDKEY or KEYEVENTF_KEYUP,0);
end;

procedure SetKeyboardLight(Light : TKeyboardLight; OnOff : boolean);
var
  keyState : TKeyboardState;
  vkey : byte;
begin
   case Light of
     klNumLock    : vkey := VK_NUMLOCK;
     klCapsLock   : vkey := VK_CAPITAL;
     klScrollLock : vkey := VK_SCROLL;
   else
     vkey := 0;
   end;
   GetKeyboardState(keyState);
   if (OnOff and (keyState[vkey] and 1 <> 1)) or
       (not(OnOff) and (keyState[vkey] and 1 = 1)) then
   begin
     // simulate a key press
     keybd_event(vkey,$45,KEYEVENTF_EXTENDEDKEY or 0,0 );
     keybd_event(vkey,$45,KEYEVENTF_EXTENDEDKEY or KEYEVENTF_KEYUP,0);
   end;
end;

procedure TimerProc(hWnd: HWND; uMsg: UINT; idEvent: UINT; dwTime: DWORD); stdcall;
begin
  ToggleKeyboardLight(klScrollLock);
end;

//------------------------------------------------------------------ exports ---

function InterfaceVersion : integer; stdcall;
begin
  Result := 1;
end;

procedure Init;
begin
  // init code goes here
end;

function PluginType : TPluginType;
begin
  Result := piNotify;
end;

function PluginName : ShortString;
begin
  Result := 'Keyboard Lights';
end;

procedure ShowOptions;
begin
  MessageBox(0,'PopTray Example Plugin: KeyboardLights','KeyboardLights',MB_OK);
end;

procedure Unload;
begin
  KillTimer(0,TimerHandle);
  TimerHandle := 0;
  SetKeyboardLight(klScrollLock,False);
end;

procedure MessageCheck(MsgFrom,MsgTo,MsgSubject : PChar; MsgDate : TDateTime; Viewed,New,Important,Spam : boolean);
begin
  // do something with the message
end;

procedure MessageBody(MsgHeader,MsgBody : PChar);
begin
  // here you have the header.  (body only if PopTray can supply it)
end;

procedure Notify(MailCount,UnviewedCount,NewCount : integer; ResetTray : boolean);
begin
  if (ResetTray and (UnviewedCount>0)) or (not ResetTray and (MailCount>0)) then
  begin
    if TimerHandle = 0 then
      TimerHandle := SetTimer(0,0,500,@TimerProc);
  end
  else begin
    KillTimer(0,TimerHandle);
    TimerHandle := 0;
    SetKeyboardLight(klScrollLock,False);
  end;
end;

procedure FreePChar(var p : PChar);
// Have to free the PChars from inside the DLL
begin
  StrDispose(p);
  p := nil;
end;


end.
