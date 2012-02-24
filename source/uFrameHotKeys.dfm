object frameHotKeys: TframeHotKeys
  Left = 0
  Top = 0
  Width = 308
  Height = 126
  TabOrder = 0
  object Label25: TLabel
    Left = 60
    Top = 4
    Width = 33
    Height = 13
    Alignment = taCenter
    Caption = 'Action:'
  end
  object Label26: TLabel
    Left = 218
    Top = 4
    Width = 41
    Height = 13
    Alignment = taCenter
    Caption = 'Hot-Key:'
  end
  object cmbAction1: TComboBox
    Left = 4
    Top = 20
    Width = 177
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 0
    OnChange = OptionsChange
  end
  object cmbAction2: TComboBox
    Left = 4
    Top = 44
    Width = 177
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 2
    OnChange = OptionsChange
  end
  object cmbAction3: TComboBox
    Left = 4
    Top = 68
    Width = 177
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 4
    OnChange = OptionsChange
  end
  object cmbAction4: TComboBox
    Left = 4
    Top = 92
    Width = 177
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 6
    OnChange = OptionsChange
  end
  object hkHotKey1: THotKey
    Left = 188
    Top = 21
    Width = 105
    Height = 19
    Hint = 'System-wide hot-key to execute selected action.'
    HotKey = 0
    Modifiers = []
    TabOrder = 1
    OnChange = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object hkHotKey2: THotKey
    Left = 188
    Top = 45
    Width = 105
    Height = 19
    Hint = 'System-wide hot-key to execute selected action.'
    HotKey = 0
    Modifiers = []
    TabOrder = 3
    OnChange = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object hkHotKey3: THotKey
    Left = 188
    Top = 69
    Width = 105
    Height = 19
    Hint = 'System-wide hot-key to execute selected action.'
    HotKey = 0
    Modifiers = []
    TabOrder = 5
    OnChange = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object hkHotKey4: THotKey
    Left = 188
    Top = 92
    Width = 105
    Height = 19
    Hint = 'System-wide hot-key to execute selected action.'
    HotKey = 0
    Modifiers = []
    TabOrder = 7
    OnChange = OptionsChange
    OnMouseDown = HelpMouseDown
  end
end
