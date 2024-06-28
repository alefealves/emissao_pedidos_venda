unit Utils;

interface

uses
  System.SysUtils,
  System.IniFiles,
  Forms,
  Windows,
  //FireDAC.Comp.Client,
  IBX.IBDatabase,
  IBX.IBQuery,
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

    Self.CreateQuery(qry);
    qry.SQL.Add('select gen_id(GEN_'+Table+'_ID, 0) ID from rdb$database;');
    qry.Open;

    result := qry.FieldByName('ID').AsInteger;
    Self.DestroyQuery(qry);
  except on E: Exception do

    raise Exception.Create(E.Message);
  end;
end;

end.
