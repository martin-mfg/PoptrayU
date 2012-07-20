object frameAdvancedInterface: TframeAdvancedInterface
  Left = 0
  Top = 0
  Width = 318
  Height = 262
  TabOrder = 0
  OnResize = FrameResize
  object Label1: TLabel
    Left = 8
    Top = 4
    Width = 155
    Height = 13
    Caption = 'Main Window Message List'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 106
    Width = 137
    Height = 13
    Caption = 'Main Window Behaviors'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object chkOnTop: TCheckBox
    Left = 8
    Top = 122
    Width = 209
    Height = 17
    Hint = 'Show the PopTray window always on top of other windows.'
    Caption = 'Stay on &Top'
    TabOrder = 6
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object chkCloseMinimize: TCheckBox
    Left = 8
    Top = 142
    Width = 209
    Height = 17
    Hint = 
      'The X close button in the top right-hand corner will minimize'#13#10'P' +
      'opTrayU instead of closing it.'#13#10'To close use the "Quit" button.'
    Caption = 'X &Button Minimizes'
    TabOrder = 3
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object chkDoubleClickDelay: TCheckBox
    Left = 8
    Top = 202
    Width = 209
    Height = 17
    Hint = 
      'Delay on a SingleClick to wait and see if a DoubleClick is comin' +
      'g.'
    Caption = '&Double Click delay on Click'
    Checked = True
    State = cbChecked
    TabOrder = 8
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object chkMinimizeTray: TCheckBox
    Left = 8
    Top = 162
    Width = 209
    Height = 17
    Hint = 'Minimize PopTrayU to the System Tray instead of the Taskbar.'
    Caption = 'Minimi&ze to Tray'
    Checked = True
    State = cbChecked
    TabOrder = 4
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object chkPasswordProtect: TCheckBox
    Left = 8
    Top = 222
    Width = 145
    Height = 17
    Hint = 'Requires that you enter the specified password to open PopTray.'
    Caption = '&Password Protect'
    TabOrder = 1
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object edPassword: TEdit
    Left = 152
    Top = 220
    Width = 69
    Height = 21
    PasswordChar = '*'
    TabOrder = 2
    OnChange = OptionsChange
  end
  object chkShowViewed: TCheckBox
    Left = 8
    Top = 20
    Width = 225
    Height = 17
    Hint = 'Unviewed messages will be shown in Bold.'
    Caption = '&Indicate Viewed and Unviewed Messages'
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object chkMultilineAccounts: TCheckBox
    Left = 8
    Top = 182
    Width = 209
    Height = 17
    Hint = 
      'Display the tabs for the different accounts in'#13#10'multiple lines i' +
      'nstead of one scrolling line.'
    Caption = '&Multi-line Account Tabs'
    TabOrder = 5
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object chkHideViewed: TCheckBox
    Left = 8
    Top = 60
    Width = 209
    Height = 17
    Hint = 'Once a message has been viewed, don'#39't show it again.'
    Caption = 'Hide Viewed Messages'
    TabOrder = 7
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object chkShowWhileChecking: TCheckBox
    Left = 8
    Top = 80
    Width = 209
    Height = 17
    Hint = 'While checking, show each message as it is downloaded.'
    Caption = '&Show Messages while Checking'
    TabOrder = 9
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object chkRememberViewed: TCheckBox
    Left = 8
    Top = 40
    Width = 221
    Height = 17
    Hint = 
      'Remember which messages on the server has already been viewed'#13#10'e' +
      'ven after closing PopTray.'
    Caption = 'Remember &Viewed Messages'
    TabOrder = 10
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
end
