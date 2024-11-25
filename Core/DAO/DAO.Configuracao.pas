unit DAO.Configuracao;

interface

uses
  Model.Configuracao, System.SysUtils, DAO.ConexaoFiredac, Vcl.Dialogs,
  Data.DB;


type
  TDAOConfiguracao = class
  private
    DAOConexaoFiredac : TDAOConexaoFiredac;
  public
    function Insert(aConfiguracao: TConfiguracao) : Boolean;
    function get_configuracao : TConfiguracao;
    function GetAll : TDataSet;
  end;

implementation

{ TDAOConfiguracao }

function TDAOConfiguracao.GetAll: TDataSet;
var
  SQL : TStringBuilder;
begin
  try
    DAOConexaoFiredac := TDAOConexaoFiredac.create;
    SQL := TStringBuilder.Create('SELECT * FROM TB_CONFIGURACAO');

    exit(DAOConexaoFiredac.ExecuteComand(SQL.ToString));
  finally
    FreeAndNil(SQL);
    FreeAndNil(DAOConexaoFiredac);
  end;

end;

function TDAOConfiguracao.get_configuracao: TConfiguracao;
var
  SQL : TStringBuilder;
  DataSetConf : TDataSet;
  Configuracao : TConfiguracao;
begin
  try
    DAOConexaoFiredac := TDAOConexaoFiredac.create;
    SQL := TStringBuilder.Create('SELECT * FROM TB_CONFIGURACAO');

    DataSetConf := DAOConexaoFiredac.ExecuteComand(SQL.ToString);
    Configuracao.Id                   := DataSetConf.FieldByName('ID_CONFIGURACAO').AsInteger;
    Configuracao.ValorLitroGasolina   := DataSetConf.FieldByName('VALOR_LITRO_GASOLINA').AsCurrency;
    Configuracao.ValorLitroOleoDiesel := DataSetConf.FieldByName('VALOR_LITRO_DIESEL').AsCurrency;
    Configuracao.ValorImposto         := DataSetConf.FieldByName('VALOR_IMPOSTO').AsCurrency;

    Result := Configuracao;

  finally
    FreeAndNil(SQL);
    FreeAndNil(DAOConexaoFiredac);
  end;

end;

function TDAOConfiguracao.Insert(aConfiguracao: TConfiguracao) : Boolean;
var
  SQL : TStringBuilder;

begin
  try
    try
      DAOConexaoFiredac := TDAOConexaoFiredac.create;
      SQL := TStringBuilder.Create('INSERT INTO TB_CONFIGURACAO(VALOR_LITRO_GASOLINA, VALOR_LITRO_DIESEL, VALOR_IMPOSTO)')
                           .Append('VALUES(')
                           .Append(aConfiguracao.ValorLitroGasolina).Append(',')
                           .Append(aConfiguracao.ValorLitroOleoDiesel).Append(',')
                           .Append(aConfiguracao.ValorImposto)
                           .Append(')');

      if DAOConexaoFiredac.GravarNoBanco(SQL.ToString) then
        result := True
      else
        result := False;
    except on e: exception do
      begin
        MessageDlg('Erro ao cadastrar a bomba.' + e.Message,mtInformation,[mbOK],0);
      end;
    end;

  finally
    FreeAndNil(SQL);
    FreeAndNil(DAOConexaoFiredac);
  end;

end;

end.
