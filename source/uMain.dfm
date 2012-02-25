object frmPopMain: TfrmPopMain
  Left = 340
  Top = 95
  Width = 558
  Height = 415
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
    Width = 542
    Height = 379
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
        Width = 507
        Height = 338
        Align = alClient
        Images = dm.imlTabs
        TabOrder = 0
        OnChange = tabMailChange
        OnChanging = tabMailChanging
        OnDragDrop = tabDragDrop
        OnDragOver = tabMailDragOver
        OnMouseDown = DragMouseDown
        DesignSize = (
          507
          338)
        object MailToolBar: TActionToolBar
          Left = 4
          Top = 6
          Width = 499
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
        object lvMail: TListView
          Left = 4
          Top = 35
          Width = 499
          Height = 280
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
          Top = 315
          Width = 499
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
          Left = 298
          Top = 317
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
        Top = 338
        Width = 515
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
        Height = 338
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
      end
      object panMailRightSpacer: TPanel
        Left = 510
        Top = 0
        Width = 5
        Height = 338
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
        Width = 515
        Height = 371
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 0
        object tabAccounts: TTabControl
          Left = 4
          Top = 35
          Width = 507
          Height = 303
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
            Width = 499
            Height = 293
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
          Top = 338
          Width = 507
          Height = 29
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          DesignSize = (
            507
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
            Left = 316
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
            Left = 438
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
          Width = 507
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
        Top = 339
        Width = 515
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
          Left = 305
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
        Width = 515
        Height = 339
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 4
        ParentBackground = False
        TabOrder = 1
        object spltOptions: TSplitter
          Left = 149
          Top = 4
          Width = 6
          Height = 331
          ResizeStyle = rsUpdate
        end
        object tvOptions: TTreeView
          Left = 4
          Top = 4
          Width = 145
          Height = 331
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
            08000000210000000000000000000000FFFFFFFFFFFFFFFF0000000000000000
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
            FFFFFFFFFF000000000000000008506C75672D496E73}
        end
        object panOptions: TPanel
          Left = 155
          Top = 4
          Width = 356
          Height = 331
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object panOptSpacer: TPanel
            Left = 0
            Top = 30
            Width = 356
            Height = 4
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
          end
          object panOptionsTitle: TPanel
            Left = 0
            Top = 0
            Width = 356
            Height = 30
            Align = alTop
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Color = clWindow
            ParentBackground = False
            TabOrder = 1
            DesignSize = (
              356
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
              Width = 319
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
        Top = 339
        Width = 515
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
        Width = 515
        Height = 339
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 0
        object spltRules: TSplitter
          Left = 104
          Top = 35
          Width = 5
          Height = 300
          ResizeStyle = rsUpdate
        end
        object RulesToolbar: TActionToolBar
          Left = 4
          Top = 4
          Width = 507
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
          Width = 402
          Height = 300
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          TabOrder = 1
          object panRuleDetail: TPanel
            Left = 0
            Top = 0
            Width = 402
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
              Width = 394
              Height = 124
              Align = alTop
              Caption = 'Actions'
              TabOrder = 1
              DesignSize = (
                394
                124)
              object btnEdRuleWav: TSpeedButton
                Left = 352
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
                Left = 377
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
                Left = 375
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
                Width = 115
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
                Width = 140
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
              Width = 394
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
                Width = 390
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
          Height = 300
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          object lstRules: TCheckListBox
            Left = 0
            Top = 0
            Width = 100
            Height = 278
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
            Top = 278
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
        Width = 515
        Height = 371
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          515
          371)
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
            00005A000000010018000000000030DE0000C01E0000C01E0000000000000000
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
            FFFF40404000FFFF002600000099CCFF6699FF6699FF6699FF4466DDFFCCCCFF
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
            FFFFFFFFFFFFFFFFFF00000040404000FFFF40404000FFFF333300000099CCFF
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
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFE
            FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
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
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFD
            FDFDFCFCFCFAFAFAFAFAFAFAFAFAFCFCFCFDFDFDFEFEFEFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFDFDFDFCFCFCFAFAFAF8F8F8F7F7F7F7F7F7F8F8F8FAFAFAFCFCFCFE
            FEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
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
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFCFCFCF8F8F8F4F4F4F1F1F1
            F0F0F0F0F0F0F4F4F4F8F8F8FCFCFCFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFAFAFAF6
            F6F6F1F1F1EDEDEDEBEBEBEBEBEBEDEDEDF0F0F0F5F5F5F9F9F9FCFCFCFEFEFE
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
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
            FFFFFFFFFFFFFFFFFFFDFDFDF9F9F9F3F3F3EBEBEBE5E5E5E2E2E2E3E3E3E9E9
            E9F1F1F1F8F8F8FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFBFBFBF6F6F6EEEEEEE7E7E7E2E2E2
            DEDEDEDCDCDCDFDFDFE3E3E3EAEAEAF1F1F1F8F8F8FCFCFCFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
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
            FFFCFCFCF6F6F6EEEEEEE3E3E3DADADAD5D5D5D4D4D4DCDCDCE9E9E9F4F4F4FC
            FCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFDFDFDF9F9F9F3F3F3EBEBEBE3E3E3DDDDDDD8D8D8D3D3D3D1D1
            D1D4D4D4DBDBDBE6E6E6F1F1F1F9F9F9FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
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
            FFFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF5F5F5EE
            EEEEE4E4E4DADADAD2D2D2CECECED4D4D4E3E3E3EFEFEFFAFAFAFEFEFEFEFEFE
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD
            FDF9F9F9F4F4F4AFAFAFACACACA9A9A9C2C2C2D8D8D8D1D1D1CECECED0D0D0DA
            DADAE8E8E8F4F4F4FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFF40404000FFFF404040
            000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAA
            FF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1818181818181010101818181818
            181818182D2D2D4F44444A4A4A5A5A4A6B6B636B6B636B6B6365625A65625A83
            736B9494949C948C9C948CA7AFADADB5B5A7AFAD999696949494949494898E8E
            898E8E949C9C9996969C9C9C8C7E7E65625A6B6B636B736B6B6B63565A564242
            423131313939392929291821211810101821214A4A4AFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFDFDFDFCFCFCFAFAFAFAFAFAFAFAFA
            FAFAFAFCFCFCFDFDFDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFCFCFCFAFAFAF8F8F8F7F7F7F7F7F7F8
            F8F8F9F9F9FBFBFBFDFDFDFEFEFEFFFFFFFBFBFB000000000000000000000000
            000000CECECED1D1D1DDDDDDEAEAEAF3F3F3F8F8F8F8F8F8FAFAFAFCFCFCFDFD
            FDFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFDFDFDFBFBFBF9F9F9F8F8F8F7F7F7F7
            F7F7F8F8F8FAFAFAFBFBFBFCFCFCFBFBFBFAFAFAFAFAFAFAFAFAFCFCFCFDFDFD
            FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFCFCFCFAFAFAF8F8F8F7F7F7F8F8
            F8F9F9F9FAFAFAFBFBFBFCFCFCFBFBFBFAFAFAFBFBFBFAFAFA91919100000000
            00000000000000000000001F1F1F939393D1D1D1CDCDCDD1D1D1DFDFDFEEEEEE
            F8F8F8FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFCFCFCFBFB
            FBF9F9F9F8F8F8F7F7F7F6F6F6F7F7F7F8F8F8F9F9F9FBFBFBFDFDFDFEFEFEFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF00000040404000FFFF40404000FFFF000000000099CCFF
            6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFF
            FFFFFFFFFFFFFF181818000000565A56565A566365687373736B6B63737B7B94
            9494898E8E9C9C9CB5ADB5A7AFADC6BDBDD6CECECECECEE7E7E7FFF7FFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFEFF7E7CECEEFC6CEC6C6C6B5ADB5B5B5B5A7AFAD9494949C9C9C89
            8E8E7373738C7E7E393939000000565A56FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFEFEFEFCFCFCF9F9F9F5F5F5F2F2F2F0F0F0F0F0F0F1F1F1F5F5F5F9F9
            F9FCFCFCFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
            FEFEFCFCFCF8F8F8F5F5F5F1F1F1EDEDEDEBEBEBEBEBEBECECECEEEEEEF1F1F1
            F6F6F6FBFBFBFDFDFDFBFBFB4E4E4E020202000000000000000000D4D4D4D1D1
            D1D9D9D9E1E1E1E8E8E8ECECECEDEDEDEFEFEFF4F4F4F8F8F8FCFCFCFEFEFEFF
            FFFFFEFEFEFCFCFCF8F8F8F4F4F4F0F0F0ECECECEBEBEBECECECEFEFEFF2F2F2
            F5F5F5F5F5F5F4F4F4F1F1F1F0F0F0F0F0F0F4F4F4F8F8F8FCFCFCFEFEFEFFFF
            FFFEFEFEFCFCFCF9F9F9F5F5F5F0F0F0EDEDEDEBEBEBECECECEEEEEEF0F0F0F2
            F2F2F3F3F3F1F1F1F1F1F1F3F3F3F4F4F49E9E9E2121210D0D0D010101000000
            000000000000000000939393CFCFCFCECECED7D7D7E7E7E7F4F4F4FCFCFCFFFF
            FFFFFFFFFFFFFFFFFFFFFEFEFEFCFCFCF9F9F9F6F6F6F2F2F2EFEFEFEDEDEDEB
            EBEBEAEAEAEAEAEAECECECEEEEEEF2F2F2F6F6F6FAFAFAFCFCFCFEFEFEFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF00000000FFFF40404000FFFF404040000000000099CCFF6699FF6699FF6699
            FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFF00000029
            29295252525252524A4A4A565A56737373737373737B7B949494949494999696
            A5A29E999696B5B5B5DEDEDEDEDEDEE7E7E7EFF7F7EFFFFFEFFFFFFFF7FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFF7F7EFFFFFEFFFFFEFEFEFFF
            C6CEFFC6CEE7B5BD9C9C9C9C9C9C9C9C9C949494999696898E8E737373737373
            6B736B525252181818000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFAFA
            FAF5F5F5EDEDEDE7E7E7E2E2E2E1E1E1E5E5E5EBEBEBF3F3F3FAFAFAFDFDFDFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFBFBFBF6F6F6F1F1F1
            EBEBEBE6E6E6E2E2E2DEDEDEDDDDDDDDDDDDDFDFDFE4E4E4EBEBEBF3F3F3FAFA
            FAFAFAFA606060333333000000000000000000DFDFDFD7D7D7D8D8D8DBDBDBDC
            DCDCDFDFDFDEDEDEE1E1E1E7E7E7EFEFEFF6F6F6FBFBFBFDFDFDFCFCFCF8F8F8
            F1F1F1EBEBEBE4E4E4E0E0E0DDDDDDDEDEDEE2E2E2E8E8E8EDEDEDEEEEEEE9E9
            E9E5E5E5E2E2E2E3E3E3E9E9E9F1F1F1F8F8F8FDFDFDFFFFFFFCFCFCF9F9F9F2
            F2F2ECECECE6E6E6E1E1E1DFDFDFDFDFDFE2E2E2E4E4E4E6E6E6E6E6E6E5E5E5
            E4E4E4E7E7E7ECECEC8C8C8C5555555252525D5D5D5B5B5B1D1D1D0000000000
            001F1F1FD7D7D7CECECED3D3D3E0E0E0EFEFEFFAFAFAFEFEFEFFFFFFFFFFFFFD
            FDFDFAFAFAF6F6F6F1F1F1ECECECE7E7E7E3E3E3E0E0E0DEDEDEDDDDDDDCDCDC
            DDDDDDDFDFDFE4E4E4EAEAEAF1F1F1F7F7F7FCFCFCFEFEFEFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000040404000
            FFFF40404000FFFF000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFF
            AAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFF292929000000000000
            0000000000000000001821215252526B6B636B736B6B6B636B6B636365687373
            737F88839C9C9CB5B5B5ADB5B5ADB5B5B5ADB5ADB5B5C6BDBDCECECECECECEC6
            CECECECECECECECEB5B5B5A7AFADADB5B5B5BDBDA5A29E8C7E7E9473738C7E7E
            6B6B635252524242424242421821210000000000000000000000000000006365
            68FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF8F8F8F0F0F0E6E6E6DD
            DDDDD6D6D6D3D3D3D6D6D6E0E0E0ECECECF6F6F6FCFCFCFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFEFEFEFBFBFBF7F7F7F0F0F0E9E9E9E3E3E3DEDEDEDBDB
            DBD8D8D8D6D6D6D3D3D3D3D3D3D4D4D4DDDDDDE8E8E8F4F4F4F9F9F960606048
            4848000000000000000000E9E9E9E0E0E0DCDCDCD9D9D9D7D7D7D5D5D5D2D2D2
            D3D3D3D8D8D8E2E2E2EEEEEEF6F6F6FAFAFAF9F9F9F3F3F3EBEBEBE3E3E3DDDD
            DDD8D8D8D4D4D4D5D5D5DADADAE1E1E1E7E7E7E7E7E7E0E0E0DADADAD5D5D5D4
            D4D4DCDCDCE9E9E9F4F4F4FCFCFCFDFDFDFAFAFAF4F4F4ECECECE4E4E4DDDDDD
            D9D9D9D8D8D8D8D8D8DBDBDBDEDEDEDFDFDFDDDDDDD9D9D9D8D8D8DADADAE0E0
            E0CDCDCDEAEAEAFBFBFBE9E9E9959595646464151515000000000000878787D2
            D2D2CFCFCFDBDBDBEAEAEAF6F6F6FDFDFDFFFFFFFEFEFEFBFBFBF6F6F6EFEFEF
            E9E9E9E2E2E2DEDEDEDBDBDBD9D9D9D7D7D7D5D5D5D3D3D3D2D2D2D2D2D2D4D4
            D4DBDBDBE4E4E4EEEEEEF6F6F6FCFCFCFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFF40404000FFFF404040
            000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAA
            FF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2929294A4A4A4A4A4A4242424242
            426365689996961821211818181818180810100810100808080008081821212D
            2D2D292929212929212929292929313939424A4A424242424242424A4A424242
            3131312129292929292929291821210008080810101010101821215252529996
            969996969494943939394242424242423535314A4A4AFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFDFDFDF7F7F7F0F0F0E7E7E7DEDEDED6D6D6CFCFCF
            CFCFCFD7D7D7E7E7E7F3F3F3FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFCFCFCF8F8F8F1F1F1EBEBEBE6E6E6D4D4D4A6A6A6A6A6A6A5A5A5DEDEDED9
            D9D9D3D3D3CFCFCFD3D3D3DFDFDFEDEDEDF6F6F6606060484848000000000000
            000000E8E8E8EAEAEAC8C8C8A6A6A6A4A4A4DBDBDBD3D3D3CECECECECECED6D6
            D6E4E4E4F1F1F1F8F8F8F6F6F6F2F2F2DBDBDBA9A9A9A6A6A6A1A1A1BBBBBBD8
            D8D8DDDDDDE3E3E3E9E9E9E8E8E8E1E1E1DADADAD2D2D2CECECED4D4D4E3E3E3
            F1F1F1FAFAFAFDFDFDF8F8F8F1F1F1EAEAEAB7B7B7A5A5A5A2A2A2CDCDCDDDDD
            DDDFDFDFE2E2E2E1E1E1DEDEDED9D9D9D5D5D5D4D4D4D9D9D9E6E6E6F3F3F3FA
            FAFAFDFDFDCBCBCB6D6D6D2E2E2E0000000000003E3E3ED8D8D8D0D0D0D6D6D6
            E5E5E5F2F2F2FCFCFCFEFEFEFCFCFCF7F7F7F1F1F1EAEAEAE6E6E6E4E4E4C5C5
            C5A6A6A6A6A6A6A6A6A6B3B3B3DCDCDCD6D6D6D0D0D0CDCDCDCFCFCFD7D7D7E3
            E3E3EEEEEEF8F8F8FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF00000040404000FFFF40404000FFFF000000000099CCFF
            6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF153847174357183F4F193C4C18465A1947590F3C5008374D083E55
            083E55083E55083A520B384D0B364C0A3043092C3E0928360A253109212B0D24
            2E1228320E212913222A16242B16242CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFCFCFC424242000000000000000000000000393939CFCFCFD5D5D5E4E4
            E4F1F1F1FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFAFAFAF5F5F5EF
            EFEF8E8E8E1F1F1F0000000000000000000000000000003E3E3EA4A4A4D5D5D5
            D2D2D2D9D9D9E7E7E7F3F3F36060604848480000000000000000009B9B9B1F1F
            1F000000000000000000101010777777D4D4D4CDCDCDCFCFCFDCDCDCECECECF4
            F4F4F5F5F5717171000000000000000000000000000000000000E6E6E6EBEBEB
            000000000000000000000000000000CFCFCFD2D2D2E0E0E0F0F0F0FBFBFBFDFD
            FDF8F8F88282821010100000000000000000000000003E3E3EACACACCECECE00
            0000000000000000000000555555D6D6D6E2E2E2F0F0F0F8F8F8FBFBFBB6B6B6
            3434342A2A2A000000000000000000C1C1C1D1D1D1D2D2D2DFDFDFEEEEEEF9F9
            F9FDFDFDFAFAFAF5F5F5EFEFEF8E8E8E30303000000000000000000000000000
            00000000000000004D4D4DA1A1A1D3D3D3CCCCCCCECECED8D8D8E5E5E5F2F2F2
            FAFAFAFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF00000000FFFF40404000FFFF404040000000000099CCFF6699FF6699FF6699
            FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF133847
            3AA8D43EB2E442BAF03FB8EF3DB8EE39B7EF35B5F031B3EF2BB2EF38B5EC42B7
            EA3DB6EB3EB6EC3BB4ED3BB6EC3BB7ED37B5EE36B6EF36B6EF32B5F128B5F33E
            A3CC3EA3CC102228FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD7C7C
            7C0202020000000000000000003B3B3BD2D2D2D4D4D4E1E1E1EFEFEFF8F8F8FD
            FDFDFDFDFDFEFEFEFFFFFFFFFFFFFDFDFDF9F9F9E4E4E4303030000000000000
            0000000000000000000101010000000000000000005A5A5ADADADADADADAE4E4
            E4F1F1F160606048484804040400000000000000000005050509090900000000
            00000000000000003C3C3CD3D3D3CFCFCFD8D8D8E9E9E9F3F3F39494940E0E0E
            0000000000000000000000000000002F2F2FEEEEEEF3F3F34E4E4E0202020000
            00000000000000D3D3D3D2D2D2E0E0E0EFEFEFFAFAFAFCFCFC8A8A8A00000000
            0000000000000000000000101010000000000000303030000000000000000000
            000000919191D5D5D5E0E0E0EEEEEEF7F7F7F9F9F97272721919192020200000
            000000000000007B7B7BD6D6D6D1D1D1DADADAE9E9E9F6F6F6FBFBFBF9F9F9E4
            E4E4303030000000000000000000000000000000000000000000000000000000
            0000000000005A5A5AD3D3D3CBCBCBD0D0D0DDDDDDECECECF7F7F7FDFDFDFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000040404000
            FFFF40404000FFFF000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFF
            AAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF12516D3CA2D0349ECC3EAD
            DD46B7EA45B7E944B7EA43B8EC42B7ED3FB7ED4BB9E956BBE855BBEB54BBEB54
            BBEA53BAEB53BBEC54BDEC55BEEE58C2F24BB9EA2FA3D53EA3CC32B4ED122830
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD89898933333303030300
            00000000003E3E3ED7D7D7D4D4D4DDDDDDE7E7E7EFEFEFF4F4F4F6F6F6F8F8F8
            FAFAFAFCFCFCFBFBFBF8F8F86464640101010000000000000000001C1C1C4949
            495D5D5D5252520404040000000000007B7B7BE0E0E0E6E6E6F1F1F160606048
            48481212120000000000000000001F1F1F6161615B5B5B1D1D1D000000000000
            000000868686D3D3D3D9D9D9E8E8E8F3F3F35E5E5E1717170000000000000000
            001C1C1C373737404040F3F3F3F8F8F8606060333333000000000000000000D9
            D9D9D4D4D4E0E0E0EFEFEFFAFAFAFDFDFD5151510D0D0D000000000000000000
            3E3E3E9C9C9C9292924747474A4A4A252525000000000000000000A4A4A4D8D8
            D8E1E1E1EEEEEEF6F6F6DEDEDE3434342424242222220000000000000000001F
            1F1FDCDCDCD2D2D2D6D6D6E5E5E5F4F4F4F9F9F9F7F7F7575757000000000000
            0000000000001212121F1F1F1F1F1F2525252B2B2B0000000000000000000000
            00777777D1D1D1CECECED6D6D6E6E6E6F4F4F4FCFCFCFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFF40404000FFFF404040
            000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAA
            FF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF12475F4BB5E63EA7D63EA1CC48AEDA51BAE955
            BDEE54BAEA55BAE855BAE755BAE854B9E853BAE753BAE754BAE753B9E854BAE9
            54BBE958C1EF51B8E441A9D43AA8D638BFF932B4ED091C25FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFDFDFD8989894848482828280000000000003E3E3E
            DDDDDDD6D6D6D9D9D9DEDEDEE4E4E4E7E7E7E9E9E9ECECECF2F2F2F7F7F7F9F9
            F9A8A8A8272727171717000000000000101010B4B4B4F3F3F3C1C1C170707041
            4141000000000000000000CACACAEAEAEAF1F1F1606060484848181818000000
            0000002F2F2FD1D1D1E9E9E9ADADAD6464642828280000000000001F1F1FDADA
            DADBDBDBE9E9E9F3F3F35555552F2F2F000000000000000000BBBBBBEBEBEBC5
            C5C5F6F6F6FAFAFA606060484848000000000000000000DDDDDDD5D5D5DFDFDF
            EEEEEEF9F9F9FDFDFD585858373737161616000000000000DDDDDDEDEDEDEEEE
            EEC1C1C16D6D6D484848000000000000000000A7A7A7DBDBDBE3E3E3EEEEEEF5
            F5F58D8D8D2424242323231A1A1A222222101010000000000000B6B6B6D5D5D5
            D4D4D4E1E1E1F0F0F0F7F7F7A8A8A82727271D1D1D0000000000000000001616
            163E3E3E4949496161616B6B6B4040400F0F0F000000000000000000BCBCBCCF
            CFCFD3D3D3E2E2E2F1F1F1FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF00000040404000FFFF40404000FFFF000000000099CCFF
            6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF124F6A48B1E147B5E846AEDD3C9DC546AAD555BBE85AC0EE56BCEA
            55BBEA53BBEA51BBE950BAE850B9E850B9E851BBE952BEEA56C1EE53BDED43A8
            D43EA3CC4CBDEE48C9FF32B4ED071E28FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFDFDFD8989894848482828280000000000003E3E3EE5E5E5DADADAD6D6
            D6D6D6D6D8D8D8D8D8D8DADADADEDEDEE6E6E6F0F0F0F5F5F565656519191905
            05050000000000009C9C9CEEEEEEF4F4F4F8F8F8B3B3B3676767161616000000
            0000007D7D7DEDEDEDF0F0F06060604848480606060000000000009C9C9CEFEF
            EFF4F4F4EFEFEF6D6D6D3A3A3A000000000000000000D1D1D1DFDFDFEAEAEAF4
            F4F4606060454545000000000000000000EBEBEBE6E6E6ECECECF5F5F5FAFAFA
            606060484848000000000000000000DFDFDFD5D5D5DBDBDBEAEAEAF5F5F5FCFC
            FC8989896D6D6D3030300000000000008F8F8FEEEEEEEFEFEFEFEFEF7D7D7D48
            4848000000000000000000A9A9A9DEDEDEE5E5E5EFEFEFF5F5F5585858292929
            0101010000005959595F5F5F0000000000005E5E5EDADADAD4D4D4DEDEDEEDED
            EDF6F6F65757571919191F1F1F0000000000000000007E7E7EE5E5E5F7F7F7E7
            E7E7A6A6A66D6D6D4040400000000000000000006A6A6AD3D3D3D3D3D3E1E1E1
            EEEEEEFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF00000000FFFF40404000FFFF404040000000000099CCFF6699FF6699FF6699
            FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF125170
            4DB7E646B9ED4CB9EC4DB4E544A1CA46A6D051BAE855C0EE54BEEB54BFEC53BF
            ED51BCEB51BCEA54BEEB59C2ED5DC5EE5EC5ED45A8D343A5D254BCEA4FBFF04B
            C7FD32B4ED082434FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD8989
            894848482828280000000000003E3E3EE8E8E8E4E4E4DDDDDDD9D9D9D6D6D6D4
            D4D4D1D1D1D3D3D3DBDBDBE7E7E7F2F2F25555552F2F2F000000000000000000
            DADADAE9E9E9EEEEEEF6F6F6CCCCCC6C6C6C2E2E2E0000000000003E3E3EEDED
            EDF1F1F1606060484848000000000000000000EAEAEAECECECF1F1F1F7F7F788
            8888454545000000000000000000A8A8A8E3E3E3ECECECF5F5F5606060484848
            000000000000000000E7E7E7E0E0E0E7E7E7F1F1F1F8F8F86060604848480000
            00000000000000E2E2E2D5D5D5D6D6D6E1E1E1EDEDEDF6F6F6D0D0D07C7C7C5B
            5B5B060606000000000000303030707070AFAFAF6666663D3D3D000000000000
            000000AAAAAAE1E1E1E8E8E8F0F0F0A6A6A63030301E1E1E0000000000009A9A
            9A6D6D6D1C1C1C000000101010E0E0E0D7D7D7DDDDDDEBEBEBF5F5F55555552F
            2F2F1010100000000000005E5E5EEEEEEEEEEEEEF4F4F4FBFBFBFDFDFD8A8A8A
            6464643939390000000000002F2F2FD7D7D7D4D4D4E0E0E0EEEEEEF9F9F9FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000040404000
            FFFF40404000FFFF000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFF
            AAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1154744FB7E844B8ED4EBC
            EC51BBEB54BCEC48A7D143A4CB4EBCE751BFEC55C7F557CAF75AC9F360CFF663
            D0F768D5FA60CCF046AAD444A9D650B7E655BEEE50BDEF4FC5F932B4ED052738
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD89898948484828282800
            00000000001F1F1F7C7C7C7C7C7C7D7D7D7C7C7C898989B2B2B2D6D6D6D3D3D3
            D6D6D6E1E1E1EEEEEE606060454545000000000000000000EAEAEAE4E4E4E8E8
            E8F0F0F0CBCBCB6060603737370000000000003F3F3FEEEEEEF2F2F260606048
            4848000000000000000000E9E9E9E7E7E7ECECECF4F4F4878787484848000000
            000000000000AAAAAAE7E7E7EFEFEFF6F6F66060604848480000000000000000
            00E5E5E5DCDCDCE1E1E1ECECECF5F5F5606060484848000000000000000000C9
            C9C9D8D8D8D3D3D3D9D9D9E3E3E3EEEEEEF6F6F6D8D8D8929292434343383838
            424242191919000000000000232323393939000000000000000000ABABABE5E5
            E5EBEBEBF2F2F25757571C1C1C0000000000004F4F4FEFEFEF6C6C6C2F2F2F00
            00000000008B8B8BDBDBDBDDDDDDEAEAEACDCDCD606060454545040404000000
            000000ACACACE5E5E5E7E7E7F1F1F1FAFAFAFDFDFDB7B7B75E5E5E4444440000
            00000000000000DBDBDBD6D6D6E0E0E0EEEEEEF9F9F9FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFF40404000FFFF404040
            000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAA
            FF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF11557852B9E842B6EA53BCEA55BDEB54BDED4F
            BCF03BA9DD2C9CCC42B8E848CBFC4CD3FF55D7FF54D6FF62E1FF55D0F637ADE1
            31A2D83EAFE54DBBEF51BBEB50BEED50C7F737B8EF0A3042FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFDFDFD8989894848482B2B2B000000000000000000
            0000000000000000000000000000000000001F1F1FA3A3A3DBDBDBE1E1E1EDED
            ED6262624E4E4E171717000000000000DADADAE6E6E6E6E6E6EDEDEDBFBFBF40
            40403232320000000000003F3F3FF1F1F1F4F4F4606060484848000000000000
            000000E9E9E9E8E8E8EBEBEBF0F0F0868686494949010101000000000000ACAC
            ACEBEBEBF1F1F1F6F6F6606060484848000000000000000000E7E7E7DCDCDCDE
            DEDEE7E7E7F2F2F26060604848480000000000000000008B8B8BE0E0E0D5D5D5
            D4D4D4D9D9D9E4E4E4EEEEEEF5F5F5F7F7F7E8E8E8C1C1C1A4A4A48888884444
            444F4F4F5E5E5E474747000000000000000000ADADADE9E9E9EFEFEFCDCDCD27
            27271919190000000000008E8E8EF1F1F1A1A1A15F5F5F0000000000004F4F4F
            E2E2E2DFDFDFE9E9E9CDCDCD606060484848000000000000000000ACACACDEDE
            DEE3E3E3EFEFEFF9F9F9FDFDFDADADAD525252484848000000000000000000DD
            DDDDD6D6D6E0E0E0EEEEEEF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF00000040404000FFFF40404000FFFF000000000099CCFF
            6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF11567754BAE93BB3EA4EBAEA4EBBEB49BAEC3DBAF432B1EC3AA3D0
            5B9BB28DAAAE80BBCB4FBEE157C0DE5BC1E486AFBD8C9DA438A5DB2AB1F23CB8
            F248B9ED4ABEF150C5F839B7EF093246FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFDFDFD8989894848483535350000000000000000000000000000000101
            01000000000000000000000000000000A7A7A7E2E2E2EBEBEBA1A1A16D6D6D2B
            2B2B0000000000009D9D9DEBEBEBECECECEDEDED8989892222220D0D0D000000
            000000808080F4F4F4F7F7F76060604848480000000000000000009C9C9CEBEB
            EBEDEDEDE1E1E13434343C3C3C000000000000000000EDEDEDEFEFEFF5F5F5F6
            F6F63434343D3D3D000000000000000000E8E8E8E2E2E2E0E0E0E7E7E7F1F1F1
            6060604848480404040000000000002F2F2FDADADAE0E0E0D9D9D9D9D9D9DFDF
            DFEAEAEAE3E3E3B4B4B4B3B3B38181819F9F9FEDEDEDEDEDEDD1D1D17E7E7E4C
            4C4C010101000000000000AFAFAFEEEEEEF4F4F47E7E7E1C1C1C060606000000
            000000DEDEDEF3F3F3C4C4C46D6D6D1C1C1C000000000000CBCBCBE5E5E5EBEB
            EBCDCDCD606060484848000000000000000000A9A9A9DADADAE0E0E0EDEDEDF9
            F9F9FDFDFDADADAD525252484848000000000000000000DEDEDED7D7D7E0E0E0
            EEEEEEF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF00000000FFFF40404000FFFF404040000000000099CCFF6699FF6699FF6699
            FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF115371
            53BCE931B1E945B7EA42B7EC33B5F11DA2E171ABC3F2D4B7FEF0C6FFFBD5FFEE
            D0FFE1C0FFE0BEFFE4BFFFF3C5FBEDC3E3C7AF6AA8C31EA8E830B9F83CBCF350
            CAFA3DBCF1093246FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD8989
            894848483A3A3A0000000000000000001A1A1A4949495D5D5D5B5B5B33333300
            00000000000000001F1F1FE7E7E7EAEAEAC1C1C16D6D6D343434000000000000
            101010AFAFAFEDEDED9E9E9E1D1D1D212121000000000000000000D3D3D3F5F5
            F5F9F9F96060604848480404040000000000002F2F2FCDCDCDDEDEDE5F5F5F0E
            0E0E191919000000000000505050F0F0F0F3F3F3747474424242030303202020
            0000000000000000003E3E3E3E3E3E6C6C6CEAEAEAF3F3F36060604848481313
            130000000000000000002020203F3F3F0F0F0FE0E0E0E3E3E39D9D9D00000000
            0000000000000000101010AEAEAEEDEDEDCECECE4040403C3C3C000000000000
            000000D1D1D1F2F2F2EBEBEB4A4A4A2929290000000000004F4F4FF1F1F1F4F4
            F4EFEFEF6262622F2F2F0000000000007F7F7FEBEBEBEFEFEFCDCDCD60606048
            4848000000000000000000A7A7A7D8D8D8DFDFDFEDEDEDF9F9F9FDFDFDADADAD
            525252484848000000000000000000DEDEDED7D7D7E1E1E1EEEEEEF9F9F9FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000040404000
            FFFF40404000FFFF000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFF
            AAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F51714EB9E922ADEB31B3
            EE2CAFEB339DCEABBABDFFEACBFFFCDFFFFBDFFFF3DEFFEEDDFFF2DCFFF5D8FF
            F5D5FFF3D2FFF4CFFFF6CDFFE2B6A7B7B42CA1D629B3F247CBFF3FBFF4093145
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD8989894848482E2E2E00
            00000000002E2E2EACACACBFBFBFBDBDBD8C8C8C6E6E6E3B3B3B000000000000
            000000ABABABE7E7E7F0F0F09999995F5F5F2222220000000000000000000000
            000000000000001C1C1C0C0C0C000000717171F3F3F3F7F7F7FBFBFB60606049
            49491C1C1C0000000000000000000000000000000000000B0B0B0A0A0A000000
            000000B1B1B1F3F3F3F7F7F77676761010100B0B0B2525250000000000000000
            000000000000003F3F3FEDEDEDF3F3F36060604949492B2B2B00000000000000
            00000000000000000000008C8C8CE8E8E8E4E4E47070703E3E3E040404000000
            000000000000000000000000040404212121000000000000202020F3F3F3F5F5
            F59B9B9B2F2F2F242424000000000000818181EFEFEFF4F4F4F9F9F98E8E8E54
            5454000000000000303030F0F0F0F2F2F2CBCBCB606060484848000000000000
            000000A7A7A7D8D8D8DFDFDFEDEDEDF8F8F8FDFDFDADADAD5252524848480000
            00000000000000DFDFDFD7D7D7E1E1E1EEEEEEF9F9F9FFFFFFFFFFFFFFFFFFFD
            FDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFF40404000FFFF404040
            000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAA
            FF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF0A3E564AB9EC04A7EF2CA7DF6EA8C5E2D9D0FF
            FDE8FFFFF1FFF9E5FFF3E0F9EEE1F6EDE0FAECDCF8EBDCF9EDDBFCEFD8FFF0D6
            FEF0D3FFF8D3FFF0C4E3CDB674AABE4AC6F12FC1FB0A3246FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFDFDFD8989894848482828280000000000003E3E3E
            EAEAEAEDEDEDF1F1F1E1E1E16D6D6D4848480000000000000000007D7D7DE5E5
            E5ECECECEDEDED8989896464644E4E4E0808080000000000000A0A0A1C1C1C0A
            0A0A0D0D0D666666F4F4F4F7F7F7FAFAFAFCFCFC6363634747473B3B3B1E1E1E
            2121212222223D3D3D131313232323222222090909000000626262F4F4F4F7F7
            F7FAFAFA8A8A8A3838384040404E4E4E1111110000000000000D0D0D0000003F
            3F3FF0F0F0F5F5F56363634747473B3B3B1E1E1E3131313C3C3C585858070707
            000000303030F0F0F0F3F3F3C5C5C57979795A5A5A1A1A1A0101010000000000
            000A0A0A232323222222000000000000A4A4A4F6F6F6F8F8F85454542828282B
            2B2B000000000000D2D2D2F3F3F3F7F7F7FBFBFBBDBDBD686868252525000000
            000000C4C4C4F7F7F7C9C9C9606060484848000000000000000000A7A7A7D8D8
            D8DFDFDFEDEDEDF8F8F8FDFDFDADADAD525252484848000000000000000000DF
            DFDFD7D7D7E1E1E1EEEEEEF9F9F9FFFFFFFFFFFFFFFFFFF9F9F9FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF00000040404000FFFF40404000FFFF000000000099CCFF
            6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF040F162DB0EB2DB0EBABBDBBFFFFECFFFFF5FFFCF2FDF6EEF8F1ED
            F5EEE8F7F0E9FAF2E8FCF1E3FEF1E2FFF0E2FFF3E2FFF7E0FFF9DCFFFCD9FFFF
            D7FFFED1FFF5C4C7CBB955ABD1063045FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFDFDFD8989894848482828280000000000003E3E3EE9E9E9EBEBEBEDED
            EDEEEEEE5555554848480000000000000000007D7D7DE4E4E4EBEBEBF4F4F4FB
            FBFBC3C3C38A8A8A4E4E4E4949494949494949493F3F3F414141ACACACF7F7F7
            F9F9F9FBFBFBFDFDFDFEFEFE7373735252524949493F3F3F515151D6D6D69393
            934E4E4E4949493F3F3F2B2B2B8D8D8DF7F7F7F8F8F8FBFBFBFDFDFD98989867
            67676D6D6D5C5C5C1919190000000000001A1A1A3737373F3F3FF1F1F1F7F7F7
            7373735252524949493F3F3F515151D6D6D6767676434343343434212121D5D5
            D5F8F8F8FBFBFBDADADA9D9D9D4E4E4E4949494949494949494949494949493F
            3F3F505050B6B6B6F8F8F8FAFAFACCCCCC6A6A6A4F4F4F4E4E4E373737323232
            F7F7F7F8F8F8FAFAFAFDFDFDE1E1E1717171525252373737000000747474FAFA
            FACCCCCC606060484848000000000000000000A7A7A7D8D8D8DFDFDFEDEDEDF8
            F8F8FDFDFDADADAD525252484848000000000000000000DFDFDFD7D7D7E1E1E1
            EEEEEEF9F9F9FFFFFFFFFFFFFFFFFFF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF00000000FFFF40404000FFFF404040000000000099CCFF6699FF6699FF6699
            FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0B2B39
            2073B2918F7EFFFFFEFFFFFEFFFFF9FFFBEFFCF5ECF5F2EEF5F3EEFBFBF6FFFF
            FAFFFFF3FFFFEFFFFFEBFFFFEAFFFFE5FFFFDDFFFCD4FFF5CAFFEBC1FFE2BBFF
            D5A6889C9A000507FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD8989
            894848482828280000000000003E3E3EE9E9E9EAEAEAEBEBEB7E7E7E2E2E2E3D
            3D3D0000000000000000007C7C7CE5E5E5ECECECF5F5F5FCFCFCFEFEFEFEFEFE
            F2F2F2CDCDCDCDCDCDCCCCCCFBFBFBFBFBFBFBFBFBFCFCFCFDFDFDFEFEFEFFFF
            FFFFFFFFFEFEFEFEFEFEFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDE5E5E5CDCDCDCC
            CCCCFBFBFBFBFBFBFCFCFCFDFDFDFEFEFEFEFEFEFFFFFFFEFEFE6D6D6D515151
            101010000000000000EFEFEFECECECEDEDEDF3F3F3F9F9F9FDFDFDFDFDFDFDFD
            FDFDFDFDFDFDFDFDFDFDFDFDFDCCCCCCD8D8D8FBFBFBFBFBFBFBFBFBFDFDFDFE
            FEFEFEFEFEFEFEFED9D9D9CDCDCDCCCCCCCCCCCCD7D7D7FBFBFBFBFBFBFBFBFB
            FCFCFCFEFEFEFEFEFEFEFEFEFDFDFDFDFDFDFCFCFCFCFCFCFBFBFBFDFDFDFDFD
            FDFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFCFCFCFCFCFCFCFCFCD2D2D260606048
            4848000000000000000000A9A9A9DADADAE0E0E0EDEDEDF8F8F8FDFDFDADADAD
            525252484848000000000000000000E1E1E1DADADAE2E2E2EFEFEFFAFAFAFFFF
            FFFFFFFFFFFFFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000040404000
            FFFF40404000FFFF000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFF
            AAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF196487196487B69B7BFFFF
            FFFFFFFFFFFFFFFFFFF9FFFFF0FFFFEAFFFFDEFFFFEFFFFFFCFFFFF3FFFFEFFF
            FFEBFFFFEAFFFFE5FFFFDDFFFCD4FFF5CAFFEBC1FFE2BBEBC198D4874FFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE8A8A8A4848482B2B2B00
            00000000001010103F3F3F3F3F3F1F1F1F000000010101252525000000000000
            000000BBBBBBE9E9E9F0F0F0F8F8F8FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFE
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE6363634B4B4B2A2A2A0000000000
            00F0F0F0EBEBEBEEEEEEF5F5F5FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D4D4606060484848000000000000
            000000A9A9A9DFDFDFE5E5E5F0F0F0FAFAFAFDFDFDADADAD5252524848480000
            00000000000000E3E3E3DEDEDEE6E6E6F1F1F1FAFAFAFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFF40404000FFFF404040
            000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAA
            FF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8916FB8916FA48164BC9A7EED
            CC98FFE59FFFDE9DFFDE9DFFDE9DFFE7A0F2D296FFE59FFFDE9DFFDE9DFFDE9D
            FFDE9DFFE7A0FFE7A0F2D296AD8E7167675C365A53FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFDFDFD8A8A8A4949493737370D0D0D000000000000
            000000000000000000000000030303191919101010000000414141EDEDEDF0F0
            F0F6F6F6FAFAFAFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFEFEFEABABAB676767595959000000000000F1F1F1EEEEEEF2
            F2F2F7F7F7FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFEFEFED3D3D36060604949490B0B0B000000000000ACACACE4E4
            E4EAEAEAF4F4F4FAFAFAFDFDFDADADAD5252524949490B0B0B000000000000E7
            E7E7E5E5E5ECECECF5F5F5FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF00000040404000FFFF40404000FFFF000000000099CCFF
            6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF446777347A9711799F03779F0075A7
            0076AF007BB811799F03779F0075A70075A70076AF007BB811799F03779F057B
            AE003B5A003A5EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFEFEFE8C8C8C4747473F3F3F3434342727271D1D1D1F1F1F1F1F1F1F1F
            1F2525251F1F1F090909090909262626C3C3C3F4F4F4F7F7F7FAFAFAFDFDFDFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFEFEFED7D7D7939393494949000000F5F5F5F4F4F4F7F7F7FAFAFAFDFDFD
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFD4D4D4636363474747282828000000000000B0B0B0EEEEEEF2F2F2F7F7F7FD
            FDFDFEFEFEADADAD555555474747282828000000000000EFEFEFEEEEEEF3F3F3
            F8F8F8FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF00000000FFFF40404000FFFF404040000000000099CCFF6699FF6699FF6699
            FF4466DDFFCCCCFFAAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF256C8F003E660084CB008CCE0093D20198D3079B
            D40B9CD40D9ED40D9ED40B9ED5069CD60099D4008BCD074968FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE9898
            985252524949494949494949494949494949494949494949494949493F3F3F57
            57578E8E8EE8E8E8F9F9F9FAFAFAFCFCFCFDFDFDFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FEFEFED5D5D5515151FBFBFBFAFAFAFBFBFBFDFDFDFEFEFEFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D773737352
            5252494949373737000000B4B4B4F6F6F6F8F8F8FBFBFBFDFDFDFEFEFEB7B7B7
            6B6B6B525252494949373737000000F5F5F5F6F6F6F9F9F9FCFCFCFEFEFEFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000040404000
            FFFF40404000FFFF000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFF
            AAAAFFAAAAFFAAAAFF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF014966004A6C0091CF099AD3109BD2119DD2139ED113
            9ED1099AD10091CD00486B1B556FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFD
            FDFDFDFDFDFDFDFDFDFDFDFDFDFDFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
            FDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
            FEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFDFDFDFDFDFDFCFCFC
            FCFCFCFBFBFBFCFCFCFCFCFCFEFEFEFFFFFFFFFFFFFFFFFFFEFEFEFDFDFDFDFD
            FDFCFCFCFCFCFCFBFBFBFCFCFCFDFDFDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFF00FFFF00FFFF00FFFF
            000000000099CCFF6699FF6699FF6699FF4466DDFFCCCCFFAAAAFFAAAAFFAAAA
            FF7777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF074D6B004B700095CD0097D00095D10095D1004A6E0C506E
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
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
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
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
          Width = 172
          Height = 26
          Alignment = taCenter
          Caption = 
            'Copyright '#169'2001-2005 - Renier Crause'#13#10'FREEWARE and OPEN-SOURCE !' +
            '!'
          Transparent = True
        end
        object GroupBox2: TGroupBox
          Left = 4
          Top = 192
          Width = 510
          Height = 140
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'Translations'
          TabOrder = 0
          DesignSize = (
            510
            140)
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
            Width = 486
            Height = 102
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
          Left = 232
          Top = 4
          Width = 281
          Height = 97
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Contact Info'
          TabOrder = 1
          DesignSize = (
            281
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
            Width = 267
            Height = 25
            Anchors = [akLeft, akTop, akRight]
            Caption = 'Check on-line if newer version available.'
            TabOrder = 0
            OnClick = btnCheckUpdateClick
          end
        end
        object panAboutBottom: TPanel
          Left = 0
          Top = 339
          Width = 515
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
