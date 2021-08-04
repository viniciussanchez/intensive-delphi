unit SRP.Certo.Email;

interface

uses SRP.Certo.Email.Intf;

type
  TEmail = class(TInterfacedObject, IEmail)
  private
    procedure Enviar;
  end;

implementation

{ TEmail }

procedure TEmail.Enviar;
begin

end;

end.
