inherited ViewProdutoCadastrar: TViewProdutoCadastrar
  Caption = 'Cadastrar Produto'
  ClientHeight = 606
  ClientWidth = 1564
  Font.Height = -24
  OnShow = FormShow
  ExplicitLeft = 5
  ExplicitTop = 5
  ExplicitWidth = 1576
  ExplicitHeight = 644
  TextHeight = 32
  inherited pnDados: TPanel
    Width = 1564
    Height = 524
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    ExplicitWidth = 1564
    ExplicitHeight = 524
    object Label1: TLabel
      Left = 24
      Top = 25
      Width = 77
      Height = 32
      Caption = 'C'#243'digo'
    end
    object Label2: TLabel
      Left = 123
      Top = 25
      Width = 102
      Height = 32
      Caption = 'Descri'#231#227'o'
    end
    object Label3: TLabel
      Left = 24
      Top = 125
      Width = 65
      Height = 32
      Caption = 'Marca'
    end
    object Label6: TLabel
      Left = 197
      Top = 125
      Width = 59
      Height = 32
      Caption = 'Pre'#231'o'
    end
    object edtID: TNumberBox
      Left = 24
      Top = 63
      Width = 80
      Height = 40
      TabStop = False
      Color = clBtnFace
      DisplayFormat = '000000'
      ReadOnly = True
      TabOrder = 0
    end
    object edtDescricao: TEdit
      Left = 123
      Top = 63
      Width = 400
      Height = 40
      TabOrder = 1
    end
    object edtPreco: TNumberBox
      Left = 197
      Top = 156
      Width = 120
      Height = 40
      DisplayFormat = ',,0.00'
      TabOrder = 2
    end
    object edtMarca: TEdit
      Left = 24
      Top = 156
      Width = 160
      Height = 40
      TabOrder = 3
    end
  end
  inherited pnBottom: TPanel
    Top = 524
    Width = 1564
    Height = 82
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    ExplicitTop = 524
    ExplicitWidth = 1564
    ExplicitHeight = 82
    inherited btnCancelar: TBitBtn
      Left = 1303
      Width = 260
      Height = 80
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      ExplicitLeft = 1302
      ExplicitTop = 2
      ExplicitWidth = 260
      ExplicitHeight = 78
    end
    inherited btnGravar: TBitBtn
      Left = 1043
      Width = 260
      Height = 80
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      ExplicitLeft = 1042
      ExplicitTop = 2
      ExplicitWidth = 260
      ExplicitHeight = 78
    end
  end
end
