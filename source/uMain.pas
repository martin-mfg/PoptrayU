unit uMain;

{-------------------------------------------------------------------------------
POPTRAYU
Copyright (C) 2001-2005  Renier Crause
Copyright (C) 2012 Jessica Brown
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
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ImgList, ComCtrls, ToolWin, ExtCtrls, Menus, CheckLst,
  CommCtrl, Registry, TypInfo, uxTheme,
  IdGlobal, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdPOP3,
  IdMessageClient, IdMessage, IdException, IdAntiFreezeBase, IdAntiFreeze,
  ActnList, ActnMan, ActnCtrls, ActnPopupCtrl, XPStyleActnCtrls,
  CoolTrayIcon, RegExpr, uGlobal, uPlugins, uPOP3, uObjects, Grids,
  uHeaderDecoder, IdCoder3to4, IdCoderMIME, IdCoder, IdCoderQuotedPrintable,
  TntComCtrls, TntForms, TntDialogs, TntClasses,
  TntWideStrings;

const
  // --- version info ---
  MajorVersion = '4';
  MinorVersion = '0';
  ReleaseVersion = '10';
  BetaVersion = '0';
  ReleaseCandidate = '';

const
  sdAsc = 1;
  sdDesc = -1;
  UM_ACTIVATE = WM_USER + 10;
  UM_ACTION = WM_USER + 11;
  UM_QUIT = WM_USER + 12;
  UM_PROCESS_MESSAGES = WM_USER + 13;
  colID = 4;
  colDate = 5;
  UseDefaultSound = '[Use Default Sound]';
  UseDefaultProgram = '[Use Default Program]';
  NOSORT = -1;
  RULE_NOT = '  X';
  
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

type
  TMouseCommand = (mcClick,mcRClick,mcDblClick,mcMClick);

  TIconType = (itNormal,itChecking,itDeleting,itError,itSleeping);

  TWhiteBlack = (wbWhite, wbBlack);

  TfrmPopUMain = class(TTntForm)
    PageControl: TPageControl;
    tsMail: TTabSheet;
    tsOptions: TTabSheet;
    tsRules: TTabSheet;
    tsAbout: TTabSheet;
    tabMail: TTabControl;
    panAbout: TPanel;
    imgTray: TImage;
    AntiFrze: TidAntiFreeze;
    panRulesButtons: TPanel;
    panMailButtons: TPanel;
    btnStartProgram: TBitBtn;
    btnCheckAll: TBitBtn;
    btnToTray: TBitBtn;
    panMailLeftSpacer: TPanel;
    panMailRightSpacer: TPanel;
    panRulesButtonsRight: TPanel;
    btnSaveRules: TBitBtn;
    btnCancelRule: TBitBtn;
    tsAccounts: TTabSheet;
    panAccounts: TPanel;
    tabAccounts: TTabControl;
    panOptionButtons: TPanel;
    panOptionButtonsRight: TPanel;
    btnSaveOptions: TBitBtn;
    btnCancel: TBitBtn;
    btnHelpRules: TBitBtn;
    btnHelpOptions: TBitBtn;
    TrayIcon: TCoolTrayIcon;
    panAccountsButtons: TPanel;
    btnHelpAccounts: TBitBtn;
    btnSave: TBitBtn;
    btnCancelAccount: TBitBtn;
    lblTranslateCaption: TLabel;
    panAboutBottom: TPanel;
    btnHelp: TBitBtn;
    btnHintHelp: TSpeedButton;
    ActionManager: TActionManager;
    actPreview: TAction;
    actDelete: TAction;
    actNewMail: TAction;
    MailToolBar: TActionToolBar;
    lvMail: TTntListView;
    StatusBar: TStatusBar;
    panOptionPage: TPanel;
    tvOptions: TTreeView;
    panOptions: TPanel;
    panOptSpacer: TPanel;
    panOptionsTitle: TPanel;
    imgOptionTitle: TImage;
    actReply: TAction;
    actRuleFromDelete: TAction;
    actNoSort: TAction;
    actCheck: TAction;
    panProgress: TPanel;
    btnStop: TSpeedButton;
    Progress: TProgressBar;
    actAddAccount: TAction;
    actDeleteAccount: TAction;
    AccountsToolbar: TActionToolBar;
    actRuleAdd: TAction;
    actRuleDelete: TAction;
    actShowMessages: TAction;
    actCheckAll: TAction;
    actStartProgram: TAction;
    actAutoCheck: TAction;
    actOptions: TAction;
    actRules: TAction;
    actAbout: TAction;
    actHelp: TAction;
    actQuit: TAction;
    actToTray: TAction;
    actCustomize: TAction;
    panRulesTop: TPanel;
    RulesToolbar: TActionToolBar;
    ScrollBox1: TScrollBox;
    panRuleDetail: TPanel;
    gbActions: TGroupBox;
    btnEdRuleWav: TSpeedButton;
    btnEdRuleEXE: TSpeedButton;
    btnRuleSoundTest: TSpeedButton;
    chkRuleWav: TCheckBox;
    chkRuleDelete: TCheckBox;
    chkRuleIgnore: TCheckBox;
    edRuleWav: TEdit;
    chkRuleEXE: TCheckBox;
    edRuleEXE: TEdit;
    chkRuleImportant: TCheckBox;
    gbRule: TGroupBox;
    Label10: TLabel;
    Label31: TLabel;
    edRuleName: TEdit;
    chkRuleEnabled: TCheckBox;
    chkRuleNew: TCheckBox;
    cmbRuleAccount: TComboBox;
    spltRules: TSplitter;
    chkRuleLog: TCheckBox;
    actRulesImport: TAction;
    spltOptions: TSplitter;
    actHideViewed: TAction;
    actAddWhiteList: TAction;
    actAddBlackList: TAction;
    actMarkViewed: TAction;
    actMarkSpam: TAction;
    actDeleteSpam: TAction;
    chkRuleSpam: TCheckBox;
    actRuleFromSpam: TAction;
    actUnmarkSpam: TAction;
    actSelectSpam: TAction;
    actSuspendSound: TAction;
    ScrollBox2: TScrollBox;
    panServer: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label14: TLabel;
    btnEdSound: TSpeedButton;
    btnAccountSoundTest: TSpeedButton;
    Label19: TLabel;
    btnEdAccountProgram: TSpeedButton;
    btnAccountProgramTest: TSpeedButton;
    Label6: TLabel;
    Label7: TLabel;
    edLogin: TEdit;
    edPassword: TEdit;
    edName: TEdit;
    chkAccEnabled: TCheckBox;
    colAccount: TColorBox;
    panIntervalAccount: TPanel;
    btnNeverAccount: TSpeedButton;
    Label16: TLabel;
    Label17: TLabel;
    edIntervalAccount: TEdit;
    UpDownAccount: TUpDown;
    edSound: TEdit;
    edAccountProgram: TEdit;
    edServer: TEdit;
    cmbProtocol: TComboBox;
    edPort: TEdit;
    lblOptionTitle: TLabel;
    actSpam: TAction;
    chkRuleProtect: TCheckBox;
    actTestAccount: TAction;
    lblVersion: TLabel;
    Label11: TLabel;
    actStopChecking: TAction;
    grdRule: TStringGrid;
    panRuleEdit: TPanel;
    cmbRuleArea: TComboBox;
    cmbRuleComp: TComboBox;
    edRuleText: TEdit;
    chkRuleNot: TCheckBox;
    btnTestRegExpr: TSpeedButton;
    cmbRuleOperator: TComboBox;
    Label8: TLabel;
    btnRuleAddRow: TButton;
    btnRuleDeleteRow: TButton;
    chkRuleTrayColor: TCheckBox;
    colRuleTrayColor: TColorBox;
    cmbRuleStatus: TComboBox;
    panRuleList: TPanel;
    lstRules: TCheckListBox;
    panRuleListButtons: TPanel;
    btnRuleDown: TSpeedButton;
    btnRuleUp: TSpeedButton;
    actUndelete: TAction;
    actRuleSubjectDelete: TAction;
    actRuleSubjectSpam: TAction;
    actOpenMessage: TAction;
    IdDecoderQuotedPrintable: TIdDecoderQuotedPrintable;
    IdDecoderMIME1: TIdDecoderMIME;
    Image1: TImage;
    labelAppName: TLabel;
    lblHomepage: TLabel;
    btnCheckUpdate: TButton;
    lvCredits: TListView;
    lvVolunteers: TListView;
    AboutTabs: TPageControl;
    TabCredits: TTabSheet;
    TabTranslate: TTabSheet;
    TabAboutPTU: TTabSheet;
    lblDerivative: TLabel;
    Image2: TImage;
    panNoCheckHours: TPanel;
    chkDontCheckTimes: TCheckBox;
    dtStart: TDateTimePicker;
    lblAnd: TLabel;
    dtEnd: TDateTimePicker;
    procedure lvVolunteers2Resize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lblHomepageMouseEnter(Sender: TObject);
    procedure lblHomepageMouseLeave(Sender: TObject);
    procedure lblHomepageClick(Sender: TObject);
    procedure btnSaveOptionsClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure tabMailChange(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure lvMailDblClick(Sender: TObject);
    procedure OptionsChange(Sender: TObject);
    procedure lvMailColumnClick(Sender: TObject; Column: TListColumn);
    procedure lvMailCompare(Sender: TObject; Item1, Item2: TListItem;
      Data: Integer; var Compare: Integer);
    procedure chkRuleWavClick(Sender: TObject);
    procedure edRuleNameChange(Sender: TObject);
    procedure chkRuleEnabledClick(Sender: TObject);
    procedure cmbRuleAreaChange(Sender: TObject);
    procedure edRuleTextChange(Sender: TObject);
    procedure edRuleWavChange(Sender: TObject);
    procedure chkRuleDeleteClick(Sender: TObject);
    procedure btnSaveRulesClick(Sender: TObject);
    procedure btnCancelRuleClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure tabAccountsChange(Sender: TObject);
    procedure edAccChange(Sender: TObject);
    procedure tabAccountsChanging(Sender: TObject; var AllowChange: Boolean);
    procedure lvMailSelectItem(Sender: TObject; Item: TListItem; Selected: Boolean);
    procedure chkRuleIgnoreClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PageControlChange(Sender: TObject);
    procedure chkTimerAccountClick(Sender: TObject);
    procedure btnNeverAccountClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnHelpRulesClick(Sender: TObject);
    procedure btnHelpOptionsClick(Sender: TObject);
    procedure btnHelpAccountsClick(Sender: TObject);
    procedure btnHelpClick(Sender: TObject);
    procedure lvMailInfoTip(Sender: TObject; Item: TListItem;
      var InfoTip: String);
    procedure lblForumClick(Sender: TObject);
    procedure btnEdSoundClick(Sender: TObject);
    procedure btnEdRuleWavClick(Sender: TObject);
    procedure chkRuleEXEClick(Sender: TObject);
    procedure edRuleEXEChange(Sender: TObject);
    procedure btnEdRuleEXEClick(Sender: TObject);
    procedure TrayIconClick(Sender: TObject);
    procedure TrayIconDblClick(Sender: TObject);
    procedure TrayIconMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure StatusBarResize(Sender: TObject);
    procedure cmbRuleCompChange(Sender: TObject);
    procedure lvMailColumnRightClick(Sender: TObject; Column: TListColumn;
      Point: TPoint);
    procedure btnAccountSoundTestClick(Sender: TObject);
    procedure btnRuleSoundTestClick(Sender: TObject);
    procedure btnStopClick(Sender: TObject);
    procedure btnCancelAccountClick(Sender: TObject);
    procedure PageControlChanging(Sender: TObject;
      var AllowChange: Boolean);
    procedure edSoundEnter(Sender: TObject);
    procedure edSoundExit(Sender: TObject);
    procedure btnEdAccountProgramClick(Sender: TObject);
    procedure btnAccountProgramTestClick(Sender: TObject);
    procedure edAccountProgramEnter(Sender: TObject);
    procedure edAccountProgramExit(Sender: TObject);
    procedure chkRuleImportantClick(Sender: TObject);
    procedure chkRuleNewClick(Sender: TObject);
    procedure cmbRuleAccountChange(Sender: TObject);
    procedure btnHintHelpClick(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure actPreviewExecute(Sender: TObject);
    procedure actNewMailExecute(Sender: TObject);
    procedure tvOptionsChange(Sender: TObject; Node: TTreeNode);
    procedure HelpMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure actReplyExecute(Sender: TObject);
    procedure actRuleQuickAddExecute(Sender: TObject);
    procedure actNoSortExecute(Sender: TObject);
    procedure actCheckExecute(Sender: TObject);
    procedure actAddAccountExecute(Sender: TObject);
    procedure actDeleteAccountExecute(Sender: TObject);
    procedure actRuleAddExecute(Sender: TObject);
    procedure actRuleDeleteExecute(Sender: TObject);
    procedure actCheckAllExecute(Sender: TObject);
    procedure actStartProgramExecute(Sender: TObject);
    procedure actAutoCheckExecute(Sender: TObject);
    procedure actOptionsExecute(Sender: TObject);
    procedure actRulesExecute(Sender: TObject);
    procedure actShowMessagesExecute(Sender: TObject);
    procedure actAboutExecute(Sender: TObject);
    procedure actHelpExecute(Sender: TObject);
    procedure actToTrayExecute(Sender: TObject);
    procedure actQuitExecute(Sender: TObject);
    procedure actCustomizeExecute(Sender: TObject);
    procedure lstRulesClick(Sender: TObject);
    procedure lstRulesClickCheck(Sender: TObject);
    procedure chkRuleLogClick(Sender: TObject);
    procedure actRulesImportExecute(Sender: TObject);
    procedure lvAdvancedOptionsSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure lvOptionsSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure actHideViewedExecute(Sender: TObject);
    procedure cmbProtocolChange(Sender: TObject);
    procedure actAddWhiteListExecute(Sender: TObject);
    procedure actAddBlackListExecute(Sender: TObject);
    procedure actMarkViewedExecute(Sender: TObject);
    procedure actMarkSpamExecute(Sender: TObject);
    procedure actDeleteSpamExecute(Sender: TObject);
    procedure MouseMoveReset(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure chkRuleSpamClick(Sender: TObject);
    procedure lvMailKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actUnmarkSpamExecute(Sender: TObject);
    procedure actSelectSpamExecute(Sender: TObject);
    procedure imgLogoClick(Sender: TObject);
    procedure tvOptionsMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lvMailMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DragMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure tabDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure lstRulesDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure actSuspendSoundExecute(Sender: TObject);
    procedure panMailButtonsResize(Sender: TObject);
    procedure lstRulesDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure tabMailDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure lstRulesKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actSpamExecute(Sender: TObject);
    procedure MailToolBarGetControlClass(Sender: TCustomActionBar;
      AnItem: TActionClient; var ControlClass: TCustomActionControlClass);
    procedure lstRulesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure chkRuleProtectClick(Sender: TObject);
    procedure lvMailCustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure actTestAccountExecute(Sender: TObject);
    procedure tabMailChanging(Sender: TObject; var AllowChange: Boolean);
    procedure lvVolunteers2Change(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure actStopCheckingExecute(Sender: TObject);
    procedure btnTestRegExprClick(Sender: TObject);
    procedure grdRuleTopLeftChanged(Sender: TObject);
    procedure grdRuleSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure panRuleDetailResize(Sender: TObject);
    procedure cmbRuleOperatorChange(Sender: TObject);
    procedure btnRuleAddRowClick(Sender: TObject);
    procedure chkRuleNotClick(Sender: TObject);
    procedure btnRuleDeleteRowClick(Sender: TObject);
    procedure chkRuleTrayColorClick(Sender: TObject);
    procedure colRuleTrayColorChange(Sender: TObject);
    procedure cmbRuleStatusChange(Sender: TObject);
    procedure btnRuleDownClick(Sender: TObject);
    procedure btnRuleUpClick(Sender: TObject);
    procedure panRuleListButtonsResize(Sender: TObject);
    procedure actUndeleteExecute(Sender: TObject);
    procedure btnCheckUpdateClick(Sender: TObject);
    procedure lstRulesMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure StatusBarDrawPanel(StatusBar: TStatusBar;
      Panel: TStatusPanel; const Rect: TRect);
    procedure actOpenMessageExecute(Sender: TObject);
    procedure chkDontCheckTimesClick(Sender: TObject);
  public
    { Public declarations }
    FShowingInfo : boolean;
    FMinimized : Boolean;
    FHintWindow : THintWindow;
    IniPath : TFileName;    
    procedure ShowForm(MarkAsViewed : boolean = true);
    procedure HideForm;
    procedure ShowIcon(num : integer; IconType : TIconType);
    function ExecuteProgram(num : integer = -1) : boolean;
    procedure CheckAllMail;
    function CheckMail(num : integer; Notify : boolean; ShowIt : boolean) : integer;
    procedure ShowMailMessage(num,i : integer);
    procedure ShowMail(num : integer; ClearIt : boolean);
    procedure SendMail(const ToAddress,Subject,Body : string);
    function DeleteMail(num,msgnum : integer; UID : string='') : boolean;
    procedure QuickHelp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure RefreshProtocols;
    function AllowAutoCheck : boolean;
    procedure SetSortColumn(ColNum : integer);
    procedure UpdateFonts;
    procedure OnCloseFree(Sender: TObject; var Action: TCloseAction); //used to be private
    procedure OnClickClose(Sender: TObject); //used to be private 
  private
    { Private declarations }
    FNotified : Boolean;
    FNotifyWav : TFileName;
    IniName : TFileName;
    RuleName : TFileName;
    HelpFileName : TFileName;
    LogRuleName : TFileName;
    ToolbarName : TFileName;
    NumAccounts : integer;
    FMsgSize,FMsgRead : integer;
    FPreview : Boolean;
    FSortColumn : integer;
    FSortDirection : integer;
    MsgHeader : TIdMessage;
    FAccChanged : Boolean;
    FShownRules : Boolean;
    FShutDown : Boolean;
    FQueue : TUniqueQueue;
    FBusy : boolean;
    FTotalNew : integer;
    FDoubleClicked : boolean;
    FRuleChanged : boolean;
    FStop : boolean;
    FLastCheck : string;
    FAccountWithMail : integer;
    FImportant : boolean;
    FFirstWaitTimer : TTimer;
    FShiftClick : boolean;
    FNewAccount : boolean;
    FSpamAction : TAction;
    FInfoForm : TTntForm;
    FRegExpr : TRegExpr;
    FStatusWindowProc : TWndMethod;
    // windows message handlers
    procedure WMQueryEndSession(var Message : TWMQueryEndSession); message WM_QUERYENDSESSION;
    procedure WMSYSCommand(var m : TMessage); message WM_SYSCOMMAND;
    procedure WMDropFiles(var msg: TWMDROPFILES); message WM_DROPFILES;
    procedure WMHotkey( Var msg: TWMHotkey); message WM_HOTKEY;
    procedure WMPowerBroadcast(var msg: TWMPower); message WM_POWERBROADCAST;
    procedure UMActivate(var msg: TMessage);  message UM_ACTIVATE;
    procedure UMAction(var msg: TMessage);  message UM_ACTION;
    procedure UMQuit(var msg: TMessage);  message UM_QUIT;
    procedure UMProcessMessages(var msg: TMessage); message UM_PROCESS_MESSAGES;
    procedure StatusWindowProc(var Message: TMessage);
    // ini files
    procedure LoadOptionsINI;
    procedure SaveOptionsINI;
    function LoadAccountINI(num : integer) : boolean;
    procedure SaveAccountINI(num : integer);
    procedure SaveAccountNum(num : integer);
    procedure ShowAccount(num : integer);
    procedure LoadRulesINI;
    procedure SaveRulesINI;
    procedure LoadPosINI;
    procedure SavePosINI;
    procedure LoadViewedMessageIDs(num : integer);
    procedure SaveViewedMessageIDs;
    function AccountChanged(tab : integer) : boolean;
    // mail messages
    procedure Preview(num : integer);
    procedure ProcessMessage(AMsg: TIdMessage; const AStream: TStream; AHeaderOnly: Boolean);
    function DeleteMails(num: integer; var DelCount : integer) : boolean;
    function GetUIDs(num : integer; var UIDLs : TStringList) : boolean;
    function GetUID(num,msgnum : integer) : string;
    function CheckUID(num,msgnum : integer; UID : string='') : boolean;
    procedure MarkViewed(num : integer = -1);
    function HasAttachment : boolean;
    function CountUnviewed(num : integer) : integer;
    function CountNew(num : integer) : integer;
    function CountAllNew : integer;
    function CountAll(Unviewed: boolean) : integer;
    function CountStatus(statusses : TMailItemStatusSet; num: integer): integer;
    function SelectedMailItem(Item : TListItem = nil) : TMailItem;
    procedure RunMessage(num, msgnum: integer);
    function GetMessageHeader(num,msgnum : integer) : boolean;
    procedure RefreshAccountStatus(num : integer);
    procedure SetSelectedMailItemStatus(Statusses : TMailItemStatusSet; SetIt : boolean);
    function CountSelectedMailItemStatus(Statusses: TMailItemStatusSet) : integer;
    // visual
    function GetTrayColor(num : integer) : TColor;
    procedure UpdateTrayIcon;
    procedure ClearTrayIcon;
    procedure PlayNotify(num : integer);
    procedure EnableFields(EnableIt : Boolean);
    procedure SetColumnMenuCheckMarks;
    procedure Balloon(head,info : string; IconType : TBalloonHintIcon; TimeoutSecs : integer);
    procedure ShowInfo(ShowOnlyWithMail : boolean = False);
    procedure ShowMessages;
    procedure DrawTheIcon(NewCount : integer; CircleColor : TColor);
    procedure DrawCheckingIcon(num : integer);
    procedure ResetToolbar;
    function GetStatusIcon(MailItem : TMailItem) : integer;
    procedure ErrorMsg(num : integer; Heading,Msg : string; IgnoreError : boolean);
    procedure ShowStatusBar(num : integer);
    procedure LoadSkin;
    // rules
    procedure CreateRegExpr;
    function CheckRegExpr(area : string; text : string) : boolean;
    procedure TestRegExpr(text : string);
    function CheckRuleRow(area : string; comp : TRuleCompare; text : string; rulenot : boolean) : boolean;
    function GetRuleAreaText(RuleArea : TRuleArea) : string;
    function CheckRule(rulenum : integer; MailItem : TMailItem) : boolean;
    procedure CheckRules(num,msgnum : integer);
    procedure SetupRuleGrid;
    procedure ShowRuleEdit(ACol,ARow : integer);
    procedure ShowRule(selected : integer);
    procedure DeleteRule(rulenum : integer);
    procedure LogRule(Action,Name,From,Subject,Account : string);
    procedure EnableRuleButtons;
    procedure FillRuleAccounts;
    function AddToWhiteBlackList(WhiteBlack : TWhiteBlack) : boolean;
    function InWhiteBlackList(WhiteBlack : TWhiteBlack; email : string) : boolean;
    procedure MoveRule(old,new : integer);
    function AddRule(rulename : string) : TRuleItem;
    procedure GetSelectedMails(area : TRuleArea; List : TStringList);
    // procedural
    procedure Quit;
    procedure ConnectAccount(num : integer);
    function GetDefaultEmail : string;
    procedure SwitchTimer;
    procedure RunQueue;
    procedure RegisterTheHotKeys;
    procedure UnRegisterTheHotKeys;
    procedure DoMouseCommand(MouseCommand : TMouseCommand);
    procedure DoHKCommand(HotKeyNum : integer);
    procedure DoCommand(Command : TCommand);
    procedure CheckAndShow;
    procedure CheckAndInfo;
    procedure PopupAtCursor;
    procedure DeleteAccount(num : integer);
    function FirstAccountWithError : integer;
    procedure DeleteSpam(num : integer; confirm : boolean);
    procedure SetSpamAction(act : TAction);
    procedure StopAll;
    // plug-ins
    procedure CallNotifyPlugins;
    procedure SetProtocol(num : integer);
    procedure NotifyPluginExecute(MailCount,UnviewedCount,NewCount : integer; ResetTray : boolean);
    procedure NotifyPluginExecuteAccount(AccountNo:integer; AccountName:string; AccountColor:string; MailCount,UnviewedCount,NewCount : integer; ResetTray : boolean);
    procedure NotifyPluginMessage(MsgFrom,MsgTo,MsgSubject : string; MsgDate : TDateTime; Viewed,New,Important,Spam : boolean);
    procedure NotifyPluginMsgBody(MsgHeader,MsgBody : string);
    // private events
    procedure OnAccountTimer(Sender: TObject);
    procedure OnFirstWait(Sender: TObject);
    procedure OnHint(Sender : TObject);
    procedure OnProtWork(const AWorkCount: Integer);
    procedure OnProcessWork(Sender: TObject; AWorkMode: TWorkMode; const AWorkCount: Integer); virtual;
    procedure OnMinimize(Sender: TObject);
  public
    FKB : WideString; //UI label for kilobytes in the current language
    frame : TFrame; //Frame currently shown in on the options page
  published
    Destructor  Destroy; override;
  end;

var
  frmPopUMain: TfrmPopUMain;
  Accounts : TAccountItems;

implementation

{$R *.DFM}

uses
  uPreview, uRCUtils, uPassword, uDM, uInfo,
  uFrameInterval, uFrameDefaults, uFrameGeneralOptions, uFrameAdvancedOptions,
  uFrameAdvancedInterface, uFrameAdvancedMisc,
  uFrameMouseButtons, uFrameHotKeys, uFrameWhiteBlack, uFramePlugins,
  uFrameVisualAppearance, IniFiles,  ShellAPI,  StrUtils, Types,
  IdEMailAddress, IdResourceStrings, uFSUtils, uTranslate;

var
  Rules : TRuleItems;
  HintSep : string = ' -- ';

// Checks whether now is between the global "do not check" (any account) hours
function BetweenTimes : boolean; overload;
begin
  if Options.DontCheckEnd < Options.DontCheckStart then
  begin
    // times across midnight
    Result := (GetTime >= frac(Options.DontCheckStart)) or (GetTime <= frac(Options.DontCheckEnd));
  end
  else begin
    // normal times
    Result := (GetTime >= frac(Options.DontCheckStart)) and (GetTime <= frac(Options.DontCheckEnd));
  end;
end;

// Checks whether now is between the don't check hours for a specific account
function BetweenTimes (Account : TAccountItem) : boolean; overload;
begin
  if Account.DontCheckEnd < Account.DontCheckStart then
  begin
    // times across midnight
    Result := (GetTime >= frac(Account.DontCheckStart)) or (GetTime <= frac(Account.DontCheckEnd));
  end
  else begin
    // normal times
    Result := (GetTime >= frac(Account.DontCheckStart)) and (GetTime <= frac(Account.DontCheckEnd));
  end;
end;


//------------------------------------------------------------------------------
// Public
//------------------------------------------------------------------------------

procedure TfrmPopUMain.ShowForm(MarkAsViewed : boolean = true);
////////////////////////////////////////////////////////////////////////////////
// Show the main form
begin
  if Options.PasswordProtect and FMinimized then
  begin
    // if already a password window then focus that one
    if Assigned(frmPassword) then
    begin
      SetForegroundWindow(FindWindow(nil,'PopTrayU - Password'));
      Exit;
    end;
    // ask for password
    SetForegroundWindow(Handle);
    Application.CreateForm(TfrmPassword,frmPassword);
    try
      TranslateForm(frmPassword);
      if not ((frmPassword.ShowModal = mrOK) and
             (frmPassword.edPass.Text = Options.Password)) then
        Exit;
    finally
      FreeAndNil(frmPassword);
    end;
  end;
  // show window
  SetForegroundWindow(Handle);
  Application.Restore;
  ShowWindow(Application.Handle, SW_RESTORE);
  FMinimized := False;
  Visible := True;
  // clear the tray
  if (PageControl.ActivePageIndex = 0) and MarkAsViewed and not FBusy then
    MarkViewed;
end;

procedure TfrmPopUMain.HideForm;
////////////////////////////////////////////////////////////////////////////////
// Hide the main form
begin
  Application.Minimize;
  FMinimized := True;
  if Options.MinimizeTray then
  begin
    ShowWindow(Application.Handle, SW_HIDE);
    Visible := False;
  end;
end;

//*****************************************************************************
// ShowIcon
// --------
// Sets/shows the correct icon for each account tab (and tray?)
//*****************************************************************************
procedure TfrmPopUMain.ShowIcon(num: integer; IconType : TIconType);
var
  mailcount : integer;
begin
  if (num<=0) or (num>NumAccounts) then Exit;
  // reset name (without mailcount)
  tabAccounts.Tabs[num-1] := Accounts[num-1].Name;
  tabMail.Tabs[num-1] := Accounts[num-1].Name;
  // --tab icon--
  if IconType=itChecking then
  begin
    // checking
    dm.ReplaceBitmap(dm.imlTabs,num-1, dm.imlPopTrueColor,popBusy);
  end
  else if (Accounts[num-1].Error) then
  begin
    // error
    dm.ReplaceBitmap(dm.imlTabs,num-1, dm.imlPopTrueColor,popError);
  end
  else if not(Accounts[num-1].Enabled) then
  begin
    // disabled
    dm.ReplaceBitmap(dm.imlTabs,num-1, dm.imlPopTrueColor,popDisabled);
  end
  else if (IconType=itSleeping) or
  (Accounts[num-1].DontCheckTimes and BetweenTimes(Accounts[num-1])) then
  begin
    // account check suspended due to "Don't Check Hours"
    dm.ReplaceBitmap(dm.imlTabs,num-1, dm.imlPopTrueColor,popSleeping);
  end
  else begin
    if Options.HideViewed then
      mailcount := CountUnviewed(num)
    else
      mailcount := Accounts[num-1].Mail.Count;
    if mailcount = 0 then
    begin
      // closed
      dm.ReplaceBitmap(dm.imlTabs,num-1, dm.imlPopTrueColor,popClosed);
    end
    else begin
      // open
      if CountUnviewed(num)>0 then
        dm.ReplaceBitmap(dm.imlTabs,num-1, dm.imlPopTrueColor,popNew)
      else
        dm.ReplaceBitmap(dm.imlTabs,num-1, dm.imlPopTrueColor,popOpen);
    end;
    // message count
    if ((mailcount>0) or Options.HideViewed) and (Accounts[num-1].Mail.Count > 0) then
    begin
      tabMail.Tabs[num-1] := Accounts[num-1].Name + ' - ' + IntToStr(mailcount);
      if Options.HideViewed then
        tabMail.Tabs[num-1] := tabMail.Tabs[num-1] + '/' + IntToStr(Accounts[num-1].Mail.Count);
    end;
  end;
  // --tray icon--
  if IconType=itChecking then
  begin
    DrawCheckingIcon(num);
    TrayIcon.Refresh;
    TrayIcon.Hint := Translate('Checking')+' '+Accounts[num-1].Name+' ...';
  end
  else if IconType=itDeleting then
  begin
    dm.ReplaceBitmap(dm.imlTray,0, dm.imlPop,popTrash);
    dm.imlTray.GetIcon(0,TrayIcon.Icon);
    TrayIcon.CycleIcons := False;
    TrayIcon.Refresh;
  end
  {else if (FError>0) then
  begin
    dm.ReplaceBitmap(dm.imlTray,0, dm.imlPop,popError);
    dm.imlTray.GetIcon(0,TrayIcon.Icon);
    TrayIcon.CycleIcons := False;
    TrayIcon.Refresh;
  end}
  else begin
    // tray icon
    UpdateTrayIcon;
  end;
  Application.ProcessMessages;
end;

function TfrmPopUMain.ExecuteProgram(num : integer = -1) : boolean;
////////////////////////////////////////////////////////////////////////////////
// Run the e-mail client
var
  MailProgram,ExeName,Params : string;
begin
  // determine mail program
  if num <= 0 then
    MailProgram := Options.MailProgram
  else begin
    if Accounts[num-1].MailProgram <> '' then
      MailProgram := Accounts[num-1].MailProgram
    else
      MailProgram := Options.MailProgram;
  end;
  // run it
  if MailProgram = '' then
  begin
    ShowTranslatedDlg(Translate('No E-Mail Client specified'),mtError,[mbOK],0);
    Result := false;
  end
  else begin
    SplitExeParams(MailProgram,ExeName,Params);
    Result := ExecuteFile(ExeName,Params,'',SW_NORMAL) > 32;
  end;
end;

//*****************************************************************************
// CheckAllMail
// ------------
// Checks all (not-disabled) accounts for new messages. This is what happens
// when you press the "Check all" button on the main screen.
//*****************************************************************************
procedure TfrmPopUMain.CheckAllMail;
var
  num : integer;
begin
  FStop := false;
  // check if busy
  if FBusy then
  begin
    if not Options.NoError then
      Balloon('PopTrayU',Translate('Error:')+' '+Translate('Still Busy Checking'),bitError,15);
    Exit;
  end;
  // reset timer
  if not Options.TimerAccount then
  begin
    dm.Timer.Enabled := False;
    dm.Timer.Enabled := True;
  end;
  // check if online
  if Options.Online then
  begin
    if not IsConnectedToInternet then Exit;
  end;
  // check all enabled accounts
  FAccountWithMail := -1;
  FNotified := False;
  for num := 1 to NumAccounts do
  begin
    if Accounts[num-1].Enabled and not FStop then
    begin
      if (not Accounts[num-1].DontCheckTimes) or (Accounts[num-1].DontCheckTimes
      and not BetweenTimes(Accounts[num-1])) then
        CheckMail(num,not FNotified,True)
      else
      begin
        Accounts[num-1].Status := Translate('Skipped Checking')+HintSep+TimeToStr(Now);
        if (tabMail.TabIndex = num-1) then
          StatusBar.Panels[0].Text := ' '+Accounts[tabMail.TabIndex].Status;
        ShowIcon(num,itSleeping);
      end;
    end;
  end;
  CallNotifyPlugins;

  // show balloon
  if Options.Balloon and (CountAllNew > 0) then
    ShowInfo(True);
end;

function TfrmPopUMain.CheckMail(num : integer; Notify : boolean; ShowIt : boolean) : integer;
////////////////////////////////////////////////////////////////////////////////
// Check for mail on 1 account
var
  i : integer;
  mailcount : integer;
  UIDLs : TStringList;
  quickchecking : boolean;
  MailItem : TMailItem;
  msgnum : integer;
  UID : string;
  BalloonText : string;
  deletecount : integer;
  ForceShow : boolean;
begin
  Result := 0;
  // check if online
  if Options.Online then
  begin
    if not IsConnectedToInternet then
    begin
      Accounts[num-1].Status := Translate('Not On-Line');
      Exit;
    end;
  end;
  // inits
  FNotified := not Notify;
  FNotifyWav := '';
  FImportant := False;
  if FBusy and Notify then
  begin
    ErrorMsg(num,'Error:',Translate('Still busy checking'),True);
    Exit;
  end;
  if not Assigned(Accounts[num-1].Prot) then
  begin
    ErrorMsg(num,'Error:',Translate('No protocol defined for account')+
             ' '+Accounts[num-1].Name,False);
    Exit;
  end;
  FStop := False;
  FBusy := True;
  deletecount := 0;
  ForceShow := False;
  try
    // delete marked mail
    try
      ForceShow := not DeleteMails(num,deletecount);
    except
      on E:Exception do
        ErrorMsg(num,'Error:',e.Message,True);
    end;
    ShowIcon(num,itChecking);
    // progress
    panProgress.Visible := True;
    actStopChecking.Enabled := True;
    Progress.Position := 0;
    Application.ProcessMessages;
    // check connected
    if Accounts[num-1].Prot.Connected then
    begin
      Accounts[num-1].Status := Translate('Error:')+' '+Translate('Already Connected');
      Accounts[num-1].Prot.Disconnect;
      Accounts[num-1].Error := True;
      Exit;
    end;
    try
      Screen.Cursor := crHourGlass;
      // connect
      ConnectAccount(num);
      try
        // quick check
        quickchecking := false;
        if Options.QuickCheck and not FShiftClick then
        begin
          UIDLs := TStringList.Create;
          try
            quickchecking := GetUIDs(num,UIDLs);
            if quickchecking then
            begin
              // clear all msgnums
              Accounts[num-1].Mail.SetAllMsgNum(-1);
              if Notify then
              begin
                Accounts[num-1].Mail.SetAllNew(false);
                FTotalNew := CountAllNew;
              end;
              // assign new nums
              for i := 0 to UIDLs.Count-1 do
              begin
                msgnum := StrToInt(StrBefore(UIDLs[i],' '));
                UID := StrAfter(UIDLs[i],' ');
                MailItem := Accounts[num-1].Mail.FindUIDWithDuplicates(UID);
                if MailItem <> nil then
                begin
                  MailItem.MsgNum := msgnum;
                  UIDLs[i] := '';
                end;
              end;
              // delete the mailitems no longer on server
              if Accounts[num-1].Mail.DeleteAllMsgNum(-1) then
                ForceShow := True;
              // mismatch
              if ShowIt and Options.ShowWhileChecking and (tabMail.TabIndex+1=num) then
              begin
                for i := 0 to lvMail.Items.Count-1 do
                begin
                  MailItem := Accounts[num-1].Mail.FindMessage(StrToInt(lvMail.Items[i].SubItems[colID]));
                  if MailItem = nil then
                  begin
                    ForceShow := True;
                    break;
                  end;
                end;
              end;
              // count new messages
              mailcount := 0;
              for i := 0 to UIDLs.Count-1 do
                if UIDLs[i] <> '' then
                  Inc(mailcount);
              if mailcount>0 then
                Accounts[num-1].Status := Translate('Downloading')+' '+IntToStr(mailcount)+' '+Translate('messages')+'...';
              StatusBar.Panels[0].Text := ' '+Accounts[tabMail.TabIndex].Status;
              // go fetch the new messages
              Progress.Max := UIDLs.Count;
              for i := 0 to UIDLs.Count-1 do
              begin
                if UIDLs[i] <> '' then
                begin
                  msgnum := StrToInt(StrBefore(UIDLs[i],' '));
                  if not GetMessageHeader(num,msgnum) then
                  begin
                    Result := -1;
                    Break;
                  end;
                end;
                // progress
                Progress.Position := i;
                Application.ProcessMessages;
              end;
            end;
          finally
            UIDLs.Free;
          end;
        end;
        if not quickchecking then
        begin
          // clear visual list
          if tabMail.TabIndex = num-1 then
            lvMail.Items.Clear;
          // normal check (non-quick)
          mailcount := Accounts[num-1].Prot.CheckMessages;
          Accounts[num-1].Mail.Clear;
          if mailcount>0 then
            Accounts[num-1].Status := Translate('Downloading')+' '+IntToStr(mailcount)+' '+Translate('messages')+'...';
          StatusBar.Panels[0].Text := ' '+Accounts[tabMail.TabIndex].Status;
          Progress.Max := mailcount;
          for i := 1 to mailcount do
          begin
            if not GetMessageHeader(num,i) then
            begin
              Result := -1;
              Break;
            end;
            // progress
            Progress.Position := i;
            Application.ProcessMessages;
          end;
        end;
        // refresh account
        RefreshAccountStatus(num);
        // show status
        if (not FStop) and (Result>=0) then
        begin
          if Notify then
          begin
            if quickchecking then
              Accounts[num-1].Status := Translate('Quick Checked:')+' '+TimeToStr(Now)
            else
              Accounts[num-1].Status := Translate('Checked:')+' '+TimeToStr(Now);
            if deletecount <> 0 then
              Accounts[num-1].Status := Accounts[num-1].Status +
                ' => ' + IntToStr(deletecount) + ' ' + Translate('message(s) deleted.') + '';
          end;
          Accounts[num-1].Error := False;
        end;
      finally
        Screen.Cursor := crDefault;
        ResetToolbar;
        if Accounts[num-1].Prot.Connected then
          Accounts[num-1].Prot.DisconnectWithQuit;
        // deleted by rules
        if CountStatus([misToBeDeleted],num) > 0 then
        begin
          if FNotifyWav <> '' then
            PlayNotify(num);
          if not Options.DeleteNextCheck then
            CheckMail(num,False,ShowIt);
        end;
        // important messages balloon
        if FImportant then
        begin
          for i := 0 to Accounts[num-1].Mail.Count-1 do
            if Accounts[num-1].Mail[i].Important and Accounts[num-1].Mail[i].New then
              BalloonText := BalloonText + ForceWidth(Accounts[num-1].Mail[i].From,100) + #9 + ReduceWidth(Accounts[num-1].Mail[i].Subject,170) + #13#10;
          Balloon('Important',BalloonText,bitInfo,30);
        end;
      end; //finally
    except
      on e : EIdException do
        begin
          Screen.Cursor := crDefault;
          if FStop then
            Accounts[num-1].Status := Translate('User Aborted.')+HintSep+DateTimeToStr(Now)
          else
            // This is where an error message is trapped if the account is
            // unable to connect to the server on a routine check
            ErrorMsg(num,'Connect Error:',e.Message,Options.NoError);
          Accounts[num-1].Error := True;
          Result := -1;
        end;
      else begin
        Screen.Cursor := crDefault;
        raise;
      end;
    end;  // except
    panProgress.Visible := False;
    actStopChecking.Enabled := False;
    // play sound?
    if Notify and
      (Accounts[num-1].Mail.Count > 0 ) and
       (CountNew(num) > 0) then
       //(MsgIDs <> Accounts[num-1].MsgIDs) then
    begin
      PlayNotify(num);
    end;

    if Result >= 0 then
      Result := Accounts[num-1].Mail.Count;
  finally
    FLastCheck := DateTimeToStr(Now);
    FBusy := False;
    ShowIcon(num,itNormal);
    // show
    if ShowIt and (tabMail.TabIndex+1=num) then
      ShowMail(tabMail.TabIndex+1, not Options.ShowWhileChecking or (deletecount<>0) or ForceShow);
  end;
end;

// Adds an individual email message to the listview of new/read emails
procedure TfrmPopUMain.ShowMailMessage(num,i : integer);
begin
  // Messages that have already been seen are hidden if "Hide Viewed Messages"
  // is selected in options.
  if not( Options.HideViewed and Accounts[num-1].Mail[i].Viewed ) then
  begin
    with lvMail.Items.Add do
    begin
      // icon
      ImageIndex := GetStatusIcon(Accounts[num-1].Mail[i]);
      if Accounts[num-1].Mail[i].Viewed then
        StateIndex := -1
      else
        StateIndex := 1;
      // listview info
      Caption := DecodeHeader(Accounts[num-1].Mail[i].From);
      SubItems.Add(DecodeHeader(Accounts[num-1].Mail[i].MailTo));
      SubItems.Add(Accounts[num-1].Mail[i].Subject);
      SubItems.Add(Accounts[num-1].Mail[i].DateStr);
      SubItems.Add(IntToStr(Accounts[num-1].Mail[i].Size) + ' ' + FKB);
      SubItems.Add(IntToStr(Accounts[num-1].Mail[i].MsgNum)); //colID
      SubItems.Add(FloatToStr(Accounts[num-1].Mail[i].Date)); //colDate
    end;
  end;
end;

procedure TfrmPopUMain.ShowMail(num: integer; ClearIt : boolean);
////////////////////////////////////////////////////////////////////////////////
// Show mail stored in array on the list view
var
  i : integer;
  MailItem : TMailItem;
begin
  if (num<=0) or (num>NumAccounts) or (Accounts[num-1].Mail = nil) then Exit;
  // show icon count
  ShowIcon(num,itNormal);
  // listview items
  if ClearIt then
  begin
    lvMail.Clear;
    for i := 0 to Accounts[num-1].Mail.Count-1 do
    begin
      ShowMailMessage(num,i);
    end;
  end
  else begin
    lvMail.Items.BeginUpdate;
    for i := 0 to lvMail.Items.Count-1 do
    begin
      MailItem := SelectedMailItem(lvMail.Items[i]);
      if Assigned(MailItem) then
      begin
        lvMail.Items[i].ImageIndex := GetStatusIcon(MailItem);
        if MailItem.Viewed then
          lvMail.Items[i].StateIndex := -1
        else
          lvMail.Items[i].StateIndex := 1;
      end;
    end;
    lvMail.Items.EndUpdate;
  end;
  if (FSortColumn <> NOSORT) or dm.mnuSpamLast.Checked then
    lvMail.AlphaSort;
  // del spam button
  actDeleteSpam.Enabled := CountStatus([misSpam],num) > 0;
  actSelectSpam.Enabled := actDeleteSpam.Enabled;
  actSpam.Enabled := actDeleteSpam.Enabled or actMarkSpam.Enabled or actUnmarkSpam.Enabled;
  // show statusbar
  ShowStatusBar(num);
  // clear icon
  if not FMinimized and (PageControl.ActivePageIndex = 0) then
    MarkViewed;
end;

procedure TfrmPopUMain.SendMail(const ToAddress, Subject, Body: string);
////////////////////////////////////////////////////////////////////////////////
// Send EMAIL using either MAPI or "mailto:"
const
  CharsToConvert : TSetOfChar = ([' ','&','%','=','?','"']);
var
  email,subj,mailbody : string;
  mailto : string;
begin
  // local vars work, params not
  email := ToAddress;
  subj := Subject;
  mailbody := Body;
  if Options.UseMAPI then
  begin
    // MAPI
    MAPISendMessage(Application.Handle,email,subj,mailbody);
  end
  else begin
    // mailto
    if mailbody <> '' then
    begin
      // convert invalid chars to the hex values
      email := CharsToHex(email,CharsToConvert);
      subj := CharsToHex(subj,CharsToConvert);
      mailbody := CharsToHex(mailbody,CharsToConvert+[#13,#10]);

      mailto := 'mailto:'+email+'?subject='+subj+'&body=';
      // limit mailto link to 2023 chars (Outlook and Outlook Express limit)
      mailbody := Copy(mailbody,1,2023-length(mailto));                         // mod BG: 12.09.2002
      ClearImpairedCode(mailbody);                                       		    // add BG: 12.09.2002
      mailto := mailto + mailbody;
      ExecuteFile(mailto,'','',SW_RESTORE);
    end
    else begin
      if subj <> '' then
      begin
        subj := CharsToHex(subj,CharsToConvert);
        ExecuteFile('mailto:'+email+'?subject='+subj,'','',SW_RESTORE)
      end
      else
        ExecuteFile('mailto:'+email,'','',SW_RESTORE)
    end;
  end;
end;



function TfrmPopUMain.DeleteMail(num, msgnum: integer; UID : string='') : boolean;
////////////////////////////////////////////////////////////////////////////////
// Delete one message
var
  i : integer;
  MailItem : TMailItem;
begin
  MailItem := Accounts[num-1].Mail.FindUID(UID);
  Result := MailItem<>nil;
  if Result then
  begin
    // mark
    MailItem.ToDelete := True;
    if tabMail.TabIndex+1=num then
      for i := 0 to lvMail.Items.Count-1 do
      begin
        if StrToInt(lvMail.Items[i].SubItems[colID]) = MailItem.MsgNum then
          lvMail.Items[i].ImageIndex := mToDelete;
      end;
  end;
end;



procedure TfrmPopUMain.QuickHelp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  P : TPoint;
  R : TRect;
begin
  if Screen.Cursor = crHelp then
  begin
    if (Sender as TControl).Hint <> '' then
    begin
      FHintWindow := THintWindow.Create(self);
      FHintWindow.Color := Application.HintColor;
      P :=  (Sender as TControl).ClientToScreen(Point(X,Y+20));
      R := FHintWindow.CalcHintRect(500,(Sender as TControl).Hint,nil);
      OffsetRect(R,P.X,P.Y);
      FHintWindow.ActivateHint(R,(Sender as TControl).Hint);
      if Options.OnTop then
        SetWindowPos(FHintWindow.Handle, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOMOVE or SWP_NOSIZE or SWP_NOACTIVATE);
    end;

    Screen.Cursor := crDefault;
    Abort;
  end;
end;

procedure TfrmPopUMain.RefreshProtocols;
var
  sl : TStringList;
  st : string;
  i,j : integer;
begin
  // clear all protocols (except POP3)
  SetLength(Protocols,1);
  cmbProtocol.Items.Text := 'POP3';
  // new list of protocols
  sl := TStringList.Create;
  try
    for i := Low(Plugins) to High(Plugins) do
    begin
      if Plugins[i].Enabled and (Plugins[i] is TPluginProtocol) then
      begin
        sl.Clear;
        CommaSeparatedToStringList(sl,(Plugins[i] as TPluginProtocol).Protocols);
        for j := 0 to sl.Count-1 do
        begin
          SetLength(Protocols,Length(Protocols)+1);
          st := StrBefore(sl[j],':');
          Protocols[Length(Protocols)-1].Name := st;
          Protocols[Length(Protocols)-1].Port := StrToIntDef(StrAfter(sl[j],':'),-1);
          Protocols[Length(Protocols)-1].Prot := (Plugins[i] as TPluginProtocol);
          cmbProtocol.Items.Add(st);
        end;
      end;
    end;
  finally
    sl.Free;
  end;
end;


function TfrmPopUMain.AllowAutoCheck: boolean;
begin
  Result := dm.mnuAutoCheck.Checked and
            (not Options.CheckWhileMinimized or
             (Options.CheckWhileMinimized and FMinimized)
            ) and
            (not Options.DontCheckTimes or
             (Options.DontCheckTimes and not BetweenTimes)
            );
end;


procedure TfrmPopUMain.SetSortColumn(ColNum : integer);
////////////////////////////////////////////////////////////////////////////////
// Set the column to sort by
begin
  // remove sort indicator
  if FSortColumn >= 0 then
    SetColumnImage(lvMail,FSortColumn,-1);
  // new col
  FSortColumn := ColNum;
  // sort column
  lvMail.AlphaSort;
  // add sort indicator
  if ColNum >= 0 then
  begin
    if FSortDirection = sdAsc then
      SetColumnImage(lvMail,FSortColumn,mSortAsc)
    else
      SetColumnImage(lvMail,FSortColumn,mSortDesc);
  end;
end;


//------------------------------------------------------------------------------
// Private
//------------------------------------------------------------------------------


//------------------------------------------------- windows message handlers ---

procedure TfrmPopUMain.WMQueryEndSession(var Message: TWMQueryEndSession);
////////////////////////////////////////////////////////////////////////////////
// Save stuff when shutdown
begin
  SavePosINI;
  SaveViewedMessageIDs;
  FShutDown := True;
  Message.Result := 0;
  inherited;
end;

procedure TfrmPopUMain.WMSYSCommand(var m: TMessage);
////////////////////////////////////////////////////////////////////////////////
// Hide instead of Minimize
begin
  if M.wParam <> SC_MINIMIZE then
    inherited
  else
    HideForm;
end;

procedure TfrmPopUMain.WMDropFiles(var msg: TWMDROPFILES);
////////////////////////////////////////////////////////////////////////////////
// When you drop a file, open MAPI client with file attached
var
  NumFiles : longint;
  i : integer;
  buffer : array[0..1024] of char;
  FileNames : array of string;
begin
  NumFiles := DragQueryFile(msg.Drop, $FFFFFFFF, nil, 0);
  SetLength(FileNames,NumFiles);
  for i := 0 to (NumFiles - 1) do begin
    DragQueryFile(msg.Drop, i, @buffer,sizeof(buffer));
    FileNames[i] := buffer;
  end;
  MAPISendFile(Application.Handle, FileNames);
  DragFinish(msg.Drop);
end;

procedure TfrmPopUMain.WMHotkey(var msg: TWMHotkey);
begin
  DoHKCommand(msg.HotKey);
end;

var
  gAutoOnWhenSuspend : boolean = true;
procedure TfrmPopUMain.WMPowerBroadcast(var msg: TWMPower);
begin
  case msg.PowerEvt of
    PBT_APMSUSPEND, PBT_APMSTANDBY :
      begin
        gAutoOnWhenSuspend := actAutoCheck.Checked;
        if gAutoOnWhenSuspend then DoCommand(cmdAutoCheckOff);
      end;
      PBT_APMRESUMESUSPEND, PBT_APMRESUMESTANDBY, PBT_APMRESUMEAUTOMATIC, PBT_APMRESUMECRITICAL :
      begin
        if gAutoOnWhenSuspend then DoCommand(cmdAutoCheckOn);
      end;
  end;
  //frmPopUMain.Caption := frmPopUMain.Caption + ' ' + IntToStr(msg.PowerEvt); //debug
end;


procedure TfrmPopUMain.UMActivate(var msg: TMessage );
begin
  ShowForm;
end;

procedure TfrmPopUMain.UMAction(var msg: TMessage );
begin
  DoCommand(TCommand(msg.WParam));
end;

procedure TfrmPopUMain.UMQuit(var msg: TMessage);
////////////////////////////////////////////////////////////////////////////////
// Quit Message from installer
begin
  SavePosINI;
  SaveViewedMessageIDs;
  Application.Terminate;
end;

procedure TfrmPopUMain.UMProcessMessages(var msg: TMessage);
////////////////////////////////////////////////////////////////////////////////
// Do Events
begin
  Application.ProcessMessages;
end;

procedure TfrmPopUMain.StatusWindowProc(var Message: TMessage);
////////////////////////////////////////////////////////////////////////////////
// Override the StatusBar WindowProc to repaint the icons
const
  icons : array[1..3] of integer = (mNormal,mSpam,mToDelete);
var
  i,leftpos : integer;
begin
  FStatusWindowProc(Message);
  if Message.Msg = WM_PAINT then
  begin
    leftpos := StatusBar.Panels[0].Width+3;
    for i := Low(icons) to High(icons) do
    begin
      if StatusBar.Panels[i].Text <> '' then
        dm.imlListView.Draw(StatusBar.Canvas, leftpos,2, icons[i], dsTransparent,itImage);
      leftpos := leftpos + StatusBar.Panels[i].Width;
    end;
  end;
end;

//---------------------------------------------------------------- ini files ---

procedure TfrmPopUMain.LoadOptionsINI;
////////////////////////////////////////////////////////////////////////////////
// Read options from INI file
var
  Ini : TIniFile;
  Interval,NewMail : string;
  i : integer;
  langCount,pluginCount : integer;
  ThePluginType : TPluginType;
  fInterfaceVersion : function : integer; stdcall;
  defaultFont : string;
  font : TFont;
begin
  // load options from INI
  Ini := TIniFile.Create(IniName);
  try
    // interval
    Interval := Ini.ReadString('Options','Interval','5');
    Options.Interval := StrToFloatDef(Interval,5);
    Options.TimerAccount := Ini.ReadBool('Options','TimerAccount',FALSE);
    // program
    Options.MailProgram := Ini.ReadString('Options','Program',GetDefaultEMail);
    // sound
    NewMail := ExtractFilePath(Application.ExeName)+'poptray_newmail_lo.wav';
    if not FileExists(NewMail) then
      NewMail := '';
    Options.DefSound := Ini.ReadString('Options','Sound',NewMail);

    // options
    with Options do
    begin
      // general options
      Startup := Ini.ReadBool('Options','CheckStartup',FALSE);
      Minimized := Ini.ReadBool('Options','Minimized',FALSE);
      Animated := Ini.ReadBool('Options','AnimatedTray',FALSE);
      ResetTray := Ini.ReadBool('Options','ResetTray',FALSE);
      RotateIcon := Ini.ReadBool('Options','RotateIcon',FALSE);
      ShowForm := Ini.ReadBool('Options','ShowForm',FALSE);
      Balloon := Ini.ReadBool('Options','Balloon',FALSE);
      DeleteNextCheck := Ini.ReadBool('Options','DeleteNextCheck',FALSE);
      FirstWait := Ini.ReadInteger('Options','FirstWait',0);
      // advanced - connection
      TimeOut := Ini.ReadInteger('Options','TimeOut',120);
      QuickCheck := Ini.ReadBool('Options','QuickCheck',TRUE);
      CheckWhileMinimized := Ini.ReadBool('Options','CheckWhileMinimized',FALSE);
      IgnoreRetrieveErrors := Ini.ReadBool('Options','IgnoreRetrieveErrors',FALSE);
      ShowErrorsInBalloons := Ini.ReadBool('Options','ShowErrorsInBalloons',FALSE);
      Online := Ini.ReadBool('Options','CheckOnline',FALSE);
      TopLines := Ini.ReadInteger('Options','TopLines',0);
      GetBody := Ini.ReadBool('Options','GetBody',FALSE);
      GetBodyLines := Ini.ReadInteger('Options','GetBodyLines',0);
      GetBodySize := Ini.ReadInteger('Options','GetBodySize',0);
      // advanced - interface
      CheckingIcon := Ini.ReadInteger('Options','CheckingIcon',ciAnimatedStar);
      ShowViewed := Ini.ReadBool('Options','ShowViewed',FALSE);
      CloseMinimize := Ini.ReadBool('Options','CloseMinimize',TRUE);
      MinimizeTray := Ini.ReadBool('Options','MinimizeTray',TRUE);
      NoError := Ini.ReadBool('Options','NoError',FALSE);
      MultilineAccounts := Ini.ReadBool('Options','MultilineAccounts',FALSE);
      DeleteConfirm := Ini.ReadBool('Options','DeleteConfirm',TRUE);
      DeleteConfirmProtected := Ini.ReadBool('Options','DeleteConfirmProtected',FALSE);
      OnTop := Ini.ReadBool('Options','OnTop',FALSE);
      AdvInfo := Ini.ReadBool('Options','AdvInfo',TRUE);
      AdvInfoDelay := Ini.ReadInteger('Options','AdvInfoDelay',20);
      HideViewed := Ini.ReadBool('Options','HideViewed',FALSE);
      actHideViewed.Checked := HideViewed;
      DoubleClickDelay := Ini.ReadBool('Options','DoubleClickDelay',TRUE);
      ShowWhileChecking := Ini.ReadBool('Options','ShowWhileChecking',FALSE);
      // advanced - misc
      UseMAPI := Ini.ReadBool('Options','UseMAPI',FALSE);
      LogRules := Ini.ReadBool('Options','LogRules',FALSE);
      SafeDelete := Ini.ReadBool('Options','SafeDelete',TRUE);
      RememberViewed := Ini.ReadBool('Options','RememberViewed',FALSE);
      BlackListSpam := Ini.ReadBool('Options','BlackListSpam',FALSE);
      DontCheckTimes := Ini.ReadBool('Options','DontCheckTimes',FALSE);
      DontCheckStart := Ini.ReadTime('Options','DontCheckStart',StrToTime('20:00'));
      DontCheckEnd := Ini.ReadTime('Options','DontCheckEnd',StrToTime('08:00'));
    end;

    // password
    Options.PasswordProtect := Ini.ReadBool('Options','PasswordProtect',FALSE);
    Options.Password := Decrypt(Ini.ReadString('Options','Password',''));

    // mouse button actions
    Options.LeftClick := Ini.ReadInteger('MouseButtons','Left',1);
    Options.RightClick := Ini.ReadInteger('MouseButtons','Right',2);
    Options.MiddleClick := Ini.ReadInteger('MouseButtons','Middle',3);
    Options.DblClick := Ini.ReadInteger('MouseButtons','Double',4);
    Options.ShiftLeftClick := Ini.ReadInteger('MouseButtons','ShiftLeft',0);
    Options.ShiftRightClick := Ini.ReadInteger('MouseButtons','ShiftRight',0);
    Options.ShiftMiddleClick := Ini.ReadInteger('MouseButtons','ShiftMiddle',0);

    // hotkey actions
    Options.Action1 := Ini.ReadInteger('HotKeys','HotKeyAction1',1);
    Options.Action2 := Ini.ReadInteger('HotKeys','HotKeyAction2',2);
    Options.Action3 := Ini.ReadInteger('HotKeys','HotKeyAction3',3);
    Options.Action4 := Ini.ReadInteger('HotKeys','HotKeyAction4',4);

    // hot-keys
    Options.HotKey1 := Ini.ReadInteger('HotKeys','HotKey1',0);
    Options.HotKey2 := Ini.ReadInteger('HotKeys','HotKey2',0);
    Options.HotKey3 := Ini.ReadInteger('HotKeys','HotKey3',0);
    Options.HotKey4 := Ini.ReadInteger('HotKeys','HotKey4',0);

    // languages
    langCount := Ini.ReadInteger('Languages','Count',0);
    if langCount = 0 then
      GetLanguages
    else begin
      SetLength(Options.Languages,langCount+1);
      Options.Languages[0] := 'English';
      for i := 1 to langCount do
        Options.Languages[i] := Ini.ReadString('Languages','Language'+IntToStr(i),'');
    end;
    Options.Language := Ini.ReadInteger('Languages','Active',0);

    // plug-ins
    pluginCount := Ini.ReadInteger('Plug-ins','Count',0);
    SetLength(Plugins,pluginCount);
    for i := 0 to pluginCount-1 do
    begin
      ThePluginType := TPluginType(Ini.ReadInteger('Plug-ins','PluginType'+IntToStr(i+1),0));
      case ThePluginType of
        piNotify   : Plugins[i] := TPluginNotify.Create;
        piProtocol : Plugins[i] := TPluginProtocol.Create;
      end;
      Plugins[i].Name := Ini.ReadString('Plug-ins','PluginName'+IntToStr(i+1),'');
      Plugins[i].DLLName := Ini.ReadString('Plug-ins','PluginDLLName'+IntToStr(i+1),'');
      Plugins[i].PluginType := TPluginType(Ini.ReadInteger('Plug-ins','PluginType'+IntToStr(i+1),0));
      Plugins[i].Enabled := Ini.ReadBool('Plug-ins','PluginEnabled'+IntToStr(i+1),False);
      if Plugins[i].Enabled then
      begin
        Plugins[i].hPlugin := LoadLibrary(PAnsiChar(ExtractFilePath(Application.ExeName)+'plugins\'+Plugins[i].DLLName));
        if Plugins[i].hPlugin = 0 then
          Continue;
        // skip old interface version
        fInterfaceVersion := GetProcAddress(Plugins[i].hPlugin, 'InterfaceVersion');
        if (@fInterfaceVersion=nil) or (fInterfaceVersion<INTERFACE_VERSION) then
        begin
          TranslateMsg(Translate('Incompatible Plugin:')+'  '+Plugins[i].DLLName,mtWarning,[mbOk],0);
          FreeLibrary(Plugins[i].hPlugin);
          Continue;
        end;
        Plugins[i].FInit := GetProcAddress(Plugins[i].hPlugin,'Init');
        Plugins[i].FFreePChar := GetProcAddress(Plugins[i].hPlugin,'FreePChar');
        Plugins[i].FUnload := GetProcAddress(Plugins[i].hPlugin,'Unload');
        // notify
        if (Plugins[i] is TPluginNotify) then
        begin
          (Plugins[i] as TPluginNotify).FNotify := GetProcAddress(Plugins[i].hPlugin,'Notify');
          (Plugins[i] as TPluginNotify).FNotifyAccount := GetProcAddress(Plugins[i].hPlugin,'NotifyAccount');
          (Plugins[i] as TPluginNotify).FMessageCheck := GetProcAddress(Plugins[i].hPlugin,'MessageCheck');
          (Plugins[i] as TPluginNotify).FMessageBody := GetProcAddress(Plugins[i].hPlugin,'MessageBody');
        end;
        // protocol
        if (Plugins[i] is TPluginProtocol) then
        begin
          (Plugins[i] as TPluginProtocol).FProtocols := GetProcAddress(Plugins[i].hPlugin,'Protocols');
          (Plugins[i] as TPluginProtocol).FConnect := GetProcAddress(Plugins[i].hPlugin,'Connect');
          (Plugins[i] as TPluginProtocol).FDisconnect := GetProcAddress(Plugins[i].hPlugin,'Disconnect');
          (Plugins[i] as TPluginProtocol).FDisconnectWithQuit := GetProcAddress(Plugins[i].hPlugin,'DisconnectWithQuit');
          (Plugins[i] as TPluginProtocol).FConnected := GetProcAddress(Plugins[i].hPlugin,'Connected');
          (Plugins[i] as TPluginProtocol).FCheckMessages := GetProcAddress(Plugins[i].hPlugin,'CheckMessages');
          (Plugins[i] as TPluginProtocol).FRetrieveHeader := GetProcAddress(Plugins[i].hPlugin,'RetrieveHeader');
          (Plugins[i] as TPluginProtocol).FRetrieveRaw := GetProcAddress(Plugins[i].hPlugin,'RetrieveRaw');
          (Plugins[i] as TPluginProtocol).FRetrieveTop := GetProcAddress(Plugins[i].hPlugin,'RetrieveTop');
          (Plugins[i] as TPluginProtocol).FRetrieveMsgSize := GetProcAddress(Plugins[i].hPlugin,'RetrieveMsgSize');
          (Plugins[i] as TPluginProtocol).FUIDL := GetProcAddress(Plugins[i].hPlugin,'UIDL');
          (Plugins[i] as TPluginProtocol).FDelete := GetProcAddress(Plugins[i].hPlugin,'Delete');
          (Plugins[i] as TPluginProtocol).FSetOnWork := GetProcAddress(Plugins[i].hPlugin,'SetOnWork');
          (Plugins[i] as TPluginProtocol).FLastErrorMsg := GetProcAddress(Plugins[i].hPlugin,'LastErrorMsg');
        end;
        Plugins[i].Init;
      end;
    end;
    // load into array and combo
    RefreshProtocols;

    // Visual Appearance
    defaultFont := IfThen(IsWinVista(), DEFAULT_FONT_VISTA, DEFAULT_FONT_XP);

    font := StringToFont( Ini.ReadString('VisualOptions', 'ListboxFont',
      defaultFont), defaultFont);
    Options.ListboxFont.Assign(font);
    FreeAndNil(font);

    Options.ListboxBg := StringToColor( Ini.ReadString('VisualOptions',
      'ListboxBg', 'clWindow'));

    font := StringToFont( Ini.ReadString('VisualOptions', 'GlobalFont',
      defaultFont), defaultFont);
    Options.GlobalFont.Assign(font);
    FreeAndNil(font);

    font := StringToFont( Ini.ReadString('VisualOptions', 'VerticalFont',
      DEFAULT_FONT_VERTICAL), DEFAULT_FONT_VERTICAL);
    Options.VerticalFont.Assign(font);
    FreeAndNil(font);

    UpdateFonts();

    // num accounts
    NumAccounts := Ini.ReadInteger('Options','NumAccounts',0);
  finally
     Ini.Free;
  end;
  // white / black list
  if FileExists(IniPath+'WhiteList.ptdat') then
    Options.WhiteList.LoadFromFile(IniPath+'WhiteList.ptdat');
  if FileExists(IniPath+'BlackList.ptdat') then
    Options.BlackList.LoadFromFile(IniPath+'BlackList.ptdat');
  // show it
  if Assigned(frame) then
    tvOptionsChange(tvOptions,tvOptions.Selected);
  // load e-mail client icon
  GetBitmapFromFileIcon(Options.MailProgram,btnStartProgram.Glyph,True);
  dm.imlActions.ReplaceMasked(actStartProgram.ImageIndex,btnStartProgram.Glyph,clBtnFace);
  // skin
  LoadSkin;
  // multiline account tabs
  tabMail.MultiLine := Options.MultilineAccounts;
  tabAccounts.MultiLine := Options.MultilineAccounts;
  // set interval
  dm.Timer.Interval := round(Options.Interval * 60000);
  panIntervalAccount.Visible := Options.TimerAccount;
  // rule areas
  if Options.GetBody then
    cmbRuleArea.Items.Add(RuleAreaToStr(raBody));
  // disable buttons
  btnSaveOptions.Enabled := False;
  btnCancel.Enabled := False;
  Application.ProcessMessages;
end;

procedure TfrmPopUMain.SaveOptionsINI;
var
  Ini : TIniFile;
  i : integer;
begin
  Ini := TIniFile.Create(IniName);
  try
    // interval
    Ini.WriteFloat('Options','Interval',Options.Interval);
    Ini.WriteBool('Options','TimerAccount',Options.TimerAccount);
    // defaults
    Ini.WriteString('Options','Program',Options.MailProgram);
    Ini.WriteString('Options','Sound',Options.DefSound);

    // options
    with Options do
    begin
      // general options
      Ini.WriteBool('Options','CheckStartup',Startup);
      Ini.WriteBool('Options','Minimized',Minimized);
      Ini.WriteBool('Options','AnimatedTray',Animated);
      Ini.WriteBool('Options','ResetTray',ResetTray);
      Ini.WriteBool('Options','RotateIcon',RotateIcon);
      Ini.WriteBool('Options','ShowForm',ShowForm);
      Ini.WriteBool('Options','Balloon',Balloon);
      Ini.WriteBool('Options','DeleteNextCheck',DeleteNextCheck);
      Ini.WriteInteger('Options','FirstWait',FirstWait);
      // advanced - connection
      Ini.WriteInteger('Options','TimeOut',TimeOut);
      Ini.WriteBool('Options','QuickCheck',QuickCheck);
      Ini.WriteBool('Options','CheckWhileMinimized',CheckWhileMinimized);
      Ini.WriteBool('Options','IgnoreRetrieveErrors',IgnoreRetrieveErrors);
      Ini.WriteBool('Options','ShowErrorsInBalloons',ShowErrorsInBalloons);
      Ini.WriteBool('Options','CheckOnline',Online);
      Ini.WriteInteger('Options','TopLines',TopLines);
      Ini.WriteBool('Options','GetBody',GetBody);
      Ini.WriteInteger('Options','GetBodyLines',GetBodyLines);
      Ini.WriteInteger('Options','GetBodySize',GetBodySize);
      // advanced - interface
      Ini.WriteInteger('Options','CheckingIcon',CheckingIcon);
      Ini.WriteBool('Options','ShowViewed',ShowViewed);
      Ini.WriteBool('Options','CloseMinimize',CloseMinimize);
      Ini.WriteBool('Options','MinimizeTray',MinimizeTray);
      Ini.WriteBool('Options','NoError',NoError);
      Ini.WriteBool('Options','MultilineAccounts',MultilineAccounts);
      Ini.WriteBool('Options','DeleteConfirm',DeleteConfirm);
      Ini.WriteBool('Options','DeleteConfirmProtected',DeleteConfirmProtected);
      Ini.WriteBool('Options','OnTop',OnTop);
      Ini.WriteBool('Options','AdvInfo',AdvInfo);
      Ini.WriteInteger('Options','AdvInfoDelay',AdvInfoDelay);
      Ini.WriteBool('Options','HideViewed',HideViewed);
      Ini.WriteBool('Options','DoubleClickDelay',DoubleClickDelay);
      Ini.WriteBool('Options','ShowWhileChecking',ShowWhileChecking);
      // advanced - misc
      Ini.WriteBool('Options','UseMAPI',UseMAPI);
      Ini.WriteBool('Options','LogRules',LogRules);
      Ini.WriteBool('Options','SafeDelete',SafeDelete);
      Ini.WriteBool('Options','RememberViewed',RememberViewed);
      Ini.WriteBool('Options','BlackListSpam',BlackListSpam);
      Ini.WriteBool('Options','DontCheckTimes',DontCheckTimes);
      Ini.WriteTime('Options','DontCheckStart',DontCheckStart);
      Ini.WriteTime('Options','DontCheckEnd',DontCheckEnd);
    end;

    // password
    Ini.WriteBool('Options','PasswordProtect',Options.PasswordProtect);
    Ini.WriteString('Options','Password',Encrypt(Options.Password));

    // mouse button actions
    Ini.WriteInteger('MouseButtons','Left',Options.LeftClick);
    Ini.WriteInteger('MouseButtons','Right',Options.RightClick);
    Ini.WriteInteger('MouseButtons','Middle',Options.MiddleClick);
    Ini.WriteInteger('MouseButtons','Double',Options.DblClick);
    Ini.WriteInteger('MouseButtons','ShiftLeft',Options.ShiftLeftClick);
    Ini.WriteInteger('MouseButtons','ShiftRight',Options.ShiftRightClick);
    Ini.WriteInteger('MouseButtons','ShiftMiddle',Options.ShiftMiddleClick);

    // hotkey actions
    Ini.WriteInteger('HotKeys','HotKeyAction1',Options.Action1);
    Ini.WriteInteger('HotKeys','HotKeyAction2',Options.Action2);
    Ini.WriteInteger('HotKeys','HotKeyAction3',Options.Action3);
    Ini.WriteInteger('HotKeys','HotKeyAction4',Options.Action4);

    // hot-keys
    Ini.WriteInteger('HotKeys','HotKey1',Options.HotKey1);
    Ini.WriteInteger('HotKeys','HotKey2',Options.HotKey2);
    Ini.WriteInteger('HotKeys','HotKey3',Options.HotKey3);
    Ini.WriteInteger('HotKeys','HotKey4',Options.HotKey4);

    // languages
    Ini.WriteInteger('Languages','Active',Options.Language);
    Ini.WriteInteger('Languages','Count',Length(Options.Languages)-1);
    for i := 1 to Length(Options.Languages)-1 do
      Ini.WriteString('Languages','Language'+IntToStr(i),TranslateToEnglish(Options.Languages[i]));

    // plug-ins
    Ini.WriteInteger('Plug-ins','Count',Length(Plugins));
    for i := 0 to Length(Plugins)-1 do
    begin
      Ini.WriteString('Plug-ins','PluginName'+IntToStr(i+1),Plugins[i].Name);
      Ini.WriteString('Plug-ins','PluginDLLName'+IntToStr(i+1),Plugins[i].DLLName);
      Ini.WriteBool('Plug-ins','PluginEnabled'+IntToStr(i+1),Plugins[i].Enabled);
      Ini.WriteInteger('Plug-ins','PluginType'+IntToStr(i+1),Integer(Plugins[i].PluginType));
    end;

    // Visual appearance
    Ini.WriteString('VisualOptions', 'ListboxFont', FontToString(Options.ListboxFont));
    Ini.WriteString('VisualOptions', 'ListboxBg',ColorToString(Options.ListboxBg));
    Ini.WriteString('VisualOptions', 'GlobalFont', FontToString(Options.GlobalFont));
    Ini.WriteString('VisualOptions', 'VerticalFont', FontToString(Options.VerticalFont));

  finally
     Ini.Free;
  end;
  SwitchTimer;
  // white/black list
  if Options.WhiteList.Count>0 then
    Options.WhiteList.SaveToFile(ExtractFilePath(IniName)+'WhiteList.ptdat')
  else
    DeleteFile(ExtractFilePath(IniName)+'WhiteList.ptdat');
  if Options.BlackList.Count>0 then
    Options.BlackList.SaveToFile(ExtractFilePath(IniName)+'BlackList.ptdat')
  else
    DeleteFile(ExtractFilePath(IniName)+'BlackList.ptdat');
  // multiline account tabs
  tabMail.MultiLine := Options.MultilineAccounts;
  tabAccounts.MultiLine := Options.MultilineAccounts;
  // register hot-keys
  UnRegisterTheHotKeys;
  RegisterTheHotKeys;
  // translate
  TranslateForm(self);
  // disable buttons
  btnSaveOptions.Enabled := False;
  btnCancel.Enabled := False;
end;

function TfrmPopUMain.LoadAccountINI(num : integer) : boolean;
////////////////////////////////////////////////////////////////////////////////
// Get 1 account from INI
var
  Ini : TIniFile;
  section,PortStr : string;
begin
  Ini := TIniFile.Create(IniName);
  try
    section := 'Account'+IntToStr(num);
    Accounts[num-1].Name := Ini.ReadString(Section,'Name','NoName');
    Accounts[num-1].Server := Ini.ReadString(Section,'Server','');
    Accounts[num-1].Port := Ini.ReadInteger(Section,'Port',110);
    Accounts[num-1].Protocol := Ini.ReadString(Section,'Protocol','POP3');
    Accounts[num-1].Login := Ini.ReadString(Section,'Login','');
    Accounts[num-1].MailProgram := Ini.ReadString(Section,'MailProgram','');
    Accounts[num-1].Password := Decrypt(Ini.ReadString(Section,'Password',''));
    Accounts[num-1].Sound := Ini.ReadString(Section,'Sound','');
    Accounts[num-1].Color := Ini.ReadString(Section,'Color','');
    Accounts[num-1].Enabled := Ini.ReadBool(Section,'Enabled',True);
    Accounts[num-1].Interval := Ini.ReadFloat(Section,'Interval',5);
    Accounts[num-1].DontCheckTimes := Ini.ReadBool(Section,'DontCheckTimes',FALSE);
    Accounts[num-1].DontCheckStart := Ini.ReadTime(Section,'DontCheckStart',StrToTime('20:00'));
    Accounts[num-1].DontCheckEnd := Ini.ReadTime(Section,'DontCheckEnd',StrToTime('08:00'));
    Accounts[num-1].ViewedMsgIDs := TStringList.Create;
    Accounts[num-1].Mail := TMailItems.Create;
    LoadViewedMessageIDs(num);
    Result := Ini.ReadString(Section,'Name','accnoname') <> 'accnoname';
    // backwards compatible port
    PortStr := StrAfter(Accounts[num-1].Server,':');
    if PortStr <> '' then
    begin
      Accounts[num-1].Server := StrBefore(Accounts[num-1].Server,':');
      Accounts[num-1].Port := StrToIntDef(PortStr,110);
    end;
    // protocol
    SetProtocol(num);
  finally
     Ini.Free;
  end;
end;

procedure TfrmPopUMain.SaveAccountINI(num : integer);
////////////////////////////////////////////////////////////////////////////////
// Save 1 account to INI
var
  Ini : TMemIniFile;
  section : string;
begin
  // write to ini
  Ini := TMemIniFile.Create(IniName);
  try
    section := 'Account'+IntToStr(num);
    Ini.WriteString(Section,'Name',Accounts[num-1].Name);
    Ini.WriteString(Section,'Server',Accounts[num-1].Server);
    Ini.WriteInteger(Section,'Port',Accounts[num-1].Port);
    Ini.WriteString(Section,'Protocol',Accounts[num-1].Protocol);
    Ini.WriteString(Section,'Login',Accounts[num-1].Login);
    Ini.WriteString(Section,'Password',Encrypt(Accounts[num-1].Password));
    Ini.WriteString(Section,'MailProgram',Accounts[num-1].MailProgram);
    Ini.WriteString(Section,'Sound',Accounts[num-1].Sound);
    Ini.WriteString(Section,'Color',Accounts[num-1].Color);
    Ini.WriteBool(Section,'Enabled',Accounts[num-1].Enabled);
    Ini.WriteFloat(Section,'Interval',Accounts[num-1].Interval);
    Ini.WriteBool(Section,'DontCheckTimes',Accounts[num-1].DontCheckTimes);
    Ini.WriteTime(Section,'DontCheckStart',Accounts[num-1].DontCheckStart);
    Ini.WriteTime(Section,'DontCheckEnd',Accounts[num-1].DontCheckEnd);
    Ini.WriteInteger('Options','NumAccounts',NumAccounts);
    Ini.UpdateFile;
  finally
     Ini.Free;
  end;
end;

procedure TfrmPopUMain.SaveAccountNum(num : integer);
////////////////////////////////////////////////////////////////////////////////
// Save Account info to array
begin
  // store account info in array
  Accounts[num-1].Name := edName.Text;
  Accounts[num-1].Server := edServer.Text;
  Accounts[num-1].Port := StrToIntDef(edPort.Text,-1);
  Accounts[num-1].Protocol := cmbProtocol.Text;
  Accounts[num-1].Login := edLogin.Text;
  Accounts[num-1].Password := edPassword.Text;
  if edAccountProgram.Text = Translate(UseDefaultProgram) then
    Accounts[num-1].MailProgram := ''
  else
    Accounts[num-1].MailProgram := edAccountProgram.Text;
  if edSound.Text = Translate(UseDefaultSound) then
    Accounts[num-1].Sound := ''
  else
    Accounts[num-1].Sound := edSound.Text;
  Accounts[num-1].Color := ColorToString2(colAccount.Selected);
  Accounts[num-1].Enabled := chkAccEnabled.Checked;
  Accounts[num-1].Interval := StrToFloatDef(edIntervalAccount.Text,5); //UpDownAccount.Position;
  Accounts[num-1].DontCheckTimes := chkDontCheckTimes.Checked;
  Accounts[num-1].DontCheckStart := dtStart.Time;
  Accounts[num-1].DontCheckEnd := dtEnd.Time;
  Accounts[num-1].Error := False;
  Accounts[num-1].UIDLSupported := True;
  // objects
  if not Assigned(Accounts[num-1].ViewedMsgIDs) then
    Accounts[num-1].ViewedMsgIDs := TStringList.Create;
  if not Assigned(Accounts[num-1].Mail) then
    Accounts[num-1].Mail := TMailItems.Create;
  SetProtocol(num);
  // global
  FNewAccount := False;
  SwitchTimer;
end;

procedure TfrmPopUMain.ShowAccount(num: integer);
////////////////////////////////////////////////////////////////////////////////
// Show the account info in the edit boxes
begin
  if (num<=0) or (num>NumAccounts) then Exit;
  // main params
  edName.Text := Accounts[num-1].Name;
  edServer.Text := Accounts[num-1].Server;
  edPort.Text := IntToStr(Accounts[num-1].Port);
  cmbProtocol.ItemIndex := cmbProtocol.Items.IndexOf(Accounts[num-1].Protocol);
  edLogin.Text := Accounts[num-1].Login;
  edPassword.Text := Accounts[num-1].Password;
  // mail program
  if Accounts[num-1].MailProgram <> '' then
  begin
    edAccountProgram.Text := Accounts[num-1].MailProgram;
    edAccountProgram.Font.Color := clWindowText;
    GetBitmapFromFileIcon(edAccountProgram.Text,btnAccountProgramTest.Glyph,True);
  end
  else begin
    edAccountProgram.Text := Translate(UseDefaultProgram);
    edAccountProgram.Font.Color := clGrayText;
    btnAccountProgramTest.Glyph.Assign(btnStartProgram.Glyph);
  end;
  // sound
  if Accounts[num-1].Sound <> '' then
  begin
    edSound.Text := Accounts[num-1].Sound;
    edSound.Font.Color := clWindowText;
  end
  else begin
    edSound.Text := Translate(UseDefaultSound);
    edSound.Font.Color := clGrayText;
  end;
  colAccount.Selected := StringToColorDef(Accounts[num-1].Color,clGray);
  chkAccEnabled.Checked := Accounts[num-1].Enabled;
  edIntervalAccount.Text := FloatToStr(Accounts[num-1].Interval);
  //  UpDownAccount.Position := round(Accounts[num-1].Interval);
  chkDontCheckTimes.Checked := Accounts[num-1].DontCheckTimes;
  dtStart.Time := Accounts[num-1].DontCheckStart;
  dtEnd.Time := Accounts[num-1].DontCheckEnd;
  // server/port disable
  if Accounts[num-1].Port < 0 then
  begin
    edPort.Text := '';
    EnableControl(edPort,false);
    edServer.Text := '';
    EnableControl(edServer,false);
  end
  else begin
    EnableControl(edPort,true);
    EnableControl(edServer,true);
  end;
  // buttons
  FAccChanged := False;
  btnSave.Enabled := False;
  btnCancelAccount.Enabled := False;
end;

procedure TfrmPopUMain.LoadRulesINI;
////////////////////////////////////////////////////////////////////////////////
// Get the rules from INI file.
// If Rules.ini doesn't exist read from PopTray.ini
var
  Ini : TMemIniFile;
  i,j,rowcount,rulecount : integer;
  section,st,comp : string;
  NewRules : boolean;
begin
  NewRules := FileExists(RuleName);
  if NewRules then
    Ini := TMemIniFile.Create(RuleName)
  else
    Ini := TMemIniFile.Create(IniName);
  try
    lstRules.Items.BeginUpdate;
    try
      lstRules.Clear;
      rulecount := Ini.ReadInteger('Options','NumRules',0);
      Rules.Clear;
      for i := 1 to rulecount do
      begin
        section := 'Rule'+IntToStr(i);
        with Rules.Add do
        begin
          Name := Ini.ReadString(section,'Name','NoName');
          Account := Ini.ReadInteger(section,'Account',0);
          Operator := TRuleOperator(Ini.ReadInteger(section,'Operator',0));
          rowcount := Ini.ReadInteger(section,'RowCount',1);
          for j := 1 to rowcount do
          begin
            with Rows.Add do
            begin
              if j=1 then st := '' else st := IntToStr(j);
              Area := StrToRuleArea(Ini.ReadString(section,'Area'+st,'Header'));
              RuleNot := Ini.ReadBool(section,'Not'+st,False);
              comp := Ini.ReadString(section,'Func'+st,'Contains');
              if comp = 'NOT Contains' then
              begin
                comp := 'Contains';
                RuleNot := True;
              end;
              Compare := StrToRuleCompare(comp);
              Text := Ini.ReadString(section,'Text'+st,'');
            end;
          end;
          Wav := Ini.ReadString(section,'Wav','');
          EXE := Ini.ReadString(section,'EXE','');
          if NewRules then
          begin
            Enabled := Ini.ReadBool(section,'Enabled',False);
            New := Ini.ReadBool(section,'New',False);
            Delete := Ini.ReadBool(section,'Delete',False);
            Ignore := Ini.ReadBool(section,'Ignore',False);
            Important := Ini.ReadBool(section,'Important',False);
            Spam := Ini.ReadBool(section,'Spam',False);
            Protect := Ini.ReadBool(section,'Protect',False);
            Log := Ini.ReadBool(section,'Log',True);
            TrayColor := Ini.ReadInteger(section,'TrayColor',-1);
          end
          else begin
            Enabled := Ini.ReadString(section,'Enabled','No') = 'Yes';
            New := Ini.ReadString(section,'New','No') = 'Yes';
            Delete := Ini.ReadString(section,'Delete','No') = 'Yes';
            Ignore := Ini.ReadString(section,'Ignore','No') = 'Yes';
            Important := Ini.ReadString(section,'Important','No') = 'Yes';
            Spam := False;
            Protect := False;
            Log := True;
            TrayColor := -1;
          end;
          // list box
          lstRules.Items.Add(Name);
          lstRules.Checked[Rules.Count-1] := Enabled;
        end;
      end;
    finally
      lstRules.Items.EndUpdate;
    end;
  finally
     Ini.Free;
  end;
  btnSaveRules.Enabled := not NewRules;
  btnCancelRule.Enabled := not NewRules;
end;

procedure TfrmPopUMain.SaveRulesINI;
////////////////////////////////////////////////////////////////////////////////
// Save all the rules to INI file
var
  Ini : TMemIniFile;
  i,j,numrules : integer;
  section,st : string;
begin
  if not FileExists(RuleName) then
  begin
    // delete from poptray.ini
    Ini := TMemIniFile.Create(IniName);
    try
      numrules := Ini.ReadInteger('Options','NumRules',0);
      for i := 1 to numrules do
        Ini.EraseSection('Rule'+IntToStr(i));
      Ini.DeleteKey('Options','NumRules');
      Ini.UpdateFile;
    finally
      Ini.Free;
    end;
  end;
  // save to rules.ini
  Ini := TMemIniFile.Create(RuleName);
  try
    Ini.WriteInteger('Options','NumRules',Rules.Count);
    for i := 0 to Rules.Count-1 do
    begin
      section := 'Rule'+IntToStr(i+1);
      Ini.WriteString(Section,'Name',Rules[i].Name);
      Ini.WriteBool(Section,'Enabled',Rules[i].Enabled);
      Ini.WriteBool(Section,'New',Rules[i].New);
      Ini.WriteInteger(Section,'Account',Rules[i].Account);
      Ini.WriteInteger(Section,'Operator',Ord(Rules[i].Operator));
      Ini.WriteInteger(Section,'RowCount',Rules[i].Rows.Count);
      for j := 0 to Rules[i].Rows.Count-1 do
      begin
        if j=0 then st := '' else st := IntToStr(j+1);
        Ini.WriteString(Section,'Area'+st,RuleAreaToStr(Rules[i].Rows[j].Area));
        Ini.WriteString(Section,'Func'+st,RuleCompareToStr(Rules[i].Rows[j].Compare));
        Ini.WriteString(Section,'Text'+st,Rules[i].Rows[j].Text);
        Ini.WriteBool(Section,'Not'+st,Rules[i].Rows[j].RuleNot);
      end;
      Ini.WriteString(Section,'Wav',Rules[i].Wav);
      Ini.WriteBool(Section,'Delete',Rules[i].Delete);
      Ini.WriteBool(Section,'Ignore',Rules[i].Ignore);
      Ini.WriteString(Section,'EXE',Rules[i].EXE);
      Ini.WriteBool(Section,'Important',Rules[i].Important);
      Ini.WriteBool(Section,'Spam',Rules[i].Spam);
      Ini.WriteBool(Section,'Protect',Rules[i].Protect);
      Ini.WriteBool(Section,'Log',Rules[i].Log);
      Ini.WriteInteger(Section,'TrayColor',Rules[i].TrayColor);
    end;
    Ini.UpdateFile;
  finally
     Ini.Free;
  end;
  btnSaveRules.Enabled := False;
  btnCancelRule.Enabled := False;
end;

procedure TfrmPopUMain.LoadPosINI;
////////////////////////////////////////////////////////////////////////////////
// Get window position,window size adn column widths from INI
var
  Ini : TIniFile;
  i,ColWidth,SortCol : integer;
begin
  Ini := TIniFile.Create(IniName);
  try
    // form
    Self.Width := Ini.ReadInteger('Position','Width',Self.Width);
    Self.Height := Ini.ReadInteger('Position','Height',Self.Height);
    Self.Left := Ini.ReadInteger('Position','Left',Screen.WorkAreaWidth-Self.Width);
    Self.Top := Ini.ReadInteger('Position','Top',Screen.WorkAreaHeight-Self.Height);
    panMailButtonsResize(panMailButtons);
    // columns
    SortCol := Ini.ReadInteger('Position','SortColumn',-1);
    FSortDirection := Ini.ReadInteger('Position','SortDirection',FSortDirection);
    dm.mnuSpamLast.Checked := Ini.ReadBool('Position', 'SortSpamLast', False);
    for i := 0 to 4 do
    begin
      ColWidth := Ini.ReadInteger('Position','Column'+IntToStr(i+1),lvMail.Columns[i].Width);
      if ColWidth = 0 then
        lvMail.Columns[i].MinWidth := 0;
      lvMail.Columns[i].Width := ColWidth;
    end;
    SetSortColumn(SortCol);
    // tree widths
    tvOptions.Width := Ini.ReadInteger('Position','OptionTree',145);
    panRuleList.Width := Ini.ReadInteger('Position','RuleList',100);
    // on screen?
    if self.Left < 0 then self.Left := 0;
    if self.top < 0 then self.Top := 0;
    if self.Left > Screen.WorkAreaWidth then
      self.Left := Screen.WorkAreaWidth - Self.Width;
    if self.Top > Screen.WorkAreaHeight then
      self.Top := Screen.WorkAreaHeight - Self.Height;
    // info
    Options.InfoTab := Ini.ReadInteger('Info','Tab',0);
    Options.InfoCol1 := Ini.ReadInteger('Info','Column1',70);
    Options.InfoCol2 := Ini.ReadInteger('Info','Column2',85);
    Options.InfoCol3 := Ini.ReadInteger('Info','Column3',120);
    Options.InfoCol4 := Ini.ReadInteger('Info','Column4',50);
    if (Options.InfoCol1=0) and (Options.InfoCol2=0) and
       (Options.InfoCol3=0) and (Options.InfoCol4=0) then
    begin
      Options.InfoCol1 := 70;
      Options.InfoCol2 := 85;
      Options.InfoCol3 := 120;
      Options.InfoCol4 := 50;
    end;
  finally
     Ini.Free;
  end;
end;

procedure TfrmPopUMain.SavePosINI;
////////////////////////////////////////////////////////////////////////////////
// Save window position,window size adn column widths to INI
var
  Ini : TMemIniFile;
begin
  Ini := TMemIniFile.Create(IniName);
  try
    // form position
    Ini.WriteInteger('Position','Left',Self.Left);
    Ini.WriteInteger('Position','Top',Self.Top);
    Ini.WriteInteger('Position','Width',Self.Width);
    Ini.WriteInteger('Position','Height',Self.Height);
    // columns
    Ini.WriteInteger('Position','SortColumn',FSortColumn);
    Ini.WriteInteger('Position','SortDirection',FSortDirection);
    Ini.WriteBool('Position','SortSpamLast',dm.mnuSpamLast.Checked);
    Ini.WriteInteger('Position','Column1',lvMail.Columns[0].Width);
    Ini.WriteInteger('Position','Column2',lvMail.Columns[1].Width);
    Ini.WriteInteger('Position','Column3',lvMail.Columns[2].Width);
    Ini.WriteInteger('Position','Column4',lvMail.Columns[3].Width);
    Ini.WriteInteger('Position','Column5',lvMail.Columns[4].Width);
    // list widths
    Ini.WriteInteger('Position','OptionTree',tvOptions.Width);
    Ini.WriteInteger('Position','RuleList',panRuleList.Width);
    // info
    Ini.WriteInteger('Info','Tab',Options.InfoTab);
    Ini.WriteInteger('Info','Column1',Options.InfoCol1);
    Ini.WriteInteger('Info','Column2',Options.InfoCol2);
    Ini.WriteInteger('Info','Column3',Options.InfoCol3);
    Ini.WriteInteger('Info','Column4',Options.InfoCol4);
    try
      Ini.UpdateFile;
    except
      on E:Exception do MessageDlg(E.Message,mtError,[mbOK],0);
    end;
  finally
     Ini.Free;
  end;
end;

procedure TfrmPopUMain.LoadViewedMessageIDs(num : integer);
////////////////////////////////////////////////////////////////////////////////
// Load viewed message ids from file
var
  filename : string;
begin
  if Options.RememberViewed then
  begin
    filename := ExtractFilePath(IniName)+'Account_'+IntToStr(num)+'.ids';
    if FileExists(filename) then
      Accounts[num-1].ViewedMsgIDs.LoadFromFile(filename);
  end;
end;

procedure TfrmPopUMain.SaveViewedMessageIDs;
////////////////////////////////////////////////////////////////////////////////
// Save viewed message ids to file
var
  num : integer;
  filename : string;
begin
  if Options.RememberViewed then
  begin
    try
      for num := 1 to NumAccounts do
      begin
        filename := ExtractFilePath(IniName)+'Account_'+IntToStr(num)+'.ids';
        if Accounts[num-1].ViewedMsgIDs.Count > 0 then
          Accounts[num-1].ViewedMsgIDs.SaveToFile(filename);
      end;
    except
      on E:Exception do MessageDlg(E.Message,mtError,[mbOK],0);
    end;
  end;
end;

function TfrmPopUMain.AccountChanged(tab: integer): boolean;
////////////////////////////////////////////////////////////////////////////////
// Check if any of the fields have changed since last save
var
  sound,mailprogram : string;
begin
  if edSound.Text = Translate(UseDefaultSound) then
    sound := ''
  else
    sound := edSound.Text;
  if edAccountProgram.Text = Translate(UseDefaultProgram) then
    mailprogram := ''
  else
    mailprogram := edAccountProgram.Text;
  if tab < 0 then
    Result := False
  else
    Result := (Accounts[tab].Name <> edName.Text) or
              (Accounts[tab].Server <> edServer.Text) or
              (Accounts[tab].Port <> StrToIntDef(edPort.Text,110)) or
              (Accounts[tab].Protocol <> cmbProtocol.Text) or
              (Accounts[tab].Login <> edLogin.Text) or
              (Accounts[tab].Password <> edPassword.Text) or
              (Accounts[tab].Color <> ColorToString2(colAccount.Selected)) or
              (Accounts[tab].Enabled <> chkAccEnabled.Checked) or
              (Accounts[tab].Sound <> sound) or
              (Accounts[tab].MailProgram <> mailprogram) or
              (Accounts[tab].Interval <> StrToFloatDef(edIntervalAccount.Text,5)) or
              (Accounts[tab].DontCheckTimes <> chkDontCheckTimes.Checked) or
              (Accounts[tab].DontCheckStart <> dtStart.Time) or
              (Accounts[tab].DontCheckEnd <> dtEnd.Time);
end;


// ----------------------------------------------------------- mail messages ---

procedure TfrmPopUMain.Preview(num: integer);
////////////////////////////////////////////////////////////////////////////////
// Open preview window and download the message
var
  msgnum,i : integer;
  RawMsg : TStringList;
  TmpStream : TMemoryStream;
  pRawMsg : PChar;
  MailItem : TMailItem;
begin
  // check if busy
  if FBusy then
  begin
    if not Options.NoError then
      Balloon('PopTrayU',Translate('Error:')+' '+Translate('Still Busy Checking'),bitError,15);
    Exit;
  end;
  // selected message
  msgnum := StrToInt(lvMail.Selected.SubItems[colID]);
  MailItem := Accounts[num-1].Mail.FindMessage(msgnum);
  with Accounts[num-1].Prot do
  begin
    SetOnWork(OnProtWork);
    // connect
    if Connected then Disconnect;
    Screen.Cursor := crHourGlass;
    ConnectAccount(num);
    Screen.Cursor := crDefault;
    try
      // show window
      frmPreview := TfrmPreview.Create(Application);
      frmPreview.IniName := IniName;
      frmPreview.GetINI;
      frmPreview.FAccountNum := num;
      frmPreview.FMsgNum := msgnum;
      frmPreview.FProtected := MailItem.Protect;
      frmPreview.btnOK.Enabled := False;
      if (MailItem.UID <> '') and (Copy(MailItem.UID,1,5) <> 'Error') and
         Options.SafeDelete then
      begin
        frmPreview.actDelete.Enabled := True;
        frmPreview.actDelete.Hint := Translate('Delete this message from server');
        frmPreview.FUID := MailItem.UID;
      end
      else begin
        frmPreview.actDelete.Enabled := False;
        frmPreview.actDelete.Hint := Translate('Delete Button only available when using Safe Delete option');
      end;
      if Options.OnTop then
        frmPreview.FormStyle := fsStayOnTop;

      // NEW - force tab to plaintext for spam msgs
      if (MailItem.Spam) then begin
         frmPreview.FTab := 0;
      end;

      TranslateForm(frmPreview);
      frmPreview.Caption := Translate('Preview') + ' - PopTrayU';
      frmPreview.Show;
      Application.ProcessMessages;
      // progress
      frmPreview.FStop := False;
      FPreview := True;
      frmPreview.panProgress.Visible := True;
      frmPreview.Progress.Position := 0;
      // get message
      try
        FMsgSize := RetrieveMsgSize(msgnum);
        frmPreview.Progress.Max := FMsgSize;
        RawMsg := TStringList.Create;
        try
          frmPreview.lblProgress.Caption := Translate('Downloading...');
          if Options.TopLines>0 then
            RetrieveTop(msgnum,Options.TopLines,pRawMsg)
          else
            RetrieveRaw(msgnum,pRawMsg);
          RawMsg.SetText(pRawMsg);
          FreePChar(pRawMsg);
          frmPreview.FRawMsg := RawMsg.Text;
          // delims
          for i := 0 to RawMsg.Count-1 do
            if RawMsg[i]='.' then RawMsg[i] := '. ';
          RawMsg.Add('.');
          // process message
          TmpStream := TMemoryStream.Create;
          try
            frmPreview.lblProgress.Caption := Translate('Processing...');
            RawMsg.SaveToStream(TmpStream);
            TmpStream.Position := 0;
            try
              frmPreview.Msg.MIMEBoundary.Push('somejunk'); // bug in Indy when no boundary and "--" in body.
              ProcessMessage(frmPreview.Msg,TmpStream,Options.TopLines>0);
            except
              on e : EIdEmailParseError do
              begin
                // ignore '@ outside address' error in Indy 9
                frmPreview.Msg.From.Name := frmPreview.Msg.Headers.Values['From'];
                frmPreview.Msg.Date := GMTToLocalDateTime(frmPreview.Msg.Headers.Values['Date']);
              end;
              on E: Exception do
              begin
                if E.Message = RSUnevenSizeInDecodeStream then
                begin
                  // TODO delete files
                  frmPreview.lblProgress.Caption := Translate('Re-Processing...');
                  // remove #13 from end of lines
                  for i := 0 to RawMsg.Count-1 do
                    if RightStr(RawMsg[i],1) = #13 then
                      RawMsg[i] := Copy(RawMsg[i],1,Length(RawMsg[i])-1);
                  TmpStream.Position := 0;
                  RawMsg.SaveToStream(TmpStream);
                  TmpStream.Position := 0;
                  // try again
                  frmPreview.Msg.Clear;
                  try
                    ProcessMessage(frmPreview.Msg,TmpStream,Options.TopLines>0);
                  except
                    // ignore
                  end;
                end
                else begin
                  if not (E is EAbort) and not Options.IgnoreRetrieveErrors  then
                    ShowTranslatedDlg(Translate('Unable to Retrieve message.')+#13#10#13#10+
                                 Translate(E.Message), mtError, [mbOK], 0);
                end;
              end;
            end;
          finally
            TmpStream.Free;
          end;
        finally
          RawMsg.Free;
        end;
      except
        on E : Exception do
        begin
          frmPreview.btnOK.Enabled := True;
          frmPreview.btnOK.SetFocus;
          if frmPreview.FStop then
          begin
            frmPreview.Close;
            FreeAndNil(frmPreview);
          end
          else begin
            if not Options.IgnoreRetrieveErrors then
            begin
              ShowTranslatedDlg(Translate('Unable to Retrieve message.')+#13#10#13#10+
                           Translate(E.Message), mtError, [mbOK], 0);
              frmPreview.Close;
              FreeAndNil(frmPreview);
            end
            else begin
              frmPreview.panProgress.Hide;
            end;
          end;
          Exit;
        end;
      end;
      // show contents
      try
        frmPreview.ShowMsg;
        // Bug Workaround: once the form has set the subject override the
        // displayed subject with the correct unicode version.
        if (MailItem.Subject <> '') then begin
          frmPreview.Caption := MailItem.Subject;
          frmPreview.edSubject.Text := MailItem.Subject;
        end;
      finally
        FPreview := False;
      end;
    finally
      Screen.Cursor := crDefault;
      if Connected then Disconnect;
    end;
  end;
end;


procedure TfrmPopUMain.ProcessMessage(AMsg: TIdMessage; const AStream: TStream; AHeaderOnly: Boolean);
var
  MessageClient : TIdMessageClient;
begin
  MessageClient := TIdMessageClient.Create(Self);//nil);
  MessageClient.OnWork := OnProcessWork;
  try
    MessageClient.ProcessMessage(AMsg,AStream,AHeaderOnly);
  finally
    MessageClient.Free;
  end;
end;


function TfrmPopUMain.DeleteMails(num: integer; var DelCount : integer) : boolean;
////////////////////////////////////////////////////////////////////////////////
// Delete all mail marked as 'ToDelete'
var
  i : integer;
begin
  Result := True;
  DelCount := 0;
  if CountStatus([misToBeDeleted],num)>0 then
  begin
    ShowIcon(num,itDeleting);
    // delete from server
    with Accounts[num-1].Prot do
    begin
      ConnectAccount(num);
      try
        for i := 0 to Accounts[num-1].Mail.Count-1 do
        begin
          if Accounts[num-1].Mail[i].ToDelete then
          begin
            if CheckUID(num,Accounts[num-1].Mail[i].MsgNum) then
            begin
              Delete(Accounts[num-1].Mail[i].MsgNum);
              Inc(DelCount);
            end
            else begin
              // safe delete failed
              Result := False;
              Exit;
            end;
          end;
        end;
        Accounts[num-1].Status := IntToStr(DelCount)+' '+Translate('message(s) deleted.');
      finally
        DisconnectWithQuit;
      end;
    end;
  end;
end;

function TfrmPopUMain.GetUIDs(num: integer; var UIDLs : TStringList): boolean;
////////////////////////////////////////////////////////////////////////////////
// Get list of UIDS. Must be connected.
var
  pUIDL : PChar;
begin
  try
    if Accounts[num-1].UIDLSupported then
    begin
      Result := Accounts[num-1].Prot.UIDL(pUIDL);
      UIDLs.SetText(pUIDL);
      Accounts[num-1].Prot.FreePChar(pUIDL);
      if not Result then
        Accounts[num-1].UIDLSupported := False;
    end
    else begin
      Result := False;
    end;
  except
    // server doesn't support UIDL
    Result := False;
  end;
end;

function TfrmPopUMain.GetUID(num,msgnum: integer): string;
////////////////////////////////////////////////////////////////////////////////
// Get UID from server.  Must be connected
var
  UIDLs : TStringList;
  res : boolean;
  pUIDL : PChar;
begin
  UIDLs := TStringList.Create;
  try
    try
      if Accounts[num-1].UIDLSupported then
      begin
        res := Accounts[num-1].Prot.UIDL(pUIDL,msgnum);
        if res then
          UIDLs.SetText(pUIDL);
        Accounts[num-1].Prot.FreePChar(pUIDL);
      end
      else begin
        res := False;
      end;
    except
      res := False;
    end;
    if (UIDLs.Count > 0) and res then
      Result := StrAfter(UIDLs[0],' ')
    else
      Result := 'Error'+IntToStr(Random(10000));
  finally
    UIDLs.Free;
  end;
end;

function TfrmPopUMain.CheckUID(num, msgnum: integer; UID : string=''): boolean;
////////////////////////////////////////////////////////////////////////////////
// Check if current UID and stored UID is the same.  Must be connected
var
  MailItem : TMailItem;
begin
  MailItem := Accounts[num-1].Mail.FindMessage(msgnum);
  // default param
  if UID='' then UID := MailItem.UID;
  // compare UID
  Result := not(Options.SafeDelete) or not(Accounts[num-1].UIDLSupported) or
            (Options.SafeDelete and (GetUID(num,msgnum) = UID));
  if not Result then
  begin
    // safe delete failed
    ErrorMsg(num,'Error:',Translate('Message identifiers don''t match.'+#13#10+'The Safe Delete option prevented deletion of this message.'),Options.NoError);
  end;
end;

procedure TfrmPopUMain.MarkViewed(num : integer = -1);
////////////////////////////////////////////////////////////////////////////////
// Mark all messages as viewed
var
  i : integer;
  changed : boolean;
begin
  // viewed e-mails
  if (num = -1) and (tabMail.Tabs.Count>0) then num := tabMail.TabIndex+1;
  if num < 0 then Exit;
  if Accounts[num-1].Mail.Count = 0 then Exit;
  Accounts[num-1].ViewedMsgIDs.Clear;
  changed := false;
  for i := 0 to Accounts[num-1].Mail.Count-1 do
  begin
    if not Accounts[num-1].Mail[i].Viewed then changed := true;
    Accounts[num-1].Mail[i].Viewed := True;
    Accounts[num-1].ViewedMsgIDs.Add(Accounts[num-1].Mail[i].MsgID);
  end;
  // redraw the icon
  UpdateTrayIcon;
  if changed then CallNotifyPlugins;
end;

function TfrmPopUMain.HasAttachment : boolean;
begin
   Result := AnsiContainsText(MsgHeader.ContentType,'multipart/mixed') or
             AnsiContainsText(MsgHeader.ContentType,'multipart/related');
end;

function TfrmPopUMain.CountUnviewed(num: integer): integer;
////////////////////////////////////////////////////////////////////////////////
// Count unviewed message from the specified account
var
  i : integer;
begin
  Result := 0;
  if Accounts[num-1].Mail=nil then Exit;
  for i := 0 to Accounts[num-1].Mail.Count-1 do
    if not Accounts[num-1].Mail[i].Viewed and
       not Accounts[num-1].Mail[i].Ignored and
       not Accounts[num-1].Mail[i].ToDelete then
      Inc(Result);
end;

function TfrmPopUMain.CountNew(num: integer): integer;
////////////////////////////////////////////////////////////////////////////////
// Count new messages from specified account
var
  i : integer;
begin
  Result := 0;
  for i := 0 to Accounts[num-1].Mail.Count-1 do
    if Accounts[num-1].Mail[i].New and
       not Accounts[num-1].Mail[i].Ignored and
       not Accounts[num-1].Mail[i].ToDelete then
      Inc(Result);
end;

function TfrmPopUMain.CountAllNew: integer;
////////////////////////////////////////////////////////////////////////////////
// Count new messages from all accounts
var
  num : integer;
begin
  Result := 0;
  for num := 1 to NumAccounts do
    Result := Result + CountNew(num);
end;

function TfrmPopUMain.CountAll(Unviewed: boolean): integer;
////////////////////////////////////////////////////////////////////////////////
// Count message from all accounts
var
  num : integer;
begin
  Result := 0;
  for num := 1 to NumAccounts do
  begin
    if Accounts[num-1].Mail = nil then continue;
    if Unviewed then
      Result := Result + CountUnviewed(num)
    else
      Result := Result + Accounts[num-1].Mail.Count - Accounts[num-1].IgnoreCount;
  end;
end;

function TfrmPopUMain.CountStatus(statusses : TMailItemStatusSet; num: integer): integer;
////////////////////////////////////////////////////////////////////////////////
// Count messages of the specified status
var
  i : integer;
begin
  Result := 0;
  for i := 0 to Accounts[num-1].Mail.Count-1 do
  begin
    if Options.HideViewed and Accounts[num-1].Mail[i].Viewed and (Statusses<>[misToBeDeleted]) then
      // ignore
    else if (misToBeDeleted in Statusses)   and Accounts[num-1].Mail[i].ToDelete      then Inc(Result)
    else if (misSpam in Statusses)          and Accounts[num-1].Mail[i].Spam          then Inc(Result)
    else if (misIgnored in Statusses)       and Accounts[num-1].Mail[i].Ignored       then Inc(Result)
    else if (misProtected in Statusses)     and Accounts[num-1].Mail[i].Protect       then Inc(Result)
    else if (misImportant in Statusses)     and Accounts[num-1].Mail[i].Important     then Inc(Result)
    else if (misHasAttachment in Statusses) and Accounts[num-1].Mail[i].HasAttachment then Inc(Result)
    else if (misViewed in Statusses)        and Accounts[num-1].Mail[i].Viewed        then Inc(Result)
    else if (misNew in Statusses)           and Accounts[num-1].Mail[i].New           then Inc(Result);
  end;
end;


function TfrmPopUMain.SelectedMailItem(Item : TListItem = nil): TMailItem;
begin
  if Item = nil then Item := lvMail.Selected;
  if Item = nil then
    Result := nil
  else
    Result := Accounts[tabMail.TabIndex].Mail.FindMessage(StrToInt(Item.SubItems[colID]));
end;

procedure TfrmPopUMain.RunMessage(num, msgnum: integer);
var
  pMsg : PChar;
  f : TextFile;
begin
  // connect
  ConnectAccount(num);
  try
    // retrieve and save
    Accounts[num-1].Prot.RetrieveRaw(msgnum,pMsg);
    AssignFile(f,IniPath+'temp.eml');
    Rewrite(f);
    Writeln(f,pMsg);
    CloseFile(f);
    // execute
    ExecuteFile(IniPath+'temp.eml','',IniPath,SW_NORMAL);
  finally
    if Accounts[num-1].Prot.Connected then
      Accounts[num-1].Prot.DisconnectWithQuit;
  end;
end;

function TfrmPopUMain.GetMessageHeader(num, msgnum: integer) : boolean;
var
  MsgSize : integer;
  MsgID : string;
  pHeader : PChar;
  MailItem : TMailItem;
  ret : boolean;
  split : cardinal;
  encodedSubject : AnsiString;
begin
  MsgHeader.Clear;
  // check for stop
  if FStop then
  begin
    Accounts[num-1].Status := Translate('User Aborted.')+HintSep+DateTimeToStr(Now);;
    Accounts[num-1].Error := True;
    Result := false;
    Exit;
  end;
  // get size
  MsgSize := Accounts[num-1].Prot.RetrieveMsgSize(msgnum) div 1024 +1;

  // get headers/body
  try
    if Options.GetBody then
    begin
      // get body
      if (Options.GetBodySize>0) and (MsgSize<=Options.GetBodySize) then
        ret := Accounts[num-1].Prot.RetrieveRaw(msgnum,pHeader)
      else begin
        if Options.GetBodyLines>0 then
          ret := Accounts[num-1].Prot.RetrieveTop(msgnum,Options.GetBodyLines,pHeader)
        else
          if Options.GetBodySize=0 then
            ret := Accounts[num-1].Prot.RetrieveRaw(msgnum,pHeader)
          else
            ret := Accounts[num-1].Prot.RetrieveHeader(msgnum,pHeader);
      end;
    end
    else begin
      // get headers
      ret := Accounts[num-1].Prot.RetrieveHeader(msgnum,pHeader);
    end;
  except
    on e : EIdEmailParseError do
    begin
       // ignore '@ outside address' error in Indy 9
       ret := true;
    end;
  end;
  if not ret then
  begin
    // error in retrieve.
    if not Options.IgnoreRetrieveErrors then
    begin
      ErrorMsg(num,'Retrieve Error:',Translate('Unable to Retrieve Message'),Options.IgnoreRetrieveErrors);
      Result := false;
      Exit;
    end;
  end;
  if Options.GetBody then
  begin
    split := Pos(#13#10#13#10,pHeader);
    if split>0 then
    begin
      MsgHeader.Headers.Text := RemoveBlankLines(Copy(pHeader,1,split));
      MsgHeader.Body.Text := Copy(pHeader,split+4,StrLen(pHeader)-split-4);
    end
    else begin
      MsgHeader.Headers.SetText(pHeader);
      MsgHeader.Headers.Text := RemoveBlankLines(MsgHeader.Headers.Text);
    end;
  end
  else begin
    MsgHeader.Headers.SetText(pHeader);
    // remove blank lines (shouldn't be any)
    MsgHeader.Headers.Text := RemoveBlankLines(MsgHeader.Headers.Text);
  end;
  Accounts[num-1].Prot.FreePChar(pHeader);
  encodedSubject := MsgHeader.Headers.Values['Subject'];
  try
    MsgHeader.ProcessHeaders;
  except
    on e : EIdEmailParseError do
    begin
      // ignore '@ outside address' error in Indy 9
      MsgHeader.From.Name := MsgHeader.Headers.Values['From'];
      MsgHeader.Date := GMTToLocalDateTime(MsgHeader.Headers.Values['Date']);
    end;
    on e: EConvertError do
    begin
      // ignore Indy '$?i' is not a valid integer value
      MsgHeader.From.Name := MsgHeader.Headers.Values['From'];
      MsgHeader.Recipients.EMailAddresses := MsgHeader.Headers.Values['To'];
      MsgHeader.Date := GMTToLocalDateTime(MsgHeader.Headers.Values['Date']);
    end;
    on e : Exception do
    begin
      if not Options.IgnoreRetrieveErrors then
      begin
        ErrorMsg(num,'Retrieve Error:',e.Message,Options.IgnoreRetrieveErrors);
        Result := false;
        Exit;
      end;
      MsgHeader.From.Name := MsgHeader.Headers.Values['From'];
    end;
  end;

  MsgID := FloatToStr(MsgHeader.Date) + MsgHeader.MsgID;

  // store header details in mail item
  MailItem := Accounts[num-1].Mail.Add;
  MailItem.MsgNum := msgnum;
  if MsgHeader.From.Name = '' then
    MailItem.From := MsgHeader.From.Text
  else
    MailItem.From := MsgHeader.From.Name;
  MailItem.Address := MsgHeader.From.Address;
  if MsgHeader.ReplyTo.Count>0 then
    MailItem.ReplyTo := MsgHeader.ReplyTo[0].Address;
  MailItem.MailTo := MsgHeader.Recipients.EMailAddresses;
  MailItem.Subject := DecodeHeader(encodedSubject);
  MailItem.Date := MsgHeader.Date;
  if int(MsgHeader.Date)=0 then
    MailItem.DateStr := Copy(MsgHeader.Headers.Values['Date'],1,16)
  else
    MailItem.DateStr := DateTimeToStr(MsgHeader.Date);
  MailItem.Size := MsgSize;
  if integer(MsgHeader.Priority) = 255 then
    MailItem.Priority := mpNormal
  else
    MailItem.Priority := TMessagePriority(MsgHeader.Priority);
  MailItem.HasAttachment := HasAttachment;
  MailItem.MsgID := MsgID;
  if Options.SafeDelete then
    MailItem.UID := GetUID(num,msgnum);
  MailItem.Viewed := Accounts[num-1].ViewedMsgIDs.IndexOf(MsgID) >= 0;
  MailItem.New := not MailItem.Viewed and not AnsiContainsStr(Accounts[num-1].MsgIDs,MsgID);
  MailItem.Important := False;
  MailItem.Spam := False;
  MailItem.TrayColor := -1;
  // rules
  CheckRules(num,msgnum);
  // notify plugin
  with MailItem do
  begin
    NotifyPluginMessage(From,MailTo,Subject,MsgHeader.Date,Viewed,New,Important,Spam);
    NotifyPluginMsgBody(MsgHeader.Headers.Text,MsgHeader.Body.Text);
  end;
  // show
  if Options.ShowWhileChecking and (tabMail.TabIndex+1=num) then
  begin
    ShowMailMessage(num,Accounts[num-1].Mail.Count-1);
    if not lvMail.Focused and (FSortColumn = NOSORT) then
      lvMail.Items[lvMail.Items.Count-1].MakeVisible(true);
  end;
  // success
  Result := True;
end;

procedure TfrmPopUMain.RefreshAccountStatus(num: integer);
var
  i : integer;
begin
  Accounts[num-1].MsgIDs := '';
  Accounts[num-1].Size := 0;
  Accounts[num-1].IgnoreCount := 0;
  for i := 0 to Accounts[num-1].Mail.Count-1 do
  begin
    Accounts[num-1].MsgIDs := Accounts[num-1].MsgIDs + Accounts[num-1].Mail[i].MsgID;
    Accounts[num-1].Size := Accounts[num-1].Size + Accounts[num-1].Mail[i].Size;
    if (Accounts[num-1].Mail[i].Ignored) or (Accounts[num-1].Mail[i].Spam) or
       (Accounts[num-1].Mail[i].ToDelete) then
      Inc(Accounts[num-1].IgnoreCount);
  end;
end;

procedure TfrmPopUMain.SetSelectedMailItemStatus(Statusses: TMailItemStatusSet; SetIt: boolean);
////////////////////////////////////////////////////////////////////////////////
// Set the specified Statusses on all the selected messages
var
  Item : TListItem;
  MailItem : TMailItem;
begin
  Item := lvMail.Selected;
  while Item <> nil do
  begin
    MailItem := SelectedMailItem(Item);
    if misProtected in Statusses then MailItem.Protect := SetIt;
    if misToBeDeleted in Statusses then MailItem.ToDelete := SetIt;
    if misIgnored in Statusses then MailItem.Ignored := SetIt;
    if misSpam in Statusses then MailItem.Spam := SetIt;
    if misImportant in Statusses then MailItem.Important := SetIt;
    if misHasAttachment in Statusses then MailItem.HasAttachment := SetIt;
    if misViewed in Statusses then MailItem.Viewed := SetIt;
    if misNew in Statusses then MailItem.New := SetIt;
    Item.ImageIndex := GetStatusIcon(MailItem);
    Item := lvMail.GetNextItem(Item, sdAll, [isSelected]);
  end;
  ShowStatusBar(tabMail.TabIndex+1);
end;

function TfrmPopUMain.CountSelectedMailItemStatus(Statusses: TMailItemStatusSet) : integer;
////////////////////////////////////////////////////////////////////////////////
// Count the selected message with satus
var
  Item : TListItem;
  MailItem : TMailItem;
begin
  Result := 0;
  Item := lvMail.Selected;
  while Item <> nil do
  begin
    MailItem := SelectedMailItem(Item);
    if      (misProtected in Statusses)     and MailItem.Protect       then Inc(Result)
    else if (misToBeDeleted in Statusses)   and MailItem.ToDelete      then Inc(Result)
    else if (misSpam in Statusses)          and MailItem.Spam          then Inc(Result)
    else if (misIgnored in Statusses)       and MailItem.Ignored       then Inc(Result)
    else if (misImportant in Statusses)     and MailItem.Important     then Inc(Result)
    else if (misHasAttachment in Statusses) and MailItem.HasAttachment then Inc(Result)
    else if (misViewed in Statusses)        and MailItem.Viewed        then Inc(Result)
    else if (misNew in Statusses)           and MailItem.New           then Inc(Result);
    Item := lvMail.GetNextItem(Item, sdAll, [isSelected]);
  end;
end;

//------------------------------------------------------------------- visual ---

procedure TfrmPopUMain.UpdateFonts();
var
  font : TFont;
  color : TColor;
begin
  // Global Font - Because PageControl uses a different font for the vertical
  // tabs, it's children are not set to inherit the font, so we have to
  // manually update the font for each of it's children items.
  font := Options.GlobalFont; // Use "Global" font pref
  frmPopUMain.Font := font;
  tsMail.Font := font;
  tsAccounts.Font := font;
  tsAbout.Font := font;
  tsOptions.Font := font;
  tsRules.Font := font;
  panMailButtons.Font := font;
  AccountsToolbar.Font := font;
  MailToolBar.Font := font;
  RulesToolbar.Font := font;

  // Bolded Global Font Items
  font.Style := font.Style + [fsBold];
  font.Size := font.Size + 2;
  lblOptionTitle.Font := font;
  font.Size := font.Size - 2;

  // Blue (Fake hyperlink) Global Font Items
  font.Style := font.Style - [fsBold];
  color := font.Color;
  font.Color := clBlue;
  lblHomepage.Font := font;
  font.Color := color;

  // Listbox Font
  lvMail.Font := Options.ListboxFont;
  lvMail.Color := Options.ListboxBg; //set bg color too

  // Vertical Font
  frmPopUMain.PageControl.Font := Options.VerticalFont;
end;

function TfrmPopUMain.GetTrayColor(num : integer) : TColor;
////////////////////////////////////////////////////////////////////////////////
// See if a message contains a color, otherwise use the account color
var
  i : integer;
begin
  for i := 0 to Accounts[num-1].Mail.Count-1 do
  begin
    if Accounts[num-1].Mail[i].TrayColor <> -1 then
    begin
      Result := Accounts[num-1].Mail[i].TrayColor;
      if Result = clLime then Result := $0000F900;  // tray color bug?
      Exit;
    end;
  end;
  Result := StringToColorDef2(Accounts[num-1].Color,clGray)
end;

procedure TfrmPopUMain.UpdateTrayIcon;
////////////////////////////////////////////////////////////////////////////////
// Calc number of messages and show in in the tray
var
  AccCnt : integer;
  AccName : string;
  Acc1,Acc2 : integer;
  NewCount : integer;
//  MailCount,UnviewedCount : integer;
  CircleColor : TColor;
  num : integer;
  AccountWithError : integer;
  NewHint : string;
begin
  // auto check off
  if not dm.mnuAutoCheck.Checked then
  begin
    dm.imlTray.Clear;
    dm.AddBitmap(dm.imlTray, dm.imlPop,popDisabled);
    dm.imlTray.GetIcon(0,TrayIcon.Icon);
    TrayIcon.CycleIcons := False;
    TrayIcon.Hint := 'PopTrayU '+Translate('AutoCheck disabled');
    TrayIcon.Refresh;
    Exit;
  end;

  // count number of accounts with mail
  AccCnt := 0;
  Acc1 := -1;
  Acc2 := -1;
  for num := 1 to NumAccounts do
  begin
    if (Options.ResetTray and (CountUnviewed(num) > 0)) or
       (not Options.ResetTray and (Accounts[num-1].Mail<>nil) and ((Accounts[num-1].Mail.Count - Accounts[num-1].IgnoreCount) > 0)) then
    begin
      Inc(AccCnt);
      AccName := Accounts[num-1].Name;
      if Acc1 = -1 then
        Acc1 := num
      else
        Acc2 := num;
    end;
  end;
  FAccountWithMail := Acc1;

  //update FTotalNew
  FTotalNew := CountAll(Options.ResetTray);

  // draw tray icon
  AccountWithError := FirstAccountWithError;
  if (FTotalNew > 0) then
  begin
    // check for animated option
    if Options.RotateIcon then
    begin
      // rotating icon
      dm.imlTray.Clear;
      for num := 1 to NumAccounts do
      begin
        if Accounts[num-1].Error and not Options.NoError then
        begin
          dm.AddBitmap(dm.imlTray,dm.imlPop,popError);
        end
        else begin
          NewCount := Accounts[num-1].Mail.Count - Accounts[num-1].IgnoreCount;
          if Options.ResetTray then
            NewCount := CountUnviewed(num);
          if NewCount > 0 then
          begin
            CircleColor := GetTrayColor(num);
            DrawTheIcon(NewCount,CircleColor);
            dm.imlTray.AddMasked(imgTray.Picture.Bitmap,clLime);
          end;
        end;
      end;
      // animated and rotating with 1 account
      if Options.Animated and (dm.imlTray.Count = 1) then
      begin
        dm.AddBitmap(dm.imlTray, dm.imlPop,popOpen)
      end;
      // set cycle
      TrayIcon.CycleInterval := 1500;
      TrayIcon.CycleIcons := dm.imlTray.Count > 1;
      if not TrayIcon.CycleIcons then
        dm.imlTray.GetIcon(0,TrayIcon.Icon);
    end
    else begin // not rotating
      // circle color
      if AccCnt=1 then
        CircleColor := GetTrayColor(Acc1)
      else begin
        if dm.imlPop = dm.imlPopTrueColor then
          CircleColor := MixColors(GetTrayColor(Acc1),GetTrayColor(Acc2))
        else
          CircleColor := clBlack;
      end;
      if Options.Animated then
      begin
        // animated
        dm.imlTray.Clear;
        if (AccountWithError>0) and not Options.NoError then
          dm.AddBitmap(dm.imlTray,dm.imlPop,popError)
        else begin
          DrawTheIcon(FTotalNew,CircleColor);
          dm.imlTray.AddMasked(imgTray.Picture.Bitmap,clLime);
        end;
        dm.AddBitmap(dm.imlTray, dm.imlPop,popOpen);
        TrayIcon.CycleInterval := 1500;
        TrayIcon.CycleIcons := True;
      end
      else begin
        // not animated
        dm.imlTray.Clear;
        if (AccountWithError>0) and not Options.NoError then
          dm.AddBitmap(dm.imlTray,dm.imlPop,popError)
        else begin
          DrawTheIcon(FTotalNew,CircleColor);
          dm.imlTray.AddMasked(imgTray.Picture.Bitmap,clLime);
        end;
        dm.imlTray.GetIcon(0,TrayIcon.Icon);
        TrayIcon.CycleIcons := False;
      end;
    end;
    if FTotalNew=1 then
      NewHint := IntToStr(FTotalNew) + ' '+Translate('message')
    else
      NewHint := IntToStr(FTotalNew) + ' '+Translate('messages');
    if AccCnt=1 then
      NewHint := NewHint + ' '+Translate('in')+' ' + AccName
    else
      NewHint := NewHint + ' '+Translate('in')+' ' +
                 IntToStr(AccCnt) + ' '+Translate('accounts.');
  end
  else begin
    // no emails tray
    dm.imlTray.Clear;
    if (AccountWithError>0) and not Options.NoError then
      dm.AddBitmap(dm.imlTray,dm.imlPop,popError)
    else
      dm.AddBitmap(dm.imlTray, dm.imlPop,popClosed);
    dm.imlTray.GetIcon(0,TrayIcon.Icon);
    TrayIcon.CycleIcons := False;
    NewHint := Translate('No new mail');
  end;
  // set hint
  if AccountWithError>0 then
    TrayIcon.Hint := Accounts[AccountWithError-1].Status
  else
    TrayIcon.Hint := NewHint + HintSep + Translate('Checked:')+' '+ FLastCheck;
  TrayIcon.Refresh;
end;

procedure TfrmPopUMain.ClearTrayIcon;
////////////////////////////////////////////////////////////////////////////////
// Clear the number of messages in the tray icon
begin
  dm.imlTray.Clear;
  dm.AddBitmap(dm.imlTray, dm.imlPop,popClosed);
  dm.imlTray.GetIcon(0,TrayIcon.Icon);
  TrayIcon.CycleIcons := False;
  TrayIcon.Refresh;
end;

procedure TfrmPopUMain.PlayNotify(num: integer);
begin
  if (Accounts[num-1].Mail.Count > Accounts[num-1].IgnoreCount) and
     not(actSuspendSound.Checked) then
  begin
    // play wave
    if FNotifyWav <> '' then
      PlayWav(FNotifyWav)
    else begin
      if Accounts[num-1].Sound <> '' then
        PlayWav(Accounts[num-1].Sound)
      else
        PlayWav(Options.DefSound);
    end;
    // show form if option set
    if Options.ShowForm then
    begin
      PageControl.ActivePageIndex := 0;
      ShowForm(false);
    end;
  end;
  FNotified := True;
end;

procedure TfrmPopUMain.EnableFields(EnableIt: Boolean);
////////////////////////////////////////////////////////////////////////////////
// Enable / Disable the fields
begin
  EnableControl(edName,EnableIt);
  EnableControl(edServer,EnableIt);
  EnableControl(cmbProtocol,EnableIt);
  EnableControl(edPort,EnableIt);
  EnableControl(edLogin,EnableIt);
  EnableControl(edPassword,EnableIt);
  EnableControl(edAccountProgram,EnableIt);
  EnableControl(edSound,EnableIt);
  EnableControl(colAccount,EnableIt);
  chkAccEnabled.Enabled := EnableIt;
  actTestAccount.Enabled := EnableIt;
  actDeleteAccount.Enabled := EnableIt;
end;

procedure TfrmPopUMain.SetColumnMenuCheckMarks;
begin
  // visible columns
  dm.mnuColFrom.Checked := lvMail.Columns[0].Width <> 0;
  dm.mnuColTo.Checked := lvMail.Columns[1].Width <> 0;
  dm.mnuColSubject.Checked := lvMail.Columns[2].Width <> 0;
  dm.mnuColDate.Checked := lvMail.Columns[3].Width <> 0;
  dm.mnuColSize.Checked := lvMail.Columns[4].Width <> 0;
  // sort column
  dm.mnuSortMessageStatus.Checked := FSortColumn = -2;
  dm.mnuSortFrom.Checked := FSortColumn = 0;
  dm.mnuSortTo.Checked := FSortColumn = 1;
  dm.mnuSortSubject.Checked := FSortColumn = 2;
  dm.mnuSortDate.Checked := FSortColumn = 3;
  dm.mnuSortSize.Checked := FSortColumn = 4;
  dm.mnuSortNoSort.Checked := FSortColumn = -1;
  actNoSort.Checked := FSortColumn = -1;
end;

procedure TfrmPopUMain.Balloon(head,info: string; IconType : TBalloonHintIcon; TimeoutSecs : integer);
begin
  if (Win32MajorVersion >= 5)  // win2000 & winXP
     or ((Win32Platform <> VER_PLATFORM_WIN32_NT) and (Win32MajorVersion = 4) and (Win32MinorVersion >= 90))  // winME
  then
  begin
    // balloon info
    if length(info) > 255 then info := copy(info,1,250) + ' ...';
    if Copy(head,1,8)='PopTrayU' then
      head := Translate(head)
    else
      head := 'PopTrayU - '+Translate(head);
    TrayIcon.ShowBalloonHint(head,info,IconType,TimeoutSecs);
  end
  else begin
    // msgbox info
    //if not FMinimized then
    begin
      SetForegroundWindow(Handle);
      if Assigned(FInfoForm) then
        FInfoForm.Close;
      FInfoForm := TranslateMsg(info,mtInformation,[mbOK],0);
    end;
  end;
end;

procedure TfrmPopUMain.ShowInfo(ShowOnlyWithMail : boolean = False);
var
  info : string;
  num,i : integer;
begin
  if not Assigned(Accounts[0].Mail) then
    Exit;
  if Options.AdvInfo then
  begin
    // advanced info form
    if not FShowingInfo then
    begin
      frmInfo := TfrmInfo.Create(self);
      FShowingInfo := True;
    end;
    // populate with new messages
    frmInfo.lvInfoNew.Clear;
    for num := 1 to NumAccounts do
    begin
      for i := 0 to Accounts[num-1].Mail.Count-1 do
      begin
        if Accounts[num-1].Mail[i].New and
           not Accounts[num-1].Mail[i].Ignored and
           not Accounts[num-1].Mail[i].ToDelete then
        begin
          with frmInfo.lvInfoNew.Items.Add do
          begin
            Caption := Accounts[num-1].Name;
            SubItems.Add(Accounts[num-1].Mail[i].From);
            SubItems.Add(Accounts[num-1].Mail[i].Subject);
            SubItems.Add(IntToStr(Accounts[num-1].Mail[i].Size) + ' ' + FKB);
            ImageIndex := GetStatusIcon(Accounts[num-1].Mail[i]);
          end;
        end;
      end;
    end;
    // summary
    frmInfo.lvInfoSummary.Clear;
    for num := 1 to NumAccounts do
    begin
      if (Accounts[num-1].Enabled) and
         (not ShowOnlyWithMail or (Accounts[num-1].Mail.Count > 0)) then
      begin
        with frmInfo.lvInfoSummary.Items.Add do
        begin
          Caption := Accounts[num-1].Name;
          SubItems.Add(IntToStr(Accounts[num-1].Mail.Count));
          SubItems.Add(IntToStr(CountNew(num)));
          SubItems.Add(IntToStr(Accounts[num-1].Size)+ ' ' + FKB);
          ImageIndex := num-1;
        end;
      end;
    end;
    TranslateForm(frmInfo);
    // show info form
    frmInfo.Left := Screen.WorkAreaLeft + Screen.WorkAreaWidth - frmInfo.Width - 16;
    frmInfo.Top := Screen.WorkAreaTop + Screen.WorkAreaHeight - frmInfo.Height - 4;
    frmInfo.AlphaBlendValue := 0;
    frmInfo.Show;
    // blend it in
    i := 0;
    while i <= 255 do
    begin
      frmInfo.AlphaBlendValue := i;
      Inc(i,10);
      Application.ProcessMessages;
    end;
    frmInfo.AlphaBlendValue := 255;
  end
  else begin
    // normal info
    info := '';
    for num := 1 to NumAccounts do
    begin
      if (Accounts[num-1].Enabled) and
          (not ShowOnlyWithMail or (Accounts[num-1].Mail.Count > 0)) then
      begin
        info := info + ExpandWidth(Accounts[num-1].Name,75) + #9;
        info := info + IntToStr(Accounts[num-1].Mail.Count) + ' '+Translate('msgs.') + #9;
        info := info + ' (' + IntToStr(CountNew(num)) + ' ' + Translate('new') + ') ' + #9;
        info := info + IntToStr(Accounts[num-1].Size) + ' ' + FKB + #13#10;
      end;
    end;
    Balloon('Mail Info',info,bitInfo,30);
  end;
end;

procedure TfrmPopUMain.ShowMessages;
begin
  PageControl.ActivePageIndex := 0;
  ShowForm;
end;

procedure TfrmPopUMain.DrawTheIcon(NewCount: integer; CircleColor: TColor);
var
  i : integer;
begin
  with imgTray.Canvas do
  begin
    Brush.Style := bsSolid;
    Brush.Color := clLime;
    Pen.Color := Brush.Color;
    Rectangle(ClipRect);
    // envelope
    dm.imlPop.Draw(imgTray.Canvas, 0,0, popOpen, dsTransparent,itImage);
    // draw circle or rectangle
    Brush.Style := bsSolid;
    Brush.Color := CircleColor;
    Pen.Color := Brush.Color;
    if NewCount > 9 then
      Rectangle(3,1,15,12)  //Rectangle(2,0,16,13)
    else
      Ellipse(3,1,15,12);
    // font
    Font.Name := 'Arial';
    Font.Style := [fsBold];
    if DarkColor(Brush.Color) then
      Font.Color := clWhite
    else
      Font.Color := clBlack;
    Font.Size := 7;
    Brush.Style := bsClear;
    // number
    i := TextWidth(IntToStr(NewCount)) div 2;
    TextOut(9 - i,1,IntToStr(NewCount));
  end;
end;

procedure TfrmPopUMain.DrawCheckingIcon(num : integer);
var
  CircleColor,TransColor : TColor;
  bmp : TBitmap;
begin
  // none
  if (Options.CheckingIcon = ciNone) then
    Exit;
  // lightning bolt
  if (Options.CheckingIcon = ciLightning) then
  begin
    dm.imlPop.GetIcon(popBusy,TrayIcon.Icon);
    TrayIcon.CycleIcons := False;
    Exit;
  end;
  // star
  if (Options.CheckingIcon = ciStar) or (Options.CheckingIcon = ciAnimatedStar) then
  begin
    bmp := TBitmap.Create;
    bmp.Transparent := True;
    CircleColor := StringToColorDef2(Accounts[num-1].Color,clGray);
    TransColor := clLime;
    with imgTray.Canvas do
    begin
      Brush.Style := bsSolid;
      Brush.Color := TransColor;
      Pen.Color := Brush.Color;
      dm.imlTray.Clear;
      // busy 1
      Rectangle(ClipRect);
      dm.imlPop.Draw(imgTray.Canvas, 0,0, popClosed, dsTransparent,itImage);
      dm.imlPop.GetBitmap(popBusy1,bmp);
      RecolorBitmap(bmp,CircleColor);
      imgTray.Canvas.Draw(0,0,bmp);
      dm.imlTray.AddMasked(imgTray.Picture.Bitmap,TransColor);
      dm.imlTray.GetIcon(0,TrayIcon.Icon);
      TrayIcon.CycleIcons := False;
      // animated star
      if (Options.CheckingIcon = ciAnimatedStar) then
      begin
        // busy 2
        Rectangle(ClipRect);
        dm.imlPop.Draw(imgTray.Canvas, 0,0, popClosed, dsTransparent,itImage);
        dm.imlPop.GetBitmap(popBusy2,bmp);
        RecolorBitmap(bmp,CircleColor);
        imgTray.Canvas.Draw(0,0,bmp);
        dm.imlTray.AddMasked(imgTray.Picture.Bitmap,TransColor);
        // busy 3
        Rectangle(ClipRect);
        dm.imlPop.Draw(imgTray.Canvas, 0,0, popClosed, dsTransparent,itImage);
        dm.imlPop.GetBitmap(popBusy3,bmp);
        RecolorBitmap(bmp,CircleColor);
        imgTray.Canvas.Draw(0,0,bmp);
        dm.imlTray.AddMasked(imgTray.Picture.Bitmap,TransColor);
        // tray animation settings
        TrayIcon.CycleInterval := 100;
        TrayIcon.CycleIcons := True;
      end;
    end; //with
    bmp.Free;
  end;
end;

procedure TfrmPopUMain.ResetToolbar;
var
  i : integer;
begin
  if Assigned(MailToolBar.ActionClient) then
    for i := 0 to MailToolBar.ActionClient.Items.Count-1 do
      MailToolBar.ActionClient.Items[i].Control.Perform(CM_MOUSELEAVE, 0, 0);
end;

// picks the correct type of icon for the mail message based on the type of
// message (eg: new, high priority, read, spam, etc)
function TfrmPopUMain.GetStatusIcon(MailItem: TMailItem): integer;
begin
  Result := Ord(MailItem.Priority);
  if MailItem.HasAttachment then Result := mAttachment;
  if MailItem.New then Result := mNew;
  if MailItem.New and MailItem.HasAttachment then Result := mNewAttach;
  if MailItem.Protect then
  begin
    if MailItem.HasAttachment then
       if MailItem.New then
         Result := mProtectNewAttach
       else
         Result := mProtectAttach
    else if MailItem.New then
      Result := mProtectNew
    else
      Result := mProtect;
  end;
  if MailItem.Ignored and not MailItem.Protect then Result := mIgnored;
  if MailItem.Important then Result := mImportant;
  if MailItem.Spam then Result := mSpam;
  if MailItem.ToDelete then Result := mToDelete;
end;

////////////////////////////////////////////////////////////////////////////////
// Show an Error Message Dialog (eg: Socket Error connecting to get mail
procedure TfrmPopUMain.ErrorMsg(num: integer; Heading,Msg: string; IgnoreError : boolean);
begin
  Accounts[num-1].Error := True;
  Accounts[num-1].Status := Translate(Heading)+' '+Trim(Msg)+HintSep+DateTimeToStr(Now);
  ShowIcon(num,itError);
  // if the user has not opted through saved options to ignore error dialogs
  if not IgnoreError then
  begin
    if not FMinimized and not Options.ShowErrorsInBalloons then
      // Show error message as a modal dialog
      ShowTranslatedDlg(Translate(Heading)+#13#10#13#10+Trim(Msg), mtError, [mbOK], 0,Translate('Error checking')+' '+Accounts[num-1].Name)
    else
      // Show error message as a balloon popup on the tray icon
      Balloon(Translate(Heading)+' ('+ Accounts[num-1].Name+')',Trim(msg),bitError,15);
  end;
end;

function IntToStrSpacer(Value : integer) : string;
begin
  if Value = 0 then
    Result := ''
  else begin
    if Value > 999 then
      Result := '     ' + Format('%1.1fK', [Value/1000])
    else
      Result := '      ' + IntToStr(Value);
  end;
end;

procedure TfrmPopUMain.ShowStatusBar(num : integer);
var
  mailcount : integer;
begin
  StatusBar.Panels[0].Text := ' '+Accounts[num-1].Status;
  if StatusBar.Canvas.TextWidth(Accounts[num-1].Status) > StatusBar.Panels[0].Width then
    StatusBar.Hint := Accounts[num-1].Status
  else
    StatusBar.Hint := '';

  if Options.HideViewed then
    mailcount := CountUnviewed(num)
  else
    mailcount := Accounts[num-1].Mail.Count;

  StatusBar.Panels[1].Text := IntToStrSpacer(mailcount);
  StatusBar.Panels[2].Text := IntToStrSpacer(CountStatus([misSpam],num));
  StatusBar.Panels[3].Text := IntToStrSpacer(CountStatus([misToBeDeleted],num));

  StatusBar.Panels[4].Text := IntTostr(Accounts[num-1].Size) + ' ' + FKB;
end;

procedure TfrmPopUMain.LoadSkin;
var
  skinname : string;
  skin,bmp : TBitmap;
  i,y : integer;
begin
  skinname := ExtractFilePath(IniName)+'PopTray.skin';
  if FileExists(skinname) then
  begin
    try
      skin := TBitmap.Create;
      skin.LoadFromFile(skinname);
      bmp := TBitmap.Create;
      bmp.Width := 16;
      bmp.Height := 16;
      bmp.PixelFormat := skin.PixelFormat;
      bmp.Canvas.CopyMode := cmSrcCopy;
      // toolbar actions
      y := 0;
      for i := 0 to dm.imlActions.Count-1 do
      begin
          bmp.Canvas.CopyRect(rect(0,0,16,16),skin.Canvas,rect(50+i*16,y,50+i*16+16,y+16));
          dm.imlActions.ReplaceMasked(i,bmp,clFuchsia);
      end;
      // listview mail
      y := 17;
      for i := 0 to dm.imlListView.Count-1 do
      begin
          bmp.Canvas.CopyRect(rect(0,0,16,16),skin.Canvas,rect(50+i*16,y,50+i*16+16,y+16));
          dm.imlListView.ReplaceMasked(i,bmp,clFuchsia);
      end;
      // tray
      y := 34;
      for i := 0 to dm.imlPopTrueColor.Count-1 do
      begin
          bmp.Canvas.CopyRect(rect(0,0,16,16),skin.Canvas,rect(50+i*16,y,50+i*16+16,y+16));
          dm.imlPopTrueColor.ReplaceMasked(i,bmp,clFuchsia);
      end;
      // options
      y := 51;
      bmp.Width := 24;
      bmp.Height := 24;
      for i := 0 to dm.imlOptions.Count-1 do
      begin
          bmp.Canvas.CopyRect(rect(0,0,24,24),skin.Canvas,rect(50+i*24,y,50+i*24+24,y+24));
          dm.imlOptions.ReplaceMasked(i,bmp,clFuchsia);
      end;
      // refresh tray
      dm.imlTray.Assign(dm.imlPopTrueColor);
      dm.imlTray.GetIcon(0,TrayIcon.Icon);
    except
      // ignore
    end;
  end;
end;

//-------------------------------------------------------------------- rules ---

procedure TfrmPopUMain.CreateRegExpr;
begin
  if not Assigned(FRegExpr) then
  begin
    FRegExpr := TRegExpr.Create;
    FRegExpr.ModifierS := False;
    FRegExpr.ModifierM := True;
    FRegExpr.ModifierI := True;
  end;
end;

function TfrmPopUMain.CheckRegExpr(area : string; text : string) : boolean;
begin
  CreateRegExpr;
  try
    FRegExpr.Expression := text;
    Result := FRegExpr.Exec(area);
  except
    on E : ERegExpr do
      // ignore error
      Result := False;
    else
      raise;
  end;
end;

procedure TfrmPopUMain.TestRegExpr(text : string);
begin
  CreateRegExpr;
  try
    FRegExpr.Expression := text;
    FRegExpr.Compile;
    ShowTranslatedDlg('Regular Expression Syntax OK',mtInformation,[mbOK],0);
  except
    on E : ERegExpr do
      ShowTranslatedDlg(StrAfter(E.Message,': '),mtError,[mbOK],0);
    else
      raise;
  end;
end;

function TfrmPopUMain.CheckRuleRow(area : string; comp : TRuleCompare; text : string; rulenot : boolean) : boolean;
////////////////////////////////////////////////////////////////////////////////
//  Check if a specific rule compares
begin
  case comp of
    rcContains    : Result := AnsiContainsText(area,text);
    rcEquals      : Result := AnsiSameText(area,text);
    rcWildcard    : Result := CheckWildCard(area,text);
    rcEmpty       : Result := area = '';
    rcRegExpr     : Result := CheckRegExpr(area,text);
  else
    Result := false;
  end;
  if rulenot then
    Result := not Result;
end;

function TfrmPopUMain.GetRuleAreaText(RuleArea : TRuleArea) : string;
begin
  case RuleArea of
      raFrom        : Result := MsgHeader.From.Text;
      raSubject     : Result := MsgHeader.Subject;
      raTo          : Result := MsgHeader.Headers.Values['To']; //Msg.Recipients.EMailAddresses
      raCC          : Result := MsgHeader.CCList.EMailAddresses;
      raFromName    : Result := MsgHeader.From.Name;
      raFromAddress : Result := MsgHeader.From.Address;
      raBody        : Result := MsgHeader.Body.Text;
    else
      Result := MsgHeader.Headers.Text;
    end;
end;

function TfrmPopUMain.CheckRule(rulenum : integer; MailItem : TMailItem) : boolean;
var
  i : integer;
begin
  if Rules[rulenum].Operator = roAll then
  begin
    // and
    for i := 0 to Rules[rulenum].Rows.Count-1 do
    begin
      if Rules[rulenum].Rows[i].Area = raStatus then
      begin
        if (TMailItemStatus(StrToInt(Rules[rulenum].Rows[i].Text)) in MailItem.GetStatusSet) = Rules[rulenum].Rows[i].RuleNot then
        begin
          Result := False;
          Exit;
        end;
      end
      else begin
        if not CheckRuleRow(GetRuleAreaText(Rules[rulenum].Rows[i].Area),
          Rules[rulenum].Rows[i].Compare,Rules[rulenum].Rows[i].Text,
          Rules[rulenum].Rows[i].RuleNot) then
        begin
          Result := False;
          Exit;
        end;
      end;
    end;
    Result := True;
  end
  else begin
    // or
    for i := 0 to Rules[rulenum].Rows.Count-1 do
    begin
      if Rules[rulenum].Rows[i].Area = raStatus then
      begin
        if (TMailItemStatus(StrToInt(Rules[rulenum].Rows[i].Text)) in MailItem.GetStatusSet) = not(Rules[rulenum].Rows[i].RuleNot) then
        begin
          Result := True;
          Exit;
        end;
      end
      else begin
        if CheckRuleRow(GetRuleAreaText(Rules[rulenum].Rows[i].Area),
          Rules[rulenum].Rows[i].Compare,Rules[rulenum].Rows[i].Text,
          Rules[rulenum].Rows[i].RuleNot) then
        begin
          Result := True;
          Exit;
        end;
      end;
    end;
    Result := False;
  end;
end;

procedure TfrmPopUMain.CheckRules(num,msgnum : integer);
////////////////////////////////////////////////////////////////////////////////
// Check all the rules and perform action
var
  i : integer;
  RuleEXE,ExeName,ExeParam : string;
  MailItem : TMailItem;
begin
  MailItem := Accounts[num-1].Mail.FindMessage(msgnum);
  // white list
  if InWhiteBlackList(wbWhite,MsgHeader.From.Address) and (MsgHeader.From.Address <> '') then
    MailItem.Protect := True;
  // rules for protect first
  for i := 0 to Rules.Count-1 do
  begin
    if Rules[i].Enabled and
       ( (Rules[i].Account = 0) or (Rules[i].Account = num) ) and
       ( not(Rules[i].New) or (Rules[i].New and MailItem.New) ) then
    begin
      if Rules[i].Protect then
      begin
        if CheckRule(i,MailItem) then
        begin
          MailItem.Protect := True;
          if Rules[i].Log then
            LogRule('PROTECT',Rules[i].Name,MsgHeader.From.Text,MsgHeader.Subject,Accounts[num-1].Name);
        end;
      end;
    end;
  end;
  // black list
  if InWhiteBlackList(wbBlack,MsgHeader.From.Address) then
  begin
    if (MsgHeader.From.Address <> '') and not MailItem.Protect and not MailItem.Important then
    begin
      if Options.BlackListSpam then
      begin
        MailItem.Spam := True;
        MailItem.Ignored := True;
        LogRule('SPAM','BlackList',MsgHeader.From.Text,MsgHeader.Subject,Accounts[num-1].Name);
      end
      else begin
        MailItem.ToDelete := True;
        MailItem.Ignored := True;
        LogRule('DELETE','BlackList',MsgHeader.From.Text,MsgHeader.Subject,Accounts[num-1].Name);
      end;
    end;
  end;
  // other rules
  for i := 0 to Rules.Count-1 do
  begin
    // enabled?
    if Rules[i].Enabled and
       ( (Rules[i].Account = 0) or (Rules[i].Account = num) ) and
       ( not(Rules[i].New) or (Rules[i].New and MailItem.New) ) then
    begin
      // check it against the rule
      if CheckRule(i,MailItem) then
      begin
        // wav
        if Rules[i].Wav <> '' then
        begin
          if not FNotified then
            FNotifyWav := Rules[i].Wav;
          FNotified := True;
          if Rules[i].Log then
            LogRule('WAV',Rules[i].Name,MsgHeader.From.Text,MsgHeader.Subject,Accounts[num-1].Name);
        end;
        // delete
        if Rules[i].Delete then
        begin
          if not MailItem.ToDelete and
             not MailItem.Protect and
             not MailItem.Important then
          begin
            MailItem.ToDelete := True;
            if Rules[i].Log then
              LogRule('DELETE',Rules[i].Name,MsgHeader.From.Text,MsgHeader.Subject,Accounts[num-1].Name);
          end;
        end;
        // ignore
        if Rules[i].Ignore then
        begin
          MailItem.Ignored := True;
          if Rules[i].Log then
            LogRule('IGNORE',Rules[i].Name,MsgHeader.From.Text,MsgHeader.Subject,Accounts[num-1].Name);
        end;
        // exe
        if Rules[i].EXE <> '' then
        begin
          // replace macros
          RuleEXE := Rules[i].EXE;
          RuleEXE := AnsiReplaceText(RuleEXE,'%ACCOUNT%',Accounts[num-1].Name);
          RuleEXE := AnsiReplaceText(RuleEXE,'%ACCOUNTNUM%',IntToStr(num));
          RuleEXE := AnsiReplaceText(RuleEXE,'%FROM%',MailItem.From);
          RuleEXE := AnsiReplaceText(RuleEXE,'%FROMADDRESS%',MailItem.Address);
          RuleEXE := AnsiReplaceText(RuleEXE,'%TO%',MailItem.MailTo);
          RuleEXE := AnsiReplaceText(RuleEXE,'%SUBJECT%',MailItem.Subject);
          RuleEXE := AnsiReplaceText(RuleEXE,'%DATE%',MailItem.DateStr);
          RuleEXE := AnsiReplaceText(RuleEXE,'%SIZE%',IntToStr(MailItem.Size));
          RuleEXE := AnsiReplaceText(RuleEXE,'%MSGID%',MailItem.MsgID);
          RuleEXE := AnsiReplaceText(RuleEXE,'%UID%',MailItem.UID);
          RuleEXE := AnsiReplaceText(RuleEXE,'%MSGNUM%',IntToStr(msgnum));
          // execute
          SplitExeParams(RuleEXE,ExeName,ExeParam);
          ExecuteFile(ExeName,ExeParam,'',SW_RESTORE);
          if Rules[i].Log then
            LogRule('EXE',Rules[i].Name,MsgHeader.From.Text,MsgHeader.Subject,Accounts[num-1].Name);
        end;
        // important
        if Rules[i].Important then
        begin
          MailItem.Important := True;
          MailItem.Spam := False;
          FImportant := True;
          if Rules[i].Log then
            LogRule('IMPORTANT',Rules[i].Name,MsgHeader.From.Text,MsgHeader.Subject,Accounts[num-1].Name);
        end;
        // spam
        if Rules[i].Spam and
           not MailItem.Protect and not MailItem.Important then
        begin
          MailItem.Spam := True;
          if Rules[i].Log then
            LogRule('SPAM',Rules[i].Name,MsgHeader.From.Text,MsgHeader.Subject,Accounts[num-1].Name);
        end;
        // tray color
        if Rules[i].TrayColor <> -1 then
        begin
          MailItem.TrayColor := Rules[i].TrayColor;
          if Rules[i].Log then
            LogRule('TRAYCOLOR',Rules[i].Name,MsgHeader.From.Text,MsgHeader.Subject,Accounts[num-1].Name);
        end;
      end;
    end; //enabled
  end;
end;

const
  COL_AREA = 0;
  COL_COMPARE = 1;
  COL_TEXT = 2;
  COL_NOT = 3;

procedure TfrmPopUMain.SetupRuleGrid;
begin
  with grdRule do
  begin
    RowHeights[0] := 17;
    Cells[COL_AREA,0] := Translate('Area');
    ColWidths[COL_AREA] := 91;
    Cells[COL_COMPARE,0] := Translate('Compare');
    ColWidths[COL_COMPARE] := 74;
    Cells[COL_TEXT,0] := Translate('Text');
    ColWidths[COL_TEXT] := 141;
    Cells[COL_NOT,0] := Translate('Not');
    ColWidths[COL_NOT] := 25;
    panRuleEdit.Top := grdRule.Top + grdRule.CellRect(0,0).Bottom + 1;
    panRuleDetailResize(panRuleDetail);
  end;
end;

procedure TfrmPopUMain.ShowRuleEdit(ACol,ARow : integer);
var
  isstatus : boolean;
begin
  panRuleEdit.Hide;
  grdRule.OnSelectCell := nil;
  grdRule.Row := ARow;
  grdRule.OnSelectCell := grdRuleSelectCell;
  // set edits
  FRuleChanged := False;
  cmbRuleArea.ItemIndex := cmbRuleArea.Items.IndexOf(grdRule.Cells[COL_AREA,ARow]);
  isstatus := (cmbRuleArea.ItemIndex > -1) and (TRuleArea(cmbRuleArea.ItemIndex) = raStatus);
  if isstatus then
    cmbRuleStatus.ItemIndex := cmbRuleStatus.Items.IndexOf(grdRule.Cells[COL_TEXT,ARow])
  else
    edRuleText.Text := grdRule.Cells[COL_TEXT,ARow];
  cmbRuleAreaChange(nil);
  cmbRuleComp.ItemIndex := cmbRuleComp.Items.IndexOf(grdRule.Cells[COL_COMPARE,ARow]);
  cmbRuleCompChange(nil);
  chkRuleNot.Checked := grdRule.Cells[COL_NOT,ARow] = RULE_NOT;
  FRuleChanged := True;
  // show
  panRuleEdit.Top := grdRule.Top + grdRule.CellRect(ACol,ARow).Top;
  if ARow > 1 then panRuleEdit.Top := panRuleEdit.Top - 1;
  panRuleEdit.Show;
  // focus
  case ACol of
    COL_AREA    : cmbRuleArea.SetFocus;
    COL_COMPARE : if cmbRuleComp.Enabled then cmbRuleComp.SetFocus;
    COL_TEXT    : begin
                    if isstatus then
                      cmbRuleStatus.SetFocus
                    else begin
                      edRuleText.SelectAll;
                      edRuleText.SetFocus;
                    end;
                  end;
    COL_NOT     : chkRuleNot.SetFocus;
  end;
end;

procedure TfrmPopUMain.ShowRule(selected: integer);
var
  i : integer;
  isstatus : boolean;
begin
  // show the selected rule in the editboxes
  if selected > -1 then
  begin
    SetupRuleGrid;
    FRuleChanged := False;
    // visible
    panRuleDetail.Visible := True;
    actRuleDelete.Enabled := True;
    btnRuleDown.Enabled := lstRules.ItemIndex < lstRules.Count-1;
    btnRuleUp.Enabled := lstRules.ItemIndex > 0;
    // rule detail
    edRuleName.Tag := 1; // bug in WinNT
    edRuleName.Text := Rules[selected].Name;;
    edRuleName.Tag := 0;
    chkRuleEnabled.Checked := Rules[selected].Enabled;
    chkRuleNew.Checked := Rules[selected].New;
    cmbRuleAccount.ItemIndex := Rules[selected].Account;
    cmbRuleOperator.ItemIndex := Ord(Rules[selected].Operator);

    // edit row
    grdRule.OnSelectCell := nil;
    grdRule.OnTopLeftChanged := nil;
    grdRule.Row := 1;
    grdRule.RowCount := Rules[selected].Rows.Count + 1;
    grdRule.OnSelectCell := grdRuleSelectCell;
    grdRule.OnTopLeftChanged := grdRuleTopLeftChanged;
    cmbRuleArea.ItemIndex := Ord(Rules[selected].Rows[0].Area);
    if (cmbRuleArea.ItemIndex > -1) and (TRuleArea(cmbRuleArea.ItemIndex) = raStatus) then
      cmbRuleStatus.ItemIndex := StrToInt(Rules[selected].Rows[0].Text)
    else
      edRuleText.Text := Rules[selected].Rows[0].Text;
    cmbRuleAreaChange(nil);
    cmbRuleComp.ItemIndex := Ord(Rules[selected].Rows[0].Compare);
    cmbRuleCompChange(nil);
    chkRuleNot.Checked := Rules[selected].Rows[0].RuleNot;
    // rows grid
    for i := 0 to Rules[selected].Rows.Count-1 do
    begin
      grdRule.Cells[COL_AREA,i+1] := Translate(RuleAreaToStr(Rules[selected].Rows[i].Area));
      grdRule.Cells[COL_COMPARE,i+1] := Translate(RuleCompareToStr(Rules[selected].Rows[i].Compare));
      isstatus :=  StrToRuleArea(grdRule.Cells[COL_AREA,i+1]) = raStatus;
      if isstatus then
        grdRule.Cells[COL_TEXT,i+1] := cmbRuleStatus.Items[StrToInt(Rules[selected].Rows[i].Text)]
      else
        grdRule.Cells[COL_TEXT,i+1] := Rules[selected].Rows[i].Text;
      if Rules[selected].Rows[i].RuleNot then
        grdRule.Cells[COL_NOT,i+1] := RULE_NOT
      else
        grdRule.Cells[COL_NOT,i+1] := '';
    end;

    // actions
    chkRuleWav.Checked := Rules[selected].Wav <> '';
    edRuleWav.Text := Rules[selected].Wav;
    chkRuleDelete.Checked := Rules[selected].Delete;
    chkRuleIgnore.Checked := Rules[selected].Ignore;
    chkRuleEXE.Checked := Rules[selected].EXE <> '';
    chkRuleImportant.Checked := Rules[selected].Important;
    chkRuleSpam.Checked := Rules[selected].Spam;
    chkRuleProtect.Checked := Rules[selected].Protect;
    edRuleEXE.Text := Rules[selected].EXE;
    chkRuleLog.Checked := Rules[selected].Log;
    colRuleTrayColor.Selected := Rules[selected].TrayColor;
    chkRuleTrayColor.Checked := Rules[selected].TrayColor <> -1;
    Application.ProcessMessages;
    FRuleChanged := True;
  end
  else begin
    actRuleDelete.Enabled := False;
    panRuleDetail.Visible := False;
    btnRuleDown.Enabled := False;
    btnRuleUp.Enabled := False;
  end;
end;

procedure TfrmPopUMain.DeleteRule(rulenum: integer);
begin
  Rules.Delete(rulenum);
  // list box
  lstRules.Items.Delete(rulenum);
  if rulenum > lstRules.Items.Count-1 then
    lstRules.ItemIndex := lstRules.Items.Count-1
  else
    lstRules.ItemIndex := rulenum;
  ShowRule(lstRules.ItemIndex);
end;

procedure TfrmPopUMain.LogRule(Action,Name,From,Subject,Account : string);
////////////////////////////////////////////////////////////////////////////////
// Write the log action to a tab-delimited file
var
  fl : TextFile;
begin
  if Options.LogRules then
  begin
    AssignFile(fl,LogRuleName);
    if FileExists(LogRuleName) then
      Append(fl)
    else begin
      Rewrite(fl);
      WriteLn(fl,'Date',#9,'Action',#9,'RuleName',#9,'From',#9,'Subject',#9,'Account');
    end;
    Subject := AnsiReplaceStr(Subject,#9,' ');
    WriteLn(fl,DateTimeToStr(Now),#9,Action,#9,Name,#9,From,#9,Subject,#9,Account);
    CloseFile(fl);
  end;
end;

procedure TfrmPopUMain.EnableRuleButtons;
begin
  if FRuleChanged then
  begin
    btnSaveRules.Enabled := True;
    btnCancelRule.Enabled := True;
  end;
end;

procedure TfrmPopUMain.FillRuleAccounts;
var
  num,save : integer;
begin
  // fill rules account dropdown
  save := cmbRuleAccount.ItemIndex;
  cmbRuleAccount.Items.Text := Translate('All Accounts');
  for num := 1 to NumAccounts do
    cmbRuleAccount.Items.Add(Accounts[num-1].Name);
  cmbRuleAccount.ItemIndex := save;
end;

function TfrmPopUMain.AddToWhiteBlackList(WhiteBlack: TWhiteBlack) : boolean;
////////////////////////////////////////////////////////////////////////////////
// Add selected from addresses to White List
var
  emails : TStringList;
begin
  Result := false;
  if lvMail.Selected = nil then
  begin
    ShowTranslatedDlg(Translate('No message selected.'), mtError, [mbOK], 0);
    Exit;
  end;

  emails := TStringList.Create;
  try
    // collect selected emails
    GetSelectedMails(raFromAddress,emails);

    // add to either list
    if (emails.Count > 0) then
    begin
      if WhiteBlack = wbWhite then
      begin
        Options.WhiteList.Duplicates := dupIgnore;
        Options.WhiteList.CaseSensitive := False;
        Options.WhiteList.Sorted := True;
        Options.WhiteList.AddStrings(emails);
        Options.WhiteList.SaveToFile(ExtractFilePath(IniName)+'WhiteList.ptdat');
        if Assigned(frame) and (frame is TframeWhiteBlack) then
          (frame as TframeWhiteBlack).memWhiteList.Lines.Text := Options.WhiteList.Text;
        ShowTranslatedDlg(Translate('Added to the White List:')+#13#10+emails.Text,mtInformation,[mbOK],0);
        Result := True;
      end
      else begin
        if (ShowTranslatedDlg(Translate('This will add the following e-mails to the Black List:')
            +#13#10+emails.Text+
            #13#10+Translate('Are you sure?'), mtConfirmation, [mbYes,mbNo], 0) = mrYes) then
        begin
          Options.BlackList.Duplicates := dupIgnore;
          Options.BlackList.CaseSensitive := False;
          Options.BlackList.Sorted := True;
          Options.BlackList.AddStrings(emails);
          Options.BlackList.SaveToFile(ExtractFilePath(IniName)+'BlackList.ptdat');
          if Assigned(frame) and (frame is TframeWhiteBlack) then
            (frame as TframeWhiteBlack).memBlackList.Lines.Text := Options.BlackList.Text;
          Result := True;
        end;
      end;
    end;
  finally
    emails.Free;
  end;
end;

function TfrmPopUMain.InWhiteBlackList(WhiteBlack: TWhiteBlack; email: string): boolean;
var
  list : TStringList;
  i : integer;
begin
  // select list
  if WhiteBlack = wbWhite then
    list := Options.WhiteList
  else
    list := Options.BlackList;
  // check if in list using wildcards
  Result := True;
  for i := 0 to list.Count-1 do
  begin
    if CheckWildcard(email,list[i]) then
      Exit;
  end;
  Result := False;
end;

procedure TfrmPopUMain.MoveRule(old, new: integer);
begin
  if (old <> new) and (Screen.Cursor <> crHourGlass) and
     (new >= 0) and (new <= lstRules.Count-1) and
     (old >= 0) and (old <= lstRules.Count-1) then
  begin
    Screen.Cursor := crHourGlass;
    try
      // move
      Rules.Move(old,new);
      lstRules.Items.Move(old,new);
      // select
      lstRules.ItemIndex := new;
      // show change
      lstRulesClick(lstRules);
      FRuleChanged := True;
      EnableRuleButtons;
    finally
      Screen.Cursor := crDefault;
    end;
  end;
end;

function TfrmPopUMain.AddRule(rulename: string): TRuleItem;
begin
  // add to rules
  Result := Rules.Add;
  with Result do
  begin
    Name := rulename+' '+IntToStr(Rules.Count);
    Enabled := True;
    New := False;
    Account := 0;
    Operator := roAny;
    Wav := '';
    Delete := False;
    Ignore := False;
    EXE := '';
    Important := False;
    Spam := False;
    TrayColor := -1;
    Protect := False;
    Log := Options.LogRules;
  end;
  // add to listbox
  lstRules.Items.Add(Rules[Rules.Count-1].Name);
  lstRules.Checked[Rules.Count-1] := True;
end;

procedure TfrmPopUMain.GetSelectedMails(area: TRuleArea; List: TStringList);
////////////////////////////////////////////////////////////////////////////////
// Put the specified area of the selected mails in a StringList
// Multi-select code by Victor
var
  Item : TListItem;
  MailItem : TMailItem;
begin
  // collect selected emails (remove duplicates)
  List.Duplicates := dupIgnore;
  List.CaseSensitive := False;
  List.Sorted := True;
  Item := lvMail.Selected;
  while Item <> nil do
  begin
    MailItem := SelectedMailItem(Item);
    case area of
      raFromAddress : List.Add(MailItem.Address);
      raSubject     : List.Add(MailItem.Subject);
      raFrom        : List.Add(MailItem.From);
      raFromName    : List.Add(MailItem.From);
      raTo          : List.Add(MailItem.MailTo);
    end;
    Item := lvMail.GetNextItem(Item, sdAll, [isSelected]);
  end;
end;

//--------------------------------------------------------------- procedural ---

procedure TfrmPopUMain.Quit;
begin
  SavePosINI;
  SaveViewedMessageIDs;
  Application.Terminate;
end;

procedure TfrmPopUMain.ConnectAccount(num: integer);
var
  aHost,aProtocol : string;
  aUsername,aPassword : string;
  aPort : integer;
begin
  aHost := Accounts[num-1].Server;
  aPort := Accounts[num-1].Port;
  aProtocol := Accounts[num-1].Protocol;
  aUsername := Accounts[num-1].Login;
  aPassword := Accounts[num-1].Password;
  Accounts[num-1].Connecting := True;
  try
    Accounts[num-1].Prot.Connect(PChar(aHost),aPort,PChar(aProtocol),PChar(aUsername),PChar(aPassword), Options.TimeOut*1000);
    if Accounts[num-1].Prot.LastErrorMsg<>nil then
    begin
      raise EIdException.Create(Translate('Plug-in Error:')+' '+Accounts[num-1].Prot.LastErrorMsg);
    end;
  finally
    Accounts[num-1].Connecting := False;
  end;
end;

function TfrmPopUMain.GetDefaultEmail: string;
////////////////////////////////////////////////////////////////////////////////
// Get the default e-mail program from registry
var
  Reg: TRegistry;
  EMailClient : string;
begin
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_LOCAL_MACHINE;
    if Reg.OpenKey('\Software\Clients\Mail', False) then
    begin
      EMailClient := Reg.ReadString('');
      Reg.CloseKey;
      Reg.OpenKey('\Software\Clients\Mail\'+EMailClient+'\shell\open\command', False);
      EMailClient := Reg.ReadString('');
      EMailClient := ExpandEnv(EMailClient);
      Result := EMailClient;
      Reg.CloseKey;
    end;
  finally
    Reg.Free;
  end;
end;

procedure TfrmPopUMain.SwitchTimer;
var
  num : integer;
begin
  if Options.TimerAccount then
  begin
    // multiple timers
    dm.Timer.Enabled := False;
    for num := 1 to NumAccounts do
    begin
      if Assigned(Accounts[num-1].Timer) then Accounts[num-1].Timer.Free;
      Accounts[num-1].Timer := TTimer.Create(self);
      Accounts[num-1].Timer.Interval := round(Accounts[num-1].Interval * 60000);
      Accounts[num-1].Timer.Tag := num;
      Accounts[num-1].Timer.OnTimer := OnAccountTimer;
      Accounts[num-1].Timer.Enabled := Accounts[num-1].Enabled;
    end;
  end
  else begin
    // 1 timer
    dm.Timer.Enabled := True;
    for num := 1 to NumAccounts do
    begin
      if Assigned(Accounts[num-1].Timer) then
      begin
        Accounts[num-1].Timer.Enabled := False;
        Accounts[num-1].Timer.Free;
        Accounts[num-1].Timer := nil;
      end;
    end;
  end;
end;

//*****************************************************************************
// RunQueue
// --------
// Does the "auto" check for all accounts waiting to be checked right now.
//*****************************************************************************
procedure TfrmPopUMain.RunQueue;
var
  acc : integer;
begin
  // check all accounts in the queue
  FNotified := False;
  while FQueue.Count > 0 do
  begin
    acc := Integer(FQueue.Pop);
    if (NumAccounts > 0) and Accounts[acc-1].Enabled then
      // Check the account for new mail (unless the account is "sleeping"
      // because it's during no-check hours for that account)
      if (not Accounts[acc-1].DontCheckTimes) or (Accounts[acc-1].DontCheckTimes
      and not BetweenTimes(Accounts[acc-1])) then
        CheckMail(acc, not FNotified,True)
      else
      begin
        // Account is "sleeping"
        Accounts[acc-1].Status := Translate('Account Skipped')+HintSep+TimeToStr(Now);
        if (tabMail.TabIndex = acc-1) then
          StatusBar.Panels[0].Text := ' '+Accounts[tabMail.TabIndex].Status;
        ShowIcon(acc,itSleeping);
      end;
    Application.ProcessMessages;
  end;
  CallNotifyPlugins;
  // show balloon
  if Options.Balloon and (CountAllNew > 0) then
    ShowInfo(True);
end;

function ConvertModifiers(HotKey : integer) : cardinal;
begin
  Result := 0;
  if (HotKey and scShift) = scShift then Result := Result or MOD_SHIFT;
  if (HotKey and scCtrl) = scCtrl then Result := Result or MOD_CONTROL;
  if (HotKey and scAlt) = scAlt then Result := Result or MOD_ALT;
  //if (HotKey and sc) = scShift then Result := Result or MOD_WIN;
end;

procedure TfrmPopUMain.RegisterTheHotKeys;
begin
  // hot-keys
  if Options.HotKey1 <> 0 then
    RegisterHotKey(Self.Handle,1,ConvertModifiers(Options.HotKey1),Options.HotKey1 and not (scShift + scCtrl + scAlt));
  if Options.HotKey2 <> 0 then
    RegisterHotKey(Self.Handle,2,ConvertModifiers(Options.HotKey2),Options.HotKey2 and not (scShift + scCtrl + scAlt));
  if Options.HotKey3 <> 0 then
    RegisterHotKey(Self.Handle,3,ConvertModifiers(Options.HotKey3),Options.HotKey3 and not (scShift + scCtrl + scAlt));
  if Options.HotKey4 <> 0 then
    RegisterHotKey(Self.Handle,4,ConvertModifiers(Options.HotKey4),Options.HotKey4 and not (scShift + scCtrl + scAlt));
end;

procedure TfrmPopUMain.UnRegisterTheHotKeys;
var
  i : integer;
begin
  for i := 1 to 4 do
    UnregisterHotKey(Self.Handle,i);
end;

procedure TfrmPopUMain.DoMouseCommand(MouseCommand: TMouseCommand);
var
  tmp : integer;
  command : TCommand;
begin
  if GetKeyState(VK_SHIFT) < 0 then
  begin
    // shift click
    case MouseCommand of
      mcClick    : tmp := Options.ShiftLeftClick;
      mcRClick   : tmp := Options.ShiftRightClick;
      mcMClick   : tmp := Options.ShiftMiddleClick;
    else
      tmp := Options.LeftClick;
    end;
  end
  else begin
    // non-shift click
    case MouseCommand of
      mcClick    : tmp := Options.LeftClick;
      mcRClick   : tmp := Options.RightClick;
      mcMClick   : tmp := Options.MiddleClick;
      mcDblClick : tmp := Options.DblClick;
    else
      tmp := Options.LeftClick;
    end;
  end;

  command := TCommand(tmp);
  if (MouseCommand=mcClick) and FDoubleClicked then
    FDoubleClicked := False
  else
    DoCommand(command);
end;

procedure TfrmPopUMain.DoHKCommand(HotKeyNum : integer);
var
  command : TCommand;
begin
  case HotKeyNum of
    1 : command := TCommand(Options.Action1);
    2 : command := TCommand(Options.Action2);
    3 : command := TCommand(Options.Action3);
    4 : command := TCommand(Options.Action4);
  else
    command := TCommand(Options.Action1);
  end;
  DoCommand(command);
end;

procedure TfrmPopUMain.DoCommand(Command: TCommand);
var
  num : integer;
begin
  case Command of
    cmdShow            : ShowMessages;
    cmdMenu            : PopupAtCursor;
    cmdCheck           : CheckAllMail;
    cmdRun             : btnStartProgram.Click;
    cmdCheckShow       : CheckAndShow;
    cmdInfo            : ShowInfo;
    cmdCheckInfo       : CheckAndInfo;
    cmdToggleShow      : if FMinimized then ShowMessages else HideForm;
    cmdToggleAutoCheck : actAutoCheck.Execute;
    cmdNewMessage      : SendMail('','','');
    cmdToggleSound     : actSuspendSound.Execute;
    cmdDeleteSpam      : for num := 1 to Accounts.Count do
                           DeleteSpam(num,false);
    cmdMarkViewed      : actMarkViewed.Execute;
    cmdCheckFirst      : begin
                           CheckMail(1,True,True);
                           CallNotifyPlugins;
                         end;
    cmdStopChecking    : StopAll;
    // extra commands
    cmdAutoCheckOn     : begin
                           actAutoCheck.Checked := True;
                           UpdateTrayIcon;
                         end;
    cmdAutoCheckOff    : begin
                           actAutoCheck.Checked := False;
                           UpdateTrayIcon;
                         end;
    cmdSoundOn         : actSuspendSound.Checked := False;
    cmdSoundOff        : actSuspendSound.Checked := True;
  end;
end;

procedure TfrmPopUMain.CheckAndShow;
begin
  CheckAllMail;
  if CountAllNew > 0 then
    ShowMessages;
end;

procedure TfrmPopUMain.CheckAndInfo;
begin
  CheckAllMail;
  if CountAllNew > 0 then ShowInfo;
end;

procedure TfrmPopUMain.PopupAtCursor;
var
  CursorPos: TPoint;
begin
  if GetCursorPos(CursorPos) then
  begin
    Application.ProcessMessages;
    SetForegroundWindow(TrayIcon.Handle);
    SetForegroundWindow(Self.Handle);
    dm.mnuTray.PopupComponent := dm.mnuTray;
    dm.mnuTray.Popup(CursorPos.X, CursorPos.Y);
    PostMessage(Self.Handle, WM_NULL, 0, 0)
  end;
end;

procedure TfrmPopUMain.DeleteAccount(num: integer);
var
  i : integer;
begin
  if NumAccounts=1 then
  begin
    ShowTranslatedDlg(Translate('Cannot delete last Account'), mtError, [mbOK], 0);
    Exit;
  end;
  if ShowTranslatedDlg(Translate('Delete Account:')+' '+Accounts[num-1].Name+' ?',
                mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    // stop timer
    if Assigned(Accounts[num-1]) then
       FreeAndNil(Accounts[num-1].Timer);
    // remove from array
    Accounts.Delete(num-1);
    Dec(NumAccounts);
    // tab
    tabMail.Tabs.Delete(num-1);
    tabAccounts.Tabs.Delete(num-1);
    // remove from INI
    for i := 1 to NumAccounts do
      SaveAccountINI(i);
    // remove from rules dropdown
    FillRuleAccounts;
    // fix rules
    for i := 0 to Rules.Count-1 do
    begin
      if Rules[i].Account = num then
        Rules[i].Account := -1;
      if Rules[i].Account > num then
        Rules[i].Account := Rules[i].Account - 1;
    end;
    lstRulesClick(lstRules);
    SaveRulesINI;
    // show mail
    if NumAccounts>0 then
    begin
      tabMail.TabIndex := 0;
      tabAccounts.TabIndex := 0;
      ShowAccount(tabAccounts.TabIndex+1);
      ShowMail(tabMail.TabIndex+1,True);
    end;
  end;
end;

function TfrmPopUMain.FirstAccountWithError: integer;
var
  num : integer;
begin
  Result := 0;
  for num := 1 to NumAccounts do
    if Accounts[num-1].Error then
    begin
      Result := num;
      Break;
    end;
end;

procedure TfrmPopUMain.DeleteSpam(num: integer; confirm: boolean);
var
  i : integer;
  spamcount : integer;
begin
  spamcount := CountStatus([misSpam],num);
  if spamcount > 0 then
  begin
    if not(confirm) or
      (ShowTranslatedDlg(Translate('Delete Spam from Server?')+' '+#13#10#13#10+
                    Translate('Number of messages marked as Spam:')+' '+IntToStr(spamcount)+#13#10+
                    Translate('This will delete all these messages.'),
                    mtConfirmation,[mbYes,mbNo],0) = mrYes) then
    begin
      // mark to delete
      for i := 0 to Accounts[num-1].Mail.Count-1 do
      begin
        if Accounts[num-1].Mail[i].Spam and
           not(Accounts[num-1].Mail[i].Important) and
           not InWhiteBlackList(wbWhite,Accounts[num-1].Mail[i].Address) then
        begin
          Accounts[num-1].Mail[i].ToDelete := True;
        end;
      end;
      // recheck and delete
      if not Options.DeleteNextCheck then
      begin
        if CheckMail(num,False,False) < 0 then
          lvMail.Clear;
        CallNotifyPlugins;
      end;
    end;
  end;
end;

procedure TfrmPopUMain.SetSpamAction(act: TAction);
begin
  FSpamAction := act;
  actSpam.Caption := act.Caption;
  actSpam.ImageIndex := act.ImageIndex;
  actSpam.Hint := act.Hint;
  MailToolBar.AutoSizing := True;
end;

procedure TfrmPopUMain.StopAll;
var
  num : integer;
begin
  // disconnect all connected protocols
  for num := 1 to NumAccounts do
    if Accounts[num-1].Prot.Connected then
      Accounts[num-1].Prot.Disconnect;
  // set flags
  FStop := True;
  FBusy := False;
end;






//----------------------------------------------------------------- plug-ins ---

procedure TfrmPopUMain.CallNotifyPlugins;
var
  NewCount : integer;
  MailCount,UnviewedCount : integer;
  num : integer;
begin
  // total emails
  MailCount := 0;
  UnviewedCount := 0;
  NewCount := 0;
  for num := 1 to NumAccounts do
  begin
    MailCount := MailCount + Accounts[num-1].Mail.Count - Accounts[num-1].IgnoreCount;
    UnviewedCount := UnviewedCount + CountUnviewed(num);
    NewCount := NewCount + CountNew(num);
    //plug-in notify account
    NotifyPluginExecuteAccount(num, Accounts[num-1].Name, Accounts[num-1].Color, Accounts[num-1].Mail.Count - Accounts[num-1].IgnoreCount, CountUnviewed(num), CountNew(num), Options.ResetTray);
  end;
  // plug-in notify
  NotifyPluginExecute(MailCount, UnviewedCount, NewCount, Options.ResetTray);
end;

procedure TfrmPopUMain.SetProtocol(num: integer);
var
  i,found : integer;
begin
  found := 0;
  for i := Low(Protocols) to High(Protocols) do
  begin
    if Protocols[i].Name = Accounts[num-1].Protocol then
    begin
      found := i;
      Break;
    end;
  end;
  Accounts[num-1].Prot := Protocols[found].Prot;
  Accounts[num-1].Prot.SetOnWork(OnProtWork);
end;

procedure TfrmPopUMain.NotifyPluginExecute(MailCount,UnviewedCount,NewCount : integer; ResetTray : boolean);
var
  i : integer;
begin
  for i := Low(Plugins) to High(Plugins) do
  begin
    if Plugins[i].Enabled then
    begin
      if (Plugins[i] is TPluginNotify) then
        (Plugins[i] as TPluginNotify).Notify(MailCount,UnviewedCount,NewCount,ResetTray);
    end;
  end;
end;

procedure TfrmPopUMain.NotifyPluginExecuteAccount(AccountNo:integer; AccountName:string; AccountColor:string; MailCount,UnviewedCount,NewCount : integer; ResetTray : boolean);
var
  i : integer;
begin
  for i := Low(Plugins) to High(Plugins) do
  begin
    if Plugins[i].Enabled then
    begin
      if (Plugins[i] is TPluginNotify) then
        (Plugins[i] as TPluginNotify).NotifyAccount(AccountNo,PChar(AccountName),
                                                    PChar(AccountColor),
                                                    MailCount,UnviewedCount,NewCount,
                                                    ResetTray);
    end;
  end;
end;

procedure TfrmPopUMain.NotifyPluginMessage(MsgFrom, MsgTo, MsgSubject: string;
                                          MsgDate : TDateTime;
                                          Viewed, New, Important, Spam: boolean);
var
  i : integer;
begin
  for i := Low(Plugins) to High(Plugins) do
  begin
    if Plugins[i].Enabled then
    begin
      if (Plugins[i] is TPluginNotify) then
        (Plugins[i] as TPluginNotify).MessageCheck(PChar(MsgFrom), PChar(MsgTo),
                                                   PChar(MsgSubject), MsgDate,
                                                   Viewed, New, Important, Spam);
    end;
  end;
end;

procedure TfrmPopUMain.NotifyPluginMsgBody(MsgHeader, MsgBody: string);
var
  i : integer;
begin
  for i := Low(Plugins) to High(Plugins) do
  begin
    if Plugins[i].Enabled then
    begin
      if (Plugins[i] is TPluginNotify) then
        (Plugins[i] as TPluginNotify).MessageBody(PChar(MsgHeader), PChar(MsgBody));
    end;
  end;
end;


//----------------------------------------------------------- private events ---

procedure TfrmPopUMain.OnAccountTimer(Sender: TObject);
begin
  if AllowAutoCheck then
  begin
    FQueue.Push(Pointer((Sender as TTimer).Tag));
    if (FQueue.Count >= 1) and not FBusy then RunQueue;
  end;
end;

procedure TfrmPopUMain.OnFirstWait(Sender: TObject);
begin
  FFirstWaitTimer.Enabled := False;
  if AllowAutoCheck then
    CheckAllMail;
end;

procedure TfrmPopUMain.OnHint(Sender: TObject);
begin
  if Assigned(FHintWindow) then
  begin
    FHintWindow.ReleaseHandle;
  end;
end;

procedure TfrmPopUMain.OnProtWork(const AWorkCount: Integer);
begin
  if FPreview and not(FMinimized) and Assigned(frmPreview) then
  begin
    frmPreview.Progress.StepBy(AWorkCount-FMsgRead);
    FMsgRead := AWorkCount;
    Application.ProcessMessages;
    if frmPreview.FStop then
    begin
      Accounts[frmPreview.FAccountNum-1].Prot.SetOnWork(nil);
      Accounts[frmPreview.FAccountNum-1].Prot.Disconnect; //**
      Abort;
    end;
  end;
end;

procedure TfrmPopUMain.OnProcessWork(Sender: TObject; AWorkMode: TWorkMode; const AWorkCount: Integer);
begin
  OnProtWork(AWorkCount);
end;

procedure TfrmPopUMain.OnCloseFree(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FInfoForm := nil;
end;

procedure TfrmPopUMain.OnClickClose(Sender: TObject);
begin
  ((Sender as TControl).Parent as TTntForm).Close;
end;

procedure TfrmPopUMain.OnMinimize(Sender: TObject);
begin
  HideForm;
end;


//------------------------------------------------------------------------------
// Events
//------------------------------------------------------------------------------

procedure TfrmPopUMain.FormCreate(Sender: TObject);
///-----------------------------------------------------------------------------
// Init  -----------------------------------------------------------------------
//------------------------------------------------------------------------------
var
  num,param : integer;
begin
  // init vars
  FNotified := False;
  FShownRules := False;
  FShutDown := False;
  FBusy := False;
  FDoubleClicked := False;
  FShowingInfo := False;
  FStop := False;
  FSortColumn := -1;
  FSortDirection := sdAsc;
  FLastCheck := '';
  FAccountWithMail := -1;
  FKB := 'KB';
  FNewAccount := False;
  Application.OnHint := OnHint;
  Application.OnMinimize := OnMinimize;
  frmPassword := nil;
  ShortTimeFormat := 'HH:mm';
  TimeSeparator := ':';
  // active pages
  tabMail.TabIndex := 0;
  tabAccounts.TabIndex := 0;
  PageControl.ActivePageIndex := 0;
  tvOptions.Selected := nil;
  tvOptions.FullExpand;
  lblOptionTitle.Font.Style := [fsBold];
  // create objects
  Accounts := TAccountItems.Create;
  Rules := TRuleItems.Create;
  MsgHeader := TIdMessage.Create(Self);//nil);
  MsgHeader.NoDecode := True;
  FQueue := TUniqueQueue.Create;
  // menus with cpation different from action
  dm.mnuRuleFromDelete.Caption := 'Delete';
  dm.mnuRuleFromSpam.Caption := 'Mark as Spam';
  dm.mnuRuleSubjectDelete.Caption := 'Delete';
  dm.mnuRuleSubjectSpam.Caption := 'Mark as Spam';
  // accept files to drop on me
  DragAcceptFiles(Self.Handle, True);
  // StatusBar WindowProc for WM_PAINT
  FStatusWindowProc := StatusBar.WindowProc;
  StatusBar.WindowProc := StatusWindowProc;
  // if Win2000+ then set Hint Separator to CRLF
  if (Win32Platform = VER_PLATFORM_WIN32_NT) and (Win32MajorVersion >= 5) then
    HintSep := #13#10;

  // Set User-Data storage folder (from command line option or registry)
  IniPath := GetDataStoragePath(ParamNonSwitch(1));
  
  // help file
  HelpFileName := ExtractFilePath(Application.ExeName)+'PopTrayU.chm';
  // POP3 protocol
  SetLength(Protocols,1);
  Protocols[0].Name := 'POP3';
  Protocols[0].Port := 110;
  Protocols[0].Prot := TPluginPOP3.Create;

  // ini files
  IniName := IniPath+'PopTray.ini';
  RuleName := IniPath+'Rules.ini';
  LogRuleName := IniPath+'Rules.log';
  ToolbarName := IniPath+'PopTray.customize';
  if FileExists(ToolbarName) then
  begin
    ActionManager.LoadFromFile(ToolbarName);
    ActionManager.FileName := '';
  end;
  SetSpamAction(actDeleteSpam);
  // get options
  LoadOptionsINI;
  if Options.OnTop then
    Self.FormStyle := fsStayOnTop;
  Application.ProcessMessages;

  // if WinXP+ then remove themes on vertical tabs
  if IsWinXP then
  begin
    InitThemeLibrary;
    SetWindowTheme(PageControl.Handle,' ',' ');
  end;
  // register hot-keys
  RegisterTheHotKeys;
  // translate
  TranslateForm(self);
  // version info
  lblVersion.Caption := Translate('version')+' '+MajorVersion+'.'+MinorVersion;
  if ReleaseVersion <> '0' then
    lblVersion.Caption := lblVersion.Caption + '.' + ReleaseVersion;
  if BetaVersion <> '0' then
  begin
    if Copy(BetaVersion,1,2) = '0.' then
      lblVersion.Caption := lblVersion.Caption + ' (pre-beta ' + BetaVersion +')'
    else
      lblVersion.Caption := lblVersion.Caption + ' (beta ' + BetaVersion +')'
  end;
  if ReleaseCandidate <> '' then
    lblVersion.Caption := lblVersion.Caption + '  ' + ReleaseCandidate;
  Self.Caption := 'PopTrayU - '+lblVersion.Caption;
  // disables
  btnSaveOptions.Enabled := False;
  btnCancel.Enabled := False;
  // anchors on large fonts (delphi bug?)
  if Self.PixelsPerInch <> 96 then
  begin
    btnSaveOptions.Left := panOptionButtonsRight.Width - btnCancel.Width - btnSaveOptions.Width - 20;
    btnCancel.Left := panOptionButtonsRight.Width - btnCancel.Width - 10;
    btnSaveRules.Left := panRulesButtonsRight.Width - btnCancelRule.Width - btnSaveRules.Width - 20;
    btnCancelRule.Left := panRulesButtonsRight.Width - btnCancelRule.Width - 10;
  end;
  // get accounts
  for num := 1 to NumAccounts do
  begin
    Accounts.Add;
    LoadAccountINI(num);
    tabMail.Tabs.Add(Accounts[num-1].Name);
    tabAccounts.Tabs.Add(Accounts[num-1].Name);
    if Accounts[num-1].Enabled then
      dm.AddBitmap(dm.imlTabs, dm.imlPopTrueColor,popClosed)
    else
      dm.AddBitmap(dm.imlTabs, dm.imlPopTrueColor,popDisabled);
  end;
  if NumAccounts > 0 then
    EnableFields(True);
  // add accounts to rules drop-down
  FillRuleAccounts;
  // position
  LoadPosINI;
  // hack to resize toolbar again
  //ActionManager.ActionBars[1].ActionBar := nil;
  //ActionManager.ActionBars[1].ActionBar := MailToolBar;
  if (MailToolBar.Handle>0) then MailToolBar.Realign;
  Application.ProcessMessages;
  MailToolBar.Height := 0;
  // rules
  LoadRulesINI;
  // show first account in editboxes
  if NumAccounts > 0 then ShowAccount(1);
  // startup options
  FMinimized := Options.Minimized;
  if FMinimized then HideForm;
  if Options.Minimized and not Options.MinimizeTray then
    Self.WindowState := wsMinimized;
  Application.ShowMainForm := not Options.Minimized;
  if Options.PasswordProtect and not Options.Minimized then
  begin
    Application.ShowMainForm := False;
    FMinimized := True;
    ShowForm;
  end;
  if Options.StartUp and not Application.Terminated then
  begin
    if Options.FirstWait > 0 then
    begin
      FFirstWaitTimer := TTimer.Create(self);
      FFirstWaitTimer.Interval := Options.FirstWait*1000;
      FFirstWaitTimer.OnTimer := OnFirstWait;
      FFirstWaitTimer.Enabled := True;
    end
    else
      if AllowAutoCheck then
        CheckAllMail;
  end;
  SwitchTimer;
  // comand-line actions
  param := ParamSwitchIndex('ACTION');
  if param > 0 then
  begin
    if Application.ShowMainForm then ShowForm;
    Application.ProcessMessages;
    repeat
      DoCommand(StrToAction(ParamSwitchValue(param)));
      param := ParamSwitchIndex('ACTION',param);
    until param = 0;
  end;
  // swap out memory
  SwapOutMemory;
end;

procedure TfrmPopUMain.FormDestroy(Sender: TObject);
var
  num : integer;
begin

  FQueue.Free;
  for num := 1 to NumAccounts do
  begin
    Accounts[num-1].ViewedMsgIDs.Free;
    Accounts[num-1].Mail.Free;
  end;
  Accounts.Free;
  if Assigned(FRegExpr) then FRegExpr.Free;


  // unregister drag n drop
  DragAcceptFiles(Self.Handle, False);
  // unregister hotkeys
  UnRegisterTheHotKeys;
end;

destructor TfrmPopUMain.Destroy;
var
  i: Integer;
begin
  FreeAndNil(MsgHeader);

  if (Plugins <> nil) then
  begin
    for i := 0 to Length(Plugins) - 1 do
      Plugins[i].Free;
  end;

  Protocols[0].Prot.Free;
  
  if (Rules <> nil) then
  begin
    for i := 0 to Rules.Count - 1 do
    begin
      Rules[i].Rows.Free;
    end;
  end; 
  FreeAndNil(Rules);

  // Always call the parent destructor after running your own code
  inherited;
end;

procedure TfrmPopUMain.lblHomepageMouseEnter(Sender: TObject);
begin
  (Sender as TLabel).Font.Style := [fsUnderline];
end;

procedure TfrmPopUMain.lblHomepageMouseLeave(Sender: TObject);
begin
  (Sender as TLabel).Font.Style := [];
end;

procedure TfrmPopUMain.lblHomepageClick(Sender: TObject);
begin
  ExecuteFile('http://sourceforge.net/projects/poptrayu/','','',SW_RESTORE);
end;

procedure TfrmPopUMain.btnSaveOptionsClick(Sender: TObject);
begin
  SaveOptionsINI;
  GetBitmapFromFileIcon(Options.MailProgram,btnStartProgram.Glyph,True);
  dm.imlActions.ReplaceMasked(actStartProgram.ImageIndex,btnStartProgram.Glyph,clBtnFace);
  dm.Timer.Interval := round(Options.Interval * 60000);
end;

procedure TfrmPopUMain.btnCancelClick(Sender: TObject);
begin
  LoadOptionsINI;
end;

procedure TfrmPopUMain.tabMailChange(Sender: TObject);
begin
  ShowMail(tabMail.TabIndex+1,True);
end;

procedure TfrmPopUMain.btnSaveClick(Sender: TObject);
begin
  SaveAccountNum(tabAccounts.TabIndex+1);
  SaveAccountINI(tabAccounts.TabIndex+1);
  FillRuleAccounts;
  ShowIcon(tabMail.TabIndex+1,itNormal);
  ShowIcon(tabAccounts.TabIndex+1,itNormal);
  FAccChanged := False;
  btnSave.Enabled := False;
  btnCancelAccount.Enabled := False;
end;

procedure TfrmPopUMain.lvMailDblClick(Sender: TObject);
begin
  actPreview.Execute;
end;

procedure TfrmPopUMain.OptionsChange(Sender: TObject);
begin
  btnSaveOptions.Enabled := True;
  btnCancel.Enabled := True;
end;

procedure TfrmPopUMain.lvMailColumnClick(Sender: TObject; Column: TListColumn);
begin
  // direction
  if FSortColumn = Column.Index then
    FSortDirection := sdDesc * FSortDirection
  else
    FSortDirection := sdAsc;
  // column
  SetSortColumn(Column.Index);
  SetColumnMenuCheckMarks;
end;

procedure TfrmPopUMain.lvMailCompare(Sender: TObject; Item1, Item2: TListItem;
  Data: Integer; var Compare: Integer);
begin
  // SpamLast (Rob Hulswit)
  if dm.mnuSpamLast.Checked then
  begin
    if (Item1.ImageIndex = mToDelete) xor (Item2.ImageIndex = mToDelete) then
    begin
      if Item1.ImageIndex = mToDelete then Compare := 1 else Compare := -1;
      Exit;
    end;
    if (Item1.ImageIndex = mSpam) xor (Item2.ImageIndex = mSpam) then
    begin
      if Item1.ImageIndex = mSpam then Compare := 1 else Compare := -1;
      Exit;
    end;
  end;
  // sort column
  case FSortColumn of
    -2 : Compare := CompareInt(IntToStr(Item1.ImageIndex),IntToStr(Item2.ImageIndex));  //status
    -1 : Compare := CompareInt(Item1.SubItems[colID],Item2.SubItems[colID]);            //no sort
    0  : Compare := CompareText(Item1.Caption,Item2.Caption);                           //from
    2  : Compare := CompareText(StripSubjectPrefix(Item1.SubItems[1]),
                                StripSubjectPrefix(Item2.SubItems[1]));                 //subject
    3  : Compare := CompareDate(Item1.SubItems[colDate],Item2.SubItems[colDate]);       //date
    4  : Compare := CompareInt(Item1.SubItems[3],Item2.SubItems[3]);                    //size
  else
   Compare := CompareText(Item1.SubItems[FSortColumn - 1],
                          Item2.SubItems[FSortColumn - 1]);
  end;
  Compare := FSortDirection * Compare;
end;

procedure TfrmPopUMain.chkRuleWavClick(Sender: TObject);
begin
  edRuleWav.Text := '';
  edRuleWav.Visible := chkRuleWav.Checked;
  btnEdRuleWav.Visible := chkRuleWav.Checked;
  btnRuleSoundTest.Visible := chkRuleWav.Checked;
end;

procedure TfrmPopUMain.edRuleNameChange(Sender: TObject);
begin
  EnableRuleButtons;
  if lstRules.ItemIndex > -1 then
  begin
    Rules[lstRules.ItemIndex].Name := edRuleName.Text;
    if edRuleName.Tag = 0 then // bug in WinNT
      lstRules.Items[lstRules.ItemIndex] := edRuleName.Text;
  end;

end;

procedure TfrmPopUMain.lstRulesClick(Sender: TObject);
begin
  ShowRule(lstRules.ItemIndex)
end;

procedure TfrmPopUMain.chkRuleEnabledClick(Sender: TObject);
begin
  EnableRuleButtons;
  if lstRules.ItemIndex > -1 then
  begin
    Rules[lstRules.ItemIndex].Enabled := chkRuleEnabled.Checked;
    lstRules.Checked[lstRules.ItemIndex] := chkRuleEnabled.Checked;
  end;
end;

procedure TfrmPopUMain.cmbRuleAreaChange(Sender: TObject);
begin
  if Sender<>nil then EnableRuleButtons;
  if lstRules.ItemIndex > -1 then
  begin
    Rules[lstRules.ItemIndex].Rows[grdRule.Row-1].Area := TRuleArea(cmbRuleArea.ItemIndex);
    grdRule.Cells[COL_AREA,grdRule.Row] := cmbRuleArea.Text;
  end;
  // show text or status
  if (cmbRuleArea.ItemIndex > -1) and (TRuleArea(cmbRuleArea.ItemIndex) = raStatus) then
  begin
    cmbRuleComp.ItemIndex := Ord(rcEquals);
    cmbRuleCompChange(nil);
    cmbRuleComp.Enabled := False;
    cmbRuleStatus.Show;
    cmbRuleStatusChange(nil);
    edRuleText.Hide;
  end
  else begin
    cmbRuleComp.Enabled := True;
    cmbRuleStatus.Hide;
    edRuleText.Show;
    edRuleTextChange(edRuleText);
  end;
end;

procedure TfrmPopUMain.cmbRuleCompChange(Sender: TObject);
begin
  if Sender<>nil then EnableRuleButtons;
  if (lstRules.ItemIndex > -1) and (cmbRuleComp.ItemIndex > -1) then
  begin
    Rules[lstRules.ItemIndex].Rows[grdRule.Row-1].Compare := TRuleCompare(cmbRuleComp.ItemIndex);
    grdRule.Cells[COL_COMPARE,grdRule.Row] := cmbRuleComp.Text;
  end;
  // show text box?
  if (cmbRuleComp.ItemIndex > -1) and (TRuleCompare(cmbRuleComp.ItemIndex) = rcEmpty) then
  begin
    edRuleText.Text := '';
    edRuleText.Enabled := False;
    edRuleText.Color := clBtnFace;
  end
  else begin
    edRuleText.Enabled := True;
    edRuleText.Color := clWindow;
  end;
  // show reg expr button?
  if (cmbRuleComp.ItemIndex > -1) and (TRuleCompare(cmbRuleComp.ItemIndex) = rcRegExpr) then
  begin
    btnTestRegExpr.Visible := True;
    panRuleDetailResize(panRuleDetail);
  end
  else begin
    btnTestRegExpr.Visible := False;
    panRuleDetailResize(panRuleDetail);
  end;
end;

procedure TfrmPopUMain.cmbRuleAccountChange(Sender: TObject);
begin
  EnableRuleButtons;
  if lstRules.ItemIndex > -1 then
    Rules[lstRules.ItemIndex].Account := cmbRuleAccount.ItemIndex;
end;

procedure TfrmPopUMain.chkRuleNewClick(Sender: TObject);
begin
  EnableRuleButtons;
  if lstRules.ItemIndex > -1 then
    Rules[lstRules.ItemIndex].New := chkRuleNew.Checked;
end;

procedure TfrmPopUMain.edRuleTextChange(Sender: TObject);
begin
  EnableRuleButtons;
  if lstRules.ItemIndex > -1 then
  begin
    Rules[lstRules.ItemIndex].Rows[grdRule.Row-1].Text := edRuleText.Text;
    grdRule.Cells[COL_TEXT,grdRule.Row] := edRuleText.Text;
  end;
end;

procedure TfrmPopUMain.edRuleWavChange(Sender: TObject);
begin
  EnableRuleButtons;
  if lstRules.ItemIndex > -1 then
    Rules[lstRules.ItemIndex].Wav := edRulewav.Text;
end;

procedure TfrmPopUMain.chkRuleDeleteClick(Sender: TObject);
begin
  EnableRuleButtons;
  if lstRules.ItemIndex > -1 then
    Rules[lstRules.ItemIndex].Delete := chkRuleDelete.Checked;
end;

procedure TfrmPopUMain.chkRuleIgnoreClick(Sender: TObject);
begin
  EnableRuleButtons;
  if lstRules.ItemIndex > -1 then
    Rules[lstRules.ItemIndex].Ignore := chkRuleIgnore.Checked;
end;

procedure TfrmPopUMain.chkRuleImportantClick(Sender: TObject);
begin
  EnableRuleButtons;
  if lstRules.ItemIndex > -1 then
    Rules[lstRules.ItemIndex].Important := chkRuleImportant.Checked;
end;

procedure TfrmPopUMain.chkRuleLogClick(Sender: TObject);
begin
  EnableRuleButtons;
  if lstRules.ItemIndex > -1 then
    Rules[lstRules.ItemIndex].Log := chkRuleLog.Checked;
end;

procedure TfrmPopUMain.edRuleEXEChange(Sender: TObject);
begin
  EnableRuleButtons;
  if lstRules.ItemIndex > -1 then
    Rules[lstRules.ItemIndex].EXE := edRuleEXE.Text;
end;

procedure TfrmPopUMain.chkRuleEXEClick(Sender: TObject);
begin
  edRuleEXE.Text := '';
  edRuleEXE.Visible := chkRuleEXE.Checked;
  btnEdRuleEXE.Visible := chkRuleEXE.Checked;
end;

procedure TfrmPopUMain.btnEdRuleEXEClick(Sender: TObject);
var
  dlgOpen : TOpenDialog;
begin
  dlgOpen := TOpenDialog.Create(nil);
  try
    dlgOpen.InitialDir := ExtractFileDir(edRuleEXE.Text);
    dlgOpen.Filter := Translate('EXE files')+' (*.exe)|*.exe|'+
                      Translate('All Files')+' (*.*)|*.*';
    if dlgOpen.Execute then
    begin
      edRuleEXE.Text := dlgOpen.FileName;
    end;
  finally
    dlgOpen.Free;
  end;
end;

procedure TfrmPopUMain.btnSaveRulesClick(Sender: TObject);
begin
  SaveRulesINI;
end;

procedure TfrmPopUMain.btnCancelRuleClick(Sender: TObject);
begin
  LoadRulesINI;
  lstRules.ItemIndex := -1;
  panRuleDetail.Visible := False;
  actRuleDelete.Enabled := False;
  btnRuleDown.Enabled := False;
  btnRuleUp.Enabled := False;
end;

procedure TfrmPopUMain.tabAccountsChange(Sender: TObject);
begin
  ShowAccount(tabAccounts.TabIndex+1);
  actDeleteAccount.Enabled := True;
end;

procedure TfrmPopUMain.edAccChange(Sender: TObject);
begin
  FAccChanged := AccountChanged(tabAccounts.TabIndex) or FNewAccount;
  btnSave.Enabled := FAccChanged;
  btnCancelAccount.Enabled := FAccChanged;
end;

procedure TfrmPopUMain.tabAccountsChanging(Sender: TObject; var AllowChange: Boolean);
begin
  if FAccChanged then
  begin
    case ShowTranslatedDlg(Translate('Account Info changed.'+#13+#10+
                    'Do you want to save it?'), mtConfirmation,
                    [mbYes, mbNo, mbCancel], 0) of
      mrYes    : begin
                   btnSave.Click;
                   AllowChange := True;
                 end;
      mrNo     : begin
                   if FNewAccount then
                   begin
                     Accounts.Delete(tabAccounts.TabIndex);
                     Dec(NumAccounts);
                     tabMail.Tabs.Delete(tabAccounts.TabIndex);
                     tabAccounts.Tabs.Delete(tabAccounts.TabIndex);
                     FNewAccount := False;
                   end;
                   AllowChange := True;
                 end;
      mrCancel : AllowChange := False;
    end;
  end;
end;

procedure TfrmPopUMain.lvMailSelectItem(Sender: TObject; Item: TListItem; Selected: Boolean);
begin
  if lvMail.Selected = nil then
  begin
    actPreview.Enabled := False;
    actDelete.Enabled := False;
    actUndelete.Enabled := False;
    actReply.Enabled := False;
    actRuleFromDelete.Enabled := False;
    actRuleFromSpam.Enabled := False;
    actRuleSubjectDelete.Enabled := False;
    actRuleSubjectSpam.Enabled := False;
    actAddWhiteList.Enabled := False;
    actAddBlackList.Enabled := False;
    actMarkSpam.Enabled := False;
    actUnmarkSpam.Enabled := False;
  end
  else begin
    actPreview.Enabled := lvMail.SelCount=1;
    actDelete.Enabled := True;
    actUndelete.Enabled := Item.ImageIndex=mToDelete;
    actReply.Enabled := True;
    actRuleFromDelete.Enabled := True;
    actRuleFromSpam.Enabled := True;
    actRuleSubjectDelete.Enabled := True;
    actRuleSubjectSpam.Enabled := True;
    actAddWhiteList.Enabled := True;
    actAddBlackList.Enabled := True;
    actMarkSpam.Enabled := True;
    actUnmarkSpam.Enabled := True;
  end;
  actSpam.Enabled := actDeleteSpam.Enabled or actMarkSpam.Enabled or actUnmarkSpam.Enabled;
end;

procedure TfrmPopUMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if (Options.CloseMinimize) and not FShutDown then
  begin
    HideForm;
    CanClose := False;
  end;
end;

procedure TfrmPopUMain.FormKeyPress(Sender: TObject; var Key: Char);
var
  num : integer;
  SomethingConnected : boolean;
begin
  if Key = Char(VK_ESCAPE) then
  begin
    SomethingConnected := False;
    for num := 1 to NumAccounts do
    begin
      if Accounts[num-1].Prot.Connected then
      begin
        SomethingConnected := True;
        Accounts[num-1].Prot.Disconnect;
      end;
    end;
    if not SomethingConnected then
      HideForm;
    FStop := True;
    FBusy := False;
  end;
end;

procedure TfrmPopUMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SavePosINI;
  SaveViewedMessageIDs;
end;

procedure TfrmPopUMain.PageControlChange(Sender: TObject);
begin
  // mail page
  if (PageControl.ActivePageIndex = 0) then
    MarkViewed;
  // if accounts page
  if (PageControl.ActivePageIndex = 1) and (NumAccounts>0) then
  begin
    tabAccounts.TabIndex := tabMail.TabIndex;
    tabAccounts.OnChange(nil);
  end;
end;

procedure TfrmPopUMain.chkTimerAccountClick(Sender: TObject);
begin
  SwitchTimer;
  panIntervalAccount.Visible := Options.TimerAccount;
  btnSaveOptions.Enabled := True;
  btnCancel.Enabled := True;
end;

procedure TfrmPopUMain.btnNeverAccountClick(Sender: TObject);
begin
  UpDownAccount.Position := 0;
end;

procedure TfrmPopUMain.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  // help
  if Key = VK_F1 then
  begin
    if ssShift in Shift then
    begin
      case PageControl.ActivePageIndex of
        0 : HtmlHelp(0, HelpFileName+'::/mail.htm', HH_DISPLAY_TOPIC, 0);
        1 : HtmlHelp(0, HelpFileName+'::/accounts.htm', HH_DISPLAY_TOPIC, 0);
        2 : HtmlHelp(0, HelpFileName+'::/options.htm', HH_DISPLAY_TOPIC, 0);
        3 : HtmlHelp(0, HelpFileName+'::/rules.htm', HH_DISPLAY_TOPIC, 0);
        4 : HtmlHelp(0, HelpFileName+'::/contact.htm', HH_DISPLAY_TOPIC, 0);
      else
        HtmlHelp(0, HelpFileName, HH_DISPLAY_TOC, 0);
      end;
    end
    else
      HtmlHelp(0, HelpFileName, HH_DISPLAY_TOC, 0);
  end;
  // select all
  if (Key = Ord('A')) and (ssCtrl in Shift) and
     (PageControl.ActivePageIndex = 0) then
  begin
    lvMail.SelectAll;
    lvMail.SetFocus;
  end;
  // ctrl-F6 switch account tabs
  if (Key = VK_F6) and (ssCtrl in Shift) and
     (PageControl.ActivePageIndex <= 1) then
  begin
    if (ssShift in Shift) then
    begin
      // ctrl-shift-F6
      if tabMail.TabIndex > 0 then
        tabMail.TabIndex := tabMail.TabIndex - 1
      else
        tabMail.TabIndex := tabMail.Tabs.Count-1;
    end
    else begin
      // ctrl-F6
      if tabMail.TabIndex < tabMail.Tabs.Count-1 then
        tabMail.TabIndex := tabMail.TabIndex + 1
      else
        tabMail.TabIndex := 0;
    end;
    tabAccounts.TabIndex := tabMail.TabIndex;
    // sync info (event doesn't fire automatically?)
    tabMail.OnChange(nil);
    tabAccounts.OnChange(nil);
  end;
  // alt keys
  if (ssAlt in Shift) and (Key in [Ord('A')..Ord('Z')]) then
  begin
    if PageControl.ActivePage=tsMail then ExecuteAccelAction(MailToolbar,Key)
    else if PageControl.ActivePage=tsAccounts then ExecuteAccelAction(AccountsToolbar,Key)
    else if PageControl.ActivePage=tsRules then ExecuteAccelAction(RulesToolbar,Key);
  end;
end;

procedure TfrmPopUMain.btnHelpRulesClick(Sender: TObject);
begin
  HtmlHelp(0, HelpFileName+'::/rules.htm', HH_DISPLAY_TOPIC, 0);
end;

procedure TfrmPopUMain.btnHelpOptionsClick(Sender: TObject);
begin
  HtmlHelp(0, HelpFileName+'::/options.htm', HH_DISPLAY_TOPIC, 0);
end;

procedure TfrmPopUMain.btnHelpAccountsClick(Sender: TObject);
begin
  HtmlHelp(0, HelpFileName+'::/accounts.htm', HH_DISPLAY_TOPIC, 0);
end;

procedure TfrmPopUMain.btnHelpClick(Sender: TObject);
begin
  HtmlHelp(0, HelpFileName, HH_DISPLAY_TOC, 0);
end;

procedure TfrmPopUMain.lvMailInfoTip(Sender: TObject; Item: TListItem; var InfoTip: String);
var
  MailItem : TMailItem;
begin
  InfoTip := '';
  if lvMail.ScreenToClient(Mouse.CursorPos).X  < lvMail.Columns[0].Width then
  begin
    MailItem := SelectedMailItem(Item);
    if MailItem <> nil then
      InfoTip := MailItem.Address;
  end
end;

procedure TfrmPopUMain.lblForumClick(Sender: TObject);
begin
  // TODO: update or remove this.
  //ExecuteFile('http://forum.poptray.org','','',SW_RESTORE);
end;

procedure TfrmPopUMain.btnEdSoundClick(Sender: TObject);
var
  dlgOpen : TOpenDialog;
begin
  dlgOpen := TOpenDialog.Create(nil);
  try
    dlgOpen.InitialDir := ExtractFileDir(edSound.Text);
    if dlgOpen.InitialDir='' then
       dlgOpen.InitialDir := ExtractFilePath(Application.ExeName)+'Sounds';
    dlgOpen.Filter := Translate('WAV files')+' (*.wav)|*.WAV';
    if dlgOpen.Execute then
    begin
      edSound.Text := dlgOpen.FileName;
      edSound.Font.Color := clWindowText;
    end;
  finally
    dlgOpen.Free;
  end;
end;

procedure TfrmPopUMain.btnEdRuleWavClick(Sender: TObject);
var
  dlgOpen : TOpenDialog;
begin
  dlgOpen := TOpenDialog.Create(nil);
  try
    dlgOpen.InitialDir := ExtractFileDir(edRuleWav.Text);
    if dlgOpen.InitialDir='' then
       dlgOpen.InitialDir := ExtractFilePath(Application.ExeName)+'Sounds';
    dlgOpen.Filter := Translate('WAV files')+' (*.wav)|*.WAV';
    if dlgOpen.Execute then
    begin
      edRuleWav.Text := dlgOpen.FileName;
    end;
  finally
    dlgOpen.Free;
  end;
end;

procedure TfrmPopUMain.TrayIconClick(Sender: TObject);
begin
  if Options.DoubleClickDelay then DoMouseCommand(mcClick);
end;

procedure TfrmPopUMain.TrayIconDblClick(Sender: TObject);
begin
  FDoubleClicked := True;
  DoMouseCommand(mcDblClick);
end;

procedure TfrmPopUMain.TrayIconMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  case Button of
    mbLeft   : if not Options.DoubleClickDelay then DoMouseCommand(mcClick);
    mbMiddle : DoMouseCommand(mcMClick);
    mbRight  : DoMouseCommand(mcRClick);
  end;
end;

procedure TfrmPopUMain.StatusBarResize(Sender: TObject);
begin
  StatusBar.Panels[1].Width := 44;
  StatusBar.Panels[2].Width := 44;
  StatusBar.Panels[3].Width := 44;
  StatusBar.Panels[4].Width := 50;
  StatusBar.Panels[0].Width := StatusBar.Width -
                               StatusBar.Panels[1].Width - StatusBar.Panels[2].Width -
                               StatusBar.Panels[3].Width - StatusBar.Panels[4].Width;
end;

procedure TfrmPopUMain.lvMailColumnRightClick(Sender: TObject;
  Column: TListColumn; Point: TPoint);
begin
  SetColumnMenuCheckMarks;
  dm.mnuColumns.Popup(lvMail.ClientToScreen(Point).X,lvMail.ClientToScreen(Point).Y);
  // prevent other context-menu popup
  Abort;
end;

procedure TfrmPopUMain.btnAccountSoundTestClick(Sender: TObject);
begin
  if (edSound.Text = Translate(UseDefaultSound)) or (edSound.Text = '') then
    PlayWav(Options.DefSound)
  else
    PlayWav(edSound.Text);
end;

procedure TfrmPopUMain.btnRuleSoundTestClick(Sender: TObject);
begin
  PlayWav(edRuleWav.Text);
end;

procedure TfrmPopUMain.btnStopClick(Sender: TObject);
begin
  StopAll;
end;

procedure TfrmPopUMain.btnCancelAccountClick(Sender: TObject);
begin
  if FNewAccount then
  begin
    Accounts.Delete(tabAccounts.TabIndex);
    Dec(NumAccounts);
    tabMail.Tabs.Delete(tabAccounts.TabIndex);
    tabAccounts.Tabs.Delete(tabAccounts.TabIndex);
    FNewAccount := False;
    tabAccounts.TabIndex := tabAccounts.Tabs.Count-1;
  end
  else begin
    LoadAccountINI(tabAccounts.TabIndex+1);
  end;
  ShowAccount(tabAccounts.TabIndex+1);
  FAccChanged := False;
  // buttons
  if NumAccounts=0 then EnableFields(False);
  btnSave.Enabled := False;
  btnCancelAccount.Enabled := False;
end;

procedure TfrmPopUMain.PageControlChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  if (PageControl.ActivePage=tsAccounts) and FAccChanged then
  begin
    case ShowTranslatedDlg(Translate('Account Info changed.'+#13+#10+
                    'Do you want to save it?'), mtConfirmation,
                    [mbYes, mbNo, mbCancel], 0) of
      mrYes    : begin
                   btnSave.Click;
                   AllowChange := True;
                 end;
      mrNo     : begin
                   if FNewAccount then
                   begin
                     Accounts.Delete(tabAccounts.TabIndex);
                     Dec(NumAccounts);
                     tabMail.Tabs.Delete(tabAccounts.TabIndex);
                     tabAccounts.Tabs.Delete(tabAccounts.TabIndex);
                     FNewAccount := False;
                   end;
                   AllowChange := True;
                 end;
      mrCancel : AllowChange := False;
    end;
  end;
end;

procedure TfrmPopUMain.edSoundEnter(Sender: TObject);
begin
  if edSound.Text = Translate(UseDefaultSound) then
  begin
    edSound.Text := '';
    edSound.Font.Color := clWindowText;
  end;
end;

procedure TfrmPopUMain.edSoundExit(Sender: TObject);
begin
  if edSound.Text = '' then
  begin
    edSound.Text := Translate(UseDefaultSound);
    edSound.Font.Color := clGrayText;
  end;
end;

procedure TfrmPopUMain.btnEdAccountProgramClick(Sender: TObject);
var
  dlgOpen : TOpenDialog;
begin
  dlgOpen := TOpenDialog.Create(nil);
  try
    dlgOpen.InitialDir := ExtractFileDir(edAccountProgram.Text);
    dlgOpen.Filter := Translate('EXE files')+' (*.exe)|*.EXE|' +
                      Translate('All files')+' (*.*)|*.*';
    if dlgOpen.Execute then
    begin
      edAccountProgram.Text := dlgOpen.FileName;
      GetBitmapFromFileIcon(edAccountProgram.Text,btnAccountProgramTest.Glyph,True);
    end;
  finally
    dlgOpen.Free;
  end;
end;

procedure TfrmPopUMain.btnAccountProgramTestClick(Sender: TObject);
begin
  ExecuteProgram(tabAccounts.TabIndex+1);
end;

procedure TfrmPopUMain.edAccountProgramEnter(Sender: TObject);
begin
  if edAccountProgram.Text = Translate(UseDefaultProgram) then
  begin
    edAccountProgram.Text := '';
    edAccountProgram.Font.Color := clWindowText;
  end;
end;

procedure TfrmPopUMain.edAccountProgramExit(Sender: TObject);
begin
  if edAccountProgram.Text = '' then
  begin
    edAccountProgram.Text := Translate(UseDefaultProgram);
    edAccountProgram.Font.Color := clGrayText;
  end;
end;

procedure TfrmPopUMain.btnHintHelpClick(Sender: TObject);
begin
  Screen.Cursor := crHelp;
end;

procedure TfrmPopUMain.actDeleteExecute(Sender: TObject);
var
  SaveTab,cnt : integer;
  warning : string;
  confirmed : boolean;
begin
  if lvMail.Selected = nil then
    ShowTranslatedDlg(Translate('No message selected.'), mtError, [mbOK], 0)
  else begin
    if Options.SafeDelete and not Accounts[tabMail.TabIndex].UIDLSupported then
      warning := Translate('WARNING: This account does NOT support Safe Delete.')+ #13#10#13#10;
    SaveTab := tabMail.TabIndex+1;
    Accounts[SaveTab-1].Error := False;
    if lvMail.SelCount = 1 then
    begin
      // one selected delete
      confirmed := not(Options.DeleteConfirm) or
                   (ShowTranslatedDlg(
                     warning +
                     Translate('Delete Message from Server?')+' '+#13#10#13#10+
                     Translate('From')+': '+lvMail.Selected.Caption+#13#10+
                     Translate('Subject')+': '+lvMail.Selected.SubItems[1],
                     mtConfirmation,[mbYes,mbNo],0) = mrYes);
    end
    else begin
      // multi-select delete
      confirmed := not(Options.DeleteConfirm) or
                   (ShowTranslatedDlg(
                     warning +
                     Translate('Delete Messages from Server?')+' '+#13#10#13#10+
                     Translate('Number of selected messages:')+' '+IntToStr(lvMail.SelCount)+#13#10+
                     Translate('This will delete all these selected messages.'),
                     mtConfirmation,[mbYes,mbNo],0) = mrYes);
    end;
    if confirmed then
    begin
      if Options.DeleteConfirmProtected then
      begin
        cnt := CountSelectedMailItemStatus([misProtected]);
        if (cnt>0) and (ShowTranslatedDlg(Translate('You are trying to delete protected messages.')+
                                     ' ('+IntToStr(cnt)+' '+Translate('messages')+') '+#13#10#13#10+
                                     Translate('Are you sure?'),
                                     mtConfirmation,[mbYes,mbNo],0) = mrNo) then
        begin
          Exit;
        end;
      end;
      // mark to delete
      SetSelectedMailItemStatus([misToBeDeleted],True);
      // enable undelete
      actUndelete.Enabled := True;
      // delete
      if not Options.DeleteNextCheck then
      begin
        // recheck and delete
        if CheckMail(SaveTab,False,True) < 0 then
          lvMail.Clear;
        CallNotifyPlugins;
      end;
    end;
  end;
end;

procedure TfrmPopUMain.actPreviewExecute(Sender: TObject);
begin
  if lvMail.Selected = nil then
    ShowTranslatedDlg(Translate('No message selected.'), mtError, [mbOK], 0)
  else
    Preview(tabMail.TabIndex+1);
end;

procedure TfrmPopUMain.actNewMailExecute(Sender: TObject);
begin
  SendMail('','','');
  HideForm;
end;

procedure TfrmPopUMain.tvOptionsChange(Sender: TObject; Node: TTreeNode);
begin
  // free any frames created
  if Assigned(frame) then FreeAndNil(frame);
  // unselect?
  if (Node=nil) then
  begin
    lblOptionTitle.Caption := 'Options';
    imgOptionTitle.Canvas.Brush.Color := clWindow;
    imgOptionTitle.Canvas.FillRect(imgOptionTitle.Canvas.ClipRect);
    Exit;
  end;
  // create the selected frame
  case Node.AbsoluteIndex of
    optInterval           : frame := TframeInterval.Create(Self);
    optDefaults           : frame := TframeDefaults.Create(Self);
    optGeneralOptions     : frame := TframeGeneralOptions.Create(Self);
    optAdvancedOptions    : frame := TframeAdvancedOptions.Create(Self);
    optAdvancedInterface  : frame := TframeAdvancedInterface.Create(Self);
    optAdvancedMisc       : frame := TframeAdvancedMisc.Create(Self);
    optMouseButtons       : frame := TframeMouseButtons.Create(Self);
    optHotKeys            : frame := TframeHotKeys.Create(Self);
    optWhiteBlackList     : frame := TframeWhiteBlack.Create(Self);
    optPlugins            : frame := TframePlugins.Create(Self);
    optVisualAppearance   : frame := TframeVisualAppearance.Create(Self);
  end;
  // show frame
  if Assigned(frame) then
  begin
    frame.Parent := panOptions;
    frame.Align := alClient;
  end;
  // title
  lblOptionTitle.Caption := Node.Text;
  imgOptionTitle.Canvas.Brush.Color := clWindow;
  imgOptionTitle.Canvas.FillRect(imgOptionTitle.Canvas.ClipRect);
  dm.imlOptions.Draw(imgOptionTitle.Canvas,2,0,Node.ImageIndex);
  frame.Refresh; //fix missing labels when using Vista Aero theme
end;

procedure TfrmPopUMain.HelpMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  QuickHelp(Sender, Button, Shift, X, Y);
end;

procedure TfrmPopUMain.actReplyExecute(Sender: TObject);
////////////////////////////////////////////////////////////////////////////////
// Reply to message using default mail client
var
  email,subject : string;
  MailItem : TMailItem;
begin
  MailItem := SelectedMailItem;
  // get headers
  if MailItem.ReplyTo <> '' then
    email := MailItem.ReplyTo
  else
    email := MailItem.Address;
  subject := MailItem.Subject;
  if (Uppercase(Copy(subject,1,3)) <> 'RE:') and (Uppercase(Copy(subject,1,3)) <> 'RE[') then
    subject := 'Re: '+subject;
  // send mail
  SendMail(email,subject,'');
end;

procedure TfrmPopUMain.actRuleQuickAddExecute(Sender: TObject);
////////////////////////////////////////////////////////////////////////////////
// Create rule to delete selected emails
var
  i : integer;
  list : TStringList;
  askstring,rulename : string;
  mark : TMailItemStatusSet;
  rulearea : TRuleArea;
begin
  if lvMail.Selected = nil then
  begin
    ShowTranslatedDlg(Translate('No message selected.'), mtError, [mbOK], 0);
    Exit;
  end;

  // which action?
  rulearea := raFromAddress;
  if Sender=actRuleFromDelete then
  begin
    askstring := 'This will create a rule to delete all future e-mails from';
    rulename := 'DelRule';
    rulearea := raFromAddress;
    mark := [misToBeDeleted];
  end
  else if Sender=actRuleFromSpam then
  begin
    askstring := 'This will create a rule to spam mark all future e-mails from';
    rulename := 'SpamRule';
    rulearea := raFromAddress;
    mark := [misSpam];
  end
  else if Sender=actRuleSubjectDelete then
  begin
    askstring := 'This will create a rule to delete all future e-mails with subject';
    rulename := 'DelRule';
    rulearea := raSubject;
    mark := [misToBeDeleted];
  end
  else if Sender=actRuleSubjectSpam then
  begin
    askstring := 'This will create a rule to spam mark all future e-mails with subject';
    rulename := 'SpamRule';
    rulearea := raSubject;
    mark := [misSpam];
  end;

  list := TStringList.Create;
  try
    GetSelectedMails(rulearea,list);

    // ask to create rule
    if (list.Count > 0) and
       (ShowTranslatedDlg(Translate(askstring)
         +#13+#10+list.Text+
         #13+#10+Translate('Are you sure?'), mtConfirmation, [mbYes,mbNo], 0) = mrYes) then
    begin
      // add the rule
      with AddRule(rulename) do
      begin
        if misSpam in mark then Spam := True;
        if misToBeDeleted in mark then Delete := True;
        // rows
        for i := 0 to list.Count-1 do
        begin
          with Rows.Add do
          begin
            Area := rulearea;
            Compare := rcEquals;
            Text := list[i];
            RuleNot := False;
          end;
        end;
      end;
      // save it
      SaveRulesINI;
      // mark
      SetSelectedMailItemStatus(mark,True);
      // del spam button
      if misSpam in mark then
      begin
        actDeleteSpam.Enabled := True;
        actSelectSpam.Enabled := actDeleteSpam.Enabled;
        actSpam.Enabled := actDeleteSpam.Enabled or actMarkSpam.Enabled or actUnmarkSpam.Enabled;
      end;
    end;
  finally
    list.Free;
  end;
end;

procedure TfrmPopUMain.actNoSortExecute(Sender: TObject);
begin
  FSortDirection := sdAsc;
  SetSortColumn(NOSORT);
  SetColumnMenuCheckMarks;
end;

procedure TfrmPopUMain.actCheckExecute(Sender: TObject);
begin
  FShiftClick := GetKeyState(VK_SHIFT) < 0;
  if tabMail.TabIndex >= 0 then
  begin
    CheckMail(tabMail.TabIndex+1,True,True);
    CallNotifyPlugins;
  end;
end;

procedure TfrmPopUMain.actAddAccountExecute(Sender: TObject);
var
  NoName : string;
begin
  // check if saved
  if FAccChanged then
  begin
    case ShowTranslatedDlg(Translate('Account Info changed.'+#13+#10+
                    'Do you want to save it?'), mtConfirmation,
                    [mbYes, mbNo, mbCancel], 0) of
      mrYes    : btnSave.Click;
      mrNo     : ;// nothing
      mrCancel : Exit;
    end;
  end;
  // add account
  Accounts.Add;
  Inc(NumAccounts);
  FNewAccount := True;
  btnSave.Enabled := True;
  btnCancelAccount.Enabled := True;
  // add tab
  NoName := Translate('NoName');
  tabAccounts.Tabs.Add(NoName);
  tabAccounts.TabIndex := NumAccounts-1;
  tabMail.Tabs.Add(NoName);
  dm.AddBitmap(dm.imlTabs, dm.imlPopTrueColor,popClosed);
  // enable fields
  EnableFields(True);
  chkAccEnabled.Checked := True;
  // clear the fields
  edName.Text := NoName;
  edServer.Text := '';
  cmbProtocol.ItemIndex := 0;
  edPort.Text := '110';
  edLogin.Text := '';
  edPassword.Text := '';
  edAccountProgram.Text := Translate(UseDefaultProgram);
  edAccountProgram.Font.Color := clGrayText;
  edSound.Text := Translate(UseDefaultSound);
  edSound.Font.Color := clGrayText;
  colAccount.Selected := clRed;
  edName.SetFocus;
  // clear mail
  lvMail.Items.Clear;
end;

procedure TfrmPopUMain.actDeleteAccountExecute(Sender: TObject);
begin
  if FNewAccount then
  begin
    Accounts.Delete(tabAccounts.TabIndex);
    Dec(NumAccounts);
    tabMail.Tabs.Delete(tabAccounts.TabIndex);
    tabAccounts.Tabs.Delete(tabAccounts.TabIndex);
    FNewAccount := False;
    tabAccounts.TabIndex := tabAccounts.Tabs.Count-1;
    ShowAccount(tabAccounts.TabIndex+1);
  end
  else if tabMail.TabIndex >= 0 then
    DeleteAccount(tabAccounts.TabIndex+1);
end;

procedure TfrmPopUMain.actRuleAddExecute(Sender: TObject);
var
  RuleStr : string;
  NewRule : TRuleItem;
begin
  RuleStr := Translate('Rule');
  // add to rules
  NewRule := AddRule(RuleStr);
  with NewRule.Rows.Add do
  begin
    Area := raHeader;
    Compare := rcContains;
    Text := '';
    RuleNot := False;
  end;
  // show in listbox
  lstRules.ItemIndex := Rules.Count-1;
  panRuleDetail.Visible := True;
  // clear rule detail
  edRuleName.Text := NewRule.Name;
  edRuleName.SelectAll;
  edRuleName.SetFocus;
  chkRuleEnabled.Checked := NewRule.Enabled;
  chkRuleNew.Checked := NewRule.New;
  cmbRuleAccount.ItemIndex := NewRule.Account;
  cmbRuleOperator.ItemIndex := integer(NewRule.Operator);
  // setup grid
  SetupRuleGrid;
  grdRule.RowCount := 2;
  // clear row
  cmbRuleArea.ItemIndex := 0;
  cmbRuleAreaChange(nil);
  cmbRuleComp.ItemIndex := 0;
  cmbRuleCompChange(nil);
  edRuleText.Text := '';
  chkRuleNot.Checked := False;
  // clear action checkboxes
  chkRuleWav.Checked := NewRule.Wav<>'';
  chkRuleEXE.Checked := NewRule.EXE<>'';
  chkRuleDelete.Checked := NewRule.Delete;
  chkRuleIgnore.Checked := NewRule.Ignore;
  chkRuleImportant.Checked := NewRule.Important;
  chkRuleSpam.Checked := NewRule.Spam;
  chkRuleLog.Checked := NewRule.Log;
  chkRuleTrayColor.Checked := NewRule.TrayColor<>-1;
  chkRuleProtect.Checked := NewRule.Protect;
  // enable buttons
  FRuleChanged := True;
  EnableRuleButtons;
end;

procedure TfrmPopUMain.actRuleDeleteExecute(Sender: TObject);
begin
  if lstRules.ItemIndex > -1 then
  begin
    if ShowTranslatedDlg(Translate('Delete Rule:')+' '+Rules[lstRules.ItemIndex].Name+#13#10+
                  Translate('Are you sure?'), mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      DeleteRule(lstRules.ItemIndex);
    end;
  end
  else begin
    ShowTranslatedDlg(Translate('No rule selected'), mtError, [mbOK], 0);
  end;
  btnSaveRules.Enabled := True;
  btnCancelRule.Enabled := True;
end;

procedure TfrmPopUMain.actShowMessagesExecute(Sender: TObject);
begin
  ShowMessages;
end;

procedure TfrmPopUMain.actCheckAllExecute(Sender: TObject);
begin
  CheckAllMail;
end;

procedure TfrmPopUMain.actStartProgramExecute(Sender: TObject);
var
  i : integer;
  res : boolean;
begin
  if not FMinimized and (PageControl.ActivePageIndex = 0) then
    res := ExecuteProgram(tabMail.TabIndex+1)
  else
    res := ExecuteProgram(FAccountWithMail);
  if FShowingInfo then frmInfo.Close;
  if res then HideForm;
  for i := 1 to NumAccounts do
    MarkViewed(i);
  UpdateTrayIcon;
  if not Options.ResetTray then ClearTrayIcon;
end;

procedure TfrmPopUMain.actAutoCheckExecute(Sender: TObject);
begin
  UpdateTrayIcon;
end;

procedure TfrmPopUMain.actOptionsExecute(Sender: TObject);
begin
  PageControl.ActivePageIndex := 2;
  ShowForm;
end;

procedure TfrmPopUMain.actRulesExecute(Sender: TObject);
begin
  PageControl.ActivePageIndex := 3;
  ShowForm;
end;

procedure TfrmPopUMain.actAboutExecute(Sender: TObject);
begin
  PageControl.ActivePageIndex := 4;
  ShowForm;
end;

procedure TfrmPopUMain.actHelpExecute(Sender: TObject);
begin
  HtmlHelp(0, HelpFileName, HH_DISPLAY_TOC, 0);
end;

procedure TfrmPopUMain.actToTrayExecute(Sender: TObject);
begin
  HideForm;
end;

procedure TfrmPopUMain.actQuitExecute(Sender: TObject);
begin
  Quit;
end;

procedure TfrmPopUMain.actCustomizeExecute(Sender: TObject);
begin
  ActionManager.FileName := ToolbarName;
  dm.ShowCustomizeDlg(ActionManager,True);
end;

procedure TfrmPopUMain.lstRulesClickCheck(Sender: TObject);
begin
  if lstRules.ItemIndex > -1 then
  begin
    Rules[lstRules.ItemIndex].Enabled := lstRules.Checked[lstRules.ItemIndex];
    chkRuleEnabled.Checked := Rules[lstRules.ItemIndex].Enabled;
    FRuleChanged := True;
    EnableRuleButtons;
  end;
end;


procedure TfrmPopUMain.actRulesImportExecute(Sender: TObject);
var
  OpenDialog : TOpenDialog;
  Ini : TIniFile;
  i,j,RuleCount,rowcount : integer;
  section,st,comp : string;
begin
  OpenDialog := TOpenDialog.Create(nil);
  try
    OpenDialog.Filter := Translate('INI Files')+' (*.ini)|*.ini';
    if OpenDialog.Execute then
    begin
      Ini := TIniFile.Create(OpenDialog.FileName);
      try
        RuleCount := Ini.ReadInteger('Options','NumRules',0);
        for i := 1 to RuleCount do
        begin
          section := 'Rule'+IntToStr(i);
          with Rules.Add do
          begin
            Name := Ini.ReadString(section,'Name','NoName');
            Account := Ini.ReadInteger(section,'Account',0);
            Operator := TRuleOperator(Ini.ReadInteger(section,'Operator',0));
            rowcount := Ini.ReadInteger(section,'RowCount',1);
            for j := 1 to rowcount do
            begin
              with Rows.Add do
              begin
                if j=1 then st := '' else st := IntToStr(j);
                Area := StrToRuleArea(Ini.ReadString(section,'Area'+st,'Header'));
                RuleNot := Ini.ReadBool(section,'Not'+st,False);
                comp := Ini.ReadString(section,'Func'+st,'Contains');
                if comp = 'NOT Contains' then
                begin
                  comp := 'Contains';
                  RuleNot := True;
                end;
                Compare := StrToRuleCompare(comp);
                Text := Ini.ReadString(section,'Text'+st,''     );
              end;
            end;
            Wav := Ini.ReadString(section,'Wav','');
            EXE := Ini.ReadString(section,'EXE','');
            Enabled := Ini.ReadBool(section,'Enabled',False);
            New := Ini.ReadBool(section,'New',False);
            Delete := Ini.ReadBool(section,'Delete',False);
            Ignore := Ini.ReadBool(section,'Ignore',False);
            Important := Ini.ReadBool(section,'Important',False);
            Spam := Ini.ReadBool(section,'Spam',False);
            Log := Ini.ReadBool(section,'Log',True);
            TrayColor := Ini.ReadInteger(section,'TrayColor',-1);
            // add to listbox
            lstRules.Items.Add(Name);
            lstRules.Checked[Rules.Count-1] := Enabled;
          end;
        end;
      finally
        Ini.Free;
      end;
    end;
  finally
    OpenDialog.Free;
  end;
end;

procedure TfrmPopUMain.lvAdvancedOptionsSelectItem(Sender: TObject; Item: TListItem; Selected: Boolean);
begin
  Item.Selected := False;
  tvOptions.Items[Item.Index+4].Selected := True;
end;

procedure TfrmPopUMain.lvOptionsSelectItem(Sender: TObject; Item: TListItem; Selected: Boolean);
begin
  Item.Selected := False;
  if Item.Index >= 4 then
    tvOptions.Items[Item.Index+3].Selected := True
  else
    tvOptions.Items[Item.Index].Selected := True;
end;

procedure TfrmPopUMain.actHideViewedExecute(Sender: TObject);
begin
  Options.HideViewed := actHideViewed.Checked;
  ShowMail(tabMail.TabIndex+1,True);
end;

procedure TfrmPopUMain.cmbProtocolChange(Sender: TObject);
begin
  if length(Protocols)-1 < cmbProtocol.ItemIndex then Exit;
  // port
  if Protocols[cmbProtocol.ItemIndex].Port < 0 then
  begin
    edPort.Text := '';
    EnableControl(edPort,false);
    edServer.Text := '';
    EnableControl(edServer,false);
  end
  else begin
    EnableControl(edPort,true);
    EnableControl(edServer,true);
    edPort.Text := IntToStr(Protocols[cmbProtocol.ItemIndex].Port);
    Accounts[tabAccounts.TabIndex].Prot := Protocols[cmbProtocol.ItemIndex].Prot;
  end;
  // buttons
  FAccChanged := AccountChanged(tabAccounts.TabIndex);
  btnSave.Enabled := FAccChanged;
  btnCancelAccount.Enabled := FAccChanged;
end;

procedure TfrmPopUMain.actAddWhiteListExecute(Sender: TObject);
var
  i : integer;
  MailItem : TMailItem;
begin
  if AddToWhiteBlackList(wbWhite) and Options.BlackListSpam then
  begin
    // protect whitelist messages
    for i := 0 to lvMail.Items.Count-1 do
    begin
      MailItem := SelectedMailItem(lvMail.Items[i]);
      if InWhiteBlackList(wbWhite,MailItem.Address) and (MailItem.Address <> '') then
      begin
        MailItem.Protect := True;
        lvMail.Items[i].ImageIndex := GetStatusIcon(MailItem);
      end;
    end;
    // remove spam mark from selected
    actUnmarkSpam.Execute;
  end;
end;

procedure TfrmPopUMain.actAddBlackListExecute(Sender: TObject);
begin
  if AddToWhiteBlackList(wbBlack) and Options.BlackListSpam then
     actMarkSpam.Execute;
end;

procedure TfrmPopUMain.actMarkViewedExecute(Sender: TObject);
var
  i : integer;
begin
  for i := 1 to NumAccounts do
    MarkViewed(i);
  if FShowingInfo then
    frmInfo.Close;
  if Not FMinimized and (tabMail.Tabs.Count>0) then
    ShowMail(tabMail.TabIndex+1,True);
end;

procedure TfrmPopUMain.actMarkSpamExecute(Sender: TObject);
begin
  // mark as spam
  SetSelectedMailItemStatus([misSpam],True);
  // spam actions
  actDeleteSpam.Enabled := CountStatus([misSpam],tabMail.TabIndex+1) > 0;
  actSelectSpam.Enabled := actDeleteSpam.Enabled;
  actSpam.Enabled := actDeleteSpam.Enabled or actMarkSpam.Enabled or actUnmarkSpam.Enabled;
  //SetSpamAction(actMarkSpam);
end;

procedure TfrmPopUMain.actUnmarkSpamExecute(Sender: TObject);
begin
  // unmark as spam
  SetSelectedMailItemStatus([misSpam],False);
  // spam actions
  actDeleteSpam.Enabled := CountStatus([misSpam],tabMail.TabIndex+1) > 0;
  actSelectSpam.Enabled := actDeleteSpam.Enabled;
  actSpam.Enabled := actDeleteSpam.Enabled or actMarkSpam.Enabled or actUnmarkSpam.Enabled;
  //SetSpamAction(actUnmarkSpam);
end;

procedure TfrmPopUMain.actDeleteSpamExecute(Sender: TObject);
var
  SaveTab : integer;
begin
  SaveTab := tabMail.TabIndex+1;
  DeleteSpam(tabMail.TabIndex+1, Options.DeleteConfirm);
  if tabMail.TabIndex+1 = SaveTab then
    ShowMail(tabMail.TabIndex+1,True);
  //SetSpamAction(actDeleteSpam);
end;

procedure TfrmPopUMain.MouseMoveReset(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  ResetToolbar;
end;

procedure TfrmPopUMain.chkRuleSpamClick(Sender: TObject);
begin
  EnableRuleButtons;
  if lstRules.ItemIndex > -1 then
    Rules[lstRules.ItemIndex].Spam := chkRuleSpam.Checked;
end;

procedure TfrmPopUMain.lvMailKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_DELETE : actDelete.Execute;
    VK_RETURN : actPreview.Execute;
  end;
end;

procedure TfrmPopUMain.actSelectSpamExecute(Sender: TObject);
var
  i : integer;
  MailItem : TMailItem;
begin
  for i := 0 to lvMail.Items.Count-1 do
  begin
    MailItem := SelectedMailItem(lvMail.Items[i]);
    if MailItem.Spam then
      lvMail.Items[i].Selected := True;
  end;
end;

procedure TfrmPopUMain.imgLogoClick(Sender: TObject);
begin
  SwapOutMemory;
end;

procedure TfrmPopUMain.tvOptionsMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
    tvOptions.Selected := nil
  else
    QuickHelp(Sender, Button, Shift, X, Y);
end;

procedure TfrmPopUMain.lvMailMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
    dm.mnuMail.Popup(lvMail.ClientToScreen(Point(X,Y)).X,lvMail.ClientToScreen(Point(X,Y)).Y);
end;

procedure TfrmPopUMain.DragMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 if (Button = mbLeft) and (Screen.Cursor <> crHourGlass) and
    (GetKeyState(VK_LBUTTON) < 0) then
 begin
   //lstRules.ItemIndex := lstRules.ItemAtPos(Point(X,Y),True);
   (Sender as TControl).BeginDrag(False,12);
 end;
end;

procedure TfrmPopUMain.tabDragDrop(Sender, Source: TObject; X,  Y: Integer);
var
  i,num,new,old : integer;
  map : array of integer;
begin
  // get tabs
  new := (Sender as TTabControl).IndexOfTabAt(X,Y);
  old := (Sender as TTabControl).TabIndex;
  if (old <> new) and (Screen.Cursor <> crHourGlass) then
  begin
    Screen.Cursor := crHourGlass;
    try
      // save oldnum
      for num := 1 to Accounts.Count do
        Accounts[num-1].OldNum := num;
      // move
      Accounts.Move(old,new);
      tabMail.Tabs.Move(old,new);
      tabAccounts.Tabs.Move(old,new);
      SwitchTimer;
      // select
      (Sender as TTabControl).TabIndex := new;
      // show icons
      for num := 1 to Accounts.Count do
        ShowIcon(num, itNormal);
      // create mapping array
      SetLength(map,Accounts.Count);
      for num := 1 to Accounts.Count do
        map[Accounts[num-1].OldNum-1] := num;
      // fix rules
      FillRuleAccounts;
      for i := 0 to Rules.Count-1 do
        if Rules[i].Account > 0 then
          Rules[i].Account := map[Rules[i].Account-1];
      lstRulesClick(lstRules);
      SetLength(map,0);
      // save
      for num := 1 to Accounts.Count do
        SaveAccountINI(num);
      SaveRulesINI;
    finally
      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure TfrmPopUMain.lstRulesDragDrop(Sender, Source: TObject; X, Y: Integer);
var
  new,old : integer;
begin
  // get old/new
  new := (Sender as TCheckListBox).ItemAtPos(Point(X,Y),True);
  if new < 0 then new := (Sender as TCheckListBox).Count-1;
  old := (Sender as TCheckListBox).ItemIndex;
  MoveRule(old,new);
end;

procedure TfrmPopUMain.actSuspendSoundExecute(Sender: TObject);
begin
  UpdateTrayIcon;
end;

procedure TfrmPopUMain.panMailButtonsResize(Sender: TObject);
var
  newwidth : integer;
begin
  newwidth := panMailButtons.Width div 3;
  btnStartProgram.Width := newwidth + 16;
  btnStartProgram.Left := 5;
  btnCheckAll.Width := newwidth + 16;
  btnCheckAll.Left := panMailButtons.Width div 2 - btnCheckAll.Width div 2 + 33;
  btnToTray.Width := newwidth - 50;
  btnToTray.Left := panMailButtons.Width - btnToTray.Width - 5;
end;

procedure TfrmPopUMain.tabMailDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := (Sender = Source);
end;

procedure TfrmPopUMain.lstRulesDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
var
  save : integer;
  CursorPos: TPoint;
begin
  Accept := (Sender = Source);
  // bit of a hack to prevent false dragging
  if GetKeyState(VK_RBUTTON) >= 0 then
  begin
    save := lstRules.ItemIndex;
    (Sender as TControl).EndDrag(False);
    lstRules.ItemIndex := save;
    Exit;
  end;

  // scroll
  if (Y < 10) or (Y > lstRules.Height-10) then
  begin
    GetCursorPos(CursorPos);
    CursorPos := lstRules.ScreenToClient(CursorPos);
    while (CursorPos.X = X) and (CursorPos.Y = Y) do
    begin
      if GetAsyncKeyState(VK_RBUTTON) >= 0 then Exit;
      if (Y < 10) then
        SendMessage(lstRules.Handle,WM_VSCROLL,SB_LINEUP,0)
      else
        SendMessage(lstRules.Handle,WM_VSCROLL,SB_LINEDOWN,0);
      //Application.ProcessMessages;
      Sleep(50);
      GetCursorPos(CursorPos);
      CursorPos := lstRules.ScreenToClient(CursorPos);
    end;
  end;
end;

procedure TfrmPopUMain.lstRulesKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ShowRule(lstRules.ItemIndex);
end;

procedure TfrmPopUMain.actSpamExecute(Sender: TObject);
//var
//  i : integer;
begin
  if Assigned(FSpamAction) then
    FSpamAction.Execute
  else begin
    {if Assigned(MailToolBar.ActionClient) then
      for i := 0 to MailToolBar.ActionClient.Items.Count-1 do
        if (MailToolBar.ActionClient.Items[i].Action = actSpam) and
           (MailToolBar.ActionClient.Items[i].Items.Count = 0) then
        begin
          MailToolBar.ActionClient.Items[i].Items.Add.Action := actDeleteSpam;
          MailToolBar.ActionClient.Items[i].Items.Add.Caption := '-';
          MailToolBar.ActionClient.Items[i].Items.Add.Action := actMarkSpam;
          MailToolBar.ActionClient.Items[i].Items.Add.Action := actUnmarkSpam;
          MailToolbar.RecreateControls;
        end;}
  end;
end;

procedure TfrmPopUMain.MailToolBarGetControlClass(Sender: TCustomActionBar;
  AnItem: TActionClient; var ControlClass: TCustomActionControlClass);
begin
  if (Sender.ActionClient.Items[AnItem.Index].Action = actSpam) and
     (Sender.ActionClient.Items[AnItem.Index].Items.Count = 0) then
  begin
    Sender.ActionClient.Items[AnItem.Index].Items.Add.Action := actDeleteSpam;
    Sender.ActionClient.Items[AnItem.Index].Items.Add.Caption := '-';
    Sender.ActionClient.Items[AnItem.Index].Items.Add.Action := actMarkSpam;
    Sender.ActionClient.Items[AnItem.Index].Items.Add.Action := actUnmarkSpam;
  end;
  ControlClass := MailToolbar.Style.GetControlClass(Sender,Sender.ActionClient.Items[AnItem.Index]);
end;

procedure TfrmPopUMain.lstRulesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_DELETE then actRuleDelete.Execute;
end;

procedure TfrmPopUMain.chkRuleProtectClick(Sender: TObject);
begin
  EnableRuleButtons;
  if lstRules.ItemIndex > -1 then
    Rules[lstRules.ItemIndex].Protect := chkRuleProtect.Checked;
end;

procedure TfrmPopUMain.lvMailCustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
  if Options.ShowViewed then
  begin
    if Item.StateIndex>0 then
      Sender.Canvas.Font.Style := [fsBold]
    else
      Sender.Canvas.Font.Style := [];
    if Item.ImageIndex=mToDelete then
      Sender.Canvas.Font.Color := clGray;
  end;
end;

function GetWelcomeMessage(Host : string; Port : integer) : string;
var
  TCP : TIdTCPClient;
begin
  try
    TCP := TIdTCPClient.Create(nil);
    try
      TCP.Host := Host;
      TCP.Port := Port;
      TCP.Connect(Options.TimeOut*1000);
      TCP.GetResponse([]);
      Result := {TCP.LastCmdResult.TextCode + ' ' +} TCP.LastCmdResult.Text.Text;
      TCP.Disconnect;
    finally
      TCP.Free;
    end;
  except
    // ignore
  end;
end;

procedure TfrmPopUMain.actTestAccountExecute(Sender: TObject);
var
  msgcount,num : integer;
  info,st : string;
  sl : TStringList;
begin
  Screen.Cursor := crHourGlass;
  try
    num := tabAccounts.TabIndex+1;
    if num<=0 then Exit;
    SaveAccountNum(num);
    try
      ConnectAccount(num);
      try
        msgcount := Accounts[num-1].Prot.CheckMessages;
        info := Translate('Login OK') + sLineBreak;
        info := info + Translate('Message Count:')+' ' +IntToStr(msgcount) + sLineBreak + sLineBreak;
        sl := TStringList.Create;
        try
          if GetUIDs(num,sl) then
          begin
            st := Translate('Supported');
            if (msgcount>0) and (sl.Text='') then st := st + ' (' + Translate('Empty') + ')';
          end
          else begin
            st := Translate('NOT Supported');
          end;

          info := info + Translate('Quick Checking and Safe Delete (UIDL):')+' '+st;
        finally
          sl.Free;
        end;
      finally
        Accounts[num-1].Prot.DisconnectWithQuit;
        if Accounts[num-1].Port in [110,143] then
          info := GetWelcomeMessage(Accounts[num-1].Server,Accounts[num-1].Port) + sLineBreak + info;
        Screen.Cursor := crDefault;
        ShowMemo(Translate('Connection Info'),info,450,250);
      end;
    except
      on e: EIdSocketError do
      begin
        info := Translate('Failure connecting to server.') + sLineBreak + e.Message;
        if ( e.LastError = 11004 ) then info := info + Translate('Server found, but is not a mail server.');
        ShowMemo(Translate('Connection Info'),info,450,250);
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmPopUMain.tabMailChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  ShowIcon(tabMail.TabIndex+1,itNormal);
end;

procedure TfrmPopUMain.lvVolunteers2Change(Sender: TObject; Item: TListItem; Change: TItemChange);
begin
  // language volunteers translate
  Item.Caption := Translate(Item.Caption);
end;

procedure TfrmPopUMain.actStopCheckingExecute(Sender: TObject);
begin
  StopAll;
end;

procedure TfrmPopUMain.btnTestRegExprClick(Sender: TObject);
begin
  TestRegExpr(edRuleText.Text);
end;

procedure TfrmPopUMain.grdRuleTopLeftChanged(Sender: TObject);
begin
  if grdRule.CellRect(0,grdRule.Row).Top > 10 then
    ShowRuleEdit(0,grdRule.Row)
  else
    panRuleEdit.Hide;
end;

procedure TfrmPopUMain.grdRuleSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  ShowRuleEdit(ACol,ARow);
end;

procedure TfrmPopUMain.panRuleDetailResize(Sender: TObject);
begin
  panRuleEdit.Width := grdRule.Width - 17;
  grdRule.ColWidths[COL_TEXT] := grdRule.Width - grdRule.ColWidths[COL_AREA] -
    grdRule.ColWidths[COL_COMPARE] - grdRule.ColWidths[COL_NOT] - 21;
  if btnTestRegExpr.Visible then
    edRuleText.Width := grdRule.ColWidths[COL_TEXT] - btnTestRegExpr.Width + 1
  else
    edRuleText.Width := grdRule.ColWidths[COL_TEXT] + 2;
  cmbRuleStatus.Width := edRuleText.Width;
  btnTestRegExpr.Left := edRuleText.Left + edRuleText.Width;
  chkRuleNot.Left := edRuleText.Left + grdRule.ColWidths[COL_TEXT] + 8;
end;

procedure TfrmPopUMain.cmbRuleOperatorChange(Sender: TObject);
begin
  EnableRuleButtons;
  if lstRules.ItemIndex > -1 then
    Rules[lstRules.ItemIndex].Operator := TRuleOperator(cmbRuleOperator.ItemIndex);
end;

procedure TfrmPopUMain.chkRuleNotClick(Sender: TObject);
begin
  EnableRuleButtons;
  if lstRules.ItemIndex > -1 then
  begin
    Rules[lstRules.ItemIndex].Rows[grdRule.Row-1].RuleNot := chkRuleNot.Checked;
    if chkRuleNot.Checked then
      grdRule.Cells[COL_NOT,grdRule.Row] := RULE_NOT
    else
      grdRule.Cells[COL_NOT,grdRule.Row] := '';
  end;
end;

procedure TfrmPopUMain.btnRuleAddRowClick(Sender: TObject);
var
  toprow : integer;
begin
  EnableRuleButtons;
  if lstRules.ItemIndex > -1 then
  begin
    Rules[lstRules.ItemIndex].Rows.Add;
    grdRule.RowCount := grdRule.RowCount + 1;
    grdRule.Cells[COL_AREA,grdRule.RowCount-1] := '';
    grdRule.Cells[COL_COMPARE,grdRule.RowCount-1] := '';
    grdRule.Cells[COL_TEXT,grdRule.RowCount-1] := '';
    grdRule.Cells[COL_NOT,grdRule.RowCount-1] := '';
    toprow := grdRule.RowCount-4;
    if (toprow < 1) then toprow := 1;
    grdRule.TopRow := toprow;
    ShowRuleEdit(COL_AREA,grdRule.RowCount-1);
  end;
end;

procedure TfrmPopUMain.btnRuleDeleteRowClick(Sender: TObject);
var
  i : integer;
begin
  if grdRule.RowCount > 2 then
  begin
    EnableRuleButtons;
    if lstRules.ItemIndex > -1 then
    begin
      Rules[lstRules.ItemIndex].Rows.Delete(grdRule.Row-1);
      for i := grdRule.Row to grdRule.RowCount-2 do
        grdRule.Rows[i] := grdRule.Rows[i+1];
      grdRule.RowCount := grdRule.RowCount - 1;
      ShowRuleEdit(COL_AREA,grdRule.Row);
    end;
  end;
end;

procedure TfrmPopUMain.chkRuleTrayColorClick(Sender: TObject);
begin
  EnableRuleButtons;
  if lstRules.ItemIndex > -1 then
  begin
    colRuleTrayColor.Visible := chkRuleTrayColor.Checked;
    if chkRuleTrayColor.Checked then
      Rules[lstRules.ItemIndex].TrayColor := colRuleTrayColor.Selected
    else
      Rules[lstRules.ItemIndex].TrayColor := -1;
  end;
end;

procedure TfrmPopUMain.colRuleTrayColorChange(Sender: TObject);
begin
  EnableRuleButtons;
  if lstRules.ItemIndex > -1 then
    Rules[lstRules.ItemIndex].TrayColor := colRuleTrayColor.Selected;
end;

procedure TfrmPopUMain.cmbRuleStatusChange(Sender: TObject);
begin
  if Sender<>nil then EnableRuleButtons;
  if lstRules.ItemIndex > -1 then
  begin
    Rules[lstRules.ItemIndex].Rows[grdRule.Row-1].Text := IntToStr(cmbRuleStatus.ItemIndex);
    grdRule.Cells[COL_TEXT,grdRule.Row] := cmbRuleStatus.Text;
  end;

end;

procedure TfrmPopUMain.btnRuleDownClick(Sender: TObject);
begin
  MoveRule(lstRules.ItemIndex,lstRules.ItemIndex+1);
end;

procedure TfrmPopUMain.btnRuleUpClick(Sender: TObject);
begin
  MoveRule(lstRules.ItemIndex,lstRules.ItemIndex-1);
end;

procedure TfrmPopUMain.panRuleListButtonsResize(Sender: TObject);
begin
  btnRuleDown.Width := panRuleListButtons.Width div 2 - 5;
  btnRuleUp.Left := panRuleListButtons.Width div 2 + 1;
  btnRuleUp.Width := panRuleListButtons.Width div 2 - 5;
end;

procedure TfrmPopUMain.actUndeleteExecute(Sender: TObject);
begin
  // remove mark to delete
  SetSelectedMailItemStatus([misToBeDeleted],False);
end;

procedure TfrmPopUMain.btnCheckUpdateClick(Sender: TObject);
begin
  ExecuteFile('http://poptrayu.sourceforge.net/checkupdate.php?major='+
              MajorVersion+'&minor='+MinorVersion+'&release='+ReleaseVersion+
              '&beta='+BetaVersion,'','',SW_RESTORE);
end;

procedure TfrmPopUMain.lstRulesMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 if (Button = mbRight) and (Screen.Cursor <> crHourGlass) and
    (GetKeyState(VK_RBUTTON) < 0) then
 begin
   lstRules.ItemIndex := lstRules.ItemAtPos(Point(X,Y),True);
   (Sender as TControl).BeginDrag(False,12);
 end;
end;

procedure TfrmPopUMain.StatusBarDrawPanel(StatusBar: TStatusBar;
  Panel: TStatusPanel; const Rect: TRect);
const
  icons : array[1..4] of integer = (mNormal,mIgnored,mSpam,mToDelete);
var
  S : string;
begin
  if Panel.Text='0' then Panel.Text := '';
  // default draw
  S := '      ' + Panel.Text;
  SendMessage(StatusBar.Handle, SB_SETTEXT, Panel.Index, Integer(PChar(S)));
  // icon
  if Panel.Text <> '' then
    dm.imlListView.Draw(StatusBar.Canvas, Rect.Left,Rect.Top-1, icons[Panel.Index], dsTransparent,itImage);
end;

procedure TfrmPopUMain.actOpenMessageExecute(Sender: TObject);
begin
  RunMessage(tabMail.TabIndex+1,StrToInt(lvMail.Selected.SubItems[colID]));
end;


procedure TfrmPopUMain.lvVolunteers2Resize(Sender: TObject);
begin
  lvVolunteers.Column[1].Width := lvVolunteers.Width - lvVolunteers.Column[0].Width - 24;
end;



procedure TfrmPopUMain.chkDontCheckTimesClick(Sender: TObject);
begin
  dtStart.Enabled := chkDontCheckTimes.Checked;
  dtEnd.Enabled := chkDontCheckTimes.Checked;

  edAccChange(Sender);
end;

end.
