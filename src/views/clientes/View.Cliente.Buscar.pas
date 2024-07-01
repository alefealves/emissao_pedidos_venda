unit View.Cliente.Buscar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Heranca.Buscar, Data.DB, Vcl.Menus,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, IBX.IBCustomDataSet, IBX.IBQuery;

type
  TViewClienteBuscar = class(TViewHerancaBuscar)
    QListarClientes: TIBQuery;
    QListarClientesID: TIntegerField;
    QListarClientesNOME_FANTASIA: TIBStringField;
    QListarClientesRAZAO_SOCIAL: TIBStringField;
    QListarClientesENDERECO: TIBStringField;
    QListarClientesTELEFONE: TIBStringField;
    QListarClientesCNPJ: TIBStringField;
  private
  protected
    procedure BuscarDados; override;
    procedure ChamarTelaCadastrar(const AId: Integer = 0); override;
    procedure Excluir; override;
  public
    { Public declarations }
  end;

var
  ViewClienteBuscar: TViewClienteBuscar;

implementation

{$R *.dfm}

uses
  View.Principal,
  View.Cliente.Cadastrar,
  Controller.Cliente;

{ TViewClienteBuscar }

procedure TViewClienteBuscar.BuscarDados;
var
  ControllerCliente: TControllerCliente;
  LCampo: string;
begin

  ControllerCliente := TControllerCliente.Create;
  try
    LCampo := '';

    case rdGroupFiltros.ItemIndex of
     0: LCampo := 'ID';
     1: LCampo := 'NOME_FANTASIA';
    end;

    DataSource1.DataSet.Close;
    QListarClientes.SQL.Text := ControllerCliente.ListarClientes(LCampo, Trim(edtBuscar.Text));
    DataSource1.DataSet.Open;
  finally
    FreeAndNil(ControllerCliente);
  end;

  inherited;
end;

procedure TViewClienteBuscar.ChamarTelaCadastrar(const AId: Integer);
var
  ViewClienteCadastrar: TViewClienteCadastrar;
begin

  inherited;
  ViewClienteCadastrar := TViewClienteCadastrar.Create(nil);
  try
    ViewClienteCadastrar.IdRegistroAlterar := AId;
    if(ViewClienteCadastrar.ShowModal = mrOk)then
    begin
      inherited UltId := ViewClienteCadastrar.UltId;
    end;
  finally
    ViewClienteCadastrar.Free;
    Self.BuscarDados;
  end;
end;

procedure TViewClienteBuscar.Excluir;
var
  ControllerCliente: TControllerCliente;
  sErro: string;
begin

  inherited;
  ControllerCliente := TControllerCliente.Create;
  try

    if not ControllerCliente.Excluir(IdSelecionado,sErro) then
      raise Exception.Create(sErro)
    else
      Application.MessageBox('Registro excluído com sucesso', 'Atenção', MB_OK +
        MB_ICONWARNING);

  finally
    FreeAndNil(ControllerCliente);
    Self.BuscarDados;
  end;
end;

end.
