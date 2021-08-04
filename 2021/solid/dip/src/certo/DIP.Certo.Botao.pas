unit DIP.Certo.Botao;

interface

uses DIP.Certo.Botao.Intf, DIP.Certo.Dispositivo.Intf;

type
  TBotao = class(TInterfacedObject, IBotao)
  private
    FDispositivo: IDispositivo;
    procedure Acionar;
  public
    constructor Create(const ADispositivo: IDispositivo);
    class function New(const ADispositivo: IDispositivo): IBotao;
  end;

implementation

{ TBotao }

procedure TBotao.Acionar;
begin
  if FDispositivo.IsLigado then
    FDispositivo.Desligar
  else
    FDispositivo.Ligar;
end;

constructor TBotao.Create(const ADispositivo: IDispositivo);
begin
  FDispositivo := ADispositivo;
end;

class function TBotao.New(const ADispositivo: IDispositivo): IBotao;
begin
  Result := TBotao.Create(ADispositivo);
end;

end.
