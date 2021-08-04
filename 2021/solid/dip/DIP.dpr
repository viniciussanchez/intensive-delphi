program DIP;

uses
  Vcl.Forms,
  DIP.Main in 'src\DIP.Main.pas' {FrmExemploDIP},
  DIP.Errado.Computador in 'src\errado\DIP.Errado.Computador.pas',
  DIP.Errado.Computador.Botao in 'src\errado\DIP.Errado.Computador.Botao.pas',
  DIP.Errado.Celular in 'src\errado\DIP.Errado.Celular.pas',
  DIP.Errado.Celular.Botao in 'src\errado\DIP.Errado.Celular.Botao.pas',
  DIP.Certo.Dispositivo.Intf in 'src\certo\DIP.Certo.Dispositivo.Intf.pas',
  DIP.Certo.Botao.Intf in 'src\certo\DIP.Certo.Botao.Intf.pas',
  DIP.Certo.Dispositivo.Celular in 'src\certo\DIP.Certo.Dispositivo.Celular.pas',
  DIP.Certo.Dispositivo.Computador in 'src\certo\DIP.Certo.Dispositivo.Computador.pas',
  DIP.Certo.Botao in 'src\certo\DIP.Certo.Botao.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmExemploDIP, FrmExemploDIP);
  Application.Run;
end.
