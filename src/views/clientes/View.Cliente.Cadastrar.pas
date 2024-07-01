unit View.Cliente.Cadastrar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Heranca.Cadastrar, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.NumberBox,
  Vcl.Mask;

type
  TViewClienteCadastrar = class(TViewHerancaCadastrar)
    edtNome_Social: TEdit;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtRazao_Social: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    edtEndereco: TEdit;
    edtID: TNumberBox;
    edtCnpj: TMaskEdit;
    edtTelefone: TMaskEdit;
    procedure FormShow(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure edtCnpjExit(Sender: TObject);
    procedure edtTelefoneExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtCnpjKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtTelefoneKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    EscapePressed: Boolean;
    procedure CarregarCliente;
    function ValidarDados : Boolean;
    procedure ValidaCNPJ;
    procedure ValidaTelefone;
  public
    { Public declarations }
  end;

var
  ViewClienteCadastrar: TViewClienteCadastrar;

implementation

{$R *.dfm}

uses
  Cliente,
  Controller.Cliente,
  Utils;

procedure TViewClienteCadastrar.FormShow(Sender: TObject);
begin
  inherited;

  if (IdRegistroAlterar > 0) then
    Self.CarregarCliente;

  edtCnpj.SetFocus;
end;

procedure TViewClienteCadastrar.CarregarCliente;
var
  ControllerCliente: TControllerCliente;
  Cliente: TCliente;
begin

  ControllerCliente := TControllerCliente.Create;
  Cliente := TCliente.Create;
  try

    ControllerCliente.CarregarCliente(Cliente, inherited IdRegistroAlterar);
    edtID.Text := IntToStr(Cliente.Id);
    edtNome_Social.Text := Cliente.Nome_Fantasia;
    edtRazao_Social.Text := Cliente.Razao_Social;
    edtCnpj.Text := Cliente.Cnpj;
    edtEndereco.Text := Cliente.Endereco;
    edtTelefone.Text := Cliente.Telefone;
  finally
    FreeAndNil(Cliente);
    FreeAndNil(ControllerCliente);
  end;

end;

procedure TViewClienteCadastrar.btnGravarClick(Sender: TObject);
var
  ControllerCliente: TControllerCliente;
  Cliente: TCliente;
  sErro: string;
  sMsg: PWideChar;
begin

  if not (ValidarDados) then
    Exit;

  if(Application.MessageBox('Deseja realmente salvar esse registro?', 'Confirmação',
    MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) <> IDYES)
  then
    Exit;

  ControllerCliente := TControllerCliente.Create;
  Cliente := TCliente.Create;
  if (IdRegistroAlterar = 0) then
    sMsg := 'Registro salvo com sucesso'
  else
    sMsg := 'Registro alterado com sucesso';

  try

    Cliente.Id := IdRegistroAlterar;
    Cliente.Nome_Fantasia := edtNome_Social.Text;
    Cliente.Razao_Social := edtRazao_Social.Text;
    Cliente.Cnpj := Trim(edtCnpj.Text);
    Cliente.Endereco := edtEndereco.Text;
    if (edtTelefone.Text = '(  )     -    ') then
        Cliente.Telefone := ''
    else
      Cliente.Telefone := edtTelefone.Text;

    if not ControllerCliente.Salvar(Cliente,sErro) then
      raise Exception.Create(sErro)
    else
      Application.MessageBox(sMsg, 'Atenção', MB_OK +
        MB_ICONWARNING);

  finally
    FreeAndNil(Cliente);
    FreeAndNil(ControllerCliente);
  end;

  inherited;
end;

procedure TViewClienteCadastrar.ValidaCNPJ;
begin
  if not (TUtils.IsCNPJValid(edtCnpj.Text)) then
     Application.MessageBox('Favor, informe um CNPJ válido.', 'Atenção', MB_OK +
        MB_ICONWARNING);
        Exit;
end;

procedure TViewClienteCadastrar.ValidaTelefone;
begin
  if not (TUtils.IsTelefoneValido(edtTelefone.Text)) then
     Application.MessageBox('Favor, informe um Telefone válido.', 'Atenção', MB_OK +
        MB_ICONWARNING);
        Exit;

end;

procedure TViewClienteCadastrar.edtCnpjExit(Sender: TObject);
begin
  if not EscapePressed and (Length(Trim(edtCnpj.Text)) > 0) then
    Self.ValidaCNPJ;

  EscapePressed := False;
end;

procedure TViewClienteCadastrar.edtCnpjKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
  begin
    EscapePressed := True;
    edtCnpj.Text := '';
  end;
end;

procedure TViewClienteCadastrar.edtTelefoneExit(Sender: TObject);
begin
  if not EscapePressed and (Length(Trim(edtTelefone.Text)) > 0) then
    Self.ValidaTelefone;

  EscapePressed := False;
end;

procedure TViewClienteCadastrar.edtTelefoneKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
  begin
    EscapePressed := True;
    edtTelefone.Text := '';
  end;
end;

function TViewClienteCadastrar.ValidarDados: Boolean;
begin
  try
    Result := False;

    if (Trim(edtNome_Social.Text) = '') then
    begin

      Application.MessageBox('Favor, informe o Nome Social.', 'Atenção', MB_OK +
        MB_ICONWARNING);
      edtNome_Social.SetFocus;
      Exit;
    end;

    if (Trim(edtRazao_Social.Text) = '') then
    begin

      Application.MessageBox('Favor, informe a Razão Social.', 'Atenção', MB_OK +
        MB_ICONWARNING);
      edtRazao_Social.SetFocus;
      Exit;
    end;

    if (Trim(edtCnpj.Text) = '') then
    begin

      Application.MessageBox('Favor, informe o CNPJ.', 'Atenção', MB_OK +
        MB_ICONWARNING);
      edtCnpj.SetFocus;
      Exit;
    end;

    if (Trim(edtEndereco.Text) = '') then
    begin

      Application.MessageBox('Favor, informe o Endereço.', 'Atenção', MB_OK +
        MB_ICONWARNING);
      edtEndereco.SetFocus;
      Exit;
    end;

//    if (Trim(edtTelefone.Text) = '') then
//    begin
//
//      Application.MessageBox('Favor, informe o Telefone.', 'Atenção', MB_OK +
//        MB_ICONWARNING);
//      edtTelefone.SetFocus;
//      Exit;
//    end;

    Result := True;
  except on E: Exception do
    begin
      Result := False;
      Exception.Create(e.Message);
    end;
  end;
end;

procedure TViewClienteCadastrar.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
//  inherited;

//  begin
//    case(Key)of
//      VK_F3:
//      btnGravar.Click;
//      VK_F4:
//       begin
//         if(ssAlt in Shift)then
//           Key := 0;
//       end;
//      VK_ESCAPE:
//       btnCancelar.Click;
//    end;
//  end;
end;

end.
