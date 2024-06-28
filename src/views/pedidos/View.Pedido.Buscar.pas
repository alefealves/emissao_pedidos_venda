unit View.Pedido.Buscar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Heranca.Buscar, Data.DB, Vcl.Menus, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, IBX.IBCustomDataSet, IBX.IBQuery;

type
  TViewPedidoBuscar = class(TViewHerancaBuscar)
    QListarPedidos: TIBQuery;
    QListarPedidosID: TIntegerField;
    QListarPedidosID_CLIENTE: TIntegerField;
    QListarPedidosNOME_FANTASIA: TIBStringField;
    QListarPedidosVALOR_TOTAL: TIBBCDField;
    QListarPedidosDATA: TDateTimeField;
  private
  protected
    procedure BuscarDados; override;
    procedure ChamarTelaCadastrar(const AId: Integer = 0); override;
    procedure Excluir; override;
  public
    { Public declarations }
  end;

var
  ViewPedidoBuscar: TViewPedidoBuscar;

implementation

{$R *.dfm}

uses
  View.Principal,
  View.Pedido.Cadastrar,
  Controller.Pedido,
  Utils;

{ TViewPedidoBuscar }

procedure TViewPedidoBuscar.BuscarDados;
var
  ControllerPedido: TControllerPedido;
  LCampo: string;
begin

  ControllerPedido := TControllerPedido.Create;
  try
    LCampo := '';

    case rdGroupFiltros.ItemIndex of
     0: LCampo := 'ID';
     1: LCampo := 'NOME_FANTASIA';
    end;

    DataSource1.DataSet.Close;
    QListarPedidos.SQL.Text := ControllerPedido.ListarPedidos(LCampo, Trim(edtBuscar.Text));
    DataSource1.DataSet.Open;
  finally
    FreeAndNil(ControllerPedido);
  end;

  inherited;
end;

procedure TViewPedidoBuscar.ChamarTelaCadastrar(const AId: Integer = 0);
var
  ViewPedidoCadastrar: TViewPedidoCadastrar;
begin

  inherited;
  ViewPedidoCadastrar := TViewPedidoCadastrar.Create(nil);
  try
    ViewPedidoCadastrar.IdRegistroAlterar := AId;
    if(ViewPedidoCadastrar.ShowModal = mrOk)then
    begin
      inherited UltId := ViewPedidoCadastrar.UltId;
      Self.BuscarDados;
    end;
  finally
    ViewPedidoCadastrar.Free;
  end;
end;

procedure TViewPedidoBuscar.Excluir;
var
  ControllerPedido: TControllerPedido;
  sErro: string;
begin

  inherited;

  ControllerPedido := TControllerPedido.Create;
  try

    if not ControllerPedido.Excluir(IdSelecionado,sErro) then
      raise Exception.Create(sErro)
    else
      Application.MessageBox('Registro excluído com sucesso', 'Atenção', MB_OK +
        MB_ICONWARNING);

  finally
    FreeAndNil(ControllerPedido);
  end;
end;

end.
