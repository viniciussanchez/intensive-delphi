unit DIP.Certo.Dispositivo.Celular;

interface

uses DIP.Certo.Dispositivo.Intf;

type
  TCelular = class(TInterfacedObject, IDispositivo)
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

{ TCelular }

procedure TCelular.Desligar;
begin
  FLigado := False;
  ShowMessage('Celular desligado');
end;

function TCelular.IsLigado: Boolean;
begin
  Result := FLigado;
end;

procedure TCelular.Ligar;
begin
  FLigado := True;
  ShowMessage('Celular ligado');
end;

class function TCelular.New: IDispositivo;
begin
  Result := TCelular.Create;
end;

end.
