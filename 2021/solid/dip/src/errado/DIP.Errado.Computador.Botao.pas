unit DIP.Errado.Computador.Botao;

interface

uses DIP.Errado.Computador;

type
  TBotaoComputador = class
  private
    FComputador: TComputador;
  public
    constructor Create;
    procedure Acionar;
    destructor Destroy; override;
  end;

implementation

{ TBotaoComputador }

procedure TBotaoComputador.Acionar;
begin
  if FComputador.IsLigado then
    FComputador.Desligar
  else
    FComputador.Ligar;
end;

constructor TBotaoComputador.Create;
begin
  FComputador := TComputador.Create;
end;

destructor TBotaoComputador.Destroy;
begin
  FComputador.Free;
  inherited;
end;

end.
