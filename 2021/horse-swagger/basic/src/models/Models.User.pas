unit Models.User;

interface

type
  TUser = class
  private
    Fid: Double;
    Fname: String;
    FlastName: string;
    FlastUpdate: TDateTime;
  public
    property id: Double read Fid write Fid;
    property name: String read Fname write Fname;
    property lastName: string read FlastName write FlastName;
    property lastUpdate: TDateTime read FlastUpdate write FlastUpdate;
  end;

implementation

end.
