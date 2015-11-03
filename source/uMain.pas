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
//{$DEFINE LOG4D}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ImgList, ComCtrls, ToolWin, ExtCtrls, Menus, CheckLst,
  CommCtrl, Registry, TypInfo, uxTheme,
  ActnList, ActnMan, ActnCtrls, XPStyleActnCtrls,
  Grids, Vcl.ActnColorMaps, ActiveX, Vcl.PlatformVclStylesActnCtrls,
  DateTimePickers, Vcl.Themes, Vcl.PlatformDefaultStyleActnCtrls,
  PngBitBtn, System.Actions,

  IdComponent, IdTCPClient, IdMessage, IdException, IdMessageClient,
  IdAntiFreezeBase, IdAntiFreeze, IdBaseComponent,
  IdGlobal, (* for MaxLineAction only *)
  IdGlobalProtocols, IdResourceStringsProtocols, IdStack,

  CoolTrayIcon, unCustomImageDrawHook,
  {$IFDEF LOG4D}
  Log4D,
  {$ENDIF LOG4D}
  uGlobal, uPOP3, uIMAP4, uMailItems, //  uPlugins,
  uRules, uAccounts, uMailManager, uRulesManager, uRulesForm, uAccountsForm,
  Vcl.DBGrids, uOptionsForm, uAboutForm, uConstants, uProtocol;




type
  TDateTimePickerStyleHookFix= class(TDateTimePickerStyleHook);
  TMouseCommand = (mcClick,mcRClick,mcDblClick,mcMClick);
  TIconType = (itNormal,itChecking,itDeleting,itError,itSleeping);
  TToolbarScheme = (schemeNormal = 0, schemeTwilight = 1);


  TfrmPopUMain = class(TForm)
    PageControl: TPageControl;
    tsMail: TTabSheet;
    tsOptions: TTabSheet;
    tsRules: TTabSheet;
    tsAbout: TTabSheet;
    tabMail: TTabControl;
    AntiFrze: TidAntiFreeze;
    panMailButtons: TPanel;
    btnStartProgram: TBitBtn;
    tsAccounts: TTabSheet;
    TrayIcon: TCoolTrayIcon;
    ActionManager: TActionManager;
    actPreview: TAction;
    actDelete: TAction;
    actNewMail: TAction;
    MailToolBar: TActionToolBar;
    lvMail: TListView;
    StatusBar: TStatusBar;
    actReply: TAction;
    actRuleFromDelete: TAction;
    actNoSort: TAction;
    actCheck: TAction;
    panProgress: TPanel;
    btnStop: TSpeedButton;
    Progress: TProgressBar;
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
    actHideViewed: TAction;
    actAddWhiteList: TAction;
    actAddBlackList: TAction;
    actMarkViewed: TAction;
    actMarkSpam: TAction;
    actDeleteSpam: TAction;
    actRuleFromSpam: TAction;
    actUnmarkSpam: TAction;
    actSelectSpam: TAction;
    actSuspendSound: TAction;
    actSpam: TAction;
    actStopChecking: TAction;
    actUndelete: TAction;
    actRuleSubjectDelete: TAction;
    actRuleSubjectSpam: TAction;
    actOpenMessage: TAction;
    XPColorMap1: TXPColorMap;
    TwilightColorMap1: TTwilightColorMap;
    mailPanel1: TPanel;
    WindowBgColorMap: TXPColorMap;
    btnCheckAll: TPngBitBtn;
    btnToTray: TPngBitBtn;
    imgTray: TImage;
    actSelectAll: TAction;
    actReplyAll: TAction;
    actArchive: TAction;
    actStar: TAction;
    actUnstar: TAction;
    actMarkAsRead: TAction;
    actMarkAsUnread: TAction;
    actMark: TAction;
    actAddGmailLabel: TAction;
    actRemoveGmailLabel: TAction;
    actMore: TAction;
    procedure FormCreate(Sender: TObject);
    procedure lblHomepageMouseEnter(Sender: TObject);
    procedure lblHomepageMouseLeave(Sender: TObject);
    procedure lblHomepageClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure tabMailChange(Sender: TObject);
    procedure lvMailDblClick(Sender: TObject);
    procedure lvMailColumnClick(Sender: TObject; Column: TListColumn);
    procedure lvMailCompare(Sender: TObject; Item1, Item2: TListItem;
      Data: Integer; var Compare: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure lvMailSelectItem(Sender: TObject; Item: TListItem; Selected: Boolean);
    procedure OnNoMessageSelected();
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PageControlChange(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnHelpOptions1Click(Sender: TObject);
    procedure btnHelp1Click(Sender: TObject);
    procedure lvMailInfoTip(Sender: TObject; Item: TListItem;
      var InfoTip: String);
    procedure lblForumClick(Sender: TObject);

    procedure TrayIconClick(Sender: TObject);
    procedure TrayIconDblClick(Sender: TObject);
    procedure TrayIconMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure StatusBarResize(Sender: TObject);
    procedure lvMailColumnRightClick(Sender: TObject; Column: TListColumn;
      Point: TPoint);
    procedure btnStopClick(Sender: TObject);
    procedure btnHintHelpClick(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure actPreviewExecute(Sender: TObject);
    procedure actNewMailExecute(Sender: TObject);
    procedure HelpMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure actReplyExecute(Sender: TObject);
    procedure actRuleQuickAddExecute(Sender: TObject);
    procedure actNoSortExecute(Sender: TObject);
    procedure actCheckExecute(Sender: TObject);
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


    procedure actHideViewedExecute(Sender: TObject);
    procedure actAddWhiteListExecute(Sender: TObject);
    procedure actAddBlackListExecute(Sender: TObject);
    procedure actMarkViewedExecute(Sender: TObject);
    procedure actMarkSpamExecute(Sender: TObject);
    procedure actDeleteSpamExecute(Sender: TObject);


    procedure MouseMoveReset(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lvMailKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actUnmarkSpamExecute(Sender: TObject);
    procedure actSelectSpamExecute(Sender: TObject);
    procedure imgLogoClick(Sender: TObject);
    procedure lvMailMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DragMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure tabDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure actSuspendSoundExecute(Sender: TObject);
    procedure panMailButtonsResize(Sender: TObject);
    procedure tabMailDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure actSpamExecute(Sender: TObject);
    procedure MailToolBarGetControlClass(Sender: TCustomActionBar;
      AnItem: TActionClient; var ControlClass: TCustomActionControlClass);
    procedure lvMailCustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure tabMailChanging(Sender: TObject; var AllowChange: Boolean);
    procedure lvVolunteers2Change(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure actStopCheckingExecute(Sender: TObject);
    procedure actUndeleteExecute(Sender: TObject);
    procedure StatusBarDrawPanel(StatusBar: TStatusBar;
      Panel: TStatusPanel; const Rect: TRect);
    procedure actOpenMessageExecute(Sender: TObject);
    procedure UpdateUIAfterLoadingIni();

    function AddToWhiteBlackList(WhiteBlack: TWhiteBlack) : boolean; //TODO: move to rules manager??
    procedure GetSelectedMails(area : TRuleArea; List : TStringList);
    procedure PageControlChanging(Sender: TObject; var AllowChange: Boolean);
    procedure actSelectAllExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actReplyAllExecute(Sender: TObject);
    procedure actArchiveExecute(Sender: TObject);
    procedure actStarExecute(Sender: TObject);
    procedure actUnstarExecute(Sender: TObject);
    procedure actMarkAsReadExecute(Sender: TObject);
    procedure actMarkAsUnreadExecute(Sender: TObject);
    procedure actMarkExecute(Sender: TObject);
    procedure actAddGmailLabelExecute(Sender: TObject);
    procedure actRemoveGmailLabelExecute(Sender: TObject);
    procedure actMoreExecute(Sender: TObject);

    procedure ShowBlankMailServerErrMsg(account : TAccount);
    procedure NoDefaultMailClientErrMsg();
    procedure ShowUsernameOrPasswordError(account : TAccount);
  public
    { Public declarations }
    FShowingInfo : boolean;
    FMinimized : Boolean;
    FHintWindow : THintWindow;
    FSortDirection : integer; // which direction FSortColumn is sorted in. Public to be used by uIniSettings
    FSortColumn : integer; // which column to sort the mail window by. Public to be used by uIniSettings
    RulesForm : TRulesForm; //todo: later this should be private
    AccountsForm : TAccountsForm; //todo: later this should be private
    OptionsForm : TOptionsForm;
    AboutForm : TAboutForm;
    procedure ShowForm(MarkAsViewed : boolean = true);
    procedure HideForm;
    procedure ShowIcon(account : TAccount; IconType : TIconType);
    function ExecuteProgram(account : TAccount = nil) : boolean;
    procedure CheckAllMail;
    function CheckMail(account : TAccount; Notify : boolean; ShowIt : boolean) : integer; 
    procedure ShowMailMessage(account : TAccount; i : integer);
    procedure ShowMail(account : TAccount; ClearIt : boolean);
    procedure SendMail(const ToAddress,Subject,Body : string);
    procedure DeleteOneMailItem(Account : TAccount; MailItem : TMailItem);
    procedure QuickHelp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    function AllowAutoCheck : boolean;
    procedure SetSortColumn(ColNum : integer);
    procedure UpdateFonts;
    procedure OnCloseFree(Sender: TObject; var Action: TCloseAction); //used to be private
    procedure OnClickClose(Sender: TObject); //used to be private
    function SchemeNumToColorMap(const colorSchemeNum: integer) : TCustomActionBarColorMap;
    procedure LoadSkin;
    procedure SetDefaultSpamAction(const spamAction: integer);
    procedure CreateParams(var Params: TCreateParams); override;
    procedure OnSetLanguage();
  private
    { Private declarations }
    FMsgRead : integer;
    FPreview : Boolean;
    FShutDown : Boolean;
    FQueue : TUniqueQueue; //This queue holds a list of accounts for auto-check.
    FTotalNew : integer;
    FDoubleClicked : boolean;
    FStop : boolean;
    FLastCheck : string;
    FAccountIdxWithMail : integer;
    FFirstWaitTimer : TTimer;
    FShiftClick : boolean;

    FSpamAction : TAction;
    FInfoForm : TForm;
    FStatusWindowProc : TWndMethod;
    //FMailManager : TMailManager;

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

    // mail messages
    procedure Preview(MailItem : TMailItem; Account : TAccount);
//    procedure ProcessMessage(AMsg: TIdMessage; const AStream: TStream; AHeaderOnly: Boolean);
    function DeleteMails(account: TAccount; var DelCount : integer) : boolean;
    function CheckUID(account: TAccount; msgnum : integer; UID : string='') : boolean;
    procedure MarkAllViewed(num : integer = -1);
    function HasAttachment(msg : IdMessage.TIdMessage) : boolean;
    function SelectedMailItem(Item : TListItem = nil) : TMailItem;
    procedure RunMessage(account: TAccount; msgnum: integer);
    function GetPOPMessageHeader(account : TAccount; msgnum : integer) : boolean;
    function GetIMAPMessageHeader(account : TAccount; uid : string) : boolean;
    procedure SetSelectedMailItemStatus(Statusses : TMailItemStatusSet; SetIt : boolean);
    function CountSelectedMailItemStatus(Statusses: TMailItemStatusSet) : integer;
    function DoFullAccountCheck(account : TAccount) : integer;
    function DoFullAccountCheckRecentOnly(account : TAccount) : integer;
    //function DoFullAccountCheckUnseenOnly(account : TAccount) : integer;
    function DoQuickCheck(account : TAccount; var Notify : boolean; var ShowIt : boolean; var ForceShow : boolean) : integer;
    function ImapQuickCheck(Account : TAccount; var Notify : boolean; var ShowIt : boolean; var ForceShow : boolean): integer;

    // visual
    function GetTrayColor(num : integer) : TColor;
    procedure UpdateTrayIcon;
    procedure ClearTrayIcon;
    procedure PlayNotify(account : TAccount);
    procedure SetColumnMenuCheckMarks;
    procedure Balloon(head,info : string; IconType : TBalloonHintIcon; TimeoutSecs : integer);
    procedure ShowInfo(ShowOnlyWithMail : boolean = False);
    procedure ShowMessages;
    procedure DrawTheIcon(NewCount : integer; CircleColor : TColor);
    procedure DrawCheckingIcon(account : TAccount);
    procedure ResetToolbar;
    function GetStatusIcon(MailItem : TMailItem) : integer;
    procedure ErrorMsg(account : TAccount; Heading,Msg : string; IgnoreError : boolean);
    procedure ShowStatusBar(account : TAccount);
    procedure lvMailRemoveSelectedMsgs();

    // procedural
    procedure Quit;

    procedure RunQueue;
    procedure RegisterTheHotKeys;
    procedure UnRegisterTheHotKeys;
    procedure DoMouseCommand(MouseCommand : TMouseCommand);
    procedure DoHKCommand(HotKeyNum : integer);
    procedure DoCommand(Command : TCommand);
    procedure CheckAndShow;
    procedure CheckAndInfo;
    procedure PopupAtCursor;
    function FirstAccountWithError : integer;
    procedure DeleteSpam(account : TAccount; confirm : boolean);
    procedure SetSpamAction(act : TAction);
    procedure StopAll;
//    // plug-ins
//    procedure CallNotifyPlugins;
//    procedure NotifyPluginExecute(MailCount,UnviewedCount,NewCount : integer; ResetTray : boolean);
//    procedure NotifyPluginExecuteAccount(AccountNo:integer; AccountName:string; AccountColor:string; MailCount,UnviewedCount,NewCount : integer; ResetTray : boolean);
//    procedure NotifyPluginMessage(MsgFrom,MsgTo,MsgSubject : string; MsgDate : TDateTime; Viewed,New,Important,Spam : boolean);
//    procedure NotifyPluginMsgBody(MsgHeader,MsgBody : string);
    // private events
    procedure OnAccountTimer(Sender: TObject);
    procedure OnFirstWait(Sender: TObject);
    procedure OnHint(Sender : TObject);

    procedure OnMinimize(Sender: TObject);

    procedure SetColumnGroups();
    procedure AddFormToTab(parentTab : TTabSheet; form : TForm);
    procedure ChangeImportantStatuses(const becomeImportant : boolean);
    procedure ChangeReadStatuses(const becomeRead : boolean);
    procedure GetUidsOfSelectedMsgs(uidList : TStringList);
    function TabToAccount() : TAccount;
  public
    FKB : string; //UI label for kilobytes in the current language

    procedure SwitchTimer; //TODO: this used to be private
    procedure OptionsRefresh();

    procedure OnPreviewDownloadProgressChange(const AWorkCount: Integer); //todo can this be made private later?
    procedure OnProcessWork(Sender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64); virtual;
  published
    Destructor  Destroy; override;
  end;

type
  TProtocolType = record
    Name : string;
    Port : integer;
//    Prot : TProtocol;
  end;

var
  Protocols : array of TProtocolType;

var
  frmPopUMain: TfrmPopUMain;


//******************************************************************************
// BEGIN IMPLEMENTATION SECTION
//******************************************************************************
implementation

{$R *.DFM}

uses
  uPreview, uRCUtils, uPassword, uDM, uInfo, System.UITypes, System.Contnrs,
  IniFiles,  ShellAPI,  StrUtils, Types, uFrameVisualAppearance,
  IdEMailAddress, IdResourceStrings, uTranslate, uIniSettings, uFontUtils,
  IdReplyPOP3, IdExceptionCore, uRegExp, IdIOHandler, Math, OtlParallel,
  DateUtils, IdMailBox, uImapFolderSelect, SynTaskDialog, uRegistryFxns;



const
  // sort for lvMail
  sdAsc = 1;
  sdDesc = -1;

  // lvMail columns
  colID = 4;    // for the ID of the message on the server
  colDate = 5;  // for the internal representation of the date (not the display version)
  NOSORT = -1;

  DONT_MARK_AS_VIEWED = false;
  DO_MARK_AS_VIEWED = true;

  STATE_READ = -1;
  STATE_UNREAD = 1;

var
  HintSep : string = ' -- ';

//------------------------------------------------------------------------------
// Begin Function/Procedure Definitions
//------------------------------------------------------------------------------


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
function BetweenTimes (Account : TAccount) : boolean; overload;
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

procedure TfrmPopUMain.CreateParams(var Params: TCreateParams);
begin
  inherited;
  // To flip the entire form for RTL...
  //Params.ExStyle := Params.ExStyle or WS_EX_LEFT or WS_EX_RTLREADING or
  //  WS_EX_LEFTSCROLLBAR or WS_EX_LAYOUTRTL or WS_EX_NOINHERITLAYOUT;
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
  TrayIcon.ShowMainForm();
  ShowWindow(Application.Handle, SW_SHOW);

  AccountsForm.Visible := true;
  OptionsForm.Visible := true;
  RulesForm.Visible := true;
  AboutForm.Visible := true;

  FMinimized := False;
  // clear the tray
  if (PageControl.ActivePageIndex = 0) and MarkAsViewed and not FBusy then
    MarkAllViewed;
end;

procedure TfrmPopUMain.HideForm;
////////////////////////////////////////////////////////////////////////////////
// Hide the main form
begin
  Application.Minimize;
  FMinimized := True;
  if Options.MinimizeTray then
  begin
    TrayIcon.HideMainForm();
  end;
end;

//*****************************************************************************
// ShowIcon
// --------
// Sets/shows the correct icon for each account tab (and tray?)
//*****************************************************************************
procedure TfrmPopUMain.ShowIcon(account : TAccount; IconType : TIconType);
var
  numMsgs : integer;
  imlIndex, tabNum, dispIconType : integer;
begin
  if (account = nil) then Exit;

  imlIndex := account.AccountIndex;
  tabNum := account.AccountIndex;

  // reset name (without mailcount)
  AccountsForm.tabAccounts.Tabs[tabNum] := account.Name; //TODO: codesmell
  tabMail.Tabs[tabNum] := account.Name;


  // --tab icon--
  if IconType=itChecking then
    dispIconType := popBusy        // checking
  else if (account.Error) then
    dispIconType := popError       // error
  else if not(account.Enabled) then
    dispIconType := popDisabled // disabled
  else if (IconType=itSleeping) or
  (account.DontCheckTimes and BetweenTimes(account)) then
    dispIconType := popSleeping // account check suspended due to "Don't Check Hours"
  else begin
    if Options.HideViewed then
      numMsgs := account.CountUnviewed()
    else
      numMsgs := account.Mail.Count;
    if numMsgs = 0 then
    begin
      dispIconType := popClosed; // closed
    end
    else begin
      // open
      if account.CountUnviewed()>0 then
        dispIconType := popNew
      else
        dispIconType := popOpen;
    end;
    // message count
    if ((numMsgs>0) or Options.HideViewed) and (account.Mail.Count > 0) then
    begin
      tabMail.Tabs[tabNum] := account.Name + ' - ' + IntToStr(numMsgs);     //TODO: update this for limit inbox mode

      if Options.HideViewed then
        tabMail.Tabs[tabNum] := tabMail.Tabs[tabNum] + '/' + IntToStr(account.Mail.Count);

      //TODO: this doesn't work for HideViewed mode!!
      if (Options.ShowNewestMessagesOnly) then begin
        if (numMsgs > 0) and (numMsgs < account.LastMsgCount) then begin
          tabMail.Tabs[tabNum] := account.Name + ' - ' + IntToStr(numMsgs) + '/' + IntToStr(account.LastMsgCount);
        end;
      end;

    end;
  end;
  dm.ReplaceBitmap(dm.imlTabs, imlIndex, dm.imlPopTrueColor, dispIconType);

  // --tray icon--
  if IconType=itChecking then
  begin
    DrawCheckingIcon(account);
    TrayIcon.Refresh;
    TrayIcon.Hint := Translate('Checking')+' '+account.Name+' ...';
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

function TfrmPopUMain.ExecuteProgram(account : TAccount = nil) : boolean;
////////////////////////////////////////////////////////////////////////////////
// Run the e-mail client
var
  MailProgram,ExeName,Params : string;
begin
  // determine mail program
  if (account = nil) then
    MailProgram := Options.MailProgram
  else if account.MailProgram <> '' then
    MailProgram := account.MailProgram
  else
    MailProgram := Options.MailProgram;

  // run it
  if MailProgram = '' then
  begin
    NoDefaultMailClientErrMsg();
    Result := false;
  end
  else begin
    SplitExeParams(MailProgram,ExeName,Params);
    Result := ExecuteFile(ExeName,Params,'',SW_NORMAL) > 32;
  end;
end;

procedure TfrmPopUMain.NoDefaultMailClientErrMsg();
var
  TaskDlg : TSynTaskDialog;
  msgResult : integer;
begin
  TaskDlg.Caption := APPTITLE + ' - ' + Translate('Run Email Client');
  TaskDlg.Title := Translate('Unable to Launch Email Client');
  TaskDlg.Text := Translate('Your preferred email client has not been set yet.');
  TaskDlg.AddButton(Translate('Auto-detect My Email Client'),
                    Translate('PopTrayU will look in the system registry for the preferred email client')); //100
  TaskDlg.AddButton(Translate('Set Email Client Manually'),
                    Translate('You will be taken to the Options screen to set this value.')); //101
  TaskDlg.AddButton(Translate('Ignore'),
                    Translate('Take no action at this time')); //102
  msgResult := TaskDlg.Execute([cbOK],mrOK,[tdfUseCommandLinks],tiError); //modal dlg
  case msgResult of
  100:
    begin
      SetDefaultMailClientFromRegistry();
    end;
  101:
    begin
      PageControl.ActivePage := tsOptions;
      ShowForm();
      OptionsForm.ShowSetEmailClient();
    end;
  end;
end;


procedure TfrmPopUMain.ShowUsernameOrPasswordError(account : TAccount);
var
  TaskDlg : TSynTaskDialog;
  msgResult : integer;
  btn : TTaskDialogButtonItem;
begin
  TaskDlg.Caption := 'PopTrayU';
  TaskDlg.Title := Translate('Connection Error:')+' '+account.Name;
  TaskDlg.Text := Translate('Invalid Username or Password');
  TaskDlg.AddButton(Translate('Edit Account Settings'),
                    Translate('Fix your username and/or password')); // msg result = 100
  TaskDlg.AddButton(Translate('Ignore'),
                    Translate('Take no action at this time')); //msg result = 101
  TaskDlg.ExpandedText := Translate('Error Type: "EIdConnClosedGracefully" (Connection Closed Gracefully)')+'\n'+
    Translate('EIdConnClosedGracefully is an exception signaling that the connection has been closed by the server intentionally, usally when the username or password is invalid.');
  TaskDlg.CollapseButtonCaption := Translate('Technical Information');
  TaskDlg.ExpandButtonCaption := Translate('Technical Information');
  msgResult := TaskDlg.Execute([cbOK],101,[tdfUseCommandLinks, tdfExpandFooterArea],tiError, tfiBlank, 0, 0, Handle, false); //modal dlg
  case msgResult of
  100:
    begin  //todo: this is very similar to the blank server error message. refactor.
      PageControl.ActivePage := tsAccounts;
      ShowForm;
      AccountsForm.tabAccounts.TabIndex := account.AccountNum-1; // todo: accountToTab
      AccountsForm.ShowAccount(account);
      AccountsForm.edUsername.SetFocus();
    end;
  101:
    begin
    end;
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
  if (Accounts.Count = 0) then Exit; // do not check if no accounts created
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
  FAccountIdxWithMail := -1;
  FNotified := False;
  for num := 1 to Accounts.NumAccounts do
  begin
    if Accounts[num-1].Enabled and not FStop then
    begin
      if (not Accounts[num-1].DontCheckTimes) or (Accounts[num-1].DontCheckTimes
      and not BetweenTimes(Accounts[num-1])) then
        CheckMail(Accounts[num-1],not FNotified,True)
      else
      begin
        Accounts[num-1].Status := Translate('Skipped Checking')+HintSep+TimeToStr(Now);
        if (tabMail.TabIndex = num-1) then
          StatusBar.Panels[0].Text := ' '+Accounts[tabMail.TabIndex].Status;
        ShowIcon(Accounts[num-1],itSleeping);
      end;
    end;
  end;
//  CallNotifyPlugins;

  // show balloon
  if Options.Balloon and (Accounts.CountAllNew > 0) then
    ShowInfo(True);
end;

function TfrmPopUMain.DoFullAccountCheck(account : TAccount) : integer;
var
  i : integer;          // loop counter
  mailcount : longint;  // How many new messages are on the server
begin
  // clear visual list - if current tab is showing this account
  if Accounts[tabMail.TabIndex] = account then
    lvMail.Items.Clear;
  // normal check (non-quick)
  mailcount := account.Prot.CountMessages; // get number of messages
  account.Mail.Clear;
  account.LastMsgCount := mailcount;
  if mailcount>0 then
    account.Status := Translate('Downloading')+' '+IntToStr(mailcount)+' '+Translate('messages')+'...';
  StatusBar.Panels[0].Text := ' '+Accounts[tabMail.TabIndex].Status;
  Progress.Max := mailcount;
  for i := 1 to mailcount do
  begin
    //todo does this need to use UIDs for IMAP?
    if not GetPOPMessageHeader(account,i) then
    begin
      Result := -1; // signal checking error
      //break //commenting out to allow checking additional msgs after an error containing message
    end;
    // progress
    Progress.Position := i;
    Application.ProcessMessages;
  end;
  Result := 0; // Indicate success
end;

function TfrmPopUMain.DoFullAccountCheckRecentOnly(account : TAccount) : integer;
var
  i,firstMsgToDownload : integer;          // loop counter
  mailcount : longint;  // How many new messages are on the server
begin
  // clear visual list - if current tab is showing this account
  if Accounts[tabMail.TabIndex] = account then
    lvMail.Items.Clear;
  // normal check (non-quick)
  mailcount := account.Prot.CountMessages; // get number of messages
  account.Mail.Clear;
  if mailcount>0 then
    account.Status := Translate('Downloading newest')+' '+IntToStr(Math.Min(mailcount,Options.NumNewestMsgToShow))+' '+Translate('messages')+'...';
  StatusBar.Panels[0].Text := ' '+Accounts[tabMail.TabIndex].Status;
  Progress.Max := mailcount;
  firstMsgToDownload := Math.Max(0, mailcount-Options.NumNewestMsgToShow);
  account.LastMsgCount := mailcount;
  if mailcount>0 then
    for i := firstMsgToDownload to mailcount - 1 do
  begin
    if not GetPOPMessageHeader(account,i) then
    begin
      Result := -1; // signal checking error
      //break //commenting out to allow checking additional msgs after an error containing message
    end;
    // progress
    Progress.Position := i;
    Application.ProcessMessages;
  end;
  Result := 0; // Indicate success
end;


function TfrmPopUMain.ImapQuickCheck(Account : TAccount; var Notify : boolean; var ShowIt : boolean; var ForceShow : boolean): integer;
//begin
//  // for each message in the account
//    // get the flags
//    // see if the flags changed
//    // if flag = deleted, set icon = deleted
//    // if flag = read/unread set read/unread
//    // if flag = important...
//  // check for new messages starting at last seen uid
var
  i : integer;          // loop counter
  minMsgNum : integer;
  UIDLs : TStringList;
  msgnum : integer;
  UID : string;
  MailItem : TMailItem;
  quickchecking : boolean;
  mailcount : integer;  // How many new messages have been found?
  firstMsgToDownload : integer;
  tempFlags : TIdMessageFlagsSet;
begin
  UIDLs := TStringList.Create;
  try
    account.Status := Translate('Checking... Getting UIDs');
    StatusBar.Panels[0].Text := ' '+account.Status;   //TODO: this should be only if account is showing
    quickchecking := true;
    if (Options.ShowNewestMessagesOnly) then
      account.GetUIDs(UIDLs, Options.HideViewed, Options.NumNewestMsgToShow)
    else
      account.GetUIDs(UIDLs, Options.HideViewed);

    if quickchecking then
    begin

      account.Status := Translate('Checking... Clearing old Message Numbers');
      StatusBar.Panels[0].Text := ' '+account.Status;
      Application.ProcessMessages();
      // clear all msgnums
      account.Mail.ClearAllMsgNums();
//      if Notify then
//      begin
//        account.Mail.SetAllNew(false);
//        FTotalNew := Accounts.CountAllNew;
//      end;
      // assign new nums
      account.Status := Translate('Checking... Re-assigning Message IDs');
      StatusBar.Panels[0].Text := ' '+account.Status;
      Application.ProcessMessages();

      // only assign nums for the newest N messages (if enabled)
      minMsgNum := 0;
      if (Options.ShowNewestMessagesOnly) then
        minMsgNum := Math.Max(0, UIDLs.Count-Options.NumNewestMsgToShow);

      for i := minMsgNum to UIDLs.Count-1 do
      begin
        msgnum := StrToInt(StrBefore(UIDLs[i],' '));
        UID := StrAfter(UIDLs[i],' ');
        MailItem := account.Mail.FindUIDWithDuplicates(UID);
        if MailItem <> nil then
        begin
          MailItem.MsgNum := msgnum;
          UIDLs[i] := '';

          // for imap check for changes to server flags
          if account.IsImap then begin
             if (Account.Prot as TProtocolIMAP4).GetFlags(UID, tempFlags) then
             begin
               MailItem.Seen := mfSeen in tempFlags;
               MailItem.Important := mfFlagged in tempFlags;
               MailItem.ToDelete := mfDeleted in tempFlags;     //?
             end;
          end;

        end;
      end;
      account.Status := Translate('Checking... Removing Deleted Items');
      StatusBar.Panels[0].Text := ' '+account.Status;
      Application.ProcessMessages();

      // delete the mailitems no longer on server
      if account.Mail.RemoveDeletedMessages() then begin//removes all msgs with MsgNum = -1
        ForceShow := True; //ForceShow is set if messages were removed from the list because they are not on the server (eg: deleted)
      end;
      // mismatch
      if ShowIt and Options.ShowWhileChecking and (Accounts[tabMail.TabIndex]=account) then   //TODO: accountToTab()
      begin
        account.Status := Translate('Checking... Double-Checking for Deleted Items');
        StatusBar.Panels[0].Text := ' '+account.Status;
        for i := 0 to lvMail.Items.Count-1 do
        begin
          MailItem := account.Mail.FindMessage(StrToInt(lvMail.Items[i].SubItems[colID]));
          if MailItem = nil then
          begin
            ForceShow := True;
            break;
          end;
        end;
      end;
      // count new messages
      account.Status := Translate('Checking... Counting New Messages');
      StatusBar.Panels[0].Text := ' '+account.Status;
      mailcount := 0;
      for i := 0 to UIDLs.Count-1 do
        if UIDLs[i] <> '' then
          Inc(mailcount);
      if mailcount>0 then
        if (Options.ShowNewestMessagesOnly) then
          account.Status := Translate('Downloading newest')+' '+IntToStr(Math.Min(UIDLs.Count,Options.NumNewestMsgToShow))+' '+Translate('messages')+'...'
        else
          account.Status := Translate('Downloading')+' '+IntToStr(mailcount)+' '+Translate('messages')+'...';
      StatusBar.Panels[0].Text := ' '+Accounts[tabMail.TabIndex].Status;
      // go fetch the new messages
      Progress.Max := UIDLs.Count;
      if (Options.ShowNewestMessagesOnly) then
        firstMsgToDownload := Math.Max(0, UIDLs.Count-Options.NumNewestMsgToShow)
      else
        firstMsgToDownload := 0;
      for i := firstMsgToDownload to UIDLs.Count-1 do
      begin
        if UIDLs[i] <> '' then
        begin
          msgnum := StrToInt(StrBefore(UIDLs[i],' '));
          if (account.IsImap) then begin
            if not GetIMAPMessageHeader(account,StrAfter(UIDLs[i],' ')) then
            begin
              Result := -1;
              Break;
            end;
          end else begin
            if not GetPOPMessageHeader(account,msgnum) then
            begin
              Result := -1;
              Break;
            end;
          end;

        end;
        // progress
        Progress.Position := i;
        Application.ProcessMessages;
      end;
      account.LastMsgCount := mailcount;

       Result := 0; //ok

    end
    else begin
      // if UIDL failed for some reason, revert to full-check.
      Result := DoFullAccountCheck(account);
    end;
  finally
    UIDLs.Free;
  end;


  Result := -1; // failure
end;


function TfrmPopUMain.DoQuickCheck(Account : TAccount; var Notify : boolean; var ShowIt : boolean; var ForceShow : boolean): integer;
var
  i : integer;          // loop counter
  minMsgNum : integer;
  UIDLs : TStringList;
  msgnum : integer;
  UID : string;
  MailItem : TMailItem;
  quickchecking : boolean;
  mailcount : integer;  // How many new messages have been found?
  firstMsgToDownload : integer;
  tempFlags : TIdMessageFlagsSet;
begin
  UIDLs := TStringList.Create;
  try
    account.Status := Translate('Checking... Getting UIDs');
    StatusBar.Panels[0].Text := ' '+account.Status;   //TODO: this should be only if account is showing
    if (Options.ShowNewestMessagesOnly) then
      quickchecking := account.GetUIDs(UIDLs, Options.HideViewed, Options.NumNewestMsgToShow)
    else
      quickchecking := account.GetUIDs(UIDLs, Options.HideViewed); //Only quickcheck if return value says server supports quickcheck. This also fills in the list of UIDs
    {$IFDEF LOG4D}
    TLogLogger.GetLogger('poptrayuLogger').Debug('QUICKCHECK - UIDs...');
    TLogLogger.GetLogger('poptrayuLogger').Debug(UIDLs.CommaText);
    {$ENDIF LOG4D}
    if quickchecking then
    begin

      account.Status := Translate('Checking... Clearing old Message Numbers');
      StatusBar.Panels[0].Text := ' '+account.Status;
      Application.ProcessMessages();
      // clear all msgnums
      account.Mail.ClearAllMsgNums();
      if Notify then
      begin
        account.Mail.SetAllNew(false);
        FTotalNew := Accounts.CountAllNew;
      end;
      // assign new nums
      account.Status := Translate('Checking... Re-assigning Message IDs');
      StatusBar.Panels[0].Text := ' '+account.Status;
      Application.ProcessMessages();

      // only assign nums for the newest N messages (if enabled)
      minMsgNum := 0;
      if (Options.ShowNewestMessagesOnly) then
        minMsgNum := Math.Max(0, UIDLs.Count-Options.NumNewestMsgToShow);

      for i := minMsgNum to UIDLs.Count-1 do
      begin
        msgnum := StrToInt(StrBefore(UIDLs[i],' '));
        UID := StrAfter(UIDLs[i],' ');
        MailItem := account.Mail.FindUIDWithDuplicates(UID);
        if MailItem <> nil then
        begin
          MailItem.MsgNum := msgnum;
          UIDLs[i] := '';

          // for imap check for changes to server flags
          if account.IsImap then begin
             if (Account.Prot as TProtocolIMAP4).GetFlags(UID, tempFlags) then
             begin
               MailItem.Seen := mfSeen in tempFlags;
               MailItem.Important := mfFlagged in tempFlags;
               MailItem.ToDelete := mfDeleted in tempFlags;     //?
             end;
          end;

        end;
      end;
      account.Status := Translate('Checking... Removing Deleted Items');
      StatusBar.Panels[0].Text := ' '+account.Status;
      Application.ProcessMessages();

      // delete the mailitems no longer on server
      if account.Mail.RemoveDeletedMessages() then begin//removes all msgs with MsgNum = -1
        ForceShow := True; //ForceShow is set if messages were removed from the list because they are not on the server (eg: deleted)
      end;
      // mismatch
      if ShowIt and Options.ShowWhileChecking and (Accounts[tabMail.TabIndex]=account) then   //TODO: accountToTab()
      begin
        account.Status := Translate('Checking... Double-Checking for Deleted Items');
        StatusBar.Panels[0].Text := ' '+account.Status;
        for i := 0 to lvMail.Items.Count-1 do
        begin
          MailItem := account.Mail.FindMessage(StrToInt(lvMail.Items[i].SubItems[colID]));
          if MailItem = nil then
          begin
            ForceShow := True;
            break;
          end;
        end;
      end;
      // count new messages
      account.Status := Translate('Checking... Counting New Messages');
      StatusBar.Panels[0].Text := ' '+account.Status;
      mailcount := 0;
      for i := 0 to UIDLs.Count-1 do
        if UIDLs[i] <> '' then
          Inc(mailcount);
      if mailcount>0 then
        if (Options.ShowNewestMessagesOnly) then
          account.Status := Translate('Downloading newest')+' '+IntToStr(Math.Min(UIDLs.Count,Options.NumNewestMsgToShow))+' '+Translate('messages')+'...'
        else
          account.Status := Translate('Downloading')+' '+IntToStr(mailcount)+' '+Translate('messages')+'...';
      StatusBar.Panels[0].Text := ' '+Accounts[tabMail.TabIndex].Status;
      // go fetch the new messages
      Progress.Max := UIDLs.Count;
      if (Options.ShowNewestMessagesOnly) then
        firstMsgToDownload := Math.Max(0, UIDLs.Count-Options.NumNewestMsgToShow)
      else
        firstMsgToDownload := 0;
      for i := firstMsgToDownload to UIDLs.Count-1 do
      begin
        if UIDLs[i] <> '' then
        begin
          msgnum := StrToInt(StrBefore(UIDLs[i],' '));
          if (account.IsImap) then begin
            if not GetIMAPMessageHeader(account,StrAfter(UIDLs[i],' ')) then
            begin
              Result := -1;
              Break;
            end;
          end else begin
            if not GetPOPMessageHeader(account,msgnum) then
            begin
              Result := -1;
              Break;
            end;
          end;

        end;
        // progress
        Progress.Position := i;
        Application.ProcessMessages;
      end;
      account.LastMsgCount := mailcount;

       Result := 0; //ok

    end
    else begin
      // if UIDL failed for some reason, revert to full-check.
      Result := DoFullAccountCheck(account);
    end;
  finally
    UIDLs.Free;
  end;

end;

function TfrmPopUMain.CheckMail(Account : TAccount; Notify : boolean; ShowIt : boolean) : integer;
////////////////////////////////////////////////////////////////////////////////
// Check for mail on 1 account
var
  i : integer;          // loop counter
  quickchecking : boolean;
  BalloonText : string;
  deletecount : integer;
  ForceShow : boolean;
{$IFDEF LOG4D}
  Logger : TLogLogger;
{$ENDIF LOG4D}
begin
  Result := 0;

  // check if online
  if Options.Online then
  begin
    if not IsConnectedToInternet then
    begin
      account.Status := Translate('Not On-Line');
      Exit; //Skip account check
    end;
  end;
  // inits
  FNotified := not Notify;
  FNotifyWav := '';
  FImportant := False;
  if FBusy and Notify then
  begin
    ErrorMsg(account,'Error:',Translate('Still busy checking'),True);
    Exit;
  end;
  if not Assigned(account.Prot) then
  begin
    ErrorMsg(account,'Error:',Translate('No protocol defined for account')+
             ' '+account.Name,False);
    Exit;
  end;
  FStop := False;
  FBusy := True;
  deletecount := 0;
  ForceShow := False;
  try

    {$IFDEF LOG4D}
//  TLogBasicConfigurator.Configure;
//
//  // set the log level
//  TLogLogger.GetRootLogger.Level := All;
//
//  // create a named logger
//  Logger := TLogLogger.GetLogger('poptrayuLogger2');
//  Logger.addAppender(TLogFileAppender.Create('filelogger','log4d_main.log'));

    Logger := TLogLogger.GetLogger('poptrayuLogger');
    Logger.Debug('Account Check...initial state');
    Logger.Debug(account.DebugPrint);
    {$ENDIF LOG4D}


    try
      Screen.Cursor := crHourGlass;

      // connect account
      account.Prot.SetOnWork(frmPopUMain.OnPreviewDownloadProgressChange);
      account.ConnectIfNeeded();                                             //INDY

      // delete any mail marked for deletion
      try
        ForceShow := not DeleteMails(account,deletecount);                   //INDY
      except
        on E:Exception do
          ErrorMsg(account,'Error:',e.Message,True);  //sync
      end;

      {$IFDEF LOG4D}
      Logger.Debug('Account check: After deleting');
      Logger.Debug(account.DebugPrint);
      {$ENDIF LOG4D}


      Application.ProcessMessages;  //only if in fg thread


      // Show progress indicators on GUI
      self.panProgress.Visible := True;            //sync
      self.actStopChecking.Enabled := True;
      self.Progress.Position := 0;

      ShowIcon(account,itChecking);

      account.ConnectIfNeeded();                                             //INDY

      try
        // quick check (Shift-click causes a full check instead)
        quickchecking := false;
        if Options.QuickCheck and not FShiftClick then
        begin //QUICKCHECK
          Result := DoQuickCheck(account, Notify, ShowIt, ForceShow);        //INDY
          quickchecking := true;
        end else begin //FULLCHECK
          if (Options.ShowNewestMessagesOnly) then
            Result := DoFullAccountCheckRecentOnly(account)
          else
            Result := DoFullAccountCheck(account);
        end; //FULLCHECK

        {$IFDEF LOG4D}
        Logger.Debug('Account check: After quick/full check');
        Logger.Debug(account.DebugPrint);
        {$ENDIF LOG4D}

        // refresh account
        account.RefreshAccountStatus();
        // show status
        if (not FStop) and (Result>=0) then
        begin
          if Notify then        // sync
          begin
            if quickchecking then
              account.Status := Translate('Quick Checked:')+' '+TimeToStr(Now)
            else
              account.Status := Translate('Checked:')+' '+TimeToStr(Now);
            if deletecount <> 0 then
              account.Status := account.Status +
                ' => ' + IntToStr(deletecount) + ' ' + Translate('message(s) deleted.') + '';
          end;
          account.Error := False;
        end;

      finally
        // return cursor to normal
        Screen.Cursor := crDefault;

        ResetToolbar;

        // Disconnect account
        if NOT account.IsImap then
          if account.Prot.Connected then
            account.Prot.DisconnectWithQuit;

        // deleted by rules
        if account.CountStatus([misToBeDeleted]) > 0 then
        begin
          if FNotifyWav <> '' then
            PlayNotify(account);
          if not Options.DeleteNextCheck then
            CheckMail(account,False,ShowIt);
        end;

        // important messages balloon
        if FImportant then
        begin
          for i := 0 to account.Mail.Count-1 do
            if account.Mail[i].Important and account.Mail[i].New then
              BalloonText := BalloonText + ForceWidth(account.Mail[i].From,100) + #9 + ReduceWidth(account.Mail[i].Subject,170) + #13#10;
          Balloon('Important',BalloonText,bitInfo,30);
        end;
      end; //finally
    except
      on e : EIdException do
        begin
          Screen.Cursor := crDefault;
          account.Error := True;
          Result := -1;
          if FStop then
            account.Status := Translate('User Aborted.')+HintSep+DateTimeToStr(Now)
          else
            if (e is EIdConnClosedGracefully) then
              ShowUsernameOrPasswordError(account)
            else
              // This is where an error message is trapped if the account is
              // unable to connect to the server on a routine check (or other error)
              // eg: Connection Reset By Peer
              ErrorMsg(account,'Connect Error:',e.Message,Options.NoError);

              // To recover from Connection Reset by Peer, IMAP needs to
              // close the connection and re-connect
              if (account.isImap) then
                account.prot.Disconnect;
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
      (account.Mail.Count > account.IgnoreCount ) and
       (account.CountNew() > 0) then
       //(MsgIDs <> account.MsgIDs) then
    begin
      PlayNotify(account);
    end;

    // need to set the toolbar buttons enabled/disabled depending on whether
    // or not there is mail in the inbox (eg: all mail deleted from server,
    // disable the reply and spam buttons)
    // same as lvMailSelectItem();
    if (account.Mail.Count = 0) then begin
      OnNoMessageSelected();
    end;

    if Result >= 0 then
      Result := account.Mail.Count;
  finally
    FLastCheck := DateTimeToStr(Now);
    FBusy := False;
    ShowIcon(account,itNormal);
    // show
    if ShowIt and (Accounts[tabMail.TabIndex]=account) then
      ShowMail(Accounts[tabMail.TabIndex], not Options.ShowWhileChecking or (deletecount<>0) or ForceShow);

    {$IFDEF LOG4D}
    Logger.Debug('Account check: very very end');
    Logger.Debug(account.DebugPrint);
    {$ENDIF LOG4D}
  end;
end;

// Adds an individual email message to the listview of new/read emails
procedure TfrmPopUMain.ShowMailMessage(account : TAccount; i : integer);
var
  mailItem : TMailItem;
begin
  mailItem := account.Mail[i];

  // Messages that have already been seen are hidden if "Hide Viewed Messages"
  // is selected in options.
  if not( Options.HideViewed and mailItem.isRead(account.IsImap) ) then
  begin
    with lvMail.Items.Add do
    begin
      // icon
      ImageIndex := GetStatusIcon(mailItem);
      if mailItem.isRead(account.IsImap) then
        StateIndex := STATE_READ
      else
         StateIndex := STATE_UNREAD;

      // listview info
      Caption := mailItem.From;
      SubItems.Add(mailItem.MailTo);
      SubItems.Add(mailItem.Subject);
      SubItems.Add(mailItem.DateStr);
      SubItems.Add(IntToStr(mailItem.Size) + ' ' + FKB);
      SubItems.Add(IntToStr(mailItem.MsgNum)); //colID
      SubItems.Add(FloatToStr(mailItem.Date)); //colDate
      Data := mailItem;
    end;
  end;
end;

procedure TfrmPopUMain.ShowMail(account : TAccount; ClearIt : boolean);
////////////////////////////////////////////////////////////////////////////////
// Show mail stored in array on the list view
var
  i : integer;
  MailItem : TMailItem;
begin
  if (account = nil) or (account.Mail = nil) then Exit;

  // show icon count
  ShowIcon(account,itNormal);
  // listview items
  if ClearIt then
  begin
    lvMail.Clear;
    for i := 0 to account.Mail.Count-1 do
    begin
      ShowMailMessage(account,i);
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
        if mailItem.isRead(account.IsImap) then
          lvMail.Items[i].StateIndex := STATE_READ
        else
          lvMail.Items[i].StateIndex := STATE_UNREAD;
      end;
    end;
    lvMail.Items.EndUpdate;
  end;
  if (FSortColumn <> NOSORT) or dm.mnuSpamLast.Checked then
    lvMail.AlphaSort;
  // del spam button
  actDeleteSpam.Enabled := account.CountStatus([misSpam]) > 0;
  actSelectSpam.Enabled := actDeleteSpam.Enabled;
  actSpam.Enabled := actDeleteSpam.Enabled or actMarkSpam.Enabled or actUnmarkSpam.Enabled;
  // show statusbar
  ShowStatusBar(account);
  // clear icon
  if not FMinimized and (PageControl.ActivePageIndex = 0) then
    MarkAllViewed;
end;

procedure TfrmPopUMain.SendMail(const ToAddress, Subject, Body: string);
////////////////////////////////////////////////////////////////////////////////
// Send EMAIL using either MAPI or "mailto:"
// Note: HexEncodeSpecialChars is used to convert invalid chars to hex values
var
  email,subj,mailbody, ccparsed : string;
  mailto : string;
begin
  // local vars work, params not
  email := ToAddress;
  //if (cc <> '') then
  //begin
  //  ccparsed := 'cc=' + HexEncodeSpecialChars(cc,false) + '&'; //Do not translate
  //end;
  subj := Subject;
  mailbody := Body;
  if Options.UseMAPI then
  begin //MAPI
    MAPISendMessage(Application.Handle,email,subj,mailbody);  //TODO CC support
  end
  else begin //mailto
    if mailbody <> '' then
    begin
      // convert invalid chars to the hex values
      email := HexEncodeSpecialChars(email,false);
      subj := HexEncodeSpecialChars(subj,false);
      mailbody := HexEncodeSpecialChars(mailbody,true);

      mailto := 'mailto:'+email+'?'+ccparsed+'subject='+subj+'&body=';  //do not translate
      // limit mailto link to 2023 chars (Outlook and Outlook Express limit)
      mailbody := Copy(mailbody,1,2023-length(mailto));                         // mod BG: 12.09.2002
      ClearImpairedCode(mailbody);                                       		    // add BG: 12.09.2002
      mailto := mailto + mailbody;
      ExecuteFile(mailto,'','',SW_RESTORE);
    end
    else begin
      if subj <> '' then
      begin
        subj := HexEncodeSpecialChars(subj,false);
        ExecuteFile('mailto:'+email+'?'+ccparsed+'subject='+subj,'','',SW_RESTORE)  //do not translate
      end
      else
        if (ccparsed <> '') then
          ccparsed := '?' + ccparsed;
        ExecuteFile('mailto:'+email,'','',SW_RESTORE)  //do not translate
    end;
  end;
end;

//------------------------------------------------------------------------------
// Deletes a single mail message.
// Used by the preview window when the delete button is pressed.
//------------------------------------------------------------------------------
procedure TfrmPopUMain.DeleteOneMailItem(Account : TAccount; MailItem : TMailItem);
var
  i : integer;
begin
  if MailItem<>nil then
  begin
    // mark mail message to be deleted
    MailItem.ToDelete := True;

    // If current account is visible in main window,
    // add a deleted icon to the message to be deleted
    if Accounts[tabMail.TabIndex]=Account then begin
      for i := 0 to lvMail.Items.Count-1 do
      begin
        if lvMail.Items[i].Data = MailItem then
          lvMail.Items[i].ImageIndex := mToDelete;
      end;
    end;

    if not Options.DeleteNextCheck then
      CheckMail(Account,false,true); // delete and recheck mail immediately
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

procedure TfrmPopUMain.SetColumnGroups();
var
  item : TListItem;
  Group: TListGroup;
  dateDiff, daysAgo, groupNum : integer;
  when : TDateTime;
begin
  lvMail.GroupView := true;
  lvMail.Groups.Clear;

  groupNum := 0;
  Group := lvMail.Groups.Add();
  Group.Header := Translate('Today');
  Group.GroupID := groupNum;

  Inc(groupNum);
  Group := lvMail.Groups.Add();
  Group.Header := Translate('Yesterday');
  Group.GroupID := groupNum;

  for daysAgo := 2 to 6 do
  begin
    Inc(groupNum);
    Group := lvMail.Groups.Add();
    when := Date - daysAgo;
    Group.Header := Translate(SysUtils.FormatSettings.LongDayNames[DayOfWeek(when)]);
    Group.GroupID := groupNum;
  end;

  Inc(groupNum);
  Group := lvMail.Groups.Add();
  Group.Header := Translate('One Week Ago');
  Group.GroupID := groupNum;

  Inc(groupNum);
  Group := lvMail.Groups.Add();
  Group.Header := Translate('Two Weeks Ago');
  Group.GroupID := groupNum;

  Inc(groupNum);
  Group := lvMail.Groups.Add();
  Group.Header := Translate('Three Weeks Ago');
  Group.GroupID := groupNum;

  Inc(groupNum);
  Group := lvMail.Groups.Add();
  Group.Header := Translate('One Month Ago');
  Group.GroupID := groupNum;

  Inc(groupNum);
  Group := lvMail.Groups.Add();
  Group.Header := Translate('Two Months Ago');
  Group.GroupID := groupNum;

  Inc(groupNum);
  Group := lvMail.Groups.Add();
  Group.Header := 'Older';
  Group.GroupID := groupNum;


  for item in lvMail.Items do
  begin
    when := StrToFloat(item.SubItems[colDate]);
    dateDiff := DaysBetween(DateOf(Tomorrow()), when);
    if (dateDiff < 0) then
      item.GroupID := 0
    else if (dateDiff < 7) and (dateDiff >= 0) then
      item.GroupID := dateDiff
    else if (dateDiff >= 7) and (dateDiff < 14) then
      item.GroupID := 7
    else
      item.GroupID := 8;
  end;
end;


// This procedure is called by uDM when the menu option to sort by a given
// column is selected. lvMail will be sorted by the column selected.
procedure TfrmPopUMain.SetSortColumn(ColNum : integer);
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

  //SetColumnGroups();
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
var
  i: integer;
begin
  if M.wParam <> SC_MINIMIZE then
    inherited
  else
    HideForm;

  //TODO: duplicated code
  // conditionally close all preview windows if user preference is set.
  if (Options.AutoClosePreviewWindows) then begin
    for i := 0 to Screen.Formcount - 1 do
      Screen.Forms[i].close;
  end;
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

procedure TfrmPopUMain.UpdateUIAfterLoadingIni();
begin
  UpdateFonts();

  // load plugins list into array and combo
  //AccountsForm.RefreshProtocols();

  // Set whether viewed messages are hidden or not
  actHideViewed.Checked := Options.HideViewed;

  // load e-mail client icon
  GetBitmapFromFileIcon(Options.MailProgram,btnStartProgram.Glyph,True);
  dm.imlActions.ReplaceMasked(actStartProgram.ImageIndex,btnStartProgram.Glyph,clBtnFace);
  // Set default spam action
  Self.SetDefaultSpamAction(Options.ToolbarSpamAction);
  // skin
  LoadSkin();
  // multiline account tabs
  tabMail.MultiLine := Options.MultilineAccounts;
  AccountsForm.tabAccounts.MultiLine := Options.MultilineAccounts;
  // set interval
  dm.Timer.Interval := round(Options.Interval * 60000);
  AccountsForm.panIntervalAccount.Visible := Options.TimerAccount;
  // rule areas
  RulesForm.enableBodyRuleArea(Options.GetBody);

  OptionsForm.UpdateUIAfterLoadingIni();

  Application.ProcessMessages;
end;

procedure TfrmPopUMain.OnPreviewDownloadProgressChange(const AWorkCount: Integer);
begin
  if FPreview and not(FMinimized) and Assigned(frmPreview) then
  begin
    frmPreview.Progress.StepBy(AWorkCount-FMsgRead);
    FMsgRead := AWorkCount;
    Application.ProcessMessages;
    if frmPreview.FStop then
    begin
      frmPreview.FAccount.Prot.SetOnWork(nil);
      frmPreview.FAccount.Prot.Disconnect;
      Abort;
    end;
  end;
end;

procedure TfrmPopUMain.OnProcessWork(Sender: TObject; AWorkMode: TWorkMode;
   AWorkCount: Int64);
begin
  OnPreviewDownloadProgressChange(AWorkCount);
end;

// ----------------------------------------------------------- mail messages ---

procedure TfrmPopUMain.Preview(MailItem : TMailItem; Account : TAccount);
////////////////////////////////////////////////////////////////////////////////
// Open preview window and download the message
var
  mMsgSize : integer;
  i : integer;
  RawMsg : TStringList;
  TmpStream : TMemoryStream;
  pRawMsg : PChar;
begin
  // check if busy
  if FBusy then  //todo: account.busy
  begin
    if not Options.NoError then  //TODO: should this condition be eliminated and balloon regardless?
      Balloon('PopTrayU',Translate('Error:')+' '+Translate('Still Busy Checking'),bitError,15);
    Exit;
  end;

  // Sanity Check: Can't preview a mail item that doesn't exist.
  if (MailItem = nil) then begin
    if not Options.NoError then
      Balloon('PopTrayU',Translate('Error:')+' '+Translate('Message Not Found'),bitError,15); //TODO: add to Translation strings
    Exit;
  end;



  try
    // show window
    frmPreview := TfrmPreview.Create(Application);
    if Options.OnTop then begin
      frmPreview.FormStyle := fsStayOnTop
    end;
    frmPreview.LoadPreviewIni();
    frmPreview.FAccount := Account;

    // copies headers already downloaded
    frmPreview.LoadMailMessage(MailItem);


    TranslateForm(frmPreview);
    frmPreview.Caption := Translate('Preview') + ' - PopTrayU';


    Application.ProcessMessages;

    //--------------------------------------------------------------------------
    // -- move to background thread -- GetConnection()
    Account.Prot.SetOnWork(OnPreviewDownloadProgressChange);

    // connect
    Screen.Cursor := crHourGlass;   //TODO: this should be threaded. not requiring an hourglass
    if Account.Prot.Connected then Account.Prot.Disconnect; //TODO: instead of disconnecting, make sure connection is in proper state
    account.ConnectIfNeeded();
    Screen.Cursor := crDefault;
    Application.ProcessMessages;
    //--------------------------------------------------------------------------

      frmPreview.Show;

      // progress
      frmPreview.FStop := False;
      FPreview := True;
      frmPreview.ShowProgressPanel(); //sync

    // get message
    try
      //--------------------------------------------------------------------------
      // -- move to background thread --  GetMessageSizeInBytes() : Integer
      if Account.IsImap() then
        mMsgSize := (Account.Prot as TProtocolIMAP4).RetrieveMsgSizeByUID(MailItem.UID)
      else
        mMsgSize := Account.Prot.RetrieveMsgSize(MailItem.MsgNum);
      //--------------------------------------------------------------------------

      // Update UI (progress bar) based on message size
      if (mMsgSize < 0) then begin
        // this happens, for example, if an IMAP message is deleted/moved by an external
        // client after checking, before selecting preview.
        raise Exception.Create('Message may have been deleted by an external client'); //todo: this prevents TProgressBar out of range from showing as the error. but the string printed is not from this message.
      end;
      frmPreview.Progress.Max := mMsgSize; //Synchronize this
      frmPreview.lblProgress.Caption := Translate('Downloading...');  //Synchronize this


      RawMsg := TStringList.Create;
      try
        //--------------------------------------------------------------------------
        // -- move to background thread --  Download Message
        // TODO: for IMAP download by UID.
        if Options.TopLines>0 then  //Future:  AND NOT downloadFullOnPreview
          Account.Prot.RetrieveTop(MailItem.MsgNum,Options.TopLines,pRawMsg)  //TODO: BUG HERE!! doesn't work for IMAP until relative msg nums are in sync
        else begin
          if Account.IsImap then
            (Account.Prot as TProtocolIMAP4).RetrieveRawByUid(MailItem.UID,pRawMsg)
          else
            Account.Prot.RetrieveRaw(MailItem.MsgNum,pRawMsg);
        end;
        //-------------------------------------------------------------------------

        RawMsg.SetText(pRawMsg);
        Account.Prot.FreePChar(pRawMsg);
        frmPreview.FRawMsg := RawMsg.Text;
        // delims
        for i := 0 to RawMsg.Count-1 do
          if RawMsg[i]='.' then RawMsg[i] := '. ';
        RawMsg.Add('.');
        // process message
        TmpStream := TMemoryStream.Create;
        try
          frmPreview.lblProgress.Caption := Translate('Processing...'); //Synchronize
          RawMsg.SaveToStream(TmpStream);
          TmpStream.Position := 0;
          try
            frmPreview.ProcessMessage(frmPreview.Msg,TmpStream,Options.TopLines>0);
          except
//            on e : EIdEmailParseError do
//            begin
//              // ignore '@ outside address' error in Indy 9
//              frmPreview.Msg.From.Name := frmPreview.Msg.Headers.Values['From'];
//              frmPreview.Msg.Date := GMTToLocalDateTime(frmPreview.Msg.Headers.Values['Date']);
//            end;
            on E: Exception do
            begin
              if E.Message = RSUnevenSizeInDecodeStream then
              begin
                frmPreview.lblProgress.Caption := Translate('Re-Processing...');  //Synchronize
                // remove #13 from end of lines
                for i := 0 to RawMsg.Count-1 do
                  if RightStr(RawMsg[i],1) = #13 then
                    RawMsg[i] := Copy(RawMsg[i],1,Length(RawMsg[i])-1);
                TmpStream.Position := 0;
                RawMsg.SaveToStream(TmpStream);
                TmpStream.Position := 0;
                // try again
                frmPreview.Msg.Clear; //Synchronize
                try
                  frmPreview.ProcessMessage(frmPreview.Msg,TmpStream,Options.TopLines>0);  //Synchronize
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
        //frmPreview.btnOK.Enabled := True;
        //frmPreview.btnOK.SetFocus;
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
          end
          else begin
            //frmPreview.panProgress.Hide;
            Account.Status := Translate('Unable to Retrieve message.')+' '+
               Translate(E.Message);
            StatusBar.Panels[0].Text := ' '+Account.Status; //have to hard-push the status onto the GUI
          end;
          frmPreview.Close;
          FreeAndNil(frmPreview);

          // Check whether the message still exists on the server, and delete if it doesn't
          // (if we are here, we don't expect this message to still exist, we expect that
          // it was probably deleted by an external client)
          if Account.IsImap then begin
             if (Account.Prot as TProtocolIMAP4).CheckMsgExists(MailItem.UID) <> true then begin
               //delete from message list
               if lvMail.ItemIndex > -1 then
                 if lvMail.Items[lvMail.ItemIndex].Data = MailItem then
                   lvMail.Items[lvMail.ItemIndex].Delete;
             end;
          end;
        end;
        Exit;
      end;
    end;
    // show contents
    try
            frmPreview.ShowMsg;   //Synchronize
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
    if Account.Prot.Connected then Account.Prot.Disconnect;
  end;

end;


function TfrmPopUMain.DeleteMails(account : TAccount; var DelCount : integer) : boolean;
////////////////////////////////////////////////////////////////////////////////
// Delete all mail marked as 'ToDelete' from "account" specified as parameter.
//
// @Return true if messages were successfully deleted. False if safe delete
//         prevented one or more messages from being deleted.
// DelCount is an OUTPUT parameter - it returns the number of items deleted.
var
  i : integer;
  uidList : TStringList;
  spamList : TStringList;
  {$IFDEF LOG4D}
  Logger: TLogLogger;
  {$ENDIF LOG4D}
begin
  Result := True;
  DelCount := 0;
  if account.CountStatus([misToBeDeleted])>0 then
  begin
    ShowIcon(account,itDeleting);
    account.Status := Translate('Deleting...');

    {$IFDEF LOG4D}
    Logger := TLogLogger.GetLogger('poptrayuLogger');
    Logger.Debug('DeleteMails - '+account.Name);
    Logger.Debug(account.DebugPrint);
    {$ENDIF LOG4D}

    // delete from server

    try
      if account.IsImap() then begin
        // On IMAP you can delete multiple messages in one pass, AND
        // you can delete them by UID directly without checking MsgNum->UID

        uidList := TStringList.Create;
        spamList := TStringList.Create;

        for i := 0 to account.Mail.Count-1 do
        begin
          if account.Mail[i].ToDelete then
          begin
            if (account.MoveSpamOnDelete) and account.Mail[i].Spam then begin
              spamList.Add(account.Mail[i].UID);
            end else
              uidList.Add(account.Mail[i].UID);
            Inc(DelCount);
          end;
        end;
        if (spamList.Count > 0) then begin
          (Account.Prot as TProtocolIMAP4).MoveToFolderByUID(spamList, account.SpamFolderName);
        end;

        if (account.MoveTrashOnDelete) then begin
          // move to server trash folder
          Result := (Account.Prot as TProtocolIMAP4).MoveToFolderByUID(uidList, account.TrashFolderName);

        end else begin
          // delete permanantly
          try
            Result := (Account.Prot as TProtocolIMAP4).DeleteMsgsByUID(uidList, account.ExpungeDeletedMessages);
          except on EIdReadTimeout do
            begin
              Account.Prot.Disconnect;
              Account.Connect();
              try
                Result := (Account.Prot as TProtocolIMAP4).DeleteMsgsByUID(uidList, account.ExpungeDeletedMessages);
              except
                account.Status := Translate('Delete Messages by UID Failed.');
              end;
            end;
          end;
        end;

        uidList.Free;
        spamList.Free;
      end
      else begin // POP3 or "custom" protocol plugin
        for i := 0 to account.Mail.Count-1 do
        begin
          if account.Mail[i].ToDelete then
          begin
            if CheckUID(account,account.Mail[i].MsgNum) then
            begin
              account.Prot.Delete(account.Mail[i].MsgNum);
              Inc(DelCount);
            end
            else begin
              // safe delete failed
              Result := False;
              account.Status := Translate('Safe Delete Failed for')+' "'+ account.Mail[i].Subject + '", '+Translate('but')+' '+  IntToStr(DelCount)+' '+Translate('message(s) deleted.');
              Exit;
            end;
          end;
        end;
      end;

    finally
      // MUST send QUIT command for POP3 account to enter UPDATE state and
      // finalize all message deletion. (this means reconnecting later to
      // check for new messages)
      if (account.Prot.ProtocolType = protPOP3) then
        account.Prot.DisconnectWithQuit;

      //TODO: do we need to remove deleted at this point for quick check?
      //account.Mail.RemoveToDeleteMsgs();
    end;

    {$IFDEF LOG4D}
    Logger := TLogLogger.GetLogger('poptrayuLogger');
    Logger.Debug('DeleteMails END - '+account.Name+' - '+ IntToStr(DelCount)+'message(s) deleted.');
    Logger.Debug(account.DebugPrint);
    {$ENDIF LOG4D}

    account.Status := IntToStr(DelCount)+' '+Translate('message(s) deleted.');
  end;
end;



function TfrmPopUMain.CheckUID(account: TAccount; msgnum: integer; UID : string=''): boolean;
////////////////////////////////////////////////////////////////////////////////
// Check if current UID and stored UID is the same.  Must be connected
var
  MailItem : TMailItem;
begin
  MailItem := account.Mail.FindMessage(msgnum);
  if (MailItem = nil) then begin    //added debug
    //ErrorMsg(account,'DEBUG:',Translate('UID Not Found for msgnum: '+IntToStr(msgnum)),Options.NoError);
    Result := false;
    exit;
  end;
  // default param
  if UID='' then UID := MailItem.UID;
  // compare UID
  Result := not(Options.SafeDelete) or not(account.UIDLSupported) or
            (Options.SafeDelete and (account.GetUID(msgnum) = UID));
  if not Result then
  begin
    // safe delete failed
    ErrorMsg(account,'Error:',Translate('Message identifiers don''t match.'+#13#10+'The Safe Delete option prevented deletion of this message.'),Options.NoError);
  end;
end;

procedure TfrmPopUMain.MarkAllViewed(num : integer = -1);
////////////////////////////////////////////////////////////////////////////////
// Mark all messages as viewed
var
  i : integer;
  changed : boolean;
  account : TAccount;
begin
  // viewed e-mails
  if (num = -1) and (tabMail.Tabs.Count>0) then num := tabMail.TabIndex+1;
  if num < 0 then Exit;
  if Accounts.Count <= 0 then Exit; //added to prevent exception when no accounts
  account := Accounts[num-1];
  if account.Mail = nil then Exit;
  if account.Mail.Count = 0 then Exit;
  account.ViewedMsgIDs.Clear;
  changed := false;
  for i := 0 to account.Mail.Count-1 do
  begin
    if not account.Mail[i].Viewed then changed := true;
    account.Mail[i].Viewed := True;
    account.ViewedMsgIDs.Add(account.Mail[i].MsgID);
  end;
  // redraw the icon
  UpdateTrayIcon;
//  if changed then CallNotifyPlugins;
end;

function TfrmPopUMain.HasAttachment (msg : IdMessage.TIdMessage) : boolean;
begin
   Result := AnsiContainsText(msg.ContentType,'multipart/mixed') or
             AnsiContainsText(msg.ContentType,'multipart/related');

   if (Result = true) and Options.GetBody then begin
     // If GetBody is enabled we can do better at correctly determining
     // whether the message has an attachment or not.


     //if (msg.Body.Count > 0) and     //works
     //    (msg.MessageParts.AttachmentCount < 1)    //doesn't
     //then
       //Result := false;

       //NOT ATTACHMENTS
(* Content-Type: multipart/alternative;
Content-Type: multipart/related;
Content-Type: text/plain;
Content-Type: text/html;




IS ATTACHMENT
Content-Type: image/png; *)

// 'Content\-Type: (\S*); '
   end;

end;



function TfrmPopUMain.SelectedMailItem(Item : TListItem = nil): TMailItem;
begin
  if Item = nil then Item := lvMail.Selected;
  if Item = nil then
    Result := nil
  else
    Result := Item.Data; //Accounts[tabMail.TabIndex].Mail.FindMessage(StrToInt(Item.SubItems[colID]));
end;

// Loads an email (selected in the message list) in the user's email client.
procedure TfrmPopUMain.RunMessage(account: TAccount; msgnum: integer);
begin
  Parallel.Async(
    procedure
    var
      pMsg : PChar;
      f : TextFile;
    begin
      // connect
      account.ConnectIfNeeded();
      try
        // retrieve and save
        account.Prot.RetrieveRaw(msgnum,pMsg);
        AssignFile(f,IniPath+Options.TempEmailFilename); //temp.eml
        Rewrite(f);
        Writeln(f,pMsg);
        CloseFile(f);
        // execute
        ExecuteFile(IniPath+Options.TempEmailFilename,'',IniPath,SW_NORMAL);
      finally
        //if account.Prot.Connected then
        //  account.Prot.DisconnectWithQuit;
      end;
    end
  );
end;

function TfrmPopUMain.GetPOPMessageHeader(account : TAccount; msgnum: integer) : boolean;
var
  MsgSize : integer;
  MsgID : string;
  pHeader : PChar;
  MailItem : TMailItem;
  ret : boolean;
  split : cardinal;
  MsgHeader : TIdMessage; //experimental, moved from class variable
  tempFlags : TIdMessageFlagsSet;
  wasImportant : boolean;
begin
  // check for stop
  if FStop then
  begin
    account.Status := Translate('User Aborted.')+HintSep+DateTimeToStr(Now);;
    account.Error := True;
    Result := false;
    Exit;
  end;

  MsgHeader := TIdMessage.Create(Self);
  MsgHeader.NoDecode := True;

  // get size
  MsgSize := Account.Prot.RetrieveMsgSize(msgnum)  div 1024 +1;

  // get headers/body
  try
    if Options.GetBody then
    begin
      // get body
      if (Options.GetBodySize>0) and (MsgSize<=Options.GetBodySize) then
        ret := account.Prot.RetrieveRaw(msgnum,pHeader)
      else begin
        if Options.GetBodyLines>0 then
          ret := account.Prot.RetrieveTop(msgnum,Options.GetBodyLines,pHeader)
        else
          if Options.GetBodySize=0 then
            ret := account.Prot.RetrieveRaw(msgnum,pHeader)
          else
            ret := account.Prot.RetrieveHeader(msgnum,pHeader);
      end;
    end
    else begin
      // get headers
      ret := account.Prot.RetrieveHeader(msgnum,pHeader);
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
      ErrorMsg(account,'Retrieve Error:',Translate('Unable to Retrieve Message'),Options.IgnoreRetrieveErrors);
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
  account.Prot.FreePChar(pHeader);
  try
    MsgHeader.ProcessHeaders;
  except
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
        ErrorMsg(account,'Retrieve Error:',e.Message,Options.IgnoreRetrieveErrors);
        Result := false;
        Exit;
      end;
      MsgHeader.From.Name := MsgHeader.Headers.Values['From'];
    end;
  end;



  MsgID := FloatToStr(MsgHeader.Date) + MsgHeader.MsgID;

  // store header details in mail item
  MailItem := account.Mail.Add;
  MailItem.MsgNum := msgnum;
  if MsgHeader.From.Name = '' then
    MailItem.From := MsgHeader.From.Text
  else
    MailItem.From := MsgHeader.From.Name;
  MailItem.Address := MsgHeader.From.Address;
  if MsgHeader.ReplyTo.Count>0 then
    MailItem.ReplyTo := MsgHeader.ReplyTo[0].Address;
  MailItem.MailTo := MsgHeader.Recipients.EMailAddresses;
  MailItem.Subject := MsgHeader.Subject;
  MailItem.Date := MsgHeader.Date;
  MailItem.Seen := mfSeen in MsgHeader.Flags;
  if int(MsgHeader.Date)=0 then
    MailItem.DateStr := Copy(MsgHeader.Headers.Values['Date'],1,16)
  else begin
    if (Options.UseCustomDateFormat) then
      DateTimeToString(MailItem.DateStr, Options.CustomDateFormatString, MsgHeader.Date)
    else
      MailItem.DateStr := DateTimeToStr(MsgHeader.Date);


  end;
  MailItem.Size := MsgSize;
  if integer(MsgHeader.Priority) = 255 then
    MailItem.Priority := mpNormal
  else
    MailItem.Priority := TMessagePriority(MsgHeader.Priority);
  MailItem.HasAttachment := HasAttachment(MsgHeader);
  MailItem.MsgID := MsgID;
  if Options.SafeDelete then
    MailItem.UID := account.GetUID(msgnum);

  MailItem.Important := False;
  if (account.isImap) then begin
    (account.Prot as TProtocolIMAP4).GetFlags(MailItem.UID, tempFlags);
    MailItem.Seen := (mfSeen in tempFlags);
    MailItem.Important := (mfFlagged in tempFlags);
  end;

  MailItem.Viewed := account.ViewedMsgIDs.IndexOf(MsgID) >= 0;
  MailItem.New := not MailItem.Viewed and not AnsiContainsStr(account.MsgIDs,MsgID);

  MailItem.Spam := False;
  MailItem.TrayColor := -1;

  wasImportant := MailItem.Important;

  // rules
  RulesManager.CheckRules(MailItem,MsgHeader,account);

  // if important flag was changed by rules, set it on the server.
  if (account.IsImap) and (wasImportant <> MailItem.Important) then begin
    (account.Prot as TProtocolIMAP4).SetImportantFlag(MailItem.UID, MailItem.Important);
  end;


//  // notify plugin
//  with MailItem do
//  begin
//    NotifyPluginMessage(From,MailTo,Subject,MsgHeader.Date,Viewed,New,Important,Spam);
//    NotifyPluginMsgBody(MsgHeader.Headers.Text,MsgHeader.Body.Text);
//  end;
  // show
  if Options.ShowWhileChecking and (Accounts[tabMail.TabIndex]=account) then
  begin
    ShowMailMessage(account,account.Mail.Count-1);
    if not lvMail.Focused and (FSortColumn = NOSORT) then
      lvMail.Items[lvMail.Items.Count-1].MakeVisible(true);
  end;
  // success
  Result := True;

  FreeAndNil(MsgHeader);
end;

function TfrmPopUMain.GetIMAPMessageHeader(account : TAccount; uid : string) : boolean;
var
  MsgSize : integer;
  MsgID : string;
  //pHeader : PChar;
  MailItem : TMailItem;
  //ret : boolean;
  MsgHeader : TIdMessage; //experimental, moved from class variable
  msgNum : integer;
  seen : boolean;
  wasImportant: boolean;
begin
  // check for stop
  if FStop then
  begin
    account.Status := Translate('User Aborted.')+HintSep+DateTimeToStr(Now);;
    account.Error := True;
    Result := false;
    Exit;
  end;

  MsgHeader := TIdMessage.Create(Self);
  //if MODE = FULLHEADERS then begin
  (account.Prot as TProtocolIMAP4).UIDRetrievePeekHeader(uid,MsgHeader);
  // end else begin
  //(account.Prot as TProtocolIMAP4).UIDRetrievePeekEnvelope(uid,MsgHeader); //INDY BUG MAKES THIS SOMETIMES NOT WORK
  seen := (account.Prot as TProtocolIMAP4).UIDCheckMsgSeen(uid);
  // end;
  msgNum := StrToInt(uid);

  // get size
  MsgSize := (Account.Prot as TProtocolIMAP4).RetrieveMsgSizeByUID(uid) div 1024 +1;


  // store header details in mail item
  MailItem := account.Mail.Add;
  MailItem.MsgNum := msgNum;
  if MsgHeader.From.Name = '' then
    MailItem.From := MsgHeader.From.Text
  else
    MailItem.From := MsgHeader.From.Name;
  MailItem.Address := MsgHeader.From.Address;
  if MsgHeader.ReplyTo.Count>0 then
    MailItem.ReplyTo := MsgHeader.ReplyTo[0].Address;
  MailItem.MailTo := MsgHeader.Recipients.EMailAddresses;
  MailItem.Subject := MsgHeader.Subject;
  MailItem.Date := MsgHeader.Date;
  if int(MsgHeader.Date)=0 then
    MailItem.DateStr := Copy(MsgHeader.Headers.Values['Date'],1,16)
  else begin
    if (Options.UseCustomDateFormat) then
      DateTimeToString(MailItem.DateStr, Options.CustomDateFormatString, MsgHeader.Date)
    else
      MailItem.DateStr := DateTimeToStr(MsgHeader.Date);


  end;
  MailItem.Size := MsgSize;
  if integer(MsgHeader.Priority) = 255 then
    MailItem.Priority := mpNormal
  else
    MailItem.Priority := TMessagePriority(MsgHeader.Priority);
  MailItem.HasAttachment := HasAttachment(MsgHeader);
  MailItem.MsgID := MsgID;
  if Options.SafeDelete then
    MailItem.UID := uid;//GetUID(account,msgnum);
  //MailItem.Viewed := (mfSeen in MsgHeader.Flags);//JRW TESTING
  MailItem.Seen := seen;//mfSeen in MsgHeader.Flags;
  MailItem.Viewed := account.ViewedMsgIDs.IndexOf(MsgID) >= 0;
  //MailItem.New := not MailItem.Viewed ;//JRWTESTING
  MailItem.New := not MailItem.Viewed and not AnsiContainsStr(account.MsgIDs,MsgID);
  MailItem.Important := False;
  MailItem.Spam := False;
  MailItem.TrayColor := -1;

  wasImportant := MailItem.Important;

  // rules
  RulesManager.CheckRules(MailItem,MsgHeader,account);

  // if important flag was changed by rules, set it on the server.
  if (account.IsImap) and (wasImportant <> MailItem.Important) then begin
    (account.Prot as TProtocolIMAP4).SetImportantFlag(MailItem.UID, MailItem.Important);
  end;

//  // notify plugin
//  with MailItem do
//  begin
//    NotifyPluginMessage(From,MailTo,Subject,MsgHeader.Date,Viewed,New,Important,Spam);
//    NotifyPluginMsgBody(MsgHeader.Headers.Text,MsgHeader.Body.Text);
//  end;
  // show
  if Options.ShowWhileChecking and (Accounts[tabMail.TabIndex]=account) then
  begin
    ShowMailMessage(account,account.Mail.Count-1);
    if not lvMail.Focused and (FSortColumn = NOSORT) then
      lvMail.Items[lvMail.Items.Count-1].MakeVisible(true);
  end;
  // success
  Result := True;

  FreeAndNil(MsgHeader);

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
  ShowStatusBar(Accounts[tabMail.TabIndex]);
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
  colorMap : TCustomActionBarColorMap;
begin
  // Vertical Font
  frmPopUMain.PageControl.Font := Options.VerticalFont;

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
  AccountsForm.Font := font;
  AccountsForm.UpdateFonts();
  MailToolBar.Font := font;
  RulesForm.RulesToolbar.Font := font;
  RulesForm.Font := font;
  OptionsForm.Font := font;
  AboutForm.Font := font;

  // Bolded Global Font Items
  font.Style := font.Style + [fsBold];
  font.Size := font.Size + 2;
  OptionsForm.lblOptionTitle.Font := font;
  font.Size := font.Size - 2;

  // Blue (Fake hyperlink) Global Font Items
  font.Style := font.Style - [fsBold];
  color := font.Color;
  font.Color := clBlue;
  AboutForm.lblHomepage.Font := font;
  font.Color := color;

  // Listbox Font
  lvMail.Font := Options.ListboxFont;
  lvMail.Color := Options.ListboxBg; //set bg color too

  // Update Toolbar Colors
  colorMap :=  SchemeNumToColorMap(Options.ToolbarColorScheme);
  //frmPopUMain.MailToolBar.ColorMap := colorMap;
  RulesForm.RulesToolbar.ColorMap := colorMap;
  AccountsForm.AccountsToolbar.ColorMap := colorMap;

end;

function TfrmPopUMain.SchemeNumToColorMap(const colorSchemeNum: integer) : TCustomActionBarColorMap;
begin
  case colorSchemeNum of
  schemeLight: Result := frmPopUMain.XPColorMap1;
  schemeDark: Result := frmPopUMain.TwilightColorMap1;
  else
     Result := frmPopUMain.XPColorMap1;
  end;
end;

// Sets what the "spam" button on the main toolbar does
procedure TfrmPopUMain.SetDefaultSpamAction(const spamAction: integer);
begin
  case spamAction of
  optSpamActNone: SetSpamAction(actSpam);
  optSpamActDelSpam: SetSpamAction(actDeleteSpam);
  optSpamActMarkSpam: SetSpamAction(actMarkSpam);
  end;
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
  Acc1,Acc2 : TAccount;
  NewCount : integer;
//  MailCount,UnviewedCount : integer;
  CircleColor : TColor;
  num : integer;
  AccountWithError : integer;
  NewHint : string;
  account : TAccount;
begin
  // Icons for Checking and Deleting are set before this is called
  // BUT...TODO... this method is called elsewhere that doesn't set those first

  if not dm.mnuAutoCheck.Checked then // auto check off
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
  Acc1 := nil;
  Acc2 := nil;
  for account in Accounts do
  begin
    if (Options.ResetTray and (account.CountUnviewed() > 0)) or
       (not Options.ResetTray and (account.Mail<>nil) and ((account.Mail.Count - account.IgnoreCount) > 0)) then
    begin
      Inc(AccCnt);
      AccName := account.Name;
      if Acc1 = nil then
        Acc1 := account
      else
        Acc2 := account;
    end;
  end;
  if Acc1 = nil then
    FAccountIdxWithMail := 0
  else
    FAccountIdxWithMail := Acc1.AccountIndex;

  //update FTotalNew
  FTotalNew := Accounts.CountAll(Options.ResetTray);

  // draw tray icon
  AccountWithError := FirstAccountWithError;
  if (FTotalNew > 0) then
  begin
    // check for animated option
    if Options.RotateIcon then
    begin
      // rotating icon
      dm.imlTray.Clear;
      for num := 1 to Accounts.NumAccounts do
      begin
        if Accounts[num-1].Error and not Options.NoError then
        begin
          dm.AddBitmap(dm.imlTray,dm.imlPop,popError);
        end
        else begin
          NewCount := Accounts[num-1].Mail.Count - Accounts[num-1].IgnoreCount;
          if Options.ResetTray then
            NewCount := Accounts[num-1].CountUnviewed();
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
        CircleColor := GetTrayColor(Acc1.AccountNum)
      else begin
        if dm.imlPop = dm.imlPopTrueColor then
          CircleColor := MixColors(GetTrayColor(Acc1.AccountNum),GetTrayColor(Acc2.AccountNum))
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

procedure TfrmPopUMain.PlayNotify(account : TAccount);
begin
  if not(actSuspendSound.Checked) then
  begin
    // play wave
    if FNotifyWav <> '' then
      PlayWav(FNotifyWav)
    else begin
      if account.Sound <> '' then
        PlayWav(account.Sound)
      else
        PlayWav(Options.DefSound);
    end;
    // show form if option set
    if Options.ShowForm then
    begin
      PageControl.ActivePageIndex := 0;
      ShowForm(DONT_MARK_AS_VIEWED);
    end;
  end;
  FNotified := True;
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
  dm.mnuSortNoSort.Checked := FSortColumn = NOSORT;
  actNoSort.Checked := FSortColumn = NOSORT;
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
      head := APPTITLE + ' - '+Translate(head);
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
    for num := 1 to Accounts.NumAccounts do
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
    for num := 1 to Accounts.NumAccounts do
    begin
      if (Accounts[num-1].Enabled) and
         (not ShowOnlyWithMail or (Accounts[num-1].Mail.Count > 0)) then
      begin
        with frmInfo.lvInfoSummary.Items.Add do
        begin
          Caption := Accounts[num-1].Name;
          SubItems.Add(IntToStr(Accounts[num-1].Mail.Count));
          SubItems.Add(IntToStr(Accounts[num-1].CountNew()));
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
    for num := 1 to Accounts.NumAccounts do
    begin
      if (Accounts[num-1].Enabled) and
          (not ShowOnlyWithMail or (Accounts[num-1].Mail.Count > 0)) then
      begin
        info := info + ExpandWidth(Accounts[num-1].Name,75) + #9;
        info := info + IntToStr(Accounts[num-1].Mail.Count) + ' '+Translate('msgs.') + #9;
        info := info + ' (' + IntToStr(Accounts[num-1].CountNew()) + ' ' + Translate('new') + ') ' + #9;
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

procedure TfrmPopUMain.DrawCheckingIcon(account : TAccount);
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
    CircleColor := StringToColorDef2(account.Color,clGray);
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

procedure TfrmPopUMain.ShowBlankMailServerErrMsg(account : TAccount);
var
  TaskDlg : TSynTaskDialog;
  msgResult : integer;
begin
  TaskDlg.Caption := Translate('Connection Error:')+' '+account.Name ;

  TaskDlg.Title   := Translate('Incoming Mail Server Not Set');
  TaskDlg.Text    := Translate('Incoming Mail Server must be set to check mail for this account');

  TaskDlg.AddButton( Translate('Update Account Settings'), //message result = 100
                     Translate('Set the Incoming Mail Server'));

  TaskDlg.AddButton( Translate('Disable This Account'),//message result = 101
                     Translate('This will prevent further checking of this account'));

  TaskDlg.AddButton( Translate('Ignore'), //message result = 101
                     Translate('Take no action at this time'));

  msgResult := TaskDlg.Execute([cbOK],mrOK,[tdfUseCommandLinks],tiError); //modal dlg
  case msgResult of
  100:
    begin
      PageControl.ActivePage := tsAccounts;
      ShowForm();
      AccountsForm.tabAccounts.TabIndex := account.AccountNum-1; // todo: accountToTab
      AccountsForm.ShowAccount(account);
      AccountsForm.edServer.SetFocus();
    end;
  101:
    begin
      account.Enabled := false;
      account.Error := false;
      SaveAccountINI(account.AccountNum);
      ShowIcon(account,itNormal); //sets the disabled icon indirectly
    end;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
// Show an Error Message Dialog (eg: Socket Error connecting to get mail
procedure TfrmPopUMain.ErrorMsg(account : TAccount; Heading,Msg: string; IgnoreError : boolean);

begin
  account.Error := True;
  account.Status := Translate(Heading)+' '+Trim(Msg)+HintSep+DateTimeToStr(Now);
  ShowIcon(account,itError);
  // if the user has not opted through saved options to ignore error dialogs
  if not IgnoreError then
  begin
    if not FMinimized and not Options.ShowErrorsInBalloons then begin
      if Msg = CONNECT_ERR_NO_HOST_STR then begin
        ShowBlankMailServerErrMsg(account);
      end else
        // Show error message as a modal dialog
        ShowTranslatedDlg(Translate(Heading)+#13#10#13#10+Trim(Msg), mtError, [mbOK], 0,Translate('Error checking')+' '+account.Name)
    end
    else begin
      // Show error message as a balloon popup on the tray icon
      Balloon(Translate(Heading)+' ('+ account.Name+')',Trim(msg),bitError,15);
    end;
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

procedure TfrmPopUMain.ShowStatusBar(account : TAccount);
var
  mailcount : integer;
begin
  StatusBar.Panels[0].Text := ' '+account.Status;
  if StatusBar.Canvas.TextWidth(account.Status) > StatusBar.Panels[0].Width then
    StatusBar.Hint := account.Status
  else
    StatusBar.Hint := '';

  if Options.HideViewed then
    mailcount := account.CountUnviewed()
  else
    mailcount := account.Mail.Count;

  StatusBar.Panels[1].Text := IntToStrSpacer(mailcount);
  StatusBar.Panels[2].Text := IntToStrSpacer(account.CountStatus([misSpam]));
  StatusBar.Panels[3].Text := IntToStrSpacer(account.CountStatus([misToBeDeleted]));

  StatusBar.Panels[4].Text := IntTostr(account.Size) + ' ' + FKB;
end;

procedure TfrmPopUMain.LoadSkin;
var
  skinname : string;
  skin,bmp : TBitmap;
  i,y : integer;
begin
  LoadVisualStyleFromDisk(Options.VisualStyleFilename);

  // Because skinning is broken (does not support PNG) in XE4, make sure
  // that the code to set the skin doesn't run and cause white shadows.
  // This next line must be removed to re-enable button skins.
  exit;

  skinname := ExtractFilePath(IniName)+'PopTray.skin';
  if not fileExists(skinname) then begin
    if (Options.ToolbarColorScheme = Integer(schemeTwilight)) then begin
       skinname := 'darkskin.bmp';
    end else begin
       skinname := 'lightskin.bmp';
    end;
  end;



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
      //y := 0;
      //for i := 0 to dm.imlActions.Count-1 do
      //begin
          //bmp.Canvas.CopyRect(rect(0,0,16,16),skin.Canvas,rect(50+i*16,y,50+i*16+16,y+16));
          //dm.imlActions.ReplaceMasked(i,bmp,clFuchsia);
      //end;
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

//------------------------------------------------------------------------------
// Add selected from addresses to White List or Black List
//------------------------------------------------------------------------------
function TfrmPopUMain.AddToWhiteBlackList(WhiteBlack: TWhiteBlack) : boolean;
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
        SaveWhitelistToFile();

        // tell uFrameWhiteBlack (Options Frame) to update the whitelist text from Options.Whitelist
        SendMessage(self.WindowHandle, UM_RELOAD_WHITELIST,0,0);

//        if Assigned(frame) and (frame is TframeWhiteBlack) then
//          (frame as TframeWhiteBlack).memWhiteList.Lines.Text := Options.WhiteList.Text;
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
          SaveBlacklistToFile();

          SendMessage(self.WindowHandle, UM_RELOAD_BLACKLIST,0,0);
//          if Assigned(frame) and (frame is TframeWhiteBlack) then
//            (frame as TframeWhiteBlack).memBlackList.Lines.Text := Options.BlackList.Text;
          Result := True;
        end;
      end;
    end;
  finally
    emails.Free;
  end;
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


procedure TfrmPopUMain.SwitchTimer;
var
  num : integer;
begin
  if Options.TimerAccount then
  begin
    // multiple timers
    dm.Timer.Enabled := False;
    for num := 1 to Accounts.NumAccounts do
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
    for num := 1 to Accounts.NumAccounts do
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
    if (Accounts.NumAccounts > 0) and Accounts[acc-1].Enabled then
      // Check the account for new mail (unless the account is "sleeping"
      // because it's during no-check hours for that account)
      if (not Accounts[acc-1].DontCheckTimes) or (Accounts[acc-1].DontCheckTimes
      and not BetweenTimes(Accounts[acc-1])) then
        CheckMail(Accounts[acc-1], not FNotified,True)
      else
      begin
        // Account is "sleeping"
        Accounts[acc-1].Status := Translate('Account Skipped')+HintSep+TimeToStr(Now);
        if (tabMail.TabIndex = acc-1) then
          StatusBar.Panels[0].Text := ' '+Accounts[tabMail.TabIndex].Status;
        ShowIcon(Accounts[acc-1],itSleeping);
      end;
    Application.ProcessMessages;
  end;
//  CallNotifyPlugins;
  // show balloon
  if Options.Balloon and (Accounts.CountAllNew > 0) then
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
                           DeleteSpam(Accounts[num-1],false);
    cmdMarkViewed      : actMarkViewed.Execute;
    cmdCheckFirst      : begin
                           CheckMail(Accounts[0],True,True);
                           //CallNotifyPlugins;
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
  if Accounts.CountAllNew > 0 then
    ShowMessages;
end;

procedure TfrmPopUMain.CheckAndInfo;
begin
  CheckAllMail;
  if Accounts.CountAllNew > 0 then ShowInfo;
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


function TfrmPopUMain.FirstAccountWithError: integer;
var
  num : integer;
begin
  Result := 0;
  for num := 1 to Accounts.NumAccounts do
    if Accounts[num-1].Error then
    begin
      Result := num;
      Break;
    end;
end;

procedure TfrmPopUMain.DeleteSpam(account: TAccount; confirm: boolean);
var
  i : integer;
  spamcount : integer;
begin
  spamcount := account.CountStatus([misSpam]);
  if spamcount > 0 then
  begin
    if not(confirm) or
      (ShowTranslatedDlg(Translate('Delete Spam from Server?')+' '+#13#10#13#10+
                    Translate('Number of messages marked as Spam:')+' '+IntToStr(spamcount)+#13#10+
                    Translate('This will delete all these messages.'),
                    mtConfirmation,[mbYes,mbNo],0) = mrYes) then
    begin
      // mark to delete
      for i := 0 to account.Mail.Count-1 do
      begin
        if account.Mail[i].Spam and
           not(account.Mail[i].Important) and
           not InWhiteBlackList(wbWhite,account.Mail[i].Address) then
        begin
          account.Mail[i].ToDelete := True;
        end;
      end;
    end;
    // recheck and delete
    if not Options.DeleteNextCheck then
    begin
      if CheckMail(account,False,False) < 0 then
        lvMail.Clear;
//      CallNotifyPlugins;
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
  for num := 1 to Accounts.NumAccounts do
    if Accounts[num-1].Prot.Connected then
      Accounts[num-1].Prot.Disconnect;
  // set flags
  FStop := True;
  FBusy := False;
end;






//----------------------------------------------------------------- plug-ins ---
//
//procedure TfrmPopUMain.CallNotifyPlugins;
//var
//  NewCount : integer;
//  MailCount,UnviewedCount : integer;
//  num : integer;
//begin
//  // total emails
//  MailCount := 0;
//  UnviewedCount := 0;
//  NewCount := 0;
//  for num := 1 to Accounts.NumAccounts do
//  begin
//    if (Accounts[num-1] = nil) or (Accounts[num-1].Mail = nil) then begin
//      //skip invalid accounts that are not fully initialized
//      Continue;
//    end;
//    MailCount := MailCount + Accounts[num-1].Mail.Count - Accounts[num-1].IgnoreCount;
//    UnviewedCount := UnviewedCount + Accounts[num-1].CountUnviewed;
//    NewCount := NewCount + Accounts[num-1].CountNew();
//    //plug-in notify account
//    NotifyPluginExecuteAccount(num, Accounts[num-1].Name, Accounts[num-1].Color,
//      Accounts[num-1].Mail.Count - Accounts[num-1].IgnoreCount,
//      Accounts[num-1].CountUnviewed(), Accounts[num-1].CountNew(), Options.ResetTray);
//  end;
//  // plug-in notify
//  NotifyPluginExecute(MailCount, UnviewedCount, NewCount, Options.ResetTray);
//end;
//
//
//
//procedure TfrmPopUMain.NotifyPluginExecute(MailCount,UnviewedCount,NewCount : integer; ResetTray : boolean);
//var
//  i : integer;
//begin
//  for i := Low(Plugins) to High(Plugins) do
//  begin
//    if Plugins[i].Enabled then
//    begin
//      if (Plugins[i] is TPluginNotify) then
//        (Plugins[i] as TPluginNotify).Notify(MailCount,UnviewedCount,NewCount,ResetTray);
//    end;
//  end;
//end;
//
//procedure TfrmPopUMain.NotifyPluginExecuteAccount(AccountNo:integer; AccountName:string; AccountColor:string; MailCount,UnviewedCount,NewCount : integer; ResetTray : boolean);
//var
//  i : integer;
//begin
//  for i := Low(Plugins) to High(Plugins) do
//  begin
//    if Plugins[i].Enabled then
//    begin
//      if (Plugins[i] is TPluginNotify) then
//        (Plugins[i] as TPluginNotify).NotifyAccount(AccountNo,PChar(AccountName),
//                                                    PChar(AccountColor),
//                                                    MailCount,UnviewedCount,NewCount,
//                                                    ResetTray);
//    end;
//  end;
//end;
//
//procedure TfrmPopUMain.NotifyPluginMessage(MsgFrom, MsgTo, MsgSubject: string;
//                                          MsgDate : TDateTime;
//                                          Viewed, New, Important, Spam: boolean);
//var
//  i : integer;
//begin
//  for i := Low(Plugins) to High(Plugins) do
//  begin
//    if Plugins[i].Enabled then
//    begin
//      if (Plugins[i] is TPluginNotify) then
//        (Plugins[i] as TPluginNotify).MessageCheck(PChar(MsgFrom), PChar(MsgTo),
//                                                   PChar(MsgSubject), MsgDate,
//                                                   Viewed, New, Important, Spam);
//    end;
//  end;
//end;
//
//procedure TfrmPopUMain.NotifyPluginMsgBody(MsgHeader, MsgBody: string);
//var
//  i : integer;
//begin
//  for i := Low(Plugins) to High(Plugins) do
//  begin
//    if Plugins[i].Enabled then
//    begin
//      if (Plugins[i] is TPluginNotify) then
//        (Plugins[i] as TPluginNotify).MessageBody(PChar(MsgHeader), PChar(MsgBody));
//    end;
//  end;
//end;
//
//
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



procedure TfrmPopUMain.OnCloseFree(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FInfoForm := nil;
end;

procedure TfrmPopUMain.OnClickClose(Sender: TObject);
begin
  ((Sender as TControl).Parent as TForm).Close;
end;

procedure TfrmPopUMain.OnMinimize(Sender: TObject);
var
  i : integer;
begin
  HideForm;

  // conditionally close all preview windows if user preference is set.
  if (Options.AutoClosePreviewWindows) then begin
    for i := 0 to Screen.Formcount - 1 do
      Screen.Forms[i].close;
  end;
end;


// prereq: form is created
procedure TfrmPopUMain.AddFormToTab(parentTab : TTabSheet; form : TForm);
begin
  form.Parent := parentTab;
  form.Align := alClient;
  form.Visible := true;
  form.BorderStyle := bsNone;
end;

// -----------------------------------------------------------------------------
// Form Create
// -----------------------------------------------------------------------------
procedure TfrmPopUMain.FormCreate(Sender: TObject);
var
  num,param : integer;
begin
  // init vars
  FNotified := False;
  FShutDown := False;
  FBusy := False;
  FDoubleClicked := False;
  FShowingInfo := False;
  FStop := False;
  FSortColumn := NOSORT;
  FSortDirection := sdAsc;
  FLastCheck := '';
  FAccountIdxWithMail := -1;
  FKB := 'KB';
  Application.OnHint := OnHint;
  Application.OnMinimize := OnMinimize;
  frmPassword := nil;
//XE4  ShortTimeFormat := 'HH:mm';
//XE4  TimeSeparator := ':';

  // Initialize Accounts tab
  AccountsForm := TAccountsForm.Create(tsAccounts);
  AddFormToTab(tsAccounts, AccountsForm);

  // Initialize Options tab
  OptionsForm := TOptionsForm.Create(tsOptions);
  AddFormToTab(tsOptions, OptionsForm);

  // Initialize Rules tab
  RulesForm := TRulesForm.Create(tsRules);
  AddFormToTab(tsRules, RulesForm);

  // Initialize About Tab
  AboutForm := TAboutForm.Create(tsAbout);
  AddFormToTab(tsAbout, AboutForm);

  // active pages
  tabMail.TabIndex := 0;
  AccountsForm.tabAccounts.TabIndex := 0;
  PageControl.ActivePageIndex := 0;

  // create objects
  Accounts := TAccounts.Create;
  RulesManager := TRulesManager.Create;
  FQueue := TUniqueQueue.Create;
  // menus with caption different from action
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

  uIniSettings.InitSettingsStoragePath(ParamNonSwitch(1));

  // help file
  HelpFileName := ExtractFilePath(Application.ExeName)+'PopTrayU.chm';

  // POP3 protocol
  SetLength(Protocols,2);
  Protocols[0].Name := 'POP3';
  Protocols[0].Port := 110;
  //Protocols[0].Prot := TProtocolPOP3.Create;

  Protocols[1].Name := 'IMAP4';
  Protocols[1].Port := 143;
  //Protocols[1].Prot := TProtocolIMAP4.Create;

  // Load toolbar customizations
  if FileExists(ToolbarName) then
  begin
    ActionManager.LoadFromFile(ToolbarName);
    ActionManager.FileName := '';
  end;
  // get options
  LoadOptionsINI();
  if Options.OnTop then
    Self.FormStyle := fsStayOnTop;
  Application.ProcessMessages;

  // if WinXP+ then remove themes on vertical tabs
  if IsWinXP then
  begin
    InitThemeLibrary;
    SetWindowTheme(PageControl.Handle,' ',' ');
  end;
  ActionManager.Style := PlatformVclStylesStyle;

  // register hot-keys
  RegisterTheHotKeys;

  // translate
  OnSetLanguage();


  Self.Caption := 'PopTrayU - '+ GetAppVersionStr();
  // get accounts
  for num := 1 to IniNumAccounts do
  begin
    Accounts.Add;
    LoadAccountINI(num);
    tabMail.Tabs.Add(Accounts[num-1].Name);
    AccountsForm.tabAccounts.Tabs.Add(Accounts[num-1].Name);
    if Accounts[num-1].Enabled then
      dm.AddBitmap(dm.imlTabs, dm.imlPopTrueColor,popClosed)
    else
      dm.AddBitmap(dm.imlTabs, dm.imlPopTrueColor,popDisabled);
  end;
  AccountsForm.Initialize();

  // Notify rules form it needs to add accounts to rules drop-down
  RulesForm.AccountsChanged();
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
  if Accounts.NumAccounts > 0 then AccountsForm.ShowDefaultAccount();

  // make sure toolbar initializes in a consistent enabled/disabled state
  OnNoMessageSelected();

  // startup options
  FMinimized := Options.Minimized;
  if Options.Minimized and not Options.MinimizeTray then
    Self.WindowState := wsMinimized;

  if Options.MinimizeTray then
  begin
    //hide taskbar button
    ShowWindow(Application.Handle, SW_HIDE);

    Application.ShowMainForm := not Options.Minimized;
    self.visible := false;
  end
    else Application.ShowMainForm := true;

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
    if Application.ShowMainForm
      then ShowForm;
    // the next two lines hide the taskbar icon if started minimized to tray
    if Options.Minimized and Options.MinimizeTray and not Options.PasswordProtect then
      TrayIcon.HideMainForm();
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
  for num := 1 to Accounts.NumAccounts do   //REFACTOR MOVE THIS TOdo ITS WRONG SPOT
  begin
    Accounts[num-1].ViewedMsgIDs.Free;
    Accounts[num-1].Mail.Free;
  end;
  Accounts.Free;


  // unregister drag n drop
  DragAcceptFiles(Self.Handle, False);
  // unregister hotkeys
  UnRegisterTheHotKeys;
end;

destructor TfrmPopUMain.Destroy;
var
  i: Integer;
begin

//  if (Plugins <> nil) then
//  begin
//    for i := 0 to Length(Plugins) - 1 do
//      Plugins[i].Free;
//  end;

  RulesManager.Free;

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

procedure TfrmPopUMain.OnSetLanguage();
begin
  // translate back to english before wiping old translation strings (if needed)
  TranslateComponentToEnglish(self);
  TranslateComponentToEnglish(dm);

  // load the new language strings
  ReadTranslateStrings;

  // re-translate form to the new language
  TranslateComponentFromEnglish(self);
  TranslateComponentFromEnglish(dm);

  // update component sizes to fit new language strings
  if Assigned(AccountsForm) then AccountsForm.OnResize(self);
  if Assigned(OptionsForm) then OptionsForm.OnResize(self);
  if Assigned(RulesForm) then RulesForm.UpdateComponentSizes();
  //if Assigned(RulesForm) then RulesForm.OnResize(self);   // these two lines cause a crash if included
  //if Assigned(AboutForm) then AboutForm.OnResize(self);

  SetPreviousLanguage(Options.Language);

end;


// this procedure should be called after saving the options/ini file after
// changing any options on the options screen(s)
procedure TfrmPopUMain.OptionsRefresh();
begin
  // update timer
  SwitchTimer;

  // multiline account tabs
  tabMail.MultiLine := Options.MultilineAccounts;
  AccountsForm.tabAccounts.MultiLine := Options.MultilineAccounts;

  // re-register hot-keys
  UnRegisterTheHotKeys;
  RegisterTheHotKeys;

  // re-translate form
  OnSetLanguage();


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
  ShowMail(Accounts[tabMail.TabIndex],True);
  // When switching tabs, no message will be selected anymore so disable toolbar
  // buttons that only apply when there are selected message(s)
  OnNoMessageSelected();
end;

procedure TfrmPopUMain.lvMailDblClick(Sender: TObject);
begin
  actPreview.Execute;
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
    3  : Compare := CompareDateRC(Item1.SubItems[colDate],Item2.SubItems[colDate]);       //date
    4  : Compare := CompareInt(Item1.SubItems[3],Item2.SubItems[3]);                    //size
  else
   Compare := CompareText(Item1.SubItems[FSortColumn - 1],
                          Item2.SubItems[FSortColumn - 1]);
  end;
  Compare := FSortDirection * Compare;
end;



procedure TfrmPopUMain.OnNoMessageSelected();
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
  actArchive.Enabled := False;
  actStar.Enabled := false;
  actUnstar.Enabled := false;
  actMarkAsRead.Enabled := false;
  actMarkAsUnread.Enabled := false;
  actMark.Enabled := false;
  actAddGmailLabel.Enabled := false;
  actRemoveGmailLabel.Enabled := false;
  if (lvMail.Items.Count > 0) then
    actSelectAll.Enabled := true
  else
    actSelectAll.Enabled := false;

  // exception to the rule, always available:
  actMore.Enabled := true;
end;

procedure TfrmPopUMain.lvMailSelectItem(Sender: TObject; Item: TListItem; Selected: Boolean);
begin
  if lvMail.Selected = nil then
  begin
    OnNoMessageSelected();
  end
  else begin
    actPreview.Enabled := (lvMail.SelCount = 1); //even if you change this, it's still prevented elsewhere
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
    actSelectAll.Enabled := True;
    actMark.Enabled := True;
    if (TabToAccount().IsImap) then begin
      actAddGmailLabel.Enabled := true;
      actRemoveGmailLabel.Enabled := true;
      actArchive.Enabled := True;
      actStar.Enabled := True;
      actUnstar.Enabled := True;
      actMarkAsRead.Enabled := True;
      actMarkAsUnread.Enabled := True;
    end else begin
      actAddGmailLabel.Enabled := false;
      actRemoveGmailLabel.Enabled := false;
      actArchive.Enabled := false;
      actStar.Enabled := false;
      actUnstar.Enabled := false;
      actMarkAsRead.Enabled := false;
      actMarkAsUnread.Enabled := false;
    end;

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
    for num := 1 to Accounts.NumAccounts do
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

procedure TfrmPopUMain.FormActivate(Sender: TObject);
begin
  if (Options.Minimized and Options.MinimizeTray) then
    ShowWindow(Application.Handle, SW_HIDE);
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
    MarkAllViewed;
  // if accounts page
  if (PageControl.ActivePageIndex = 1) and (Accounts.NumAccounts>0) then //TODO: codesmell
  begin
    AccountsForm.tabAccounts.TabIndex := tabMail.TabIndex;
    AccountsForm.tabAccounts.OnChange(nil);
  end;
end;

procedure TfrmPopUMain.PageControlChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  if (PageControl.ActivePage=tsAccounts) then
    AccountsForm.PageControlChanging(Sender, AllowChange);
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
    AccountsForm.tabAccounts.TabIndex := tabMail.TabIndex;
    // sync info (event doesn't fire automatically?)
    tabMail.OnChange(nil);
    AccountsForm.tabAccounts.OnChange(nil);
  end;
  // alt keys
  if (ssAlt in Shift) and (Key in [Ord('A')..Ord('Z')]) then
  begin
    if PageControl.ActivePage=tsMail then ExecuteAccelAction(MailToolbar,Key)
    else if PageControl.ActivePage=tsAccounts then ExecuteAccelAction(AccountsForm.AccountsToolbar,Key)
    else if PageControl.ActivePage=tsRules then ExecuteAccelAction(RulesForm.RulesToolbar,Key);
  end;
end;


procedure TfrmPopUMain.FormShow(Sender: TObject);
begin
  //if (Options.Minimized and Options.MinimizeTray) then
  //  ShowWindow(Application.Handle, SW_HIDE);
  inherited;
end;

procedure TfrmPopUMain.btnHelpOptions1Click(Sender: TObject);
begin
  //todo delete
end;

procedure TfrmPopUMain.btnHelp1Click(Sender: TObject);
begin
  HtmlHelp(0, HelpFileName, HH_DISPLAY_TOC, 0);
end;

procedure TfrmPopUMain.lvMailInfoTip(Sender: TObject; Item: TListItem; var InfoTip: String);
var
  MailItem : TMailItem;
begin
  try
  InfoTip := '';
  if lvMail.ScreenToClient(Mouse.CursorPos).X  < lvMail.Columns[0].Width then
  begin
    MailItem := SelectedMailItem(Item);
    if MailItem <> nil then
      InfoTip := MailItem.Address;
  end
  except
    on E: Exception do begin
      {$IFDEF LOG4D}
      TLogLogger.GetLogger('poptrayuLogger').Debug('lvMailInfoTip exception: ' +
        E.ClassName+' message: '+E.Message);
      {$ENDIF}
    end;
    on E2: EAccessViolation do begin
      {$IFDEF LOG4D}
      TLogLogger.GetLogger('poptrayuLogger').Debug('lvMailInfoTip access violation: ' +
        E.ClassName+' message: '+E.Message);
      {$ENDIF}
    end;
  end;
end;

procedure TfrmPopUMain.lblForumClick(Sender: TObject);
begin
  // TODO: update or remove this.
  //ExecuteFile('http://forum.poptray.org','','',SW_RESTORE);
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


procedure TfrmPopUMain.btnStopClick(Sender: TObject);
begin
  StopAll;
end;



procedure TfrmPopUMain.btnHintHelpClick(Sender: TObject);
begin
  Screen.Cursor := crHelp;
end;

procedure TfrmPopUMain.actDeleteExecute(Sender: TObject);
var
  cnt : integer;
  warning : string;
  confirmed : boolean;
  Item : TListItem;
  MailItem : TMailItem;
  deleteCount : integer;
  account : TAccount;
begin
  if lvMail.Selected = nil then
    ShowTranslatedDlg(Translate('No message selected.'), mtError, [mbOK], 0)
  else begin
    account := TabToAccount();
    if Options.SafeDelete and not account.UIDLSupported then
      warning := Translate('WARNING: This account does NOT support Safe Delete.')+ #13#10#13#10;
    account.Error := False;
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

      If (Options.DeleteNextCheck) then begin
        // mark to delete
        SetSelectedMailItemStatus([misToBeDeleted],True);
        // enable undelete
        actUndelete.Enabled := True;
      end
      else
      begin
        deleteCount := 0;
        SetSelectedMailItemStatus([misToBeDeleted],True); //mark selected items with "to delete" icon and ToDelete flag
        try
          account.ConnectIfNeeded();
          try

            if DeleteMails(account,deleteCount) then begin
              account.Status := IntToStr(deleteCount) + ' ' + Translate('message(s) deleted.') + '';
              lvMailRemoveSelectedMsgs();
              account.Mail.RemoveDeletedMessages();
              Account.Mail.RemoveToDeleteMsgs();
              Account.LastMsgCount := Account.LastMsgCount - deleteCount;
              ShowIcon(Account, itNormal);// to set the count in the account tab & tray
              //CallNotifyPlugins;
            end else
              account.Status := Translate('Error deleting message(s)');
          except
            on E: Exception do begin
              account.Status := Translate('Error deleting message(s)');
            end;
          end;
        except // error on ConnectIfNeeded such as timeout error or other server error
          on E : EIdReadTimeout do begin
            account.Status := Translate('Timeout Error Connecting to Account');
          end;
          on E2 : EIdException do begin
            account.Status := Translate('Error Connecting to Account');
          end;
        end;
        StatusBar.Panels[0].Text := ' '+account.Status;

      end;
    end;
  end;
end;

procedure TfrmPopUMain.actPreviewExecute(Sender: TObject);
var
  //msgnum : integer;
  account : TAccount;
  MailItem : TMailItem;
begin
  if lvMail.Selected = nil then
    ShowTranslatedDlg(Translate('No message selected.'), mtError, [mbOK], 0)
  else begin
    MailItem := lvMail.Selected.Data;
    account := tabToAccount();
    Preview(MailItem, account);
  end;
end;

procedure TfrmPopUMain.actNewMailExecute(Sender: TObject);
begin
  SendMail('','','');
  HideForm;
end;

procedure TfrmPopUMain.HelpMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  QuickHelp(Sender, Button, Shift, X, Y);
end;

procedure TfrmPopUMain.actRemoveGmailLabelExecute(Sender: TObject);
var
  uidList, labelsList : TStringList;
  account : TAccount;
  labelname : string;
  success : boolean;
  pickLabelDlg : TImapFolderSelectDlg;
begin
  success := false;
  if (lvMail.SelCount > 0) then begin
    account := TabToAccount();
    if (account.IsImap) then begin
      account.ConnectIfNeeded();
      uidList := TStringList.Create;
      labelsList := TStringList.Create;
      try
        GetUidsOfSelectedMsgs(uidList);
        if (account.Prot as TProtocolIMAP4).FetchGmailLabels(uidList.CommaText, labelsList) then begin
        pickLabelDlg := TImapFolderSelectDlg.Create(self);

        try
          labelname := pickLabelDlg.ShowSelectDlg(uTranslate.Translate('Select Label to Remove'), labelsList);
          if (labelname <> '') then begin
            success := (account.Prot as TProtocolIMAP4).RemoveGmailLabelFromMsgs(uidList, labelname);
          end;
        finally
          pickLabelDlg.Free;
        end;

        end;

        if (success) then
          account.Status := SysUtils.Format(Translate('Label "%s" removed from %d message(s)'),[labelname, uidList.Count]) +HintSep+TimeToStr(Now)
        else
          account.Status := SysUtils.Format(Translate('Error: Label "%s" could not be removed from %d message(s)'),[labelname, uidList.Count]) +HintSep+TimeToStr(Now);

        StatusBar.Panels[0].Text := account.Status;
      finally
        uidList.Free;
        labelsList.Free;
      end;
    end;
  end;
end;

procedure TfrmPopUMain.actReplyAllExecute(Sender: TObject);
////////////////////////////////////////////////////////////////////////////////
// Reply to message using default mail client
var
  email,subject : string;
  MailItem : TMailItem;
begin
  if (SelectedMailItem = nil) then begin
    ShowTranslatedDlg(Translate('No message selected.'), mtError, [mbOK], 0);
    exit;
  end;

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

procedure TfrmPopUMain.actReplyExecute(Sender: TObject);
////////////////////////////////////////////////////////////////////////////////
// Reply to message using default mail client
var
  email,subject : string;
  MailItem : TMailItem;
begin
  if (SelectedMailItem = nil) then begin
    ShowTranslatedDlg(Translate('No message selected.'), mtError, [mbOK], 0);
    exit;
  end;

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
      with RulesForm.AddRule(rulename) do
      begin
        if misSpam in mark then Spam := True;
        if misToBeDeleted in mark then Delete := True;
        // rows
        for i := 0 to list.Count-1 do
        begin
          with Rows.CreateAndAdd do       //TODO: move this to rules manager
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
    CheckMail(Accounts[tabMail.TabIndex],True,True);   //TODO: tabToAccount
//    CallNotifyPlugins;
  end;
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
    if accounts.count = 0 then
      res := ExecuteProgram()
    else
      res := ExecuteProgram(Accounts.Items[tabMail.TabIndex]) //TODO: tabToAccount
  else begin
    if FAccountIdxWithMail < 0 then
      res := ExecuteProgram()
    else
      res := ExecuteProgram(Accounts[FAccountIdxWithMail]);
  end;
  if FShowingInfo then frmInfo.Close;
  if res then HideForm;
  if accounts.Count > 0 then
    for i := 1 to Accounts.NumAccounts do
      MarkAllViewed(i);
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

procedure TfrmPopUMain.actSelectAllExecute(Sender: TObject);
begin
  if (lvMail.SelCount = lvMail.Items.Count) then
    lvMail.ClearSelection
  else
    lvMail.SelectAll;
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
var
  i: integer;
begin
  HideForm;
  // conditionally close all preview windows if user preference is set.
  if (Options.AutoClosePreviewWindows) then begin
    for i := 0 to Screen.Formcount - 1 do
      Screen.Forms[i].close;
  end;
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


procedure TfrmPopUMain.actHideViewedExecute(Sender: TObject);
begin
  Options.HideViewed := actHideViewed.Checked;
  ShowMail(Accounts[tabMail.TabIndex],True);
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

// removes messages that are selected from the mail messages listview. To be used
// by methods such as delete or archive that need to remove the messages after
// they are processed.
procedure TfrmPopUMain.lvMailRemoveSelectedMsgs();
var
  i : integer;
begin
  //remove archived messages from message list
  lvMail.Items.BeginUpdate;
  for i := lvMail.Items.Count - 1 downto 0 do
    if lvMail.Items[i].Selected then
      lvMail.Items.Delete(i);
  lvMail.Items.EndUpdate;
end;

procedure TfrmPopUMain.actArchiveExecute(Sender: TObject);
var
  account : TAccount;
  uidList : TStringList;
  i : integer;
  MailItem : TMailItem;
begin
  if lvMail.Selected = nil then
    ShowTranslatedDlg(Translate('No message selected.'), mtError, [mbOK], 0)
  else begin
    account := TabToAccount();
    if account.IsImap then begin
      uidList := TStringList.Create;
      account.ConnectIfNeeded();

      for i := 0 to lvMail.Items.Count-1 do
      begin
        if (lvMail.Items[i].Selected) then begin
          MailItem := lvMail.Items[i].Data;
          uidList.Add(MailItem.UID);
        end;
      end;

      if (uidList.Count > 0) then begin
        try
          // Send ARCHIVE command to server
          if (Account.Prot as TProtocolIMAP4).MoveToFolderByUID(uidList, account.ArchiveFolderName) then
          begin
            account.Status := SysUtils.Format(Translate('%d message(s) archived'),[uidList.Count]) + HintSep + TimeToStr(Now);
            lvMailRemoveSelectedMsgs();
            //TODO: do we need to remove the mail message from the Mail items list??
          end
          else
            account.Status := 'Error Archiving' + HintSep + TimeToStr(Now);

        finally

        end;
        StatusBar.Panels[0].Text := account.Status;
      end;
      uidList.Free;
    end;
  end;
end;

procedure TfrmPopUMain.actAddBlackListExecute(Sender: TObject);
begin
  if AddToWhiteBlackList(wbBlack) and Options.BlackListSpam then
     actMarkSpam.Execute;
end;

procedure TfrmPopUMain.actAddGmailLabelExecute(Sender: TObject);
var
  uidList : TStringList;
  account : TAccount;
  labelname : string;
  success : boolean;
begin
  if (lvMail.SelCount > 0) then begin
    account := TabToAccount();
    if (account.IsImap) then begin
      //TODO: show prompt for adding a label
      labelname := Dialogs.InputBox(Translate('Add a Label'),Translate('Label:'), '');
      if labelname <> '' then begin
        uidList := TStringList.Create;
        GetUidsOfSelectedMsgs(uidList);
        success := (account.Prot as TProtocolIMAP4).AddGmailLabelToMsgs(uidList, labelname);

        if (success) then
          account.Status := SysUtils.Format(Translate('Label "%s" added to %d message(s)'),[labelname, uidList.Count]) +HintSep+TimeToStr(Now)
          // Translate('label added to') +' ' + IntToStr(numsuccess) + ' ' + Translate('message(s)')+HintSep+TimeToStr(Now)
        else
          account.Status := SysUtils.Format(Translate('Error: Label "%s" could not be added to %d message(s)'),[labelname, uidList.Count]) +HintSep+TimeToStr(Now);

        StatusBar.Panels[0].Text := account.Status;

      end;
    end;
  end;
end;

// Gets the messages selected in the UI, and adds their UIDs to a list.
// uidList will be populated by this method. It must be Create(d) before
// calling this method.
procedure TfrmPopUMain.GetUidsOfSelectedMsgs(uidList : TStringList);
var
  MailItem : TMailItem;
  i : integer;
begin
  for i := 0 to lvMail.Items.Count-1 do
  begin
    if (lvMail.Items[i].Selected) then begin
      MailItem := lvMail.Items[i].Data;
      if (MailItem<>nil) then begin
        uidList.add(MailItem.uid);
      end;
    end;
  end;
end;

procedure TfrmPopUMain.actMarkViewedExecute(Sender: TObject);
var
  i : integer;
begin
  for i := 1 to Accounts.NumAccounts do
    MarkAllViewed(i);
  if FShowingInfo then
    frmInfo.Close;
  if Not FMinimized and (tabMail.Tabs.Count>0) then
    ShowMail(Accounts[tabMail.TabIndex],True);
end;

procedure TfrmPopUMain.actMoreExecute(Sender: TObject);
begin
  // do nothing. placeholder so it doesn't disable the action.
end;

procedure TfrmPopUMain.actMarkSpamExecute(Sender: TObject);
begin
  // mark as spam
  SetSelectedMailItemStatus([misSpam],True);
  // spam actions
  actDeleteSpam.Enabled := Accounts[tabMail.TabIndex].CountStatus([misSpam]) > 0;
  actSelectSpam.Enabled := actDeleteSpam.Enabled;
  actSpam.Enabled := actDeleteSpam.Enabled or actMarkSpam.Enabled or actUnmarkSpam.Enabled;
end;

procedure TfrmPopUMain.actUnmarkSpamExecute(Sender: TObject);
begin
  // unmark as spam
  SetSelectedMailItemStatus([misSpam],False);
  // spam actions
  actDeleteSpam.Enabled := Accounts[tabMail.TabIndex].CountStatus([misSpam]) > 0;
  actSelectSpam.Enabled := actDeleteSpam.Enabled;
  actSpam.Enabled := actDeleteSpam.Enabled or actMarkSpam.Enabled or actUnmarkSpam.Enabled;
end;

//IMAP mark as read
procedure TfrmPopUMain.actMarkAsReadExecute(Sender: TObject);
begin
  ChangeReadStatuses(true);
end;

procedure TfrmPopUMain.actMarkAsUnreadExecute(Sender: TObject);
begin
  ChangeReadStatuses(false);
end;

procedure TfrmPopUMain.actMarkExecute(Sender: TObject);
begin
  //ShowTranslatedDlg('This feature is coming soon', mtError, [mbOK], 0);
end;

procedure TfrmPopUMain.ChangeReadStatuses(const becomeRead : boolean);
var
  MailItem : TMailItem;
  account : TAccount;
  i : integer;
  numsuccess, numfailures : integer;
begin
  if lvMail.Selected = nil then
    ShowTranslatedDlg(Translate('No message selected.'), mtError, [mbOK], 0)
  else begin
    account := Accounts[tabMail.TabIndex]; //TODO: tabToAccount
    if account.IsImap then begin
      numsuccess := 0;
      numfailures := 0;
      account.ConnectIfNeeded();
      lvMail.Items.BeginUpdate;
      for i := 0 to lvMail.Items.Count-1 do
      begin
        if (lvMail.Items[i].Selected) then begin
          MailItem := lvMail.Items[i].Data;
          if (MailItem<>nil) and (account.Prot as TProtocolIMAP4).MakeRead(MailItem.UID, becomeRead) then begin
            Inc(numsuccess);

            // set icon
            MailItem.mSeen := becomeRead;
            lvMail.Items[i].ImageIndex := GetStatusIcon(MailItem);

            // set row bold/unbold
            if becomeRead then
              lvMail.Items[i].StateIndex := STATE_READ
            else
              lvMail.Items[i].StateIndex := STATE_UNREAD;

          end else
            Inc(numfailures);
        end;
      end;
      lvMail.Items.EndUpdate;
      if (numfailures > 0) then begin
        account.Status := Translate('Error:') + ' ' + IntToStr(numfailures) + ' ' + Translate('message(s) could not be changed!')+HintSep+TimeToStr(Now);
        StatusBar.Panels[0].Text := account.Status;
      end else begin
        if (becomeRead) then
          account.Status := SysUtils.Format(Translate('%d message(s) marked read'),[numsuccess]) +HintSep+TimeToStr(Now)
        else
          account.Status := SysUtils.Format(Translate('%d message(s) marked unread'),[numsuccess])+HintSep+TimeToStr(Now);

        StatusBar.Panels[0].Text := account.Status;
      end;
    end;
  end;
end;


procedure TfrmPopUMain.actStarExecute(Sender: TObject);
begin
  ChangeImportantStatuses(true);
end;

procedure TfrmPopUMain.ChangeImportantStatuses(const becomeImportant : boolean);
var
  MailItem : TMailItem;
  account : TAccount;
  i : integer;
  numsuccess, numfailures : integer;
begin
  if lvMail.Selected = nil then
    ShowTranslatedDlg(Translate('No message selected.'), mtError, [mbOK], 0)
  else begin
    account := Accounts[tabMail.TabIndex]; //TODO: tabToAccount
    if account.IsImap then begin
      numsuccess := 0;
      numfailures := 0;
      account.ConnectIfNeeded();
      for i := 0 to lvMail.Items.Count-1 do
      begin
        if (lvMail.Items[i].Selected) then begin
          MailItem := lvMail.Items[i].Data;
          if (MailItem<>nil) and (account.Prot as TProtocolIMAP4).SetImportantFlag(MailItem.UID, becomeImportant) then begin
            Inc(numsuccess);
            MailItem.Important := becomeImportant;
            lvMail.Items[i].ImageIndex := GetStatusIcon(MailItem);
          end else
            Inc(numfailures);
        end;
      end;
      if (numfailures > 0) then begin
        account.Status := Translate('Error:') + ' ' + IntToStr(numfailures) + ' ' + Translate('message(s) could not be changed!')+HintSep+TimeToStr(Now);
        StatusBar.Panels[0].Text := account.Status;
      end else begin
        if (becomeImportant) then
          account.Status :=  SysUtils.Format(Translate('%d message(s) marked important'),[numsuccess])+HintSep+TimeToStr(Now)
        else
          account.Status := SysUtils.Format(Translate('%d message(s) marked not important'),[numsuccess])+HintSep+TimeToStr(Now);

        StatusBar.Panels[0].Text := account.Status;
      end;
    end;
  end;
end;


procedure TfrmPopUMain.actUnstarExecute(Sender: TObject);
begin
  ChangeImportantStatuses(false);
end;

procedure TfrmPopUMain.actDeleteSpamExecute(Sender: TObject);
var
  SaveTab : integer;
begin
  SaveTab := tabMail.TabIndex+1;
  DeleteSpam(Accounts[tabMail.TabIndex], Options.DeleteConfirm);
  if tabMail.TabIndex+1 = SaveTab then
    ShowMail(Accounts[tabMail.TabIndex],True);
end;

procedure TfrmPopUMain.MouseMoveReset(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  ResetToolbar;
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
  num, new, old : integer;
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
      for num := 1 to Accounts.NumAccounts do
        Accounts[num-1].OldNum := num;
      // move
      Accounts.Move(old,new);
      frmPopUMain.tabMail.Tabs.Move(old,new);
      AccountsForm.tabAccounts.Tabs.Move(old,new);  //TODO: encapsulate this in a method
      frmPopUMain.SwitchTimer;
      // select
      (Sender as TTabControl).TabIndex := new;
      // show icons
      for num := 1 to Accounts.Count do
        frmPopUMain.ShowIcon(Accounts[num-1], itNormal);
      // create mapping array
      SetLength(map,Accounts.Count);
      for num := 1 to Accounts.Count do
        map[Accounts[num-1].OldNum-1] := num;
      // fix rules
      RulesManager.RemapRules(map);

      SetLength(map,0);
      // save
      for num := 1 to Accounts.Count do
        SaveAccountINI(num);
      frmPopUMain.tabMail.Refresh;
    finally
      Screen.Cursor := crDefault;
    end;
  end;
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



procedure TfrmPopUMain.actSpamExecute(Sender: TObject);
begin
  if Assigned(FSpamAction) and (FSpamAction <> actSpam) then
    FSpamAction.Execute;
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


procedure TfrmPopUMain.lvMailCustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
  if Options.ShowViewed then
  begin
    if Item.StateIndex = STATE_UNREAD then
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
      {$IFDEF INDY9}
      TCP.Connect(Options.TimeOut*1000);
      {$ELSE}
      TCP.ConnectTimeout := Options.TimeOut*1000;
      TCP.Connect();
      {$ENDIF}
      TCP.GetResponse(ST_OK); //used to be [] instead of ST_OK
      Result := TCP.LastCmdResult.Text.Text;
      TCP.Disconnect;
    finally
      TCP.Free;
    end;
  except
    // ignore
  end;
end;


procedure TfrmPopUMain.tabMailChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  ShowIcon(Accounts[tabMail.TabIndex],itNormal);
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


procedure TfrmPopUMain.actUndeleteExecute(Sender: TObject);
begin
  // remove mark to delete
  SetSelectedMailItemStatus([misToBeDeleted],False);
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
  RunMessage(Accounts[tabMail.TabIndex],StrToInt(lvMail.Selected.SubItems[colID])); //todo: tabToAccount
end;

// Gets the account associated with the currently visible tab.
function TfrmPopUMain.TabToAccount() : TAccount;
begin
  Result := Accounts[tabMail.TabIndex];
end;


initialization
  // Needed to make TWebBrowser copy (used on the preview window)
  OleInitialize(nil);

  TStyleManager.Engine.RegisterStyleHook(TDateTimePicker, TDateTimePickerStyleHookFix);
finalization
  OleUninitialize;

end.


