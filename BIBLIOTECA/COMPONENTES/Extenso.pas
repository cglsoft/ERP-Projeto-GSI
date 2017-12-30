(********************************************************************************)
(* TExtenso                                                                     *)
(*                                                                              *)
(* Este é um componente visual para ser usado em qualquer versão de Delhi.      *)
(*                                                                              *)
(* Copyright © 1998 by Leonardo Augusto Rezende Santos                          *)
(* e-mail: laug@ufu.br                                                          *)
(*                                                                              *)
(* Este componente é freeware e pode ser livremente distribuído em aplicações   *)
(* comerciais ou particulares.                                                  *)
(* O Código Fonte pode ser livremente usado, modificado ou distribuído.         *)
(* O autor não se responsabiliza por nenhum dano, direto ou indireto causado    *)
(* este componente.                                                             *)
(*                                                                              *)
(* Comentários e sugestões serão muito bem vindas.                              *)
(********************************************************************************)

unit Extenso;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs;

type
  TExtenso = class(TComponent)
  private
    { Private declarations }
    Unidade  : array[0..9] of string[7];
    Dezena   : array[0..9] of string[10];
    Centena  : array[0..9] of string[13];
    FMoeda,
    FPluralMoeda,
    FFracao,
    FPluralFracao,
    FNumero,
    FExtenso : string;
    procedure SetNumero(Value : string);
    procedure SetMoeda(Value : string);
    procedure SetPluralMoeda(Value : string);
    procedure SetFracao(Value : string);
    procedure SetPluralFracao(Value : string);
    function Ext1(S : string) : string;
    function ExtUnidade(S : string) : string;
    function ExtDezena(S : string) : string;
    function Ext2(S : string) : string;
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AOwner : TComponent); override;
  published
    { Published declarations }
    property Moeda : string read FMoeda write SetMoeda;
    property PluralMoeda : string read FPluralMoeda write SetPluralMoeda;
    property Fracao : string read FFracao write SetFracao;
    property PluralFracao : string read FPluralFracao write SetPluralFracao;
    property Numero : string read FNumero write SetNumero;
    property Extenso : string read FExtenso write FExtenso;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('CGLSOFT', [TExtenso]);
end;

constructor TExtenso.Create(AOwner : TComponent);
begin
  inherited Create(AOwner);
  {Unidades}
  Unidade[0] := '';
  Unidade[1] := 'um ';
  Unidade[2] := 'dois ';
  Unidade[3] := 'três ';
  Unidade[4] := 'quatro ';
  Unidade[5] := 'cinco ';
  Unidade[6] := 'seis ';
  Unidade[7] := 'sete ';
  Unidade[8] := 'oito ';
  Unidade[9] := 'nove ';
  {Dezenas}
  Dezena[0] := '';
  Dezena[1] := 'dez ';
  Dezena[2] := 'vinte ';
  Dezena[3] := 'trinta ';
  Dezena[4] := 'quarenta ';
  Dezena[5] := 'cinqüenta ';
  Dezena[6] := 'sessenta ';
  Dezena[7] := 'setenta ';
  Dezena[8] := 'oitenta ';
  Dezena[9] := 'noventa ';
  {Centenas}
  Centena[0] := '';
  Centena[1] := 'cem ';
  Centena[2] := 'duzentos ';
  Centena[3] := 'trezentos ';
  Centena[4] := 'quatrocentos ';
  Centena[5] := 'quinhentos ';
  Centena[6] := 'seiscentos ';
  Centena[7] := 'setecentos ';
  Centena[8] := 'oitocentos ';
  Centena[9] := 'novecentos ';
  FNumero := '0,00';
  FMoeda := 'Real';
  FPluralMoeda := 'Reais';
  FFracao := 'centavo';
  FPluralFracao := 'centavos';
end;

procedure TExtenso.SetNumero(Value : string);
var Inteiro,
    Centavo : string;
    Len,
    n : Integer;  {Nº de Digitos }
begin
     Len := Length(Value);
     n := Pos(',', Value);
     {Formatando a Vírgula e os Centavos}
     if n = 0
       then
         Value := Value + ',00'
       else
         if Len > n + 2
           then
             Delete(Value, n+3, Len-n+2)
           else
             if Len < n + 2
               then
                 Insert(Copy('00', 1, n + 2 - Len) , Value, n + 1);
     if Value = '0.00'
       then
         begin
           FExtenso := '';
           Exit;
         end;
     n := Pos(',', Value);
     Inteiro := Copy(Value, 1, n - 1);
     Centavo := Copy(Value, n + 1, 2);
     Len := Length(Inteiro);
     case Len of
       1 : FExtenso := Ext1(Inteiro);
       2 : FExtenso := Ext1(Inteiro);
       3 : FExtenso := Ext1(Inteiro);
       4 : FExtenso := Ext2(Inteiro);
       5 : FExtenso := Ext2(Inteiro);
       6 : FExtenso := Ext2(Inteiro);
       else
         FExtenso := Value;
     end;
     if (StrToInt(Inteiro) <> 1) and (StrToInt(Inteiro) <> 0)
       then FExtenso := FExtenso + FPluralMoeda + ' '
       else FExtenso := FExtenso + FMoeda + ' ';
     if Centavo <> '00'
       then
         if StrToInt(Inteiro) <> 0
           then
             begin
               if Centavo <> '01'
                 then FExtenso := FExtenso + 'e ' + Ext1(Centavo) + FPluralFracao
                 else FExtenso := FExtenso + 'e um ' + FFracao
             end
           else
             begin
               if Centavo <> '01'
                 then FExtenso := Ext1(Centavo) + FPluralFracao
                 else FExtenso := 'um ' + FFracao
             end;
     FNumero := Value;
end;

procedure TExtenso.SetMoeda(Value : string);
begin
 FMoeda := Value;
 SetNumero(FNumero);
end;

procedure TExtenso.SetPluralMoeda(Value : string);
begin
     FPluralMoeda := Value;
     SetNumero(FNumero);
end;

procedure TExtenso.SetFracao(Value : string);
begin
     FFracao := Value;
     SetNumero(FNumero);
end;

procedure TExtenso.SetPluralFracao(Value : string);
begin
     FPluralFracao := Value;
     SetNumero(FNumero);
end;

function TExtenso.Ext1(S : string) : string;
begin
     case Length(S) of
       1 : Result := ExtUnidade(S[1]);
       2 : Result := ExtDezena(S[1] + S[2]);
       3 : if S[2] + S[3] = '00'
             then Result := Centena[StrToInt(S[1])]
             else
               if S[1] = '1'
                 then Result := 'cento e ' + ExtDezena(S[2] + S[3])
                 else Result := Centena[StrToInt(S[1])] + 'e ' + ExtDezena(S[2] + S[3]);
     end;
end;

function TExtenso.ExtUnidade(S : string) : string;
begin
     Result := Unidade[StrToInt(S[1])];
end;

function TExtenso.ExtDezena(S : string) : string;
begin
     if S[1] <> '1'
       then
         {Dezena <> 1}
         if S[2] <> '0'
           then
             if S[1] <> '0'
               then Result := Dezena[StrToInt(S[1])] + 'e ' + Unidade[StrToInt(S[2])]
               else Result := Unidade[StrToInt(S[2])]
           else Result := Dezena[StrToInt(S[1])]
       else
         {Dezena = 1}
         case S[2] of
           '0' : Result := 'dez ';
           '1' : Result := 'onze ';
           '2' : Result := 'doze ';
           '3' : Result := 'treze ';
           '4' : Result := 'quatorze ';
           '5' : Result := 'quinze ';
           '6' : Result := 'dezesseis ';
           '7' : Result := 'dezessete ';
           '8' : Result := 'dezoito ';
           '9' : Result := 'dezenove ';
         end;
end;

function TExtenso.Ext2(S : string) : string;
begin
     case Length(S) of
       4 : if Copy(S,1,1) <> '0'
             then Result := Ext1(Copy(S,1,1)) + 'mil ' + Ext1(Copy(S,2,3))
             else Result := Ext1(Copy(S,2,3));
       5 : if Copy(S,1,2) <> '00'
             then Result := Ext1(Copy(S,1,2)) + 'mil ' + Ext1(Copy(S,3,3))
             else Result := Ext1(Copy(S,3,3));
       6 : if Copy(S,1,3) <> '000'
             then Result := Ext1(Copy(S,1,3)) + 'mil ' + Ext1(Copy(S,4,3))
             else Result := Ext1(Copy(S,4,3));
     end;
end;

end.
