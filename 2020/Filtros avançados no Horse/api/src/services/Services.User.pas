unit Services.User;

interface

uses System.SysUtils, System.Classes, Providers.Connection, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Phys.PGDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Phys.PG, System.JSON, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  System.Generics.Collections;

type
  TServiceUser = class(TProviderConnection)
    qryPesquisa: TFDQuery;
    qryRecordCount: TFDQuery;
    qryPesquisaid: TFDAutoIncField;
    qryPesquisafirst_name: TStringField;
    qryPesquisalast_name: TStringField;
    qryPesquisaemail: TStringField;
    qryPesquisacountry: TStringField;
    qryPesquisastate: TStringField;
    qryRecordCountcount: TLargeintField;
  public
    function ListAll(const AQuery: TDictionary<string, string>): TFDQuery;
    function GetById(const AId: Int64): TFDQuery;
  end;

implementation

{$R *.dfm}

function TServiceUser.GetById(const AId: Int64): TFDQuery;
begin
  qryPesquisa.SQL.Add('and id = :id');
  qryPesquisa.ParamByName('id').AsLargeInt := AId;
  qryPesquisa.Open();
  Result := qryPesquisa;
end;

function TServiceUser.ListAll(const AQuery: TDictionary<string, string>): TFDQuery;
//var
//  I: Integer;
//  LOrdenacaoSplit, LOrdenacoes: TArray<string>;
//  LOrderBy: string;
begin
//  if AQuery.ContainsKey('since_id') then
//  begin
//    qryPesquisa.SQL.Add('and id >= :since_id');
//    qryRecordCount.SQL.Add('and id >= :since_id');
//    qryPesquisa.ParamByName('since_id').AsLargeInt := AQuery.Items['since_id'].ToInt64;
//    qryRecordCount.ParamByName('since_id').AsLargeInt := AQuery.Items['since_id'].ToInt64;
//  end;

//  if AQuery.ContainsKey('max_id') then
//  begin
//    qryPesquisa.SQL.Add('and id <= :max_id');
//    qryRecordCount.SQL.Add('and id <= :max_id');
//    qryPesquisa.ParamByName('max_id').AsLargeInt := AQuery.Items['max_id'].ToInt64;
//    qryRecordCount.ParamByName('max_id').AsLargeInt := AQuery.Items['max_id'].ToInt64;
//  end;

//  if AQuery.ContainsKey('country') then
//  begin
//    qryPesquisa.SQL.Add('and country = :country');
//    qryRecordCount.SQL.Add('and country = :country');
//    qryPesquisa.ParamByName('country').AsString := AQuery.Items['country'];
//    qryRecordCount.ParamByName('country').AsString := AQuery.Items['country'];
//  end;

//  if AQuery.ContainsKey('state') then
//  begin
//    qryPesquisa.SQL.Add('and state = :state');
//    qryRecordCount.SQL.Add('and state = :state');
//    qryPesquisa.ParamByName('state').AsString := AQuery.Items['state'];
//    qryRecordCount.ParamByName('state').AsString := AQuery.Items['state'];
//  end;

//  if AQuery.ContainsKey('sort') then
//  begin
//    LOrderBy := 'order by ';
//    LOrdenacoes := AQuery.Items['sort'].Split([',']);
//    for I := 0 to Pred(Length(LOrdenacoes)) do
//    begin
//      if I > 0 then
//        LOrderBy := LOrderBy + ', ';
//      LOrdenacaoSplit := LOrdenacoes[I].Split([':']);
//      LOrderBy := LOrderBy + LOrdenacaoSplit[0];
//      if Length(LOrdenacaoSplit) > 1 then
//        LOrderBy := LOrderBy + ' ' + LOrdenacaoSplit[1];
//    end;
//    qryPesquisa.SQL.Add(LOrderBy);
//  end;

//  if AQuery.ContainsKey('limit') then
//    qryPesquisa.FetchOptions.RecsMax := AQuery.Items['limit'].ToInteger
//  else
//    qryPesquisa.FetchOptions.RecsMax := 50;

//  if AQuery.ContainsKey('offset') then
//    qryPesquisa.FetchOptions.RecsSkip := AQuery.Items['offset'].ToInteger
//  else
//    qryPesquisa.FetchOptions.RecsSkip := -1;

//  qryRecordCount.Open();

  qryPesquisa.Open();
  Result := qryPesquisa;
end;

end.
