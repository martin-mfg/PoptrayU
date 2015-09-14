unit ExportAcctDlg;

interface

uses Winapi.Windows, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Forms,
  Vcl.Controls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, OKCANCL2, Vcl.CheckLst,
  Vcl.ComCtrls;

type
  TExportAccountsDlg = class(TOKRightDlg)
    HelpBtn: TButton;
    chkIncludePw: TCheckBox;
    Label1: TLabel;
    ListViewAccounts: TListView;
    chkSelAll: TCheckBox;
    procedure HelpBtnClick(Sender: TObject);
    procedure chkSelAllClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExportAccountsDlg: TExportAccountsDlg;

implementation
uses uAccounts, System.IniFiles, Vcl.Dialogs;

{$R *.dfm}

procedure TExportAccountsDlg.chkSelAllClick(Sender: TObject);
var
  item : TListItem;
begin
  inherited;

  for item in ListViewAccounts.Items do begin
    item.Checked := (chkSelAll.Checked);
  end;

end;

procedure TExportAccountsDlg.FormCreate(Sender: TObject);
var
  account : TAccount;
  item : TListItem;
begin
  inherited;
  ListViewAccounts.Clear;
  for account in Accounts do begin
    item := ListViewAccounts.Items.Add;
    item.Caption := account.Name;
    item.SubItems.Add(account.Server);
    item.SubItems.Add(account.Login);
    item.Data := account;
  end;
end;


procedure TExportAccountsDlg.HelpBtnClick(Sender: TObject);
begin
  Application.HelpContext(HelpContext);
end;

procedure TExportAccountsDlg.OKBtnClick(Sender: TObject);
var
  saveDialog : TSaveDialog;    // Save dialog variable
  msgBox: TForm;
  dlgResult : integer;
  iniSection : string;
  Ini : TMemIniFile;
  exportDlg : TExportAccountsDlg;
  numExportedAccounts : integer;
  item : TListItem;
begin
  inherited;

  try
    saveDialog := TSaveDialog.Create(self);
    saveDialog.Title := 'Export/Backup Accounts';
    saveDialog.InitialDir := GetCurrentDir;
    saveDialog.Filter := 'Ini File|*.ini|Text File|*.txt';
    saveDialog.DefaultExt := 'ini';
    saveDialog.FilterIndex := 1;

    // Display the save file dialog
    if saveDialog.Execute
    then begin
      //ShowMessage('File : '+saveDialog.FileName);

      // write to ini
      Ini := TMemIniFile.Create(saveDialog.FileName);
      numExportedAccounts := 0;
      try
        for item in ListViewAccounts.Items do begin
          if (item.Checked) then begin
            Inc(numExportedAccounts);

            iniSection := 'Account'+IntToStr(numExportedAccounts);
            TAccount(item.Data).SaveAccountToIniFile(Ini, iniSection, chkIncludePw.Checked);
            Ini.UpdateFile;
          end;
        end;

        Ini.WriteInteger('Options','NumAccounts',numExportedAccounts);
      finally
         Ini.Free;

      end;

      ShowMessage('Account(s) Exported Successfully'+ sLineBreak + saveDialog.FileName);

    end;
  finally
    saveDialog.Free;
  end;

end;

end.
 
