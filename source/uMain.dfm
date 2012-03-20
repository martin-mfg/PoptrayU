object frmPopUMain: TfrmPopUMain
  Left = 169
  Top = 152
  Width = 554
  Height = 407
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
    Width = 538
    Height = 371
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
        Width = 503
        Height = 330
        Align = alClient
        Images = dm.imlTabs
        TabOrder = 0
        OnChange = tabMailChange
        OnChanging = tabMailChanging
        OnDragDrop = tabDragDrop
        OnDragOver = tabMailDragOver
        OnMouseDown = DragMouseDown
        DesignSize = (
          503
          330)
        object MailToolBar: TActionToolBar
          Left = 4
          Top = 6
          Width = 495
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
          Width = 495
          Height = 272
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
          Top = 307
          Width = 495
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
          Left = 294
          Top = 309
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
        Top = 330
        Width = 511
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
        Height = 330
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
      end
      object panMailRightSpacer: TPanel
        Left = 506
        Top = 0
        Width = 5
        Height = 330
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
        Width = 511
        Height = 363
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 0
        object tabAccounts: TTabControl
          Left = 4
          Top = 35
          Width = 503
          Height = 295
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
            Width = 495
            Height = 285
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
          Top = 330
          Width = 503
          Height = 29
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          DesignSize = (
            503
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
            Left = 312
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
            Left = 434
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
          Width = 503
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
        Top = 331
        Width = 511
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
          Left = 302
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
        Width = 511
        Height = 331
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 4
        ParentBackground = False
        TabOrder = 1
        object spltOptions: TSplitter
          Left = 149
          Top = 4
          Width = 6
          Height = 323
          ResizeStyle = rsUpdate
        end
        object tvOptions: TTreeView
          Left = 4
          Top = 4
          Width = 145
          Height = 323
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
          Width = 352
          Height = 323
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object panOptSpacer: TPanel
            Left = 0
            Top = 30
            Width = 352
            Height = 4
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
          end
          object panOptionsTitle: TPanel
            Left = 0
            Top = 0
            Width = 352
            Height = 30
            Align = alTop
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Color = clWindow
            ParentBackground = False
            TabOrder = 1
            DesignSize = (
              352
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
              Width = 315
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
        Top = 331
        Width = 511
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
        Width = 511
        Height = 331
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 0
        object spltRules: TSplitter
          Left = 104
          Top = 35
          Width = 5
          Height = 292
          ResizeStyle = rsUpdate
        end
        object RulesToolbar: TActionToolBar
          Left = 4
          Top = 4
          Width = 503
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
          Width = 398
          Height = 292
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          TabOrder = 1
          object panRuleDetail: TPanel
            Left = 0
            Top = 0
            Width = 398
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
              Width = 390
              Height = 124
              Align = alTop
              Caption = 'Actions'
              TabOrder = 1
              DesignSize = (
                390
                124)
              object btnEdRuleWav: TSpeedButton
                Left = 348
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
                Left = 373
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
                Left = 371
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
                Width = 111
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
                Width = 136
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
              Width = 390
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
                Width = 386
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
          Height = 292
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          object lstRules: TCheckListBox
            Left = 0
            Top = 0
            Width = 100
            Height = 270
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
            Top = 270
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
        Width = 511
        Height = 363
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          511
          363)
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
          Left = 220
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
          Left = 202
          Top = 76
          Width = 172
          Height = 26
          Alignment = taCenter
          Caption = 'Copyright '#169'2012 - Jessica Brown'#13#10'FREEWARE and OPEN-SOURCE !!'
          Transparent = True
        end
        object Image1: TImage
          Left = 96
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
          Left = 232
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
          Left = 189
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
        object Label9: TLabel
          Left = 0
          Top = 112
          Width = 137
          Height = 117
          Caption = 
            'PoptrayU is a derivative work of Renier Crause'#39's PopTray 3.2 and' +
            ' much of the code in this application is thus Copyright 2001-200' +
            '5 Renier Crause. Many thanks to Renier for developing PopTray, a' +
            'nd for the support he has provided.'
          Color = clBtnFace
          ParentColor = False
          WordWrap = True
        end
        object Label27: TLabel
          Left = 0
          Top = 247
          Width = 368
          Height = 13
          Caption = 
            'Thanks to the following volunteers who helped with the translate' +
            ' this software:'
        end
        object Label12: TLabel
          Left = 144
          Top = 112
          Width = 35
          Height = 13
          Caption = 'Credits:'
        end
        object panAboutBottom: TPanel
          Left = 0
          Top = 331
          Width = 511
          Height = 32
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 0
          DesignSize = (
            511
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
            Width = 263
            Height = 25
            Anchors = [akLeft, akTop, akRight, akBottom]
            Caption = 'Check on-line if newer version available.'
            TabOrder = 1
            OnClick = btnCheckUpdateClick
          end
        end
        object ListView1: TListView
          Left = 144
          Top = 128
          Width = 361
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
            BD0100000700000000000000FFFFFFFFFFFFFFFF020000000000000007506F70
            5472617903332E320D52656E6965722043726175736500000000FFFFFFFFFFFF
            FFFF0200000000000000105452656745787072204C6962726172790011416E64
            72657920562E20536F726F6B696E00000000FFFFFFFFFFFFFFFF020000000000
            00000C436F6F6C5472617949636F6E03312E300F54726F656C73204A616B6F62
            73656E00000000FFFFFFFFFFFFFFFF02000000000000001B546E742044656C70
            686920556E69636F646520436F6E74726F6C7305322E332E300D54726F792057
            6F6C6272696E6B00000000FFFFFFFFFFFFFFFF02000000000000001054416374
            696F6E506F7075704D656E75000F53746576652054726566657468656E000000
            00FFFFFFFFFFFFFFFF020000000000000004496E647906392E302E31382B4368
            6164205A2E20486F77657220284B75647A752920616E642074686520496E6479
            20506974204372657700000000FFFFFFFFFFFFFFFF02000000000000000E4875
            6D616E206F322049636F6E7305312E312E350E4F6C69766572205363686F6C74
            7AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
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
          Width = 505
          Height = 63
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
      00000001000080030000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000}
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
