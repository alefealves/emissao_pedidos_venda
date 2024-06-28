unit View.PedidoItens.Cadastrar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Heranca.Cadastrar, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.NumberBox;

type
  TViewPedidoItemCadastrar = class(TViewHerancaCadastrar)
    edtID: TNumberBox;
    Label1: TLabel;
    edtId_Pedido: TNumberBox;
    Label2: TLabel;
    edtId_Produto: TNumberBox;
    Label3: TLabel;
    edtDescricao: TEdit;
    Label4: TLabel;
    edtValor_Unitario: TNumberBox;
    Label5: TLabel;
    edtQuantidade: TNumberBox;
    Label6: TLabel;
    edtValor_Total: TNumberBox;
    Label7: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure edtId_ProdutoExit(Sender: TObject);
    procedure edtId_ProdutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtValor_UnitarioExit(Sender: TObject);
    procedure edtQuantidadeExit(Sender: TObject);
  private
    FIdPedido: Integer;
    procedure CarregarItem;
    function ValidarDados : Boolean;
    procedure DadosProduto;
    procedure CalcularValorTotal;
  public
    property IdPedido: Integer read FIdPedido write FIdPedido;
  end;

var
  ViewPedidoItemCadastrar: TViewPedidoItemCadastrar;

implementation

{$R *.dfm}

uses
  View.Principal,
  Controller.Pedido_Item,
  Pedido_Item,
  Controller.Produto,
  Produto,
  View.Produto.Buscar,
  Utils;

procedure TViewPedidoItemCadastrar.FormShow(Sender: TObject);
begin
  inherited;
  if (IdRegistroAlterar > 0) then
    Self.CarregarItem;

  edtId_Pedido.Value := IdPedido;
  edtId_Produto.SetFocus;
end;

procedure TViewPedidoItemCadastrar.CarregarItem;
var
  ControllerPedidoItem: TControllerPedidoItem;
  Pedido_Item: TPedido_Item;
begin

  ControllerPedidoItem := TControllerPedidoItem.Create;
  Pedido_Item := TPedido_Item.Create;

  try
    //carrega cabeçalho
    ControllerPedidoItem.CarregarPedidoItem(Pedido_Item, inherited IdRegistroAlterar, IdPedido);
    edtID.Value := Pedido_Item.Id;
    //edtId_Pedido.Value := Pedido_Item.Id_Pedido;
    edtId_Produto.Value := Pedido_Item.Id_Produto;
    edtValor_Unitario.Value := Pedido_Item.Quantidade;
    edtQuantidade.Value := Pedido_Item.Valor_Unitario;
    edtValor_Total.Value := Pedido_Item.Valor_Total;
  finally
    FreeAndNil(Pedido_Item);
    FreeAndNil(ControllerPedidoItem);
  end;
end;

procedure TViewPedidoItemCadastrar.btnGravarClick(Sender: TObject);
var
  ControllerPedidoItem: TControllerPedidoItem;
  Pedido_Item: TPedido_Item;
  sErro: string;
  sMsg: PWideChar;
begin

  if not (ValidarDados) then
    Exit;

  if(Application.MessageBox('Deseja realmente salvar esse registro?', 'Confirmação',
    MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) <> IDYES)
  then
    Exit;

  ControllerPedidoItem := TControllerPedidoItem.Create;
  Pedido_Item := TPedido_Item.Create;
  if (IdRegistroAlterar = 0) then
    sMsg := 'Registro salvo com sucesso'
  else
    sMsg := 'Registro alterado com sucesso';

  try

    Pedido_Item.Id := IdRegistroAlterar;
    Pedido_Item.Id_Pedido := edtId_Pedido.ValueInt;
    Pedido_Item.Id_Produto := edtId_Produto.ValueInt;
    Pedido_Item.Valor_Unitario := edtValor_Unitario.ValueCurrency;
    Pedido_Item.Quantidade := edtQuantidade.ValueCurrency;
    Pedido_Item.Valor_Total := edtValor_Total.ValueCurrency;

    if not ControllerPedidoItem.Salvar(Pedido_Item,sErro) then
      raise Exception.Create(sErro)
    else
      Application.MessageBox(sMsg, 'Atenção', MB_OK +
        MB_ICONWARNING);

  finally
    FreeAndNil(Pedido_Item);
    FreeAndNil(ControllerPedidoItem);
  end;

  inherited;
end;

function TViewPedidoItemCadastrar.ValidarDados: Boolean;
begin
  try
    Result := False;

    if (edtId_Produto.Value <= 0) then
    begin

      Application.MessageBox('Favor, informe o Produto.', 'Atenção', MB_OK +
        MB_ICONWARNING);
      edtId_Produto.SetFocus;
      Exit;
    end;

    if (edtValor_Unitario.Value <= 0) then
    begin

      Application.MessageBox('Favor, informe o Valor Unitário.', 'Atenção', MB_OK +
        MB_ICONWARNING);
      edtValor_Unitario.SetFocus;
      Exit;
    end;

    if (edtQuantidade.Value <= 0) then
    begin

      Application.MessageBox('Favor, informe a Quantidade.', 'Atenção', MB_OK +
        MB_ICONWARNING);
      edtQuantidade.SetFocus;
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

procedure TViewPedidoItemCadastrar.edtId_ProdutoExit(Sender: TObject);
begin
  Self.DadosProduto;
end;

procedure TViewPedidoItemCadastrar.DadosProduto;
var
   ControllerProduto: TControllerProduto;
   Produto: TProduto;
   sErro: string;
begin

  edtDescricao.Clear;
  edtValor_Unitario.Clear;

  if(Trim(edtId_Produto.Text).IsEmpty)then
    Exit;

  ControllerProduto := TControllerProduto.Create;
  Produto := TProduto.Create;

  try

    if not ControllerProduto.LookProduto(Produto,StrToInt(edtId_Produto.Text),sErro) then
      raise Exception.Create(sErro)
    else
    begin
      if(Produto.Id = 0)then
      begin
        edtDescricao.SetFocus;
        raise Exception.Create('Produto não localizado');
      end;
    end;

    edtDescricao.Text := Produto.Descricao;
    edtValor_Unitario.Value := Produto.Preco;
  finally
    FreeAndNil(Produto);
    FreeAndNil(ControllerProduto);
  end;
end;

procedure TViewPedidoItemCadastrar.edtId_ProdutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if(Key = VK_F8)then
  begin
    ViewProdutoBuscar := TViewProdutoBuscar.Create(nil);
    try
      if(ViewProdutoBuscar.ShowModal = mrOk)then
        edtId_Produto.Value := ViewProdutoBuscar.IdSelecionado;
    finally
      FreeAndNil(ViewProdutoBuscar);
    end;
  end;
end;

procedure TViewPedidoItemCadastrar.edtQuantidadeExit(Sender: TObject);
begin
  Self.CalcularValorTotal;
end;

procedure TViewPedidoItemCadastrar.edtValor_UnitarioExit(Sender: TObject);
begin
  Self.CalcularValorTotal;
end;

procedure TViewPedidoItemCadastrar.CalcularValorTotal;
begin

  if (edtValor_Unitario.Value > 0) and (edtQuantidade.Value > 0) then
  begin
     edtValor_Total.Value := (edtValor_Unitario.Value * edtQuantidade.Value);
  end;
end;

end.
