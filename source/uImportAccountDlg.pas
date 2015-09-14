unit uImportAccountDlg;

interface

uses Winapi.Windows, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Forms,
  Vcl.Controls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, OKCANCL2, Vcl.ComCtrls,
  uAccounts;

type
  TImportAcctDlg = class(TOKRightDlg)
    HelpBtn: TButton;
    ListViewAccounts: TListView;
    Label1: TLabel;
    chkSelAll: TCheckBox;
    procedure HelpBtnClick(Sender: TObject);
    procedure chkSelAllClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function ImportAccounts(): integer;
  end;

var
  ImportAcctDlg: TImportAcctDlg;

implementation
uses Vcl.Dialogs, System.IniFiles;

{$R *.dfm}

procedure TImportAcctDlg.chkSelAllClick(Sender: TObject);
var
  item : TListItem;
begin
  inherited;
  for item in ListViewAccounts.Items do begin
    item.Checked := (chkSelAll.Checked);
  end;
end;

procedure TImportAcctDlg.HelpBtnClick(Sender: TObject);
begin
  Application.HelpContext(HelpContext);
end;

// @param accounts - pass in the account list that you would like any imported
//    accounts to be added to. It should be initialized before calling this
//    function.
// @return a message result whether the import was canceled or successful
//    mrCancel or mrOk
function TImportAcctDlg.ImportAccounts(accounts : TAccounts): integer;
var
  openDialog : TOpenDialog;    // Save dialog variable
  msgBox: TForm;
  dlgResult : integer;
  aSection : string;
  Ini : TIniFile;
  numExportedAccounts : integer;
  item : TListItem;
  iniSections : TStringList;
  account : TAccount;
begin
  inherited;

  try
    Result := mrCancel;

    openDialog := TOpenDialog.Create(self);
    openDialog.Title := 'Import/Restore Accounts';
    openDialog.InitialDir := GetCurrentDir;
    openDialog.Filter := 'Ini File|*.ini|Text File|*.txt';
    openDialog.DefaultExt := 'ini';
    openDialog.FilterIndex := 1;

    // Display the open file dialog
    if openDialog.Execute
    then begin
      ListViewAccounts.Clear;

      Ini := TIniFile.Create(openDialog.FileName);
      try
        // make a list of accounts in the ini file
        iniSections := TStringList.Create;
        Ini.ReadSections(iniSections);

        // add each account+data from the ini file to the import dialog.
        for aSection in iniSections do
        begin
          if aSection.StartsWith('Account') then
          begin
            account := TAccount.Create;
            account.LoadAccountFromINI(Ini, aSection);

            item := ListViewAccounts.Items.Add;
            item.Caption := account.Name;
            item.SubItems.Add(account.Server);
            item.SubItems.Add(account.Login);
            item.Data := account;
          end;
        end;
        Result := self.ShowModal;

        if (Result = mrOk) then
        begin

        end;


        // todo: free item.Data
      finally
         Ini.Free;
         iniSections.Free;
      end;

      //ShowMessage('Account(s) Imported Successfully'+ sLineBreak + openDialog.FileName);

    end;
  finally
    openDialog.Free;
  end;


end;

end.
 
