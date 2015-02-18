object FramePreviewOptions: TFramePreviewOptions
  Left = 0
  Top = 0
  Width = 404
  Height = 330
  TabOrder = 0
  object CategoryPanelGroup1: TCategoryPanelGroup
    Left = 0
    Top = 0
    Width = 404
    Height = 330
    VertScrollBar.Tracking = True
    Align = alClient
    ChevronColor = clCaptionText
    ChevronHotColor = clHighlight
    Color = clWindow
    GradientBaseColor = clBtnFace
    GradientColor = clWindow
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    TabOrder = 0
    ExplicitHeight = 375
    object catPlainText: TCategoryPanel
      Top = 184
      Height = 63
      Caption = 'Plain Text Preview'
      Color = clWindow
      TabOrder = 0
      Visible = False
      ExplicitTop = 205
      ExplicitWidth = 385
    end
    object catHtmlTab: TCategoryPanel
      Top = 96
      Height = 88
      Caption = 'HTML Preview'
      Color = clWindow
      TabOrder = 1
      object chkDisableHtmlPreview: TCheckBox
        Left = 8
        Top = 4
        Width = 389
        Height = 17
        Hint = 'Disables the HTML Preview tab when previewing a message.'
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Disable HTML Preview'
        TabOrder = 0
        OnClick = OptionsChange
        OnMouseDown = HelpMouseDown
      end
      object chkShowImages: TCheckBox
        Left = 8
        Top = 27
        Width = 389
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Show Images'
        TabOrder = 1
        OnClick = OptionsChange
      end
    end
    object catTabs: TCategoryPanel
      Top = 0
      Height = 96
      Caption = 'Tabs'
      Color = clWindow
      TabOrder = 2
      ExplicitWidth = 385
      object lblDefaultTab: TLabel
        Left = 8
        Top = 8
        Width = 60
        Height = 13
        Caption = 'Default Tab:'
      end
      object lblSpamTab: TLabel
        Left = 8
        Top = 35
        Width = 156
        Height = 13
        Caption = 'Default Tab for Spam Messages:'
      end
      object cmbDefaultTab: TComboBox
        Left = 74
        Top = 5
        Width = 90
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 0
        Text = 'Last Used'
        OnClick = OptionsChange
        Items.Strings = (
          'Last Used'
          'HTML'
          'Plain Text'
          'Raw')
      end
      object cmbSpamTab: TComboBox
        Left = 170
        Top = 32
        Width = 83
        Height = 21
        Style = csDropDownList
        ItemIndex = 2
        TabOrder = 1
        Text = 'Plain Text'
        OnClick = OptionsChange
        Items.Strings = (
          'Last Used'
          'HTML'
          'Plain Text'
          'Raw')
      end
    end
  end
end
