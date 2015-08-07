unit uAccountsForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls,
  PngBitBtn, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.PlatformDefaultStyleActnCtrls, System.Actions, Vcl.ActnList,
  uAccounts, uProtocol, Vcl.Grids, Vcl.ValEdit, System.Types;

const
  UseDefaultSound = '[Use Default Sound]';
  UseDefaultProgram = '[Use Default Program]';

type
  TAccountsForm = class(TForm)
    panAccounts: TPanel;
    tabAccounts: TTabControl;
    ScrollBox2: TScrollBox;
    lblServer: TLabel;
    lblUsername: TLabel;
    lblPw: TLabel;
    lblName: TLabel;
    lblAccountSound: TLabel;
    lblColor: TLabel;
    btnEdSound: TSpeedButton;
    btnAccountSoundTest: TSpeedButton;
    lblEmailApp: TLabel;
    btnEdAccountProgram: TSpeedButton;
    btnAccountProgramTest: TSpeedButton;
    lblProt: TLabel;
    lblPort: TLabel;
    edUsername: TEdit;
    edPassword: TEdit;
    edName: TEdit;
    chkAccEnabled: TCheckBox;
    colAccount: TColorBox;
    panIntervalAccount: TPanel;
    btnNeverAccount: TSpeedButton;
    lblCheckMins: TLabel;
    lblCheckEvery: TLabel;
    edIntervalAccount: TEdit;
    UpDownAccount: TUpDown;
    edSound: TEdit;
    edAccountProgram: TEdit;
    edServer: TEdit;
    cmbProtocol: TComboBox;
    edPort: TEdit;
    chkSSL: TCheckBox;
    lblAuthMode: TLabel;
    lblSslVer: TLabel;
    cmbAuthType: TComboBox;
    cmbSslVer: TComboBox;
    chkStartTLS: TCheckBox;
    panNoCheckHours: TPanel;
    lblAnd: TLabel;
    chkDontCheckTimes: TCheckBox;
    dtStart: TDateTimePicker;
    dtEnd: TDateTimePicker;
    panAccountsButtons: TPanel;
    btnSave: TBitBtn;
    btnCancelAccount: TBitBtn;
    btnHelpAccounts: TPngBitBtn;
    AccountsToolbar: TActionToolBar;
    AccountsActionManager: TActionManager;
    actTestAccount: TAction;
    actAddAccount: TAction;
    actDeleteAccount: TAction;
    panelGrp1: TCategoryPanelGroup;
    catBasicAccount: TCategoryPanel;
    catPopTrayAccountPrefs: TCategoryPanel;
    catAccName: TCategoryPanel;
    catAdvAcc: TCategoryPanel;
    lblUseSsl: TLabel;
    lblStartls: TLabel;
    lblEnableAccount: TLabel;
    lblTest: TLabel;
    catImap: TCategoryPanel;
    chkGmailExt: TCheckBox;
    chkMoveSpam: TCheckBox;
    lblSpamFolder: TLabel;
    edSpamFolder: TEdit;
    chkMoveTrash: TCheckBox;
    edTrashFolder: TEdit;
    lblTrashFolder: TLabel;
    btnSpamFolder: TSpeedButton;
    btnTrashFolder: TSpeedButton;
    lblArchiveFolder: TLabel;
    edArchiveFolder: TEdit;
    btnArchiveFolder: TSpeedButton;
    actExport: TAction;
    actImport: TAction;
    procedure btnNeverAccountClick(Sender: TObject);
    procedure cmbProtocolChange(Sender: TObject);
    procedure chkSSLClick(Sender: TObject);
    procedure edSoundEnter(Sender: TObject);
    procedure edSoundExit(Sender: TObject);
    procedure btnEdAccountProgramClick(Sender: TObject);
    procedure btnAccountProgramTestClick(Sender: TObject);
    procedure edAccountProgramEnter(Sender: TObject);
    procedure edAccountProgramExit(Sender: TObject);
    procedure btnAccountSoundTestClick(Sender: TObject);
    procedure chkDontCheckTimesClick(Sender: TObject);
    procedure edAccChange(Sender: TObject);
    procedure tabAccountsChange(Sender: TObject);
    procedure tabAccountsChanging(Sender: TObject; var AllowChange: Boolean);
    procedure tabAccountsDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure tabDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure DragMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnHelpAccountsClick(Sender: TObject);
    procedure btnSaveAccountClick(Sender: TObject);
    procedure btnCancelAccountClick(Sender: TObject);
    procedure actAddAccountExecute(Sender: TObject);
    procedure actDeleteAccountExecute(Sender: TObject);
    procedure actTestAccountExecute(Sender: TObject);
    procedure btnEdSoundClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);

    procedure CreateWnd; override;
    procedure DestroyWnd; override;
    procedure ValueListEditor2StringsChange(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure colAccountGetColors(Sender: TCustomColorBox; Items: TStrings);
    procedure FormShow(Sender: TObject);
    procedure actExportExecute(Sender: TObject);

  private
    { Private declarations }
    FNewAccount : boolean;
    FAccChanged : Boolean;
    function GetAuthTypeFromComboValue(comboBox : TComboBox) : TAuthType;
    procedure SaveAccountEdits(account : TAccount);
    procedure ShowAccount(account : TAccount);
    function AccountChanged(tab : integer) : boolean;
    procedure EnableFields(EnableIt: Boolean);
    procedure DeleteAccount(num: integer);
    procedure setPortOnAccountTab();

    procedure WMDropFiles(var msg: TWMDROPFILES); message WM_DROPFILES;
    function GetAccountForTab(tabNumber : integer) : TAccount;
    procedure showHideImapOptions;
  public
    { Public declarations }
    procedure RefreshProtocols();
    procedure ShowDefaultAccount();
    procedure Initialize();
    procedure PageControlChanging(Sender: TObject; var AllowChange: Boolean);
    procedure UpdateFonts();
    procedure OnSetLanguage();
  end;

var
  frmAccounts: TAccountsForm;

implementation

uses uTranslate, uRCUtils, uMailItems, uMain, uRulesForm, uGlobal, uDM,
  uIniSettings, uRulesManager, IdStack, IdGlobalProtocols, ShellAPI, Math,
  uPositioning, System.IniFiles;
//todo umailitems = suspect!

{$R *.dfm}

// This method should be called after the accounts are loaded into the
// Accounts object, but before this form is displayed on application startup.
procedure TAccountsForm.Initialize();
begin
  if Accounts.NumAccounts > 0 then
    EnableFields(True)
  else
    EnableFields(False);
end;

procedure TAccountsForm.CreateWnd;
begin
  inherited;
  DragAcceptFiles(Handle, True);
end;

procedure TAccountsForm.DestroyWnd;
begin
  DragAcceptFiles(Handle, False);
  inherited;
end;

procedure TAccountsForm.SaveAccountEdits(account : TAccount);
////////////////////////////////////////////////////////////////////////////////
// Save Account info from the edit account screen into the account object
// provided in the parameter.
begin
  // store account info in array
  account.Name := edName.Text;
  account.Server := edServer.Text;
  account.Port := StrToIntDef(edPort.Text,-1);
  account.Protocol := cmbProtocol.Text;
  account.UseSSLorTLS := chkSSL.Checked;
  account.SslVersion := TsslVer(cmbSslVer.ItemIndex);
  account.AuthType := GetAuthTypeFromComboValue(cmbAuthType);
  account.StartTLS := chkStartTLS.Checked;
  account.Login := edUsername.Text;
  account.Password := edPassword.Text;
  if edAccountProgram.Text = Translate(UseDefaultProgram) then
    account.MailProgram := ''
  else
    account.MailProgram := edAccountProgram.Text;
  if edSound.Text = Translate(UseDefaultSound) then
    account.Sound := ''
  else
    account.Sound := edSound.Text;
  account.Color := ColorToString2(colAccount.Selected);
  account.Enabled := chkAccEnabled.Checked;
  account.Interval := StrToFloatDef(edIntervalAccount.Text,5); //UpDownAccount.Position;
  account.DontCheckTimes := chkDontCheckTimes.Checked;
  account.DontCheckStart := dtStart.Time;
  account.DontCheckEnd := dtEnd.Time;
  account.Error := False;
  account.UIDLSupported := True;
  account.UseGmailExtensions := chkGmailExt.Checked;
  account.MoveSpamOnDelete := chkMoveSpam.Checked;
  account.MoveTrashOnDelete := chkMoveTrash.Checked;
  account.SpamFolderName := edSpamFolder.Text;
  account.TrashFolderName := edTrashFolder.Text;
  account.ArchiveFolderName := edArchiveFolder.Text;
  // objects
  if not Assigned(account.ViewedMsgIDs) then
    account.ViewedMsgIDs := TStringList.Create;
  if not Assigned(account.Mail) then
    account.Mail := TMailItems.Create;
  account.SetProtocol();
  // global
  FNewAccount := false;
  frmPopUMain.SwitchTimer;
end;

// called by uMain on startup/iniread to show the first account
procedure TAccountsForm.ShowDefaultAccount();
begin
  if (accounts.NumAccounts > 0) then
    ShowAccount(accounts[0]);
end;


procedure TAccountsForm.ShowAccount(account : TAccount);
////////////////////////////////////////////////////////////////////////////////
// Show the account info in the edit boxes
var
  i, idxAuto, idxPw, idxApop, idxSasl: integer;
  //account : TAccount;
  row : integer;
begin
  if (account = nil) then Exit;

  // main params
  edName.Text := account.Name;
  edServer.Text := account.Server;
  edPort.Text := IntToStr(account.Port);
  cmbProtocol.ItemIndex := cmbProtocol.Items.IndexOf(account.Protocol);


  chkSSL.Checked := account.UseSSLorTLS;
  cmbSslVer.ItemIndex := Integer(account.SslVersion);
  chkStartTLS.Checked := account.StartTLS;

  // If the plugin does not support SSL, do not allow user to click on
  // options that require SSL encryption.
  if (account.Prot.SupportsSSL = false)
  then begin
    chkSSL.Enabled := false;
    cmbSslVer.Enabled := false;
    lblSslVer.Enabled := false;
    //cmbAuthType.Items.Delete(Integer(sasl)); // no option to disable, so hide
    chkStartTLS.Enabled := false;
  end
  else if (account.UseSSLorTLS = false) then
  begin
    cmbSslVer.Enabled := false;
    lblSslVer.Enabled := false;
  end;

  // reset items in auth types box per what the protocol supports
  cmbAuthType.Items.Clear;
  idxAuto := cmbAuthType.Items.AddObject(Translate('Auto'),TObject(autoAuth));
  idxPw := cmbAuthType.Items.AddObject(Translate('Password'),TObject(password));
  if (account.Prot.SupportsAPOP) then
    idxApop := cmbAuthType.Items.AddObject(Translate('APOP'),TObject(apop))
  else
    idxApop := -1;
  if (account.Prot.SupportsSSL and account.Prot.SupportsSASL) then
    idxSasl := cmbAuthType.Items.AddObject(Translate('SASL'),TObject(sasl))
  else
    idxSasl := -1;

  case account.AuthType of
    autoAuth: cmbAuthType.ItemIndex := idxAuto;
    password: cmbAuthType.ItemIndex := idxPw;
    apop:     if idxApop > -1 then cmbAuthType.ItemIndex := idxApop
              else cmbAuthType.ItemIndex := idxAuto;
    sasl:     if idxSasl > -1 then cmbAuthType.ItemIndex := idxSasl
              else cmbAuthType.ItemIndex := idxAuto;
    else      cmbAuthType.ItemIndex := idxAuto;
  end;
  //cmbAuthType.ItemIndex := Integer(account.AuthType);


  //retranslate
//  for i := 0 to cmbAuthType.Items.Count-1 do
//    ChangeComboBoxListItem(cmbAuthType,i,TranslateDir(cmbAuthType.Items[i],FromEnglish));



  edUsername.Text := account.Login;
  edPassword.Text := account.Password;
  // mail program
  if account.MailProgram <> '' then
  begin
    edAccountProgram.Text := account.MailProgram;
    edAccountProgram.Font.Color := clWindowText;
    GetBitmapFromFileIcon(edAccountProgram.Text,btnAccountProgramTest.Glyph,True);
  end
  else begin
    edAccountProgram.Text := Translate(UseDefaultProgram);
    edAccountProgram.Font.Color := clGrayText;
    btnAccountProgramTest.Glyph.Assign(frmPopUMain.btnStartProgram.Glyph);
  end;
  // sound
  if account.Sound <> '' then
  begin
    edSound.Text := account.Sound;
    edSound.Font.Color := clWindowText;
  end
  else begin
    edSound.Text := Translate(UseDefaultSound);
    edSound.Font.Color := clGrayText;
  end;
  colAccount.Selected := StringToColorDef(account.Color,clGray);
  chkAccEnabled.Checked := account.Enabled;
  edIntervalAccount.Text := FloatToStr(account.Interval);
  //  UpDownAccount.Position := round(account.Interval);
  chkDontCheckTimes.Checked := account.DontCheckTimes;
  dtStart.Time := account.DontCheckStart;
  dtEnd.Time := account.DontCheckEnd;
  // server/port disable
  if account.Port < 0 then
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

  edSpamFolder.Text := account.SpamFolderName;
  edTrashFolder.Text := account.TrashFolderName;
  edArchiveFolder.Text := account.ArchiveFolderName;
  chkMoveSpam.Checked := account.MoveSpamOnDelete;
  chkMoveTrash.Checked := account.MoveTrashOnDelete;
  chkGmailExt.Checked := account.UseGmailExtensions;
  ShowHideImapOptions();

  // buttons
  FAccChanged := False;
  btnSave.Enabled := False;
  btnCancelAccount.Enabled := False;


  (*AutoSizeCheckBox(chkDontCheckTimes);
  dtStart.Left := chkDontCheckTimes.Left + chkDontCheckTimes.Width + 4;
  lblAnd.Left := dtStart.Left + dtStart.Width + 6;
  dtEnd.Left := lblAnd.Left + lblAnd.Width + 8;   *)

  btnAccountSoundTest.Glyph := nil;
  if (Options.ToolbarColorScheme = Integer(schemeTwilight)) then
    dm.imlLtDk16.GetBitmap(1, btnAccountSoundTest.Glyph)
  else
    dm.imlLtDk16.GetBitmap(0, btnAccountSoundTest.Glyph);

end;

procedure TAccountsForm.ShowHideImapOptions;
begin
  if (cmbProtocol.ItemIndex = 1 ) then   //0 = POP3, 1 = IMAP in dropdown
    catImap.Visible := true
  else
    catImap.Visible := false;
end;

function TAccountsForm.AccountChanged(tab: integer): boolean;
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
              (Accounts[tab].Login <> edUsername.Text) or
              (Accounts[tab].Password <> edPassword.Text) or
              (Accounts[tab].UseSSLorTLS <> chkSSL.Checked) or
              (Accounts[tab].AuthType <> GetAuthTypeFromComboValue(cmbAuthType)) or
              (Accounts[tab].SslVersion <> TsslVer(cmbSslVer.ItemIndex)) or
              (Accounts[tab].StartTLS <> chkStartTLS.Checked) or
              (Accounts[tab].Color <> ColorToString2(colAccount.Selected)) or
              (Accounts[tab].Enabled <> chkAccEnabled.Checked) or
              (Accounts[tab].Sound <> sound) or
              (Accounts[tab].MailProgram <> mailprogram) or
              (Accounts[tab].Interval <> StrToFloatDef(edIntervalAccount.Text,5)) or
              (Accounts[tab].DontCheckTimes <> chkDontCheckTimes.Checked) or
              (Accounts[tab].DontCheckStart <> dtStart.Time) or
              (Accounts[tab].DontCheckEnd <> dtEnd.Time);
end;

function TAccountsForm.GetAccountForTab(tabNumber : integer) : TAccount;
begin
  if (tabNumber<0) or (tabNumber>=Accounts.NumAccounts) then
    Result := nil
  else
    Result := accounts[tabNumber];

end;

procedure TAccountsForm.DeleteAccount(num: integer);
var
  i : integer;
begin
  if Accounts.NumAccounts=1 then
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
    //Dec(NumAccounts);
    // tab
    frmPopUMain.tabMail.Tabs.Delete(num-1);
    tabAccounts.Tabs.Delete(num-1);
    // remove from INI
    for i := 1 to Accounts.NumAccounts do
      SaveAccountINI(i);
    // Notify Rules form that it needs to remove an account from rules dropdown
    RulesForm.AccountsChanged();
    // fix rules
    for i := 0 to RulesManager.Rules.Count-1 do        //TODO make this a method in RulesManager /////////////////////////////////////////
    begin
      if RulesManager.Rules[i].Account = num then
        RulesManager.Rules[i].Account := -1;
      if RulesManager.Rules[i].Account > num then
        RulesManager.Rules[i].Account := RulesManager.Rules[i].Account - 1;
    end;
    RulesForm.listRulesClick(RulesForm.listRules);
    SaveRulesINI;
    // show mail
    if Accounts.NumAccounts>0 then
    begin
      frmPopUMain.tabMail.TabIndex := 0;
      tabAccounts.TabIndex := 0;
      ShowAccount(GetAccountForTab(tabAccounts.TabIndex));
      frmPopUMain.ShowMail(Accounts[frmPopUMain.tabMail.TabIndex],True);
    end
    else begin
      // this is a workaround, before it wasn't fixing the size of these
      // items if there's no accounts yet.
      AutoSizeCheckBox(chkDontCheckTimes);
      dtStart.Left := chkDontCheckTimes.Left + chkDontCheckTimes.Width + 4;
      lblAnd.Left := dtStart.Left + dtStart.Width + 6;
      dtEnd.Left := lblAnd.Left + lblAnd.Width + 8;
    end;
  end;
end;


// When using standard port numbers, this method will make sure the port numbers
// toggle to the right choices based on the protocol and use ssl state selected.
procedure TAccountsForm.setPortOnAccountTab();
begin
  if (chkSSL.Checked) then
  begin
    // STARTTLS encryption mode should use the "insecure" port numbers to start
    // the connection. Otherwise, use the secure port numbers.
    if (edPort.Text = '110') and (chkStartTLS.Checked = false) then //POP3
      edPort.Text := '995'
    else if (edPort.Text = '143') and (chkStartTLS.Checked = false) then //IMAP
      edPort.Text := '993'
    else if (edPort.Text = '995') and (chkStartTLS.Checked = true)  then //POP3 starttls
      edPort.Text := '110'
    else if (edPort.Text = '993') and (chkStartTLS.Checked = true) then //IMAP starttls
      edPort.Text := '143';
  end
  else begin
    // Use SSL/TLS not checked, use insecure port numbers, do not use STARTTLS
    if (edPort.Text = '995') then
      edPort.Text := '110' //Pop3 not SSL
    else if (edPort.Text = '993') then
      edPort.Text := '143'; //IMAP not SSL
  end;
end;


function TAccountsForm.GetAuthTypeFromComboValue(comboBox : TComboBox) : TAuthType;
begin
  if (comboBox.ItemIndex >= 0) then
    Result := TAuthType(comboBox.Items.Objects[comboBox.ItemIndex])
  else
    Result := autoAuth;

end;


procedure TAccountsForm.btnNeverAccountClick(Sender: TObject);
begin
  UpDownAccount.Position := 0;
end;


{ OnClick handler for SSL/TLS enabled checkbox on Accounts setup tab }
procedure TAccountsForm.chkSSLClick(Sender: TObject);
begin
  // Swap the port numbers (if using standard port numbers)
  setPortOnAccountTab();

  if (chkSSL.Checked) then
  begin
    // enable advanced options on GUI that only apply to SSL connections
    lblSslVer.Enabled := true;
    cmbSslVer.Enabled := true;
    chkStartTLS.Enabled := true;
  end
  else begin
    // Uncheck use STARTTLS if it was previously selected
    chkStartTLS.Checked := false;

    // disable advanced options on GUI that only apply to SSL connections
    lblSslVer.Enabled := false;
    cmbSslVer.Enabled := false;
    chkStartTLS.Enabled := false;
  end;


  // Update GUI to enable save button
  FAccChanged := AccountChanged(tabAccounts.TabIndex) or FNewAccount;
  btnSave.Enabled := FAccChanged;
  btnCancelAccount.Enabled := FAccChanged;
end;

procedure TAccountsForm.cmbProtocolChange(Sender: TObject);
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
    Accounts[tabAccounts.TabIndex].Protocol := Protocols[cmbProtocol.ItemIndex].Name;
    Accounts[tabAccounts.TabIndex].SetProtocol;
  end;

  // To make sure the port number reflects whether "Use SSL" is checked or not
  // (needs to be after the Protocols[i].Port calls above)
  setPortOnAccountTab();

  showHideImapOptions();

  // buttons
  FAccChanged := AccountChanged(tabAccounts.TabIndex);
  btnSave.Enabled := FAccChanged;
  btnCancelAccount.Enabled := FAccChanged;
end;

procedure TAccountsForm.colAccountGetColors(Sender: TCustomColorBox;
  Items: TStrings);
var
  i: integer;
  s: string;
begin
  for i := 0 to Items.Count - 1 do begin
    Items.Strings[i] := Translate(Items.Strings[i]);
  end;
end;

procedure TAccountsForm.DragMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Button = mbLeft) and (Screen.Cursor <> crHourGlass) and
    (GetKeyState(VK_LBUTTON) < 0) then
  begin
    //listRules.ItemIndex := listRules.ItemAtPos(Point(X,Y),True);
    (Sender as TControl).BeginDrag(False,12);
  end;
end;

procedure TAccountsForm.edAccountProgramEnter(Sender: TObject);
begin
  if edAccountProgram.Text = Translate(UseDefaultProgram) then
  begin
    edAccountProgram.Text := '';
    edAccountProgram.Font.Color := clWindowText;
  end;
end;



procedure TAccountsForm.edAccountProgramExit(Sender: TObject);
begin
  if edAccountProgram.Text = '' then
  begin
    edAccountProgram.Text := Translate(UseDefaultProgram);
    edAccountProgram.Font.Color := clGrayText;
  end;
end;

procedure TAccountsForm.edSoundEnter(Sender: TObject);
begin
  if edSound.Text = Translate(UseDefaultSound) then
  begin
    edSound.Text := '';
    edSound.Font.Color := clWindowText;
  end;
end;

procedure TAccountsForm.edSoundExit(Sender: TObject);
begin
  if edSound.Text = '' then
  begin
    edSound.Text := Translate(UseDefaultSound);
    edSound.Font.Color := clGrayText;
  end;
end;


procedure TAccountsForm.edAccChange(Sender: TObject);
begin
  FAccChanged := AccountChanged(tabAccounts.TabIndex) or FNewAccount;
  btnSave.Enabled := FAccChanged;
  btnCancelAccount.Enabled := FAccChanged;
end;


procedure TAccountsForm.btnCancelAccountClick(Sender: TObject);
begin
  if FNewAccount then
  begin
    Accounts.Delete(tabAccounts.TabIndex);
    //Dec(NumAccounts);
    frmPopUMain.tabMail.Tabs.Delete(tabAccounts.TabIndex);
    tabAccounts.Tabs.Delete(tabAccounts.TabIndex);
    FNewAccount := False;
    tabAccounts.TabIndex := tabAccounts.Tabs.Count-1;
  end
  else begin
    LoadAccountINI(tabAccounts.TabIndex+1);
  end;
  ShowAccount(GetAccountForTab(tabAccounts.TabIndex));
  FAccChanged := False;
  // buttons
  if Accounts.NumAccounts=0 then EnableFields(False);
  btnSave.Enabled := False;
  btnCancelAccount.Enabled := False;
end;


procedure TAccountsForm.chkDontCheckTimesClick(Sender: TObject);
begin
  dtStart.Enabled := chkDontCheckTimes.Checked;
  dtEnd.Enabled := chkDontCheckTimes.Checked;

  edAccChange(Sender);
end;


procedure TAccountsForm.btnEdAccountProgramClick(Sender: TObject);
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

procedure TAccountsForm.btnHelpAccountsClick(Sender: TObject);
begin
  HtmlHelp(0, HelpFileName+'::/accounts.htm', HH_DISPLAY_TOPIC, 0);
end;

procedure TAccountsForm.btnAccountProgramTestClick(Sender: TObject);
begin
  frmPopUMain.ExecuteProgram(Accounts.Items[tabAccounts.TabIndex]);//TODO: tabToAccount
end;


procedure TAccountsForm.btnAccountSoundTestClick(Sender: TObject);
begin
  if (edSound.Text = Translate(UseDefaultSound)) or (edSound.Text = '') then
    PlayWav(Options.DefSound)
  else
    PlayWav(edSound.Text);
end;


procedure TAccountsForm.tabAccountsChange(Sender: TObject);
begin
  ShowAccount(GetAccountForTab(tabAccounts.TabIndex));
  actDeleteAccount.Enabled := True;
end;

procedure TAccountsForm.tabAccountsChanging(Sender: TObject; var AllowChange: Boolean);
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
                     //Dec(NumAccounts);
                     frmPopUMain.tabMail.Tabs.Delete(tabAccounts.TabIndex);
                     tabAccounts.Tabs.Delete(tabAccounts.TabIndex);
                     FNewAccount := False;
                   end;
                   AllowChange := True;
                 end;
      mrCancel : AllowChange := False;
    end;
  end;
end;

procedure TAccountsForm.tabAccountsDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := (Sender = Source);
end;

procedure TAccountsForm.tabDragDrop(Sender, Source: TObject; X,  Y: Integer);
begin
  frmPopUMain.tabDragDrop(Sender, Source, X, Y);
end;

procedure TAccountsForm.ValueListEditor2StringsChange(Sender: TObject);
begin

end;

//TOdo: some of these are not needed??
// TODO: only fill dropdown if acct is new or name changed
procedure TAccountsForm.btnSaveAccountClick(Sender: TObject);
begin
  SaveAccountEdits(Accounts[tabAccounts.TabIndex]);
  SaveAccountINI(tabAccounts.TabIndex+1);
  frmPopUMain.RulesForm.AccountsChanged();
  frmPopUMain.ShowIcon(Accounts[frmPopUMain.tabMail.TabIndex],itNormal);
  frmPopUMain.ShowIcon(Accounts[tabAccounts.TabIndex],itNormal);
  FAccChanged := False;
  btnSave.Enabled := False;
  btnCancelAccount.Enabled := False;
end;


procedure TAccountsForm.actAddAccountExecute(Sender: TObject);
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
  //Inc(NumAccounts);
  FNewAccount := True;
  btnSave.Enabled := True;
  btnCancelAccount.Enabled := True;
  // add tab
  NoName := Translate('NoName');
  tabAccounts.Tabs.Add(NoName);
  tabAccounts.TabIndex := Accounts.NumAccounts-1;
  frmPopUMain.tabMail.Tabs.Add(NoName);
  dm.AddBitmap(dm.imlTabs, dm.imlPopTrueColor,popClosed);
  // enable fields
  EnableFields(True);
  chkAccEnabled.Checked := True;
  // clear the fields
  edName.Text := NoName;
  edServer.Text := '';
  cmbProtocol.ItemIndex := 0;
  edPort.Text := '110';
  chkSSL.Checked := false;
  edUsername.Text := '';
  edPassword.Text := '';
  edAccountProgram.Text := Translate(UseDefaultProgram);
  edAccountProgram.Font.Color := clGrayText;
  edSound.Text := Translate(UseDefaultSound);
  edSound.Font.Color := clGrayText;
  colAccount.Selected := clRed;
  edName.SetFocus;
  // clear mail
  frmPopUMain.lvMail.Items.Clear;
end;

procedure TAccountsForm.actDeleteAccountExecute(Sender: TObject);
begin
  if FNewAccount then
  begin
    Accounts.Delete(tabAccounts.TabIndex);
    //Dec(NumAccounts);
    frmPopUMain.tabMail.Tabs.Delete(tabAccounts.TabIndex);
    tabAccounts.Tabs.Delete(tabAccounts.TabIndex);
    FNewAccount := False;
    tabAccounts.TabIndex := tabAccounts.Tabs.Count-1;
    ShowAccount(GetAccountForTab(tabAccounts.TabIndex));
  end
  else if frmPopUMain.tabMail.TabIndex >= 0 then  //TODO: can this use accounts form tab num instead??
    DeleteAccount(tabAccounts.TabIndex+1);
end;


procedure TAccountsForm.actExportExecute(Sender: TObject);
var
  saveDialog : TSaveDialog;    // Save dialog variable
  msgBox: TForm;
  dlgResult : integer;
  iniSection : string;
  Ini : TMemIniFile;
begin

  // save changes to account before proceeding.
  if FAccChanged then begin
    msgBox := CreateMessageDialog(uTranslate.Translate('You have unsaved changes to this account, would you like to save now?'),
      mtConfirmation, mbOKCancel);
    with msgBox do
    try
      Caption := uTranslate.Translate('Export Account Settings');
      TButton(FindComponent('Ok')).Caption := uTranslate.Translate('Save');
      TButton(FindComponent('Cancel')).Caption := uTranslate.Translate('Cancel');
      dlgResult := msgBox.ShowModal;
      if dlgResult = mrOK then begin
        btnSave.Click;
      end else exit;
    finally
      msgBox.Free;
    end;
  end;


  saveDialog := TSaveDialog.Create(self);
  saveDialog.Title := 'Export Account Settings';
  saveDialog.InitialDir := GetCurrentDir;
  saveDialog.Filter := 'Ini File|*.ini|Text File|*.txt';
  saveDialog.DefaultExt := 'ini';
  saveDialog.FilterIndex := 1;

  // Display the open file dialog
  if saveDialog.Execute
  then begin
    ShowMessage('File : '+saveDialog.FileName);

    // write to ini
    Ini := TMemIniFile.Create(saveDialog.FileName);
    try
      Ini.WriteInteger('Options','NumAccounts',1);//Accounts.NumAccounts);

      iniSection := 'Account'+'1';//IntToStr(tabAccounts.TabIndex);
      Accounts[tabAccounts.TabIndex].SaveAccountToIniFile(Ini, iniSection);

      Ini.UpdateFile;

      ShowMessage('Account Exported Successfully'+ sLineBreak + saveDialog.FileName);

      //MessageDlg.
    finally
       Ini.Free;
    end;



  end
  else
    ShowMessage('Export account cancelled');

  // Free up the dialog
  saveDialog.Free;
end;

procedure TAccountsForm.actTestAccountExecute(Sender: TObject);
var
  num : integer;
begin
  actTestAccount.Enabled := false; // disable test account button until account test is done.
  Screen.Cursor := crAppStart; //Pointer with background hourglass
  try
    num := tabAccounts.TabIndex+1;
    if num<=0 then Exit;
    SaveAccountEdits(Accounts[num-1]);
    Accounts[num-1].TestAccount();
  finally
    Screen.Cursor := crDefault;
    actTestAccount.Enabled := true;
  end;
end;


procedure TAccountsForm.RefreshProtocols;
var
  sl : TStringList;
  st : string;
  i,j : integer;
begin

  cmbProtocol.Items.Text := Translate('POP3');
  cmbProtocol.Items.Add(Translate('IMAP4'));
end;

procedure TAccountsForm.EnableFields(EnableIt: Boolean);
////////////////////////////////////////////////////////////////////////////////
// Enable / Disable the fields
begin
  EnableControl(edName,EnableIt);
  EnableControl(edServer,EnableIt);
  EnableControl(cmbProtocol,EnableIt);
  EnableControl(edPort,EnableIt);
  EnableControl(edUsername,EnableIt);
  EnableControl(edPassword,EnableIt);
  EnableControl(edAccountProgram,EnableIt);
  EnableControl(edSound,EnableIt);
  EnableControl(colAccount,EnableIt);
  chkAccEnabled.Enabled := EnableIt;
  actTestAccount.Enabled := EnableIt;
  actDeleteAccount.Enabled := EnableIt;
  EnableControl(chkDontCheckTimes,EnableIt);
end;

procedure TAccountsForm.FormCreate(Sender: TObject);
begin
  Inherited;

  // accept files to drop on me
  DragAcceptFiles(Self.Handle, True);  // requires ShellAPI

  cmbProtocol.Items.Text := Translate('POP3');
  cmbProtocol.Items.Add(Translate('IMAP4'));
end;

procedure TAccountsForm.OnSetLanguage();
begin
  FormResize(self);
end;


procedure TAccountsForm.UpdateFonts();
var
 oldColor : TColor;
begin
  AccountsToolbar.Font := Options.GlobalFont;
  panelGrp1.HeaderFont.Assign(Options.GlobalFont);
  panelGrp1.HeaderFont.Style := panelGrp1.HeaderFont.Style + [fsBold];
  panelGrp1.HeaderFont.Size := Options.GlobalFont.Size;

  oldColor := edAccountProgram.Font.Color;
  edAccountProgram.Font.Assign(Options.GlobalFont);
  edAccountProgram.Font.Color := oldColor;

  oldColor := edSound.Font.Color;
  edSound.Font.Assign(Options.GlobalFont);
  edSound.Font.Color := oldColor;

  FormResize(self);
end;


procedure TAccountsForm.FormDestroy(Sender: TObject);
begin
  DragAcceptFiles(Self.Handle, False);

  Inherited;
end;


procedure TAccountsForm.FormResize(Sender: TObject);
var
  textBoxesLeft : integer;
  textBoxesRight : integer;
begin

  // -- PopTrayU prefs panel --

  textBoxesLeft := lblAccountSound.Left + Math.Max(lblAccountSound.Width, lblEmailApp.Width) + edSound.Margins.Left + edSound.Margins.Right;

  edSound.Width := (edSound.Left + edSound.Width) - textBoxesLeft; // new width = right pos - new left
  edSound.Left := textBoxesLeft;
  edAccountProgram.Left := textBoxesLeft;
  edAccountProgram.Width := edSound.Width;
  btnAccountProgramTest.Height := edSound.Height;
  btnEdAccountProgram.Height := edSound.Height;

  edSound.Top := calcPosBelow(edAccountProgram);
  edSound.Height := edAccountProgram.Height;
  lblAccountSound.Top := edSound.Top + 3;
  btnAccountSoundTest.Top := edSound.Top;
  btnAccountSoundTest.Height := edSound.Height;
  btnEdSound.Top := edSound.Top;
  btnEdSound.Height := edSound.Height;


  panIntervalAccount.Top := edSound.Top + edSound.Height + 3;
  edIntervalAccount.Left := CalcPosToRightOf(lblCheckEvery);
  UpDownAccount.Left := edIntervalAccount.Left + edIntervalAccount.Width; //no margin between
  UpDownAccount.Height := edIntervalAccount.Height;
  lblCheckMins.Left := CalcPosToRightOf(UpDownAccount);
  btnNeverAccount.Left := CalcPosToRightOf(lblCheckMins);
  btnNeverAccount.Height := edSound.Height;
  lblTest.Caption := btnNeverAccount.Caption;
  btnNeverAccount.ClientWidth := lblTest.Width + 20;
  panIntervalAccount.Height := edIntervalAccount.Height + 4;

  if (panIntervalAccount.Visible) then
    panNoCheckHours.Top := panIntervalAccount.Top + panIntervalAccount.Height + 3
  else
    panNoCheckHours.Top := edSound.Top + edSound.Height + 3;
  AutoSizeCheckBox(chkDontCheckTimes);
  chkDontCheckTimes.Height := lblAnd.Height;
  dtStart.Left := chkDontCheckTimes.Left + chkDontCheckTimes.Width + 4;
  lblAnd.Left := dtStart.Left + dtStart.Width + 6;
  dtEnd.Left := lblAnd.Left + lblAnd.Width + 8;
  panNoCheckHours.Height := dtStart.Top + dtStart.Height + 3;

  catPopTrayAccountPrefs.ClientHeight := panNoCheckHours.Top + panNoCheckHours.Height + 3;

  // -- Advanced Account Settings Panel --

  AutosizeCombobox( cmbAuthType );
  AutosizeCombobox( cmbSslVer );

  // left column
  textBoxesLeft := 8 + Math.Max(lblAuthMode.Width, lblStartls.Width) + 3;
  lblAuthMode.Left := textBoxesLeft - lblAuthMode.Width - 3;
  lblStartls.Left := textBoxesLeft - lblStartls.Width - 3;
  lblStartls.Top := calcPosBelow(cmbAuthType) + 3;

  cmbAuthType.Left := textBoxesLeft;
  chkStartTLS.Left := textBoxesLeft;
  chkStartTLS.Top := calcPosBelow(cmbAuthType);
  chkStartTLS.Height := cmbAuthType.Height;

  lblTest.Caption := cmbAuthType.Items[0]; //todo this should be widest of all of them
  //cmbAuthType.ClientWidth := lblTest.Width + 10;

  lblTest.Caption := cmbSslVer.Items[0]; //todo this should be widest of all of them
  //cmbSslVer.ClientWidth := lblTest.Width + 10;

  // right column
  lblSslVer.Left := CalcPosToRightOf(cmbAuthType) + 8;
  cmbSslVer.Left := CalcPosToRightOf(lblSslVer);

  catAdvAcc.ClientHeight := chkStartTLS.Top + chkStartTLS.Height + 3;
  catAdvAcc.Realign;

  // -- Basic Account Settings Panel --

  textBoxesLeft := 8 + Math.Max(lblServer.Width, Math.Max(lblUsername.Width, lblPw.Width)) + 3;

  // right aligned to 3px to the left of textBoxesLeft - labels for left column
  lblServer.Left := textBoxesLeft - lblServer.Width - 3;
  lblUsername.Left := textBoxesLeft - lblUsername.Width - 3;
  lblPw.Left := textBoxesLeft - lblPw.Width - 3;

  //left aligned to textBoxesLeft - edit boxes for left column
  edServer.Left := textBoxesLeft;
  edUsername.Left := textBoxesLeft;
  edPassword.Left := textBoxesLeft;

  // Text lablels 3px below top of edit boxes to account for edit box trim
  // height of rows based on height of edit box
  lblServer.Top := edServer.Top + 3;
  edUsername.Top := calcPosBelow(edServer);
  lblUsername.Top := edUsername.Top + 3;
  edPassword.Top := calcPosBelow(edUsername);
  lblPw.Top := edPassword.Top + 3;

  // right column
  cmbProtocol.Top := edServer.Top;
  chkSSL.Left := cmbProtocol.Left;
  edPort.Left := cmbProtocol.Left;
  edPort.Top := edPassword.Top;
  chkSSL.Top := edUsername.Top;
  chkSSL.Height := edUsername.Height;

  // labels for right column
  lblProt.Top := lblServer.Top;
  lblProt.Left := cmbProtocol.Left - lblProt.Width - 3;
  lblUseSsl.Top := lblUsername.Top;
  lblUseSsl.Left :=  cmbProtocol.Left - lblUseSsl.Width - 3;
  lblPort.Top := lblPw.Top;
  lblPort.Left :=  cmbProtocol.Left - lblPort.Width - 3;

  // make left column text boxes "fill" available space
  textBoxesRight := cmbProtocol.Left - 8 - Math.Max(lblProt.Width, Math.Max(lblUseSsl.Width, lblProt.Width)) - 8;
  edServer.Width := textBoxesRight - edServer.Left;
  edUsername.Width := edServer.Width;
  edPassword.Width := edUsername.Width;

  // height of panel
  catBasicAccount.ClientHeight := edPassword.Top + edPassword.Height + 9;

  // TODO: later: make this more robust by swtiching to a one column layout
  // if the width of edit boxes is negative or window width below some min

  // -- Display Options Panel --
  catAccName.Realign;

  lblName.Left := 8;
  edName.Left := CalcPosToRightOf(lblName);
  lblColor.Left := CalcPosToRightOf(edName) + 8;
  colAccount.Left := CalcPosToRightOf(lblColor);
  colAccount.Height := edName.Height;
  colAccount.ClientHeight := edName.Height;

  //colAccount.ScaleBy(edName.Height,colAccount.Height);

  catAccName.ClientHeight := edName.Top + edName.Height + 4;
  catAccName.Realign;
  //chkAccEnabled.Realign;
  chkAccEnabled.Top := edName.Top;
  chkAccEnabled.Height := edName.Height;
  chkAccEnabled.Left := catAccName.Width - 26;

  lblEnableAccount.Alignment := taRightJustify;
  lblEnableAccount.Top := lblName.Top;
  lblEnableAccount.Left := catAccName.Width - lblEnableAccount.Width - 26;//chkAccEnabled.Left - lblEnableAccount.Width - 4; //this shouldn't even be needed

  // ------
  catImap.Realign;

  chkMoveSpam.Height := lblSpamFolder.Height;
  chkMoveTrash.Height := lblSpamFolder.Height;
  chkGmailExt.Height := lblSpamFolder.Height;

  chkMoveSpam.Top := calcPosBelow(chkGmailExt);
  edSpamFolder.Top := calcPosBelow(chkMoveSpam);
  lblSpamFolder.Top := edSpamFolder.Top+3;
  btnSpamFolder.Top := edSpamFolder.Top;
  chkMoveTrash.Top := calcPosBelow(edSpamFolder);
  edTrashFolder.Top := calcPosBelow(chkMoveTrash);
  lblTrashFolder.Top := edTrashFolder.Top + 3;
  btnTrashFolder.Top := edTrashFolder.Top;
  edArchiveFolder.Top := calcPosBelow(edTrashFolder);
  lblArchiveFolder.Top := edArchiveFolder.Top + 3;
  btnArchiveFolder.Top := edArchiveFolder.Top;

  catImap.ClientHeight := lblArchiveFolder.Top + lblArchiveFolder.Height + 4;

  edSpamFolder.Left := CalcPosToRightOf(lblSpamFolder);
  edTrashFolder.Left := CalcPosToRightOf(lblTrashFolder);
  edArchiveFolder.Left := CalcPosToRightOf(lblArchiveFolder);
  btnSpamFolder.Left := CalcPosToRightOf(edSpamFolder);
  btnTrashFolder.Left := CalcPosToRightOf(edTrashFolder);
  btnArchiveFolder.Left := CalcPosToRightOf(edArchiveFolder);

  btnTrashFolder.Height := edTrashFolder.Height;
  btnSpamFolder.Height := edSpamFolder.Height;
  btnArchiveFolder.Height := edArchiveFolder.Height;

  // basic account settings panel
  catPopTrayAccountPrefs.Realign;
  catBasicAccount.Realign;

  lblTest.Caption := btnCancelAccount.Caption;

  btnCancelAccount.ClientWidth := Math.Max(lblTest.Width, 90) + 10 + 16;
  btnCancelAccount.Left := panAccountsButtons.Width - btnCancelAccount.Width - 6;
  btnCancelAccount.ClientHeight := Math.Max(lblTest.Height, 25);

  lblTest.Caption := btnSave.Caption;
  btnSave.ClientWidth := Math.Max(lblTest.Width, 120) + 10 + 16;
  btnSave.Left := btnCancelAccount.Left - btnSave.Width - 10;
  btnSave.ClientHeight := btnCancelAccount.ClientHeight;

  btnHelpAccounts.ClientHeight := btnCancelAccount.ClientHeight;
  lblTest.Caption := btnHelpAccounts.Caption;
  btnHelpAccounts.ClientWidth := Math.Max(lblTest.Width, 70) + 10 + 16;

  panAccountsButtons.Height := btnCancelAccount.Height + 3;

end;

procedure TAccountsForm.FormShow(Sender: TObject);
begin
  // the below lines will force an update of the colorbox so we can rename the fonts
  colAccount.Style := colAccount.Style - [cbCustomColors];
  colAccount.Style := colAccount.Style + [cbCustomColors];


  AutosizeCombobox( cmbAuthType );
  AutosizeCombobox( cmbSslVer );

end;

procedure TAccountsForm.btnEdSoundClick(Sender: TObject);
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

procedure TAccountsForm.PageControlChanging(Sender: TObject;
  var AllowChange: Boolean);
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
                     //Dec(NumAccounts);
                     frmPopUMain.tabMail.Tabs.Delete(tabAccounts.TabIndex);
                     tabAccounts.Tabs.Delete(tabAccounts.TabIndex);
                     FNewAccount := False;
                   end;
                   AllowChange := True;
                 end;
      mrCancel : AllowChange := False;
    end;
  end;
end;

procedure TAccountsForm.WMDropFiles(var msg: TWMDROPFILES);
begin
  DragFinish(msg.Drop);
end;

end.
