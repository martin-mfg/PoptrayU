object frameVisualAppearance: TframeVisualAppearance
  Left = 0
  Top = 0
  Width = 311
  Height = 209
  TabOrder = 0
  DesignSize = (
    311
    209)
  object Label1: TLabel
    Left = 92
    Top = 16
    Width = 125
    Height = 13
    Caption = 'Main Window Listbox Font'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object lblListboxFontSample: TLabel
    Left = 8
    Top = 36
    Width = 292
    Height = 25
    Anchors = [akLeft, akTop, akRight]
    AutoSize = False
    Caption = 'Listbox Font'
    Color = clWindow
    ParentColor = False
  end
  object btnFontChange: TSpeedButton
    Left = 9
    Top = 136
    Width = 292
    Height = 29
    Hint = 'Change the Main Window Listbox Font'
    Caption = 'Font'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = btnFontChangeClick
  end
  object listboxBgBtn: TSpeedButton
    Left = 157
    Top = 108
    Width = 144
    Height = 25
    Hint = 'Change the main window listbox background'
    Caption = 'Custom Background Color'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = listboxBgBtnClick
  end
  object Label2: TLabel
    Left = 8
    Top = 68
    Width = 54
    Height = 13
    Caption = 'Foreground'
  end
  object Label3: TLabel
    Left = 156
    Top = 68
    Width = 58
    Height = 13
    Caption = 'Background'
  end
  object listboxFgBtn: TSpeedButton
    Left = 9
    Top = 108
    Width = 144
    Height = 25
    Hint = 'Change the main window listbox background'
    Caption = 'Custom Font Color'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = listboxFgBtnClick
  end
  object resetListboxBtn: TSpeedButton
    Left = 9
    Top = 168
    Width = 292
    Height = 29
    Hint = 'Change the Main Window Listbox Font'
    Caption = 'Clear Customizations'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = resetListboxBtnClick
  end
  object listboxBgColorBox: TColorBox
    Left = 156
    Top = 84
    Width = 145
    Height = 22
    ItemHeight = 16
    TabOrder = 0
    OnChange = listboxBgColorBoxChange
  end
  object listboxFgColorBox: TColorBox
    Left = 8
    Top = 84
    Width = 145
    Height = 22
    ItemHeight = 16
    TabOrder = 1
    OnChange = listboxFgColorBoxChange
  end
end
