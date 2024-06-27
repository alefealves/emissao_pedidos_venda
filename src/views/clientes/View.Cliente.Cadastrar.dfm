inherited ViewClienteCadastrar: TViewClienteCadastrar
  Caption = 'Cadastrar Cliente'
  ClientHeight = 576
  ClientWidth = 1564
  Font.Height = -24
  OnShow = FormShow
  ExplicitWidth = 1576
  ExplicitHeight = 614
  TextHeight = 32
  inherited pnDados: TPanel
    Width = 1564
    Height = 494
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    ExplicitWidth = 1544
    ExplicitHeight = 444
    object Label2: TLabel
      Left = 171
      Top = 113
      Width = 135
      Height = 32
      Caption = 'Nome Social'
    end
    object Label1: TLabel
      Left = 24
      Top = 25
      Width = 77
      Height = 32
      Caption = 'C'#243'digo'
    end
    object Label3: TLabel
      Left = 24
      Top = 109
      Width = 53
      Height = 32
      Caption = 'CNPJ'
    end
    object Label4: TLabel
      Left = 24
      Top = 185
      Width = 99
      Height = 32
      Caption = 'Endere'#231'o'
    end
    object Label5: TLabel
      Left = 477
      Top = 113
      Width = 132
      Height = 32
      Caption = 'Raz'#227'o Social'
    end
    object Label6: TLabel
      Left = 477
      Top = 185
      Width = 92
      Height = 32
      Caption = 'Telefone'
    end
    object edtNome_Social: TEdit
      Left = 171
      Top = 140
      Width = 300
      Height = 40
      TabOrder = 1
    end
    object edtCnpj: TNumberBox
      Left = 24
      Top = 140
      Width = 140
      Height = 40
      TabOrder = 0
    end
    object edtRazao_Social: TEdit
      Left = 477
      Top = 140
      Width = 300
      Height = 40
      TabOrder = 2
    end
    object edtTelefone: TNumberBox
      Left = 477
      Top = 216
      Width = 120
      Height = 40
      TabOrder = 4
    end
    object edtEndereco: TEdit
      Left = 24
      Top = 216
      Width = 447
      Height = 40
      TabOrder = 3
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
      TabOrder = 5
    end
  end
  inherited pnBottom: TPanel
    Top = 494
    Width = 1564
    Height = 82
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    ExplicitTop = 444
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
end
