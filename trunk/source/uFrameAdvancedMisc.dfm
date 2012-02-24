object frameAdvancedMisc: TframeAdvancedMisc
  Left = 0
  Top = 0
  Width = 394
  Height = 158
  TabOrder = 0
  object lblAnd: TLabel
    Left = 224
    Top = 96
    Width = 18
    Height = 13
    Alignment = taCenter
    Caption = 'and'
  end
  object chkLogRules: TCheckBox
    Left = 4
    Top = 40
    Width = 221
    Height = 17
    Hint = 
      'Write all rules actions to a log file.'#13#10'Filename: RULES.LOG in t' +
      'he same directory as PopTray.'
    Caption = 'Log &Rules'
    TabOrder = 2
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object chkUseMAPI: TCheckBox
    Left = 4
    Top = 4
    Width = 221
    Height = 17
    Hint = 
      'Use the Simple MAPI interface of you e-mail client,'#13#10'instead of ' +
      'using a "mailto:" link for replies and new messages.'
    Caption = '&MAPI instead of mailto:'
    TabOrder = 0
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object chkSafeDelete: TCheckBox
    Left = 4
    Top = 22
    Width = 221
    Height = 17
    Hint = 
      'Use the POP3 UIDL command to check that message is still the sam' +
      'e'#13#10'before deleting it.'
    Caption = '&Safe Delete (using UIDL)'
    Checked = True
    State = cbChecked
    TabOrder = 1
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object chkRememberViewed: TCheckBox
    Left = 4
    Top = 58
    Width = 221
    Height = 17
    Hint = 
      'Remember which messages on the server has already been viewed'#13#10'e' +
      'ven after closing PopTray.'
    Caption = 'Remember &Viewed Messages'
    TabOrder = 3
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object chkBlackListSpam: TCheckBox
    Left = 4
    Top = 76
    Width = 221
    Height = 17
    Hint = 
      'Black List will mark the messages as Spam'#13#10'instead of deleting t' +
      'hem.'
    Caption = '&Black List mark as Spam'
    TabOrder = 4
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object chkDontCheckTimes: TCheckBox
    Left = 4
    Top = 94
    Width = 153
    Height = 17
    Hint = 
      'Disable AutoChecking between the hours specified.'#13#10'This is usefu' +
      'l when you do not want noisy notifications'#13#10'during the night.'
    Caption = 'Don'#39't Check between'
    TabOrder = 5
    OnClick = chkDontCheckTimesClick
    OnMouseDown = HelpMouseDown
  end
  object dtStart: TDateTimePicker
    Left = 160
    Top = 92
    Width = 57
    Height = 21
    Date = 37759.833333333340000000
    Format = 'HH:mm'
    Time = 37759.833333333340000000
    Enabled = False
    Kind = dtkTime
    TabOrder = 6
    OnChange = OptionsChange
  end
  object dtEnd: TDateTimePicker
    Left = 252
    Top = 92
    Width = 57
    Height = 21
    Date = 37759.333333333340000000
    Format = 'HH:mm'
    Time = 37759.333333333340000000
    Enabled = False
    Kind = dtkTime
    TabOrder = 7
    OnChange = OptionsChange
  end
end
