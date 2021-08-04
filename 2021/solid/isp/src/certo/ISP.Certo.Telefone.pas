unit ISP.Certo.Telefone;

interface

uses ISP.Certo.Telefone.Intf;

type
  TTelefone = class(TInterfacedObject, ITelefone)
  private
    procedure Tocar;
    procedure Discar;
  end;

implementation

{ TTelefone }

procedure TTelefone.Discar;
begin

end;

procedure TTelefone.Tocar;
begin

end;

end.
