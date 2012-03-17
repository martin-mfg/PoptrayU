object frameDefaults: TframeDefaults
  Left = 0
  Top = 0
  Width = 338
  Height = 211
  ParentBackground = False
  TabOrder = 0
  OnResize = FrameResize
  DesignSize = (
    338
    211)
  object Label9: TLabel
    Left = 4
    Top = 4
    Width = 74
    Height = 13
    Caption = '&E-Mail Program:'
    Color = clBtnFace
    FocusControl = edProgram
    ParentColor = False
    Transparent = False
  end
  object btnEdProgram: TSpeedButton
    Left = 236
    Top = 20
    Width = 19
    Height = 21
    Anchors = [akTop, akRight]
    Glyph.Data = {
      96000000424D960000000000000076000000280000000A000000040000000100
      040000000000200000000000000000000000100000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000111111111100
      0000001100110000000000110011000000001111111111000000}
    OnClick = btnEdProgramClick
    OnMouseDown = HelpMouseDown
  end
  object btnTest: TSpeedButton
    Left = 265
    Top = 20
    Width = 65
    Height = 21
    Hint = 'Test to run the e-mail program'
    Anchors = [akTop, akRight]
    Caption = 'Test'
    ParentShowHint = False
    ShowHint = True
    OnClick = btnTestClick
    OnMouseDown = HelpMouseDown
  end
  object Label8: TLabel
    Left = 4
    Top = 52
    Width = 69
    Height = 13
    Caption = 'Def&ault sound:'
    FocusControl = edDefSound
  end
  object btnEdDefSound: TSpeedButton
    Left = 236
    Top = 68
    Width = 19
    Height = 21
    Anchors = [akTop, akRight]
    Glyph.Data = {
      96000000424D960000000000000076000000280000000A000000040000000100
      040000000000200000000000000000000000100000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000111111111100
      0000001100110000000000110011000000001111111111000000}
    OnClick = btnEdDefSoundClick
    OnMouseDown = HelpMouseDown
  end
  object btnSndTest: TSpeedButton
    Left = 265
    Top = 68
    Width = 65
    Height = 21
    Hint = 'Test the sound file'
    Anchors = [akTop, akRight]
    Caption = 'Test'
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      7777777800087777777777800000877777777780000007777777777800080777
      7777777777770770777777777777077707777777777707770777777777770777
      0777777777770777077777777777077087777777777700007777777777770007
      7777777777770077777777777777087777777777777707777777}
    ParentShowHint = False
    ShowHint = True
    OnClick = btnSndTestClick
    OnMouseDown = HelpMouseDown
  end
  object Label24: TLabel
    Left = 4
    Top = 104
    Width = 51
    Height = 13
    Caption = 'Language:'
  end
  object btnLanguageRefresh: TSpeedButton
    Left = 232
    Top = 120
    Width = 100
    Height = 21
    Hint = 'Refresh the list of languages'
    Anchors = [akTop, akRight]
    Caption = 'Refresh'
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000CE0E0000C40E00001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      7777777777777777777777777744447777777777444444447777777444777744
      4777777447777774477777447777777744777744777777774477774477777777
      4477774477777777447777744777747447777774477774444777777777777444
      7777777777777444477777777777777777777777777777777777}
    ParentShowHint = False
    ShowHint = True
    OnClick = btnLanguageRefreshClick
    OnMouseDown = HelpMouseDown
  end
  object Label1: TLabel
    Left = 4
    Top = 160
    Width = 299
    Height = 13
    Caption = 'User Data Folder: (where PopTray.ini and Rules files are stored)'
  end
  object btnStorageLoc: TSpeedButton
    Left = 312
    Top = 176
    Width = 19
    Height = 21
    Anchors = [akTop, akRight]
    Enabled = False
    Glyph.Data = {
      96000000424D960000000000000076000000280000000A000000040000000100
      040000000000200000000000000000000000100000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000111111111100
      0000001100110000000000110011000000001111111111000000}
    OnClick = btnStorageLocClick
    OnMouseDown = HelpMouseDown
  end
  object edProgram: TEdit
    Left = 4
    Top = 20
    Width = 221
    Height = 21
    Hint = 'Default e-mail program to open.'
    TabOrder = 0
    OnChange = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object edDefSound: TEdit
    Left = 4
    Top = 68
    Width = 221
    Height = 21
    Hint = 'Default sound to play when new mail arrives.'
    TabOrder = 1
    OnChange = OptionsChange
    OnMouseDown = HelpMouseDown
  end
  object cmbLanguage: TComboBox
    Left = 4
    Top = 120
    Width = 221
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 2
    OnChange = cmbLanguageChange
  end
  object edIniFolder: TEdit
    Left = 4
    Top = 176
    Width = 301
    Height = 21
    Hint = 
      'This setting can be changed via setup or a command line paramete' +
      'r.'
    ReadOnly = True
    TabOrder = 3
    OnChange = OptionsChange
    OnMouseDown = HelpMouseDown
  end
end
