unit DAO.Abastecimento;

interface

uses
  System.Generics.Collections, Model.Abastecimento, System.SysUtils,
  DAO.ConexaoFiredac, Vcl.Dialogs, FireDAC.Comp.Client, Data.DB, Utils;

type
  TDAOAbastecimento = class
  private
     DAOConexaoFiredac : TDAOConexaoFiredac;
  public
    constructor create;
    destructor destroy; override;

    function Insert(aAbastecimento : TAbastecimento) : Boolean;
    function GetAll : TDataSet;
  end;

implementation


{ DAOAbastecimento }

constructor TDAOAbastecimento.create;
begin

end;

destructor TDAOAbastecimento.destroy;
begin
  inherited;
end;

function TDAOAbastecimento.GetAll : TDataSet;
var
  SQL : TStringBuilder;
begin
  try
    DAOConexaoFiredac := TDAOConexaoFiredac.create;
    SQL := TStringBuilder.Create('SELECT * FROM TB_ABASTECIMENTOS ORDER BY DATA, ID_ABASTECIMENTO DESC');

    result := DAOConexaoFiredac.ExecuteComand(SQL.ToString);
  finally
    FreeAndNil(SQL);
    FreeAndNil(DAOConexaoFiredac)
  end;
end;

function TDAOAbastecimento.Insert(aAbastecimento: TAbastecimento): Boolean;
var
  SQL : TStringBuilder;
begin
  try
    try
      DAOConexaoFiredac := TDAOConexaoFiredac.create;
      SQL := TStringBuilder.Create('INSERT INTO TB_ABASTECIMENTOS(DATA, ID_BOMBA, LITROS, VALOR, IMPOSTO)')
                           .Append('VALUES(')
                           .Append(QuotedStr((FormatDateTime('dd.mm.yyyy', Date)))).Append(',')
                           .Append(aAbastecimento.Bomba.Id).Append(',')
                           .Append(TUtil.convert_curreny_to_string(aAbastecimento.Litros)).Append(',')
                           .Append(TUtil.convert_curreny_to_string(aAbastecimento.Valor)).Append(',')
                           .Append(TUtil.convert_curreny_to_string(aAbastecimento.Imposto))
                           .Append(')');

      if DAOConexaoFiredac.GravarNoBanco(SQL.ToString) then
        MessageDlg('Abastecimento resgistrado com sucesso.',mtInformation,[mbOK],0)
      else
        MessageDlg('Não foi possível registrar o abastecimento.',mtInformation,[mbOK],0);

    except on e: exception do
      begin
        MessageDlg('Erro ao registrar o abastecimento.' + e.Message,mtInformation,[mbOK],0);
      end;
    end;

  finally
    FreeAndNil(SQL);
    FreeAndNil(DAOConexaoFiredac);
  end;
end;


end.