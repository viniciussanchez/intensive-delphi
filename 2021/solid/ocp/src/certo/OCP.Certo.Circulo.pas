unit OCP.Certo.Circulo;

interface

uses OCP.Certo.FormaGeometrica.Intf;

type
  TCirculo = class(TInterfacedObject, IFormaGeometrica)
  private
    FRaio: Double;
    function CalcularArea: Double;
  public
    constructor Create(const ARaio: Double);
  end;

implementation

{ TCirculo }

function TCirculo.CalcularArea: Double;
begin
  Result := FRaio * FRaio * 3.14;
end;

constructor TCirculo.Create(const ARaio: Double);
begin
  FRaio := ARaio;
end;

end.
