object ViewPrincipal: TViewPrincipal
  Left = 0
  Top = 0
  Caption = 'Sistema Vendas'
  ClientHeight = 1238
  ClientWidth = 1658
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -27
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  WindowState = wsMaximized
  OnCreate = FormCreate
  TextHeight = 37
  object PanelStatus: TPanel
    Left = 0
    Top = 1213
    Width = 1658
    Height = 25
    Align = alBottom
    Padding.Right = 5
    TabOrder = 0
    ExplicitTop = 1163
    ExplicitWidth = 1638
    object LabelStatus: TLabel
      Left = 1573
      Top = 1
      Width = 79
      Height = 23
      Margins.Right = 5
      Align = alRight
      Caption = 'Desconectado'
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
      ExplicitHeight = 15
    end
  end
  object pnBack: TPanel
    Left = 0
    Top = 0
    Width = 1658
    Height = 1213
    Align = alClient
    AutoSize = True
    TabOrder = 1
    ExplicitWidth = 1638
    ExplicitHeight = 1163
  end
  object MainMenu1: TMainMenu
    Left = 152
    Top = 40
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Produtos1: TMenuItem
        Caption = 'Produtos'
        OnClick = Produtos1Click
      end
      object Clientes1: TMenuItem
        Caption = 'Clientes'
        OnClick = Clientes1Click
      end
    end
    object Movimentos1: TMenuItem
      Caption = 'Movimentos'
      object Vendas1: TMenuItem
        Caption = 'Pedidos'
        OnClick = Vendas1Click
      end
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      object Vendas2: TMenuItem
        Caption = 'Vendas'
      end
    end
  end
  object IBDatabase: TIBDatabase
    DatabaseName = 'localhost:C:\Projetos Delphi\sistema_venda\DADOS.fdb'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=WIN1252')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    ServerType = 'IBServer'
    AllowStreamedConnected = False
    Left = 56
    Top = 64
  end
  object IBTransaction1: TIBTransaction
    DefaultDatabase = IBDatabase
    Left = 56
    Top = 136
  end
end
