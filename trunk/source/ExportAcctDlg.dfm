inherited OKHelpRightDlg: TOKHelpRightDlg
  Caption = 'Export Account(s)'
  ClientHeight = 298
  ClientWidth = 536
  ExplicitWidth = 542
  ExplicitHeight = 326
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Width = 437
    Height = 280
    Anchors = [akLeft, akTop, akRight, akBottom]
    ExplicitWidth = 437
    ExplicitHeight = 280
  end
  object Label1: TLabel [1]
    Left = 20
    Top = 20
    Width = 128
    Height = 13
    Caption = 'Select Accounts to Export:'
  end
  object SpeedButton1: TSpeedButton [2]
    Left = 366
    Top = 11
    Width = 23
    Height = 22
    Caption = 'All'
  end
  object SpeedButton2: TSpeedButton [3]
    Left = 395
    Top = 11
    Width = 38
    Height = 22
    Caption = 'None'
  end
  inherited OKBtn: TButton
    Left = 452
    Anchors = [akTop, akRight]
  end
  inherited CancelBtn: TButton
    Left = 452
    Anchors = [akTop, akRight]
  end
  object HelpBtn: TButton
    Left = 452
    Top = 68
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = '&Help'
    Enabled = False
    TabOrder = 2
    OnClick = HelpBtnClick
    ExplicitLeft = 300
  end
  object chkIncludePw: TCheckBox
    Left = 20
    Top = 260
    Width = 254
    Height = 17
    Anchors = [akLeft, akBottom]
    Caption = 'Include Saved Passwords'
    Checked = True
    State = cbChecked
    TabOrder = 3
  end
  object ListView1: TListView
    Left = 20
    Top = 39
    Width = 413
    Height = 215
    Anchors = [akLeft, akTop, akRight, akBottom]
    Checkboxes = True
    Columns = <
      item
        Caption = 'Account'
      end
      item
        Caption = 'Server'
      end
      item
        Caption = 'Username'
      end>
    Items.ItemData = {
      05BC0000000400000000000000FFFFFFFFFFFFFFFF02000000FFFFFFFF000000
      000461006300630031000E69006D00610070002E0067006D00610069006C002E
      0063006F006D006000471C116500780061006D0070006C006500400067006D00
      610069006C002E0063006F006D003803471C00000000FFFFFFFFFFFFFFFF0000
      0000FFFFFFFF000000000000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF00
      0000000000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF0000000000FFFFFF
      FF}
    TabOrder = 4
    ViewStyle = vsReport
  end
end
