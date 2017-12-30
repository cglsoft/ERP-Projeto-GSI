unit u_Formatacoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls,DBClient, Mask, Grids,
  DBGrids, DB, MaskUtils;


 function PadL(Str: String; n : integer):String; overload;             {alinhamento para esquerda e completa com espaços a direita}
 function PadL(Str: String; n : integer; Add: Char): String; overload; {alinhamento para esquerda e completa com 'Char' a direita}
 function StrToStrZero(Str: String; n:integer):String;                 {alinhamento a direita e completa com zeros a esquerda}
 function Repl(Str: String; n : integer):String;                       {replica um caracter 'n' vezes}
 function PadR(Str:String; n : integer):String; overload;              {alinhamento para direita e compelta com espaços a esquerda}
 function PadR(Str:String; n : integer; Add: Char):String; overload;   {Alinhamento para direita e compelta com 'Char' a esquerda}
 function SubstituiString(Texto, Old, New: String): String;
 function NrOnly(Str:String; NewStr : String = '.'):String;                                   {Retira ponto e virgula}
 function TrocaTxt(Str:String; Str1, Str2: Char): String;              {Troca Char por Char}
 function TiraCharEsp(Str:String):String;                              {Retira caracteres especiais (acentuados)}
 function UpperLower(Str: String):String;                              {Deixa 1o. caracter de cada Palavra do nome maiusculo e o restante minusculo}

const
    // Mascaras usadas em todo fonte
    Mask_DDMMYYYY = 'DDMMYYYY';
    Mask_YYYYMMDD = 'YYYYMMDD';
    Mask_DDMMYY   = 'DDMMYY';
    Mask_PtFlut   = '0.00';
    Mask_PtFlut3  = '0.000';
    Mask_PtFlut4  = '0.0000';
    Mask_PtFlut5  = '0.00000';
    Mask_PtFlut6  = '0.000000';    
    Mask_Decimal  = '000000';
    Mask_Dolar    = '######';
    Mask_CpoMaior = '##\.###\.###\/####\-##;0;';
    Mask_CpoMenor = '###\.###\.###\-##;0;';

implementation

function PadL(Str: String; n : integer):String; overload;
begin
 Result := '';
 if Str <> '' then
    begin
     Str := Trim(Str);
     Result := Format('%-'+ intToStr(n)+ '.'+ intToStr(n) + 's', [Str]);
    end; 
end;

function PadL(Str: String; n : integer; Add: Char): String; overload;
var TamOld, i : integer;
    ValNew : String;
begin
 ValNew := Trim(Str);
 TamOld := Length(ValNew);
 for i := (TamOld+1) to n do
     ValNew := ValNew + add;
 Result := ValNew;
end;

function StrToStrZero(Str: String; n:integer):String;
var
 i , tamanho: integer;
 aux, Compl: String;
begin
 Compl    := '';
 Aux      := Str;
 Tamanho  := Length(Str);
 {Preenche Complemento com Zeros}
 for i := 1 to n-tamanho do
     Compl := Compl + '0';
     {String = Zeros + String}
     aux := Compl + aux;
     Result := aux;
end;

function Repl(Str: String; n : integer):String;
var i : integer;
begin
 Result := '';
 for i := 1 to n do
     Result := Result + Str;
end;

function PadR(Str:String; n : integer):String; overload;
begin
 Str    := Trim(Str);
 Result := Format('%'+ intToStr(n) + '.' + intToStr(n) + 's', [Str]);
end;

function PadR(Str:String; n : integer; Add: Char):String; overload;
var TamOld, i : integer;
    ValNew, Compl : String;
begin
 Compl := '';
 ValNew := Trim(Str);
 TamOld := Length(ValNew);
 for i := (TamOld+1) to n do
     Compl := Compl + add;
 Result := Compl + ValNew;
end;

{function NrOnly(Str:String):String;
const
 DSPonto = '.';
 DSVirgula = ';';
 DSBarra = '-';
var
 i, count: integer;
 StrNew  : String;
begin
 StrNew := Str;
 Count := Length(Str);
 for i := 1 to Count do
   if (Pos(DSPonto,   StrNew[i])>0) or
      (Pos(DSVirgula, StrNew[i])>0) or
      (Pos(DSBarra,   StrNew[i])>0) then
      Delete(StrNew, i, 1);
 Result := StrNew;
end;}

function TrocaTxt(Str:String; Str1, Str2: Char): String;
var
 i, count: integer;
 StrNew: String;
begin
 StrNew := Str;
 Count := Length(Str);
 for i := 1 to Count do
    if (Pos(Str1, StrNew[i])>0) then
       StrNew[i] := Str2;
 Result := StrNew;
end;

function TiraCharEsp(Str:String):String;
const ComAcento = 'àâêôûãõáéíóúçüÀÂÊÔÛÃÕÁÉÍÓÚÇÜ';
      SemAcento = 'aaeouaoaeioucuAAEOUAOAEIOUCU';
var
 x, Count: Integer;
 StrNew: String;
begin
 Count  := Length(Trim(Str));
 StrNew := Trim(Str);
 for x := 1 to Count do
   if Pos(StrNew[x], ComAcento)>0 then
      StrNew[x] := SemAcento[Pos(StrNew[x], ComAcento)];
 Result := StrNew;
end;

function UpperLower(Str: String):String;
const
 Prep = 'de_dos_da';
var OldStr, NewStr, Palavra: String;
    Count, i : integer;
begin
 OldStr  :=  TrimLeft(Str)+ ' ';
 Count   := Length(OldStr)+1;
 NewStr  := '';
 Palavra := '';
 for i := 1 to Count do
 begin
  Palavra := Palavra + OldStr[i];
  if (OldStr[i] = ' ') then
  begin
   if (Pos(Trim(Palavra), Prep)= 0 ) then
      NewStr := NewStr + AnsiUpperCase( Copy(Palavra,1,1)) +
               AnsiLowerCase(Copy(Palavra, 2, Length(Palavra)))
   else
    NewStr := NewStr + Palavra;
   Palavra := '';
  end;
 end;
 Result := Copy( NewStr,1 , Length(NewStr)-1);
end;

function SubstituiString(Texto, Old, New: String): String;
var I : Integer;
begin
 while ( Pos( Old, Texto ) > 0 ) do
 begin
  i := Pos( Old, Texto );
  Delete( Texto, i, 1 );
  Insert( New, Texto, i );
 end;
 Result := Texto;
end;

function NrOnly(Str:String;NewStr : String = '.'):String;
begin
 Result := SubstituiString(Str,',',NewStr)
end;


end.
