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
      Left = 251
      Top = 109
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
      Left = 557
      Top = 109
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
      Left = 251
      Top = 139
      Width = 300
      Height = 40
      TabOrder = 1
    end
    object edtRazao_Social: TEdit
      Left = 557
      Top = 139
      Width = 300
      Height = 40
      TabOrder = 2
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
    object edtCnpj: TMaskEdit
      Left = 29
      Top = 139
      Width = 220
      Height = 40
      EditMask = '00.000.000/0000-00;1;_'
      MaxLength = 18
      TabOrder = 0
      Text = '  .   .   /    -  '
      OnExit = edtCnpjExit
      OnKeyDown = edtCnpjKeyDown
    end
    object edtTelefone: TMaskEdit
      Left = 477
      Top = 216
      Width = 200
      Height = 40
      EditMask = '\(00\) 0000-0000'
      MaxLength = 14
      TabOrder = 4
      Text = '(  )     -    '
      OnExit = edtTelefoneExit
      OnKeyDown = edtTelefoneKeyDown
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
      Caption = 'Cancelar'
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
      Caption = 'Gravar'
      ExplicitLeft = 1023
      ExplicitWidth = 260
      ExplicitHeight = 80
    end
  end
end
