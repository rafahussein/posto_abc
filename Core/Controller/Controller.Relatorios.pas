unit Controller.Relatorios;

interface

uses
  Controller.Interfaces.Factory, DAO.Relatorios, Data.DB, Vcl.Dialogs,
  System.SysUtils;


type
  TControllerRelatorios = class(TInterfacedObject, iControllerRelatorios)
  private
  public
    constructor create;
    destructor destroy; override;

    function ImpressaoRelatorioAbastecimento(aDataInicio, aDataFinal : TDateTime) : TDataSet;
    class function New : iControllerRelatorios;
  end;

implementation

{ TControllerAbastecimento }

constructor TControllerRelatorios.create;
begin

end;

destructor TControllerRelatorios.destroy;
begin

  inherited;
end;

function TControllerRelatorios.ImpressaoRelatorioAbastecimento(aDataInicio, aDataFinal: TDateTime) : TDataSet;
var
  DAORelatorios : TDAORelatorios;
begin
  try
    DAORelatorios := TDAORelatorios.Create;
    exit(DAORelatorios.ImpressaoRelatorioAbastecimentos(aDataInicio, aDataFinal));
  finally
    FreeAndNil(DAORelatorios);
  end;
end;

class function TControllerRelatorios.New: iControllerRelatorios;
begin
  Result := Self.Create;
end;

end.
