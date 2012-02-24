object frameAdvancedInterface: TframeAdvancedInterface
  Left = 0
  Top = 0
  Width = 304
  Height = 252
  TabOrder = 0
  object lblTrayIcon: TLabel
    Left = 24
    Top = 8
    Width = 117
    Height = 13
    Hint = 'What to show on the TrayIcon'#13#10'while checking for new mail.'
    Caption = 'TrayIcon while Checking'
    OnMouseDown = HelpMouseDown
  end
  object lblAdvInfoDelay: TLabel
    Left = 168
    Top = 176
    Width = 40
    Height = 13
    Caption = 'seconds'
  end
  object chkOnTop: TCheckBox
    Left = 8
    Top = 156
    Width = 209
    Height = 17
    Hint = 'Show the PopTray window always on top of other windows.'
    Caption = 'Stay on &Top'
    TabOrder = 9
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object chkDeleteConfirm: TCheckBox
    Left = 8
    Top = 46
    Width = 225
    Height = 17
    Hint = 
      'Ask for confirmation before deleting any e-mails.'#13#10'This only wor' +
      'ks for the Delete button.  Deleting messages'#13#10'using rules will n' +
      'ot ask for confirmation.'
    Caption = 'Deletion C&onfirmation'
    Checked = True
    State = cbChecked
    TabOrder = 2
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object chkCloseMinimize: TCheckBox
    Left = 8
    Top = 102
    Width = 209
    Height = 17
    Hint = 
      'The X close button in the top right-hand corner will minimize'#13#10'P' +
      'opTray instead of closing it.'#13#10'To close use the "Quit" button.'
    Caption = 'X &Button Minimizes'
    TabOrder = 6
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object chkDoubleClickDelay: TCheckBox
    Left = 8
    Top = 210
    Width = 209
    Height = 17
    Hint = 
      'Delay on a SingleClick to wait and see if a DoubleClick is comin' +
      'g.'
    Caption = '&Double Click delay on Click'
    Checked = True
    State = cbChecked
    TabOrder = 13
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object chkMinimizeTray: TCheckBox
    Left = 8
    Top = 120
    Width = 209
    Height = 17
    Hint = 'Minimize PopTray to the System Tray instead of the Taskbar.'
    Caption = 'Minimi&ze to Tray'
    Checked = True
    State = cbChecked
    TabOrder = 7
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object chkPasswordProtect: TCheckBox
    Left = 8
    Top = 84
    Width = 145
    Height = 17
    Hint = 'Requires that you enter the specified password to open PopTray.'
    Caption = '&Password Protect'
    TabOrder = 4
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object edPassword: TEdit
    Left = 152
    Top = 82
    Width = 69
    Height = 21
    PasswordChar = '*'
    TabOrder = 5
    OnChange = OptionsChange
  end
  object chkShowViewed: TCheckBox
    Left = 8
    Top = 28
    Width = 225
    Height = 17
    Hint = 'Unviewed messages will be shown in Bold.'
    Caption = '&Indicate Viewed and Unviewed Messages'
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object chkMultilineAccounts: TCheckBox
    Left = 8
    Top = 138
    Width = 209
    Height = 17
    Hint = 
      'Display the tabs for the different accounts in'#13#10'multiple lines i' +
      'nstead of one scrolling line.'
    Caption = '&Multi-line Account Tabs'
    TabOrder = 8
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object chkAdvInfo: TCheckBox
    Left = 8
    Top = 174
    Width = 121
    Height = 17
    Hint = 'Show Info dialog with message details and buttons.'
    Caption = '&Advanced Show Info'
    Checked = True
    State = cbChecked
    TabOrder = 10
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object chkHideViewed: TCheckBox
    Left = 8
    Top = 192
    Width = 209
    Height = 17
    Hint = 'Once a message has been viewed, don'#39't show it again.'
    Caption = 'Hide Viewed Messages'
    TabOrder = 12
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object cmbCheckingIcon: TComboBox
    Left = 144
    Top = 4
    Width = 109
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 3
    TabOrder = 0
    Text = 'Animated Star'
    OnChange = OptionsChange
    Items.Strings = (
      'None'
      'Lightning Bolt'
      'Star'
      'Animated Star')
  end
  object edAdvInfoDelay: TEdit
    Left = 132
    Top = 172
    Width = 33
    Height = 21
    Hint = 'Number of seconds to display the Info window'#13#10'before closing it.'
    TabOrder = 11
    OnChange = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object chkShowWhileChecking: TCheckBox
    Left = 8
    Top = 228
    Width = 209
    Height = 17
    Hint = 'While checking, show each message as it is downloaded.'
    Caption = '&Show Messages while Checking'
    TabOrder = 14
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object chkDeleteConfirmProtected: TCheckBox
    Left = 8
    Top = 64
    Width = 285
    Height = 17
    Hint = 
      'Extra confirmation when you try to delete messages'#13#10'protected by' +
      ' rules or the WhiteList.'
    Caption = '&Extra Confirmation when Deleting Protected Messages'
    TabOrder = 3
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
end
