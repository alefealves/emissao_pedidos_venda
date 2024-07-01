unit DAO.Produto;

interface

uses
  System.SysUtils,
  Data.DB,
  IBX.IBDatabase,
  IBX.IBQuery,
  View.Principal,
  Produto,
  Utils,
  IBX.IBErrorCodes,
  IBX.IBSQL,
  IBX.IB;

type
  TDAOProduto = class
  private
    { private declarations }
  public
    function ListarProdutos(const LCampo: string; const LStrBuscar: string): String;
    procedure CarregarProduto(oProduto: TProduto; AIdProduto: integer);
    function Salvar(oProduto: TProduto; out sErro: string): Boolean;
    function Excluir(AIdProduto: Integer; out sErro: string): Boolean;
    function LookProduto(oProduto: TProduto; AIdProduto: Integer; out sErro: string): Boolean;
  end;

implementation

{ TDAOProduto }

procedure TDAOProduto.CarregarProduto(oProduto: TProduto; AIdProduto: integer);
var
  qry: TIBQuery;
begin

  try
    TUtils.CreateQuery(qry);

    qry.SQL.Add('SELECT * FROM PRODUTOS ');
    qry.SQL.Add('WHERE ID = :ID');
    qry.ParamByName('ID').AsInteger := AIdProduto;

    qry.Open();

    if not (qry.IsEmpty)then
    begin
      oProduto.Id := qry.FieldByName('ID').AsInteger;
      oProduto.Descricao := qry.FieldByName('DESCRICAO').AsString;
      oProduto.Marca := qry.FieldByName('MARCA').AsString;
      oProduto.Preco := qry.FieldByName('PRECO').AsCurrency;
    end;

  finally
    TUtils.DestroyQuery(qry);
  end;
end;

function TDAOProduto.Excluir(AIdProduto: Integer; out sErro: string): Boolean;
var
  qry: TIBQuery;
begin

  try
    try
      TUtils.CreateQuery(qry);

      qry.SQL.Add('DELETE FROM PRODUTOS ');
      qry.SQL.Add('WHERE ID = :ID');
      qry.ParamByName('ID').AsInteger := AIdProduto;

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
        sErro := 'Ocorreu um erro ao salvar o produto: ' + sLineBreak + E.Message;
        qry.Transaction.Rollback;
        Result := False;
      end;
    end;
  finally
    TUtils.DestroyQuery(qry);
  end;
end;

function TDAOProduto.Salvar(oProduto: TProduto; out sErro: string): Boolean;
var
  qry: TIBQuery;
begin

  try
    try
      TUtils.CreateQuery(qry);

      if (oProduto.Id = 0) then
      begin
        qry.SQL.Add('INSERT INTO PRODUTOS ');
        qry.SQL.Add('(DESCRICAO ');
        qry.SQL.Add(',MARCA ');
        qry.SQL.Add(',PRECO) ');
        qry.SQL.Add('VALUES(:DESCRICAO ');
        qry.SQL.Add(',:MARCA ');
        qry.SQL.Add(',:PRECO)');

        qry.ParamByName('DESCRICAO').AsString := oProduto.Descricao;
        qry.ParamByName('MARCA').AsString := oProduto.Marca;
        qry.ParamByName('PRECO').AsCurrency := oProduto.Preco;
      end
      else
      begin
        qry.SQL.Add('UPDATE PRODUTOS ');
        qry.SQL.Add('SET DESCRICAO = :DESCRICAO ');
        qry.SQL.Add(',MARCA = :MARCA ');
        qry.SQL.Add(',PRECO = :PRECO ');
        qry.SQL.Add('WHERE ID = :ID');

        qry.ParamByName('DESCRICAO').AsString := oProduto.Descricao;
        qry.ParamByName('MARCA').AsString := oProduto.Marca;
        qry.ParamByName('PRECO').AsCurrency := oProduto.Preco;

        qry.ParamByName('ID').AsInteger := oProduto.Id;
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
        sErro := 'Ocorreu um erro ao salvar o produto: ' + sLineBreak + E.Message;
        qry.Transaction.Rollback;
        Result := False;
      end;
    end;
  finally
    TUtils.DestroyQuery(qry);
  end;
end;

function TDAOProduto.ListarProdutos(const LCampo, LStrBuscar: string): String;
var
  termoBusca, Condicao: string;
  qry: TIBQuery;
begin

  try

    TUtils.CreateQuery(qry);
    qry.SQL.Add('SELECT * FROM PRODUTOS ');
    termoBusca := QuotedStr('%'+ LStrBuscar +'%').ToLower;

    if(LCampo = 'ID')then
       Condicao := 'where ( id like ' + termoBusca + ' )'
    else
       Condicao := 'where ( lower(descricao) like ' + termoBusca + ' )';

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

function TDAOProduto.LookProduto(oProduto: TProduto; AIdProduto: Integer; out sErro: string): Boolean;
var
  qry: TIBQuery;
begin

  try
    TUtils.CreateQuery(qry);

    qry.SQL.Add('SELECT * FROM PRODUTOS ');
    qry.SQL.Add('WHERE ID = :ID');
    qry.ParamByName('ID').AsInteger := AIdProduto;

    qry.Open();

    if not (qry.IsEmpty)then
    begin
      oProduto.Id := qry.FieldByName('ID').AsInteger;
      oProduto.Descricao := qry.FieldByName('DESCRICAO').AsString;
      oProduto.Marca := qry.FieldByName('MARCA').AsString;
      oProduto.Preco := qry.FieldByName('PRECO').AsCurrency;
    end
    else
      oProduto.Id := 0;

    TUtils.DestroyQuery(qry);
    Result := true;
  except on E: Exception do
    begin
      TUtils.DestroyQuery(qry);
      Result := False;
      sErro := 'Ocorreu um erro ao buscar o cliente: ' + sLineBreak + E.Message;
    end;
  end;
end;

end.
