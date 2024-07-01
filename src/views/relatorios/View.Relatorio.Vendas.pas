unit View.Relatorio.Vendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, dxUIAClasses,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinWXI, dxSkinXmas2008Blue, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, IBX.IBCustomDataSet, IBX.IBQuery, cxContainer, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxPSCore, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxCommon, dxSpreadSheetCore,
  dxSpreadSheetReportDesigner, frxSmartMemo, frxClass, frCoreClasses, frxDBSet;

type
  TViewRelatorioVendas = class(TForm)
    pnTop: TPanel;
    cxGridRelatorioDBTableView1: TcxGridDBTableView;
    cxGridRelatorioLevel1: TcxGridLevel;
    cxGridRelatorio: TcxGrid;
    DsRelatorio: TDataSource;
    QRelatorio: TIBQuery;
    cxDatIni: TcxDateEdit;
    cxDatFim: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    btnPesquisar: TcxButton;
    QRelatorioID: TIntegerField;
    QRelatorioDESCRICAO: TIBStringField;
    QRelatorioMARCA: TIBStringField;
    QRelatorioPRECO_UNITARIO: TIBBCDField;
    QRelatorioQUANTIDADE: TIBBCDField;
    QRelatorioTOTAL_VENDIDO: TIBBCDField;
    cxGridRelatorioDBTableView1ID: TcxGridDBColumn;
    cxGridRelatorioDBTableView1DESCRICAO: TcxGridDBColumn;
    cxGridRelatorioDBTableView1MARCA: TcxGridDBColumn;
    cxGridRelatorioDBTableView1PRECO_UNITARIO: TcxGridDBColumn;
    cxGridRelatorioDBTableView1QUANTIDADE: TcxGridDBColumn;
    cxGridRelatorioDBTableView1TOTAL_VENDIDO: TcxGridDBColumn;
    btnExportar: TcxButton;
    frx_produtos: TfrxDBDataset;
    frx_relatorio: TfrxReport;
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
  private
    //procedure ExportarParaPDF;
    //procedure ExportarParaXLSX;
    { Private declarations }

  public
    { Public declarations }
  end;

var
  ViewRelatorioVendas: TViewRelatorioVendas;

implementation

{$R *.dfm}

uses
  View.Principal,
  cxGridExportLink,
  cxExport,
  Utils,
  Winapi.ShellAPI;

procedure TViewRelatorioVendas.FormShow(Sender: TObject);
begin
  cxDatIni.Date := Now;
  cxDatFim.Date := Now;
end;

procedure TViewRelatorioVendas.btnPesquisarClick(Sender: TObject);
begin

  DsRelatorio.DataSet.Close;
    QRelatorio.ParamByName('DATA_INICIO').AsDate := StrToDate(DateToStr(cxDatIni.Date));
    QRelatorio.ParamByName('DATA_FIM').AsDate := StrToDate(DateToStr(cxDatFim.Date));
  DsRelatorio.DataSet.Open;
  if(DsRelatorio.DataSet.IsEmpty) then
    Application.MessageBox('Nenhum registro encontrado.', 'Atenção', MB_OK +
        MB_ICONWARNING);

  cxGridRelatorioDBTableView1.ApplyBestFit();
end;

procedure TViewRelatorioVendas.btnExportarClick(Sender: TObject);
begin
  try

     if frx_relatorio.PrepareReport then
      frx_relatorio.ShowReport;

  except on E: Exception do
    begin
      Exception.Create(e.Message);
    end;
  end;

end;

//procedure TViewRelatorioVendas.ExportarParaPDF;
//var
//  fileName : string;
//begin
//  try
//    dxComponentPrinter1.ExportToPDF();
//    Application.MessageBox('Relatório exportado com sucesso.', 'Atenção', MB_OK +
//        MB_ICONWARNING);
//  except on E: Exception do
//    begin
//      Exception.Create(e.Message);
//    end;
//  end;
//end;
//
//procedure TViewRelatorioVendas.btnExportarXLSXClick(Sender: TObject);
//begin
//  if(DsRelatorio.DataSet.IsEmpty)then begin
//    Application.MessageBox('Nenhum registro para exportar.', 'Atenção', MB_OK +
//        MB_ICONWARNING);
//        Exit;
//  end;
//
//  Self.ExportarParaXLSX;
//end;
//
//procedure TViewRelatorioVendas.ExportarParaXLSX;
//var
//  fileName : string;
//begin
//  //fileName := TUtils.GetDesktopPath;
//  try
//    fileName := fileName+'Relatório_Vendas_'+StringReplace(DateToStr(cxDatIni.Date), '/', '_', [rfReplaceAll])
//                +'_a_'+StringReplace(DateToStr(cxDatFim.Date), '/', '_', [rfReplaceAll]);
//    //ExportGridToXLSX(fileName, cxGridRelatorio, True, True, True, 'xlsx');
//    ExportGridToXLSX(fileName, cxGridRelatorio, True, True, True, 'xlsx');
//    ShellExecute(Handle, 'open', pchar(fileName), nil, nil, SW_SHOW);
//    Application.MessageBox('Relatório exportado com sucesso.', 'Atenção', MB_OK +
//        MB_ICONWARNING);
//  except on E: Exception do
//    begin
//      Exception.Create(e.Message);
//    end;
//  end;
//end;


end.
