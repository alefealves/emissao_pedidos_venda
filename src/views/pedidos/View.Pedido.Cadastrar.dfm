inherited ViewPedidoCadastrar: TViewPedidoCadastrar
  Caption = 'Cadastrar Pedido'
  ClientHeight = 664
  ClientWidth = 1564
  Font.Height = -24
  ExplicitWidth = 1576
  ExplicitHeight = 702
  TextHeight = 32
  inherited pnDados: TPanel
    Width = 1564
    Height = 582
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    ExplicitLeft = -600
    ExplicitTop = -88
    ExplicitWidth = 1564
    ExplicitHeight = 582
    object pnCabecalho: TPanel
      Left = 1
      Top = 1
      Width = 1562
      Height = 210
      Align = alTop
      TabOrder = 0
      ExplicitWidth = 1542
      object Label1: TLabel
        Left = 24
        Top = 25
        Width = 77
        Height = 32
        Caption = 'C'#243'digo'
      end
      object Label2: TLabel
        Left = 235
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
        Left = 144
        Top = 26
        Width = 77
        Height = 32
        Caption = 'C'#243'digo'
      end
      object Label4: TLabel
        Left = 168
        Top = 117
        Width = 49
        Height = 32
        Caption = 'Data'
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
      object edtDescricao: TEdit
        Left = 227
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
        Top = 148
        Width = 120
        Height = 40
        TabStop = False
        Color = clBtnFace
        DisplayFormat = ',,0.00'
        ReadOnly = True
        TabOrder = 1
      end
      object edtId_Cliente: TNumberBox
        Left = 144
        Top = 64
        Width = 80
        Height = 40
        TabOrder = 0
      end
      object edtData: TEdit
        Left = 168
        Top = 148
        Width = 140
        Height = 40
        TabStop = False
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 4
      end
    end
    object cxGridItens: TcxGrid
      Left = 1
      Top = 211
      Width = 1562
      Height = 370
      Align = alClient
      TabOrder = 1
      TabStop = False
      DragOpening = False
      ExplicitLeft = 2
      ExplicitTop = 204
      object cxGridItensDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DataSource1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cxGridItensDBTableView1ID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
        end
        object cxGridItensDBTableView1ID_PEDIDO: TcxGridDBColumn
          DataBinding.FieldName = 'ID_PEDIDO'
        end
        object cxGridItensDBTableView1ID_PRODUTO: TcxGridDBColumn
          DataBinding.FieldName = 'ID_PRODUTO'
        end
        object cxGridItensDBTableView1QUANTIDADE: TcxGridDBColumn
          DataBinding.FieldName = 'QUANTIDADE'
        end
        object cxGridItensDBTableView1VALOR_UNITARIO: TcxGridDBColumn
          DataBinding.FieldName = 'VALOR_UNITARIO'
        end
        object cxGridItensDBTableView1VALOR_TOTAL: TcxGridDBColumn
          DataBinding.FieldName = 'VALOR_TOTAL'
        end
      end
      object cxGridItensLevel1: TcxGridLevel
        GridView = cxGridItensDBTableView1
      end
    end
  end
  inherited pnBottom: TPanel
    Top = 582
    Width = 1564
    Height = 82
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    ExplicitTop = 532
    ExplicitWidth = 1544
    ExplicitHeight = 82
    inherited btnCancelar: TBitBtn
      Left = 1303
      Width = 260
      Height = 80
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      ExplicitLeft = 1283
      ExplicitWidth = 260
      ExplicitHeight = 80
    end
    inherited btnGravar: TBitBtn
      Left = 1043
      Width = 260
      Height = 80
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      ExplicitLeft = 1023
      ExplicitWidth = 260
      ExplicitHeight = 80
    end
  end
  object DataSource1: TDataSource
    DataSet = QItensPedido
    Left = 753
    Top = 289
  end
  object QItensPedido: TIBQuery
    Database = ViewPrincipal.IBDatabase
    Transaction = ViewPrincipal.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT'
      'PI.ID,'
      'PI.ID_PRODUTO,'
      'P.QUANTIDADE,'
      'P.VALOR_UNITARIO,'
      'P.VALOR_TOTAL'
      'FROM PEDIDOS_ITENS PI'
      'INNER JOIN PEDIDOS P'
      'ON PI.ID_PEDIDO = P.ID'
      'ORDER BY PI.ID')
    PrecommittedReads = False
    Left = 848
    Top = 304
    object QItensPedidoID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID'
      Origin = 'PEDIDOS_ITENS.ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
      DisplayFormat = '000000'
    end
    object QItensPedidoID_PEDIDO: TIntegerField
      DisplayLabel = 'C'#243'd. Pedido'
      FieldName = 'ID_PEDIDO'
      Origin = 'PEDIDOS_ITENS.ID_PEDIDO'
      ReadOnly = True
    end
    object QItensPedidoID_PRODUTO: TIntegerField
      DisplayLabel = 'C'#243'd. Produto'
      FieldName = 'ID_PRODUTO'
      Origin = 'PEDIDOS_ITENS.ID_PRODUTO'
    end
    object QItensPedidoQUANTIDADE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'QUANTIDADE'
      Origin = 'PEDIDOS_ITENS.QUANTIDADE'
      Required = True
      Precision = 18
      Size = 2
    end
    object QItensPedidoVALOR_UNITARIO: TIBBCDField
      DisplayLabel = 'Val. Unit'#225'rio'
      FieldName = 'VALOR_UNITARIO'
      Origin = 'PEDIDOS_ITENS.VALOR_UNITARIO'
      Required = True
      Precision = 18
      Size = 2
    end
    object QItensPedidoVALOR_TOTAL: TIBBCDField
      DisplayLabel = 'Val. Total'
      FieldName = 'VALOR_TOTAL'
      Origin = 'PEDIDOS_ITENS.VALOR_TOTAL'
      ReadOnly = True
      Required = True
      Precision = 18
      Size = 2
    end
  end
end
