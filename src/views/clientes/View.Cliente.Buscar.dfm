inherited ViewClienteBuscar: TViewClienteBuscar
  Caption = 'Buscar Clientes'
  TextHeight = 32
  inherited pnGrid: TPanel
    inherited DBGrid1: TDBGrid
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_FANTASIA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RAZAO_SOCIAL'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CNPJ'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENDERECO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TELEFONE'
          Visible = True
        end>
    end
  end
  inherited pnBottom: TPanel
    inherited rdGroupFiltros: TRadioGroup
      Columns = 2
      ItemIndex = 1
      Items.Strings = (
        'C'#243'digo (F1)'
        'Nome Fantasia (F2)')
    end
  end
  inherited DataSource1: TDataSource
    DataSet = QListarClientes
  end
  object QListarClientes: TIBQuery
    Database = ViewPrincipal.IBDatabase
    Transaction = ViewPrincipal.IBTransaction1
    AutoCalcFields = False
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM CLIENTES ORDER BY 1')
    PrecommittedReads = False
    Left = 64
    Top = 282
    object QListarClientesID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID'
      Origin = 'CLIENTES.ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '000000'
    end
    object QListarClientesNOME_FANTASIA: TIBStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'NOME_FANTASIA'
      Origin = 'CLIENTES.NOME_FANTASIA'
      Required = True
      Size = 50
    end
    object QListarClientesRAZAO_SOCIAL: TIBStringField
      DisplayLabel = 'Razao Social'
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'CLIENTES.RAZAO_SOCIAL'
      Required = True
      Size = 50
    end
    object QListarClientesCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = 'CLIENTES.CNPJ'
      Required = True
      Size = 14
    end
    object QListarClientesENDERECO: TIBStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = 'CLIENTES.ENDERECO'
      Required = True
      Size = 100
    end
    object QListarClientesTELEFONE: TIntegerField
      DisplayLabel = 'Telefone'
      FieldName = 'TELEFONE'
      Origin = 'CLIENTES.TELEFONE'
    end
  end
end
