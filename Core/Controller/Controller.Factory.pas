unit Controller.Factory;

interface

uses
  Controller.Bomba, Controller.Tanque, Controller.Interfaces.Factory,
  Controller.Abastecimento, Controller.Configuracao, Controller.Relatorios;

type
  TControllerFactory = class(TInterfacedObject, iControllerInterfaceFactory)
  private

  public
    constructor create;
    class function New : iControllerInterfaceFactory;
    function ControllerTanque : iControllerTanque;
    function ControllerBomba : iControllerBomba;
    function ControllerAbastecimento : iControllerAbastecimento;
    function ControllerConfiguracao  : iControllerConfiguracao;
    function ControllerRelatorios    : iControllerRelatorios;

  end;

implementation

{ TControllerFactory }

function TControllerFactory.ControllerAbastecimento: iControllerAbastecimento;
begin
  Result := TControllerAbastecimento.New;
end;

function TControllerFactory.ControllerBomba: iControllerBomba;
begin
  result := TControllerBomba.New;
end;

function TControllerFactory.ControllerConfiguracao: iControllerConfiguracao;
begin
  Result := TControllerConfiguracao.New;
end;

function TControllerFactory.ControllerRelatorios: iControllerRelatorios;
begin
  Result := TControllerRelatorios.New;
end;

function TControllerFactory.ControllerTanque: iControllerTanque;
begin
  Result := TControllerTanque.New;
end;

constructor TControllerFactory.create;
begin

end;

class function TControllerFactory.New: iControllerInterfaceFactory;
begin
  Result := Self.create;
end;

end.
