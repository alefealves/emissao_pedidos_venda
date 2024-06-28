inherited ViewPedidoItemCadastrar: TViewPedidoItemCadastrar
  Caption = 'Adicionar Produto ao Pedido'
  ClientHeight = 436
  ClientWidth = 755
  Font.Height = -24
  OnShow = FormShow
  ExplicitLeft = 5
  ExplicitTop = 5
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
    ExplicitWidth = 1524
    ExplicitHeight = 524
    object Label1: TLabel
      Left = 24
      Top = 25
      Width = 77
      Height = 32
      Caption = 'C'#243'digo'
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
      Left = 174
      Top = 226
      Width = 125
      Height = 32
      Caption = 'Quantidade'
    end
    object Label7: TLabel
      Left = 325
      Top = 226
      Width = 94
      Height = 32
      Caption = 'Val. Total'
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
      Width = 120
      Height = 40
      DisplayFormat = ',,0.00'
      TabOrder = 1
      OnExit = edtValor_UnitarioExit
    end
    object edtQuantidade: TNumberBox
      Left = 179
      Top = 264
      Width = 120
      Height = 40
      TabOrder = 2
      OnExit = edtQuantidadeExit
    end
    object edtValor_Total: TNumberBox
      Left = 325
      Top = 264
      Width = 120
      Height = 40
      TabStop = False
      Color = clBtnFace
      DisplayFormat = ',,0.00'
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
    ExplicitTop = 524
    ExplicitWidth = 1524
    ExplicitHeight = 82
    inherited btnCancelar: TBitBtn
      Left = 494
      Width = 260
      Height = 80
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      ExplicitLeft = 1262
      ExplicitTop = 2
      ExplicitWidth = 260
      ExplicitHeight = 78
    end
    inherited btnGravar: TBitBtn
      Left = 234
      Width = 260
      Height = 80
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      ExplicitLeft = 1002
      ExplicitTop = 2
      ExplicitWidth = 260
      ExplicitHeight = 78
    end
  end
end
