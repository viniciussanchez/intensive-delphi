unit LSP.Errado.Pinguin;

interface

uses LSP.Errado.Ave;

type
  TPinguin = class(TAve)
  public
    procedure Voar; override;
  end;

implementation

uses System.SysUtils;

{ TPinguin }

procedure TPinguin.Voar;
begin
  raise Exception.Create('Pinguin não sabe voar');
end;

end.
