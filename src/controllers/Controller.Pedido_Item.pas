unit Controller.Pedido_Item;

interface

uses
  System.SysUtils,
  Pedido_Item,
  DAO.Pedido_Item,
  IBX.IBDatabase,
  IBX.IBQuery;

type
  TControllerPedidoItem = class
  private
  public
    constructor Create;
    destructor Destroy; override;
    function ListarPedidoItens(AIdPedido: integer): String;
    procedure CarregarPedidoItem(Pedido_Item: TPedido_Item; AIdPedido_Item: integer; AIdPedido: integer);
    function Salvar(Pedido_Item: TPedido_Item; var sErro: string): Boolean;
    function Excluir(AIdPedido_Item: Integer; AIdPedido: Integer; out sErro: string): Boolean;
  end;

implementation

{ TControllerPedidoItem }

var
  DAOPedidoItem: TDAOPedido_Item;

procedure TControllerPedidoItem.CarregarPedidoItem(Pedido_Item: TPedido_Item; AIdPedido_Item: integer; AIdPedido: integer);
begin
  DAOPedidoItem.CarregarPedidoItem(Pedido_Item, AIdPedido_Item, AIdPedido);
end;

function TControllerPedidoItem.Excluir(AIdPedido_Item: Integer; AIdPedido: Integer; out sErro: string): Boolean;
begin
  result := DAOPedidoItem.Excluir(AIdPedido_Item, AIdPedido, sErro);
end;

function TControllerPedidoItem.Salvar(Pedido_Item: TPedido_Item; var sErro: string): Boolean;
begin
  result := DAOPedidoItem.Salvar(Pedido_Item, sErro);
end;

function TControllerPedidoItem.ListarPedidoItens(AIdPedido: integer): String;
begin
  result := DAOPedidoItem.ListarPedidoItens(AIdPedido);
end;

constructor TControllerPedidoItem.Create;
begin
  if (DAOPedidoItem = nil) then
    DAOPedidoItem := TDAOPedido_Item.Create;
end;

destructor TControllerPedidoItem.Destroy;
begin
  FreeAndNil(DAOPedidoItem);
  inherited;
end;

end.
