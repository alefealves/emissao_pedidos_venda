unit Controller.Produto;

interface

uses
  System.SysUtils,
  Produto,
  DAO.Produto,
  IBX.IBDatabase,
  IBX.IBQuery;

type
  TControllerProduto = class
  private
  public
    constructor Create;
    destructor Destroy; override;
    function ListarProdutos(const LCampo: string; const LStrBuscar: string): String;
    procedure CarregarProduto(Produto: TProduto; AIdProduto: integer);
    function Salvar(Produto: TProduto; var sErro: string): Boolean;
    function Excluir(AIdProduto: integer; out sErro: string): Boolean;
    function LookProduto(Produto: TProduto; AIdProduto: integer; var sErro: string): Boolean;
  end;

implementation

{ TControllerProduto }

var
  DAOProduto: TDAOProduto;

procedure TControllerProduto.CarregarProduto(Produto: TProduto; AIdProduto: integer);
begin
  DAOProduto.CarregarProduto(Produto, AIdProduto);
end;

function TControllerProduto.Excluir(AIdProduto: integer; out sErro: string): Boolean;
begin
  result := DAOProduto.Excluir(AIdProduto, sErro);
end;

function TControllerProduto.ListarProdutos(const LCampo, LStrBuscar: string): String;
begin
  result := DAOProduto.ListarProdutos(LCampo, LStrBuscar);
end;

function TControllerProduto.Salvar(Produto: TProduto; var sErro: string): Boolean;
begin
  result := DAOProduto.Salvar(Produto, sErro);
end;

function TControllerProduto.LookProduto(Produto: TProduto; AIdProduto: integer; var sErro: string): Boolean;
begin
  result := DAOProduto.LookProduto(Produto, AIdProduto, sErro);
end;

constructor TControllerProduto.Create;
begin
  if (DAOProduto = nil) then
    DAOProduto := TDAOProduto.Create;
end;

destructor TControllerProduto.Destroy;
begin
  FreeAndNil(DAOProduto);
  inherited;
end;


end.
