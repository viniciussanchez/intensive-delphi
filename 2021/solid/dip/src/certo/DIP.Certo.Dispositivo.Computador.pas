unit DIP.Certo.Dispositivo.Computador;

interface

uses DIP.Certo.Dispositivo.Intf;

type
  TComputador = class(TInterfacedObject, IDispositivo)
  private
    FLigado: Boolean;
    function IsLigado: Boolean;
    procedure Ligar;
    procedure Desligar;
  public
    class function New: IDispositivo;
  end;

implementation

uses Vcl.Dialogs;

{ TComputador }

procedure TComputador.Desligar;
begin
  FLigado := False;
  ShowMessage('Computador desligado');
end;

function TComputador.IsLigado: Boolean;
begin
  Result := FLigado;
end;

procedure TComputador.Ligar;
begin
  FLigado := True;
  ShowMessage('Computador ligado');
end;

class function TComputador.New: IDispositivo;
begin
  Result := TComputador.Create;
end;

end.
