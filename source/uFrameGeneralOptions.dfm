object frameGeneralOptions: TframeGeneralOptions
  Left = 0
  Top = 0
  Width = 274
  Height = 272
  TabOrder = 0
  OnResize = FrameResize
  object lblFirstWait: TLabel
    Left = 36
    Top = 39
    Width = 44
    Height = 13
    Caption = 'First Wait'
  end
  object lblSeconds: TLabel
    Left = 116
    Top = 39
    Width = 40
    Height = 13
    Caption = 'seconds'
  end
  object Label1: TLabel
    Left = 8
    Top = 4
    Width = 42
    Height = 13
    Caption = 'Startup'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 84
    Width = 55
    Height = 13
    Caption = 'Tray Icon'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 170
    Width = 149
    Height = 13
    Caption = 'New Message Notification'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTrayIcon: TLabel
    Left = 8
    Top = 140
    Width = 117
    Height = 13
    Hint = 'What to show on the TrayIcon'#13#10'while checking for new mail.'
    Caption = 'TrayIcon while Checking'
    OnMouseDown = HelpMouseDown
  end
  object lblAdvInfoDelay: TLabel
    Left = 224
    Top = 227
    Width = 43
    Height = 13
    Caption = 'seconds)'
  end
  object lblAdvInfoShowFor: TLabel
    Left = 140
    Top = 227
    Width = 43
    Height = 13
    Caption = '(show for'
  end
  object chkMinimized: TCheckBox
    Left = 8
    Top = 58
    Width = 220
    Height = 17
    Hint = 
      'PopTray will startup in minimized state.'#13#10'Thus the window will b' +
      'e hidden and only the trayicon'#13#10'will be visible.'
    Caption = 'Start &Minimized'
    TabOrder = 2
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object chkAnimated: TCheckBox
    Left = 8
    Top = 185
    Width = 220
    Height = 17
    Hint = 
      'Animate the Tray Icon when you receive new mail.'#13#10'This will prod' +
      'uce a flashing indicator instead of the normal static one.'
    Caption = '&Flash Tray Icon'
    TabOrder = 3
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object chkResetTray: TCheckBox
    Left = 8
    Top = 120
    Width = 220
    Height = 17
    Hint = 
      'Reset the Tray Icon message count when you view the PopTray'#13#10'win' +
      'dow.  When new mail arrives only the new count since last '#13#10'view' +
      ' will be shown.'
    Caption = 'Reset Mail Count in Tra&y when Viewing'
    TabOrder = 5
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object chkStartUp: TCheckBox
    Left = 8
    Top = 20
    Width = 220
    Height = 17
    Hint = 'Immediately check for mail when PopTray starts.'
    Caption = 'Check for New Mail on Start&up'
    TabOrder = 0
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object chkShowForm: TCheckBox
    Left = 8
    Top = 245
    Width = 220
    Height = 17
    Hint = 'Show the PopTrayU window when new mail arrives.'
    Caption = 'Show Main Window'
    TabOrder = 7
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object chkRotateIcon: TCheckBox
    Left = 8
    Top = 100
    Width = 222
    Height = 15
    Hint = 'Rotate Icon to show messages in each account'
    Caption = '&Rotate Icon for each Account'
    TabOrder = 4
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object chkBalloon: TCheckBox
    Left = 8
    Top = 205
    Width = 220
    Height = 17
    Hint = 'Show Info Balloon or Advanced Info when new mail arrives.'
    Caption = 'Show &Balloon Notification'
    TabOrder = 6
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object edFirstWait: TEdit
    Left = 84
    Top = 35
    Width = 29
    Height = 21
    Hint = 
      'When starting PopTray, first wait a few seconds'#13#10'before checking' +
      ' for mail.'
    TabOrder = 1
    Text = '0'
    OnChange = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object cmbCheckingIcon: TComboBox
    Left = 132
    Top = 136
    Width = 109
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 3
    TabOrder = 8
    Text = 'Animated Star'
    OnChange = OptionsChange
    Items.Strings = (
      'None'
      'Lightning Bolt'
      'Star'
      'Animated Star')
  end
  object chkAdvInfo: TCheckBox
    Left = 20
    Top = 225
    Width = 117
    Height = 17
    Hint = 'Show Info dialog with message details and buttons.'
    Caption = 'Use &Deluxe Balloon'
    Checked = True
    State = cbChecked
    TabOrder = 9
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object edAdvInfoDelay: TEdit
    Left = 188
    Top = 223
    Width = 33
    Height = 21
    Hint = 'Number of seconds to display the Info window'#13#10'before closing it.'
    TabOrder = 10
    OnChange = OptionsChange
    OnMouseDown = HelpMouseDown
  end
end
