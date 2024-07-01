unit Utils;

interface

uses
  System.SysUtils,
  System.RegularExpressions,
  System.IniFiles,
  Forms,
  Windows,
  //FireDAC.Comp.Client,
  IBX.IBDatabase,
  IBX.IBQuery,
  IBX.IBErrorCodes,
  IBX.IBSQL,
  IBX.IB,
  ShlObj,
  View.Principal;

type
  TUtils = class
  private

  public
    class procedure CreateQuery(var Query: TIBQuery);
    class procedure DestroyQuery(var Query: TIBQuery);
    class function StringInCurrency(Txt: String): Currency;
    class procedure SetConnection(var Connection: TIBDatabase; out bancoConectado: String);
    class function CheckFileDatabase: Boolean;
    class function CheckConfig: Boolean;
    class function ReadConfig(key: String): String;
    class procedure GravarConfig(key, value: string);
    class procedure Mensagem(Mensagem: String);
    class function GetLastIdTable(Table: String): Integer;
    class function IsCNPJValid(const CNPJ: string): Boolean;
    class function IsTelefoneValido(const telefone: string): Boolean;
    class function TratarExcecaoBD(E: EIBInterBaseError) : string;
    class function ExtrairIdMensagemErro(const MensagemErro: string): Integer;
    class function GetDesktopPath: string;
  end;

implementation

{ TUtils }

class procedure TUtils.CreateQuery(var Query: TIBQuery);
begin
  try
    Query := TIBQuery.Create(ViewPrincipal);
    Query.Database := ViewPrincipal.IBDatabase;
    Query.Transaction := ViewPrincipal.IBTransaction1;
    Query.Close;
    Query.SQL.Clear;
  except on E: Exception do
    raise Exception.Create(E.Message);
  end;
end;

class procedure TUtils.DestroyQuery(var Query: TIBQuery);
begin
  try
    Query.Close;
    Query.Free;
    Query := nil;
  except on E: Exception do
    raise Exception.Create(E.Message);
  end;
end;

class procedure TUtils.Mensagem(Mensagem: String);
begin
  try
    Application.MessageBox(PWideChar(Mensagem),'Sistema Vendas',MB_OK + MB_ICONINFORMATION);
  except on E: Exception do
    raise Exception.Create(E.Message);
  end;
end;

class function TUtils.StringInCurrency(Txt: String): Currency;
begin
  try
    Txt := StringReplace(Trim(Txt),'.','',[rfReplaceAll, rfIgnoreCase]);
    Result := StrToCurr(Txt);
  except on E: Exception do
    raise Exception.Create(E.Message);
  end;
end;

class procedure TUtils.SetConnection(var Connection: TIBDatabase; out bancoConectado: String);
begin

  try
    if not(CheckFileDatabase) then
    begin
      raise Exception.Create('Coloque o arquivo de banco de dados junto ao executável do sistema.');
    end;

    if not(CheckConfig) then
    begin
      GravarConfig('Host','');
      GravarConfig('Banco','');
      GravarConfig('Usuario','');
      GravarConfig('Senha','');
      raise Exception.Create('O arquivo de configuração não foi encontrado, o sistema criara um novo arquivo, configure com as informações necessárias.');
    end;

    bancoConectado := ChangeFileExt(ExtractFileName(ReadConfig('Banco')), '');
    //Connection.Params.Values['Database'] := (ExtractFileDir(Application.ExeName) + '\' + ReadConfig('Banco'));
    Connection.DatabaseName := ReadConfig('Host')+':'+(ExtractFileDir(Application.ExeName) + '\' + ReadConfig('Banco'));
    Connection.Params.Values['user_name'] := ReadConfig('Usuario');
    Connection.Params.Values['password'] := ReadConfig('Senha');
    Connection.Connected := True;
  except on E: Exception do
    raise Exception.Create('Não foi possível estabelecer a conexão com o banco de dados.'+#13+
                           'Verifique o arquivo de configurações o Config.ini que se encontra junto do executável.');
  end;
end;

class function TUtils.CheckConfig: Boolean;
begin
  try
    Result := (FileExists(ExtractFileDir(Application.ExeName) + '\Config.ini'));
  except on E: Exception do
    raise Exception.Create(E.Message);
  end;
end;

class function TUtils.CheckFileDatabase: Boolean;
begin
  try
    Result := (FileExists(ExtractFileDir(Application.ExeName) + '\DADOS.FDB'));
  except on E: Exception do
    raise Exception.Create(E.Message);
  end;
end;

class function TUtils.ReadConfig(key: String): String;
var
  fileConfig: TIniFile;
begin

  try
    fileConfig := TIniFile.Create(ExtractFileDir(Application.ExeName) + '\Config.ini');
    Result := fileConfig.ReadString('Configuracoes', key, '');
    fileConfig.Free;
  except on E: Exception do
    raise Exception.Create(E.Message);
  end;
end;

class procedure TUtils.GravarConfig(key, value: string);
var
  fileConfig: TIniFile;
begin

  try
    fileConfig := TIniFile.Create(ExtractFileDir(Application.ExeName) + '\Config.ini');
    fileConfig.WriteString('Configuracoes', key, value);
    fileConfig.Free;
  except on E: Exception do
    raise Exception.Create(E.Message);
  end;
end;

class function TUtils.GetLastIdTable(Table: String): Integer;
var
  qry: TIBQuery;
begin
  try
    try

      Self.CreateQuery(qry);
      qry.SQL.Add('select gen_id(GEN_'+Table+'_ID, 0) ID from rdb$database;');
      qry.Open;

      result := qry.FieldByName('ID').AsInteger;
    except on E: Exception do
      raise Exception.Create(E.Message);
    end;
  finally
    Self.DestroyQuery(qry);
  end;
end;

class function TUtils.IsCNPJValid(const CNPJ: string): Boolean;
var dig13, dig14, BaseCNPJ: String;
    sm, i, r, peso: integer;
begin

  BaseCNPJ := '';
  for i := 1 to Length(CNPJ) do
    if CharInSet(CNPJ[i], ['0'..'9']) then
      BaseCNPJ := BaseCNPJ + CNPJ[i];

// length - retorna o tamanho da string do CNPJ (CNPJ é um número formado por 14 dígitos)
  if ((BaseCNPJ = '00000000000000') or (BaseCNPJ = '11111111111111') or
      (BaseCNPJ = '22222222222222') or (BaseCNPJ = '33333333333333') or
      (BaseCNPJ = '44444444444444') or (BaseCNPJ = '55555555555555') or
      (BaseCNPJ = '66666666666666') or (BaseCNPJ = '77777777777777') or
      (BaseCNPJ = '88888888888888') or (BaseCNPJ = '99999999999999') or
      (length(BaseCNPJ) <> 14))
     then begin
            result := false;
            exit;
          end;
  // "try" - protege o código para eventuais erros de conversão de tipo através da função "StrToInt"
  try
{ *-- Cálculo do 1o. Digito Verificador --* }
    sm := 0;
    peso := 2;
    for i := 12 downto 1 do
    begin
// StrToInt converte o i-ésimo caractere do CNPJ em um número
      sm := sm + (StrToInt(BaseCNPJ[i]) * peso);
      peso := peso + 1;
      if (peso = 10)
         then peso := 2;
    end;
    r := sm mod 11;
    if ((r = 0) or (r = 1))
       then dig13 := '0'
    else str((11-r):1, dig13); // converte um número no respectivo caractere numérico

{ *-- Cálculo do 2o. Digito Verificador --* }
    sm := 0;
    peso := 2;
    for i := 13 downto 1 do
    begin
      sm := sm + (StrToInt(BaseCNPJ[i]) * peso);
      peso := peso + 1;
      if (peso = 10)
         then peso := 2;
    end;
    r := sm mod 11;
    if ((r = 0) or (r = 1))
       then dig14 := '0'
    else str((11-r):1, dig14);

{ Verifica se os digitos calculados conferem com os digitos informados. }
    if ((dig13 = BaseCNPJ[13]) and (dig14 = BaseCNPJ[14]))
       then result := true
    else result := false;
  except
    result := false
  end;
end;

class function TUtils.IsTelefoneValido(const telefone: string): Boolean;
begin
  Result := TRegEx.IsMatch(telefone, '^(\(\d{2}\) \d{4}-\d{4})$');
end;

class function TUtils.TratarExcecaoBD(E: EIBInterBaseError) : string;
var
  idException: Integer;
  qry: TIBQuery;
begin

  try
    try

      idException := ExtrairIdMensagemErro(E.Message);
      if (idException > 0) then begin

        Self.CreateQuery(qry);
        qry.SQL.Add('select message from exceptions where id = :id');
        qry.ParamByName('id').AsInteger := idException;
        qry.Open;

        if not (qry.IsEmpty) then
        begin
          result := qry.FieldByName('message').AsString;
        end
        else
          result := 'Ocorreu um erro no banco de dados: ' + sLineBreak + E.Message;

      end
      else
        result := 'Ocorreu um erro no banco de dados: ' + sLineBreak + E.Message;

    except on E: Exception do
      raise Exception.Create(E.Message);
    end;
  finally
    Self.DestroyQuery(qry);
  end;
end;

class function TUtils.ExtrairIdMensagemErro(const MensagemErro: string): Integer;
var
  Inicio, Fim: Integer;
begin
  Result := 0;
  Inicio := Pos('[EXDB', MensagemErro);
  if Inicio > 0 then
  begin
    Inc(Inicio, Length('[EXDB'));
    Fim := Pos(']', MensagemErro, Inicio);
    if Fim > 0 then
    begin
      Result := StrToInt(Copy(MensagemErro, Inicio, Fim - Inicio));
    end;
  end;
end;

class function TUtils.GetDesktopPath: string;
var
  Path: array[0..MAX_PATH] of Char;
begin
  if SHGetFolderPath(0, CSIDL_DESKTOP, 0, SHGFP_TYPE_CURRENT, @Path[0]) = S_OK then
    Result := Path
  else
    Result := '';
end;

end.
