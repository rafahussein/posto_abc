unit Controller.Abastecimento;

interface

uses Model.Abastecimento, System.Generics.Collections, System.SysUtils, Data.DB, Utils,
     DAO.Abastecimento, Controller.Interfaces.Factory;


type
  TControllerAbastecimento = class(TInterfacedObject, iControllerAbastecimento)
  private
  public
    constructor create;
    destructor destroy; override;

    function Novo : iControllerAbastecimento;
    function Salvar(ModelAbastecimento : TAbastecimento) : iControllerAbastecimento;
    function Deletar : iControllerAbastecimento;
    function Editar : iControllerAbastecimento;
    function Cancelar : iControllerAbastecimento;
    function getAll : TDataSet;

    class function New : iControllerAbastecimento;
  end;

implementation


{ TControllerAbastecimento }


function TControllerAbastecimento.Cancelar : iControllerAbastecimento;
begin

end;

constructor TControllerAbastecimento.create;
begin

end;

function TControllerAbastecimento.Deletar : iControllerAbastecimento;
begin
  //pass
end;

destructor TControllerAbastecimento.destroy;
begin
  inherited;
end;

function TControllerAbastecimento.Editar : iControllerAbastecimento;
begin
  //pass
end;

function TControllerAbastecimento.getAll: TDataSet;
var
  DAOAbastecimento : TDAOAbastecimento;
begin
  try
    DAOAbastecimento := TDAOAbastecimento.Create;
    result := DAOAbastecimento.GetAll;
  finally
    FreeAndNil(DAOAbastecimento);
  end;
end;

class function TControllerAbastecimento.New: iControllerAbastecimento;
begin
  Result := Self.create;
end;

function TControllerAbastecimento.Novo : iControllerAbastecimento;
begin

end;

function TControllerAbastecimento.Salvar(ModelAbastecimento : TAbastecimento) : iControllerAbastecimento;
var
  DAOAbastecimento : TDAOAbastecimento;
begin
  if ModelAbastecimento.Validar then
  begin
    try
      DAOAbastecimento := TDAOAbastecimento.Create;
      DAOAbastecimento.Insert(ModelAbastecimento);

    finally
      FreeAndNil(DAOAbastecimento);
    end;
  end;

end;

end.
