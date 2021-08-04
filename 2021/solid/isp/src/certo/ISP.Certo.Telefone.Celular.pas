unit ISP.Certo.Telefone.Celular;

interface

uses ISP.Certo.Telefone.Celular.Intf, ISP.Certo.Telefone.Intf;

type
  TTelefoneCelular = class(TInterfacedObject, ITelefone, ITelefoneCelular)
  private
    procedure Tocar;
    procedure TirarFoto;
    procedure Discar;
  end;

implementation

{ TTelefoneCelular }

procedure TTelefoneCelular.Discar;
begin

end;

procedure TTelefoneCelular.TirarFoto;
begin

end;

procedure TTelefoneCelular.Tocar;
begin

end;

end.
