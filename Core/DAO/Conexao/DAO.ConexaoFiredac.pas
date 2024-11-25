unit DAO.ConexaoFiredac;

interface

uses
  System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, System.SysUtils,
  System.Generics.Collections, FireDAC.Phys.FBDef,
  FireDAC.Comp.UI,FireDAC.Phys.IBBase, FireDAC.Phys.FB, Firedac.Dapt,
  Vcl.Dialogs, Utils;

type
  TDAOConexaoFiredac = class
  private
    FConexao : TFDConnection;
    FDriver  : TFDPhysFBDriverLink;
    FCursor  : TFDGUIxWaitCursor;
    FSQL: String;
    FQuery: TFDQuery;
    FMemTable : TFDMemTable;

    procedure Setconexao(const Value: TFDConnection);
  public

    constructor create;
    destructor destroy; override;
    property conexao: TFDConnection read FConexao write Setconexao;
    function ExecuteComand(aSQL: String): TDataSet;
    function GravarNoBanco(aSQL : String): Boolean;
  end;

implementation

uses
  Vcl.Forms;

{ TModelConexaoFiredac }


constructor TDAOConexaoFiredac.create;
var
  ArquivoIni : TDictionary<String, String>;
  CaminhoBanco, Usuario, Senha : String;

begin
  try
    try
      ArquivoIni := Tutil.lerArquivoIni;
      ArquivoIni.TryGetValue('CaminhoBanco', CaminhoBanco);
      ArquivoIni.TryGetValue('Usuario', Usuario);
      ArquivoIni.TryGetValue('Senha', Senha);

      FConexao := TFDConnection.create(nil);
      FDriver  := TFDPhysFBDriverLink.Create(nil);
      FCursor  := TFDGUIxWaitCursor.Create(nil);

      FConexao.Params.Values['Database']  := CaminhoBanco;
      FConexao.Params.Values['User_name'] := Usuario;
      FConexao.Params.Values['Password']  := Senha;
      FConexao.Params.Values['DriverID']  := 'FB';
      FConexao.Connected := True;

      FQuery := TFDQuery.create(nil);
      FQuery.Connection := FConexao;
      FMemTable := TFDMemTable.Create(nil);
    except on e: Exception do
      begin
        MessageDlg('Erro ao tentar conectar no banco de dados' + #13 +
                   'Valide se o caminho está correto e o nome do banco.' + #13 +
                   e.Message, mtInformation,[mbOK],0);
         Application.Terminate;
      end;
    end;

  finally
    FreeAndNil(ArquivoIni);
  end;
end;

destructor TDAOConexaoFiredac.destroy;
begin
  FreeAndNil(FQuery);
  FreeAndNil(FConexao);
  FreeAndNil(FDriver);
  FreeAndNil(FCursor);
end;

function TDAOConexaoFiredac.GravarNoBanco(aSQL : String): Boolean;
begin
 try
    Result := True;

    try
      FQuery.Close;
      FQuery.SQL.Clear;
      FQuery.SQL.Add(aSQL);
      FQuery.ExecSQL;

    except on e: Exception do
      begin
        Result := False;
        raise Exception.Create('Não foi possível executar os comandos' + e.Message);
      end;
    end;
  finally
    FreeAndNil(FMemTable);
  end;
end;

function TDAOConexaoFiredac.ExecuteComand(aSQL: String): TDataSet;
begin
  with FQuery, SQL do
  begin
    close; clear;
    Add(aSQL);
    Open;
  end;

  FMemTable.Data := FQuery.Data;
  exit(FMemTable);
end;


procedure TDAOConexaoFiredac.Setconexao(const Value: TFDConnection);
begin
  FConexao := Value;
end;

end.
