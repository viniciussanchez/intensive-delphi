unit DIP.Errado.Celular;

interface

type
  TCelular = class
  private
    FLigado: Boolean;
  public
    function IsLigado: Boolean;
    procedure Ligar;
    procedure Desligar;
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

end.
