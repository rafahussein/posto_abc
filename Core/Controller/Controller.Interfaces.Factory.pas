unit Controller.Interfaces.Factory;

interface

uses
  Data.DB, Model.Abastecimento, Model.Tanque, Model.Bomba, Model.Configuracao;

type
  iControllerAbastecimento = Interface
    ['{C5F9EFB9-FDDA-4EC6-A386-EF1CF0A5E2E9}']
    function Novo : iControllerAbastecimento;
    function Salvar(ModelAbastecimento : TAbastecimento) : iControllerAbastecimento;
    function Deletar : iControllerAbastecimento;
    function Editar : iControllerAbastecimento;
    function Cancelar : iControllerAbastecimento;
    function getAll : TDataSet;
  End;


  iControllerTanque = Interface
    ['{C5F9EFB9-FDDA-4EC6-A386-EF1CF0A5E2E9}']
    function Novo : iControllerTanque;
    function Salvar(ModelTanque : TTanque) : iControllerTanque;
    function Deletar : iControllerTanque;
    function Editar : iControllerTanque;
    function Cancelar : iControllerTanque;
    function getAll : TDataSet;
    function getOne(aID : Integer) : TDataSet;
  End;

  iControllerBomba = Interface
    ['{C5F9EFB9-FDDA-4EC6-A386-EF1CF0A5E2E9}']
    function Novo : iControllerBomba;
    function Salvar(ModelBomba : TBomba) : iControllerBomba;
    function Deletar : iControllerBomba;
    function Editar : iControllerBomba;
    function Cancelar : iControllerBomba;
    function getAll : TDataSet;
  End;

  iControllerConfiguracao = Interface
    ['{422C3B98-4215-43BB-A1BC-72048379EF20}']
    procedure Save(aConfiguracao: TConfiguracao);
    function getAll : TDataSet;
  End;

  iControllerRelatorios = Interface
    ['{74A23E2B-3FA1-4989-A4C8-000FF3C527B6}']
    function ImpressaoRelatorioAbastecimento(aDataInicio, aDataFinal : TDateTime) : TDataSet;
  End;

  iControllerInterfaceFactory = Interface
    ['{433F95D9-F36D-4777-BF5C-666554EDC37F}']
    function ControllerTanque        : iControllerTanque;
    function ControllerBomba         : iControllerBomba;
    function ControllerAbastecimento : iControllerAbastecimento;
    function ControllerConfiguracao  : iControllerConfiguracao;
    function ControllerRelatorios    : iControllerRelatorios;
  End;

implementation

end.
