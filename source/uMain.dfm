object frmPopMain: TfrmPopMain
  Left = 235
  Top = 104
  Width = 512
  Height = 412
  Caption = 'PopTray'
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
    Width = 504
    Height = 385
    ActivePage = tsMail
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
        Width = 469
        Height = 344
        Align = alClient
        Images = dm.imlTabs
        TabOrder = 0
        OnChange = tabMailChange
        OnChanging = tabMailChanging
        OnDragDrop = tabDragDrop
        OnDragOver = tabMailDragOver
        OnMouseDown = DragMouseDown
        DesignSize = (
          469
          344)
        object MailToolBar: TActionToolBar
          Left = 4
          Top = 6
          Width = 461
          Height = 32
          ActionManager = ActionManager
          Caption = 'Mail'
          ColorMap.HighlightColor = 14410210
          ColorMap.BtnSelectedColor = clBtnFace
          ColorMap.UnusedColor = 14410210
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
        object lvMail: TListView
          Left = 4
          Top = 38
          Width = 461
          Height = 283
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
          Top = 321
          Width = 461
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
          Left = 285
          Top = 322
          Width = 180
          Height = 18
          Anchors = [akRight, akBottom]
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 3
          Visible = False
          DesignSize = (
            180
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
            Width = 153
            Height = 17
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 0
          end
        end
      end
      object panMailButtons: TPanel
        Left = 0
        Top = 344
        Width = 477
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
        Height = 344
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
      end
      object panMailRightSpacer: TPanel
        Left = 472
        Top = 0
        Width = 5
        Height = 344
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
        Width = 477
        Height = 377
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 0
        object tabAccounts: TTabControl
          Left = 4
          Top = 38
          Width = 469
          Height = 306
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
            Width = 461
            Height = 296
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
          Top = 344
          Width = 469
          Height = 29
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          DesignSize = (
            469
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
            Left = 270
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
            Left = 392
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
          Width = 469
          Height = 34
          ActionManager = ActionManager
          Caption = 'Accounts'
          ColorMap.HighlightColor = 14410210
          ColorMap.BtnSelectedColor = clBtnFace
          ColorMap.UnusedColor = 14410210
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
        Top = 345
        Width = 477
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
          Left = 268
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
        Width = 477
        Height = 345
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 4
        ParentBackground = False
        TabOrder = 1
        object spltOptions: TSplitter
          Left = 149
          Top = 4
          Width = 6
          Height = 337
          ResizeStyle = rsUpdate
        end
        object tvOptions: TTreeView
          Left = 4
          Top = 4
          Width = 145
          Height = 337
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
          Items.NodeData = {
            0108000000290000000000000000000000FFFFFFFFFFFFFFFF00000000000000
            000849006E00740065007200760061006C00290000000100000001000000FFFF
            FFFFFFFFFFFF000000000000000008440065006600610075006C007400730037
            0000000200000002000000FFFFFFFFFFFFFFFF00000000000000000F47006500
            6E006500720061006C0020004F007000740069006F006E007300390000000300
            000003000000FFFFFFFFFFFFFFFF00000000020000001041006400760061006E
            0063006500640020004F007000740069006F006E007300350000000400000004
            000000FFFFFFFFFFFFFFFF00000000000000000E550073006500720020004900
            6E007400650072006600610063006500330000000600000006000000FFFFFFFF
            FFFFFFFF00000000000000000D4D0069007300630065006C006C0061006E0065
            006F0075007300330000000700000007000000FFFFFFFFFFFFFFFF0000000000
            0000000D4D006F00750073006500200042007500740074006F006E0073002900
            00000800000008000000FFFFFFFFFFFFFFFF00000000000000000848006F0074
            002D004B006500790073003D0000000900000009000000FFFFFFFFFFFFFFFF00
            00000000000000125700680069007400650020002F00200042006C0061006300
            6B0020004C00690073007400290000000A0000000A000000FFFFFFFFFFFFFFFF
            00000000000000000850006C00750067002D0069006E007300}
        end
        object panOptions: TPanel
          Left = 155
          Top = 4
          Width = 318
          Height = 337
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object panOptSpacer: TPanel
            Left = 0
            Top = 30
            Width = 318
            Height = 4
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
          end
          object panOptionsTitle: TPanel
            Left = 0
            Top = 0
            Width = 318
            Height = 30
            Align = alTop
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Color = clWindow
            ParentBackground = False
            TabOrder = 1
            DesignSize = (
              318
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
              Width = 281
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
        Top = 345
        Width = 477
        Height = 32
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object panRulesButtonsRight: TPanel
          Left = 264
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
        Width = 477
        Height = 345
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 0
        object spltRules: TSplitter
          Left = 104
          Top = 38
          Width = 5
          Height = 303
          ResizeStyle = rsUpdate
        end
        object RulesToolbar: TActionToolBar
          Left = 4
          Top = 4
          Width = 469
          Height = 34
          ActionManager = ActionManager
          Caption = 'Rules'
          ColorMap.HighlightColor = 14410210
          ColorMap.BtnSelectedColor = clBtnFace
          ColorMap.UnusedColor = 14410210
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
          Top = 38
          Width = 364
          Height = 303
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          TabOrder = 1
          object panRuleDetail: TPanel
            Left = 0
            Top = 0
            Width = 364
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
              Width = 356
              Height = 124
              Align = alTop
              Caption = 'Actions'
              TabOrder = 1
              DesignSize = (
                356
                124)
              object btnEdRuleWav: TSpeedButton
                Left = 306
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
                Left = 331
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
                Left = 329
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
                Width = 69
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
                Width = 94
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
              Width = 356
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
                Width = 352
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
          Top = 38
          Width = 100
          Height = 303
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          object lstRules: TCheckListBox
            Left = 0
            Top = 0
            Width = 100
            Height = 281
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
            Top = 281
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
        Width = 477
        Height = 377
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          477
          377)
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
        object imgLogo: TImage
          Left = 16
          Top = 12
          Width = 210
          Height = 90
          AutoSize = True
          Picture.Data = {
            07544269746D617066DE0000424D66DE0000000000003600000028000000D200
            00005A000000010018000000000030DE0000C21E0000C21E0000000000000000
            000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF40404000FFFF40404000FFFF
            40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF4040
            4000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000
            FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF
            40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF4040
            4000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000
            FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF
            40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF4040
            4000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000
            FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF
            40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF4040
            4000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000
            FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF
            40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF4040
            4000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000
            FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF
            40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF4040
            4000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000
            FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF
            40404000FFFF40404000FFFF40404000FFFF40404000FFFF000000FFFF00FFFF
            00FFFF00FFFF00FFFF40404000FFFF40404000FFFF40404000FFFF40404000FF
            FF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40
            404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF404040
            00FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FF
            FF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40
            404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF404040
            00FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FF
            FF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40
            404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF404040
            00FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FF
            FF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40
            404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF404040
            00FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FF
            FF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40
            404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF404040
            00FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FF
            FF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40
            404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF404040
            00FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FF
            FF40404000FFFF40404000FFFF404040000000FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000
            FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF
            40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF4040
            4000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000
            FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF
            40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF4040
            4000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000
            FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF
            40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF4040
            4000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000
            FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF
            40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF4040
            4000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000
            FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF
            40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF4040
            4000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000
            FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF
            40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF4040
            4000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000
            FFFF40404000FFFF000000FFFF00FFFF00FFFF00FFFF00FFFF40404000FFFF40
            404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF404040
            00FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FF
            FF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40
            404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF404040
            00FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FF
            FF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40
            404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF404040
            00FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FF
            FF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40
            404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF404040
            00FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FF
            FF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40
            404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF404040
            00FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FF
            FF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40
            404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF404040
            00FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FF
            FF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF40
            404000FFFF40404000FFFF40404000FFFF40404000FFFF40404000FFFF404040
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
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000040404000FFFF40404000FFFF000000000099CCFF
            6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF00000000FFFF40404000FFFF404040000000000099CCFF6699FF6699FF6699
            FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000040404000
            FFFF40404000FFFF000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFF
            AAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFF40404000FFFF404040
            000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAA
            FF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF00000040404000FFFF40404000FFFF000000000099CCFF
            6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF00000000FFFF40404000FFFF404040000000000099CCFF6699FF6699FF6699
            FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000040404000
            FFFF40404000FFFF000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFF
            AAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFF40404000FFFF404040
            000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAA
            FF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF00000040404000FFFF40404000FFFF000000000099CCFF
            6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF00000000FFFF40404000FFFF404040000000000099CCFF6699FF6699FF6699
            FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000040404000
            FFFF40404000FFFF000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFF
            AAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFF40404000FFFF404040
            000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAA
            FF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF00000040404000FFFF40404000FFFF000000000099CCFF
            6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF00000000FFFF40404000FFFF404040000000000099CCFF6699FF6699FF6699
            FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000040404000
            FFFF40404000FFFF000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFF
            AAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFF40404000FFFF404040
            000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAA
            FF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF00000040404000FFFF40404000FFFF000000000099CCFF
            6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF00000000FFFF40404000FFFF404040000000000099CCFF6699FF6699FF6699
            FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000040404000
            FFFF40404000FFFF000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFF
            AAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFF40404000FFFF404040
            000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAA
            FF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF00000040404000FFFF40404000FFFF000000000099CCFF
            6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF00000000FFFF40404000FFFF404040000000000099CCFF6699FF6699FF6699
            FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000040404000
            FFFF40404000FFFF000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFF
            AAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFF40404000FFFF404040
            000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAA
            FF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF00000040404000FFFF40404000FFFF000000000099CCFF
            6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF00000000FFFF40404000FFFF404040000000000099CCFF6699FF6699FF6699
            FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000040404000
            FFFF40404000FFFF000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFF
            AAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFF40404000FFFF404040
            000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAA
            FF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF00000040404000FFFF40404000FFFF000000000099CCFF
            6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF00000000FFFF40404000FFFF404040000000000099CCFF6699FF6699FF6699
            FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000040404000
            FFFF40404000FFFF000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFF
            AAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFF40404000FFFF404040
            000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAA
            FF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF00000040404000FFFF40404000FFFF000000000099CCFF
            6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF00000000FFFF40404000FFFF404040000000000099CCFF6699FF6699FF6699
            FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF00000000000018181842424252525252525242424218181800000008
            0808000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000040404000
            FFFF40404000FFFF000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFF
            AAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFF40404000FFFF404040
            000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAA
            FF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000181818565A56424242
            544A4765625A565A56544A47473F364242424F44445252524A4A4A000000FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF00000040404000FFFF40404000FFFF000000000099CCFF
            6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF000000000000D6D6D6C6BDBDE7E7E7F7FFFFF7FF
            FFD6D6D6B5B5B5BDBDBDBDBDBDCECECEBDBDBD181818FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF00000000FFFF40404000FFFF404040000000000099CCFF6699FF6699FF6699
            FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000424A4A3A68A36A808F6A808F6A808F6384BD638CDE63
            8CD64A8CB54E5A624A4A4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000040404000
            FFFF40404000FFFF000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFF
            AAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF26
            171700000000144A00216B00216B0D3A941E58C33471E82D67D5114AA4000000
            000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFF40404000FFFF404040
            000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAA
            FF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000003152E072D67
            12449C1F52B72C61C84279E2558BF5487EE5275FBD000018000000FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF00000040404000FFFF40404000FFFF000000000099CCFF
            6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF4F413C313939000818000818092F64174A9A255EC4366FDE4B80
            EE5D8FF96799FE5C90F53F79E300215A000000FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF00000000FFFF40404000FFFF404040000000000099CCFF6699FF6699FF6699
            FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6365680000000000
            000000290D36720E408A1F53AB366CD14178E44D83EF5C8EFA6493FE6E9FFF69
            9DF64D86E400215A000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000040404000
            FFFF40404000FFFF000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFF
            AAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF00000000102100316300295A113C852157B62C
            65CD3E74DE5285F25A8CF95C8EFB6193FE6B9DFF76ABFC6AA0E7447AC3000018
            000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFF40404000FFFF404040
            000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAA
            FF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF10
            181800081800000800144A1345961B54AE2E66C4467BE45084F25689F56092FB
            6596FE6495FF689CFE74ABFC70AAF34D87D2255DA7000010000000FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF00000040404000FFFF40404000FFFF000000000099CCFF
            6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1010100000100B326D0E3C87
            1E4FA9376ED34D87E5639CEF6BA2F75D92F55A8FF46DA3F979ADFE78ACFF76AC
            FB6EA7F2518DE22B66C2104A9E000018000000FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF00000000FFFF40404000FFFF404040000000000099CCFF6699FF6699FF6699
            FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF000000000818104A94245AB92A63CD3E75DE6096F279B0
            F97FB6F26DA5E3558DDD5C95E87CB4F78BC1FE88BEFE7BB2F95C95EB3B75DD28
            62CA1B55B2000021000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000040404000
            FFFF40404000FFFF000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFF
            AAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1010
            1000081800216B316DE4457DE85087F0629AF57AB1F97BAFF05F91D1497EBB54
            8ECC6AA3E473A9EB77ABF379ADFA70A5FA5A90F34980EC4179E63770DD00215A
            000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFF40404000FFFF404040
            000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAA
            FF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF101010000010133A7F2B5EC143
            78E75389F369A1F77EB6FC78AFF25588CE3263AD396CB75E95D96294CF4974B3
            4E7CCD6496F4679AFE6396FD6194FB578AF24277E100215A000000FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF00000040404000FFFF40404000FFFF000000000099CCFF
            6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF000000000818084A943268BD4C82E9477CE64278D95E96E3
            71A7EA588CD63365B125559F3864AE4E77B84E6E9B0000003A68A373A5FF567F
            D6608EED6899FB5889EA3869C1000021000000FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF00000000FFFF40404000FFFF404040000000000099CCFF6699FF6699FF6699
            FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF212942
            08317B00215A2555826096DB6B9FF14175CD2458AA346AB93F75C23165B12D5F
            AF3963A7001831000018313C4CFFFFFF313C4C0000212E44754C74BB6596F157
            89E63264B3000010000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF5F5F5F2
            F2F2F2F2F2F2F2F2F2F2F2F5F5F5FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFEFEFEFBFBFBF6F6F6F4F4F4F3F3F3F2F2F2F3F3F3
            F4F4F4F6F6F6F9F9F9FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000040404000
            FFFF40404000FFFF000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFF
            AAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000081B52B91446953D6F
            A77DB2E37CB1EF3F70B9134389164A9E255CB9285AAC3962A9313C4CFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF000000000000255582568AE35589E8366ABB000018
            000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5D7D7D7CDCDCDCCCCCCCCCCCC
            CDCDCDD7D7D7F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFBFBFBEAEAEAD9D9D9D2D2D2CFCFCFCDCDCDCDCDCDD0D0D0D6D6D6E0E0
            E0EEEEEEF9F9F9FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFF40404000FFFF404040
            000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAA
            FF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF4F413C0000211A52B51243923568A56FA7E26FA7EE38
            6AB70E4087134BA2326BD63663BF000831FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF00000000216B4078DB4881E92E64C2000010000000FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFF3F3F3CDCDCDC0C0C0C0C0C0C0C0C0C0C0C0CDCDCDF3F3
            F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7DCDC
            DCC8C8C8C2C2C2C1C1C1C0C0C0C0C0C0C1C1C1C3C3C3C7C7C7D1D1D1E6E6E6F8
            F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF00000040404000FFFF40404000FFFF000000000099CCFF
            6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF10427B104FAF0A397E0833701D4E8E4177C7447CD32456A60B3A7E13499B
            2E68CF2E58AF000018FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
            0000297B2A61C32F69CC1B53AD000018000000FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0D0D
            0D000000000000000000000000000000C0C0C0CCCCCCF2F2F2FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABABAB4141412424240F0F0F00000000
            00001818184444447D7D7DB8B8B8C0C0C0C3C3C3CFCFCFEAEAEAFCFCFCFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF00000000FFFF40404000FFFF404040000000000099CCFF6699FF6699FF6699
            FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000002163275096
            0120440123480932691645921A4B9C0F3A7A062B5E0B3877174A9B163A7C0000
            08FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000144A16479416
            4A960A3D7F000810000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D3D3D1A1A1A00000000
            0000000000000000C0C0C0CCCCCCF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF868686242424000000000000000000000000000000000000
            0000000F0F0F9C9C9CC0C0C0C4C4C4D8D8D8F4F4F4FEFEFEFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000040404000
            FFFF40404000FFFF000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFF
            AAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
            0000000000000000000000000000000000001010101821181821181821181821
            1818211810211018211818211818211810211018211818211810101000000000
            0000000000000000000000080808182118182118182118102110182118182118
            182118080808000000000000000000000000000000000000525252FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF5454545555553A3A3A191919000000000000
            C0C0C0CCCCCCF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            8787877979797171716E6E6E6969694D4D4D3737372C2C2C1010100000000A0A
            0AAFAFAFC1C1C1CBCBCBE8E8E8FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFF40404000FFFF404040
            000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAA
            FF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1818181818181010101818181818
            181818182D2D2D4F44444A4A4A5A5A4A6B6B636B6B636B6B6365625A65625A83
            736B9494949C948C9C948CA7AFADADB5B5A7AFAD999696949494949494898E8E
            898E8E949C9C9996969C9C9C8C7E7E65625A6B6B636B736B6B6B63565A564242
            423131313939392929291821211810101821214A4A4AFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF5F5F5F2F2F2F2F2F2F2F2F2
            F2F2F2F2F2F2F5F5F5FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF9
            F9F9F6F6F6F4F4F4F3F3F3F3F3F3F4F4F4F6F6F6F9F9F9FDFDFDFFFFFFFFFFFF
            FFFFFFFFFFFF5A5A5A6363634B4B4B303030000000000000C0C0C0CCCCCCF1F1
            F1FAFAFAF6F6F6F4F4F4F3F3F3F4F4F4F7F7F7FBFBFBFEFEFEFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF5F5F5F2F2F2F2F2F2
            F2F2F2F2F2F2F2F2F2F5F5F5FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFDFDFDF5F5F5F2F2F2F2F2F2F2F2F2F2F2F2F5F5F5FDFDFDFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFEFEFEFAFAFAF6F6F6F3F3F3F3F3F3F3F3F3F5F5F5F9F9F9
            FDFDFDFEFEFEFBFBFBF4F4F4F2F2F2F2F2F2F2F2F2F4F4F48484847575756262
            627373737F7F7F7B7B7B575757404040404040121212000000484848C0C0C0C5
            C5C5DBDBDBF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF00000040404000FFFF40404000FFFF000000000099CCFF
            6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFF
            FFFFFFFFFFFFFF181818000000565A56565A566365687373736B6B63737B7B94
            9494898E8E9C9C9CB5ADB5A7AFADC6BDBDD6CECECECECEE7E7E7FFF7FFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFEFF7E7CECEEFC6CEC6C6C6B5ADB5B5B5B5A7AFAD9494949C9C9C89
            8E8E7373738C7E7E393939000000565A56FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFF5F5F5D7D7D7CDCDCDCCCCCCCCCCCCCCCCCCCDCDCDD7D7
            D7F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF8F8F8EEEEEEE1E1E1D7D7D7D0D0D0
            CDCDCDCDCDCDD1D1D1D7D7D7E1E1E1EEEEEEF8F8F8FEFEFEFFFFFFFFFFFF5A5A
            5A6464644B4B4B333333000000000000C0C0C0CBCBCBE7E7E7E5E5E5D8D8D8D0
            D0D0CECECED1D1D1DADADAE9E9E9F6F6F6FEFEFEFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFF5F5F5D7D7D7CDCDCDCCCCCCCCCCCCCCCCCCCDCD
            CDD7D7D7F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5D7D7D7CD
            CDCDCCCCCCCCCCCCCDCDCDD7D7D7F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFDFDFD
            F3F3F3E4E4E4D7D7D7CFCFCFCDCDCDCFCFCFD5D5D5E0E0E0EFEFEFF7F7F7ECEC
            ECD4D4D4CDCDCDCCCCCCCDCDCDD2D2D2CFCFCFECECECFFFFFFFFFFFFE2E2E29A
            9A9A6F6F6F474747404040343434000000000000A7A7A7C1C1C1CFCFCFF0F0F0
            FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF00000000FFFF40404000FFFF404040000000000099CCFF6699FF6699FF6699
            FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFF00000029
            29295252525252524A4A4A565A56737373737373737B7B949494949494999696
            A5A29E999696B5B5B5DEDEDEDEDEDEE7E7E7EFF7F7EFFFFFEFFFFFFFF7FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFF7F7EFFFFFEFFFFFEFEFEFFF
            C6CEFFC6CEE7B5BD9C9C9C9C9C9C9C9C9C949494999696898E8E737373737373
            6B736B525252181818000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFF3F3F3CDCDCDC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CDCDCDF3F3F3FFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFDFDFDF3F3F3E1E1E1CFCFCFC7C7C7C4C4C4C1C1C1C0C0C0C0C0C0C1C1
            C1C4C4C4C7C7C7CFCFCFE0E0E0F3F3F3FDFDFDFFFFFF5B5B5B6565654B4B4B33
            3333000000000000BFBFBFC4C4C4CFCFCFCACACAC4C4C4C1C1C1C0C0C0C1C1C1
            C5C5C5CDCDCDE0E0E0F5F5F5FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFF3F3F3CDCDCDC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CDCDCDF3F3F3FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3CDCDCDC0C0C0C0C0C0C0C0C0
            C0C0C0CDCDCDF3F3F3FFFFFFFFFFFFFFFFFFFEFEFEF3F3F3DADADACACACAC3C3
            C3C1C1C1C0C0C0C1C1C1C3C3C3C7C7C7D2D2D2E1E1E1DBDBDBC7C7C7C0C0C0C0
            C0C0C0C0C0CACACAEAEAEAFCFCFCFFFFFFFFFFFFFFFFFFF0F0F07C7C7C4A4A4A
            4040404040401B1B1B000000626262C0C0C0C8C8C8E4E4E4FAFAFAFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000040404000
            FFFF40404000FFFF000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFF
            AAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFF292929000000000000
            0000000000000000001821215252526B6B636B736B6B6B636B6B636365687373
            737F88839C9C9CB5B5B5ADB5B5ADB5B5B5ADB5ADB5B5C6BDBDCECECECECECEC6
            CECECECECECECECEB5B5B5A7AFADADB5B5B5BDBDA5A29E8C7E7E9473738C7E7E
            6B6B635252524242424242421821210000000000000000000000000000006365
            68FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0D0D0D00000000000000
            0000000000000000000000C0C0C0CCCCCCF2F2F2FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF3F3F3CDCD
            CD8282824848481818180000000000001D1D1D484848838383B8B8B8C0C0C0C2
            C2C2C9C9C9DBDBDBF3F3F3FDFDFD5B5B5B6565654B4B4B343434000000000000
            BFBFBF9898984C4C4C131313000000181818575757A9A9A9BFBFBFC1C1C1CBCB
            CBE2E2E2F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0D0D0D00000000
            0000000000000000000000000000C0C0C0CCCCCCF2F2F2FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF0D0D0D000000000000000000000000000000C0C0C0CCCCCCF2F2
            F2FFFFFFFFFFFFFFFFFFF5F5F59494943F3F3F0F0F0F0000000F0F0F3737377D
            7D7DB9B9B9C1C1C1B0B0B0000000000000000000000000000000737373CCCCCC
            F0F0F0FEFEFEFFFFFFFFFFFFFFFFFFF7F7F77373734B4B4B4040404040403434
            340000000A0A0ABDBDBDC4C4C4D7D7D7F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFF40404000FFFF404040
            000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAA
            FF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2929294A4A4A4A4A4A4242424242
            426365689996961821211818181818180810100810100808080008081821212D
            2D2D292929212929212929292929313939424A4A424242424242424A4A424242
            3131312129292929292929291821210008080810101010101821215252529996
            969996969494943939394242424242423535314A4A4AFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF3D3D3D1A1A1A000000000000000000000000
            000000C0C0C0CCCCCCF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F38383830A0A0A00000000000000
            00000000000000000000000000000000000A0A0A7F7F7FBEBEBEC1C1C1C9C9C9
            E0E0E0F7F7F75B5B5B6565654B4B4B3838380808080000004C4C4C0000000000
            000000000000000000000000000000007A7A7AC0C0C0C2C2C2D0D0D0EEEEEEFD
            FDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D3D3D1A1A1A000000000000000000
            000000000000C0C0C0CCCCCCF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D3D
            3D1A1A1A000000000000000000000000C0C0C0CCCCCCF2F2F2FFFFFFFFFFFFFC
            FCFC505050000000000000000000000000000000000000000000141414A7A7A7
            828282000000000000000000000000000000AEAEAECCCCCCF2F2F2FFFFFFFFFF
            FFFFFFFFFFFFFFB5B5B55F5F5F4949494040404040404040401A1A1A00000095
            9595C1C1C1CDCDCDEDEDEDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF00000040404000FFFF40404000FFFF000000000099CCFF
            6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF153847174357183F4F193C4C18465A1947590F3C5008374D083E55
            083E55083E55083A520B384D0B364C0A3043092C3E0928360A253109212B0D24
            2E1228320E212913222A16242B16242CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF5454545555553C3C3C303030191919000000000000C0C0C0CCCC
            CCF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFF9F9F96363631111111F1F1F2E2E2E343434383838404040404040
            3E3E3E3434341B1B1B0000000000005B5B5BBEBEBEC2C2C2CFCFCFEDEDED5A5A
            5A6565654B4B4B4040402C2C2C1212121212122727273B3B3B3F3F3F3A3A3A2E
            2E2E1010100000000000008B8B8BC0C0C0C8C8C8E2E2E2F9F9F9FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF5454545555553C3C3C303030191919000000000000C0C0
            C0CCCCCCF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5454545555553A3A3A19
            1919000000000000C0C0C0CCCCCCF2F2F2FFFFFFFFFFFFA4A4A4474747393939
            3232323333333333333434343131312424241515151B1B1B4545452E2E2E3232
            322A2A2A060606000000BEBEBECCCCCCF2F2F2FFFFFFFFFFFFFFFFFFFFFFFF62
            62625151514444444040404040404040403030300000004C4C4CC0C0C0C7C7C7
            E1E1E1F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF00000000FFFF40404000FFFF404040000000000099CCFF6699FF6699FF6699
            FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF133847
            3AA8D43EB2E442BAF03FB8EF3DB8EE39B7EF35B5F031B3EF2BB2EF38B5EC42B7
            EA3DB6EB3EB6EC3BB4ED3BB6EC3BB7ED37B5EE36B6EF36B6EF32B5F128B5F33E
            A3CC3EA3CC102228FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5A5A
            5A6363634B4B4B404040303030000000000000C0C0C0CCCCCCF2F2F2FFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF919191
            3333333A3A3A3E3E3E3F3F3F3F3F3F4C4C4C5E5E5E6B6B6B7474746D6D6D5151
            513636360C0C0C0000007D7D7DC0C0C0C7C7C7E0E0E05A5A5A6565654B4B4B40
            40404040403939393B3B3B4D4D4D6666667373736D6D6D535353404040191919
            0000000A0A0AB9B9B9C4C4C4D8D8D8F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF5A5A5A6363634B4B4B404040303030000000000000C0C0C0CCCCCCF2F2F2FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF5A5A5A6363634B4B4B303030000000000000
            C0C0C0CCCCCCF2F2F2FFFFFFFFFFFF6D6D6D6060604A4A4A4040404040403F3F
            3F3F3F3F4B4B4B6161617171716B6B6B52525240404040404038383805050500
            0000C0C0C0CCCCCCF2F2F2FFFFFFFFFFFFFFFFFFC4C4C43B3B3B474747404040
            404040404040404040383838000000000000B7B7B7C3C3C3D4D4D4F3F3F3FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000040404000
            FFFF40404000FFFF000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFF
            AAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF12516D3CA2D0349ECC3EAD
            DD46B7EA45B7E944B7EA43B8EC42B7ED3FB7ED4BB9E956BBE855BBEB54BBEB54
            BBEA53BAEB53BBEC54BDEC55BEEE58C2F24BB9EA2FA3D53EA3CC32B4ED122830
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5A5A5A6464644B4B4B40
            4040333333000000000000C0C0C0CCCCCCF2F2F2FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E44141414545454040403E3E
            3E303030202020939393E2E2E2F4F4F4BCBCBC8080806D6D6D47474734343400
            0000050505B4B4B4C3C3C3D5D5D55A5A5A6565654B4B4B4040403E3E3E303030
            2C2C2CABABABEAEAEAD8D8D88686866D6D6D4747474040401010100000008888
            88C2C2C2D1D1D1F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5A5A5A6464644B
            4B4B404040333333000000000000C0C0C0CCCCCCF2F2F2FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF5A5A5A6464644B4B4B333333000000000000C0C0C0CCCCCCF2F2
            F2FFFFFFFFFFFF5B5B5B6565654B4B4B404040404040343434959595C5C5C5D5
            D5D5BEBEBE8585856A6A6A404040404040353535000000000000C0C0C0CCCCCC
            F2F2F2FFFFFFFFFFFFFFFFFF7373733E3E3E4343434040404040404040404040
            404040401A1A1A000000858585C0C0C0CBCBCBEAEAEAFCFCFCFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFF40404000FFFF404040
            000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAA
            FF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF12475F4BB5E63EA7D63EA1CC48AEDA51BAE955
            BDEE54BAEA55BAE855BAE755BAE854B9E853BAE753BAE754BAE753B9E854BAE9
            54BBE958C1EF51B8E441A9D43AA8D638BFF932B4ED091C25FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF5B5B5B6565654B4B4B404040333333000000
            000000C0C0C0CACACAE8E8E8F2F2F2F2F2F2F2F2F2F3F3F3F4F4F4F6F6F6F9F9
            F9FDFDFDFFFFFFFFFFFFA1A1A15050504949494040403A3A3A111111666666CC
            CCCCF0F0F0FEFEFEFFFFFFB3B3B37777774E4E4E4040401818180000007D7D7D
            C1C1C1CFCFCF5B5B5B6565654B4B4B404040373737111111828282CCCCCCF1F1
            F1FFFFFFC3C3C37777774E4E4E4040402C2C2C0000004C4C4CC0C0C0CDCDCDF3
            F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5B5B5B6565654B4B4B404040333333
            000000000000C0C0C0CCCCCCF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5B5B
            5B6565654B4B4B333333000000000000C0C0C0CBCBCBEFEFEFFEFEFEFFFFFF68
            68686969695050504040403B3B3B1D1D1DBFBFBFC1C1C1C6C6C6CECECEBEBEBE
            6B6B6B464646404040333333000000000000C0C0C0CCCCCCF2F2F2FFFFFFFFFF
            FFE4E4E439393942424240404040404040404047474740404040404030303000
            0000333333C0C0C0C6C6C6DDDDDDF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF00000040404000FFFF40404000FFFF000000000099CCFF
            6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF124F6A48B1E147B5E846AEDD3C9DC546AAD555BBE85AC0EE56BCEA
            55BBEA53BBEA51BBE950BAE850B9E850B9E851BBE952BEEA56C1EE53BDED43A8
            D43EA3CC4CBDEE48C9FF32B4ED071E28FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF5B5B5B6565654B4B4B404040333333000000000000BFBFBFC2C2
            C2CACACACCCCCCCCCCCCCDCDCDCDCDCDD1D1D1D8D8D8E2E2E2EFEFEFF9F9F9FE
            FEFE7777776060604A4A4A404040323232000000ACACACCCCCCCF2F2F2FFFFFF
            FFFFFFE0E0E07676765D5D5D4040402C2C2C000000373737C0C0C0CDCDCD5C5C
            5C6565654B4B4B3E3E3E242424000000B4B4B4CCCCCCF2F2F2FFFFFFE6E6E676
            76765D5D5D404040333333000000212121C0C0C0CDCDCDF3F3F3FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF5B5B5B6565654B4B4B404040333333000000000000C0C0
            C0CCCCCCF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5B5B5B6565654B4B4B34
            3434000000000000C0C0C0CACACAEAEAEAFCFCFCFFFFFFA3A3A37777776A6A6A
            4C4C4C4040401212126C6C6CC1C1C1C4C4C4C3C3C3C2C2C25454544343434040
            40333333000000000000C0C0C0CCCCCCF2F2F2FFFFFFFFFFFF9090903C3C3C42
            42424040403F3F3F454545A5A5A5606060515151404040000000000000AFAFAF
            C2C2C2D1D1D1F2F2F2FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF00000000FFFF40404000FFFF404040000000000099CCFF6699FF6699FF6699
            FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF125170
            4DB7E646B9ED4CB9EC4DB4E544A1CA46A6D051BAE855C0EE54BEEB54BFEC53BF
            ED51BCEB51BCEA54BEEB59C2ED5DC5EE5EC5ED45A8D343A5D254BCEA4FBFF04B
            C7FD32B4ED082434FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5B5B
            5B6565654B4B4B404040343434000000000000BFBFBFBFBFBFC0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C2C2C2C4C4C4C8C8C8D1D1D1E4E4E4F6F6F65F5F5F646464
            4B4B4B404040232323000000BDBDBDCCCCCCF0F0F0FEFEFEFFFFFFF8F8F87272
            726767674040403333330000000F0F0FC1C1C1CFCFCF5C5C5C6565654B4B4B3A
            3A3A090909000000C0C0C0CCCCCCF1F1F1FFFFFFFAFAFA727272676767404040
            333333000000000000C1C1C1CFCFCFF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF5B5B5B6565654B4B4B404040333333000000000000C0C0C0CCCCCCF2F2F2FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF5B5B5B6565654B4B4B383838000000000000
            BABABAC7C7C7E2E2E2F9F9F9FFFFFFF0F0F08989897F7F7F7474745D5D5D3838
            38000000090909494949868686BDBDBD41414140404040404033333300000000
            0000C0C0C0CDCDCDF3F3F3FFFFFFF8F8F84949494444444040403E3E3E333333
            595959CBCBCB8080806A6A6A4040401D1D1D000000737373C0C0C0CACACAE7E7
            E7FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000040404000
            FFFF40404000FFFF000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFF
            AAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1154744FB7E844B8ED4EBC
            EC51BBEB54BCEC48A7D143A4CB4EBCE751BFEC55C7F557CAF75AC9F360CFF663
            D0F768D5FA60CCF046AAD444A9D650B7E655BEEE50BDEF4FC5F932B4ED052738
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5B5B5B6565654B4B4B40
            40403838380404040000000000000000000000000000000000002121214C4C4C
            888888B9B9B9C0C0C0C2C2C2CCCCCCE4E4E45A5A5A6464644B4B4B3B3B3B0F0F
            0F000000C0C0C0C9C9C9E8E8E8FBFBFBFFFFFFFFFFFF6262625F5F5F44444433
            3333000000000000C3C3C3D5D5D55C5C5C6565654B4B4B363636000000000000
            C0C0C0CACACAEBEBEBFCFCFCFFFFFF6262625F5F5F4444443333330000000000
            00C2C2C2D4D4D4F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5B5B5B6565654B
            4B4B404040333333000000000000C0C0C0CCCCCCF2F2F2FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF5B5B5B6565654B4B4B4040401A1A1A000000AFAFAFC3C3C3D5D5
            D5F1F1F1FDFDFDFDFDFDEEEEEEAEAEAE7F7F7F7373736666665C5C5C4E4E4E3D
            3D3D3838383E3E3E404040404040404040333333000000000000C0C0C0CDCDCD
            F3F3F3FFFFFFB4B4B44A4A4A4747474040403737371616168D8D8DD6D6D6A2A2
            A27676764E4E4E3434340000001D1D1DBFBFBFC5C5C5DADADAF7F7F7FFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFF40404000FFFF404040
            000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAA
            FF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF11557852B9E842B6EA53BCEA55BDEB54BDED4F
            BCF03BA9DD2C9CCC42B8E848CBFC4CD3FF55D7FF54D6FF62E1FF55D0F637ADE1
            31A2D83EAFE54DBBEF51BBEB50BEED50C7F737B8EF0A3042FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF5B5B5B6565654B4B4B4040404040402C2C2C
            0404040000000000000000000000000000000000000000000000001313139595
            95C0C0C0C2C2C2D0D0D05F5F5F6565654B4B4B404040090909000000BCBCBCC5
            C5C5DADADAF3F3F3FDFDFDF7F7F74D4D4D4D4D4D4040403333330000000A0A0A
            C6C6C6DFDFDF5D5D5D6565654B4B4B363636000000000000C0C0C0C6C6C6DEDE
            DEF6F6F6FAFAFA4D4D4D4D4D4D4040403333330000000A0A0AC5C5C5DCDCDCF7
            F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5B5B5B6565654B4B4B404040333333
            000000000000C0C0C0CCCCCCF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5B5B
            5B6565654B4B4B4040402E2E2E000000909090C0C0C0C7C7C7DBDBDBECECECEE
            EEEEEDEDEDF4F4F4EEEEEECFCFCFB2B2B29494947F7F7F7B7B7B7C7C7C707070
            535353404040404040333333000000000000C1C1C1CFCFCFF3F3F3FEFEFE6363
            634C4C4C4444443E3E3E232323000000BCBCBCE3E3E3C5C5C57979795F5F5F40
            40401A1A1A000000A3A3A3C1C1C1CFCFCFF0F0F0FEFEFEFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF00000040404000FFFF40404000FFFF000000000099CCFF
            6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF11567754BAE93BB3EA4EBAEA4EBBEB49BAEC3DBAF432B1EC3AA3D0
            5B9BB28DAAAE80BBCB4FBEE157C0DE5BC1E486AFBD8C9DA438A5DB2AB1F23CB8
            F248B9ED4ABEF150C5F839B7EF093246FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF5B5B5B6565654B4B4B4040404040404040403939393838383A3A
            3A3A3A3A3535353333333333332C2C2C101010000000000000939393C0C0C0C7
            C7C77878786868685050504040401C1C1C000000ABABABC1C1C1C9C9C9DDDDDD
            ECECECCBCBCB4A4A4A474747404040323232000000383838CECECEECECEC5D5D
            5D6565654B4B4B383838000000000000B4B4B4C2C2C2CDCDCDE2E2E2D3D3D34B
            4B4B474747404040333333000000333333CACACAE7E7E7FBFBFBFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF5B5B5B6565654B4B4B404040333333000000000000C0C0
            C0CCCCCCF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5B5B5B6565654B4B4B40
            4040343434000000444444BFBFBFC1C1C1C5C5C5CACACACBCBCBD0D0D0DEDEDE
            D7D7D7CCCCCCC7C7C7C5C5C5C3C3C3C1C1C1BABABA9898986A6A6A4040404040
            40333333000000000000C3C3C3D5D5D5F5F5F5CDCDCD3A3A3A4646464040403A
            3A3A0A0A0A434343CECECEEFEFEFE8E8E87777776F6F6F474747303030000000
            626262C0C0C0C8C8C8E4E4E4FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF00000000FFFF40404000FFFF404040000000000099CCFF6699FF6699FF6699
            FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF115371
            53BCE931B1E945B7EA42B7EC33B5F11DA2E171ABC3F2D4B7FEF0C6FFFBD5FFEE
            D0FFE1C0FFE0BEFFE4BFFFF3C5FBEDC3E3C7AF6AA8C31EA8E830B9F83CBCF350
            CAFA3DBCF1093246FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5B5B
            5B6565654B4B4B4040404040403F3F3F4040405151516A6A6A6D6D6D5D5D5D4A
            4A4A4040404040404040401919190000000F0F0FB9B9B9C3C3C3A9A9A9747474
            656565404040303030000000666666BFBFBFC1C1C1C6C6C6CACACA8181814646
            464444444040402E2E2E000000767676DEDEDEF7F7F75C5C5C6565654B4B4B40
            40401D1D1D000000858585C0C0C0C2C2C2C8C8C8959595494949444444404040
            323232000000666666D4D4D4F2F2F2FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF5B5B5B6565654B4B4B404040333333000000000000C0C0C0CCCCCCF2F2F2FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF5B5B5B6565654B4B4B404040383838040404
            000000717171BBBBBBBDBDBD9F9F9FBFBFBFBDBDBDADADAD9090906F6F6F4848
            48181818B2B2B2C0C0C0C4C4C4CACACA6A6A6A4646464040403333330000000A
            0A0AC7C7C7E0E0E0F8F8F87676763E3E3E434343404040313131000000939393
            D9D9D9F6F6F6FFFFFF8282827373734A4A4A3838380000000F0F0FBDBDBDC4C4
            C4D7D7D7F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000040404000
            FFFF40404000FFFF000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFF
            AAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F51714EB9E922ADEB31B3
            EE2CAFEB339DCEABBABDFFEACBFFFCDFFFFBDFFFF3DEFFEEDDFFF2DCFFF5D8FF
            F5D5FFF3D2FFF4CFFFF6CDFFE2B6A7B7B42CA1D629B3F247CBFF3FBFF4093145
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5B5B5B6565654B4B4B40
            40403E3E3E3232322323233D3D3D6868687878787C7C7C737373595959404040
            4040404040401010100000007D7D7DC1C1C1CACACA8080807D7D7D6060604040
            400101010000007D7D7DBBBBBBBDBDBD8080801F1F1F3E3E3E4040403E3E3E1F
            1F1F050505C3C3C3F2F2F2FDFDFD5D5D5D6666664B4B4B404040343434000000
            0F0F0F9D9D9DC4C4C4A3A3A33434344141414040404040402F2F2F000000A3A3
            A3E7E7E7FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5B5B5B6565654B
            4B4B404040333333000000000000C0C0C0CCCCCCF2F2F2FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF5C5C5C6666664B4B4B4040404040402C2C2C0404040000000000
            000000000000009A9A9A262626000000000000000000000000000000505050B5
            B5B5BFBFBFA3A3A3535353434343404040323232000000383838D2D2D2EEEEEE
            E6E6E63939394242424040403E3E3E2121210A0A0AC2C2C2E6E6E6FBFBFBFFFF
            FFA6A6A67070705151514040401A1A1A000000989898C1C1C1CDCDCDEDEDEDFD
            FDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFF40404000FFFF404040
            000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAA
            FF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF0A3E564AB9EC04A7EF2CA7DF6EA8C5E2D9D0FF
            FDE8FFFFF1FFF9E5FFF3E0F9EEE1F6EDE0FAECDCF8EBDCF9EDDBFCEFD8FFF0D6
            FEF0D3FFF8D3FFF0C4E3CDB674AABE4AC6F12FC1FB0A3246FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF5B5B5B6565654B4B4B4040403A3A3A131313
            000000C0C0C0CCCCCCEDEDEDD9D9D99393937A7A7A5555554040404040402C2C
            2C000000404040C0C0C0CDCDCDBBBBBB7E7E7E7D7D7D5E5E5E31313103030300
            00000000000000001212123131313F3F3F4040403A3A3A1111116E6E6EF2F2F2
            FDFDFDFFFFFF5E5E5E6767674D4D4D4040404040402222220000000000000000
            000E0E0E3030303F3F3F4040403C3C3C222222292929DFDFDFF7F7F7FEFEFEFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5B5B5B6565654B4B4B404040333333
            000000000000C0C0C0CCCCCCF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5C5C
            5C6767674D4D4D40404040404040404040404039393935353533333333333366
            66668888883737373838383535352C2C2C121212000000000000000000282828
            4141414040404040402F2F2F0000007D7D7DE7E7E7F9F9F99898984040404444
            444040403A3A3A0909095B5B5BD1D1D1F1F1F1FEFEFEFFFFFFD2D2D273737361
            61614040403030300000004C4C4CC1C1C1C8C8C8E2E2E2F9F9F9FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF00000040404000FFFF40404000FFFF000000000099CCFF
            6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF040F162DB0EB2DB0EBABBDBBFFFFECFFFFF5FFFCF2FDF6EEF8F1ED
            F5EEE8F7F0E9FAF2E8FCF1E3FEF1E2FFF0E2FFF3E2FFF7E0FFF9DCFFFCD9FFFF
            D7FFFED1FFF5C4C7CBB955ABD1063045FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF5B5B5B6565654B4B4B404040353535000000000000C0C0C0CCCC
            CCF2F2F2FEFEFEE3E3E37D7D7D656565404040404040333333000000131313C1
            C1C1CECECEF3F3F3A6A6A67E7E7E7D7D7D6363634A4A4A404040404040404040
            4747474A4A4A4A4A4A454545343434515151F3F3F3FDFDFDFFFFFFFFFFFF6262
            627171716060604C4C4C4A4A4A4C4C4C4848484343434040404747474D4D4D4B
            4B4B464646303030161616AEAEAEF7F7F7FEFEFEFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF5B5B5B6565654B4B4B404040333333000000000000C0C0
            C0CCCCCCF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6161617171716060604C
            4C4C4949497575756262626767675D5D5D4F4F4F4B4B4B494949B7B7B7676767
            6767675D5D5D4F4F4F4545453131311F1F1F2F2F2F4545454D4D4D4B4B4B4646
            462929290F0F0FDBDBDBFAFAFAF9F9F95F5F5F5D5D5D5353534A4A4A3B3B3B01
            0101A3A3A3E1E1E1F8F8F8FFFFFFFFFFFFF8F8F87B7B7B7979795A5A5A444444
            040404050505C0C0C0D0D0D0DFDFDFF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF00000000FFFF40404000FFFF404040000000000099CCFF6699FF6699FF6699
            FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0B2B39
            2073B2918F7EFFFFFEFFFFFEFFFFF9FFFBEFFCF5ECF5F2EEF5F3EEFBFBF6FFFF
            FAFFFFF3FFFFEFFFFFEBFFFFEAFFFFE5FFFFDDFFFCD4FFF5CAFFEBC1FFE2BBFF
            D5A6889C9A000507FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5B5B
            5B6565654B4B4B404040333333000000000000C0C0C0CACACAE8E8E8F2F2F2F0
            F0F06464645B5B5B444444404040333333000000000000C2C2C2D3D3D3F5F5F5
            FFFFFFBEBEBE7F7F7F7575756A6A6A6666666565656565656464645F5F5F5050
            504141418D8D8DF9F9F9FFFFFFFFFFFFFFFFFFFFFFFF7070707F7F7F71717161
            61615353538E8E8E9B9B9B7171717373736C6C6C6767676060604C4C4C2C2C2C
            979797FBFBFBFEFEFEFFFFFFFFFFFFFDFDFDF5F5F5F2F2F2F2F2F2F2F2F2F2F2
            F25959596464644B4B4B404040333333000000000000C0C0C0CACACAE8E8E8F2
            F2F2F2F2F2F2F2F2F2F2F2F2F2F27070707F7F7F717171626262535353909090
            B5B5B5717171717171696969616161535353959595D5D5D58181817171716969
            696666666363636262626666666767676666666060604C4C4C373737BBBBBBFD
            FDFDFFFFFFCDCDCD7D7D7D787878696969606060474747282828EFEFEFF8F8F8
            FEFEFEFFFFFFFFFFFFFFFFFF9C9C9C7C7C7C6E6E6E6262624848480101018A8A
            8AF3F3F3F7F7F7FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000040404000
            FFFF40404000FFFF000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFF
            AAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF196487196487B69B7BFFFF
            FFFFFFFFFFFFFFFFFFF9FFFFF0FFFFEAFFFFDEFFFFEFFFFFFCFFFFF3FFFFEFFF
            FFEBFFFFEAFFFFE5FFFFDDFFFCD4FFF5CAFFEBC1FFE2BBEBC198D4874FFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5B5B5B6565654B4B4B40
            4040333333000000000000BFBFBFC2C2C2CACACACCCCCCB8B8B8393939464646
            404040404040333333000000050505C5C5C5DCDCDCF8F8F8FFFFFFFFFFFFF2F2
            F2B5B5B58686866868685B5B5B5B5B5B6A6A6A7F7F7FA5A5A5E6E6E6FFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF7979797070706161615959594F4F4F8F8F8F
            FFFFFFD1D1D19090906868685B5B5B626262838383CECECEFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFF5F5F5D7D7D7CDCDCDCCCCCCCCCCCCCCCCCC4C4C4C5D5D5D49
            4949404040333333000000000000BFBFBFC2C2C2CACACACCCCCCCCCCCCCCCCCC
            CCCCCCCDCDCD7B7B7B7070706161615959594F4F4F8F8F8FFFFFFFC2C2C27F7F
            7F5E5E5E5B5B5B6D6D6D9A9A9AFFFFFFF5F5F5C0C0C09191917272725E5E5E5B
            5B5B5B5B5B606060707070878787A4A4A4EBEBEBFFFFFFFFFFFFFFFFFF949494
            7171716363635D5D5D5858584A4A4A838383FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFBFBFBF6D6D6D6060605A5A5A5353533A3A3A373737FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFF40404000FFFF404040
            000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAA
            FF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8916FB8916FA48164BC9A7EED
            CC98FFE59FFFDE9DFFDE9DFFDE9DFFE7A0F2D296FFE59FFFDE9DFFDE9DFFDE9D
            FFDE9DFFE7A0FFE7A0F2D296AD8E7167675C365A53FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF5B5B5B6565654B4B4B404040343434000000
            000000BFBFBFBFBFBFBFBFBFAAAAAA3D3D3D3030303F3F3F4040404040403232
            320000002E2E2ECDCDCDE9E9E9FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3
            F3F3CDCDCDC0C0C0C0C0C0C0C0C0C0C0C03030304B4B4B444444404040343434
            000000000000BFBFBFBFBFBFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CDCD
            CDF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF00000040404000FFFF40404000FFFF000000000099CCFF
            6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF446777347A9711799F03779F0075A7
            0076AF007BB811799F03779F0075A70075A70076AF007BB811799F03779F057B
            AE003B5A003A5EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF5C5C5C6666664B4B4B4040403838380404040000000000000000
            000000000D0D0D2A2A2A3D3D3D4040404040404040402F2F2F000000656565DD
            DDDDF6F6F6FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0D0D0D000000000000000000
            0000000000000000002020203E3E3E4040404040403838380404040000000000
            00000000000000000000000000000000000000C0C0C0CCCCCCF2F2F2FFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF00000000FFFF40404000FFFF404040000000000099CCFF6699FF6699FF6699
            FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF256C8F003E660084CB008CCE0093D20198D3079B
            D40B9CD40D9ED40D9ED40B9ED5069CD60099D4008BCD074968FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5C5C
            5C6767674D4D4D4040404040402C2C2C0707070000000B0B0B2424243737373E
            3E3E4040404040404040403E3E3E242424000000B5B5B5F3F3F3FDFDFDFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF3E3E3E1D1D1D0000000000000000000000001313
            133232323F3F3F4040404040404040402C2C2C04040400000000000000000000
            0000000000000000000000C0C0C0CDCDCDF3F3F3FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000040404000
            FFFF40404000FFFF000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFF
            AAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF014966004A6C0091CF099AD3109BD2119DD2139ED113
            9ED1099AD10091CD00486B1B556FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6161617171716060604D
            4D4D4B4B4B4949494646464343434646464A4A4A4B4B4B4B4B4B4B4B4B4A4A4A
            4848483C3C3C1E1E1E656565F6F6F6FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF5B5B5B6464645454544040404040404040404747474A4A4A4B4B4B4B
            4B4B4B4B4B4B4B4B494949444444404040404040404040404040252525000000
            000000CDCDCDD7D7D7F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFF00FFFF00FFFF00FFFF
            000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAA
            FF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF074D6B004B700095CD0097D00095D10095D1004A6E0C506E
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF7070707F7F7F717171676767656565656565
            6565656565656565656565656565656565656464645F5F5F4F4F4F3939397373
            73F8F8F8FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F7F
            7F7F727272676767656565656565656565656565656565656565656565656565
            656565656565656565656565656565626262535353181818000000F2F2F2F5F5
            F5FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF00000000FFFF00FFFF00FFFF00FFFF000000000099CCFF
            6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF004B70004B70004B70004A6EFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF7979797070706161615C5C5C5B5B5B5B5B5B5B5B5B5B5B5B5B5B
            5B5B5B5B5B5B5B5B5B5B606060757575939393D0D0D0FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7979797070706161615C5C5C
            5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B
            5B5B5B5B5B5B5B5A5A5A5454543D3D3D0B0B0BFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF00000000FFFF00FFFF00FFFF00FFFF000000000099CCFF6699FF6699FF6699
            FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFF00
            FFFF00FFFF00FFFF000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFF
            AAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFF00FFFF00FFFF00FFFF
            000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAA
            FF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF00000000FFFF00FFFF00FFFF00FFFF0000000000000000
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
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000FFFF00FFFF00FFFF00FFFF0000}
          Transparent = True
          OnClick = imgLogoClick
        end
        object lblVersion: TLabel
          Left = 81
          Top = 47
          Width = 136
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = 'version'
          Transparent = True
        end
        object Label11: TLabel
          Tag = 999
          Left = 32
          Top = 68
          Width = 183
          Height = 26
          Alignment = taCenter
          Caption = 
            'Copyright '#169'2001-2005 - Renier Crause'#13#10'FREEWARE and OPEN-SOURCE !' +
            '!'
          Transparent = True
        end
        object GroupBox2: TGroupBox
          Left = 4
          Top = 108
          Width = 467
          Height = 226
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'Translations'
          TabOrder = 0
          DesignSize = (
            467
            226)
          object Label27: TLabel
            Left = 8
            Top = 15
            Width = 314
            Height = 13
            Caption = 
              'Thanks to the following volunteers who helped with the translati' +
              'on:'
          end
          object lvVolunteers: TListView
            Left = 6
            Top = 32
            Width = 443
            Height = 188
            Anchors = [akLeft, akTop, akRight, akBottom]
            Columns = <
              item
                Caption = 'Language'
                Width = 140
              end
              item
                Caption = 'Translator'
                Width = 100
              end>
            HideSelection = False
            Items.ItemData = {
              01F30B00002700000000000000FFFFFFFFFFFFFFFF0100000000000000094100
              6600720069006B00610061006E0073000D520065006E00690065007200200043
              007200610075007300650000000000FFFFFFFFFFFFFFFF010000000000000006
              4100720061006200690063000D410068006D006100640020004D006F00730074
              0061006600610000000000FFFFFFFFFFFFFFFF01000000000000000942007500
              6C00670061007200690061006E00104E0069006B006F006C0061006900200054
              0073007600650074006B006F00760000000000FFFFFFFFFFFFFFFF0100000000
              0000000743006100740061006C0061006E000E58006100760069006500720020
              005300E1006E006300680065007A0000000000FFFFFFFFFFFFFFFF0100000000
              000000074300680069006E006500730065000A590061006E004A0075006E002E
              004C006900750000000000FFFFFFFFFFFFFFFF01000000000000000843007200
              6F0061007400690061006E00154F007A00720065006E0020004E0065006E006F
              0020005000610076006C0069006E006F0076006900630000000000FFFFFFFFFF
              FFFFFF01000000000000000543007A006500630068000C42006F007200690073
              00200046006F0072006D0061006E0000000000FFFFFFFFFFFFFFFF0100000000
              00000006440061006E006900730068000C4B00610061007200650020004A0065
              006E00730065006E0000000000FFFFFFFFFFFFFFFF0100000000000000054400
              750074006300680010510075006F007300650067006F002C0020005000610074
              007200690063006B0000000000FFFFFFFFFFFFFFFF0100000000000000084500
              730074006F006E00690061006E000E54006F006F006D0061007300200054006F
              006D00620065007200670000000000FFFFFFFFFFFFFFFF010000000000000007
              460069006E006E00690073006800094A0061006E00690020005200E400740079
              0000000000FFFFFFFFFFFFFFFF0100000000000000064600720065006E006300
              68000741006E0074006F0069006E00650000000000FFFFFFFFFFFFFFFF010000
              00000000000F4600720065006E006300680020002800430061006E0061006400
              610029000C4200720075006E006F0020004700690072006F0075007800000000
              00FFFFFFFFFFFFFFFF0100000000000000074600720069007300690061006E00
              0C42006500720065006E00640020005900740073006D00610000000000FFFFFF
              FFFFFFFFFF010000000000000008470061006C0069006300690061006E001B4A
              006F007300E900200041006E0074006F006E0069006F00200043006900640072
              0065002000420061007200640065006C00E100730000000000FFFFFFFFFFFFFF
              FF0100000000000000064700650072006D0061006E00364D0069006300680061
              0065006C00200042006100610073002C0020004A006F006300680065006E0020
              005700610063006B006500720073006800610075007300650072002C0020004D
              00690063006800610065006C0020004D006F00740079006C006500770073006B
              00690000000000FFFFFFFFFFFFFFFF0100000000000000054700720065006500
              6B001257006100730069006C006900730020004D0061006E0064007200610074
              007A006900730000000000FFFFFFFFFFFFFFFF01000000000000000648006500
              62007200650077000A41006D0069007200200041006E00610076007900000000
              00FFFFFFFFFFFFFFFF010000000000000009480075006E006700610072006900
              61006E00144A006F007A007300650066002000540061006D0061007300200048
              006500720063007A006500670000000000FFFFFFFFFFFFFFFF01000000000000
              00074900740061006C00690061006E001141006C00690065006E002000700072
              006F00640075006300740069006F006E00730000000000FFFFFFFFFFFFFFFF01
              000000000000000A4C00690074006800750061006E00690061006E00124B0065
              0073007400750074006900730020004300650074007600650072006700610073
              0000000000FFFFFFFFFFFFFFFF0100000000000000094E006F00720077006500
              6700690061006E000D540068006F006D006100730020004D0065006C00620079
              00650000000000FFFFFFFFFFFFFFFF01000000000000000650006F006C006900
              730068001B4A006100630065006B0020004D0069006300680065006C002C0020
              004A0061006B007500620020004700F3007200650063006B00690000000000FF
              FFFFFFFFFFFFFF01000000000000000A50006F00720074007500670075006500
              730065001541006E007400F3006E0069006F0020004100750067007500730074
              006F0020004C006F0070006500730000000000FFFFFFFFFFFFFFFF0100000000
              0000001350006F00720074007500670075006500730065002000280042007200
              61007A0069006C00290023440065006E00690073002C00200041006C00650078
              0020004D0065006E006400650073002C00200052006F0064007200690067006F
              002000520065007A0065006E006400650000000000FFFFFFFFFFFFFFFF010000
              00000000000852006F006D0061006E00690061006E000B500075006900750020
              00540061006E0061007300650000000000FFFFFFFFFFFFFFFF01000000000000
              00075200750073007300690061006E002350006100760065006C00200041002E
              0020004200610075006C0069006E002C00200041006C00650078006500790020
              004B0068006F006D007500740073006B0069007900200000000000FFFFFFFFFF
              FFFFFF0100000000000000075300650072006200690061006E001441006C0065
              006B00730061006E0064006100720020004B006F007600610063006500760069
              00630000000000FFFFFFFFFFFFFFFF01000000000000000653006C006F007600
              61006B001942006F00720069007300200046006F0072006D0061006E002C0020
              004B00610072006F006C00200044006F00760061006C0000000000FFFFFFFFFF
              FFFFFF01000000000000000753006C006F00760065006E006500065300680069
              006E006300610000000000FFFFFFFFFFFFFFFF01000000000000000753007000
              61006E00690073006800204F0072006C0061006E0064006F002000560061006C
              00690065006E00740065002C0020004D0061006E00750065006C002000500065
              0072006900610067006F0000000000FFFFFFFFFFFFFFFF01000000000000000F
              5300700061006E00690073006800200028004300680069006C00650029000D56
              006900630074006F007200200050006100720061006400610000000000FFFFFF
              FFFFFFFFFF01000000000000001A5300700061006E0069007300680020002800
              480069007300700061006E0069006300200041006D0065007200690063006100
              29001541006C0065006A0061006E00640072006F0020004D007500F1006F007A
              0020005500720069006200650000000000FFFFFFFFFFFFFFFF01000000000000
              000753007700650064006900730068001D4D0061007400730020004E0079006D
              0061006E002C002000430068007200690073007400690061006E002000480065
              006400620065007200670000000000FFFFFFFFFFFFFFFF010000000000000006
              540061006900770061006E00084B006F006B006F003500310036003800000000
              00FFFFFFFFFFFFFFFF0100000000000000075400750072006B00690073006800
              184D006500740069006E0020004F007A006D0065006E00650072002C00200045
              007600720065006E00200045004600450000000000FFFFFFFFFFFFFFFF010000
              00000000000855006B00720061006E00690061006E001241006C006500780065
              00790020004B0068006F006D007500740073006B0069007900200000000000FF
              FFFFFFFFFFFFFF010000000000000009560061006C0065006E00630069006100
              6E001153006F006600740077006100720065002000560061006C0065006E0063
              006900E00000000000FFFFFFFFFFFFFFFF010000000000000009410066007200
              69006B00610061006E0073000D520065006E0069006500720020004300720061
              00750073006500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF
              00FF00FF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF
              00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFF}
            ReadOnly = True
            ParentColor = True
            ShowColumnHeaders = False
            TabOrder = 0
            TabStop = False
            ViewStyle = vsReport
            OnChange = lvVolunteersChange
            OnResize = lvVolunteersResize
          end
        end
        object GroupBox5: TGroupBox
          Left = 240
          Top = 4
          Width = 231
          Height = 97
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Contact Info'
          TabOrder = 1
          DesignSize = (
            231
            97)
          object Label12: TLabel
            Left = 38
            Top = 20
            Width = 55
            Height = 13
            Alignment = taRightJustify
            Caption = 'Homepage:'
          end
          object Label18: TLabel
            Left = 21
            Top = 40
            Width = 72
            Height = 13
            Alignment = taRightJustify
            Caption = 'Support Forum:'
          end
          object lblHomepage: TLabel
            Tag = 999
            Left = 96
            Top = 20
            Width = 111
            Height = 13
            Cursor = crHandPoint
            Caption = 'http://www.poptray.org'
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
          object lblForum: TLabel
            Tag = 999
            Left = 96
            Top = 40
            Width = 113
            Height = 13
            Cursor = crHandPoint
            Caption = 'http://forum.poptray.org'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            OnClick = lblForumClick
            OnMouseEnter = lblHomepageMouseEnter
            OnMouseLeave = lblHomepageMouseLeave
          end
          object btnCheckUpdate: TButton
            Left = 7
            Top = 64
            Width = 217
            Height = 25
            Anchors = [akLeft, akTop, akRight]
            Caption = 'Check on-line if newer version available.'
            TabOrder = 0
            OnClick = btnCheckUpdateClick
          end
        end
        object panAboutBottom: TPanel
          Left = 0
          Top = 345
          Width = 477
          Height = 32
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 2
          object btnHelp: TBitBtn
            Left = 8
            Top = 3
            Width = 65
            Height = 25
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
        end
      end
    end
  end
  object AntiFrze: TIdAntiFreeze
    OnlyWhenIdle = False
    Left = 474
    Top = 241
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
    Left = 428
    Top = 68
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
end
