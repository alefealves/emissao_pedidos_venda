unit DAO.Cliente;

interface

uses
  System.SysUtils,
  Data.DB,
  IBX.IBDatabase,
  IBX.IBQuery,
  View.Principal,
  Cliente,
  Utils;

type
  TDAOCliente = class
  private
    { private declarations }
  public
    function ListarClientes(const LCampo: string; const LStrBuscar: string): TIBQuery;
    procedure CarregarCliente(oCliente: TCliente; AIdCliente: integer);
    function Salvar(oCliente: TCliente; out sErro: string): Boolean;
    function Excluir(AIdCliente: Integer; out sErro: string): Boolean;
    function LookCliente(oCliente: TCliente; AIdCliente: Integer; out sErro: string): Boolean;
  end;

implementation

{ TDAOCliente }

procedure TDAOCliente.CarregarCliente(oCliente: TCliente; AIdCliente: integer);
var
  qry: TIBQuery;
begin

  try
    TUtils.CreateQuery(qry);

    qry.SQL.Add('SELECT * FROM CLIENTES ');
    qry.SQL.Add('WHERE ID = :ID');
    qry.ParamByName('ID').AsInteger := AIdCliente;

    qry.Open();

    if not (qry.IsEmpty)then
    begin
      oCliente.Id := qry.FieldByName('ID').AsInteger;
      oCliente.Nome_Fantasia := qry.FieldByName('NOME_FANTASIA').AsString;
      oCliente.Razao_Social := qry.FieldByName('RAZAO_SOCIAL').AsString;
      oCliente.Cnpj := qry.FieldByName('CNPJ').AsString;
      oCliente.Endereco := qry.FieldByName('ENDERECO').AsString;
      oCliente.Telefone := qry.FieldByName('TELEFONE').AsInteger;
    end;

  finally
    TUtils.DestroyQuery(qry);
  end;
end;

function TDAOCliente.Excluir(AIdCliente: Integer; out sErro: string): Boolean;
var
  qry: TIBQuery;
begin

  try
    TUtils.CreateQuery(qry);

    qry.SQL.Add('DELETE FROM CLIENTES ');
    qry.SQL.Add('WHERE ID = :ID');

    qry.ParamByName('ID').AsInteger := AIdCliente;

    qry.ExecSQL();

    TUtils.DestroyQuery(qry);
    Result := True;
  except on E: Exception do
    begin
      TUtils.DestroyQuery(qry);
      Result := False;
      sErro := 'Ocorreu um erro ao excluir o cliente: ' + sLineBreak + E.Message;
    end;
  end;
end;

function TDAOCliente.Salvar(oCliente: TCliente; out sErro: string): Boolean;
var
  qry: TIBQuery;
begin
  try
    TUtils.CreateQuery(qry);

    if (oCliente.Id = 0) then
    begin
      qry.SQL.Add('INSERT INTO CLIENTES ');
      qry.SQL.Add('(NOME_FANTASIA ');
      qry.SQL.Add(',RAZAO_SOCIAL ');
      qry.SQL.Add(',CNPJ ');
      qry.SQL.Add(',ENDERECO ');
      qry.SQL.Add(',TELEFONE) ');
      qry.SQL.Add('VALUES(:NOME_FANTASIA ');
      qry.SQL.Add(',:RAZAO_SOCIAL ');
      qry.SQL.Add(',:CNPJ ');
      qry.SQL.Add(',:ENDERECO ');
      qry.SQL.Add(',:TELEFONE)');

      qry.ParamByName('NOME_FANTASIA').AsString := oCliente.Nome_Fantasia;
      qry.ParamByName('RAZAO_SOCIAL').AsString := oCliente.Razao_Social;
      qry.ParamByName('CNPJ').AsString := oCliente.Cnpj;
      qry.ParamByName('ENDERECO').AsString := oCliente.Endereco;
      qry.ParamByName('TELEFONE').AsInteger := oCliente.Telefone;
    end
    else
    begin
      qry.SQL.Add('UPDATE CLIENTES ');
      qry.SQL.Add('SET NOME_FANTASIA = :NOME_FANTASIA ');
      qry.SQL.Add(',RAZAO_SOCIAL = :RAZAO_SOCIAL ');
      qry.SQL.Add(',CNPJ = :CNPJ ');
      qry.SQL.Add(',ENDERECO = :ENDERECO ');
      qry.SQL.Add(',TELEFONE = :TELEFONE ');
      qry.SQL.Add('WHERE ID = :ID');

      qry.ParamByName('NOME_FANTASIA').AsString := oCliente.Nome_Fantasia;
      qry.ParamByName('RAZAO_SOCIAL').AsString := oCliente.Razao_Social;
      qry.ParamByName('CNPJ').AsString := oCliente.Cnpj;
      qry.ParamByName('ENDERECO').AsString := oCliente.Endereco;
      qry.ParamByName('TELEFONE').AsInteger := oCliente.Telefone;

      qry.ParamByName('ID').AsInteger := oCliente.Id;
    end;

    qry.ExecSQL();
    Result := True;
    TUtils.DestroyQuery(qry);
  except on E: Exception do
    begin
      TUtils.DestroyQuery(qry);
      Result := False;
      sErro := 'Ocorreu um erro ao salvar o cliente: ' + sLineBreak + E.Message;
    end;
  end;
end;

function TDAOCliente.ListarClientes(const LCampo, LStrBuscar: string): TIBQuery;
var
  termoBusca, Condicao: string;
  qry: TIBQuery;
begin

  try

    TUtils.CreateQuery(qry);
    qry.SQL.Add('SELECT * FROM CLIENTES ');
    termoBusca := QuotedStr('%'+ LStrBuscar +'%').ToLower;

    if(LCampo = 'ID')then
       Condicao := 'where ( id like ' + termoBusca + ' )'
    else
       Condicao := 'where ( lower(nome_fantasia) like ' + termoBusca + ' )';

    qry.SQL.Add(Condicao);
    result := qry;
    TUtils.DestroyQuery(qry);
  except on E: Exception do
    begin
      TUtils.DestroyQuery(qry);
      Result := nil;
      Exception.Create(e.Message);
    end;
  end;
end;

function TDAOCliente.LookCliente(oCliente: TCliente; AIdCliente: Integer; out sErro: string): Boolean;
var
  qry: TIBQuery;
begin

  try
    TUtils.CreateQuery(qry);

    qry.SQL.Add('SELECT * FROM CLIENTES ');
    qry.SQL.Add('WHERE ID = :ID');
    qry.ParamByName('ID').AsInteger := AIdCliente;

    qry.Open();

    if not (qry.IsEmpty)then
    begin
      oCliente.Id := qry.FieldByName('ID').AsInteger;
      oCliente.Nome_Fantasia := qry.FieldByName('NOME_FANTASIA').AsString;
      oCliente.Razao_Social := qry.FieldByName('RAZAO_SOCIAL').AsString;
      oCliente.Cnpj := qry.FieldByName('CNPJ').AsString;
      oCliente.Endereco := qry.FieldByName('ENDERECO').AsString;
      oCliente.Telefone := qry.FieldByName('TELEFONE').AsInteger;
    end
    else
      oCliente.Id := 0;

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
