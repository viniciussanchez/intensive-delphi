program OCP;

uses
  Vcl.Forms,
  OCP.Main in 'src\OCP.Main.pas' {FrmExemploOCP},
  OCP.Certo.Circulo in 'src\certo\OCP.Certo.Circulo.pas',
  OCP.Certo.FormaGeometrica.Intf in 'src\certo\OCP.Certo.FormaGeometrica.Intf.pas',
  OCP.Certo.Retangulo in 'src\certo\OCP.Certo.Retangulo.pas',
  OCP.Errado.FormaGeometrica in 'src\errado\OCP.Errado.FormaGeometrica.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmExemploOCP, FrmExemploOCP);
  Application.Run;
end.
