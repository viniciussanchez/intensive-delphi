unit Controllers.User;

interface

uses Horse, Services.User, DataSet.Serialize, System.JSON, System.SysUtils, Data.DB;

procedure Registry;

implementation

procedure DoListUsers(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  LUsers: TJSONArray;
  LService: TServiceUser;
//  LContent: TJSONObject;
begin
  LService := TServiceUser.Create;
  try
    LUsers := LService.ListAll(Req.Query).ToJSONArray();
    Res.Send<TJSONArray>(LUsers);

//    LContent := TJSONObject.Create;
//    LContent.AddPair('data', LUsers);
//    LContent.AddPair('records', TJSONNumber.Create(LService.qryRecordCountcount.AsLargeInt));
//    Res.Send<TJSONObject>(LContent);
  finally
    LService.Free;
  end;
end;

procedure DoGetUser(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  LId: Int64;
  LService: TServiceUser;
begin
  LService := TServiceUser.Create;
  try
    LId := Req.Params['id'].ToInt64;
    if LService.GetById(LId).IsEmpty then
      raise EHorseException.Create(THTTPStatus.NotFound, 'Not found');
    Res.Send<TJSONObject>(LService.qryPesquisa.ToJSONObject());
  finally
    LService.Free;
  end;
end;

procedure Registry;
begin
  THorse.Get('/users', DoListUsers);
  THorse.Get('/users/:id', DoGetUser);
//THorse.Post('/users', DoPostUser);
//THorse.Put('/users/:id', DoPutUser);
//THorse.Delete('/users/:id', DoDeleteUser);
end;

end.
