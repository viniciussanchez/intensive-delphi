unit DIP.Certo.Dispositivo.Intf;

interface

type
  IDispositivo = interface
    ['{20F85CB4-4AA5-4761-BA8C-C97AFEBB4C58}']
    function IsLigado: Boolean;
    procedure Ligar;
    procedure Desligar;
  end;

implementation

end.
