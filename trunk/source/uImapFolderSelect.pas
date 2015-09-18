unit uImapFolderSelect;

interface

uses Winapi.Windows, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Forms,
  Vcl.Controls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, OKCANCL2, uAccounts;

type
  TImapFolderSelectDlg = class(TOKRightDlg)
    HelpBtn: TButton;
    ListBox1: TListBox;
    procedure HelpBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function ShowSelect(account : TAccount): string;
  end;

var
  ImapFolderSelectDlg: TImapFolderSelectDlg;

implementation
uses uIMAP4;

{$R *.dfm}

procedure TImapFolderSelectDlg.HelpBtnClick(Sender: TObject);
begin
  Application.HelpContext(HelpContext);
end;

function TImapFolderSelectDlg.ShowSelect(account : TAccount): string;
var
  folders : TStringList;
  i : integer;
  dlgResult : integer;
begin
  Screen.cursor := crAppStart;
  Result := '';

  try
    account.ConnectIfNeeded;
    folders := TStringList.Create;

    if (Account.Prot as TProtocolIMAP4).GetFolderNames(folders) then
    begin
      for i := 0 to (folders.Count - 1) do begin
        ListBox1.AddItem(folders[i], nil);
      end;
    end;
    Screen.Cursor := crDefault;
    dlgResult := self.ShowModal;
    if (dlgResult = mrOk) and (ListBox1.itemindex >= 0) then begin
      Result := listbox1.items[listbox1.itemindex];
    end;

  finally
    folders.Free;
  end;

end;

end.
 
