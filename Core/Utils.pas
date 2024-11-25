unit Utils;

interface

uses
   IniFiles, System.SysUtils, Vcl.Forms, System.Classes, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, Datasnap.DBClient, Data.DB,
  System.Generics.Collections;

type
  TTipoCombustivel = (Gasolina, OleoDiesel);
  TState = (tsEdit, tsNew, tsDelete, tsBrowser);


type
  TUtil = class
  public
     class function lerArquivoIni : TDictionary<String, String>;
     class function get_tipo_combustivel(aTipoCombustivel : TTipoCombustivel) : Integer;
     class procedure abrir_menu(aPageControl : TPageControl; aTab : TTabSheet);
     class procedure Configurar_visibilidade(aEdt : TLabeledEdit; aRadioGroup : TRadioGroup; visibilidade : Boolean);
     class procedure Carregar_cds_tanque(aCds : TClientDataSet; aDataSet : TDataSet);
     class procedure Carregar_cds_bomba(aCds : TClientDataSet; aDataSet : TDataSet);
     class procedure Carregar_cds_configuracao(aCds : TClientDataSet; aDataSet : TDataSet);
     class procedure Carregar_cds_abastecimento(aCds : TClientDataSet; aDataSet : TDataSet);
     class function get_valor_tipo_combustivel(aValue : Integer) : TTipoCombustivel;
     class function ConvertStringTo_Curreny(aValue : String; aUsePonto : Boolean = False): Currency;
     class procedure CaracteresReduzidos(aKey: Char);
     class procedure metadata_cds_copy(aCdsOrigem, aCdsDestino : TClientDataSet);
     class function convert_curreny_to_string(aValue : Currency) : string;

  end;

implementation

{ TUtil }

class procedure TUtil.abrir_menu(aPageControl: TPageControl; aTab: TTabSheet);
begin
  aPageControl.ActivePage := aTab;
end;

class procedure TUtil.CaracteresReduzidos(aKey: Char);
begin
  try
    if not(aKey in ['0'..'9',Char(8),Char(44)]) then
    begin
      aKey := #0;
    end;
  except on E: Exception do
    begin
      raise Exception.Create(e.Message);
    end;
  end;
end;

class procedure TUtil.carregar_cds_abastecimento(aCds: TClientDataSet; aDataSet: TDataSet);
begin
  aCds.EmptyDataSet;

  if aDataSet.RecordCount > 0 then
  begin
    aDataSet.First;
    while not aDataSet.Eof do
    begin
      aCds.Append;
      aCds.FieldByName('Identificador').AsInteger := aDataSet.FieldByName('ID_ABASTECIMENTO').AsInteger;
      aCds.FieldByName('Data').AsDateTime := aDataSet.FieldByName('DATA').AsDateTime;
      aCds.FieldByName('Bomba').AsInteger := aDataSet.FieldByName('ID_BOMBA').AsInteger;
      aCds.FieldByName('Litros').AsCurrency := aDataSet.FieldByName('LITROS').AsCurrency;
      aCds.FieldByName('Valor').AsCurrency := aDataSet.FieldByName('VALOR').AsCurrency;
      aCds.FieldByName('Imposto').AsCurrency := aDataSet.FieldByName('IMPOSTO').AsCurrency;
      aCds.Post;

      aDataSet.Next;
    end;
  end;

  FreeAndNil(aDataSet);
end;

class procedure TUtil.carregar_cds_bomba(aCds: TClientDataSet; aDataSet: TDataSet);
begin
  aCds.EmptyDataSet;

  if aDataSet.RecordCount > 0 then
  begin
    aDataSet.First;
    while not aDataSet.Eof do
    begin
      aCds.Append;
      aCds.FieldByName('Identificador').AsInteger := aDataSet.FieldByName('ID_BOMBA').AsInteger;
      aCds.FieldByName('Descrição').AsString := aDataSet.FieldByName('DESCRICAO').AsString;
      aCds.FieldByName('Tanque').AsInteger := aDataSet.FieldByName('ID_TANQUE').AsInteger;
      aCds.Post;

      aDataSet.Next;
    end;
  end;

  FreeAndNil(aDataSet);
end;

class procedure TUtil.carregar_cds_configuracao(aCds: TClientDataSet; aDataSet: TDataSet);
begin
  aCds.EmptyDataSet;

  if aDataSet.RecordCount > 0 then
  begin
    aDataSet.First;
    while not aDataSet.Eof do
    begin
      aCds.Append;
      aCds.FieldByName('valor_litro_gasolina').AsCurrency := aDataSet.FieldByName('VALOR_LITRO_GASOLINA').AsCurrency;
      aCds.FieldByName('valor_litro_oleo_diesel').AsCurrency := aDataSet.FieldByName('VALOR_LITRO_DIESEL').AsCurrency;
      aCds.FieldByName('valor_do_imposto').AsCurrency := aDataSet.FieldByName('VALOR_IMPOSTO').AsCurrency;
      aCds.Post;

      aDataSet.Next;
    end;
  end;

   FreeAndNil(aDataSet);
end;

class procedure TUtil.carregar_cds_tanque(aCds: TClientDataSet; aDataSet: TDataSet);
begin
  aCds.EmptyDataSet;

  if aDataSet.RecordCount > 0 then
  begin
    aDataSet.First;
    while not aDataSet.Eof do
    begin
      aCds.Append;
      aCds.FieldByName('Identificador').AsInteger := aDataSet.FieldByName('ID_TANQUE').AsInteger;
      aCds.FieldByName('Descrição').AsString := aDataSet.FieldByName('DESCRICAO').AsString;
      aCds.FieldByName('Tipo').AsInteger := aDataSet.FieldByName('TIPO').AsInteger;
      aCds.Post;

      aDataSet.Next;
    end;
  end;

   FreeAndNil(aDataSet);
end;

class procedure TUtil.configurar_visibilidade(aEdt: TLabeledEdit; aRadioGroup: TRadioGroup; visibilidade : Boolean);
begin
  aEdt.Enabled        := visibilidade;
  aRadioGroup.Enabled := visibilidade;
end;

class function TUtil.get_tipo_combustivel(aTipoCombustivel : TTipoCombustivel): Integer;
begin
  case aTipoCombustivel of
    Gasolina   : Result := 0;
    OleoDiesel : Result := 1;
  end;
end;

class function TUtil.get_valor_tipo_combustivel(aValue: Integer): TTipoCombustivel;
begin
  case aValue of
    0: Result := TTipoCombustivel.Gasolina;
    1: Result := TTipoCombustivel.OleoDiesel;
  end;

end;

class function TUtil.lerArquivoIni : TDictionary<String, String>;
var
  arquivo: TIniFile;
  dict_config_banco : TDictionary<String, String>;
begin
  try
    try
      dict_config_banco := TDictionary<String, String>.create(1);
      arquivo := TIniFile.Create(ExtractFileDir(Application.ExeName) + '\Conf.ini');

      dict_config_banco.Add('CaminhoBanco', arquivo.ReadString('Configuracoes', 'Banco', ''));
      dict_config_banco.Add('Usuario', arquivo.ReadString('Configuracoes', 'Usuario', ''));
      dict_config_banco.Add('Senha', arquivo.ReadString('Configuracoes', 'Senha', ''));

      Result := dict_config_banco;
    except on E: Exception do
      raise Exception.Create(E.Message);
    end;

  finally
    FreeAndNil(arquivo)
  end;
end;

class procedure TUtil.metadata_cds_copy(aCdsOrigem, aCdsDestino: TClientDataSet);
var
  I: Integer;
  campo : string;
begin
  for I := 0 to Pred(aCdsOrigem.FieldDefs.Count) do
  begin
    if aCdsOrigem.Fields[I].datatype <> ftString then
      aCdsDestino.FieldDefs.Add(aCdsOrigem.Fields[I].fieldName, aCdsOrigem.Fields[I].datatype)
    else
      aCdsDestino.FieldDefs.Add(aCdsOrigem.Fields[I].fieldName, aCdsOrigem.Fields[I].datatype, aCdsOrigem.FieldDefs[I].size)
  end;

  aCdsDestino.CreateDataSet;
end;

class function TUtil.ConvertStringTo_Curreny(aValue: String; aUsePonto : Boolean = False): Currency;
begin
  try
    if not aUsePonto then
      aValue := StringReplace(Trim(aValue),'.','',[rfReplaceAll, rfIgnoreCase])
    else
      aValue := StringReplace(Trim(aValue),',','.',[rfReplaceAll, rfIgnoreCase]);

    Result := StrToCurrDef(aValue, 0);
  except on E: Exception do
    raise Exception.Create(E.Message);
  end;
end;


class function TUtil.convert_curreny_to_string(aValue: Currency): string;
var
  valor : string;
begin
   valor := StringReplace(FloatToStr(aValue),',','.',[rfReplaceAll, rfIgnoreCase]);
   result := valor;
end;

end.

