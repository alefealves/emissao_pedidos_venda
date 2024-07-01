program SistemaVendas;

uses
  Vcl.Forms,
  View.Principal in 'src\views\View.Principal.pas' {ViewPrincipal},
  Utils in 'src\utils\Utils.pas',
  View.Heranca.Buscar in 'src\views\herancas\View.Heranca.Buscar.pas' {ViewHerancaBuscar},
  View.Heranca.Cadastrar in 'src\views\herancas\View.Heranca.Cadastrar.pas' {ViewHerancaCadastrar},
  View.Cliente.Buscar in 'src\views\clientes\View.Cliente.Buscar.pas' {ViewClienteBuscar},
  Cliente in 'src\models\Cliente.pas',
  DAO.Cliente in 'src\dao\DAO.Cliente.pas',
  Controller.Cliente in 'src\controllers\Controller.Cliente.pas',
  View.Cliente.Cadastrar in 'src\views\clientes\View.Cliente.Cadastrar.pas' {ViewClienteCadastrar},
  Produto in 'src\models\Produto.pas',
  DAO.Produto in 'src\dao\DAO.Produto.pas',
  Controller.Produto in 'src\controllers\Controller.Produto.pas',
  View.Produto.Buscar in 'src\views\produtos\View.Produto.Buscar.pas' {ViewProdutoBuscar},
  View.Produto.Cadastrar in 'src\views\produtos\View.Produto.Cadastrar.pas' {ViewProdutoCadastrar},
  Pedido in 'src\models\Pedido.pas',
  DAO.Pedido in 'src\dao\DAO.Pedido.pas',
  Controller.Pedido in 'src\controllers\Controller.Pedido.pas',
  View.Pedido.Buscar in 'src\views\pedidos\View.Pedido.Buscar.pas' {ViewPedidoBuscar},
  View.Pedido.Cadastrar in 'src\views\pedidos\View.Pedido.Cadastrar.pas' {ViewPedidoCadastrar},
  Pedido_Item in 'src\models\Pedido_Item.pas',
  DAO.Pedido_Item in 'src\dao\DAO.Pedido_Item.pas',
  Controller.Pedido_Item in 'src\controllers\Controller.Pedido_Item.pas',
  View.PedidoItens.Cadastrar in 'src\views\pedidos_itens\View.PedidoItens.Cadastrar.pas' {ViewPedidoItemCadastrar},
  View.Report.Pedido in 'src\views\relatorios\View.Report.Pedido.pas' {ViewReportPedido};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewPrincipal, ViewPrincipal);
  Application.CreateForm(TViewReportPedido, ViewReportPedido);
  Application.Run;
end.
