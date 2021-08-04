unit LSP.Certo.Pinguin;

interface

uses LSP.Certo.Ave;

type
  TPinguin = class
  private
    FAve: TAve;
  public
    constructor Create;
    procedure Bicar;
    destructor Destroy; override;
  end;

implementation

{ TPinguin }

procedure TPinguin.Bicar;
begin
  FAve.Bicar;
end;

constructor TPinguin.Create;
begin
  FAve := TAve.Create;
end;

destructor TPinguin.Destroy;
begin
  FAve.Free;
  inherited;
end;

end.
