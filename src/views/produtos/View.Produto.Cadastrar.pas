unit View.Produto.Cadastrar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Heranca.Cadastrar, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.NumberBox;

type
  TViewProdutoCadastrar = class(TViewHerancaCadastrar)
    Label1: TLabel;
    edtID: TNumberBox;
    Label3: TLabel;
    edtDescricao: TEdit;
    Label2: TLabel;
    edtPreco: TNumberBox;
    Label6: TLabel;
    edtMarca: TEdit;
    procedure FormShow(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
  private
    procedure CarregarProduto;
    function ValidarDados : Boolean;
  public
    { Public declarations }
  end;

var
  ViewProdutoCadastrar: TViewProdutoCadastrar;

implementation

{$R *.dfm}

uses
  Produto,
  Controller.Produto,
  Utils;

procedure TViewProdutoCadastrar.FormShow(Sender: TObject);
begin
  inherited;

  if (IdRegistroAlterar > 0) then
    Self.CarregarProduto;

  edtDescricao.SetFocus;
end;

procedure TViewProdutoCadastrar.CarregarProduto;
var
  ControllerProduto: TControllerProduto;
  Produto: TProduto;
begin

  ControllerProduto := TControllerProduto.Create;
  Produto := TProduto.Create;
  try

    ControllerProduto.CarregarProduto(Produto, inherited IdRegistroAlterar);
    edtID.Text := IntToStr(Produto.Id);
    edtDescricao.Text := Produto.Descricao;
    edtMarca.Text := Produto.Marca;
    edtPreco.Value := Produto.Preco;
  finally
    FreeAndNil(Produto);
    FreeAndNil(ControllerProduto);
  end;
end;

procedure TViewProdutoCadastrar.btnGravarClick(Sender: TObject);
var
  ControllerProduto: TControllerProduto;
  Produto: TProduto;
  sErro: string;
  sMsg: PWideChar;
begin

  if not (ValidarDados) then
    Exit;

  if(Application.MessageBox('Deseja realmente salvar esse registro?', 'Confirmação',
    MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) <> IDYES)
  then
    Exit;

  ControllerProduto := TControllerProduto.Create;
  Produto := TProduto.Create;
  if (IdRegistroAlterar = 0) then
    sMsg := 'Registro salvo com sucesso'
  else
    sMsg := 'Registro alterado com sucesso';

  try

    Produto.Id := IdRegistroAlterar;
    Produto.Descricao := edtDescricao.Text;
    Produto.Marca := edtMarca.Text;
    Produto.Preco := edtPreco.ValueCurrency;

    if not ControllerProduto.Salvar(Produto,sErro) then
      raise Exception.Create(sErro)
    else
      Application.MessageBox(sMsg, 'Atenção', MB_OK +
        MB_ICONWARNING);

  finally
    FreeAndNil(Produto);
    FreeAndNil(ControllerProduto);
  end;

  inherited;
end;

function TViewProdutoCadastrar.ValidarDados: Boolean;
begin

  try
    Result := False;

    if (Trim(edtDescricao.Text) = '') then
    begin

      Application.MessageBox('Favor, informe a Descrição.', 'Atenção', MB_OK +
        MB_ICONWARNING);
      edtDescricao.SetFocus;
      Exit;
    end;

    if (Trim(edtMarca.Text) = '') then
    begin

      Application.MessageBox('Favor, informe a Marca.', 'Atenção', MB_OK +
        MB_ICONWARNING);
      edtMarca.SetFocus;
      Exit;
    end;

    if (edtPreco.Value <= 0) then
    begin

      Application.MessageBox('Favor, informe o Preço.', 'Atenção', MB_OK +
        MB_ICONWARNING);
      edtPreco.SetFocus;
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

end.
