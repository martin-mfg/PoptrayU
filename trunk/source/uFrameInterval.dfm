object frameInterval: TframeInterval
  Left = 0
  Top = 0
  Width = 299
  Height = 198
  TabOrder = 0
  TabStop = True
  DesignSize = (
    299
    198)
  object grpInterval: TGroupBox
    Left = 4
    Top = 4
    Width = 290
    Height = 85
    Anchors = [akLeft, akTop, akRight]
    Caption = 'How often should PopTrayU check for new mail?'
    TabOrder = 0
    object lblMinutes: TLabel
      Left = 204
      Top = 22
      Width = 39
      Height = 13
      Caption = 'minutes.'
    end
    object radioCheckEvery: TRadioButton
      Left = 8
      Top = 20
      Width = 149
      Height = 17
      Caption = 'C&heck for new mail every'
      TabOrder = 0
      OnClick = OptionsChange
    end
    object radioNever: TRadioButton
      Left = 8
      Top = 40
      Width = 253
      Height = 17
      Caption = 'Don'#39't automatically check for new messages'
      TabOrder = 1
      OnClick = radioNeverClick
    end
    object radioTimerAccount: TRadioButton
      Left = 8
      Top = 60
      Width = 265
      Height = 17
      Hint = 'Specify a different timer interval for each account.'
      Caption = 'Set &Interval per account'
      TabOrder = 2
      OnClick = OptionsChange
      OnMouseDown = HelpMouseDown
    end
    object edTime: TEdit
      Left = 152
      Top = 18
      Width = 29
      Height = 21
      Hint = 
        'Delay in minutes to wait between mail check intervals.'#13#10'Set it t' +
        'o 0 to never automatically check.'
      TabOrder = 3
      Text = '0'
      OnChange = OptionsChange
      OnMouseDown = HelpMouseDown
    end
    object UpDown: TUpDown
      Left = 181
      Top = 18
      Width = 17
      Height = 21
      Max = 999
      TabOrder = 4
      OnClick = UpDownClick
      OnMouseDown = HelpMouseDown
    end
  end
  object grpExcept: TGroupBox
    Left = 4
    Top = 100
    Width = 290
    Height = 85
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Interval Check Conditions'
    TabOrder = 1
    object lblAnd: TLabel
      Left = 195
      Top = 62
      Width = 18
      Height = 13
      Alignment = taCenter
      Caption = 'and'
    end
    object dtEnd: TDateTimePicker
      Left = 220
      Top = 58
      Width = 57
      Height = 21
      Date = 37759.333333333340000000
      Format = 'HH:mm'
      Time = 37759.333333333340000000
      Enabled = False
      Kind = dtkTime
      TabOrder = 0
      OnChange = OptionsChange
    end
    object chkDontCheckTimes: TCheckBox
      Left = 8
      Top = 60
      Width = 153
      Height = 17
      Hint = 
        'Disable AutoChecking between the hours specified.'#13#10'This is usefu' +
        'l when you do not want noisy notifications'#13#10'during the night.'
      Caption = '&Don'#39't Check between'
      TabOrder = 1
      OnClick = chkDontCheckTimesClick
      OnMouseDown = HelpMouseDown
    end
    object dtStart: TDateTimePicker
      Left = 136
      Top = 58
      Width = 57
      Height = 21
      Date = 37759.833333333340000000
      Format = 'HH:mm'
      Time = 37759.833333333340000000
      Enabled = False
      Kind = dtkTime
      TabOrder = 2
      OnChange = OptionsChange
    end
    object chkOnline: TCheckBox
      Left = 8
      Top = 20
      Width = 269
      Height = 17
      Hint = 
        'Used by dial-up users who don'#39't want the dial-up dialog'#13#10'to pop-' +
        'up when you are not connected.'#13#10'Makes checking a little bit slow' +
        'er.'
      Caption = 'Only check when already online'
      TabOrder = 3
      OnClick = OptionsChange
      OnMouseDown = HelpMouseDown
    end
    object chkCheckWhileMinimized: TCheckBox
      Left = 8
      Top = 40
      Width = 181
      Height = 17
      Hint = 
        'Do not run the AutoCheck timer event while viewing the PopTray W' +
        'indow.'#13#10'This is useful to prevent an AutoCheck from happening'#13#10'w' +
        'hile you are manually checking for mail.'
      Caption = '&AutoCheck only while Minimized'
      TabOrder = 4
      OnClick = OptionsChange
      OnMouseDown = HelpMouseDown
    end
  end
end
