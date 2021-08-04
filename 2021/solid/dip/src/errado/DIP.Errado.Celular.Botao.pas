unit DIP.Errado.Celular.Botao;

interface

uses DIP.Errado.Celular;

type
  TBotaoCelular = class
  private
    FCelular: TCelular;
  public
    constructor Create;
    procedure Acionar;
    destructor Destroy; override;
  end;

implementation

{ TBotaoCelular }

procedure TBotaoCelular.Acionar;
begin
  if FCelular.IsLigado then
    FCelular.Desligar
  else
    FCelular.Ligar;
end;

constructor TBotaoCelular.Create;
begin
  FCelular := TCelular.Create;
end;

destructor TBotaoCelular.Destroy;
begin
  FCelular.Free;
  inherited;
end;

end.
