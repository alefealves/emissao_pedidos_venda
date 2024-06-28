unit DAO.Pedido_Item;

interface

uses
  System.SysUtils,
  Data.DB,
  IBX.IBDatabase,
  IBX.IBQuery,
  View.Principal,
  Pedido_Item,
  Utils;

type
  TDAOPedido_Item = class
  private
    { private declarations }
  public
    function ListarPedidoItens(AIdPedido: integer): String;
    procedure CarregarPedidoItem(oPedido_Item: TPedido_Item; AIdPedido_Item: integer; AIdPedido: integer);
    function Salvar(oPedido_Item: TPedido_Item; out sErro: string): Boolean;
    function Excluir(AIdPedido_Item: Integer; AIdPedido: Integer; out sErro: string): Boolean;
    //function LookPedidoItem(oPedido_Item: TPedido_Item; AIdPedido_Item: Integer; out sErro: string): Boolean;
  end;


implementation

{ TDAOPedido_Item }

procedure TDAOPedido_Item.CarregarPedidoItem(oPedido_Item: TPedido_Item; AIdPedido_Item: integer; AIdPedido: integer);
var
  qry: TIBQuery;
begin

  try
    TUtils.CreateQuery(qry);

    qry.SQL.Add('SELECT * FROM PEDIDOS_ITENS ');
    qry.SQL.Add('WHERE ID = :ID ');
    qry.SQL.Add('AND ID_PEDIDO = :ID_PEDIDO');
    qry.ParamByName('ID').AsInteger := AIdPedido_Item;
    qry.ParamByName('ID_PEDIDO').AsInteger := AIdPedido;

    qry.Open();

    if not (qry.IsEmpty)then
    begin
      oPedido_Item.Id := qry.FieldByName('ID').AsInteger;
      oPedido_Item.Id_Pedido := qry.FieldByName('ID_PEDIDO').AsInteger;
      oPedido_Item.Id_Produto := qry.FieldByName('ID_PRODUTO').AsInteger;
      oPedido_Item.Quantidade := qry.FieldByName('QUANTIDADE').AsCurrency;
      oPedido_Item.Valor_Unitario := qry.FieldByName('VALOR_UNITARIO').AsCurrency;
      oPedido_Item.Valor_Total := qry.FieldByName('VALOR_TOTAL').AsCurrency;
    end;

  finally
    TUtils.DestroyQuery(qry);
  end;
end;

function TDAOPedido_Item.Excluir(AIdPedido_Item: Integer; AIdPedido: Integer; out sErro: string): Boolean;
var
  qry: TIBQuery;
begin

  try
    TUtils.CreateQuery(qry);

    qry.SQL.Add('DELETE FROM PEDIDOS_ITENS ');
    qry.SQL.Add('WHERE ID = :ID');
    qry.SQL.Add('AND ID_PEDIDO = :ID_PEDIDO');

    qry.ParamByName('ID').AsInteger := AIdPedido_Item;
    qry.ParamByName('ID_PEDIDO').AsInteger := AIdPedido;

    qry.ExecSQL();

    TUtils.DestroyQuery(qry);
    Result := True;
  except on E: Exception do
    begin
      TUtils.DestroyQuery(qry);
      Result := False;
      sErro := 'Ocorreu um erro ao excluir o item do pedido: ' + sLineBreak + E.Message;
    end;
  end;
end;

function TDAOPedido_Item.Salvar(oPedido_Item: TPedido_Item; out sErro: string): Boolean;
var
  qry: TIBQuery;
begin

  try
    TUtils.CreateQuery(qry);

    if (oPedido_Item.Id = 0) then
    begin
      qry.SQL.Add('INSERT INTO PEDIDOS_ITENS ');
      qry.SQL.Add('(ID_PEDIDO ');
      qry.SQL.Add(',ID_PRODUTO ');
      qry.SQL.Add(',QUANTIDADE ');
      qry.SQL.Add(',VALOR_UNITARIO ');
      qry.SQL.Add(',VALOR_TOTAL) ');
      qry.SQL.Add('VALUES(:ID_PEDIDO ');
      qry.SQL.Add(',:ID_PRODUTO ');
      qry.SQL.Add(',:QUANTIDADE ');
      qry.SQL.Add(',:VALOR_UNITARIO ');
      qry.SQL.Add(',:VALOR_TOTAL)');

      qry.ParamByName('ID_PEDIDO').AsInteger := oPedido_Item.Id_Pedido;
      qry.ParamByName('ID_PRODUTO').AsInteger := oPedido_Item.Id_Produto;
      qry.ParamByName('QUANTIDADE').AsCurrency := oPedido_Item.Quantidade;
      qry.ParamByName('VALOR_UNITARIO').AsCurrency := oPedido_Item.Valor_Unitario;
      qry.ParamByName('VALOR_TOTAL').AsCurrency := oPedido_Item.Valor_Total;
    end
    else
    begin
      qry.SQL.Add('UPDATE PEDIDOS_ITENS ');
      qry.SQL.Add('SET ID_PEDIDO = :ID_PEDIDO ');
      qry.SQL.Add(',ID_PRODUTO = :ID_PRODUTO ');
      qry.SQL.Add(',QUANTIDADE = :QUANTIDADE ');
      qry.SQL.Add(',VALOR_UNITARIO = :VALOR_UNITARIO ');
      qry.SQL.Add(',VALOR_TOTAL = :VALOR_TOTAL ');
      qry.SQL.Add('WHERE ID = :ID');

      qry.ParamByName('ID_PEDIDO').AsInteger := oPedido_Item.Id_Pedido;
      qry.ParamByName('ID_PRODUTO').AsInteger := oPedido_Item.Id_Produto;
      qry.ParamByName('QUANTIDADE').AsCurrency := oPedido_Item.Quantidade;
      qry.ParamByName('VALOR_UNITARIO').AsCurrency := oPedido_Item.Valor_Unitario;
      qry.ParamByName('VALOR_TOTAL').AsCurrency := oPedido_Item.Valor_Total;

      qry.ParamByName('ID').AsInteger := oPedido_Item.Id;
    end;

    qry.ExecSQL();
    Result := True;
    TUtils.DestroyQuery(qry);
  except on E: Exception do
    begin
      TUtils.DestroyQuery(qry);
      Result := False;
      sErro := 'Ocorreu um erro ao salvar o item do pedido: ' + sLineBreak + E.Message;
    end;
  end;
end;

function TDAOPedido_Item.ListarPedidoItens(AIdPedido: integer): String;
var
  qry: TIBQuery;
begin

  try

    TUtils.CreateQuery(qry);
    qry.SQL.Add('SELECT ');
    qry.SQL.Add('PI.ID, ');
    qry.SQL.Add('PI.ID_PEDIDO, ');
    qry.SQL.Add('PI.ID_PRODUTO, ');
    qry.SQL.Add('PROD.DESCRICAO, ');
    qry.SQL.Add('PI.QUANTIDADE, ');
    qry.SQL.Add('PI.VALOR_UNITARIO, ');
    qry.SQL.Add('PI.VALOR_TOTAL ');
    qry.SQL.Add('FROM PEDIDOS_ITENS PI ');
    qry.SQL.Add('INNER JOIN PEDIDOS P ');
    qry.SQL.Add('ON PI.ID_PEDIDO = P.ID ');
    qry.SQL.Add('INNER JOIN PRODUTOS PROD ');
    qry.SQL.Add('ON PI.ID_PRODUTO = PROD.ID ');
    qry.SQL.Add('WHERE P.ID = '+IntToStr(AIdPedido)+' ');
    qry.SQL.Add('ORDER BY PI.ID');

    result := qry.SQL.Text;
    TUtils.DestroyQuery(qry);
  except on E: Exception do
    begin
      TUtils.DestroyQuery(qry);
      Result := '';
      Exception.Create(e.Message);
    end;
  end;
end;

end.
