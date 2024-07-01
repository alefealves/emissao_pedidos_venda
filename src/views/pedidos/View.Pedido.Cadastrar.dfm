inherited ViewPedidoCadastrar: TViewPedidoCadastrar
  Caption = 'Cadastrar Pedido'
  ClientHeight = 614
  ClientWidth = 1544
  Font.Height = -24
  StyleElements = [seFont, seClient, seBorder]
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  ExplicitWidth = 1560
  ExplicitHeight = 653
  TextHeight = 32
  inherited pnDados: TPanel
    Width = 1544
    Height = 532
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1528
    ExplicitHeight = 483
    object pnCabecalho: TPanel
      Left = 1
      Top = 1
      Width = 1542
      Height = 230
      Align = alTop
      TabOrder = 0
      ExplicitWidth = 1526
      object Label1: TLabel
        Left = 24
        Top = 25
        Width = 77
        Height = 32
        Caption = 'C'#243'digo'
      end
      object Label2: TLabel
        Left = 339
        Top = 26
        Width = 148
        Height = 32
        Caption = 'Nome Cliente'
      end
      object Label6: TLabel
        Left = 24
        Top = 117
        Width = 113
        Height = 32
        Caption = 'Total Geral'
      end
      object Label3: TLabel
        Left = 128
        Top = 26
        Width = 176
        Height = 32
        Caption = 'C'#243'd. Cliente (F8)'
      end
      object Label4: TLabel
        Left = 187
        Top = 123
        Width = 49
        Height = 32
        Caption = 'Data'
      end
      object Label5: TLabel
        Left = 636
        Top = 25
        Width = 53
        Height = 32
        Caption = 'CNPJ'
      end
      object Label7: TLabel
        Left = 862
        Top = 25
        Width = 92
        Height = 32
        Caption = 'Telefone'
      end
      object lbStatus: TLabel
        Left = 24
        Top = 200
        Width = 332
        Height = 23
        Caption = 'Salve o cabe'#231'alho antes de inserir os Itens'
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -17
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold, fsItalic]
        ParentColor = False
        ParentFont = False
        Visible = False
      end
      object Label8: TLabel
        Left = 333
        Top = 123
        Width = 64
        Height = 32
        Caption = 'Status'
      end
      object edtID: TNumberBox
        Left = 24
        Top = 63
        Width = 90
        Height = 40
        TabStop = False
        Color = clBtnFace
        DisplayFormat = '000000'
        ReadOnly = True
        TabOrder = 2
      end
      object edtNome_Fantasia: TEdit
        Left = 230
        Top = 64
        Width = 400
        Height = 40
        TabStop = False
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 3
      end
      object edtValorTotal: TNumberBox
        Left = 24
        Top = 154
        Width = 150
        Height = 40
        TabStop = False
        Color = clBtnFace
        DisplayFormat = 'R$ ,,0.00'
        Mode = nbmCurrency
        ReadOnly = True
        TabOrder = 1
      end
      object edtId_Cliente: TNumberBox
        Left = 144
        Top = 64
        Width = 80
        Height = 40
        TabOrder = 0
        OnChangeValue = edtId_ClienteChangeValue
        OnExit = edtId_ClienteExit
        OnKeyDown = edtId_ClienteKeyDown
      end
      object edtData: TEdit
        Left = 180
        Top = 154
        Width = 140
        Height = 40
        TabStop = False
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 4
      end
      object edtCNPJ: TEdit
        Left = 636
        Top = 63
        Width = 220
        Height = 40
        TabStop = False
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 5
      end
      object edtTelefone: TEdit
        Left = 862
        Top = 63
        Width = 170
        Height = 40
        TabStop = False
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 6
      end
      object edtStatus: TEdit
        Left = 326
        Top = 154
        Width = 350
        Height = 40
        TabStop = False
        Alignment = taCenter
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
      end
      object btnAlterarStatus: TBitBtn
        Left = 682
        Top = 154
        Width = 250
        Height = 40
        Caption = 'Enviar '#224' Aprova'#231#227'o'
        Glyph.Data = {
          76060000424D7606000000000000360400002800000018000000180000000100
          08000000000040020000120B0000120B0000000100000000000000000000FFFF
          FF0022212300534E5700FF00FF0041353800A4676900A5686B007A494A005A35
          35008B555500804E4E0091595900965D5D008B565600734747008C5757009560
          6000AA6E6E00A96D6D00A76C6C00A66B6B008C5B5B0091606000B77A7A00B679
          7900B87B7B00BB7E7E00BA7D7D009C696900CB8C8C00CA8B8B00C98B8B00C78A
          8A00CC8E8E00DA9A9A00D9999900C2898900D99A9A00DC9D9D00E1A1A100DA9C
          9C00E2A3A300EBAAAA00E2A4A400E1A3A300643B3A00734847007B504F005D38
          360093656000E2D0CE009566600093655F009869630084544C009F675B009E6E
          6400A3726600DDC7C200FBF7F6009D6D5F00865D51007350460062443C00A775
          68009F6F6000AC796900583F3700533C3500DDC4BC0096695A00B17E6B00FFFC
          FB00BB846E00B6816C00BCA19600DAC0B600BBA19600CB917300C58C7000C089
          6F00FCF8F600FAF6F400CF8E6800D4987500CF967400F6EEE900F8F3F000AA78
          56003C383500FEF7F200ECD5C200E1CCBB003E3935006A554200F2E2D300FAEE
          E300F4EAE100B77D460066523F0064513E0065524000EFDAC500F2E6DA00FBF2
          E900FEF7F000FDF8F300EAB2730062503D00604F3D00EED4B800F0DAC200F6E3
          CE00F0DECB00F7E6D300F4E3D000F8EEE300FBF3EA00EFA75100EDB57200EAB4
          7400F2D5B100E9CCAB00F4DEC500F4E1CA00F3E0CA00F7E7D400FAEAD700F8EA
          D900F7EADA00F8EBDC008E745100E5BC8400A4865F00B29268009E835F00E1BB
          88006C594100897253006A5841008E775900DEBB8C00AA8F6B00C6A67E007764
          4C00E1C09300C1A57F00836F5600E6C79D00C9AD89008C796000EDCEA700D9BD
          9900E6CEAF00F2DABC00EAD4B600F4DEC000AC9D8A00F6E1C600F7E5CE00F6E6
          D100F8EBDA00FAEEDE00FBF2E600E1B77900EABF7F00CCA66E00E9BD7F00E7BC
          7E00E5BB7D00DEB57900DAB17700D9B17600E3BA7D00D1AB7300C09C6900A989
          5D009A7E5500E7BC8100E1B77D00C7A36F00BC996900B2916300D1AB7500826C
          4B00987D5800DAB47F00C7A474007B664800B89A6F007E694C00766347006F5D
          4300D1AF7F009D876700F0D8B700EBD8BD00FCF6ED00FCF7F000E3BA7B00FEFB
          F600FFFAEF00FFFEFB00FFFEF700FFFFFE003A494800748686003443440000BD
          FF0000B1F2004E6C760000AAEA0000A6E600009FDE000093D100097BAB001A3E
          4D000087C4000084C100028AC4000B4159000C3C5200113B4E00008CD100036A
          9D0004689A000459830005679800064F7500182A33001B506E00315065003547
          56002A34400041485500012BA700001C9D002D4FF6005270FC00021DB100031E
          B1000420B8000725DC000F2ECC001839E3000C21BF00010D9D001322BD001624
          BF0001099700010A9700050DA50000058F00000082001F1F2100040404040404
          0404040404040404040404040404040404043506060606060606060606060606
          06060606060404040404356F9B7A9895928E8985B3A9A8A8A8A8A6A942040404
          0404355C9DC47B99969390C2BBB4AEA9A8A8A6A942040404040435679F9B9A02
          5E97C38FBEBCB8ABAAA9A6A94204040404043272A07C9C5AFFE6D0948D8887B5
          ADAEA9A942040404040434608071709EDFE2E5DECE918B86B6AFA5C842040404
          04043668A37F7DC5D9E1E4E7EA055FBFBAB7A7AC3D04040404043962A483737E
          CFE3E811120D2E66C084B1B04704040404043A57C675827372DD16221B120D2E
          65C1B9B23E04040404044158C9767583A1D31D271E1C130C096D8CBD3F040404
          04044353CD6B6975A274302C271E1C1310096E8A400404040404485301CB6A76
          61815D302A271F1A140E09644404040404044B530101495B7675835D2F2D2920
          1A140E314504040404044A53010101CB5B7661814E2F28232018150A09040404
          0404515301010101CB5B6961A24E2F28262118150A0904040404505301010101
          01496B7675814C172B2421190BEBE90404044F53010101010101CBC769A45C37
          172B2403DCD4D5DA0404563C0101010101010149C7CA4D38591725D8D1D1D5ED
          FE045552010101010101010149CC463879630FD6D1E0EDF7FBFE555201010101
          0101010101013B386C7708D7D2ECF3F2F0FB55CD010101010101010101013338
          78070404DBF6EEF4F1FD54545454545454545454545454380704040404F9EFF5
          FA040404040404040404040404040404040404040404F8FC0404}
        TabOrder = 8
        TabStop = False
        Visible = False
        OnClick = btnAlterarStatusClick
      end
      object btnImprimir: TBitBtn
        Left = 946
        Top = 154
        Width = 200
        Height = 40
        Hint = 'Imprimir Pedido'
        Caption = 'Imprimir'
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F3F3E5E4E4E5E4E4E5E4E4
          E5E4E4E5E4E4E5E4E4E5E4E4E5E4E4E5E4E4E5E4E4F4F4F3FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9918A898A
          7E7D9083839083839083839083839083839083839083839083838A7E7D918A89
          F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFF3F2F2897F7EEDDBDCFDEAECFDEBECFDEBECFDEBECFDEBECFDEBECFDEBECFD
          EAECEDDBDC897F7EF3F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          F6F6F6F5F5F5F5F6F5E8E8E88A807FEEDCDDC6B6B6B3A4A4B4A5A5B4A5A5B4A5
          A5B4A5A5B3A4A4C6B6B7EEDCDD8A807FE8E8E8F5F6F5F5F5F5F6F6F6FFFFFFFF
          FFFFFEFEFEB2ADAC7B69667C68667D68667662606F6160EFDEDFC7B7B8B5A5A5
          B6A6A6B6A6A6B6A6A6B6A6A6B5A5A5C7B8B8EFDEDF6F61607662607D68667C68
          667B6966B2ADACFEFEFEEEEEEE7762609D615DA66763A667639B605C78615FED
          DDDDB1A2A2978989988B8A988B8A988B8A988B8A978989B1A2A2EDDDDD78615F
          9B605CA66763A667639D615D776260EEEEEEEBEBEB7A625FAA6A65AF6E697F53
          4F613F3B6B5957F0DFE0D5C5C6C7B7B8C7B8B8C7B8B8C7B8B8C7B8B8C7B7B8D5
          C5C6F0DFE06B5957613F3B7F534FAF6E69AB6A657A6260EBEBEBEBEBEB7A6260
          AA6A65AA6B6663413C7D4840745D5AF0DFE0AFA1A09486869588879588879588
          87958887948686AFA1A0F0DFE0745D5A7D484063413CAA6B66AD6B66B29290F9
          F9F9EBEBEB7A6260AA6A65AA6B6760403C633D375A47449D8E8DA191909F8F8F
          9F8F8F9F8F8F9F8F8F9F8F8F9F8F8FA191909D8E8D5A4744633D3760403CAA6B
          67AC6B66AA8B89F7F7F7EBEBEB7A6260AA6A65AF6E6999615D8E5B578F5C578E
          5A568D5A568E5A568E5A568E5A568E5A568E5A568D5A568E5B56905B57915D58
          905D589A625EAF6E69AA6A65846B68EEEEEEEBEBEB7A6260AA6A65AF6E69B270
          6AB3706BB16F6AB16F6AB16F6AB16F6AB16F6AB16F6AB16F6AB16F6AB16F6AA3
          67628C5A558B59548B59549A625DAF6E69AD6B66C4A19FFDFDFDEBEBEB7A6260
          AA6A65AE6E6996615D915E5AAC6C67AF6E69AF6E69AF6E69AF6E69AF6E69AF6E
          69AF6E69B06F69734D4F5E508F6B5BAA6556A0614553AB6B65AB6B66907572F0
          F1F1EBEBEB7A6260AA6A65AE6E698859557F5450A96B67AF6E69AF6E69AF6E69
          AF6E69AF6E69AF6E69AF6E69B06F69724D4F5F51946D5DB16758A6604554AB6B
          65AA6A6579615EEAEBEBECECEC77605EA76762AE6D68B06E69B06E69AF6E69AE
          6D68AE6D68AE6D68AE6D68AE6D68AE6D68AE6D68AE6D689E645F855651855651
          845551965F5BAE6D68A7676277605EECECECFBFBFB9C93927256537657546B4B
          4874514E6B4A4775555277565377565377565377565377565377565377565378
          57547756536D4C497653506C4C497657547256539C9392FBFBFBFFFFFFF9F9F9
          E3E3E3D7D7D67F7271C8A5A582706FD5C5C6DFCFD0DFCFCFDFCFCFDFCFCFDFCF
          CFDFCFCFDFCFCFDFCFD0D4C5C57D6C6BC8A5A47F7271D7D7D6E3E3E3F9F9F9FF
          FFFFFFFFFFFFFFFFFFFFFFF6F6F68E807FEDC3C3E3C6C7FCEAEBFFEDEEFFEDEE
          FFEDEEFFEDEEFFEDEEFFEDEEFFEDEEFFEDEEF2E1E28D7978E3BBBB8F8180F6F6
          F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F48C7E7DE7BEBEBBA2A2F6
          E5E6FDEBECFDEBECFDEBECFDEBECFDEBECFDEBECFDEBECFEECEDF1DFE08C7977
          E2B9B98D7E7DF4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFA9289
          8886706F736463F2E1E1FEECEDFDEBECFDEBECFDEBECFDEBECFDEBECFDEBECFE
          ECEDF2E1E175666586706F928988FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF1F0F0CFCECD817776EEDCDCFAE8E9F9E7E8F9E7E8F9E7E8F9E7
          E8F9E7E8F9E7E8FAE8E9EEDCDC817776CFCECDF1F0F0FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB928B8A8A7E7D908383908383
          9083839083839083839083839083839083838A7E7D928B8AFBFBFBFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F3E5
          E4E4E5E4E4E5E4E4E5E4E4E5E4E4E5E4E4E5E4E4E5E4E4E5E4E4E5E4E4F4F3F3
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        TabStop = False
        OnClick = btnImprimirClick
      end
    end
    object pnItens: TPanel
      Left = 1
      Top = 231
      Width = 1542
      Height = 300
      Align = alClient
      TabOrder = 1
      ExplicitWidth = 1526
      ExplicitHeight = 251
      object dbGridItens: TDBGrid
        Left = 1
        Top = 51
        Width = 1540
        Height = 248
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Align = alClient
        DataSource = dsItens
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        PopupMenu = PopupMenu1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -24
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnDrawColumnCell = dbGridItensDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'NUM_ITEM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_PRODUTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_PEDIDO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QUANTIDADE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_UNITARIO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_TOTAL'
            Visible = True
          end>
      end
      object pnBotoes: TPanel
        Left = 1
        Top = 1
        Width = 1540
        Height = 50
        Align = alTop
        TabOrder = 1
        ExplicitWidth = 1524
        object btnAdicionar: TBitBtn
          Left = 1
          Top = 1
          Width = 60
          Height = 48
          Hint = 'Adicionar Item'
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Margins.Bottom = 6
          Align = alLeft
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C0060000C40E0000C40E00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FF035C08035C08035807025206024D05024804014303014103
            0141030141030141030141030141030141030141030141030141030141030138
            02013802FF00FFFF00FFFF00FF05750F056B0C06781205750F04700D036C0B03
            6909026406026306026306026306026306026306026306026306026306026306
            026406026406014E04013402013802FF00FFFF00FF05750F0DA0280EAC2B0CA9
            230AA71F08A51A07A31505A11103A00D03A00C03A00C03A00C03A00C03A00C03
            A00C03A00C03A00C03A00C03A40C03970B024E04013802FF00FFFF00FF098817
            12AD3611AF330EAB2B0CAA260AA92009A71C07A51705A41304A10F03A00C03A0
            0C03A00C03A00C03A00C03A00C03A00C03A00C03A40C03A40C026406014103FF
            00FFFF00FF0A8F1A16AD3D13AF3911AA320FAA2C0DA7270CA62309A41D07A318
            06A113049F0F039E0C039E0C039E0C039E0C039E0C039E0C039E0C03A00C03A0
            0C026406014103FF00FFFF00FF0B961E1AB04717B04316AC3B13AB3510AA300E
            A9290CA6230AA51F09A31B07A11605A111049F0F039E0C039E0C039E0C039E0C
            039E0C03A00C03A00C026306014103FF00FFFF00FF0C981F21B45220B4511CB1
            4618AD3E14AC3712AA330EA92B0DA7270BA72109A41D07A31806A11304A10F03
            9E0C039E0B039E0C039E0C03A00C03A00C026306014103FF00FFFF00FF0C981F
            29B85A2BBA5D24B7551EB24A19B14314AD3B13AB350FA92D0DA728E0F4E3FFFF
            FF4DBD5A07A116059F11039E0D039E0C039E0C03A00C03A00C026306014103FF
            00FFFF00FF0C981F35BD6636BF682DBA5E24B7551FB44D19AF4216AD3D13AB35
            10AA30E0F4E4FFFFFF4FBE5F09A41D07A31705A013039E0F039E0C03A00C03A0
            0C026306014103FF00FFFF00FF0C981F47C57448C57635BD6625B75825B7581E
            B54E19B04516AD3E13AC37E0F4E5FFFFFF51C0640CA62309A41E08A31906A015
            059F1103A10D03A00C026306014103FF00FFFF00FF0C981F58CB8259CB8441C1
            6E29B85A29B85A23B5551CB14E19B04516B041E1F4E6FFFFFF53C26A0EA9290C
            A6230AA52109A31B07A31505A31304A10D026406014103FF00FFFF00FF0C981F
            64CE8B66D08E47C5742DBA5E2DBA5DE3F6E9FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF50BF6109A41D07A51806A313036909024804FF
            00FFFF00FF0C981F6BD0906DD3954DC67830BB602EBA5F25B7581FB2501DB250
            1CB24DE1F5E8FFFFFF58C47413AC3911AA320FA92E0DA7280BA6230AA71F08A5
            1A056F0C025005FF00FFFF00FF0C981F6FD39573D49852C77D33BC6434BC6429
            B85A20B5521FB2501DB250E2F5E8FFFFFF59C77A16B04114AD3B12AD3510AA30
            0EA9290CAA260BA72105750F035807FF00FFFF00FF0C981F73D39679D59C58CB
            8238BF683CC06B32BC6228B75A23B55520B552E2F5E9FFFFFF5DC8811BB24B17
            B04316AD3E13AC3711AA320FAC2D0DA928067A11035F09FF00FFFF00FF0C981F
            76D49980D8A163CE8A3EC06C48C57541C16E35BD662DBA5E29B85AE3F6E9FFFF
            FF5FCA831FB2501CB14D1AB04716AF4014AD3B12AD3510AA3008801604680AFF
            00FFFF00FF0C981F79D59C87DAA772D39541C16E48C57542C2703BC06A35BD66
            30BB602DBA5D2DBA5D25B75823B5551FB2501DB2501AB14917AF4215AF3E13AC
            370A871A056F0CFF00FFFF00FF0C981F78D5998CDCAB87DAA558CB8252C77D4B
            C57742C2703EC06C37BD6632BC6237BD662DBA5E25B75820B5521FB2501DB250
            1AB14B18B14616AF400A8B1D05780DFF00FFFF00FF0C981F6FD39589DCA993DE
            AF8CDCAB87DAA580D7A075D4986BD0905ECC8752C77D46C47337BD662BBA5D23
            B5551FB2501DB2501CB24E1CB44E19B1490C932206810FFF00FFFF00FF0C991F
            63CE8A7AD79F89DCA990DDAD90DDAD8CDCAB86D9A57AD79F6FD39560CE894FC7
            7B3FC16E2FBB6325B8591FB6551DB5531CB4511DB5531CB4510E9826078911FF
            00FFFF00FF0C991F17AB4060CE896ED19278D59979D59C79D59C74D3976DD192
            63CE8A56C98048C5753ABF682DBA5D24B7561FB5521DB2501CB24E1CB45118AD
            44099518078911FF00FFFF00FFFF00FF0C981F0C981F0C981F0C981F0C981F0C
            981F0C981F0C981F0C981F0C981F0C981F0C981F0C981F0C981F0C981F0D9820
            0C981F0C981F089215089215FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = btnAdicionarClick
        end
        object btnExcluir: TBitBtn
          Left = 61
          Top = 1
          Width = 60
          Height = 48
          Hint = 'Excluir Item'
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Margins.Bottom = 6
          Align = alLeft
          Glyph.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            0800000000004002000000000000000000000001000000000000FF00FF000011
            50000012560000145E00001460000016680000176E0000187200001874000019
            7A00001A7C00001B8100001B8400001D8A00001D8D00001E9100001F96000020
            9A0000209C000021A1000023A9000025B0000025B4000026B9000027BC000028
            C0000029C500002AC800002ACD00002BD000002CD200002CD500002DD900002E
            DC000230DC00002FE100002FE4000231E1000030E5000434E6000031E9000534
            E8000031ED000837EA000A39ED000032F1000234F1000436F2000033F4000235
            F4000637F4000838F1000C3CF2000E3EF400103EF1001442F2001644F4001946
            F4001B48F4001E4AF400214DF400254FF4002651F4002852F4002A54F4002D55
            F4002F58F400315AF400355CF400385FF4003D62F5003E64F5004368F500456A
            F5004B6EF6005072F6005475F6005A7AF6005F7EF6005C7CF800607FF7006885
            F7006B88F7006D89F7006281F8006B89F8006D89F800708BF700728DF700748F
            F700718DF9007690F7007993F7007792F9007993FA007A94F8008098F800869D
            F900889FF90089A0F9008DA4F90091A7F90095AAF900FFFFFF00000000000000
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
            00000000000000000000000000000000000000000B0B09080606040404040404
            0404040404040202000000120F13120F0F0D0B0B0B0B0B0B0B0B0B0B0B0B0602
            020000121D201D1D1C1A1A181818181818181818181A16060200001623232020
            1D1C1A1A1A18181818181818181A1A0B04000018262323201D1D1C1C1A181818
            181818181818180B0400001A2A2A262622201D1C1C1A1A1818161A181619180B
            0400001A34342B262622201D1D1C1A1A1A1916191819160B0400001A37373634
            262622201D1D1D1A1A191916161A190B0400001A3E3E3B343426262620201D1C
            1C1A1A1918161A090400001A47473E3636342A262323201D1D1C1A1A191A1809
            0400001A4C4C443737676767676767676767671C1A1A190B0400001A5054473B
            39676767676767676767671C1C1A1A0D0600001A5155483B3B67676767676767
            6767671D1D1D1C0F0800001A535A4A3C3C37342E2E2E2E2A2A232320201D1D12
            0900001A585D4C41443C3734342E332E2A2A2623232020130B00001A5B604E44
            47443E3B373633342E2E2A2A232320160D00001A5C6253444745413E3B393934
            342E2E2A2A2A23160F00001A5B64624C4A4845443E3C413934342E2E2A2A2A16
            1300001A5364656560605B514E48473E3733332E2E2E2A1A1300001C4E5D6465
            6564605F554F48443B372E332E2E2E1C1600001A234F555C5F5C5B534E4C4741
            3734342E30302E18160000001C1A1A1A1A1A1A1A1A1A1A1C1A1C1C1A1D1A1818
            0000000000000000000000000000000000000000000000000000}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = btnExcluirClick
        end
      end
    end
  end
  inherited pnBottom: TPanel
    Top = 532
    Width = 1544
    Height = 82
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 483
    ExplicitWidth = 1528
    ExplicitHeight = 82
    inherited btnCancelar: TBitBtn
      Left = 1283
      Width = 260
      Height = 80
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      ExplicitLeft = 1267
      ExplicitWidth = 260
      ExplicitHeight = 80
    end
    inherited btnGravar: TBitBtn
      Left = 1023
      Width = 260
      Height = 80
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      ExplicitLeft = 1007
      ExplicitWidth = 260
      ExplicitHeight = 80
    end
  end
  object dsItens: TDataSource
    DataSet = QItensPedido
    Left = 753
    Top = 289
  end
  object QItensPedido: TIBQuery
    Database = ViewPrincipal.IBDatabase
    Transaction = ViewPrincipal.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = False
    SQL.Strings = (
      'SELECT'
      'PI.ID,'
      'PI.ID_PEDIDO,'
      'PI.NUM_ITEM,'
      'PI.ID_PRODUTO,'
      'PROD.DESCRICAO,'
      'PI.QUANTIDADE,'
      'PI.VALOR_UNITARIO,'
      'PI.VALOR_TOTAL'
      'FROM PEDIDOS_ITENS PI'
      'INNER JOIN PEDIDOS P'
      'ON PI.ID_PEDIDO = P.ID'
      'INNER JOIN PRODUTOS PROD'
      'ON PI.ID_PRODUTO = PROD.ID'
      'ORDER BY PI.ID')
    PrecommittedReads = False
    Left = 760
    Top = 360
    object QItensPedidoID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID'
      Origin = 'PEDIDOS_ITENS.ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
      Visible = False
      DisplayFormat = '000000'
    end
    object QItensPedidoNUM_ITEM: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'NUM_ITEM'
      Origin = 'PEDIDOS_ITENS.NUM_ITEM'
      DisplayFormat = '000'
    end
    object QItensPedidoID_PRODUTO: TIntegerField
      DisplayLabel = 'C'#243'd. Produto'
      FieldName = 'ID_PRODUTO'
      LookupKeyFields = 'ID'
      LookupResultField = 'ID'
      KeyFields = 'ID_PRODUTO'
      Origin = 'PEDIDOS_ITENS.ID_PRODUTO'
      ReadOnly = True
      DisplayFormat = '000000'
    end
    object QItensPedidoID_PEDIDO: TIntegerField
      DisplayLabel = 'C'#243'd. Pedido'
      FieldName = 'ID_PEDIDO'
      Origin = 'PEDIDOS_ITENS.ID_PEDIDO'
      ReadOnly = True
      Visible = False
      DisplayFormat = '000000'
    end
    object QItensPedidoDESCRICAO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Origin = 'PRODUTOS.DESCRICAO'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object QItensPedidoQUANTIDADE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'QUANTIDADE'
      Origin = 'PEDIDOS_ITENS.QUANTIDADE'
      ReadOnly = True
      Required = True
      Precision = 18
      Size = 2
    end
    object QItensPedidoVALOR_UNITARIO: TIBBCDField
      DisplayLabel = 'Val. Unit'#225'rio'
      FieldName = 'VALOR_UNITARIO'
      Origin = 'PEDIDOS_ITENS.VALOR_UNITARIO'
      ReadOnly = True
      Required = True
      DisplayFormat = 'R$ ,,0.00'
      Precision = 18
      Size = 2
    end
    object QItensPedidoVALOR_TOTAL: TIBBCDField
      DisplayLabel = 'Val. Total'
      FieldName = 'VALOR_TOTAL'
      Origin = 'PEDIDOS_ITENS.VALOR_TOTAL'
      ReadOnly = True
      Required = True
      DisplayFormat = 'R$ ,,0.00'
      Precision = 18
      Size = 2
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 152
    Top = 329
    object Atualizar: TMenuItem
      Bitmap.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFA87D78A47874A47874A47874A47874A47874A47874A47874
        A47874A47874A47874A47874A47874A47874A47874A47874A47874A47874986B
        66FF00FFFF00FFFF00FFFF00FFFF00FFA97F79F3DDC4F8E3C6F6DFBFF5DCB8F4
        D9B2F3D7ACF3D4A7F2D2A0F0CF9AF0CE98F0CE98F0CE98F0CE98F0CE98F0CE98
        F1CF98EFCD97986B66FF00FFFF00FFFF00FFFF00FFFF00FFA97F7AF2DEC8F7E3
        CAF5DFC2F4DCBCF3DAB6F2D7B1F1D4ABF1D2A5F0CF9FEFCD9AEECC97EECC97EE
        CC97EECC97EECC97EFCD97EDCB96986B66FF00FFFF00FFFF00FFFF00FFFF00FF
        A97F7AF2E0CEF8E7CFF5E2C8F5DEC2F4DCBCF3DAB7F2D7B1F1D4ABF1D2A5F0CF
        A0EFCD9AEECC97EECC97EECC97EECC97EFCD97EDCB96986B66FF00FFFF00FFFF
        00FFFF00FFFF00FFA97F7AF3E3D2F9E9D4F6E4CDF5E1C7018A02F4DCBCF3D9B6
        C2C88D018A02018A02018A02BFBF7BEECC97EECC97EECC97EFCD97EDCB96986B
        66FF00FFFF00FFFF00FFFF00FFFF00FFA97F7BF4E6D8FAECDAF8E7D3F6E4CC01
        8A020B8E0AC3CC97018A02C2C88DF1D4ABC1C485018A02BFC07CEECC97EECC97
        EFCD97EDCB96986B66FF00FFFF00FFFF00FFFF00FFFF00FFAA807BF5E9DDFBEF
        E0F8EAD9F7E6D2018A02018A02018A02C3CC97F3D9B6F2D7B1F1D4ACC1C48501
        8A02EECC99EECC97EFCD97EDCB96986B66FF00FFFF00FFFF00FFFF00FFFF00FF
        AD837DF5ECE3FBF2E6F9EDDEF8E9D7018A02018A02018A02018A02F4DCBBF3D9
        B6F2D7B1F1D4AB018A02F0CFA0EECC99EFCD97EDCB96986B66FF00FFFF00FFFF
        00FFFF00FFFF00FFB2887EF7EFE8FCF5ECFAEFE4F9ECDD018A02018A02018A02
        018A02018A02F4DCBCF3D9B7F1D7B0F1D4ABF0D2A5F0CF9FEFCD9AEDCA96986B
        66FF00FFFF00FFFF00FFFF00FFFF00FFB68B80F8F2EEFDF8F1FAF3EAF9EFE3F9
        ECDDF8E9D8F7E6D2F6E4CCF5E1C6F4DFC1F4DCBCF3D9B6F2D6B0F1D4AAF0D1A4
        F0D09FEDCB98986B66FF00FFFF00FFFF00FFFF00FFFF00FFBA8E82FAF6F4FEFC
        F8FCF6F0FAF2EAFAF0E4F9EDDDF8E9D8F7E7D2018A02018A02018A02018A0201
        8A02F1D7B0F1D4AAF1D2A5EECD9E986B66FF00FFFF00FFFF00FFFF00FFFF00FF
        BE9283FBF8F7FFFFFEFEFAF6FCF5EF018A02FAF0E3F9ECDDF9E9D8F8E7D2018A
        02018A02018A02018A02F3D9B6F2D7B0F2D5ABEFCFA4986B66FF00FFFF00FFFF
        00FFFF00FFFF00FFC29685FBF8F7FFFFFFFFFEFCFEF9F4018A02C9DEBCFAEFE3
        F9EDDDF8E9D7C7D4A8018A02018A02018A02F4DCBBF3D9B5F2D7B0F0D2A8986B
        66FF00FFFF00FFFF00FFFF00FFFF00FFC69986FBF8F7FFFFFFFFFFFFFFFDFCCB
        E3C4018A02C8DDBCFAF0E4C7D8B1018A02C7D4A80B8E0A018A02F5DEC0F4DCBB
        F4DAB6F1D5AE986B66FF00FFFF00FFFF00FFFF00FFFF00FFCA9C88FBF8F7FFFF
        FFFFFFFFFFFFFFFFFEFCCBE3C4018A02018A02018A02C7D8B1F8E9D7F8E6D101
        8A02F5E1C6F4DEC0F3DBBAD9C4A7986B66FF00FFFF00FFFF00FFFF00FFFF00FF
        CEA089FCF9F7FFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFEF9F5FCF5EFFBF2E9FAF0
        E3F9ECDDF8E9D7F8E6D1F6E4CCEBD9C0D1C1ABB5A897986B66FF00FFFF00FFFF
        00FFFF00FFFF00FFD2A38AFCF9F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFC
        FDFAF5FCF6EFFAF2E9FAEFE2FAEDDEFBEEDBE7DBC9C8BDAFBAB0A2B7AC9D986B
        66FF00FFFF00FFFF00FFFF00FFFF00FFD7A78CFCF9F7FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFEFCFDF9F4FCF5EEFCF5EBEEDDD1B48176B48176B48176
        B48176B48176B48176FF00FFFF00FFFF00FFFF00FFFF00FFDAAB8DFCF9F8FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFBFDF9F4FFFBF3E3CEC6B4
        8176E3B585E5AD6AE9A654EFA039B88285FF00FFFF00FFFF00FFFF00FFFF00FF
        DEAD8EFDFAF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
        FCFFFEF9E5D1CBB48176EFC48DF3BB6DF8B450B88285FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFDEAD8EFDFAF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFE5D4D0B48176EFC38CF3BA6CB88285FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFDEAD8EFFFEFEFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9DBD9B48176F1C58BB88285
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDAA482DAA482DAA4
        82DAA482DAA482DAA482DAA482DAA482DAA482DAA482DAA482DAA482DAA482B4
        8176B88285FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      Caption = 'Atualizar'
      OnClick = AtualizarClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Excluir: TMenuItem
      Bitmap.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        0800000000004002000000000000000000000001000000010000FF00FF000280
        02000A85070013870B00138A0D00148B0E001F8D13001F9015002B9119002B93
        1C002C961E00389823003BA43000469D2D0048A7370066AA420084AC4E0093A3
        490086AD5100AABF6E00E6985100E79C5600E79E5800E99F5A00E9A05A00E9A1
        5C00EAA45F00F3A45B00F3A55C00F4A65E00EAA46100EAA56400EBA96700EBAD
        6600EDAF6700EDA96900EDAD6900EEAB6C00EAAF6D00EEAD6D00F4AA6400F6AC
        6600F6AD6800EEB16D00EEB46F00F7B06A00F7B26D00F7B46F00EFAF7200EEB1
        7100EAB27500EFB17500EEB47400EFB87700EFB57900EFB97A00EEB97D00EFBC
        7E00F0B27200F0B27400F8B77400F9B97600F0B57900F1B97900F2BA7D00F0BE
        7E00FABB7800FABF7E0099C16B009AC57200AAC17100ACC97B00EFBD8000EEBF
        8800F1BD8100F0BA8500F2BF8400F2BD8800ADCE8100AFD48900B0D99000C9C9
        9100F0C08200F6C08300FBC28300FCC48500F2C48900F2C68D00F3C98F00F3C4
        9000F3C49500F3CB9100F0C99500F4C99700F4CE9700FECC9100F3C69900F4CA
        9800F6D09700FFD19600F4D09900F6D39D00F6D49E00FED09800FFD39C00F6CE
        A400F3D3A300F6D0A100F6D5A100F6D5A400F7D8A400F8D8A300F8D8A700FFD9
        A600F2D7A900F6D5AC00F7DCAA00F8DDA900F8DDAD00EBDEB000F8DAB400F8DE
        B800F8E0AD00F2E5B500F8E1B100FFE0B200F8E0B500FFE1B600FAE5B500FBE9
        B700F2E7B800F2E7BD00FFE2B800FAE6B800FFE6BD00FAE9BB00FBEABC00FBED
        BF00DCE1C100DDE5C600E7E6C400FAE6C100F2EDC200FBEEC000FCEFC200FAED
        C500FFEDC700F2EBCA00F2EFCA00FBEBCA00FCEFCA00FCEFCC00FCF0C400F2F2
        CC00FEF6CB00FEF6CD00F2EED100F2F2D000F2F2D700FEF4D000FEF4D400FFFA
        D200FFFBD400F2F2D800F2F2DD00FEF5D800FFFBD800FFFCDC00F2F2E0000000
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
        003E333E363636363036000000000000000000000000004A4A75858575756B61
        594A3E3E00000000000000000000337CA2A29B9085777978736B604A36000000
        00000000003E6BA2A2A2A29B90470D0D010311604A30000000000000002798A2
        A2A2A2A2A04E010101010151973E00000000000000275EA2A2A2A2A2A64F0101
        0912040C974D000000000000001E1B436E9BA2A6A6500101028B8B038D592700
        0000000027171B282D3C636B90454646138C9C449373300000000000271B1B28
        2D3D54677C0697A5070101019C83300000000000271B28283D3D546785090BA0
        A50201019E933600000000001E1B1B2D2D4354678512010407010101A49E5700
        00000027191B28283C3D54677890060101010101A49E6B27000000271B1B1B2A
        2D43545F7185970F09094E0EA4948227000000271B1B1B2A2027333333273338
        49616B7C9493822B0000001E1B1E33332A273338576573878272653838416541
        270027274A3319141619273357656E879AA2A2A2875E2B332700334119141414
        14202B38565E72879AA2A2A2A2A281412700411714141414161E2B3857657587
        9BA2A2A29BA2A2812B0054141414141416203338576575879BA2A2A2A2A2A29B
        2B00411E14141414191E3341576B7598A2A29BA2A2A2A26E2B00004A1E141414
        1920334A5B6E7C98A2A2A2A2A29B712B0000000041271714192035565E658190
        9BA2A2A271352B000000000000002B27202B3338576E7C87755E562B20000000
        000000000000000000202B222B202B222B2B0000000000000000}
      Caption = 'Excluir'
      OnClick = ExcluirClick
    end
  end
end
