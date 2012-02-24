object frameGeneralOptions: TframeGeneralOptions
  Left = 0
  Top = 0
  Width = 251
  Height = 210
  TabOrder = 0
  OnResize = FrameResize
  object lblFirstWait: TLabel
    Left = 36
    Top = 23
    Width = 44
    Height = 13
    Caption = 'First Wait'
  end
  object lblSeconds: TLabel
    Left = 116
    Top = 23
    Width = 40
    Height = 13
    Caption = 'seconds'
  end
  object chkMinimized: TCheckBox
    Left = 7
    Top = 42
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
    Left = 7
    Top = 60
    Width = 220
    Height = 17
    Hint = 
      'Animate the Tray Icon when you receive new mail.'#13#10'This will prod' +
      'uce a flashing indicator instead of the normal static one.'
    Caption = '&Animated Tray Icon'
    TabOrder = 3
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object chkResetTray: TCheckBox
    Left = 7
    Top = 96
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
    Left = 7
    Top = 4
    Width = 220
    Height = 17
    Hint = 'Immediately check for mail when PopTray starts.'
    Caption = 'Check for New Mail on Start&up'
    TabOrder = 0
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object chkShowForm: TCheckBox
    Left = 7
    Top = 132
    Width = 220
    Height = 17
    Hint = 'Show the PopTray window when new mail arrives.'
    Caption = 'Show Window on &Notification'
    TabOrder = 7
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object chkRotateIcon: TCheckBox
    Left = 7
    Top = 78
    Width = 220
    Height = 17
    Hint = 'Rotate Icon to show messages in each account'
    Caption = '&Rotate Icon for each Account'
    TabOrder = 4
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object chkBalloon: TCheckBox
    Left = 7
    Top = 114
    Width = 220
    Height = 17
    Hint = 'Show Info Balloon or Advanced Info when new mail arrives.'
    Caption = 'Info &Balloon on Notification'
    TabOrder = 6
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object edFirstWait: TEdit
    Left = 84
    Top = 19
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
  object chkDeleteNextCheck: TCheckBox
    Left = 7
    Top = 152
    Width = 220
    Height = 17
    Hint = 
      'When deleting mail they will get marked for deletion'#13#10'and only p' +
      'hysically deleted when the next check runs.'
    Caption = 'Delete Mail only on Next Check'
    TabOrder = 8
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
end
