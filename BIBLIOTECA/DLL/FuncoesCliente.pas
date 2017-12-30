unit FuncoesCliente;

interface

uses Windows, SysUtils, ActnList, ComCtrls, Menus, DBClient, DB, SConnect,
     Forms, Controls, StdCtrls, Variants, Classes, Dialogs, ActnMan, DBCtrls,
     DBGrids, Graphics;


  function AnalisarParamPesq(Campo, Condicao, Conteudo: String): String;

  { Validar direitos do usuário }
  function CheckSenha( Usuario, Direito, DireitoSecundario : String ; ExibeMsg : Boolean ) : Boolean;

  { Verificar no final qdo fechar o formulário se existem transação pendente }
  procedure VisualTelasPendentes( StayOnTop : Boolean );
  function FinalFormulario( cds : TClientDataSet ;  Msg : String ) : Boolean;

  { Identificar o nome do sistema dentro de um data module }
  function IdentificarNomeTabela( Value : String ) : String;

 { Identificar o nome da Tabela e campo para a pesquisa }
  function IdentificarNomeTabelaCampo( Tabela, Campo : String ) : String;

  { Analisar e Adicionar parametros de SQL para as telas de Manutenção
    cadastral padrão }
  function AnalisarAddSQL( OldSQL, AddSQL : String ) : String;
  function AdicionaOpcPesq : TStrings;
  procedure GerarPesquisa( cdsNew : TClientDataSet ; ParamPesquisa : String );
  function LocateSQL( Value : String ) : String;
  function ContadorDB( Tabela : String;CampoID : String;ParametroSQL : String ):Integer;

  { Fim das funções para as manutenções cadastrais padrão }

  { Rotina Temporariamente descontinuada utilizar automaticamente AtualizarDicionario }
  { Atualizar os Títulos dos Campos }
  procedure AlterarTituloCampo;

  { Atualizar Dicionário de dados }
  procedure AtualizarDicionario( NomeTabela : String; cdsTabela : TClientDataSet );

  // Adicionar nome de campos no dicionário }
  procedure AdicDicionarioPesq( NomeTabela, NomeTabelaPesq : String;
   cdsTabela : TClientDataSet; var cdsDic : TClientDataSet );

  { Provider Dinâmico Executar no cliente }
  function  ExecDynamicProvider(iRecords: Integer;
                                sCommandText: WideString;
                                var cdsGeral: TClientDataSet): Integer;

  { Executar um DML -> INSERT, DELETE, UPDATE dinâmicamente }
  procedure ExecDMLCreateCDS( var cdsParams : TClientDataSet );
  procedure ExecDMLAddParams( var cdsParams : TClientDataSet; Value : WideString; FieldType : String;
   ParamName : String; ParamType : String );
  procedure ExecDML( CommandText: WideString);  overload
  procedure ExecDML( CommandText: WideString; cdsParams : TClientDataSet ); overload
  procedure ExecProcedure( PackageName, StoredProcName, SchemaName : WideString );


  { Executar ( Retornar o valor de uma SEQUENCY ) }
  function ExecSequencia( Value : WideString ) : Integer;

  { Adicionar campos de pesquisa }
  procedure AdicionarCamposCombo( Sender : TObject ; Campos : TFields ); overload
  procedure AdicionarCamposCombo( Sender : TObject ; iSQL, CampoRetorno : String ); overload

  { Chamada padrão específico }
  procedure CriaEspecifico( frmEspecificoClass : TComponentClass;  frmEspecificoName : TForm; cdsEspecifico : TClientDataSet;  dsEspecifico : TDataSource; frmCaption : String);
  procedure CriarEdicaoPadrao( dsEdt : TDataSource ; cdsEdt : TClientDataSet );

  { Criação do Form de LookUp }
  procedure CriaFormLookUp(const DataSource: TDataSource; Campo: TField; NomeCampoRetorno: String); overload
  procedure CriaFormLookUp( NomeTabela : String; sql : String; Campo: TField; NomeCampoPesquisa : String; NomeCampoRetorno: String); overload

  {Verifica Campos obrigatórios em um formulário}
  procedure OrdenaFieldDBGrid(Column: TColumn; Ds : TDataSource; Grid : TDBGrid);

  {Chamada do Lookup}
  procedure ExecLoockupPesquisa(dsPesquisa : TDataSource; LckCamposPesquisa : String; LckValuesPesquisa : String; pCaption : String = '');
  procedure ExecLoockupRetorno(cdsDestino : TClientDataSet; LckRetCamposDestino, LckRetCamposOrigem : String);

  { Funcoes de Data }
  function RetornaData(Periodo: Char):String;

  // XML Funcoes
  procedure OpenXMLFile( Open : Boolean; xml, idx : String; var cds : TClientDataSet );
  procedure BackupXMLDespesa( Arquivo : String; cds : TClientDataSet );
  procedure GravarDiskete( Arquivo : string; cds : TClientDataSet );
  procedure RecuperarDisquete( Arquivo : String; var cds : TClientDataSet );
  procedure TimerBackupXML( Arquivo : String; cds : TClientDataSet );

  ResourceString
   MsgErroInsertNull = 'Operação não realizada.'+#13+'Ocorreu um erro ao salvar o registro.';  {usado no OnClose dos formulários}

var
  pCnnMain       : TSocketConnection;
  DataInspector  : TClientDataSet;
  EmpresaAtualId : Integer;
  LogAcesso      : Integer;
  SQLCEPPadrao   : String = 'SELECT ' +
                            '  A.SIGLAUFID,  A.TIPOLOGRADOURO, A.PREPOSICAO, A.TITULOPATENTE, A.NOMELOGRADOURO , A.BAIRROLOGRADOURO , A.NOMELOCALIDADE , D.NOMEUF , A.CEPID ' +
                            '  , E.NOMEPAISPORTUGUES ' +
                            ' FROM ' +
                            '    CP_LOCALIDADES B ' +
                            '  , CP_BAIRROS C ' +
                            '  , CP_UNIDADESFEDERACAO D ' +
                            '  , CP_PAISES E ' +
                            '  , CP_LOGRADOUROS A ' +
                            ' WHERE ' +
                            '      (B.SIGLAUFID = D.SIGLAUFID) ' +
                            '  AND (C.SIGLAUFID = D.SIGLAUFID) ' +
                            '  AND (B.SIGLAPAISID = E.SIGLAPAISID) ' +
                            '  AND (D.SIGLAPAISID = E.SIGLAPAISID) ' +
                            '  AND (A.LOCALIDADEDNEID = B.LOCALIDADEDNEID) ' +
                            '  AND (A.BAIRRODNEID = C.BAIRRODNEID) ';

const
 CondicoesPesqSQL : array [0..11] of String = ('Todos', 'Igual', 'Diferente',
                                       'Contido','Não Contido',
                                       'Maior','Maior e Igual','Menor',
                                       'Menor e Igual',
                                       'Preenchido','Não Preenchido', 'Inicie com');

// CondicoesPesqSQL : array [0..11] of String = ('Todos','Igual','Diferente',
//                                       'Maior','Maior e Igual','Menor',
//                                       'Menor e Igual','Contido','Não Contido',
//                                       'Vazio','Preenchido','Inicie com');


{const
 FlagCondicoesPesqSQL : array [0..8] of String = ('','=','<>','>','>=','<','<=',
                                           'LIKE','NOT LIKE');}


implementation

uses u_dmGSI, FuncoesDSI, u_PesquisaCampo, u_PadraoPesquisa, u_PadraoEdicao, 
 Math;


function AnalisarParamPesq(Campo, Condicao,
  Conteudo: String): String;
var ParSQL : String;
begin
 ParSQL := '';  // Todos

 if      Condicao = 'Igual' then
         ParSQL := Campo + ' = ' + QuotedStr( Conteudo )
 else if Condicao = 'Diferente' then
         ParSQL := Campo + ' <> ' + QuotedStr( Conteudo )
 else if Condicao = 'Maior' then
         ParSQL := Campo + '>' + QuotedStr( Conteudo )
 else if Condicao = 'Maior e Igual' then
         ParSQL := Campo + ' >= ' + QuotedStr( Conteudo )
 else if Condicao = 'Menor' then
         ParSQL := Campo + ' < ' + QuotedStr( Conteudo )
 else if Condicao = 'Menor e Igual' then
         ParSQL := Campo + ' <= ' + QuotedStr( Conteudo )
 else if Condicao = 'Contido' then
         ParSQL := Campo + ' LIKE ' + QuotedStr( '%' + Conteudo + '%' )
 else if Condicao = 'Nao Contido' then
         ParSQL := Campo + ' NOT LIKE ' + QuotedStr( '%' + Conteudo + '%' );
 Result := ParSQL;
end;

{ Validar direitos do usuário }
function CheckSenha( Usuario, Direito, DireitoSecundario : String ; ExibeMsg : Boolean ) : Boolean;
var iSQLUser, iSql, iSQLVrf, UpdDireito : String;
    AcessoTotal : Boolean;
    Cds : TClientDataSet;
    ShowMsgError : String;
begin
 // Não passar a mesma categoria
 if DireitoSecundario =  '' then
    DireitoSecundario := Direito;

 // Padronizar gravação dos campos
 UpperCase( Usuario );
 UpperCase( Direito );
 UpperCase( DireitoSecundario);

 Cds         := nil;
 AcessoTotal := False;
 iSQLUser    := 'SELECT ' +
                '  AS_USUARIO.USUARIOID, ' +
                '  AS_USUARIO.ACESSOTOTAL ' +
                '  FROM ' +
                '  AS_USUARIO AS_USUARIO ' +
                ' WHERE ' +
                '  AS_USUARIO.USUARIOID = ' + QuotedStr( Usuario );

 iSQL        := 'SELECT ' +
                '  AS_USUARIO.USUARIOID, ' +
                '  AS_USUARIO.ACESSOTOTAL, ' +
                '  AS_USUARIODIREITO.DIREITOID, ' +
                '  AS_USUARIODIREITO.DIREITOSECUNDARIOID ' +
                '  FROM ' +
                '  AS_USUARIO AS_USUARIO, ' +
                '  AS_USUARIODIREITO AS_USUARIODIREITO ' +
                ' WHERE ' +
                '  AS_USUARIO.USUARIOID = AS_USUARIODIREITO.USUARIOID(+) ' +
                '  AND AS_USUARIO.USUARIOID = ' + QuotedStr( Usuario ) +
                '  AND AS_USUARIODIREITO.DIREITOID = ' + QuotedStr( Direito ) +
                '  AND AS_USUARIODIREITO.DIREITOSECUNDARIOID = ' + QuotedStr( DireitoSecundario );

 iSQLVrf     := 'SELECT * ' +
                ' FROM AS_DIREITO ' +
                ' WHERE ' +
                '  DIREITOID =' + QuotedStr( Direito ) +
                '  AND DIREITOSECUNDARIOID = ' + QuotedStr( DireitoSecundario );

 UpdDireito  := 'INSERT INTO AS_DIREITO ( DIREITOID, DIREITOSECUNDARIOID ) ' +
                ' VALUES ( ' +
                  QuotedStr( Direito ) + ',' +
                  QuotedStr( DireitoSecundario ) +')';

 try
  Result := False;

  if Usuario = 'MAE@' then
     begin
      Result      := True;
      AcessoTotal := True;
     end;

  ExecDynamicProvider( -1, iSQLUser, Cds );

  if not Cds.IsEmpty then
     if Cds.FieldByName('ACESSOTOTAL').AsInteger = 1 then
        begin
         Result      := True;
         AcessoTotal := True;
        end;

  if not AcessoTotal then
     begin
      ExecDynamicProvider( -1, iSQL, Cds );
      if not Cds.IsEmpty then
         Result := True
      else
         begin
          ShowMsgError := LoadStringFromRegistry( Registro_Principal, 'CHECKSENHA_MSG_ERROR',  'SIM' );
          if ExibeMsg then
             if ShowMsgError = 'SIM' then
                MessageDlg( 'Você não tem direitos para esta rotina : ' + Direito + ' - ' + DireitoSecundario, mtError, [mbOk] , 0  );
          Result := False;
         end;
     end;

  // Incluir registro na Tabela de Direitos
  ExecDynamicProvider( -1, iSQLVrf, Cds );
  if Cds.IsEmpty then
     ExecDML( UpdDireito );

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure VisualTelasPendentes( StayOnTop : Boolean );
var i : Integer;
begin
 for i := 0 to Screen.FormCount - 1 do
 begin
  if Screen.Forms[i] is TForm then
     if StayOnTop then
        begin
         TForm( Screen.Forms[i] ).FormStyle := fsNormal;
         TForm( Screen.Forms[i] ).Show;
        end
     else
         TForm( Screen.Forms[i] ).Show;
 end;
end;


{ Evento para quando fechar um form de tabela }
function FinalFormulario( cds : TClientDataSet ;  Msg : String ) : Boolean;
begin
 {
  A Rotina Modified serve para validar as alterações porque o changecount falha
  na tabela de processo e o Changecount está aí, pois se sofrer alterações no
  filho o changecount funcional!  e o Modifield ( Certo ) falha, pois não houve
  alterações no pai. (Uma merda! do ChangeCount !)
   }
 Result := True;

 try
  if ( cds.Modified ) or ( cds.ChangeCount > 0 ) or ( cds.State = dsInsert ) then
     begin
      if MessageDlg('Gravar os dados ' + Msg + '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
         begin
          if cds.State in [dsInsert,dsEdit] then
             cds.Post
         end
      else
         cds.Cancel;
     end
  else
     cds.Cancel;
 except
  On E:Exception do
  begin
   Result := False;
   Application.MessageBox(PChar(MsgErroInsertNull+#13+'Mensagem original: '+#13+' '''+ E.Message+ ''''), 'Mensagem', 0);
   Application.ProcessMessages;
  end;
 end;
end;

function IdentificarNomeTabela( Value : String ) : String;
var i, j : Integer;
begin
 Result := '';
 for i := 0 to Screen.DataModuleCount - 1  do
 begin
  for j := 0 to Screen.DataModules[i].ComponentCount - 1 do
   if Screen.DataModules[i].Components[j].Name = Value then
      begin
       Result := Copy( Screen.DataModules[i].Name, 3, 2 ) + '_' +
                 Copy( Value, 4, Length( Value ) );
       exit;
      end;
 end;
end;

function IdentificarNomeTabelaCampo( Tabela, Campo : String ) : String;
var Cds  : TClientDataSet;
    iSql : String;
begin
 Result := '';

 iSql   := 'SELECT NOMETABELAPESQ, NOMETABELA, NOVONOMECAMPO, NOMECAMPOTABELAPESQ, NOMECAMPO ' +
           ' FROM AS_DICIONARIO ' +
           'WHERE NOMETABELA = ' + QuotedStr( UpperCase( Tabela ) ) +
           '  AND NOMECAMPO = ' + QuotedStr( UpperCase( Campo ) );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     if Cds.FieldbyName( 'NOMETABELAPESQ' ).IsNull then
        Result := Cds.FieldbyName( 'NOMETABELA' ).AsString + '.' +
                  Cds.FieldbyName( 'NOMECAMPO' ).AsString
     else
        begin
         if Cds.FieldbyName( 'NOMECAMPOTABELAPESQ' ).IsNull then
            Result := Cds.FieldbyName( 'NOMETABELAPESQ' ).AsString
         else
            Result := Cds.FieldbyName( 'NOMETABELAPESQ' ).AsString + '.' +
                      Cds.FieldbyName( 'NOMECAMPOTABELAPESQ' ).AsString;
        end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;


function AnalisarAddSQL( OldSQL, AddSQL : String ) : String;
begin
 if      Pos( 'WHERE', OldSQL ) > 0 then
         OldSQL := OldSQL + #13 + 'AND ' + AddSQL
 else if OldSQL = '' then
         OldSQL := AddSQL
 else
  OldSQL := OldSQL + #13 +  'WHERE ' +  #13 + AddSQL;
 Result := OldSQL;
end;

function AdicionaOpcPesq : TStrings;
var Opc : TStrings;
begin
 Opc := TStringList.Create;

 Opc.Append('Todos');
 Opc.Append('Igual');
 Opc.Append('Diferente');
 Opc.Append('Maior');
 Opc.Append('Maior e Igual');
 Opc.Append('Menor');
 Opc.Append('Menor e Igual');
 Opc.Append('Contém');
 Opc.Append('Não Contém');

 Result := Opc;
end;

procedure GerarPesquisa(cdsNew : TClientDataSet; ParamPesquisa : String );
var SQL : String;
begin
 Screen.Cursor := crHourGlass;
 try
  try
   cdsNew.Close;

   if ParamPesquisa <> '' then
      SQL := AnalisarAddSQL( LocateSQL( cdsNew.ProviderName ),
                            ParamPesquisa )
   else
      SQL := LocateSQL( cdsNew.ProviderName );

   cdsNew.CommandText := SQL;
   cdsNew.Open;
  except
   on E:Exception do
   begin
    StringToSQLFile( SQL );
    raise Exception.Create( E.Message + #13  );
   end;
  end;

 finally
  Screen.Cursor := crDefault;
 end;
end;

function LocateSQL( Value : String ) : String;
begin
 if dmGsi.cdsSQL.FindKey([ UpperCase( Value ) ]) then
    Result := dmGsi.cdsSQL.FieldByName('SQL').AsString
 else
    Result := '';
end;

function ContadorDB( Tabela : String;CampoID : String;ParametroSQL : String ):Integer;
var Cds  : TClientDataSet;
    iSQL : String;
begin
 Cds     := nil;
 iSQL    := 'SELECT NVL( MAX( '+ CampoID + '), 0 ) FROM '+ Tabela+ ' ';

 if ( ParametroSQL <> '' ) then
    iSQL := iSQL + ParametroSQL;

 try
  ExecDynamicProvider( -1, iSQL, Cds );

 ContadorDB := Cds.Fields[0].Value + 1;

 Cds.Close;

 finally
  FreeAndNil(Cds);
 end;
end;

procedure AlterarTituloCampo;
var i,j,x : Integer;
    SqlDicionario, Tabela, Campo : String;
    cds : TClientDataSet;

 procedure AdicionarListaDicionario;
 begin
  SqlDicionario := 'SELECT NOMETABELA,NOMECAMPO, NOVONOMECAMPO ' +
                   ' FROM AS_DICIONARIO ';
  ExecDynamicProvider( -1, SqlDicionario, cds );

  cds.AddIndex('idx1','NOMETABELA;NOMECAMPO', [ixCaseInsensitive],'','',0);
  cds.IndexName := 'idx1';
 end;

begin
 cds := nil;
 try
  AdicionarListaDicionario;

  for i := 0 to Screen.DataModuleCount - 1 do
  begin
   for j := 0 to Screen.DataModules[i].ComponentCount - 1 do
    if ( Screen.DataModules[i].Components[j] is TClientDataSet ) then
       with ( Screen.DataModules[i].Components[j] as TClientDataSet ) do
       begin
        for x := 0 to ( Screen.DataModules[i].Components[j] as TClientDataSet ).FieldCount - 1 do
        begin
         Tabela := IdentificarNomeTabela( ( Screen.DataModules[i].Components[j] as TClientDataSet ).Name );
         Campo  := (Screen.DataModules[i].Components[j] as TClientDataSet ).Fields[x].FieldName;

         if cds.FindKey([ Tabela, Campo] ) then
            ( Screen.DataModules[i].Components[j] as TClientDataSet ).Fields[x].DisplayLabel := cds.FieldByName('NOVONOMECAMPO').AsString;
        end;
       end;
  end;
  cds.Close;
 finally
  FreeAndNil( cds );
 end;
end;

procedure AtualizarDicionario( NomeTabela : String; cdsTabela : TClientDataSet );
var i : Integer;
    SqlDicionario, Campo : String;
    cds : TClientDataSet;

 procedure AdicionarListaDicionario;
 begin
  SqlDicionario := 'SELECT NOMETABELA,NOMECAMPO, NOVONOMECAMPO ' +
                   ' FROM AS_DICIONARIO ' +
                   ' WHERE NOMETABELA = ' + QuotedStr( AnsiUpperCase( NomeTabela ) );

  ExecDynamicProvider( -1, SqlDicionario, cds );

  cds.AddIndex('idx1','NOMETABELA;NOMECAMPO', [ixCaseInsensitive],'','',0);
  cds.IndexName := 'idx1';
 end;

begin
 cds := nil;
 try
  AdicionarListaDicionario;

  for i := 0 to cdsTabela.FieldCount - 1 do
  begin
   Campo := cdsTabela.Fields.Fields[i].FieldName;

   if cds.FindKey([ AnsiUpperCase( NomeTabela ), Campo] ) then
      cdsTabela.Fields.Fields[i].DisplayLabel := cds.FieldByName('NOVONOMECAMPO').AsString;
  end;
  cds.Close;
 finally
  FreeAndNil( cds );
 end;
end;

procedure AdicDicionarioPesq( NomeTabela, NomeTabelaPesq : String;
 cdsTabela : TClientDataSet; var cdsDic : TClientDataSet );
var i : Integer;
    SqlDicionario, Campo : String;
    cds : TClientDataSet;

 procedure AdicionarListaDicionario;
 begin
  SqlDicionario := 'SELECT NOMETABELA,NOMECAMPO, NOVONOMECAMPO ' +
                   ' FROM AS_DICIONARIO ' +
                   ' WHERE NOMETABELA = ' + QuotedStr( AnsiUpperCase( NomeTabela ) );

  ExecDynamicProvider( -1, SqlDicionario, cds );

  cds.AddIndex('idx1','NOMETABELA;NOMECAMPO', [ixCaseInsensitive],'','',0);
  cds.IndexName := 'idx1';
 end;

begin
 cds := nil;
 cdsDic.Open;
 try
  AdicionarListaDicionario;

  for i := 0 to cdsTabela.FieldCount - 1 do
  begin
   Campo := AnsiUpperCase( cdsTabela.Fields.Fields[i].FieldName );

   if not cds.FindKey([ AnsiUpperCase( NomeTabela ), Campo] ) then
      begin
       cdsDic.Insert;
       cdsDic.FieldByName('NOMETABELA').Value          := NomeTabela;
       cdsDic.FieldByName('NOMECAMPO').Value           := Campo;
       cdsDic.FieldByName('NOMETABELAPESQ').Value      := NomeTabelaPesq;
       cdsDic.FieldByName('NOMECAMPOTABELAPESQ').Value := Campo;
       cdsDic.Post;
      end;
  end;

  cds.Close;
  cdsDic.Close;
 finally
  FreeAndNil( cds );
 end;
end;

procedure CriaEspecifico( frmEspecificoClass : TComponentClass;  frmEspecificoName : TForm; cdsEspecifico : TClientDataSet;   dsEspecifico : TDataSource; frmCaption : String);
begin
 // Não Permite abrir apenas uma instancia do mesmo DataSource
 if dsEspecifico.Tag = 0 then {Controla se o formulario ja não esta criado pelo DataSource corrente}
    begin
     Application.CreateForm( TfrmPadraoPesquisa, frmPadraoPesquisa );

     frmPadraoPesquisa.FormOwnerEspec  := frmEspecificoName;
     frmPadraoPesquisa.ClassOwnerEspec := frmEspecificoClass;
     frmPadraoPesquisa.FDataSet        := cdsEspecifico;
     frmPadraoPesquisa.FDataSource     := dsEspecifico;
     frmPadraoPesquisa.FClienteDataSet := DataInspector;
     frmPadraoPesquisa.Caption         := frmCaption;
     frmPadraoPesquisa.Show;
     dsEspecifico.Tag := 1;
    end
 else
    frmPadraoPesquisa.Show;
end;


procedure CriarEdicaoPadrao( dsEdt : TDataSource ; cdsEdt : TClientDataSet );
begin
 Application.CreateForm(TfrmPadraoEdicao, frmPadraoEdicao);

 frmPadraoEdicao.DataSource := dsEdt;
 frmPadraoEdicao.tmbEdicaoBottom1.TtmbClientDataSet := cdsEdt;
 frmPadraoEdicao.Show;
end;

procedure CriaFormLookUp(const DataSource: TDataSource; Campo: TField; NomeCampoRetorno: String); overload
var DataSetOpen: Boolean;
begin
 DataSetOpen                  := TDataSet(DataSource.DataSet).Active;
 Application.CreateForm(TfrmPesquisaCampo, frmPesquisaCampo );
 frmPesquisaCampo.FDataSet    := TClientDataSet(DataSource.DataSet);
 frmPesquisaCampo.FDataSource := DataSource;
 if not Campo.IsNull then
    begin
     frmPesquisaCampo.tmbManutTop1.TtmbCamposPesquisa := Campo.FieldName;
     frmPesquisaCampo.tmbManutTop1.TTmbValuesPesquisa := Campo.Value;
    end;

 if frmPesquisaCampo.ShowModal = mrOk then
    begin
     if Campo.DataSet.State in [dsInsert, dsEdit] then
        try
         Campo.Value := DataSource.DataSet.FieldByName( Campo.FieldName ).Value;
        Except
         On E:Exception do
          Application.ProcessMessages;
         end;
     if not DataSetOpen then
        DataSource.DataSet.Close;
    end;
end;

procedure CriaFormLookUp( NomeTabela : String; Sql : String; Campo: TField;
 NomeCampoPesquisa : String; NomeCampoRetorno: String ); overload
var ds : TDataSource;
    cds  : TClientDataSet;
begin
 ds   := TDataSource.Create( Application );

 Cds  := nil;
 try
  ExecDynamicProvider( -1, SQL, Cds );

  cds.Name := NomeTabela;

  ds.DataSet := Cds;

  if not Cds.IsEmpty then
     begin
      Application.CreateForm(TfrmPesquisaCampo, frmPesquisaCampo );
      frmPesquisaCampo.FDataSet    := cds;
      frmPesquisaCampo.FDataSource := ds;
      frmPesquisaCampo.FSQLParam   := Sql;
      if not Campo.IsNull then
         begin
          frmPesquisaCampo.tmbManutTop1.TtmbCamposPesquisa := Campo.FieldName;
          frmPesquisaCampo.tmbManutTop1.TTmbValuesPesquisa := Campo.Value;
         end;

      if frmPesquisaCampo.ShowModal = mrOk then
         begin
          if Campo.DataSet.State in [dsInsert, dsEdit] then
             try
              Campo.Value := cds.FieldByName( NomeCampoPesquisa ).Value;
             except
              on E:Exception do
               Application.ShowException( E );
               // ProcessMessages;
              end;
             cds.Close;
         end;
     end;
 finally
  FreeAndNil( ds );
  FreeAndNil( cds );
 end;
end;

function ExecDynamicProvider(iRecords: Integer;
                             sCommandText: WideString;
                             var cdsGeral: TClientDataSet): integer;
var OleVar : OleVariant;
    LogSQL : string;
begin
 {
 * Parâmetros:
   iRecords = nº de registro a retornar
   sCommandText = instrução SQL a ser executada
   cdsGeral = ClientDataSet para receber o DataPacket

 * Retorno:
   -1   = erro na execução
   0    = consulta não retornou registros
   1..n = número de registros retornados pela consulta

 * Obs:
   A ativação ocorre automaticamente ao atribuir o "Data";
 }

 Result := -1;
 OleVar := null;

 Screen.Cursor := crHourGlass;
 try
  try
   // Gravar LOG do SQL executado
   LogSQL := UpperCase( LoadStringFromRegistry( Registro_Principal, 'LOG_SQL', 'NAO' ) );

   if LogSQL = 'SIM' then
      StringToSQLFile( sCommandText, 'SQL' + FormatDateTime( 'yyyymmddHhhnnss', Now ) + '.SQL' );

   // Executando SQL
   OleVar := pCnnMain.AppServer.IExecDynamicProvider( Result, sCommandText);

   // Testando se cdsGeral está criado
   if not Assigned(cdsGeral) then
      cdsGeral := TClientDataSet.Create(nil);

   // Testando se cdsGeral está ativo
   if cdsGeral.Active then
      cdsGeral.Close;

   // Atribuindo e ativando
   cdsGeral.Data := OleVar;
  except
   on E:Exception do
   begin
    StringToSQLFile( sCommandText );
    raise Exception.Create( E.Message + #13  );
   end;
  end;
 finally
  Screen.Cursor := crDefault;
 end;
end;

procedure ExecDML( CommandText: WideString );
begin
 {
 * Parâmetros:
   CommandText = instrução SQL a ser executada

 * Obs:
   Rotina utilizada para fazer transações curtas e rápidas;
 }
 Screen.Cursor := crHourGlass;
 try
  try
   { Executando SQL }
   pCnnMain.AppServer.IExecDML(CommandText, Unassigned );

  except
   on E:Exception do
      raise Exception.Create( E.Message + #13 + 'SQL : ' + CommandText );
  end;
 finally
  Screen.Cursor := crDefault;
 end;
end;

procedure ExecDMLCreateCDS( var cdsParams : TClientDataSet );
begin
 cdsParams.FieldDefs.Add('Value',     ftMemo,  50000,  True);
 cdsParams.FieldDefs.Add('FieldType', ftString,   50, True);
 cdsParams.FieldDefs.Add('ParamName', ftString,   50, True);
 cdsParams.CreateDataSet;
end;

procedure ExecDMLAddParams( var cdsParams : TClientDataSet; Value : WideString; FieldType : String;
 ParamName : String; ParamType : String );
begin
 if cdsParams.FieldCount < 1 then
    ExecDMLCreateCDS( cdsParams );

 cdsParams.Insert;
 cdsParams.FieldByName('FieldType').Value := FieldType;
 cdsParams.FieldByName('Value').Value     := Value;
 cdsParams.FieldByName('ParamName').Value := ParamName;
 cdsParams.Post;
end;

procedure ExecDML( CommandText: WideString; cdsParams : TClientDataSet );
begin
 Screen.Cursor := crHourGlass;
 try
  try

   { Executando SQL }
   pCnnMain.AppServer.IExecDML( CommandText, cdsParams.Data );

  except
   on E:Exception do
      ShowMessage( E.Message + #13 + 'SQL : ' + CommandText );
  end;
 finally
  Screen.Cursor := crDefault;
 end;
end;

function ExecSequencia( Value : WideString ) : Integer;
var Cds  : TClientDataSet;
    iSql : String;
begin
 Cds     := nil;
 iSql   := 'SELECT ' + Value + '.NEXTVAL VALOR FROM DUAL';

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  Result := Cds.FieldByName( 'VALOR' ).AsInteger;

  cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure ExecProcedure( PackageName, StoredProcName, SchemaName : WideString );
begin
 {
 * Parâmetros:
   CommandText = instrução SQL a ser executada

 * Obs:
   Rotina utilizada para fazer transações curtas e rápidas;
 }
 Screen.Cursor := crHourGlass;
 try
  try
   { Executando SQL }
   pCnnMain.AppServer.IExecProcedure( PackageName, StoredProcName, SchemaName );

  except
   on E:Exception do
      raise Exception.Create( E.Message + #13 + 'SQL : ' + PackageName );
  end;
 finally
  Screen.Cursor := crDefault;
 end;
end;

procedure AdicionarCamposCombo( Sender : TObject ; Campos : TFields ); overload
var i : Integer;
begin
 TComboBox( Sender ).Items.Clear;
 for i := 0 to Campos.Count - 1 do
     TComboBox( Sender ).Items.Add( Campos[i].DisplayLabel );
end;

procedure AdicionarCamposCombo( Sender : TObject ; iSQL, CampoRetorno : String ); overload
var cds : TClientDataSet;
begin
 try
  try
   cds := nil;
   ExecDynamicProvider( -1,iSQL,cds );
   if not cds.IsEmpty then
      begin
       TComboBox( Sender ).Items.Clear;
       cds.First;
       while not cds.Eof do
       begin
        TComboBox( Sender ).Items.Add( cds.FieldByName(CampoRetorno).AsString );
        cds.Next;
       end;
      end;
      cds.Close;
   except
    on E : Exception do
       raise Exception.Create(E.Message);
   end;
  finally
   FreeAndNil( cds );
  end;
end;

procedure OrdenaFieldDBGrid(Column: TColumn; Ds : TDataSource; Grid : TDBGrid);
var NewColor : TColor;
    i        : Integer;
    AddTituloIdx : String;
begin
 if Ds.DataSet.IsEmpty then
    exit;

 NewColor     := $00FFC8AA;
 AddTituloIdx := '';

 for i := 0 to Grid.Columns.Count-1 do
 begin
  if ( not ( Grid.Columns[i].Field.DataType in [ftBlob, ftMemo] ) ) and
     ( Grid.Columns[i].Field.FieldKind = fkData ) and
     ( Grid.Columns[i].Title.Color = NewColor ) then
     begin
      // Tirar do índice e voltar a cor normal
      if Column.FieldName <> Grid.Columns[i].FieldName then
         AddTituloIdx := AddTituloIdx + Grid.Columns[i].FieldName + ';'
      else
         begin
          Grid.Columns[i].Title.Color := Grid.FixedColor;
          exit;
         end;
     end
  else
     Grid.Columns[i].Title.Color := Grid.FixedColor;
 end;

 TClientDataSet(Ds.DataSet).IndexFieldNames := '';

 if not ( Column.Field.DataType in [ftBlob, ftMemo] ) then
    if ( Column.Field.FieldKind = fkData ) then
        begin
         if AddTituloIdx <> ''  then
            AddTituloIdx := AddTituloIdx + Column.FieldName
         else
            AddTituloIdx := Column.FieldName;

         TClientDataSet(Ds.DataSet).IndexFieldNames := AddTituloIdx;
         Column.Title.Color := NewColor;
        end;
end;

procedure ExecLoockupPesquisa(dsPesquisa : TDataSource; LckCamposPesquisa : String; LckValuesPesquisa : String; pCaption : String = '');
begin
 Application.CreateForm(TfrmPadraoPesquisa, frmPadraoPesquisa);
 frmPadraoPesquisa.ClassOwnerEspec    := TFrmPadraoEdicao;
 frmPadraoPesquisa.FormOwnerEspec     := FrmPadraoEdicao;
 frmPadraoPesquisa.FDataSource        := dsPesquisa;
 frmPadraoPesquisa.FDataSet           := TClientDataSet(dsPesquisa.DataSet);
 frmPadraoPesquisa.FClienteDataSet    := TClientDataSet(dsPesquisa.DataSet);
 frmPadraoPesquisa.TtmbCamposPesquisa := LckCamposPesquisa;
 frmPadraoPesquisa.TTmbValuesPesquisa := LckValuesPesquisa;
 frmPadraoPesquisa.Show;
 if not dsPesquisa.DataSet.IsEmpty then
    frmPadraoPesquisa.PesquisarLookup := true;
 frmPadraoPesquisa.RetornarVisivel    := true;
 (*if Trim(pCaption) <> '' then
    frmPadraoPesquisa.Caption := 'Manutenção Cadastral  - Pesquisa de '+ pCaption;*)
end;

{ 1º Tabela Destino (cpDestino) Campos onde serão gravados na Tabela de Destino
  2º Tabela Origem  (cpOrigem)  Campos onde serão retornados da Tabela de Origem }
procedure ExecLoockupRetorno(cdsDestino : TClientDataSet; LckRetCamposDestino, LckRetCamposOrigem : String );
begin
 frmPadraoPesquisa.cdsDestino := cdsDestino;
 frmPadraoPesquisa.cpDestino  := LckRetCamposDestino;
 frmPadraoPesquisa.cpOrigem   := LckRetCamposOrigem;
end;


function RetornaData(Periodo: Char):String;
var Ano, Mes, Dia : Word;
begin
 DecodeDate(Date, Ano, Mes, Dia );
 Case Mes of
  1:  Result := 'Janeiro';
  2:  Result := 'Fevereiro';
  3:  Result := 'Março';
  4:  Result := 'Abril';
  5:  Result := 'Maio';
  6:  Result := 'Junho';
  7:  Result := 'Julho';
  8:  Result := 'Agosto';
  9:  Result := 'Setembro';
  10: Result := 'Outubro';
  11: Result := 'Novembro';
  12: Result := 'Dezembro';
 end;
 Case Periodo of
  'D','d'         : Result := intToStr(DIA) +' ';
  'A','a','Y','y' : Result := intToStr(ANO) +' ';
 end;
end;

procedure OpenXMLFile( Open : Boolean; xml, idx : String; var cds : TClientDataSet );
begin
 if FileExists( Diretorio_OFFLINE + xml ) then
    begin
     cds.LoadFromFile( Diretorio_OFFLINE + xml );
     cds.Open
    end
 else
    if not Open then
       cds.CreateDataSet
    else
       raise Exception.Create( 'Problemas na leitura da Tabela ' + xml );

 if idx <> '' then
    begin
     cds.AddIndex( 'idx1', idx, [ixPrimary],'','',0);
     cds.IndexFieldNames := idx;
     cds.IndexName := 'idx1';
    end;
end;

procedure BackupXMLDespesa( Arquivo : String; cds : TClientDataSet );
begin
 Arquivo := Direitorio_BACKUP + Arquivo;
 if not DirectoryExists( Direitorio_BACKUP ) then
    if not CreateDir( Direitorio_BACKUP ) then
       raise Exception.Create('Não é possível criar o diretório BACKUP');

 if not cds.IsEmpty then
    cds.SaveToFile( Arquivo );
end;

procedure GravarDiskete( Arquivo : string; cds : TClientDataSet );
begin
 Screen.Cursor := crHourGlass;
 try
  if FileExists( Arquivo ) then
     begin
      if MessageDlg('Já existe o arquivo na unidade A:' + #13 +
                    'Deseja excluir o  arquivo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
         DeleteFile( Arquivo  )
      else
         Exit;
     end;

  cds.SaveToFile( Arquivo );

  BackupXMLDespesa( Arquivo, cds );

  cds.EmptyDataSet;
 finally
  Screen.Cursor := crDefault;
 end;
end;

procedure RecuperarDisquete( Arquivo : String; var cds : TClientDataSet );
begin
 Screen.Cursor := crHourGlass;
 try
  try
   cds.LoadFromFile( UnidadeDisquete + Arquivo );
  except
   on E: Exception do
   begin
    MessageDlg( 'Não é possível recuperar as informação da unidade de disquete.' + #13 +
                'As informações serão recuperadas da unidade local.', mtWarning, [mbOK], 0 );

    cds.LoadFromFile( Diretorio_OFFLINE + Arquivo );
   end;
  end;

 finally
  Screen.Cursor := crDefault;
 end;
end;

procedure TimerBackupXML( Arquivo : String; cds : TClientDataSet );
begin
 Screen.Cursor := crHourGlass;
 try
  cds.SaveToFile( Diretorio_OFFLINE +  Arquivo );

  BackupXMLDespesa(  Arquivo, cds );
 finally
  Screen.Cursor := crDefault;
 end;
end;

end.
