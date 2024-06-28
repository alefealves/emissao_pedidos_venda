unit View.Pedido.Cadastrar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, IBX.IBCustomDataSet, IBX.IBQuery,
  View.Heranca.Cadastrar, Data.DB, Vcl.StdCtrls, Vcl.NumberBox, Vcl.Controls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Menus, Vcl.Forms, Vcl.Dialogs;


type
  TViewPedidoCadastrar = class(TViewHerancaCadastrar)
    pnCabecalho: TPanel;
    Label1: TLabel;
    edtID: TNumberBox;
    edtNome_Fantasia: TEdit;
    Label2: TLabel;
    edtValorTotal: TNumberBox;
    Label6: TLabel;
    edtId_Cliente: TNumberBox;
    Label3: TLabel;
    Label4: TLabel;
    edtData: TEdit;
    dsItens: TDataSource;
    QItensPedido: TIBQuery;
    QItensPedidoID: TIntegerField;
    QItensPedidoID_PRODUTO: TIntegerField;
    QItensPedidoQUANTIDADE: TIBBCDField;
    QItensPedidoVALOR_UNITARIO: TIBBCDField;
    QItensPedidoVALOR_TOTAL: TIBBCDField;
    edtCNPJ: TEdit;
    Label5: TLabel;
    Label7: TLabel;
    edtTelefone: TNumberBox;
    QItensPedidoDESCRICAO: TIBStringField;
    PopupMenu1: TPopupMenu;
    Atualizar: TMenuItem;
    N1: TMenuItem;
    Excluir: TMenuItem;
    pnItens: TPanel;
    dbGridItens: TDBGrid;
    pnBotoes: TPanel;
    btnAdicionar: TBitBtn;
    btnExcluir: TBitBtn;
    QItensPedidoID_PEDIDO: TIntegerField;
    lbSalvar: TLabel;
    procedure FormShow(Sender: TObject);
    procedure edtId_ClienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtId_ClienteExit(Sender: TObject);
    procedure AtualizarClick(Sender: TObject);
    procedure ExcluirClick(Sender: TObject);
    procedure dbGridItensDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure pnItensClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
  private
    procedure CarregarPedido;
    function ValidarDados : Boolean;
    procedure AtualizarItens;
    procedure ExcluirItem;
    procedure ApplyBestFitGrid;
    procedure DadosCliente;
    procedure AdicionarItem;
    procedure CalcularValorTotal;
  public
    { Public declarations }
  end;

var
  ViewPedidoCadastrar: TViewPedidoCadastrar;

implementation

{$R *.dfm}

uses
  View.Principal,
  Controller.Pedido,
  Controller.Pedido_Item,
  Pedido,
  View.Cliente.Buscar,
  Controller.Cliente,
  Cliente,
  View.PedidoItens.Cadastrar,
  Utils;

procedure TViewPedidoCadastrar.FormShow(Sender: TObject);
begin
  inherited;
  pnItens.Enabled := False;
  lbSalvar.Visible := True;
  if (IdRegistroAlterar > 0) then
    Self.CarregarPedido;

  edtId_Cliente.SetFocus;
end;

procedure TViewPedidoCadastrar.pnItensClick(Sender: TObject);
begin
  Application.MessageBox('Salve o cabeçalho antes de inserir os Itens', 'Atenção', MB_OK +
        MB_ICONWARNING);
        Exit;
end;

procedure TViewPedidoCadastrar.CarregarPedido;
var
  ControllerPedido: TControllerPedido;
  Pedido: TPedido;
begin

  ControllerPedido := TControllerPedido.Create;

  Pedido := TPedido.Create;
  try
    //carrega cabeçalho
    ControllerPedido.CarregarPedido(Pedido, inherited IdRegistroAlterar);
    edtID.Value := Pedido.Id;
    edtId_Cliente.Value := Pedido.Id_Cliente;
    edtValorTotal.Value := Pedido.Valor_Total;
    edtData.Text := DateToStr(Pedido.Data);

    if (Pedido.Id = 0) then
      Exit;

    Self.DadosCliente;
    //carrega itens
    Self.AtualizarItens;
    pnItens.Enabled := True;
    lbSalvar.Visible := False;
    btnAdicionar.SetFocus;
  finally
    FreeAndNil(Pedido);
    FreeAndNil(ControllerPedido);
  end;

end;

procedure TViewPedidoCadastrar.AtualizarItens;
var
  ControllerPedidoItem: TControllerPedidoItem;
begin

  try
    ControllerPedidoItem := TControllerPedidoItem.Create;

    dsItens.DataSet.Close;
    QItensPedido.SQL.Text := ControllerPedidoItem.ListarPedidoItens(edtID.ValueInt);
    dsItens.DataSet.Open;
    ApplyBestFitGrid;
    Self.CalcularValorTotal;
  finally
    FreeAndNil(ControllerPedidoItem);
  end;
end;

procedure TViewPedidoCadastrar.btnGravarClick(Sender: TObject);
var
  ControllerPedido: TControllerPedido;
  Pedido: TPedido;
  sErro: string;
  sMsg: PWideChar;
begin

  if not (ValidarDados) then
    Exit;

  if(Application.MessageBox('Deseja realmente salvar esse registro?', 'Confirmação',
    MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) <> IDYES)
  then
    Exit;

  ControllerPedido := TControllerPedido.Create;
  Pedido := TPedido.Create;
  if (IdRegistroAlterar = 0) then
    sMsg := 'Registro salvo com sucesso'
  else
    sMsg := 'Registro alterado com sucesso';

  try

    Pedido.Id := IdRegistroAlterar;
    Pedido.Id_Cliente := edtId_Cliente.ValueInt;
    Pedido.Valor_Total := edtValorTotal.ValueCurrency;

    if not ControllerPedido.Salvar(Pedido,sErro) then
      raise Exception.Create(sErro)
    else
    begin
      Application.MessageBox(sMsg, 'Atenção', MB_OK +
        MB_ICONWARNING);

      inherited IdRegistroAlterar := Tutils.GetLastIdTable('PEDIDOS');
      Self.CarregarPedido;
    end;

  finally
    FreeAndNil(Pedido);
    FreeAndNil(ControllerPedido);
  end;

  //inherited;
end;

function TViewPedidoCadastrar.ValidarDados: Boolean;
begin
  try
    Result := False;

    if (edtId_Cliente.Value <= 0) then
    begin

      Application.MessageBox('Favor, informe o Cliente.', 'Atenção', MB_OK +
        MB_ICONWARNING);
      edtId_Cliente.SetFocus;
      Exit;
    end;

    Result := True;
  except on E: Exception do
    begin
      Result := False;
      Exception.Create(e.Message);
    end;
  end;
end;

procedure TViewPedidoCadastrar.DadosCliente;
var
   ControllerCliente: TControllerCliente;
   Cliente: TCliente;
   sErro: string;
begin

  edtNome_Fantasia.Clear;
  edtCNPJ.Clear;
  edtTelefone.Clear;

  if(Trim(edtId_Cliente.Text).IsEmpty)then
    Exit;

  ControllerCliente := TControllerCliente.Create;
  Cliente := TCliente.Create;

  try

    if not ControllerCliente.LookCliente(Cliente,StrToInt(edtId_Cliente.Text),sErro) then
      raise Exception.Create(sErro)
    else
    begin
      if(Cliente.Id = 0)then
      begin
        edtId_Cliente.SetFocus;
        raise Exception.Create('Cliente não localizado');
      end;
    end;

    edtNome_Fantasia.Text := Cliente.Nome_Fantasia;
    edtCNPJ.Text := Cliente.Cnpj;
    edtTelefone.Value := Cliente.Telefone;

  finally
    FreeAndNil(Cliente);
    FreeAndNil(ControllerCliente);
  end;
end;

procedure TViewPedidoCadastrar.edtId_ClienteExit(Sender: TObject);
begin
  Self.DadosCliente;
end;

procedure TViewPedidoCadastrar.edtId_ClienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if(Key = VK_F8)then
  begin
    ViewClienteBuscar := TViewClienteBuscar.Create(nil);
    try
      if(ViewClienteBuscar.ShowModal = mrOk)then
        edtId_Cliente.Value := ViewClienteBuscar.IdSelecionado;
    finally
      FreeAndNil(ViewClienteBuscar);
    end;
  end;
end;

procedure TViewPedidoCadastrar.AtualizarClick(Sender: TObject);
begin
  Self.AtualizarItens;
end;

procedure TViewPedidoCadastrar.ExcluirClick(Sender: TObject);
begin
  Self.ExcluirItem;
end;

procedure TViewPedidoCadastrar.ExcluirItem;
var
  ControllerPedidoItem: TControllerPedidoItem;
  idItem: Integer;
  idPedido: Integer;
  sErro: string;
begin

  if(dsItens.DataSet.IsEmpty)then
    raise Exception.Create('Selecione um registro');

  if (Application.MessageBox(
    'Confirma a exclusão deste registro',
    'Confirma exclusão?',
    MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) <> IDYES)
  then
    Exit;

  ControllerPedidoItem := TControllerPedidoItem.Create;
  try
    idItem := dsItens.DataSet.FieldByName('ID').AsInteger;
    idPedido := dsItens.DataSet.FieldByName('ID_PEDIDO').AsInteger;
    if not ControllerPedidoItem.Excluir(idItem, idPedido, sErro) then
      raise Exception.Create(sErro)
    else
    begin
      Application.MessageBox('Item excluído com sucesso', 'Atenção', MB_OK +
        MB_ICONWARNING);

      Self.AtualizarItens;
    end;
  finally
    FreeAndNil(ControllerPedidoItem);
  end;
end;

procedure TViewPedidoCadastrar.btnAdicionarClick(Sender: TObject);
begin
  Self.AdicionarItem;
end;

procedure TViewPedidoCadastrar.btnExcluirClick(Sender: TObject);
begin
  Self.ExcluirItem;
end;

procedure TViewPedidoCadastrar.AdicionarItem;
var
  ViewPedidoItemCadastrar: TViewPedidoItemCadastrar;
  idItem, idPedido: Integer;
begin

  idPedido := edtID.ValueInt;
  idItem := 0;

  ViewPedidoItemCadastrar := TViewPedidoItemCadastrar.Create(nil);
  try
    ViewPedidoItemCadastrar.IdRegistroAlterar := idItem;
    ViewPedidoItemCadastrar.IdPedido := idPedido;
    if(ViewPedidoItemCadastrar.ShowModal = mrOk)then
    begin
      //inherited UltId := ViewPedidoItemCadastrar.UltId;
      Self.AtualizarItens;
    end;
  finally
    ViewPedidoItemCadastrar.Free;
  end;
end;

procedure TViewPedidoCadastrar.CalcularValorTotal;
var
  ControllerPedido: TControllerPedido;
  sErro: string;
begin

  try

    ControllerPedido := TControllerPedido.Create;
    edtValorTotal.Clear;
    edtValorTotal.Value := ControllerPedido.SomaTotalPedido(edtID.ValueInt, sErro);
  finally
    FreeAndNil(ControllerPedido);
  end;
end;

procedure TViewPedidoCadastrar.dbGridItensDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer;
  Column: TColumn; State: TGridDrawState);
begin
  if(not Odd(dsItens.DataSet.RecNo))then
    dbGridItens.Canvas.Brush.Color := $00DDDDDD;

  dbGridItens.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TViewPedidoCadastrar.ApplyBestFitGrid;
var
  i, maxWidth: Integer;
  ColWidth: Integer;
begin
  for i := 0 to dbGridItens.Columns.Count - 1 do
  begin
    maxWidth := dbGridItens.Canvas.TextWidth(dbGridItens.Columns[i].Title.Caption) + 10;
    dsItens.DataSet.First;
    while not  dsItens.DataSet.Eof do
    begin
      ColWidth := dbGridItens.Canvas.TextWidth(dsItens.DataSet.Fields[i].AsString) + 10;
      if ColWidth > maxWidth then
        maxWidth := ColWidth;
       dsItens.DataSet.Next;
    end;
    dbGridItens.Columns[i].Width := maxWidth;
  end;
end;

end.
