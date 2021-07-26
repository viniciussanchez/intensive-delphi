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
      .Description('Documentação da minha API')
      .Contact
        .Name('Vinicius Sanchez')
        .Email('viniciuss.sanchez@gmail.com')
        .URL('https://www.fiorilli.com.br')
      .&End
    .&End
    .BasePath('v1')
    .Path('users')
      .Tag('Usuários')
      .GET('Listar usuários')
        .AddParamQuery('id', 'Código').&End
        .AddParamQuery('name', 'Nome').&End
        .AddParamQuery('lastName', 'Sobrenome').&End
        .AddResponse(200, 'Lista de usuários').Schema(TUser).IsArray(True).&End
      .&End
      .POST('Criar um novo usuário')
        .AddParamBody('Dados do usuário').Required(True).Schema(TUser).&End
        .AddResponse(201).Schema(TUser).&End
        .AddResponse(400).&End
      .&End
    .&End
    .Path('users/{id}')
      .Tag('Usuários')
      .GET('Obter os dados de um usuário específico')
        .AddParamPath('id', 'Código').&End
        .AddResponse(200, 'Dados do usuário').Schema(TUser).&End
        .AddResponse(404).&End
      .&End
      .PUT('Alterar os dados de um usuário específico')
        .AddParamPath('id', 'Código').&End
        .AddParamBody('Dados do usuário').Required(True).Schema(TUser).&End
        .AddResponse(204).&End
        .AddResponse(400).&End
        .AddResponse(404).&End
      .&End
      .DELETE('Excluir usuário')
        .AddParamPath('id', 'Código').&End
        .AddResponse(204).&End
        .AddResponse(400).&End
        .AddResponse(404).&End
      .&End
    .&End
  .&End;

  THorse.Listen(9000);
end.
