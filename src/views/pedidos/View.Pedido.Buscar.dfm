inherited ViewPedidoBuscar: TViewPedidoBuscar
  Caption = 'Buscar Pedidos'
  ClientHeight = 988
  ClientWidth = 1460
  ExplicitWidth = 1472
  TextHeight = 32
  inherited pnTop: TPanel
    Width = 1460
    ExplicitWidth = 1440
    inherited edtBuscar: TEdit
      Width = 972
      ExplicitWidth = 952
    end
  end
  inherited pnGrid: TPanel
    Width = 1460
    Height = 734
    ExplicitWidth = 1440
    ExplicitHeight = 684
    inherited DBGrid1: TDBGrid
      Height = 734
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_CLIENTE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_FANTASIA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_TOTAL'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'STATUS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA'
          Visible = True
        end>
    end
  end
  inherited pnBottom: TPanel
    Top = 888
    Width = 1460
    ExplicitTop = 838
    ExplicitWidth = 1440
    inherited rdGroupFiltros: TRadioGroup
      Columns = 2
      ItemIndex = 1
      Items.Strings = (
        'C'#243'digo (F1)'
        'Nome Cliente (F2)')
      ExplicitWidth = 710
    end
    inherited btnCadastrar: TBitBtn
      ExplicitLeft = 711
    end
    inherited btnUtilizar: TBitBtn
      ExplicitLeft = 1075
    end
    inherited btnFechar: TBitBtn
      ExplicitLeft = 1257
      ExplicitTop = 15
    end
    inherited btnAlterar: TBitBtn
      ExplicitLeft = 893
    end
  end
  inherited pnTotal: TPanel
    Top = 848
    Width = 1460
    ExplicitTop = 798
    ExplicitWidth = 1440
    inherited lbTotal: TLabel
      Height = 38
    end
  end
  inherited DataSource1: TDataSource
    DataSet = QListarPedidos
  end
  object QListarPedidos: TIBQuery
    Database = ViewPrincipal.IBDatabase
    Transaction = ViewPrincipal.IBTransaction1
    AutoCalcFields = False
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = False
    SQL.Strings = (
      'SELECT '
      'P.ID,'
      'P.ID_CLIENTE,'
      'C.NOME_FANTASIA,'
      'P.VALOR_TOTAL,'
      'P.STATUS,'
      'P.DATA'
      'FROM PEDIDOS P'
      'INNER JOIN CLIENTES C'
      'ON P.ID_CLIENTE = C.ID'
      'ORDER BY 1')
    PrecommittedReads = False
    Left = 64
    Top = 282
    object QListarPedidosID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID'
      Origin = 'CLIENTES.ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '000000'
    end
    object QListarPedidosID_CLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'ID_CLIENTE'
      Origin = 'PEDIDOS.ID_CLIENTE'
      DisplayFormat = '000000'
    end
    object QListarPedidosNOME_FANTASIA: TIBStringField
      DisplayLabel = 'Nome Cliente'
      FieldName = 'NOME_FANTASIA'
      Origin = 'CLIENTES.NOME_FANTASIA'
      Required = True
      Size = 50
    end
    object QListarPedidosVALOR_TOTAL: TIBBCDField
      DisplayLabel = 'Valor Total'
      FieldName = 'VALOR_TOTAL'
      Origin = 'PEDIDOS.VALOR_TOTAL'
      Required = True
      DisplayFormat = 'R$ ,,0.00'
      Precision = 18
      Size = 2
    end
    object QListarPedidosSTATUS: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'STATUS'
      Origin = 'PEDIDOS.STATUS'
      Size = 30
    end
    object QListarPedidosDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = 'PEDIDOS.DATA'
    end
  end
end
