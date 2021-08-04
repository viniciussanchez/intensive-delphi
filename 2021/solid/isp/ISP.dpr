program ISP;

uses
  Vcl.Forms,
  ISP.Main in 'src\ISP.Main.pas' {FrmExemploISP},
  ISP.Errado.Telefone.Celular in 'src\errado\ISP.Errado.Telefone.Celular.pas',
  ISP.Errado.Telefone.Comum in 'src\errado\ISP.Errado.Telefone.Comum.pas',
  ISP.Errado.Telefone.Intf in 'src\errado\ISP.Errado.Telefone.Intf.pas',
  ISP.Certo.Telefone.Celular.Intf in 'src\certo\ISP.Certo.Telefone.Celular.Intf.pas',
  ISP.Certo.Telefone.Celular in 'src\certo\ISP.Certo.Telefone.Celular.pas',
  ISP.Certo.Telefone.Intf in 'src\certo\ISP.Certo.Telefone.Intf.pas',
  ISP.Certo.Telefone in 'src\certo\ISP.Certo.Telefone.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmExemploISP, FrmExemploISP);
  Application.Run;
end.
