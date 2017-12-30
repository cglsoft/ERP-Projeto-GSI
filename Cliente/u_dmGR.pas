unit u_dmGR;

interface

uses
  SysUtils, Classes, DB, DBClient, MConnect, Dialogs;

type
  TdmGR = class(TDataModule)
    cdsConfigEleicao: TClientDataSet;
    dsConfigEleicao: TDataSource;
    shdcnnGR: TSharedConnection;
    cdsConfigEleicaoTIPOELEICAOATUALD: TBCDField;
    cdsConfigEleicaoL_DESCRICAOTIPOELEICAO: TStringField;
    cdsConfigEleicaoBLOQUEARVOTACAO: TBCDField;
    cdsConfigEleicaoDTINICIOVIGENCIA: TSQLTimeStampField;
    cdsConfigEleicaoDTFINALVIGENCIA: TSQLTimeStampField;
    cdsConfigEleicaoUSUARIO: TStringField;
    cdsGrupoEleicao: TClientDataSet;
    dsGrupoEleicao: TDataSource;
    cdsGrupoEleicaoGRUPOELEICAOID: TBCDField;
    cdsGrupoEleicaoDESCRICAO: TStringField;
    cdsGrupoEleicaoUSUARIO: TStringField;
    cdsEleitor: TClientDataSet;
    dsEleitor: TDataSource;
    cdsEleitorELEITORID: TBCDField;
    cdsEleitorL_CPFCNPJ: TStringField;
    cdsEleitorL_NOMEELEITOR: TStringField;
    cdsEleitorGRUPOELEICAOID: TBCDField;
    cdsEleitorL_DESCRICAOGRUPOELEICAO: TStringField;
    cdsEleitorUSUARIO: TStringField;
    cdsTipoEleicao: TClientDataSet;
    cdsVoto: TClientDataSet;
    cdsTipoEleicaoTIPOELEICAOID: TBCDField;
    cdsTipoEleicaoDESCRICAO: TStringField;
    cdsTipoEleicaoDTINICIOVIGENCIA: TSQLTimeStampField;
    cdsTipoEleicaoDTFINALVIGENCIA: TSQLTimeStampField;
    cdsTipoEleicaoUSUARIO: TStringField;
    dsTipoEleicao: TDataSource;
    dsVoto: TDataSource;
    cdsVotoTIPOELEICAOID: TBCDField;
    cdsVotoL_DESCRICAOTIPOELEICAO: TStringField;
    cdsVotoELEITORID: TBCDField;
    cdsVotoL_CPFCNPJELEITOR: TStringField;
    cdsVotoL_NOMEELEITOR: TStringField;
    cdsVotoCANDIDATOID: TBCDField;
    cdsVotoL_CPFCNPJCANDIDATO: TStringField;
    cdsVotoL_NOMECANDIDATO: TStringField;
    cdsVotoDATAVOTO: TSQLTimeStampField;
    cdsVotoUSUARIO: TStringField;
    cdsVotoL_DESCRICAOGRUPOELEICAO: TStringField;
    cdsEleitorELEGIVEL: TBCDField;
    cdsVotoGRUPOELEICAOID: TBCDField;
    cdsNomeProg: TClientDataSet;
    dsNomeProg: TDataSource;
    cdsNomeProgNOMEPROGID: TBCDField;
    cdsNomeProgDESCRICAO: TStringField;
    cdsNomeProgUSUARIO: TStringField;
    cdsVotoNOMEPROGID: TBCDField;
    cdsVotoL_DESCRICAONOMEPROG: TStringField;
    procedure cdsConfigEleicaoReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsConfigEleicaoAfterDelete(DataSet: TDataSet);
    procedure cdsConfigEleicaoAfterPost(DataSet: TDataSet);
    procedure cdsGrupoEleicaoAfterPost(DataSet: TDataSet);
    procedure cdsGrupoEleicaoAfterDelete(DataSet: TDataSet);
    procedure cdsEleitorAfterDelete(DataSet: TDataSet);
    procedure cdsEleitorAfterPost(DataSet: TDataSet);
    procedure cdsTipoEleicaoAfterPost(DataSet: TDataSet);
    procedure cdsTipoEleicaoAfterDelete(DataSet: TDataSet);
    procedure cdsVotoAfterDelete(DataSet: TDataSet);
    procedure cdsVotoAfterPost(DataSet: TDataSet);
    procedure cdsConfigEleicaoNewRecord(DataSet: TDataSet);
    procedure cdsGrupoEleicaoNewRecord(DataSet: TDataSet);
    procedure cdsEleitorNewRecord(DataSet: TDataSet);
    procedure cdsTipoEleicaoNewRecord(DataSet: TDataSet);
    procedure cdsVotoNewRecord(DataSet: TDataSet);
    procedure cdsVotoTIPOELEICAOIDValidate(Sender: TField);
    procedure cdsVotoELEITORIDValidate(Sender: TField);
    procedure cdsConfigEleicaoTIPOELEICAOATUALDValidate(Sender: TField);
    procedure cdsVotoCANDIDATOIDValidate(Sender: TField);
    procedure cdsEleitorELEITORIDValidate(Sender: TField);
    procedure cdsEleitorGRUPOELEICAOIDValidate(Sender: TField);
    procedure cdsNomeProgAfterDelete(DataSet: TDataSet);
    procedure cdsNomeProgAfterPost(DataSet: TDataSet);
    procedure cdsNomeProgNewRecord(DataSet: TDataSet);
    procedure cdsVotoNOMEPROGIDValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure FiltroCandidato( Campo : TField );
  end;

var
  dmGR: TdmGR;

implementation

uses u_ReconcileError, u_dmGSI, FuncoesCliente, u_dmEF;

{$R *.dfm}

procedure TdmGR.FiltroCandidato( Campo : TField );
var cds : TClientDataSet;
    ISQL : String;
begin
 try
  ISQL := 'SELECT' +
          '  GR_ELEITOR.ELEITORID,' +
          '  EF_ENTIDADE.CPFCNPJ L_CPFCNPJ,' +
          '  EF_ENTIDADE.NOME L_NOMEELEITOR,' +
          '  GR_ELEITOR.GRUPOELEICAOID,' +
          '  GR_GRUPOELEICAO.DESCRICAO L_DESCRICAOGRUPOELEICAO,' +
          '  GR_ELEITOR.USUARIO' +
          '  FROM' +
          '  GR_ELEITOR GR_ELEITOR,' +
          '  EF_ENTIDADE EF_ENTIDADE,' +
          '  GR_GRUPOELEICAO GR_GRUPOELEICAO' +
          ' WHERE' +
          '  EF_ENTIDADE.ENTIDADEID(+) = GR_ELEITOR.ELEITORID' +
          '  AND GR_GRUPOELEICAO.GRUPOELEICAOID(+) = GR_ELEITOR.GRUPOELEICAOID' +
          '  AND GR_ELEITOR.ELEGIVEL = 1 ' +
          '  AND GR_GRUPOELEICAO.GRUPOELEICAOID = ' + dmGR.cdsVotoGRUPOELEICAOID.AsString;

  ExecDynamicProvider( -1, ISQL, Cds );

  // Caso o usuário não tenha nenhuma visão visualizar somente o seu RDV
  if cds.IsEmpty then
     raise Exception.Create('Não há grupo de eleição associado ao eleitor');

  CriaFormLookUp(  dmGR.cdsEleitor.Name, iSQL, Campo,'ELEITORID','CANDIDATOID' );

  if Campo.IsNull then
     raise Exception.Create('Candidato não cadastrado');

 finally
  FreeAndNil( cds );
 end;
end;

procedure TdmGR.cdsConfigEleicaoReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
 Action := HandleReconcileError( DataSet, UpdateKind, E);
end;

procedure TdmGR.cdsConfigEleicaoAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmGR.cdsConfigEleicaoAfterPost(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmGR.cdsGrupoEleicaoAfterPost(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmGR.cdsGrupoEleicaoAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmGR.cdsEleitorAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

end;

procedure TdmGR.cdsEleitorAfterPost(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

end;

procedure TdmGR.cdsTipoEleicaoAfterPost(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

end;

procedure TdmGR.cdsTipoEleicaoAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

end;

procedure TdmGR.cdsVotoAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmGR.cdsVotoAfterPost(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmGR.cdsConfigEleicaoNewRecord(DataSet: TDataSet);
begin
 cdsConfigEleicaoBLOQUEARVOTACAO.Value := 0;
 cdsConfigEleicaoUSUARIO.Value         := dmGsi.UsuarioAtivo;
end;

procedure TdmGR.cdsGrupoEleicaoNewRecord(DataSet: TDataSet);
begin
 cdsGrupoEleicaoGRUPOELEICAOID.Value := ContadorDB('GR_GRUPOELEICAO','GRUPOELEICAOID','');
 cdsGrupoEleicaoUSUARIO.Value        := dmGsi.UsuarioAtivo;
end;

procedure TdmGR.cdsNomeProgAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmGR.cdsNomeProgAfterPost(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmGR.cdsNomeProgNewRecord(DataSet: TDataSet);
begin
 cdsNomeProgNOMEPROGID.Value := ContadorDB('GR_NOMEPROG','NOMEPROGID','');
 cdsNomeProgUSUARIO.Value    := dmGsi.UsuarioAtivo;
end;

procedure TdmGR.cdsEleitorNewRecord(DataSet: TDataSet);
begin
 cdsEleitorELEGIVEL.Value := 1;
 cdsEleitorUSUARIO.Value  := dmGsi.UsuarioAtivo;
end;

procedure TdmGR.cdsTipoEleicaoNewRecord(DataSet: TDataSet);
begin
 cdsTipoEleicaoTIPOELEICAOID.Value := ContadorDB('GR_TIPOELEICAO','TIPOELEICAOID','');
 cdsTipoEleicaoUSUARIO.Value       := dmGsi.UsuarioAtivo;
end;

procedure TdmGR.cdsVotoNewRecord(DataSet: TDataSet);
begin
 cdsVotoTIPOELEICAOID.Value := cdsConfigEleicaoTIPOELEICAOATUALD.Value;
 cdsVotoELEITORID.Value     := dmGsi.FuncionarioId;
 cdsVotoDATAVOTO.AsDateTime := pCnnMain.AppServer.IServerDate;
 cdsVotoUSUARIO.Value       := dmGsi.UsuarioAtivo;
end;

procedure TdmGR.cdsVotoNOMEPROGIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'NOMEPROGID =' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( dmGR.cdsNomeProg.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );
  if not Cds.IsEmpty then
     cdsVotoL_DESCRICAONOMEPROG.Value := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsVotoL_DESCRICAONOMEPROG.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;

end;

procedure TdmGR.cdsVotoTIPOELEICAOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'TIPOELEICAOID =' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( dmGR.cdsTipoEleicao.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );
  if not Cds.IsEmpty then
     cdsVotoL_DESCRICAOTIPOELEICAO.Value := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsVotoL_DESCRICAOTIPOELEICAO.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmGR.cdsVotoELEITORIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'ENTIDADEID =' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( dmEF.cdsEntidade.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );
  if not Cds.IsEmpty then
     begin
      cdsVotoL_CPFCNPJELEITOR.Value := Cds.FieldByName('CPFCNPJ').AsString;
      cdsVotoL_NOMEELEITOR.Value    := Cds.FieldByName('NOME').AsString;

      Cds.Close;
      Cds     := nil;
      InstSQL := 'ELEITORID =' + cdsVotoELEITORID.AsString;
      iSQL    := AnalisarAddSQL( LocateSQL( dmGR.cdsEleitor.ProviderName ),
                                 InstSQL );
      ExecDynamicProvider( -1, iSQL, Cds );
      cdsVotoGRUPOELEICAOID.Value := Cds.FieldByName('GRUPOELEICAOID').AsInteger;


      Cds.Close;
      Cds     := nil;
      InstSQL := 'GRUPOELEICAOID =' + cdsVotoGRUPOELEICAOID.AsString;
      iSQL    := AnalisarAddSQL( LocateSQL( dmGR.cdsGrupoEleicao.ProviderName ),
                                 InstSQL );
      ExecDynamicProvider( -1, iSQL, Cds );
      cdsVotoL_DESCRICAOGRUPOELEICAO.Value := Cds.FieldByName('DESCRICAO').AsString;

     end
  else
     begin
      cdsVotoL_CPFCNPJELEITOR.Clear;
      cdsVotoL_NOMEELEITOR.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmGR.cdsConfigEleicaoTIPOELEICAOATUALDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'TIPOELEICAOID =' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( dmGR.cdsTipoEleicao.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );
  if not Cds.IsEmpty then
     cdsConfigEleicaoL_DESCRICAOTIPOELEICAO.Value := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsConfigEleicaoL_DESCRICAOTIPOELEICAO.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmGR.cdsVotoCANDIDATOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'ENTIDADEID =' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( dmEF.cdsEntidade.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );
  if not Cds.IsEmpty then
     begin
      cdsVotoL_CPFCNPJCANDIDATO.Value := Cds.FieldByName('CPFCNPJ').AsString;
      cdsVotoL_NOMECANDIDATO.Value    := Cds.FieldByName('NOME').AsString;

      cds.Close;
      Cds     := nil;
      InstSQL := 'ELEITORID =' + TField( Sender ).AsString;
      iSQL    := AnalisarAddSQL( LocateSQL( dmGR.cdsEleitor.ProviderName ),
                                 InstSQL );

      ExecDynamicProvider( -1, iSQL, Cds );
      if cds.RecordCount < 1 then
         raise Exception.Create('Problemas com cadastro de eleitor');

      if cds.FieldByName('GRUPOELEICAOID').AsInteger <> cdsVotoGRUPOELEICAOID.AsInteger then
         raise Exception.Create('Grupo de eleição do eleitor é diferente do candidato');

      if Cds.FieldByName('ELEGIVEL').AsInteger = 0 then
         raise Exception.Create('Candidato não pode receber votos');

     end
  else
     begin
      cdsVotoL_CPFCNPJCANDIDATO.Clear;
      cdsVotoL_NOMECANDIDATO.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmGR.cdsEleitorELEITORIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'ENTIDADEID =' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( dmEF.cdsEntidade.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );
  if not Cds.IsEmpty then
     begin
      cdsEleitorL_CPFCNPJ.Value     := Cds.FieldByName('CPFCNPJ').AsString;
      cdsEleitorL_NOMEELEITOR.Value := Cds.FieldByName('NOME').AsString;
     end
  else
     begin
      cdsEleitorL_CPFCNPJ.Clear;
      cdsEleitorL_NOMEELEITOR.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmGR.cdsEleitorGRUPOELEICAOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'GRUPOELEICAOID =' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( dmGR.cdsGrupoEleicao.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );
  if not Cds.IsEmpty then
     cdsEleitorL_DESCRICAOGRUPOELEICAO.Value := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsEleitorL_DESCRICAOGRUPOELEICAO.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

end.
