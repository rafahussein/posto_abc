unit Model.Abastecimento;

interface

uses
  System.SysUtils, Model.Bomba, Vcl.Dialogs;

type
  TAbastecimento = class
  private
    FId: Integer;
    FData: TDateTime;
    FBomba: TBomba;
    FLitros: Currency;
    FValor: Currency;
    FImposto: Currency;
    FTipoBastecimento : Integer;

    procedure SetBomba(const Value: TBomba);
    procedure SetData(const Value: TDateTime);
    procedure SetId(const Value: Integer);
    procedure SetImposto(const Value: Currency);
    procedure SetLitros(const Value: Currency);
    procedure SetValor(const Value: Currency);
    procedure SetTipoBastecimento(const Value: Integer);
  public
    constructor create;
    destructor destroy; override;

    property Id: Integer read FId write SetId;
    property Data: TDateTime read FData write SetData;
    property Bomba: TBomba read FBomba write SetBomba;
    property Litros: Currency read FLitros write SetLitros;
    property Valor: Currency read FValor write SetValor;
    property Imposto: Currency read FImposto write SetImposto;
    property TipoAbastecimento : Integer read FTipoBastecimento write SetTipoBastecimento;

    function Validar : Boolean;
  end;

implementation


{ TAbastecimento }

constructor TAbastecimento.create;
begin
  FBomba := TBomba.create;
end;

destructor TAbastecimento.destroy;
begin
  FreeAndNil(FBomba);
  inherited;
end;

procedure TAbastecimento.SetBomba(const Value: TBomba);
begin
  FBomba := Value;
end;

procedure TAbastecimento.SetData(const Value: TDateTime);
begin
  FData := Value;
end;

procedure TAbastecimento.SetId(const Value: Integer);
begin
  FId := Value;
end;

procedure TAbastecimento.SetImposto(const Value: Currency);
begin
  FImposto := Value;
end;

procedure TAbastecimento.SetLitros(const Value: Currency);
begin
  FLitros := Value;
end;

procedure TAbastecimento.SetTipoBastecimento(const Value: Integer);
begin
  FTipoBastecimento := Value;
end;

procedure TAbastecimento.SetValor(const Value: Currency);
begin
  FValor := Value;
end;


function TAbastecimento.Validar: Boolean;
begin
  Result := True;

  if FBomba.Id = 0 then
  begin
    MessageDlg('Necessário informar uma bomba' ,mtInformation,[mbOK],0);
    exit(False);
  end;

  if FTipoBastecimento < 0 then
  begin
    MessageDlg('Necessário informar o tipo de abastecimento.' ,mtInformation,[mbOK],0);
    exit(False);
  end;

  if (FLitros = 0) or (FValor = 0)then
  begin
    MessageDlg('Necessário informar um dos valores de litros ou valor.' ,mtInformation,[mbOK],0);
    exit(False);
  end;

end;

end.


