unit View.Pedido.Cadastrar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, IBX.IBCustomDataSet, IBX.IBQuery,
  View.Heranca.Cadastrar, Data.DB, Vcl.StdCtrls, Vcl.NumberBox, Vcl.Controls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Menus, Vcl.Forms, Vcl.Dialogs, VCL.Graphics, frxSmartMemo,
  frxPDFViewer, frxClass, frCoreClasses, frxDBSet;


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
    lbStatus: TLabel;
    QItensPedidoNUM_ITEM: TIntegerField;
    edtTelefone: TEdit;
    Label8: TLabel;
    edtStatus: TEdit;
    btnAlterarStatus: TBitBtn;
    btnImprimir: TBitBtn;
    frx_pedido: TfrxDBDataset;
    frx_relatorio: TfrxReport;
    frx_pedido_itens: TfrxDBDataset;
    dsPedido: TDataSource;
    QPedido: TIBQuery;
    QPedidoID: TIntegerField;
    QPedidoNOME_FANTASIA: TIBStringField;
    QPedidoVALOR_TOTAL: TIBBCDField;
    QPedidoDATA: TDateTimeField;
    procedure FormShow(Sender: TObject);
    procedure edtId_ClienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtId_ClienteExit(Sender: TObject);
    procedure AtualizarClick(Sender: TObject);
    procedure ExcluirClick(Sender: TObject);
    procedure dbGridItensDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure btnGravarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure edtId_ClienteChangeValue(Sender: TObject);
    procedure btnAlterarStatusClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    FEdit: Boolean;
    FId_Cliente: Integer;
    procedure CarregarPedido;
    function ValidarDados : Boolean;
    procedure AtualizarItens;
    procedure ExcluirItem;
    procedure ApplyBestFitGrid;
    procedure DadosCliente;
    procedure AdicionarItem;
    procedure CalcularValorTotal;
    procedure SalvarRegistro;
    procedure VerificaStatus;
    procedure HabilitaCampos;
    procedure SalvarCabecalho;
  public

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
  lbStatus.Caption := 'Salve o cabeçalho antes de inserir os Itens';
  lbStatus.Visible := True;
  FEdit := False;
  btnAlterarStatus.Visible := False;
  FId_Cliente := 0;
  if (IdRegistroAlterar > 0) then
    Self.CarregarPedido;

end;

procedure TViewPedidoCadastrar.CarregarPedido;
var
  ControllerPedido: TControllerPedido;
  Pedido: TPedido;
begin

  Self.HabilitaCampos;
  try
    //carrega cabeçalho
    ControllerPedido := TControllerPedido.Create;
    Pedido := TPedido.Create;
    ControllerPedido.CarregarPedido(Pedido, inherited IdRegistroAlterar);
    FId_Cliente := Pedido.Id_Cliente;
    edtID.Value := Pedido.Id;
    edtId_Cliente.Value := Pedido.Id_Cliente;
    edtValorTotal.Value := Pedido.Valor_Total;
    edtData.Text := DateToStr(Pedido.Data);
    edtStatus.Text := Pedido.Status;

    if (Pedido.Id = 0) then
      Exit;

    Self.DadosCliente;
    //carrega itens
    Self.AtualizarItens;
    pnItens.Enabled := True;
    btnImprimir.Visible := True;
    Self.VerificaStatus;
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
  finally
    FreeAndNil(ControllerPedidoItem);
    ApplyBestFitGrid;
  end;
end;

procedure TViewPedidoCadastrar.btnGravarClick(Sender: TObject);
begin

  if(Application.MessageBox('Deseja realmente salvar esse registro?', 'Confirmação',
    MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) <> IDYES)
  then
    Exit;

  Self.SalvarRegistro;

  //inherited;
end;

procedure TViewPedidoCadastrar.SalvarRegistro;
var
  ControllerPedido: TControllerPedido;
  Pedido: TPedido;
  sErro: string;
  sMsg: PWideChar;
begin

  if not (ValidarDados) then
    Exit;

  if (IdRegistroAlterar = 0) then
    sMsg := 'Registro salvo com sucesso'
  else
    sMsg := 'Registro alterado com sucesso';

  try
    ControllerPedido := TControllerPedido.Create;
    Pedido := TPedido.Create;

    Pedido.Id := IdRegistroAlterar;
    Pedido.Id_Cliente := edtId_Cliente.ValueInt;
    Pedido.Valor_Total := edtValorTotal.ValueCurrency;
    Pedido.Status := edtStatus.Text;

    if not ControllerPedido.Salvar(Pedido,sErro) then
      raise Exception.Create(sErro)
    else
    begin

      if (IdRegistroAlterar = 0) then
        inherited IdRegistroAlterar := Tutils.GetLastIdTable('PEDIDOS');

      FEdit := False;
      Self.CarregarPedido;
      Application.MessageBox(sMsg, 'Atenção', MB_OK +
        MB_ICONWARNING);
    end;

  finally
    FreeAndNil(Pedido);
    FreeAndNil(ControllerPedido);
  end;
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

  try
    ControllerCliente := TControllerCliente.Create;
    Cliente := TCliente.Create;

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
    edtTelefone.Text := Cliente.Telefone;

  finally
    FreeAndNil(Cliente);
    FreeAndNil(ControllerCliente);
  end;
end;

procedure TViewPedidoCadastrar.edtId_ClienteChangeValue(Sender: TObject);
begin
  inherited;
  if (edtId_Cliente.ValueInt <> FId_Cliente) then
    FEdit := True;

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
        FId_Cliente := ViewClienteBuscar.IdSelecionado;
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

  try
    ControllerPedidoItem := TControllerPedidoItem.Create;

    idItem := dsItens.DataSet.FieldByName('ID').AsInteger;
    idPedido := dsItens.DataSet.FieldByName('ID_PEDIDO').AsInteger;
    if not ControllerPedidoItem.Excluir(idItem, idPedido, sErro) then
      raise Exception.Create(sErro)
    else
    begin
      Application.MessageBox('Item excluído com sucesso', 'Atenção', MB_OK +
        MB_ICONWARNING);

      Self.CalcularValorTotal;
      Self.SalvarCabecalho;
      Self.AtualizarItens;
      FEdit := False;
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

  try
    ViewPedidoItemCadastrar := TViewPedidoItemCadastrar.Create(nil);

    ViewPedidoItemCadastrar.IdRegistroAlterar := idItem;
    ViewPedidoItemCadastrar.IdPedido := idPedido;
    if(ViewPedidoItemCadastrar.ShowModal = mrOk)then
    begin
      //inherited UltId := ViewPedidoItemCadastrar.UltId;
      FEdit := False;
    end;
  finally
    ViewPedidoItemCadastrar.Free;
    Self.CalcularValorTotal;
    Self.SalvarCabecalho;
    Self.AtualizarItens;
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
  DisplayValue: string;
begin
  for i := 0 to dbGridItens.Columns.Count - 1 do
  begin
    maxWidth := dbGridItens.Canvas.TextWidth(dbGridItens.Columns[i].Title.Caption) + 10;
    dsItens.DataSet.First;
    while not dsItens.DataSet.Eof do
    begin
      if dsItens.DataSet.Fields[i].IsNull then
        DisplayValue := ''
      else
        DisplayValue := dsItens.DataSet.Fields[i].DisplayText;

      ColWidth := dbGridItens.Canvas.TextWidth(DisplayValue) + 10;
      if ColWidth > maxWidth then
        maxWidth := ColWidth;

       dsItens.DataSet.Next;
    end;
    dbGridItens.Columns[i].Width := maxWidth;
  end;
end;

procedure TViewPedidoCadastrar.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if (FEdit) then
  begin
     if(Application.MessageBox('Houve alterações no pedido, deseja salvar antes de fechar?', 'Confirmação',
        MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) <> IDYES)
     then
     begin
       Exit;
     end
     else
       Self.SalvarRegistro;

     CanClose := True;
  end
  else
  begin
    CanClose := True;
    inherited;
  end;
end;

procedure TViewPedidoCadastrar.VerificaStatus;
begin
  if (edtStatus.Text = 'NOVO') then begin
    pnCabecalho.Enabled := True;
    pnBotoes.Enabled := True;
    pnBottom.Enabled := True;
    edtId_Cliente.Enabled := True;
    dbGridItens.Enabled := True;
    edtStatus.Color := clLime;
    btnAlterarStatus.Width := 550;
    btnAlterarStatus.Caption := 'Enviar à Aprovação';
    btnAlterarStatus.Visible := True;
    lbStatus.Visible := False;
  end
  else if (edtStatus.Text = 'AGUARDANDO APROVAÇÃO') then begin
    pnCabecalho.Enabled := True;
    pnBotoes.Enabled := True;
    pnBottom.Enabled := True;
    edtId_Cliente.Enabled := True;
    dbGridItens.Enabled := True;
    edtStatus.Color := clYellow;
    btnAlterarStatus.Width := 350;
    btnAlterarStatus.Caption := 'Aprovar';
    btnAlterarStatus.Visible := True;
    lbStatus.Visible := False;
  end
  else if (edtStatus.Text = 'APROVADO') then begin
    pnCabecalho.Enabled := True;
    pnBotoes.Enabled := False;
    pnBottom.Enabled := False;
    edtId_Cliente.Enabled := False;
    dbGridItens.Enabled := False;
    edtStatus.Color := clGreen;
    btnAlterarStatus.Width := 370;
    btnAlterarStatus.Caption := 'Cancelar';
    btnAlterarStatus.Visible := True;
    lbStatus.Caption := 'Pedido APROVADO não pode ser alterado';
    lbStatus.Visible := True;
  end
  else if (edtStatus.Text = 'CANCELADO') then begin
    pnCabecalho.Enabled := True;
    pnBotoes.Enabled := False;
    pnBottom.Enabled := False;
    edtId_Cliente.Enabled := False;
    dbGridItens.Enabled := False;
    edtStatus.Color := clRed;
    btnAlterarStatus.Visible := False;
    lbStatus.Caption := 'Pedido CANCELADO não pode ser alterado';
    lbStatus.Visible := True;
  end
  else begin
    pnCabecalho.Enabled := True;
    pnBotoes.Enabled := True;
    pnBottom.Enabled := True;
    edtId_Cliente.Enabled := True;
    dbGridItens.Enabled := True;
    edtStatus.Color := clBtnFace;
    btnAlterarStatus.Visible := False;
    lbStatus.Visible := False;
  end;
end;

procedure TViewPedidoCadastrar.HabilitaCampos;
begin
  pnCabecalho.Enabled := True;
  pnBotoes.Enabled := True;
  pnBottom.Enabled := True;
  edtId_Cliente.Enabled := True;
  dbGridItens.Enabled := True;
end;

procedure TViewPedidoCadastrar.btnAlterarStatusClick(Sender: TObject);
var
  novoStatus, sErro: string;
  ControllerPedido: TControllerPedido;
  msg, msgQuestion: PWideChar;
begin

  msg:='Pedido sem itens, favor verificar.';
  msgQuestion:='';
  if(dsItens.DataSet.IsEmpty)then begin
    Application.MessageBox(msg, 'Atenção', MB_OK +
        MB_ICONWARNING);
        Exit;
  end;

  if (edtStatus.Text = 'NOVO') then begin
    novoStatus := 'AGUARDANDO APROVAÇÃO';
    msg := 'Pedido AGUARDANDO APROVAÇÃO';
    msgQuestion := 'Deseja realmente enviar este pedido para Aprovação?';
  end
  else if (edtStatus.Text = 'AGUARDANDO APROVAÇÃO') then begin
    novoStatus := 'APROVADO';
    msg := 'Pedido APROVADO com sucesso';
    msgQuestion := 'Deseja realmente Aprovar este pedido?';
  end
  else if (edtStatus.Text = 'APROVADO') then begin
    novoStatus := 'CANCELADO';
    msg := 'Pedido CANCELADO com sucesso';
    msgQuestion := 'Deseja realmente Cancelar este pedido?';
  end;

  if(Application.MessageBox(msgQuestion, 'Confirmação',
        MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) <> IDYES)
  then
   Exit;

  try
    ControllerPedido := TControllerPedido.Create;

    if not ControllerPedido.AlterarStatus(edtID.ValueInt, novoStatus, sErro)then
      raise Exception.Create(sErro)
    else
    begin
      Application.MessageBox(msg, 'Atenção', MB_OK +
        MB_ICONWARNING);
    end;
  finally
    FreeAndNil(ControllerPedido);
    Self.CarregarPedido;
  end;
end;

procedure TViewPedidoCadastrar.SalvarCabecalho;
var
  ControllerPedido: TControllerPedido;
  Pedido: TPedido;
  sErro: string;
begin
  try
    ControllerPedido := TControllerPedido.Create;
    Pedido := TPedido.Create;

    Pedido.Id := IdRegistroAlterar;
    Pedido.Id_Cliente := edtId_Cliente.ValueInt;
    Pedido.Valor_Total := edtValorTotal.ValueCurrency;
    Pedido.Status := edtStatus.Text;

    if not ControllerPedido.Salvar(Pedido,sErro) then
      raise Exception.Create(sErro)

  finally
    FreeAndNil(Pedido);
    FreeAndNil(ControllerPedido);
  end;
end;

procedure TViewPedidoCadastrar.btnImprimirClick(Sender: TObject);
begin
  if(dsItens.DataSet.IsEmpty)then begin
    Application.MessageBox('Pedido sem itens', 'Atenção', MB_OK +
        MB_ICONWARNING);
        Exit;
  end;

  dsPedido.DataSet.Close;
    QPedido.ParamByName('ID_PEDIDO').AsInteger := edtID.ValueInt;
  dsPedido.DataSet.Open;

  if frx_relatorio.PrepareReport then
    frx_relatorio.ShowReport;

  dsPedido.DataSet.Close;
end;


end.
