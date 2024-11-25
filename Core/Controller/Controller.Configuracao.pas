unit Controller.Configuracao;

interface

uses
  Model.Configuracao, DAO.Configuracao, System.SysUtils,
  Controller.Interfaces.Factory, Data.DB;

type
  TControllerConfiguracao = class(TInterfacedObject, iControllerConfiguracao)
  private
    FModelConfiguracao: TConfiguracao;

  public
    constructor create;
    procedure Save(aConfiguracao: TConfiguracao);
    function getAll : TDataSet;

    class function New : iControllerConfiguracao;

  end;
implementation

{ TControllerConfiguracao }

constructor TControllerConfiguracao.create;
begin

end;

function TControllerConfiguracao.getAll: TDataSet;
var
  DAOConfiguracao : TDAOConfiguracao;
begin
  try
    DAOConfiguracao := TDAOConfiguracao.Create;
    result := DAOConfiguracao.GetAll;
  finally
    FreeAndNil(DAOConfiguracao);
  end;

end;

class function TControllerConfiguracao.New: iControllerConfiguracao;
begin
  Result := Self.Create;
end;

procedure TControllerConfiguracao.Save(aConfiguracao: TConfiguracao);
var
  DAOConfiguracao : TDAOConfiguracao;
begin
  try
    DAOConfiguracao := TDAOConfiguracao.Create;
    DAOConfiguracao.Insert(FModelConfiguracao);

  finally
    FreeAndNil(DAOConfiguracao);
  end;
end;
end.
