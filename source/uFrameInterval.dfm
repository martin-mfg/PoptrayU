object frameInterval: TframeInterval
  Left = 0
  Top = 0
  Width = 305
  Height = 218
  TabOrder = 0
  TabStop = True
  DesignSize = (
    305
    218)
  object grpInterval: TGroupBox
    Left = 4
    Top = 4
    Width = 296
    Height = 93
    Anchors = [akLeft, akTop, akRight]
    Caption = 'How often should PopTrayU check for new mail?'
    TabOrder = 0
    object lblMinutes: TLabel
      Left = 204
      Top = 24
      Width = 39
      Height = 13
      Caption = 'minutes.'
    end
    object radioCheckEvery: TRadioButton
      Left = 8
      Top = 22
      Width = 149
      Height = 17
      Caption = 'C&heck for new mail every'
      TabOrder = 0
      OnClick = OptionsChange
    end
    object radioNever: TRadioButton
      Left = 8
      Top = 45
      Width = 341
      Height = 17
      Caption = 'Don'#39't automatically check for new messages'
      TabOrder = 1
      OnClick = radioNeverClick
    end
    object radioTimerAccount: TRadioButton
      Left = 8
      Top = 68
      Width = 345
      Height = 17
      Hint = 'Specify a different timer interval for each account.'
      Caption = 'Set &Interval per Account'
      TabOrder = 2
      OnClick = OptionsChange
      OnMouseDown = HelpMouseDown
    end
    object edTime: TEdit
      Left = 152
      Top = 20
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
      Top = 20
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
    Top = 108
    Width = 296
    Height = 85
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Except'
    TabOrder = 1
    object lblAnd: TLabel
      Left = 195
      Top = 60
      Width = 18
      Height = 13
      Alignment = taCenter
      Caption = 'and'
    end
    object dtEnd: TDateTimePicker
      Left = 220
      Top = 56
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
      Top = 58
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
      Top = 56
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
      Top = 16
      Width = 269
      Height = 17
      Hint = 
        #13#10'Used by dial-up users who don'#39't want the dial-up dialog '#13#10'to p' +
        'op-up when you are not connected.'#13#10'Makes checking a little bit s' +
        'lower.'
      Caption = 'Only Check When Already Online'
      TabOrder = 3
      OnClick = OptionsChange
      OnMouseDown = HelpMouseDown
    end
    object chkCheckWhileMinimized: TCheckBox
      Left = 8
      Top = 36
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
