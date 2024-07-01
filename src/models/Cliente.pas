unit Cliente;

interface

type
  TCliente = class

  private

    FId: Integer;
    FNome_Fantasia: string;
    FRazao_Social: string;
    FCnpj: string;
    FEndereco: string;
    FTelefone: string;

    procedure SetId(const Value: Integer);
    procedure SetNome_Fantasia(const Value: String);
    procedure SetRazao_Social(const Value: String);
    procedure SetCnpj(const Value: String);
    procedure SetEndereco(const Value: String);
    procedure SetTelefone(const Value: String);

  public

    property Id: Integer read FId write SetId;
    property Nome_Fantasia: String read FNome_Fantasia write SetNome_Fantasia;
    property Razao_Social: String read FRazao_Social write SetRazao_Social;
    property Cnpj: String read FCnpj write SetCnpj;
    property Endereco: String read FEndereco write SetEndereco;
    property Telefone: String read FTelefone write SetTelefone;

  end;


implementation

{ TCliente }

procedure TCliente.SetCnpj(const Value: String);
begin
  FCnpj := Value;
end;

procedure TCliente.SetEndereco(const Value: String);
begin
  FEndereco := Value;
end;

procedure TCliente.SetId(const Value: Integer);
begin
  FId := Value;
end;

procedure TCliente.SetNome_Fantasia(const Value: String);
begin
  FNome_Fantasia := Value;
end;

procedure TCliente.SetRazao_Social(const Value: String);
begin
  FRazao_Social := Value;
end;

procedure TCliente.SetTelefone(const Value: String);
begin
  FTelefone := Value;
end;

end.
