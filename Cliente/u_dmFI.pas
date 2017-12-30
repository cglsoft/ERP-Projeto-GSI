unit u_dmFI;

interface

uses
  SysUtils, Classes, DB, DBClient, MConnect;

type
  TdmFI = class(TDataModule)
    shdcnnFI: TSharedConnection;
    cdsImpostoRetido: TClientDataSet;
    dsImpostoRetido: TDataSource;
    cdsImpostoRetidoIMPOSTORETIDOID: TBCDField;
    cdsImpostoRetidoDESCRICAO: TStringField;
    cdsImpostoRetidoALIQUOTA: TFMTBCDField;
    cdsImpostoRetidoDATAVENCIMENTO: TSQLTimeStampField;
    cdsImpostoRetidoUSUARIO: TStringField;
    cdsTipoCobranca: TClientDataSet;
    cdsAcao: TClientDataSet;
    cdsFormaPagto: TClientDataSet;
    cdsFIRetencao: TClientDataSet;
    cdsProjeto: TClientDataSet;
    cdsFI: TClientDataSet;
    cdsFIParcela: TClientDataSet;
    cdsFIParcelaClasse: TClientDataSet;
    dsAcao: TDataSource;
    dsFormaPagto: TDataSource;
    cdsFormaPagtoFORMAPAGTOID: TBCDField;
    cdsFormaPagtoDESCRICAO: TStringField;
    cdsFormaPagtoUSUARIO: TStringField;
    dsTipoCobranca: TDataSource;
    cdsProjetoPROJETOID: TBCDField;
    cdsProjetoDESCRICAO: TStringField;
    cdsProjetoUSUARIO: TStringField;
    dsProjeto: TDataSource;
    cdsFIsqldtsFIRetencao: TDataSetField;
    cdsFIsqldtsFIParcela: TDataSetField;
    cdsFIParcelaFIID: TBCDField;
    cdsFIParcelaPARCELAID: TBCDField;
    cdsFIParcelaDTVENCIMENTO: TSQLTimeStampField;
    cdsFIParcelaDTPRORROGACAO: TSQLTimeStampField;
    cdsFIParcelaFORMAPAGTOID: TBCDField;
    cdsFIParcelaL_DESCRFORMAPAGTO: TStringField;
    cdsFIParcelaTIPOCOBRANCAID: TBCDField;
    cdsFIParcelaL_DESCRTIPOCOBRANCA: TStringField;
    cdsFIParcelaBANCOID: TBCDField;
    cdsFIParcelaL_NOMEBANCO: TStringField;
    cdsFIParcelaL_NUMBANCO: TStringField;
    cdsFIParcelaL_AGENCIA: TStringField;
    cdsFIParcelaL_CONTA: TStringField;
    cdsFIParcelaOBSERVACAO: TMemoField;
    cdsFIParcelaCODIGOBARRASID: TStringField;
    cdsFIParcelaTITULOCONCESSIONARIA: TBCDField;
    cdsFIParcelaLINHADIGITAVEL: TStringField;
    cdsFIParcelaAGENCIACODIGOCEDENTE: TStringField;
    cdsFIParcelaNOSSONUMERO: TStringField;
    cdsFIParcelaVLRLIQDOC: TFMTBCDField;
    cdsFIParcelaCODIGOBARRAS: TStringField;
    cdsFIParcelaUSUARIO: TStringField;
    cdsFIParcelasqldtsFIParcelaClasse: TDataSetField;
    cdsFIParcelaClasseFIID: TBCDField;
    cdsFIParcelaClassePARCELAID: TBCDField;
    cdsFIParcelaClasseITEMID: TBCDField;
    cdsFIParcelaClasseCENTROCUSTOID: TBCDField;
    cdsFIParcelaClassePROJETOID: TBCDField;
    cdsFIParcelaClasseL_DESCRPROJETO: TStringField;
    cdsFIParcelaClasseVLRPAGAMENTO: TFMTBCDField;
    cdsFIParcelaClassePERCENTUALPAGTO: TFMTBCDField;
    cdsFIParcelaClasseUSUARIO: TStringField;
    dsFI: TDataSource;
    dsFIParcela: TDataSource;
    dsFIParcelaClasse: TDataSource;
    dsFIRetencao: TDataSource;
    cdsFIRetencaoFIID: TBCDField;
    cdsFIRetencaoITEMID: TBCDField;
    cdsFIRetencaoIMPOSTORETIDOID: TBCDField;
    cdsFIRetencaoL_DESCRIMPOSTO: TStringField;
    cdsFIRetencaoL_ALIQIMPOSTO: TFMTBCDField;
    cdsFIRetencaoVLRLIQUIDOID: TFMTBCDField;
    cdsFIRetencaoHISTORICO: TMemoField;
    cdsFIRetencaoUSUARIO: TStringField;
    cdsTipoCobrancaTIPOCOBRANCAID: TBCDField;
    cdsTipoCobrancaDESCRICAO: TStringField;
    cdsTipoCobrancaUSUARIO: TStringField;
    cdsAcaoACAOID: TBCDField;
    cdsAcaoDESCRICAO: TStringField;
    cdsAcaoCONTACONTABILID: TStringField;
    cdsAcaoEXIGECENTROCUSTO: TBCDField;
    cdsAcaoRETEMIMPOSTO: TBCDField;
    cdsAcaoNUMDOCOBRIGATORIO: TBCDField;
    cdsAcaoMOVCONTASPAGAR: TBCDField;
    cdsAcaoMOVCONTASRECEBER: TBCDField;
    cdsAcaoMOVINFORMATIVO: TBCDField;
    cdsAcaoUSUARIO: TStringField;
    cdsFIFIID: TBCDField;
    cdsFIDATAREGISTRO: TSQLTimeStampField;
    cdsFIEMPRESAID: TBCDField;
    cdsFIL_NOMEEMPRESA: TStringField;
    cdsFIFILIALID: TBCDField;
    cdsFIL_NOMEFILIAL: TStringField;
    cdsFIACAOID: TBCDField;
    cdsFIL_DESCRICAOACAO: TStringField;
    cdsFIL_MOVCONTASPAGAR: TBCDField;
    cdsFIL_MOVCONTASRECEBER: TBCDField;
    cdsFIL_MOVINFORMATIVO: TBCDField;
    cdsFIFORNECEDORID: TBCDField;
    cdsFIL_NOMEFORNECEDOR: TStringField;
    cdsFINUMDOCID: TStringField;
    cdsFIDATAEMISSAOID: TSQLTimeStampField;
    cdsFISERIEDOC: TStringField;
    cdsFIDATAVENDOC: TSQLTimeStampField;
    cdsFICONDPAGTOID: TBCDField;
    cdsFIL_DESCRICAOCONDPAGTO: TStringField;
    cdsFIVLRDOC: TFMTBCDField;
    cdsFITIPOMOVIMENTO: TStringField;
    cdsFIDOCPGTOVISTA: TBCDField;
    cdsFIVLRLIQUIDO: TFMTBCDField;
    cdsFIHISTORICO: TMemoField;
    cdsFICONCILIADO: TBCDField;
    cdsFIUSUARIO: TStringField;
    procedure cdsImpostoRetidoReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsImpostoRetidoAfterDelete(DataSet: TDataSet);
    procedure cdsImpostoRetidoAfterPost(DataSet: TDataSet);
    procedure cdsFIParcelaAfterDelete(DataSet: TDataSet);
    procedure cdsFIParcelaAfterPost(DataSet: TDataSet);
    procedure cdsFIParcelaClasseAfterPost(DataSet: TDataSet);
    procedure cdsFIParcelaClasseAfterDelete(DataSet: TDataSet);
    procedure cdsFIRetencaoAfterDelete(DataSet: TDataSet);
    procedure cdsFIRetencaoAfterPost(DataSet: TDataSet);
    procedure cdsImpostoRetidoNewRecord(DataSet: TDataSet);
    procedure cdsAcaoNewRecord(DataSet: TDataSet);
    procedure cdsFormaPagtoNewRecord(DataSet: TDataSet);
    procedure cdsTipoCobrancaNewRecord(DataSet: TDataSet);
    procedure cdsProjetoNewRecord(DataSet: TDataSet);
    procedure cdsFINewRecord(DataSet: TDataSet);
    procedure cdsFIParcelaNewRecord(DataSet: TDataSet);
    procedure cdsFIParcelaClasseNewRecord(DataSet: TDataSet);
    procedure cdsFIRetencaoNewRecord(DataSet: TDataSet);
    procedure cdsFIEMPRESAIDValidate(Sender: TField);
    procedure cdsFIFILIALIDValidate(Sender: TField);
    procedure cdsFIACAOIDValidate(Sender: TField);
    procedure cdsFIFORNECEDORIDValidate(Sender: TField);
    procedure cdsFICONDPAGTOIDValidate(Sender: TField);
    procedure cdsFIParcelaFORMAPAGTOIDValidate(Sender: TField);
    procedure cdsFIParcelaTIPOCOBRANCAIDValidate(Sender: TField);
    procedure cdsFIParcelaBANCOIDValidate(Sender: TField);
    procedure cdsFIParcelaClassePROJETOIDValidate(Sender: TField);
    procedure cdsFIRetencaoIMPOSTORETIDOIDValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmFI: TdmFI;

implementation

uses u_dmGSI, FuncoesCliente, FuncoesDSI, u_ReconcileError, u_dmEF;

{$R *.dfm}

procedure TdmFI.cdsAcaoNewRecord(DataSet: TDataSet);
begin
 cdsAcaoACAOID.Value  := ContadorDB('FI_ACAO','ACAOID','');
 cdsAcaoUSUARIO.Value := dmGsi.UsuarioAtivo;
end;

procedure TdmFI.cdsFIACAOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := 'SELECT DESCRICAO, MOVCONTASPAGAR, MOVCONTASRECEBER, ' +
            ' MOVINFORMATIVO FROM FI_ACAO ' +
            ' WHERE ' + InstSQL;

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsFIL_DESCRICAOACAO.Value    := Cds.FieldByName('DESCRICAO').AsString;
      cdsFIL_MOVCONTASPAGAR.Value   := Cds.FieldByName('MOVCONTASPAGAR').AsInteger;
      cdsFIL_MOVCONTASRECEBER.Value := Cds.FieldByName('MOVCONTASRECEBER').AsInteger;
      cdsFIL_MOVINFORMATIVO.Value   := Cds.FieldByName('MOVINFORMATIVO').AsInteger;
     end
  else
     begin
      cdsFIL_DESCRICAOACAO.Clear;
      cdsFIL_MOVCONTASPAGAR.Clear;
      cdsFIL_MOVCONTASRECEBER.Clear;
      cdsFIL_MOVINFORMATIVO.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;

end;

procedure TdmFI.cdsFICONDPAGTOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( dmEF.cdsCondPagto.ProviderName ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsFIL_DESCRICAOCONDPAGTO.Value     := Cds.FieldByName('DESCRICAO').AsString;
     end
  else
     begin
      cdsFIL_DESCRICAOCONDPAGTO.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmFI.cdsFIEMPRESAIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( dmEF.cdsEmpresa.ProviderName ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsFIL_NOMEEMPRESA.Value     := Cds.FieldByName('NOME').AsString;
     end
  else
     begin
      cdsFIL_NOMEEMPRESA.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmFI.cdsFIFILIALIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( dmEF.cdsFilial.ProviderName ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsFIL_NOMEFILIAL.Value := Cds.FieldByName('NOMEFANTASIA').AsString;
     end
  else
     begin
      cdsFIL_NOMEFILIAL.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmFI.cdsFIFORNECEDORIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( dmEF.cdsEntidade.ProviderName ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsFIL_NOMEFORNECEDOR.Value := Cds.FieldByName('NOME').AsString;
     end
  else
     begin
      cdsFIL_NOMEFORNECEDOR.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmFI.cdsFINewRecord(DataSet: TDataSet);
begin
 cdsFIFIID.Value               := ContadorDB('FI_FI','FIID','');
 cdsFIEMPRESAID.Value          := EmpresaAtualId;
 cdsFIDATAREGISTRO.AsDateTime  := Now;
 cdsFIVLRDOC.AsFloat           := 0;
 cdsFIVLRLIQUIDO.AsFloat       := 0;
 cdsFIUSUARIO.Value            := dmGsi.UsuarioAtivo;
end;

procedure TdmFI.cdsFIParcelaAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsFI.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsFI.Edit;
end;

procedure TdmFI.cdsFIParcelaAfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsFI.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsFI.Edit;
end;

procedure TdmFI.cdsFIParcelaBANCOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( dmEF.cdsBanco.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsFIParcelaL_NOMEBANCO.Value := Cds.FieldByName('NOMEBANCO').AsString;
      cdsFIParcelaL_NUMBANCO.Value  := Cds.FieldByName('NUMBANCO').AsString;
      cdsFIParcelaL_AGENCIA.Value   := Cds.FieldByName('AGENCIA').AsString;
      cdsFIParcelaL_CONTA.Value     := Cds.FieldByName('CONTA').AsString;
     end
  else
     begin
      cdsFIParcelaL_NOMEBANCO.Clear;
      cdsFIParcelaL_NUMBANCO.Clear;
      cdsFIParcelaL_AGENCIA.Clear;
      cdsFIParcelaL_CONTA.Clear;

      cdsFIParcelaL_DESCRFORMAPAGTO.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmFI.cdsFIParcelaClasseAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsFI.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsFI.Edit;
end;

procedure TdmFI.cdsFIParcelaClasseAfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsFI.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsFI.Edit;
end;

procedure TdmFI.cdsFIParcelaClasseNewRecord(DataSet: TDataSet);
begin
 cdsFIParcelaVLRLIQDOC.AsFloat := 0;
 cdsFIParcelaUSUARIO.Value     := dmGsi.UsuarioAtivo;
end;

procedure TdmFI.cdsFIParcelaClassePROJETOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( dmFI.cdsProjeto.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsFIParcelaClasseL_DESCRPROJETO.Value := Cds.FieldByName('DESCRICAO').AsString;
     end
  else
     begin
      cdsFIParcelaClasseL_DESCRPROJETO.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;

end;

procedure TdmFI.cdsFIParcelaFORMAPAGTOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( dmFI.cdsFormaPagto.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsFIParcelaL_DESCRFORMAPAGTO.Value := Cds.FieldByName('DESCRICAO').AsString;
     end
  else
     begin
      cdsFIParcelaL_DESCRFORMAPAGTO.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmFI.cdsFIParcelaNewRecord(DataSet: TDataSet);
begin
 cdsFIParcelaPARCELAID.AsInteger := ContadorDB('FI_FIPARCELA','FI_FIPARCELA.PARCELAID','WHERE FI_FIPARCELA.FIID = '+ QuotedStr( cdsFIFIID.AsString )  );
 cdsFIParcelaVLRLIQDOC.AsFloat   := 0;
 cdsFIParcelaUSUARIO.Value       := dmGsi.UsuarioAtivo;
end;

procedure TdmFI.cdsFIParcelaTIPOCOBRANCAIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( dmFI.cdsTipoCobranca.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsFIParcelaL_DESCRTIPOCOBRANCA.Value := Cds.FieldByName('DESCRICAO').AsString;
     end
  else
     begin
      cdsFIParcelaL_DESCRTIPOCOBRANCA.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmFI.cdsFIRetencaoAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsFI.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsFI.Edit;
end;

procedure TdmFI.cdsFIRetencaoAfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsFI.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsFI.Edit;
end;

procedure TdmFI.cdsFIRetencaoIMPOSTORETIDOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( dmFI.cdsImpostoRetido.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsFIRetencaoL_DESCRIMPOSTO.Value  := Cds.FieldByName('DESCRICAO').AsString;
      cdsFIRetencaoL_ALIQIMPOSTO.AsFloat := Cds.FieldByName('ALIQUOTA').AsFloat;
     end
  else
     begin
      cdsFIRetencaoL_DESCRIMPOSTO.Clear;
      cdsFIRetencaoL_ALIQIMPOSTO.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmFI.cdsFIRetencaoNewRecord(DataSet: TDataSet);
begin
 cdsFIRetencaoITEMID.AsInteger := ContadorDB('FI_FIRETENCAO','FI_FIRETENCAO.ITEMID','WHERE FI_FIRETENCAO.FIID = '+ QuotedStr( cdsFIFIID.AsString )  );
 cdsFIRetencaoUSUARIO.Value    := dmGsi.UsuarioAtivo;
end;

procedure TdmFI.cdsFormaPagtoNewRecord(DataSet: TDataSet);
begin
 cdsFormaPagtoFORMAPAGTOID.Value := ContadorDB('FI_FORMAPAGTO','FORMAPAGTOID','');
 cdsFormaPagtoUSUARIO.Value      := dmGsi.UsuarioAtivo;
end;

procedure TdmFI.cdsImpostoRetidoAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmFI.cdsImpostoRetidoAfterPost(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmFI.cdsImpostoRetidoNewRecord(DataSet: TDataSet);
begin
 cdsImpostoRetidoIMPOSTORETIDOID.Value := ContadorDB('FI_IMPOSTORETIDO','IMPOSTORETIDOID','');
 cdsImpostoRetidoALIQUOTA.AsFloat      := 0;
 cdsImpostoRetidoUSUARIO.Value         := dmGsi.UsuarioAtivo;
end;

procedure TdmFI.cdsImpostoRetidoReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
 Action := HandleReconcileError( DataSet, UpdateKind, E);
end;

procedure TdmFI.cdsProjetoNewRecord(DataSet: TDataSet);
begin
 cdsProjetoPROJETOID.Value := ContadorDB('FI_PROJETO','PROJETOID','');
 cdsProjetoUSUARIO.Value   := dmGsi.UsuarioAtivo;
end;

procedure TdmFI.cdsTipoCobrancaNewRecord(DataSet: TDataSet);
begin
 cdsTipoCobrancaTIPOCOBRANCAID.Value := ContadorDB('FI_TIPOCOBRANCA','TIPOCOBRANCAID','');
 cdsTipoCobrancaUSUARIO.Value        := dmGsi.UsuarioAtivo;
end;

end.
