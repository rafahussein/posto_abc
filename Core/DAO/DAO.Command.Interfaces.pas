unit DAO.Command.Interfaces;

interface

uses
  Data.DB;

type
  iCommand = interface
    ['{D5FDD82D-E311-4C8F-BA99-96EA70C6C0DA}']
    function execute : iCommand;
  end;

  iInvoker = interface
    function Add(Value : iCommand) : iInvoker;
    function execute : iInvoker;
  end;

  iConexao = interface
    ['{380FB00D-11AE-47C8-86C5-E9FB9FECE292}']
    function OpenTransaction : iConexao;
    function AttachCommand(aSQL : String) : iConexao;
    function Prepare         : iConexao;
    function ExecuteQuery    : iConexao;
    function RecordCommit    : iConexao;
    function ExecuteComand(aSQL : String) : TDataSet;
  end;

implementation

end.
