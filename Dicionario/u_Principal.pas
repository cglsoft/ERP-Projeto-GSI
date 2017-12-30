unit u_Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    ListaConstraint: array of string;
    procedure PegaListaConstraint(TableName: String);
    function GeraItens(FieldName: String): String;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses u_dmDicionario, DB, DBClient, Math;

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
var UserTables, UserTableEspecific: String;
    i,ii : Integer;
    TabelasUsuario : array of string;
begin

 Screen.Cursor := crHourGlass;
 try
  dmDicionario.cdsDicionario.Open;
  dmDicionario.cdsDicionario.First;

  UserTables     := 'SELECT TABLE_NAME FROM USER_TABLES';

  dmDicionario.cdsGeral.Close;
  dmDicionario.cdsGeral.CommandText := UserTables;
  dmDicionario.cdsGeral.Open;

  // Adicionar as tabelas do usuario em um array
  SetLength( TabelasUsuario, dmDicionario.cdsGeral.RecordCount );
  while not dmDicionario.cdsGeral.Eof do
  begin
   TabelasUsuario[dmDicionario.cdsGeral.RecNo - 1] := dmDicionario.cdsGeral.Fields[0].Value;
   dmDicionario.cdsGeral.Next
  end;

  for i := 0 to High( TabelasUsuario ) do
  begin
   if Pos('AUDIT', TabelasUsuario[i] ) > 0 then
      Continue;

   PegaListaConstraint(TabelasUsuario[i]);

   UserTableEspecific := 'SELECT * FROM ' + TabelasUsuario[i] +
                         ' WHERE ROWNUM < 1';

   if dmDicionario.cdsGeral.Active then
      dmDicionario.cdsGeral.CheckBrowseMode;

   try
    dmDicionario.cdsGeral.Close;

    dmDicionario.cdsGeral.CommandText := UserTableEspecific;
    dmDicionario.cdsGeral.Open;
   except
    ShowMessage( UserTableEspecific );
   end;

   // Atualizar nomes dos campos na tabela de dicionario
   for ii := 0 to dmDicionario.cdsGeral.FieldList.Count - 1 do
   begin
    if dmDicionario.cdsDicionario.Locate('NOMETABELA;NOMECAMPO',
                            VarArrayOf([TabelasUsuario[i], dmDicionario.cdsGeral.FieldDefs[ii].Name]), []) then
       dmDicionario.cdsDicionario.Edit
    else
    begin
     dmDicionario.cdsDicionario.Insert;
     dmDicionario.cdsDicionarioNOMETABELA.Value := TabelasUsuario[i];
     dmDicionario.cdsDicionarioNOMECAMPO.Value  := dmDicionario.cdsGeral.FieldDefs[ii].Name;
    end;
    dmDicionario.cdsDicionarioITENS.Value       := GeraItens(dmDicionario.cdsGeral.FieldDefs[ii].Name);
    dmDicionario.cdsDicionario.Post;
    dmDicionario.cdsDicionario.ApplyUpdates(-1);
   end;
   SetLength(ListaConstraint, 0);
  end;

 finally
   Screen.Cursor := crDefault;
 end;

end;

function TForm1.GeraItens(FieldName: String): String;
var i: Integer;
    Teste: String;
begin
 Result := '';
 for i := 0 to High(ListaConstraint) do
 begin
  if Pos(FieldName, UpperCase(ListaConstraint[i])) > 0 then
  begin
   Teste := Copy( ListaConstraint[i],
                  Pos( '(', UpperCase( ListaConstraint[i] ) ) + 1,
                  Length( ListaConstraint[i] ) -
                  Pos( '(', UpperCase( ListaConstraint[i] ) ) - 2 );
   if Pos( ')', Teste ) > 0 then
     Delete( Teste, Pos( ')', Teste ), 1 );
   if ( Pos( '0', Teste ) = 0 ) and ( Pos( '1', Teste ) = 0 ) then
   begin
    while Pos( '''', Teste) > 0 do
     Delete(Teste, Pos('''', Teste), 1);
    while Pos(' ', Teste) > 0 do
     Delete(Teste, Pos(' ', Teste), 1);
    Result := Teste;
   end;
  end;
 end;
end;

procedure TForm1.PegaListaConstraint(TableName: String);
var i: Integer;
begin
  i := 0;
  with dmDicionario.cdsGeral do
  begin
    Close;
    CommandText := 'SELECT SEARCH_CONDITION ' +
                    ' FROM USER_CONSTRAINTS ' +
                   ' WHERE TABLE_NAME = ' + QuotedStr(TableName);
    Open;
    if Not IsEmpty then
    begin
      First;
      SetLength( ListaConstraint, RecordCount );
      while Not Eof do
      begin
        ListaConstraint[i] := Fields[0].AsString;
        Inc( i );
        Next;
      end;
    end;
    Close;
  end;
end;

end.
