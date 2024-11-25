unit Model.Tanque;

interface

uses
  Utils, System.SysUtils, Vcl.Dialogs;

type

  TTanque = class
  private
    FId: Integer;
    FDescricao: String;
    FTipo: TTipoCombustivel;

    procedure SetDescricao(const Value: String);
    procedure SetId(const Value: Integer);
    procedure SetTipo(const Value: TTipoCombustivel);
  public
    constructor create;
    property Id: Integer read FId write SetId;
    property Descricao: String read FDescricao write SetDescricao;
    property Tipo: TTipoCombustivel read FTipo write SetTipo;

    function Validar : Boolean;
  end;
implementation

{ TTanque }

constructor TTanque.create;
begin

end;

procedure TTanque.SetDescricao(const Value: String);
begin
  FDescricao := Value;
end;
procedure TTanque.SetId(const Value: Integer);
begin
  FId := Value;
end;
procedure TTanque.SetTipo(const Value: TTipoCombustivel);
begin
  FTipo := Value;
end;

function TTanque.Validar: Boolean;
begin
  Result := True;

  if FDescricao = EmptyStr then
  begin
    MessageDlg('Necessário informar a descrição do tanque.' ,mtInformation,[mbOK],0);
    exit(False);
  end;


end;

end.
