program Samples;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  Horse, System.Sysutils;

begin
  THorse.Get('/ping',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    begin
      Res.Send('pong ' + GetEnvironmentVariable('PONG'));
    end);

  THorse.Listen(9000);
end.
