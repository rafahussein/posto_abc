unit DAO.Bomba;

interface

uses Model.Bomba, System.SysUtils, Vcl.Dialogs, DAO.ConexaoFiredac, Data.DB;

type
  TDAOBomba = class
  private
    DAOConexaoFiredac : TDAOConexaoFiredac;
  public
    function Insert(aBomba : TBomba) : Boolean;
    function GetAll : TDataSet;
  end;

implementation


{ TDAOBomba }

function TDAOBomba.Insert(aBomba: TBomba): Boolean;
var
  SQL : TStringBuilder;

begin
  try
    try
      DAOConexaoFiredac := TDAOConexaoFiredac.create;
      SQL := TStringBuilder.Create('INSERT INTO TB_BOMBAS(DESCRICAO, ID_TANQUE)')
                           .Append('VALUES(')
                           .Append(QuotedStr(aBomba.Descricao)).Append(',')
                           .Append(QuotedStr(aBomba.Tanque.Id.ToString))
                           .Append(')');

      if DAOConexaoFiredac.GravarNoBanco(SQL.ToString) then
        MessageDlg('Bomba resgistrada com sucesso.',mtInformation,[mbOK],0)
      else
        MessageDlg('Não foi possível registrar a bomba.',mtInformation,[mbOK],0);

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

function TDAOBomba.GetAll : TDataSet;
var
  SQL : TStringBuilder;
begin
  try
    DAOConexaoFiredac := TDAOConexaoFiredac.create;
    SQL := TStringBuilder.Create('SELECT * FROM TB_BOMBAS');

    Result := DAOConexaoFiredac.ExecuteComand(SQL.ToString);
  finally
    FreeAndNil(SQL);
    FreeAndNil(DAOConexaoFiredac);
  end;
end;

end.
