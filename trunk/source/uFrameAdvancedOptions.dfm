object frameAdvancedOptions: TframeAdvancedOptions
  Left = 0
  Top = 0
  Width = 338
  Height = 232
  TabOrder = 0
  OnResize = FrameResize
  DesignSize = (
    338
    232)
  object lblTimeOut: TLabel
    Left = 28
    Top = 6
    Width = 100
    Height = 13
    Caption = 'Connection TimeOut:'
  end
  object lblSeconds: TLabel
    Left = 176
    Top = 6
    Width = 40
    Height = 13
    Caption = 'seconds'
  end
  object lblGetBodyLines: TLabel
    Left = 204
    Top = 178
    Width = 21
    Height = 13
    Caption = 'lines'
  end
  object lblGetBodySize: TLabel
    Left = 224
    Top = 154
    Width = 14
    Height = 13
    Caption = 'KB'
  end
  object chkIgnoreRetrieveErrors: TCheckBox
    Left = 8
    Top = 63
    Width = 141
    Height = 17
    Hint = 'Ignore errors that occurs while retrieving the header info.'
    Caption = 'Ignore Retrie&ve Errors'
    TabOrder = 3
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object edTimeOut: TEdit
    Left = 132
    Top = 2
    Width = 41
    Height = 21
    Hint = 
      'Number of seconds to wait during connection'#13#10'before giving an er' +
      'ror.'
    TabOrder = 0
    OnChange = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object chkQuickCheck: TCheckBox
    Left = 8
    Top = 28
    Width = 161
    Height = 17
    Hint = 
      'Use the POP3 UIDL command to quickly check if the mail on the se' +
      'rver has changed.'
    Caption = 'Enable &Quick Checking'
    Checked = True
    State = cbChecked
    TabOrder = 1
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object chkRetrieveTop: TCheckBox
    Left = 8
    Top = 116
    Width = 109
    Height = 17
    Hint = 
      'When previewing a message, only load the'#13#10'specified number of li' +
      'nes.'
    Caption = '&Preview Top Lines'
    TabOrder = 4
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object edTopLines: TEdit
    Left = 120
    Top = 113
    Width = 33
    Height = 21
    Hint = 'Number of message lines to preview.'
    TabOrder = 5
    OnChange = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object chkNoError: TCheckBox
    Left = 8
    Top = 45
    Width = 153
    Height = 17
    Hint = 
      'When a connect error occurs, PopTray will display an error messa' +
      'ge.'#13#10'If this option is enabled, the error message will only be d' +
      'isplayed in the status bar and Tray Hint.'
    Caption = 'Ignore Connection &Errors'
    TabOrder = 2
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object chkGetBody: TCheckBox
    Left = 8
    Top = 134
    Width = 169
    Height = 17
    Hint = 
      'While checking for new mail, also retrieve the message body.'#13#10'Th' +
      'is will slow down checking, but if gives you the option to check' +
      #13#10'the body contents in the rules.'
    Caption = 'Retrieve &Body while Checking'
    TabOrder = 6
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object edGetBodyLines: TEdit
    Left = 168
    Top = 174
    Width = 33
    Height = 21
    Hint = 'Maximum number of lines to download.'
    TabOrder = 10
    OnChange = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object chkGetBodySize: TCheckBox
    Left = 24
    Top = 152
    Width = 165
    Height = 17
    Hint = 
      'Retrieve complete message while checking,'#13#10'if message smaller th' +
      'an specified size.'
    Caption = 'Only download if size less than'
    TabOrder = 7
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object edGetBodySize: TEdit
    Left = 188
    Top = 150
    Width = 33
    Height = 21
    Hint = 
      'Retrieve complete message while checking,'#13#10'if message smaller th' +
      'an specified size.'
    TabOrder = 8
    OnChange = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object chkGetBodyLines: TCheckBox
    Left = 24
    Top = 176
    Width = 141
    Height = 17
    Hint = 'Maximum number of lines to download.'
    Caption = 'Limit download to the first'
    TabOrder = 9
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object chkShowErrorsInBalloons: TCheckBox
    Left = 8
    Top = 83
    Width = 325
    Height = 17
    Hint = 'Changes how errors are shown when the main window is visible.'
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Show Errors in Balloon Popups (Instead of Modal Dialogs)'
    TabOrder = 11
    OnClick = OptionsChange
    OnMouseDown = HelpMouseDown
  end
end