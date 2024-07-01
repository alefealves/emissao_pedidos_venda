object ViewRelatorioVendas: TViewRelatorioVendas
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio Vendas'
  ClientHeight = 882
  ClientWidth = 1248
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -24
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 32
  object pnTop: TPanel
    Left = 0
    Top = 0
    Width = 1248
    Height = 65
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 1232
    object cxDatIni: TcxDateEdit
      Left = 144
      Top = 14
      EditValue = 45474d
      TabOrder = 0
      Width = 150
    end
    object cxDatFim: TcxDateEdit
      Left = 421
      Top = 11
      EditValue = 0d
      TabOrder = 1
      Width = 150
    end
    object cxLabel1: TcxLabel
      Left = 16
      Top = 12
      Caption = 'Data In'#237'cio:'
      TabOrder = 2
    end
    object cxLabel2: TcxLabel
      Left = 311
      Top = 12
      Caption = 'Data Fim:'
      TabOrder = 3
    end
    object btnPesquisar: TcxButton
      Left = 577
      Top = 11
      Width = 150
      Height = 40
      Caption = 'Pesquisar'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360900000000000036000000280000001800000018000000010020000000
        000000000000E9240000E92400000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009691
        90FF736E6EFFAF7D7EFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00979291FF6C6C
        70FF174B82FF326089FFAF7B7BFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00838686FF3A79
        B1FF1A81FFFF0D62BCFF3B5F7FFFB07D7DFFFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF002698FFFF3DB0
        FFFF349DFFFF1C7EF8FF0C62BAFF395E7FFFB07B7DFFFF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF002996
        FFFF42ADFEFF349AFFFF1C7EF8FF0C60B8FF405F7FFFB17D7BFFFF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF002A96FEFF41AFFEFF349AFFFF1C7EF8FF0C5FB8FF3E5F7EFFB07B7BFFFF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF002A97FEFF41AFFEFF349AFFFF1A7BF8FF0B5FB7FF44627FFFA97A
        7EFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF002C98FEFF41ADFEFF349CFFFF197BF6FF0C5EB6FF2B58
        7FFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF002D99FEFF41ADFEFF339CFFFF287FE7FF3D60
        7BFFFF00FF00FF00FF00FF00FF00996964FF996964FF996964FF996964FF9969
        64FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF002D9AFEFF4BB5FFFF8CBDEDFFAC9F
        96FF6C5655FF93665FFF996964FFDDCCABFFFFFFD9FFFFFFD9FFFFFFD7FFE9D5
        B6FF996964FF996964FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00D1AD
        A5FFB68775FFCCAB8CFFFFFFD3FFFFFFD3FFFFFFD0FFFFFFCFFFFFFFD0FFFFFF
        D3FFFFFFE2FFD4BAA4FF996964FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00996B
        65FFD4AF8FFFFFEFB0FFFBEDB8FFFFFFCFFFFFFFCEFFFFFFCFFFFFFFD7FFFFFF
        DCFFFFFFEAFFFFFFFFFFD3BBB8FF996964FFFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009969
        64FFFFEAA6FFF2C78FFFFAEBB6FFFFFFD0FFFFFFCFFFFFFFD3FFFFFFE5FFFFFF
        F2FFFFFFFAFFFFFFFCFFFFFFFEFF996964FFFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00996964FFE6C9
        A0FFF6CA8BFFEEBA7FFFFBE7B4FFFFFFD0FFFFFFCFFFFFFFD7FFFFFFEBFFFFFF
        FEFFFFFFFCFFFFFFF2FFFFFFE5FFD8C6A5FF996964FFFF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00996964FFFFEF
        ADFFF0BC7DFFEBB075FFF7DDA7FFFEFCCBFFFFFFD1FFFFFFD5FFFFFFE6FFFFFF
        F6FFFFFFF6FFFFFFE6FFFFFFD7FFFFFFDAFF996964FFFF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00996964FFFFF0
        AFFFEFBA7BFFE9A56AFFF2C98FFFFCEFBCFFFFFFD1FFFFFFD3FFFFFFD9FFFFFF
        E1FFFFFFE2FFFFFFD9FFFFFFD3FFFFFFDAFF996964FFFF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00996964FFFFF2
        B2FFF3C484FFE99E63FFEDB57AFFF4D79FFFFCF4C2FFFFFFD1FFFFFFD3FFFFFF
        D3FFFFFFD3FFFFFFD0FFFFFFCFFFFFFFD8FF996964FFFF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00996964FFE6C9
        A0FFFCDE9EFFEFBA7EFFEEB779FFEFC284FFF6DAA1FFFBF2BFFFFFFFCFFFFFFF
        D1FFFFFFD0FFFFFFD0FFFFFFD1FFD9C6A5FF996964FFFF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009969
        64FFFFFEC2FFFBEBCAFFF6D7ACFFF0C186FFEFBF82FFF3CC95FFFAE3ADFFFCF0
        BCFFFBF4C1FFFEF6C4FFFFFFD4FF996964FFFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009969
        64FFD7BB9EFFFFFFFFFFFEF7EEFFF6D8ACFFEDB474FFE9A76BFFEDB478FFF0C4
        8AFFF6D49CFFFFF4B6FFD3B799FF996964FFFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00996964FFCEB6AFFFFFFFFFFFFFF4CBFFF6CF90FFF0BC7DFFF2BF81FFF7CE
        90FFFFEDA9FFD4B193FF996964FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00996964FF996964FFE1C9A0FFFFF7B5FFFFF2AFFFFFF2B1FFE9CC
        A4FF996964FF996964FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00996964FF996964FF996964FF996964FF9969
        64FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 4
      OnClick = btnPesquisarClick
    end
    object btnExportar: TcxButton
      Left = 733
      Top = 11
      Width = 180
      Height = 40
      Hint = 'Exportar Relat'#243'rio'
      Caption = 'Exportar PDF'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360900000000000036000000280000001800000018000000010020000000
        000000000000E9240000E92400000000000000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F3F3FFE5E4E4FFE5E4E4FFE5E4E4FFE5E4
        E4FFE5E4E4FFE5E4E4FFE5E4E4FFE5E4E4FFE5E4E4FFE5E4E4FFF4F4F3FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF9F9F9FF918A89FF8A7E7DFF908383FF908383FF9083
        83FF908383FF908383FF908383FF908383FF908383FF8A7E7DFF918A89FFF9F9
        F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF3F2F2FF897F7EFFEDDBDCFFFDEAECFFFDEBECFFFDEB
        ECFFFDEBECFFFDEBECFFFDEBECFFFDEBECFFFDEAECFFEDDBDCFF897F7EFFF3F2
        F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6
        F6FFF5F5F5FFF5F6F5FFE8E8E8FF8A807FFFEEDCDDFFC6B6B6FFB3A4A4FFB4A5
        A5FFB4A5A5FFB4A5A5FFB4A5A5FFB3A4A4FFC6B6B7FFEEDCDDFF8A807FFFE8E8
        E8FFF5F6F5FFF5F5F5FFF6F6F6FFFFFFFFFFFFFFFFFFFEFEFEFFB2ADACFF7B69
        66FF7C6866FF7D6866FF766260FF6F6160FFEFDEDFFFC7B7B8FFB5A5A5FFB6A6
        A6FFB6A6A6FFB6A6A6FFB6A6A6FFB5A5A5FFC7B8B8FFEFDEDFFF6F6160FF7662
        60FF7D6866FF7C6866FF7B6966FFB2ADACFFFEFEFEFFEEEEEEFF776260FF9D61
        5DFFA66763FFA66763FF9B605CFF78615FFFEDDDDDFFB1A2A2FF978989FF988B
        8AFF988B8AFF988B8AFF988B8AFF978989FFB1A2A2FFEDDDDDFF78615FFF9B60
        5CFFA66763FFA66763FF9D615DFF776260FFEEEEEEFFEBEBEBFF7A625FFFAA6A
        65FFAF6E69FF7F534FFF613F3BFF6B5957FFF0DFE0FFD5C5C6FFC7B7B8FFC7B8
        B8FFC7B8B8FFC7B8B8FFC7B8B8FFC7B7B8FFD5C5C6FFF0DFE0FF6B5957FF613F
        3BFF7F534FFFAF6E69FFAB6A65FF7A6260FFEBEBEBFFEBEBEBFF7A6260FFAA6A
        65FFAA6B66FF63413CFF7D4840FF745D5AFFF0DFE0FFAFA1A0FF948686FF9588
        87FF958887FF958887FF958887FF948686FFAFA1A0FFF0DFE0FF745D5AFF7D48
        40FF63413CFFAA6B66FFAD6B66FFB29290FFF9F9F9FFEBEBEBFF7A6260FFAA6A
        65FFAA6B67FF60403CFF633D37FF5A4744FF9D8E8DFFA19190FF9F8F8FFF9F8F
        8FFF9F8F8FFF9F8F8FFF9F8F8FFF9F8F8FFFA19190FF9D8E8DFF5A4744FF633D
        37FF60403CFFAA6B67FFAC6B66FFAA8B89FFF7F7F7FFEBEBEBFF7A6260FFAA6A
        65FFAF6E69FF99615DFF8E5B57FF8F5C57FF8E5A56FF8D5A56FF8E5A56FF8E5A
        56FF8E5A56FF8E5A56FF8E5A56FF8D5A56FF8E5B56FF905B57FF915D58FF905D
        58FF9A625EFFAF6E69FFAA6A65FF846B68FFEEEEEEFFEBEBEBFF7A6260FFAA6A
        65FFAF6E69FFB2706AFFB3706BFFB16F6AFFB16F6AFFB16F6AFFB16F6AFFB16F
        6AFFB16F6AFFB16F6AFFB16F6AFFB16F6AFFA36762FF8C5A55FF8B5954FF8B59
        54FF9A625DFFAF6E69FFAD6B66FFC4A19FFFFDFDFDFFEBEBEBFF7A6260FFAA6A
        65FFAE6E69FF96615DFF915E5AFFAC6C67FFAF6E69FFAF6E69FFAF6E69FFAF6E
        69FFAF6E69FFAF6E69FFAF6E69FFB06F69FF734D4FFF5E508FFF6B5BAAFF6556
        A0FF614553FFAB6B65FFAB6B66FF907572FFF0F1F1FFEBEBEBFF7A6260FFAA6A
        65FFAE6E69FF885955FF7F5450FFA96B67FFAF6E69FFAF6E69FFAF6E69FFAF6E
        69FFAF6E69FFAF6E69FFAF6E69FFB06F69FF724D4FFF5F5194FF6D5DB1FF6758
        A6FF604554FFAB6B65FFAA6A65FF79615EFFEAEBEBFFECECECFF77605EFFA767
        62FFAE6D68FFB06E69FFB06E69FFAF6E69FFAE6D68FFAE6D68FFAE6D68FFAE6D
        68FFAE6D68FFAE6D68FFAE6D68FFAE6D68FF9E645FFF855651FF855651FF8455
        51FF965F5BFFAE6D68FFA76762FF77605EFFECECECFFFBFBFBFF9C9392FF7256
        53FF765754FF6B4B48FF74514EFF6B4A47FF755552FF775653FF775653FF7756
        53FF775653FF775653FF775653FF775653FF785754FF775653FF6D4C49FF7653
        50FF6C4C49FF765754FF725653FF9C9392FFFBFBFBFFFFFFFFFFF9F9F9FFE3E3
        E3FFD7D7D6FF7F7271FFC8A5A5FF82706FFFD5C5C6FFDFCFD0FFDFCFCFFFDFCF
        CFFFDFCFCFFFDFCFCFFFDFCFCFFFDFCFCFFFDFCFD0FFD4C5C5FF7D6C6BFFC8A5
        A4FF7F7271FFD7D7D6FFE3E3E3FFF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF6F6F6FF8E807FFFEDC3C3FFE3C6C7FFFCEAEBFFFFEDEEFFFFEDEEFFFFED
        EEFFFFEDEEFFFFEDEEFFFFEDEEFFFFEDEEFFFFEDEEFFF2E1E2FF8D7978FFE3BB
        BBFF8F8180FFF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF4F4F4FF8C7E7DFFE7BEBEFFBBA2A2FFF6E5E6FFFDEBECFFFDEBECFFFDEB
        ECFFFDEBECFFFDEBECFFFDEBECFFFDEBECFFFEECEDFFF1DFE0FF8C7977FFE2B9
        B9FF8D7E7DFFF4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFAFAFAFF928988FF86706FFF736463FFF2E1E1FFFEECEDFFFDEBECFFFDEB
        ECFFFDEBECFFFDEBECFFFDEBECFFFDEBECFFFEECEDFFF2E1E1FF756665FF8670
        6FFF928988FFFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF1F0F0FFCFCECDFF817776FFEEDCDCFFFAE8E9FFF9E7E8FFF9E7
        E8FFF9E7E8FFF9E7E8FFF9E7E8FFF9E7E8FFFAE8E9FFEEDCDCFF817776FFCFCE
        CDFFF1F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFBFBFBFF928B8AFF8A7E7DFF908383FF908383FF9083
        83FF908383FF908383FF908383FF908383FF908383FF8A7E7DFF928B8AFFFBFB
        FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F3FFE5E4E4FFE5E4E4FFE5E4E4FFE5E4
        E4FFE5E4E4FFE5E4E4FFE5E4E4FFE5E4E4FFE5E4E4FFE5E4E4FFF4F3F3FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      TabOrder = 5
      OnClick = btnExportarClick
    end
  end
  object cxGridRelatorio: TcxGrid
    Left = 0
    Top = 65
    Width = 1248
    Height = 817
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 1232
    ExplicitHeight = 768
    object cxGridRelatorioDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = DsRelatorio
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cxGridRelatorioDBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
      end
      object cxGridRelatorioDBTableView1DESCRICAO: TcxGridDBColumn
        DataBinding.FieldName = 'DESCRICAO'
      end
      object cxGridRelatorioDBTableView1MARCA: TcxGridDBColumn
        DataBinding.FieldName = 'MARCA'
      end
      object cxGridRelatorioDBTableView1PRECO_UNITARIO: TcxGridDBColumn
        DataBinding.FieldName = 'PRECO_UNITARIO'
      end
      object cxGridRelatorioDBTableView1QUANTIDADE: TcxGridDBColumn
        DataBinding.FieldName = 'QUANTIDADE'
      end
      object cxGridRelatorioDBTableView1TOTAL_VENDIDO: TcxGridDBColumn
        DataBinding.FieldName = 'TOTAL_VENDIDO'
      end
    end
    object cxGridRelatorioLevel1: TcxGridLevel
      GridView = cxGridRelatorioDBTableView1
    end
  end
  object DsRelatorio: TDataSource
    DataSet = QRelatorio
    Left = 104
    Top = 344
  end
  object QRelatorio: TIBQuery
    Database = ViewPrincipal.IBDatabase
    Transaction = ViewPrincipal.IBTransaction1
    AutoCalcFields = False
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT'
      '*'
      'FROM '
      'SP_TOP2_PRODUTOS_VENDIDOS(:DATA_INICIO, :DATA_FIM);')
    PrecommittedReads = False
    Left = 96
    Top = 432
    ParamData = <
      item
        DataType = ftDate
        Name = 'DATA_INICIO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_FIM'
        ParamType = ptInput
      end>
    object QRelatorioID: TIntegerField
      DisplayLabel = 'C'#243'd. Produto'
      FieldName = 'ID'
      Origin = 'SP_TOP2_PRODUTOS_VENDIDOS.ID'
      DisplayFormat = '000000'
    end
    object QRelatorioDESCRICAO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Origin = 'SP_TOP2_PRODUTOS_VENDIDOS.DESCRICAO'
      Size = 100
    end
    object QRelatorioMARCA: TIBStringField
      DisplayLabel = 'Marca'
      FieldName = 'MARCA'
      Origin = 'SP_TOP2_PRODUTOS_VENDIDOS.MARCA'
      Size = 30
    end
    object QRelatorioPRECO_UNITARIO: TIBBCDField
      DisplayLabel = 'Pre'#231'o Unit'#225'rio'
      FieldName = 'PRECO_UNITARIO'
      Origin = 'SP_TOP2_PRODUTOS_VENDIDOS.PRECO_UNITARIO'
      DisplayFormat = 'R$ ,,0.00'
      Precision = 18
      Size = 2
    end
    object QRelatorioQUANTIDADE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'QUANTIDADE'
      Origin = 'SP_TOP2_PRODUTOS_VENDIDOS.QUANTIDADE'
      Precision = 18
      Size = 2
    end
    object QRelatorioTOTAL_VENDIDO: TIBBCDField
      DisplayLabel = 'Total Vendido'
      FieldName = 'TOTAL_VENDIDO'
      Origin = 'SP_TOP2_PRODUTOS_VENDIDOS.TOTAL_VENDIDO'
      DisplayFormat = 'R$ ,,0.00'
      Precision = 18
      Size = 2
    end
  end
  object frx_produtos: TfrxDBDataset
    UserName = 'frx_produtos'
    CloseDataSource = False
    DataSource = DsRelatorio
    BCDToCurrency = False
    DataSetOptions = []
    Left = 1008
    Top = 154
    FieldDefs = <
      item
        FieldName = 'ID'
      end
      item
        FieldName = 'DESCRICAO'
        FieldType = fftString
        Size = 100
      end
      item
        FieldName = 'MARCA'
        FieldType = fftString
        Size = 30
      end
      item
        FieldName = 'PRECO_UNITARIO'
      end
      item
        FieldName = 'QUANTIDADE'
      end
      item
        FieldName = 'TOTAL_VENDIDO'
      end>
  end
  object frx_relatorio: TfrxReport
    Version = '2024.2.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45474.600271400480000000
    ReportOptions.LastChange = 45474.731956817130000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 1100
    Top = 154
    Datasets = <
      item
        DataSet = frx_produtos
        DataSetName = 'frx_produtos'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 45.354360000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 222.992256120000000000
          Top = 11.338589960000000000
          Width = 207.874150730000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio Produtos')
          ParentFont = False
        end
        object Date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 464.882190000000100000
          Top = 11.338590000000000000
          Width = 79.370129999999990000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          ParentFont = False
        end
        object Time: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 548.031849999999900000
          Top = 11.338590000000000000
          Width = 79.370129999999990000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          ParentFont = False
        end
        object Page: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 631.181510000000100000
          Top = 11.338590000000000000
          Width = 79.370129999999990000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 124.724490000000000000
        Width = 718.110700000000000000
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779532450000005000
          Width = 64.252013590000000000
          Height = 15.118114040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 272.126160000000000000
          Width = 94.488253590000000000
          Height = 15.118114040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Marca')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 551.811380000000000000
          Top = 3.779529999999994000
          Width = 75.590603590000000000
          Height = 15.118114040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 472.441250000000000000
          Top = 3.779529999999994000
          Width = 64.252013590000000000
          Height = 15.118114040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Pre'#231'o Unit'#225'rio'
            '')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 634.961040000000000000
          Top = 3.779529999999994000
          Width = 75.590603590000000000
          Height = 15.118114040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Total Vendido')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 170.078850000000000000
        Width = 718.110700000000000000
        DataSet = frx_produtos
        DataSetName = 'frx_produtos'
        RowCount = 0
        object frx_produtosDESCRICAO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 3.779529999999994000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'DESCRICAO'
          DataSet = frx_produtos
          DataSetName = 'frx_produtos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_produtos."DESCRICAO"]')
          ParentFont = False
        end
        object frx_produtosMARCA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 279.685220000000000000
          Top = 3.779529999999994000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'MARCA'
          DataSet = frx_produtos
          DataSetName = 'frx_produtos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_produtos."MARCA"]')
          ParentFont = False
        end
        object frx_produtosPRECO_UNITARIO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 476.220780000000000000
          Top = 3.779529999999994000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'PRECO_UNITARIO'
          DataSet = frx_produtos
          DataSetName = 'frx_produtos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_produtos."PRECO_UNITARIO"]')
          ParentFont = False
        end
        object frx_produtosQUANTIDADE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 555.590910000000000000
          Top = 3.779529999999994000
          Width = 79.370129999999990000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'QUANTIDADE'
          DataSet = frx_produtos
          DataSetName = 'frx_produtos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_produtos."QUANTIDADE"]')
          ParentFont = False
        end
        object frx_produtosTOTAL_VENDIDO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 634.961039999999900000
          Top = 3.779529999999994000
          Width = 79.370129999999990000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'TOTAL_VENDIDO'
          DataSet = frx_produtos
          DataSetName = 'frx_produtos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_produtos."TOTAL_VENDIDO"]')
          ParentFont = False
        end
      end
    end
  end
end
