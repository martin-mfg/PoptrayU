object frmPopUMain: TfrmPopUMain
  Left = 243
  Top = 258
  Caption = 'PopTrayU'
  ClientHeight = 379
  ClientWidth = 576
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
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl: TPageControl
    Left = 0
    Top = 0
    Width = 576
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
      object mailPanel1: TPanel
        Left = 0
        Top = 0
        Width = 549
        Height = 371
        Margins.Left = 5
        Margins.Right = 5
        Align = alClient
        BevelOuter = bvNone
        Padding.Left = 5
        Padding.Right = 5
        ParentBackground = False
        TabOrder = 0
        StyleElements = [seFont, seClient]
        DesignSize = (
          549
          371)
        object tabMail: TTabControl
          Left = 5
          Top = 0
          Width = 539
          Height = 338
          Align = alClient
          Images = dm.imlTabs
          TabOrder = 0
          OnChange = tabMailChange
          OnChanging = tabMailChanging
          OnDragDrop = tabDragDrop
          OnDragOver = tabMailDragOver
          OnMouseDown = DragMouseDown
          object lvMail: TListView
            Left = 4
            Top = 70
            Width = 531
            Height = 245
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
            TabOrder = 0
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
          object MailToolBar: TActionToolBar
            Left = 4
            Top = 6
            Width = 531
            Height = 64
            ActionManager = ActionManager
            AllowHiding = False
            Caption = 'Mail'
            Color = clWindow
            ColorMap = WindowBgColorMap
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            HorzMargin = 4
            HorzSeparator = False
            ParentFont = False
            ParentShowHint = False
            PopupMenu = dm.mnuToolbar
            ShowHint = True
            Spacing = 4
            VertMargin = 4
            OnGetControlClass = MailToolBarGetControlClass
          end
          object StatusBar: TStatusBar
            Left = 4
            Top = 315
            Width = 531
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
            ParentColor = True
            ParentFont = True
            ParentShowHint = False
            ShowHint = True
            SizeGrip = False
            UseSystemFont = False
            OnDrawPanel = StatusBarDrawPanel
            OnResize = StatusBarResize
          end
        end
        object panMailButtons: TPanel
          Left = 5
          Top = 338
          Width = 539
          Height = 33
          Align = alBottom
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 1
          OnResize = panMailButtonsResize
          object btnStartProgram: TBitBtn
            Left = 16
            Top = 4
            Width = 161
            Height = 25
            Action = actStartProgram
            Caption = 'Run &E-Mail Client'
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
            TabOrder = 0
          end
          object btnCheckAll: TPngBitBtn
            Left = 183
            Top = 4
            Width = 185
            Height = 25
            Action = actCheckAll
            Caption = 'Check &All'
            TabOrder = 1
            PngImage.Data = {
              89504E470D0A1A0A0000000D49484452000000100000000E0806000000262F9C
              8A000000097048597300000B1300000B1301009A9C1800000A39694343505068
              6F746F73686F70204943432070726F66696C65000078DA9D96775454D71687CF
              BD777AA1CD30025286DEBBC000D27B935E456198196028030E3334B121A20211
              45449A224850C480D150245644B1101454B007240828311845542C6F46D68BAE
              ACBCF7F2F2FBE3AC6FEDB3F7B9FBECBDCF5A170092A72F9797064B0190CA13F0
              833C9CE911915174EC0080011E608029004C5646BA5FB07B0810C9CBCD859E21
              72025F0401F07A58BC0270D3D033804E07FF9FA459E97C81E89800119BB33919
              2C11178838254B902EB6CF8A981A972C66182566BE284111CB893961910D3EFB
              2CB2A398D9A93CB688C539A7B353D962EE15F1B64C2147C488AF880B33B99C2C
              11DF12B1468A30952BE237E2D8540E33030014496C1770588922361131891F12
              E422E2E500E048095F71DC572CE0640BC49772494BCFE173131205741D962EDD
              D4DA9A41F7E464A5700402C300262B99C967D35DD252D399BC1C0016EFFC5932
              E2DAD24545B634B5B6B434343332FDAA50FF75F36F4ADCDB457A19F8B96710AD
              FF8BEDAFFCD21A0060CC896AB3F38B2DAE0A80CE2D00C8DDFB62D3380080A4A8
              6F1DD7BFBA0F4D3C2F890241BA8DB1715656961197C3321217F40FFD4F87BFA1
              AFBE67243EEE8FF2D05D39F14C618A802EAE1B2B2D254DC8A767A433591CBAE1
              9F87F81F07FE751E06419C780E9FC313458489A68CCB4B10B59BC7E60AB8693C
              3A97F79F9AF80FC3FEA4C5B91689D2F81150638C80D4752A407EED07280A1120
              D1FBC55DFFA36FBEF830207E79E12A938B73FFEF37FD67C1A5E225839BF039CE
              252884CE12F23317F7C4CF12A0010148022A9007CA401DE800436006AC802D70
              046EC01BF8831010095603164804A9800FB2401ED8040A4131D809F6806A5007
              1A41336805C741273805CE834BE01AB8016E83FB60144C80676016BC060B1004
              6121324481E421154813D287CC2006640FB941BE50101409C54209100F124279
              D066A8182A83AAA17AA819FA1E3A099D87AE4083D05D680C9A867E87DEC1084C
              82A9B012AC051BC30CD809F68143E0557002BC06CE850BE01D7025DC001F853B
              E0F3F035F8363C0A3F83E7108010111AA28A18220CC405F147A29078848FAC47
              8A900AA4016945BA913EE426328ACC206F51181405454719A26C519EA850140B
              B506B51E5582AA461D4675A07A51375163A859D4473419AD88D647DBA0BDD011
              E8047416BA105D816E42B7A32FA26FA327D0AF31180C0DA38DB1C27862223149
              98B59812CC3E4C1BE61C6610338E99C362B1F2587DAC1DD61FCBC40AB085D82A
              EC51EC59EC107602FB0647C4A9E0CC70EEB8281C0F978FABC01DC19DC10DE126
              710B7829BC26DE06EF8F67E373F0A5F8467C37FE3A7E02BF4090266813EC0821
              8424C2264225A1957091F080F0924824AA11AD8981442E7123B192788C789938
              467C4B9221E9915C48D124216907E910E91CE92EE925994CD6223B92A3C802F2
              0E7233F902F911F98D0445C248C24B822DB141A246A2436248E2B9245E5253D2
              4972B564AE6485E409C9EB92335278292D291729A6D47AA91AA99352235273D2
              146953697FE954E912E923D257A4A764B0325A326E326C99029983321764C629
              08459DE242615136531A29172913540C559BEA454DA21653BFA30E5067656564
              97C986C966CBD6C89E961DA521342D9A172D85564A3B4E1BA6BD5BA2B4C46909
              67C9F625AD4B8696CCCB2D957394E3C815C9B5C9DD967B274F9777934F96DF25
              DF29FF5001A5A0A710A890A5B05FE1A2C2CC52EA52DBA5ACA5454B8F2FBDA708
              2BEA290629AE553CA8D8AF38A7A4ACE4A194AE54A57441694699A6ECA89CA45C
              AE7C46795A85A262AFC255295739ABF2942E4B77A2A7D02BE9BDF4595545554F
              55A16ABDEA80EA829AB65AA85ABE5A9BDA4375823A433D5EBD5CBD477D564345
              C34F234FA345E39E265E93A199A8B957B34F735E4B5B2B5C6BAB56A7D694B69C
              B69776AE768BF6031DB28E83CE1A9D069D5BBA185D866EB2EE3EDD1B7AB09E85
              5EA25E8DDE757D58DF529FABBF4F7FD0006D606DC0336830183124193A19661A
              B6188E19D18C7C8DF28D3A8D9E1B6B184719EF32EE33FE6862619262D26872DF
              54C6D4DB34DFB4DBF477333D3396598DD92D73B2B9BBF906F32EF317CBF49771
              96ED5F76C78262E167B1D5A2C7E283A59525DFB2D572DA4AC32AD6AAD66A8441
              6504304A1897ADD1D6CED61BAC4F59BFB5B1B411D81CB7F9CDD6D036D9F688ED
              D472EDE59CE58DCBC7EDD4EC9876F576A3F674FB58FB03F6A30EAA0E4C870687
              C78EEA8E6CC726C749275DA724A7A34ECF9D4D9CF9CEEDCEF32E362EEB5CCEB9
              22AE1EAE45AE036E326EA16ED56E8FDCD5DC13DC5BDC673D2C3CD67A9CF3447B
              FA78EEF21CF152F26279357BCD7A5B79AFF3EEF521F904FB54FB3CF6D5F3E5FB
              76FBC17EDE7EBBFD1EACD05CC15BD1E90FFCBDFC77FB3F0CD00E5813F0632026
              3020B026F0499069505E505F30253826F848F0EB10E790D290FBA13AA1C2D09E
              30C9B0E8B0E6B0F970D7F0B2F0D108E3887511D7221522B9915D51D8A8B0A8A6
              A8B9956E2BF7AC9C88B6882E8C1E5EA5BD2A7BD595D50AAB53569F8E918C61C6
              9C8845C786C71E897DCFF4673630E7E2BCE26AE366592EACBDAC676C4776397B
              9A63C729E34CC6DBC597C54F25D825EC4E984E7448AC489CE1BA70ABB92F923C
              93EA92E693FD930F257F4A094F694BC5A5C6A69EE4C9F09279BD69CA69D96983
              E9FAE985E9A36B6CD6EC5933CBF7E137654019AB32BA0454D1CF54BF5047B845
              3896699F5993F9262B2CEB44B674362FBB3F472F677BCE64AE7BEEB76B516B59
              6B7BF254F336E58DAD735A57BF1E5A1FB7BE6783FA86820D131B3D361EDE44D8
              94BCE9A77C93FCB2FC579BC337771728156C2C18DFE2B1A5A550A2905F38B2D5
              766BDD36D436EEB681EDE6DBABB67F2C62175D2D3629AE287E5FC22AB9FA8DE9
              3795DF7CDA11BF63A0D4B274FF4ECC4EDECEE15D0EBB0E974997E5968DEFF6DB
              DD514E2F2F2A7FB52766CF958A6515757B097B857B472B7D2BBBAA34AA7656BD
              AF4EACBE5DE35CD356AB58BBBD767E1F7BDFD07EC7FDAD754A75C575EF0E700F
              DCA9F7A8EF68D06AA83888399879F049635863DFB78C6F9B9B149A8A9B3E1CE2
              1D1A3D1C74B8B7D9AAB9F988E291D216B845D8327D34FAE88DEF5CBFEB6A356C
              AD6FA3B5151F03C784C79E7E1FFBFDF0719FE33D2718275A7FD0FCA1B69DD25E
              D40175E474CC7626768E7645760D9EF43ED9D36DDBDDFEA3D18F874EA99EAA39
              2D7BBAF40CE14CC1994F6773CFCE9D4B3F37733EE1FC784F4CCFFD0B11176EF5
              06F60E5CF4B978F992FBA50B7D4E7D672FDB5D3E75C5E6CAC9AB8CAB9DD72CAF
              75F45BF4B7FF64F153FB80E540C775ABEB5D37AC6F740F2E1F3C33E43074FEA6
              EBCD4BB7BC6E5DBBBDE2F6E070E8F09D91E891D13BEC3B537753EEBEB897796F
              E1FEC607E807450FA51E563C527CD4F0B3EECF6DA396A3A7C75CC7FA1F073FBE
              3FCE1A7FF64BC62FEF270A9E909F544CAA4C364F994D9D9A769FBEF174E5D389
              67E9CF16660A7F95FEB5F6B9CEF31F7E73FCAD7F366276E205FFC5A7DF4B5ECA
              BF3CF46AD9AB9EB980B947AF535F2FCC17BD917F73F82DE36DDFBBF077930B59
              EFB1EF2B3FE87EE8FEE8F3F1C1A7D44F9FFE050398F3FC91C05ADB0000022849
              44415478DA5D923B6854511086BF7377D7B8B9C966139FC425F848ACD4C28085
              A558888D8DD576361A44B09058DA090ADB58880AB601210841048520DA58DAA5
              11233E2282898FEC46B3EF7BFCE7EC8D46EF61B873CEF9E79FF9E78C73F3FCFD
              3A106D0757A49489B9E012CA990CC5569305D76136E970DFFDA2D1FE214CA617
              E2FE27C89498C9B628373F6A2F904FF41F12B0007D31749B4CB757A8B8BE0D82
              67BD402F7359CE53E39EDFCA848B5924D7BBE327277D9579F688D3326FA1D27D
              CF3459239853F088CEF641EB932EEDF0732F2B5100A3B249BCFC6F78DB47C2A8
              30A72582472210383BCAF17C217AD9A827A7DB4B3C71CBBA3C28E04305E61554
              929F705BA4173132CF89A8CDF340C0369596C7FB7505F54B675DF957A9F99AEE
              BE9850C6A23126936A9078CAB447C33CF611979C7B1ACAF4A10F56924F657470
              C99A7C939563460D2D53DFD470E1226BAEAEAC5907360E4D97090C7E41BB17FA
              0FCB1A3AC9F1EFD7E59CE3167758678AD17010B2F34136C85B7633CE80FC0559
              353CABDF54C13BF563BFE3AE36AD3FF9D3C7D552B7EDD96C169895ED0DFD38AA
              F3570113093368D0EB69D991085CEAD7D9A59E2C6BC161D9EB54461C7A32246C
              3524880D7E23CDF29D330A9A936E8255C5FF55237448BEE5DC29EBE78822AEB1
              C4D94036600495946055B6C24DC9B9CA483A48C5F0026F84DAA1212A4AB5F566
              42152C06C1619AAEA4BA7B236A249322B9AC861E13685C4DB59B35811F28784A
              9993F04AE9F71B95ADA4BEB1A789BF0000000049454E44AE426082}
          end
          object btnToTray: TPngBitBtn
            Left = 374
            Top = 4
            Width = 95
            Height = 25
            Action = actToTray
            Caption = 'To &Tray'
            TabOrder = 2
            PngImage.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              61000002564944415478DA8591CB4B945118C67F5F3AA8E5252DF312159A24B9
              725189A9D14228374AA0560BA37FA1557F421405D12A15F12E92B928A2554263
              095D105A640363A8A5D53833DF8CDF5CBE996FBECBE98C46C4E4E5850367F13C
              BFF33CEF51C898BAB190A82FCF6269C3C2D02D6C3D45CA30B14D87D06208B5F7
              9CF2AF5EC904B43E0B8997EDC58CC641B3206E42541E4D2A076FCF911A69DE1D
              70614A15E39D254CF8045A4A10371C62BA20E272F1FCEE1CC65E8096274131DA
              7588A1356992E668C2DE0469B8703F7A4772B8697740F364400C771F66E0BB43
              38210149074DF6D72C171FFBDE9318DA03D032E917FD9DA5F4AE588475874822
              0D106C24F7E1199B47DF0BD030E413233D653CF45A04633631CB614382420985
              B5E94FC4073300A7EE7945C199E3E4A64C967D06555926F73BCBE95B3451757B
              33415882D4A482FACA43C21FDB7266498EA2A0E45E758BC6F693DCB97E146CF9
              55AB0E563ABA611191FD439A04442C9940DE63168A63537DBA10DFEB15E28BC1
              AD0AAE2EB7387FA58607DD957C511DC6574CF6E31088C9F8515B1A6D029A89A9
              2729AD2E22FAE107C9A5004C5D54FEF67175BB4553470DB7DA2B79F32DC9ECBA
              832313A8F2555542221B490A8FE5939A5FA32412E7E7E306E5BF25E6C83AB597
              6BB871A982A79E18AB7E1BDB76F0070C28CA21776195A2B8C1AF3FE66D7F21EF
              DAAC38D25445475B05335E9D85CF7269C579E47B96C9D74D7CFF98B705A4A7A0
              E7AD3871B692B6D6325EACCBEDCF7C45092658CF30EF0848CF0109A96FACA0AE
              F620D3135E42038DDB6A77046C26B93927B25DD984FB1B76D4FD06F1EF3E484D
              0C9F4A0000000049454E44AE426082}
          end
        end
        object panProgress: TPanel
          Left = 332
          Top = 316
          Width = 205
          Height = 18
          Alignment = taRightJustify
          Anchors = [akRight, akBottom]
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 2
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
              180000000000B0010000120B0000120B00000000000000000000FF00FFFF00FF
              FF00FF0D0D503F3F8B3F3F8F4141903E3E8F10104EFF00FFFF00FFFF00FFFF00
              FFFF00FF0000400000F30D0DFF2B2BFF2B2BFF0A0AFF0101F000003DFF00FFFF
              00FFFF00FF00003E0000C73F3FFB3939E40000E30000E63D3DEA3737FF0000CF
              00003CFF00FF08084E0000962D2DCEFFFFCCEBE9C20000C50000C7F2F2BFFFFF
              CE2020D60000960B0B4D1B1B6700008F090979BFBFB6FFFFD9C9CACECDCDCFFF
              FFD6B8B6B106067300008D24246A23235B00003100004E000063A6A7CCFFFFEA
              FFFFE89F9FC600007200006F00004D27276128285F2020550000790B0BAAE6E6
              F7FFFFFFFFFFFFE0E0F40707BB0000A21D1D8F2B2B6A1A1A690C0CB83939B5FF
              FFFFFFFFFFB6B6DABEBEDCFFFFFFFFFFFF3636C01616D61F1F6F4141716060FF
              2727E3F6F6DFE0E2DA0000DA0303DAE8E8DAEEEEDC3333DF6E6EFC444472FF00
              FF4F4F7E7878FF2A2BDE3130DB5555FF5557FF3535D83636E18787FF50507CFF
              00FFFF00FFFF00FF4E4E85B4B5FFCAC3FFD5C8FFD1CBFFC9CAFFBCBCFF4C4C81
              FF00FFFF00FFFF00FFFF00FFFF00FF5151825B598F626094615D9457588F5252
              82FF00FFFF00FFFF00FF}
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
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 507
      ExplicitHeight = 0
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
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 507
      ExplicitHeight = 0
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
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 507
      ExplicitHeight = 0
      object TImage
        Left = 3
        Top = 352
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
    end
  end
  object AntiFrze: TIdAntiFreeze
    OnlyWhenIdle = False
    Left = 418
    Top = 257
  end
  object TrayIcon: TCoolTrayIcon
    IconList = dm.imlTray
    CycleInterval = 1500
    Icon.Data = {
      0000010001001010200000000000680400001600000028000000100000002000
      0000010020000000000000040000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004242
      4200A59CA500F7F7F700EFE7EF00E7E7E700E7DEE700DED6DE00DED6DE00D6CE
      D600D6CED600D6C6D600CEC6CE00B5ADB500A59CA50000000000000000008484
      840042424200E7DEE700F7EFEF00EFE7EF00E7DEE700E7DEE700DED6DE00D6CE
      D600D6CED600D6CED600CEC6CE00C6BDC6004242420000000000000000008484
      8400FFFFFF0042424200F7EFEF00EFE7EF00EFE7EF00E7DEE700E7DEE700DED6
      DE00D6CED600D6CED600CEC6CE0042424200CEC6CE0000000000000000008484
      8400FFFFFF00FFFFFF0042424200F7EFF700EFE7EF00EFE7EF00E7DEE700E7DE
      E700DED6DE00DED6DE0042424200CEC6CE00D6C6D60000000000000000008484
      8400FFFFFF00FFFFFF00FFFFFF0042424200FFF7F700EFE7EF0042424200E7E7
      E700E7E7E70042424200D6CED600D6C6D600D6C6D60000000000000000008484
      8400FFFFFF00FFFFFF00FFFFFF00EFEFEF004242420042424200E7E7E7004242
      420042424200DED6DE00D6CED600D6C6D600D6C6D60000000000000000008484
      8400FFFFFF00FFFFFF004242420042424200FFFFFF00F7EFF700F7EFEF00EFE7
      EF00D6D6D6004242420042424200D6CED600D6CED60000000000000000004242
      4200CECECE0042424200FFFFFF00FFFFFF00FFF7FF00FFF7F700F7EFF700EFE7
      EF00EFE7EF00E7DEE700E7DEE70042424200BDB5B50000000000000000000000
      0000848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      0000800300000001000000010000000100000001000000010000000100000001
      00000001000080030000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000}
    IconVisible = True
    IconIndex = 0
    OnClick = TrayIconClick
    OnDblClick = TrayIconDblClick
    OnMouseUp = TrayIconMouseUp
    Left = 464
    Top = 260
  end
  object ActionManager: TActionManager
    ActionBars = <
      item
      end
      item
        Color = clNone
        Items = <
          item
            Color = clNone
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
            Items = <
              item
                Action = actMarkAsRead
                Caption = 'Ma&rk as Read'
                ImageIndex = 30
              end
              item
                Action = actMarkAsUnread
                Caption = 'Mar&k as Unread'
                ImageIndex = 29
              end
              item
                Caption = '-'
              end
              item
                Action = actStar
                Caption = 'Mark as &Important'
                ImageIndex = 27
              end
              item
                Action = actUnstar
                Caption = 'M&ark as Not Important'
                ImageIndex = 28
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
              end
              item
                Caption = '-'
              end
              item
                Action = actArchive
                Caption = 'Ar&chive'
                ImageIndex = 31
              end>
            Action = actMark
            Caption = '&Mark As'
            ImageIndex = 29
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
            Visible = False
            Action = actSpam
            Caption = '&Spam'
            ImageIndex = 17
          end
          item
            Items = <
              item
                Action = actHideViewed
                Caption = '&Hide'
                ImageIndex = 14
              end
              item
                Action = actDeleteSpam
                ImageIndex = 18
              end
              item
                Action = actSelectAll
                ImageIndex = 26
              end
              item
                Action = actRemoveGmailLabel
                Caption = '&Remove Gmail Label'
              end
              item
                Action = actAddGmailLabel
                Caption = 'A&dd Gmail Label'
              end>
            Caption = 'M&ore'
            ImageIndex = 14
          end
          item
            Action = actCheck
            ImageIndex = 4
            ShortCut = 116
          end>
        ActionBar = MailToolBar
      end
      item
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
      end
      item
        Items = <
          item
            Action = actStar
            Caption = '&Important'
            ImageIndex = 27
          end
          item
            Action = actUnstar
            Caption = '&Not Important'
            ImageIndex = 28
          end
          item
            Action = actMarkAsRead
            Caption = '&Read'
            ImageIndex = 30
          end
          item
            Action = actMarkAsUnread
            Caption = '&Unread'
            ImageIndex = 29
          end
          item
            Action = actArchive
            Caption = '&Archive'
            ImageIndex = 31
          end>
      end>
    DisabledImages = dm.imlActionsDisabled
    LargeImages = dm.imlActionsLarge
    Images = dm.imlActions
    Left = 460
    Top = 212
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
      Caption = 'Mark All &Viewed (POP)'
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
    object actSelectAll: TAction
      Category = 'Mail'
      Caption = 'Select &All'
      ImageIndex = 26
      OnExecute = actSelectAllExecute
    end
    object actReplyAll: TAction
      Category = 'Mail'
      Caption = 'Reply All'
      OnExecute = actReplyAllExecute
    end
    object actArchive: TAction
      Category = 'Imap'
      Caption = 'Archive'
      ImageIndex = 31
      OnExecute = actArchiveExecute
    end
    object actStar: TAction
      Category = 'Imap'
      Caption = 'Mark as Important'
      ImageIndex = 27
      OnExecute = actStarExecute
    end
    object actUnstar: TAction
      Category = 'Imap'
      Caption = 'Mark as Not Important'
      ImageIndex = 28
      OnExecute = actUnstarExecute
    end
    object actMarkAsRead: TAction
      Category = 'Imap'
      Caption = 'Mark as Read'
      Hint = 'Marks message(s) viewed on IMAP accounts'
      ImageIndex = 30
      OnExecute = actMarkAsReadExecute
    end
    object actMarkAsUnread: TAction
      Category = 'Imap'
      Caption = 'Mark as Unread'
      ImageIndex = 29
      OnExecute = actMarkAsUnreadExecute
    end
    object actMark: TAction
      Category = 'Imap'
      Caption = 'Mark As'
      ImageIndex = 29
      OnExecute = actMarkExecute
    end
    object actAddGmailLabel: TAction
      Category = 'Gmail'
      Caption = 'Add Gmail Label'
      OnExecute = actAddGmailLabelExecute
    end
    object actRemoveGmailLabel: TAction
      Category = 'Gmail'
      Caption = 'Remove Gmail Label'
      OnExecute = actRemoveGmailLabelExecute
    end
    object Action1: TAction
      Caption = 'Action1'
    end
  end
  object XPColorMap1: TXPColorMap
    HighlightColor = clWhite
    BtnSelectedColor = clBtnFace
    UnusedColor = clWhite
    Left = 455
    Top = 68
  end
  object TwilightColorMap1: TTwilightColorMap
    HighlightColor = clBlack
    BtnFrameColor = clBlack
    DisabledColor = cl3DDkShadow
    Left = 455
    Top = 114
  end
  object WindowBgColorMap: TXPColorMap
    Color = clWindow
    HighlightColor = clWhite
    BtnSelectedColor = clBtnFace
    UnusedColor = clWhite
    Left = 460
    Top = 164
  end
end
