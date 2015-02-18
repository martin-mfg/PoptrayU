unit uConstants;

interface
uses WinApi.Messages;

const
  // USER MESSAGES
  UM_ACTIVATE = WM_USER + 10;
  UM_ACTION = WM_USER + 11;
  UM_QUIT = WM_USER + 12;
  UM_PROCESS_MESSAGES = WM_USER + 13;
  UM_DOWNLOAD_BODY_WHILE_CHECKING_CHANGED = WM_USER + 14;
  UM_RELOAD_WHITELIST = WM_USER + 15;
  UM_RELOAD_BLACKLIST = WM_USER + 16;

const
  PBT_APMQUERYSUSPEND       = $0000;
  PBT_APMQUERYSTANDBY       = $0001;
  PBT_APMQUERYSUSPENDFAILED = $0002;
  PBT_APMQUERYSTANDBYFAILED = $0003;
  PBT_APMSUSPEND            = $0004;
  PBT_APMSTANDBY            = $0005;
  PBT_APMRESUMECRITICAL     = $0006;
  PBT_APMRESUMESUSPEND      = $0007;
  PBT_APMRESUMESTANDBY      = $0008;
  PBTF_APMRESUMEFROMFAILURE = $00000001;
  PBT_APMBATTERYLOW         = $0009;
  PBT_APMPOWERSTATUSCHANGE  = $000A;
  PBT_APMOEMEVENT           = $000B;
  PBT_APMRESUMEAUTOMATIC    = $0012;

const
  DEFAULT_FONT_XP : string = 'MS Sans Serif, 8, , [clWindowText]';
  DEFAULT_FONT_VISTA : string = 'Segoe UI, 9, , [clWindowText]';
  DEFAULT_FONT_VERTICAL : string = 'MS Sans Serif, 8, , [clWindowText]';
  DEFAULT_FONT_PREVIEW : string = 'Courier New, 8, , [clWindowText]';

implementation

end.
