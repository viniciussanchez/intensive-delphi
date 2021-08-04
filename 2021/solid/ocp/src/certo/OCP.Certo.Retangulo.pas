unit OCP.Certo.Retangulo;

interface

uses OCP.Certo.FormaGeometrica.Intf;

type
  TRetangulo = class(TInterfacedObject, IFormaGeometrica)
  private
    FBase: Double;
    FAltura: Double;
    function CalcularArea: Double;
  public
    constructor Create(const ABase, AAltura: Double);
  end;

implementation

{ TRetangulo }

function TRetangulo.CalcularArea: Double;
begin
  Result := FBase * FAltura;
end;

constructor TRetangulo.Create(const ABase, AAltura: Double);
begin
  FBase := ABase;
  FAltura := AAltura;
end;

end.
