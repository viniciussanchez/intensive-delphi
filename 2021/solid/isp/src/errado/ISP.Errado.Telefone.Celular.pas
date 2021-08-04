unit ISP.Errado.Telefone.Celular;

interface

uses ISP.Errado.Telefone.Intf;

type
  TTelefoneCelular = class(TInterfacedObject, ITelefone)
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
