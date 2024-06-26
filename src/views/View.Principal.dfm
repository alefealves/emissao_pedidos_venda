object ViewPrincipal: TViewPrincipal
  Left = 0
  Top = 0
  Caption = 'ViewPrincipal'
  ClientHeight = 1248
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
    Top = 1223
    Width = 1658
    Height = 25
    Align = alBottom
    Padding.Right = 5
    TabOrder = 0
    ExplicitTop = 1158
    ExplicitWidth = 1634
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
    Height = 1223
    Align = alClient
    AutoSize = True
    TabOrder = 1
    ExplicitLeft = 888
    ExplicitTop = 648
    ExplicitWidth = 185
    ExplicitHeight = 41
  end
  object MainMenu1: TMainMenu
    Left = 152
    Top = 40
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Produtos1: TMenuItem
        Caption = 'Produtos'
      end
      object Clientes1: TMenuItem
        Caption = 'Clientes'
      end
    end
    object Movimentos1: TMenuItem
      Caption = 'Movimentos'
      object Vendas1: TMenuItem
        Caption = 'Venda'
      end
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      object Vendas2: TMenuItem
        Caption = 'Vendas'
      end
    end
  end
  object Conn: TFDConnection
    Params.Strings = (
      'Database=C:\Projetos Delphi\sistema_venda\DADOS.fdb'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    LoginPrompt = False
    Left = 40
    Top = 64
  end
end
