unit u_dmAS;

interface

uses
  SysUtils, Classes, DB, DBClient, MConnect;

type
  TdmAS = class(TDataModule)
    shdcnnAS: TSharedConnection;
    cdsSimilar: TClientDataSet;
    dsUsuario: TDataSource;
    dsUsuarioDireito: TDataSource;
    dsDireito: TDataSource;
    dsSimilar: TDataSource;
    cdsUserAtivo: TClientDataSet;
    dsUserAtivo: TDataSource;
    cdsDicionario: TClientDataSet;
    dsDicionario: TDataSource;
    cdsDicionarioDICIONARIOID: TBCDField;
    cdsDicionarioNOMETABELA: TStringField;
    cdsDicionarioNOMECAMPO: TStringField;
    cdsDicionarioNOVONOMECAMPO: TStringField;
    cdsDicionarioITENS: TStringField;
    cdsDicionarioTITULOITENS: TStringField;
    cdsUsuario: TClientDataSet;
    cdsUsuarioDireito: TClientDataSet;
    cdsUsuarioDireitoUSUARIOID: TStringField;
    cdsUsuarioDireitoDIREITOID: TStringField;
    cdsUsuarioDireitoDIREITOSECUNDARIOID: TStringField;
    cdsDireito: TClientDataSet;
    cdsDireitoDIREITOID: TStringField;
    cdsDireitoDIREITOSECUNDARIOID: TStringField;
    cdsDireitoTIPO: TStringField;
    cdsDireitoDESCRICAO: TStringField;
    cdsSimilarUSUARIOID: TStringField;
    cdsSimilarDIREITOID: TStringField;
    cdsSimilarDIREITOSECUNDARIOID: TStringField;
    cdsUserAtivoUSERATIVOID: TBCDField;
    cdsUserAtivoUSUARIOID: TStringField;
    cdsUserAtivoDATACONECCAO: TSQLTimeStampField;
    cdsUserAtivoIP: TStringField;
    cdsUserAtivoNOMEMAQUINA: TStringField;
    cdsUsuarioUSUARIOID: TStringField;
    cdsUsuarioENTIDADEID: TBCDField;
    cdsUsuarioL_NOME: TStringField;
    cdsUsuarioSENHA: TStringField;
    cdsUsuarioREQUERSENHA: TBCDField;
    cdsUsuarioBLOQUEADO: TBCDField;
    cdsUsuarioBLOQMSG: TStringField;
    cdsUsuarioFOTO: TBlobField;
    cdsUsuarioACESSOTOTAL: TBCDField;
    cdsUsuariosqldtsUsuarioDireito: TDataSetField;
    cdsUsuarioMUDARSENHA: TBCDField;
    cdsConfig: TClientDataSet;
    dsConfig: TDataSource;
    cdsDicionarioNOMETABELAPESQ: TStringField;
    cdsDicionarioNOMECAMPOTABELAPESQ: TStringField;
    cdsConfigEMPRESAID: TBCDField;
    cdsConfigL_NOMEFANTASIA: TStringField;
    cdsConfigTIPOOSID: TStringField;
    cdsConfigL_TIPOOS_ABERTURA: TStringField;
    cdsConfigFILIALID: TBCDField;
    cdsConfigL_FILIAL: TStringField;
    cdsConfigTIPOOSGARANTIAID: TStringField;
    cdsConfigL_TIPOOS_GARANTIA: TStringField;
    cdsConfigSTATUS: TBCDField;
    cdsConfigDIRETORIOEXPORT: TStringField;
    cdsConfigDIASVALIDADEOS: TBCDField;
    cdsConfigMESATUAL: TBCDField;
    cdsConfigVLRDIARIA: TBCDField;
    cdsConfigVLRREFEICOES: TBCDField;
    cdsConfigVLRKM: TBCDField;
    cdsConfigKMID: TBCDField;
    cdsConfigL_KM: TStringField;
    cdsConfigADIANTAMENTOID: TBCDField;
    cdsConfigL_ADIANTAMENTO: TStringField;
    cdsConfigMEMOPAGARID: TBCDField;
    cdsConfigL_MEMOPAGAR: TStringField;
    cdsConfigMEMORECEBERID: TBCDField;
    cdsConfigL_MEMORECEBER: TStringField;
    cdsConfigHORASCREDID: TBCDField;
    cdsConfigL_HORASCRED: TStringField;
    cdsConfigPP_MARGEMCABECALHO: TBCDField;
    cdsConfigPP_MARGEMPARAGRAFO: TBCDField;
    cdsConfigPP_ESTILOFONTE: TStringField;
    cdsConfigPP_TAMANHOFONTE: TBCDField;
    cdsConfigPP_IMPRIMIR: TBCDField;
    cdsConfigPP_VISUALIZAR: TBCDField;
    cdsConfigPP_DIRETORIODESTINO: TStringField;
    cdsConfigPP_NOMEGERENTE: TStringField;
    cdsConfigPP_CARGO: TStringField;
    cdsPesquisa: TClientDataSet;
    dsPesquisa: TDataSource;
    cdsPesquisaPESQUISAID: TBCDField;
    cdsPesquisaNOMEPESQUISA: TStringField;
    cdsPesquisaTABELADICIONARIOID: TStringField;
    cdsPesquisaISQL: TMemoField;
    cdsPesquisaDATACRIACAO: TSQLTimeStampField;
    cdsPesquisaDATAALTERACAO: TSQLTimeStampField;
    cdsPesquisaUSUARIO: TStringField;
    cdsUsuarioEMPRESAID: TBCDField;
    cdsUsuarioL_NOMEFANTASIA: TStringField;
    cdsConfigRS_DATAFECHAMENTO: TSQLTimeStampField;
    cdsUsuarioPASSWORD: TStringField;
    cdsUsuarioEMAIL: TStringField;
    cdsConfigHTMLPORTAL: TMemoField;
    cdsUsuarioPORTALVISAOID: TBCDField;
    cdsUsuarioNIVELACESSOPORTALID: TBCDField;
    procedure cdsUsuarioAfterPost(DataSet: TDataSet);
    procedure cdsUsuarioReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsUsuarioENTIDADEIDValidate(Sender: TField);
    procedure cdsUsuarioAfterDelete(DataSet: TDataSet);
    procedure cdsDicionarioNewRecord(DataSet: TDataSet);
    procedure cdsUsuarioNewRecord(DataSet: TDataSet);
    procedure cdsConfigFILIALIDValidate(Sender: TField);
    procedure cdsConfigTIPOOSIDValidate(Sender: TField);
    procedure cdsConfigKMIDValidate(Sender: TField);
    procedure cdsConfigADIANTAMENTOIDValidate(Sender: TField);
    procedure cdsConfigMEMOPAGARIDValidate(Sender: TField);
    procedure cdsConfigMEMORECEBERIDValidate(Sender: TField);
    procedure cdsConfigHORASCREDIDValidate(Sender: TField);
    procedure cdsConfigTIPOOSGARANTIAIDValidate(Sender: TField);
    procedure cdsPesquisaNewRecord(DataSet: TDataSet);
    procedure cdsPesquisaBeforePost(DataSet: TDataSet);
    procedure cdsPesquisaBeforeDelete(DataSet: TDataSet);
    procedure cdsUsuarioEMPRESAIDValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmAS: TdmAS;

implementation

uses u_dmGSI, u_ReconcileError, FuncoesCliente;

{$R *.dfm}

procedure TdmAS.cdsUsuarioAfterPost(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmAS.cdsUsuarioReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
 Action := HandleReconcileError( DataSet, UpdateKind, E);
end;

procedure TdmAS.cdsUsuarioENTIDADEIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvEntidade' ),
                            InstSQL );

 try
  if cdsUsuarioENTIDADEID.IsNull then
     exit;

  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsUsuarioL_NOME.Value := Cds.FieldByName('NOME').AsString
  else
     begin
      cdsUsuarioL_NOME.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmAS.cdsUsuarioAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmAS.cdsDicionarioNewRecord(DataSet: TDataSet);
var iSql : String;
    Cds  : TClientDataSet;
begin
 iSQL := 'SELECT NVL( MAX( DICIONARIOID ), 0 ) ' +
          ' FROM AS_DICIONARIO ';
 Cds := TClientDataSet.Create( nil );
 try
  ExecDynamicProvider( -1, iSQL, Cds );
  if not Cds.IsEmpty then
     cdsDicionarioDICIONARIOID.Value := Cds.Fields[0].Value + 1;
 finally
  Cds.Close;
  FreeAndNil( Cds );
 end;
end;

procedure TdmAS.cdsUsuarioNewRecord(DataSet: TDataSet);
begin
 cdsUsuarioREQUERSENHA.Value := 1;
 cdsUsuarioMUDARSENHA.Value  := 1;
end;

procedure TdmAS.cdsConfigFILIALIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvFilial' ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsConfigL_FILIAL.Value := Cds.FieldByName('NOMEFANTASIA').AsString
  else
     begin
      cdsConfigL_FILIAL.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmAS.cdsConfigTIPOOSIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' +  QuotedStr( TField( Sender ).AsString );
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvTipoOS' ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsConfigL_TIPOOS_ABERTURA.Value := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsConfigL_TIPOOS_ABERTURA.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmAS.cdsConfigKMIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := ' OPERACAOID =' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvOperacao' ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsConfigL_KM.Value := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsConfigL_KM.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmAS.cdsConfigADIANTAMENTOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := ' OPERACAOID =' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvOperacao' ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsConfigL_ADIANTAMENTO.Value := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsConfigL_ADIANTAMENTO.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmAS.cdsConfigMEMOPAGARIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := ' OPERACAOID =' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvOperacao' ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsConfigL_MEMOPAGAR.Value := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsConfigL_MEMOPAGAR.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmAS.cdsConfigMEMORECEBERIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := ' OPERACAOID =' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvOperacao' ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsConfigL_MEMORECEBER.Value := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsConfigL_MEMORECEBER.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmAS.cdsConfigHORASCREDIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := ' OPERACAOID =' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvOperacao' ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsConfigL_HORASCRED.Value := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsConfigL_HORASCRED.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmAS.cdsConfigTIPOOSGARANTIAIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'TIPOOSID = ' +  QuotedStr( TField( Sender ).AsString );
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvTipoOS' ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsConfigL_TIPOOS_GARANTIA.Value := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsConfigL_TIPOOS_GARANTIA.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;

end;

procedure TdmAS.cdsPesquisaNewRecord(DataSet: TDataSet);
begin
 cdsPesquisaPESQUISAID.AsInteger         := ContadorDB('AS_PESQUISA','PESQUISAID','');
 cdsPesquisaDATACRIACAO.AsDateTime       := pCnnMain.AppServer.IServerDate;
 cdsPesquisaUSUARIO.Value                := dmGsi.UsuarioAtivo;
end;

procedure TdmAS.cdsPesquisaBeforePost(DataSet: TDataSet);
begin
 cdsPesquisaDATAALTERACAO.AsDateTime := pCnnMain.AppServer.IServerDate;
end;

procedure TdmAS.cdsPesquisaBeforeDelete(DataSet: TDataSet);
var iUpd : String;
begin
 iUpd := 'DELETE FROM AS_DICIONARIO WHERE NOMETABELA = ' + QuotedStr( 'AS_' + cdsPesquisaTABELADICIONARIOID.AsString );

 ExecDML( iUpd );
 cdsDicionario.Refresh;
end;

procedure TdmAS.cdsUsuarioEMPRESAIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 if  cdsUsuarioEMPRESAID.IsNull then
     exit;

 Cds     := nil;
 InstSQL := ' EF_EMPRESA.EMPRESAID = ' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvEmpresa' ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsUsuarioL_NOMEFANTASIA.Value := Cds.FieldByName('NOMEFANTASIA').AsString
  else
     begin
      cdsUsuarioL_NOMEFANTASIA.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;

end;

end.
