unit Controller.Interfaces;

interface

uses
  Data.DB;

type

  iControlerMethods = Interface
    ['{8659CC72-F7BC-4DA7-B72E-7E547B5A84CA}']
    procedure Novo;
    procedure Salvar;
    procedure Deletar;
    procedure Editar;
    procedure Cancelar;
    function getAll : TDataSet;
  End;


implementation

end.
