unit View.Produto.Buscar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Heranca.Buscar, Data.DB, Vcl.Menus, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, IBX.IBCustomDataSet, IBX.IBQuery;

type
  TViewProdutoBuscar = class(TViewHerancaBuscar)
    QListarProdutos: TIBQuery;
    QListarProdutosID: TIntegerField;
    QListarProdutosDESCRICAO: TIBStringField;
    QListarProdutosMARCA: TIBStringField;
    QListarProdutosPRECO: TIBBCDField;
  private
  protected
    procedure BuscarDados; override;
    procedure ChamarTelaCadastrar(const AId: Integer = 0); override;
    procedure Excluir; override;
  public
    { Public declarations }
  end;

var
  ViewProdutoBuscar: TViewProdutoBuscar;

implementation

{$R *.dfm}

uses
  View.Principal,
  View.Produto.Cadastrar,
  Controller.Produto,
  Utils;

{ TViewProdutoBuscar }

procedure TViewProdutoBuscar.BuscarDados;
var
  ControllerProduto: TControllerProduto;
  LCampo: string;
begin

  ControllerProduto := TControllerProduto.Create;
  try
    LCampo := '';

    case rdGroupFiltros.ItemIndex of
     0: LCampo := 'ID';
     1: LCampo := 'DESCRICAO';
    end;

    DataSource1.DataSet.Close;
    QListarProdutos.SQL.Text := ControllerProduto.ListarProdutos(LCampo, Trim(edtBuscar.Text));
    DataSource1.DataSet.Open;
  finally
    FreeAndNil(ControllerProduto);
  end;

  inherited;
end;

procedure TViewProdutoBuscar.ChamarTelaCadastrar(const AId: Integer = 0);
var
  ViewProdutoCadastrar: TViewProdutoCadastrar;
begin

  inherited;
  ViewProdutoCadastrar := TViewProdutoCadastrar.Create(nil);
  try
    ViewProdutoCadastrar.IdRegistroAlterar := AId;
    if(ViewProdutoCadastrar.ShowModal = mrOk)then
    begin
      inherited UltId := ViewProdutoCadastrar.UltId;
    end;
  finally
    ViewProdutoCadastrar.Free;
    Self.BuscarDados;
  end;
end;

procedure TViewProdutoBuscar.Excluir;
var
  ControllerProduto: TControllerProduto;
  sErro: string;
begin

  inherited;

  ControllerProduto := TControllerProduto.Create;
  try

    if not ControllerProduto.Excluir(IdSelecionado,sErro) then
      raise Exception.Create(sErro)
    else
      Application.MessageBox('Registro exclu�do com sucesso', 'Aten��o', MB_OK +
        MB_ICONWARNING);

  finally
    FreeAndNil(ControllerProduto);
    Self.BuscarDados;
  end;
end;

end.
