unit DAO.Pedido;

interface

uses
  System.SysUtils,
  Data.DB,
  IBX.IBDatabase,
  IBX.IBQuery,
  View.Principal,
  Pedido,
  Utils,
  IBX.IBErrorCodes,
  IBX.IBSQL,
  IBX.IB;

type
  TDAOPedido = class
  private
    { private declarations }
  public
    function ListarPedidos(const LCampo: string; const LStrBuscar: string): String;
    procedure CarregarPedido(oPedido: TPedido; AIdPedido: integer);
    function Salvar(oPedido: TPedido; out sErro: string): Boolean;
    function Excluir(AIdPedido: Integer; out sErro: string): Boolean;
    function LookPedido(oPedido: TPedido; AIdPedido: Integer; out sErro: string): Boolean;
    function SomaTotalPedido(AIdPedido: Integer; out sErro: string): Currency;
    function GetNextItemPedido(AIdPedido: Integer; out sErro: string): Integer;
    function AlterarStatus(AIdPedido: Integer; novoStatus: string; out sErro: string): Boolean;
  end;

implementation

{ TDAOPedido }

procedure TDAOPedido.CarregarPedido(oPedido: TPedido; AIdPedido: integer);
var
  qry: TIBQuery;
begin

  try
    TUtils.CreateQuery(qry);

    qry.SQL.Add('SELECT * FROM PEDIDOS ');
    qry.SQL.Add('WHERE ID = :ID');
    qry.ParamByName('ID').AsInteger := AIdPedido;

    qry.Open();

    if not (qry.IsEmpty)then
    begin
      oPedido.Id := qry.FieldByName('ID').AsInteger;
      oPedido.Id_Cliente := qry.FieldByName('ID_CLIENTE').AsInteger;
      oPedido.Valor_Total := qry.FieldByName('VALOR_TOTAL').AsCurrency;
      oPedido.Data := qry.FieldByName('DATA').AsDateTime;
      oPedido.Status := qry.FieldByName('STATUS').AsString;
    end;

  finally
    TUtils.DestroyQuery(qry);
  end;
end;

function TDAOPedido.Excluir(AIdPedido: Integer; out sErro: string): Boolean;
var
  qry: TIBQuery;
begin

  try
    try
      TUtils.CreateQuery(qry);

      qry.SQL.Add('DELETE FROM PEDIDOS ');
      qry.SQL.Add('WHERE ID = :ID');

      qry.ParamByName('ID').AsInteger := AIdPedido;
      qry.ExecSQL();
      qry.Transaction.Commit;
      Result := True;
    except
      on E: EIBInterBaseError do
      begin
        sErro := TUtils.TratarExcecaoBD(E);
        qry.Transaction.Rollback;
        Result := False;
      end;
      on E: Exception do
      begin
        sErro := 'Ocorreu um erro ao excluir o pedido: ' + sLineBreak + E.Message;
        qry.Transaction.Rollback;
        Result := False;
      end;
    end;
  finally
    TUtils.DestroyQuery(qry);
  end;
end;

function TDAOPedido.Salvar(oPedido: TPedido; out sErro: string): Boolean;
var
  qry: TIBQuery;
begin

  try
    try
      TUtils.CreateQuery(qry);

      if (oPedido.Id = 0) then
      begin
        qry.SQL.Add('INSERT INTO PEDIDOS ');
        qry.SQL.Add('(ID_CLIENTE ');
        qry.SQL.Add(',VALOR_TOTAL) ');
        qry.SQL.Add('VALUES(:ID_CLIENTE ');
        qry.SQL.Add(',:VALOR_TOTAL)');

        qry.ParamByName('ID_CLIENTE').AsInteger := oPedido.Id_Cliente;
        qry.ParamByName('VALOR_TOTAL').AsCurrency := oPedido.Valor_Total;
      end
      else
      begin
        qry.SQL.Add('UPDATE PEDIDOS ');
        qry.SQL.Add('SET ID_CLIENTE = :ID_CLIENTE ');
        qry.SQL.Add(',VALOR_TOTAL = :VALOR_TOTAL ');
        qry.SQL.Add(',STATUS = :STATUS ');
        qry.SQL.Add('WHERE ID = :ID');

        qry.ParamByName('ID_CLIENTE').AsInteger := oPedido.Id_Cliente;
        qry.ParamByName('VALOR_TOTAL').AsCurrency := oPedido.Valor_Total;
        qry.ParamByName('STATUS').AsString := oPedido.Status;

        qry.ParamByName('ID').AsInteger := oPedido.Id;
      end;

      qry.ExecSQL();
      qry.Transaction.Commit;
      Result := True;
    except
      on E: EIBInterBaseError do
        begin
          sErro := TUtils.TratarExcecaoBD(E);
          qry.Transaction.Rollback;
          Result := False;
        end;
        on E: Exception do
        begin
          sErro := 'Ocorreu um erro ao salvar o pedido: ' + sLineBreak + E.Message;
          qry.Transaction.Rollback;
          Result := False;
        end;
    end;
  finally
    TUtils.DestroyQuery(qry);
  end;
end;

function TDAOPedido.ListarPedidos(const LCampo, LStrBuscar: string): String;
var
  termoBusca, Condicao: string;
  qry: TIBQuery;
begin

  try

    TUtils.CreateQuery(qry);
    qry.SQL.Add('SELECT P.ID, ');
    qry.SQL.Add('P.ID_CLIENTE, ');
    qry.SQL.Add('C.NOME_FANTASIA, ');
    qry.SQL.Add('P.VALOR_TOTAL, ');
    qry.SQL.Add('P.STATUS, ');
    qry.SQL.Add('P.DATA ');
    qry.SQL.Add('FROM PEDIDOS P ');
    qry.SQL.Add('INNER JOIN CLIENTES C ');
    qry.SQL.Add('ON P.ID_CLIENTE = C.ID ');
    termoBusca := QuotedStr('%'+ LStrBuscar +'%').ToLower;

    if(LCampo = 'ID')then
       Condicao := 'where ( p.id like ' + termoBusca + ' )'
    else
       Condicao := 'where ( lower(c.nome_fantasia) like ' + termoBusca + ' )';

    qry.SQL.Add(Condicao);
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

function TDAOPedido.LookPedido(oPedido: TPedido; AIdPedido: Integer; out sErro: string): Boolean;
var
  qry: TIBQuery;
begin

  try
    TUtils.CreateQuery(qry);

    qry.SQL.Add('SELECT * FROM PEDIDOS ');
    qry.SQL.Add('WHERE ID = :ID');
    qry.ParamByName('ID').AsInteger := AIdPedido;

    qry.Open();

    if not (qry.IsEmpty)then
    begin
      oPedido.Id := qry.FieldByName('ID').AsInteger;
      oPedido.Id_Cliente := qry.FieldByName('ID_CLIENTE').AsInteger;
      oPedido.Valor_Total := qry.FieldByName('VALOR_TOTAL').AsCurrency;
      oPedido.Data := qry.FieldByName('DATA').AsDateTime;
      oPedido.Status := qry.FieldByName('STATUS').AsString;
    end
    else
      oPedido.Id := 0;

    TUtils.DestroyQuery(qry);
    Result := true;
  except on E: Exception do
    begin
      TUtils.DestroyQuery(qry);
      Result := False;
      sErro := 'Ocorreu um erro ao buscar o pedido: ' + sLineBreak + E.Message;
    end;
  end;
end;

function TDAOPedido.SomaTotalPedido(AIdPedido: Integer; out sErro: string): Currency;
var
  qry: TIBQuery;
begin

  try
    TUtils.CreateQuery(qry);

    qry.SQL.Add('SELECT SOMA_TOTAL_PEDIDO_FUNC(:ID_PEDIDO) TOTAL_GERAL ');
    qry.SQL.Add('FROM RDB$DATABASE; ');
    qry.ParamByName('ID_PEDIDO').AsInteger := AIdPedido;

    qry.Open();

    if not (qry.IsEmpty)then
      result := qry.FieldByName('TOTAL_GERAL').AsCurrency
    else
      result := 0;

    TUtils.DestroyQuery(qry);
  except on E: Exception do
    begin
      TUtils.DestroyQuery(qry);
      result := 0;
      sErro := 'Ocorreu um erro ao somar o total do pedido: ' + sLineBreak + E.Message;
    end;
  end;
end;

function TDAOPedido.GetNextItemPedido(AIdPedido: Integer; out sErro: string): Integer;
var
  qry: TIBQuery;
begin

  try
    TUtils.CreateQuery(qry);

    qry.SQL.Add('SELECT COUNT(PI.ID)+1 NEXT_ITEM ');
    qry.SQL.Add('FROM PEDIDOS_ITENS PI ');
    qry.SQL.Add('WHERE PI.ID_PEDIDO = :ID_PEDIDO');
    qry.ParamByName('ID_PEDIDO').AsInteger := AIdPedido;

    qry.Open();

    if not (qry.IsEmpty)then
      result := qry.FieldByName('NEXT_ITEM').AsInteger
    else
      result := 1;

    TUtils.DestroyQuery(qry);
  except on E: Exception do
    begin
      TUtils.DestroyQuery(qry);
      result := 0;
      sErro := 'Ocorreu um erro ao buscar o próximo num item do pedido: ' + sLineBreak + E.Message;
    end;
  end;
end;

function TDAOPedido.AlterarStatus(AIdPedido: Integer; novoStatus: string; out sErro: string): Boolean;
var
  qry: TIBQuery;
begin

  try
    TUtils.CreateQuery(qry);

    qry.SQL.Add('UPDATE PEDIDOS SET ');
    qry.SQL.Add('STATUS = :STATUS ');
    qry.SQL.Add('WHERE ID = :ID_PEDIDO');
    qry.ParamByName('ID_PEDIDO').AsInteger := AIdPedido;
    qry.ParamByName('STATUS').AsString := novoStatus;

    qry.ExecSQL();
    qry.Transaction.Commit;
    result := true;
    TUtils.DestroyQuery(qry);
  except on E: Exception do
    begin
      qry.Transaction.Rollback;
      TUtils.DestroyQuery(qry);
      result := false;
      sErro := 'Ocorreu um erro ao atualizar o status do pedido: ' + sLineBreak + E.Message;
    end;
  end;
end;

end.
