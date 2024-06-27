inherited ViewProdutoBuscar: TViewProdutoBuscar
  Caption = 'Buscar Produtos'
  ExplicitWidth = 1452
  ExplicitHeight = 1026
  TextHeight = 32
  inherited pnTop: TPanel
    ExplicitWidth = 1420
    inherited edtBuscar: TEdit
      Width = 1032
      ExplicitWidth = 1012
    end
  end
  inherited pnGrid: TPanel
    ExplicitWidth = 1420
    ExplicitHeight = 684
    inherited DBGrid1: TDBGrid
      Width = 1440
      Height = 734
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MARCA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECO'
          Visible = True
        end>
    end
  end
  inherited pnBottom: TPanel
    ExplicitTop = 838
    ExplicitWidth = 1420
    inherited rdGroupFiltros: TRadioGroup
      Width = 710
      Columns = 2
      ItemIndex = 1
      Items.Strings = (
        'C'#243'digo (F1)'
        'Descri'#231#227'o (F2)')
      ExplicitWidth = 690
    end
    inherited btnCadastrar: TBitBtn
      Left = 711
      ExplicitLeft = 691
    end
    inherited btnUtilizar: TBitBtn
      Left = 1075
      ExplicitLeft = 1055
    end
    inherited btnFechar: TBitBtn
      Left = 1257
      ExplicitLeft = 1237
      ExplicitTop = 15
    end
    inherited btnAlterar: TBitBtn
      Left = 893
      ExplicitLeft = 873
    end
  end
  inherited pnTotal: TPanel
    ExplicitTop = 798
    ExplicitWidth = 1420
    inherited lbTotal: TLabel
      Left = 1118
      Height = 38
      ExplicitLeft = 1118
    end
  end
  inherited DataSource1: TDataSource
    DataSet = QListarProdutos
  end
  object QListarProdutos: TIBQuery
    Database = ViewPrincipal.IBDatabase
    Transaction = ViewPrincipal.IBTransaction1
    AutoCalcFields = False
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = False
    SQL.Strings = (
      'SELECT * FROM PRODUTOS ORDER BY 1')
    PrecommittedReads = False
    Left = 64
    Top = 282
    object QListarProdutosID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID'
      Origin = 'CLIENTES.ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '000000'
    end
    object QListarProdutosDESCRICAO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Origin = 'PRODUTOS.DESCRICAO'
      Required = True
      Size = 100
    end
    object QListarProdutosMARCA: TIBStringField
      DisplayLabel = 'Marca'
      FieldName = 'MARCA'
      Origin = 'PRODUTOS.MARCA'
      Required = True
      Size = 30
    end
    object QListarProdutosPRECO: TIBBCDField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'PRECO'
      Origin = 'PRODUTOS.PRECO'
      Required = True
      Precision = 18
      Size = 2
    end
  end
end
