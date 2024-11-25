unit Controller.Tanque;

interface

uses Model.Tanque, System.SysUtils, Utils, Data.DB, DAO.Tanque,
  Controller.Interfaces.Factory;

type
  TControllerTanque = class(TInterfacedObject, iControllerTanque)
  private
  public
    constructor create;

    function Novo : iControllerTanque;
    function Salvar(ModelTanque : TTanque) : iControllerTanque;
    function Deletar : iControllerTanque;
    function Editar : iControllerTanque;
    function Cancelar : iControllerTanque;
    function getAll : TDataSet;
    function getOne(aID : Integer) : TDataSet;

    class function New : iControllerTanque;
  end;

implementation


{ TControllerTanque }

function TControllerTanque.Cancelar : iControllerTanque;
begin
  Result := Self;
end;

constructor TControllerTanque.create;
begin

end;

function TControllerTanque.Deletar : iControllerTanque;
begin
  Result := Self;
end;

function TControllerTanque.Editar : iControllerTanque;
begin
  Result := Self;
end;

function TControllerTanque.getAll: TDataSet;
var
  DAOTanque : TDAOTanque;
begin
  try
    DAOTanque := TDAOTanque.Create;
    result    := DAOTanque.GetAll;
  finally
    FreeAndNil(DAOTanque);
  end;
end;

function TControllerTanque.getOne(aID : Integer): TDataSet;
var
  DAOTanque : TDAOTanque;
begin
  try
    DAOTanque := TDAOTanque.Create;
    result    := DAOTanque.GetOne(aID)
  finally
    FreeAndNil(DAOTanque);
  end
end;

class function TControllerTanque.New: iControllerTanque;
begin
  Result := Self.create;
end;

function TControllerTanque.Novo : iControllerTanque;
begin
  Result := Self;
end;

function TControllerTanque.Salvar(ModelTanque : TTanque) : iControllerTanque;
var
  DAOTanque : TDAOTanque;
begin
  if ModelTanque.Validar then
  begin
    try
      DAOTanque := TDAOTanque.Create;
      DAOTanque.Insert(ModelTanque);
    finally
      FreeAndNil(DAOTanque);
    end;
  end;
end;

end.
