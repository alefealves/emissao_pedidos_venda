unit Produto;

interface

type
  TProduto = class

  private

    FId: Integer;
    FDescricao: string;
    FMarca: string;
    FPreco: Currency;

    procedure SetId(const Value: Integer);
    procedure SetDescricao(const Value: String);
    procedure SetMarca(const Value: String);
    procedure SetPreco(const Value: Currency);

  public

    property Id: Integer read FId write SetId;
    property Descricao: String read FDescricao write SetDescricao;
    property Marca: String read FMarca write SetMarca;
    property Preco: Currency read FPreco write SetPreco;

  end;

implementation

{ TProduto }

procedure TProduto.SetDescricao(const Value: String);
begin
  FDescricao := Value;
end;

procedure TProduto.SetId(const Value: Integer);
begin
  FId := Value;
end;

procedure TProduto.SetMarca(const Value: String);
begin
  FMarca := Value;
end;

procedure TProduto.SetPreco(const Value: Currency);
begin
  FPreco := Value;
end;

end.
