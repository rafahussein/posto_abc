unit unt_principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, System.StrUtils,
  Vcl.WinXCtrls, Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.CategoryButtons,
  System.ImageList, Vcl.ImgList, Utils, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.DBCtrls, Vcl.Mask, Controller.Factory, Model.Tanque,
  Model.Abastecimento, Model.Bomba, Datasnap.DBClient, Datasnap.Provider,
  Vcl.Buttons, unt_quadros, System.Generics.Collections, unt_relatorios;

type
  TfrmPrincipal = class(TForm)
    pc_menus: TPageControl;
    ts_abastecimento: TTabSheet;
    ts_tanques: TTabSheet;
    pnlToolbar: TPanel;
    imgMenu: TImage;
    lblTitle: TLabel;
    sv_menu_lateral: TSplitView;
    cat_menu: TCategoryButtons;
    imgIcons: TImageList;
    ts_bombas: TTabSheet;
    ts_relatorio: TTabSheet;
    ts_configuracao: TTabSheet;
    gp_tanques: TGridPanel;
    pnl_top: TPanel;
    pnl_bottom: TPanel;
    pnl_menu_superior: TPanel;
    gb_tanque_campos: TGroupBox;
    ds_tanque: TDataSource;
    ds_bomba: TDataSource;
    ds_abastecimento: TDataSource;
    ds_configuracacao: TDataSource;
    gp_bomba: TGridPanel;
    pnl_bottom_bomba: TPanel;
    pnl_menu_superior_bomba: TPanel;
    gb_bomba_campos: TGroupBox;
    pnl_top_bomba: TPanel;
    dbg_bomba: TDBGrid;
    gp_configuracao: TGridPanel;
    pnl_top_configuracao: TPanel;
    pnl_menu_superior_configuracao: TPanel;
    gb_configuracao: TGroupBox;
    pnl_bottom_configuracao: TPanel;
    dbg_configuracao: TDBGrid;
    edt_descricao_tanque: TLabeledEdit;
    rg_tipo_de_combustivel: TRadioGroup;
    dbg_tanque: TDBGrid;
    cdsTanque: TClientDataSet;
    dbn_tanque: TDBNavigator;
    cdsTanqueIdentificador: TIntegerField;
    cdsTanqueDescrição: TStringField;
    cdsTanqueTipo: TIntegerField;
    dsp_tanque: TDataSetProvider;
    dbn_bomba: TDBNavigator;
    edt_descricao_bomba: TLabeledEdit;
    dsp_bomba: TDataSetProvider;
    edt_decricao_tanque: TLabeledEdit;
    edt_id_tanque: TLabeledEdit;
    cdsBomba: TClientDataSet;
    cdsBombaIdentificador: TIntegerField;
    cdsBombaDescrição: TStringField;
    cdsBombaTanque: TIntegerField;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    dbn_configuracao: TDBNavigator;
    cdsConfiguracao: TClientDataSet;
    dsp_configuracao: TDataSetProvider;
    cdsConfiguracaovalor_litro_gasolina: TCurrencyField;
    cdsConfiguracaovalor_litro_oleo_diesel: TCurrencyField;
    cdsConfiguracaovalor_do_imposto: TCurrencyField;
    cdsAbastecimento: TClientDataSet;
    dsp_abastecimento: TDataSetProvider;
    gp_abastecimento: TGridPanel;
    pnl_top_abastecimento: TPanel;
    pnl_menu_superior_abastecimento: TPanel;
    dbn_abastecimento: TDBNavigator;
    gb_abastecimento: TGroupBox;
    pnl_bottom_abastecimento: TPanel;
    dbg_abastecimento: TDBGrid;
    edt_desc_bomba_abastecimento: TLabeledEdit;
    edt_id_bomba_abastecimento: TLabeledEdit;
    rg_tipo_de_abastecimento: TRadioGroup;
    edt_valor_a_pagar: TEdit;
    edt_litros: TEdit;
    edt_preco_litro: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edt_tipo_combustivel: TLabeledEdit;
    cdsAbastecimentoIdentificador: TIntegerField;
    cdsAbastecimentoData: TDateField;
    cdsAbastecimentoBomba: TIntegerField;
    cdsAbastecimentoLitros: TCurrencyField;
    cdsAbastecimentoValor: TCurrencyField;
    cdsAbastecimentoImposto: TCurrencyField;
    GroupBox1: TGroupBox;
    LabelDataInicial: TLabel;
    LabelDataFinal: TLabel;
    dpd_data_inicio: TDateTimePicker;
    dpd_data_final: TDateTimePicker;
    Label4: TLabel;
    img_impressao_relatorio: TImage;
    sb_pesquisar_tanque: TSpeedButton;
    sp_pesquisar_bomba: TSpeedButton;
    procedure imgMenuClick(Sender: TObject);
    procedure cat_menuCategories0Items0Click(Sender: TObject);
    procedure cat_menuCategories0Items1Click(Sender: TObject);
    procedure cat_menuCategories0Items2Click(Sender: TObject);
    procedure cat_menuCategories0Items3Click(Sender: TObject);
    procedure cat_menuCategories0Items4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ds_tanqueStateChange(Sender: TObject);
    procedure dbn_tanqueClick(Sender: TObject; Button: TNavigateBtn);
    procedure dbn_bombaClick(Sender: TObject; Button: TNavigateBtn);
    procedure ds_bombaStateChange(Sender: TObject);
    procedure edt_valor_a_pagarChange(Sender: TObject);
    procedure edt_litrosChange(Sender: TObject);
    procedure edt_valor_a_pagarKeyPress(Sender: TObject; var Key: Char);
    procedure edt_litrosKeyPress(Sender: TObject; var Key: Char);
    procedure ds_abastecimentoStateChange(Sender: TObject);
    procedure rg_tipo_de_abastecimentoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbn_abastecimentoClick(Sender: TObject; Button: TNavigateBtn);
    procedure img_impressao_relatorioClick(Sender: TObject);
    procedure ts_tanquesShow(Sender: TObject);
    procedure ts_bombasShow(Sender: TObject);
    procedure ts_abastecimentoShow(Sender: TObject);
    procedure ts_configuracaoShow(Sender: TObject);
    procedure ts_relatorioShow(Sender: TObject);
    procedure sb_pesquisar_tanqueClick(Sender: TObject);
    procedure sp_pesquisar_bombaClick(Sender: TObject);

  private
    ModelAbastecimento : TAbastecimento;
    ModelTanque : TTanque;
    ModelBomba : TBomba;
    frm_quadros_apoio  : Tfrm_quadros_apoio;
    dict_config : TDictionary<String, Currency>;

  public
    procedure config_data;
    procedure LimparCamposTanque;
    procedure LimparCamposBomba;
    procedure LimparCamposAbastecimento;
    function get_config : TDictionary<String, Currency>;
    function get_value_configuracao(aKey : String) : Currency;
    function ValidarPeriodoRelatorio() : Boolean;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.cat_menuCategories0Items0Click(Sender: TObject);
begin
  TUtil.carregar_cds_abastecimento(cdsAbastecimento, TControllerFactory.New.ControllerAbastecimento.getAll);
  TUtil.abrir_menu(pc_menus, ts_abastecimento);
end;

procedure TfrmPrincipal.cat_menuCategories0Items1Click(Sender: TObject);
begin
  LimparCamposTanque;
  TUtil.carregar_cds_tanque(cdsTanque, TControllerFactory.New.ControllerTanque.getAll);
  TUtil.abrir_menu(pc_menus, ts_tanques);
end;

procedure TfrmPrincipal.cat_menuCategories0Items2Click(Sender: TObject);
begin
  LimparCamposBomba;
  TUtil.carregar_cds_bomba(cdsBomba, TControllerFactory.New.ControllerBomba.getAll);
  TUtil.abrir_menu(pc_menus, ts_bombas);
end;

procedure TfrmPrincipal.cat_menuCategories0Items3Click(Sender: TObject);
begin
  config_data;
  TUtil.abrir_menu(pc_menus, ts_relatorio);
end;

procedure TfrmPrincipal.cat_menuCategories0Items4Click(Sender: TObject);begin
  TUtil.carregar_cds_configuracao(cdsConfiguracao, TControllerFactory.New.ControllerConfiguracao.getAll);
  TUtil.abrir_menu(pc_menus, ts_configuracao);
end;

procedure TfrmPrincipal.dbn_abastecimentoClick(Sender: TObject;
  Button: TNavigateBtn);
var
  valor_imposto : Currency;

begin
  case Button of
    nbInsert: begin
      LimparCamposAbastecimento;
    end;

    nbPost: begin
      try
        valor_imposto := get_value_configuracao('VALOR_IMPOSTO');

        ModelAbastecimento                   := TAbastecimento.create;
        ModelAbastecimento.Bomba.Id          := StrToIntDef(edt_id_bomba_abastecimento.Text, 0);
        ModelAbastecimento.TipoAbastecimento := rg_tipo_de_abastecimento.ItemIndex;
        ModelAbastecimento.Litros            := TUtil.ConvertStringTo_Curreny(edt_litros.Text);
        ModelAbastecimento.Valor             := TUtil.ConvertStringTo_Curreny(edt_valor_a_pagar.Text);
        ModelAbastecimento.Imposto           := ((valor_imposto * ModelAbastecimento.Valor) / 100);

        TControllerFactory.New.ControllerAbastecimento.Salvar(ModelAbastecimento);

      finally
        TUtil.carregar_cds_abastecimento(cdsAbastecimento, TControllerFactory.New.ControllerAbastecimento.getAll);
        LimparCamposAbastecimento;
        FreeAndNil(ModelAbastecimento);
      end;

    end;
    nbCancel: begin
      LimparCamposAbastecimento;
    end;
  end;

end;

procedure TfrmPrincipal.dbn_bombaClick(Sender: TObject; Button: TNavigateBtn);
begin
  case Button of
    nbInsert: begin
      edt_descricao_bomba.SetFocus;
    end;

    nbPost: begin
      try
        ModelBomba           := TBomba.create;
        ModelBomba.Descricao := edt_descricao_bomba.Text;
        ModelBomba.Tanque.Id := StrToIntDef(edt_id_tanque.Text, 0);
        TControllerFactory.New.ControllerBomba.Salvar(ModelBomba);

      finally
        FreeAndNil(ModelBomba);
      end;

      TUtil.carregar_cds_bomba(cdsBomba, TControllerFactory.New.ControllerBomba.getAll);
      LimparCamposBomba;
    end;
    nbCancel: ;
  end;
end;

procedure TfrmPrincipal.dbn_tanqueClick(Sender: TObject; Button: TNavigateBtn);
begin
  case Button of
    nbInsert: begin
      edt_descricao_tanque.SetFocus;
    end;

    nbPost: begin
      try
        ModelTanque           := TTanque.create;
        ModelTanque.Descricao := edt_descricao_tanque.Text;
        ModelTanque.Tipo      := TUtil.get_valor_tipo_combustivel(rg_tipo_de_combustivel.ItemIndex);
        TControllerFactory.New.ControllerTanque.Salvar(ModelTanque);

      finally
        FreeAndNil(ModelTanque);
      end;

      TUtil.carregar_cds_tanque(cdsTanque, TControllerFactory.New.ControllerTanque.getAll);
      LimparCamposTanque;
    end;
    nbCancel: ;
  end;
end;

procedure TfrmPrincipal.ds_abastecimentoStateChange(Sender: TObject);
begin
  sp_pesquisar_bomba.Enabled           := ds_abastecimento.State in [dsInsert];
  rg_tipo_de_abastecimento.Enabled     := edt_id_bomba_abastecimento.Enabled and (edt_tipo_combustivel.Text <> EmptyStr);
end;

procedure TfrmPrincipal.ds_bombaStateChange(Sender: TObject);
begin
  edt_descricao_bomba.Enabled := ds_bomba.State in [dsInsert, dsEdit];
  sb_pesquisar_tanque.Enabled := edt_descricao_bomba.Enabled;
end;

procedure TfrmPrincipal.ds_tanqueStateChange(Sender: TObject);
begin
  edt_descricao_tanque.Enabled   := ds_tanque.State in [dsInsert, dsEdit];
  rg_tipo_de_combustivel.Enabled := edt_descricao_tanque.Enabled;
end;

procedure TfrmPrincipal.edt_litrosChange(Sender: TObject);
var
  valor_litro : Currency;
  preco_litro : Currency;
begin
  if not(edt_litros.Enabled) then
    exit;
  if (Trim(edt_litros.Text) = EmptyStr) then
  begin
    edt_litros.Text        := '0,00';
    edt_valor_a_pagar.Text := '0,00';
    Exit;
  end;

  valor_litro := TUtil.ConvertStringTo_Curreny(Trim(edt_litros.Text));
  preco_litro   := TUtil.ConvertStringTo_Curreny(Trim(edt_preco_litro.Text));

  edt_valor_a_pagar.Text := FormatFloat('#,##0.00', valor_litro * preco_litro);
end;

procedure TfrmPrincipal.edt_litrosKeyPress(Sender: TObject; var Key: Char);
begin
  TUtil.CaracteresReduzidos(Key);
end;

procedure TfrmPrincipal.edt_valor_a_pagarChange(Sender: TObject);
var
  valor_a_pagar : Currency;
  preco_litro : Currency;
begin
  if not(edt_valor_a_pagar.Enabled) then
    exit;
  if (Trim(edt_valor_a_pagar.Text) = EmptyStr) then
  begin
    edt_litros.Text        := '0,00';
    edt_valor_a_pagar.Text := '0,00';
    Exit;
  end;

  valor_a_pagar := TUtil.ConvertStringTo_Curreny(Trim(edt_valor_a_pagar.Text));
  preco_litro   := TUtil.ConvertStringTo_Curreny(Trim(edt_preco_litro.Text));

  edt_litros.Text := FormatFloat('#,##0.00', valor_a_pagar / preco_litro);
end;

procedure TfrmPrincipal.edt_valor_a_pagarKeyPress(Sender: TObject; var Key: Char);
begin
  TUtil.CaracteresReduzidos(Key);
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(dict_config);
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  TUtil.abrir_menu(pc_menus, ts_abastecimento);
end;

function TfrmPrincipal.get_config : TDictionary<String, Currency>;
var
  Configuracao : TDataSet;
  I: Integer;
begin
  Result := TDictionary<String, Currency>.Create(1);
  Configuracao := TControllerFactory.New.ControllerConfiguracao.getAll;

  for I := 0 to Pred(Configuracao.Fields.Count) do
  begin
    Result.Add(Configuracao.Fields[I].FieldName, Configuracao.FieldByName(Configuracao.Fields[I].FieldName).AsCurrency);
  end;

  Result := Result;
end;

function TfrmPrincipal.get_value_configuracao(aKey : String): Currency;
var
  value : Currency;
begin
  try
    dict_config := get_config();
    dict_config.TryGetValue(aKey, value);
    Result := value;
  finally
   FreeAndNil(dict_config);
  end;
end;

procedure TfrmPrincipal.img_impressao_relatorioClick(Sender: TObject);
var
  frmRelatorios : TfrmRelatorios;
begin
  if ValidarPeriodoRelatorio then
  begin
    try
      frmRelatorios := TfrmRelatorios.Create(nil);
      frmRelatorios.ImpressaoRelatorioAbastecimento(dpd_data_inicio.Date, dpd_data_final.Date);
    finally
      FreeAndNil(frmRelatorios);
    end;
  end;
end;

procedure TfrmPrincipal.imgMenuClick(Sender: TObject);
begin
  if sv_menu_lateral.Opened then
    sv_menu_lateral.Close
  else
    sv_menu_lateral.Open;
end;

procedure TfrmPrincipal.LimparCamposAbastecimento;
begin
  edt_id_bomba_abastecimento.Clear;
  edt_desc_bomba_abastecimento.Clear;
  edt_tipo_combustivel.Clear;
  edt_valor_a_pagar.Enabled := False;
  edt_litros.Enabled        := False;
  rg_tipo_de_abastecimento.ItemIndex := -1;
  edt_valor_a_pagar.Text := '0,00';
  edt_litros.Text        := '0,00';
  edt_preco_litro.Text   := '0,00';
end;

procedure TfrmPrincipal.LimparCamposBomba;
begin
  edt_descricao_bomba.Clear;
  edt_id_tanque.Clear;
  edt_decricao_tanque.Clear;
end;

procedure TfrmPrincipal.LimparCamposTanque;
begin
  edt_descricao_tanque.Clear;
end;

procedure TfrmPrincipal.rg_tipo_de_abastecimentoClick(Sender: TObject);
begin
  case rg_tipo_de_abastecimento.ItemIndex of
    0: begin
      edt_valor_a_pagar.Enabled := False;
      edt_litros.Enabled        := True;
      edt_litros.SetFocus;
    end;
    1: begin
      edt_valor_a_pagar.Enabled := True;
      edt_litros.Enabled        := False;
      edt_valor_a_pagar.SetFocus;
    end;
  end;
end;

procedure TfrmPrincipal.sb_pesquisar_tanqueClick(Sender: TObject);
begin
  try
    frm_quadros_apoio                    := Tfrm_quadros_apoio.Create(self);
    frm_quadros_apoio.Left               := 0;
    frm_quadros_apoio.Top                := 0;
    frm_quadros_apoio.Height             := 315;
    frm_quadros_apoio.Width              := 350;
    frm_quadros_apoio.Caption            := 'Filtrar por tanque';
    frm_quadros_apoio.pnl_buscar.Left    := 0;
    frm_quadros_apoio.pnl_buscar.Top     := 0;
    frm_quadros_apoio.pnl_buscar.Visible := True;

    TUtil.metadata_cds_copy(cdsTanque, frm_quadros_apoio.cds_buscar);
    TUtil.carregar_cds_tanque(frm_quadros_apoio.cds_buscar, TControllerFactory.New.ControllerTanque.getAll);
    frm_quadros_apoio.ShowModal;

    if frm_quadros_apoio.ModalResult <> 2 then
    begin
      edt_id_tanque.Text       := frm_quadros_apoio.cds_buscar.FieldByName('Identificador').AsInteger.ToString();
      edt_decricao_tanque.Text := frm_quadros_apoio.cds_buscar.FieldByName('Descrição').AsString;
    end;

  finally
    FreeAndNil(frm_quadros_apoio);
  end;
end;

procedure TfrmPrincipal.sp_pesquisar_bombaClick(Sender: TObject);
var
  DataSetTanque : TDataSet;
  Id_tanque : Cardinal;
  tipo_combustivel : String;
  preco_litro : currency;
begin
  try
    frm_quadros_apoio                    := Tfrm_quadros_apoio.Create(nil);
    frm_quadros_apoio.Left               := 0;
    frm_quadros_apoio.Top                := 0;
    frm_quadros_apoio.Height             := 315;
    frm_quadros_apoio.Width              := 350;
    frm_quadros_apoio.Caption            := 'Escolha a Bomba';
    frm_quadros_apoio.pnl_buscar.Left    := 0;
    frm_quadros_apoio.pnl_buscar.Top     := 0;
    frm_quadros_apoio.pnl_buscar.Visible := True;

    TUtil.metadata_cds_copy(cdsBomba, frm_quadros_apoio.cds_buscar);
    TUtil.carregar_cds_bomba(frm_quadros_apoio.cds_buscar, TControllerFactory.New.ControllerBomba.getAll);
    frm_quadros_apoio.ShowModal;

    if frm_quadros_apoio.ModalResult <> 2 then
    begin
      edt_id_bomba_abastecimento.Text   := frm_quadros_apoio.cds_buscar.FieldByName('Identificador').AsInteger.ToString();
      edt_desc_bomba_abastecimento.Text := frm_quadros_apoio.cds_buscar.FieldByName('Descrição').AsString;
      Id_tanque                         := frm_quadros_apoio.cds_buscar.FieldByName('tanque').AsInteger;
      DataSetTanque                     := TControllerFactory.New.ControllerTanque.getOne(Id_tanque);
      rg_tipo_de_abastecimento.Enabled  := True;

      case 0 of
        0: begin
          tipo_combustivel := 'Gasolina';
          preco_litro      := get_value_configuracao('VALOR_LITRO_GASOLINA');
        end;
        1: begin
          tipo_combustivel := 'Óleo Diesel';
          preco_litro      := get_value_configuracao('VALOR_LITRO_DIESEL');
        end;
      end;

      edt_preco_litro.text      := FormatFloat('#,##0.00',preco_litro);
      edt_tipo_combustivel.Text := tipo_combustivel;
      FreeAndNil(DataSetTanque);
    end;

  finally
    FreeAndNil(frm_quadros_apoio);
  end;
end;

procedure TfrmPrincipal.ts_abastecimentoShow(Sender: TObject);
begin
  TUtil.carregar_cds_abastecimento(cdsAbastecimento, TControllerFactory.New.ControllerAbastecimento.getAll);
end;

procedure TfrmPrincipal.ts_bombasShow(Sender: TObject);
begin
  TUtil.carregar_cds_bomba(cdsBomba, TControllerFactory.New.ControllerBomba.getAll);
end;

procedure TfrmPrincipal.ts_configuracaoShow(Sender: TObject);
begin
  TUtil.carregar_cds_configuracao(cdsConfiguracao, TControllerFactory.New.ControllerConfiguracao.getAll);
end;

procedure TfrmPrincipal.ts_relatorioShow(Sender: TObject);
begin
  config_data;
end;

procedure TfrmPrincipal.ts_tanquesShow(Sender: TObject);
begin
  TUtil.carregar_cds_tanque(cdsTanque, TControllerFactory.New.ControllerTanque.getAll);
end;

function TfrmPrincipal.ValidarPeriodoRelatorio: Boolean;
begin
  try
    Result := True;
    if (dpd_data_inicio.Date > dpd_data_final.Date) then
    begin
      MessageDlg('A data inicio não pode ser maior que a data final',mtInformation,[mbOK],0);
      exit(False);
    end;
  except on e: Exception do
    begin
      raise Exception.Create(e.Message);
    end;
  end;
end;

procedure TfrmPrincipal.config_data;
begin
  dpd_data_inicio.Date := Date;
  dpd_data_final.Date := Date;
end;


end.
