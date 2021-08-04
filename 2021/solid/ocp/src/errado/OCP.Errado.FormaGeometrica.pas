unit OCP.Errado.FormaGeometrica;

interface

type
  TFormaGeometrica = class
  private
    FAltura: Double;
    FBase: Double;
    FRaio: Double;
    procedure SetAltura(const Value: Double);
    procedure SetBase(const Value: Double);
    procedure SetRaio(const Value: Double);
  public
    property Raio: Double read FRaio write SetRaio;
    property Base: Double read FBase write SetBase;
    property Altura: Double read FAltura write SetAltura;
    function CalcularArea: Double;
  end;

implementation

{ TFormaGeometrica }

function TFormaGeometrica.CalcularArea: Double;
begin
  if Raio > 0 then
    Exit(Raio * Raio * 3.14);
  Result := Base * Altura;
end;

procedure TFormaGeometrica.SetAltura(const Value: Double);
begin
  FAltura := Value;
end;

procedure TFormaGeometrica.SetBase(const Value: Double);
begin
  FBase := Value;
end;

procedure TFormaGeometrica.SetRaio(const Value: Double);
begin
  FRaio := Value;
end;

end.
