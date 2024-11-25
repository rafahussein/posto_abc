unit Model.Bomba;

interface

uses
  model.Tanque, System.SysUtils, Vcl.Dialogs;

type
  TBomba = class
  private
    FId: Integer;
    FDescricao: String;
    FTanque: TTanque;

    procedure SetDescricao(const Value: String);
    procedure SetId(const Value: Integer);
    procedure SetTanque(const Value: TTanque);
  public
    constructor create;
    destructor destroy; override;
    property Id: Integer read FId write SetId;
    property Descricao: String read FDescricao write SetDescricao;
    property Tanque: TTanque read FTanque write SetTanque;

    function Validar : Boolean;
  end;

implementation

{ TBomba }

constructor TBomba.create;
begin
  FTanque := TTanque.create;
end;

destructor TBomba.destroy;
begin
  FreeAndNil(FTanque);
  inherited;
end;

procedure TBomba.SetDescricao(const Value: String);
begin
  FDescricao := Value;
end;

procedure TBomba.SetId(const Value: Integer);
begin
  FId := Value;
end;

procedure TBomba.SetTanque(const Value: TTanque);
begin
  FTanque := Value;
end;


function TBomba.Validar: Boolean;
begin
  Result := True;

  if FDescricao = EmptyStr then
  begin
    MessageDlg('Necessário informar a descrição da bomba.' ,mtInformation,[mbOK],0);
    exit(False);
  end;

  if FTanque.Id = 0 then
  begin
    MessageDlg('Necessário informar um tanque.' ,mtInformation,[mbOK],0);
    exit(False);
  end;

end;

end.
