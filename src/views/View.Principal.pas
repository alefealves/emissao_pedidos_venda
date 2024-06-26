unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Menus,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.ExtCtrls, IBX.IBDatabase;

type
  TViewPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Movimentos1: TMenuItem;
    Relatrios1: TMenuItem;
    Produtos1: TMenuItem;
    Clientes1: TMenuItem;
    Vendas1: TMenuItem;
    Vendas2: TMenuItem;
    PanelStatus: TPanel;
    LabelStatus: TLabel;
    pnBack: TPanel;
    IBDatabase: TIBDatabase;
    IBTransaction1: TIBTransaction;
    procedure FormCreate(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure Vendas1Click(Sender: TObject);
    procedure Vendas2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewPrincipal: TViewPrincipal;

implementation

{$R *.dfm}

uses
  Utils,
  View.Cliente.Buscar,
  View.Produto.Buscar,
  View.Pedido.Buscar,
  View.Relatorio.Vendas;

procedure TViewPrincipal.FormCreate(Sender: TObject);
var
  bancoConectado: string;
begin
  ReportMemoryLeaksOnShutdown := True;
  bancoConectado := '';

  try
    TUtils.SetConnection(IBDatabase, bancoConectado);
    LabelStatus.Caption := 'Data: ' + FormatDateTime('dd/mm/yyyy',Date) + ', Conectado a '+bancoConectado;
    LabelStatus.Font.Color := clGreen;
  except on E: Exception do
    begin
      LabelStatus.Caption := 'Desconectado';
      LabelStatus.Font.Color := clRed;
      Exception.Create(e.Message);
      Application.Terminate();
    end;
  end;
end;

procedure TViewPrincipal.Produtos1Click(Sender: TObject);
begin
  ViewProdutoBuscar := TViewProdutoBuscar.Create(nil);
  try
    ViewProdutoBuscar.ShowModal;
  finally
    FreeAndNil(ViewProdutoBuscar);
  end;
end;

procedure TViewPrincipal.Clientes1Click(Sender: TObject);
begin
  ViewClienteBuscar := TViewClienteBuscar.Create(nil);
  try
    ViewClienteBuscar.ShowModal;
  finally
    FreeAndNil(ViewClienteBuscar);
  end;
end;

procedure TViewPrincipal.Vendas1Click(Sender: TObject);
begin
  ViewPedidoBuscar := TViewPedidoBuscar.Create(nil);
  try
    ViewPedidoBuscar.ShowModal;
  finally
    FreeAndNil(ViewPedidoBuscar);
  end;
end;


procedure TViewPrincipal.Vendas2Click(Sender: TObject);
begin
  ViewRelatorioVendas := TViewRelatorioVendas.Create(nil);
  try
    ViewRelatorioVendas.ShowModal;
  finally
    FreeAndNil(ViewRelatorioVendas);
  end;
end;

//procedure TViewPrincipal.pnTelaInicialResize(Sender: TObject);
//begin
//  // Centralizando o TPanel
//  pnLogo.Left := (pnTelaInicial.Width - pnLogo.Width) div 2;
//  pnLogo.Top := (pnTelaInicial.Height - pnLogo.Height) div 2;
//end;
//
//procedure TViewPrincipal.Combustivel1Click(Sender: TObject);
//begin
//  ViewCombustivelBuscar := TViewCombustivelBuscar.Create(nil);
//  try
//    ViewCombustivelBuscar.ShowModal;
//  finally
//    FreeAndNil(ViewCombustivelBuscar);
//  end;
//end;
//


end.
