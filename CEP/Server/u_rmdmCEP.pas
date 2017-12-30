unit u_rmdmCEP;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, CEPSERV_TLB, StdVcl, DBXpress, Provider, SqlExpr, FMTBcd, DB,
  CoolTrayIcon, Dialogs, MidasLib, WideStrings;

type
  TCEPSRV = class(TRemoteDataModule, ICEPSRV)
    sqlGeral: TSQLQuery;
    dssqlcdsPesq: TDataSource;
    sqlPesq: TSQLQuery;
    sqlPesqSIGLAUFID: TStringField;
    sqlPesqNOMELOCALIDADE: TStringField;
    sqlPesqNOMEUF: TStringField;
    sqlPesqCEPID: TBCDField;
    sqlPesqNOMEPAISPORTUGUES: TStringField;
    provPesq: TDataSetProvider;
    sqlUF: TSQLQuery;
    sqlUFSIGLAUFID: TStringField;
    sqlUFSIGLAPAISID: TStringField;
    sqlUFNOMEUF: TStringField;
    provCEP: TDataSetProvider;
    provUF: TDataSetProvider;
    sqlCEP: TSQLQuery;
    cdsCEP: TClientDataSet;
    sqlPesqTIPOLOGRADOURO: TStringField;
    sqlPesqPREPOSICAO: TStringField;
    sqlPesqTITULOPATENTE: TStringField;
    sqlPesqNOMELOGRADOURO: TStringField;
    sqlPesqBAIRROLOGRADOURO: TStringField;
    sqlconnCEP: TSQLConnection;
    procedure RemoteDataModuleCreate(Sender: TObject);
    procedure RemoteDataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    procedure GrvBD( Txt : String ; IdxNode : Integer );
    procedure ExecQryParam( Cmd : String );
  protected
    class procedure UpdateRegistry(Register: Boolean; const ClassID, ProgID: string); override;
    procedure ExecSelect(const Cmd: WideString); safecall;
    procedure ExecPesq(const UF, CEP, Localidade, Logradouro, Bairro,
      TipoLogra: WideString); safecall;
    procedure ExecImportCEP(const UF, Diretorio: WideString; QtdCommit,
      Item: Integer); safecall;
  public
    { Public declarations }
  end;

implementation

uses u_principal;

{$R *.DFM}

class procedure TCEPSRV.UpdateRegistry(Register: Boolean; const ClassID, ProgID: string);
begin
  if Register then
  begin
    inherited UpdateRegistry(Register, ClassID, ProgID);
    EnableSocketTransport(ClassID);
    EnableWebTransport(ClassID);
  end else
  begin
    DisableSocketTransport(ClassID);
    DisableWebTransport(ClassID);
    inherited UpdateRegistry(Register, ClassID, ProgID);
  end;
end;

procedure TCEPSRV.ExecQryParam( Cmd : String );
begin
 if Cmd = '' then
    exit;

 with sqlGeral do
 begin
  if Active then
     Active := False;

  SQL.Clear;
  SQL.Add( Cmd );
  ExecSQL;
 end;
end;

procedure TCEPSRV.ExecSelect(const Cmd: WideString);
begin
 with sqlCEP do
  begin
   if Active then
      Active := False;

   SQL.Clear;
   SQL.Add( Cmd );

   Active    := True;
  end;
end;

procedure TCEPSRV.ExecPesq(const UF, CEP, Localidade, Logradouro, Bairro,
  TipoLogra: WideString);
begin
 if sqlPesq.Active then
    sqlPesq.Active := False;

 sqlPesq.SQL.Clear;
 sqlPesq.SQL.Add('SELECT ' +
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
                 '  AND (A.BAIRRODNEID = C.BAIRRODNEID) ');

 frmPrincipal.TrayIcon1.ShowBalloonHint('Parametros de Pesquisa',
        'UF :' + UF + ' CEP :' + CEP + ' Localidade :' + Localidade + ' Logradouro :' + Logradouro + ' Bairro :' + Bairro
        ,bitInfo, 10);

 if ( UF <> 'Todos' ) and ( UF <> '' ) then
    begin
     sqlPesq.SQL.Add( ' AND (A.SIGLAUFID = :pSiglaUFId ) ' );
     sqlPesq.Params.ParamValues['pSiglaUFId']  := Copy( UF, 1, 2 );
    end;

 if CEP <> '' then
    begin
     sqlPesq.SQL.Add( ' AND (A.CEPID = :pCEPId ) ' );
     sqlPesq.Params.ParamValues['pCEPId'] := CEP;
    end;

 if Localidade <> '' then
    begin
     sqlPesq.SQL.Add( ' AND (A.NOMELOCALIDADE LIKE :pLoca ) ' );
     sqlPesq.Params.ParamValues['pLoca'] := '%' + Localidade + '%';
    end;

 if Logradouro <> '' then
    begin
     sqlPesq.SQL.Add( ' AND (A.NOMELOGRADOURO LIKE :pEnd ) ' );
     sqlPesq.Params.ParamValues['pEnd'] := '%' + Logradouro + '%';
    end;

 if Bairro <> '' then
    begin
     sqlPesq.SQL.Add( ' AND (A.BAIRROLOGRADOURO LIKE :pBairro ) ' );
     sqlPesq.Params.ParamValues['pBairro'] := '%' + Bairro + '%';
    end;

 if TipoLogra <> '' then
    begin
     sqlPesq.SQL.Add( ' AND (A.TIPOLOGRADOURO = :pTipoLogra ) ' );
     sqlPesq.Params.ParamValues['pTipoLogra'] := TipoLogra;
    end;

 sqlPesq.Active := True;
end;

procedure TCEPSRV.GrvBD( Txt : String ; IdxNode : Integer );
begin
  case IdxNode of
  // Paises
  0 : begin
       cdsCEP.Fields.Fields[0].AsString := Copy( Txt,  2, 2 );
       cdsCEP.Fields.Fields[1].AsString := Copy( Txt,  4, 3 );
       cdsCEP.Fields.Fields[2].AsString := Copy( Txt,  7,72 );
       cdsCEP.Fields.Fields[3].AsString := Copy( Txt, 79,72 );
       cdsCEP.Fields.Fields[4].AsString := Copy( Txt,151,72 );
      end;

  // Unidades Federativa
  1 : begin
       cdsCEP.Fields.Fields[0].AsString  := Copy( Txt,  4, 2 );
       cdsCEP.Fields.Fields[1].AsString  := Copy( Txt,  2, 2 );
       cdsCEP.Fields.Fields[2].AsString  := Copy( Txt, 10,72 );
      end;

  // Localidades
  2 : begin
       cdsCEP.Fields.Fields[0].AsString  := Copy( Txt,  2, 2 );
       cdsCEP.Fields.Fields[1].AsString  := Copy( Txt,  4, 2 );

       if Copy( Txt, 6,01 ) <> ' ' then
          cdsCEP.Fields.Fields[2].AsInteger := StrToInt( Copy( Txt,  6, 6 ) );

       if Copy( Txt,12,01 ) <> ' ' then
          cdsCEP.Fields.Fields[3].AsInteger := StrToInt( Copy( Txt, 12, 8 ) );

       cdsCEP.Fields.Fields[4].AsString  := Copy( Txt, 20,72 );

       cdsCEP.Fields.Fields[5].AsString  := Copy( Txt,136,01 );
       cdsCEP.Fields.Fields[6].AsString  := Copy( Txt,137,01 );
      end;

  // Bairros
  3 : begin
       cdsCEP.Fields.Fields[0].AsString  := Copy( Txt,  2, 2 );

       if Copy( Txt, 4, 1 ) <> ' ' then
          cdsCEP.Fields.Fields[1].AsInteger := StrToInt( Copy( Txt,  4, 6 ) );

       if Copy( Txt,10, 1 ) <> ' ' then
          cdsCEP.Fields.Fields[2].AsInteger := StrToInt( Copy( Txt, 10, 8 ) );

       cdsCEP.Fields.Fields[3].AsString  := Copy( Txt, 18,72 );

       if Copy( Txt,90, 1 ) <> ' ' then
          cdsCEP.Fields.Fields[4].AsInteger := StrToInt( Copy( Txt, 90, 5 ) );

       if Copy( Txt,95, 1 ) <> ' ' then
          cdsCEP.Fields.Fields[5].AsInteger := StrToInt( Copy( Txt, 95, 8 ) );

       cdsCEP.Fields.Fields[6].AsString  := Copy( Txt,103,72 );
      end;

  // Logradouros
  5..31 : begin
       cdsCEP.Fields.Fields[0].AsString  := Copy( Txt,  2, 2 );

       if Copy( Txt, 4, 1 ) <> ' ' then
          cdsCEP.Fields.Fields[1].AsInteger := StrToInt( Copy( Txt,  4, 6 ) );

       if Copy( Txt,10, 1 ) <> ' ' then
          cdsCEP.Fields.Fields[2].AsInteger := StrToInt( Copy( Txt, 10, 8 ) );

       cdsCEP.Fields.Fields[3].AsString  := Copy( Txt, 18,72 );

       if Copy( Txt,90, 1 ) <> ' ' then
          cdsCEP.Fields.Fields[4].AsInteger := StrToInt( Copy( Txt, 90, 5 ) );

       if Copy( Txt,95, 1 ) <> ' ' then
          cdsCEP.Fields.Fields[5].AsInteger := StrToInt( Copy( Txt, 95, 8 ) );

       cdsCEP.Fields.Fields[6].AsString  := Copy( Txt,103,72 );

       if Copy( Txt,175, 1 ) <> ' ' then
          cdsCEP.Fields.Fields[7].AsInteger := StrToInt( Copy( Txt,175, 5 ) );

       if Copy( Txt,180, 1 ) <> ' ' then
          cdsCEP.Fields.Fields[8].AsInteger := StrToInt( Copy( Txt,180, 8 ) );

       cdsCEP.Fields.Fields[9].AsString  := Copy( Txt,188,72 );
       cdsCEP.Fields.Fields[10].AsString := Copy( Txt,260,26 );
       cdsCEP.Fields.Fields[11].AsString := Copy( Txt,286, 3 );
       cdsCEP.Fields.Fields[12].AsString := Copy( Txt,289,72 );

       if Copy( Txt,361, 1 ) <> ' ' then
          cdsCEP.Fields.Fields[13].AsInteger := StrToInt( Copy( Txt,361, 6 ) );

       if Copy( Txt,367, 1 ) <> ' ' then
          cdsCEP.Fields.Fields[14].AsInteger := StrToInt( Copy( Txt,367, 8 ) );


       cdsCEP.Fields.Fields[15].AsString := Copy( Txt,375,72 );

       cdsCEP.Fields.Fields[16].AsString := Copy( Txt,483,36 );

       if Copy( Txt,519, 1 ) <> ' ' then
          cdsCEP.Fields.Fields[17].AsInteger := StrToInt( Copy( Txt,519, 8 ) );
      end;

  // Tipos de Logradouro
  35: begin
       if Copy( Txt, 2, 1 ) <> ' ' then
          cdsCEP.Fields.Fields[0].AsInteger := StrToInt( Copy( Txt,  2, 3 ) );

       if Copy( Txt, 5, 1 ) <> ' ' then
          cdsCEP.Fields.Fields[1].AsInteger := StrToInt( Copy( Txt,  5, 3 ) );

       cdsCEP.Fields.Fields[2].AsString  := Copy( Txt, 8,72 );

       cdsCEP.Fields.Fields[3].AsString  := Copy( Txt, 80,15 );
      end;
  end;
end;

procedure TCEPSRV.ExecImportCEP(const UF, Diretorio: WideString; QtdCommit,
  Item: Integer);
var CmdConst1E,CmdConst1D, CmdConst2E,CmdConst2D, CmdConst3E,CmdConst3D,CmdConst4E,CmdConst4D, Txt, Arq : String;
    CmdTrunc,CmdTxt : String;
    F     : TextFile;
    Pular : Boolean;
    i, x  : Integer;
begin
 // Disabilitar as constraints para na utilizar DML TRUNCATE para não gerar ROLLBACK
 CmdConst1D := 'ALTER TABLE CP_UNIDADESFEDERACAO DISABLE CONSTRAINT Fk_CP_UnidadeFeder_SiglaPaisId';
 CmdConst1E := 'ALTER TABLE CP_UNIDADESFEDERACAO ENABLE  CONSTRAINT Fk_CP_UnidadeFeder_SiglaPaisId';
 CmdConst2D := 'ALTER TABLE CP_LOCALIDADES DISABLE CONSTRAINT Fk_CP_Localidades_SiglaPaisId';
 CmdConst2E := 'ALTER TABLE CP_LOCALIDADES ENABLE  CONSTRAINT Fk_CP_Localidades_SiglaPaisId';
 CmdConst3D := 'ALTER TABLE CP_LOCALIDADES DISABLE CONSTRAINT Fk_CP_Localidades_SiglaUFId';
 CmdConst3E := 'ALTER TABLE CP_LOCALIDADES ENABLE  CONSTRAINT Fk_CP_Localidades_SiglaUFId';
 CmdConst4D := 'ALTER TABLE CP_BAIRROS DISABLE CONSTRAINT Fk_CP_Bairros_SiglaUFId';
 CmdConst4E := 'ALTER TABLE CP_BAIRROS ENABLE  CONSTRAINT Fk_CP_Bairros_SiglaUFId';

 frmPrincipal.TrayIcon1.ShowBalloonHint('Parametros de Importação',
        'UF :' + UF + ' Diretório :' + Diretorio + ' Item :' + IntToStr( Item ),bitInfo, 10);

 case Item of
 0     : begin
          CmdTrunc := 'TRUNCATE TABLE CP_PAISES';
          CmdTxt   := 'SELECT * FROM CP_PAISES';
          Arq      := 'DNE_GU_PAISES.TXT';
         end;

 1     : begin
          CmdTrunc := 'TRUNCATE TABLE CP_UNIDADESFEDERACAO';
          CmdTxt   := 'SELECT * FROM CP_UNIDADESFEDERACAO';
          Arq      := 'DNE_GU_UNIDADES_FEDERACAO.TXT';
         end;

 2     : begin
          CmdTrunc := 'TRUNCATE TABLE CP_LOCALIDADES';
          CmdTxt   := 'SELECT * FROM CP_LOCALIDADES';
          Arq      := 'DNE_GU_LOCALIDADES.TXT';
         end;

 3     : begin
          CmdTrunc := 'TRUNCATE TABLE CP_BAIRROS';
          CmdTxt   := 'SELECT * FROM CP_BAIRROS';
          Arq      := 'DNE_GU_BAIRROS.TXT';
         end;

 4     : begin
          CmdTrunc := 'TRUNCATE TABLE CEP.LOGRADOUROS';
          CmdTxt   := '';
          Arq      := '';
         end;

 5..31 : begin
          CmdTrunc := '';
          CmdTxt   := 'SELECT * FROM CP_LOGRADOUROS WHERE ROWNUM = 1';
          Arq      := 'DNE_GU_' + UF + '_LOGRADOUROS.TXT';
         end;

 35    : begin
          CmdTrunc := 'TRUNCATE TABLE CP_TIPOSLOGRADOURO';
          CmdTxt   := 'SELECT * FROM CP_TIPOSLOGRADOURO WHERE ROWNUM = 1';
          Arq      := 'DNE_GU_TIPOS_LOGRADOURO.TXT';
         end;

 end;

 if not FileExists( Diretorio + '\' + Arq ) then
    Raise Exception.Create( 'Arquivos TXT dos CEP não estão disponíveis');

 if Arq <> '' then
    begin
     AssignFile( F, Diretorio + '\' + Arq );
     Reset(F);
    end;

 // Desabilitar as constraints;
 ExecQryParam( CmdConst1D );
 ExecQryParam( CmdConst2D );
 ExecQryParam( CmdConst3D );
 ExecQryParam( CmdConst4D );

 // Abilitar as constraints
 ExecQryParam( CmdTrunc );

 // Somente gerar o arquivo ( atender a node = 4 )
 if Arq = '' then
    exit;

 with cdsCEP do
 begin
  if Active then
     Active := False;

  // Executar o select no servidor de aplicação
  ExecSelect( CmdTxt );

  Active        := True;
  FetchOnDemand := True;
 end;

 Pular := True;
 i     := 0;
 x     := 0;
 while not Eof(F) do
 begin
  Readln(F, Txt);
  Inc( i );
  Inc( x );

  if Pular or ( Copy( Txt,1, 1 ) = '#' ) then
     begin
      Pular := False;
      Continue;
     end;

  cdsCEP.Insert;

  // Gravar as atualizações no BD conforme o arquivo
  GrvBD( Txt, Item );

  cdsCEP.Post;

  if i >= QtdCommit then
     begin
      cdsCEP.ApplyUpdates(-1);
      frmPrincipal.TrayIcon1.ShowBalloonHint('Estatística de Importação', ' Gravados: ' + IntToStr( x ) + ' Commit:' + IntToStr( QtdCommit ), bitInfo, 10);
      i := 0;
     end;
 end;

 if cdsCEP.ChangeCount > 0 then
    cdsCEP.ApplyUpdates(-1);

 frmPrincipal.TrayIcon1.ShowBalloonHint('Estatística de Importação', ' Gravados: ' + IntToStr( x ) + ' Commit:' + IntToStr( QtdCommit ), bitInfo, 10);    

 // Abilitar as constraints do OWNER CEP
 ExecQryParam( CmdConst1E );
 ExecQryParam( CmdConst2E );
 ExecQryParam( CmdConst3E );
 ExecQryParam( CmdConst4E );

 CloseFile(F);

end;

procedure TCEPSRV.RemoteDataModuleCreate(Sender: TObject);
begin
 sqlconnCEP.Connected :=  True;
end;

procedure TCEPSRV.RemoteDataModuleDestroy(Sender: TObject);
begin
 sqlconnCEP.Connected := False;
end;

initialization
  TComponentFactory.Create(ComServer, TCEPSRV,
    Class_CEPSRV, ciMultiInstance, tmApartment);
end.
