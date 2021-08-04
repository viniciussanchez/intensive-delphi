unit ISP.Errado.Telefone.Comum;

interface

uses ISP.Errado.Telefone.Intf;

type
  TTelefoneComum = class(TInterfacedObject, ITelefone)
  private
    procedure Tocar;
    procedure TirarFoto;
    procedure Discar;
  end;

implementation

uses System.SysUtils;

{ TTelefoneComum }

procedure TTelefoneComum.Discar;
begin

end;

procedure TTelefoneComum.TirarFoto;
begin
  raise Exception.Create('Telefone comum não tira foto!');
end;

procedure TTelefoneComum.Tocar;
begin

end;

end.
