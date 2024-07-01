unit Controller.Pedido;

interface

uses
  System.SysUtils,
  Pedido,
  DAO.Pedido,
  IBX.IBDatabase,
  IBX.IBQuery;

type
  TControllerPedido = class
  private
  public
    constructor Create;
    destructor Destroy; override;
    function ListarPedidos(const LCampo: string; const LStrBuscar: string): String;
    procedure CarregarPedido(Pedido: TPedido; AIdPedido: integer);
    function Salvar(Pedido: TPedido; var sErro: string): Boolean;
    function Excluir(AIdPedido: integer; out sErro: string): Boolean;
    function SomaTotalPedido(AIdPedido: Integer; out sErro: string): Currency;
    function GetNextItemPedido(AIdPedido: Integer; out sErro: string): Integer;
    function AlterarStatus(AIdPedido: Integer; novoStatus: string; out sErro: string): Boolean;
  end;

implementation

{ TControllerPedido }

var
  DAOPedido: TDAOPedido;

procedure TControllerPedido.CarregarPedido(Pedido: TPedido; AIdPedido: integer);
begin
  DAOPedido.CarregarPedido(Pedido, AIdPedido);
end;

function TControllerPedido.Excluir(AIdPedido: integer; out sErro: string): Boolean;
begin
  result := DAOPedido.Excluir(AIdPedido, sErro);
end;

function TControllerPedido.ListarPedidos(const LCampo, LStrBuscar: string): String;
begin
  result := DAOPedido.ListarPedidos(LCampo, LStrBuscar);
end;

function TControllerPedido.Salvar(Pedido: TPedido; var sErro: string): Boolean;
begin
  result := DAOPedido.Salvar(Pedido, sErro);
end;

function TControllerPedido.SomaTotalPedido(AIdPedido: Integer; out sErro: string): Currency;
begin
  result := DAOPedido.SomaTotalPedido(AIdPedido, sErro);
end;

function TControllerPedido.GetNextItemPedido(AIdPedido: Integer; out sErro: string): Integer;
begin
  result := DAOPedido.GetNextItemPedido(AIdPedido, sErro);
end;

function TControllerPedido.AlterarStatus(AIdPedido: Integer; novoStatus: string; out sErro: string): Boolean;
begin
  result := DAOPedido.AlterarStatus(AIdPedido, novoStatus, sErro);
end;

constructor TControllerPedido.Create;
begin
  if (DAOPedido = nil) then
    DAOPedido := TDAOPedido.Create;
end;

destructor TControllerPedido.Destroy;
begin
  FreeAndNil(DAOPedido);
  inherited;
end;

end.
