unit Controllers.User;

interface

uses Horse, GBSwagger.Path.Attributes, Models.User;

type
  [SwagPath('users', 'Usuários')]
  TUserController = class
  private
    FRequest: THorseRequest;
    FResponse: THorseResponse;
  public
    [SwagGET('Listar usuários')]
    [SwagParamQuery('id', 'Código', False, True)]
    [SwagParamQuery('name', 'Nome')]
    [SwagParamQuery('lastName', 'Sobrenome')]
    [SwagResponse(200, TUser, 'Lista de usuários', True)]
    procedure GetUsers;

    [SwagGET('{id}', 'Obter os dados de um usuário específico')]
    [SwagParamPath('id', 'Código', True)]
    [SwagResponse(200, TUser, 'Dados do usuário')]
    [SwagResponse(404)]
    procedure FindUser;

    [SwagPOST('Criar um novo usuário')]
    [SwagParamBody('Dados do usuário', TUser)]
    [SwagResponse(201, TUser)]
    [SwagResponse(400)]
    procedure InsertUser;

    [SwagPUT('{id}', 'Alterar os dados de um usuário específico')]
    [SwagParamPath('id', 'Código', True)]
    [SwagParamBody('Dados do usuário', TUser)]
    [SwagResponse(204)]
    [SwagResponse(400)]
    [SwagResponse(404)]
    procedure UpdateUser;

    [SwagDELETE('{id}', 'Excluir usuário')]
    [SwagParamPath('id', 'Código', True)]
    [SwagResponse(204)]
    [SwagResponse(400)]
    [SwagResponse(404)]
    procedure DeleteUser;

    constructor create(Req: THorseRequest; Res: THorseResponse);
    destructor Destroy; override;
  end;

implementation

{ TUserController }

constructor TUserController.create(Req: THorseRequest; Res: THorseResponse);
begin
  FRequest := Req;
  FResponse := Res;
  FResponse.ContentType('application/json');
end;

procedure TUserController.DeleteUser;
begin
  FResponse.Status(THTTPStatus.NoContent);
end;

destructor TUserController.Destroy;
begin

  inherited;
end;

procedure TUserController.UpdateUser;
begin
  FResponse.Status(THTTPStatus.NoContent);
end;

procedure TUserController.FindUser;
begin
  FResponse.Send('{"id": 1, "name": "vinicius", "lastName": "sanchez"}');
end;

procedure TUserController.GetUsers;
begin
  FResponse.Send('[{"id": 1, "name": "vinicius", "lastName": "sanchez"}]');
end;

procedure TUserController.InsertUser;
begin
  FResponse.Send(FRequest.Body).Status(THTTPStatus.Created);
end;

end.
