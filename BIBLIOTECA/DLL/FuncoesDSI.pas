unit FuncoesDsi;

interface

uses Windows, Classes, SysUtils, WinSock, Variants, MaskUtils, DB, Printers,
 DateUtils, Controls, WinSpool, Registry, Messages, ActiveX, SHDocVw, Forms,
 CDO_TLB, ADODB_TLB, Dialogs, StdCtrls, IdGlobal, IdHash, IdHashMessageDigest;


  { Delphi pode usar também a API do Windows Sleep.
    Há porém uma diferença: Delay permite que que o programa continue a
    processar as mensagens do Windows (mouse, teclado, etc). }
  procedure Delay(MSec: Cardinal);

  { Network API Funcitions }
  function LogUser:string;
  function GetMachineIP: string;
  function GetMachineHost: string;

  { Cryptografia de String e Arquivo }
  function EnDeCrypt( const Value : String ) : String;
  function Encrypt( const S: String ): String;
  function Decrypt( const S: String ): String;
  function Hash5CryptyString( S : String ) : String;

  { Ole Conversions }
  procedure VariantToStringlist(const Data: OleVariant; aStrlist: TStrings);
  function  StringlistToVariant(aStrlist: TStrings): OleVariant;
  procedure VariantToStream(const Data: OleVariant; Stream: TStream);
  function  StreamToVariant(Stream: TStream): OleVariant;

  function MakeStr(const Arg: TVarRec): string;
  function GetValue(Field: TField): string;
  function RetornarParamType( FieldType : String ) : TFieldType;

  { Misc }
  function CtrlDown : Boolean;
  function ShiftDown : Boolean;
  function AltDown : Boolean;

  { Funcoes de conversão }
  function TransfNum( Txt : String ) : String;
  procedure RemoveString( var Texto : String; S : String );
  function SubstituiString( Texto : String; Old, New : String ) : String;
  function DeletarString( Texto, txtDel : String ) : String;
  function ReplaceString( Texto, txtDel, NewTexto : String ) : String;
  function StrZero(Num : Real ; Zeros,Deci: integer): string;
  function PreencheString( Text : String; Tamanho : Integer ) : String;
  function RemoverAcentos( txt : string ) : string;
  function RemoverAcentosII( txt : string ) : string;

  { Funções de CNPJ, CNPF }
  Function CnPJ( Cnpj : String ) : Boolean;
  Function CnPF( Cpf : String ) : Boolean;
  function FormatCNPF_CNPJ_CCM( Text : String ) : String;
  function ValidCnPJ_CnPF( Text : String ) : Boolean;

  {Funções para tratamento de String}
  function Alltrim(Text : string) : string;
  procedure StringToSQLFile( Text : String; FileName : String = 'SQL.SQL' );
  procedure StringToFile( Text, Arquivo: String );
  function SearchAndReplace(sSrc, sLookFor, sReplaceWith : string) : string;

  {Funções de Hora}
  function DifHorasMinutos( HoraInicial, HoraFinal : Double ) : Real;
  function MinutosHoras( Hora : Double ) : Real;
  function MinutosHoraFmt( Minutos : Real ) : Double;

  function DiffDate(FirstDate, LastDate: TDateTime): Real;
  function FormatTime(Value: Real): String;
  function FloatToTime(Value: Real): Real;
  function HourToMinute(Value: Real): Real;

  { Calcula a diferenca das datas entre dois intervalos (Data horas) }
  function DiffTimeInterval( MIni,MFim,CIni,CFim : TTime ) : Real;

  { Concatena uma data com uma Hora }
  function ConcatDateTimeF(VDate: TDate; VTime: TDateTime): TDateTime;
  function FloatToMinutos( Horas : Real ) : Real;

  { Funcoes de Controle de Versão }
  procedure GetProjectVersionInfo(AVersionList: TStrings; AFileName: string = '');
  function GetBuildInfo(var V1, V2, V3, V4: Word; AFileName: string = ''): Boolean;
  function GetBuildInfoAsString(AFileName: string = ''): string;

  { Funcoes de Impressora }
  function Impressora( NomeImpressora: String; Bloq : Boolean = True ) : Integer;
//  function Impressora( NomeImpressora: String ): Integer;
  function PaperZebra: Integer;

  // Registro do Windows
  function LoadStringFromRegistry( sKey, sItem, sDefVal : string ) : string;
  procedure SaveStringToRegistry( sKey, sItem, sVal : string );
  procedure DeleteStringToRegistry( sKey, sItem : string );
  procedure LoadALLKeyFromRegistry( sKey : string; var aStrList : TStrings );


  // WEBNavigator ( Funcionalidades )
  procedure LoadHTMLStream(WebBrowser: TWebBrowser; Stream: TStream);
  procedure WB_SaveAs_HTML(WB:TWebBrowser; const FileName : string);
  procedure WB_SaveAs_MHT(WB: TWebBrowser; FileName: TFileName);
  procedure WBPrintNoDialog(WB: TWebBrowser) ;
  procedure WBPrintWithDialog(WB: TWebBrowser) ;
  procedure WBPrintPreview(WB: TWebBrowser) ;
  procedure WBPrintPageSetup(WB: TWebBrowser) ;

  // Messagens  Dialogos
  function MessageDialog( const Msg: string; DlgType: TMsgDlgType;
    Buttons: TMsgDlgButtons; Captions: array of string ): Integer;



  // Strings
  procedure AtivarArquivoTxt( var F : TextFile; NomeArq : String; LeGrava: Char = 'R' );
  function AddDel(Str : String; Size : Integer; Delimitador : Char = '|' ): String; overload;
  function AddDel(Str : String; Delimitador : Char = '|' ): String; overload;




  const Diretorio_EXPORT   = 'EXPORT\';
  const Diretorio_OFFLINE   = 'OFFLINE\';
        Direitorio_BACKUP   = 'BACKUP\';
        UnidadeDisquete     = 'A:\';

  const Registro_Principal = '\SOFTWARE\TOSHIBA\GSI';
  const Registro_Session   = 'HKEY_LOCAL_MACHINE';
  const GSI_1Hora          = 0.041666667;
  const GSI_6Hora          = 0.250000000;
  const GSI_8Hora          = 0.333333334;

implementation

// Utilizado para criptografia
var
 StartKey : Integer = 981; {Start default key}
 MultKey	 : Integer = 12674;	{Mult default key}
 AddKey	  : Integer = 35891;	{Add default key}

type
  PTransBuffer = ^TTransBuffer;
  TTransBuffer = array[1..13] of smallint;
  TPaperNames = array[ 0..99,0..63] of char;
  PTPaperNames = ^TPaperNames;

const
  CInfoStr : array[1..14] of string =
    ('FileVersion',
     'CompanyName',
     'FileDescription',
     'InternalName',
     'LegalCopyright',
     'LegalTradeMarks',
     'OriginalFileName',
     'ProductName',
     'ProductVersion',
     'Comments',
     'CurrentProgramVersion',
     'CurrentDatabaseVersion',
     'VersionDetails',
     'Analyst');

const Key_C1 = 89651;
      Key_C2 = 34135;
      KeyPassword = 23047;


procedure Delay(MSec: Cardinal);
var  Start: Cardinal;
begin
  Start := GetTickCount;
  repeat
    Application.ProcessMessages;
  until (GetTickCount - Start) >= MSec;
end;

function LogUser:String;
const Buff_Size = MAX_COMPUTERNAME_LENGTH + 1;
var lpBuffer : PChar;
    nSize : DWord;
begin
 nSize    := Buff_Size;
 lpBuffer := StrAlloc(Buff_Size);
 GetUserName(lpBuffer,nSize);

 Result   := UpperCase( String(lpBuffer) );
 StrDispose(lpBuffer);
end;

function GetMachineIP: string;
var wsaData : TWSAData;
Begin
     Result := '';
     WSAStartup(257, wsaData);
     Result := iNet_ntoa( PInAddr( GetHostByName( NIL )^.h_addr_list^ )^ );
     WSACleanup;
end;

function GetMachineHost: string;
var wsaData : TWSAData;
begin
 Result := '';
 WSAStartup(257, wsaData);
 Result := GetHostByName( NIL )^.h_name;
 WSACleanup;
end;

function EnDeCrypt( const Value : String ) : String;
var CharIndex : integer;
begin
 Result := Value;
 for CharIndex := 1 to Length(Value) do
     Result[CharIndex] := chr(not(ord(Value[CharIndex])));
end;

function Encrypt( const S: String ): String;
var  I: byte;
     Key : Int64;
begin
  Key := KeyPassword;
  Result := S;
  for I := 1 to Length(S) do
  begin
   Result[I] := char(byte(S[I]) xor (Key shr 8));
   Key := (byte(Result[I]) + Key) * Key_C1 + Key_C2;
  end;
end;

function Decrypt( const S: String ): String;
var I: byte;
   Key : Int64;
begin
 Key := KeyPassword;
 Result := S;
 for I := 1 to Length(S) do
 begin
  Result[I] := char(byte(S[I]) xor (Key shr 8));
  Key := (byte(S[I]) + Key) * Key_C1 + Key_C2;
 end;
end;

function Hash5CryptyString( S : String ) : String;
begin
  with TIdHashMessageDigest5.Create do
  try
//cgl      Result := TIdHash128.AsHex(HashValue( S ));
  finally
      Free;
  end;
end;

procedure VariantToStream(const Data: OleVariant; Stream: TStream);
var p: Pointer;
begin
 p := VarArrayLock(Data);
 try
   Stream.Write(p^, VarArrayHighBound(Data,1) + 1);
 finally
   VarArrayUnlock(Data);
 end;
end;

function StreamToVariant(Stream: TStream): OleVariant;
var p: Pointer;
begin
 Result := VarArrayCreate([0, Stream.Size - 1], varByte);
 p      := VarArrayLock(Result);
 try
   Stream.Position := 0;
   Stream.Read(p^, Stream.Size);
 finally
   VarArrayUnlock(Result);
 end;
end;

function StringlistToVariant(aStrlist: TStrings): OleVariant;
var hStream: TStream;
begin
 hStream := TMemoryStream.Create;
 try
  aStrList.SaveToStream(hStream);
  hStream.Seek(0, soFromBeginning);
  Result := StreamToVariant(hStream);
 finally
  hStream.Free;
 end;
end;

procedure VariantToStringlist(const Data: OleVariant; aStrlist: TStrings);
var hStream: TStream;
begin
 hStream := TMemoryStream.Create;
 try
  VariantToStream(Data, hStream);
  hStream.Seek(0, soFromBeginning);
  aStrList.LoadFromStream(hStream);
 finally
  hStream.Free;
 end;
end;

function MakeStr(const Arg: TVarRec): string;
const BoolChars: array[Boolean] of Char = ('F', 'T');
begin
 Result := '';
 case Arg.VType of
 vtInteger:    Result := Result + IntToStr(Arg.VInteger);
 vtBoolean:    Result := Result + BoolChars[Arg.VBoolean];
 vtChar:       Result := Result + Arg.VChar;
 vtExtended:   Result := Result + FloatToStr(Arg.VExtended^);
 vtString:     Result := Result + Arg.VString^;
 vtPChar:      Result := Result + Arg.VPChar;
 vtObject:     Result := Result + Arg.VObject.ClassName;
 vtClass:      Result := Result + Arg.VClass.ClassName;
 vtAnsiString: Result := Result + string(Arg.VAnsiString);
 vtCurrency:   Result := Result + CurrToStr(Arg.VCurrency^);
 vtVariant:    Result := Result + string(Arg.VVariant^);
 vtInt64:      Result := Result + IntToStr(Arg.VInt64^);
 end;
end;

function GetValue(Field: TField): string;
begin
 if Field.Value = null then
    Result := VarToStr(Field.OldValue)
 else
    Result := VarToStr(Field.Value);
end;

function RetornarParamType( FieldType : String ) : TFieldType;
begin
 if      FieldType = 'ftOraClob' then
         Result := ftOraClob
 else if FieldType = 'ftMemo' then
         Result := ftMemo
 else
  Result := ftString;

end;

function CtrlDown : Boolean;
var State : TKeyboardState;
begin
 GetKeyboardState(State);
 Result := ((State[vk_Control] And 128) <> 0);
end;

function ShiftDown : Boolean;
var State : TKeyboardState;
begin
 GetKeyboardState(State);
 Result := ((State[vk_Shift] and 128) <> 0);
end;

function AltDown : Boolean;
var State : TKeyboardState;
begin
 GetKeyboardState(State);
 Result := ((State[vk_Menu] and 128) <> 0);
end;

{ Convertar campo texto que contenha string com numero para somente número }
function TransfNum( Txt : String ) : String;
var NovoTxt : String;
    x : integer;
begin
 for x := 1 to LengTh( Txt ) do
     if Txt[x] in ['0'..'9'] then
        NovoTxt := NovoTxt + Txt[x];

 Result := NovoTxt;
end;

procedure RemoveString( var Texto : String; S : String );
begin
 while ( Pos( S, Texto ) > 0 ) do
  Delete( Texto, Pos( S, Texto ), 1 );
end;

function SubstituiString( Texto : String; Old, New : String ) : String;
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

function DeletarString( Texto, txtDel : String ) : String;
var t, p : Integer;
    Txt : string;
begin
 Txt := Texto;
 t   := Length( txtDel );
 p   := Pos( txtDel, Texto );

 Delete( Txt, p, t );

 Result := txt
end;

function ReplaceString( Texto, txtDel, NewTexto : String ) : String;
var t, p : Integer;
    Txt : string;
begin
 Txt := Texto;
 t   := Length( txtDel );
 p   := Pos( txtDel, Texto );

 Delete( Txt, p, t );
 Insert( NewTexto, Txt, p );

 Result := txt;
end;


function StrZero(Num : Real ; Zeros,Deci: integer): string;
var tam,z : integer;
    res,zer : string;

begin
 Str(Num:Zeros:Deci, res);

 res := Alltrim(res);
 tam := Length(res);
 zer := '';

 for z := 1 to (Zeros-tam) do
     zer    := zer + '0';
 Result := zer+res;
end;

function PreencheString( Text : String; Tamanho : Integer ) : String;
var i : Integer;
begin
 Text := Trim( Text );
 i    := Length( Text );
 while Tamanho > i do
 begin
  Text := Text + ' ';
  Inc( i );
 end;
 Result := Text;
end;

function RemoverAcentos( txt : string ) : string;
begin
 // Acento agudo
 txt := SubstituiString( txt, 'á', 'a' );
 txt := SubstituiString( txt, 'é', 'e' );
 txt := SubstituiString( txt, 'í', 'i' );
 txt := SubstituiString( txt, 'ó', 'o' );
 txt := SubstituiString( txt, 'ú', 'u' );
 txt := SubstituiString( txt, 'Á', 'A' );
 txt := SubstituiString( txt, 'É', 'E' );
 txt := SubstituiString( txt, 'Í', 'I' );
 txt := SubstituiString( txt, 'Ó', 'O' );
 txt := SubstituiString( txt, 'Ú', 'U' );

 // Acento circunflexo
 txt := SubstituiString( txt, 'â', 'a' );
 txt := SubstituiString( txt, 'ê', 'e' );
 txt := SubstituiString( txt, 'î', 'i' );
 txt := SubstituiString( txt, 'ô', 'o' );
 txt := SubstituiString( txt, 'û', 'u' );
 txt := SubstituiString( txt, 'Â', 'A' );
 txt := SubstituiString( txt, 'Ê', 'E' );
 txt := SubstituiString( txt, 'Î', 'I' );
 txt := SubstituiString( txt, 'Ô', 'O' );
 txt := SubstituiString( txt, 'Û', 'U' );

 // Til
 txt := SubstituiString( txt, 'ã', 'a' );
 txt := SubstituiString( txt, 'õ', 'o' );
 txt := SubstituiString( txt, 'Ã', 'A' );
 txt := SubstituiString( txt, 'Õ', 'O' );

 // CE-cedilha
 txt := SubstituiString( txt, 'ç', 'c' );
 txt := SubstituiString( txt, 'Ç', 'C' );

 // Trema
 txt := SubstituiString( txt, 'ü', 'u' );
 txt := SubstituiString( txt, 'Ü', 'U' );

 // Crase
 txt := SubstituiString( txt, 'à', 'a' );
 txt := SubstituiString( txt, 'è', 'e' );
 txt := SubstituiString( txt, 'ì', 'i' );
 txt := SubstituiString( txt, 'ò', 'o' );
 txt := SubstituiString( txt, 'ù', 'u' );
 txt := SubstituiString( txt, 'À', 'A' );
 txt := SubstituiString( txt, 'È', 'E' );
 txt := SubstituiString( txt, 'Ì', 'I' );
 txt := SubstituiString( txt, 'Ò', 'O' );
 txt := SubstituiString( txt, 'Ù', 'U' );

 Result := txt;
end;

function RemoverAcentosII( txt : string ) : string;
var ComAcento, SemAcento : String;
    x: Integer;
begin;
 ComAcento := 'àâêôûãõáéíóúçüÀÂÊÔÛÃÕÁÉÍÓÚÇÜ';
 SemAcento := 'aaeouaoaeioucuAAEOUAOAEIOUCU';

 for x := 1 to Length(txt) do
     if Pos(txt[x],ComAcento) <> 0 then
        txt[x] := SemAcento[Pos(txt[x], ComAcento)];
 Result := txt;
end;

Function CnPJ( Cnpj : String ) : Boolean;
var i, code : Integer;
    d2 : Array[1..12] of Integer;
    Df4, Df5, Df6, Resto1, PriDig, SegDig : Integer;
    Pridig2, Segdig2, Cnpj_Conv           : String;
begin
 Cnpj_Conv := TransfNum( Cnpj );
 if Cnpj_Conv = '' then
    begin
     Result := True;
     exit
    end;

 for i := 1 to 12 do
     Val( Cnpj_Conv[i],D2[i], Code );

 DF4    := 5 * D2[1] + 4 * D2[2] + 3 * D2[3] + 2 * D2[4] + 9 * D2[5] + 8 * D2[6] + 7 * D2[7] + 6 * D2[8] + 5 * D2[9] + 4 * D2[10] + 3 * D2[11] + 2 * D2[12];
 DF5    := DF4 div 11;
 DF6    := DF5 * 11;
 Resto1 := Df4 - DF6;

 if ( Resto1 = 0 ) or ( Resto1 = 1 ) then
    PriDig := 0
 else
    Pridig := 11 - Resto1;

 for i := 1 to 12 do
     Val( Cnpj_Conv[i], D2[i], Code );

 DF4    := 6 * D2[1] + 5 * D2[2] + 4 * D2[3] + 3 * D2[4] + 2 * D2[5] + 9 * D2[6] + 8 * D2[7] + 7 * D2[8] + 6 * D2[9] + 5 * D2[10] +4 * D2[11] + 3 * D2[12] + 2 * Pridig;
 DF5    := DF4 div 11;
 DF6    := DF5 * 11;
 Resto1 := Df4 - DF6;

 if ( Resto1 = 0 ) or ( Resto1 = 1 ) then
    SegDig := 0
 else
    SegDig := 11 - Resto1;

 Str( PriDig, PriDig2);
 Str( SegDig, SegDig2);

 if not ( PriDig2 =Cnpj_Conv[13] ) or not ( SegDig2 = Cnpj_Conv[14] ) then
    Result := False
 else
    Result := True;
end;

Function CnPF( Cpf : String ) : Boolean;
var i, code : Integer;
    d2 : Array[1..12] of Integer;
    DF4, DF5, DF6, Resto1, PriDig, SegDig : Integer;
    Pridig2, Segdig2, Cpf_Conv  : String;
begin
 Cpf_Conv := TransfNum( Cpf );

 if Cpf_Conv = '' then
    begin
     Result := True;
     exit
    end;

 for i := 1 to 9 do
     Val( Cpf_Conv[i], D2[i], Code );

 DF4    := 10 * D2[1] + 9 * D2[2] + 8 * D2[3] + 7 * D2[4] + 6 * D2[5] + 5 * D2[6] + 4 * D2[7] + 3 * D2[8] + 2 * D2[9];
 DF5    := DF4 div 11;
 DF6    := DF5 * 11;
 Resto1 := Df4 - DF6;

 if ( Resto1 = 0 ) or ( Resto1 = 1 ) then
    PriDig := 0
 else
    PriDig := 11 - Resto1;

 For i := 1 to 9 do Val(Cpf_Conv [i],D2[i],Code);
     DF4 := 11 * D2[1] + 10 * D2[2] + 9 * D2[3] + 8 * D2[4] + 7 * D2[5] + 6 * D2[6] + 5 * D2[7] + 4 * D2[8] + 3 * D2[9] + 2 * Pridig;

 DF5    := DF4 div 11;
 DF6    := DF5 * 11;
 Resto1 := Df4 - DF6;

 if ( Resto1 = 0 ) or ( Resto1 = 1 ) then
    SegDig := 0
 else
    SegDig := 11 - Resto1;

 Str( Pridig, Pridig2 );
 Str( Segdig, Segdig2 );

 if not ( PriDig2 = Cpf_Conv[10]) or not (SegDig2 = Cpf_Conv[11]) then
    Result := False
 else
    Result := True;
end;

// Formatar campos de CNPF CNPJ E CCM - Campo com 20 posições é o ideal;
function FormatCNPF_CNPJ_CCM( Text : String ) : String;
var CpoFormat, TextCnv : String;
begin
 CpoFormat := '';
 TextCnv   := TransfNum( Text );
 if LengTh( Trim( TextCnv ) ) > 13 then
    CpoFormat := FormatMaskText( '##\.###\.###\/####\-##;0;', TextCnv )
 else
    CpoFormat := FormatMaskText( '###\.###\.###\-##;0;', TextCnv );

 Result := CpoFormat;
end;

// Validar automaticamento os Campos CnPJ_CnPF ao mesmo tempo
function ValidCnPJ_CnPF( Text : String ) : Boolean;
begin
 if LengTh( Trim( TransfNum( Text ) ) ) > 13 then
    Result := CnPJ( Text )
 else
    Result := CnPF( Text );
end;

function Alltrim(Text : string) : string;
begin
 while Pos(' ',Text) > 0 do
  Delete(Text,Pos(' ',Text),1);
 Result := Text;
end;

procedure StringToSQLFile( Text : String; FileName : String = 'SQL.SQL' );
var SalvaSQL : TStringList;
begin
 SalvaSQL := TStringList.Create;
 try
  SalvaSQL.Add( Text );
  SalvaSQL.SaveToFile(  ExtractFilePath( Application.ExeName )+ FileName );

 finally
  FreeAndNil( SalvaSQL );
 end;
end;

procedure StringToFile( Text, Arquivo: String );
var SalvaSQL : TStringList;
begin
 SalvaSQL := TStringList.Create;
 try
  SalvaSQL.Add( Text );
  SalvaSQL.SaveToFile( Arquivo );

 finally
  FreeAndNil( SalvaSQL );
 end;
end;



function SearchAndReplace(sSrc, sLookFor, sReplaceWith : string) : string;
var nPos, nLenLookFor : integer;
begin
 nPos := Pos(sLookFor, sSrc) ;
 nLenLookFor := Length(sLookFor) ;
 while (nPos > 0) do begin
   Delete(sSrc, nPos, nLenLookFor) ;
   Insert(sReplaceWith, sSrc, nPos) ;
   nPos := Pos(sLookFor, sSrc) ;
 end;
 Result := sSrc;
end;

function DifHorasMinutos( HoraInicial, HoraFinal : Double ) : Real;
var Hour_Ini, Min_Ini, Sec_Ini,MSec_Ini : Word;
    Hour_Fim, Min_Fim, Sec_Fim,MSec_Fim : Word;
    Minutos_Ini, Minutos_Fim : Real;
begin
 DecodeTime( HoraInicial, Hour_Ini, Min_Ini, Sec_Ini, MSec_Ini );
 DecodeTime( HoraFinal, Hour_Fim, Min_Fim, Sec_Fim,MSec_Fim );

 if Hour_Ini = 0 then
    Hour_Ini := 24;

 if Hour_Fim = 0 then
    Hour_Fim := 24;

 Minutos_Ini := ( Hour_Ini * 60 ) + Min_Ini;
 Minutos_Fim := ( Hour_Fim * 60 ) + Min_Fim;

 Result := ( Minutos_Fim - Minutos_Ini ) / 60;
end;

function MinutosHoras( Hora : Double ) : Real;
var Hour_Ini, Min_Ini, Sec_Ini,MSec_Ini : Word;
begin
 DecodeTime( Hora, Hour_Ini, Min_Ini, Sec_Ini, MSec_Ini );

 if Hour_Ini = 0 then
    Hour_Ini := 24;

 Result := ( Hour_Ini * 60 ) + Min_Ini;
end;

function MinutosHoraFmt( Minutos : Real ) : Double;
var Hora, Min : Real;
    Hora2 : String;
begin
 Hora := Int( Minutos );
 Min  := ( Frac( Minutos ) ) * 60 ;

 Hora2:= FloatToStr( Hora ) + ':' + FormatFloat( '0', Min );

 Result := StrToTime( Hora2 );
end;

function DiffDate(FirstDate, LastDate: TDateTime): Real;
begin
 if TimeOf(LastDate) = 0 then
    if ( DateOf( FirstDate ) = DateOf( LastDate ) ) then
       LastDate := LastDate + 1;
 Result :=(LastDate - FirstDate);
end;

function FormatTime(Value: Real): String;
var Vint,VFrac : Real;
begin
 Value  := Value * 24;
 Vint   := Int( Value );
 VFrac  := round(Frac( Value )*60);
 if VFrac > 58 then
    begin
     Vint  := Vint + 1;
     VFrac := 0;
    end;

 Result := FormatFloat( '0', Vint ) + ':' + FormatFloat('00', VFrac ) ;
end;

function FloatToTime(Value: Real): Real;
var Vint,VFrac,VTime : Real;
    Fator : Integer;
begin
 Fator := 1;
 if Value < 0 then
    begin
     Fator := -1;
     Value := Value * Fator;
    end;

 Value  := Value * 24;
 Vint   := Int( Value );
 VFrac  := round(Frac( Value )*60);
 if VFrac > 58 then
    VTime := Vint + 1
 else
    VTime   := Vint + VFrac/100;
 Result := Vtime * Fator;
end;

function HourToMinute(Value: Real): Real;
var Fracao : Real;
begin
 Fracao := ( Frac( Value )/0.6 );
 Result := ( Int( Value ) + Fracao )/24;
end;

function DiffTimeInterval(MIni, MFim, CIni, CFim: TTime): Real;
var Dif : Real;
begin
 Dif := 0;
 if ( MIni < CIni ) then
    begin
     if ( MFim >= CFim ) or ( MFim = 0 ) then
        Dif := DiffDate( ConcatDateTimeF( date,CIni ),
                        ConcatDateTimeF( date, CFim ) )
     else if ( MFim > CIni ) then
             Dif := DiffDate( ConcatDateTimeF( date,CIni),
                             ConcatDateTimeF( date,MFim ) );
    end
 else if MIni < CFim then
         begin
          if ( MFim >= CFim ) then
             Dif := DiffDate( ConcatDateTimeF(date, MIni),
                             ConcatDateTimeF( date, CFim ) )
          else
             Dif := DiffDate( ConcatDateTimeF(date,MIni),
                             ConcatDateTimeF(date,MFim) );
         end;
 Result := Dif;
end;

function ConcatDateTimeF(VDate: TDate; VTime: TDateTime): TDateTime;
var PDate,PTime : TDateTime;
begin
 PDate       := DateOf( VDate );
 PTime       := TimeOf( VTime );
 Result      := PDate + PTime;
end;

function FloatToMinutos( Horas : Real ) : Real;
begin
 if Frac( Horas ) > 0 then
    Result := HourToMinute( Horas )
 else
    Result := Horas/24;
end;

{ This procedure returns ALL of the version information as separate
 string entries of a TString list. Each element can then be accessed
 by indexing the TString list thus: AVersionList[0], AVersionList[1] etc..}

procedure GetProjectVersionInfo(AVersionList: TStrings; AFileName: string = '');
var
  I: Integer;
  InfoSize: DWORD;
  pTrans: PTransBuffer;
  TransStr: string;
  TypeStr: string;
  Value: PChar;
  VerBuf: pointer;
  VerSize: DWORD;
  Wnd: DWORD;
begin
  AVersionList.Clear;
  if AFileName = '' then
    AFileName := ParamStr(0);
  InfoSize := GetFileVersioninfoSize(PChar(AFileName), Wnd);

  if (InfoSize <> 0) then
  begin
    GetMem(VerBuf, InfoSize);
    try
      if GetFileVersionInfo(PChar(AFileName), Wnd, InfoSize, VerBuf) then
      begin
        VerQueryValue(VerBuf, PChar('\VarFileInfo\Translation'),
                      Pointer(pTrans), VerSize);

        TransStr := IntToHex(pTrans^[1], 4) + IntToHex(pTrans^[2], 4);

        for i := Low(CInfoStr) to High(CInfoStr) do
        begin
          TypeStr := 'StringFileInfo\' + TransStr + '\' + CInfoStr[I];

          if VerQueryvalue(VerBuf, PChar(TypeStr),
                           Pointer(Value), VerSize) then
            AVersionList.Add(CInfoStr[I] + '=' + Value);
        end
      end;
    finally
      FreeMem(VerBuf);
    end;
  end;
end;

function GetBuildInfo(var V1, V2, V3, V4: Word; AFileName: string = ''): Boolean;
{
 This procedure returns the individual Major/Minor/Release/Build
 values of the version information.
}
var
  VerInfoSize: DWORD;
  VerInfo: Pointer;
  VerValueSize: DWORD;
  VerValue: PVSFixedFileInfo;
  Dummy: DWORD;
begin
  Result := True;
  if AFileName = '' then
    AFileName := ParamStr(0);
  VerInfoSize := GetFileVersionInfoSize(PChar(AFileName), Dummy);
  if VerInfoSize = 0 then
  begin
    Result := False;
    Exit;
  end;
  GetMem(VerInfo, VerInfoSize);
  try
    GetFileVersionInfo(PChar(AFileName), 0, VerInfoSize, VerInfo);
    VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);

    with VerValue^ do
    begin
      V1 := dwFileVersionMS shr 16;
      V2 := dwFileVersionMS and $FFFF;
      V3 := dwFileVersionLS shr 16;
      V4 := dwFileVersionLS and $FFFF;
    end;
  finally
    FreeMem(VerInfo, VerInfoSize);
  end;
end;

function GetBuildInfoAsString(AFileName: string = ''): string;
var
  V1: Word;
  V2: Word;
  V3: Word;
  V4: Word;
begin
  if GetBuildInfo(V1, V2, V3, V4) then
    Result := Format('%d.%d.%d.%d', [V1, V2, V3, V4])
  else
    Result := '';
end;

function Impressora( NomeImpressora: String; Bloq : Boolean = True ): Integer;
var i: Integer;
begin
 Result := -1;
 for i := 0 to Printer.Printers.Count - 1 do
 begin
  if Pos( UpperCase( NomeImpressora ), UpperCase( Printer.Printers[i] ) ) > 0 then
     begin
      Result := i;
      Break;
     end;
 end;

 if Bloq then
    if Result = -1 then
       raise Exception.Create( 'Impressora ' + NomeImpressora + ' não instalada. ' +
                               ' A impressão será cancelada.' );
end;


function PaperZebra: Integer;
var FDevice : PChar;
    FDriver : PChar;
    FPort : PChar;
    PaperCodes : array of Word;
    DeviceMode : THandle;
    CapBuffer : PChar;
    i, NumCaps : Integer;
    PaperNames : PTPaperNames;
begin
 Result := 0;
 GetMem(CapBuffer, 10000);
 GetMem(FDevice, 1000);
 GetMem(FDriver, 1000);
 GetMem(FPort, 1000);
 GetMem(PaperNames, 6400);

// Printer.PrinterIndex := Impressora( 'ZEBRA' );

 Printer.GetPrinter(FDevice, FDriver, FPort, DeviceMode);

 // Paper names
 NumCaps := DeviceCapabilities(FDevice, FPort, DC_PAPERNAMES, CapBuffer, nil);
 CopyMemory(Pointer(PaperNames), CapBuffer, 6400);
 SetLength(PaperCodes, NumCaps);
 Fillchar(Pointer(PaperCodes)^, NumCaps * Sizeof(Word), #0);

 // Paper codes
 DeviceCapabilities(FDevice, FPort, DC_PAPERS, PChar(PaperCodes), nil);
 for i := 0 to NumCaps - 1 do
 begin
  if Trim(PaperNames[i]) <> '' then
     if Pos( '4.00 X 6.00', UpperCase( PaperNames[i] ) ) > 0 then
        Result := PaperCodes[i];
 end;

 FreeMem(CapBuffer, 10000);
 FreeMem(FDevice, 1000);
 FreeMem(FDriver, 1000);
 FreeMem(FPort, 1000);
 FreeMem(PaperNames, 6400);
 SetLength(PaperCodes, 0);
end;

function LoadStringFromRegistry( sKey, sItem, sDefVal : string ) : string;
var reg : TRegIniFile;
begin
 Result := '';
 reg    := TRegIniFile.Create( sKey );
 try
  try
   reg.RootKey := HKEY_LOCAL_MACHINE;

   if reg.ReadString( sKey, sItem, '' ) = '' then
      SaveStringToRegistry( sKey, sItem, sDefVal );

   Result := reg.ReadString( sKey, sItem, sDefVal );

   reg.CloseKey;

  except
  on E:Exception do
   Result := '';
  end;

 finally
  FreeAndNil( reg );
 end;
end;

procedure SaveStringToRegistry( sKey, sItem, sVal : string );
var reg : TRegIniFile;
begin
 reg := TRegIniFile.Create( sKey );
 try
  reg.RootKey := HKEY_LOCAL_MACHINE;
  reg.WriteString( sKey, sItem, sVal + #0 );
  reg.CloseKey;
 finally
  FreeAndNil( reg );
 end;
end;

procedure DeleteStringToRegistry( sKey, sItem : string );
var reg : TRegIniFile;
begin
 try
  reg := TRegIniFile.Create( sKey );
  reg.RootKey := HKEY_LOCAL_MACHINE;
  reg.DeleteKey( sKey, sItem );
  reg.CloseKey;
 finally
  FreeAndNil( reg );
 end;
end;

procedure LoadALLKeyFromRegistry( sKey : string; var aStrList : TStrings );
var reg : TRegIniFile;
begin
 reg      := TRegIniFile.Create( sKey );
 try
  reg.RootKey := HKEY_LOCAL_MACHINE;
  reg.OpenKey( sKey,True );
  reg.ReadSection( sKey, aStrList );
  reg.CloseKey;
 finally
  FreeAndNil( reg );
 end;

end;

{ Utilização

var
  S: TStringStream;
begin
  // To use this code, replace [ ] brackets with <> ones in the following two lines !
  S := TStringStream.Create('[html][h1]Stream Test[/h1][p]This HTML content ' +
    'is being loaded from a stream.[/html]');
  try
    LoadStream(WebBrowser1, S);
  finally
    S.Free;
  end;
end; }

procedure LoadHTMLStream(WebBrowser: TWebBrowser; Stream: TStream);
var
  PersistStreamInit: IPersistStreamInit;
  StreamAdapter: IStream;
  MemoryStream: TMemoryStream;
begin
  {Load empty HTML document into Webbrowser to make "Document" a valid HTML document}
  WebBrowser.Navigate('about:blank');
  {wait until finished loading}
  repeat
    Application.ProcessMessages;
    Sleep(0);
  until
    WebBrowser.ReadyState = READYSTATE_COMPLETE;
  {Get IPersistStreamInit - Interface}
  if WebBrowser.Document.QueryInterface(IPersistStreamInit, PersistStreamInit) = S_OK then
  begin
    {Clear document}
    if PersistStreamInit.InitNew = S_OK then
    begin
      {Make local copy of the contents of Stream if you want to use Stream directly,
      you have to consider, that StreamAdapter will destroy it automatically}
      MemoryStream := TMemoryStream.Create;
      try
        MemoryStream.CopyFrom(Stream, 0);
        MemoryStream.Position := 0;
      except
        MemoryStream.Free;
        raise;
      end;
      {Use Stream-Adapter to get IStream Interface to our stream}
      StreamAdapter := TStreamAdapter.Create(MemoryStream, soOwned);
      {Load data from Stream into WebBrowser}
      PersistStreamInit.Load(StreamAdapter);
    end;
  end;
end;


{ WebNavigator salvar BODY em HTML
  http://delphi.about.com/od/internetintranet/l/aa062904a.htm

  // first navigate
  WebBrowser1.Navigate('http://delphi.about.com');

  //then save
  WB_SaveAs_HTML(WebBrowser1,'c:\WebBrowser1.html');  }
procedure WB_SaveAs_HTML(WB:TWebBrowser; const FileName : string);
var
  PersistStream: IPersistStreamInit;
  Stream: IStream;
  FileStream: TFileStream;
begin
  if not Assigned(WB.Document) then
     raise Exception.Create('Documento não carregado!');

  PersistStream := WB.Document as IPersistStreamInit;
  FileStream := TFileStream.Create(FileName, fmCreate);
  try
    Stream := TStreamAdapter.Create(FileStream, soReference)
              as IStream;
    if Failed(PersistStream.Save(Stream, True)) then
       raise Exception.Create( 'Salvar como HTML falhou!' );
  finally
    FileStream.Free;
  end;
end;

{ WebNavigator salvar BODY em HTML
  //first navigate
  WebBrowser1.Navigate('http://delphi.about.com');

  //then save
  WB_SaveAs_MHT(WebBrowser1,'c:\WebBrowser1.mht'); }

procedure WB_SaveAs_MHT(WB: TWebBrowser; FileName: TFileName);
var
  Msg: IMessage;
  Conf: IConfiguration;
  Stream: _Stream;
  URL : widestring;
begin
  if not Assigned(WB.Document) then Exit;
  URL := WB.LocationURL;

  Msg := CoMessage.Create;
  Conf := CoConfiguration.Create;
  try
    Msg.Configuration := Conf;
    Msg.CreateMHTMLBody(URL, cdoSuppressAll, '', '');
    Stream := Msg.GetStream;
    Stream.SaveToFile(FileName, adSaveCreateOverWrite);
  finally
    Msg := nil;
    Conf := nil;
    Stream := nil;
  end;
end; (* WB_SaveAs_MHT *)

// print directly without printer dialog
procedure WBPrintNoDialog(WB: TWebBrowser) ;
var
   vIn, vOut: OleVariant;
begin
   WB.ControlInterface.ExecWB(OLECMDID_PRINT, OLECMDEXECOPT_DONTPROMPTUSER, vIn, vOut) ;
end;

//call the printer dialog
procedure WBPrintWithDialog(WB: TWebBrowser) ;
var
   vIn, vOut: OleVariant;
begin
   WB.ControlInterface.ExecWB(OLECMDID_PRINT, OLECMDEXECOPT_PROMPTUSER, vIn, vOut) ;
end;

// Print Preview
procedure WBPrintPreview(WB: TWebBrowser) ;
var
   vIn, vOut: OleVariant;
begin
   WB.ControlInterface.ExecWB(OLECMDID_PRINTPREVIEW, OLECMDEXECOPT_DONTPROMPTUSER, vIn, vOut) ;
end;

//Call page setup dialog
procedure WBPrintPageSetup(WB: TWebBrowser) ;
var
   vIn, vOut: OleVariant;
begin
   WB.ControlInterface.ExecWB(OLECMDID_PAGESETUP, OLECMDEXECOPT_PROMPTUSER, vIn, vOut) ;
end;

function MessageDialog( const Msg: string; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons; Captions: array of string ): Integer;
var
  aMsgDlg: TForm;
  i: Integer;
  dlgButton: TButton;
  CaptionIndex: Integer;
begin
  { Create the Dialog }
  aMsgDlg := CreateMessageDialog(Msg, DlgType, Buttons);
  try
   captionIndex := 0;
   { Loop through Objects in Dialog }
   for i := 0 to aMsgDlg.ComponentCount - 1 do
   begin
    { If the object is of type TButton, then }
     if (aMsgDlg.Components[i] is TButton) then
     begin
       dlgButton := TButton(aMsgDlg.Components[i]);
       if CaptionIndex > High(Captions) then Break;
       { Give a new caption from our Captions array}
       dlgButton.Caption := Captions[CaptionIndex];
       Inc(CaptionIndex);
     end;
   end;
   Result := aMsgDlg.ShowModal;
  finally
   FreeAndNil( aMsgDlg );
  end;
end;

procedure AtivarArquivoTxt( var F : TextFile; NomeArq : String; LeGrava: Char = 'R' );
begin
 AssignFile( F,  NomeArq );
 case LeGrava of
  'R': Rewrite( F );
  'A': Append( F);
 end;
end;

function AddDel(Str: String; Size : Integer;
  Delimitador: Char = '|' ): String;
var Str2 : String;
begin
 Str2 := Trim(Str);
 if Length( Str2 ) > Size then
    Str2 := copy( Str2,1,Size );

 Str2 := Str2 + Delimitador;
 Result := Trim(Str2);
end;

function AddDel(Str: String; Delimitador: Char = '|' ): String;
begin
 Result := Trim(Str) + Delimitador;
end;

end.


