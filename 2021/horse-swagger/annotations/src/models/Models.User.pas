unit Models.User;

interface

uses GBSwagger.Model.Attributes;

type
  TUser = class
  private
    Fid: Int64;
    Fname: string;
    FlastName: string;
    FlastUpdate: TDateTime;
  public
    [SwagProp('Código', True)]
    property id: Int64 read Fid write Fid;
    [SwagProp('Nome', True)]
    property name: String read Fname write Fname;
    [SwagString(100)]
    [SwagProp('Sobrenome', False)]
    property lastName: string read FlastName write FlastName;
    [SwagIgnore]
    property lastUpdate: TDateTime read FlastUpdate write FlastUpdate;
  end;

implementation

end.
