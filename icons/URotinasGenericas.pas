unit URotinasGenericas;

interface

uses
  Windows, SysUtils, Forms, StdCtrls;

function MostraData: string;
function Confirma(const strTexto: string): Integer;
function StrZero(const strValor: string; const intComprimento: Integer): string;
procedure Mensagem(const strMensagem: string);

implementation

function MostraData: string;
const
  NomesDias: array [1..7] of string = ('Domingo - ', 'Segunda-feira - ', 'Terça-feira - ',
                                       'Quarta-feira - ', 'Quinta-feira - ', 'Sexta-feira - ', 'Sábado - ');
var
  dtHoje: TDateTime;
  intDiaSemana: Integer;
begin
  dtHoje := Date;
  intDiaSemana := DayOfWeek(dtHoje);
  Result := NomesDias[intDiaSemana] + DateToStr(dtHoje);
end;

function Confirma(const strTexto: string): Integer;
begin
  Result := Application.MessageBox(PChar(strTexto), 'CONFIRMAÇÃO', MB_YESNO +
    MB_DEFBUTTON2 + MB_ICONQUESTION);
end;

function StrZero(const strValor: string; const intComprimento: Integer): string;
begin
  Result := Format('%.*d', [intComprimento, StrToIntDef(strValor, 0)]);
end;

procedure Mensagem(const strMensagem: string);
begin
  Application.MessageBox(PChar(strMensagem), 'MENSAGEM', MB_OK +
    MB_ICONEXCLAMATION);
end;

end.
 
