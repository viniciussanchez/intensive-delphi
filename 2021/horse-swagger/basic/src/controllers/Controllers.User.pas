unit Controllers.User;

interface

procedure Registry;

implementation

uses Horse;

procedure ListarUsuarios(Req: THorseRequest; Res: THorseResponse; Next: TProc);
begin
  Res.Send('[{"id": 1, "name": "vinicius", "lastName": "sanchez", "lastUpdate": "2021-07-26T20:17:25.341Z"}]');
end;

procedure ObterUsuario(Req: THorseRequest; Res: THorseResponse; Next: TProc);
begin
  Res.Send('{"id": 1, "name": "vinicius", "lastName": "sanchez", "lastUpdate": "2021-07-26T20:17:25.341Z"}');
end;

procedure CadastrarUsuario(Req: THorseRequest; Res: THorseResponse; Next: TProc);
begin
  Res.Send(Req.Body).Status(THTTPStatus.Created);
end;

procedure AlterarUsuario(Req: THorseRequest; Res: THorseResponse; Next: TProc);
begin
  Res.Status(THTTPStatus.NoContent);
end;

procedure ExcluirUsuario(Req: THorseRequest; Res: THorseResponse; Next: TProc);
begin
  Res.Status(THTTPStatus.NoContent);
end;

procedure Registry;
begin
  THorse.Group.Prefix('v1')
    .Get('/users', ListarUsuarios)
    .Get('/users/:id', ObterUsuario)
    .Post('/users', CadastrarUsuario)
    .Put('/users/:id', AlterarUsuario)
    .Delete('/users/:id', ExcluirUsuario);
end;

end.
