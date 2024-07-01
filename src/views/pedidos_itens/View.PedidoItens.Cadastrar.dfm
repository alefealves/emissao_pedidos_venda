inherited ViewPedidoItemCadastrar: TViewPedidoItemCadastrar
  Caption = 'Adicionar Produto ao Pedido'
  ClientHeight = 436
  ClientWidth = 755
  Font.Height = -24
  OnShow = FormShow
  ExplicitWidth = 767
  ExplicitHeight = 474
  TextHeight = 32
  inherited pnDados: TPanel
    Width = 755
    Height = 354
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    ExplicitWidth = 735
    ExplicitHeight = 304
    object Label1: TLabel
      Left = 24
      Top = 25
      Width = 48
      Height = 32
      Caption = 'Item'
    end
    object Label2: TLabel
      Left = 131
      Top = 25
      Width = 128
      Height = 32
      Caption = 'C'#243'd. Pedido'
    end
    object Label3: TLabel
      Left = 21
      Top = 130
      Width = 186
      Height = 32
      Caption = 'C'#243'd. Produto (F8)'
    end
    object Label4: TLabel
      Left = 253
      Top = 130
      Width = 102
      Height = 32
      Caption = 'Descri'#231#227'o'
    end
    object Label5: TLabel
      Left = 21
      Top = 226
      Width = 127
      Height = 32
      Caption = 'Val. Unit'#225'rio'
    end
    object Label6: TLabel
      Left = 179
      Top = 226
      Width = 125
      Height = 32
      Caption = 'Quantidade'
    end
    object Label7: TLabel
      Left = 310
      Top = 226
      Width = 94
      Height = 32
      Caption = 'Val. Total'
    end
    object edtNum_Item: TNumberBox
      Left = 24
      Top = 63
      Width = 90
      Height = 40
      TabStop = False
      Color = clBtnFace
      DisplayFormat = '000000'
      ReadOnly = True
      TabOrder = 3
    end
    object edtId_Pedido: TNumberBox
      Left = 144
      Top = 63
      Width = 90
      Height = 40
      TabStop = False
      Color = clBtnFace
      DisplayFormat = '000000'
      ReadOnly = True
      TabOrder = 4
    end
    object edtId_Produto: TNumberBox
      Left = 28
      Top = 168
      Width = 80
      Height = 40
      TabOrder = 0
      OnExit = edtId_ProdutoExit
      OnKeyDown = edtId_ProdutoKeyDown
    end
    object edtDescricao: TEdit
      Left = 114
      Top = 168
      Width = 400
      Height = 40
      TabStop = False
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 5
    end
    object edtValor_Unitario: TNumberBox
      Left = 28
      Top = 264
      Width = 150
      Height = 40
      DisplayFormat = 'R$ ,,0.00'
      Mode = nbmCurrency
      TabOrder = 1
      OnExit = edtValor_UnitarioExit
    end
    object edtQuantidade: TNumberBox
      Left = 184
      Top = 264
      Width = 120
      Height = 40
      TabOrder = 2
      OnExit = edtQuantidadeExit
    end
    object edtValor_Total: TNumberBox
      Left = 310
      Top = 264
      Width = 150
      Height = 40
      TabStop = False
      Color = clBtnFace
      DisplayFormat = 'R$ ,,0.00'
      Mode = nbmCurrency
      ReadOnly = True
      TabOrder = 6
    end
  end
  inherited pnBottom: TPanel
    Top = 354
    Width = 755
    Height = 82
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    ExplicitTop = 304
    ExplicitWidth = 735
    ExplicitHeight = 82
    inherited btnCancelar: TBitBtn
      Left = 494
      Width = 260
      Height = 80
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      ExplicitLeft = 474
      ExplicitWidth = 260
      ExplicitHeight = 80
    end
    inherited btnGravar: TBitBtn
      Left = 234
      Width = 260
      Height = 80
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      ExplicitLeft = 214
      ExplicitWidth = 260
      ExplicitHeight = 80
    end
  end
end
