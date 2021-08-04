program LSP;

uses
  Vcl.Forms,
  LSP.Main in 'src\LSP.Main.pas' {FrmExemploLSP},
  LSP.Certo.Ave in 'src\certo\LSP.Certo.Ave.pas',
  LSP.Certo.Pinguin in 'src\certo\LSP.Certo.Pinguin.pas',
  LSP.Certo.Tucano in 'src\certo\LSP.Certo.Tucano.pas',
  LSP.Errado.Ave in 'src\errado\LSP.Errado.Ave.pas',
  LSP.Errado.Pinguin in 'src\errado\LSP.Errado.Pinguin.pas',
  LSP.Errado.Tucano in 'src\errado\LSP.Errado.Tucano.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmExemploLSP, FrmExemploLSP);
  Application.Run;
end.
