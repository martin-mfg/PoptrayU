object frmPopUMain: TfrmPopUMain
  Left = 485
  Top = 316
  Width = 549
  Height = 412
  Caption = 'PopTrayU'
  Color = clBtnFace
  Constraints.MinHeight = 340
  Constraints.MinWidth = 418
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Scaled = False
  ScreenSnap = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnKeyUp = FormKeyUp
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl: TPageControl
    Left = 0
    Top = 0
    Width = 533
    Height = 376
    ActivePage = tsOptions
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    MultiLine = True
    ParentFont = False
    TabOrder = 0
    TabPosition = tpRight
    OnChange = PageControlChange
    OnChanging = PageControlChanging
    object tsMail: TTabSheet
      Caption = 'Mail'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      object tabMail: TTabControl
        Left = 3
        Top = 0
        Width = 498
        Height = 335
        Align = alClient
        Images = dm.imlTabs
        TabOrder = 0
        OnChange = tabMailChange
        OnChanging = tabMailChanging
        OnDragDrop = tabDragDrop
        OnDragOver = tabMailDragOver
        OnMouseDown = DragMouseDown
        DesignSize = (
          498
          335)
        object MailToolBar: TActionToolBar
          Left = 4
          Top = 6
          Width = 490
          Height = 29
          ActionManager = ActionManager
          Caption = 'Mail'
          ColorMap.HighlightColor = clWhite
          ColorMap.BtnSelectedColor = clBtnFace
          ColorMap.UnusedColor = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HorzMargin = 4
          HorzSeparator = False
          ParentBackground = True
          ParentFont = False
          ParentShowHint = False
          PopupMenu = dm.mnuToolbar
          ShowHint = True
          Spacing = 4
          VertMargin = 4
          OnGetControlClass = MailToolBarGetControlClass
        end
        object lvMail: TTntListView
          Left = 4
          Top = 35
          Width = 490
          Height = 277
          Align = alClient
          Columns = <
            item
              Caption = 'From'
              MinWidth = 50
              Width = 80
            end
            item
              Caption = 'To'
              MinWidth = 10
              Width = 20
            end
            item
              Caption = 'Subject'
              MinWidth = 10
              Width = 175
            end
            item
              Caption = 'Date'
              MinWidth = 10
              Width = 110
            end
            item
              Alignment = taRightJustify
              Caption = 'Size'
              MinWidth = 10
              Width = 55
            end>
          HideSelection = False
          MultiSelect = True
          ReadOnly = True
          RowSelect = True
          ParentShowHint = False
          ShowHint = True
          SmallImages = dm.imlListView
          TabOrder = 1
          ViewStyle = vsReport
          OnColumnClick = lvMailColumnClick
          OnColumnRightClick = lvMailColumnRightClick
          OnCompare = lvMailCompare
          OnCustomDrawItem = lvMailCustomDrawItem
          OnDblClick = lvMailDblClick
          OnInfoTip = lvMailInfoTip
          OnKeyDown = lvMailKeyDown
          OnMouseDown = lvMailMouseDown
          OnMouseMove = MouseMoveReset
          OnSelectItem = lvMailSelectItem
        end
        object StatusBar: TStatusBar
          Left = 4
          Top = 312
          Width = 490
          Height = 19
          AutoHint = True
          Panels = <
            item
              Width = 279
            end
            item
              Width = 44
            end
            item
              Width = 44
            end
            item
              Width = 44
            end
            item
              Alignment = taCenter
              Width = 50
            end>
          ParentFont = True
          ParentShowHint = False
          ShowHint = True
          SizeGrip = False
          UseSystemFont = False
          OnDrawPanel = StatusBarDrawPanel
          OnResize = StatusBarResize
        end
        object panProgress: TPanel
          Left = 289
          Top = 314
          Width = 205
          Height = 18
          Anchors = [akRight, akBottom]
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 3
          Visible = False
          DesignSize = (
            205
            18)
          object btnStop: TSpeedButton
            Left = 5
            Top = 1
            Width = 18
            Height = 17
            Cursor = crArrow
            Hint = 'Stop and disconnect.'
            Glyph.Data = {
              E6010000424DE60100000000000036000000280000000C0000000C0000000100
              180000000000B0010000130B0000130B00000000000000000000C0C0C0C0C0C0
              C0C0C07373BF7373BF7373BF7373BF7373BFA1A1BFC0C0C0C0C0C0C0C0C0C0C0
              C0B8B8BF5454C70000F20000F20000F20000F20000F21616DBA8A8BFC0C0C0C0
              C0C0C0C0C05454C70000F40000FF0000FF0000FF0000FF0000FF0000FF1E1ED6
              A9A9BFC0C0C04545C90000F70000FF0000FF0000FF0000FF0000FF0000FF0000
              FF0000FF1717DBA1A1BF0000D87A7AFFB7B7FF0000FF7A7AFF0000FFB7B7FF98
              98FF7A7AFF0000FF0000F27373BF0000D87A7AFFD6D6FF0000FF9898FF0000FF
              9898FF9898FF9898FF9898FF1E1EF27373BF0000D8ADADFF6666FF2828FFC1C1
              FF2828FFC1C1FFADADFF9898FFA3A3FF3232F27373BF0000D82828FF3232FF14
              14FF3232FF1414FF3232FF2828FF1E1EFF3232FF0A0AF27373BF4545C90000F7
              0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF1717DBA1A1BFC0C0
              C05454C70000F40000FF0000FF0000FF0000FF0000FF0000FF1E1ED6A9A9BFC0
              C0C0C0C0C0B8B8BF5454C70000F20000F20000F20000F20000F21717DBA9A9BF
              C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07373BF7373BF7373BF7373BF7373BFA1A1
              BFC0C0C0C0C0C0C0C0C0}
            ParentShowHint = False
            ShowHint = True
            OnClick = btnStopClick
          end
          object Progress: TProgressBar
            Left = 27
            Top = 1
            Width = 178
            Height = 17
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 0
          end
        end
      end
      object panMailButtons: TPanel
        Left = 0
        Top = 335
        Width = 506
        Height = 33
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        OnResize = panMailButtonsResize
        object btnStartProgram: TBitBtn
          Left = 16
          Top = 4
          Width = 161
          Height = 25
          Action = actStartProgram
          Caption = 'Run &E-Mail Client'
          TabOrder = 0
          Glyph.Data = {
            A6020000424DA6020000000000003600000028000000100000000D0000000100
            18000000000070020000230B0000230B00000000000000000000FFFFFF736B6B
            7B73737B73737B73737B73737B73737B73737B73737B73737B73737B73737B73
            737B73737B7373FFFFFFC6BDC6A59CA5D6D6D6F7F7F7EFE7EFE7E7E7E7DEE7DE
            D6DEDED6DED6CED6D6CED6D6C6D6CEC6CEB5ADB59C9C9C84737BD6CECEF7F7F7
            B5ADB5E7DEE7F7EFEFEFE7EFE7DEE7E7DEE7DED6DED6CED6D6CED6D6CED6C6BD
            C69C9C9CC6BDC68C7B84CECECEFEFEFEF7F7F7B5ADB5F7EFEFEFE7EFEFE7EFE7
            DEE7E7DEE7DED6DED6CED6CEC6CEA59CA5CEC6CECEC6CE8C7B84CECECEFEFEFE
            FEFEFEEFE7EFB5ADB5F7EFF7EFE7EFEFE7EFE7DEE7E7DEE7DED6DEA59CA5C6BD
            C6CEC6CED6C6D68C7B84D6CECEFEFEFEFEFEFEFEFEFEE7DEE7BDBDBDFFF7F7EF
            E7EFEFE7EFE7E7E7B5ADB5C6BDC6D6CED6D6C6D6D6C6D68C7B84D6CECEFEFEFE
            FEFEFEFEFEFEFEFEFEEFE7EFB5ADB5A59CA5A59CA5ADA5ADDED6DEDED6DED6CE
            D6D6C6D6D6C6D68C7B84D6CECEFEFEFEFEFEFEFEFEFEEFEFEFBDB5BDD6CED6EF
            E7EFE7E7E7CEC6CEADA5ADD6CED6DED6DED6CED6D6CED68C7B84D6CECEFEFEFE
            FEFEFEFEFEFEBDB5B5E7E7E7FEFEFEF7EFF7F7EFEFEFE7EFD6D6D6A59CA5D6CE
            D6D6CED6DED6DE8C7B84D6CECEFEFEFEF7EFF7BDB5BDFEFEFEFEFEFEFFF7FFFF
            F7F7F7EFF7EFE7EFEFE7EFE7DEE7A59CA5D6C6D6DED6DE8C7B84D6D6D6E7E7E7
            B5ADB5F7F7F7FEFEFEFEFEFEFEFEFEFFF7F7F7F7F7F7EFF7EFE7EFEFE7EFDED6
            DE949494C6BDC68C848CBDB5BDCECECEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFF
            F7FFFFF7F7F7EFF7F7EFEFEFE7EFE7DEE7E7E7E7BDB5B57B7373FFFFFFC6C6C6
            C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6
            C6C6C6C6CECECEFFFFFF}
        end
        object btnCheckAll: TBitBtn
          Left = 184
          Top = 4
          Width = 183
          Height = 25
          Action = actCheckAll
          Caption = 'Check &All'
          TabOrder = 1
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000130B0000130B00000000000000000000C6C3C6C6C3C6
            C6C3C6C6C3C6C6C3C6C6C3C6C6C3C664E16450CD50C6C3C6C6C3C6C6C3C6C6C3
            C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C61BC71B006B0000
            7100006B0000510000A900C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6
            C6C3C6C6C3C6009F000086000077001BC71B64E164C6C3C6C6C3C6C6C3C6C6C3
            C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C606B20600940000860032DE32C6
            C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6
            7BD77B008C0000A10000730099D799C6C3C6C6C3C6C6C3C6C6C3C6C6C3C628D4
            28C6C3C6C6C3C6C6C3C6C6C3C6C6C3C632DE3202AE0200A500007500C6C3C6C6
            C3C6C6C3C6C6C3C6C6C3C601AD01005D001BC71BC6C3C6C6C3C6005D00009F00
            009F000BB70B00AA00007500005D00005D00C6C3C6C6C3C625D125005D00008E
            00005D0038E438C6C3C6C6C3C6005D001ECA1E0DB90D02AE02009D00005D0017
            C317C6C3C61AC61A005D00008E00008E00008E00005D0067C367C6C3C6C6C3C6
            005D000CB80C05B1050095001BC71BC6C3C67BD77B005D00007E00008E00008E
            00008A00007E00005D00C6C3C6C6C3C671CD71005D0004B004009F00C6C3C6C6
            C3C6C6C3C6C6C3C62BD72B007E00008E00007500C6C3C6C6C3C6C6C3C6C6C3C6
            C6C3C664E164006D00C6C3C6C6C3C6C6C3C6C6C3C6C6C3C65AD75A007E00008E
            00007500C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6
            C3C6C6C3C6C6C3C61BC71B008A00008A0003AF03C6C3C6C6C3C6C6C3C6C6C3C6
            C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C635E135006D00008E00007D
            0071CD71C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C61BC71B00A90000
            9C00008A00009900008B000089007BD77BC6C3C6C6C3C6C6C3C6C6C3C6C6C3C6
            C6C3C6C6C3C6C6C3C6C6C3C653AF53009800009C0000A9001AC61AC6C3C6C6C3
            C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6
            C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6}
        end
        object btnToTray: TBitBtn
          Left = 374
          Top = 4
          Width = 95
          Height = 25
          Action = actToTray
          Caption = 'To &Tray'
          TabOrder = 2
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000230B0000230B00000000000000000000C6C3C6C6C3C6
            C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3
            C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6
            C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6
            C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6404040000000C6C3C6C6C3C6C6C3C6C6C3
            C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6505050B1
            B000404040000000C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6
            C6C3C6C6C3C6C6C3C6505050CCCD00B1B000B1B000404040000000C6C3C6C6C3
            C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6505050CCCD00CCCD00CC
            CD00B1B000B1B000404040000000C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6
            C6C3C6505050E6E800E6E800CCCD00CCCD00CCCD00B1B000B1B0004040400000
            00C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6636063E6E800E6E800E6E800E6E800CC
            CD00CCCD00CCCD00B1B000B1B000404040000000C6C3C6C6C3C6C6C3C6636063
            636063605D60605D60F2F300E6E800E6E800CCCD00CCCD005050505050505050
            50404040C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6605D60F2F300F2F300E6
            E800E6E800CCCD00636063000000C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6
            C6C3C6C6C3C6605D60FCFD00F2F300F2F300E6E800E6E800636063000000C6C3
            C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C67E777EFCFD00FCFD00F2
            F300F2F300E6E800605D60000000C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6
            C6C3C6C6C3C67E777EFCFD00FCFD00FCFD00F2F300F2F300605D60000000C6C3
            C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C67E777E7E777E7E777E7E
            777E7E777E7E777E7E777EC6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6
            C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3
            C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6
            C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6}
        end
      end
      object panMailLeftSpacer: TPanel
        Left = 0
        Top = 0
        Width = 3
        Height = 335
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
      end
      object panMailRightSpacer: TPanel
        Left = 501
        Top = 0
        Width = 5
        Height = 335
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 3
      end
    end
    object tsAccounts: TTabSheet
      Caption = 'Accounts'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 4
      ParentFont = False
      object panAccounts: TPanel
        Left = 0
        Top = 0
        Width = 506
        Height = 368
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 0
        object tabAccounts: TTabControl
          Left = 4
          Top = 35
          Width = 498
          Height = 300
          Align = alClient
          Images = dm.imlTabs
          MultiLine = True
          TabOrder = 0
          OnChange = tabAccountsChange
          OnChanging = tabAccountsChanging
          OnDragDrop = tabDragDrop
          OnDragOver = tabMailDragOver
          OnMouseDown = DragMouseDown
          object ScrollBox2: TScrollBox
            Left = 4
            Top = 6
            Width = 490
            Height = 290
            Align = alClient
            BevelEdges = []
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            ParentBackground = True
            TabOrder = 0
            object panServer: TPanel
              Left = 0
              Top = 0
              Width = 377
              Height = 257
              BevelOuter = bvNone
              TabOrder = 0
              object Label1: TLabel
                Left = 71
                Top = 60
                Width = 34
                Height = 13
                Alignment = taRightJustify
                Caption = '&Server:'
                FocusControl = edServer
              end
              object Label2: TLabel
                Left = 76
                Top = 108
                Width = 29
                Height = 13
                Alignment = taRightJustify
                Caption = '&Login:'
                FocusControl = edLogin
              end
              object Label3: TLabel
                Left = 56
                Top = 132
                Width = 49
                Height = 13
                Alignment = taRightJustify
                Caption = 'Pass&word:'
                FocusControl = edPassword
              end
              object Label4: TLabel
                Left = 74
                Top = 36
                Width = 31
                Height = 13
                Alignment = taRightJustify
                Caption = '&Name:'
                FocusControl = edName
              end
              object Label5: TLabel
                Left = 71
                Top = 205
                Width = 34
                Height = 13
                Alignment = taRightJustify
                Caption = 'So&und:'
                FocusControl = edSound
              end
              object Label14: TLabel
                Left = 78
                Top = 156
                Width = 27
                Height = 13
                Alignment = taRightJustify
                Caption = '&Color:'
                FocusControl = colAccount
              end
              object btnEdSound: TSpeedButton
                Left = 274
                Top = 200
                Width = 21
                Height = 23
                Glyph.Data = {
                  96000000424D960000000000000076000000280000000A000000040000000100
                  040000000000200000000000000000000000100000000000000000000000FFFF
                  FF00000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000111111111100
                  0000001100110000000000110011000000001111111111000000}
                OnClick = btnEdSoundClick
              end
              object btnAccountSoundTest: TSpeedButton
                Left = 299
                Top = 200
                Width = 65
                Height = 23
                Hint = 'Test the sound file'
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
                OnClick = btnAccountSoundTestClick
              end
              object Label19: TLabel
                Left = 31
                Top = 181
                Width = 74
                Height = 13
                Alignment = taRightJustify
                Caption = '&E-Mail Program:'
                FocusControl = edAccountProgram
              end
              object btnEdAccountProgram: TSpeedButton
                Left = 274
                Top = 176
                Width = 21
                Height = 23
                Glyph.Data = {
                  96000000424D960000000000000076000000280000000A000000040000000100
                  040000000000200000000000000000000000100000000000000000000000FFFF
                  FF00000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000111111111100
                  0000001100110000000000110011000000001111111111000000}
                OnClick = btnEdAccountProgramClick
              end
              object btnAccountProgramTest: TSpeedButton
                Left = 299
                Top = 176
                Width = 65
                Height = 23
                Hint = 'Test to run the e-mail program'
                Caption = 'Test'
                ParentShowHint = False
                ShowHint = True
                OnClick = btnAccountProgramTestClick
              end
              object Label6: TLabel
                Left = 63
                Top = 84
                Width = 42
                Height = 13
                Alignment = taRightJustify
                Caption = '&Protocol:'
                FocusControl = cmbProtocol
              end
              object Label7: TLabel
                Left = 252
                Top = 84
                Width = 22
                Height = 13
                Alignment = taRightJustify
                Caption = 'P&ort:'
                FocusControl = edPort
              end
              object edLogin: TEdit
                Left = 108
                Top = 104
                Width = 165
                Height = 21
                Color = clBtnFace
                Enabled = False
                TabOrder = 4
                OnChange = edAccChange
              end
              object edPassword: TEdit
                Left = 108
                Top = 128
                Width = 109
                Height = 21
                Color = clBtnFace
                Enabled = False
                PasswordChar = '*'
                TabOrder = 5
                OnChange = edAccChange
              end
              object edName: TEdit
                Left = 108
                Top = 32
                Width = 109
                Height = 21
                Color = clBtnFace
                Enabled = False
                TabOrder = 0
                OnChange = edAccChange
              end
              object chkAccEnabled: TCheckBox
                Left = 68
                Top = 8
                Width = 125
                Height = 17
                Caption = 'Ena&bled'
                Enabled = False
                TabOrder = 9
                OnClick = edAccChange
              end
              object colAccount: TColorBox
                Left = 108
                Top = 152
                Width = 113
                Height = 22
                Style = [cbStandardColors, cbExtendedColors, cbPrettyNames]
                Color = clBtnFace
                Enabled = False
                ItemHeight = 16
                TabOrder = 6
                OnChange = edAccChange
              end
              object panIntervalAccount: TPanel
                Left = 4
                Top = 224
                Width = 389
                Height = 29
                BevelOuter = bvNone
                TabOrder = 10
                Visible = False
                object btnNeverAccount: TSpeedButton
                  Left = 296
                  Top = 3
                  Width = 65
                  Height = 22
                  Caption = 'Ne&ver'
                  OnClick = btnNeverAccountClick
                end
                object Label16: TLabel
                  Left = 228
                  Top = 8
                  Width = 39
                  Height = 13
                  Caption = 'minutes.'
                end
                object Label17: TLabel
                  Left = 56
                  Top = 8
                  Width = 122
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'Chec&k for new mail every '
                  FocusControl = edIntervalAccount
                end
                object edIntervalAccount: TEdit
                  Left = 180
                  Top = 4
                  Width = 29
                  Height = 21
                  TabOrder = 0
                  Text = '5'
                  OnChange = edAccChange
                end
                object UpDownAccount: TUpDown
                  Left = 209
                  Top = 4
                  Width = 15
                  Height = 21
                  Associate = edIntervalAccount
                  Max = 999
                  Position = 5
                  TabOrder = 1
                end
              end
              object edSound: TEdit
                Left = 108
                Top = 201
                Width = 165
                Height = 21
                Color = clBtnFace
                Enabled = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGrayText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 8
                Text = '[Use Default Sound]'
                OnChange = edAccChange
                OnEnter = edSoundEnter
                OnExit = edSoundExit
              end
              object edAccountProgram: TEdit
                Left = 108
                Top = 177
                Width = 165
                Height = 21
                Color = clBtnFace
                Enabled = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGrayText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 7
                Text = '[Use Default Program]'
                OnChange = edAccChange
                OnEnter = edAccountProgramEnter
                OnExit = edAccountProgramExit
              end
              object edServer: TEdit
                Left = 108
                Top = 56
                Width = 165
                Height = 21
                Color = clBtnFace
                Enabled = False
                TabOrder = 1
                OnChange = edAccChange
              end
              object cmbProtocol: TComboBox
                Left = 108
                Top = 80
                Width = 117
                Height = 21
                Style = csDropDownList
                Color = clBtnFace
                Enabled = False
                ItemHeight = 13
                ItemIndex = 0
                TabOrder = 2
                Text = 'POP3'
                OnChange = cmbProtocolChange
                Items.Strings = (
                  'POP3')
              end
              object edPort: TEdit
                Left = 280
                Top = 80
                Width = 37
                Height = 21
                Color = clBtnFace
                Enabled = False
                TabOrder = 3
                OnChange = edAccChange
              end
            end
          end
        end
        object panAccountsButtons: TPanel
          Left = 4
          Top = 335
          Width = 498
          Height = 29
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          DesignSize = (
            498
            29)
          object btnHelpAccounts: TBitBtn
            Left = 4
            Top = 4
            Width = 65
            Height = 25
            Caption = '&Help'
            TabOrder = 0
            OnClick = btnHelpAccountsClick
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000130B0000130B00000000000000000000FFFFFF9C6963
              9C69639C69639C69639C69639C69639C69639C69639C69639C69639C69639C69
              639C6963FFFFFFFFFFFFFFFFFFA57573F7E3D6FFE7D6FFE7CEFFE3C6FFA0FFFF
              85FFFFDBB5FFD7ADFFD7ADFFD3A5FFD3A5AD796BFFFFFFFFFFFFFFFFFFA57573
              F7E7D6FFEBD6FFE7D6FFA8FF7B007B870787FF85FFFFDBB5FFD7ADFFD7ADFFD3
              A5AD796BFFFFFFFFFFFFFFFFFFA57573F7EBDEFFEFDEFFEBD6FF9AFF90109090
              1090F070F0FFDFBDFFDBB5FFD7ADFFD7ADAD796BFFFFFFFFFFFFFFFFFFA57573
              F7EFE7FFF3E7FFEFDEFFEBD6FF85FFFF85FFFFE3C6FFE3C6FFDFBDFFDBB5FFD7
              ADAD796BFFFFFFFFFFFFFFFFFFA57573F7EFEFFFF3E7FFF3E7FFEFDE87078787
              0787FFE7CEFFE3C6FFE3C6FFDFBDFFDBB5AD796BFFFFFFFFFFFFFFFFFFA57573
              F7F3EFFFF7EFFFF3E7FFF3E78A0A8A931393FF83FFFFE7CEFFE3C6FFE3C6FFDF
              BDAD796BFFFFFFFFFFFFFFFFFFAD7D73FFF7F7FFFBF7FFF7EFFFF3E7AA2AAA9E
              1E9E890989FF9AFFFFE7CEFFE3C6FFE3C6AD796BFFFFFFFFFFFFFFFFFFAD827B
              FFFBF7FFFBF7FFFBF7FFF7EFFFC5FF890989A121A1961696FFE7D6FFE7CEFFE3
              C6AD796BFFFFFFFFFFFFFFFFFFB58A7BFFFBFFFFFFFFFFFBF7FFFBF7F7DFCEFF
              AEFF8D0D8D901090FF9EFFFFE7D6FFE7CEAD796BFFFFFFFFFFFFFFFFFFBD927B
              FFFFFFFFFFFFFFFFFFC545C5830383AC2CAC901090840484FFE3CEFFDFD6FFCF
              C6AD796BFFFFFFFFFFFFFFFFFFCE9A84FFFFFFFFFFFFFFD5FF8808888F0F8F8F
              0F8F8B0B8BCE4ECEFFE7D6F7BAB5F7A29CAD796BFFFFFFFFFFFFFFFFFFD6A284
              FFFFFFFFFFFFFFFFFFFFEBFFE565E5E060E0F979F9FFF7EFB57D73B57D73B57D
              73B57D73FFFFFFFFFFFFFFFFFFDEAA8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFBF7FFFBF7B57D73FFD394DEA27BCE9A84FFFFFFFFFFFFFFFFFFDEAE8C
              FFFFFFFFFFFFFFFBFFFFFBFFF7F7F7F7F3F7F7F3EFEFEFEFB57D73E7B694D6A2
              84FFFFFFFFFFFFFFFFFFFFFFFFE7B28CDEAA84DEAA84DEAA84DEAA84DEAA84DE
              AA84DEAA84DEAA84B57D73DEAA84FFFFFFFFFFFFFFFFFFFFFFFF}
          end
          object btnSave: TBitBtn
            Left = 307
            Top = 4
            Width = 113
            Height = 25
            Anchors = [akTop, akRight]
            Caption = 'Save Account'
            Default = True
            Enabled = False
            TabOrder = 1
            OnClick = btnSaveClick
            Glyph.Data = {
              36060000424D3606000000000000360000002800000020000000100000000100
              18000000000000060000230B0000230B0000000000000000000000FF0000FF00
              00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
              0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
              FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
              8080806363636363635050505050504040404040404040404040404040404040
              4040404050505063636300FF0000FF0000FF0000FF0000FF0000FF0000FF0000
              FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
              AA5000D36605C85E00B5B2B5B5B2B5B5B2B5B5B2B5B5B2B5B5B2B59B49009B49
              00D36605D3660550505000FF0000FF006F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F
              6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F55555500FF0000FF0000FF00FF973B
              ED801FED801FD36605AD9E9CFC8F2EDEB6B5FFFBFFF7F3F7E7E7E79B49009B49
              00ED801FD3660540404000FF0087878700FF0000FF006F6F6F9F9F9F00FF0000
              FF0000FF0000FF00E7E7E76F6F6F00FF006F6F6F00FF0000FF0000FF00FF973B
              ED801FED801FD36605CEB6B5DB6E0DFFA24FDEDBDEFFFBFFF7F3F79B49009B49
              00ED801FD3660540404000FF0087878700FF0000FF006F6F6FB8B8B800FF0000
              FF0000FF0000FF00E7E7E76F6F6F00FF006F6F6F00FF0000FF0000FF00FF973B
              ED801FED801FD36605E7C7C6C85E00F98C2BB5B2B5DEDBDEFFFBFF9B49009B49
              00ED801FD3660540404000FF0087878700FF0000FF006F6F6FCACACA00FF0000
              FF0000FF0000FF00E7E7E76F6F6F00FF006F6F6F00FF0000FF0000FF00FF973B
              ED801FED801FD36605DECBCECE9694CEB2B5ADAAADB5B2B5D6CFCE9B4900A14C
              00ED801FD3660540404000FF0087878700FF0000FF006F6F6FCECECE9C9C9CB6
              B6B6ABABABB3B3B3CFCFCF6F6F6F00FF006F6F6F00FF0000FF0000FF00FF973B
              ED801FED801FED801FED801FED801FED801FED801FED801FED801FED801FED80
              1FED801FD3660540404000FF0087878700FF0000FF0000FF0000FF0000FF0000
              FF0000FF0000FF0000FF0000FF0000FF006F6F6F00FF0000FF0000FF00FF973B
              ED801FED801FFFA24FFFA24FFFA24FFFA24FFFA24FFFA24FFFA24FFFA24FED80
              1FED801FD3660540404000FF0087878700FF0000FF0093939393939393939393
              939393939393939393939393939300FF006F6F6F00FF0000FF0000FF00FF973B
              ED801FFFA24FFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFA2
              4FED801FD3660550505000FF0087878700FF0093939300FF0000FF0000FF0000
              FF0000FF0000FF0000FF0000FF009393936F6F6F00FF0000FF0000FF00FF973B
              ED801FFFA24FFFFBFFC6C3C6C6C3C6C6C3C6C6C7C6C6C7C6C6C7C6FFFBFFFFA2
              4FED801FD3660550505000FF0087878700FF0093939300FF00C4C4C4C4C4C4C4
              C4C4C7C7C7C7C7C7C7C7C700FF009393936F6F6F00FF0000FF0000FF00FF973B
              ED801FFFA24FFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFA2
              4FED801FD3660563636300FF0087878700FF0093939300FF0000FF0000FF0000
              FF0000FF0000FF0000FF0000FF009393936F6F6F00FF0000FF0000FF00FF973B
              ED801FFFA24FFFFBFFBDBEBDC6C3C6C6C3C6C6C3C6C6C7C6C6C7C6FFFBFFFFA2
              4FED801FD3660563636300FF0087878700FF0093939300FF00BDBEBDC6C3C6C6
              C3C6C6C3C6C6C7C6C6C7C600FF009393936F6F6F00FF0000FF0000FF00FF973B
              ED801FFFA24FFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFA2
              4FED801FD3660580808000FF0087878700FF0093939300FF0000FF0000FF0000
              FF0000FF0000FF0000FF0000FF009393936F6F6F00FF0000FF0000FF00FF973B
              D36605FFA24F0000C00000C00000C00000C00000C00000C00000C00000C0FFA2
              4FD3660500FF0000FF0000FF008787876F6F6F9393936F6F6F6F6F6F6F6F6F6F
              6F6F6F6F6F6F6F6F6F6F6F6F6F6F93939355555500FF0000FF0000FF0000FF00
              00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
              0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
              FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00}
            NumGlyphs = 2
          end
          object btnCancelAccount: TBitBtn
            Left = 429
            Top = 4
            Width = 75
            Height = 25
            Anchors = [akTop, akRight]
            Cancel = True
            Caption = 'Cancel'
            Enabled = False
            TabOrder = 2
            OnClick = btnCancelAccountClick
            Glyph.Data = {
              36060000424D3606000000000000360000002800000020000000100000000100
              18000000000000060000230B0000230B00000000000000000000008284008284
              6E6E6E6E6E6E0082840082840082840082840082840082840082840082840082
              84008284008284008284008284008284008284FFFFFF00828400828400828400
              82840082840082840082840082840082840082840082840082840082843159FF
              0029DA0019B06E6E6E0082840082840082840082840082843159FF6E6E6E0082
              84008284008284008284008284008284848284848284FFFFFF00828400828400
              8284008284008284008284FFFFFF0082840082840082840082840082843159FF
              0030EF0029DA0019B06E6E6E0082840082840082843159FF0020CE0019B06E6E
              6E008284008284008284008284848284FFFFFF008284848284FFFFFF00828400
              8284008284FFFFFF848284848284FFFFFF0082840082840082840082846382FF
              0030EF0030EF0029DA0019B06E6E6E0082843159FF0020CE0020CE0020CE0019
              B06E6E6E008284008284008284848284FFFFFF008284008284848284FFFFFF00
              8284FFFFFF848284008284008284848284FFFFFF008284008284008284008284
              6382FF0030EF0030EF0029DA0019B06E6E6E0029DA0020CE0020CE0020CE0019
              B06E6E6E008284008284008284848284FFFFFF008284008284008284848284FF
              FFFF848284008284008284008284008284848284FFFFFF008284008284008284
              0082846382FF0030EF0030EF0029DA0029DA0029DA0029DA0020CE0020CE6E6E
              6E008284008284008284008284008284848284FFFFFF00828400828400828484
              8284008284008284008284008284FFFFFF848284008284008284008284008284
              0082840082846382FF0030EF0029DA0029DA0029DA0029DA0029DA6E6E6E0082
              84008284008284008284008284008284008284848284FFFFFF00828400828400
              8284008284008284008284FFFFFF848284008284008284008284008284008284
              0082840082840082840030EF0030EF0029DA0029DA0019B06E6E6E0082840082
              84008284008284008284008284008284008284008284848284FFFFFF00828400
              8284008284008284008284848284008284008284008284008284008284008284
              0082840082840082843159FF0030EF0030EF0029DA0019B06E6E6E0082840082
              84008284008284008284008284008284008284008284008284848284FFFFFF00
              8284008284008284848284008284008284008284008284008284008284008284
              0082840082843159FF0030EF0030EF0030EF0030EF0019B06E6E6E0082840082
              8400828400828400828400828400828400828400828400828484828400828400
              8284008284008284848284FFFFFF008284008284008284008284008284008284
              0082843159FF0030EF0030EF0030EF6E6E6E0030EF0029DA0019B06E6E6E0082
              8400828400828400828400828400828400828400828484828400828400828400
              8284008284008284848284FFFFFF008284008284008284008284008284008284
              6382FF0030EF0030EF0030EF6E6E6E0082843159FF0030EF0029DA0019B06E6E
              6E00828400828400828400828400828400828484828400828400828400828484
              8284FFFFFF008284008284848284FFFFFF008284008284008284008284008284
              6382FF0030EF0020CE6E6E6E0082840082840082846382FF0030EF0029DA0019
              B06E6E6E008284008284008284008284848284FFFFFF00828400828484828400
              8284848284FFFFFF008284008284848284FFFFFF008284008284008284008284
              0082846382FF0030EF0082840082840082840082840082846382FF0030EF0030
              EF0029DA008284008284008284008284848284FFFFFFFFFFFF84828400828400
              8284008284848284FFFFFF008284008284848284FFFFFF008284008284008284
              0082840082840082840082840082840082840082840082840082846382FF0030
              EF0029DA00828400828400828400828400828484828484828400828400828400
              8284008284008284848284FFFFFFFFFFFFFFFFFF848284008284008284008284
              0082840082840082840082840082840082840082840082840082840082840082
              8400828400828400828400828400828400828400828400828400828400828400
              8284008284008284008284848284848284848284008284008284}
            NumGlyphs = 2
          end
        end
        object AccountsToolbar: TActionToolBar
          Left = 4
          Top = 4
          Width = 498
          Height = 31
          ActionManager = ActionManager
          Caption = 'Accounts'
          ColorMap.HighlightColor = clWhite
          ColorMap.BtnSelectedColor = clBtnFace
          ColorMap.UnusedColor = clWhite
          EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
          EdgeInner = esLowered
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HorzMargin = 4
          ParentBackground = True
          ParentColor = True
          ParentFont = False
          PopupMenu = dm.mnuToolbar
          Spacing = 8
          VertMargin = 4
        end
      end
    end
    object tsOptions: TTabSheet
      Caption = 'Options'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      object panOptionButtons: TPanel
        Left = 0
        Top = 336
        Width = 506
        Height = 32
        Align = alBottom
        BevelOuter = bvNone
        BorderWidth = 2
        TabOrder = 0
        object btnHintHelp: TSpeedButton
          Left = 76
          Top = 3
          Width = 25
          Height = 25
          Hint = 'Quick Help'
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000130B0000130B00001000000010000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
            7777777777007777777777777700777777777777700777700777707770077770
            0777700700777777777770000077777007777000000007700777700000007777
            0077700000077777700770000077700777007000077700777700700077770077
            7700700777777007770070777777770000077777777777777777}
          ParentShowHint = False
          ShowHint = True
          OnClick = btnHintHelpClick
        end
        object panOptionButtonsRight: TPanel
          Left = 297
          Top = 2
          Width = 207
          Height = 28
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 0
          object btnSaveOptions: TBitBtn
            Left = 6
            Top = 1
            Width = 113
            Height = 25
            Caption = 'Save Options'
            Default = True
            TabOrder = 0
            OnClick = btnSaveOptionsClick
            Glyph.Data = {
              36060000424D3606000000000000360000002800000020000000100000000100
              18000000000000060000230B0000230B0000000000000000000000FF0000FF00
              00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
              0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
              FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
              8080806363636363635050505050504040404040404040404040404040404040
              4040404050505063636300FF0000FF0000FF0000FF0000FF0000FF0000FF0000
              FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
              AA5000D36605C85E00B5B2B5B5B2B5B5B2B5B5B2B5B5B2B5B5B2B59B49009B49
              00D36605D3660550505000FF0000FF006F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F
              6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F55555500FF0000FF0000FF00FF973B
              ED801FED801FD36605AD9E9CFC8F2EDEB6B5FFFBFFF7F3F7E7E7E79B49009B49
              00ED801FD3660540404000FF0087878700FF0000FF006F6F6F9F9F9F00FF0000
              FF0000FF0000FF00E7E7E76F6F6F00FF006F6F6F00FF0000FF0000FF00FF973B
              ED801FED801FD36605CEB6B5DB6E0DFFA24FDEDBDEFFFBFFF7F3F79B49009B49
              00ED801FD3660540404000FF0087878700FF0000FF006F6F6FB8B8B800FF0000
              FF0000FF0000FF00E7E7E76F6F6F00FF006F6F6F00FF0000FF0000FF00FF973B
              ED801FED801FD36605E7C7C6C85E00F98C2BB5B2B5DEDBDEFFFBFF9B49009B49
              00ED801FD3660540404000FF0087878700FF0000FF006F6F6FCACACA00FF0000
              FF0000FF0000FF00E7E7E76F6F6F00FF006F6F6F00FF0000FF0000FF00FF973B
              ED801FED801FD36605DECBCECE9694CEB2B5ADAAADB5B2B5D6CFCE9B4900A14C
              00ED801FD3660540404000FF0087878700FF0000FF006F6F6FCECECE9C9C9CB6
              B6B6ABABABB3B3B3CFCFCF6F6F6F00FF006F6F6F00FF0000FF0000FF00FF973B
              ED801FED801FED801FED801FED801FED801FED801FED801FED801FED801FED80
              1FED801FD3660540404000FF0087878700FF0000FF0000FF0000FF0000FF0000
              FF0000FF0000FF0000FF0000FF0000FF006F6F6F00FF0000FF0000FF00FF973B
              ED801FED801FFFA24FFFA24FFFA24FFFA24FFFA24FFFA24FFFA24FFFA24FED80
              1FED801FD3660540404000FF0087878700FF0000FF0093939393939393939393
              939393939393939393939393939300FF006F6F6F00FF0000FF0000FF00FF973B
              ED801FFFA24FFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFA2
              4FED801FD3660550505000FF0087878700FF0093939300FF0000FF0000FF0000
              FF0000FF0000FF0000FF0000FF009393936F6F6F00FF0000FF0000FF00FF973B
              ED801FFFA24FFFFBFFC6C3C6C6C3C6C6C3C6C6C7C6C6C7C6C6C7C6FFFBFFFFA2
              4FED801FD3660550505000FF0087878700FF0093939300FF00C4C4C4C4C4C4C4
              C4C4C7C7C7C7C7C7C7C7C700FF009393936F6F6F00FF0000FF0000FF00FF973B
              ED801FFFA24FFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFA2
              4FED801FD3660563636300FF0087878700FF0093939300FF0000FF0000FF0000
              FF0000FF0000FF0000FF0000FF009393936F6F6F00FF0000FF0000FF00FF973B
              ED801FFFA24FFFFBFFBDBEBDC6C3C6C6C3C6C6C3C6C6C7C6C6C7C6FFFBFFFFA2
              4FED801FD3660563636300FF0087878700FF0093939300FF00BDBEBDC6C3C6C6
              C3C6C6C3C6C6C7C6C6C7C600FF009393936F6F6F00FF0000FF0000FF00FF973B
              ED801FFFA24FFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFA2
              4FED801FD3660580808000FF0087878700FF0093939300FF0000FF0000FF0000
              FF0000FF0000FF0000FF0000FF009393936F6F6F00FF0000FF0000FF00FF973B
              D36605FFA24F0000C00000C00000C00000C00000C00000C00000C00000C0FFA2
              4FD3660500FF0000FF0000FF008787876F6F6F9393936F6F6F6F6F6F6F6F6F6F
              6F6F6F6F6F6F6F6F6F6F6F6F6F6F93939355555500FF0000FF0000FF0000FF00
              00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
              0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
              FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00}
            NumGlyphs = 2
          end
          object btnCancel: TBitBtn
            Left = 128
            Top = 1
            Width = 75
            Height = 25
            Cancel = True
            Caption = 'Cancel'
            TabOrder = 1
            OnClick = btnCancelClick
            Glyph.Data = {
              36060000424D3606000000000000360000002800000020000000100000000100
              18000000000000060000230B0000230B00000000000000000000008284008284
              6E6E6E6E6E6E0082840082840082840082840082840082840082840082840082
              84008284008284008284008284008284008284FFFFFF00828400828400828400
              82840082840082840082840082840082840082840082840082840082843159FF
              0029DA0019B06E6E6E0082840082840082840082840082843159FF6E6E6E0082
              84008284008284008284008284008284848284848284FFFFFF00828400828400
              8284008284008284008284FFFFFF0082840082840082840082840082843159FF
              0030EF0029DA0019B06E6E6E0082840082840082843159FF0020CE0019B06E6E
              6E008284008284008284008284848284FFFFFF008284848284FFFFFF00828400
              8284008284FFFFFF848284848284FFFFFF0082840082840082840082846382FF
              0030EF0030EF0029DA0019B06E6E6E0082843159FF0020CE0020CE0020CE0019
              B06E6E6E008284008284008284848284FFFFFF008284008284848284FFFFFF00
              8284FFFFFF848284008284008284848284FFFFFF008284008284008284008284
              6382FF0030EF0030EF0029DA0019B06E6E6E0029DA0020CE0020CE0020CE0019
              B06E6E6E008284008284008284848284FFFFFF008284008284008284848284FF
              FFFF848284008284008284008284008284848284FFFFFF008284008284008284
              0082846382FF0030EF0030EF0029DA0029DA0029DA0029DA0020CE0020CE6E6E
              6E008284008284008284008284008284848284FFFFFF00828400828400828484
              8284008284008284008284008284FFFFFF848284008284008284008284008284
              0082840082846382FF0030EF0029DA0029DA0029DA0029DA0029DA6E6E6E0082
              84008284008284008284008284008284008284848284FFFFFF00828400828400
              8284008284008284008284FFFFFF848284008284008284008284008284008284
              0082840082840082840030EF0030EF0029DA0029DA0019B06E6E6E0082840082
              84008284008284008284008284008284008284008284848284FFFFFF00828400
              8284008284008284008284848284008284008284008284008284008284008284
              0082840082840082843159FF0030EF0030EF0029DA0019B06E6E6E0082840082
              84008284008284008284008284008284008284008284008284848284FFFFFF00
              8284008284008284848284008284008284008284008284008284008284008284
              0082840082843159FF0030EF0030EF0030EF0030EF0019B06E6E6E0082840082
              8400828400828400828400828400828400828400828400828484828400828400
              8284008284008284848284FFFFFF008284008284008284008284008284008284
              0082843159FF0030EF0030EF0030EF6E6E6E0030EF0029DA0019B06E6E6E0082
              8400828400828400828400828400828400828400828484828400828400828400
              8284008284008284848284FFFFFF008284008284008284008284008284008284
              6382FF0030EF0030EF0030EF6E6E6E0082843159FF0030EF0029DA0019B06E6E
              6E00828400828400828400828400828400828484828400828400828400828484
              8284FFFFFF008284008284848284FFFFFF008284008284008284008284008284
              6382FF0030EF0020CE6E6E6E0082840082840082846382FF0030EF0029DA0019
              B06E6E6E008284008284008284008284848284FFFFFF00828400828484828400
              8284848284FFFFFF008284008284848284FFFFFF008284008284008284008284
              0082846382FF0030EF0082840082840082840082840082846382FF0030EF0030
              EF0029DA008284008284008284008284848284FFFFFFFFFFFF84828400828400
              8284008284848284FFFFFF008284008284848284FFFFFF008284008284008284
              0082840082840082840082840082840082840082840082840082846382FF0030
              EF0029DA00828400828400828400828400828484828484828400828400828400
              8284008284008284848284FFFFFFFFFFFFFFFFFF848284008284008284008284
              0082840082840082840082840082840082840082840082840082840082840082
              8400828400828400828400828400828400828400828400828400828400828400
              8284008284008284008284848284848284848284008284008284}
            NumGlyphs = 2
          end
        end
        object btnHelpOptions: TBitBtn
          Left = 8
          Top = 3
          Width = 65
          Height = 25
          Caption = '&Help'
          TabOrder = 1
          OnClick = btnHelpOptionsClick
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000130B0000130B00000000000000000000FFFFFF9C6963
            9C69639C69639C69639C69639C69639C69639C69639C69639C69639C69639C69
            639C6963FFFFFFFFFFFFFFFFFFA57573F7E3D6FFE7D6FFE7CEFFE3C6FFA0FFFF
            85FFFFDBB5FFD7ADFFD7ADFFD3A5FFD3A5AD796BFFFFFFFFFFFFFFFFFFA57573
            F7E7D6FFEBD6FFE7D6FFA8FF7B007B870787FF85FFFFDBB5FFD7ADFFD7ADFFD3
            A5AD796BFFFFFFFFFFFFFFFFFFA57573F7EBDEFFEFDEFFEBD6FF9AFF90109090
            1090F070F0FFDFBDFFDBB5FFD7ADFFD7ADAD796BFFFFFFFFFFFFFFFFFFA57573
            F7EFE7FFF3E7FFEFDEFFEBD6FF85FFFF85FFFFE3C6FFE3C6FFDFBDFFDBB5FFD7
            ADAD796BFFFFFFFFFFFFFFFFFFA57573F7EFEFFFF3E7FFF3E7FFEFDE87078787
            0787FFE7CEFFE3C6FFE3C6FFDFBDFFDBB5AD796BFFFFFFFFFFFFFFFFFFA57573
            F7F3EFFFF7EFFFF3E7FFF3E78A0A8A931393FF83FFFFE7CEFFE3C6FFE3C6FFDF
            BDAD796BFFFFFFFFFFFFFFFFFFAD7D73FFF7F7FFFBF7FFF7EFFFF3E7AA2AAA9E
            1E9E890989FF9AFFFFE7CEFFE3C6FFE3C6AD796BFFFFFFFFFFFFFFFFFFAD827B
            FFFBF7FFFBF7FFFBF7FFF7EFFFC5FF890989A121A1961696FFE7D6FFE7CEFFE3
            C6AD796BFFFFFFFFFFFFFFFFFFB58A7BFFFBFFFFFFFFFFFBF7FFFBF7F7DFCEFF
            AEFF8D0D8D901090FF9EFFFFE7D6FFE7CEAD796BFFFFFFFFFFFFFFFFFFBD927B
            FFFFFFFFFFFFFFFFFFC545C5830383AC2CAC901090840484FFE3CEFFDFD6FFCF
            C6AD796BFFFFFFFFFFFFFFFFFFCE9A84FFFFFFFFFFFFFFD5FF8808888F0F8F8F
            0F8F8B0B8BCE4ECEFFE7D6F7BAB5F7A29CAD796BFFFFFFFFFFFFFFFFFFD6A284
            FFFFFFFFFFFFFFFFFFFFEBFFE565E5E060E0F979F9FFF7EFB57D73B57D73B57D
            73B57D73FFFFFFFFFFFFFFFFFFDEAA8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFBF7FFFBF7B57D73FFD394DEA27BCE9A84FFFFFFFFFFFFFFFFFFDEAE8C
            FFFFFFFFFFFFFFFBFFFFFBFFF7F7F7F7F3F7F7F3EFEFEFEFB57D73E7B694D6A2
            84FFFFFFFFFFFFFFFFFFFFFFFFE7B28CDEAA84DEAA84DEAA84DEAA84DEAA84DE
            AA84DEAA84DEAA84B57D73DEAA84FFFFFFFFFFFFFFFFFFFFFFFF}
        end
      end
      object panOptionPage: TPanel
        Left = 0
        Top = 0
        Width = 506
        Height = 336
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 4
        ParentBackground = False
        TabOrder = 1
        object spltOptions: TSplitter
          Left = 149
          Top = 4
          Width = 6
          Height = 328
          ResizeStyle = rsUpdate
        end
        object tvOptions: TTreeView
          Left = 4
          Top = 4
          Width = 145
          Height = 328
          Hint = 'Select the option screen to show.'
          Align = alLeft
          HideSelection = False
          Images = dm.imlOptions
          Indent = 27
          ReadOnly = True
          ShowRoot = False
          TabOrder = 0
          OnChange = tvOptionsChange
          OnMouseDown = tvOptionsMouseDown
          Items.Data = {
            09000000210000000000000000000000FFFFFFFFFFFFFFFF0000000000000000
            08496E74657276616C210000000100000001000000FFFFFFFFFFFFFFFF000000
            00000000000844656661756C7473280000000200000002000000FFFFFFFFFFFF
            FFFF00000000000000000F47656E6572616C204F7074696F6E73290000000300
            000003000000FFFFFFFFFFFFFFFF000000000200000010416476616E63656420
            4F7074696F6E73270000000400000004000000FFFFFFFFFFFFFFFF0000000000
            0000000E5573657220496E746572666163651D0000000600000006000000FFFF
            FFFFFFFFFFFF0000000000000000044D697363260000000700000007000000FF
            FFFFFFFFFFFFFF00000000000000000D4D6F75736520427574746F6E73210000
            000800000008000000FFFFFFFFFFFFFFFF000000000000000008486F742D4B65
            79732B0000000900000009000000FFFFFFFFFFFFFFFF00000000000000001257
            68697465202F20426C61636B204C697374210000000A0000000A000000FFFFFF
            FFFFFFFFFF000000000000000008506C75672D496E732A0000000B0000000B00
            0000FFFFFFFFFFFFFFFF00000000000000001156697375616C20417070656172
            616E6365}
        end
        object panOptions: TPanel
          Left = 155
          Top = 4
          Width = 347
          Height = 328
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object panOptSpacer: TPanel
            Left = 0
            Top = 30
            Width = 347
            Height = 4
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
          end
          object panOptionsTitle: TPanel
            Left = 0
            Top = 0
            Width = 347
            Height = 30
            Align = alTop
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Color = clWindow
            ParentBackground = False
            TabOrder = 1
            DesignSize = (
              347
              30)
            object imgOptionTitle: TImage
              Left = 2
              Top = 2
              Width = 26
              Height = 26
              Align = alLeft
              Center = True
            end
            object lblOptionTitle: TLabel
              Left = 32
              Top = 8
              Width = 310
              Height = 14
              Alignment = taCenter
              Anchors = [akLeft, akTop, akRight]
              AutoSize = False
              Caption = 'Options'
            end
          end
        end
      end
    end
    object tsRules: TTabSheet
      Caption = 'Rules'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 2
      ParentFont = False
      object panRulesButtons: TPanel
        Left = 0
        Top = 336
        Width = 506
        Height = 32
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object panRulesButtonsRight: TPanel
          Left = 298
          Top = 0
          Width = 213
          Height = 32
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 0
          object btnSaveRules: TBitBtn
            Left = 10
            Top = 3
            Width = 113
            Height = 25
            Caption = 'Save Rules'
            Default = True
            Enabled = False
            TabOrder = 0
            OnClick = btnSaveRulesClick
            Glyph.Data = {
              36060000424D3606000000000000360000002800000020000000100000000100
              18000000000000060000230B0000230B0000000000000000000000FF0000FF00
              00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
              0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
              FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
              8080806363636363635050505050504040404040404040404040404040404040
              4040404050505063636300FF0000FF0000FF0000FF0000FF0000FF0000FF0000
              FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
              AA5000D36605C85E00B5B2B5B5B2B5B5B2B5B5B2B5B5B2B5B5B2B59B49009B49
              00D36605D3660550505000FF0000FF006F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F
              6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F55555500FF0000FF0000FF00FF973B
              ED801FED801FD36605AD9E9CFC8F2EDEB6B5FFFBFFF7F3F7E7E7E79B49009B49
              00ED801FD3660540404000FF0087878700FF0000FF006F6F6F9F9F9F00FF0000
              FF0000FF0000FF00E7E7E76F6F6F00FF006F6F6F00FF0000FF0000FF00FF973B
              ED801FED801FD36605CEB6B5DB6E0DFFA24FDEDBDEFFFBFFF7F3F79B49009B49
              00ED801FD3660540404000FF0087878700FF0000FF006F6F6FB8B8B800FF0000
              FF0000FF0000FF00E7E7E76F6F6F00FF006F6F6F00FF0000FF0000FF00FF973B
              ED801FED801FD36605E7C7C6C85E00F98C2BB5B2B5DEDBDEFFFBFF9B49009B49
              00ED801FD3660540404000FF0087878700FF0000FF006F6F6FCACACA00FF0000
              FF0000FF0000FF00E7E7E76F6F6F00FF006F6F6F00FF0000FF0000FF00FF973B
              ED801FED801FD36605DECBCECE9694CEB2B5ADAAADB5B2B5D6CFCE9B4900A14C
              00ED801FD3660540404000FF0087878700FF0000FF006F6F6FCECECE9C9C9CB6
              B6B6ABABABB3B3B3CFCFCF6F6F6F00FF006F6F6F00FF0000FF0000FF00FF973B
              ED801FED801FED801FED801FED801FED801FED801FED801FED801FED801FED80
              1FED801FD3660540404000FF0087878700FF0000FF0000FF0000FF0000FF0000
              FF0000FF0000FF0000FF0000FF0000FF006F6F6F00FF0000FF0000FF00FF973B
              ED801FED801FFFA24FFFA24FFFA24FFFA24FFFA24FFFA24FFFA24FFFA24FED80
              1FED801FD3660540404000FF0087878700FF0000FF0093939393939393939393
              939393939393939393939393939300FF006F6F6F00FF0000FF0000FF00FF973B
              ED801FFFA24FFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFA2
              4FED801FD3660550505000FF0087878700FF0093939300FF0000FF0000FF0000
              FF0000FF0000FF0000FF0000FF009393936F6F6F00FF0000FF0000FF00FF973B
              ED801FFFA24FFFFBFFC6C3C6C6C3C6C6C3C6C6C7C6C6C7C6C6C7C6FFFBFFFFA2
              4FED801FD3660550505000FF0087878700FF0093939300FF00C4C4C4C4C4C4C4
              C4C4C7C7C7C7C7C7C7C7C700FF009393936F6F6F00FF0000FF0000FF00FF973B
              ED801FFFA24FFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFA2
              4FED801FD3660563636300FF0087878700FF0093939300FF0000FF0000FF0000
              FF0000FF0000FF0000FF0000FF009393936F6F6F00FF0000FF0000FF00FF973B
              ED801FFFA24FFFFBFFBDBEBDC6C3C6C6C3C6C6C3C6C6C7C6C6C7C6FFFBFFFFA2
              4FED801FD3660563636300FF0087878700FF0093939300FF00BDBEBDC6C3C6C6
              C3C6C6C3C6C6C7C6C6C7C600FF009393936F6F6F00FF0000FF0000FF00FF973B
              ED801FFFA24FFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFA2
              4FED801FD3660580808000FF0087878700FF0093939300FF0000FF0000FF0000
              FF0000FF0000FF0000FF0000FF009393936F6F6F00FF0000FF0000FF00FF973B
              D36605FFA24F0000C00000C00000C00000C00000C00000C00000C00000C0FFA2
              4FD3660500FF0000FF0000FF008787876F6F6F9393936F6F6F6F6F6F6F6F6F6F
              6F6F6F6F6F6F6F6F6F6F6F6F6F6F93939355555500FF0000FF0000FF0000FF00
              00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
              0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
              FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00}
            NumGlyphs = 2
          end
          object btnCancelRule: TBitBtn
            Left = 132
            Top = 3
            Width = 75
            Height = 25
            Cancel = True
            Caption = 'Cancel'
            Enabled = False
            TabOrder = 1
            OnClick = btnCancelRuleClick
            Glyph.Data = {
              36060000424D3606000000000000360000002800000020000000100000000100
              18000000000000060000230B0000230B00000000000000000000008284008284
              6E6E6E6E6E6E0082840082840082840082840082840082840082840082840082
              84008284008284008284008284008284008284FFFFFF00828400828400828400
              82840082840082840082840082840082840082840082840082840082843159FF
              0029DA0019B06E6E6E0082840082840082840082840082843159FF6E6E6E0082
              84008284008284008284008284008284848284848284FFFFFF00828400828400
              8284008284008284008284FFFFFF0082840082840082840082840082843159FF
              0030EF0029DA0019B06E6E6E0082840082840082843159FF0020CE0019B06E6E
              6E008284008284008284008284848284FFFFFF008284848284FFFFFF00828400
              8284008284FFFFFF848284848284FFFFFF0082840082840082840082846382FF
              0030EF0030EF0029DA0019B06E6E6E0082843159FF0020CE0020CE0020CE0019
              B06E6E6E008284008284008284848284FFFFFF008284008284848284FFFFFF00
              8284FFFFFF848284008284008284848284FFFFFF008284008284008284008284
              6382FF0030EF0030EF0029DA0019B06E6E6E0029DA0020CE0020CE0020CE0019
              B06E6E6E008284008284008284848284FFFFFF008284008284008284848284FF
              FFFF848284008284008284008284008284848284FFFFFF008284008284008284
              0082846382FF0030EF0030EF0029DA0029DA0029DA0029DA0020CE0020CE6E6E
              6E008284008284008284008284008284848284FFFFFF00828400828400828484
              8284008284008284008284008284FFFFFF848284008284008284008284008284
              0082840082846382FF0030EF0029DA0029DA0029DA0029DA0029DA6E6E6E0082
              84008284008284008284008284008284008284848284FFFFFF00828400828400
              8284008284008284008284FFFFFF848284008284008284008284008284008284
              0082840082840082840030EF0030EF0029DA0029DA0019B06E6E6E0082840082
              84008284008284008284008284008284008284008284848284FFFFFF00828400
              8284008284008284008284848284008284008284008284008284008284008284
              0082840082840082843159FF0030EF0030EF0029DA0019B06E6E6E0082840082
              84008284008284008284008284008284008284008284008284848284FFFFFF00
              8284008284008284848284008284008284008284008284008284008284008284
              0082840082843159FF0030EF0030EF0030EF0030EF0019B06E6E6E0082840082
              8400828400828400828400828400828400828400828400828484828400828400
              8284008284008284848284FFFFFF008284008284008284008284008284008284
              0082843159FF0030EF0030EF0030EF6E6E6E0030EF0029DA0019B06E6E6E0082
              8400828400828400828400828400828400828400828484828400828400828400
              8284008284008284848284FFFFFF008284008284008284008284008284008284
              6382FF0030EF0030EF0030EF6E6E6E0082843159FF0030EF0029DA0019B06E6E
              6E00828400828400828400828400828400828484828400828400828400828484
              8284FFFFFF008284008284848284FFFFFF008284008284008284008284008284
              6382FF0030EF0020CE6E6E6E0082840082840082846382FF0030EF0029DA0019
              B06E6E6E008284008284008284008284848284FFFFFF00828400828484828400
              8284848284FFFFFF008284008284848284FFFFFF008284008284008284008284
              0082846382FF0030EF0082840082840082840082840082846382FF0030EF0030
              EF0029DA008284008284008284008284848284FFFFFFFFFFFF84828400828400
              8284008284848284FFFFFF008284008284848284FFFFFF008284008284008284
              0082840082840082840082840082840082840082840082840082846382FF0030
              EF0029DA00828400828400828400828400828484828484828400828400828400
              8284008284008284848284FFFFFFFFFFFFFFFFFF848284008284008284008284
              0082840082840082840082840082840082840082840082840082840082840082
              8400828400828400828400828400828400828400828400828400828400828400
              8284008284008284008284848284848284848284008284008284}
            NumGlyphs = 2
          end
        end
        object btnHelpRules: TBitBtn
          Left = 8
          Top = 3
          Width = 65
          Height = 25
          Caption = '&Help'
          TabOrder = 1
          OnClick = btnHelpRulesClick
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000130B0000130B00000000000000000000FFFFFF9C6963
            9C69639C69639C69639C69639C69639C69639C69639C69639C69639C69639C69
            639C6963FFFFFFFFFFFFFFFFFFA57573F7E3D6FFE7D6FFE7CEFFE3C6FFA0FFFF
            85FFFFDBB5FFD7ADFFD7ADFFD3A5FFD3A5AD796BFFFFFFFFFFFFFFFFFFA57573
            F7E7D6FFEBD6FFE7D6FFA8FF7B007B870787FF85FFFFDBB5FFD7ADFFD7ADFFD3
            A5AD796BFFFFFFFFFFFFFFFFFFA57573F7EBDEFFEFDEFFEBD6FF9AFF90109090
            1090F070F0FFDFBDFFDBB5FFD7ADFFD7ADAD796BFFFFFFFFFFFFFFFFFFA57573
            F7EFE7FFF3E7FFEFDEFFEBD6FF85FFFF85FFFFE3C6FFE3C6FFDFBDFFDBB5FFD7
            ADAD796BFFFFFFFFFFFFFFFFFFA57573F7EFEFFFF3E7FFF3E7FFEFDE87078787
            0787FFE7CEFFE3C6FFE3C6FFDFBDFFDBB5AD796BFFFFFFFFFFFFFFFFFFA57573
            F7F3EFFFF7EFFFF3E7FFF3E78A0A8A931393FF83FFFFE7CEFFE3C6FFE3C6FFDF
            BDAD796BFFFFFFFFFFFFFFFFFFAD7D73FFF7F7FFFBF7FFF7EFFFF3E7AA2AAA9E
            1E9E890989FF9AFFFFE7CEFFE3C6FFE3C6AD796BFFFFFFFFFFFFFFFFFFAD827B
            FFFBF7FFFBF7FFFBF7FFF7EFFFC5FF890989A121A1961696FFE7D6FFE7CEFFE3
            C6AD796BFFFFFFFFFFFFFFFFFFB58A7BFFFBFFFFFFFFFFFBF7FFFBF7F7DFCEFF
            AEFF8D0D8D901090FF9EFFFFE7D6FFE7CEAD796BFFFFFFFFFFFFFFFFFFBD927B
            FFFFFFFFFFFFFFFFFFC545C5830383AC2CAC901090840484FFE3CEFFDFD6FFCF
            C6AD796BFFFFFFFFFFFFFFFFFFCE9A84FFFFFFFFFFFFFFD5FF8808888F0F8F8F
            0F8F8B0B8BCE4ECEFFE7D6F7BAB5F7A29CAD796BFFFFFFFFFFFFFFFFFFD6A284
            FFFFFFFFFFFFFFFFFFFFEBFFE565E5E060E0F979F9FFF7EFB57D73B57D73B57D
            73B57D73FFFFFFFFFFFFFFFFFFDEAA8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFBF7FFFBF7B57D73FFD394DEA27BCE9A84FFFFFFFFFFFFFFFFFFDEAE8C
            FFFFFFFFFFFFFFFBFFFFFBFFF7F7F7F7F3F7F7F3EFEFEFEFB57D73E7B694D6A2
            84FFFFFFFFFFFFFFFFFFFFFFFFE7B28CDEAA84DEAA84DEAA84DEAA84DEAA84DE
            AA84DEAA84DEAA84B57D73DEAA84FFFFFFFFFFFFFFFFFFFFFFFF}
        end
      end
      object panRulesTop: TPanel
        Left = 0
        Top = 0
        Width = 506
        Height = 336
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 0
        object spltRules: TSplitter
          Left = 104
          Top = 35
          Width = 5
          Height = 297
          ResizeStyle = rsUpdate
        end
        object RulesToolbar: TActionToolBar
          Left = 4
          Top = 4
          Width = 498
          Height = 31
          ActionManager = ActionManager
          Caption = 'Rules'
          ColorMap.HighlightColor = clWhite
          ColorMap.BtnSelectedColor = clBtnFace
          ColorMap.UnusedColor = clWhite
          EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
          EdgeInner = esLowered
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HorzMargin = 4
          ParentBackground = True
          ParentColor = True
          ParentFont = False
          PopupMenu = dm.mnuToolbar
          Spacing = 8
          VertMargin = 4
        end
        object ScrollBox1: TScrollBox
          Left = 109
          Top = 35
          Width = 393
          Height = 297
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          TabOrder = 1
          object panRuleDetail: TPanel
            Left = 0
            Top = 0
            Width = 393
            Height = 291
            Align = alTop
            BevelOuter = bvNone
            BorderWidth = 4
            TabOrder = 0
            Visible = False
            OnResize = panRuleDetailResize
            object gbActions: TGroupBox
              Left = 4
              Top = 167
              Width = 385
              Height = 124
              Align = alTop
              Caption = 'Actions'
              TabOrder = 1
              DesignSize = (
                385
                124)
              object btnEdRuleWav: TSpeedButton
                Left = 343
                Top = 13
                Width = 21
                Height = 21
                Anchors = [akTop, akRight]
                Glyph.Data = {
                  96000000424D960000000000000076000000280000000A000000040000000100
                  040000000000200000000000000000000000100000000000000000000000FFFF
                  FF00000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000111111111100
                  0000001100110000000000110011000000001111111111000000}
                Visible = False
                OnClick = btnEdRuleWavClick
              end
              object btnEdRuleEXE: TSpeedButton
                Left = 368
                Top = 38
                Width = 19
                Height = 19
                Anchors = [akTop, akRight]
                Glyph.Data = {
                  96000000424D960000000000000076000000280000000A000000040000000100
                  040000000000200000000000000000000000100000000000000000000000FFFF
                  FF00000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000111111111100
                  0000001100110000000000110011000000001111111111000000}
                Visible = False
                OnClick = btnEdRuleEXEClick
              end
              object btnRuleSoundTest: TSpeedButton
                Left = 366
                Top = 13
                Width = 21
                Height = 21
                Hint = 'Test the sound file'
                Anchors = [akTop, akRight]
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
                Visible = False
                OnClick = btnRuleSoundTestClick
              end
              object chkRuleDelete: TCheckBox
                Left = 4
                Top = 15
                Width = 141
                Height = 17
                Caption = 'Delete &from server'
                TabOrder = 0
                OnClick = chkRuleDeleteClick
              end
              object chkRuleWav: TCheckBox
                Left = 148
                Top = 15
                Width = 85
                Height = 17
                Caption = 'Play &Sound'
                TabOrder = 1
                OnClick = chkRuleWavClick
              end
              object chkRuleIgnore: TCheckBox
                Left = 4
                Top = 63
                Width = 141
                Height = 17
                Caption = 'Igno&re (don'#39't notify)'
                TabOrder = 6
                OnClick = chkRuleIgnoreClick
              end
              object edRuleWav: TEdit
                Left = 236
                Top = 13
                Width = 106
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                TabOrder = 2
                Visible = False
                OnChange = edRuleWavChange
              end
              object chkRuleEXE: TCheckBox
                Left = 148
                Top = 39
                Width = 81
                Height = 17
                Caption = 'E&xecute File'
                TabOrder = 4
                OnClick = chkRuleEXEClick
              end
              object edRuleEXE: TEdit
                Left = 236
                Top = 37
                Width = 131
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                TabOrder = 5
                Visible = False
                OnChange = edRuleEXEChange
              end
              object chkRuleImportant: TCheckBox
                Left = 148
                Top = 84
                Width = 197
                Height = 17
                Caption = 'Important (&Balloon Pop-up)'
                TabOrder = 9
                OnClick = chkRuleImportantClick
              end
              object chkRuleLog: TCheckBox
                Left = 4
                Top = 104
                Width = 141
                Height = 17
                Caption = '&Log Rule'
                Checked = True
                State = cbChecked
                TabOrder = 10
                OnClick = chkRuleLogClick
              end
              object chkRuleSpam: TCheckBox
                Left = 4
                Top = 39
                Width = 141
                Height = 17
                Caption = '&Mark as Spam'
                TabOrder = 3
                OnClick = chkRuleSpamClick
              end
              object chkRuleProtect: TCheckBox
                Left = 148
                Top = 104
                Width = 197
                Height = 17
                Caption = '&Protect against auto-delete'
                TabOrder = 11
                OnClick = chkRuleProtectClick
              end
              object chkRuleTrayColor: TCheckBox
                Left = 148
                Top = 63
                Width = 85
                Height = 17
                Caption = 'Tray &Color'
                TabOrder = 7
                OnClick = chkRuleTrayColorClick
              end
              object colRuleTrayColor: TColorBox
                Left = 236
                Top = 60
                Width = 113
                Height = 22
                ItemHeight = 16
                TabOrder = 8
                Visible = False
                OnChange = colRuleTrayColorChange
              end
            end
            object gbRule: TGroupBox
              Left = 4
              Top = 4
              Width = 385
              Height = 163
              Align = alTop
              Caption = 'Rule'
              TabOrder = 0
              object Label10: TLabel
                Left = 28
                Top = 15
                Width = 28
                Height = 13
                Alignment = taRightJustify
                Caption = '&Name'
                FocusControl = edRuleName
              end
              object Label31: TLabel
                Left = 16
                Top = 39
                Width = 40
                Height = 13
                Alignment = taRightJustify
                Caption = 'Acco&unt'
                FocusControl = cmbRuleAccount
              end
              object Label8: TLabel
                Left = 18
                Top = 63
                Width = 38
                Height = 13
                Alignment = taRightJustify
                Caption = 'Nee&ded'
                FocusControl = cmbRuleOperator
              end
              object grdRule: TStringGrid
                Left = 2
                Top = 83
                Width = 381
                Height = 78
                Align = alBottom
                BorderStyle = bsNone
                ColCount = 4
                DefaultRowHeight = 19
                FixedCols = 0
                RowCount = 2
                Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
                ScrollBars = ssVertical
                TabOrder = 7
                OnSelectCell = grdRuleSelectCell
                OnTopLeftChanged = grdRuleTopLeftChanged
              end
              object edRuleName: TEdit
                Left = 60
                Top = 11
                Width = 117
                Height = 21
                TabOrder = 0
                OnChange = edRuleNameChange
              end
              object chkRuleEnabled: TCheckBox
                Left = 184
                Top = 13
                Width = 97
                Height = 17
                Caption = '&Enabled'
                Checked = True
                State = cbChecked
                TabOrder = 1
                OnClick = chkRuleEnabledClick
              end
              object chkRuleNew: TCheckBox
                Left = 184
                Top = 37
                Width = 149
                Height = 17
                Caption = 'New Messages &Only'
                TabOrder = 3
                OnClick = chkRuleNewClick
              end
              object cmbRuleAccount: TComboBox
                Left = 60
                Top = 35
                Width = 117
                Height = 21
                Style = csDropDownList
                ItemHeight = 13
                TabOrder = 2
                OnChange = cmbRuleAccountChange
                Items.Strings = (
                  '0'
                  '1'
                  '2'
                  '3')
              end
              object panRuleEdit: TPanel
                Left = 1
                Top = 116
                Width = 334
                Height = 21
                BevelOuter = bvNone
                TabOrder = 8
                object btnTestRegExpr: TSpeedButton
                  Left = 287
                  Top = 0
                  Width = 21
                  Height = 21
                  Hint = 'Test the Reg Expr syntax'
                  Glyph.Data = {
                    F6000000424DF600000000000000760000002800000010000000100000000100
                    04000000000080000000CF0E0000CF0E00001000000000000000000000000000
                    80000080000000808000800000008000800080800000C0C0C000808080000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                    7777777774F7777777777777444F777777777774444F7777777777444F44F777
                    77777444F7744F777777774F77774F7777777777777774F7777777777077774F
                    7777777070707774F7777777000777774F7777000000077774F7777700077777
                    7747777070707777777777777077777777777777777777777777}
                  ParentShowHint = False
                  ShowHint = True
                  Visible = False
                  OnClick = btnTestRegExprClick
                end
                object cmbRuleArea: TComboBox
                  Left = 0
                  Top = 0
                  Width = 93
                  Height = 21
                  Style = csDropDownList
                  ItemHeight = 13
                  TabOrder = 0
                  OnChange = cmbRuleAreaChange
                  Items.Strings = (
                    'Header'
                    'From'
                    'Subject'
                    'To'
                    'CC'
                    'From (name)'
                    'From (address)'
                    'Status')
                end
                object cmbRuleComp: TComboBox
                  Left = 92
                  Top = 0
                  Width = 76
                  Height = 21
                  Style = csDropDownList
                  ItemHeight = 13
                  TabOrder = 1
                  OnChange = cmbRuleCompChange
                  Items.Strings = (
                    'Contains'
                    'Equals'
                    'Wildcard'
                    'Empty'
                    'Reg Expr')
                end
                object edRuleText: TEdit
                  Left = 167
                  Top = 0
                  Width = 120
                  Height = 21
                  TabOrder = 2
                  OnChange = edRuleTextChange
                end
                object chkRuleNot: TCheckBox
                  Left = 315
                  Top = 4
                  Width = 13
                  Height = 13
                  TabOrder = 4
                  OnClick = chkRuleNotClick
                end
                object cmbRuleStatus: TComboBox
                  Left = 167
                  Top = 0
                  Width = 98
                  Height = 21
                  ItemHeight = 13
                  TabOrder = 3
                  Visible = False
                  OnChange = cmbRuleStatusChange
                  Items.Strings = (
                    'Protected'
                    'To Be Deleted'
                    'Ignored'
                    'Spam'
                    'Important'
                    'Has Attachment'
                    'Viewed'
                    'New')
                end
              end
              object cmbRuleOperator: TComboBox
                Left = 60
                Top = 59
                Width = 117
                Height = 21
                Style = csDropDownList
                ItemHeight = 13
                TabOrder = 4
                OnChange = cmbRuleOperatorChange
                Items.Strings = (
                  'ANY Row'
                  'ALL Rows')
              end
              object btnRuleAddRow: TButton
                Left = 184
                Top = 59
                Width = 79
                Height = 21
                Caption = 'Add Row'
                TabOrder = 5
                OnClick = btnRuleAddRowClick
              end
              object btnRuleDeleteRow: TButton
                Left = 268
                Top = 59
                Width = 81
                Height = 21
                Caption = 'Delete Row'
                TabOrder = 6
                OnClick = btnRuleDeleteRowClick
              end
            end
          end
        end
        object panRuleList: TPanel
          Left = 4
          Top = 35
          Width = 100
          Height = 297
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          object lstRules: TCheckListBox
            Left = 0
            Top = 0
            Width = 100
            Height = 275
            OnClickCheck = lstRulesClickCheck
            Align = alClient
            ItemHeight = 13
            TabOrder = 0
            OnClick = lstRulesClick
            OnDragDrop = lstRulesDragDrop
            OnDragOver = lstRulesDragOver
            OnKeyDown = lstRulesKeyDown
            OnKeyUp = lstRulesKeyUp
            OnMouseDown = lstRulesMouseDown
          end
          object panRuleListButtons: TPanel
            Left = 0
            Top = 275
            Width = 100
            Height = 22
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 1
            OnResize = panRuleListButtonsResize
            object btnRuleDown: TSpeedButton
              Left = 3
              Top = 0
              Width = 45
              Height = 22
              Hint = 'Move Down'
              Enabled = False
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333033333
                33333333373F33333333333330B03333333333337F7F33333333333330F03333
                333333337F7FF3333333333330B00333333333337F773FF33333333330F0F003
                333333337F7F773F3333333330B0B0B0333333337F7F7F7F3333333300F0F0F0
                333333377F73737F33333330B0BFBFB03333337F7F33337F33333330F0FBFBF0
                3333337F7333337F33333330BFBFBFB033333373F3333373333333330BFBFB03
                33333337FFFFF7FF3333333300000000333333377777777F333333330EEEEEE0
                33333337FFFFFF7FF3333333000000000333333777777777F33333330000000B
                03333337777777F7F33333330000000003333337777777773333}
              NumGlyphs = 2
              ParentShowHint = False
              ShowHint = True
              OnClick = btnRuleDownClick
            end
            object btnRuleUp: TSpeedButton
              Left = 51
              Top = 0
              Width = 45
              Height = 22
              Hint = 'Move Up'
              Enabled = False
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
                333333777777777F33333330B00000003333337F7777777F3333333000000000
                333333777777777F333333330EEEEEE033333337FFFFFF7F3333333300000000
                333333377777777F3333333330BFBFB03333333373333373F33333330BFBFBFB
                03333337F33333F7F33333330FBFBF0F03333337F33337F7F33333330BFBFB0B
                03333337F3F3F7F7333333330F0F0F0033333337F7F7F773333333330B0B0B03
                3333333737F7F7F333333333300F0F03333333337737F7F33333333333300B03
                333333333377F7F33333333333330F03333333333337F7F33333333333330B03
                3333333333373733333333333333303333333333333373333333}
              NumGlyphs = 2
              OnClick = btnRuleUpClick
            end
          end
        end
      end
    end
    object tsAbout: TTabSheet
      Caption = 'About'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 3
      ParentFont = False
      object TImage
        Left = 18
        Top = 359
        Width = 16
        Height = 16
        Picture.Data = {
          07544269746D617036030000424D360300000000000036000000280000001000
          0000100000000100180000000000000300000000000000000000000000000000
          000000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
          00FF0000FF0000FF0000FF0000FF0000FF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          FF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF00000000FF00000000000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000
          FF00000000FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF000000FFFFFF00000000FF00000000FFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF00000000
          FF00000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF000000FFFFFFFFFFFF
          000000FFFFFFFFFFFFFFFFFF00000000FF00000000FFFFFFFFFFFFFFFFFFFFFF
          FF000000000000C6C3C6000000000000FFFFFFFFFFFFFFFFFFFFFFFF00000000
          FF00000000FFFFFFFFFFFF000000000000C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6
          000000000000FFFFFFFFFFFF00000000FF00000000000000000000C6C3C6C6C3
          C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C600000000000000000000
          FF00000000C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6
          C6C3C6C6C3C6C6C3C6C6C3C600000000FF0000FF00000000000000C6C3C6C6C3
          C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C600000000000000FF0000
          FF0000FF0000FF0000FF00000000000000C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6
          00000000000000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
          00000000000000C6C3C600000000000000FF0000FF0000FF0000FF0000FF0000
          FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000000000FF0000FF00
          00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
          0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
          FF00}
      end
      object panAbout: TPanel
        Left = 0
        Top = 0
        Width = 506
        Height = 368
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          506
          368)
        object imgTray: TImage
          Left = 426
          Top = 284
          Width = 16
          Height = 16
          AutoSize = True
          Picture.Data = {
            07544269746D617036030000424D360300000000000036000000280000001000
            000010000000010018000000000000030000130B0000130B0000000000000000
            000000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
            00FF0000FF0000FF0000FF0000FF0000FF0000FF000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FF0000
            FF00404040A59CA5F7F7F7EFE7EFE7E7E7E7DEE7DED6DEDED6DED6CED6D6CED6
            D6C6D6CEC6CEB5ADB5A59CA500000000FF00808080404040E7DEE7F7EFEFEFE7
            EFE7DEE7E7DEE7DED6DED6CED6D6CED6D6CED6CEC6CEC6BDC640404000000000
            FF00808080FFFFFF404040F7EFEFEFE7EFEFE7EFE7DEE7E7DEE7DED6DED6CED6
            D6CED6CEC6CE404040CEC6CE00000000FF00808080FFFFFFFFFFFF404040F7EF
            F7EFE7EFEFE7EFE7DEE7E7DEE7DED6DEDED6DE404040CEC6CED6C6D600000000
            FF00808080FFFFFFFFFFFFFFFFFF404040FFF7F7EFE7EF404040E7E7E7E7E7E7
            404040D6CED6D6C6D6D6C6D600000000FF00808080FFFFFFFFFFFFFFFFFFEFEF
            EF404040404040ACDBF4404040404040DED6DED6CED6D6C6D6D6C6D600000000
            FF00808080FFFFFFFFFFFF404040404040E4FDFEC2FDFFC2FDFFD1EFF9ACDBF4
            404040404040D6CED6D6CED600000000FF00808080404040404040FFFFFFE4FD
            FEE4FDFEE4FDFEC2FDFFC2FDFFC2FDFFD1EFF9ACDBF440404040404000000000
            FF00404040FFFEFFFFFEFFFFFFFFE4FDFEE4FDFEE4FDFEE4FDFEE4FDFEC2FDFF
            C2FDFFD1EFF9BEE6F5ACDBF400000000FF0000FF00808080808080FFFFFFF9FF
            FEFFFEFFE4FDFEE4FDFEE4FDFEE4FDFED1EFF9D1EFF97B737340404000FF0000
            FF0000FF0000FF0000FF00808080808080F9FFFEF9FFFEE4FDFEE4FDFEE4FDFE
            80808080808000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
            00808080808080E4FDFE80808080808000FF0000FF0000FF0000FF0000FF0000
            FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0080808000FF0000FF00
            00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
            0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
            FF00}
          Visible = False
        end
        object lblVersion: TLabel
          Left = 160
          Top = 40
          Width = 136
          Height = 20
          Alignment = taCenter
          AutoSize = False
          Caption = 'version'
          Transparent = True
        end
        object Label11: TLabel
          Tag = 999
          Left = 142
          Top = 76
          Width = 172
          Height = 26
          Alignment = taCenter
          Caption = 'Copyright '#169'2012 - Jessica Brown'#13#10'FREEWARE and OPEN-SOURCE !!'
          Transparent = True
        end
        object Image1: TImage
          Left = 36
          Top = 24
          Width = 65
          Height = 65
          Picture.Data = {
            055449636F6E0000010001004040000001002000284200001600000028000000
            4000000080000000010020000000000000000000000000000000000000000000
            00000000FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF018787870387878797959595D79A9A9AD99A9A9AD1
            999999C9989898BF979797B7969696AF959595A79494949F929292979191918F
            909090878D8D8D7F8B8B8B79898989718787876B878787678787876387878761
            8787875D8787875987878757878787538787874F8787874D8787874987878745
            878787438787873F8787873D8787873987878735878787358787873787878739
            8787873B8787873B8787873D8787873F87878741878787438787874587878745
            87878747878787498787874B8787874D8787874F8787874F8787875B8B8B8B71
            8D8D8D7F8F8F8F83909090898B8B8B898787876F87878731FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF018787875B9A9A9AFFD2D6D6FFE8EEEEFFE7EEEEFF
            E1E6E6FFDBE0E0FFD7DCDCFFD5D9D9FFD2D6D6FFD0D4D4FFCED1D1FFCBCFCFFF
            C9CCCCFFC6C9C9FFC5C8C8FFC4C7C7FFC3C6C6FFC2C4C4FFC0C3C3FFBFC1C1FF
            BDBFBFFFBCBEBEFFBABCBCFFB8BABAFFB6B8B8FFB5B6B6FFB3B4B4FFB1B3B3FF
            B0B1B1FFAEAFAFFFACADADFFAAABABFFA9A9A9FFA7A8A8FFA7A7A7FFA6A6A6FF
            A8A8A8FFABABABFFAEAFAFFFB1B2B2FFB4B5B5FFB6B8B8FFB9BBBBFFBCBFBFFF
            C0C3C3FFC5C8C8FFC8CCCCFFCBCFCFFFCDD1D1FFCDD1D1FFCFD3D3FFCFD3D3FF
            D0D4D4FFCDD1D1FFC9CCCCFFC5C7C7FFBCBFBFFF9C9C9CFF878787A9FFFFFF01
            FFFFFF01FFFFFF01FFFFFF018787879BBDBFBFFFF7FFFFFFF7FFFFFFF7FFFFFF
            F7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFF
            F7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFF
            F7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFF
            F7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFF
            F7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFF
            F7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFF
            F7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFD8DDDDFF969696FF8787872B
            FFFFFF01FFFFFF01FFFFFF01888888ABCACDCDFFF7FFFFFFF4FFFFFFF2F7F7FF
            EBEEEEFFEAECECFFEBEEEEFFECEFEFFFEDF0F0FFEEF1F1FFEEF3F3FFEFF4F4FF
            F0F4F4FFF0F5F5FFF1F6F6FFF1F7F7FFF2F8F8FFF2F9F9FFF3F9F9FFF4FAFAFF
            F4FBFBFFF5FCFCFFF5FDFDFFF5FDFDFFF5FDFDFFF6FDFDFFF6FDFDFFF6FDFDFF
            F6FEFEFFF6FEFEFFF6FEFEFFF6FEFEFFF6FEFEFFF6FEFEFFF6FEFEFFF6FEFEFF
            F6FEFEFFF6FDFDFFF5FDFDFFF5FDFDFFF5FCFCFFF5FCFCFFF5FCFCFFF4FCFCFF
            F4FBFBFFF4FBFBFFF4FBFBFFF4FAFAFFF3FAFAFFF3FAFAFFF3F9F9FFF3F9F9FF
            F3F9F9FFF3F9F9FFF6FDFDFFF7FFFFFFF7FFFFFFEDF3F3FF9D9D9DFF87878741
            FFFFFF01FFFFFF01FFFFFF01898989A7CBCECEFFF5FEFFFFE9FCFEFFEAF1F1FF
            E6E8E8FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF
            E6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF
            E6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF
            E6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF
            E6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF
            E6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF
            E6E6E6FFE6E6E6FFE7E7E7FFF0FCFCFFF0FEFFFFF6FEFEFF9D9D9DFF87878739
            FFFFFF01FFFFFF01FFFFFF01888888A3C6C9C9FFF7FFFFFFEFFAFBFFDADDDDFF
            EEFBFBFFE8EBEBFFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF
            E6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF
            E6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF
            E6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF
            E6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF
            E6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF
            E6E6E6FFE7EAEAFFE9F4F4FFE1ECEDFFF0FEFFFFF4FCFCFF9B9B9BFF87878733
            FFFFFF01FFFFFF01FFFFFF01878787A1C2C4C4FFF7FFFFFFF6FCFCFFDBDBDBFF
            D7DBDBFFEDFBFBFFEAF2F2FFE5E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF
            E6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF
            E6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF
            E6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF
            E6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF
            E6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF
            EAF0F0FFE5EFEFFFCDCECEFFEAEEEEFFF7FFFFFFEFF6F6FF9A9A9AFF8787872D
            FFFFFF01FFFFFF01FFFFFF018787879FC0C3C3FFF8FFFFFFF6FDFDFFE8E8E8FF
            DADADAFFD5D7D7FFEBF8F8FFECF6F6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF
            E6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF
            E6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF
            E6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF
            E6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF
            E6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E8E8FFEDF8F8FF
            DDE5E5FFCACACAFFE0E0E0FFEEF2F2FFF7FFFFFFEAF1F1FF999999FF87878727
            FFFFFF01FFFFFF01FFFFFF018787879FC0C2C2FFF8FFFFFFF7FDFDFFE9E9E9FF
            E9E9E9FFDCDCDCFFD3D5D5FFE8F4F4FFEDF9F9FFE6E8E8FFE6E6E6FFE6E6E6FF
            E6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF
            E6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF
            E6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF
            E6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF
            E6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE7EAEAFFEBF8F8FFD2D7D7FF
            CBCBCBFFE1E1E1FFE6E6E6FFEEF2F2FFF7FFFFFFE6EDEDFF989898FF8787871F
            FFFFFF01FFFFFF01FFFFFF018787879DC0C2C2FFF8FFFFFFF7FDFDFFEAEAEAFF
            E9E9E9FFE9E9E9FFE2E2E2FFD3D4D4FFE5EFEFFFEEFBFBFFE7E9E9FFE6E6E6FF
            E6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF
            E6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF
            E4E4E4FFE4E4E4FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF
            E6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF
            E6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE8EDEDFFE9F4F4FFCDCFCFFFD1D1D1FF
            E4E4E4FFE6E6E6FFE6E6E6FFEFF3F3FFF7FFFFFFE5EBEBFF989898FF87878719
            FFFFFF01FFFFFF01FFFFFF018787879BC0C3C3FFF8FFFFFFF7FDFDFFEAEAEAFF
            EAEAEAFFEAEAEAFFEAEAEAFFE6E6E6FFD5D5D5FFE2E9E9FFF1FDFDFFE8EBEBFF
            E6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF
            E6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE7E7E7FFE5E5E5FFD5D5D5FFC6C6C6FF
            C1C1C1FFC1C1C1FFC9C9C9FFD5D5D5FFE5E5E5FFE6E6E6FFE6E6E6FFE6E6E6FF
            E6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF
            E6E6E6FFE6E6E6FFE6E6E6FFEAF1F1FFE4EFEFFFCACACAFFD9D9D9FFE6E6E6FF
            E6E6E6FFE6E6E6FFE6E6E6FFEFF3F3FFF7FFFFFFE3E9E9FF989898FF87878713
            FFFFFF01FFFFFF01FFFFFF018787879BC0C2C2FFF8FFFFFFF7FDFDFFEBEBEBFF
            EBEBEBFFEAEAEAFFEAEAEAFFEAEAEAFFE8E8E8FFD7D7D7FFDEE3E3FFF1FDFDFF
            EBEDEDFFE9E9E9FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FF
            E8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFDEDEDEFFC9C9C9FFC3C3C3FFC3C3C3FF
            C3C3C3FFC2C2C2FFC2C2C2FFC1C1C1FFC6C6C6FFDBDBDBFFE6E6E6FFE6E6E6FF
            E6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF
            E6E6E6FFE6E6E6FFEBF4F4FFDEE7E7FFC9C9C9FFDEDEDEFFE6E6E6FFE6E6E6FF
            E6E6E6FFE6E6E6FFE6E6E6FFEFF4F4FFF7FFFFFFE1E6E6FF979797FF8787870D
            FFFFFF01FFFFFF01FFFFFF0187878799C0C2C2FFF8FFFFFFF7FDFDFFEBEBEBFF
            EBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEAEAEAFFD9D9D9FFDBE0E0FF
            F1FCFCFFECEEEEFFEAEAEAFFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FF
            E9E9E9FFE8E8E8FFE7E7E7FFD6D6D6FFC6C6C6FFC5C5C5FFC5C5C5FFC4C4C4FF
            C4C4C4FFC4C4C4FFC3C3C3FFC3C3C3FFC2C2C2FFC2C2C2FFD4D4D4FFE6E6E6FF
            E6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF
            E6E6E6FFECF5F5FFDAE1E1FFCBCBCBFFE1E1E1FFE6E6E6FFE6E6E6FFE6E6E6FF
            E6E6E6FFE6E6E6FFE6E6E6FFF0F5F5FFF7FFFFFFDFE4E4FF969696FF87878707
            FFFFFF01FFFFFF01FFFFFF0187878797C0C2C2FFF8FFFFFFF8FEFEFFECECECFF
            ECECECFFECECECFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEAEAEAFFDCDCDCFF
            DBDFDFFFF0FCFCFFECEFEFFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFE9E9E9FF
            E9E9E9FFE7E7E7FFD1D1D1FFC8C8C8FFC7C7C7FFC7C7C7FFC6C6C6FFC6C6C6FF
            C6C6C6FFC5C5C5FFC5C5C5FFC4C4C4FFC4C4C4FFC3C3C3FFC3C3C3FFCECECEFF
            E5E5E5FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF
            ECF7F7FFD6DBDBFFCFCFCFFFE3E3E3FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF
            E6E6E6FFE6E6E6FFE6E6E6FFF0F5F5FFF7FFFFFFDDE2E2FF959595FDFFFFFF01
            FFFFFF01FFFFFF01FFFFFF0187878797C0C2C2FFF8FFFFFFF8FEFEFFECECECFF
            ECECECFFECECECFFECECECFFECECECFFECECECFFEBEBEBFFEBEBEBFFEBEBEBFF
            E0E0E0FFDBDEDEFFF0FBFBFFEDF0F0FFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFF
            E6E6E6FFD0D0D0FFC9C9C9FFC9C9C9FFC9C9C9FFC8C8C8FFC8C8C8FFC7C7C7FF
            C7C7C7FFC7C7C7FFC6C6C6FFC6C6C6FFC5C5C5FFC5C5C5FFC5C5C5FFC4C4C4FF
            C9C9C9FFE2E2E2FFE7E7E7FFE7E7E7FFE7E7E7FFE6E6E6FFE6E7E7FFEBF6F6FF
            D3D7D7FFD4D4D4FFE5E5E5FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF
            E6E6E6FFE6E6E6FFE6E6E6FFF1F6F6FFF7FFFFFFDBE0E0FF939393F9FFFFFF01
            FFFFFF01FFFFFF01FFFFFF0187878795C0C3C3FFF8FFFFFFF8FEFEFFEDEDEDFF
            EDEDEDFFEDEDEDFFEDEDEDFFECECECFFECECECFFECECECFFECECECFFECECECFF
            ECECECFFE4E4E4FFDCDEDEFFEFFAFAFFEDF0F0FFEBEBEBFFEBEBEBFFE5E5E5FF
            CFCFCFFFCBCBCBFFCBCBCBFFCACACAFFCACACAFFCACACAFFC9C9C9FFC9C9C9FF
            C8C8C8FFC8C8C8FFC8C8C8FFC7C7C7FFC7C7C7FFC6C6C6FFC6C6C6FFC6C6C6FF
            C5C5C5FFC9C9C9FFE1E1E1FFE7E7E7FFE7E7E7FFE7E9E9FFEBF6F6FFD3D5D5FF
            DADADAFFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF
            E6E6E6FFE6E6E6FFE6E6E6FFF1F7F7FFF7FFFFFFD9DDDDFF939393F5FFFFFF01
            FFFFFF01FFFFFF01FFFFFF0187878793C0C3C3FFF8FFFFFFF9FEFEFFEEEEEEFF
            EDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFECECECFF
            ECECECFFECECECFFE7E7E7FFDDDEDEFFEFF9F9FFEEF1F1FFE3E3E3FFD0D0D0FF
            CDCDCDFFCDCDCDFFCCCCCCFFCCCCCCFFCCCCCCFFCBCBCBFFCBCBCBFFCACACAFF
            CACACAFFCACACAFFC9C9C9FFC9C9C9FFC8C8C8FFC8C8C8FFC7C7C7FFC7C7C7FF
            C7C7C7FFC6C6C6FFC9C9C9FFE0E0E0FFE9EBEBFFEBF5F5FFD3D5D5FFE0E0E0FF
            E7E7E7FFE7E7E7FFE7E7E7FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF
            E6E6E6FFE6E6E6FFE6E6E6FFF2F7F7FFF7FFFFFFD6DBDBFF929292F1FFFFFF01
            FFFFFF01FFFFFF01FFFFFF0187878797C0C3C3FFF8FFFFFFF9FEFEFFEEEEEEFF
            EEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFF
            EDEDEDFFEDEDEDFFECECECFFEAEAEAFFDFE0E0FFEAF0F0FFD9D9D9FFCFCFCFFF
            CFCFCFFFCECECEFFCECECEFFCDCDCDFFCDCDCDFFC6C6C6FFB5B5B5FFABABABFF
            A5A5A5FFAAAAAAFFB4B4B4FFC7C7C7FFCACACAFFC9C9C9FFC9C9C9FFC9C9C9FF
            C8C8C8FFC8C8C8FFC7C7C7FFD0D0D0FFE5EBEBFFD4D6D7FFE2E4E5FFE8E8E8FF
            E8E8E8FFE7E7E7FFE7E7E7FFE7E7E7FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF
            E6E6E6FFE6E6E6FFE6E6E6FFF2F8F8FFF7FFFFFFD4D9D9FF929292EFFFFFFF01
            FFFFFF01FFFFFF01FFFFFF018787879FC1C3C3FFF8FFFFFFF9FEFEFFEFEFEFFF
            EFEFEFFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFF
            EDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFE4E4E4FFC9C9C9FFE6E6E6FFDADADAFF
            D0D0D0FFD0D0D0FFCFCFCFFFC1C1C1FFA9A9A9FF9B9B9BFFA4A4A4FFAFAFAFFF
            B1B1B1FFACACACFFA0A0A0FF989898FFAAAAAAFFC0C0C0FFCACACAFFCACACAFF
            CACACAFFC9C9C9FFD0D0D0FFE1E1E1FFBCBCBCFFDDDEDEFFE9E9E9FFE8E8E8FF
            E8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF
            E6E6E6FFE6E6E6FFE6E6E6FFF2F9F9FFF7FFFFFFD3D7D7FF929292EBFFFFFF01
            FFFFFF01FFFFFF01FFFFFF01888888A5C2C4C4FFF8FFFFFFF9FEFEFFEFEFEFFF
            EFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEEEEEEFFEEEEEEFFEEEEEEFF
            EEEEEEFFEEEEEEFFEEEEEEFFE7E7E7FFD4D4D4FFCBCBCBFFBDBDBDFFE4E4E4FF
            D7D7D7FFCCCCCCFFAFAFAFFFA4A4A4FFC1C1C1FFDEDEDEFFEAEAEAFFECECECFF
            EBEBEBFFEBEBEBFFE8E8E8FFDBDBDBFFBEBEBEFF9F9F9FFFA6A6A6FFC5C5C5FF
            CBCBCBFFCCCCCCFFDFDFDFFFB5B5B5FFC2C2C2FFCACACAFFE2E2E2FFE9E9E9FF
            E9E9E9FFE9E9E9FFE9E9E9FFE8E8E8FFE8E8E8FFE6E6E6FFE6E6E6FFE6E6E6FF
            E6E6E6FFE6E6E6FFE6E6E6FFF3F9F9FFF7FFFFFFD3D7D7FF919191E7FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01898989ABC4C6C6FFF8FFFFFFF9FEFEFFF0F0F0FF
            F0F0F0FFF0F0F0FFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFF
            EFEFEFFFEEEEEEFFE8E8E8FFD6D6D6FFD5D5D5FFD4D4D4FFCECECEFFC2C2C2FF
            C9C9C9FFACACACFFCCCCCCFFE9E9E9FFEDEDEDFFECECECFFECECECFFECECECFF
            ECECECFFECECECFFECECECFFEBEBEBFFEBEBEBFFE5E5E5FFC5C5C5FFA1A1A1FF
            B2B2B2FFD1D1D1FFBBBBBBFFC5C5C5FFCBCBCBFFCBCBCBFFCCCCCCFFE3E3E3FF
            E9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE7E7E7FFE6E6E6FFE6E6E6FF
            E6E6E6FFE6E6E6FFE6E6E6FFF3F9F9FFF7FFFFFFD2D7D7FF919191E5FFFFFF01
            FFFFFF01FFFFFF01FFFFFF018A8A8AB1C6C8C8FFF8FFFFFFF9FDFDFFF0F0F0FF
            F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFFEFEFEFFF
            EFEFEFFFEAEAEAFFD8D8D8FFD6D6D6FFD6D6D6FFD5D5D5FFD1D1D1FFB5B5B5FF
            C6C6C6FFE9E9E9FFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFF
            EDEDEDFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFE6E6E6FF
            C1C1C1FFA3A3A3FFC3C3C3FFCDCDCDFFCCCCCCFFCCCCCCFFCCCCCCFFCECECEFF
            E5E5E5FFEAEAEAFFEAEAEAFFEAEAEAFFE9E9E9FFE8E8E8FFE6E6E6FFE6E6E6FF
            E6E6E6FFE6E6E6FFE6E6E6FFF3F9F9FFF7FFFFFFD2D6D6FF919191E1FFFFFF01
            FFFFFF01FFFFFF01FFFFFF018B8B8BB7C8CBCBFFF8FFFFFFF9FDFDFFF1F1F1FF
            F1F1F1FFF1F1F1FFF1F1F1FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF
            EDEDEDFFDBDBDBFFD8D8D8FFD8D8D8FFD7D7D7FFCACACAFFBDBDBDFFE1E1E1FF
            EEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEDEDEDFFEDEDEDFF
            EDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFECECECFFECECECFFECECECFFECECECFF
            ECECECFFDCDCDCFFACACACFFB8B8B8FFCECECEFFCDCDCDFFCDCDCDFFCDCDCDFF
            CFCFCFFFE7E7E7FFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFE7E7E7FFE6E6E6FF
            E6E6E6FFE6E6E6FFE6E6E6FFF3F9F9FFF7FFFFFFD2D6D6FF909090DFFFFFFF01
            FFFFFF01FFFFFF01FFFFFF018C8C8CBFC9CDCDFFF7FFFFFFF9FDFDFFF2F2F2FF
            F1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFEFEFEFFF
            DEDEDEFFDADADAFFDADADAFFD8D8D8FFC4C4C4FFD0D0D0FFEEEEEEFFEFEFEFFF
            EFEFEFFFEFEFEFFFEFEFEFFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFF
            EEEEEEFFEEEEEEFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFF
            ECECECFFECECECFFEAEAEAFFC3C3C3FFADADADFFCBCBCBFFCFCFCFFFCECECEFF
            CECECEFFD3D3D3FFE9E9E9FFEBEBEBFFEBEBEBFFEAEAEAFFE9E9E9FFE6E6E6FF
            E6E6E6FFE6E6E6FFE6E6E6FFF3F9F9FFF7FFFFFFD2D6D6FF909090DBFFFFFF01
            FFFFFF01FFFFFF01FFFFFF018D8D8DC5CBCFCFFFF7FFFFFFF9FDFDFFF2F2F2FF
            F2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF1F1F1FFF1F1F1FFF0F0F0FFE2E2E2FF
            DCDCDCFFDCDCDCFFD7D7D7FFC5C5C5FFE3E3E3FFF0F0F0FFF0F0F0FFF0F0F0FF
            F0F0F0FFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEEEEEEFF
            EEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEDEDEDFFEDEDEDFFEDEDEDFF
            EDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFDBDBDBFFAFAFAFFFC4C4C4FFD0D0D0FF
            CFCFCFFFCFCFCFFFD7D7D7FFEAEAEAFFEBEBEBFFEBEBEBFFEBEBEBFFE6E6E6FF
            E6E6E6FFE6E6E6FFE6E6E6FFF3F9F9FFF7FFFFFFD2D6D6FF909090D7FFFFFF01
            FFFFFF01FFFFFF01FFFFFF018E8E8ECBCDD1D1FFF7FFFFFFF9FCFCFFF3F3F3FF
            F3F3F3FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFE6E6E6FFDEDEDEFF
            DDDDDDFFD3D3D3FFCFCFCFFFEEEEEEFFF1F1F1FFF1F1F1FFF0F0F0FFF0F0F0FF
            F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFFEFEFEFFFEFEFEFFF
            EFEFEFFFEFEFEFFFEFEFEFFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFF
            EEEEEEFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEAEAEAFFC1C1C1FFB9B9B9FF
            D0D0D0FFD0D0D0FFD0D0D0FFDCDCDCFFECECECFFEBEBEBFFEBEBEBFFE9E9E9FF
            E6E6E6FFE6E6E6FFE6E6E6FFF2F8F8FFF7FFFFFFD2D6D6FF8F8F8FD5FFFFFF01
            FFFFFF01FFFFFF01FFFFFF018F8F8FD1CFD3D3FFF7FFFFFFF9FCFCFFF3F3F3FF
            F3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFEAEAEAFFE0E0E0FFDFDFDFFF
            CFCFCFFFDCDDDDFFF2F2F2FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FF
            F1F1F1FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF
            EFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEEEEEEFFEEEEEEFF
            EEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEDEDEDFFEDEDEDFFD8D8D8FF
            B4B4B4FFCCCCCCFFD1D1D1FFD1D1D1FFE1E1E1FFECECECFFECECECFFEBEBEBFF
            E6E6E6FFE6E6E6FFE6E6E6FFF2F8F8FFF7FFFFFFD2D6D6FF909090D7FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01909090D7D1D5D5FFF7FFFFFFF9FCFCFFF4F4F4FF
            F4F4F4FFF4F4F4FFF4F4F4FFF3F3F3FFEDEDEDFFE2E2E2FFDEDEDEFFD1D1D1FF
            E9EAEAFFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF1F1F1FF
            F1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF0F0F0FFF0F0F0FFF0F0F0FF
            F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFF
            EFEFEFFFEFEFEFFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFF
            E6E6E6FFBBBBBBFFC4C4C4FFD2D2D2FFD2D2D2FFE5E5E5FFECECECFFECECECFF
            E8E8E8FFE6E6E6FFE6E6E6FFF1F7F7FFF7FFFFFFD2D6D6FF919191DFFFFFFF01
            FFFFFF01FFFFFF01FFFFFF01919191DDD2D6D6FFF7FFFFFFF9FCFCFFF5F5F5FF
            F4F4F4FFF4F4F4FFF4F4F4FFF0F0F0FFE4E4E4FFDCDCDCFFD9D9D9FFF1F1F1FF
            F3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FF
            F2F2F2FFF2F2F2FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FF
            F1F1F1FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFF
            EFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEEEEEEFFEEEEEEFF
            EEEEEEFFEDEDEDFFCBCBCBFFBBBBBBFFD2D2D2FFD5D5D5FFE9E9E9FFEDEDEDFF
            EAEAEAFFE6E6E6FFE6E6E6FFF1F6F6FFF7FFFFFFD2D6D6FF919191E5FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01939393EFD3D8D8FFF7FFFFFFF9FCFCFFF5F5F5FF
            F5F5F5FFF5F5F5FFF2F2F2FFE6E6E6FFD9D9D9FFE3E3E3FFF4F4F4FFF4F4F4FF
            F4F4F4FFF4F4F4FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FF
            F2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF1F1F1FFF1F1F1FF
            F1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF
            F0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFF
            EFEFEFFFEEEEEEFFEEEEEEFFDEDEDEFFB9B9B9FFCECECEFFD8D8D8FFEBEBEBFF
            EDEDEDFFE6E6E6FFE6E6E6FFF0F5F5FFF7FFFFFFD2D6D6FF929292EDFFFFFF01
            FFFFFF01FFFFFF0187878707959595FFD6DADAFFF7FFFFFFF9FCFCFFF6F6F6FF
            F6F6F6FFF5F5F5FFE5E5E5FFDADBDBFFEEEEEEFFF5F5F5FFF5F5F5FFF4F4F4FF
            F4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF3F3F3FFF3F3F3FFF3F3F3FF
            F3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FF
            F2F2F2FFF2F2F2FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FF
            F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFF
            EFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEAEAEAFFC2C2C2FFC3C3C3FFDBDBDBFF
            EDEDEDFFE8E8E8FFE6E6E6FFF0F5F5FFF7FFFFFFD5DADAFF939393F5FFFFFF01
            FFFFFF01FFFFFF018787871B989898FFDADFDFFFF7FFFFFFF9FCFCFFF6F6F6FF
            F6F6F6FFE4E4E4FFE0E2E2FFF3F4F4FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FF
            F5F5F5FFF5F5F5FFF5F5F5FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FF
            F4F4F4FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF2F2F2FF
            F2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF1F1F1FFF1F1F1FFF1F1F1FF
            F1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF
            F0F0F0FFF0F0F0FFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFD6D6D6FFBABABAFF
            D7D7D7FFEBEBEBFFE6E6E6FFEFF4F4FFF7FFFFFFDBE0E0FF949494FBFFFFFF01
            FFFFFF01FFFFFF01878787279A9A9AFFE0E5E5FFF7FFFFFFF9FCFCFFF7F7F7FF
            E7E7E7FFEAEBEBFFF5F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FF
            F5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF4F4F4FF
            F4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF3F3F3FFF3F3F3FFF3F3F3FF
            F3F3F3FFF3F3F3FFF3F3F3FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FF
            F2F2F2FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF0F0F0FF
            F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFFE9E9E9FF
            C4C4C4FFD4D4D4FFE6E6E6FFEEF2F2FFF7FFFFFFE2E8E8FF959595FF87878705
            FFFFFF01FFFFFF01878787359C9C9CFFE6ECECFFF7FFFFFFF9FCFCFFF5F6F6FF
            F2F2F2FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFF6F6F6FFF6F6F6FF
            F6F6F6FFF6F6F6FFF6F6F6FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FF
            F5F5F5FFF5F5F5FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FF
            F3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF2F2F2FFF2F2F2FF
            F2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF1F1F1FFF1F1F1FFF1F1F1FF
            F1F1F1FFF1F1F1FFF1F1F1FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF
            F0F0F0FFD4D7D7FFE0E0E0FFEDF1F1FFF7FFFFFFE9F0F0FF969696FF8787870B
            FFFFFF01FFFFFF01878787419D9D9DFFEBF1F1FFF7FFFFFFF9FCFCFFF8F8F8FF
            F8F8F8FFF8F8F8FFF8F8F8FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FF
            F7F7F7FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF5F5F5FF
            F5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF4F4F4FFF4F4F4FF
            F4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FF
            F3F3F3FFF3F3F3FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FF
            F1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF0F0F0FFF0F0F0FF
            F0F0F0FFF0F0F0FFEBECECFFEDF0F0FFF7FFFFFFEFF7F7FF979797FF87878713
            FFFFFF01FFFFFF01878787379B9B9BFFE6EDEDFFF7FFFFFFFAFEFEFFF9F9F9FF
            F8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF7F7F7FFF7F7F7FF
            F7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FF
            F6F6F6FFF6F6F6FFF6F6F6FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FF
            F5F5F5FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FF
            F3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF2F2F2FFF2F2F2FF
            F2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FF
            F1F1F1FFF1F1F1FFF0F0F0FFF1F6F6FFF7FFFFFFECF3F3FF989898FF8787871B
            FFFFFF01FFFFFF0187878721969696FFD9DEDEFFF7FFFFFFFAFFFFFFFCFEFEFF
            FBFCFCFFFBFCFCFFFBFCFCFFFBFCFCFFFBFCFCFFFBFDFDFFFBFDFDFFFBFDFDFF
            FBFDFDFFFBFDFDFFFAFDFDFFF9FDFDFFF9FDFDFFF9FDFDFFF8FDFDFFF8FDFDFF
            F8FDFDFFF7FCFCFFF6FCFCFFF6FBFBFFF5FBFBFFF5FBFBFFF5FBFBFFF4FBFBFF
            F4FAFAFFF4FAFAFFF4FAFAFFF4FBFBFFF4FAFAFFF4FAFAFFF4FAFAFFF3F9F9FF
            F3F9F9FFF3F9F9FFF3F9F9FFF2F8F8FFF2F8F8FFF2F8F8FFF2F7F7FFF2F6F6FF
            F1F6F6FFF0F5F5FFF0F4F4FFEFF3F3FFEEF2F2FFEEF1F1FFEDF0F0FFECEFEFFF
            ECEEEEFFEBEDEDFFEDF1F1FFF6FDFDFFF7FFFFFFE3E9E9FF999999FF87878723
            FFFFFF01FFFFFF01FFFFFF018D8D8DE9C1C4C4FFF7FFFFFFFAFFFFFFFDFFFFFF
            FDFFFFFFFCFFFFFFFCFFFFFFFBFFFFFFFAFFFFFFF9FFFFFFF9FFFFFFF8FFFFFF
            F7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFF
            F7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFF
            F7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFF
            F7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFF
            F7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFF
            F7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFD7DCDCFF979797FF87878721
            FFFFFF01FFFFFF01FFFFFF0187878777989898FFB5B7B7FFC7C9C9FFC9CACAFF
            C4C6C6FFC1C3C3FFC0C2C2FFBFC2C2FFBFC1C1FFBEC0C0FFBDBFBFFFBDBFBFFF
            BCBEBEFFBCBEBEFFBBBCBCFFB9BBBBFFB8BABAFFB7B9B9FFB7B8B8FFB6B7B7FF
            B5B6B6FFB4B5B5FFB3B4B4FFB2B3B3FFB1B3B3FFB1B2B2FFB0B2B2FFB0B1B1FF
            B0B1B1FFAFB1B1FFAFB0B0FFAEAFAFFFAEAFAFFFAEAFAFFFADAFAFFFAFB1B1FF
            B1B2B2FFB3B4B4FFB5B7B7FFB9BABAFFBBBCBCFFBCBEBEFFBEC0C0FFBFC1C1FF
            C0C2C2FFC2C4C4FFC4C7C7FFC7CACAFFCACECEFFCDD1D1FFD0D4D4FFD2D7D7FF
            D5DADAFFD9DDDDFFDCE1E1FFDFE4E4FFDADFDFFFB1B1B1FF8B8B8BE387878705
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01878787478888887B8C8C8C878F8F8F97
            919191A5939393A39292929F9292929B929292979191918D8F8F8F858D8D8D7D
            8A8A8A758888886B8787876187878757878787518787874F8787874D8787874B
            878787498787874987878747878787458787874587878743878787418787873F
            8787873F8787873D8787873B8787873987878739878787378787873587878737
            8787873F878787458787874B87878753878787598787875F878787678989896D
            8B8B8B758C8C8C7B8E8E8E81909090879191918D919191939292929B949494A1
            969696AB989898BD999999CF9A9A9AD1969696CF898989A187878727FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01
            FFFFFF0100000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000}
        end
        object labelAppName: TLabel
          Left = 172
          Top = 8
          Width = 112
          Height = 30
          Caption = 'PopTrayU'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Arial Black'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object lblHomepage: TLabel
          Tag = 999
          Left = 129
          Top = 60
          Width = 198
          Height = 13
          Cursor = crHandPoint
          Caption = 'http://sourceforge.net/projects/poptrayu/'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = lblHomepageClick
          OnMouseEnter = lblHomepageMouseEnter
          OnMouseLeave = lblHomepageMouseLeave
        end
        object lblDerivative: TLabel
          Left = 363
          Top = 3
          Width = 131
          Height = 130
          Anchors = [akTop, akRight]
          Caption = 
            'PoptrayU is a derivative work of Renier Crause'#39's PopTray 3.2 and' +
            ' much of the code in this application is thus Copyright 2001-200' +
            '5 Renier Crause. Many thanks to Renier for developing PopTray, a' +
            'nd for the support he has provided.'
          Color = clBtnFace
          ParentColor = False
          Layout = tlBottom
          WordWrap = True
        end
        object lblTranslateCaption: TLabel
          Left = 0
          Top = 247
          Width = 328
          Height = 13
          Caption = 
            'Thanks to the following volunteers who helped translate this sof' +
            'tware:'
        end
        object Label12: TLabel
          Left = 0
          Top = 112
          Width = 35
          Height = 13
          Caption = 'Credits:'
        end
        object panAboutBottom: TPanel
          Left = 0
          Top = 336
          Width = 506
          Height = 32
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 0
          DesignSize = (
            506
            32)
          object btnHelp: TBitBtn
            Left = 8
            Top = 3
            Width = 65
            Height = 25
            Anchors = [akLeft, akTop, akBottom]
            Caption = '&Help'
            TabOrder = 0
            OnClick = btnHelpClick
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000130B0000130B00000000000000000000FFFFFF9C6963
              9C69639C69639C69639C69639C69639C69639C69639C69639C69639C69639C69
              639C6963FFFFFFFFFFFFFFFFFFA57573F7E3D6FFE7D6FFE7CEFFE3C6FFA0FFFF
              85FFFFDBB5FFD7ADFFD7ADFFD3A5FFD3A5AD796BFFFFFFFFFFFFFFFFFFA57573
              F7E7D6FFEBD6FFE7D6FFA8FF7B007B870787FF85FFFFDBB5FFD7ADFFD7ADFFD3
              A5AD796BFFFFFFFFFFFFFFFFFFA57573F7EBDEFFEFDEFFEBD6FF9AFF90109090
              1090F070F0FFDFBDFFDBB5FFD7ADFFD7ADAD796BFFFFFFFFFFFFFFFFFFA57573
              F7EFE7FFF3E7FFEFDEFFEBD6FF85FFFF85FFFFE3C6FFE3C6FFDFBDFFDBB5FFD7
              ADAD796BFFFFFFFFFFFFFFFFFFA57573F7EFEFFFF3E7FFF3E7FFEFDE87078787
              0787FFE7CEFFE3C6FFE3C6FFDFBDFFDBB5AD796BFFFFFFFFFFFFFFFFFFA57573
              F7F3EFFFF7EFFFF3E7FFF3E78A0A8A931393FF83FFFFE7CEFFE3C6FFE3C6FFDF
              BDAD796BFFFFFFFFFFFFFFFFFFAD7D73FFF7F7FFFBF7FFF7EFFFF3E7AA2AAA9E
              1E9E890989FF9AFFFFE7CEFFE3C6FFE3C6AD796BFFFFFFFFFFFFFFFFFFAD827B
              FFFBF7FFFBF7FFFBF7FFF7EFFFC5FF890989A121A1961696FFE7D6FFE7CEFFE3
              C6AD796BFFFFFFFFFFFFFFFFFFB58A7BFFFBFFFFFFFFFFFBF7FFFBF7F7DFCEFF
              AEFF8D0D8D901090FF9EFFFFE7D6FFE7CEAD796BFFFFFFFFFFFFFFFFFFBD927B
              FFFFFFFFFFFFFFFFFFC545C5830383AC2CAC901090840484FFE3CEFFDFD6FFCF
              C6AD796BFFFFFFFFFFFFFFFFFFCE9A84FFFFFFFFFFFFFFD5FF8808888F0F8F8F
              0F8F8B0B8BCE4ECEFFE7D6F7BAB5F7A29CAD796BFFFFFFFFFFFFFFFFFFD6A284
              FFFFFFFFFFFFFFFFFFFFEBFFE565E5E060E0F979F9FFF7EFB57D73B57D73B57D
              73B57D73FFFFFFFFFFFFFFFFFFDEAA8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFBF7FFFBF7B57D73FFD394DEA27BCE9A84FFFFFFFFFFFFFFFFFFDEAE8C
              FFFFFFFFFFFFFFFBFFFFFBFFF7F7F7F7F3F7F7F3EFEFEFEFB57D73E7B694D6A2
              84FFFFFFFFFFFFFFFFFFFFFFFFE7B28CDEAA84DEAA84DEAA84DEAA84DEAA84DE
              AA84DEAA84DEAA84B57D73DEAA84FFFFFFFFFFFFFFFFFFFFFFFF}
          end
          object btnCheckUpdate: TButton
            Left = 79
            Top = 3
            Width = 258
            Height = 25
            Anchors = [akLeft, akTop, akRight, akBottom]
            Caption = 'Check online for newer version'
            TabOrder = 1
            OnClick = btnCheckUpdateClick
          end
        end
        object lvCredits: TListView
          Left = 0
          Top = 128
          Width = 356
          Height = 116
          Anchors = [akLeft, akTop, akRight]
          Columns = <
            item
              Caption = 'Component'
              Width = 140
            end
            item
              Caption = 'Version'
            end
            item
              Caption = 'Author'
              Width = 150
            end>
          HideSelection = False
          Items.Data = {
            CD0100000700000000000000FFFFFFFFFFFFFFFF020000000000000007506F70
            5472617903332E320D52656E6965722043726175736500000000FFFFFFFFFFFF
            FFFF0200000000000000105452656745787072204C69627261727905302E3935
            3211416E6472657920562E20536F726F6B696E00000000FFFFFFFFFFFFFFFF02
            000000000000000C436F6F6C5472617949636F6E03312E300F54726F656C7320
            4A616B6F6273656E00000000FFFFFFFFFFFFFFFF02000000000000001B546E74
            2044656C70686920556E69636F646520436F6E74726F6C7305322E332E300D54
            726F7920576F6C6272696E6B00000000FFFFFFFFFFFFFFFF0200000000000000
            1054416374696F6E506F7075704D656E750B3138204D617920323030370F5374
            6576652054726566657468656E00000000FFFFFFFFFFFFFFFF02000000000000
            0004496E647906392E302E31382B43686164205A2E20486F77657220284B7564
            7A752920616E642074686520496E647920506974204372657700000000FFFFFF
            FFFFFFFFFF02000000000000000E48756D616E206F322049636F6E7305312E31
            2E350E4F6C69766572205363686F6C747AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF}
          ReadOnly = True
          RowSelect = True
          ParentColor = True
          TabOrder = 1
          TabStop = False
          ViewStyle = vsReport
          OnChange = lvVolunteers2Change
          OnResize = lvVolunteers2Resize
        end
        object lvVolunteers: TListView
          Left = 0
          Top = 264
          Width = 500
          Height = 68
          Anchors = [akLeft, akTop, akRight, akBottom]
          Columns = <
            item
              Caption = 'Language'
              Width = 140
            end
            item
              Caption = 'Translator'
              Width = 195
            end>
          HideSelection = False
          Items.Data = {
            F00600002300000000000000FFFFFFFFFFFFFFFF010000000000000009416672
            696B61616E730D52656E6965722043726175736500000000FFFFFFFFFFFFFFFF
            0100000000000000064172616269630D41686D6164204D6F7374616661000000
            00FFFFFFFFFFFFFFFF01000000000000000942756C67617269616E104E696B6F
            6C61692054737665746B6F7600000000FFFFFFFFFFFFFFFF0100000000000000
            07436174616C616E0E5861766965722053E16E6368657A00000000FFFFFFFFFF
            FFFFFF0100000000000000074368696E6573650A59616E4A756E2E4C69750000
            0000FFFFFFFFFFFFFFFF01000000000000000843726F617469616E154F7A7265
            6E204E656E6F205061766C696E6F76696300000000FFFFFFFFFFFFFFFF010000
            000000000005437A6563680C426F72697320466F726D616E00000000FFFFFFFF
            FFFFFFFF01000000000000000644616E6973680C4B61617265204A656E73656E
            00000000FFFFFFFFFFFFFFFF01000000000000000544757463681051756F7365
            676F2C205061747269636B00000000FFFFFFFFFFFFFFFF010000000000000008
            4573746F6E69616E0E546F6F6D617320546F6D6265726700000000FFFFFFFFFF
            FFFFFF01000000000000000746696E6E697368094A616E692052E47479000000
            00FFFFFFFFFFFFFFFF0100000000000000064672656E636807416E746F696E65
            00000000FFFFFFFFFFFFFFFF01000000000000000F4672656E6368202843616E
            616461290C4272756E6F204769726F757800000000FFFFFFFFFFFFFFFF010000
            00000000000847616C696369616E1B4A6F73E920416E746F6E696F2043696472
            652042617264656CE17300000000FFFFFFFFFFFFFFFF01000000000000000647
            65726D616E224D69636861656C20426161732C204A6F6368656E205761636B65
            727368617573657200000000FFFFFFFFFFFFFFFF010000000000000006486562
            7265770A416D697220416E61767900000000FFFFFFFFFFFFFFFF010000000000
            00000948756E67617269616E144A6F7A7365662054616D617320486572637A65
            6700000000FFFFFFFFFFFFFFFF0100000000000000074974616C69616E11416C
            69656E2070726F64756374696F6E7300000000FFFFFFFFFFFFFFFF0100000000
            0000000A4C69746875616E69616E124B65737475746973204365747665726761
            7300000000FFFFFFFFFFFFFFFF0100000000000000094E6F7277656769616E0D
            54686F6D6173204D656C62796500000000FFFFFFFFFFFFFFFF01000000000000
            0006506F6C6973681B4A6163656B204D696368656C2C204A616B75622047F372
            65636B6900000000FFFFFFFFFFFFFFFF01000000000000000A506F7274756775
            65736515416E74F36E696F204175677573746F204C6F70657300000000FFFFFF
            FFFFFFFFFF010000000000000013506F727475677565736520284272617A696C
            292344656E69732C20416C6578204D656E6465732C20526F647269676F205265
            7A656E646500000000FFFFFFFFFFFFFFFF010000000000000008526F6D616E69
            616E0B507569752054616E61736500000000FFFFFFFFFFFFFFFF010000000000
            0000075275737369616E21506176656C20412E204261756C696E2C20416C6578
            657920486F6D7574736B697900000000FFFFFFFFFFFFFFFF0100000000000000
            075365726269616E14416C656B73616E646172204B6F76616365766963000000
            00FFFFFFFFFFFFFFFF010000000000000006536C6F76616B19426F7269732046
            6F726D616E2C204B61726F6C20446F76616C00000000FFFFFFFFFFFFFFFF0100
            00000000000007536C6F76656E65065368696E636100000000FFFFFFFFFFFFFF
            FF0100000000000000075370616E697368204F726C616E646F2056616C69656E
            74652C204D616E75656C205065726961676F00000000FFFFFFFFFFFFFFFF0100
            0000000000000F5370616E69736820284368696C65290D566963746F72205061
            7261646100000000FFFFFFFFFFFFFFFF01000000000000001A5370616E697368
            202848697370616E696320416D65726963612915416C656A616E64726F204D75
            F16F7A20557269626500000000FFFFFFFFFFFFFFFF0100000000000000075377
            65646973681D4D617473204E796D616E2C2043687269737469616E2048656462
            65726700000000FFFFFFFFFFFFFFFF01000000000000000654616977616E084B
            6F6B6F3531363800000000FFFFFFFFFFFFFFFF0100000000000000075475726B
            697368184D6574696E204F7A6D656E65722C20457672656E2045464500000000
            FFFFFFFFFFFFFFFF010000000000000008556B72616E69616E10416C65786579
            20486F6D7574736B6979FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          ReadOnly = True
          RowSelect = True
          ParentColor = True
          TabOrder = 2
          TabStop = False
          ViewStyle = vsReport
          OnChange = lvVolunteers2Change
        end
      end
    end
  end
  object AntiFrze: TIdAntiFreeze
    OnlyWhenIdle = False
    Left = 442
    Top = 297
  end
  object TrayIcon: TCoolTrayIcon
    IconList = dm.imlTray
    CycleInterval = 1500
    Icon.Data = {
      0000010001001010040000000000280100001600000028000000100000002000
      0000010004000000000080000000000000000000000000000000000000000000
      000000008000008000000080800080000000800080008080000080808000C0C0
      C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
      000000000000000000000000000078FFFF888888880077FFFFF8888887007F7F
      FFFF888878007FF7FFFFF88788007FFF7FF7FF7888007FFFF77F778888007FF7
      7FFFF8778800787FFFFFFFFF7800077777777777770000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      0000800300000001000000010000000100000001000000010000000100000001
      00000001000080030000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00006F62
      6A6563742066726D506F70554D61696E3A205466726D506F70554D61696E0D0A
      20204C656674203D203630340D0A2020546F70203D203136350D0A2020576964
      7468203D203534390D0A2020486569676874203D203431320D0A202043617074
      696F6E203D2027506F705472617955270D0A2020436F6C6F72203D20636C4274
      6E466163650D0A2020436F6E73747261696E74732E4D696E486569676874203D
      203334300D0A2020436F6E73747261696E74732E4D696E5769647468203D2034
      31380D0A2020466F6E742E43686172736574203D2044454641554C545F434841
      525345540D0A2020466F6E742E436F6C6F72203D20636C57696E646F77546578
      740D0A2020466F6E742E486569676874203D202D31310D0A2020466F6E742E4E
      616D65203D20274D532053616E73205365726966270D0A2020466F6E742E5374
      796C65203D205B5D0D0A20204B657950726576696577203D20547275650D0A20
      204F6C644372656174654F72646572203D2046616C73650D0A20205363616C65
      64203D2046616C73650D0A202053637265656E536E6170203D20547275650D0A
      20204F6E436C6F7365203D20466F726D436C6F73650D0A20204F6E436C6F7365
      5175657279203D20466F726D436C6F736551756572790D0A20204F6E43726561
      7465203D20466F726D4372656174650D0A20204F6E44657374726F79203D2046
      6F726D44657374726F790D0A20204F6E4B65795072657373203D20466F726D4B
      657950726573730D0A20204F6E4B65795570203D20466F726D4B657955700D0A
      2020506978656C73506572496E6368203D2039360D0A20205465787448656967
      6874203D2031330D0A20206F626A6563742050616765436F6E74726F6C3A2054
      50616765436F6E74726F6C0D0A202020204C656674203D20300D0A2020202054
      6F70203D20300D0A202020205769647468203D203533330D0A20202020486569
      676874203D203337360D0A2020202041637469766550616765203D2074734F70
      74696F6E730D0A20202020416C69676E203D20616C436C69656E740D0A202020
      20466F6E742E43686172736574203D2044454641554C545F434841525345540D
      0A20202020466F6E742E436F6C6F72203D20636C57696E646F77546578740D0A
      20202020466F6E742E486569676874203D202D31310D0A20202020466F6E742E
      4E616D65203D2027417269616C270D0A20202020466F6E742E5374796C65203D
      205B5D0D0A202020204D756C74694C696E65203D20547275650D0A2020202050
      6172656E74466F6E74203D2046616C73650D0A202020205461624F7264657220
      3D20300D0A20202020546162506F736974696F6E203D20747052696768740D0A
      202020204F6E4368616E6765203D2050616765436F6E74726F6C4368616E6765
      0D0A202020204F6E4368616E67696E67203D2050616765436F6E74726F6C4368
      616E67696E670D0A202020206F626A6563742074734D61696C3A205454616253
      686565740D0A20202020202043617074696F6E203D20274D61696C270D0A2020
      20202020466F6E742E43686172736574203D2044454641554C545F4348415253
      45540D0A202020202020466F6E742E436F6C6F72203D20636C57696E646F7754
      6578740D0A202020202020466F6E742E486569676874203D202D31310D0A2020
      20202020466F6E742E4E616D65203D20274D532053616E73205365726966270D
      0A202020202020466F6E742E5374796C65203D205B5D0D0A2020202020205061
      72656E74466F6E74203D2046616C73650D0A2020202020206F626A6563742074
      61624D61696C3A2054546162436F6E74726F6C0D0A20202020202020204C6566
      74203D20330D0A2020202020202020546F70203D20300D0A2020202020202020
      5769647468203D203439380D0A2020202020202020486569676874203D203333
      350D0A2020202020202020416C69676E203D20616C436C69656E740D0A202020
      2020202020496D61676573203D20646D2E696D6C546162730D0A202020202020
      20205461624F72646572203D20300D0A20202020202020204F6E4368616E6765
      203D207461624D61696C4368616E67650D0A20202020202020204F6E4368616E
      67696E67203D207461624D61696C4368616E67696E670D0A2020202020202020
      4F6E4472616744726F70203D207461624472616744726F700D0A202020202020
      20204F6E447261674F766572203D207461624D61696C447261674F7665720D0A
      20202020202020204F6E4D6F757365446F776E203D20447261674D6F75736544
      6F776E0D0A202020202020202044657369676E53697A65203D20280D0A202020
      202020202020203439380D0A20202020202020202020333335290D0A20202020
      202020206F626A656374204D61696C546F6F6C4261723A2054416374696F6E54
      6F6F6C4261720D0A202020202020202020204C656674203D20340D0A20202020
      202020202020546F70203D20360D0A202020202020202020205769647468203D
      203439300D0A20202020202020202020486569676874203D2032390D0A202020
      20202020202020416374696F6E4D616E61676572203D20416374696F6E4D616E
      616765720D0A2020202020202020202043617074696F6E203D20274D61696C27
      0D0A20202020202020202020436F6C6F724D61702E486967686C69676874436F
      6C6F72203D20636C57686974650D0A20202020202020202020436F6C6F724D61
      702E42746E53656C6563746564436F6C6F72203D20636C42746E466163650D0A
      20202020202020202020436F6C6F724D61702E556E75736564436F6C6F72203D
      20636C57686974650D0A20202020202020202020466F6E742E43686172736574
      203D2044454641554C545F434841525345540D0A20202020202020202020466F
      6E742E436F6C6F72203D20636C57696E646F77546578740D0A20202020202020
      202020466F6E742E486569676874203D202D31310D0A20202020202020202020
      466F6E742E4E616D65203D20275461686F6D61270D0A20202020202020202020
      466F6E742E5374796C65203D205B5D0D0A20202020202020202020486F727A4D
      617267696E203D20340D0A20202020202020202020486F727A53657061726174
      6F72203D2046616C73650D0A20202020202020202020506172656E744261636B
      67726F756E64203D20547275650D0A20202020202020202020506172656E7446
      6F6E74203D2046616C73650D0A20202020202020202020506172656E7453686F
      7748696E74203D2046616C73650D0A20202020202020202020506F7075704D65
      6E75203D20646D2E6D6E75546F6F6C6261720D0A202020202020202020205368
      6F7748696E74203D20547275650D0A2020202020202020202053706163696E67
      203D20340D0A20202020202020202020566572744D617267696E203D20340D0A
      202020202020202020204F6E476574436F6E74726F6C436C617373203D204D61
      696C546F6F6C426172476574436F6E74726F6C436C6173730D0A202020202020
      2020656E640D0A20202020202020206F626A656374206C764D61696C3A205454
      6E744C697374566965770D0A202020202020202020204C656674203D20340D0A
      20202020202020202020546F70203D2033350D0A202020202020202020205769
      647468203D203439300D0A20202020202020202020486569676874203D203237
      370D0A20202020202020202020416C69676E203D20616C436C69656E740D0A20
      202020202020202020436F6C756D6E73203D203C0D0A20202020202020202020
      20206974656D0D0A202020202020202020202020202043617074696F6E203D20
      2746726F6D270D0A20202020202020202020202020204D696E5769647468203D
      2035300D0A20202020202020202020202020205769647468203D2038300D0A20
      2020202020202020202020656E640D0A2020202020202020202020206974656D
      0D0A202020202020202020202020202043617074696F6E203D2027546F270D0A
      20202020202020202020202020204D696E5769647468203D2031300D0A202020
      20202020202020202020205769647468203D2032300D0A202020202020202020
      202020656E640D0A2020202020202020202020206974656D0D0A202020202020
      202020202020202043617074696F6E203D20275375626A656374270D0A202020
      20202020202020202020204D696E5769647468203D2031300D0A202020202020
      20202020202020205769647468203D203137350D0A2020202020202020202020
      20656E640D0A2020202020202020202020206974656D0D0A2020202020202020
      20202020202043617074696F6E203D202744617465270D0A2020202020202020
      2020202020204D696E5769647468203D2031300D0A2020202020202020202020
      2020205769647468203D203131300D0A202020202020202020202020656E640D
      0A2020202020202020202020206974656D0D0A20202020202020202020202020
      20416C69676E6D656E74203D20746152696768744A7573746966790D0A202020
      202020202020202020202043617074696F6E203D202753697A65270D0A202020
      20202020202020202020204D696E5769647468203D2031300D0A202020202020
      20202020202020205769647468203D2035350D0A202020202020202020202020
      656E643E0D0A202020202020202020204869646553656C656374696F6E203D20
      46616C73650D0A202020202020202020204D756C746953656C656374203D2054
      7275650D0A20202020202020202020526561644F6E6C79203D20547275650D0A
      20202020202020202020526F7753656C656374203D20547275650D0A20202020
      202020202020506172656E7453686F7748696E74203D2046616C73650D0A2020
      202020202020202053686F7748696E74203D20547275650D0A20202020202020
      202020536D616C6C496D61676573203D20646D2E696D6C4C697374566965770D
      0A202020202020202020205461624F72646572203D20310D0A20202020202020
      202020566965775374796C65203D2076735265706F72740D0A20202020202020
      2020204F6E436F6C756D6E436C69636B203D206C764D61696C436F6C756D6E43
      6C69636B0D0A202020202020202020204F6E436F6C756D6E5269676874436C69
      636B203D206C764D61696C436F6C756D6E5269676874436C69636B0D0A202020
      202020202020204F6E436F6D70617265203D206C764D61696C436F6D70617265
      0D0A202020202020202020204F6E437573746F6D447261774974656D203D206C
      764D61696C437573746F6D447261774974656D0D0A202020202020202020204F
      6E44626C436C69636B203D206C764D61696C44626C436C69636B0D0A20202020
      2020202020204F6E496E666F546970203D206C764D61696C496E666F5469700D
      0A202020202020202020204F6E4B6579446F776E203D206C764D61696C4B6579
      446F776E0D0A202020202020202020204F6E4D6F757365446F776E203D206C76
      4D61696C4D6F757365446F776E0D0A202020202020202020204F6E4D6F757365
      4D6F7665203D204D6F7573654D6F766552657365740D0A202020202020202020
      204F6E53656C6563744974656D203D206C764D61696C53656C6563744974656D
      0D0A2020202020202020656E640D0A20202020202020206F626A656374205374
      617475734261723A20545374617475734261720D0A202020202020202020204C
      656674203D20340D0A20202020202020202020546F70203D203331320D0A2020
      20202020202020205769647468203D203439300D0A2020202020202020202048
      6569676874203D2031390D0A202020202020202020204175746F48696E74203D
      20547275650D0A2020202020202020202050616E656C73203D203C0D0A202020
      2020202020202020206974656D0D0A2020202020202020202020202020576964
      7468203D203237390D0A202020202020202020202020656E640D0A2020202020
      202020202020206974656D0D0A20202020202020202020202020205769647468
      203D2034340D0A202020202020202020202020656E640D0A2020202020202020
      202020206974656D0D0A20202020202020202020202020205769647468203D20
      34340D0A202020202020202020202020656E640D0A2020202020202020202020
      206974656D0D0A20202020202020202020202020205769647468203D2034340D
      0A202020202020202020202020656E640D0A2020202020202020202020206974
      656D0D0A2020202020202020202020202020416C69676E6D656E74203D207461
      43656E7465720D0A20202020202020202020202020205769647468203D203530
      0D0A202020202020202020202020656E643E0D0A202020202020202020205061
      72656E74466F6E74203D20547275650D0A20202020202020202020506172656E
      7453686F7748696E74203D2046616C73650D0A2020202020202020202053686F
      7748696E74203D20547275650D0A2020202020202020202053697A6547726970
      203D2046616C73650D0A2020202020202020202055736553797374656D466F6E
      74203D2046616C73650D0A202020202020202020204F6E4472617750616E656C
      203D205374617475734261724472617750616E656C0D0A202020202020202020
      204F6E526573697A65203D20537461747573426172526573697A650D0A202020
      2020202020656E640D0A20202020202020206F626A6563742070616E50726F67
      726573733A205450616E656C0D0A202020202020202020204C656674203D2032
      38390D0A20202020202020202020546F70203D203331340D0A20202020202020
      2020205769647468203D203230350D0A20202020202020202020486569676874
      203D2031380D0A20202020202020202020416E63686F7273203D205B616B5269
      6768742C20616B426F74746F6D5D0D0A20202020202020202020426576656C4F
      75746572203D2062764E6F6E650D0A20202020202020202020506172656E7442
      61636B67726F756E64203D2046616C73650D0A20202020202020202020546162
      4F72646572203D20330D0A2020202020202020202056697369626C65203D2046
      616C73650D0A2020202020202020202044657369676E53697A65203D20280D0A
      2020202020202020202020203230350D0A202020202020202020202020313829
      0D0A202020202020202020206F626A6563742062746E53746F703A2054537065
      6564427574746F6E0D0A2020202020202020202020204C656674203D20350D0A
      202020202020202020202020546F70203D20310D0A2020202020202020202020
      205769647468203D2031380D0A20202020202020202020202048656967687420
      3D2031370D0A202020202020202020202020437572736F72203D206372417272
      6F770D0A20202020202020202020202048696E74203D202753746F7020616E64
      20646973636F6E6E6563742E270D0A202020202020202020202020476C797068
      2E44617461203D207B0D0A202020202020202020202020202045363031303030
      3034323444453630313030303030303030303030303336303030303030323830
      303030303030433030303030303043303030303030303130300D0A2020202020
      2020202020202020203138303030303030303030304230303130303030313330
      4230303030313330423030303030303030303030303030303030303030433043
      3043304330433043300D0A202020202020202020202020202043304330433037
      3337334246373337334246373337334246373337334246373337334246413141
      314246433043304330433043304330433043304330433043300D0A2020202020
      2020202020202020204330423842384246353435344337303030304632303030
      3046323030303046323030303046323030303046323136313644424138413842
      4643304330433043300D0A202020202020202020202020202043304330433043
      3043303534353443373030303046343030303046463030303046463030303046
      463030303046463030303046463030303046463145314544360D0A2020202020
      2020202020202020204139413942464330433043303435343543393030303046
      3730303030464630303030464630303030464630303030464630303030464630
      3030304646303030300D0A202020202020202020202020202046463030303046
      4631373137444241314131424630303030443837413741464642374237464630
      303030464637413741464630303030464642374237464639380D0A2020202020
      2020202020202020203938464637413741464630303030464630303030463237
      3337334246303030304438374137414646443644364646303030304646393839
      3846463030303046460D0A202020202020202020202020202039383938464639
      3839384646393839384646393839384646314531454632373337334246303030
      304438414441444646363636364646323832384646433143310D0A2020202020
      2020202020202020204646323832384646433143314646414441444646393839
      3846464133413346463332333246323733373342463030303044383238323846
      4633323332464631340D0A202020202020202020202020202031344646333233
      3246463134313446463332333246463238323846463145314546463332333246
      463041304146323733373342463435343543393030303046370D0A2020202020
      2020202020202020203030303046463030303046463030303046463030303046
      4630303030464630303030464630303030464630303030464631373137444241
      3141314246433043300D0A202020202020202020202020202043303534353443
      3730303030463430303030464630303030464630303030464630303030464630
      303030464630303030464631453145443641394139424643300D0A2020202020
      2020202020202020204330433043304330433042384238424635343534433730
      3030304632303030304632303030304632303030304632303030304632313731
      3744424139413942460D0A202020202020202020202020202043304330433043
      3043304330433043304330433043304330433043304330373337334246373337
      334246373337334246373337334246373337334246413141310D0A2020202020
      20202020202020202042464330433043304330433043304330433043307D0D0A
      202020202020202020202020506172656E7453686F7748696E74203D2046616C
      73650D0A20202020202020202020202053686F7748696E74203D20547275650D
      0A2020202020202020202020204F6E436C69636B203D2062746E53746F70436C
      69636B0D0A20202020202020202020656E640D0A202020202020202020206F62
      6A6563742050726F67726573733A205450726F67726573734261720D0A202020
      2020202020202020204C656674203D2032370D0A202020202020202020202020
      546F70203D20310D0A2020202020202020202020205769647468203D20313738
      0D0A202020202020202020202020486569676874203D2031370D0A2020202020
      20202020202020416E63686F7273203D205B616B4C6566742C20616B546F702C
      20616B52696768745D0D0A2020202020202020202020205461624F7264657220
      3D20300D0A20202020202020202020656E640D0A2020202020202020656E640D
      0A202020202020656E640D0A2020202020206F626A6563742070616E4D61696C
      427574746F6E733A205450616E656C0D0A20202020202020204C656674203D20
      300D0A2020202020202020546F70203D203333350D0A20202020202020205769
      647468203D203530360D0A2020202020202020486569676874203D2033330D0A
      2020202020202020416C69676E203D20616C426F74746F6D0D0A202020202020
      2020426576656C4F75746572203D2062764E6F6E650D0A202020202020202054
      61624F72646572203D20310D0A20202020202020204F6E526573697A65203D20
      70616E4D61696C427574746F6E73526573697A650D0A20202020202020206F62
      6A6563742062746E537461727450726F6772616D3A205442697442746E0D0A20
      2020202020202020204C656674203D2031360D0A20202020202020202020546F
      70203D20340D0A202020202020202020205769647468203D203136310D0A2020
      2020202020202020486569676874203D2032350D0A2020202020202020202041
      6374696F6E203D20616374537461727450726F6772616D0D0A20202020202020
      20202043617074696F6E203D202752756E2026452D4D61696C20436C69656E74
      270D0A202020202020202020205461624F72646572203D20300D0A2020202020
      2020202020476C7970682E44617461203D207B0D0A2020202020202020202020
      2041363032303030303432344441363032303030303030303030303030333630
      3030303030323830303030303031303030303030303044303030303030303130
      300D0A2020202020202020202020203138303030303030303030303730303230
      3030303233304230303030323330423030303030303030303030303030303030
      3030304646464646463733364236420D0A202020202020202020202020374237
      3337333742373337333742373337333742373337333742373337333742373337
      33374237333733374237333733374237333733374237333733374237330D0A20
      2020202020202020202020373337423733373337423733373346464646464643
      3642444336413539434135443644364436463746374637454645374546453745
      37453745374445453744450D0A20202020202020202020202044364445444544
      3644454436434544364436434544364436433644364345433643454235414442
      353943394339433834373337424436434543454637463746370D0A2020202020
      2020202020202042354144423545374445453746374546454645464537454645
      3744454537453744454537444544364445443643454436443643454436443643
      454436433642440D0A2020202020202020202020204336394339433943433642
      4443363843374238344345434543454645464546454637463746374235414442
      3546374546454645464537454645464537454645370D0A202020202020202020
      2020204445453745374445453744454436444544364345443643454336434541
      3539434135434543364345434543364345384337423834434543454345464546
      4546450D0A202020202020202020202020464546454645454645374546423541
      4442354637454646374546453745464546453745464537444545374537444545
      37444544364445413539434135433642440D0A20202020202020202020202043
      3643454336434544364336443638433742383444364345434546454645464546
      454645464546454645464545374445453742444244424446464637463745460D
      0A20202020202020202020202045374546454645374546453745374537423541
      4442354336424443364436434544364436433644364436433644363843374238
      344436434543454645464546450D0A2020202020202020202020204645464546
      4546454645464546454645464545464537454642354144423541353943413541
      3539434135414441354144444544364445444544364445443643450D0A202020
      2020202020202020204436443643364436443643364436384337423834443643
      4543454645464546454645464546454645464546454546454645464244423542
      4444364345443645460D0A202020202020202020202020453745464537453745
      3743454336434541444135414444364345443644454436444544364345443644
      36434544363843374238344436434543454645464546450D0A20202020202020
      2020202020464546454645464546454645424442354235453745374537464546
      4546454637454646374637454645464546453745464436443644364135394341
      35443643450D0A20202020202020202020202044364436434544364445443644
      4538433742383444364345434546454645464546374546463742444235424446
      454645464546454645464546464637464646460D0A2020202020202020202020
      2046374637463745464637454645374546454645374546453744454537413539
      4341354436433644364445443644453843374238344436443644364537453745
      370D0A2020202020202020202020204235414442354637463746374645464546
      4546454645464546454645464546464637463746374637463746374546463745
      4645374546454645374546444544360D0A202020202020202020202020444539
      3439343934433642444336384338343843424442354244434543454345464546
      45464546454645464546454645464546454645464546454645464546460D0A20
      2020202020202020202020463746464646463746374637454646374637454645
      4645464537454645374445453745374537453742444235423537423733373346
      46464646464336433643360D0A20202020202020202020202043364336433643
      3643364336433643364336433643364336433643364336433643364336433643
      364336433643364336433643364336433643364336433643360D0A2020202020
      2020202020202043364336433643364345434543454646464646467D0D0A2020
      202020202020656E640D0A20202020202020206F626A6563742062746E436865
      636B416C6C3A205442697442746E0D0A202020202020202020204C656674203D
      203138340D0A20202020202020202020546F70203D20340D0A20202020202020
      2020205769647468203D203138330D0A20202020202020202020486569676874
      203D2032350D0A20202020202020202020416374696F6E203D20616374436865
      636B416C6C0D0A2020202020202020202043617074696F6E203D202743686563
      6B2026416C6C270D0A202020202020202020205461624F72646572203D20310D
      0A20202020202020202020476C7970682E44617461203D207B0D0A2020202020
      2020202020202033363033303030303432344433363033303030303030303030
      3030303336303030303030323830303030303031303030303030303130303030
      303030303130300D0A2020202020202020202020203138303030303030303030
      3030303033303030303133304230303030313330423030303030303030303030
      3030303030303030304336433343364336433343360D0A202020202020202020
      2020204336433343364336433343364336433343364336433343364336433343
      3636344531363435304344353043364333433643364333433643364333433643
      3643330D0A202020202020202020202020433643364333433643364333433643
      3643334336433643334336433643334336433643334336433643334336433643
      33433631424337314230303642303030300D0A20202020202020202020202037
      3130303030364230303030353130303030413930304336433343364336433343
      364336433343364336433343364336433343364336433343364336433343360D
      0A20202020202020202020202043364333433643364333433630303946303030
      3038363030303037373030314243373142363445313634433643334336433643
      334336433643334336433643330D0A2020202020202020202020204336433643
      3343364336433343364336433343364336433343364336433343364336433343
      3630364232303630303934303030303836303033324445333243360D0A202020
      2020202020202020204333433643364333433643364333433643364333433643
      3643334336433643334336433643334336433643334336433643334336433643
      3343364336433343360D0A202020202020202020202020374244373742303038
      4330303030413130303030373330303939443739394336433343364336433343
      36433643334336433643334336433643334336323844340D0A20202020202020
      2020202020323843364333433643364333433643364333433643364333433643
      3643334336333244453332303241453032303041353030303037353030433643
      33433643360D0A20202020202020202020202043334336433643334336433643
      3343364336433343363031414430313030354430303142433731424336433343
      364336433343363030354430303030394630300D0A2020202020202020202020
      2030303946303030424237304230304141303030303735303030303544303030
      3035443030433643334336433643334336323544313235303035443030303038
      450D0A2020202020202020202020203030303035443030333845343338433643
      3343364336433343363030354430303145434131453044423930443032414530
      3230303944303030303544303031370D0A202020202020202020202020433331
      3743364333433631414336314130303544303030303845303030303845303030
      30384530303030354430303637433336374336433343364336433343360D0A20
      2020202020202020202020303035443030304342383043303542313035303039
      3530303142433731424336433343363742443737423030354430303030374530
      30303038453030303038450D0A20202020202020202020202030303030384130
      3030303745303030303544303043364333433643364333433637314344373130
      303544303030344230303430303946303043364333433643360D0A2020202020
      2020202020202043334336433643334336433643334336324244373242303037
      4530303030384530303030373530304336433343364336433343364336433343
      364336433343360D0A2020202020202020202020204336433343363634453136
      3430303644303043364333433643364333433643364333433643364333433643
      3643334336354144373541303037453030303038450D0A202020202020202020
      2020203030303037353030433643334336433643334336433643334336433643
      3343364336433343364336433343364336433343364336433343364336433343
      3643360D0A202020202020202020202020433343364336433343364336433343
      3631424337314230303841303030303841303030334146303343364333433643
      36433343364336433343364336433343360D0A20202020202020202020202043
      3643334336433643334336433643334336433643334336433643334336433643
      334336433643334336333545313335303036443030303038453030303037440D
      0A20202020202020202020202030303731434437314336433343364336433343
      3643364333433643364333433643364333433643364333433643364333433631
      424337314230304139303030300D0A2020202020202020202020203943303030
      3038413030303039393030303038423030303038393030374244373742433643
      3343364336433343364336433343364336433343364336433343360D0A202020
      2020202020202020204336433343364336433343364336433343364336433343
      3635334146353330303938303030303943303030304139303031414336314143
      3643334336433643330D0A202020202020202020202020433643364333433643
      3643334336433643334336433643334336433643334336433643334336433643
      33433643364333433643364333433643364333433643360D0A20202020202020
      2020202020433343364336433343364336433343364336433343364336433343
      364336433343364336433343364336433343364336433343367D0D0A20202020
      20202020656E640D0A20202020202020206F626A6563742062746E546F547261
      793A205442697442746E0D0A202020202020202020204C656674203D20333734
      0D0A20202020202020202020546F70203D20340D0A2020202020202020202057
      69647468203D2039350D0A20202020202020202020486569676874203D203235
      0D0A20202020202020202020416374696F6E203D20616374546F547261790D0A
      2020202020202020202043617074696F6E203D2027546F202654726179270D0A
      202020202020202020205461624F72646572203D20320D0A2020202020202020
      2020476C7970682E44617461203D207B0D0A2020202020202020202020203336
      3033303030303432344433363033303030303030303030303030333630303030
      3030323830303030303031303030303030303130303030303030303130300D0A
      2020202020202020202020203138303030303030303030303030303330303030
      3233304230303030323330423030303030303030303030303030303030303030
      4336433343364336433343360D0A202020202020202020202020433643334336
      4336433343364336433343364336433343364336433343364336433343364336
      43334336433643334336433643334336433643334336433643330D0A20202020
      2020202020202020433643364333433643364333433643364333433643364333
      4336433643334336433643334336433643334336433643334336433643334336
      43364333433643360D0A20202020202020202020202043334336433643334336
      4336433343364336433343364336433343364336433343364336433343364336
      433343364336433343364336433343364336433343360D0A2020202020202020
      2020202043364333433643364333433643364333433643364333433643364333
      4336343034303430303030303030433643334336433643334336433643334336
      433643330D0A2020202020202020202020204336433643334336433643334336
      4336433343364336433343364336433343364336433343364336433343364336
      4333433643364333433635303530353042310D0A202020202020202020202020
      4230303034303430343030303030303043364333433643364333433643364333
      4336433643334336433643334336433643334336433643334336433643334336
      0D0A202020202020202020202020433643334336433643334336433643334336
      3530353035304343434430304231423030304231423030303430343034303030
      30303030433643334336433643330D0A20202020202020202020202043364336
      4333433643364333433643364333433643364333433643364333433643364333
      433643364333433635303530353043434344303043434344303043430D0A2020
      2020202020202020202043443030423142303030423142303030343034303430
      3030303030304336433343364336433343364336433343364336433343364336
      433343364336433343360D0A2020202020202020202020204336433343363530
      3530353045364538303045364538303043434344303043434344303043434344
      3030423142303030423142303030343034303430303030300D0A202020202020
      2020202020203030433643334336433643334336433643334336433643334336
      4336433343363633363036334536453830304536453830304536453830304536
      4538303043430D0A202020202020202020202020434430304343434430304343
      4344303042314230303042314230303034303430343030303030303043364333
      43364336433343364336433343363633363036330D0A20202020202020202020
      2020363336303633363035443630363035443630463246333030453645383030
      4536453830304343434430304343434430303530353035303530353035303530
      35300D0A20202020202020202020202035303430343034304336433343364336
      4333433643364333433643364333433643364333433643364333433636303544
      363046324633303046324633303045360D0A2020202020202020202020204538
      3030453645383030434343443030363336303633303030303030433643334336
      4336433343364336433343364336433343364336433343364336433343360D0A
      2020202020202020202020204336433343364336433343363630354436304643
      4644303046324633303046324633303045364538303045364538303036333630
      3633303030303030433643330D0A202020202020202020202020433643364333
      4336433643334336433643334336433643334336433643334336433643334336
      43364333433637453737374546434644303046434644303046320D0A20202020
      2020202020202020463330304632463330304536453830303630354436303030
      3030303043364333433643364333433643364333433643364333433643364333
      43364336433343360D0A20202020202020202020202043364333433643364333
      4336374537373745464346443030464346443030464346443030463246333030
      463246333030363035443630303030303030433643330D0A2020202020202020
      2020202043364336433343364336433343364336433343364336433343364336
      4333433643364333433643364333433637453737374537453737374537453737
      374537450D0A2020202020202020202020203737374537453737374537453737
      3745374537373745433643334336433643334336433643334336433643334336
      4336433343364336433343364336433343360D0A202020202020202020202020
      4336433343364336433343364336433343364336433343364336433343364336
      4333433643364333433643364333433643364333433643364333433643364333
      0D0A202020202020202020202020433643364333433643364333433643364333
      4336433643334336433643334336433643334336433643334336433643334336
      43364333433643364333433643360D0A20202020202020202020202043334336
      4336433343364336433343364336433343364336433343364336433343364336
      433343364336433343364336433343367D0D0A2020202020202020656E640D0A
      202020202020656E640D0A2020202020206F626A6563742070616E4D61696C4C
      6566745370616365723A205450616E656C0D0A20202020202020204C65667420
      3D20300D0A2020202020202020546F70203D20300D0A20202020202020205769
      647468203D20330D0A2020202020202020486569676874203D203333350D0A20
      20202020202020416C69676E203D20616C4C6566740D0A202020202020202042
      6576656C4F75746572203D2062764E6F6E650D0A20202020202020205461624F
      72646572203D20320D0A202020202020656E640D0A2020202020206F626A6563
      742070616E4D61696C52696768745370616365723A205450616E656C0D0A2020
      2020202020204C656674203D203530310D0A2020202020202020546F70203D20
      300D0A20202020202020205769647468203D20350D0A20202020202020204865
      69676874203D203333350D0A2020202020202020416C69676E203D20616C5269
      6768740D0A2020202020202020426576656C4F75746572203D2062764E6F6E65
      0D0A20202020202020205461624F72646572203D20330D0A202020202020656E
      640D0A20202020656E640D0A202020206F626A6563742074734163636F756E74
      733A205454616253686565740D0A20202020202043617074696F6E203D202741
      63636F756E7473270D0A202020202020466F6E742E43686172736574203D2044
      454641554C545F434841525345540D0A202020202020466F6E742E436F6C6F72
      203D20636C57696E646F77546578740D0A202020202020466F6E742E48656967
      6874203D202D31310D0A202020202020466F6E742E4E616D65203D20274D5320
      53616E73205365726966270D0A202020202020466F6E742E5374796C65203D20
      5B5D0D0A202020202020496D616765496E646578203D20340D0A202020202020
      506172656E74466F6E74203D2046616C73650D0A2020202020206F626A656374
      2070616E4163636F756E74733A205450616E656C0D0A20202020202020204C65
      6674203D20300D0A2020202020202020546F70203D20300D0A20202020202020
      205769647468203D203530360D0A2020202020202020486569676874203D2033
      36380D0A2020202020202020416C69676E203D20616C436C69656E740D0A2020
      202020202020426576656C4F75746572203D2062764E6F6E650D0A2020202020
      202020426F726465725769647468203D20340D0A20202020202020205461624F
      72646572203D20300D0A20202020202020206F626A656374207461624163636F
      756E74733A2054546162436F6E74726F6C0D0A202020202020202020204C6566
      74203D20340D0A20202020202020202020546F70203D2033350D0A2020202020
      20202020205769647468203D203439380D0A2020202020202020202048656967
      6874203D203330300D0A20202020202020202020416C69676E203D20616C436C
      69656E740D0A20202020202020202020496D61676573203D20646D2E696D6C54
      6162730D0A202020202020202020204D756C74694C696E65203D20547275650D
      0A202020202020202020205461624F72646572203D20300D0A20202020202020
      2020204F6E4368616E6765203D207461624163636F756E74734368616E67650D
      0A202020202020202020204F6E4368616E67696E67203D207461624163636F75
      6E74734368616E67696E670D0A202020202020202020204F6E4472616744726F
      70203D207461624472616744726F700D0A202020202020202020204F6E447261
      674F766572203D207461624D61696C447261674F7665720D0A20202020202020
      2020204F6E4D6F757365446F776E203D20447261674D6F757365446F776E0D0A
      202020202020202020206F626A656374205363726F6C6C426F78323A20545363
      726F6C6C426F780D0A2020202020202020202020204C656674203D20340D0A20
      2020202020202020202020546F70203D20360D0A202020202020202020202020
      5769647468203D203439300D0A20202020202020202020202048656967687420
      3D203239300D0A202020202020202020202020416C69676E203D20616C436C69
      656E740D0A202020202020202020202020426576656C4564676573203D205B5D
      0D0A202020202020202020202020426576656C496E6E6572203D2062764E6F6E
      650D0A202020202020202020202020426576656C4F75746572203D2062764E6F
      6E650D0A202020202020202020202020426F726465725374796C65203D206273
      4E6F6E650D0A202020202020202020202020506172656E744261636B67726F75
      6E64203D20547275650D0A2020202020202020202020205461624F7264657220
      3D20300D0A2020202020202020202020206F626A6563742070616E5365727665
      723A205450616E656C0D0A20202020202020202020202020204C656674203D20
      300D0A2020202020202020202020202020546F70203D20300D0A202020202020
      20202020202020205769647468203D203337370D0A2020202020202020202020
      202020486569676874203D203235370D0A202020202020202020202020202042
      6576656C4F75746572203D2062764E6F6E650D0A202020202020202020202020
      20205461624F72646572203D20300D0A20202020202020202020202020206F62
      6A656374204C6162656C313A20544C6162656C0D0A2020202020202020202020
      20202020204C656674203D2037310D0A20202020202020202020202020202020
      546F70203D2036300D0A20202020202020202020202020202020576964746820
      3D2033340D0A20202020202020202020202020202020486569676874203D2031
      330D0A20202020202020202020202020202020416C69676E6D656E74203D2074
      6152696768744A7573746966790D0A2020202020202020202020202020202043
      617074696F6E203D2027265365727665723A270D0A2020202020202020202020
      2020202020466F637573436F6E74726F6C203D2065645365727665720D0A2020
      202020202020202020202020656E640D0A20202020202020202020202020206F
      626A656374204C6162656C323A20544C6162656C0D0A20202020202020202020
      2020202020204C656674203D2037360D0A202020202020202020202020202020
      20546F70203D203130380D0A2020202020202020202020202020202057696474
      68203D2032390D0A20202020202020202020202020202020486569676874203D
      2031330D0A20202020202020202020202020202020416C69676E6D656E74203D
      20746152696768744A7573746966790D0A202020202020202020202020202020
      2043617074696F6E203D2027264C6F67696E3A270D0A20202020202020202020
      202020202020466F637573436F6E74726F6C203D2065644C6F67696E0D0A2020
      202020202020202020202020656E640D0A20202020202020202020202020206F
      626A656374204C6162656C333A20544C6162656C0D0A20202020202020202020
      2020202020204C656674203D2035360D0A202020202020202020202020202020
      20546F70203D203133320D0A2020202020202020202020202020202057696474
      68203D2034390D0A20202020202020202020202020202020486569676874203D
      2031330D0A20202020202020202020202020202020416C69676E6D656E74203D
      20746152696768744A7573746966790D0A202020202020202020202020202020
      2043617074696F6E203D20275061737326776F72643A270D0A20202020202020
      202020202020202020466F637573436F6E74726F6C203D20656450617373776F
      72640D0A2020202020202020202020202020656E640D0A202020202020202020
      20202020206F626A656374204C6162656C343A20544C6162656C0D0A20202020
      2020202020202020202020204C656674203D2037340D0A202020202020202020
      20202020202020546F70203D2033360D0A202020202020202020202020202020
      205769647468203D2033310D0A20202020202020202020202020202020486569
      676874203D2031330D0A20202020202020202020202020202020416C69676E6D
      656E74203D20746152696768744A7573746966790D0A20202020202020202020
      20202020202043617074696F6E203D2027264E616D653A270D0A202020202020
      20202020202020202020466F637573436F6E74726F6C203D2065644E616D650D
      0A2020202020202020202020202020656E640D0A202020202020202020202020
      20206F626A656374204C6162656C353A20544C6162656C0D0A20202020202020
      2020202020202020204C656674203D2037310D0A202020202020202020202020
      20202020546F70203D203230350D0A2020202020202020202020202020202057
      69647468203D2033340D0A202020202020202020202020202020204865696768
      74203D2031330D0A20202020202020202020202020202020416C69676E6D656E
      74203D20746152696768744A7573746966790D0A202020202020202020202020
      2020202043617074696F6E203D2027536F26756E643A270D0A20202020202020
      202020202020202020466F637573436F6E74726F6C203D206564536F756E640D
      0A2020202020202020202020202020656E640D0A202020202020202020202020
      20206F626A656374204C6162656C31343A20544C6162656C0D0A202020202020
      202020202020202020204C656674203D2037380D0A2020202020202020202020
      2020202020546F70203D203135360D0A20202020202020202020202020202020
      5769647468203D2032370D0A2020202020202020202020202020202048656967
      6874203D2031330D0A20202020202020202020202020202020416C69676E6D65
      6E74203D20746152696768744A7573746966790D0A2020202020202020202020
      202020202043617074696F6E203D202726436F6C6F723A270D0A202020202020
      20202020202020202020466F637573436F6E74726F6C203D20636F6C4163636F
      756E740D0A2020202020202020202020202020656E640D0A2020202020202020
      2020202020206F626A6563742062746E4564536F756E643A2054537065656442
      7574746F6E0D0A202020202020202020202020202020204C656674203D203237
      340D0A20202020202020202020202020202020546F70203D203230300D0A2020
      20202020202020202020202020205769647468203D2032310D0A202020202020
      20202020202020202020486569676874203D2032330D0A202020202020202020
      20202020202020476C7970682E44617461203D207B0D0A202020202020202020
      2020202020202020203936303030303030343234443936303030303030303030
      3030303030373630303030303032383030303030303041303030303030303430
      3030303030303130300D0A202020202020202020202020202020202020303430
      3030303030303030303230303030303030303030303030303030303030303030
      30313030303030303030303030303030303030303030303030464646460D0A20
      2020202020202020202020202020202020464630303030303030303030303030
      3030303030303030303030303030303030303030303030303030303030303030
      30303030303030303030303030303030300D0A20202020202020202020202020
      2020202020303030303030303030303030303030303030303030303030303030
      3030303030303030303030303030303030303030303030303031313131313131
      31313130300D0A20202020202020202020202020202020202030303030303031
      3130303131303030303030303030303131303031313030303030303030313131
      313131313131313030303030307D0D0A20202020202020202020202020202020
      4F6E436C69636B203D2062746E4564536F756E64436C69636B0D0A2020202020
      202020202020202020656E640D0A20202020202020202020202020206F626A65
      63742062746E4163636F756E74536F756E64546573743A205453706565644275
      74746F6E0D0A202020202020202020202020202020204C656674203D20323939
      0D0A20202020202020202020202020202020546F70203D203230300D0A202020
      202020202020202020202020205769647468203D2036350D0A20202020202020
      202020202020202020486569676874203D2032330D0A20202020202020202020
      20202020202048696E74203D2027546573742074686520736F756E642066696C
      65270D0A2020202020202020202020202020202043617074696F6E203D202754
      657374270D0A20202020202020202020202020202020476C7970682E44617461
      203D207B0D0A2020202020202020202020202020202020204636303030303030
      3432344446363030303030303030303030303030373630303030303032383030
      3030303031303030303030303130303030303030303130300D0A202020202020
      2020202020202020202020203034303030303030303030303830303030303030
      3030303030303030303030303030303031303030303030303130303030303030
      3030303030303030303030300D0A202020202020202020202020202020202020
      4246303030304246303030303030424642463030424630303030303042463030
      4246303042464246303030304330433043303030383038303830303030303030
      0D0A202020202020202020202020202020202020464630303030464630303030
      3030464646463030464630303030303046463030464630304646464630303030
      46464646464630303737373737373737373737370D0A20202020202020202020
      2020202020202020373737373737373830303038373737373737373737373830
      3030303038373737373737373737383030303030303737373737373737373738
      30303038303737370D0A20202020202020202020202020202020202037373737
      3737373737373737303737303737373737373737373737373037373730373737
      373737373737373730373737303737373737373737373737303737370D0A2020
      2020202020202020202020202020202030373737373737373737373730373737
      3037373737373737373737373037373038373737373737373737373730303030
      373737373737373737373737303030370D0A2020202020202020202020202020
      2020202037373737373737373737373730303737373737373737373737373737
      3038373737373737373737373737373730373737373737377D0D0A2020202020
      2020202020202020202020506172656E7453686F7748696E74203D2046616C73
      650D0A2020202020202020202020202020202053686F7748696E74203D205472
      75650D0A202020202020202020202020202020204F6E436C69636B203D206274
      6E4163636F756E74536F756E6454657374436C69636B0D0A2020202020202020
      202020202020656E640D0A20202020202020202020202020206F626A65637420
      4C6162656C31393A20544C6162656C0D0A202020202020202020202020202020
      204C656674203D2033310D0A20202020202020202020202020202020546F7020
      3D203138310D0A202020202020202020202020202020205769647468203D2037
      340D0A20202020202020202020202020202020486569676874203D2031330D0A
      20202020202020202020202020202020416C69676E6D656E74203D2074615269
      6768744A7573746966790D0A2020202020202020202020202020202043617074
      696F6E203D202726452D4D61696C2050726F6772616D3A270D0A202020202020
      20202020202020202020466F637573436F6E74726F6C203D2065644163636F75
      6E7450726F6772616D0D0A2020202020202020202020202020656E640D0A2020
      2020202020202020202020206F626A6563742062746E45644163636F756E7450
      726F6772616D3A20545370656564427574746F6E0D0A20202020202020202020
      2020202020204C656674203D203237340D0A2020202020202020202020202020
      2020546F70203D203137360D0A20202020202020202020202020202020576964
      7468203D2032310D0A2020202020202020202020202020202048656967687420
      3D2032330D0A20202020202020202020202020202020476C7970682E44617461
      203D207B0D0A2020202020202020202020202020202020203936303030303030
      3432344439363030303030303030303030303030373630303030303032383030
      3030303030413030303030303034303030303030303130300D0A202020202020
      2020202020202020202020203034303030303030303030303230303030303030
      3030303030303030303030303030303031303030303030303030303030303030
      3030303030303030464646460D0A202020202020202020202020202020202020
      4646303030303030303030303030303030303030303030303030303030303030
      3030303030303030303030303030303030303030303030303030303030303030
      0D0A202020202020202020202020202020202020303030303030303030303030
      3030303030303030303030303030303030303030303030303030303030303030
      30303030303030303131313131313131313130300D0A20202020202020202020
      2020202020202020303030303030313130303131303030303030303030303131
      303031313030303030303030313131313131313131313030303030307D0D0A20
      2020202020202020202020202020204F6E436C69636B203D2062746E45644163
      636F756E7450726F6772616D436C69636B0D0A20202020202020202020202020
      20656E640D0A20202020202020202020202020206F626A6563742062746E4163
      636F756E7450726F6772616D546573743A20545370656564427574746F6E0D0A
      202020202020202020202020202020204C656674203D203239390D0A20202020
      202020202020202020202020546F70203D203137360D0A202020202020202020
      202020202020205769647468203D2036350D0A20202020202020202020202020
      202020486569676874203D2032330D0A20202020202020202020202020202020
      48696E74203D20275465737420746F2072756E2074686520652D6D61696C2070
      726F6772616D270D0A2020202020202020202020202020202043617074696F6E
      203D202754657374270D0A20202020202020202020202020202020506172656E
      7453686F7748696E74203D2046616C73650D0A20202020202020202020202020
      20202053686F7748696E74203D20547275650D0A202020202020202020202020
      202020204F6E436C69636B203D2062746E4163636F756E7450726F6772616D54
      657374436C69636B0D0A2020202020202020202020202020656E640D0A202020
      20202020202020202020206F626A656374204C6162656C363A20544C6162656C
      0D0A202020202020202020202020202020204C656674203D2036330D0A202020
      20202020202020202020202020546F70203D2038340D0A202020202020202020
      202020202020205769647468203D2034320D0A20202020202020202020202020
      202020486569676874203D2031330D0A20202020202020202020202020202020
      416C69676E6D656E74203D20746152696768744A7573746966790D0A20202020
      20202020202020202020202043617074696F6E203D20272650726F746F636F6C
      3A270D0A20202020202020202020202020202020466F637573436F6E74726F6C
      203D20636D6250726F746F636F6C0D0A2020202020202020202020202020656E
      640D0A20202020202020202020202020206F626A656374204C6162656C373A20
      544C6162656C0D0A202020202020202020202020202020204C656674203D2032
      35320D0A20202020202020202020202020202020546F70203D2038340D0A2020
      20202020202020202020202020205769647468203D2032320D0A202020202020
      20202020202020202020486569676874203D2031330D0A202020202020202020
      20202020202020416C69676E6D656E74203D20746152696768744A7573746966
      790D0A2020202020202020202020202020202043617074696F6E203D20275026
      6F72743A270D0A20202020202020202020202020202020466F637573436F6E74
      726F6C203D206564506F72740D0A2020202020202020202020202020656E640D
      0A20202020202020202020202020206F626A6563742065644C6F67696E3A2054
      456469740D0A202020202020202020202020202020204C656674203D20313038
      0D0A20202020202020202020202020202020546F70203D203130340D0A202020
      202020202020202020202020205769647468203D203136350D0A202020202020
      20202020202020202020486569676874203D2032310D0A202020202020202020
      20202020202020436F6C6F72203D20636C42746E466163650D0A202020202020
      20202020202020202020456E61626C6564203D2046616C73650D0A2020202020
      20202020202020202020205461624F72646572203D20340D0A20202020202020
      2020202020202020204F6E4368616E6765203D2065644163634368616E67650D
      0A2020202020202020202020202020656E640D0A202020202020202020202020
      20206F626A65637420656450617373776F72643A2054456469740D0A20202020
      2020202020202020202020204C656674203D203130380D0A2020202020202020
      2020202020202020546F70203D203132380D0A20202020202020202020202020
      2020205769647468203D203130390D0A20202020202020202020202020202020
      486569676874203D2032310D0A20202020202020202020202020202020436F6C
      6F72203D20636C42746E466163650D0A20202020202020202020202020202020
      456E61626C6564203D2046616C73650D0A202020202020202020202020202020
      2050617373776F726443686172203D20272A270D0A2020202020202020202020
      20202020205461624F72646572203D20350D0A20202020202020202020202020
      2020204F6E4368616E6765203D2065644163634368616E67650D0A2020202020
      202020202020202020656E640D0A20202020202020202020202020206F626A65
      63742065644E616D653A2054456469740D0A2020202020202020202020202020
      20204C656674203D203130380D0A20202020202020202020202020202020546F
      70203D2033320D0A202020202020202020202020202020205769647468203D20
      3130390D0A20202020202020202020202020202020486569676874203D203231
      0D0A20202020202020202020202020202020436F6C6F72203D20636C42746E46
      6163650D0A20202020202020202020202020202020456E61626C6564203D2046
      616C73650D0A202020202020202020202020202020205461624F72646572203D
      20300D0A202020202020202020202020202020204F6E4368616E6765203D2065
      644163634368616E67650D0A2020202020202020202020202020656E640D0A20
      202020202020202020202020206F626A6563742063686B416363456E61626C65
      643A2054436865636B426F780D0A202020202020202020202020202020204C65
      6674203D2036380D0A20202020202020202020202020202020546F70203D2038
      0D0A202020202020202020202020202020205769647468203D203132350D0A20
      202020202020202020202020202020486569676874203D2031370D0A20202020
      20202020202020202020202043617074696F6E203D2027456E6126626C656427
      0D0A20202020202020202020202020202020456E61626C6564203D2046616C73
      650D0A202020202020202020202020202020205461624F72646572203D20390D
      0A202020202020202020202020202020204F6E436C69636B203D206564416363
      4368616E67650D0A2020202020202020202020202020656E640D0A2020202020
      2020202020202020206F626A65637420636F6C4163636F756E743A2054436F6C
      6F72426F780D0A202020202020202020202020202020204C656674203D203130
      380D0A20202020202020202020202020202020546F70203D203135320D0A2020
      20202020202020202020202020205769647468203D203131330D0A2020202020
      2020202020202020202020486569676874203D2032320D0A2020202020202020
      20202020202020205374796C65203D205B63625374616E64617264436F6C6F72
      732C206362457874656E646564436F6C6F72732C2063625072657474794E616D
      65735D0D0A20202020202020202020202020202020436F6C6F72203D20636C42
      746E466163650D0A20202020202020202020202020202020456E61626C656420
      3D2046616C73650D0A202020202020202020202020202020204974656D486569
      676874203D2031360D0A202020202020202020202020202020205461624F7264
      6572203D20360D0A202020202020202020202020202020204F6E4368616E6765
      203D2065644163634368616E67650D0A2020202020202020202020202020656E
      640D0A20202020202020202020202020206F626A6563742070616E496E746572
      76616C4163636F756E743A205450616E656C0D0A202020202020202020202020
      202020204C656674203D20340D0A20202020202020202020202020202020546F
      70203D203232340D0A202020202020202020202020202020205769647468203D
      203338390D0A20202020202020202020202020202020486569676874203D2032
      390D0A20202020202020202020202020202020426576656C4F75746572203D20
      62764E6F6E650D0A202020202020202020202020202020205461624F72646572
      203D2031300D0A2020202020202020202020202020202056697369626C65203D
      2046616C73650D0A202020202020202020202020202020206F626A6563742062
      746E4E657665724163636F756E743A20545370656564427574746F6E0D0A2020
      202020202020202020202020202020204C656674203D203239360D0A20202020
      2020202020202020202020202020546F70203D20330D0A202020202020202020
      2020202020202020205769647468203D2036350D0A2020202020202020202020
      20202020202020486569676874203D2032320D0A202020202020202020202020
      20202020202043617074696F6E203D20274E6526766572270D0A202020202020
      2020202020202020202020204F6E436C69636B203D2062746E4E657665724163
      636F756E74436C69636B0D0A20202020202020202020202020202020656E640D
      0A202020202020202020202020202020206F626A656374204C6162656C31363A
      20544C6162656C0D0A2020202020202020202020202020202020204C65667420
      3D203232380D0A202020202020202020202020202020202020546F70203D2038
      0D0A2020202020202020202020202020202020205769647468203D2033390D0A
      202020202020202020202020202020202020486569676874203D2031330D0A20
      202020202020202020202020202020202043617074696F6E203D20276D696E75
      7465732E270D0A20202020202020202020202020202020656E640D0A20202020
      2020202020202020202020206F626A656374204C6162656C31373A20544C6162
      656C0D0A2020202020202020202020202020202020204C656674203D2035360D
      0A202020202020202020202020202020202020546F70203D20380D0A20202020
      20202020202020202020202020205769647468203D203132320D0A2020202020
      20202020202020202020202020486569676874203D2031330D0A202020202020
      202020202020202020202020416C69676E6D656E74203D20746152696768744A
      7573746966790D0A20202020202020202020202020202020202043617074696F
      6E203D202743686563266B20666F72206E6577206D61696C2065766572792027
      0D0A202020202020202020202020202020202020466F637573436F6E74726F6C
      203D206564496E74657276616C4163636F756E740D0A20202020202020202020
      202020202020656E640D0A202020202020202020202020202020206F626A6563
      74206564496E74657276616C4163636F756E743A2054456469740D0A20202020
      20202020202020202020202020204C656674203D203138300D0A202020202020
      202020202020202020202020546F70203D20340D0A2020202020202020202020
      202020202020205769647468203D2032390D0A20202020202020202020202020
      2020202020486569676874203D2032310D0A2020202020202020202020202020
      202020205461624F72646572203D20300D0A2020202020202020202020202020
      2020202054657874203D202735270D0A20202020202020202020202020202020
      20204F6E4368616E6765203D2065644163634368616E67650D0A202020202020
      20202020202020202020656E640D0A202020202020202020202020202020206F
      626A656374205570446F776E4163636F756E743A20545570446F776E0D0A2020
      202020202020202020202020202020204C656674203D203230390D0A20202020
      2020202020202020202020202020546F70203D20340D0A202020202020202020
      2020202020202020205769647468203D2031350D0A2020202020202020202020
      20202020202020486569676874203D2032310D0A202020202020202020202020
      2020202020204173736F6369617465203D206564496E74657276616C4163636F
      756E740D0A2020202020202020202020202020202020204D6178203D20393939
      0D0A202020202020202020202020202020202020506F736974696F6E203D2035
      0D0A2020202020202020202020202020202020205461624F72646572203D2031
      0D0A20202020202020202020202020202020656E640D0A202020202020202020
      2020202020656E640D0A20202020202020202020202020206F626A6563742065
      64536F756E643A2054456469740D0A202020202020202020202020202020204C
      656674203D203130380D0A20202020202020202020202020202020546F70203D
      203230310D0A202020202020202020202020202020205769647468203D203136
      350D0A20202020202020202020202020202020486569676874203D2032310D0A
      20202020202020202020202020202020436F6C6F72203D20636C42746E466163
      650D0A20202020202020202020202020202020456E61626C6564203D2046616C
      73650D0A20202020202020202020202020202020466F6E742E43686172736574
      203D2044454641554C545F434841525345540D0A202020202020202020202020
      20202020466F6E742E436F6C6F72203D20636C47726179546578740D0A202020
      20202020202020202020202020466F6E742E486569676874203D202D31310D0A
      20202020202020202020202020202020466F6E742E4E616D65203D20274D5320
      53616E73205365726966270D0A20202020202020202020202020202020466F6E
      742E5374796C65203D205B5D0D0A202020202020202020202020202020205061
      72656E74466F6E74203D2046616C73650D0A2020202020202020202020202020
      2020506172656E7453686F7748696E74203D2046616C73650D0A202020202020
      2020202020202020202053686F7748696E74203D20547275650D0A2020202020
      20202020202020202020205461624F72646572203D20380D0A20202020202020
      20202020202020202054657874203D20275B5573652044656661756C7420536F
      756E645D270D0A202020202020202020202020202020204F6E4368616E676520
      3D2065644163634368616E67650D0A202020202020202020202020202020204F
      6E456E746572203D206564536F756E64456E7465720D0A202020202020202020
      202020202020204F6E45786974203D206564536F756E64457869740D0A202020
      2020202020202020202020656E640D0A20202020202020202020202020206F62
      6A6563742065644163636F756E7450726F6772616D3A2054456469740D0A2020
      20202020202020202020202020204C656674203D203130380D0A202020202020
      20202020202020202020546F70203D203137370D0A2020202020202020202020
      20202020205769647468203D203136350D0A2020202020202020202020202020
      2020486569676874203D2032310D0A2020202020202020202020202020202043
      6F6C6F72203D20636C42746E466163650D0A2020202020202020202020202020
      2020456E61626C6564203D2046616C73650D0A20202020202020202020202020
      202020466F6E742E43686172736574203D2044454641554C545F434841525345
      540D0A20202020202020202020202020202020466F6E742E436F6C6F72203D20
      636C47726179546578740D0A20202020202020202020202020202020466F6E74
      2E486569676874203D202D31310D0A2020202020202020202020202020202046
      6F6E742E4E616D65203D20274D532053616E73205365726966270D0A20202020
      202020202020202020202020466F6E742E5374796C65203D205B5D0D0A202020
      20202020202020202020202020506172656E74466F6E74203D2046616C73650D
      0A20202020202020202020202020202020506172656E7453686F7748696E7420
      3D2046616C73650D0A2020202020202020202020202020202053686F7748696E
      74203D20547275650D0A202020202020202020202020202020205461624F7264
      6572203D20370D0A2020202020202020202020202020202054657874203D2027
      5B5573652044656661756C742050726F6772616D5D270D0A2020202020202020
      20202020202020204F6E4368616E6765203D2065644163634368616E67650D0A
      202020202020202020202020202020204F6E456E746572203D2065644163636F
      756E7450726F6772616D456E7465720D0A202020202020202020202020202020
      204F6E45786974203D2065644163636F756E7450726F6772616D457869740D0A
      2020202020202020202020202020656E640D0A20202020202020202020202020
      206F626A6563742065645365727665723A2054456469740D0A20202020202020
      2020202020202020204C656674203D203130380D0A2020202020202020202020
      2020202020546F70203D2035360D0A2020202020202020202020202020202057
      69647468203D203136350D0A2020202020202020202020202020202048656967
      6874203D2032310D0A20202020202020202020202020202020436F6C6F72203D
      20636C42746E466163650D0A20202020202020202020202020202020456E6162
      6C6564203D2046616C73650D0A20202020202020202020202020202020546162
      4F72646572203D20310D0A202020202020202020202020202020204F6E436861
      6E6765203D2065644163634368616E67650D0A20202020202020202020202020
      20656E640D0A20202020202020202020202020206F626A65637420636D625072
      6F746F636F6C3A2054436F6D626F426F780D0A20202020202020202020202020
      2020204C656674203D203130380D0A2020202020202020202020202020202054
      6F70203D2038300D0A202020202020202020202020202020205769647468203D
      203131370D0A20202020202020202020202020202020486569676874203D2032
      310D0A202020202020202020202020202020205374796C65203D20637344726F
      70446F776E4C6973740D0A20202020202020202020202020202020436F6C6F72
      203D20636C42746E466163650D0A20202020202020202020202020202020456E
      61626C6564203D2046616C73650D0A2020202020202020202020202020202049
      74656D486569676874203D2031330D0A20202020202020202020202020202020
      4974656D496E646578203D20300D0A2020202020202020202020202020202054
      61624F72646572203D20320D0A20202020202020202020202020202020546578
      74203D2027504F5033270D0A202020202020202020202020202020204F6E4368
      616E6765203D20636D6250726F746F636F6C4368616E67650D0A202020202020
      202020202020202020204974656D732E537472696E6773203D20280D0A202020
      20202020202020202020202020202027504F503327290D0A2020202020202020
      202020202020656E640D0A20202020202020202020202020206F626A65637420
      6564506F72743A2054456469740D0A202020202020202020202020202020204C
      656674203D203238300D0A20202020202020202020202020202020546F70203D
      2038300D0A202020202020202020202020202020205769647468203D2033370D
      0A20202020202020202020202020202020486569676874203D2032310D0A2020
      2020202020202020202020202020436F6C6F72203D20636C42746E466163650D
      0A20202020202020202020202020202020456E61626C6564203D2046616C7365
      0D0A202020202020202020202020202020205461624F72646572203D20330D0A
      202020202020202020202020202020204F6E4368616E6765203D206564416363
      4368616E67650D0A2020202020202020202020202020656E640D0A2020202020
      20202020202020656E640D0A20202020202020202020656E640D0A2020202020
      202020656E640D0A20202020202020206F626A6563742070616E4163636F756E
      7473427574746F6E733A205450616E656C0D0A202020202020202020204C6566
      74203D20340D0A20202020202020202020546F70203D203333350D0A20202020
      2020202020205769647468203D203439380D0A20202020202020202020486569
      676874203D2032390D0A20202020202020202020416C69676E203D20616C426F
      74746F6D0D0A20202020202020202020426576656C4F75746572203D2062764E
      6F6E650D0A202020202020202020205461624F72646572203D20310D0A202020
      2020202020202044657369676E53697A65203D20280D0A202020202020202020
      2020203439380D0A2020202020202020202020203239290D0A20202020202020
      2020206F626A6563742062746E48656C704163636F756E74733A205442697442
      746E0D0A2020202020202020202020204C656674203D20340D0A202020202020
      202020202020546F70203D20340D0A2020202020202020202020205769647468
      203D2036350D0A202020202020202020202020486569676874203D2032350D0A
      20202020202020202020202043617074696F6E203D20272648656C70270D0A20
      20202020202020202020205461624F72646572203D20300D0A20202020202020
      20202020204F6E436C69636B203D2062746E48656C704163636F756E7473436C
      69636B0D0A202020202020202020202020476C7970682E44617461203D207B0D
      0A20202020202020202020202020203336303330303030343234443336303330
      3030303030303030303030333630303030303032383030303030303130303030
      3030303130303030303030303130300D0A202020202020202020202020202031
      3830303030303030303030303030333030303031333042303030303133304230
      303030303030303030303030303030303030304646464646463943363936330D
      0A20202020202020202020202020203943363936333943363936333943363936
      3339433639363339433639363339433639363339433639363339433639363339
      4336393633394336393633394336390D0A202020202020202020202020202036
      3339433639363346464646464646464646464646464646464641353735373346
      374533443646464537443646464537434546464533433646464130464646460D
      0A20202020202020202020202020203835464646464442423546464437414446
      4644374144464644334135464644334135414437393642464646464646464646
      4646464646464646464135373537330D0A202020202020202020202020202046
      3745374436464645424436464645374436464641384646374230303742383730
      373837464638354646464644424235464644374144464644374144464644330D
      0A20202020202020202020202020204135414437393642464646464646464646
      4646464646464646464135373537334637454244454646454644454646454244
      3646463941464639303130393039300D0A202020202020202020202020202031
      3039304630373046304646444642444646444242354646443741444646443741
      444144373936424646464646464646464646464646464646464135373537330D
      0A20202020202020202020202020204637454645374646463345374646454644
      4546464542443646463835464646463835464646464533433646464533433646
      4644464244464644424235464644370D0A202020202020202020202020202041
      4441443739364246464646464646464646464646464646464641353735373346
      374546454646464633453746464633453746464546444538373037383738370D
      0A20202020202020202020202020203037383746464537434546464533433646
      4645334336464644464244464644424235414437393642464646464646464646
      4646464646464646464135373537330D0A202020202020202020202020202046
      3746334546464646374546464646334537464646334537384130413841393331
      333933464638334646464645374345464645334336464645334336464644460D
      0A20202020202020202020202020204244414437393642464646464646464646
      4646464646464646464144374437334646463746374646464246374646463745
      4646464633453741413241414139450D0A202020202020202020202020202031
      4539453839303938394646394146464646453743454646453343364646453343
      364144373936424646464646464646464646464646464646464144383237420D
      0A20202020202020202020202020204646464246374646464246374646464246
      3746464637454646464335464638393039383941313231413139363136393646
      4645374436464645374345464645330D0A202020202020202020202020202043
      3641443739364246464646464646464646464646464646464642353841374246
      464642464646464646464646464642463746464642463746374446434546460D
      0A20202020202020202020202020204145464638443044384439303130393046
      4639454646464645374436464645374345414437393642464646464646464646
      4646464646464646464244393237420D0A202020202020202020202020202046
      4646464646464646464646464646464646433534354335383330333833414332
      434143393031303930383430343834464645334345464644464436464643460D
      0A20202020202020202020202020204336414437393642464646464646464646
      4646464646464646464345394138344646464646464646464646464646443546
      4638383038383838463046384638460D0A202020202020202020202020202030
      4638463842304238424345344543454646453744364637424142354637413239
      434144373936424646464646464646464646464646464646464436413238340D
      0A20202020202020202020202020204646464646464646464646464646464646
      4646464542464645353635453545303630453046393739463946464637454642
      3537443733423537443733423537440D0A202020202020202020202020202037
      3342353744373346464646464646464646464646464646464644454141384346
      464646464646464646464646464646464646464646464646464646464646460D
      0A20202020202020202020202020204646464646464642463746464642463742
      3537443733464644333934444541323742434539413834464646464646464646
      4646464646464646464445414538430D0A202020202020202020202020202046
      4646464646464646464646464646424646464646424646463746374637463746
      334637463746334546454645464546423537443733453742363934443641320D
      0A20202020202020202020202020203834464646464646464646464646464646
      4646464646464646464537423238434445414138344445414138344445414138
      3444454141383444454141383444450D0A202020202020202020202020202041
      4138344445414138344445414138344235374437334445414138344646464646
      464646464646464646464646464646464646467D0D0A20202020202020202020
      656E640D0A202020202020202020206F626A6563742062746E536176653A2054
      42697442746E0D0A2020202020202020202020204C656674203D203330370D0A
      202020202020202020202020546F70203D20340D0A2020202020202020202020
      205769647468203D203131330D0A202020202020202020202020486569676874
      203D2032350D0A202020202020202020202020416E63686F7273203D205B616B
      546F702C20616B52696768745D0D0A2020202020202020202020204361707469
      6F6E203D202753617665204163636F756E74270D0A2020202020202020202020
      2044656661756C74203D20547275650D0A202020202020202020202020456E61
      626C6564203D2046616C73650D0A2020202020202020202020205461624F7264
      6572203D20310D0A2020202020202020202020204F6E436C69636B203D206274
      6E53617665436C69636B0D0A202020202020202020202020476C7970682E4461
      7461203D207B0D0A202020202020202020202020202033363036303030303432
      3444333630363030303030303030303030303336303030303030323830303030
      303032303030303030303130303030303030303130300D0A2020202020202020
      2020202020203138303030303030303030303030303630303030323330423030
      3030323330423030303030303030303030303030303030303030303046463030
      3030464630300D0A202020202020202020202020202030304646303030304646
      3030303046463030303046463030303046463030303046463030303046463030
      303046463030303046463030303046463030303046460D0A2020202020202020
      2020202020203030303046463030303046463030303046463030303046463030
      3030464630303030464630303030464630303030464630303030464630303030
      4646303030300D0A202020202020202020202020202046463030303046463030
      3030464630303030464630303030464630303030464630303030464630303030
      464630303030464630303030464630303030464630300D0A2020202020202020
      2020202020203830383038303633363336333633363336333530353035303530
      3530353034303430343034303430343034303430343034303430343034303430
      3430343034300D0A202020202020202020202020202034303430343034303530
      3530353036333633363330304646303030304646303030304646303030304646
      303030304646303030304646303030304646303030300D0A2020202020202020
      2020202020204646303030304646303030304646303030304646303030304646
      3030303046463030303046463030303046463030303046463030303046463030
      3030464630300D0A202020202020202020202020202041413530303044333636
      3035433835453030423542324235423542324235423542324235423542324235
      423542324235423542324235394234393030394234390D0A2020202020202020
      2020202020203030443336363035443336363035353035303530303046463030
      3030464630303646364636463646364636463646364636463646364636463646
      3646364636460D0A202020202020202020202020202036463646364636463646
      3646364636463646364636463646364636463646364636463535353535353030
      464630303030464630303030464630304646393733420D0A2020202020202020
      2020202020204544383031464544383031464433363630354144394539434643
      3846324544454236423546464642464646374633463745374537453739423439
      3030394234390D0A202020202020202020202020202030304544383031464433
      3636303534303430343030304646303038373837383730304646303030304646
      303036463646364639463946394630304646303030300D0A2020202020202020
      2020202020204646303030304646303030304646303045374537453736463646
      3646303046463030364636463646303046463030303046463030303046463030
      4646393733420D0A202020202020202020202020202045443830314645443830
      3146443336363035434542364235444236453044464641323446444544424445
      464646424646463746334637394234393030394234390D0A2020202020202020
      2020202020203030454438303146443336363035343034303430303046463030
      3837383738373030464630303030464630303646364636464238423842383030
      4646303030300D0A202020202020202020202020202046463030303046463030
      3030464630304537453745373646364636463030464630303646364636463030
      464630303030464630303030464630304646393733420D0A2020202020202020
      2020202020204544383031464544383031464433363630354537433743364338
      3545303046393843324242354232423544454442444546464642464639423439
      3030394234390D0A202020202020202020202020202030304544383031464433
      3636303534303430343030304646303038373837383730304646303030304646
      303036463646364643414341434130304646303030300D0A2020202020202020
      2020202020204646303030304646303030304646303045374537453736463646
      3646303046463030364636463646303046463030303046463030303046463030
      4646393733420D0A202020202020202020202020202045443830314645443830
      3146443336363035444543424345434539363934434542324235414441414144
      423542324235443643464345394234393030413134430D0A2020202020202020
      2020202020203030454438303146443336363035343034303430303046463030
      3837383738373030464630303030464630303646364636464345434543453943
      3943394342360D0A202020202020202020202020202042364236414241424142
      4233423342334346434643463646364636463030464630303646364636463030
      464630303030464630303030464630304646393733420D0A2020202020202020
      2020202020204544383031464544383031464544383031464544383031464544
      3830314645443830314645443830314645443830314645443830314645443830
      3146454438300D0A202020202020202020202020202031464544383031464433
      3636303534303430343030304646303038373837383730304646303030304646
      303030304646303030304646303030304646303030300D0A2020202020202020
      2020202020204646303030304646303030304646303030304646303030304646
      3030303046463030364636463646303046463030303046463030303046463030
      4646393733420D0A202020202020202020202020202045443830314645443830
      3146464641323446464641323446464641323446464641323446464641323446
      464641323446464641323446464641323446454438300D0A2020202020202020
      2020202020203146454438303146443336363035343034303430303046463030
      3837383738373030464630303030464630303933393339333933393339333933
      3933393339330D0A202020202020202020202020202039333933393339333933
      3933393339333933393339333933393339333030464630303646364636463030
      464630303030464630303030464630304646393733420D0A2020202020202020
      2020202020204544383031464646413234464646464246464646464246464646
      4642464646464642464646464642464646464642464646464642464646464642
      4646464641320D0A202020202020202020202020202034464544383031464433
      3636303535303530353030304646303038373837383730304646303039333933
      393330304646303030304646303030304646303030300D0A2020202020202020
      2020202020204646303030304646303030304646303030304646303030304646
      3030393339333933364636463646303046463030303046463030303046463030
      4646393733420D0A202020202020202020202020202045443830314646464132
      3446464646424646433643334336433643334336433643334336433643374336
      433643374336433643374336464646424646464641320D0A2020202020202020
      2020202020203446454438303146443336363035353035303530303046463030
      3837383738373030464630303933393339333030464630304334433443344334
      4334433443340D0A202020202020202020202020202043344334433743374337
      4337433743374337433743373030464630303933393339333646364636463030
      464630303030464630303030464630304646393733420D0A2020202020202020
      2020202020204544383031464646413234464646464246464646464246464646
      4642464646464642464646464642464646464642464646464642464646464642
      4646464641320D0A202020202020202020202020202034464544383031464433
      3636303536333633363330304646303038373837383730304646303039333933
      393330304646303030304646303030304646303030300D0A2020202020202020
      2020202020204646303030304646303030304646303030304646303030304646
      3030393339333933364636463646303046463030303046463030303046463030
      4646393733420D0A202020202020202020202020202045443830314646464132
      3446464646424646424442454244433643334336433643334336433643334336
      433643374336433643374336464646424646464641320D0A2020202020202020
      2020202020203446454438303146443336363035363336333633303046463030
      3837383738373030464630303933393339333030464630304244424542444336
      4333433643360D0A202020202020202020202020202043334336433643334336
      4336433743364336433743363030464630303933393339333646364636463030
      464630303030464630303030464630304646393733420D0A2020202020202020
      2020202020204544383031464646413234464646464246464646464246464646
      4642464646464642464646464642464646464642464646464642464646464642
      4646464641320D0A202020202020202020202020202034464544383031464433
      3636303538303830383030304646303038373837383730304646303039333933
      393330304646303030304646303030304646303030300D0A2020202020202020
      2020202020204646303030304646303030304646303030304646303030304646
      3030393339333933364636463646303046463030303046463030303046463030
      4646393733420D0A202020202020202020202020202044333636303546464132
      3446303030304330303030304330303030304330303030304330303030304330
      303030304330303030304330303030304330464641320D0A2020202020202020
      2020202020203446443336363035303046463030303046463030303046463030
      3837383738373646364636463933393339333646364636463646364636463646
      3646364636460D0A202020202020202020202020202036463646364636463646
      3646364636463646364636463646364636463933393339333535353535353030
      464630303030464630303030464630303030464630300D0A2020202020202020
      2020202020203030464630303030464630303030464630303030464630303030
      4646303030304646303030304646303030304646303030304646303030304646
      3030303046460D0A202020202020202020202020202030303030464630303030
      4646303030304646303030304646303030304646303030304646303030304646
      303030304646303030304646303030304646303030300D0A2020202020202020
      2020202020204646303030304646303030304646303030304646303030304646
      30303030464630303030464630303030464630303030464630307D0D0A202020
      2020202020202020204E756D476C79706873203D20320D0A2020202020202020
      2020656E640D0A202020202020202020206F626A6563742062746E43616E6365
      6C4163636F756E743A205442697442746E0D0A2020202020202020202020204C
      656674203D203432390D0A202020202020202020202020546F70203D20340D0A
      2020202020202020202020205769647468203D2037350D0A2020202020202020
      20202020486569676874203D2032350D0A202020202020202020202020416E63
      686F7273203D205B616B546F702C20616B52696768745D0D0A20202020202020
      202020202043616E63656C203D20547275650D0A202020202020202020202020
      43617074696F6E203D202743616E63656C270D0A202020202020202020202020
      456E61626C6564203D2046616C73650D0A202020202020202020202020546162
      4F72646572203D20320D0A2020202020202020202020204F6E436C69636B203D
      2062746E43616E63656C4163636F756E74436C69636B0D0A2020202020202020
      20202020476C7970682E44617461203D207B0D0A202020202020202020202020
      2020333630363030303034323444333630363030303030303030303030303336
      3030303030303238303030303030323030303030303031303030303030303031
      30300D0A20202020202020202020202020203138303030303030303030303030
      3036303030303233304230303030323330423030303030303030303030303030
      3030303030303030383238343030383238340D0A202020202020202020202020
      2020364536453645364536453645303038323834303038323834303038323834
      3030383238343030383238343030383238343030383238343030383238343030
      38320D0A20202020202020202020202020203834303038323834303038323834
      3030383238343030383238343030383238343030383238344646464646463030
      3832383430303832383430303832383430300D0A202020202020202020202020
      2020383238343030383238343030383238343030383238343030383238343030
      3832383430303832383430303832383430303832383430303832383433313539
      46460D0A20202020202020202020202020203030323944413030313942303645
      3645364530303832383430303832383430303832383430303832383430303832
      3834333135394646364536453645303038320D0A202020202020202020202020
      2020383430303832383430303832383430303832383430303832383430303832
      3834383438323834383438323834464646464646303038323834303038323834
      30300D0A20202020202020202020202020203832383430303832383430303832
      3834303038323834464646464646303038323834303038323834303038323834
      3030383238343030383238343331353946460D0A202020202020202020202020
      2020303033304546303032394441303031394230364536453645303038323834
      3030383238343030383238343331353946463030323043453030313942303645
      36450D0A20202020202020202020202020203645303038323834303038323834
      3030383238343030383238343834383238344646464646463030383238343834
      3832383446464646464630303832383430300D0A202020202020202020202020
      2020383238343030383238344646464646463834383238343834383238344646
      4646464630303832383430303832383430303832383430303832383436333832
      46460D0A20202020202020202020202020203030333045463030333045463030
      3239444130303139423036453645364530303832383433313539464630303230
      4345303032304345303032304345303031390D0A202020202020202020202020
      2020423036453645364530303832383430303832383430303832383438343832
      3834464646464646303038323834303038323834383438323834464646464646
      30300D0A20202020202020202020202020203832383446464646464638343832
      3834303038323834303038323834383438323834464646464646303038323834
      3030383238343030383238343030383238340D0A202020202020202020202020
      2020363338324646303033304546303033304546303032394441303031394230
      3645364536453030323944413030323043453030323043453030323043453030
      31390D0A20202020202020202020202020204230364536453645303038323834
      3030383238343030383238343834383238344646464646463030383238343030
      3832383430303832383438343832383446460D0A202020202020202020202020
      2020464646463834383238343030383238343030383238343030383238343030
      3832383438343832383446464646464630303832383430303832383430303832
      38340D0A20202020202020202020202020203030383238343633383246463030
      3330454630303330454630303239444130303239444130303239444130303239
      4441303032304345303032304345364536450D0A202020202020202020202020
      2020364530303832383430303832383430303832383430303832383430303832
      3834383438323834464646464646303038323834303038323834303038323834
      38340D0A20202020202020202020202020203832383430303832383430303832
      3834303038323834303038323834464646464646383438323834303038323834
      3030383238343030383238343030383238340D0A202020202020202020202020
      2020303038323834303038323834363338324646303033304546303032394441
      3030323944413030323944413030323944413030323944413645364536453030
      38320D0A20202020202020202020202020203834303038323834303038323834
      3030383238343030383238343030383238343030383238343834383238344646
      4646464630303832383430303832383430300D0A202020202020202020202020
      2020383238343030383238343030383238343030383238344646464646463834
      3832383430303832383430303832383430303832383430303832383430303832
      38340D0A20202020202020202020202020203030383238343030383238343030
      3832383430303330454630303330454630303239444130303239444130303139
      4230364536453645303038323834303038320D0A202020202020202020202020
      2020383430303832383430303832383430303832383430303832383430303832
      3834303038323834303038323834383438323834464646464646303038323834
      30300D0A20202020202020202020202020203832383430303832383430303832
      3834303038323834383438323834303038323834303038323834303038323834
      3030383238343030383238343030383238340D0A202020202020202020202020
      2020303038323834303038323834303038323834333135394646303033304546
      3030333045463030323944413030313942303645364536453030383238343030
      38320D0A20202020202020202020202020203834303038323834303038323834
      3030383238343030383238343030383238343030383238343030383238343030
      3832383438343832383446464646464630300D0A202020202020202020202020
      2020383238343030383238343030383238343834383238343030383238343030
      3832383430303832383430303832383430303832383430303832383430303832
      38340D0A20202020202020202020202020203030383238343030383238343331
      3539464630303330454630303330454630303330454630303330454630303139
      4230364536453645303038323834303038320D0A202020202020202020202020
      2020383430303832383430303832383430303832383430303832383430303832
      3834303038323834303038323834303038323834383438323834303038323834
      30300D0A20202020202020202020202020203832383430303832383430303832
      3834383438323834464646464646303038323834303038323834303038323834
      3030383238343030383238343030383238340D0A202020202020202020202020
      2020303038323834333135394646303033304546303033304546303033304546
      3645364536453030333045463030323944413030313942303645364536453030
      38320D0A20202020202020202020202020203834303038323834303038323834
      3030383238343030383238343030383238343030383238343030383238343834
      3832383430303832383430303832383430300D0A202020202020202020202020
      2020383238343030383238343030383238343834383238344646464646463030
      3832383430303832383430303832383430303832383430303832383430303832
      38340D0A20202020202020202020202020203633383246463030333045463030
      3330454630303330454636453645364530303832383433313539464630303330
      4546303032394441303031394230364536450D0A202020202020202020202020
      2020364530303832383430303832383430303832383430303832383430303832
      3834303038323834383438323834303038323834303038323834303038323834
      38340D0A20202020202020202020202020203832383446464646464630303832
      3834303038323834383438323834464646464646303038323834303038323834
      3030383238343030383238343030383238340D0A202020202020202020202020
      2020363338324646303033304546303032304345364536453645303038323834
      3030383238343030383238343633383246463030333045463030323944413030
      31390D0A20202020202020202020202020204230364536453645303038323834
      3030383238343030383238343030383238343834383238344646464646463030
      3832383430303832383438343832383430300D0A202020202020202020202020
      2020383238343834383238344646464646463030383238343030383238343834
      3832383446464646464630303832383430303832383430303832383430303832
      38340D0A20202020202020202020202020203030383238343633383246463030
      3330454630303832383430303832383430303832383430303832383430303832
      3834363338324646303033304546303033300D0A202020202020202020202020
      2020454630303239444130303832383430303832383430303832383430303832
      3834383438323834464646464646464646464646383438323834303038323834
      30300D0A20202020202020202020202020203832383430303832383438343832
      3834464646464646303038323834303038323834383438323834464646464646
      3030383238343030383238343030383238340D0A202020202020202020202020
      2020303038323834303038323834303038323834303038323834303038323834
      3030383238343030383238343030383238343030383238343633383246463030
      33300D0A20202020202020202020202020204546303032394441303038323834
      3030383238343030383238343030383238343030383238343834383238343834
      3832383430303832383430303832383430300D0A202020202020202020202020
      2020383238343030383238343030383238343834383238344646464646464646
      4646464646464646464638343832383430303832383430303832383430303832
      38340D0A20202020202020202020202020203030383238343030383238343030
      3832383430303832383430303832383430303832383430303832383430303832
      3834303038323834303038323834303038320D0A202020202020202020202020
      2020383430303832383430303832383430303832383430303832383430303832
      3834303038323834303038323834303038323834303038323834303038323834
      30300D0A20202020202020202020202020203832383430303832383430303832
      3834303038323834383438323834383438323834383438323834303038323834
      3030383238347D0D0A2020202020202020202020204E756D476C79706873203D
      20320D0A20202020202020202020656E640D0A2020202020202020656E640D0A
      20202020202020206F626A656374204163636F756E7473546F6F6C6261723A20
      54416374696F6E546F6F6C4261720D0A202020202020202020204C656674203D
      20340D0A20202020202020202020546F70203D20340D0A202020202020202020
      205769647468203D203439380D0A20202020202020202020486569676874203D
      2033310D0A20202020202020202020416374696F6E4D616E61676572203D2041
      6374696F6E4D616E616765720D0A2020202020202020202043617074696F6E20
      3D20274163636F756E7473270D0A20202020202020202020436F6C6F724D6170
      2E486967686C69676874436F6C6F72203D20636C57686974650D0A2020202020
      2020202020436F6C6F724D61702E42746E53656C6563746564436F6C6F72203D
      20636C42746E466163650D0A20202020202020202020436F6C6F724D61702E55
      6E75736564436F6C6F72203D20636C57686974650D0A20202020202020202020
      45646765426F7264657273203D205B65624C6566742C206562546F702C206562
      52696768742C206562426F74746F6D5D0D0A2020202020202020202045646765
      496E6E6572203D2065734C6F77657265640D0A20202020202020202020466F6E
      742E43686172736574203D2044454641554C545F434841525345540D0A202020
      20202020202020466F6E742E436F6C6F72203D20636C57696E646F7754657874
      0D0A20202020202020202020466F6E742E486569676874203D202D31310D0A20
      202020202020202020466F6E742E4E616D65203D20275461686F6D61270D0A20
      202020202020202020466F6E742E5374796C65203D205B5D0D0A202020202020
      20202020486F727A4D617267696E203D20340D0A202020202020202020205061
      72656E744261636B67726F756E64203D20547275650D0A202020202020202020
      20506172656E74436F6C6F72203D20547275650D0A2020202020202020202050
      6172656E74466F6E74203D2046616C73650D0A20202020202020202020506F70
      75704D656E75203D20646D2E6D6E75546F6F6C6261720D0A2020202020202020
      202053706163696E67203D20380D0A20202020202020202020566572744D6172
      67696E203D20340D0A2020202020202020656E640D0A202020202020656E640D
      0A20202020656E640D0A202020206F626A6563742074734F7074696F6E733A20
      5454616253686565740D0A20202020202043617074696F6E203D20274F707469
      6F6E73270D0A202020202020466F6E742E43686172736574203D204445464155
      4C545F434841525345540D0A202020202020466F6E742E436F6C6F72203D2063
      6C57696E646F77546578740D0A202020202020466F6E742E486569676874203D
      202D31310D0A202020202020466F6E742E4E616D65203D20274D532053616E73
      205365726966270D0A202020202020466F6E742E5374796C65203D205B5D0D0A
      202020202020496D616765496E646578203D20310D0A20202020202050617265
      6E74466F6E74203D2046616C73650D0A2020202020206F626A6563742070616E
      4F7074696F6E427574746F6E733A205450616E656C0D0A20202020202020204C
      656674203D20300D0A2020202020202020546F70203D203333360D0A20202020
      202020205769647468203D203530360D0A202020202020202048656967687420
      3D2033320D0A2020202020202020416C69676E203D20616C426F74746F6D0D0A
      2020202020202020426576656C4F75746572203D2062764E6F6E650D0A202020
      2020202020426F726465725769647468203D20320D0A20202020202020205461
      624F72646572203D20300D0A20202020202020206F626A6563742062746E4869
      6E7448656C703A20545370656564427574746F6E0D0A20202020202020202020
      4C656674203D2037360D0A20202020202020202020546F70203D20330D0A2020
      20202020202020205769647468203D2032350D0A202020202020202020204865
      69676874203D2032350D0A2020202020202020202048696E74203D2027517569
      636B2048656C70270D0A20202020202020202020476C7970682E44617461203D
      207B0D0A20202020202020202020202046363030303030303432344446363030
      3030303030303030303030303736303030303030323830303030303031303030
      303030303130303030303030303130300D0A2020202020202020202020203034
      3030303030303030303038303030303030303133304230303030313330423030
      3030313030303030303031303030303030303030303030303030303030300D0A
      2020202020202020202020203830303030303830303030303030383038303030
      3830303030303030383030303830303038303830303030304330433043303030
      3830383038303030303030300D0A202020202020202020202020464630303030
      4646303030303030464646463030464630303030303046463030464630304646
      46463030303046464646464630303737373737373737373737370D0A20202020
      2020202020202020373737373737373737373030373737373737373737373737
      3737303037373737373737373737373737303037373737303037373737303737
      37303037373737300D0A20202020202020202020202030373737373030373030
      3737373737373737373737303030303037373737373030373737373030303030
      303030373730303737373730303030303030373737370D0A2020202020202020
      2020202030303737373030303030303737373737373030373730303030303737
      3730303737373030373030303037373730303737373730303730303037373737
      303037370D0A2020202020202020202020203737303037303037373737373730
      3037373730303730373737373737373730303030303737373737373737373737
      3737373737377D0D0A20202020202020202020506172656E7453686F7748696E
      74203D2046616C73650D0A2020202020202020202053686F7748696E74203D20
      547275650D0A202020202020202020204F6E436C69636B203D2062746E48696E
      7448656C70436C69636B0D0A2020202020202020656E640D0A20202020202020
      206F626A6563742070616E4F7074696F6E427574746F6E7352696768743A2054
      50616E656C0D0A202020202020202020204C656674203D203239370D0A202020
      20202020202020546F70203D20320D0A20202020202020202020576964746820
      3D203230370D0A20202020202020202020486569676874203D2032380D0A2020
      2020202020202020416C69676E203D20616C52696768740D0A20202020202020
      202020426576656C4F75746572203D2062764E6F6E650D0A2020202020202020
      20205461624F72646572203D20300D0A202020202020202020206F626A656374
      2062746E536176654F7074696F6E733A205442697442746E0D0A202020202020
      2020202020204C656674203D20360D0A202020202020202020202020546F7020
      3D20310D0A2020202020202020202020205769647468203D203131330D0A2020
      20202020202020202020486569676874203D2032350D0A202020202020202020
      20202043617074696F6E203D202753617665204F7074696F6E73270D0A202020
      20202020202020202044656661756C74203D20547275650D0A20202020202020
      20202020205461624F72646572203D20300D0A2020202020202020202020204F
      6E436C69636B203D2062746E536176654F7074696F6E73436C69636B0D0A2020
      20202020202020202020476C7970682E44617461203D207B0D0A202020202020
      2020202020202020333630363030303034323444333630363030303030303030
      3030303033363030303030303238303030303030323030303030303031303030
      30303030303130300D0A20202020202020202020202020203138303030303030
      3030303030303036303030303233304230303030323330423030303030303030
      3030303030303030303030303030464630303030464630300D0A202020202020
      2020202020202020303046463030303046463030303046463030303046463030
      3030464630303030464630303030464630303030464630303030464630303030
      46463030303046460D0A20202020202020202020202020203030303046463030
      3030464630303030464630303030464630303030464630303030464630303030
      4646303030304646303030304646303030304646303030300D0A202020202020
      2020202020202020464630303030464630303030464630303030464630303030
      4646303030304646303030304646303030304646303030304646303030304646
      30303030464630300D0A20202020202020202020202020203830383038303633
      3633363336333633363335303530353035303530353034303430343034303430
      3430343034303430343034303430343034303430343034300D0A202020202020
      2020202020202020343034303430343035303530353036333633363330304646
      3030303046463030303046463030303046463030303046463030303046463030
      30304646303030300D0A20202020202020202020202020204646303030304646
      3030303046463030303046463030303046463030303046463030303046463030
      3030464630303030464630303030464630303030464630300D0A202020202020
      2020202020202020414135303030443336363035433835453030423542324235
      4235423242354235423242354235423242354235423242354235423242353942
      34393030394234390D0A20202020202020202020202020203030443336363035
      4433363630353530353035303030464630303030464630303646364636463646
      3646364636463646364636463646364636463646364636460D0A202020202020
      2020202020202020364636463646364636463646364636463646364636463646
      3646364636463646364635353535353530304646303030304646303030304646
      30304646393733420D0A20202020202020202020202020204544383031464544
      3830314644333636303541443945394346433846324544454236423546464642
      4646463746334637453745374537394234393030394234390D0A202020202020
      2020202020202020303045443830314644333636303534303430343030304646
      3030383738373837303046463030303046463030364636463646394639463946
      30304646303030300D0A20202020202020202020202020204646303030304646
      3030303046463030453745374537364636463646303046463030364636463646
      3030464630303030464630303030464630304646393733420D0A202020202020
      2020202020202020454438303146454438303146443336363035434542364235
      4442364530444646413234464445444244454646464246464637463346373942
      34393030394234390D0A20202020202020202020202020203030454438303146
      4433363630353430343034303030464630303837383738373030464630303030
      4646303036463646364642384238423830304646303030300D0A202020202020
      2020202020202020464630303030464630303030464630304537453745373646
      3646364630304646303036463646364630304646303030304646303030304646
      30304646393733420D0A20202020202020202020202020204544383031464544
      3830314644333636303545374337433643383545303046393843324242354232
      4235444544424445464646424646394234393030394234390D0A202020202020
      2020202020202020303045443830314644333636303534303430343030304646
      3030383738373837303046463030303046463030364636463646434143414341
      30304646303030300D0A20202020202020202020202020204646303030304646
      3030303046463030453745374537364636463646303046463030364636463646
      3030464630303030464630303030464630304646393733420D0A202020202020
      2020202020202020454438303146454438303146443336363035444543424345
      4345393639344345423242354144414141444235423242354436434643453942
      34393030413134430D0A20202020202020202020202020203030454438303146
      4433363630353430343034303030464630303837383738373030464630303030
      4646303036463646364643454345434539433943394342360D0A202020202020
      2020202020202020423642364142414241424233423342334346434643463646
      3646364630304646303036463646364630304646303030304646303030304646
      30304646393733420D0A20202020202020202020202020204544383031464544
      3830314645443830314645443830314645443830314645443830314645443830
      3146454438303146454438303146454438303146454438300D0A202020202020
      2020202020202020314645443830314644333636303534303430343030304646
      3030383738373837303046463030303046463030303046463030303046463030
      30304646303030300D0A20202020202020202020202020204646303030304646
      3030303046463030303046463030303046463030303046463030364636463646
      3030464630303030464630303030464630304646393733420D0A202020202020
      2020202020202020454438303146454438303146464641323446464641323446
      4646413234464646413234464646413234464646413234464646413234464646
      41323446454438300D0A20202020202020202020202020203146454438303146
      4433363630353430343034303030464630303837383738373030464630303030
      4646303039333933393339333933393339333933393339330D0A202020202020
      2020202020202020393339333933393339333933393339333933393339333933
      3933393330304646303036463646364630304646303030304646303030304646
      30304646393733420D0A20202020202020202020202020204544383031464646
      4132344646464642464646464642464646464642464646464642464646464642
      4646464646424646464646424646464646424646464641320D0A202020202020
      2020202020202020344645443830314644333636303535303530353030304646
      3030383738373837303046463030393339333933303046463030303046463030
      30304646303030300D0A20202020202020202020202020204646303030304646
      3030303046463030303046463030303046463030393339333933364636463646
      3030464630303030464630303030464630304646393733420D0A202020202020
      2020202020202020454438303146464641323446464646424646433643334336
      4336433343364336433343364336433743364336433743364336433743364646
      46424646464641320D0A20202020202020202020202020203446454438303146
      4433363630353530353035303030464630303837383738373030464630303933
      3933393330304646303043344334433443344334433443340D0A202020202020
      2020202020202020433443344337433743374337433743374337433743373030
      4646303039333933393336463646364630304646303030304646303030304646
      30304646393733420D0A20202020202020202020202020204544383031464646
      4132344646464642464646464642464646464642464646464642464646464642
      4646464646424646464646424646464646424646464641320D0A202020202020
      2020202020202020344645443830314644333636303536333633363330304646
      3030383738373837303046463030393339333933303046463030303046463030
      30304646303030300D0A20202020202020202020202020204646303030304646
      3030303046463030303046463030303046463030393339333933364636463646
      3030464630303030464630303030464630304646393733420D0A202020202020
      2020202020202020454438303146464641323446464646424646424442454244
      4336433343364336433343364336433343364336433743364336433743364646
      46424646464641320D0A20202020202020202020202020203446454438303146
      4433363630353633363336333030464630303837383738373030464630303933
      3933393330304646303042444245424443364333433643360D0A202020202020
      2020202020202020433343364336433343364336433743364336433743363030
      4646303039333933393336463646364630304646303030304646303030304646
      30304646393733420D0A20202020202020202020202020204544383031464646
      4132344646464642464646464642464646464642464646464642464646464642
      4646464646424646464646424646464646424646464641320D0A202020202020
      2020202020202020344645443830314644333636303538303830383030304646
      3030383738373837303046463030393339333933303046463030303046463030
      30304646303030300D0A20202020202020202020202020204646303030304646
      3030303046463030303046463030303046463030393339333933364636463646
      3030464630303030464630303030464630304646393733420D0A202020202020
      2020202020202020443336363035464641323446303030304330303030304330
      3030303043303030303043303030303043303030303043303030303043303030
      30304330464641320D0A20202020202020202020202020203446443336363035
      3030464630303030464630303030464630303837383738373646364636463933
      3933393336463646364636463646364636463646364636460D0A202020202020
      2020202020202020364636463646364636463646364636463646364636463646
      3646364639333933393335353535353530304646303030304646303030304646
      30303030464630300D0A20202020202020202020202020203030464630303030
      4646303030304646303030304646303030304646303030304646303030304646
      3030303046463030303046463030303046463030303046460D0A202020202020
      2020202020202020303030304646303030304646303030304646303030304646
      3030303046463030303046463030303046463030303046463030303046463030
      30304646303030300D0A20202020202020202020202020204646303030304646
      3030303046463030303046463030303046463030303046463030303046463030
      3030464630303030464630307D0D0A2020202020202020202020204E756D476C
      79706873203D20320D0A20202020202020202020656E640D0A20202020202020
      2020206F626A6563742062746E43616E63656C3A205442697442746E0D0A2020
      202020202020202020204C656674203D203132380D0A20202020202020202020
      2020546F70203D20310D0A2020202020202020202020205769647468203D2037
      350D0A202020202020202020202020486569676874203D2032350D0A20202020
      202020202020202043616E63656C203D20547275650D0A202020202020202020
      20202043617074696F6E203D202743616E63656C270D0A202020202020202020
      2020205461624F72646572203D20310D0A2020202020202020202020204F6E43
      6C69636B203D2062746E43616E63656C436C69636B0D0A202020202020202020
      202020476C7970682E44617461203D207B0D0A20202020202020202020202020
      2033363036303030303432344433363036303030303030303030303030333630
      3030303030323830303030303032303030303030303130303030303030303130
      300D0A2020202020202020202020202020313830303030303030303030303030
      3630303030323330423030303032333042303030303030303030303030303030
      30303030303030383238343030383238340D0A20202020202020202020202020
      2036453645364536453645364530303832383430303832383430303832383430
      3038323834303038323834303038323834303038323834303038323834303038
      320D0A2020202020202020202020202020383430303832383430303832383430
      3038323834303038323834303038323834303038323834464646464646303038
      32383430303832383430303832383430300D0A20202020202020202020202020
      2038323834303038323834303038323834303038323834303038323834303038
      3238343030383238343030383238343030383238343030383238343331353946
      460D0A2020202020202020202020202020303032394441303031394230364536
      4536453030383238343030383238343030383238343030383238343030383238
      34333135394646364536453645303038320D0A20202020202020202020202020
      2038343030383238343030383238343030383238343030383238343030383238
      3438343832383438343832383446464646464630303832383430303832383430
      300D0A2020202020202020202020202020383238343030383238343030383238
      3430303832383446464646464630303832383430303832383430303832383430
      30383238343030383238343331353946460D0A20202020202020202020202020
      2030303330454630303239444130303139423036453645364530303832383430
      3038323834303038323834333135394646303032304345303031394230364536
      450D0A2020202020202020202020202020364530303832383430303832383430
      3038323834303038323834383438323834464646464646303038323834383438
      32383446464646464630303832383430300D0A20202020202020202020202020
      2038323834303038323834464646464646383438323834383438323834464646
      4646463030383238343030383238343030383238343030383238343633383246
      460D0A2020202020202020202020202020303033304546303033304546303032
      3944413030313942303645364536453030383238343331353946463030323043
      45303032304345303032304345303031390D0A20202020202020202020202020
      2042303645364536453030383238343030383238343030383238343834383238
      3446464646464630303832383430303832383438343832383446464646464630
      300D0A2020202020202020202020202020383238344646464646463834383238
      3430303832383430303832383438343832383446464646464630303832383430
      30383238343030383238343030383238340D0A20202020202020202020202020
      2036333832464630303330454630303330454630303239444130303139423036
      4536453645303032394441303032304345303032304345303032304345303031
      390D0A2020202020202020202020202020423036453645364530303832383430
      3038323834303038323834383438323834464646464646303038323834303038
      32383430303832383438343832383446460D0A20202020202020202020202020
      2046464646383438323834303038323834303038323834303038323834303038
      3238343834383238344646464646463030383238343030383238343030383238
      340D0A2020202020202020202020202020303038323834363338324646303033
      3045463030333045463030323944413030323944413030323944413030323944
      41303032304345303032304345364536450D0A20202020202020202020202020
      2036453030383238343030383238343030383238343030383238343030383238
      3438343832383446464646464630303832383430303832383430303832383438
      340D0A2020202020202020202020202020383238343030383238343030383238
      3430303832383430303832383446464646464638343832383430303832383430
      30383238343030383238343030383238340D0A20202020202020202020202020
      2030303832383430303832383436333832464630303330454630303239444130
      3032394441303032394441303032394441303032394441364536453645303038
      320D0A2020202020202020202020202020383430303832383430303832383430
      3038323834303038323834303038323834303038323834383438323834464646
      46464630303832383430303832383430300D0A20202020202020202020202020
      2038323834303038323834303038323834303038323834464646464646383438
      3238343030383238343030383238343030383238343030383238343030383238
      340D0A2020202020202020202020202020303038323834303038323834303038
      3238343030333045463030333045463030323944413030323944413030313942
      30364536453645303038323834303038320D0A20202020202020202020202020
      2038343030383238343030383238343030383238343030383238343030383238
      3430303832383430303832383438343832383446464646464630303832383430
      300D0A2020202020202020202020202020383238343030383238343030383238
      3430303832383438343832383430303832383430303832383430303832383430
      30383238343030383238343030383238340D0A20202020202020202020202020
      2030303832383430303832383430303832383433313539464630303330454630
      3033304546303032394441303031394230364536453645303038323834303038
      320D0A2020202020202020202020202020383430303832383430303832383430
      3038323834303038323834303038323834303038323834303038323834303038
      32383438343832383446464646464630300D0A20202020202020202020202020
      2038323834303038323834303038323834383438323834303038323834303038
      3238343030383238343030383238343030383238343030383238343030383238
      340D0A2020202020202020202020202020303038323834303038323834333135
      3946463030333045463030333045463030333045463030333045463030313942
      30364536453645303038323834303038320D0A20202020202020202020202020
      2038343030383238343030383238343030383238343030383238343030383238
      3430303832383430303832383430303832383438343832383430303832383430
      300D0A2020202020202020202020202020383238343030383238343030383238
      3438343832383446464646464630303832383430303832383430303832383430
      30383238343030383238343030383238340D0A20202020202020202020202020
      2030303832383433313539464630303330454630303330454630303330454636
      4536453645303033304546303032394441303031394230364536453645303038
      320D0A2020202020202020202020202020383430303832383430303832383430
      3038323834303038323834303038323834303038323834303038323834383438
      32383430303832383430303832383430300D0A20202020202020202020202020
      2038323834303038323834303038323834383438323834464646464646303038
      3238343030383238343030383238343030383238343030383238343030383238
      340D0A2020202020202020202020202020363338324646303033304546303033
      3045463030333045463645364536453030383238343331353946463030333045
      46303032394441303031394230364536450D0A20202020202020202020202020
      2036453030383238343030383238343030383238343030383238343030383238
      3430303832383438343832383430303832383430303832383430303832383438
      340D0A2020202020202020202020202020383238344646464646463030383238
      3430303832383438343832383446464646464630303832383430303832383430
      30383238343030383238343030383238340D0A20202020202020202020202020
      2036333832464630303330454630303230434536453645364530303832383430
      3038323834303038323834363338324646303033304546303032394441303031
      390D0A2020202020202020202020202020423036453645364530303832383430
      3038323834303038323834303038323834383438323834464646464646303038
      32383430303832383438343832383430300D0A20202020202020202020202020
      2038323834383438323834464646464646303038323834303038323834383438
      3238344646464646463030383238343030383238343030383238343030383238
      340D0A2020202020202020202020202020303038323834363338324646303033
      3045463030383238343030383238343030383238343030383238343030383238
      34363338324646303033304546303033300D0A20202020202020202020202020
      2045463030323944413030383238343030383238343030383238343030383238
      3438343832383446464646464646464646464638343832383430303832383430
      300D0A2020202020202020202020202020383238343030383238343834383238
      3446464646464630303832383430303832383438343832383446464646464630
      30383238343030383238343030383238340D0A20202020202020202020202020
      2030303832383430303832383430303832383430303832383430303832383430
      3038323834303038323834303038323834303038323834363338324646303033
      300D0A2020202020202020202020202020454630303239444130303832383430
      3038323834303038323834303038323834303038323834383438323834383438
      32383430303832383430303832383430300D0A20202020202020202020202020
      2038323834303038323834303038323834383438323834464646464646464646
      4646464646464646463834383238343030383238343030383238343030383238
      340D0A2020202020202020202020202020303038323834303038323834303038
      3238343030383238343030383238343030383238343030383238343030383238
      34303038323834303038323834303038320D0A20202020202020202020202020
      2038343030383238343030383238343030383238343030383238343030383238
      3430303832383430303832383430303832383430303832383430303832383430
      300D0A2020202020202020202020202020383238343030383238343030383238
      3430303832383438343832383438343832383438343832383430303832383430
      30383238347D0D0A2020202020202020202020204E756D476C79706873203D20
      320D0A20202020202020202020656E640D0A2020202020202020656E640D0A20
      202020202020206F626A6563742062746E48656C704F7074696F6E733A205442
      697442746E0D0A202020202020202020204C656674203D20380D0A2020202020
      2020202020546F70203D20330D0A202020202020202020205769647468203D20
      36350D0A20202020202020202020486569676874203D2032350D0A2020202020
      202020202043617074696F6E203D20272648656C70270D0A2020202020202020
      20205461624F72646572203D20310D0A202020202020202020204F6E436C6963
      6B203D2062746E48656C704F7074696F6E73436C69636B0D0A20202020202020
      202020476C7970682E44617461203D207B0D0A20202020202020202020202033
      3630333030303034323444333630333030303030303030303030303336303030
      303030323830303030303031303030303030303130303030303030303130300D
      0A20202020202020202020202031383030303030303030303030303033303030
      3031333042303030303133304230303030303030303030303030303030303030
      304646464646463943363936330D0A2020202020202020202020203943363936
      3339433639363339433639363339433639363339433639363339433639363339
      4336393633394336393633394336393633394336393633394336390D0A202020
      2020202020202020203633394336393633464646464646464646464646464646
      4646464135373537334637453344364646453744364646453743454646453343
      3646464130464646460D0A202020202020202020202020383546464646444242
      3546464437414446464437414446464433413546464433413541443739364246
      46464646464646464646464646464646464135373537330D0A20202020202020
      2020202020463745374436464645424436464645374436464641384646374230
      3037423837303738374646383546464646444242354646443741444646443741
      44464644330D0A20202020202020202020202041354144373936424646464646
      4646464646464646464646464641353735373346374542444546464546444546
      464542443646463941464639303130393039300D0A2020202020202020202020
      2031303930463037304630464644464244464644424235464644374144464644
      3741444144373936424646464646464646464646464646464646464135373537
      330D0A2020202020202020202020204637454645374646463345374646454644
      4546464542443646463835464646463835464646464533433646464533433646
      4644464244464644424235464644370D0A202020202020202020202020414441
      4437393642464646464646464646464646464646464646413537353733463745
      46454646464633453746464633453746464546444538373037383738370D0A20
      2020202020202020202020303738374646453743454646453343364646453343
      3646464446424446464442423541443739364246464646464646464646464646
      46464646464135373537330D0A20202020202020202020202046374633454646
      4646374546464646334537464646334537384130413841393331333933464638
      334646464645374345464645334336464645334336464644460D0A2020202020
      2020202020202042444144373936424646464646464646464646464646464646
      4641443744373346464637463746464642463746464637454646464633453741
      413241414139450D0A2020202020202020202020203145394538393039383946
      4639414646464645374345464645334336464645334336414437393642464646
      4646464646464646464646464646464144383237420D0A202020202020202020
      2020204646464246374646464246374646464246374646463745464646433546
      4638393039383941313231413139363136393646464537443646464537434546
      4645330D0A202020202020202020202020433641443739364246464646464646
      4646464646464646464646423538413742464646424646464646464646464646
      42463746464642463746374446434546460D0A20202020202020202020202041
      4546463844304438443930313039304646394546464646453744364646453743
      454144373936424646464646464646464646464646464646464244393237420D
      0A20202020202020202020202046464646464646464646464646464646464643
      3534354335383330333833414332434143393031303930383430343834464645
      334345464644464436464643460D0A2020202020202020202020204336414437
      3936424646464646464646464646464646464646464345394138344646464646
      4646464646464646464435464638383038383838463046384638460D0A202020
      2020202020202020203046384638423042384243453445434546464537443646
      3742414235463741323943414437393642464646464646464646464646464646
      4646464436413238340D0A202020202020202020202020464646464646464646
      4646464646464646464646454246464535363545354530363045304639373946
      39464646374546423537443733423537443733423537440D0A20202020202020
      2020202020373342353744373346464646464646464646464646464646464644
      4541413843464646464646464646464646464646464646464646464646464646
      46464646460D0A20202020202020202020202046464646464646424637464646
      4246374235374437334646443339344445413237424345394138344646464646
      464646464646464646464646464445414538430D0A2020202020202020202020
      2046464646464646464646464646464642464646464642464646374637463746
      3746334637463746334546454645464546423537443733453742363934443641
      320D0A2020202020202020202020203834464646464646464646464646464646
      4646464646464646464537423238434445414138344445414138344445414138
      3444454141383444454141383444450D0A202020202020202020202020414138
      3444454141383444454141383442353744373344454141383446464646464646
      46464646464646464646464646464646467D0D0A2020202020202020656E640D
      0A202020202020656E640D0A2020202020206F626A6563742070616E4F707469
      6F6E506167653A205450616E656C0D0A20202020202020204C656674203D2030
      0D0A2020202020202020546F70203D20300D0A20202020202020205769647468
      203D203530360D0A2020202020202020486569676874203D203333360D0A2020
      202020202020416C69676E203D20616C436C69656E740D0A2020202020202020
      426576656C4F75746572203D2062764E6F6E650D0A2020202020202020426F72
      6465725769647468203D20340D0A2020202020202020506172656E744261636B
      67726F756E64203D2046616C73650D0A20202020202020205461624F72646572
      203D20310D0A20202020202020206F626A6563742073706C744F7074696F6E73
      3A205453706C69747465720D0A202020202020202020204C656674203D203134
      390D0A20202020202020202020546F70203D20340D0A20202020202020202020
      5769647468203D20360D0A20202020202020202020486569676874203D203332
      380D0A20202020202020202020526573697A655374796C65203D207273557064
      6174650D0A2020202020202020656E640D0A20202020202020206F626A656374
      2074764F7074696F6E733A205454726565566965770D0A202020202020202020
      204C656674203D20340D0A20202020202020202020546F70203D20340D0A2020
      20202020202020205769647468203D203134350D0A2020202020202020202048
      6569676874203D203332380D0A2020202020202020202048696E74203D202753
      656C65637420746865206F7074696F6E2073637265656E20746F2073686F772E
      270D0A20202020202020202020416C69676E203D20616C4C6566740D0A202020
      202020202020204869646553656C656374696F6E203D2046616C73650D0A2020
      2020202020202020496D61676573203D20646D2E696D6C4F7074696F6E730D0A
      20202020202020202020496E64656E74203D2032370D0A202020202020202020
      20526561644F6E6C79203D20547275650D0A2020202020202020202053686F77
      526F6F74203D2046616C73650D0A202020202020202020205461624F72646572
      203D20300D0A202020202020202020204F6E4368616E6765203D2074764F7074
      696F6E734368616E67650D0A202020202020202020204F6E4D6F757365446F77
      6E203D2074764F7074696F6E734D6F757365446F776E0D0A2020202020202020
      20204974656D732E44617461203D207B0D0A2020202020202020202020203039
      3030303030303231303030303030303030303030303030303030303030304646
      4646464646464646464646464646303030303030303030303030303030300D0A
      2020202020202020202020203038343936453734363537323736363136433231
      3030303030303031303030303030303130303030303046464646464646464646
      4646464646463030303030300D0A202020202020202020202020303030303030
      3030303030383434363536363631373536433734373332383030303030303032
      30303030303030323030303030304646464646464646464646460D0A20202020
      2020202020202020464646463030303030303030303030303030303030463437
      3635364536353732363136433230344637303734363936463645373332393030
      30303030303330300D0A20202020202020202020202030303030303330303030
      3030464646464646464646464646464646463030303030303030303230303030
      303031303431363437363631364536333635363432300D0A2020202020202020
      2020202034463730373436393646364537333237303030303030303430303030
      3030303430303030303046464646464646464646464646464646303030303030
      303030300D0A2020202020202020202020203030303030303045353537333635
      3732323034393645373436353732363636313633363531443030303030303036
      3030303030303036303030303030464646460D0A202020202020202020202020
      4646464646464646464646463030303030303030303030303030303030343444
      3639373336333236303030303030303730303030303030373030303030304646
      0D0A202020202020202020202020464646464646464646464646464630303030
      3030303030303030303030303044344436463735373336353230343237353734
      37343646364537333231303030300D0A20202020202020202020202030303038
      3030303030303038303030303030464646464646464646464646464646463030
      303030303030303030303030303030383438364637343244344236350D0A2020
      2020202020202020202037393733324230303030303030393030303030303039
      3030303030304646464646464646464646464646464630303030303030303030
      303030303030313235370D0A2020202020202020202020203638363937343635
      3230324632303432364336313633364232303443363937333734323130303030
      3030304130303030303030413030303030304646464646460D0A202020202020
      2020202020204646464646464646464630303030303030303030303030303030
      3038353036433735363732443439364537333241303030303030304230303030
      3030304230300D0A202020202020202020202020303030304646464646464646
      4646464646464646303030303030303030303030303030303131353636393733
      37353631364332303431373037303635363137320D0A20202020202020202020
      202036313645363336357D0D0A2020202020202020656E640D0A202020202020
      20206F626A6563742070616E4F7074696F6E733A205450616E656C0D0A202020
      202020202020204C656674203D203135350D0A20202020202020202020546F70
      203D20340D0A202020202020202020205769647468203D203334370D0A202020
      20202020202020486569676874203D203332380D0A2020202020202020202041
      6C69676E203D20616C436C69656E740D0A20202020202020202020426576656C
      4F75746572203D2062764E6F6E650D0A202020202020202020205461624F7264
      6572203D20310D0A202020202020202020206F626A6563742070616E4F707453
      70616365723A205450616E656C0D0A2020202020202020202020204C65667420
      3D20300D0A202020202020202020202020546F70203D2033300D0A2020202020
      202020202020205769647468203D203334370D0A202020202020202020202020
      486569676874203D20340D0A202020202020202020202020416C69676E203D20
      616C546F700D0A202020202020202020202020426576656C4F75746572203D20
      62764E6F6E650D0A2020202020202020202020205461624F72646572203D2030
      0D0A20202020202020202020656E640D0A202020202020202020206F626A6563
      742070616E4F7074696F6E735469746C653A205450616E656C0D0A2020202020
      202020202020204C656674203D20300D0A202020202020202020202020546F70
      203D20300D0A2020202020202020202020205769647468203D203334370D0A20
      2020202020202020202020486569676874203D2033300D0A2020202020202020
      20202020416C69676E203D20616C546F700D0A20202020202020202020202042
      6576656C496E6E6572203D2062765261697365640D0A20202020202020202020
      2020426576656C4F75746572203D2062764C6F77657265640D0A202020202020
      202020202020436F6C6F72203D20636C57696E646F770D0A2020202020202020
      20202020506172656E744261636B67726F756E64203D2046616C73650D0A2020
      202020202020202020205461624F72646572203D20310D0A2020202020202020
      2020202044657369676E53697A65203D20280D0A202020202020202020202020
      20203334370D0A20202020202020202020202020203330290D0A202020202020
      2020202020206F626A65637420696D674F7074696F6E5469746C653A2054496D
      6167650D0A20202020202020202020202020204C656674203D20320D0A202020
      2020202020202020202020546F70203D20320D0A202020202020202020202020
      20205769647468203D2032360D0A202020202020202020202020202048656967
      6874203D2032360D0A2020202020202020202020202020416C69676E203D2061
      6C4C6566740D0A202020202020202020202020202043656E746572203D205472
      75650D0A202020202020202020202020656E640D0A2020202020202020202020
      206F626A656374206C626C4F7074696F6E5469746C653A20544C6162656C0D0A
      20202020202020202020202020204C656674203D2033320D0A20202020202020
      20202020202020546F70203D20380D0A20202020202020202020202020205769
      647468203D203331300D0A202020202020202020202020202048656967687420
      3D2031340D0A2020202020202020202020202020416C69676E6D656E74203D20
      746143656E7465720D0A2020202020202020202020202020416E63686F727320
      3D205B616B4C6566742C20616B546F702C20616B52696768745D0D0A20202020
      202020202020202020204175746F53697A65203D2046616C73650D0A20202020
      2020202020202020202043617074696F6E203D20274F7074696F6E73270D0A20
      2020202020202020202020656E640D0A20202020202020202020656E640D0A20
      20202020202020656E640D0A202020202020656E640D0A20202020656E640D0A
      202020206F626A65637420747352756C65733A205454616253686565740D0A20
      202020202043617074696F6E203D202752756C6573270D0A202020202020466F
      6E742E43686172736574203D2044454641554C545F434841525345540D0A2020
      20202020466F6E742E436F6C6F72203D20636C57696E646F77546578740D0A20
      2020202020466F6E742E486569676874203D202D31310D0A202020202020466F
      6E742E4E616D65203D20274D532053616E73205365726966270D0A2020202020
      20466F6E742E5374796C65203D205B5D0D0A202020202020496D616765496E64
      6578203D20320D0A202020202020506172656E74466F6E74203D2046616C7365
      0D0A2020202020206F626A6563742070616E52756C6573427574746F6E733A20
      5450616E656C0D0A20202020202020204C656674203D20300D0A202020202020
      2020546F70203D203333360D0A20202020202020205769647468203D20353036
      0D0A2020202020202020486569676874203D2033320D0A202020202020202041
      6C69676E203D20616C426F74746F6D0D0A2020202020202020426576656C4F75
      746572203D2062764E6F6E650D0A20202020202020205461624F72646572203D
      20310D0A20202020202020206F626A6563742070616E52756C6573427574746F
      6E7352696768743A205450616E656C0D0A202020202020202020204C65667420
      3D203239380D0A20202020202020202020546F70203D20300D0A202020202020
      202020205769647468203D203231330D0A202020202020202020204865696768
      74203D2033320D0A20202020202020202020416C69676E203D20616C52696768
      740D0A20202020202020202020426576656C4F75746572203D2062764E6F6E65
      0D0A202020202020202020205461624F72646572203D20300D0A202020202020
      202020206F626A6563742062746E5361766552756C65733A205442697442746E
      0D0A2020202020202020202020204C656674203D2031300D0A20202020202020
      2020202020546F70203D20330D0A202020202020202020202020576964746820
      3D203131330D0A202020202020202020202020486569676874203D2032350D0A
      20202020202020202020202043617074696F6E203D2027536176652052756C65
      73270D0A20202020202020202020202044656661756C74203D20547275650D0A
      202020202020202020202020456E61626C6564203D2046616C73650D0A202020
      2020202020202020205461624F72646572203D20300D0A202020202020202020
      2020204F6E436C69636B203D2062746E5361766552756C6573436C69636B0D0A
      202020202020202020202020476C7970682E44617461203D207B0D0A20202020
      2020202020202020202033363036303030303432344433363036303030303030
      3030303030303336303030303030323830303030303032303030303030303130
      303030303030303130300D0A2020202020202020202020202020313830303030
      3030303030303030303630303030323330423030303032333042303030303030
      30303030303030303030303030303030464630303030464630300D0A20202020
      2020202020202020202030304646303030304646303030304646303030304646
      3030303046463030303046463030303046463030303046463030303046463030
      303046463030303046460D0A2020202020202020202020202020303030304646
      3030303046463030303046463030303046463030303046463030303046463030
      30304646303030304646303030304646303030304646303030300D0A20202020
      2020202020202020202046463030303046463030303046463030303046463030
      3030464630303030464630303030464630303030464630303030464630303030
      464630303030464630300D0A2020202020202020202020202020383038303830
      3633363336333633363336333530353035303530353035303430343034303430
      34303430343034303430343034303430343034303430343034300D0A20202020
      2020202020202020202034303430343034303530353035303633363336333030
      4646303030304646303030304646303030304646303030304646303030304646
      303030304646303030300D0A2020202020202020202020202020464630303030
      4646303030304646303030304646303030304646303030304646303030304646
      30303030464630303030464630303030464630303030464630300D0A20202020
      2020202020202020202041413530303044333636303543383545303042354232
      4235423542324235423542324235423542324235423542324235423542324235
      394234393030394234390D0A2020202020202020202020202020303044333636
      3035443336363035353035303530303046463030303046463030364636463646
      36463646364636463646364636463646364636463646364636460D0A20202020
      2020202020202020202036463646364636463646364636463646364636463646
      3646364636463646364636463535353535353030464630303030464630303030
      464630304646393733420D0A2020202020202020202020202020454438303146
      4544383031464433363630354144394539434643384632454445423642354646
      46424646463746334637453745374537394234393030394234390D0A20202020
      2020202020202020202030304544383031464433363630353430343034303030
      4646303038373837383730304646303030304646303036463646364639463946
      394630304646303030300D0A2020202020202020202020202020464630303030
      4646303030304646303045374537453736463646364630304646303036463646
      36463030464630303030464630303030464630304646393733420D0A20202020
      2020202020202020202045443830314645443830314644333636303543454236
      4235444236453044464641323446444544424445464646424646463746334637
      394234393030394234390D0A2020202020202020202020202020303045443830
      3146443336363035343034303430303046463030383738373837303046463030
      30304646303036463646364642384238423830304646303030300D0A20202020
      2020202020202020202046463030303046463030303046463030453745374537
      3646364636463030464630303646364636463030464630303030464630303030
      464630304646393733420D0A2020202020202020202020202020454438303146
      4544383031464433363630354537433743364338354530304639384332424235
      42324235444544424445464646424646394234393030394234390D0A20202020
      2020202020202020202030304544383031464433363630353430343034303030
      4646303038373837383730304646303030304646303036463646364643414341
      434130304646303030300D0A2020202020202020202020202020464630303030
      4646303030304646303045374537453736463646364630304646303036463646
      36463030464630303030464630303030464630304646393733420D0A20202020
      2020202020202020202045443830314645443830314644333636303544454342
      4345434539363934434542324235414441414144423542324235443643464345
      394234393030413134430D0A2020202020202020202020202020303045443830
      3146443336363035343034303430303046463030383738373837303046463030
      30304646303036463646364643454345434539433943394342360D0A20202020
      2020202020202020202042364236414241424142423342334233434643464346
      3646364636463030464630303646364636463030464630303030464630303030
      464630304646393733420D0A2020202020202020202020202020454438303146
      4544383031464544383031464544383031464544383031464544383031464544
      38303146454438303146454438303146454438303146454438300D0A20202020
      2020202020202020202031464544383031464433363630353430343034303030
      4646303038373837383730304646303030304646303030304646303030304646
      303030304646303030300D0A2020202020202020202020202020464630303030
      4646303030304646303030304646303030304646303030304646303036463646
      36463030464630303030464630303030464630304646393733420D0A20202020
      2020202020202020202045443830314645443830314646464132344646464132
      3446464641323446464641323446464641323446464641323446464641323446
      464641323446454438300D0A2020202020202020202020202020314645443830
      3146443336363035343034303430303046463030383738373837303046463030
      30304646303039333933393339333933393339333933393339330D0A20202020
      2020202020202020202039333933393339333933393339333933393339333933
      3933393339333030464630303646364636463030464630303030464630303030
      464630304646393733420D0A2020202020202020202020202020454438303146
      4646413234464646464246464646464246464646464246464646464246464646
      46424646464646424646464646424646464646424646464641320D0A20202020
      2020202020202020202034464544383031464433363630353530353035303030
      4646303038373837383730304646303039333933393330304646303030304646
      303030304646303030300D0A2020202020202020202020202020464630303030
      4646303030304646303030304646303030304646303039333933393336463646
      36463030464630303030464630303030464630304646393733420D0A20202020
      2020202020202020202045443830314646464132344646464642464643364333
      4336433643334336433643334336433643374336433643374336433643374336
      464646424646464641320D0A2020202020202020202020202020344645443830
      3146443336363035353035303530303046463030383738373837303046463030
      39333933393330304646303043344334433443344334433443340D0A20202020
      2020202020202020202043344334433743374337433743374337433743374337
      3030464630303933393339333646364636463030464630303030464630303030
      464630304646393733420D0A2020202020202020202020202020454438303146
      4646413234464646464246464646464246464646464246464646464246464646
      46424646464646424646464646424646464646424646464641320D0A20202020
      2020202020202020202034464544383031464433363630353633363336333030
      4646303038373837383730304646303039333933393330304646303030304646
      303030304646303030300D0A2020202020202020202020202020464630303030
      4646303030304646303030304646303030304646303039333933393336463646
      36463030464630303030464630303030464630304646393733420D0A20202020
      2020202020202020202045443830314646464132344646464642464642444245
      4244433643334336433643334336433643334336433643374336433643374336
      464646424646464641320D0A2020202020202020202020202020344645443830
      3146443336363035363336333633303046463030383738373837303046463030
      39333933393330304646303042444245424443364333433643360D0A20202020
      2020202020202020202043334336433643334336433643374336433643374336
      3030464630303933393339333646364636463030464630303030464630303030
      464630304646393733420D0A2020202020202020202020202020454438303146
      4646413234464646464246464646464246464646464246464646464246464646
      46424646464646424646464646424646464646424646464641320D0A20202020
      2020202020202020202034464544383031464433363630353830383038303030
      4646303038373837383730304646303039333933393330304646303030304646
      303030304646303030300D0A2020202020202020202020202020464630303030
      4646303030304646303030304646303030304646303039333933393336463646
      36463030464630303030464630303030464630304646393733420D0A20202020
      2020202020202020202044333636303546464132344630303030433030303030
      4330303030304330303030304330303030304330303030304330303030304330
      303030304330464641320D0A2020202020202020202020202020344644333636
      3035303046463030303046463030303046463030383738373837364636463646
      39333933393336463646364636463646364636463646364636460D0A20202020
      2020202020202020202036463646364636463646364636463646364636463646
      3646364636463933393339333535353535353030464630303030464630303030
      464630303030464630300D0A2020202020202020202020202020303046463030
      3030464630303030464630303030464630303030464630303030464630303030
      46463030303046463030303046463030303046463030303046460D0A20202020
      2020202020202020202030303030464630303030464630303030464630303030
      4646303030304646303030304646303030304646303030304646303030304646
      303030304646303030300D0A2020202020202020202020202020464630303030
      4646303030304646303030304646303030304646303030304646303030304646
      30303030464630303030464630307D0D0A2020202020202020202020204E756D
      476C79706873203D20320D0A20202020202020202020656E640D0A2020202020
      20202020206F626A6563742062746E43616E63656C52756C653A205442697442
      746E0D0A2020202020202020202020204C656674203D203133320D0A20202020
      2020202020202020546F70203D20330D0A202020202020202020202020576964
      7468203D2037350D0A202020202020202020202020486569676874203D203235
      0D0A20202020202020202020202043616E63656C203D20547275650D0A202020
      20202020202020202043617074696F6E203D202743616E63656C270D0A202020
      202020202020202020456E61626C6564203D2046616C73650D0A202020202020
      2020202020205461624F72646572203D20310D0A202020202020202020202020
      4F6E436C69636B203D2062746E43616E63656C52756C65436C69636B0D0A2020
      20202020202020202020476C7970682E44617461203D207B0D0A202020202020
      2020202020202020333630363030303034323444333630363030303030303030
      3030303033363030303030303238303030303030323030303030303031303030
      30303030303130300D0A20202020202020202020202020203138303030303030
      3030303030303036303030303233304230303030323330423030303030303030
      3030303030303030303030303030383238343030383238340D0A202020202020
      2020202020202020364536453645364536453645303038323834303038323834
      3030383238343030383238343030383238343030383238343030383238343030
      38323834303038320D0A20202020202020202020202020203834303038323834
      3030383238343030383238343030383238343030383238343030383238344646
      4646464630303832383430303832383430303832383430300D0A202020202020
      2020202020202020383238343030383238343030383238343030383238343030
      3832383430303832383430303832383430303832383430303832383430303832
      38343331353946460D0A20202020202020202020202020203030323944413030
      3139423036453645364530303832383430303832383430303832383430303832
      3834303038323834333135394646364536453645303038320D0A202020202020
      2020202020202020383430303832383430303832383430303832383430303832
      3834303038323834383438323834383438323834464646464646303038323834
      30303832383430300D0A20202020202020202020202020203832383430303832
      3834303038323834303038323834464646464646303038323834303038323834
      3030383238343030383238343030383238343331353946460D0A202020202020
      2020202020202020303033304546303032394441303031394230364536453645
      3030383238343030383238343030383238343331353946463030323043453030
      31394230364536450D0A20202020202020202020202020203645303038323834
      3030383238343030383238343030383238343834383238344646464646463030
      3832383438343832383446464646464630303832383430300D0A202020202020
      2020202020202020383238343030383238344646464646463834383238343834
      3832383446464646464630303832383430303832383430303832383430303832
      38343633383246460D0A20202020202020202020202020203030333045463030
      3330454630303239444130303139423036453645364530303832383433313539
      4646303032304345303032304345303032304345303031390D0A202020202020
      2020202020202020423036453645364530303832383430303832383430303832
      3834383438323834464646464646303038323834303038323834383438323834
      46464646464630300D0A20202020202020202020202020203832383446464646
      4646383438323834303038323834303038323834383438323834464646464646
      3030383238343030383238343030383238343030383238340D0A202020202020
      2020202020202020363338324646303033304546303033304546303032394441
      3030313942303645364536453030323944413030323043453030323043453030
      32304345303031390D0A20202020202020202020202020204230364536453645
      3030383238343030383238343030383238343834383238344646464646463030
      3832383430303832383430303832383438343832383446460D0A202020202020
      2020202020202020464646463834383238343030383238343030383238343030
      3832383430303832383438343832383446464646464630303832383430303832
      38343030383238340D0A20202020202020202020202020203030383238343633
      3832464630303330454630303330454630303239444130303239444130303239
      4441303032394441303032304345303032304345364536450D0A202020202020
      2020202020202020364530303832383430303832383430303832383430303832
      3834303038323834383438323834464646464646303038323834303038323834
      30303832383438340D0A20202020202020202020202020203832383430303832
      3834303038323834303038323834303038323834464646464646383438323834
      3030383238343030383238343030383238343030383238340D0A202020202020
      2020202020202020303038323834303038323834363338324646303033304546
      3030323944413030323944413030323944413030323944413030323944413645
      36453645303038320D0A20202020202020202020202020203834303038323834
      3030383238343030383238343030383238343030383238343030383238343834
      3832383446464646464630303832383430303832383430300D0A202020202020
      2020202020202020383238343030383238343030383238343030383238344646
      4646464638343832383430303832383430303832383430303832383430303832
      38343030383238340D0A20202020202020202020202020203030383238343030
      3832383430303832383430303330454630303330454630303239444130303239
      4441303031394230364536453645303038323834303038320D0A202020202020
      2020202020202020383430303832383430303832383430303832383430303832
      3834303038323834303038323834303038323834383438323834464646464646
      30303832383430300D0A20202020202020202020202020203832383430303832
      3834303038323834303038323834383438323834303038323834303038323834
      3030383238343030383238343030383238343030383238340D0A202020202020
      2020202020202020303038323834303038323834303038323834333135394646
      3030333045463030333045463030323944413030313942303645364536453030
      38323834303038320D0A20202020202020202020202020203834303038323834
      3030383238343030383238343030383238343030383238343030383238343030
      3832383430303832383438343832383446464646464630300D0A202020202020
      2020202020202020383238343030383238343030383238343834383238343030
      3832383430303832383430303832383430303832383430303832383430303832
      38343030383238340D0A20202020202020202020202020203030383238343030
      3832383433313539464630303330454630303330454630303330454630303330
      4546303031394230364536453645303038323834303038320D0A202020202020
      2020202020202020383430303832383430303832383430303832383430303832
      3834303038323834303038323834303038323834303038323834383438323834
      30303832383430300D0A20202020202020202020202020203832383430303832
      3834303038323834383438323834464646464646303038323834303038323834
      3030383238343030383238343030383238343030383238340D0A202020202020
      2020202020202020303038323834333135394646303033304546303033304546
      3030333045463645364536453030333045463030323944413030313942303645
      36453645303038320D0A20202020202020202020202020203834303038323834
      3030383238343030383238343030383238343030383238343030383238343030
      3832383438343832383430303832383430303832383430300D0A202020202020
      2020202020202020383238343030383238343030383238343834383238344646
      4646464630303832383430303832383430303832383430303832383430303832
      38343030383238340D0A20202020202020202020202020203633383246463030
      3330454630303330454630303330454636453645364530303832383433313539
      4646303033304546303032394441303031394230364536450D0A202020202020
      2020202020202020364530303832383430303832383430303832383430303832
      3834303038323834303038323834383438323834303038323834303038323834
      30303832383438340D0A20202020202020202020202020203832383446464646
      4646303038323834303038323834383438323834464646464646303038323834
      3030383238343030383238343030383238343030383238340D0A202020202020
      2020202020202020363338324646303033304546303032304345364536453645
      3030383238343030383238343030383238343633383246463030333045463030
      32394441303031390D0A20202020202020202020202020204230364536453645
      3030383238343030383238343030383238343030383238343834383238344646
      4646464630303832383430303832383438343832383430300D0A202020202020
      2020202020202020383238343834383238344646464646463030383238343030
      3832383438343832383446464646464630303832383430303832383430303832
      38343030383238340D0A20202020202020202020202020203030383238343633
      3832464630303330454630303832383430303832383430303832383430303832
      3834303038323834363338324646303033304546303033300D0A202020202020
      2020202020202020454630303239444130303832383430303832383430303832
      3834303038323834383438323834464646464646464646464646383438323834
      30303832383430300D0A20202020202020202020202020203832383430303832
      3834383438323834464646464646303038323834303038323834383438323834
      4646464646463030383238343030383238343030383238340D0A202020202020
      2020202020202020303038323834303038323834303038323834303038323834
      3030383238343030383238343030383238343030383238343030383238343633
      38324646303033300D0A20202020202020202020202020204546303032394441
      3030383238343030383238343030383238343030383238343030383238343834
      3832383438343832383430303832383430303832383430300D0A202020202020
      2020202020202020383238343030383238343030383238343834383238344646
      4646464646464646464646464646464638343832383430303832383430303832
      38343030383238340D0A20202020202020202020202020203030383238343030
      3832383430303832383430303832383430303832383430303832383430303832
      3834303038323834303038323834303038323834303038320D0A202020202020
      2020202020202020383430303832383430303832383430303832383430303832
      3834303038323834303038323834303038323834303038323834303038323834
      30303832383430300D0A20202020202020202020202020203832383430303832
      3834303038323834303038323834383438323834383438323834383438323834
      3030383238343030383238347D0D0A2020202020202020202020204E756D476C
      79706873203D20320D0A20202020202020202020656E640D0A20202020202020
      20656E640D0A20202020202020206F626A6563742062746E48656C7052756C65
      733A205442697442746E0D0A202020202020202020204C656674203D20380D0A
      20202020202020202020546F70203D20330D0A20202020202020202020576964
      7468203D2036350D0A20202020202020202020486569676874203D2032350D0A
      2020202020202020202043617074696F6E203D20272648656C70270D0A202020
      202020202020205461624F72646572203D20310D0A202020202020202020204F
      6E436C69636B203D2062746E48656C7052756C6573436C69636B0D0A20202020
      202020202020476C7970682E44617461203D207B0D0A20202020202020202020
      2020333630333030303034323444333630333030303030303030303030303336
      3030303030303238303030303030313030303030303031303030303030303031
      30300D0A20202020202020202020202031383030303030303030303030303033
      3030303031333042303030303133304230303030303030303030303030303030
      303030304646464646463943363936330D0A2020202020202020202020203943
      3639363339433639363339433639363339433639363339433639363339433639
      3633394336393633394336393633394336393633394336393633394336390D0A
      2020202020202020202020203633394336393633464646464646464646464646
      4646464646464135373537334637453344364646453744364646453743454646
      4533433646464130464646460D0A202020202020202020202020383546464646
      4442423546464437414446464437414446464433413546464433413541443739
      36424646464646464646464646464646464646464135373537330D0A20202020
      2020202020202020463745374436464645424436464645374436464641384646
      3742303037423837303738374646383546464646444242354646443741444646
      44374144464644330D0A20202020202020202020202041354144373936424646
      4646464646464646464646464646464641353735373346374542444546464546
      444546464542443646463941464639303130393039300D0A2020202020202020
      2020202031303930463037304630464644464244464644424235464644374144
      4646443741444144373936424646464646464646464646464646464646464135
      373537330D0A2020202020202020202020204637454645374646463345374646
      4546444546464542443646463835464646463835464646464533433646464533
      4336464644464244464644424235464644370D0A202020202020202020202020
      4144414437393642464646464646464646464646464646464646413537353733
      4637454645464646463345374646463345374646454644453837303738373837
      0D0A202020202020202020202020303738374646453743454646453343364646
      4533433646464446424446464442423541443739364246464646464646464646
      46464646464646464135373537330D0A20202020202020202020202046374633
      4546464646374546464646334537464646334537384130413841393331333933
      464638334646464645374345464645334336464645334336464644460D0A2020
      2020202020202020202042444144373936424646464646464646464646464646
      4646464641443744373346464637463746464642463746464637454646464633
      453741413241414139450D0A2020202020202020202020203145394538393039
      3839464639414646464645374345464645334336464645334336414437393642
      4646464646464646464646464646464646464144383237420D0A202020202020
      2020202020204646464246374646464246374646464246374646463745464646
      4335464638393039383941313231413139363136393646464537443646464537
      4345464645330D0A202020202020202020202020433641443739364246464646
      4646464646464646464646464646423538413742464646424646464646464646
      46464642463746464642463746374446434546460D0A20202020202020202020
      2020414546463844304438443930313039304646394546464646453744364646
      4537434541443739364246464646464646464646464646464646464642443932
      37420D0A20202020202020202020202046464646464646464646464646464646
      4646433534354335383330333833414332434143393031303930383430343834
      464645334345464644464436464643460D0A2020202020202020202020204336
      4144373936424646464646464646464646464646464646464345394138344646
      4646464646464646464646464435464638383038383838463046384638460D0A
      2020202020202020202020203046384638423042384243453445434546464537
      4436463742414235463741323943414437393642464646464646464646464646
      4646464646464436413238340D0A202020202020202020202020464646464646
      4646464646464646464646464646454246464535363545354530363045304639
      37394639464646374546423537443733423537443733423537440D0A20202020
      2020202020202020373342353744373346464646464646464646464646464646
      4646444541413843464646464646464646464646464646464646464646464646
      46464646464646460D0A20202020202020202020202046464646464646424637
      4646464246374235374437334646443339344445413237424345394138344646
      464646464646464646464646464646464445414538430D0A2020202020202020
      2020202046464646464646464646464646464642464646464642464646374637
      4637463746334637463746334546454645464546423537443733453742363934
      443641320D0A2020202020202020202020203834464646464646464646464646
      4646464646464646464646464537423238434445414138344445414138344445
      4141383444454141383444454141383444450D0A202020202020202020202020
      4141383444454141383444454141383442353744373344454141383446464646
      46464646464646464646464646464646464646467D0D0A202020202020202065
      6E640D0A202020202020656E640D0A2020202020206F626A6563742070616E52
      756C6573546F703A205450616E656C0D0A20202020202020204C656674203D20
      300D0A2020202020202020546F70203D20300D0A202020202020202057696474
      68203D203530360D0A2020202020202020486569676874203D203333360D0A20
      20202020202020416C69676E203D20616C436C69656E740D0A20202020202020
      20426576656C4F75746572203D2062764E6F6E650D0A2020202020202020426F
      726465725769647468203D20340D0A20202020202020205461624F7264657220
      3D20300D0A20202020202020206F626A6563742073706C7452756C65733A2054
      53706C69747465720D0A202020202020202020204C656674203D203130340D0A
      20202020202020202020546F70203D2033350D0A202020202020202020205769
      647468203D20350D0A20202020202020202020486569676874203D203239370D
      0A20202020202020202020526573697A655374796C65203D2072735570646174
      650D0A2020202020202020656E640D0A20202020202020206F626A6563742052
      756C6573546F6F6C6261723A2054416374696F6E546F6F6C4261720D0A202020
      202020202020204C656674203D20340D0A20202020202020202020546F70203D
      20340D0A202020202020202020205769647468203D203439380D0A2020202020
      2020202020486569676874203D2033310D0A2020202020202020202041637469
      6F6E4D616E61676572203D20416374696F6E4D616E616765720D0A2020202020
      202020202043617074696F6E203D202752756C6573270D0A2020202020202020
      2020436F6C6F724D61702E486967686C69676874436F6C6F72203D20636C5768
      6974650D0A20202020202020202020436F6C6F724D61702E42746E53656C6563
      746564436F6C6F72203D20636C42746E466163650D0A20202020202020202020
      436F6C6F724D61702E556E75736564436F6C6F72203D20636C57686974650D0A
      2020202020202020202045646765426F7264657273203D205B65624C6566742C
      206562546F702C20656252696768742C206562426F74746F6D5D0D0A20202020
      20202020202045646765496E6E6572203D2065734C6F77657265640D0A202020
      20202020202020466F6E742E43686172736574203D2044454641554C545F4348
      41525345540D0A20202020202020202020466F6E742E436F6C6F72203D20636C
      57696E646F77546578740D0A20202020202020202020466F6E742E4865696768
      74203D202D31310D0A20202020202020202020466F6E742E4E616D65203D2027
      5461686F6D61270D0A20202020202020202020466F6E742E5374796C65203D20
      5B5D0D0A20202020202020202020486F727A4D617267696E203D20340D0A2020
      2020202020202020506172656E744261636B67726F756E64203D20547275650D
      0A20202020202020202020506172656E74436F6C6F72203D20547275650D0A20
      202020202020202020506172656E74466F6E74203D2046616C73650D0A202020
      20202020202020506F7075704D656E75203D20646D2E6D6E75546F6F6C626172
      0D0A2020202020202020202053706163696E67203D20380D0A20202020202020
      202020566572744D617267696E203D20340D0A2020202020202020656E640D0A
      20202020202020206F626A656374205363726F6C6C426F78313A20545363726F
      6C6C426F780D0A202020202020202020204C656674203D203130390D0A202020
      20202020202020546F70203D2033350D0A202020202020202020205769647468
      203D203339330D0A20202020202020202020486569676874203D203239370D0A
      20202020202020202020416C69676E203D20616C436C69656E740D0A20202020
      202020202020426576656C496E6E6572203D2062764E6F6E650D0A2020202020
      2020202020426576656C4F75746572203D2062764E6F6E650D0A202020202020
      20202020426F726465725374796C65203D2062734E6F6E650D0A202020202020
      202020205461624F72646572203D20310D0A202020202020202020206F626A65
      63742070616E52756C6544657461696C3A205450616E656C0D0A202020202020
      2020202020204C656674203D20300D0A202020202020202020202020546F7020
      3D20300D0A2020202020202020202020205769647468203D203339330D0A2020
      20202020202020202020486569676874203D203239310D0A2020202020202020
      20202020416C69676E203D20616C546F700D0A20202020202020202020202042
      6576656C4F75746572203D2062764E6F6E650D0A202020202020202020202020
      426F726465725769647468203D20340D0A202020202020202020202020546162
      4F72646572203D20300D0A20202020202020202020202056697369626C65203D
      2046616C73650D0A2020202020202020202020204F6E526573697A65203D2070
      616E52756C6544657461696C526573697A650D0A202020202020202020202020
      6F626A656374206762416374696F6E733A205447726F7570426F780D0A202020
      20202020202020202020204C656674203D20340D0A2020202020202020202020
      202020546F70203D203136370D0A202020202020202020202020202057696474
      68203D203338350D0A2020202020202020202020202020486569676874203D20
      3132340D0A2020202020202020202020202020416C69676E203D20616C546F70
      0D0A202020202020202020202020202043617074696F6E203D2027416374696F
      6E73270D0A20202020202020202020202020205461624F72646572203D20310D
      0A202020202020202020202020202044657369676E53697A65203D20280D0A20
      2020202020202020202020202020203338350D0A202020202020202020202020
      20202020313234290D0A20202020202020202020202020206F626A6563742062
      746E456452756C655761763A20545370656564427574746F6E0D0A2020202020
      20202020202020202020204C656674203D203334330D0A202020202020202020
      20202020202020546F70203D2031330D0A202020202020202020202020202020
      205769647468203D2032310D0A20202020202020202020202020202020486569
      676874203D2032310D0A20202020202020202020202020202020416E63686F72
      73203D205B616B546F702C20616B52696768745D0D0A20202020202020202020
      202020202020476C7970682E44617461203D207B0D0A20202020202020202020
      2020202020202020393630303030303034323444393630303030303030303030
      3030303037363030303030303238303030303030304130303030303030343030
      30303030303130300D0A20202020202020202020202020202020202030343030
      3030303030303030323030303030303030303030303030303030303030303030
      313030303030303030303030303030303030303030303030464646460D0A2020
      2020202020202020202020202020202046463030303030303030303030303030
      3030303030303030303030303030303030303030303030303030303030303030
      303030303030303030303030303030300D0A2020202020202020202020202020
      2020202030303030303030303030303030303030303030303030303030303030
      3030303030303030303030303030303030303030303030303131313131313131
      313130300D0A2020202020202020202020202020202020203030303030303131
      3030313130303030303030303030313130303131303030303030303031313131
      3131313131313030303030307D0D0A2020202020202020202020202020202056
      697369626C65203D2046616C73650D0A20202020202020202020202020202020
      4F6E436C69636B203D2062746E456452756C65576176436C69636B0D0A202020
      2020202020202020202020656E640D0A20202020202020202020202020206F62
      6A6563742062746E456452756C654558453A20545370656564427574746F6E0D
      0A202020202020202020202020202020204C656674203D203336380D0A202020
      20202020202020202020202020546F70203D2033380D0A202020202020202020
      202020202020205769647468203D2031390D0A20202020202020202020202020
      202020486569676874203D2031390D0A20202020202020202020202020202020
      416E63686F7273203D205B616B546F702C20616B52696768745D0D0A20202020
      202020202020202020202020476C7970682E44617461203D207B0D0A20202020
      2020202020202020202020202020393630303030303034323444393630303030
      3030303030303030303037363030303030303238303030303030304130303030
      30303034303030303030303130300D0A20202020202020202020202020202020
      2020303430303030303030303030323030303030303030303030303030303030
      3030303030303130303030303030303030303030303030303030303030304646
      46460D0A20202020202020202020202020202020202046463030303030303030
      3030303030303030303030303030303030303030303030303030303030303030
      303030303030303030303030303030303030303030300D0A2020202020202020
      2020202020202020202030303030303030303030303030303030303030303030
      3030303030303030303030303030303030303030303030303030303030303131
      313131313131313130300D0A2020202020202020202020202020202020203030
      3030303031313030313130303030303030303030313130303131303030303030
      3030313131313131313131313030303030307D0D0A2020202020202020202020
      202020202056697369626C65203D2046616C73650D0A20202020202020202020
      2020202020204F6E436C69636B203D2062746E456452756C65455845436C6963
      6B0D0A2020202020202020202020202020656E640D0A20202020202020202020
      202020206F626A6563742062746E52756C65536F756E64546573743A20545370
      656564427574746F6E0D0A202020202020202020202020202020204C65667420
      3D203336360D0A20202020202020202020202020202020546F70203D2031330D
      0A202020202020202020202020202020205769647468203D2032310D0A202020
      20202020202020202020202020486569676874203D2032310D0A202020202020
      2020202020202020202048696E74203D2027546573742074686520736F756E64
      2066696C65270D0A20202020202020202020202020202020416E63686F727320
      3D205B616B546F702C20616B52696768745D0D0A202020202020202020202020
      20202020476C7970682E44617461203D207B0D0A202020202020202020202020
      2020202020204636303030303030343234444636303030303030303030303030
      3030373630303030303032383030303030303130303030303030313030303030
      3030303130300D0A202020202020202020202020202020202020303430303030
      3030303030303830303030303030303030303030303030303030303030303130
      30303030303031303030303030303030303030303030303030300D0A20202020
      2020202020202020202020202020424630303030424630303030303042464246
      3030424630303030303042463030424630304246424630303030433043304330
      30303830383038303030303030300D0A20202020202020202020202020202020
      2020464630303030464630303030303046464646303046463030303030304646
      3030464630304646464630303030464646464646303037373737373737373737
      37370D0A20202020202020202020202020202020202037373737373737383030
      3038373737373737373737373830303030303837373737373737373738303030
      303030373737373737373737373830303038303737370D0A2020202020202020
      2020202020202020202037373737373737373737373730373730373737373737
      3737373737373037373730373737373737373737373730373737303737373737
      373737373737303737370D0A2020202020202020202020202020202020203037
      3737373737373737373730373737303737373737373737373737303737303837
      3737373737373737373730303030373737373737373737373737303030370D0A
      2020202020202020202020202020202020203737373737373737373737373030
      3737373737373737373737373737303837373737373737373737373737373037
      3737373737377D0D0A20202020202020202020202020202020506172656E7453
      686F7748696E74203D2046616C73650D0A202020202020202020202020202020
      2053686F7748696E74203D20547275650D0A2020202020202020202020202020
      202056697369626C65203D2046616C73650D0A20202020202020202020202020
      2020204F6E436C69636B203D2062746E52756C65536F756E6454657374436C69
      636B0D0A2020202020202020202020202020656E640D0A202020202020202020
      20202020206F626A6563742063686B52756C6544656C6574653A205443686563
      6B426F780D0A202020202020202020202020202020204C656674203D20340D0A
      20202020202020202020202020202020546F70203D2031350D0A202020202020
      202020202020202020205769647468203D203134310D0A202020202020202020
      20202020202020486569676874203D2031370D0A202020202020202020202020
      2020202043617074696F6E203D202744656C657465202666726F6D2073657276
      6572270D0A202020202020202020202020202020205461624F72646572203D20
      300D0A202020202020202020202020202020204F6E436C69636B203D2063686B
      52756C6544656C657465436C69636B0D0A202020202020202020202020202065
      6E640D0A20202020202020202020202020206F626A6563742063686B52756C65
      5761763A2054436865636B426F780D0A20202020202020202020202020202020
      4C656674203D203134380D0A20202020202020202020202020202020546F7020
      3D2031350D0A202020202020202020202020202020205769647468203D203835
      0D0A20202020202020202020202020202020486569676874203D2031370D0A20
      20202020202020202020202020202043617074696F6E203D2027506C61792026
      536F756E64270D0A202020202020202020202020202020205461624F72646572
      203D20310D0A202020202020202020202020202020204F6E436C69636B203D20
      63686B52756C65576176436C69636B0D0A202020202020202020202020202065
      6E640D0A20202020202020202020202020206F626A6563742063686B52756C65
      49676E6F72653A2054436865636B426F780D0A20202020202020202020202020
      2020204C656674203D20340D0A20202020202020202020202020202020546F70
      203D2036330D0A202020202020202020202020202020205769647468203D2031
      34310D0A20202020202020202020202020202020486569676874203D2031370D
      0A2020202020202020202020202020202043617074696F6E203D202749676E6F
      2672652028646F6E272333392774206E6F7469667929270D0A20202020202020
      2020202020202020205461624F72646572203D20360D0A202020202020202020
      202020202020204F6E436C69636B203D2063686B52756C6549676E6F7265436C
      69636B0D0A2020202020202020202020202020656E640D0A2020202020202020
      2020202020206F626A65637420656452756C655761763A2054456469740D0A20
      2020202020202020202020202020204C656674203D203233360D0A2020202020
      2020202020202020202020546F70203D2031330D0A2020202020202020202020
      20202020205769647468203D203130360D0A2020202020202020202020202020
      2020486569676874203D2032310D0A2020202020202020202020202020202041
      6E63686F7273203D205B616B4C6566742C20616B546F702C20616B5269676874
      5D0D0A202020202020202020202020202020205461624F72646572203D20320D
      0A2020202020202020202020202020202056697369626C65203D2046616C7365
      0D0A202020202020202020202020202020204F6E4368616E6765203D20656452
      756C655761764368616E67650D0A2020202020202020202020202020656E640D
      0A20202020202020202020202020206F626A6563742063686B52756C65455845
      3A2054436865636B426F780D0A202020202020202020202020202020204C6566
      74203D203134380D0A20202020202020202020202020202020546F70203D2033
      390D0A202020202020202020202020202020205769647468203D2038310D0A20
      202020202020202020202020202020486569676874203D2031370D0A20202020
      20202020202020202020202043617074696F6E203D2027452678656375746520
      46696C65270D0A202020202020202020202020202020205461624F7264657220
      3D20340D0A202020202020202020202020202020204F6E436C69636B203D2063
      686B52756C65455845436C69636B0D0A2020202020202020202020202020656E
      640D0A20202020202020202020202020206F626A65637420656452756C654558
      453A2054456469740D0A202020202020202020202020202020204C656674203D
      203233360D0A20202020202020202020202020202020546F70203D2033370D0A
      202020202020202020202020202020205769647468203D203133310D0A202020
      20202020202020202020202020486569676874203D2032310D0A202020202020
      20202020202020202020416E63686F7273203D205B616B4C6566742C20616B54
      6F702C20616B52696768745D0D0A202020202020202020202020202020205461
      624F72646572203D20350D0A2020202020202020202020202020202056697369
      626C65203D2046616C73650D0A202020202020202020202020202020204F6E43
      68616E6765203D20656452756C654558454368616E67650D0A20202020202020
      20202020202020656E640D0A20202020202020202020202020206F626A656374
      2063686B52756C65496D706F7274616E743A2054436865636B426F780D0A2020
      20202020202020202020202020204C656674203D203134380D0A202020202020
      20202020202020202020546F70203D2038340D0A202020202020202020202020
      202020205769647468203D203139370D0A202020202020202020202020202020
      20486569676874203D2031370D0A202020202020202020202020202020204361
      7074696F6E203D2027496D706F7274616E7420282642616C6C6F6F6E20506F70
      2D757029270D0A202020202020202020202020202020205461624F7264657220
      3D20390D0A202020202020202020202020202020204F6E436C69636B203D2063
      686B52756C65496D706F7274616E74436C69636B0D0A20202020202020202020
      20202020656E640D0A20202020202020202020202020206F626A656374206368
      6B52756C654C6F673A2054436865636B426F780D0A2020202020202020202020
      20202020204C656674203D20340D0A2020202020202020202020202020202054
      6F70203D203130340D0A20202020202020202020202020202020576964746820
      3D203134310D0A20202020202020202020202020202020486569676874203D20
      31370D0A2020202020202020202020202020202043617074696F6E203D202726
      4C6F672052756C65270D0A20202020202020202020202020202020436865636B
      6564203D20547275650D0A202020202020202020202020202020205374617465
      203D206362436865636B65640D0A202020202020202020202020202020205461
      624F72646572203D2031300D0A202020202020202020202020202020204F6E43
      6C69636B203D2063686B52756C654C6F67436C69636B0D0A2020202020202020
      202020202020656E640D0A20202020202020202020202020206F626A65637420
      63686B52756C655370616D3A2054436865636B426F780D0A2020202020202020
      20202020202020204C656674203D20340D0A2020202020202020202020202020
      2020546F70203D2033390D0A2020202020202020202020202020202057696474
      68203D203134310D0A2020202020202020202020202020202048656967687420
      3D2031370D0A2020202020202020202020202020202043617074696F6E203D20
      27264D61726B206173205370616D270D0A202020202020202020202020202020
      205461624F72646572203D20330D0A202020202020202020202020202020204F
      6E436C69636B203D2063686B52756C655370616D436C69636B0D0A2020202020
      202020202020202020656E640D0A20202020202020202020202020206F626A65
      63742063686B52756C6550726F746563743A2054436865636B426F780D0A2020
      20202020202020202020202020204C656674203D203134380D0A202020202020
      20202020202020202020546F70203D203130340D0A2020202020202020202020
      20202020205769647468203D203139370D0A2020202020202020202020202020
      2020486569676874203D2031370D0A2020202020202020202020202020202043
      617074696F6E203D20272650726F7465637420616761696E7374206175746F2D
      64656C657465270D0A202020202020202020202020202020205461624F726465
      72203D2031310D0A202020202020202020202020202020204F6E436C69636B20
      3D2063686B52756C6550726F74656374436C69636B0D0A202020202020202020
      2020202020656E640D0A20202020202020202020202020206F626A6563742063
      686B52756C6554726179436F6C6F723A2054436865636B426F780D0A20202020
      2020202020202020202020204C656674203D203134380D0A2020202020202020
      2020202020202020546F70203D2036330D0A2020202020202020202020202020
      20205769647468203D2038350D0A202020202020202020202020202020204865
      69676874203D2031370D0A202020202020202020202020202020204361707469
      6F6E203D2027547261792026436F6C6F72270D0A202020202020202020202020
      202020205461624F72646572203D20370D0A2020202020202020202020202020
      20204F6E436C69636B203D2063686B52756C6554726179436F6C6F72436C6963
      6B0D0A2020202020202020202020202020656E640D0A20202020202020202020
      202020206F626A65637420636F6C52756C6554726179436F6C6F723A2054436F
      6C6F72426F780D0A202020202020202020202020202020204C656674203D2032
      33360D0A20202020202020202020202020202020546F70203D2036300D0A2020
      20202020202020202020202020205769647468203D203131330D0A2020202020
      2020202020202020202020486569676874203D2032320D0A2020202020202020
      20202020202020204974656D486569676874203D2031360D0A20202020202020
      2020202020202020205461624F72646572203D20380D0A202020202020202020
      2020202020202056697369626C65203D2046616C73650D0A2020202020202020
      20202020202020204F6E4368616E6765203D20636F6C52756C6554726179436F
      6C6F724368616E67650D0A2020202020202020202020202020656E640D0A2020
      20202020202020202020656E640D0A2020202020202020202020206F626A6563
      7420676252756C653A205447726F7570426F780D0A2020202020202020202020
      2020204C656674203D20340D0A2020202020202020202020202020546F70203D
      20340D0A20202020202020202020202020205769647468203D203338350D0A20
      20202020202020202020202020486569676874203D203136330D0A2020202020
      202020202020202020416C69676E203D20616C546F700D0A2020202020202020
      20202020202043617074696F6E203D202752756C65270D0A2020202020202020
      2020202020205461624F72646572203D20300D0A202020202020202020202020
      20206F626A656374204C6162656C31303A20544C6162656C0D0A202020202020
      202020202020202020204C656674203D2032380D0A2020202020202020202020
      2020202020546F70203D2031350D0A2020202020202020202020202020202057
      69647468203D2032380D0A202020202020202020202020202020204865696768
      74203D2031330D0A20202020202020202020202020202020416C69676E6D656E
      74203D20746152696768744A7573746966790D0A202020202020202020202020
      2020202043617074696F6E203D2027264E616D65270D0A202020202020202020
      20202020202020466F637573436F6E74726F6C203D20656452756C654E616D65
      0D0A2020202020202020202020202020656E640D0A2020202020202020202020
      2020206F626A656374204C6162656C33313A20544C6162656C0D0A2020202020
      20202020202020202020204C656674203D2031360D0A20202020202020202020
      202020202020546F70203D2033390D0A20202020202020202020202020202020
      5769647468203D2034300D0A2020202020202020202020202020202048656967
      6874203D2031330D0A20202020202020202020202020202020416C69676E6D65
      6E74203D20746152696768744A7573746966790D0A2020202020202020202020
      202020202043617074696F6E203D20274163636F26756E74270D0A2020202020
      2020202020202020202020466F637573436F6E74726F6C203D20636D6252756C
      654163636F756E740D0A2020202020202020202020202020656E640D0A202020
      20202020202020202020206F626A656374204C6162656C383A20544C6162656C
      0D0A202020202020202020202020202020204C656674203D2031380D0A202020
      20202020202020202020202020546F70203D2036330D0A202020202020202020
      202020202020205769647468203D2033380D0A20202020202020202020202020
      202020486569676874203D2031330D0A20202020202020202020202020202020
      416C69676E6D656E74203D20746152696768744A7573746966790D0A20202020
      20202020202020202020202043617074696F6E203D20274E656526646564270D
      0A20202020202020202020202020202020466F637573436F6E74726F6C203D20
      636D6252756C654F70657261746F720D0A202020202020202020202020202065
      6E640D0A20202020202020202020202020206F626A6563742067726452756C65
      3A2054537472696E67477269640D0A202020202020202020202020202020204C
      656674203D20320D0A20202020202020202020202020202020546F70203D2038
      330D0A202020202020202020202020202020205769647468203D203338310D0A
      20202020202020202020202020202020486569676874203D2037380D0A202020
      20202020202020202020202020416C69676E203D20616C426F74746F6D0D0A20
      202020202020202020202020202020426F726465725374796C65203D2062734E
      6F6E650D0A20202020202020202020202020202020436F6C436F756E74203D20
      340D0A2020202020202020202020202020202044656661756C74526F77486569
      676874203D2031390D0A20202020202020202020202020202020466978656443
      6F6C73203D20300D0A20202020202020202020202020202020526F77436F756E
      74203D20320D0A202020202020202020202020202020204F7074696F6E73203D
      205B676F4669786564566572744C696E652C20676F4669786564486F727A4C69
      6E652C20676F566572744C696E652C20676F486F727A4C696E655D0D0A202020
      202020202020202020202020205363726F6C6C42617273203D20737356657274
      6963616C0D0A202020202020202020202020202020205461624F72646572203D
      20370D0A202020202020202020202020202020204F6E53656C65637443656C6C
      203D2067726452756C6553656C65637443656C6C0D0A20202020202020202020
      2020202020204F6E546F704C6566744368616E676564203D2067726452756C65
      546F704C6566744368616E6765640D0A2020202020202020202020202020656E
      640D0A20202020202020202020202020206F626A65637420656452756C654E61
      6D653A2054456469740D0A202020202020202020202020202020204C65667420
      3D2036300D0A20202020202020202020202020202020546F70203D2031310D0A
      202020202020202020202020202020205769647468203D203131370D0A202020
      20202020202020202020202020486569676874203D2032310D0A202020202020
      202020202020202020205461624F72646572203D20300D0A2020202020202020
      20202020202020204F6E4368616E6765203D20656452756C654E616D65436861
      6E67650D0A2020202020202020202020202020656E640D0A2020202020202020
      2020202020206F626A6563742063686B52756C65456E61626C65643A20544368
      65636B426F780D0A202020202020202020202020202020204C656674203D2031
      38340D0A20202020202020202020202020202020546F70203D2031330D0A2020
      20202020202020202020202020205769647468203D2039370D0A202020202020
      20202020202020202020486569676874203D2031370D0A202020202020202020
      2020202020202043617074696F6E203D202726456E61626C6564270D0A202020
      20202020202020202020202020436865636B6564203D20547275650D0A202020
      202020202020202020202020205374617465203D206362436865636B65640D0A
      202020202020202020202020202020205461624F72646572203D20310D0A2020
      20202020202020202020202020204F6E436C69636B203D2063686B52756C6545
      6E61626C6564436C69636B0D0A2020202020202020202020202020656E640D0A
      20202020202020202020202020206F626A6563742063686B52756C654E65773A
      2054436865636B426F780D0A202020202020202020202020202020204C656674
      203D203138340D0A20202020202020202020202020202020546F70203D203337
      0D0A202020202020202020202020202020205769647468203D203134390D0A20
      202020202020202020202020202020486569676874203D2031370D0A20202020
      20202020202020202020202043617074696F6E203D20274E6577204D65737361
      67657320264F6E6C79270D0A202020202020202020202020202020205461624F
      72646572203D20330D0A202020202020202020202020202020204F6E436C6963
      6B203D2063686B52756C654E6577436C69636B0D0A2020202020202020202020
      202020656E640D0A20202020202020202020202020206F626A65637420636D62
      52756C654163636F756E743A2054436F6D626F426F780D0A2020202020202020
      20202020202020204C656674203D2036300D0A20202020202020202020202020
      202020546F70203D2033350D0A20202020202020202020202020202020576964
      7468203D203131370D0A20202020202020202020202020202020486569676874
      203D2032310D0A202020202020202020202020202020205374796C65203D2063
      7344726F70446F776E4C6973740D0A2020202020202020202020202020202049
      74656D486569676874203D2031330D0A20202020202020202020202020202020
      5461624F72646572203D20320D0A202020202020202020202020202020204F6E
      4368616E6765203D20636D6252756C654163636F756E744368616E67650D0A20
      2020202020202020202020202020204974656D732E537472696E6773203D2028
      0D0A2020202020202020202020202020202020202730270D0A20202020202020
      20202020202020202020202731270D0A20202020202020202020202020202020
      20202732270D0A202020202020202020202020202020202020273327290D0A20
      20202020202020202020202020656E640D0A2020202020202020202020202020
      6F626A6563742070616E52756C65456469743A205450616E656C0D0A20202020
      2020202020202020202020204C656674203D20310D0A20202020202020202020
      202020202020546F70203D203131360D0A202020202020202020202020202020
      205769647468203D203333340D0A202020202020202020202020202020204865
      69676874203D2032310D0A20202020202020202020202020202020426576656C
      4F75746572203D2062764E6F6E650D0A20202020202020202020202020202020
      5461624F72646572203D20380D0A202020202020202020202020202020206F62
      6A6563742062746E54657374526567457870723A20545370656564427574746F
      6E0D0A2020202020202020202020202020202020204C656674203D203238370D
      0A202020202020202020202020202020202020546F70203D20300D0A20202020
      20202020202020202020202020205769647468203D2032310D0A202020202020
      202020202020202020202020486569676874203D2032310D0A20202020202020
      202020202020202020202048696E74203D202754657374207468652052656720
      457870722073796E746178270D0A202020202020202020202020202020202020
      476C7970682E44617461203D207B0D0A20202020202020202020202020202020
      2020202046363030303030303432344446363030303030303030303030303030
      3736303030303030323830303030303031303030303030303130303030303030
      303130300D0A2020202020202020202020202020202020202020303430303030
      3030303030303830303030303030434630453030303043463045303030303130
      30303030303030303030303030303030303030303030303030300D0A20202020
      2020202020202020202020202020202038303030303038303030303030303830
      3830303038303030303030303830303038303030383038303030303043304330
      433030303830383038303030303030300D0A2020202020202020202020202020
      2020202020204646303030304646303030303030464646463030464630303030
      3030464630304646303046464646303030304646464646463030373737373737
      3737373737370D0A202020202020202020202020202020202020202037373737
      3737373737344637373737373737373737373737343434463737373737373737
      373737343434344637373737373737373737343434463434463737370D0A2020
      2020202020202020202020202020202020203737373737343434463737343446
      3737373737373737344637373737344637373737373737373737373737373734
      4637373737373737373737303737373734460D0A202020202020202020202020
      2020202020202020373737373737373037303730373737344637373737373737
      3030303737373737344637373737303030303030303737373734463737373737
      30303037373737370D0A20202020202020202020202020202020202020203737
      3437373737303730373037373737373737373737373737303737373737373737
      3737373737373737373737373737373737377D0D0A2020202020202020202020
      20202020202020506172656E7453686F7748696E74203D2046616C73650D0A20
      202020202020202020202020202020202053686F7748696E74203D2054727565
      0D0A20202020202020202020202020202020202056697369626C65203D204661
      6C73650D0A2020202020202020202020202020202020204F6E436C69636B203D
      2062746E5465737452656745787072436C69636B0D0A20202020202020202020
      202020202020656E640D0A202020202020202020202020202020206F626A6563
      7420636D6252756C65417265613A2054436F6D626F426F780D0A202020202020
      2020202020202020202020204C656674203D20300D0A20202020202020202020
      2020202020202020546F70203D20300D0A202020202020202020202020202020
      2020205769647468203D2039330D0A2020202020202020202020202020202020
      20486569676874203D2032310D0A202020202020202020202020202020202020
      5374796C65203D20637344726F70446F776E4C6973740D0A2020202020202020
      202020202020202020204974656D486569676874203D2031330D0A2020202020
      202020202020202020202020205461624F72646572203D20300D0A2020202020
      202020202020202020202020204F6E4368616E6765203D20636D6252756C6541
      7265614368616E67650D0A202020202020202020202020202020202020497465
      6D732E537472696E6773203D20280D0A20202020202020202020202020202020
      2020202027486561646572270D0A202020202020202020202020202020202020
      20202746726F6D270D0A20202020202020202020202020202020202020202753
      75626A656374270D0A202020202020202020202020202020202020202027546F
      270D0A2020202020202020202020202020202020202020274343270D0A202020
      20202020202020202020202020202020202746726F6D20286E616D6529270D0A
      20202020202020202020202020202020202020202746726F6D20286164647265
      737329270D0A2020202020202020202020202020202020202020275374617475
      7327290D0A20202020202020202020202020202020656E640D0A202020202020
      202020202020202020206F626A65637420636D6252756C65436F6D703A205443
      6F6D626F426F780D0A2020202020202020202020202020202020204C65667420
      3D2039320D0A202020202020202020202020202020202020546F70203D20300D
      0A2020202020202020202020202020202020205769647468203D2037360D0A20
      2020202020202020202020202020202020486569676874203D2032310D0A2020
      202020202020202020202020202020205374796C65203D20637344726F70446F
      776E4C6973740D0A2020202020202020202020202020202020204974656D4865
      69676874203D2031330D0A202020202020202020202020202020202020546162
      4F72646572203D20310D0A2020202020202020202020202020202020204F6E43
      68616E6765203D20636D6252756C65436F6D704368616E67650D0A2020202020
      202020202020202020202020204974656D732E537472696E6773203D20280D0A
      202020202020202020202020202020202020202027436F6E7461696E73270D0A
      202020202020202020202020202020202020202027457175616C73270D0A2020
      2020202020202020202020202020202020202757696C6463617264270D0A2020
      20202020202020202020202020202020202027456D707479270D0A2020202020
      20202020202020202020202020202027526567204578707227290D0A20202020
      202020202020202020202020656E640D0A202020202020202020202020202020
      206F626A65637420656452756C65546578743A2054456469740D0A2020202020
      202020202020202020202020204C656674203D203136370D0A20202020202020
      2020202020202020202020546F70203D20300D0A202020202020202020202020
      2020202020205769647468203D203132300D0A20202020202020202020202020
      2020202020486569676874203D2032310D0A2020202020202020202020202020
      202020205461624F72646572203D20320D0A2020202020202020202020202020
      202020204F6E4368616E6765203D20656452756C65546578744368616E67650D
      0A20202020202020202020202020202020656E640D0A20202020202020202020
      2020202020206F626A6563742063686B52756C654E6F743A2054436865636B42
      6F780D0A2020202020202020202020202020202020204C656674203D20333135
      0D0A202020202020202020202020202020202020546F70203D20340D0A202020
      2020202020202020202020202020205769647468203D2031330D0A2020202020
      20202020202020202020202020486569676874203D2031330D0A202020202020
      2020202020202020202020205461624F72646572203D20340D0A202020202020
      2020202020202020202020204F6E436C69636B203D2063686B52756C654E6F74
      436C69636B0D0A20202020202020202020202020202020656E640D0A20202020
      2020202020202020202020206F626A65637420636D6252756C65537461747573
      3A2054436F6D626F426F780D0A2020202020202020202020202020202020204C
      656674203D203136370D0A202020202020202020202020202020202020546F70
      203D20300D0A2020202020202020202020202020202020205769647468203D20
      39380D0A202020202020202020202020202020202020486569676874203D2032
      310D0A2020202020202020202020202020202020204974656D48656967687420
      3D2031330D0A2020202020202020202020202020202020205461624F72646572
      203D20330D0A20202020202020202020202020202020202056697369626C6520
      3D2046616C73650D0A2020202020202020202020202020202020204F6E436861
      6E6765203D20636D6252756C655374617475734368616E67650D0A2020202020
      202020202020202020202020204974656D732E537472696E6773203D20280D0A
      20202020202020202020202020202020202020202750726F746563746564270D
      0A202020202020202020202020202020202020202027546F2042652044656C65
      746564270D0A20202020202020202020202020202020202020202749676E6F72
      6564270D0A2020202020202020202020202020202020202020275370616D270D
      0A202020202020202020202020202020202020202027496D706F7274616E7427
      0D0A202020202020202020202020202020202020202027486173204174746163
      686D656E74270D0A202020202020202020202020202020202020202027566965
      776564270D0A2020202020202020202020202020202020202020274E65772729
      0D0A20202020202020202020202020202020656E640D0A202020202020202020
      2020202020656E640D0A20202020202020202020202020206F626A6563742063
      6D6252756C654F70657261746F723A2054436F6D626F426F780D0A2020202020
      20202020202020202020204C656674203D2036300D0A20202020202020202020
      202020202020546F70203D2035390D0A20202020202020202020202020202020
      5769647468203D203131370D0A20202020202020202020202020202020486569
      676874203D2032310D0A202020202020202020202020202020205374796C6520
      3D20637344726F70446F776E4C6973740D0A2020202020202020202020202020
      20204974656D486569676874203D2031330D0A20202020202020202020202020
      2020205461624F72646572203D20340D0A202020202020202020202020202020
      204F6E4368616E6765203D20636D6252756C654F70657261746F724368616E67
      650D0A202020202020202020202020202020204974656D732E537472696E6773
      203D20280D0A20202020202020202020202020202020202027414E5920526F77
      270D0A20202020202020202020202020202020202027414C4C20526F77732729
      0D0A2020202020202020202020202020656E640D0A2020202020202020202020
      2020206F626A6563742062746E52756C65416464526F773A2054427574746F6E
      0D0A202020202020202020202020202020204C656674203D203138340D0A2020
      2020202020202020202020202020546F70203D2035390D0A2020202020202020
      20202020202020205769647468203D2037390D0A202020202020202020202020
      20202020486569676874203D2032310D0A202020202020202020202020202020
      2043617074696F6E203D202741646420526F77270D0A20202020202020202020
      2020202020205461624F72646572203D20350D0A202020202020202020202020
      202020204F6E436C69636B203D2062746E52756C65416464526F77436C69636B
      0D0A2020202020202020202020202020656E640D0A2020202020202020202020
      2020206F626A6563742062746E52756C6544656C657465526F773A2054427574
      746F6E0D0A202020202020202020202020202020204C656674203D203236380D
      0A20202020202020202020202020202020546F70203D2035390D0A2020202020
      20202020202020202020205769647468203D2038310D0A202020202020202020
      20202020202020486569676874203D2032310D0A202020202020202020202020
      2020202043617074696F6E203D202744656C65746520526F77270D0A20202020
      2020202020202020202020205461624F72646572203D20360D0A202020202020
      202020202020202020204F6E436C69636B203D2062746E52756C6544656C6574
      65526F77436C69636B0D0A2020202020202020202020202020656E640D0A2020
      20202020202020202020656E640D0A20202020202020202020656E640D0A2020
      202020202020656E640D0A20202020202020206F626A6563742070616E52756C
      654C6973743A205450616E656C0D0A202020202020202020204C656674203D20
      340D0A20202020202020202020546F70203D2033350D0A202020202020202020
      205769647468203D203130300D0A20202020202020202020486569676874203D
      203239370D0A20202020202020202020416C69676E203D20616C4C6566740D0A
      20202020202020202020426576656C4F75746572203D2062764E6F6E650D0A20
      2020202020202020205461624F72646572203D20320D0A202020202020202020
      206F626A656374206C737452756C65733A2054436865636B4C697374426F780D
      0A2020202020202020202020204C656674203D20300D0A202020202020202020
      202020546F70203D20300D0A2020202020202020202020205769647468203D20
      3130300D0A202020202020202020202020486569676874203D203237350D0A20
      20202020202020202020204F6E436C69636B436865636B203D206C737452756C
      6573436C69636B436865636B0D0A202020202020202020202020416C69676E20
      3D20616C436C69656E740D0A2020202020202020202020204974656D48656967
      6874203D2031330D0A2020202020202020202020205461624F72646572203D20
      300D0A2020202020202020202020204F6E436C69636B203D206C737452756C65
      73436C69636B0D0A2020202020202020202020204F6E4472616744726F70203D
      206C737452756C65734472616744726F700D0A2020202020202020202020204F
      6E447261674F766572203D206C737452756C6573447261674F7665720D0A2020
      202020202020202020204F6E4B6579446F776E203D206C737452756C65734B65
      79446F776E0D0A2020202020202020202020204F6E4B65795570203D206C7374
      52756C65734B657955700D0A2020202020202020202020204F6E4D6F75736544
      6F776E203D206C737452756C65734D6F757365446F776E0D0A20202020202020
      202020656E640D0A202020202020202020206F626A6563742070616E52756C65
      4C697374427574746F6E733A205450616E656C0D0A2020202020202020202020
      204C656674203D20300D0A202020202020202020202020546F70203D20323735
      0D0A2020202020202020202020205769647468203D203130300D0A2020202020
      20202020202020486569676874203D2032320D0A202020202020202020202020
      416C69676E203D20616C426F74746F6D0D0A2020202020202020202020204265
      76656C4F75746572203D2062764E6F6E650D0A20202020202020202020202054
      61624F72646572203D20310D0A2020202020202020202020204F6E526573697A
      65203D2070616E52756C654C697374427574746F6E73526573697A650D0A2020
      202020202020202020206F626A6563742062746E52756C65446F776E3A205453
      70656564427574746F6E0D0A20202020202020202020202020204C656674203D
      20330D0A2020202020202020202020202020546F70203D20300D0A2020202020
      2020202020202020205769647468203D2034350D0A2020202020202020202020
      202020486569676874203D2032320D0A20202020202020202020202020204869
      6E74203D20274D6F766520446F776E270D0A2020202020202020202020202020
      456E61626C6564203D2046616C73650D0A202020202020202020202020202047
      6C7970682E44617461203D207B0D0A2020202020202020202020202020202037
      3630313030303034323444373630313030303030303030303030303736303030
      303030323830303030303032303030303030303130303030303030303130300D
      0A20202020202020202020202020202020303430303030303030303030303030
      3130303030313230423030303031323042303030303130303030303030303030
      30303030303030303030303030303030300D0A20202020202020202020202020
      2020203830303030303830303030303030383038303030383030303030303038
      3030303830303038303830303030303746374637463030424642464246303030
      3030300D0A202020202020202020202020202020204646303030304646303030
      3030304646464630304646303030303030464630304646303046464646303030
      3046464646464630303333333333333033333333330D0A202020202020202020
      2020202020202033333333333333333337334633333333333333333333333333
      3042303333333333333333333333333746374633333333333333333333333333
      304630333333330D0A2020202020202020202020202020202033333333333333
      3337463746463333333333333333333333333042303033333333333333333333
      333746373733464633333333333333333333304630463030330D0A2020202020
      2020202020202020202020333333333333333337463746373733463333333333
      3333333330423042304230333333333333333337463746374637463333333333
      33333330304630463046300D0A20202020202020202020202020202020333333
      3333333337374637333733374633333333333333304230424642464230333333
      33333337463746333333333746333333333333333046304642464246300D0A20
      2020202020202020202020202020203333333333333746373333333333374633
      3333333333333042464246424642303333333333333733463333333333373333
      3333333333333330424642464230330D0A202020202020202020202020202020
      2033333333333333374646464646374646333333333333333330303030303030
      3033333333333333373737373737373746333333333333333330454545454545
      300D0A2020202020202020202020202020202033333333333333374646464646
      4637464633333333333333303030303030303030333333333333373737373737
      373737463333333333333330303030303030420D0A2020202020202020202020
      2020202020303333333333333737373737373746374633333333333333303030
      303030303030333333333333373737373737373737333333337D0D0A20202020
      202020202020202020204E756D476C79706873203D20320D0A20202020202020
      20202020202020506172656E7453686F7748696E74203D2046616C73650D0A20
      2020202020202020202020202053686F7748696E74203D20547275650D0A2020
      2020202020202020202020204F6E436C69636B203D2062746E52756C65446F77
      6E436C69636B0D0A202020202020202020202020656E640D0A20202020202020
      20202020206F626A6563742062746E52756C6555703A20545370656564427574
      746F6E0D0A20202020202020202020202020204C656674203D2035310D0A2020
      202020202020202020202020546F70203D20300D0A2020202020202020202020
      2020205769647468203D2034350D0A2020202020202020202020202020486569
      676874203D2032320D0A202020202020202020202020202048696E74203D2027
      4D6F7665205570270D0A2020202020202020202020202020456E61626C656420
      3D2046616C73650D0A2020202020202020202020202020476C7970682E446174
      61203D207B0D0A20202020202020202020202020202020373630313030303034
      3234443736303130303030303030303030303037363030303030303238303030
      30303032303030303030303130303030303030303130300D0A20202020202020
      2020202020202020203034303030303030303030303030303130303030313230
      4230303030313230423030303031303030303030303030303030303030303030
      3030303030303030300D0A202020202020202020202020202020203830303030
      3038303030303030303830383030303830303030303030383030303830303038
      3038303030303037463746374630304246424642463030303030300D0A202020
      2020202020202020202020202046463030303046463030303030304646464630
      3046463030303030304646303046463030464646463030303046464646464630
      303333333030303030303030300D0A2020202020202020202020202020202033
      3333333333373737373737373737463333333333333330423030303030303033
      333333333337463737373737373746333333333333333030303030303030300D
      0A20202020202020202020202020202020333333333333373737373737373737
      4633333333333333333045454545454530333333333333333746464646464637
      46333333333333333330303030303030300D0A20202020202020202020202020
      2020203333333333333337373737373737374633333333333333333330424642
      4642303333333333333333373333333333373346333333333333333042464246
      4246420D0A202020202020202020202020202020203033333333333337463333
      3333334637463333333333333330464246424630463033333333333337463333
      3333374637463333333333333330424642464230420D0A202020202020202020
      2020202020202030333333333333374633463346374637333333333333333330
      4630463046303033333333333333374637463746373733333333333333333330
      423042304230330D0A2020202020202020202020202020202033333333333333
      3733374637463746333333333333333333333030463046303333333333333333
      333737333746374633333333333333333333333330304230330D0A2020202020
      2020202020202020202020333333333333333333333737463746333333333333
      3333333333333330463033333333333333333333333337463746333333333333
      33333333333333304230330D0A20202020202020202020202020202020333333
      3333333333333333373337333333333333333333333333333333303333333333
      33333333333333333337333333333333337D0D0A202020202020202020202020
      20204E756D476C79706873203D20320D0A20202020202020202020202020204F
      6E436C69636B203D2062746E52756C655570436C69636B0D0A20202020202020
      2020202020656E640D0A20202020202020202020656E640D0A20202020202020
      20656E640D0A202020202020656E640D0A20202020656E640D0A202020206F62
      6A65637420747341626F75743A205454616253686565740D0A20202020202043
      617074696F6E203D202741626F7574270D0A202020202020466F6E742E436861
      72736574203D2044454641554C545F434841525345540D0A202020202020466F
      6E742E436F6C6F72203D20636C57696E646F77546578740D0A20202020202046
      6F6E742E486569676874203D202D31310D0A202020202020466F6E742E4E616D
      65203D20274D532053616E73205365726966270D0A202020202020466F6E742E
      5374796C65203D205B5D0D0A202020202020496D616765496E646578203D2033
      0D0A202020202020506172656E74466F6E74203D2046616C73650D0A20202020
      20206F626A6563742054496D6167650D0A20202020202020204C656674203D20
      31380D0A2020202020202020546F70203D203335390D0A202020202020202057
      69647468203D2031360D0A2020202020202020486569676874203D2031360D0A
      2020202020202020506963747572652E44617461203D207B0D0A202020202020
      2020202030373534343236393734364436313730333630333030303034323444
      3336303330303030303030303030303033363030303030303238303030303030
      313030300D0A2020202020202020202030303030313030303030303030313030
      3138303030303030303030303030303330303030303030303030303030303030
      303030303030303030303030303030300D0A2020202020202020202030303030
      3030464630303030464630303030464630303030464630303030464630303030
      464630303030464630303030464630303030464630303030464630300D0A2020
      2020202020202020303046463030303046463030303046463030303046463030
      3030464630303030464630303030303030303030303030303030303030303030
      30303030303030300D0A20202020202020202020303030303030303030303030
      3030303030303030303030303030303030303030303030303030303030303030
      30303030303030303030303030303030303030300D0A20202020202020202020
      4646303030303030303046464646464646464646464646464646464646464646
      4646464646464646464646464646464646464646464646464646464646464646
      0D0A202020202020202020204646464646464646464646464646464646464646
      4646464630303030303030304646303030303030303030303030303046464646
      4646464646464646464646460D0A202020202020202020204646464646464646
      4646464646464646464646464646464646464646464646464646464646464646
      4646464646464646464630303030303030303030303030300D0A202020202020
      2020202046463030303030303030464646464646303030303030464646464646
      4646464646464646464646464646464646464646464646464646464646464646
      464646460D0A2020202020202020202046464646464646464646464630303030
      3030464646464646303030303030303046463030303030303030464646464646
      464646464646303030303030464646460D0A2020202020202020202046464646
      4646464646464646464646464646464646464646464646464646464646464646
      464630303030303046464646464646464646464630303030303030300D0A2020
      2020202020202020464630303030303030304646464646464646464646464646
      4646464630303030303046464646464646464646464630303030303046464646
      46464646464646460D0A20202020202020202020303030303030464646464646
      4646464646464646464646463030303030303030464630303030303030304646
      46464646464646464646464646464646464646460D0A20202020202020202020
      4646303030303030303030303030433643334336303030303030303030303030
      4646464646464646464646464646464646464646464646463030303030303030
      0D0A202020202020202020204646303030303030303046464646464646464646
      4646303030303030303030303030433643334336433643334336433643334336
      4336433343364336433343360D0A202020202020202020203030303030303030
      3030303046464646464646464646464630303030303030304646303030303030
      3030303030303030303030303030433643334336433643330D0A202020202020
      2020202043364336433343364336433343364336433343364336433343364336
      4333433643364333433643364333433630303030303030303030303030303030
      303030300D0A2020202020202020202046463030303030303030433643334336
      4336433343364336433343364336433343364336433343364336433343364336
      433343364336433343364336433343360D0A2020202020202020202043364333
      4336433643334336433643334336433643334336303030303030303046463030
      303046463030303030303030303030303030433643334336433643330D0A2020
      2020202020202020433643364333433643364333433643364333433643364333
      4336433643334336433643334336433643334336303030303030303030303030
      30304646303030300D0A20202020202020202020464630303030464630303030
      4646303030304646303030303030303030303030303043364333433643364333
      43364336433343364336433343364336433343360D0A20202020202020202020
      3030303030303030303030303030464630303030464630303030464630303030
      4646303030304646303030304646303030304646303030304646303030304646
      0D0A202020202020202020203030303030303030303030303030433643334336
      3030303030303030303030303030464630303030464630303030464630303030
      4646303030304646303030300D0A202020202020202020204646303030304646
      3030303046463030303046463030303046463030303046463030303046463030
      3030464630303030303030303030464630303030464630300D0A202020202020
      2020202030304646303030304646303030304646303030304646303030304646
      3030303046463030303046463030303046463030303046463030303046463030
      303046460D0A2020202020202020202030303030464630303030464630303030
      4646303030304646303030304646303030304646303030304646303030304646
      303030304646303030304646303030300D0A2020202020202020202046463030
      7D0D0A202020202020656E640D0A2020202020206F626A6563742070616E4162
      6F75743A205450616E656C0D0A20202020202020204C656674203D20300D0A20
      20202020202020546F70203D20300D0A20202020202020205769647468203D20
      3530360D0A2020202020202020486569676874203D203336380D0A2020202020
      202020416C69676E203D20616C436C69656E740D0A2020202020202020426576
      656C4F75746572203D2062764E6F6E650D0A20202020202020205461624F7264
      6572203D20300D0A202020202020202044657369676E53697A65203D20280D0A
      202020202020202020203530360D0A20202020202020202020333638290D0A20
      202020202020206F626A65637420696D67547261793A2054496D6167650D0A20
      2020202020202020204C656674203D203432360D0A2020202020202020202054
      6F70203D203238340D0A202020202020202020205769647468203D2031360D0A
      20202020202020202020486569676874203D2031360D0A202020202020202020
      204175746F53697A65203D20547275650D0A2020202020202020202050696374
      7572652E44617461203D207B0D0A202020202020202020202020303735343432
      3639373436443631373033363033303030303432344433363033303030303030
      30303030303033363030303030303238303030303030313030300D0A20202020
      2020202020202020303030303130303030303030303130303138303030303030
      3030303030303033303030303133304230303030313330423030303030303030
      30303030303030300D0A20202020202020202020202030303030303046463030
      3030464630303030464630303030464630303030464630303030464630303030
      464630303030464630303030464630303030464630300D0A2020202020202020
      2020202030304646303030304646303030304646303030304646303030304646
      3030303046463030303046463030303030303030303030303030303030303030
      303030300D0A2020202020202020202020203030303030303030303030303030
      3030303030303030303030303030303030303030303030303030303030303030
      3030303030303030303030304646303030300D0A202020202020202020202020
      4646303034303430343041353943413546374637463745464537454645374537
      4537453744454537444544364445444544364445443643454436443643454436
      0D0A202020202020202020202020443643364436434543364345423541444235
      4135394341353030303030303030464630303830383038303430343034304537
      44454537463745464546454645370D0A20202020202020202020202045464537
      4445453745374445453744454436444544364345443644364345443644364345
      443643454336434543364244433634303430343030303030303030300D0A2020
      2020202020202020202046463030383038303830464646464646343034303430
      4637454645464546453745464546453745464537444545374537444545374445
      443644454436434544360D0A2020202020202020202020204436434544364345
      4336434534303430343043454336434530303030303030304646303038303830
      3830464646464646464646464646343034303430463745460D0A202020202020
      2020202020204637454645374546454645374546453744454537453744454537
      4445443644454445443644453430343034304345433643454436433644363030
      3030303030300D0A202020202020202020202020464630303830383038304646
      4646464646464646464646464646464634303430343046464637463745464537
      45463430343034304537453745374537453745370D0A20202020202020202020
      2020343034303430443643454436443643364436443643364436303030303030
      3030464630303830383038304646464646464646464646464646464646464546
      45460D0A20202020202020202020202045463430343034303430343034304143
      4442463434303430343034303430343044454436444544364345443644364336
      443644364336443630303030303030300D0A2020202020202020202020204646
      3030383038303830464646464646464646464646343034303430343034303430
      4534464446454332464446464332464446464431454646394143444246340D0A
      2020202020202020202020203430343034303430343034304436434544364436
      4345443630303030303030304646303038303830383034303430343034303430
      3430464646464646453446440D0A202020202020202020202020464545344644
      4645453446444645433246444646433246444646433246444646443145464639
      41434442463434303430343034303430343030303030303030300D0A20202020
      2020202020202020464630303430343034304646464546464646464546464646
      4646464645344644464545344644464545344644464545344644464545344644
      46454332464446460D0A20202020202020202020202043324644464644314546
      4639424545364635414344424634303030303030303046463030303046463030
      383038303830383038303830464646464646463946460D0A2020202020202020
      2020202046454646464546464534464446454534464446454534464446454534
      4644464544314546463944314546463937423733373334303430343030304646
      303030300D0A2020202020202020202020204646303030304646303030304646
      3030303046463030383038303830383038303830463946464645463946464645
      4534464446454534464446454534464446450D0A202020202020202020202020
      3830383038303830383038303030464630303030464630303030464630303030
      4646303030304646303030304646303030304646303030304646303030304646
      0D0A202020202020202020202020303038303830383038303830383045344644
      4645383038303830383038303830303046463030303046463030303046463030
      30304646303030304646303030300D0A20202020202020202020202046463030
      3030464630303030464630303030464630303030464630303030464630303030
      464630303030464630303830383038303030464630303030464630300D0A2020
      2020202020202020202030304646303030304646303030304646303030304646
      3030303046463030303046463030303046463030303046463030303046463030
      303046463030303046460D0A2020202020202020202020203030303046463030
      3030464630303030464630303030464630303030464630303030464630303030
      4646303030304646303030304646303030304646303030300D0A202020202020
      202020202020464630307D0D0A2020202020202020202056697369626C65203D
      2046616C73650D0A2020202020202020656E640D0A20202020202020206F626A
      656374206C626C56657273696F6E3A20544C6162656C0D0A2020202020202020
      20204C656674203D203136300D0A20202020202020202020546F70203D203430
      0D0A202020202020202020205769647468203D203133360D0A20202020202020
      202020486569676874203D2032300D0A20202020202020202020416C69676E6D
      656E74203D20746143656E7465720D0A202020202020202020204175746F5369
      7A65203D2046616C73650D0A2020202020202020202043617074696F6E203D20
      2776657273696F6E270D0A202020202020202020205472616E73706172656E74
      203D20547275650D0A2020202020202020656E640D0A20202020202020206F62
      6A656374204C6162656C31313A20544C6162656C0D0A20202020202020202020
      546167203D203939390D0A202020202020202020204C656674203D203134320D
      0A20202020202020202020546F70203D2037360D0A2020202020202020202057
      69647468203D203137320D0A20202020202020202020486569676874203D2032
      360D0A20202020202020202020416C69676E6D656E74203D20746143656E7465
      720D0A2020202020202020202043617074696F6E203D2027436F707972696768
      742027233136392732303132202D204A6573736963612042726F776E27233133
      23313027465245455741524520616E64204F50454E2D534F5552434520212127
      0D0A202020202020202020205472616E73706172656E74203D20547275650D0A
      2020202020202020656E640D0A20202020202020206F626A65637420496D6167
      65313A2054496D6167650D0A202020202020202020204C656674203D2033360D
      0A20202020202020202020546F70203D2032340D0A2020202020202020202057
      69647468203D2036350D0A20202020202020202020486569676874203D203635
      0D0A20202020202020202020506963747572652E44617461203D207B0D0A2020
      2020202020202020202030353534343936333646364530303030303130303031
      3030343034303030303030313030323030303238343230303030313630303030
      303032383030303030300D0A2020202020202020202020203430303030303030
      3830303030303030303130303230303030303030303030303030303030303030
      3030303030303030303030303030303030303030303030300D0A202020202020
      2020202020203030303030303030464646464646303146464646464630314646
      4646464630314646464646463031464646464646303146464646464630314646
      4646464630310D0A202020202020202020202020464646464646303146464646
      4646303146464646464630314646464646463031464646464646303146464646
      46463031464646464646303146464646464630310D0A20202020202020202020
      2020464646464646303146464646464630314646464646463031464646464646
      3031464646464646303146464646464630314646464646463031464646464646
      30310D0A20202020202020202020202046464646464630314646464646463031
      4646464646463031464646464646303146464646464630314646464646463031
      464646464646303146464646464630310D0A2020202020202020202020204646
      4646464630314646464646463031464646464646303146464646464630314646
      4646464630314646464646463031464646464646303146464646464630310D0A
      2020202020202020202020204646464646463031464646464646303146464646
      4646303146464646464630314646464646463031464646464646303146464646
      4646303146464646464630310D0A202020202020202020202020464646464646
      3031464646464646303146464646464630314646464646463031464646464646
      30314646464646463031464646464646303146464646464630310D0A20202020
      2020202020202020464646464646303146464646464630314646464646463031
      4646464646463031464646464646303146464646464630314646464646463031
      46464646464630310D0A20202020202020202020202046464646464630314646
      4646464630314646464646463031464646464646303146464646464630314646
      464646463031464646464646303146464646464630310D0A2020202020202020
      2020202046464646464630314646464646463031464646464646303146464646
      4646303146464646464630314646464646463031464646464646303146464646
      464630310D0A2020202020202020202020204646464646463031464646464646
      3031464646464646303146464646464630314646464646463031464646464646
      3031464646464646303146464646464630310D0A202020202020202020202020
      4646464646463031464646464646303146464646464630314646464646463031
      4646464646463031464646464646303146464646464630314646464646463031
      0D0A202020202020202020202020464646464646303146464646464630314646
      4646464630314646464646463031464646464646303146464646464630314646
      46464646303146464646464630310D0A20202020202020202020202046464646
      4646303146464646464630314646464646463031464646464646303146464646
      464630314646464646463031464646464646303146464646464630310D0A2020
      2020202020202020202046464646464630314646464646463031464646464646
      3031464646464646303146464646464630314646464646463031464646464646
      303146464646464630310D0A2020202020202020202020204646464646463031
      4646464646463031464646464646303146464646464630314646464646463031
      4646464646463031464646464646303146464646464630310D0A202020202020
      2020202020204646464646463031464646464646303146464646464630314646
      4646464630314646464646463031464646464646303146464646464630314646
      4646464630310D0A202020202020202020202020464646464646303146464646
      4646303146464646464630314646464646463031464646464646303146464646
      46463031464646464646303146464646464630310D0A20202020202020202020
      2020464646464646303146464646464630314646464646463031464646464646
      3031464646464646303146464646464630314646464646463031464646464646
      30310D0A20202020202020202020202046464646464630314646464646463031
      4646464646463031464646464646303146464646464630314646464646463031
      464646464646303146464646464630310D0A2020202020202020202020204646
      4646464630314646464646463031464646464646303146464646464630314646
      4646464630314646464646463031464646464646303146464646464630310D0A
      2020202020202020202020204646464646463031464646464646303146464646
      4646303146464646464630314646464646463031464646464646303146464646
      4646303146464646464630310D0A202020202020202020202020464646464646
      3031464646464646303146464646464630314646464646463031464646464646
      30314646464646463031464646464646303146464646464630310D0A20202020
      2020202020202020464646464646303146464646464630314646464646463031
      4646464646463031464646464646303146464646464630314646464646463031
      46464646464630310D0A20202020202020202020202046464646464630314646
      4646464630314646464646463031464646464646303146464646464630314646
      464646463031464646464646303146464646464630310D0A2020202020202020
      2020202046464646464630314646464646463031464646464646303146464646
      4646303146464646464630314646464646463031464646464646303146464646
      464630310D0A2020202020202020202020204646464646463031464646464646
      3031464646464646303146464646464630314646464646463031464646464646
      3031464646464646303146464646464630310D0A202020202020202020202020
      4646464646463031464646464646303146464646464630314646464646463031
      4646464646463031464646464646303146464646464630314646464646463031
      0D0A202020202020202020202020464646464646303146464646464630314646
      4646464630314646464646463031464646464646303146464646464630314646
      46464646303146464646464630310D0A20202020202020202020202046464646
      4646303146464646464630314646464646463031464646464646303146464646
      464630314646464646463031464646464646303146464646464630310D0A2020
      2020202020202020202046464646464630314646464646463031464646464646
      3031464646464646303146464646464630314646464646463031464646464646
      303146464646464630310D0A2020202020202020202020204646464646463031
      4646464646463031464646464646303146464646464630314646464646463031
      4646464646463031464646464646303146464646464630310D0A202020202020
      2020202020204646464646463031464646464646303146464646464630314646
      4646464630314646464646463031464646464646303146464646464630314646
      4646464630310D0A202020202020202020202020464646464646303146464646
      4646303146464646464630314646464646463031464646464646303146464646
      46463031464646464646303146464646464630310D0A20202020202020202020
      2020464646464646303146464646464630314646464646463031464646464646
      3031464646464646303146464646464630314646464646463031464646464646
      30310D0A20202020202020202020202046464646464630314646464646463031
      4646464646463031464646464646303146464646464630314646464646463031
      464646464646303146464646464630310D0A2020202020202020202020204646
      4646464630314646464646463031464646464646303146464646464630314646
      4646464630314646464646463031464646464646303146464646464630310D0A
      2020202020202020202020204646464646463031464646464646303146464646
      4646303146464646464630314646464646463031464646464646303146464646
      4646303146464646464630310D0A202020202020202020202020464646464646
      3031464646464646303146464646464630314646464646463031464646464646
      30314646464646463031464646464646303146464646464630310D0A20202020
      2020202020202020464646464646303146464646464630314646464646463031
      4646464646463031464646464646303146464646464630314646464646463031
      46464646464630310D0A20202020202020202020202046464646464630314646
      4646464630314646464646463031464646464646303146464646464630314646
      464646463031464646464646303146464646464630310D0A2020202020202020
      2020202046464646464630314646464646463031464646464646303146464646
      4646303146464646464630314646464646463031464646464646303146464646
      464630310D0A2020202020202020202020204646464646463031464646464646
      3031464646464646303146464646464630314646464646463031464646464646
      3031464646464646303146464646464630310D0A202020202020202020202020
      4646464646463031464646464646303146464646464630314646464646463031
      4646464646463031464646464646303146464646464630314646464646463031
      0D0A202020202020202020202020464646464646303146464646464630314646
      4646464630314646464646463031464646464646303146464646464630314646
      46464646303146464646464630310D0A20202020202020202020202046464646
      4646303146464646464630314646464646463031464646464646303146464646
      464630314646464646463031464646464646303146464646464630310D0A2020
      2020202020202020202046464646464630314646464646463031464646464646
      3031464646464646303146464646464630314646464646463031464646464646
      303146464646464630310D0A2020202020202020202020204646464646463031
      4646464646463031464646464646303146464646464630314646464646463031
      4646464646463031464646464646303146464646464630310D0A202020202020
      2020202020204646464646463031464646464646303146464646464630314646
      4646464630314646464646463031464646464646303146464646464630314646
      4646464630310D0A202020202020202020202020464646464646303146464646
      4646303146464646464630314646464646463031464646464646303146464646
      46463031464646464646303146464646464630310D0A20202020202020202020
      2020464646464646303146464646464630314646464646463031464646464646
      3031464646464646303146464646464630314646464646463031464646464646
      30310D0A20202020202020202020202046464646464630314646464646463031
      4646464646463031464646464646303146464646464630314646464646463031
      464646464646303146464646464630310D0A2020202020202020202020204646
      4646464630314646464646463031464646464646303146464646464630314646
      4646464630314646464646463031464646464646303146464646464630310D0A
      2020202020202020202020204646464646463031464646464646303146464646
      4646303146464646464630314646464646463031464646464646303146464646
      4646303146464646464630310D0A202020202020202020202020464646464646
      3031464646464646303146464646464630314646464646463031464646464646
      30314646464646463031464646464646303146464646464630310D0A20202020
      2020202020202020464646464646303146464646464630314646464646463031
      4646464646463031464646464646303146464646464630314646464646463031
      46464646464630310D0A20202020202020202020202046464646464630314646
      4646464630314646464646463031464646464646303146464646464630314646
      464646463031464646464646303146464646464630310D0A2020202020202020
      2020202046464646464630314646464646463031464646464646303146464646
      4646303146464646464630314646464646463031464646464646303146464646
      464630310D0A2020202020202020202020204646464646463031464646464646
      3031464646464646303146464646464630314646464646463031464646464646
      3031464646464646303146464646464630310D0A202020202020202020202020
      4646464646463031464646464646303146464646464630314646464646463031
      4646464646463031464646464646303146464646464630314646464646463031
      0D0A202020202020202020202020464646464646303146464646464630314646
      4646464630314646464646463031464646464646303146464646464630314646
      46464646303146464646464630310D0A20202020202020202020202046464646
      4646303146464646464630314646464646463031464646464646303146464646
      464630314646464646463031464646464646303146464646464630310D0A2020
      2020202020202020202046464646464630314646464646463031464646464646
      3031464646464646303146464646464630314646464646463031464646464646
      303146464646464630310D0A2020202020202020202020204646464646463031
      4646464646463031464646464646303146464646464630314646464646463031
      4646464646463031464646464646303146464646464630310D0A202020202020
      2020202020204646464646463031464646464646303146464646464630314646
      4646464630314646464646463031464646464646303146464646464630314646
      4646464630310D0A202020202020202020202020464646464646303146464646
      4646303146464646464630314646464646463031464646464646303146464646
      46463031464646464646303146464646464630310D0A20202020202020202020
      2020464646464646303146464646464630314646464646463031464646464646
      3031464646464646303146464646464630314646464646463031464646464646
      30310D0A20202020202020202020202046464646464630314646464646463031
      4646464646463031464646464646303146464646464630314646464646463031
      464646464646303146464646464630310D0A2020202020202020202020204646
      4646464630314646464646463031464646464646303146464646464630314646
      4646464630314646464646463031464646464646303146464646464630310D0A
      2020202020202020202020204646464646463031464646464646303146464646
      4646303146464646464630314646464646463031464646464646303146464646
      4646303146464646464630310D0A202020202020202020202020464646464646
      3031464646464646303146464646464630314646464646463031464646464646
      30314646464646463031464646464646303146464646464630310D0A20202020
      2020202020202020464646464646303146464646464630314646464646463031
      4646464646463031464646464646303146464646464630314646464646463031
      46464646464630310D0A20202020202020202020202046464646464630314646
      4646464630314646464646463031464646464646303146464646464630314646
      464646463031464646464646303146464646464630310D0A2020202020202020
      2020202046464646464630314646464646463031464646464646303146464646
      4646303146464646464630314646464646463031464646464646303146464646
      464630310D0A2020202020202020202020204646464646463031464646464646
      3031464646464646303146464646464630314646464646463031464646464646
      3031464646464646303146464646464630310D0A202020202020202020202020
      4646464646463031464646464646303146464646464630314646464646463031
      4646464646463031464646464646303146464646464630314646464646463031
      0D0A202020202020202020202020464646464646303146464646464630314646
      4646464630314646464646463031464646464646303146464646464630314646
      46464646303146464646464630310D0A20202020202020202020202046464646
      4646303146464646464630314646464646463031464646464646303146464646
      464630314646464646463031464646464646303146464646464630310D0A2020
      2020202020202020202046464646464630314646464646463031464646464646
      3031464646464646303146464646464630314646464646463031464646464646
      303146464646464630310D0A2020202020202020202020204646464646463031
      4646464646463031464646464646303146464646464630314646464646463031
      4646464646463031464646464646303146464646464630310D0A202020202020
      2020202020204646464646463031464646464646303146464646464630314646
      4646464630314646464646463031464646464646303146464646464630314646
      4646464630310D0A202020202020202020202020464646464646303146464646
      4646303146464646464630314646464646463031464646464646303146464646
      46463031464646464646303146464646464630310D0A20202020202020202020
      2020464646464646303146464646464630314646464646463031464646464646
      3031464646464646303146464646464630314646464646463031464646464646
      30310D0A20202020202020202020202046464646464630314646464646463031
      4646464646463031464646464646303146464646464630314646464646463031
      464646464646303146464646464630310D0A2020202020202020202020204646
      4646464630314646464646463031464646464646303146464646464630314646
      4646464630314646464646463031464646464646303146464646464630310D0A
      2020202020202020202020204646464646463031464646464646303146464646
      4646303146464646464630314646464646463031464646464646303146464646
      4646303146464646464630310D0A202020202020202020202020464646464646
      3031464646464646303146464646464630314646464646463031464646464646
      30314646464646463031464646464646303146464646464630310D0A20202020
      2020202020202020464646464646303146464646464630314646464646463031
      4646464646463031464646464646303146464646464630314646464646463031
      46464646464630310D0A20202020202020202020202046464646464630314646
      4646464630314646464646463031464646464646303146464646464630314646
      464646463031464646464646303146464646464630310D0A2020202020202020
      2020202046464646464630314646464646463031464646464646303146464646
      4646303146464646464630314646464646463031464646464646303146464646
      464630310D0A2020202020202020202020204646464646463031464646464646
      3031464646464646303146464646464630314646464646463031464646464646
      3031464646464646303146464646464630310D0A202020202020202020202020
      4646464646463031464646464646303146464646464630314646464646463031
      4646464646463031464646464646303146464646464630314646464646463031
      0D0A202020202020202020202020464646464646303146464646464630314646
      4646464630314646464646463031464646464646303146464646464630314646
      46464646303146464646464630310D0A20202020202020202020202046464646
      4646303146464646464630314646464646463031464646464646303146464646
      464630314646464646463031464646464646303146464646464630310D0A2020
      2020202020202020202046464646464630314646464646463031464646464646
      3031464646464646303146464646464630314646464646463031464646464646
      303146464646464630310D0A2020202020202020202020204646464646463031
      4646464646463031464646464646303146464646464630314646464646463031
      4646464646463031464646464646303146464646464630310D0A202020202020
      2020202020204646464646463031464646464646303146464646464630313837
      3837383730333837383738373937393539353935443739413941394144393941
      3941394144310D0A202020202020202020202020393939393939433939383938
      3938424639373937393742373936393639364146393539353935413739343934
      39343946393239323932393739313931393138460D0A20202020202020202020
      2020393039303930383738443844384437463842384238423739383938393839
      3731383738373837364238373837383736373837383738373633383738373837
      36310D0A20202020202020202020202038373837383735443837383738373539
      3837383738373537383738373837353338373837383734463837383738373444
      383738373837343938373837383734350D0A2020202020202020202020203837
      3837383734333837383738373346383738373837334438373837383733393837
      3837383733353837383738373335383738373837333738373837383733390D0A
      2020202020202020202020203837383738373342383738373837334238373837
      3837334438373837383733463837383738373431383738373837343338373837
      3837343538373837383734350D0A202020202020202020202020383738373837
      3437383738373837343938373837383734423837383738373444383738373837
      34463837383738373446383738373837354238423842384237310D0A20202020
      2020202020202020384438443844374638463846384638333930393039303839
      3842384238423839383738373837364638373837383733314646464646463031
      46464646464630310D0A20202020202020202020202046464646464630314646
      4646464630314646464646463031383738373837354239413941394146464432
      443644364646453845454545464645374545454546460D0A2020202020202020
      2020202045314536453646464442453045304646443744434443464644354439
      4439464644324436443646464430443444344646434544314431464643424346
      434646460D0A2020202020202020202020204339434343434646433643394339
      4646433543384338464643344337433746464333433643364646433243344334
      4646433043334333464642464331433146460D0A202020202020202020202020
      4244424642464646424342454245464642414243424346464238424142414646
      4236423842384646423542364236464642334234423446464231423342334646
      0D0A202020202020202020202020423042314231464641454146414646464143
      4144414446464141414241424646413941394139464641374138413846464137
      41374137464641364136413646460D0A20202020202020202020202041384138
      4138464641424142414246464145414641464646423142324232464642344235
      423546464236423842384646423942424242464642434246424646460D0A2020
      2020202020202020202043304333433346464335433843384646433843434343
      4646434243464346464643444431443146464344443144314646434644334433
      464643464433443346460D0A2020202020202020202020204430443444344646
      4344443144314646433943434343464643354337433746464243424642464646
      3943394339434646383738373837413946464646464630310D0A202020202020
      2020202020204646464646463031464646464646303146464646464630313837
      3837383739424244424642464646463746464646464646374646464646464637
      4646464646460D0A202020202020202020202020463746464646464646374646
      4646464646374646464646464637464646464646463746464646464646374646
      46464646463746464646464646374646464646460D0A20202020202020202020
      2020463746464646464646374646464646464637464646464646463746464646
      4646463746464646464646374646464646464637464646464646463746464646
      46460D0A20202020202020202020202046374646464646464637464646464646
      4637464646464646463746464646464646374646464646464637464646464646
      463746464646464646374646464646460D0A2020202020202020202020204637
      4646464646464637464646464646463746464646464646374646464646464637
      4646464646464637464646464646463746464646464646374646464646460D0A
      2020202020202020202020204637464646464646463746464646464646374646
      4646464646374646464646464637464646464646463746464646464646374646
      4646464646374646464646460D0A202020202020202020202020463746464646
      4646463746464646464646374646464646464637464646464646463746464646
      46464637464646464646463746464646464646374646464646460D0A20202020
      2020202020202020463746464646464646374646464646464637464646464646
      4637464646464646463746464646464644384444444446463936393639364646
      38373837383732420D0A20202020202020202020202046464646464630314646
      4646464630314646464646463031383838383838414243414344434446464637
      464646464646463446464646464646324637463746460D0A2020202020202020
      2020202045424545454546464541454345434646454245454545464645434546
      4546464645444630463046464545463146314646454546334633464645464634
      463446460D0A2020202020202020202020204630463446344646463046354635
      4646463146364636464646314637463746464632463846384646463246394639
      4646463346394639464646344641464146460D0A202020202020202020202020
      4634464246424646463546434643464646354644464446464635464446444646
      4635464446444646463646444644464646364644464446464636464446444646
      0D0A202020202020202020202020463646454645464646364645464546464636
      4645464546464636464546454646463646454645464646364645464546464636
      46454645464646364645464546460D0A20202020202020202020202046364645
      4645464646364644464446464635464446444646463546444644464646354643
      464346464635464346434646463546434643464646344643464346460D0A2020
      2020202020202020202046344642464246464634464246424646463446424642
      4646463446414641464646334641464146464633464146414646463346394639
      464646334639463946460D0A2020202020202020202020204633463946394646
      4633463946394646463646444644464646374646464646464637464646464646
      4544463346334646394439443944464638373837383734310D0A202020202020
      2020202020204646464646463031464646464646303146464646464630313839
      3839383941374342434543454646463546454646464645394643464546464541
      4631463146460D0A202020202020202020202020453645384538464645364536
      4536464645364536453646464536453645364646453645364536464645364536
      45364646453645364536464645364536453646460D0A20202020202020202020
      2020453645364536464645364536453646464536453645364646453645364536
      4646453645364536464645364536453646464536453645364646453645364536
      46460D0A20202020202020202020202045364536453646464536453645364646
      4536453645364646453645364536464645364536453646464536453645364646
      453645364536464645364536453646460D0A2020202020202020202020204536
      4536453646464536453645364646453645364536464645364536453646464536
      4536453646464536453645364646453645364536464645364536453646460D0A
      2020202020202020202020204536453645364646453645364536464645364536
      4536464645364536453646464536453645364646453645364536464645364536
      4536464645364536453646460D0A202020202020202020202020453645364536
      4646453645364536464645364536453646464536453645364646453645364536
      46464536453645364646453645364536464645364536453646460D0A20202020
      2020202020202020453645364536464645364536453646464537453745374646
      4630464346434646463046454646464646364645464546463944394439444646
      38373837383733390D0A20202020202020202020202046464646464630314646
      4646464630314646464646463031383838383838413343364339433946464637
      464646464646454646414642464644414444444446460D0A2020202020202020
      2020202045454642464246464538454245424646453645364536464645364536
      4536464645364536453646464536453645364646453645364536464645364536
      453646460D0A2020202020202020202020204536453645364646453645364536
      4646453645364536464645364536453646464536453645364646453645364536
      4646453645364536464645364536453646460D0A202020202020202020202020
      4536453645364646453645364536464645364536453646464536453645364646
      4536453645364646453645364536464645364536453646464536453645364646
      0D0A202020202020202020202020453645364536464645364536453646464536
      4536453646464536453645364646453645364536464645364536453646464536
      45364536464645364536453646460D0A20202020202020202020202045364536
      4536464645364536453646464536453645364646453645364536464645364536
      453646464536453645364646453645364536464645364536453646460D0A2020
      2020202020202020202045364536453646464536453645364646453645364536
      4646453645364536464645364536453646464536453645364646453645364536
      464645364536453646460D0A2020202020202020202020204536453645364646
      4537454145414646453946344634464645314543454446464630464546464646
      4634464346434646394239423942464638373837383733330D0A202020202020
      2020202020204646464646463031464646464646303146464646464630313837
      3837383741314332433443344646463746464646464646364643464346464442
      4442444246460D0A202020202020202020202020443744424442464645444642
      4642464645414632463246464535453645364646453645364536464645364536
      45364646453645364536464645364536453646460D0A20202020202020202020
      2020453645364536464645364536453646464536453645364646453645364536
      4646453645364536464645364536453646464536453645364646453645364536
      46460D0A20202020202020202020202045364536453646464536453645364646
      4536453645364646453645364536464645364536453646464536453645364646
      453645364536464645364536453646460D0A2020202020202020202020204536
      4536453646464536453645364646453645364536464645364536453646464536
      4536453646464536453645364646453645364536464645364536453646460D0A
      2020202020202020202020204536453645364646453645364536464645364536
      4536464645364536453646464536453645364646453645364536464645364536
      4536464645364536453646460D0A202020202020202020202020453645364536
      4646453645364536464645364536453646464536453645364646453645364536
      46464536453645364646453645364536464645364536453646460D0A20202020
      2020202020202020454146304630464645354546454646464344434543454646
      4541454545454646463746464646464645464636463646463941394139414646
      38373837383732440D0A20202020202020202020202046464646464630314646
      4646464630314646464646463031383738373837394643304333433346464638
      464646464646463646444644464645384538453846460D0A2020202020202020
      2020202044414441444146464435443744374646454246384638464645434636
      4636464645364536453646464536453645364646453645364536464645364536
      453646460D0A2020202020202020202020204536453645364646453645364536
      4646453645364536464645364536453646464536453645364646453645364536
      4646453645364536464645364536453646460D0A202020202020202020202020
      4536453645364646453645364536464645364536453646464536453645364646
      4536453645364646453645364536464645364536453646464536453645364646
      0D0A202020202020202020202020453645364536464645364536453646464536
      4536453646464536453645364646453645364536464645364536453646464536
      45364536464645364536453646460D0A20202020202020202020202045364536
      4536464645364536453646464536453645364646453645364536464645364536
      453646464536453645364646453645364536464645364536453646460D0A2020
      2020202020202020202045364536453646464536453645364646453645364536
      4646453645364536464645364536453646464536453645364646453645384538
      464645444638463846460D0A2020202020202020202020204444453545354646
      4341434143414646453045304530464645454632463246464637464646464646
      4541463146314646393939393939464638373837383732370D0A202020202020
      2020202020204646464646463031464646464646303146464646464630313837
      3837383739464330433243324646463846464646464646374644464446464539
      4539453946460D0A202020202020202020202020453945394539464644434443
      4443464644334435443546464538463446344646454446394639464645364538
      45384646453645364536464645364536453646460D0A20202020202020202020
      2020453645364536464645364536453646464536453645364646453645364536
      4646453645364536464645364536453646464536453645364646453645364536
      46460D0A20202020202020202020202045364536453646464536453645364646
      4536453645364646453645364536464645364536453646464536453645364646
      453645364536464645364536453646460D0A2020202020202020202020204536
      4536453646464536453645364646453645364536464645364536453646464536
      4536453646464536453645364646453645364536464645364536453646460D0A
      2020202020202020202020204536453645364646453645364536464645364536
      4536464645364536453646464536453645364646453645364536464645364536
      4536464645364536453646460D0A202020202020202020202020453645364536
      4646453645364536464645364536453646464536453645364646453645364536
      46464537454145414646454246384638464644324437443746460D0A20202020
      2020202020202020434243424342464645314531453146464536453645364646
      4545463246324646463746464646464645364544454446463938393839384646
      38373837383731460D0A20202020202020202020202046464646464630314646
      4646464630314646464646463031383738373837394443304332433246464638
      464646464646463746444644464645414541454146460D0A2020202020202020
      2020202045394539453946464539453945394646453245324532464644334434
      4434464645354546454646464545464246424646453745394539464645364536
      453646460D0A2020202020202020202020204536453645364646453645364536
      4646453645364536464645364536453646464536453645364646453645364536
      4646453645364536464645364536453646460D0A202020202020202020202020
      4536453645364646453645364536464645364536453646464536453645364646
      4536453645364646453645364536464645364536453646464536453645364646
      0D0A202020202020202020202020453445344534464645344534453446464536
      4536453646464536453645364646453645364536464645364536453646464536
      45364536464645364536453646460D0A20202020202020202020202045364536
      4536464645364536453646464536453645364646453645364536464645364536
      453646464536453645364646453645364536464645364536453646460D0A2020
      2020202020202020202045364536453646464536453645364646453645364536
      4646453645364536464645384544454446464539463446344646434443464346
      464644314431443146460D0A2020202020202020202020204534453445344646
      4536453645364646453645364536464645464633463346464637464646464646
      4535454245424646393839383938464638373837383731390D0A202020202020
      2020202020204646464646463031464646464646303146464646464630313837
      3837383739424330433343334646463846464646464646374644464446464541
      4541454146460D0A202020202020202020202020454145414541464645414541
      4541464645414541454146464536453645364646443544354435464645324539
      45394646463146444644464645384542454246460D0A20202020202020202020
      2020453645364536464645364536453646464536453645364646453645364536
      4646453645364536464645364536453646464536453645364646453645364536
      46460D0A20202020202020202020202045364536453646464536453645364646
      4536453645364646453645364536464645374537453746464535453545354646
      443544354435464643364336433646460D0A2020202020202020202020204331
      4331433146464331433143314646433943394339464644354435443546464535
      4535453546464536453645364646453645364536464645364536453646460D0A
      2020202020202020202020204536453645364646453645364536464645364536
      4536464645364536453646464536453645364646453645364536464645364536
      4536464645364536453646460D0A202020202020202020202020453645364536
      4646453645364536464645364536453646464541463146314646453445464546
      46464341434143414646443944394439464645364536453646460D0A20202020
      2020202020202020453645364536464645364536453646464536453645364646
      4546463346334646463746464646464645334539453946463938393839384646
      38373837383731330D0A20202020202020202020202046464646464630314646
      4646464630314646464646463031383738373837394243304332433246464638
      464646464646463746444644464645424542454246460D0A2020202020202020
      2020202045424542454246464541454145414646454145414541464645414541
      4541464645384538453846464437443744374646444545334533464646314644
      464446460D0A2020202020202020202020204542454445444646453945394539
      4646453845384538464645384538453846464538453845384646453845384538
      4646453845384538464645384538453846460D0A202020202020202020202020
      4538453845384646453845384538464645384538453846464538453845384646
      4445444544454646433943394339464643334333433346464333433343334646
      0D0A202020202020202020202020433343334333464643324332433246464332
      4332433246464331433143314646433643364336464644424442444246464536
      45364536464645364536453646460D0A20202020202020202020202045364536
      4536464645364536453646464536453645364646453645364536464645364536
      453646464536453645364646453645364536464645364536453646460D0A2020
      2020202020202020202045364536453646464536453645364646454246344634
      4646444545374537464643394339433946464445444544454646453645364536
      464645364536453646460D0A2020202020202020202020204536453645364646
      4536453645364646453645364536464645464634463446464637464646464646
      4531453645364646393739373937464638373837383730440D0A202020202020
      2020202020204646464646463031464646464646303146464646464630313837
      3837383739394330433243324646463846464646464646374644464446464542
      4542454246460D0A202020202020202020202020454245424542464645424542
      4542464645424542454246464542454245424646454245424542464645414541
      45414646443944394439464644424530453046460D0A20202020202020202020
      2020463146434643464645434545454546464541454145414646453945394539
      4646453945394539464645394539453946464539453945394646453945394539
      46460D0A20202020202020202020202045394539453946464538453845384646
      4537453745374646443644364436464643364336433646464335433543354646
      433543354335464643344334433446460D0A2020202020202020202020204334
      4334433446464334433443344646433343334333464643334333433346464332
      4332433246464332433243324646443444344434464645364536453646460D0A
      2020202020202020202020204536453645364646453645364536464645364536
      4536464645364536453646464536453645364646453645364536464645364536
      4536464645364536453646460D0A202020202020202020202020453645364536
      4646454346354635464644414531453146464342434243424646453145314531
      46464536453645364646453645364536464645364536453646460D0A20202020
      2020202020202020453645364536464645364536453646464536453645364646
      4630463546354646463746464646464644464534453446463936393639364646
      38373837383730370D0A20202020202020202020202046464646464630314646
      4646464630314646464646463031383738373837393743304332433246464638
      464646464646463846454645464645434543454346460D0A2020202020202020
      2020202045434543454346464543454345434646454245424542464645424542
      4542464645424542454246464542454245424646454145414541464644434443
      444346460D0A2020202020202020202020204442444644464646463046434643
      4646454345464546464645414541454146464541454145414646454145414541
      4646454145414541464645394539453946460D0A202020202020202020202020
      4539453945394646453745374537464644314431443146464338433843384646
      4337433743374646433743374337464643364336433646464336433643364646
      0D0A202020202020202020202020433643364336464643354335433546464335
      4335433546464334433443344646433443344334464643334333433346464333
      43334333464643454345434546460D0A20202020202020202020202045354535
      4535464645364536453646464536453645364646453645364536464645364536
      453646464536453645364646453645364536464645364536453646460D0A2020
      2020202020202020202045434637463746464436444244424646434643464346
      4646453345334533464645364536453646464536453645364646453645364536
      464645364536453646460D0A2020202020202020202020204536453645364646
      4536453645364646453645364536464646304635463546464637464646464646
      4444453245324646393539353935464446464646464630310D0A202020202020
      2020202020204646464646463031464646464646303146464646464630313837
      3837383739374330433243324646463846464646464646384645464546464543
      4543454346460D0A202020202020202020202020454345434543464645434543
      4543464645434543454346464543454345434646454345434543464645424542
      45424646454245424542464645424542454246460D0A20202020202020202020
      2020453045304530464644424445444546464630464246424646454446304630
      4646454145414541464645414541454146464541454145414646454145414541
      46460D0A20202020202020202020202045364536453646464430443044304646
      4339433943394646433943394339464643394339433946464338433843384646
      433843384338464643374337433746460D0A2020202020202020202020204337
      4337433746464337433743374646433643364336464643364336433646464335
      4335433546464335433543354646433543354335464643344334433446460D0A
      2020202020202020202020204339433943394646453245324532464645374537
      4537464645374537453746464537453745374646453645364536464645364537
      4537464645424636463646460D0A202020202020202020202020443344374437
      4646443444344434464645354535453546464536453645364646453645364536
      46464536453645364646453645364536464645364536453646460D0A20202020
      2020202020202020453645364536464645364536453646464536453645364646
      4631463646364646463746464646464644424530453046463933393339334639
      46464646464630310D0A20202020202020202020202046464646464630314646
      4646464630314646464646463031383738373837393543304333433346464638
      464646464646463846454645464645444544454446460D0A2020202020202020
      2020202045444544454446464544454445444646454445444544464645434543
      4543464645434543454346464543454345434646454345434543464645434543
      454346460D0A2020202020202020202020204543454345434646453445344534
      4646444344454445464645464641464146464544463046304646454245424542
      4646454245424542464645354535453546460D0A202020202020202020202020
      4346434643464646434243424342464643424342434246464341434143414646
      4341434143414646434143414341464643394339433946464339433943394646
      0D0A202020202020202020202020433843384338464643384338433846464338
      4338433846464337433743374646433743374337464643364336433646464336
      43364336464643364336433646460D0A20202020202020202020202043354335
      4335464643394339433946464531453145314646453745374537464645374537
      453746464537453945394646454246364636464644334435443546460D0A2020
      2020202020202020202044414441444146464536453645364646453645364536
      4646453645364536464645364536453646464536453645364646453645364536
      464645364536453646460D0A2020202020202020202020204536453645364646
      4536453645364646453645364536464646314637463746464637464646464646
      4439444444444646393339333933463546464646464630310D0A202020202020
      2020202020204646464646463031464646464646303146464646464630313837
      3837383739334330433343334646463846464646464646394645464546464545
      4545454546460D0A202020202020202020202020454445444544464645444544
      4544464645444544454446464544454445444646454445444544464645444544
      45444646454445444544464645434543454346460D0A20202020202020202020
      2020454345434543464645434543454346464537453745374646444444454445
      4646454646394639464645454631463146464533453345334646443044304430
      46460D0A20202020202020202020202043444344434446464344434443444646
      4343434343434646434343434343464643434343434346464342434243424646
      434243424342464643414341434146460D0A2020202020202020202020204341
      4341434146464341434143414646433943394339464643394339433946464338
      4338433846464338433843384646433743374337464643374337433746460D0A
      2020202020202020202020204337433743374646433643364336464643394339
      4339464645304530453046464539454245424646454246354635464644334435
      4435464645304530453046460D0A202020202020202020202020453745374537
      4646453745374537464645374537453746464536453645364646453645364536
      46464536453645364646453645364536464645364536453646460D0A20202020
      2020202020202020453645364536464645364536453646464536453645364646
      4632463746374646463746464646464644364442444246463932393239324631
      46464646464630310D0A20202020202020202020202046464646464630314646
      4646464630314646464646463031383738373837393743304333433346464638
      464646464646463946454645464645454545454546460D0A2020202020202020
      2020202045454545454546464545454545454646454545454545464645454545
      4545464645444544454446464544454445444646454445444544464645444544
      454446460D0A2020202020202020202020204544454445444646454445444544
      4646454345434543464645414541454146464446453045304646454146304630
      4646443944394439464643464346434646460D0A202020202020202020202020
      4346434643464646434543454345464643454345434546464344434443444646
      4344434443444646433643364336464642354235423546464142414241424646
      0D0A202020202020202020202020413541354135464641414141414146464234
      4234423446464337433743374646434143414341464643394339433946464339
      43394339464643394339433946460D0A20202020202020202020202043384338
      4338464643384338433846464337433743374646443044304430464645354542
      454246464434443644374646453245344535464645384538453846460D0A2020
      2020202020202020202045384538453846464537453745374646453745374537
      4646453745374537464645364536453646464536453645364646453645364536
      464645364536453646460D0A2020202020202020202020204536453645364646
      4536453645364646453645364536464646324638463846464637464646464646
      4434443944394646393239323932454646464646464630310D0A202020202020
      2020202020204646464646463031464646464646303146464646464630313837
      3837383739464331433343334646463846464646464646394645464546464546
      4546454646460D0A202020202020202020202020454645464546464645454545
      4545464645454545454546464545454545454646454545454545464645454545
      45454646454545454545464645454545454546460D0A20202020202020202020
      2020454445444544464645444544454446464544454445444646454445444544
      4646453445344534464643394339433946464536453645364646444144414441
      46460D0A20202020202020202020202044304430443046464430443044304646
      4346434643464646433143314331464641394139413946463942394239424646
      413441344134464641464146414646460D0A2020202020202020202020204231
      4231423146464143414341434646413041304130464639383938393846464141
      4141414146464330433043304646434143414341464643414341434146460D0A
      2020202020202020202020204341434143414646433943394339464644304430
      4430464645314531453146464243424342434646444444454445464645394539
      4539464645384538453846460D0A202020202020202020202020453845384538
      4646453845384538464645384538453846464538453845384646453645364536
      46464536453645364646453645364536464645364536453646460D0A20202020
      2020202020202020453645364536464645364536453646464536453645364646
      4632463946394646463746464646464644334437443746463932393239324542
      46464646464630310D0A20202020202020202020202046464646464630314646
      4646464630314646464646463031383838383838413543324334433446464638
      464646464646463946454645464645464546454646460D0A2020202020202020
      2020202045464546454646464546454645464646454645464546464645464546
      4546464645464546454646464545454545454646454545454545464645454545
      454546460D0A2020202020202020202020204545454545454646454545454545
      4646454545454545464645374537453746464434443444344646434243424342
      4646424442444244464645344534453446460D0A202020202020202020202020
      4437443744374646434343434343464641464146414646464134413441344646
      4331433143314646444544454445464645414541454146464543454345434646
      0D0A202020202020202020202020454245424542464645424542454246464538
      4538453846464442444244424646424542454245464639463946394646464136
      41364136464643354335433546460D0A20202020202020202020202043424342
      4342464643434343434346464446444644464646423542354235464643324332
      433246464341434143414646453245324532464645394539453946460D0A2020
      2020202020202020202045394539453946464539453945394646453945394539
      4646453845384538464645384538453846464536453645364646453645364536
      464645364536453646460D0A2020202020202020202020204536453645364646
      4536453645364646453645364536464646334639463946464637464646464646
      4433443744374646393139313931453746464646464630310D0A202020202020
      2020202020204646464646463031464646464646303146464646464630313839
      3839383941424334433643364646463846464646464646394645464546464630
      4630463046460D0A202020202020202020202020463046304630464646304630
      4630464645464546454646464546454645464646454645464546464645464546
      45464646454645464546464645464546454646460D0A20202020202020202020
      2020454645464546464645454545454546464538453845384646443644364436
      4646443544354435464644344434443446464345434543454646433243324332
      46460D0A20202020202020202020202043394339433946464143414341434646
      4343434343434646453945394539464645444544454446464543454345434646
      454345434543464645434543454346460D0A2020202020202020202020204543
      4543454346464543454345434646454345434543464645424542454246464542
      4542454246464535453545354646433543354335464641314131413146460D0A
      2020202020202020202020204232423242324646443144314431464642424242
      4242464643354335433546464342434243424646434243424342464643434343
      4343464645334533453346460D0A202020202020202020202020453945394539
      4646453945394539464645394539453946464539453945394646453945394539
      46464537453745374646453645364536464645364536453646460D0A20202020
      2020202020202020453645364536464645364536453646464536453645364646
      4633463946394646463746464646464644324437443746463931393139314535
      46464646464630310D0A20202020202020202020202046464646464630314646
      4646464630314646464646463031384138413841423143364338433846464638
      464646464646463946444644464646304630463046460D0A2020202020202020
      2020202046304630463046464630463046304646463046304630464646304630
      4630464646304630463046464630463046304646454645464546464645464546
      454646460D0A2020202020202020202020204546454645464646454145414541
      4646443844384438464644364436443646464436443644364646443544354435
      4646443144314431464642354235423546460D0A202020202020202020202020
      4336433643364646453945394539464645444544454446464544454445444646
      4544454445444646454445444544464645444544454446464544454445444646
      0D0A202020202020202020202020454445444544464645434543454346464543
      4543454346464543454345434646454345434543464645434543454346464543
      45434543464645364536453646460D0A20202020202020202020202043314331
      4331464641334133413346464333433343334646434443444344464643434343
      434346464343434343434646434343434343464643454345434546460D0A2020
      2020202020202020202045354535453546464541454145414646454145414541
      4646454145414541464645394539453946464538453845384646453645364536
      464645364536453646460D0A2020202020202020202020204536453645364646
      4536453645364646453645364536464646334639463946464637464646464646
      4432443644364646393139313931453146464646464630310D0A202020202020
      2020202020204646464646463031464646464646303146464646464630313842
      3842384242374338434243424646463846464646464646394644464446464631
      4631463146460D0A202020202020202020202020463146314631464646314631
      4631464646314631463146464630463046304646463046304630464646304630
      46304646463046304630464646304630463046460D0A20202020202020202020
      2020454445444544464644424442444246464438443844384646443844384438
      4646443744374437464643414341434146464244424442444646453145314531
      46460D0A20202020202020202020202045454545454546464545454545454646
      4545454545454646454545454545464645454545454546464545454545454646
      454445444544464645444544454446460D0A2020202020202020202020204544
      4544454446464544454445444646454445444544464645444544454446464543
      4543454346464543454345434646454345434543464645434543454346460D0A
      2020202020202020202020204543454345434646444344434443464641434143
      4143464642384238423846464345434543454646434443444344464643444344
      4344464643444344434446460D0A202020202020202020202020434643464346
      4646453745374537464645414541454146464541454145414646454145414541
      46464541454145414646453745374537464645364536453646460D0A20202020
      2020202020202020453645364536464645364536453646464536453645364646
      4633463946394646463746464646464644324436443646463930393039304446
      46464646464630310D0A20202020202020202020202046464646464630314646
      4646464630314646464646463031384338433843424643394344434446464637
      464646464646463946444644464646324632463246460D0A2020202020202020
      2020202046314631463146464631463146314646463146314631464646314631
      4631464646314631463146464631463146314646463146314631464645464546
      454646460D0A2020202020202020202020204445444544454646444144414441
      4646444144414441464644384438443846464334433443344646443044304430
      4646454545454545464645464546454646460D0A202020202020202020202020
      4546454645464646454645464546464645464546454646464545454545454646
      4545454545454646454545454545464645454545454546464545454545454646
      0D0A202020202020202020202020454545454545464645454545454546464544
      4544454446464544454445444646454445444544464645444544454446464544
      45444544464645444544454446460D0A20202020202020202020202045434543
      4543464645434543454346464541454145414646433343334333464641444144
      414446464342434243424646434643464346464643454345434546460D0A2020
      2020202020202020202043454345434546464433443344334646453945394539
      4646454245424542464645424542454246464541454145414646453945394539
      464645364536453646460D0A2020202020202020202020204536453645364646
      4536453645364646453645364536464646334639463946464637464646464646
      4432443644364646393039303930444246464646464630310D0A202020202020
      2020202020204646464646463031464646464646303146464646464630313844
      3844384443354342434643464646463746464646464646394644464446464632
      4632463246460D0A202020202020202020202020463246324632464646324632
      4632464646324632463246464632463246324646463146314631464646314631
      46314646463046304630464645324532453246460D0A20202020202020202020
      2020444344434443464644434443444346464437443744374646433543354335
      4646453345334533464646304630463046464630463046304646463046304630
      46460D0A20202020202020202020202046304630463046464546454645464646
      4546454645464646454645464546464645464546454646464546454645464646
      454645464546464645454545454546460D0A2020202020202020202020204545
      4545454546464545454545454646454545454545464645454545454546464545
      4545454546464544454445444646454445444544464645444544454446460D0A
      2020202020202020202020204544454445444646454445444544464645444544
      4544464645444544454446464442444244424646414641464146464643344334
      4334464644304430443046460D0A202020202020202020202020434643464346
      4646434643464346464644374437443746464541454145414646454245424542
      46464542454245424646454245424542464645364536453646460D0A20202020
      2020202020202020453645364536464645364536453646464536453645364646
      4633463946394646463746464646464644324436443646463930393039304437
      46464646464630310D0A20202020202020202020202046464646464630314646
      4646464630314646464646463031384538453845434243444431443146464637
      464646464646463946434643464646334633463346460D0A2020202020202020
      2020202046334633463346464632463246324646463246324632464646324632
      4632464646324632463246464632463246324646453645364536464644454445
      444546460D0A2020202020202020202020204444444444444646443344334433
      4646434643464346464645454545454546464631463146314646463146314631
      4646463046304630464646304630463046460D0A202020202020202020202020
      4630463046304646463046304630464646304630463046464630463046304646
      4630463046304646454645464546464645464546454646464546454645464646
      0D0A202020202020202020202020454645464546464645464546454646464546
      4546454646464545454545454646454545454545464645454545454546464545
      45454545464645454545454546460D0A20202020202020202020202045454545
      4545464645444544454446464544454445444646454445444544464645444544
      454446464541454145414646433143314331464642394239423946460D0A2020
      2020202020202020202044304430443046464430443044304646443044304430
      4646444344434443464645434543454346464542454245424646454245424542
      464645394539453946460D0A2020202020202020202020204536453645364646
      4536453645364646453645364536464646324638463846464637464646464646
      4432443644364646384638463846443546464646464630310D0A202020202020
      2020202020204646464646463031464646464646303146464646464630313846
      3846384644314346443344334646463746464646464646394643464346464633
      4633463346460D0A202020202020202020202020463346334633464646334633
      4633464646334633463346464633463346334646463346334633464645414541
      45414646453045304530464644464446444646460D0A20202020202020202020
      2020434643464346464644434444444446464632463246324646463146314631
      4646463146314631464646314631463146464631463146314646463146314631
      46460D0A20202020202020202020202046314631463146464630463046304646
      4630463046304646463046304630464646304630463046464630463046304646
      463046304630464646304630463046460D0A2020202020202020202020204546
      4546454646464546454645464646454645464546464645464546454646464546
      4546454646464546454645464646454545454545464645454545454546460D0A
      2020202020202020202020204545454545454646454545454545464645454545
      4545464645454545454546464545454545454646454445444544464645444544
      4544464644384438443846460D0A202020202020202020202020423442344234
      4646434343434343464644314431443146464431443144314646453145314531
      46464543454345434646454345434543464645424542454246460D0A20202020
      2020202020202020453645364536464645364536453646464536453645364646
      4632463846384646463746464646464644324436443646463930393039304437
      46464646464630310D0A20202020202020202020202046464646464630314646
      4646464630314646464646463031393039303930443744314435443546464637
      464646464646463946434643464646344634463446460D0A2020202020202020
      2020202046344634463446464634463446344646463446344634464646334633
      4633464645444544454446464532453245324646444544454445464644314431
      443146460D0A2020202020202020202020204539454145414646463246324632
      4646463246324632464646324632463246464632463246324646463246324632
      4646463246324632464646314631463146460D0A202020202020202020202020
      4631463146314646463146314631464646314631463146464631463146314646
      4631463146314646463046304630464646304630463046464630463046304646
      0D0A202020202020202020202020463046304630464646304630463046464630
      4630463046464630463046304646454645464546464645464546454646464546
      45464546464645464546454646460D0A20202020202020202020202045464546
      4546464645464546454646464545454545454646454545454545464645454545
      454546464545454545454646454545454545464645454545454546460D0A2020
      2020202020202020202045364536453646464242424242424646433443344334
      4646443244324432464644324432443246464535453545354646454345434543
      464645434543454346460D0A2020202020202020202020204538453845384646
      4536453645364646453645364536464646314637463746464637464646464646
      4432443644364646393139313931444646464646464630310D0A202020202020
      2020202020204646464646463031464646464646303146464646464630313931
      3931393144444432443644364646463746464646464646394643464346464635
      4635463546460D0A202020202020202020202020463446344634464646344634
      4634464646344634463446464630463046304646453445344534464644434443
      44434646443944394439464646314631463146460D0A20202020202020202020
      2020463346334633464646334633463346464633463346334646463346334633
      4646463246324632464646324632463246464632463246324646463246324632
      46460D0A20202020202020202020202046324632463246464632463246324646
      4631463146314646463146314631464646314631463146464631463146314646
      463146314631464646314631463146460D0A2020202020202020202020204631
      4631463146464630463046304646463046304630464646304630463046464630
      4630463046464630463046304646463046304630464645464546454646460D0A
      2020202020202020202020204546454645464646454645464546464645464546
      4546464645464546454646464546454645464646454645464546464645454545
      4545464645454545454546460D0A202020202020202020202020454545454545
      4646454445444544464643424342434246464242424242424646443244324432
      46464435443544354646453945394539464645444544454446460D0A20202020
      2020202020202020454145414541464645364536453646464536453645364646
      4631463646364646463746464646464644324436443646463931393139314535
      46464646464630310D0A20202020202020202020202046464646464630314646
      4646464630314646464646463031393339333933454644334438443846464637
      464646464646463946434643464646354635463546460D0A2020202020202020
      2020202046354635463546464635463546354646463246324632464645364536
      4536464644394439443946464533453345334646463446344634464646344634
      463446460D0A2020202020202020202020204634463446344646463446344634
      4646463346334633464646334633463346464633463346334646463346334633
      4646463346334633464646334633463346460D0A202020202020202020202020
      4632463246324646463246324632464646324632463246464632463246324646
      4632463246324646463246324632464646314631463146464631463146314646
      0D0A202020202020202020202020463146314631464646314631463146464631
      4631463146464631463146314646463046304630464646304630463046464630
      46304630464646304630463046460D0A20202020202020202020202046304630
      4630464646304630463046464630463046304646454645464546464645464546
      454646464546454645464646454645464546464645464546454646460D0A2020
      2020202020202020202045464546454646464545454545454646454545454545
      4646444544454445464642394239423946464345434543454646443844384438
      464645424542454246460D0A2020202020202020202020204544454445444646
      4536453645364646453645364536464646304635463546464637464646464646
      4432443644364646393239323932454446464646464630310D0A202020202020
      2020202020204646464646463031464646464646303138373837383730373935
      3935393546464436444144414646463746464646464646394643464346464636
      4636463646460D0A202020202020202020202020463646364636464646354635
      4635464645354535453546464441444244424646454545454545464646354635
      46354646463546354635464646344634463446460D0A20202020202020202020
      2020463446344634464646344634463446464634463446344646463446344634
      4646463446344634464646334633463346464633463346334646463346334633
      46460D0A20202020202020202020202046334633463346464633463346334646
      4633463346334646463346334633464646324632463246464632463246324646
      463246324632464646324632463246460D0A2020202020202020202020204632
      4632463246464632463246324646463146314631464646314631463146464631
      4631463146464631463146314646463146314631464646314631463146460D0A
      2020202020202020202020204630463046304646463046304630464646304630
      4630464646304630463046464630463046304646463046304630464646304630
      4630464645464546454646460D0A202020202020202020202020454645464546
      4646454645464546464645464546454646464546454645464646454145414541
      46464332433243324646433343334333464644424442444246460D0A20202020
      2020202020202020454445444544464645384538453846464536453645364646
      4630463546354646463746464646464644354441444146463933393339334635
      46464646464630310D0A20202020202020202020202046464646464630314646
      4646464630313837383738373142393839383938464644414446444646464637
      464646464646463946434643464646364636463646460D0A2020202020202020
      2020202046364636463646464534453445344646453045324532464646334634
      4634464646354635463546464635463546354646463546354635464646354635
      463546460D0A2020202020202020202020204635463546354646463546354635
      4646463546354635464646344634463446464634463446344646463446344634
      4646463446344634464646344634463446460D0A202020202020202020202020
      4634463446344646463346334633464646334633463346464633463346334646
      4633463346334646463346334633464646334633463346464632463246324646
      0D0A202020202020202020202020463246324632464646324632463246464632
      4632463246464632463246324646463246324632464646314631463146464631
      46314631464646314631463146460D0A20202020202020202020202046314631
      4631464646314631463146464631463146314646463146314631464646304630
      463046464630463046304646463046304630464646304630463046460D0A2020
      2020202020202020202046304630463046464630463046304646454645464546
      4646454645464546464645464546454646464546454645464646443644364436
      464642414241424146460D0A2020202020202020202020204437443744374646
      4542454245424646453645364536464645464634463446464637464646464646
      4442453045304646393439343934464246464646464630310D0A202020202020
      2020202020204646464646463031464646464646303138373837383732373941
      3941394146464530453545354646463746464646464646394643464346464637
      4637463746460D0A202020202020202020202020453745374537464645414542
      4542464646354636463646464636463646364646463646364636464646364636
      46364646463646364636464646364636463646460D0A20202020202020202020
      2020463546354635464646354635463546464635463546354646463546354635
      4646463546354635464646354635463546464635463546354646463446344634
      46460D0A20202020202020202020202046344634463446464634463446344646
      4634463446344646463446344634464646344634463446464633463346334646
      463346334633464646334633463346460D0A2020202020202020202020204633
      4633463346464633463346334646463346334633464646324632463246464632
      4632463246464632463246324646463246324632464646324632463246460D0A
      2020202020202020202020204632463246324646463146314631464646314631
      4631464646314631463146464631463146314646463146314631464646314631
      4631464646304630463046460D0A202020202020202020202020463046304630
      4646463046304630464646304630463046464630463046304646463046304630
      46464630463046304646454645464546464645394539453946460D0A20202020
      2020202020202020433443344334464644344434443446464536453645364646
      4545463246324646463746464646464645324538453846463935393539354646
      38373837383730350D0A20202020202020202020202046464646464630314646
      4646464630313837383738373335394339433943464645364543454346464637
      464646464646463946434643464646354636463646460D0A2020202020202020
      2020202046324632463246464637463746374646463746374637464646374637
      4637464646374637463746464636463646364646463646364636464646364636
      463646460D0A2020202020202020202020204636463646364646463646364636
      4646463646364636464646354635463546464635463546354646463546354635
      4646463546354635464646354635463546460D0A202020202020202020202020
      4635463546354646463546354635464646344634463446464634463446344646
      4634463446344646463446344634464646344634463446464634463446344646
      0D0A202020202020202020202020463346334633464646334633463346464633
      4633463346464633463346334646463346334633464646334633463346464632
      46324632464646324632463246460D0A20202020202020202020202046324632
      4632464646324632463246464632463246324646463246324632464646324632
      463246464631463146314646463146314631464646314631463146460D0A2020
      2020202020202020202046314631463146464631463146314646463146314631
      4646463046304630464646304630463046464630463046304646463046304630
      464646304630463046460D0A2020202020202020202020204630463046304646
      4434443744374646453045304530464645444631463146464637464646464646
      4539463046304646393639363936464638373837383730420D0A202020202020
      2020202020204646464646463031464646464646303138373837383734313944
      3944394446464542463146314646463746464646464646394643464346464638
      4638463846460D0A202020202020202020202020463846384638464646384638
      4638464646384638463846464637463746374646463746374637464646374637
      46374646463746374637464646374637463746460D0A20202020202020202020
      2020463746374637464646364636463646464636463646364646463646364636
      4646463646364636464646364636463646464636463646364646463546354635
      46460D0A20202020202020202020202046354635463546464635463546354646
      4635463546354646463546354635464646354635463546464635463546354646
      463446344634464646344634463446460D0A2020202020202020202020204634
      4634463446464634463446344646463446344634464646344634463446464633
      4633463346464633463346334646463346334633464646334633463346460D0A
      2020202020202020202020204633463346334646463346334633464646324632
      4632464646324632463246464632463246324646463246324632464646324632
      4632464646324632463246460D0A202020202020202020202020463146314631
      4646463146314631464646314631463146464631463146314646463146314631
      46464631463146314646463046304630464646304630463046460D0A20202020
      2020202020202020463046304630464646304630463046464542454345434646
      4544463046304646463746464646464645464637463746463937393739374646
      38373837383731330D0A20202020202020202020202046464646464630314646
      4646464630313837383738373337394239423942464645364544454446464637
      464646464646464146454645464646394639463946460D0A2020202020202020
      2020202046384638463846464638463846384646463846384638464646384638
      4638464646384638463846464638463846384646463746374637464646374637
      463746460D0A2020202020202020202020204637463746374646463746374637
      4646463746374637464646374637463746464636463646364646463646364636
      4646463646364636464646364636463646460D0A202020202020202020202020
      4636463646364646463646364636464646364636463646464635463546354646
      4635463546354646463546354635464646354635463546464635463546354646
      0D0A202020202020202020202020463546354635464646344634463446464634
      4634463446464634463446344646463446344634464646344634463446464634
      46344634464646344634463446460D0A20202020202020202020202046334633
      4633464646334633463346464633463346334646463346334633464646334633
      463346464633463346334646463246324632464646324632463246460D0A2020
      2020202020202020202046324632463246464632463246324646463246324632
      4646463246324632464646314631463146464631463146314646463146314631
      464646314631463146460D0A2020202020202020202020204631463146314646
      4631463146314646463046304630464646314636463646464637464646464646
      4543463346334646393839383938464638373837383731420D0A202020202020
      2020202020204646464646463031464646464646303138373837383732313936
      3936393646464439444544454646463746464646464646414646464646464643
      4645464546460D0A202020202020202020202020464246434643464646424643
      4643464646424643464346464642464346434646464246434643464646424644
      46444646464246444644464646424644464446460D0A20202020202020202020
      2020464246444644464646424644464446464641464446444646463946444644
      4646463946444644464646394644464446464638464446444646463846444644
      46460D0A20202020202020202020202046384644464446464637464346434646
      4636464346434646463646424642464646354642464246464635464246424646
      463546424642464646344642464246460D0A2020202020202020202020204634
      4641464146464634464146414646463446414641464646344642464246464634
      4641464146464634464146414646463446414641464646334639463946460D0A
      2020202020202020202020204633463946394646463346394639464646334639
      4639464646324638463846464632463846384646463246384638464646324637
      4637464646324636463646460D0A202020202020202020202020463146364636
      4646463046354635464646304634463446464546463346334646454546324632
      46464545463146314646454446304630464645434546454646460D0A20202020
      2020202020202020454345454545464645424544454446464544463146314646
      4636464446444646463746464646464645334539453946463939393939394646
      38373837383732330D0A20202020202020202020202046464646464630314646
      4646464630314646464646463031384438443844453943314334433446464637
      464646464646464146464646464646444646464646460D0A2020202020202020
      2020202046444646464646464643464646464646464346464646464646424646
      4646464646414646464646464639464646464646463946464646464646384646
      464646460D0A2020202020202020202020204637464646464646463746464646
      4646463746464646464646374646464646464637464646464646463746464646
      4646463746464646464646374646464646460D0A202020202020202020202020
      4637464646464646463746464646464646374646464646464637464646464646
      4637464646464646463746464646464646374646464646464637464646464646
      0D0A202020202020202020202020463746464646464646374646464646464637
      4646464646464637464646464646463746464646464646374646464646464637
      46464646464646374646464646460D0A20202020202020202020202046374646
      4646464646374646464646464637464646464646463746464646464646374646
      464646464637464646464646463746464646464646374646464646460D0A2020
      2020202020202020202046374646464646464637464646464646463746464646
      4646463746464646464646374646464646464637464646464646463746464646
      464646374646464646460D0A2020202020202020202020204637464646464646
      4637464646464646463746464646464646374646464646464637464646464646
      4437444344434646393739373937464638373837383732310D0A202020202020
      2020202020204646464646463031464646464646303146464646464630313837
      3837383737373938393839384646423542374237464643374339433946464339
      4341434146460D0A202020202020202020202020433443364336464643314333
      4333464643304332433246464246433243324646424643314331464642454330
      43304646424442464246464642444246424646460D0A20202020202020202020
      2020424342454245464642434245424546464242424342434646423942424242
      4646423842414241464642374239423946464237423842384646423642374237
      46460D0A20202020202020202020202042354236423646464234423542354646
      4233423442344646423242334233464642314233423346464231423242324646
      423042324232464642304231423146460D0A2020202020202020202020204230
      4231423146464146423142314646414642304230464641454146414646464145
      4146414646464145414641464646414441464146464641464231423146460D0A
      2020202020202020202020204231423242324646423342344234464642354237
      4237464642394241424146464242424342434646424342454245464642454330
      4330464642464331433146460D0A202020202020202020202020433043324332
      4646433243344334464643344337433746464337434143414646434143454345
      46464344443144314646443044344434464644324437443746460D0A20202020
      2020202020202020443544414441464644394444444446464443453145314646
      4446453445344646444144464446464642314231423146463842384238424533
      38373837383730350D0A20202020202020202020202046464646464630314646
      4646464630314646464646463031464646464646303138373837383734373838
      383838383742384338433843383738463846384639370D0A2020202020202020
      2020202039313931393141353933393339334133393239323932394639323932
      3932394239323932393239373931393139313844384638463846383538443844
      384437440D0A2020202020202020202020203841384138413735383838383838
      3642383738373837363138373837383735373837383738373531383738373837
      3446383738373837344438373837383734420D0A202020202020202020202020
      3837383738373439383738373837343938373837383734373837383738373435
      3837383738373435383738373837343338373837383734313837383738373346
      0D0A202020202020202020202020383738373837334638373837383733443837
      3837383733423837383738373339383738373837333938373837383733373837
      38373837333538373837383733370D0A20202020202020202020202038373837
      3837334638373837383734353837383738373442383738373837353338373837
      383735393837383738373546383738373837363738393839383936440D0A2020
      2020202020202020202038423842384237353843384338433742384538453845
      3831393039303930383739313931393138443931393139313933393239323932
      394239343934393441310D0A2020202020202020202020203936393639364142
      3938393839384244393939393939434639413941394144313936393639364346
      3839383938394131383738373837323746464646464630310D0A202020202020
      2020202020204646464646463031464646464646303146464646464630314646
      4646464630314646464646463031464646464646303146464646464630314646
      4646464630310D0A202020202020202020202020464646464646303146464646
      4646303146464646464630314646464646463031464646464646303146464646
      46463031464646464646303146464646464630310D0A20202020202020202020
      2020464646464646303146464646464630314646464646463031464646464646
      3031464646464646303146464646464630314646464646463031464646464646
      30310D0A20202020202020202020202046464646464630314646464646463031
      4646464646463031464646464646303146464646464630314646464646463031
      464646464646303146464646464630310D0A2020202020202020202020204646
      4646464630314646464646463031464646464646303146464646464630314646
      4646464630314646464646463031464646464646303146464646464630310D0A
      2020202020202020202020204646464646463031464646464646303146464646
      4646303146464646464630314646464646463031464646464646303146464646
      4646303146464646464630310D0A202020202020202020202020464646464646
      3031464646464646303146464646464630314646464646463031464646464646
      30314646464646463031464646464646303146464646464630310D0A20202020
      2020202020202020464646464646303146464646464630314646464646463031
      4646464646463031464646464646303146464646464630314646464646463031
      46464646464630310D0A20202020202020202020202046464646464630314646
      4646464630314646464646463031464646464646303146464646464630314646
      464646463031464646464646303146464646464630310D0A2020202020202020
      2020202046464646464630314646464646463031464646464646303146464646
      4646303146464646464630314646464646463031464646464646303146464646
      464630310D0A2020202020202020202020204646464646463031464646464646
      3031464646464646303146464646464630314646464646463031464646464646
      3031464646464646303146464646464630310D0A202020202020202020202020
      4646464646463031464646464646303146464646464630314646464646463031
      4646464646463031464646464646303146464646464630314646464646463031
      0D0A202020202020202020202020464646464646303146464646464630314646
      4646464630314646464646463031464646464646303146464646464630314646
      46464646303146464646464630310D0A20202020202020202020202046464646
      4646303146464646464630314646464646463031464646464646303146464646
      464630314646464646463031464646464646303146464646464630310D0A2020
      2020202020202020202046464646464630314646464646463031464646464646
      3031464646464646303146464646464630314646464646463031464646464646
      303146464646464630310D0A2020202020202020202020204646464646463031
      4646464646463031464646464646303146464646464630314646464646463031
      4646464646463031464646464646303146464646464630310D0A202020202020
      2020202020204646464646463031464646464646303146464646464630314646
      4646464630314646464646463031464646464646303146464646464630314646
      4646464630310D0A202020202020202020202020464646464646303146464646
      4646303146464646464630314646464646463031464646464646303146464646
      46463031464646464646303146464646464630310D0A20202020202020202020
      2020464646464646303146464646464630314646464646463031464646464646
      3031464646464646303146464646464630314646464646463031464646464646
      30310D0A20202020202020202020202046464646464630314646464646463031
      4646464646463031464646464646303146464646464630314646464646463031
      464646464646303146464646464630310D0A2020202020202020202020204646
      4646464630314646464646463031464646464646303146464646464630314646
      4646464630314646464646463031464646464646303146464646464630310D0A
      2020202020202020202020204646464646463031464646464646303146464646
      4646303146464646464630314646464646463031464646464646303146464646
      4646303146464646464630310D0A202020202020202020202020464646464646
      3031464646464646303146464646464630314646464646463031464646464646
      30314646464646463031464646464646303146464646464630310D0A20202020
      2020202020202020464646464646303146464646464630314646464646463031
      4646464646463031464646464646303146464646464630314646464646463031
      46464646464630310D0A20202020202020202020202046464646464630314646
      4646464630314646464646463031464646464646303146464646464630314646
      464646463031464646464646303146464646464630310D0A2020202020202020
      2020202046464646464630314646464646463031464646464646303146464646
      4646303146464646464630314646464646463031464646464646303146464646
      464630310D0A2020202020202020202020204646464646463031464646464646
      3031464646464646303146464646464630314646464646463031464646464646
      3031464646464646303146464646464630310D0A202020202020202020202020
      4646464646463031464646464646303146464646464630314646464646463031
      4646464646463031464646464646303146464646464630314646464646463031
      0D0A202020202020202020202020464646464646303146464646464630314646
      4646464630314646464646463031464646464646303146464646464630314646
      46464646303146464646464630310D0A20202020202020202020202046464646
      4646303146464646464630314646464646463031464646464646303146464646
      464630314646464646463031464646464646303146464646464630310D0A2020
      2020202020202020202046464646464630314646464646463031464646464646
      3031464646464646303146464646464630314646464646463031464646464646
      303146464646464630310D0A2020202020202020202020204646464646463031
      4646464646463031464646464646303146464646464630314646464646463031
      4646464646463031464646464646303146464646464630310D0A202020202020
      2020202020204646464646463031464646464646303146464646464630314646
      4646464630314646464646463031464646464646303146464646464630314646
      4646464630310D0A202020202020202020202020464646464646303146464646
      4646303146464646464630314646464646463031464646464646303146464646
      46463031464646464646303146464646464630310D0A20202020202020202020
      2020464646464646303146464646464630314646464646463031464646464646
      3031464646464646303146464646464630314646464646463031464646464646
      30310D0A20202020202020202020202046464646464630314646464646463031
      4646464646463031464646464646303146464646464630314646464646463031
      464646464646303146464646464630310D0A2020202020202020202020204646
      4646464630314646464646463031464646464646303146464646464630314646
      4646464630314646464646463031464646464646303146464646464630310D0A
      2020202020202020202020204646464646463031464646464646303146464646
      4646303146464646464630314646464646463031464646464646303146464646
      4646303146464646464630310D0A202020202020202020202020464646464646
      3031464646464646303146464646464630314646464646463031464646464646
      30314646464646463031464646464646303146464646464630310D0A20202020
      2020202020202020464646464646303146464646464630314646464646463031
      4646464646463031464646464646303146464646464630314646464646463031
      46464646464630310D0A20202020202020202020202046464646464630314646
      4646464630314646464646463031464646464646303146464646464630314646
      464646463031464646464646303146464646464630310D0A2020202020202020
      2020202046464646464630314646464646463031464646464646303146464646
      4646303146464646464630314646464646463031464646464646303146464646
      464630310D0A2020202020202020202020204646464646463031464646464646
      3031464646464646303146464646464630314646464646463031464646464646
      3031464646464646303146464646464630310D0A202020202020202020202020
      4646464646463031464646464646303146464646464630314646464646463031
      4646464646463031464646464646303146464646464630314646464646463031
      0D0A202020202020202020202020464646464646303146464646464630314646
      4646464630314646464646463031464646464646303146464646464630314646
      46464646303146464646464630310D0A20202020202020202020202046464646
      4646303146464646464630314646464646463031464646464646303146464646
      464630314646464646463031464646464646303146464646464630310D0A2020
      2020202020202020202046464646464630314646464646463031464646464646
      3031464646464646303146464646464630314646464646463031464646464646
      303146464646464630310D0A2020202020202020202020204646464646463031
      4646464646463031464646464646303146464646464630314646464646463031
      4646464646463031464646464646303146464646464630310D0A202020202020
      2020202020204646464646463031464646464646303146464646464630314646
      4646464630314646464646463031464646464646303146464646464630314646
      4646464630310D0A202020202020202020202020464646464646303146464646
      4646303146464646464630314646464646463031464646464646303146464646
      46463031464646464646303146464646464630310D0A20202020202020202020
      2020464646464646303146464646464630314646464646463031464646464646
      3031464646464646303146464646464630314646464646463031464646464646
      30310D0A20202020202020202020202046464646464630314646464646463031
      4646464646463031464646464646303146464646464630314646464646463031
      464646464646303146464646464630310D0A2020202020202020202020204646
      4646464630314646464646463031464646464646303146464646464630314646
      4646464630314646464646463031464646464646303146464646464630310D0A
      2020202020202020202020204646464646463031464646464646303146464646
      4646303146464646464630314646464646463031464646464646303146464646
      4646303146464646464630310D0A202020202020202020202020464646464646
      3031464646464646303146464646464630314646464646463031464646464646
      30314646464646463031464646464646303146464646464630310D0A20202020
      2020202020202020464646464646303146464646464630314646464646463031
      4646464646463031464646464646303146464646464630314646464646463031
      46464646464630310D0A20202020202020202020202046464646464630314646
      4646464630314646464646463031464646464646303146464646464630314646
      464646463031464646464646303146464646464630310D0A2020202020202020
      2020202046464646464630314646464646463031464646464646303146464646
      4646303146464646464630314646464646463031464646464646303146464646
      464630310D0A2020202020202020202020204646464646463031464646464646
      3031464646464646303146464646464630314646464646463031464646464646
      3031464646464646303146464646464630310D0A202020202020202020202020
      4646464646463031464646464646303146464646464630314646464646463031
      4646464646463031464646464646303146464646464630314646464646463031
      0D0A202020202020202020202020464646464646303146464646464630314646
      4646464630314646464646463031464646464646303146464646464630314646
      46464646303146464646464630310D0A20202020202020202020202046464646
      4646303146464646464630314646464646463031464646464646303146464646
      464630314646464646463031464646464646303146464646464630310D0A2020
      2020202020202020202046464646464630314646464646463031464646464646
      3031464646464646303146464646464630314646464646463031464646464646
      303146464646464630310D0A2020202020202020202020204646464646463031
      4646464646463031464646464646303146464646464630314646464646463031
      4646464646463031464646464646303146464646464630310D0A202020202020
      2020202020204646464646463031464646464646303146464646464630314646
      4646464630314646464646463031464646464646303146464646464630314646
      4646464630310D0A202020202020202020202020464646464646303146464646
      4646303146464646464630314646464646463031464646464646303146464646
      46463031464646464646303146464646464630310D0A20202020202020202020
      2020464646464646303146464646464630314646464646463031464646464646
      3031464646464646303146464646464630314646464646463031464646464646
      30310D0A20202020202020202020202046464646464630314646464646463031
      4646464646463031464646464646303146464646464630314646464646463031
      464646464646303146464646464630310D0A2020202020202020202020204646
      4646464630314646464646463031464646464646303146464646464630314646
      4646464630314646464646463031464646464646303146464646464630310D0A
      2020202020202020202020204646464646463031464646464646303146464646
      4646303146464646464630314646464646463031464646464646303146464646
      4646303146464646464630310D0A202020202020202020202020464646464646
      3031464646464646303146464646464630314646464646463031464646464646
      30314646464646463031464646464646303146464646464630310D0A20202020
      2020202020202020464646464646303146464646464630314646464646463031
      4646464646463031464646464646303146464646464630314646464646463031
      46464646464630310D0A20202020202020202020202046464646464630314646
      4646464630314646464646463031464646464646303146464646464630314646
      464646463031464646464646303146464646464630310D0A2020202020202020
      2020202046464646464630314646464646463031464646464646303146464646
      4646303146464646464630314646464646463031464646464646303146464646
      464630310D0A2020202020202020202020204646464646463031464646464646
      3031464646464646303146464646464630314646464646463031464646464646
      3031464646464646303146464646464630310D0A202020202020202020202020
      4646464646463031464646464646303146464646464630314646464646463031
      4646464646463031464646464646303146464646464630314646464646463031
      0D0A202020202020202020202020464646464646303146464646464630314646
      4646464630314646464646463031464646464646303146464646464630314646
      46464646303146464646464630310D0A20202020202020202020202046464646
      4646303146464646464630314646464646463031464646464646303146464646
      464630314646464646463031464646464646303146464646464630310D0A2020
      2020202020202020202046464646464630314646464646463031464646464646
      3031464646464646303146464646464630314646464646463031464646464646
      303146464646464630310D0A2020202020202020202020204646464646463031
      4646464646463031464646464646303146464646464630314646464646463031
      4646464646463031464646464646303146464646464630310D0A202020202020
      2020202020204646464646463031464646464646303146464646464630314646
      4646464630314646464646463031464646464646303146464646464630314646
      4646464630310D0A202020202020202020202020464646464646303146464646
      4646303146464646464630314646464646463031464646464646303146464646
      46463031464646464646303146464646464630310D0A20202020202020202020
      2020464646464646303146464646464630314646464646463031464646464646
      3031464646464646303146464646464630314646464646463031464646464646
      30310D0A20202020202020202020202046464646464630314646464646463031
      4646464646463031464646464646303146464646464630314646464646463031
      464646464646303146464646464630310D0A2020202020202020202020204646
      4646464630314646464646463031464646464646303146464646464630314646
      4646464630314646464646463031464646464646303146464646464630310D0A
      2020202020202020202020204646464646463031464646464646303146464646
      4646303146464646464630314646464646463031464646464646303146464646
      4646303146464646464630310D0A202020202020202020202020464646464646
      3031464646464646303146464646464630314646464646463031464646464646
      30314646464646463031464646464646303146464646464630310D0A20202020
      2020202020202020464646464646303146464646464630314646464646463031
      4646464646463031464646464646303146464646464630314646464646463031
      46464646464630310D0A20202020202020202020202046464646464630314646
      4646464630314646464646463031464646464646303146464646464630314646
      464646463031464646464646303146464646464630310D0A2020202020202020
      2020202046464646464630314646464646463031464646464646303146464646
      4646303146464646464630314646464646463031464646464646303146464646
      464630310D0A2020202020202020202020204646464646463031464646464646
      3031464646464646303146464646464630314646464646463031464646464646
      3031464646464646303146464646464630310D0A202020202020202020202020
      4646464646463031464646464646303146464646464630314646464646463031
      4646464646463031464646464646303146464646464630314646464646463031
      0D0A202020202020202020202020464646464646303146464646464630314646
      4646464630314646464646463031464646464646303146464646464630314646
      46464646303146464646464630310D0A20202020202020202020202046464646
      4646303146464646464630314646464646463031464646464646303146464646
      464630314646464646463031464646464646303146464646464630310D0A2020
      2020202020202020202046464646464630314646464646463031464646464646
      3031464646464646303146464646464630314646464646463031464646464646
      303146464646464630310D0A2020202020202020202020204646464646463031
      4646464646463031464646464646303146464646464630314646464646463031
      4646464646463031464646464646303146464646464630310D0A202020202020
      2020202020204646464646463031303030303030303030303030303030303030
      3030303030303030303030303030303030303030303030303030303030303030
      3030303030300D0A202020202020202020202020303030303030303030303030
      3030303030303030303030303030303030303030303030303030303030303030
      30303030303030303030303030303030303030300D0A20202020202020202020
      2020303030303030303030303030303030303030303030303030303030303030
      3030303030303030303030303030303030303030303030303030303030303030
      30300D0A20202020202020202020202030303030303030303030303030303030
      3030303030303030303030303030303030303030303030303030303030303030
      303030303030303030303030303030300D0A2020202020202020202020203030
      3030303030303030303030303030303030303030303030303030303030303030
      3030303030303030303030303030303030303030303030303030303030300D0A
      2020202020202020202020203030303030303030303030303030303030303030
      3030303030303030303030303030303030303030303030303030303030303030
      3030303030303030303030300D0A202020202020202020202020303030303030
      3030303030303030303030303030303030303030303030303030303030303030
      30303030303030303030303030303030303030303030303030300D0A20202020
      2020202020202020303030303030303030303030303030303030303030303030
      3030303030303030303030303030303030303030303030303030303030303030
      30303030303030300D0A20202020202020202020202030303030303030303030
      3030303030303030303030303030303030303030303030303030303030303030
      303030303030303030303030303030303030303030300D0A2020202020202020
      2020202030303030303030303030303030303030303030303030303030303030
      3030303030303030303030303030303030303030303030303030303030303030
      303030300D0A2020202020202020202020203030303030303030303030303030
      3030303030303030303030303030303030303030303030303030303030303030
      3030303030303030303030303030303030300D0A202020202020202020202020
      3030303030303030303030303030303030303030303030303030303030303030
      3030303030303030303030303030303030303030303030303030303030303030
      0D0A202020202020202020202020303030303030303030303030303030303030
      3030303030303030303030303030303030303030303030303030303030303030
      30303030303030303030303030300D0A20202020202020202020202030303030
      3030303030303030303030303030303030303030303030303030303030303030
      303030303030303030303030303030303030303030303030303030300D0A2020
      2020202020202020202030303030303030303030303030303030303030303030
      3030303030303030303030303030303030303030303030303030303030303030
      303030303030303030300D0A2020202020202020202020203030303030303030
      3030303030303030303030303030303030303030303030303030303030303030
      3030303030303030303030303030303030303030303030300D0A202020202020
      20202020202030303030303030307D0D0A2020202020202020656E640D0A2020
      2020202020206F626A656374206C6162656C4170704E616D653A20544C616265
      6C0D0A202020202020202020204C656674203D203137320D0A20202020202020
      202020546F70203D20380D0A202020202020202020205769647468203D203131
      320D0A20202020202020202020486569676874203D2033300D0A202020202020
      2020202043617074696F6E203D2027506F705472617955270D0A202020202020
      20202020466F6E742E43686172736574203D20414E53495F434841525345540D
      0A20202020202020202020466F6E742E436F6C6F72203D20636C57696E646F77
      546578740D0A20202020202020202020466F6E742E486569676874203D202D32
      310D0A20202020202020202020466F6E742E4E616D65203D2027417269616C20
      426C61636B270D0A20202020202020202020466F6E742E5374796C65203D205B
      6673426F6C645D0D0A20202020202020202020506172656E74466F6E74203D20
      46616C73650D0A202020202020202020205472616E73706172656E74203D2046
      616C73650D0A2020202020202020656E640D0A20202020202020206F626A6563
      74206C626C486F6D65706167653A20544C6162656C0D0A202020202020202020
      20546167203D203939390D0A202020202020202020204C656674203D20313239
      0D0A20202020202020202020546F70203D2036300D0A20202020202020202020
      5769647468203D203139380D0A20202020202020202020486569676874203D20
      31330D0A20202020202020202020437572736F72203D20637248616E64506F69
      6E740D0A2020202020202020202043617074696F6E203D2027687474703A2F2F
      736F75726365666F7267652E6E65742F70726F6A656374732F706F7074726179
      752F270D0A20202020202020202020466F6E742E43686172736574203D204445
      4641554C545F434841525345540D0A20202020202020202020466F6E742E436F
      6C6F72203D20636C426C75650D0A20202020202020202020466F6E742E486569
      676874203D202D31310D0A20202020202020202020466F6E742E4E616D65203D
      20274D532053616E73205365726966270D0A20202020202020202020466F6E74
      2E5374796C65203D205B5D0D0A20202020202020202020506172656E74466F6E
      74203D2046616C73650D0A202020202020202020204F6E436C69636B203D206C
      626C486F6D6570616765436C69636B0D0A202020202020202020204F6E4D6F75
      7365456E746572203D206C626C486F6D65706167654D6F757365456E7465720D
      0A202020202020202020204F6E4D6F7573654C65617665203D206C626C486F6D
      65706167654D6F7573654C656176650D0A2020202020202020656E640D0A2020
      2020202020206F626A656374206C626C446572697661746976653A20544C6162
      656C0D0A202020202020202020204C656674203D203336330D0A202020202020
      20202020546F70203D20330D0A202020202020202020205769647468203D2031
      33310D0A20202020202020202020486569676874203D203133300D0A20202020
      202020202020416E63686F7273203D205B616B546F702C20616B52696768745D
      0D0A2020202020202020202043617074696F6E203D200D0A2020202020202020
      2020202027506F7074726179552069732061206465726976617469766520776F
      726B206F662052656E6965722043726175736527233339277320506F70547261
      7920332E3220616E6427202B0D0A20202020202020202020202027206D756368
      206F662074686520636F646520696E2074686973206170706C69636174696F6E
      206973207468757320436F7079726967687420323030312D32303027202B0D0A
      20202020202020202020202027352052656E696572204372617573652E204D61
      6E79207468616E6B7320746F2052656E69657220666F7220646576656C6F7069
      6E6720506F70547261792C206127202B0D0A202020202020202020202020276E
      6420666F722074686520737570706F7274206865206861732070726F76696465
      642E270D0A20202020202020202020436F6C6F72203D20636C42746E46616365
      0D0A20202020202020202020506172656E74436F6C6F72203D2046616C73650D
      0A202020202020202020204C61796F7574203D20746C426F74746F6D0D0A2020
      2020202020202020576F726457726170203D20547275650D0A20202020202020
      20656E640D0A20202020202020206F626A656374206C626C5472616E736C6174
      6543617074696F6E3A20544C6162656C0D0A202020202020202020204C656674
      203D20300D0A20202020202020202020546F70203D203234370D0A2020202020
      20202020205769647468203D203332380D0A2020202020202020202048656967
      6874203D2031330D0A2020202020202020202043617074696F6E203D200D0A20
      2020202020202020202020275468616E6B7320746F2074686520666F6C6C6F77
      696E6720766F6C756E74656572732077686F2068656C706564207472616E736C
      617465207468697320736F6627202B0D0A202020202020202020202020277477
      6172653A270D0A2020202020202020656E640D0A20202020202020206F626A65
      6374204C6162656C31323A20544C6162656C0D0A202020202020202020204C65
      6674203D20300D0A20202020202020202020546F70203D203131320D0A202020
      202020202020205769647468203D2033350D0A20202020202020202020486569
      676874203D2031330D0A2020202020202020202043617074696F6E203D202743
      7265646974733A270D0A2020202020202020656E640D0A20202020202020206F
      626A6563742070616E41626F7574426F74746F6D3A205450616E656C0D0A2020
      20202020202020204C656674203D20300D0A20202020202020202020546F7020
      3D203333360D0A202020202020202020205769647468203D203530360D0A2020
      2020202020202020486569676874203D2033320D0A2020202020202020202041
      6C69676E203D20616C426F74746F6D0D0A20202020202020202020426576656C
      4F75746572203D2062764E6F6E650D0A202020202020202020205461624F7264
      6572203D20300D0A2020202020202020202044657369676E53697A65203D2028
      0D0A2020202020202020202020203530360D0A20202020202020202020202033
      32290D0A202020202020202020206F626A6563742062746E48656C703A205442
      697442746E0D0A2020202020202020202020204C656674203D20380D0A202020
      202020202020202020546F70203D20330D0A2020202020202020202020205769
      647468203D2036350D0A202020202020202020202020486569676874203D2032
      350D0A202020202020202020202020416E63686F7273203D205B616B4C656674
      2C20616B546F702C20616B426F74746F6D5D0D0A202020202020202020202020
      43617074696F6E203D20272648656C70270D0A20202020202020202020202054
      61624F72646572203D20300D0A2020202020202020202020204F6E436C69636B
      203D2062746E48656C70436C69636B0D0A202020202020202020202020476C79
      70682E44617461203D207B0D0A20202020202020202020202020203336303330
      3030303432344433363033303030303030303030303030333630303030303032
      3830303030303031303030303030303130303030303030303130300D0A202020
      2020202020202020202020313830303030303030303030303030333030303031
      3330423030303031333042303030303030303030303030303030303030303046
      46464646463943363936330D0A20202020202020202020202020203943363936
      3339433639363339433639363339433639363339433639363339433639363339
      4336393633394336393633394336393633394336393633394336390D0A202020
      2020202020202020202020363339433639363346464646464646464646464646
      4646464646413537353733463745334436464645374436464645374345464645
      33433646464130464646460D0A20202020202020202020202020203835464646
      4644424235464644374144464644374144464644334135464644334135414437
      3936424646464646464646464646464646464646464135373537330D0A202020
      2020202020202020202020463745374436464645424436464645374436464641
      3846463742303037423837303738374646383546464646444242354646443741
      44464644374144464644330D0A20202020202020202020202020204135414437
      3936424646464646464646464646464646464646464135373537334637454244
      4546464546444546464542443646463941464639303130393039300D0A202020
      2020202020202020202020313039304630373046304646444642444646444242
      3546464437414446464437414441443739364246464646464646464646464646
      46464646464135373537330D0A20202020202020202020202020204637454645
      3746464633453746464546444546464542443646463835464646463835464646
      4645334336464645334336464644464244464644424235464644370D0A202020
      2020202020202020202020414441443739364246464646464646464646464646
      4646464646413537353733463745464546464646334537464646334537464645
      46444538373037383738370D0A20202020202020202020202020203037383746
      4645374345464645334336464645334336464644464244464644424235414437
      3936424646464646464646464646464646464646464135373537330D0A202020
      2020202020202020202020463746334546464646374546464646334537464646
      3345373841304138413933313339334646383346464646453743454646453343
      36464645334336464644460D0A20202020202020202020202020204244414437
      3936424646464646464646464646464646464646464144374437334646463746
      3746464642463746464637454646464633453741413241414139450D0A202020
      2020202020202020202020314539453839303938394646394146464646453743
      4546464533433646464533433641443739364246464646464646464646464646
      46464646464144383237420D0A20202020202020202020202020204646464246
      3746464642463746464642463746464637454646464335464638393039383941
      3132314131393631363936464645374436464645374345464645330D0A202020
      2020202020202020202020433641443739364246464646464646464646464646
      4646464646423538413742464646424646464646464646464646424637464646
      42463746374446434546460D0A20202020202020202020202020204145464638
      4430443844393031303930464639454646464645374436464645374345414437
      3936424646464646464646464646464646464646464244393237420D0A202020
      2020202020202020202020464646464646464646464646464646464646433534
      3543353833303338334143324341433930313039303834303438344646453343
      45464644464436464643460D0A20202020202020202020202020204336414437
      3936424646464646464646464646464646464646464345394138344646464646
      4646464646464646464435464638383038383838463046384638460D0A202020
      2020202020202020202020304638463842304238424345344543454646453744
      3646374241423546374132394341443739364246464646464646464646464646
      46464646464436413238340D0A20202020202020202020202020204646464646
      4646464646464646464646464646464542464645353635453545303630453046
      3937394639464646374546423537443733423537443733423537440D0A202020
      2020202020202020202020373342353744373346464646464646464646464646
      4646464646444541413843464646464646464646464646464646464646464646
      46464646464646464646460D0A20202020202020202020202020204646464646
      4646424637464646424637423537443733464644333934444541323742434539
      4138344646464646464646464646464646464646464445414538430D0A202020
      2020202020202020202020464646464646464646464646464646424646464646
      4246464637463746374637463346374637463345464546454645464235374437
      33453742363934443641320D0A20202020202020202020202020203834464646
      4646464646464646464646464646464646464646464537423238434445414138
      3444454141383444454141383444454141383444454141383444450D0A202020
      2020202020202020202020414138344445414138344445414138344235374437
      334445414138344646464646464646464646464646464646464646464646467D
      0D0A20202020202020202020656E640D0A202020202020202020206F626A6563
      742062746E436865636B5570646174653A2054427574746F6E0D0A2020202020
      202020202020204C656674203D2037390D0A202020202020202020202020546F
      70203D20330D0A2020202020202020202020205769647468203D203235380D0A
      202020202020202020202020486569676874203D2032350D0A20202020202020
      2020202020416E63686F7273203D205B616B4C6566742C20616B546F702C2061
      6B52696768742C20616B426F74746F6D5D0D0A20202020202020202020202043
      617074696F6E203D2027436865636B206F6E6C696E6520666F72206E65776572
      2076657273696F6E270D0A2020202020202020202020205461624F7264657220
      3D20310D0A2020202020202020202020204F6E436C69636B203D2062746E4368
      65636B557064617465436C69636B0D0A20202020202020202020656E640D0A20
      20202020202020656E640D0A20202020202020206F626A656374206C76437265
      646974733A20544C697374566965770D0A202020202020202020204C65667420
      3D20300D0A20202020202020202020546F70203D203132380D0A202020202020
      202020205769647468203D203335360D0A202020202020202020204865696768
      74203D203131360D0A20202020202020202020416E63686F7273203D205B616B
      4C6566742C20616B546F702C20616B52696768745D0D0A202020202020202020
      20436F6C756D6E73203D203C0D0A2020202020202020202020206974656D0D0A
      202020202020202020202020202043617074696F6E203D2027436F6D706F6E65
      6E74270D0A20202020202020202020202020205769647468203D203134300D0A
      202020202020202020202020656E640D0A202020202020202020202020697465
      6D0D0A202020202020202020202020202043617074696F6E203D202756657273
      696F6E270D0A202020202020202020202020656E640D0A202020202020202020
      2020206974656D0D0A202020202020202020202020202043617074696F6E203D
      2027417574686F72270D0A20202020202020202020202020205769647468203D
      203135300D0A202020202020202020202020656E643E0D0A2020202020202020
      20204869646553656C656374696F6E203D2046616C73650D0A20202020202020
      2020204974656D732E44617461203D207B0D0A20202020202020202020202043
      4430313030303030373030303030303030303030303030464646464646464646
      464646464646463032303030303030303030303030303030373530364637300D
      0A20202020202020202020202035343732363137393033333332453332304435
      3236353645363936353732323034333732363137353733363530303030303030
      304646464646464646464646460D0A2020202020202020202020204646464630
      3230303030303030303030303030303130353435323635363734353738373037
      3232303443363936323732363137323739303533303245333933350D0A202020
      2020202020202020203332313134313645363437323635373932303536324532
      3035333646373236463642363936453030303030303030464646464646464646
      4646464646464630320D0A202020202020202020202020303030303030303030
      3030303030304334333646364636433534373236313739343936333646364530
      33333132453330304635343732364636353643373332300D0A20202020202020
      2020202020344136313642364636323733363536453030303030303030464646
      4646464646464646464646464630323030303030303030303030303030314235
      34364537340D0A20202020202020202020202032303434363536433730363836
      3932303535364536393633364636343635323034333646364537343732364636
      433733303533323245333332453330304435340D0A2020202020202020202020
      2037323646373932303537364636433632373236393645364230303030303030
      3046464646464646464646464646464646303230303030303030303030303030
      300D0A2020202020202020202020203130353434313633373436393646364535
      3036463730373537303444363536453735304233313338323034443631373932
      3033323330333033373046353337340D0A202020202020202020202020363537
      3636353230353437323635363636353734363836353645303030303030303046
      46464646464646464646464646464630323030303030303030303030300D0A20
      2020202020202020202020303030343439364536343739303633393245333032
      4533313338324234333638363136343230354132453230343836463737363537
      32323032383442373536340D0A20202020202020202020202037413735323932
      3036313645363432303734363836353230343936453634373932303530363937
      343230343337323635373730303030303030304646464646460D0A2020202020
      2020202020202046464646464646464646303230303030303030303030303030
      3030453438373536443631364532303646333232303439363336463645373330
      353331324533310D0A2020202020202020202020203245333530453446364336
      3937363635373232303533363336383646364337343741464646464646464646
      4646464646464646464646464646464646464646460D0A202020202020202020
      20202046464646464646464646464646464646464646464646464646467D0D0A
      20202020202020202020526561644F6E6C79203D20547275650D0A2020202020
      2020202020526F7753656C656374203D20547275650D0A202020202020202020
      20506172656E74436F6C6F72203D20547275650D0A2020202020202020202054
      61624F72646572203D20310D0A2020202020202020202054616253746F70203D
      2046616C73650D0A20202020202020202020566965775374796C65203D207673
      5265706F72740D0A202020202020202020204F6E4368616E6765203D206C7656
      6F6C756E7465657273324368616E67650D0A202020202020202020204F6E5265
      73697A65203D206C76566F6C756E746565727332526573697A650D0A20202020
      20202020656E640D0A20202020202020206F626A656374206C76566F6C756E74
      656572733A20544C697374566965770D0A202020202020202020204C65667420
      3D20300D0A20202020202020202020546F70203D203236340D0A202020202020
      202020205769647468203D203530300D0A202020202020202020204865696768
      74203D2036380D0A20202020202020202020416E63686F7273203D205B616B4C
      6566742C20616B546F702C20616B52696768742C20616B426F74746F6D5D0D0A
      20202020202020202020436F6C756D6E73203D203C0D0A202020202020202020
      2020206974656D0D0A202020202020202020202020202043617074696F6E203D
      20274C616E6775616765270D0A20202020202020202020202020205769647468
      203D203134300D0A202020202020202020202020656E640D0A20202020202020
      20202020206974656D0D0A202020202020202020202020202043617074696F6E
      203D20275472616E736C61746F72270D0A202020202020202020202020202057
      69647468203D203139350D0A202020202020202020202020656E643E0D0A2020
      20202020202020204869646553656C656374696F6E203D2046616C73650D0A20
      2020202020202020204974656D732E44617461203D207B0D0A20202020202020
      2020202020463030363030303032333030303030303030303030303030464646
      4646464646464646464646464630313030303030303030303030303030303934
      31363637320D0A20202020202020202020202036393642363136313645373330
      4435323635364536393635373232303433373236313735373336353030303030
      303030464646464646464646464646464646460D0A2020202020202020202020
      2030313030303030303030303030303030303634313732363136323639363330
      4434313638364436313634323034443646373337343631363636313030303030
      300D0A2020202020202020202020203030464646464646464646464646464646
      4630313030303030303030303030303030303934323735364336373631373236
      3936313645313034453639364236460D0A202020202020202020202020364336
      3136393230353437333736363537343642364637363030303030303030464646
      46464646464646464646464646303130303030303030303030303030300D0A20
      2020202020202020202020303734333631373436313643363136453045353836
      3137363639363537323230353345313645363336383635374130303030303030
      30464646464646464646460D0A20202020202020202020202046464646464630
      3130303030303030303030303030303037343336383639364536353733363530
      413539363136453441373536453245344336393735303030300D0A2020202020
      2020202020202030303030464646464646464646464646464646463031303030
      3030303030303030303030303834333732364636313734363936313645313534
      463741373236350D0A2020202020202020202020203645323034453635364536
      4632303530363137363643363936453646373636393633303030303030303046
      4646464646464646464646464646463031303030300D0A202020202020202020
      2020203030303030303030303030353433374136353633363830433432364637
      3236393733323034363646373236443631364530303030303030304646464646
      4646460D0A202020202020202020202020464646464646464630313030303030
      3030303030303030303036343436313645363937333638304334423631363137
      32363532303441363536453733363536450D0A20202020202020202020202030
      3030303030303046464646464646464646464646464646303130303030303030
      303030303030303035343437353734363336383130353137353646373336350D
      0A20202020202020202020202036373646324332303530363137343732363936
      3336423030303030303030464646464646464646464646464646463031303030
      303030303030303030303030380D0A2020202020202020202020203435373337
      3436463645363936313645304535343646364636443631373332303534364636
      4436323635373236373030303030303030464646464646464646460D0A202020
      2020202020202020204646464646463031303030303030303030303030303030
      3734363639364536453639373336383039344136313645363932303532453437
      3437393030303030300D0A202020202020202020202020303046464646464646
      4646464646464646463031303030303030303030303030303030363436373236
      35364536333638303734313645373436463639364536350D0A20202020202020
      2020202020303030303030303046464646464646464646464646464646303130
      3030303030303030303030303030463436373236353645363336383230323834
      33363136450D0A20202020202020202020202036313634363132393043343237
      3237353645364632303437363937323646373537383030303030303030464646
      464646464646464646464646463031303030300D0A2020202020202020202020
      2030303030303030303030303834373631364336393633363936313645314234
      4136463733453932303431364537343646364536393646323034333639363437
      320D0A2020202020202020202020203635323034323631373236343635364345
      3137333030303030303030464646464646464646464646464646463031303030
      3030303030303030303030303634370D0A202020202020202020202020363537
      3236443631364532323444363936333638363136353643323034323631363137
      33324332303441364636333638363536453230353736313633364236350D0A20
      2020202020202020202020373237333638363137353733363537323030303030
      3030304646464646464646464646464646464630313030303030303030303030
      30303030363438363536320D0A20202020202020202020202037323635373730
      4134313644363937323230343136453631373637393030303030303030464646
      464646464646464646464646463031303030303030303030300D0A2020202020
      2020202020202030303030303934383735364536373631373236393631364531
      3434413646374137333635363632303534363136443631373332303438363537
      323633374136350D0A2020202020202020202020203637303030303030303046
      4646464646464646464646464646463031303030303030303030303030303030
      3734393734363136433639363136453131343136430D0A202020202020202020
      2020203639363536453230373037323646363437353633373436393646364537
      3330303030303030304646464646464646464646464646464630313030303030
      3030300D0A202020202020202020202020303030303030304134433639373436
      3837353631364536393631364531323442363537333734373537343639373332
      30343336353734373636353732363736310D0A20202020202020202020202037
      3330303030303030304646464646464646464646464646464630313030303030
      303030303030303030303934453646373237373635363736393631364530440D
      0A20202020202020202020202035343638364636443631373332303444363536
      4336323739363530303030303030304646464646464646464646464646464630
      313030303030303030303030300D0A2020202020202020202020203030303635
      3036463643363937333638314234413631363336353642323034443639363336
      3836353643324332303441363136423735363232303437463337320D0A202020
      2020202020202020203635363336423639303030303030303046464646464646
      4646464646464646463031303030303030303030303030303030413530364637
      3237343735363737350D0A202020202020202020202020363537333635313534
      3136453734463336453639364632303431373536373735373337343646323034
      43364637303635373330303030303030304646464646460D0A20202020202020
      2020202020464646464646464646463031303030303030303030303030303031
      3335303646373237343735363737353635373336353230323834323732363137
      41363936430D0A20202020202020202020202032393233343436353645363937
      3332433230343136433635373832303444363536453634363537333243323035
      323646363437323639363736463230353236350D0A2020202020202020202020
      2037413635364536343635303030303030303046464646464646464646464646
      4646463031303030303030303030303030303030383532364636443631364536
      390D0A2020202020202020202020203631364530423530373536393735323035
      3436313645363137333635303030303030303046464646464646464646464646
      4646463031303030303030303030300D0A202020202020202020202020303030
      3030373532373537333733363936313645323135303631373636353643323034
      31324532303432363137353643363936453243323034313643363537380D0A20
      2020202020202020202020363537393230343836463644373537343733364236
      3937393030303030303030464646464646464646464646464646463031303030
      30303030303030303030300D0A20202020202020202020202030373533363537
      3236323639363136453134343136433635364237333631364536343631373232
      303442364637363631363336353736363936333030303030300D0A2020202020
      2020202020202030304646464646464646464646464646464630313030303030
      3030303030303030303036353336433646373636313642313934323646373236
      393733323034360D0A2020202020202020202020203646373236443631364532
      4332303442363137323646364332303434364637363631364330303030303030
      3046464646464646464646464646464646303130300D0A202020202020202020
      2020203030303030303030303030303037353336433646373636353645363530
      3635333638363936453633363130303030303030304646464646464646464646
      4646460D0A202020202020202020202020464630313030303030303030303030
      3030303037353337303631364536393733363832303446373236433631364536
      34364632303536363136433639363536450D0A20202020202020202020202037
      3436353243323034443631364537353635364332303530363537323639363136
      373646303030303030303046464646464646464646464646464646303130300D
      0A20202020202020202020202030303030303030303030303030463533373036
      3136453639373336383230323834333638363936433635323930443536363936
      333734364637323230353036310D0A2020202020202020202020203732363136
      3436313030303030303030464646464646464646464646464646463031303030
      3030303030303030303030314135333730363136453639373336380D0A202020
      2020202020202020203230323834383639373337303631364536393633323034
      3136443635373236393633363132393135343136433635364136313645363437
      3236463230344437350D0A202020202020202020202020463136463741323035
      3537323639363236353030303030303030464646464646464646464646464646
      46303130303030303030303030303030303037353337370D0A20202020202020
      2020202020363536343639373336383144344436313734373332303445373936
      4436313645324332303433363837323639373337343639363136453230343836
      35363436320D0A20202020202020202020202036353732363730303030303030
      3046464646464646464646464646464646303130303030303030303030303030
      303036353436313639373736313645303834420D0A2020202020202020202020
      2036463642364633353331333633383030303030303030464646464646464646
      4646464646464630313030303030303030303030303030303735343735373236
      420D0A2020202020202020202020203639373336383138344436353734363936
      4532303446374136443635364536353732324332303435373637323635364532
      3034353436343530303030303030300D0A202020202020202020202020464646
      4646464646464646464646464630313030303030303030303030303030303835
      35364237323631364536393631364531303431364336353738363537390D0A20
      2020202020202020202020323034383646364437353734373336423639373946
      4646464646464646464646464646464646464646464646464646464646464646
      46464646464646464646460D0A20202020202020202020202046464646464646
      4646464646464646464646464646464646464646464646464646464646464646
      464646464646464646464646464646464646464646464646460D0A2020202020
      2020202020202046464646464646464646464646464646464646464646464646
      464646464646467D0D0A20202020202020202020526561644F6E6C79203D2054
      7275650D0A20202020202020202020526F7753656C656374203D20547275650D
      0A20202020202020202020506172656E74436F6C6F72203D20547275650D0A20
      2020202020202020205461624F72646572203D20320D0A202020202020202020
      2054616253746F70203D2046616C73650D0A2020202020202020202056696577
      5374796C65203D2076735265706F72740D0A202020202020202020204F6E4368
      616E6765203D206C76566F6C756E7465657273324368616E67650D0A20202020
      20202020656E640D0A202020202020656E640D0A20202020656E640D0A202065
      6E640D0A20206F626A65637420416E746946727A653A20544964416E74694672
      65657A650D0A202020204F6E6C795768656E49646C65203D2046616C73650D0A
      202020204C656674203D203434320D0A20202020546F70203D203239370D0A20
      20656E640D0A20206F626A656374205472617949636F6E3A2054436F6F6C5472
      617949636F6E0D0A2020202049636F6E4C697374203D20646D2E696D6C547261
      790D0A202020204379636C65496E74657276616C203D20313530300D0A202020
      2049636F6E2E44617461203D207B0D0A20202020202030303030303130303031
      3030313031303034303030303030303030303238303130303030313630303030
      303032383030303030303130303030303030323030300D0A2020202020203030
      3030303130303034303030303030303030303830303030303030303030303030
      3030303030303030303030303030303030303030303030303030303030300D0A
      2020202020203030303030303030383030303030383030303030303038303830
      3030383030303030303038303030383030303830383030303030383038303830
      3030433043300D0A202020202020433030303030303046463030303046463030
      3030303046464646303046463030303030304646303046463030464646463030
      30304646464646463030303030300D0A20202020202030303030303030303030
      3030303030303030303030303030303030303738464646463838383838383838
      303037374646464646383838383838373030374637460D0A2020202020204646
      4646383838383738303037464637464646464638383738383030374646463746
      4637464637383838303037464646463737463737383838383030374646370D0A
      2020202020203746464646383737383830303738374646464646464646463738
      3030303737373737373737373737373730303030303030303030303030303030
      3030303030300D0A202020202020303030303030303030303030303030303030
      3030303030303030303030303030303030303030303030303030303030303030
      30303030303030303030464646460D0A20202020202030303030383030333030
      3030303030313030303030303031303030303030303130303030303030313030
      303030303031303030303030303130303030303030310D0A2020202020203030
      3030303030313030303038303033303030304646464630303030464646463030
      30304646464630303030464646463030303046464646303030307D0D0A202020
      2049636F6E56697369626C65203D20547275650D0A2020202049636F6E496E64
      6578203D20300D0A202020204F6E436C69636B203D205472617949636F6E436C
      69636B0D0A202020204F6E44626C436C69636B203D205472617949636F6E4462
      6C436C69636B0D0A202020204F6E4D6F7573655570203D205472617949636F6E
      4D6F75736555700D0A202020204C656674203D203437320D0A20202020546F70
      203D203239320D0A2020656E640D0A20206F626A65637420416374696F6E4D61
      6E616765723A2054416374696F6E4D616E616765720D0A20202020416374696F
      6E42617273203D203C0D0A2020202020206974656D0D0A202020202020202049
      74656D73203D203C0D0A202020202020202020206974656D0D0A202020202020
      202020202020416374696F6E203D206163744164644163636F756E740D0A2020
      2020202020202020202043617074696F6E203D202726416464204163636F756E
      74270D0A202020202020202020202020496D616765496E646578203D20350D0A
      20202020202020202020656E640D0A202020202020202020206974656D0D0A20
      2020202020202020202020416374696F6E203D2061637444656C657465416363
      6F756E740D0A20202020202020202020202043617074696F6E203D2027264465
      6C657465204163636F756E74270D0A202020202020202020202020496D616765
      496E646578203D20360D0A20202020202020202020656E640D0A202020202020
      202020206974656D0D0A202020202020202020202020416374696F6E203D2061
      6374546573744163636F756E740D0A2020202020202020202020204361707469
      6F6E203D20272654657374204163636F756E74270D0A20202020202020202020
      2020496D616765496E646578203D2032330D0A20202020202020202020656E64
      3E0D0A2020202020202020416374696F6E426172203D204163636F756E747354
      6F6F6C6261720D0A202020202020656E640D0A2020202020206974656D0D0A20
      202020202020204974656D73203D203C0D0A202020202020202020206974656D
      0D0A202020202020202020202020416374696F6E203D20616374507265766965
      770D0A202020202020202020202020496D616765496E646578203D20300D0A20
      202020202020202020656E640D0A202020202020202020206974656D0D0A2020
      20202020202020202020416374696F6E203D2061637444656C6574650D0A2020
      20202020202020202020496D616765496E646578203D20310D0A202020202020
      20202020656E640D0A202020202020202020206974656D0D0A20202020202020
      2020202020416374696F6E203D206163744E65774D61696C0D0A202020202020
      20202020202043617074696F6E203D2027264E6577270D0A2020202020202020
      20202020496D616765496E646578203D20320D0A202020202020202020202020
      53686F7274437574203D2031363436320D0A20202020202020202020656E640D
      0A202020202020202020206974656D0D0A202020202020202020202020416374
      696F6E203D206163745265706C790D0A202020202020202020202020496D6167
      65496E646578203D20330D0A20202020202020202020202053686F7274437574
      203D2031363436360D0A20202020202020202020656E640D0A20202020202020
      2020206974656D0D0A202020202020202020202020416374696F6E203D206163
      74486964655669657765640D0A20202020202020202020202043617074696F6E
      203D20272648696465270D0A202020202020202020202020496D616765496E64
      6578203D2031340D0A20202020202020202020656E640D0A2020202020202020
      20206974656D0D0A2020202020202020202020204974656D73203D203C0D0A20
      202020202020202020202020206974656D0D0A20202020202020202020202020
      202020416374696F6E203D2061637444656C6574655370616D0D0A2020202020
      2020202020202020202020496D616765496E646578203D2031380D0A20202020
      20202020202020202020656E640D0A2020202020202020202020202020697465
      6D0D0A2020202020202020202020202020202043617074696F6E203D20272D27
      0D0A2020202020202020202020202020656E640D0A2020202020202020202020
      2020206974656D0D0A20202020202020202020202020202020416374696F6E20
      3D206163744D61726B5370616D0D0A2020202020202020202020202020202049
      6D616765496E646578203D2032320D0A20202020202020202020202020202020
      53686F7274437574203D2031363436310D0A2020202020202020202020202020
      656E640D0A20202020202020202020202020206974656D0D0A20202020202020
      202020202020202020416374696F6E203D20616374556E6D61726B5370616D0D
      0A20202020202020202020202020202020496D616765496E646578203D203231
      0D0A2020202020202020202020202020202053686F7274437574203D20313634
      36390D0A2020202020202020202020202020656E643E0D0A2020202020202020
      20202020416374696F6E203D206163745370616D0D0A20202020202020202020
      202043617074696F6E203D2027265370616D270D0A2020202020202020202020
      20496D616765496E646578203D2031370D0A20202020202020202020656E640D
      0A202020202020202020206974656D0D0A202020202020202020202020416374
      696F6E203D20616374436865636B0D0A202020202020202020202020496D6167
      65496E646578203D20340D0A20202020202020202020202053686F7274437574
      203D203131360D0A20202020202020202020656E643E0D0A2020202020202020
      416374696F6E426172203D204D61696C546F6F6C4261720D0A20202020202065
      6E640D0A2020202020206974656D0D0A20202020202020204974656D73203D20
      3C0D0A202020202020202020206974656D0D0A20202020202020202020202041
      6374696F6E203D2061637452756C654164640D0A202020202020202020202020
      43617074696F6E203D2027264164642052756C65270D0A202020202020202020
      202020496D616765496E646578203D20370D0A20202020202020202020656E64
      0D0A202020202020202020206974656D0D0A2020202020202020202020204163
      74696F6E203D2061637452756C6544656C6574650D0A20202020202020202020
      202043617074696F6E203D20272644656C6574652052756C65270D0A20202020
      2020202020202020496D616765496E646578203D20310D0A2020202020202020
      2020656E640D0A202020202020202020206974656D0D0A202020202020202020
      202020416374696F6E203D2061637452756C6573496D706F72740D0A20202020
      2020202020202020496D616765496E646578203D2031330D0A20202020202020
      202020656E643E0D0A2020202020202020416374696F6E426172203D2052756C
      6573546F6F6C6261720D0A202020202020656E640D0A2020202020206974656D
      0D0A20202020202020204974656D73203D203C0D0A2020202020202020202069
      74656D0D0A202020202020202020202020416374696F6E203D206163744D6172
      6B5370616D0D0A202020202020202020202020496D616765496E646578203D20
      31370D0A20202020202020202020202053686F7274437574203D203136343631
      0D0A20202020202020202020656E640D0A202020202020202020206974656D0D
      0A202020202020202020202020416374696F6E203D2061637453746172745072
      6F6772616D0D0A202020202020202020202020496D616765496E646578203D20
      31320D0A20202020202020202020656E643E0D0A202020202020656E643E0D0A
      20202020496D61676573203D20646D2E696D6C416374696F6E730D0A20202020
      4C656674203D203336340D0A20202020546F70203D203239320D0A2020202053
      74796C654E616D65203D20275850205374796C65270D0A202020206F626A6563
      7420616374507265766965773A2054416374696F6E0D0A202020202020436174
      65676F7279203D20274D61696C270D0A20202020202043617074696F6E203D20
      272650726576696577270D0A202020202020456E61626C6564203D2046616C73
      650D0A20202020202048696E74203D20275072657669657720746865204D6573
      73616765270D0A202020202020496D616765496E646578203D20300D0A202020
      2020204F6E45786563757465203D206163745072657669657745786563757465
      0D0A20202020656E640D0A202020206F626A6563742061637444656C6574653A
      2054416374696F6E0D0A20202020202043617465676F7279203D20274D61696C
      270D0A20202020202043617074696F6E203D20272644656C657465270D0A2020
      20202020456E61626C6564203D2046616C73650D0A20202020202048696E7420
      3D202744656C6574652063757272656E74206D657373616765270D0A20202020
      2020496D616765496E646578203D20310D0A2020202020204F6E457865637574
      65203D2061637444656C657465457865637574650D0A20202020656E640D0A20
      2020206F626A656374206163744E65774D61696C3A2054416374696F6E0D0A20
      202020202043617465676F7279203D20274D61696C270D0A2020202020204361
      7074696F6E203D20274E6577270D0A20202020202048696E74203D20274E6577
      206D657373616765207573696E672064656661756C74206D61696C20636C6965
      6E74270D0A202020202020496D616765496E646578203D20320D0A2020202020
      2053686F7274437574203D2031363436320D0A2020202020204F6E4578656375
      7465203D206163744E65774D61696C457865637574650D0A20202020656E640D
      0A202020206F626A656374206163745265706C793A2054416374696F6E0D0A20
      202020202043617465676F7279203D20274D61696C270D0A2020202020204361
      7074696F6E203D2027265265706C79270D0A202020202020456E61626C656420
      3D2046616C73650D0A20202020202048696E74203D20275265706C7920757369
      6E672064656661756C74206D61696C20636C69656E74270D0A20202020202049
      6D616765496E646578203D20330D0A20202020202053686F7274437574203D20
      31363436360D0A2020202020204F6E45786563757465203D206163745265706C
      79457865637574650D0A20202020656E640D0A202020206F626A656374206163
      74436865636B3A2054416374696F6E0D0A20202020202043617465676F727920
      3D20274D61696C270D0A20202020202043617074696F6E203D20272643686563
      6B270D0A20202020202048696E74203D2027436865636B2063757272656E7420
      6163636F756E7420666F72204E6577204D61696C270D0A202020202020496D61
      6765496E646578203D20340D0A20202020202053686F7274437574203D203131
      360D0A2020202020204F6E45786563757465203D20616374436865636B457865
      637574650D0A20202020656E640D0A202020206F626A656374206163744E6F53
      6F72743A2054416374696F6E0D0A20202020202043617465676F7279203D2027
      4D61696C270D0A20202020202043617074696F6E203D20274E6F20536F727427
      0D0A2020202020204F6E45786563757465203D206163744E6F536F7274457865
      637574650D0A20202020656E640D0A202020206F626A65637420616374416464
      4163636F756E743A2054416374696F6E0D0A20202020202043617465676F7279
      203D20274163636F756E7473270D0A20202020202043617074696F6E203D2027
      416464204163636F756E74270D0A202020202020496D616765496E646578203D
      20350D0A2020202020204F6E45786563757465203D206163744164644163636F
      756E74457865637574650D0A20202020656E640D0A202020206F626A65637420
      61637444656C6574654163636F756E743A2054416374696F6E0D0A2020202020
      2043617465676F7279203D20274163636F756E7473270D0A2020202020204361
      7074696F6E203D202744656C657465204163636F756E74270D0A202020202020
      456E61626C6564203D2046616C73650D0A202020202020496D616765496E6465
      78203D20360D0A2020202020204F6E45786563757465203D2061637444656C65
      74654163636F756E74457865637574650D0A20202020656E640D0A202020206F
      626A6563742061637452756C654164643A2054416374696F6E0D0A2020202020
      2043617465676F7279203D202752756C6573270D0A2020202020204361707469
      6F6E203D20274164642052756C65270D0A202020202020496D616765496E6465
      78203D20370D0A2020202020204F6E45786563757465203D2061637452756C65
      416464457865637574650D0A20202020656E640D0A202020206F626A65637420
      61637452756C6544656C6574653A2054416374696F6E0D0A2020202020204361
      7465676F7279203D202752756C6573270D0A20202020202043617074696F6E20
      3D202744656C6574652052756C65270D0A202020202020456E61626C6564203D
      2046616C73650D0A202020202020496D616765496E646578203D20310D0A2020
      202020204F6E45786563757465203D2061637452756C6544656C657465457865
      637574650D0A20202020656E640D0A202020206F626A6563742061637453686F
      774D657373616765733A2054416374696F6E0D0A20202020202043617465676F
      7279203D202757696E646F77270D0A20202020202043617074696F6E203D2027
      2653686F77204D65737361676573202E2E2E270D0A202020202020496D616765
      496E646578203D2032300D0A2020202020204F6E45786563757465203D206163
      7453686F774D65737361676573457865637574650D0A20202020656E640D0A20
      2020206F626A65637420616374436865636B416C6C3A2054416374696F6E0D0A
      20202020202043617465676F7279203D20274D61696C270D0A20202020202043
      617074696F6E203D2027436865636B2026416C6C270D0A202020202020496D61
      6765496E646578203D20380D0A2020202020204F6E45786563757465203D2061
      6374436865636B416C6C457865637574650D0A20202020656E640D0A20202020
      6F626A65637420616374537461727450726F6772616D3A2054416374696F6E0D
      0A20202020202043617465676F7279203D202757696E646F77270D0A20202020
      202043617074696F6E203D202752756E2026452D4D61696C20436C69656E7427
      0D0A202020202020496D616765496E646578203D2031320D0A2020202020204F
      6E45786563757465203D20616374537461727450726F6772616D457865637574
      650D0A20202020656E640D0A202020206F626A656374206163744175746F4368
      65636B3A2054416374696F6E0D0A20202020202043617465676F7279203D2027
      4D61696C270D0A2020202020204175746F436865636B203D20547275650D0A20
      202020202043617074696F6E203D2027412675746F436865636B20456E61626C
      6564270D0A202020202020436865636B6564203D20547275650D0A2020202020
      204F6E45786563757465203D206163744175746F436865636B45786563757465
      0D0A20202020656E640D0A202020206F626A656374206163744F7074696F6E73
      3A2054416374696F6E0D0A20202020202043617465676F7279203D202757696E
      646F77270D0A20202020202043617074696F6E203D20274F7074696F6E73202E
      2E2E270D0A2020202020204F6E45786563757465203D206163744F7074696F6E
      73457865637574650D0A20202020656E640D0A202020206F626A656374206163
      7452756C65733A2054416374696F6E0D0A20202020202043617465676F727920
      3D202757696E646F77270D0A20202020202043617074696F6E203D202752756C
      6573202E2E2E270D0A2020202020204F6E45786563757465203D206163745275
      6C6573457865637574650D0A20202020656E640D0A202020206F626A65637420
      61637441626F75743A2054416374696F6E0D0A20202020202043617465676F72
      79203D202757696E646F77270D0A20202020202043617074696F6E203D202741
      626F7574202E2E2E270D0A2020202020204F6E45786563757465203D20616374
      41626F7574457865637574650D0A20202020656E640D0A202020206F626A6563
      742061637448656C703A2054416374696F6E0D0A20202020202043617465676F
      7279203D202757696E646F77270D0A20202020202043617074696F6E203D2027
      48656C70270D0A202020202020496D616765496E646578203D20390D0A202020
      20202053686F7274437574203D203131320D0A2020202020204F6E4578656375
      7465203D2061637448656C70457865637574650D0A20202020656E640D0A2020
      20206F626A65637420616374517569743A2054416374696F6E0D0A2020202020
      2043617465676F7279203D202757696E646F77270D0A20202020202043617074
      696F6E203D202751756974270D0A202020202020496D616765496E646578203D
      2031300D0A2020202020204F6E45786563757465203D20616374517569744578
      65637574650D0A20202020656E640D0A202020206F626A65637420616374546F
      547261793A2054416374696F6E0D0A20202020202043617465676F7279203D20
      2757696E646F77270D0A20202020202043617074696F6E203D2027546F202654
      726179270D0A202020202020496D616765496E646578203D2031310D0A202020
      2020204F6E45786563757465203D20616374546F54726179457865637574650D
      0A20202020656E640D0A202020206F626A65637420616374437573746F6D697A
      653A2054416374696F6E0D0A20202020202043617465676F7279203D2027546F
      6F6C73270D0A20202020202043617074696F6E203D202726437573746F6D697A
      652E2E2E270D0A2020202020204F6E45786563757465203D2061637443757374
      6F6D697A65457865637574650D0A20202020656E640D0A202020206F626A6563
      742061637452756C6573496D706F72743A2054416374696F6E0D0A2020202020
      2043617465676F7279203D202752756C6573270D0A2020202020204361707469
      6F6E203D202726496D706F72742052756C6573270D0A202020202020496D6167
      65496E646578203D2031330D0A2020202020204F6E45786563757465203D2061
      637452756C6573496D706F7274457865637574650D0A20202020656E640D0A20
      2020206F626A65637420616374486964655669657765643A2054416374696F6E
      0D0A20202020202043617465676F7279203D20274D61696C270D0A2020202020
      204175746F436865636B203D20547275650D0A20202020202043617074696F6E
      203D202748696465270D0A20202020202048696E74203D202753686F772F4869
      646520566965776564204D65737361676573270D0A202020202020496D616765
      496E646578203D2031340D0A2020202020204F6E45786563757465203D206163
      7448696465566965776564457865637574650D0A20202020656E640D0A202020
      206F626A6563742061637441646457686974654C6973743A2054416374696F6E
      0D0A20202020202043617465676F7279203D202752756C6573270D0A20202020
      202043617074696F6E203D20274164642073656E64657220746F202657686974
      65204C697374270D0A202020202020456E61626C6564203D2046616C73650D0A
      202020202020496D616765496E646578203D2031360D0A2020202020204F6E45
      786563757465203D2061637441646457686974654C697374457865637574650D
      0A20202020656E640D0A202020206F626A65637420616374416464426C61636B
      4C6973743A2054416374696F6E0D0A20202020202043617465676F7279203D20
      2752756C6573270D0A20202020202043617074696F6E203D2027416464207365
      6E64657220746F2026426C61636B204C697374270D0A202020202020456E6162
      6C6564203D2046616C73650D0A202020202020496D616765496E646578203D20
      31350D0A2020202020204F6E45786563757465203D20616374416464426C6163
      6B4C697374457865637574650D0A20202020656E640D0A202020206F626A6563
      742061637452756C6546726F6D44656C6574653A2054416374696F6E0D0A2020
      2020202043617465676F7279203D202752756C6573270D0A2020202020204361
      7074696F6E203D20274164642052756C6520746F2044656C657465206D61696C
      2066726F6D2053656E646572270D0A202020202020456E61626C6564203D2046
      616C73650D0A202020202020496D616765496E646578203D20370D0A20202020
      20204F6E45786563757465203D2061637452756C65517569636B416464457865
      637574650D0A20202020656E640D0A202020206F626A6563742061637452756C
      6546726F6D5370616D3A2054416374696F6E0D0A20202020202043617465676F
      7279203D202752756C6573270D0A20202020202043617074696F6E203D202741
      64642052756C6520746F206D61726B206D657373616765732066726F6D205365
      6E646572206173205370616D270D0A202020202020456E61626C6564203D2046
      616C73650D0A202020202020496D616765496E646578203D20370D0A20202020
      20204F6E45786563757465203D2061637452756C65517569636B416464457865
      637574650D0A20202020656E640D0A202020206F626A6563742061637452756C
      655375626A65637444656C6574653A2054416374696F6E0D0A20202020202043
      617465676F7279203D202752756C6573270D0A20202020202043617074696F6E
      203D20274164642052756C6520746F2044656C657465206D61696C2077697468
      205375626A656374270D0A202020202020456E61626C6564203D2046616C7365
      0D0A202020202020496D616765496E646578203D20370D0A2020202020204F6E
      45786563757465203D2061637452756C65517569636B41646445786563757465
      0D0A20202020656E640D0A202020206F626A6563742061637452756C65537562
      6A6563745370616D3A2054416374696F6E0D0A20202020202043617465676F72
      79203D202752756C6573270D0A20202020202043617074696F6E203D20274164
      642052756C6520746F206D61726B206D65737361676573207769746820537562
      6A656374206173205370616D270D0A202020202020456E61626C6564203D2046
      616C73650D0A202020202020496D616765496E646578203D20370D0A20202020
      20204F6E45786563757465203D2061637452756C65517569636B416464457865
      637574650D0A20202020656E640D0A202020206F626A656374206163744D6172
      6B5669657765643A2054416374696F6E0D0A20202020202043617465676F7279
      203D20274D61696C270D0A20202020202043617074696F6E203D20274D61726B
      2061732026566965776564270D0A202020202020496D616765496E646578203D
      2031390D0A2020202020204F6E45786563757465203D206163744D61726B5669
      65776564457865637574650D0A20202020656E640D0A202020206F626A656374
      206163744D61726B5370616D3A2054416374696F6E0D0A202020202020436174
      65676F7279203D20275370616D270D0A20202020202043617074696F6E203D20
      27264D61726B206173205370616D270D0A202020202020456E61626C6564203D
      2046616C73650D0A20202020202048696E74203D20274D61726B207468652073
      656C6563746564206D65737361676573206173205370616D2E270D0A20202020
      2020496D616765496E646578203D2032320D0A20202020202053686F72744375
      74203D2031363436310D0A2020202020204F6E45786563757465203D20616374
      4D61726B5370616D457865637574650D0A20202020656E640D0A202020206F62
      6A6563742061637444656C6574655370616D3A2054416374696F6E0D0A202020
      20202043617465676F7279203D20275370616D270D0A20202020202043617074
      696F6E203D202744656C20265370616D270D0A202020202020456E61626C6564
      203D2046616C73650D0A20202020202048696E74203D202744656C657465206D
      65737361676573206D61726B6564206173205370616D270D0A20202020202049
      6D616765496E646578203D2031380D0A2020202020204F6E4578656375746520
      3D2061637444656C6574655370616D457865637574650D0A20202020656E640D
      0A202020206F626A65637420616374556E6D61726B5370616D3A205441637469
      6F6E0D0A20202020202043617465676F7279203D20275370616D270D0A202020
      20202043617074696F6E203D202726556E6D61726B206173205370616D270D0A
      202020202020456E61626C6564203D2046616C73650D0A202020202020496D61
      6765496E646578203D2032310D0A20202020202053686F7274437574203D2031
      363436390D0A2020202020204F6E45786563757465203D20616374556E6D6172
      6B5370616D457865637574650D0A20202020656E640D0A202020206F626A6563
      742061637453656C6563745370616D3A2054416374696F6E0D0A202020202020
      43617465676F7279203D20275370616D270D0A20202020202043617074696F6E
      203D202753656C656374205370616D20264D65737361676573270D0A20202020
      2020456E61626C6564203D2046616C73650D0A2020202020204F6E4578656375
      7465203D2061637453656C6563745370616D457865637574650D0A2020202065
      6E640D0A202020206F626A6563742061637453757370656E64536F756E643A20
      54416374696F6E0D0A20202020202043617465676F7279203D2027546F6F6C73
      270D0A2020202020204175746F436865636B203D20547275650D0A2020202020
      2043617074696F6E203D20272653757370656E6420536F756E64270D0A202020
      2020204F6E45786563757465203D2061637453757370656E64536F756E644578
      65637574650D0A20202020656E640D0A202020206F626A656374206163745370
      616D3A2054416374696F6E0D0A20202020202043617465676F7279203D202753
      70616D270D0A20202020202043617074696F6E203D20275370616D270D0A2020
      20202020456E61626C6564203D2046616C73650D0A20202020202048696E7420
      3D20275370616D204D616E6167656D656E74270D0A202020202020496D616765
      496E646578203D2031370D0A2020202020204F6E45786563757465203D206163
      745370616D457865637574650D0A20202020656E640D0A202020206F626A6563
      7420616374546573744163636F756E743A2054416374696F6E0D0A2020202020
      2043617465676F7279203D20274163636F756E7473270D0A2020202020204361
      7074696F6E203D202754657374204163636F756E74270D0A202020202020456E
      61626C6564203D2046616C73650D0A202020202020496D616765496E64657820
      3D2032330D0A2020202020204F6E45786563757465203D206163745465737441
      63636F756E74457865637574650D0A20202020656E640D0A202020206F626A65
      63742061637453746F70436865636B696E673A2054416374696F6E0D0A202020
      20202043617465676F7279203D20274D61696C270D0A20202020202043617074
      696F6E203D20272653746F7020436865636B696E67270D0A202020202020456E
      61626C6564203D2046616C73650D0A202020202020496D616765496E64657820
      3D2032340D0A2020202020204F6E45786563757465203D2061637453746F7043
      6865636B696E67457865637574650D0A20202020656E640D0A202020206F626A
      65637420616374556E64656C6574653A2054416374696F6E0D0A202020202020
      43617465676F7279203D20274D61696C270D0A20202020202043617074696F6E
      203D202726556E64656C657465270D0A202020202020456E61626C6564203D20
      46616C73650D0A2020202020204F6E45786563757465203D20616374556E6465
      6C657465457865637574650D0A20202020656E640D0A202020206F626A656374
      206163744F70656E4D6573736167653A2054416374696F6E0D0A202020202020
      43617465676F7279203D20274D61696C270D0A20202020202043617074696F6E
      203D2027264F70656E270D0A20202020202048696E74203D20274F70656E204D
      657373616765270D0A202020202020496D616765496E646578203D20300D0A20
      202020202053686F7274437574203D2031363436330D0A2020202020204F6E45
      786563757465203D206163744F70656E4D657373616765457865637574650D0A
      20202020656E640D0A2020656E640D0A20206F626A6563742049644465636F64
      657251756F7465645072696E7461626C653A205449644465636F64657251756F
      7465645072696E7461626C650D0A202020204C656674203D203431360D0A2020
      2020546F70203D203239360D0A2020656E640D0A20206F626A65637420496444
      65636F6465724D494D45313A205449644465636F6465724D494D450D0A202020
      2046696C6C43686172203D20273D270D0A202020204C656674203D203339310D
      0A20202020546F70203D203239320D0A2020656E640D0A656E640D0A}
    IconVisible = True
    IconIndex = 0
    OnClick = TrayIconClick
    OnDblClick = TrayIconDblClick
    OnMouseUp = TrayIconMouseUp
    Left = 472
    Top = 292
  end
  object ActionManager: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = actAddAccount
            Caption = '&Add Account'
            ImageIndex = 5
          end
          item
            Action = actDeleteAccount
            Caption = '&Delete Account'
            ImageIndex = 6
          end
          item
            Action = actTestAccount
            Caption = '&Test Account'
            ImageIndex = 23
          end>
        ActionBar = AccountsToolbar
      end
      item
        Items = <
          item
            Action = actPreview
            ImageIndex = 0
          end
          item
            Action = actDelete
            ImageIndex = 1
          end
          item
            Action = actNewMail
            Caption = '&New'
            ImageIndex = 2
            ShortCut = 16462
          end
          item
            Action = actReply
            ImageIndex = 3
            ShortCut = 16466
          end
          item
            Action = actHideViewed
            Caption = '&Hide'
            ImageIndex = 14
          end
          item
            Items = <
              item
                Action = actDeleteSpam
                ImageIndex = 18
              end
              item
                Caption = '-'
              end
              item
                Action = actMarkSpam
                ImageIndex = 22
                ShortCut = 16461
              end
              item
                Action = actUnmarkSpam
                ImageIndex = 21
                ShortCut = 16469
              end>
            Action = actSpam
            Caption = '&Spam'
            ImageIndex = 17
          end
          item
            Action = actCheck
            ImageIndex = 4
            ShortCut = 116
          end>
        ActionBar = MailToolBar
      end
      item
        Items = <
          item
            Action = actRuleAdd
            Caption = '&Add Rule'
            ImageIndex = 7
          end
          item
            Action = actRuleDelete
            Caption = '&Delete Rule'
            ImageIndex = 1
          end
          item
            Action = actRulesImport
            ImageIndex = 13
          end>
        ActionBar = RulesToolbar
      end
      item
        Items = <
          item
            Action = actMarkSpam
            ImageIndex = 17
            ShortCut = 16461
          end
          item
            Action = actStartProgram
            ImageIndex = 12
          end>
      end>
    Images = dm.imlActions
    Left = 364
    Top = 292
    StyleName = 'XP Style'
    object actPreview: TAction
      Category = 'Mail'
      Caption = '&Preview'
      Enabled = False
      Hint = 'Preview the Message'
      ImageIndex = 0
      OnExecute = actPreviewExecute
    end
    object actDelete: TAction
      Category = 'Mail'
      Caption = '&Delete'
      Enabled = False
      Hint = 'Delete current message'
      ImageIndex = 1
      OnExecute = actDeleteExecute
    end
    object actNewMail: TAction
      Category = 'Mail'
      Caption = 'New'
      Hint = 'New message using default mail client'
      ImageIndex = 2
      ShortCut = 16462
      OnExecute = actNewMailExecute
    end
    object actReply: TAction
      Category = 'Mail'
      Caption = '&Reply'
      Enabled = False
      Hint = 'Reply using default mail client'
      ImageIndex = 3
      ShortCut = 16466
      OnExecute = actReplyExecute
    end
    object actCheck: TAction
      Category = 'Mail'
      Caption = '&Check'
      Hint = 'Check current account for New Mail'
      ImageIndex = 4
      ShortCut = 116
      OnExecute = actCheckExecute
    end
    object actNoSort: TAction
      Category = 'Mail'
      Caption = 'No Sort'
      OnExecute = actNoSortExecute
    end
    object actAddAccount: TAction
      Category = 'Accounts'
      Caption = 'Add Account'
      ImageIndex = 5
      OnExecute = actAddAccountExecute
    end
    object actDeleteAccount: TAction
      Category = 'Accounts'
      Caption = 'Delete Account'
      Enabled = False
      ImageIndex = 6
      OnExecute = actDeleteAccountExecute
    end
    object actRuleAdd: TAction
      Category = 'Rules'
      Caption = 'Add Rule'
      ImageIndex = 7
      OnExecute = actRuleAddExecute
    end
    object actRuleDelete: TAction
      Category = 'Rules'
      Caption = 'Delete Rule'
      Enabled = False
      ImageIndex = 1
      OnExecute = actRuleDeleteExecute
    end
    object actShowMessages: TAction
      Category = 'Window'
      Caption = '&Show Messages ...'
      ImageIndex = 20
      OnExecute = actShowMessagesExecute
    end
    object actCheckAll: TAction
      Category = 'Mail'
      Caption = 'Check &All'
      ImageIndex = 8
      OnExecute = actCheckAllExecute
    end
    object actStartProgram: TAction
      Category = 'Window'
      Caption = 'Run &E-Mail Client'
      ImageIndex = 12
      OnExecute = actStartProgramExecute
    end
    object actAutoCheck: TAction
      Category = 'Mail'
      AutoCheck = True
      Caption = 'A&utoCheck Enabled'
      Checked = True
      OnExecute = actAutoCheckExecute
    end
    object actOptions: TAction
      Category = 'Window'
      Caption = 'Options ...'
      OnExecute = actOptionsExecute
    end
    object actRules: TAction
      Category = 'Window'
      Caption = 'Rules ...'
      OnExecute = actRulesExecute
    end
    object actAbout: TAction
      Category = 'Window'
      Caption = 'About ...'
      OnExecute = actAboutExecute
    end
    object actHelp: TAction
      Category = 'Window'
      Caption = 'Help'
      ImageIndex = 9
      ShortCut = 112
      OnExecute = actHelpExecute
    end
    object actQuit: TAction
      Category = 'Window'
      Caption = 'Quit'
      ImageIndex = 10
      OnExecute = actQuitExecute
    end
    object actToTray: TAction
      Category = 'Window'
      Caption = 'To &Tray'
      ImageIndex = 11
      OnExecute = actToTrayExecute
    end
    object actCustomize: TAction
      Category = 'Tools'
      Caption = '&Customize...'
      OnExecute = actCustomizeExecute
    end
    object actRulesImport: TAction
      Category = 'Rules'
      Caption = '&Import Rules'
      ImageIndex = 13
      OnExecute = actRulesImportExecute
    end
    object actHideViewed: TAction
      Category = 'Mail'
      AutoCheck = True
      Caption = 'Hide'
      Hint = 'Show/Hide Viewed Messages'
      ImageIndex = 14
      OnExecute = actHideViewedExecute
    end
    object actAddWhiteList: TAction
      Category = 'Rules'
      Caption = 'Add sender to &White List'
      Enabled = False
      ImageIndex = 16
      OnExecute = actAddWhiteListExecute
    end
    object actAddBlackList: TAction
      Category = 'Rules'
      Caption = 'Add sender to &Black List'
      Enabled = False
      ImageIndex = 15
      OnExecute = actAddBlackListExecute
    end
    object actRuleFromDelete: TAction
      Category = 'Rules'
      Caption = 'Add Rule to Delete mail from Sender'
      Enabled = False
      ImageIndex = 7
      OnExecute = actRuleQuickAddExecute
    end
    object actRuleFromSpam: TAction
      Category = 'Rules'
      Caption = 'Add Rule to mark messages from Sender as Spam'
      Enabled = False
      ImageIndex = 7
      OnExecute = actRuleQuickAddExecute
    end
    object actRuleSubjectDelete: TAction
      Category = 'Rules'
      Caption = 'Add Rule to Delete mail with Subject'
      Enabled = False
      ImageIndex = 7
      OnExecute = actRuleQuickAddExecute
    end
    object actRuleSubjectSpam: TAction
      Category = 'Rules'
      Caption = 'Add Rule to mark messages with Subject as Spam'
      Enabled = False
      ImageIndex = 7
      OnExecute = actRuleQuickAddExecute
    end
    object actMarkViewed: TAction
      Category = 'Mail'
      Caption = 'Mark as &Viewed'
      ImageIndex = 19
      OnExecute = actMarkViewedExecute
    end
    object actMarkSpam: TAction
      Category = 'Spam'
      Caption = '&Mark as Spam'
      Enabled = False
      Hint = 'Mark the selected messages as Spam.'
      ImageIndex = 22
      ShortCut = 16461
      OnExecute = actMarkSpamExecute
    end
    object actDeleteSpam: TAction
      Category = 'Spam'
      Caption = 'Del &Spam'
      Enabled = False
      Hint = 'Delete messages marked as Spam'
      ImageIndex = 18
      OnExecute = actDeleteSpamExecute
    end
    object actUnmarkSpam: TAction
      Category = 'Spam'
      Caption = '&Unmark as Spam'
      Enabled = False
      ImageIndex = 21
      ShortCut = 16469
      OnExecute = actUnmarkSpamExecute
    end
    object actSelectSpam: TAction
      Category = 'Spam'
      Caption = 'Select Spam &Messages'
      Enabled = False
      OnExecute = actSelectSpamExecute
    end
    object actSuspendSound: TAction
      Category = 'Tools'
      AutoCheck = True
      Caption = '&Suspend Sound'
      OnExecute = actSuspendSoundExecute
    end
    object actSpam: TAction
      Category = 'Spam'
      Caption = 'Spam'
      Enabled = False
      Hint = 'Spam Management'
      ImageIndex = 17
      OnExecute = actSpamExecute
    end
    object actTestAccount: TAction
      Category = 'Accounts'
      Caption = 'Test Account'
      Enabled = False
      ImageIndex = 23
      OnExecute = actTestAccountExecute
    end
    object actStopChecking: TAction
      Category = 'Mail'
      Caption = '&Stop Checking'
      Enabled = False
      ImageIndex = 24
      OnExecute = actStopCheckingExecute
    end
    object actUndelete: TAction
      Category = 'Mail'
      Caption = '&Undelete'
      Enabled = False
      OnExecute = actUndeleteExecute
    end
    object actOpenMessage: TAction
      Category = 'Mail'
      Caption = '&Open'
      Hint = 'Open Message'
      ImageIndex = 0
      ShortCut = 16463
      OnExecute = actOpenMessageExecute
    end
  end
  object IdDecoderQuotedPrintable: TIdDecoderQuotedPrintable
    Left = 416
    Top = 296
  end
  object IdDecoderMIME1: TIdDecoderMIME
    FillChar = '='
    Left = 391
    Top = 292
  end
end
