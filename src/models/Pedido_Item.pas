unit Pedido_Item;

interface

type
  TPedido_Item = class

  private

    FId: Integer;
    FNum_Item: Integer;
    FId_Pedido: Integer;
    FId_Produto: Integer;
    FQuantidade: Currency;
    FValor_Unitario: Currency;
    FValor_Total: Currency;

    procedure SetId(const Value: Integer);
    procedure SetFNum_Item(const Value: Integer);
    procedure SetId_Pedido(const Value: Integer);
    procedure SetId_Produto(const Value: Integer);
    procedure SetQuantidade(const Value: Currency);
    procedure SetValor_Unitario(const Value: Currency);
    procedure SetValor_Total(const Value: Currency);

  public

    property Id: Integer read FId write SetId;
    property Num_Item: Integer read FNum_Item write SetFNum_Item;
    property Id_Pedido: Integer read FId_Pedido write SetId_Pedido;
    property Id_Produto: Integer read FId_Produto write SetId_Produto;
    property Quantidade: Currency read FQuantidade write SetQuantidade;
    property Valor_Unitario: Currency read FValor_Unitario write SetValor_Unitario;
    property Valor_Total: Currency read FValor_Total write SetValor_Total;

  end;

implementation

{ TPedido_Item }

procedure TPedido_Item.SetFNum_Item(const Value: Integer);
begin
  FNum_Item := Value;
end;

procedure TPedido_Item.SetId(const Value: Integer);
begin
  FId := Value;
end;

procedure TPedido_Item.SetId_Pedido(const Value: Integer);
begin
  FId_Pedido := Value;
end;

procedure TPedido_Item.SetId_Produto(const Value: Integer);
begin
  FId_Produto := Value;
end;

procedure TPedido_Item.SetQuantidade(const Value: Currency);
begin
  FQuantidade := Value;
end;

procedure TPedido_Item.SetValor_Total(const Value: Currency);
begin
  FValor_Total := Value;
end;

procedure TPedido_Item.SetValor_Unitario(const Value: Currency);
begin
  FValor_Unitario := Value;
end;

end.
