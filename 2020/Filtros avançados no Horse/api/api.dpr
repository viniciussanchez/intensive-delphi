program api;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  Horse,
  Horse.Jhonson,
  Horse.HandleException,
  System.SysUtils,
  Controllers.User in 'src\controllers\Controllers.User.pas',
  Providers.Connection in 'src\providers\Providers.Connection.pas' {ProviderConnection: TDataModule},
  Services.User in 'src\services\Services.User.pas' {ServiceUser: TDataModule};

begin
  THorse
    .Use(Jhonson)
    .Use(HandleException);

  Controllers.User.Registry;

  THorse.Listen(9000);
end.
