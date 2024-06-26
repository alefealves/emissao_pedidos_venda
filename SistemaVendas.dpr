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
  View.Cliente.Cadastrar in 'src\views\clientes\View.Cliente.Cadastrar.pas' {ViewClienteCadastrar};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewPrincipal, ViewPrincipal);
  Application.CreateForm(TViewClienteCadastrar, ViewClienteCadastrar);
  Application.Run;
end.
