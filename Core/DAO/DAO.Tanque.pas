unit DAO.Tanque;

interface

uses Model.Tanque, System.SysUtils, Vcl.Dialogs, DAO.ConexaoFiredac, Data.DB, Utils;

type
  TDAOTanque = class
  private
    DAOConexaoFiredac : TDAOConexaoFiredac;
  public
    function Insert(aTanque : TTanque) : Boolean;
    function GetAll : TDataSet;
    function GetOne(aID : Integer) : TDataSet;
  end;

implementation


{ TDAOTanque }

function TDAOTanque.GetOne(aID : Integer): TDataSet;
var
  SQL : TStringBuilder;
begin
  try
    DAOConexaoFiredac := TDAOConexaoFiredac.create;
    SQL := TStringBuilder.Create('SELECT * FROM TB_TANQUES ')
                         .Append(' WHERE ID_TANQUE = ' + aID.ToString);

    Result := DAOConexaoFiredac.ExecuteComand(SQL.ToString);
  finally
    FreeAndNil(SQL);
    FreeAndNil(DAOConexaoFiredac);
  end;
end;

function TDAOTanque.Insert(aTanque: TTanque): Boolean;
var
  SQL : TStringBuilder;

begin
  try
    try
      DAOConexaoFiredac := TDAOConexaoFiredac.create;
      SQL := TStringBuilder.Create('INSERT INTO TB_TANQUES(DESCRICAO, TIPO)')
                           .Append('VALUES(')
                           .Append(QuotedStr(aTanque.Descricao) + ',')
                           .Append(QuotedStr(TUtil.get_tipo_combustivel(aTanque.Tipo).ToString))
                           .Append(')');

      if DAOConexaoFiredac.GravarNoBanco(SQL.ToString) then
        MessageDlg('Tanque resgistrado com sucesso.',mtInformation,[mbOK],0)
      else
        MessageDlg('Não foi possível registrar o tanque.',mtInformation,[mbOK],0);

    except on e: exception do
      begin
        raise Exception.Create('Erro ao cadastrar o tanque.' + e.Message);
      end;
    end;

  finally
    FreeAndNil(SQL);
    FreeAndNil(DAOConexaoFiredac);
  end;
end;

function TDAOTanque.GetAll : TDataSet;
var
  SQL : TStringBuilder;
begin
  try
    DAOConexaoFiredac := TDAOConexaoFiredac.create;
    SQL := TStringBuilder.Create('SELECT * FROM TB_TANQUES ORDER BY ID_TANQUE DESC');

    Result := DAOConexaoFiredac.ExecuteComand(SQL.ToString);
  finally
    FreeAndNil(SQL);
    FreeAndNil(DAOConexaoFiredac);
  end;
end;

end.
