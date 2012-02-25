object framePlugins: TframePlugins
  Left = 0
  Top = 0
  Width = 316
  Height = 236
  TabOrder = 0
  DesignSize = (
    316
    236)
  object lvPlugins: TListView
    Left = 7
    Top = 7
    Width = 301
    Height = 221
    Hint = 
      'This lists all the plugin DLLs found in your plugins directory.'#13 +
      #10'Select to load/unload. Right-click for options.'
    Anchors = [akLeft, akTop, akRight, akBottom]
    Checkboxes = True
    Columns = <
      item
        Caption = 'Name'
      end>
    IconOptions.AutoArrange = True
    IconOptions.WrapText = False
    ReadOnly = True
    PopupMenu = mnuPlugins
    ShowColumnHeaders = False
    SmallImages = imlPlugins
    TabOrder = 0
    ViewStyle = vsReport
    OnChange = lvPluginsChange
    OnDblClick = lvPluginsDblClick
    OnMouseDown = HelpMouseDown
    OnResize = lvPluginsResize
  end
  object imlPlugins: TImageList
    Left = 116
    Top = 144
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00E2E4E00094939100E7E9E50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F4F6F600EDECEC00DBE2E800A4C8
      E0009AC2C700ABCDDE00EEECEE00F7F7F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E8E2EC0082898600302B3A0065686100E7E7E600000000000000
      000000000000000000000000000000000000000000000000000000000000EEEF
      EE00A8A9AA00AAABAC00A6A6AA00A7ABA600B3B4B600B9B7B7008DACBA00148F
      C6002196D3003A7E9600B1AAB000CBC9CB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D7D4D60080857A0052445B0029212100CBC9C900000000000000
      000000000000000000000000000000000000000000000000000000000000DBDB
      DD007D7C8200BFBEBC00B8B6B700BDBABF00AAA9A600B6B3B20090B1B70050CE
      E40073E9FA003476AB00A19B9500BCBEBF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DDDAD800727C7B00423D540018353000C9C8C600000000000000
      000000000000000000000000000000000000000000000000000000000000D9DA
      D90084858200F5F3F400FDFDFD00FEFDFE00FBFBFB00FBFBFB00C9E7F50053B2
      D40045A7C1007FCDEE00FAFAF900FBFCFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B6D0E000135B8B00175687000367A400C4D4E200000000000000
      000000000000000000000000000000000000EDEAE600E4E4E300E3E5E100DADD
      D000C6BAC000E3E3DD00ECE9E200F6F0F300FBFBFC0000000000FDFDFB00DAD2
      CF00ACA29D00F3E8E70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ABD6FB002394DD0020B1EE0016AFF300C1E1FC00000000000000
      000000000000000000000000000000000000C3B2B200BDB6AF00B9B5B000BAAF
      AB00B1ADAE00ACABA800A6A29C00BFBCB600EFEFED00FCFCFD00EFEFF000D0C4
      C800A2A09E00FAF7FA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFBFC0072C9F20024B7F70031BDDD0029BAE00097CEEB00000000000000
      000000000000000000000000000000000000BAB5AD00BDBCB200B9B4A900B6B0
      A600B2A9A600B4A9A700A59F9D00B7B3B000ECECE800EEEEEE00C0BDBF00A09E
      89009C959500AAA88B00D7CBD000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B4DAEA008DE9F4006ACAEB0066BBC00071E5FA0075DAF000CBE4EE000000
      000000000000000000000000000000000000D0CECD009C8A8300917672008F70
      730093756F0094736D0092878200CAC6C200E9E5E2009D9D9C00A7A6A200B3AF
      AD00B8B3AA00B5B6B800CECECB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D2E6
      F3007FC6E700B8FAFD00A0EEFA00B1F5FC0097EEFA008BF7FC0084C4E300E7EF
      F60000000000000000000000000000000000FCEEEF00E99C9D00E37F7900E481
      7A00E37B7700DC635E00B97C7A00D7D9DC00D8D6D300ABA9A500BBACAB00C4C5
      C200C9C5C400C7C3C300D5CBCC00FEFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B3D4
      EE00B1EAF700BDF8FD00AAE9EF00BAF1F800A2E8F7008FF8FE0082D9EF00C3E1
      F40000000000000000000000000000000000FFEEF000F49DA000E8838300E884
      8500E9858600DF7D7500B7888300DADADD00DCD2D400C2C1B800BFB6AA00D6D4
      CD00D8D8D800DACDC400D2CECA00FEFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008BCC
      E700D1FAFE00CFFCFC00B0E1F50078D3F3009DE7F6009FF5FD0071ECFA00A7E0
      E90000000000000000000000000000000000FAF3F300DFBCBA00DBABA800E09B
      9600E8818100DC828100BF969700CFD0D100C2BFBA00DAD4C100B6AEB000E3DD
      DA00E2DCE200D5D6D700CBC7C800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000096D0
      E800D2FDFD00DAFFFF00C8FAFD009AE8F700AFF3FB00A0F4FC007BEBFB00A5DD
      E60000000000000000000000000000000000F8F8F900C6C9CC00ABA7AD00AC91
      A200B5919900A295A000CDCCCD00ECEDED00C1B7B900E2D6DA00C3B6B100E2E1
      DC00DFDADF00DAD7D600D4CBCA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009EC5
      EA00CDF4FB00D9FFFF00D3FFFF00D1FCFE00B4F2FA00A0F5FD0078E7F600ABD2
      EB000000000000000000000000000000000000000000F8FAFA00EEF1F200ECED
      F300ECECEF00ECEEF300FCFDFE0000000000C6BEBA00E6E2D400B2ABAB00E2D7
      D700E6D9D300D4D6D600C9C9C800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CCE7
      F20098CAE600C8F7FD00CDFEFD00CBFCFD00AEF5FC0095EBF80083C5E200E1ED
      F600000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BBBDBA00D4BFC200B5AEA500CBC8
      C400DBD3D900CFC5C700D0CDC800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFE
      FD00BEE1EE00A3D3EF00A9E4F4009EECF9008EE7FB0090C5E800D4EAF2000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CAC4BD00A9A19700AC9E9C00AEA8
      A100B4ACA000D3CEC900E1E2E200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFF00E3EDF500C1DDEC00A1D2E800A6D1EA00D8E8F400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2F0EF00EAE7E500EBE6E700EDEB
      E900EEECE900FEFDFE00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00F87FFF0000000000F83FE00000000000
      F83FE00000000000F83FE00000000000F83F004300000000F83F000300000000
      F03F000100000000F01F000100000000E00F000000000000E00F000000000000
      E00F000100000000E00F000100000000E00F810100000000E00FFF0100000000
      E01FFF0100000000F03FFF010000000000000000000000000000000000000000
      000000000000}
  end
  object mnuPlugins: TPopupActionBarEx
    Left = 60
    Top = 84
    object Refresh1: TMenuItem
      Caption = '&Refresh'
      ShortCut = 116
      OnClick = Refresh1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object PluginOptions1: TMenuItem
      Caption = 'Plug-in &Options...'
      OnClick = PluginOptions1Click
    end
  end
end