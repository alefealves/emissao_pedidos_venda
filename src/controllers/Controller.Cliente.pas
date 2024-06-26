unit Controller.Cliente;

interface

uses
  System.SysUtils,
  Cliente,
  DAO.Cliente,
  IBX.IBDatabase,
  IBX.IBQuery;

type
  TControllerCliente = class
  private
  public
    constructor Create;
    destructor Destroy; override;
    function ListarClientes(const LCampo: string; const LStrBuscar: string): TIBQuery;
    procedure CarregarCliente(Cliente: TCliente; AIdCliente: integer);
    function Salvar(Cliente: TCliente; var sErro: string): Boolean;
    function Excluir(AIdCliente: integer; out sErro: string): Boolean;
  end;

implementation

{ TControllerCliente }

var
  DAOCliente: TDAOCliente;

procedure TControllerCliente.CarregarCliente(Cliente: TCliente; AIdCliente: integer);
begin
  DAOCliente.CarregarCliente(Cliente, AIdCliente);
end;

function TControllerCliente.Excluir(AIdCliente: integer; out sErro: string): Boolean;
begin
  result := DAOCliente.Excluir(AIdCliente, sErro);
end;

function TControllerCliente.ListarClientes(const LCampo, LStrBuscar: string): TIBQuery;
begin
  result := DAOCliente.ListarClientes(LCampo, LStrBuscar);
end;

function TControllerCliente.Salvar(Cliente: TCliente; var sErro: string): Boolean;
begin
  result := DAOCliente.Salvar(Cliente, sErro);
end;

constructor TControllerCliente.Create;
begin
  if (DAOCliente = nil) then
    DAOCliente := TDAOCliente.Create;
end;

destructor TControllerCliente.Destroy;
begin
  FreeAndNil(DAOCliente);
  inherited;
end;

end.
