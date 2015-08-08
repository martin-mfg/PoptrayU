unit ExportAcctDlg;

interface

uses Winapi.Windows, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Forms,
  Vcl.Controls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, OKCANCL2, Vcl.CheckLst,
  Vcl.ComCtrls;

type
  TOKHelpRightDlg = class(TOKRightDlg)
    HelpBtn: TButton;
    chkIncludePw: TCheckBox;
    Label1: TLabel;
    ListView1: TListView;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure HelpBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OKHelpRightDlg: TOKHelpRightDlg;

implementation

{$R *.dfm}

procedure TOKHelpRightDlg.HelpBtnClick(Sender: TObject);
begin
  Application.HelpContext(HelpContext);
end;

end.
 
