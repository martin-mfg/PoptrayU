object frameInterval: TframeInterval
  Left = 0
  Top = 0
  Width = 312
  Height = 100
  TabOrder = 0
  TabStop = True
  DesignSize = (
    312
    100)
  object chkTimerAccount: TCheckBox
    Left = 12
    Top = 8
    Width = 293
    Height = 17
    Hint = 
      'Specify a different timer interval for each account.'#13#10'Set the in' +
      'tervals on the Accounts tab.'
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Timer &Interval per Account'
    TabOrder = 0
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object panInterval: TPanel
    Left = 0
    Top = 32
    Width = 306
    Height = 53
    Anchors = [akLeft, akTop, akRight]
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 1
    object btnNever: TSpeedButton
      Left = 138
      Top = 24
      Width = 65
      Height = 22
      Caption = 'Ne&ver'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = btnNeverClick
      OnMouseDown = HelpMouseDown
    end
    object lblMinutes: TLabel
      Left = 196
      Top = 4
      Width = 41
      Height = 13
      Caption = 'minutes.'
    end
    object lblCheckEvery: TLabel
      Left = 20
      Top = 4
      Width = 124
      Height = 13
      Caption = 'C&heck for new mail every '
      FocusControl = edTime
    end
    object edTime: TEdit
      Left = 144
      Top = 0
      Width = 29
      Height = 21
      Hint = 
        'Delay in minutes to wait between mail check intervals.'#13#10'Set it t' +
        'o 0 to never automatically check.'
      TabOrder = 0
      Text = '0'
      OnChange = OptionsChange
      OnMouseDown = HelpMouseDown
    end
    object UpDown: TUpDown
      Left = 173
      Top = 0
      Width = 17
      Height = 21
      Max = 999
      TabOrder = 1
      OnClick = UpDownClick
      OnMouseDown = HelpMouseDown
    end
  end
end
