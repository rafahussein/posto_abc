unit Controller.Bomba;

interface

uses Model.Bomba, System.SysUtils, Utils, Data.DB, DAO.Bomba,
  Controller.Interfaces.Factory;

type
  TControllerBomba = class(TInterfacedObject, iControllerBomba)
  private
  public
    constructor create;

    function Novo : iControllerBomba;
    function Salvar(ModelBomba : TBomba) : iControllerBomba;
    function Deletar : iControllerBomba;
    function Editar : iControllerBomba;
    function Cancelar : iControllerBomba;
    function getAll : TDataSet;

    class function New : iControllerBomba;
  end;

implementation


{ TControllerBomba }

function TControllerBomba.Cancelar : iControllerBomba;
begin
  Result := Self;
end;

constructor TControllerBomba.create;
begin

end;

function TControllerBomba.Deletar : iControllerBomba;
begin
  Result := Self;
end;

function TControllerBomba.Editar : iControllerBomba;
begin
  Result := Self;
end;

function TControllerBomba.getAll: TDataSet;
var
  DAOBomba : TDAOBomba;
begin
  try
    DAOBomba := TDAOBomba.Create;
    result := DAOBomba.GetAll;
  finally
    FreeAndNil(DAOBomba);
  end;
end;

class function TControllerBomba.New: iControllerBomba;
begin
  Result := Self.create;
end;

function TControllerBomba.Novo : iControllerBomba;
begin
  Result := Self;
end;

function TControllerBomba.Salvar(ModelBomba : TBomba) : iControllerBomba;
var
  DAOBomba : TDAOBomba;
begin
  if ModelBomba.Validar then
  begin
    try
      DAOBomba := TDAOBomba.Create;
      DAOBomba.Insert(ModelBomba);

    finally
      FreeAndNil(DAOBomba);

    end;
  end;
end;

end.
