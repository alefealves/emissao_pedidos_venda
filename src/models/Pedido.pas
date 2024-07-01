unit Pedido;

interface

type
  TPedido = class

  private

    FId: Integer;
    FId_Cliente: Integer;
    FValor_Total: Currency;
    FData: TDateTime;
    FStatus: String;

    procedure SetId(const Value: Integer);
    procedure SetId_Cliente(const Value: Integer);
    procedure SetValor_Total(const Value: Currency);
    procedure SetData(const Value: TDateTime);
    procedure SetStatus(const Value: String);

  public

    property Id: Integer read FId write SetId;
    property Id_Cliente: Integer read FId_Cliente write SetId_Cliente;
    property Valor_Total: Currency read FValor_Total write SetValor_Total;
    property Data: TDateTime read FData write SetData;
    property Status: String read FStatus write SetStatus;

  end;

implementation

{ TPedido }

procedure TPedido.SetData(const Value: TDateTime);
begin
  FData := Value;
end;

procedure TPedido.SetId(const Value: Integer);
begin
  FId := Value;
end;

procedure TPedido.SetId_Cliente(const Value: Integer);
begin
  FId_Cliente := Value;
end;

procedure TPedido.SetStatus(const Value: String);
begin
  FStatus := Value;
end;

procedure TPedido.SetValor_Total(const Value: Currency);
begin
  FValor_Total := Value;
end;

end.
