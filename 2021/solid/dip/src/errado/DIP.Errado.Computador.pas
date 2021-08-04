unit DIP.Errado.Computador;

interface

type
  TComputador = class
  private
    FLigado: Boolean;
  public
    function IsLigado: Boolean;
    procedure Ligar;
    procedure Desligar;
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

end.
