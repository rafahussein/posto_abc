unit DAO.Relatorios;

interface

uses
  System.SysUtils, DAO.ConexaoFiredac, Data.DB, Vcl.Dialogs;

type
  TDAORelatorios = class
    private
      DAOConexaoFiredac : TDAOConexaoFiredac;

    public
      function ImpressaoRelatorioAbastecimentos(aDataInicio, aDataFinal : TDateTime) : TDataSet;
  end;

implementation

{ TRelatorios }

function TDAORelatorios.ImpressaoRelatorioAbastecimentos(aDataInicio, aDataFinal : TDateTime) : TDataSet;
var
  SQL : TStringBuilder;
begin
  try
    DAOConexaoFiredac := TDAOConexaoFiredac.create;
    SQL := TStringBuilder.Create('SELECT AB.DATA, AB.VALOR, BO.DESCRICAO AS BOMBA, TA.DESCRICAO AS TANQUE FROM TB_ABASTECIMENTOS AB ')
                         .Append('INNER JOIN TB_BOMBAS BO ON BO.ID_BOMBA = AB.ID_BOMBA ')
                         .Append('INNER JOIN TB_TANQUES TA ON TA.ID_TANQUE = BO.ID_TANQUE ')
                         .Append('WHERE AB.DATA BETWEEN ')
                         .Append(QuotedStr((FormatDateTime('dd.mm.yyyy', aDataInicio))))
                         .Append(' AND ')
                         .Append(QuotedStr((FormatDateTime('dd.mm.yyyy', aDataFinal))))
                         .Append('ORDER BY TA.DESCRICAO ');

    Result := DAOConexaoFiredac.ExecuteComand(SQL.ToString);
  finally
    FreeAndNil(SQL);
    FreeAndNil(DAOConexaoFiredac);
  end;
end;

end.
