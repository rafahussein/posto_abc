unit unt_relatorios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Data.DB, Controller.Factory;

type
  TfrmRelatorios = class(TForm)
    rl_report_abastecimento: TRLReport;
    RLBandTitle: TRLBand;
    RLDrawTitle: TRLDraw;
    rl_titulo: TRLLabel;
    RLSystemInfoData: TRLSystemInfo;
    RLLabelData: TRLLabel;
    RLSystemInfoPagina: TRLSystemInfo;
    RLLabelPagina: TRLLabel;
    RLGroup: TRLGroup;
    RLBandDetail: TRLBand;
    RLDrawBomba: TRLDraw;
    rl_bomba: TRLLabel;
    RLDrawDataAbastecimento: TRLDraw;
    rl_data_abastecimento: TRLLabel;
    RLDrawValor: TRLDraw;
    rl_valor: TRLLabel;
    RLBandHeader: TRLBand;
    RLDrawColunaBomba: TRLDraw;
    RLDrawGrupo: TRLDraw;
    RLLabelTanqueGrupo: TRLLabel;
    rl_tanque_grupo: TRLLabel;
    RLDrawColunaData: TRLDraw;
    RLLabelColunaData: TRLLabel;
    RLLabelColunaBomba: TRLLabel;
    RLDrawColunaValor: TRLDraw;
    RLLabelColunaValor: TRLLabel;
    RLBandSummary01: TRLBand;
    RLDrawValorTotalTanqueCaption: TRLDraw;
    RLDrawValorTotalTanque: TRLDraw;
    RLLabelValorTotalTanqueCaption: TRLLabel;
    rl_valor_total_tanque: TRLLabel;
    RLBandSummary02: TRLBand;
    RLDrawValorTotalCaption: TRLDraw;
    RLDrawValorTotal: TRLDraw;
    RLLabelValorTotalCaption: TRLLabel;
    rl_valor_total: TRLLabel;
    ds_relatorio: TDataSource;
    rl_periodo: TRLLabel;
    procedure RLBandHeaderBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBandDetailBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBandSummary01BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBandSummary02BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    ValorTotal: Currency;
    ValorTotalTanque: Currency;
  public
    procedure ImpressaoRelatorioAbastecimento(aDataInicio, aDataFinal : TDateTime);
  end;

var
  frmRelatorios: TfrmRelatorios;

implementation

{$R *.dfm}

{ TfrmRelatorios }

procedure TfrmRelatorios.ImpressaoRelatorioAbastecimento(aDataInicio, aDataFinal: TDateTime);
var
  DataSet : TDataSet;
begin
  try
    DataSet := TControllerFactory.New.ControllerRelatorios.ImpressaoRelatorioAbastecimento(aDataInicio, aDataFinal); 

    if DataSet.RecordCount <> 0 then
    begin
      if Assigned(DataSet) then
      begin
        rl_titulo.Caption  := 'Posto ABC - Impressao de abastecimento';
        rl_periodo.Caption := 'Periodo: ' + DateToStr(aDataInicio) + ' Até ' + DateToStr(aDataFinal);
        ds_relatorio.DataSet := DataSet;
        rl_report_abastecimento.Preview();
      end;
    end
    else
      MessageDlg('Não há dados sobre abastecimento para apresentar no periodo informado.',mtInformation,[mbOK],0);
      
  finally
    FreeAndNil(DataSet);
  end;
end;

procedure TfrmRelatorios.RLBandDetailBeforePrint(Sender: TObject;  var PrintIt: Boolean);
var
  valor : Currency;
begin
  valor := ds_relatorio.DataSet.FieldByName('VALOR').AsCurrency;

  rl_bomba.Caption              := ds_relatorio.DataSet.FieldByName('BOMBA').AsString;
  rl_data_abastecimento.Caption := FormatDateTime('dd/mm/yyyy', ds_relatorio.DataSet.FieldByName('DATA').AsDateTime);
  rl_valor.Caption              := FormatFloat('R$ #,##0.00', valor);
  ValorTotal                    := ValorTotal + valor;
  ValorTotalTanque              := ValorTotalTanque + valor;
end;

procedure TfrmRelatorios.RLBandHeaderBeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  rl_tanque_grupo.Caption := ds_relatorio.DataSet.FieldByName('TANQUE').AsString;
end;

procedure TfrmRelatorios.RLBandSummary01BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  rl_valor_total_tanque.Caption := FormatFloat('R$ #,##0.00',ValorTotalTanque);
  ValorTotalTanque := 0;
end;

procedure TfrmRelatorios.RLBandSummary02BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  rl_valor_total.Caption := FormatFloat('R$ #,##0.00',ValorTotal);
  ValorTotal := 0;
end;

end.
