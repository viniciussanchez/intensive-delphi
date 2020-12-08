program samples;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  Horse,
  Horse.Jhonson,
  JOSE.Core.JWT,
  JOSE.Core.Builder,
  System.SysUtils,
  System.JSON;

begin
  THorse.Use(Jhonson);

  THorse.Get('/login',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      LToken: TJWT;
      LCompactToken: string;
    begin
      LToken := TJWT.Create;
      try
        // Token claims
        LToken.Claims.Issuer := 'Fiorilli S/C Software';
        LToken.Claims.Subject := '15846';
        LToken.Claims.Expiration := Now + 1;

        // Outros claims
        LToken.Claims.SetClaimOfType<string>('nome', 'Vinicius Sanchez');
        LToken.Claims.SetClaimOfType<boolean>('mvp', True);

        // Signing and Compact format creation
        LCompactToken := TJOSE.SHA256CompactToken('my_key', LToken);
        Res.Send<TJSONObject>(TJSONObject.Create(TJSONPair.Create('access-token', LCompactToken)));
      finally
        LToken.Free;
      end;
    end);

  THorse.Listen(9000);
end.
