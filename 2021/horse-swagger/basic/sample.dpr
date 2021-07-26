program sample;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  Horse,
  Horse.GBSwagger,
  System.SysUtils,
  Models.User in 'src\models\Models.User.pas',
  Controllers.User in 'src\controllers\Controllers.User.pas';

begin
  THorse.Use(HorseSwagger);

  Controllers.User.Registry;

  Swagger
    .Info
      .Title('Minha API')
      .Description('Documenta��o da minha API')
      .Contact
        .Name('Vinicius Sanchez')
        .Email('viniciuss.sanchez@gmail.com')
        .URL('https://www.fiorilli.com.br')
      .&End
    .&End
    .BasePath('v1')
    .Path('users')
      .Tag('Usu�rios')
      .GET('Listar usu�rios')
        .AddParamQuery('id', 'C�digo').&End
        .AddParamQuery('name', 'Nome').&End
        .AddParamQuery('lastName', 'Sobrenome').&End
        .AddResponse(200, 'Lista de usu�rios').Schema(TUser).IsArray(True).&End
      .&End
      .POST('Criar um novo usu�rio')
        .AddParamBody('Dados do usu�rio').Required(True).Schema(TUser).&End
        .AddResponse(201).Schema(TUser).&End
        .AddResponse(400).&End
      .&End
    .&End
    .Path('users/{id}')
      .Tag('Usu�rios')
      .GET('Obter os dados de um usu�rio espec�fico')
        .AddParamPath('id', 'C�digo').&End
        .AddResponse(200, 'Dados do usu�rio').Schema(TUser).&End
        .AddResponse(404).&End
      .&End
      .PUT('Alterar os dados de um usu�rio espec�fico')
        .AddParamPath('id', 'C�digo').&End
        .AddParamBody('Dados do usu�rio').Required(True).Schema(TUser).&End
        .AddResponse(204).&End
        .AddResponse(400).&End
        .AddResponse(404).&End
      .&End
      .DELETE('Excluir usu�rio')
        .AddParamPath('id', 'C�digo').&End
        .AddResponse(204).&End
        .AddResponse(400).&End
        .AddResponse(404).&End
      .&End
    .&End
  .&End;

  THorse.Listen(9000);
end.
