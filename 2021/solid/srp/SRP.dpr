program SRP;

uses
  Vcl.Forms,
  SRP.Main in 'src\SRP.Main.pas' {FrmExemploSRP},
  SRP.Certo.Boleto.Intf in 'src\certo\SRP.Certo.Boleto.Intf.pas',
  SRP.Certo.Boleto in 'src\certo\SRP.Certo.Boleto.pas',
  SRP.Certo.Email.Intf in 'src\certo\SRP.Certo.Email.Intf.pas',
  SRP.Certo.Email in 'src\certo\SRP.Certo.Email.pas',
  SRP.Errado.Boleto in 'src\errado\SRP.Errado.Boleto.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmExemploSRP, FrmExemploSRP);
  Application.Run;
end.
