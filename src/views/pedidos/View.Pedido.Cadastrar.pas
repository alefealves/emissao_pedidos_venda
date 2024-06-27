unit View.Pedido.Cadastrar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Heranca.Cadastrar, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.NumberBox,
  Vcl.ComCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, cxGraphics, dxUIAClasses, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp,
  dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinWXI, dxSkinXmas2008Blue, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations, cxDBData, IBX.IBCustomDataSet, IBX.IBQuery,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid;

type
  TViewPedidoCadastrar = class(TViewHerancaCadastrar)
    pnCabecalho: TPanel;
    Label1: TLabel;
    edtID: TNumberBox;
    edtDescricao: TEdit;
    Label2: TLabel;
    edtValorTotal: TNumberBox;
    Label6: TLabel;
    edtId_Cliente: TNumberBox;
    Label3: TLabel;
    Label4: TLabel;
    edtData: TEdit;
    cxGridItensDBTableView1: TcxGridDBTableView;
    cxGridItensLevel1: TcxGridLevel;
    cxGridItens: TcxGrid;
    DataSource1: TDataSource;
    QItensPedido: TIBQuery;
    QItensPedidoID: TIntegerField;
    QItensPedidoID_PEDIDO: TIntegerField;
    QItensPedidoID_PRODUTO: TIntegerField;
    QItensPedidoQUANTIDADE: TIBBCDField;
    QItensPedidoVALOR_UNITARIO: TIBBCDField;
    QItensPedidoVALOR_TOTAL: TIBBCDField;
    cxGridItensDBTableView1ID: TcxGridDBColumn;
    cxGridItensDBTableView1ID_PEDIDO: TcxGridDBColumn;
    cxGridItensDBTableView1ID_PRODUTO: TcxGridDBColumn;
    cxGridItensDBTableView1QUANTIDADE: TcxGridDBColumn;
    cxGridItensDBTableView1VALOR_UNITARIO: TcxGridDBColumn;
    cxGridItensDBTableView1VALOR_TOTAL: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewPedidoCadastrar: TViewPedidoCadastrar;

implementation

{$R *.dfm}

uses
  View.Principal;

end.
