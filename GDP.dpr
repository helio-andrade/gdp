program GDP;

uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {formPrincipal},
  URotinasGenericas in 'icons\URotinasGenericas.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TformPrincipal, formPrincipal);
  Application.Run;
end.
