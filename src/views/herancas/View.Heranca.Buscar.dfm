object ViewHerancaBuscar: TViewHerancaBuscar
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Buscar Base'
  ClientHeight = 1038
  ClientWidth = 1460
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -24
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  TextHeight = 32
  object pnTop: TPanel
    Left = 0
    Top = 0
    Width = 1460
    Height = 114
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Align = alTop
    BevelEdges = [beLeft, beTop, beRight]
    BevelKind = bkTile
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 1436
    DesignSize = (
      1456
      112)
    object Label1: TLabel
      Left = 32
      Top = 14
      Width = 142
      Height = 32
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      BiDiMode = bdLeftToRight
      Caption = 'Pesquisar por'
      ParentBiDiMode = False
    end
    object edtBuscar: TEdit
      Left = 32
      Top = 56
      Width = 1092
      Height = 40
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      OnChange = edtBuscarChange
      OnKeyDown = edtBuscarKeyDown
      OnKeyPress = edtBuscarKeyPress
      ExplicitWidth = 1068
    end
  end
  object pnGrid: TPanel
    Left = 0
    Top = 114
    Width = 1460
    Height = 784
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitWidth = 1436
    ExplicitHeight = 719
    object DBGrid1: TDBGrid
      Left = 0
      Top = 0
      Width = 1460
      Height = 784
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      Align = alClient
      DataSource = DataSource1
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      PopupMenu = PopupMenu1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -24
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnDblClick = DBGrid1DblClick
      OnKeyPress = DBGrid1KeyPress
      OnTitleClick = DBGrid1TitleClick
    end
  end
  object pnBottom: TPanel
    Left = 0
    Top = 938
    Width = 1460
    Height = 100
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 873
    ExplicitWidth = 1436
    object rdGroupFiltros: TRadioGroup
      Left = 1
      Top = 1
      Width = 730
      Height = 98
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      Align = alClient
      Caption = 'Buscar por:'
      TabOrder = 0
      OnClick = rdGroupFiltrosClick
      ExplicitWidth = 706
    end
    object btnCadastrar: TBitBtn
      AlignWithMargins = True
      Left = 731
      Top = 15
      Width = 180
      Height = 70
      Margins.Left = 0
      Margins.Top = 14
      Margins.Right = 2
      Margins.Bottom = 14
      Align = alRight
      Caption = 'Cadastrar'
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000C40E0000C40E00000000000000000001FF00FFFF00FF
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
      TabOrder = 1
      OnClick = btnCadastrarClick
      ExplicitLeft = 707
    end
    object btnUtilizar: TBitBtn
      AlignWithMargins = True
      Left = 1095
      Top = 15
      Width = 180
      Height = 70
      Margins.Left = 0
      Margins.Top = 14
      Margins.Right = 2
      Margins.Bottom = 14
      Align = alRight
      Caption = 'Utilizar'
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FF05710AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF05710A05710AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF05710A14A82405710AFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF05710A24B63C1CAF3005710A05710A05
        710A05710A05710A05710A05710A05710AFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF05710A39C6592FBF4C27B7
        3F1FB13318AA2811A6200EA31B0EA31B0EA31B0EA31B05710AFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF05710A4BD575
        44CF693BC85D32C14F29B94321B33618AC2B12A6220EA31B0EA31B0EA31B0571
        0AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FF05710A4ED77746D16C3DCA5F34C3532BBB4522B4391BAD2E14A824
        0FA31C0EA31B05710AFF00FFFF00FFFF00FFFF00FF1C78D51C78D51C78D51C78
        D51C78D51C78D51C78D51C5996FF00FF05710A4FD87A48D26F05710A05710A05
        710A05710A05710A05710A05710A05710A1C78D51C78D5FF00FF1C78D5A7DAFF
        4EB3FE4CB1FE4AAFFF48ADFF46ABFF44A9FF1C5996FF00FFFF00FF05710A50D9
        7C05710AFF00FFFF00FFE4F0FC3499FF3499FF3499FF3499FF3499FF3499FF1C
        78D51C78D5A8DBFF50B5FE4EB3FE4CB1FE4AAFFF48ADFF46ABFF1C5996FF00FF
        FF00FFFF00FF05710A05710AFF00FFFF00FFE4F0FC3499FF3499FF3499FF3499
        FF3499FF3499FF1C78D51C78D5A9DCFF52B7FE50B5FE4EB3FE4CB1FE4AAFFF48
        ADFF1C5996FF00FFFF00FFFF00FFFF00FF05710AFF00FFFF00FFE4F0FC3499FF
        3499FF3499FF3499FF3499FF3499FF1C78D51C78D5AADDFF54B9FE52B7FE50B5
        FE4EB3FE4CB1FE4AAFFF1C5996FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFE4F0FC3499FF3499FF3499FF3499FF3499FF3499FF1C78D51C78D5ABDEFF
        56BBFE54B9FE52B7FE50B5FE4EB3FE4CB1FE1C5996FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFE4F0FC3499FF3499FF3499FF3499FF3499FF3499FF1C
        78D51C78D5ACDFFF58BDFE56BBFE54B9FE52B7FE50B5FE4EB3FE1C5996FF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE4F0FC3499FF3499FF3499FF3499
        FF3499FF3499FF1C78D51C78D5ADE0FF5ABFFE58BDFE56BBFE54B9FE52B7FE50
        B5FE1C5996FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE4F0FCE4F0FC
        E4F0FCE4F0FCE4F0FCE4F0FCE4F0FCE4F0FC1C78D5629DCF398DCF388CCF378B
        CF368ACF3589CF3488CF1C59961C59961C59961C59961C59961C59961C59961C
        59961C5996FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1C78D5AFE2FF
        5EC3FE5CC1FE5ABFFE58BDFE56BBFE54B9FE3488CF50B5FE4EB3FE4CB1FE4AAF
        FF48ADFF46ABFF44A9FF1C78D5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF1C78D5B0E2FF5FC4FE5EC3FE5CC1FE5ABFFE58BDFE56BBFE3589CF52B7FE
        50B5FE4EB3FE4CB1FE4AAFFF48ADFF46ABFF1C78D5FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF1C78D5B0E3FF61C6FE5FC4FE5DC2FE5CC1FE5ABFFE58
        BDFE368ACF54B9FE52B7FE50B5FE4EB3FE4CB1FE4AAFFF48ADFF1C78D5FF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1C78D5B0E3FF61C6FE61C6FE5FC4
        FE5DC2FE5BC0FE59BEFE378BCF56BBFE54B9FE52B7FE50B5FE4EB3FE4CB1FE4A
        AFFF1C78D5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1C78D5B0E3FF
        61C6FE61C6FE61C6FE5FC4FE5DC2FE5BC0FE388CCF58BDFE56BBFE54B9FE52B7
        FE50B5FE4EB3FE4CB1FE1C78D5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF1C78D5BAE6FF61C6FE61C6FE61C6FE61C6FE5FC4FE5DC2FE398DCF59BEFE
        58BDFE56BBFE54B9FE52B7FE50B5FE4EB3FE1C78D5FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF1C78D5E7F3FCBAE6FFB0E3FFB0E3FFB0E3FFB0E2FFAF
        E1FF629DCFADDFFFACDEFFABDEFFAADDFFA9DCFFA8DBFFA7DAFF1C78D5FF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1C78D51C78D51C78D51C78
        D51C78D51C78D51C78D51C78D51C78D51C78D51C78D51C78D51C78D51C78D51C
        78D5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 2
      OnClick = btnUtilizarClick
      ExplicitLeft = 1071
    end
    object btnFechar: TBitBtn
      AlignWithMargins = True
      Left = 1277
      Top = 15
      Width = 180
      Height = 70
      Margins.Left = 0
      Margins.Top = 14
      Margins.Right = 2
      Margins.Bottom = 14
      Align = alRight
      Caption = 'Fechar'
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        0800000000004002000000000000000000000001000000010000FF00FF00381C
        73003D1F7200A4542B00A4552C00A25B3B00AB613B00AC623B00CC762700D77F
        2500A9634300AF6A4700AF6A4800B06A4700D8802600CB844A00D38C5400D393
        5F00E09C5F00CA8E6200C28D7500E09C6000D9A27700E1A16500EDAB6700E2A3
        6900E2A46900E1A56E00EDAB680007079A0004069E00100D9A00131098002614
        800034289400191BA5001C1CA5001F1FA8000412B5000A17B6000E19B3002021
        A7002223A8002525A8002B2BAB002C2CAB002E2FAD003530A2003C36A3003333
        AE003535AE003F3CAA00212BB7002831B8002E36B8003C3CB1004D45A6004642
        A8004747B5005E58B300665BAC00041DCC001B2BC2001B2DC5001D2FC6001E30
        C6000A29DA001635DD002A39C6002234C8002537C8002638CA00263ACC00283B
        CA002F3FCA00213CDA002A42D700374EDB003D54DC001642F8003A5AEC002650
        F800385FF9004E5FD700465ADA005562D0006161C0006B6BC4006070DB004864
        EC004166FB00446AFB00496EFC004E72FB004D71FF005679FB005478FC005B7A
        F8006F8CFA00C99A8200CB9D8600CB9E8800CDA28C00CBAA9C00D0A89300E8B8
        8D00E8BA9100E8BC9500E9BF9800DAB6A100E9C19C00E9C3A000E9C5A400E9C6
        A800E9C8AC00FDD6AA00FDD7AC00FDD8AE00E9CAB000E9CDB500E4CDBA00EACF
        BB00E8D1BD00FDD9B100FDDBB400FDDCB600FDDDB900FEDFBC00FDE0BD00829B
        F900E9D4C500E8D5C900E9D7CD00FAE0C000FDE1C100F9E2C500FDE3C400FEE4
        C600FDE5C900FDE6CC00FDE8CE00F7E7D500FDE9D100FEEAD500FEECD700F7E9
        DA00FEEDD900FEEEDD00FEF0E100FEF2E500FEF4E900FEF6ED00FEF7F000FEF8
        F100FEFAF400FFFBF800FEFCF900FEFEFD000000000000000000000000000000
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
        0000000000000000000066656565656565656565656565656565656565680000
        0000046D7A79777777767070706E6B6B6B69696B160600000000048297959590
        8F8F8B8B88807E7D757575736906000000000483979795958F908C8B8888807E
        7D75757369060000000004839A9797959090908F8B88887E7D7D757369060000
        000004839A9A9795959090908B8B88887E7D757569060000000004839D9A9797
        959790908C8B8888807E7D7569060000000004839D9A9A97979595908F908B88
        88807D7D69060000000004839D9D9A9A9795959090908B8B88887E7D6B060000
        000004839D9D9D9A989795959090908338387A7E6B0600573A0004839D9D9D9D
        9A97979595908D393E3E30786B053C263D2C04839D9D9D9D9A9A979795959133
        455A3E2F6702274F422504111B1B1B1B1B1B1B1B17171B1321485B411F285143
        230004080E0E0E0E0E0E0E0E0E0918180F22485C4C524B290000041015151512
        1515121215121B171714204D5E501E000000650B0B0B0B0B0B0B0B0B0B0B0D0D
        0A023461595E4532000000000000000000000000000000003B3562541E445F49
        2C000000000000000000000000000056358153290037445F4832000000000000
        000000000000003255582900000032494E230000000000000000000000000000
        2C2B000000000037230000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 3
      OnClick = btnFecharClick
      ExplicitTop = 13
    end
    object btnAlterar: TBitBtn
      AlignWithMargins = True
      Left = 913
      Top = 15
      Width = 180
      Height = 70
      Margins.Left = 0
      Margins.Top = 14
      Margins.Right = 2
      Margins.Bottom = 14
      Align = alRight
      Caption = 'Alterar'
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
      TabOrder = 4
      OnClick = btnAlterarClick
      ExplicitLeft = 889
    end
  end
  object pnTotal: TPanel
    Left = 0
    Top = 898
    Width = 1460
    Height = 40
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Align = alBottom
    TabOrder = 3
    ExplicitTop = 833
    ExplicitWidth = 1436
    object lbTotal: TLabel
      AlignWithMargins = True
      Left = 1138
      Top = 1
      Width = 301
      Height = 38
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 20
      Margins.Bottom = 0
      Align = alRight
      Caption = 'Registros Localizados: 00000'
      Layout = tlCenter
      ExplicitHeight = 32
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 184
    Top = 177
    object PopupMenu11: TMenuItem
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
      OnClick = PopupMenu11Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Excluir1: TMenuItem
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
      OnClick = Excluir1Click
    end
  end
  object DataSource1: TDataSource
    Left = 72
    Top = 202
  end
end
