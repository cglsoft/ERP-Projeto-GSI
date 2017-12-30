unit u_dmCM;

interface

uses
  SysUtils, Classes, DB, DBClient, MConnect, FuncoesCliente,FuncoesDSI,Dialogs;

type
  TdmCM = class(TDataModule)
    shdcnnCM: TSharedConnection;
    cdsIndContrato: TClientDataSet;
    dsIndContrato: TDataSource;
    dsTipoContrato: TDataSource;
    dsContratoPadrao: TDataSource;
    dsValorIndice: TDataSource;
    dsPreventiva: TDataSource;
    dsCorretiva: TDataSource;
    dsTermoContrato: TDataSource;
    dsContratoAditivo: TDataSource;
    dsContratoParc: TDataSource;
    dsContratoServ: TDataSource;
    dsContratoApar: TDataSource;
    dsContratoAno: TDataSource;
    dsContrato: TDataSource;
    cdsIndContratoDESCRICAO: TStringField;
    cdsIndContratoUSUARIO: TStringField;
    cdsValorIndice: TClientDataSet;
    cdsValorIndiceINDICEID: TBCDField;
    cdsValorIndiceDATAINDICE: TSQLTimeStampField;
    cdsValorIndiceVLRINDICE: TFMTBCDField;
    cdsValorIndiceUSUARIO: TStringField;
    cdsContratoPadrao: TClientDataSet;
    cdsContratoPadraoANEXO: TMemoField;
    cdsContratoPadraoADITIVO: TMemoField;
    cdsContratoPadraoULTIMOCONTRATO: TBCDField;
    cdsContratoPadraoUSUARIO: TStringField;
    cdsTipoContrato: TClientDataSet;
    cdsTipoContratoTIPOCONTRATOID: TBCDField;
    cdsTipoContratoDESCRICAO: TStringField;
    cdsTipoContratoUSUARIO: TStringField;
    cdsCorretiva: TClientDataSet;
    cdsCorretivaCORRETIVAID: TBCDField;
    cdsCorretivaDESCRICAO: TStringField;
    cdsCorretivaUSUARIO: TStringField;
    cdsPreventiva: TClientDataSet;
    cdsPreventivaPREVENTIVAID: TBCDField;
    cdsPreventivaDESCRICAO: TStringField;
    cdsPreventivaUSUARIO: TStringField;
    cdsTermoContrato: TClientDataSet;
    cdsTermoContratoTERMOCONTRATOID: TBCDField;
    cdsTermoContratoDESCRICAO: TStringField;
    cdsTermoContratoUSUARIO: TStringField;
    cdsContrato: TClientDataSet;
    cdsContratoEMPRESAID: TBCDField;
    cdsContratoCONTRATOID: TBCDField;
    cdsContratoDATAEMISSAO: TSQLTimeStampField;
    cdsContratoCONTRATOANTIGOID: TStringField;
    cdsContratoCLIENTEID: TBCDField;
    cdsContratoL_NOME_CLIENTE: TStringField;
    cdsContratoCONTATO: TStringField;
    cdsContratoFILIALID: TBCDField;
    cdsContratoL_FILIAL: TStringField;
    cdsContratoNATUREZAOPID: TBCDField;
    cdsContratoL_CFOP: TStringField;
    cdsContratoL_DESCRICAOOPERACAOUSUARIO: TStringField;
    cdsContratoL_DESCRICAOOPERACAONOTA: TStringField;
    cdsContratoALIQUOTAICMS: TFMTBCDField;
    cdsContratoOBSERVACAOID: TBCDField;
    cdsContratoOBSPDS: TStringField;
    cdsContratoTRANSPORTADORID: TBCDField;
    cdsContratoL_NOME_TRANSPORTADORA: TStringField;
    cdsContratoCONTRATOMEMO: TStringField;
    cdsContratoCANCELADO: TBCDField;
    cdsContratoUSUARIO: TStringField;
    cdsContratosqldtsContratoAno: TDataSetField;
    cdsContratoAno: TClientDataSet;
    cdsContratoAnoEMPRESAID: TBCDField;
    cdsContratoAnoCONTRATOID: TBCDField;
    cdsContratoAnoDATAINICIOCONTRATO: TSQLTimeStampField;
    cdsContratoAnoDATAFIMCONTRATO: TSQLTimeStampField;
    cdsContratoAnoVLRCONTRATOMENSAL: TBCDField;
    cdsContratoAnoVLRTOTALCONTRATO: TBCDField;
    cdsContratoAnoQTDPARCELA: TBCDField;
    cdsContratoAnoPAGAMENTO: TStringField;
    cdsContratoAnoPERIODOCONCLUIDO: TBCDField;
    cdsContratoAnoUSUARIO: TStringField;
    cdsContratoApar: TClientDataSet;
    cdsContratoAparEMPRESAID: TBCDField;
    cdsContratoAparCONTRATOID: TBCDField;
    cdsContratoAparANOID: TBCDField;
    cdsContratoAparSERIEID: TStringField;
    cdsContratoAparMODELOID: TStringField;
    cdsContratoAparTIPOCONTRATOID: TBCDField;
    cdsContratoAparL_DESCRTIPOCONTRATO: TStringField;
    cdsContratoAparVLRMENSAL: TBCDField;
    cdsContratoAparCORRETIVAID: TBCDField;
    cdsContratoAparL_DESCRICAOCORRETIVA: TStringField;
    cdsContratoAparPREVENTIVAID: TBCDField;
    cdsContratoAparL_DESCRICAOPREVENTIVA: TStringField;
    cdsContratoAparHORASESPERA: TBCDField;
    cdsContratoAparQTDPREVENTIVAS: TBCDField;
    cdsContratoAparQTDPREVENTIVASUTIL: TBCDField;
    cdsContratoAparBLOQUEARPREVENTIVAS: TBCDField;
    cdsContratoAparQTDCORRETIVAS: TBCDField;
    cdsContratoAparQTDCORRETIVASUTIL: TBCDField;
    cdsContratoAparBLOQUEARCORRETIVAS: TBCDField;
    cdsContratoAparQTDPECAS: TBCDField;
    cdsContratoAparQTDPECASUTIL: TBCDField;
    cdsContratoAparTERMOCONTRATOID: TBCDField;
    cdsContratoAparL_DESCRICAOTERMOCONTRATO: TStringField;
    cdsContratoAparIMPRCONDCONTR: TBCDField;
    cdsContratoAparUSUARIO: TStringField;
    cdsContratoServ: TClientDataSet;
    cdsContratoServEMPRESAID: TBCDField;
    cdsContratoServCONTRATOID: TBCDField;
    cdsContratoServANOID: TBCDField;
    cdsContratoServITEMID: TBCDField;
    cdsContratoServSERVICOID: TBCDField;
    cdsContratoServVLRSERVICO: TBCDField;
    cdsContratoServGRUPOID: TBCDField;
    cdsContratoServL_GRUPO: TStringField;
    cdsContratoServHISTORICO: TStringField;
    cdsContratoServUSUARIO: TStringField;
    cdsContratoParc: TClientDataSet;
    cdsContratoParcEMPRESAID: TBCDField;
    cdsContratoParcCONTRATOID: TBCDField;
    cdsContratoParcANOID: TBCDField;
    cdsContratoParcPARCELAID: TBCDField;
    cdsContratoParcPERIODOINICIAL: TSQLTimeStampField;
    cdsContratoParcPERIODOFINAL: TSQLTimeStampField;
    cdsContratoParcDATAVENCIMENTO: TSQLTimeStampField;
    cdsContratoParcMESVENCIMENTO: TStringField;
    cdsContratoParcDATAPAGAMENTO: TSQLTimeStampField;
    cdsContratoParcVLRCONTRATO: TBCDField;
    cdsContratoParcPDSID: TBCDField;
    cdsContratoParcNFSID: TBCDField;
    cdsContratoParcDATAEMISSAOID: TSQLTimeStampField;
    cdsContratoParcGERADA: TBCDField;
    cdsContratoParcUSUARIO: TStringField;
    cdsContratoAditivo: TClientDataSet;
    cdsContratoAditivoEMPRESAID: TBCDField;
    cdsContratoAditivoCONTRATOID: TBCDField;
    cdsContratoAditivoADITIVOID: TBCDField;
    cdsContratoAditivoDATAADITIVO: TSQLTimeStampField;
    cdsContratoAditivoUSUARIO: TStringField;
    cdsContratoServL_DESCRICAORESUMIDA: TStringField;
    cdsContratoAnoANOID: TBCDField;
    cdsContratoL_TELEFONE: TStringField;
    cdsContratoL_SIGLAUFID: TStringField;
    cdsContratoL_CIDADE: TStringField;
    cdsContratoL_BAIRRO: TStringField;
    cdsContratoL_NUMERO: TStringField;
    cdsContratoL_COMPLEMENTO: TStringField;
    cdsContratoL_ENDERECO: TStringField;
    cdsContratoL_CEPID: TBCDField;
    cdsContratoL_CNPJ: TStringField;
    cdsContratoAnosqldtsContratoApar: TDataSetField;
    cdsContratoAnosqldtsContratoServ: TDataSetField;
    cdsContratoAnosqldtsContratoParc: TDataSetField;
    cdsContratosqldtsContratoAditivo: TDataSetField;
    cdsIndContratoINDCONTRATOID: TBCDField;
    cdsContratoAnoINDCONTRATOID: TBCDField;
    cdsContratoAnoL_DESCRICAOINDICE: TStringField;
    cdsContratoL_ANO: TBCDField;
    cdsContratoL_DATAINICIOCONTRATO: TSQLTimeStampField;
    cdsContratoL_DATAFIMCONTRATO: TSQLTimeStampField;
    cdsContratoL_VLRCONTRATOMENSAL: TBCDField;
    cdsContratoL_VLRTOTALCONTRATO: TBCDField;
    cdsContratoL_QTDPARCELA: TBCDField;
    cdsContratoL_PAGAMENTO: TStringField;
    cdsContratoL_PERIODOCONCLUIDO: TBCDField;
    cdsVisualContrato: TClientDataSet;
    dsVisualContrato: TDataSource;
    cdsVisualContratoEMPRESAID: TBCDField;
    cdsVisualContratoCONTRATOID: TBCDField;
    cdsVisualContratoANOID: TBCDField;
    cdsVisualContratoCLIENTEID: TBCDField;
    cdsVisualContratoSERIEID: TStringField;
    cdsVisualContratoMODELOID: TStringField;
    cdsVisualContratoL_NOME_CLIENTE: TStringField;
    cdsVisualContratoDATAINICIOCONTRATO: TSQLTimeStampField;
    cdsVisualContratoDATAFIMCONTRATO: TSQLTimeStampField;
    cdsVisualContratoCANCELADO: TBCDField;
    cdsVisualContratoDESCRICAO: TStringField;
    cdsVisualContratoQTDPECAS: TBCDField;
    cdsVisualContratoQTDPECASUTIL: TBCDField;
    cdsVisualContratoQTDPREVENTIVAS: TBCDField;
    cdsVisualContratoQTDPREVENTIVASUTIL: TBCDField;
    cdsVisualContratoQTDCORRETIVAS: TBCDField;
    cdsVisualContratoQTDCORRETIVASUTIL: TBCDField;
    cdsVisualContratoQTDPARCELA: TBCDField;
    cdsVisualContratoPAGAMENTO: TStringField;
    cdsVisualContratoVLRCONTRATOMENSAL: TBCDField;
    cdsVisualContratoVLRTOTALCONTRATO: TBCDField;
    cdsVisualContratoCONTRATOANTIGOID: TStringField;
    cdsVisualContratoCORRETIVAID: TBCDField;
    cdsVisualContratoL_DESCRCORRETIVA: TStringField;
    cdsVisualContratoPREVENTIVAID: TBCDField;
    cdsVisualContratoL_DESCRICAOPREVENTIVA: TStringField;
    cdsContratoServL_SIGLAGRUPO: TStringField;
    cdsContratoPRECONTRATO: TBCDField;
    cdsContratoAparVLRCONTRATO: TFMTBCDField;
    cdsVisualContratoVLRCONTRATO: TFMTBCDField;
    cdsVisualContratoL_CIDADE: TStringField;
    cdsVisualContratoL_SIGLAUFID: TStringField;
    cdsContratoOBSCLIENTE: TMemoField;
    cdsVisualContratoOBSCLIENTE: TMemoField;
    cdsContratoSUSPFATURAMENTO: TBCDField;
    cdsContratoAuto: TClientDataSet;
    dsContratoAuto: TDataSource;
    cdsContratoAutoServ: TClientDataSet;
    dsContratoAutoServ: TDataSource;
    cdsContratoAutoEMPRESAID: TBCDField;
    cdsContratoAutoCONTRATOID: TBCDField;
    cdsContratoAutoANOID: TBCDField;
    cdsContratoAutoNOME: TStringField;
    cdsContratoAutoCLIENTEID: TBCDField;
    cdsContratoAutoNATUREZAOPID: TBCDField;
    cdsContratoAutoTRANSPORTADORID: TBCDField;
    cdsContratoAutoOBSERVACAOID: TBCDField;
    cdsContratoAutoOBSPDS: TStringField;
    cdsContratoAutoDATAVENCIMENTO: TSQLTimeStampField;
    cdsContratoAutoVLRCONTRATO: TBCDField;
    cdsContratoAutosqldtsContratoAutoServ: TDataSetField;
    cdsContratoAutoServEMPRESAID: TBCDField;
    cdsContratoAutoServCONTRATOID: TBCDField;
    cdsContratoAutoServANOID: TBCDField;
    cdsContratoAutoServITEMID: TBCDField;
    cdsContratoAutoServSERVICOID: TBCDField;
    cdsContratoAutoServL_DESCRICAORESUMIDA: TStringField;
    cdsContratoAutoServVLRSERVICO: TBCDField;
    cdsContratoAutoServGRUPOID: TBCDField;
    cdsContratoAutoServL_SIGLAGRUPO: TStringField;
    cdsContratoAutoServL_GRUPO: TStringField;
    cdsContratoAutoServHISTORICO: TStringField;
    cdsContratoAutoServUSUARIO: TStringField;
    cdsContratoAutoMESVENCIMENTO: TStringField;
    cdsContratoAutoPERIODOINICIAL: TSQLTimeStampField;
    cdsContratoAutoSTATUSFINANCEIRO: TBCDField;
    cdsContratoAutoPARCELAID: TBCDField;
    cdsContratoAutoPERIODOFINAL: TSQLTimeStampField;
    cdsContratoL_STATUSFINANCEIRO: TBCDField;
    cdsVisualContratoFILIALID: TBCDField;
    cdsVisualContratoL_FILIALNOME: TStringField;
    cdsVisualContratoVLRMENSAL: TBCDField;
    procedure cdsIndContratoAfterDelete(DataSet: TDataSet);
    procedure cdsIndContratoAfterPost(DataSet: TDataSet);
    procedure cdsIndContratoReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsContratoCLIENTEIDValidate(Sender: TField);
    procedure cdsContratoFILIALIDValidate(Sender: TField);
    procedure cdsContratoNATUREZAOPIDValidate(Sender: TField);
    procedure cdsContratoTRANSPORTADORIDValidate(Sender: TField);
    procedure cdsContratoAparTIPOCONTRATOIDValidate(Sender: TField);
    procedure cdsContratoAparCORRETIVAIDValidate(Sender: TField);
    procedure cdsContratoAparPREVENTIVAIDValidate(Sender: TField);
    procedure cdsContratoAparTERMOCONTRATOIDValidate(Sender: TField);
    procedure cdsContratoServSERVICOIDValidate(Sender: TField);
    procedure cdsContratoNewRecord(DataSet: TDataSet);
    procedure cdsContratoAnoNewRecord(DataSet: TDataSet);
    procedure cdsContratoAparNewRecord(DataSet: TDataSet);
    procedure cdsContratoServNewRecord(DataSet: TDataSet);
    procedure cdsContratoParcNewRecord(DataSet: TDataSet);
    procedure cdsContratoAditivoNewRecord(DataSet: TDataSet);
    procedure cdsValorIndiceNewRecord(DataSet: TDataSet);
    procedure cdsContratoPadraoNewRecord(DataSet: TDataSet);
    procedure cdsTipoContratoNewRecord(DataSet: TDataSet);
    procedure cdsCorretivaNewRecord(DataSet: TDataSet);
    procedure cdsPreventivaNewRecord(DataSet: TDataSet);
    procedure cdsTermoContratoNewRecord(DataSet: TDataSet);
    procedure cdsValorIndiceAfterDelete(DataSet: TDataSet);
    procedure cdsValorIndiceAfterPost(DataSet: TDataSet);
    procedure cdsContratoPadraoAfterDelete(DataSet: TDataSet);
    procedure cdsContratoPadraoAfterPost(DataSet: TDataSet);
    procedure cdsTipoContratoAfterDelete(DataSet: TDataSet);
    procedure cdsTipoContratoAfterPost(DataSet: TDataSet);
    procedure cdsCorretivaAfterDelete(DataSet: TDataSet);
    procedure cdsCorretivaAfterPost(DataSet: TDataSet);
    procedure cdsPreventivaAfterDelete(DataSet: TDataSet);
    procedure cdsPreventivaAfterPost(DataSet: TDataSet);
    procedure cdsTermoContratoAfterDelete(DataSet: TDataSet);
    procedure cdsTermoContratoAfterPost(DataSet: TDataSet);
    procedure cdsContratoAfterDelete(DataSet: TDataSet);
    procedure cdsContratoAfterPost(DataSet: TDataSet);
    procedure cdsContratoAnoAfterDelete(DataSet: TDataSet);
    procedure cdsContratoAnoAfterPost(DataSet: TDataSet);
    procedure cdsContratoAparAfterDelete(DataSet: TDataSet);
    procedure cdsContratoAparAfterPost(DataSet: TDataSet);
    procedure cdsContratoServAfterDelete(DataSet: TDataSet);
    procedure cdsContratoServAfterPost(DataSet: TDataSet);
    procedure cdsContratoParcAfterDelete(DataSet: TDataSet);
    procedure cdsContratoParcAfterPost(DataSet: TDataSet);
    procedure cdsContratoAditivoAfterDelete(DataSet: TDataSet);
    procedure cdsContratoAditivoAfterPost(DataSet: TDataSet);
    procedure cdsContratoOBSERVACAOIDChange(Sender: TField);
    procedure cdsContratoAnoBeforeDelete(DataSet: TDataSet);
    procedure cdsContratoAparIMPRCONDCONTRValidate(Sender: TField);
    procedure cdsContratoParcPARCELAIDSetText(Sender: TField;
      const Text: String);
    procedure cdsContratoParcDATAVENCIMENTOValidate(Sender: TField);
    procedure cdsContratoAnoINDCONTRATOIDValidate(Sender: TField);
    procedure cdsIndContratoNewRecord(DataSet: TDataSet);
    procedure cdsContratoAnoVLRCONTRATOMENSALValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCM: TdmCM;

implementation

uses u_ReconcileError, u_dmGSI;

{$R *.dfm}

procedure TdmCM.cdsIndContratoAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmCM.cdsIndContratoAfterPost(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmCM.cdsIndContratoReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
 Action := HandleReconcileError( DataSet, UpdateKind, E);
end;

procedure TdmCM.cdsContratoCLIENTEIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'ENTIDADEID =' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvEntidade' ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsContratoL_NOME_CLIENTE.AsString := Cds.FieldByName('NOME').AsString ;
      cdsContratoL_CNPJ.AsString         := Cds.FieldByName('CPFCNPJ').AsString;
      cdsContratoL_ENDERECO.AsString     := Cds.FieldByName('ENDERECO').AsString;

      if Not Cds.FieldByName('NUMERO').IsNull then
         cdsContratoL_NUMERO.AsString    := Cds.FieldByName('NUMERO').AsString;

      cdsContratoL_CIDADE.AsString       := Cds.FieldByName('CIDADE').AsString;
      cdsContratoL_BAIRRO.AsString       := Cds.FieldByName('BAIRRO').AsString;
      cdsContratoL_SIGLAUFID.AsString    := Cds.FieldByName('SIGLAUFID').AsString;

      if Not Cds.FieldByName('CEPID').IsNull then
         cdsContratoL_CEPID.AsInteger       := Cds.FieldByName('CEPID').AsInteger;

      cdsContratoL_TELEFONE.AsString     := Cds.FieldByName('TELEFONE').AsString;
      cdsContratoL_STATUSFINANCEIRO.Value:= cds.FieldByName('STATUSFINANCEIRO').AsInteger;
     end
  else
     begin
      cdsContratoL_NOME_CLIENTE.Clear;
      cdsContratoL_NOME_CLIENTE.Clear;
      cdsContratoL_CNPJ.Clear;
      cdsContratoL_ENDERECO.Clear;
      cdsContratoL_NUMERO.Clear;
      cdsContratoL_CIDADE.Clear;
      cdsContratoL_BAIRRO.Clear;
      cdsContratoL_SIGLAUFID.Clear;
      cdsContratoL_CEPID.Clear;
      cdsContratoL_TELEFONE.Clear;
      cdsContratoL_STATUSFINANCEIRO.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmCM.cdsContratoFILIALIDValidate(Sender: TField);
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
     cdsContratoL_FILIAL.Value := Cds.FieldByName('NOMEFANTASIA').AsString
  else
     begin
      cdsContratoL_FILIAL.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmCM.cdsContratoNATUREZAOPIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'EF_NATUREZAOP.'+ TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvNaturezaOp' ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsContratoL_DESCRICAOOPERACAOUSUARIO.Value := Cds.FieldByName('DESCRICAOOPERACAOUSUARIO').AsString;
      cdsContratoL_DESCRICAOOPERACAONOTA.Value    := Cds.FieldByName('DESCRICAOOPERACAONOTA').AsString;
      cdsContratoL_CFOP.Value                     := Cds.FieldByName('CFOP').AsString;
     end
  else
     begin
      cdsContratoL_DESCRICAOOPERACAOUSUARIO.Clear;
      cdsContratoL_DESCRICAOOPERACAONOTA.Clear;
      cdsContratoL_CFOP.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmCM.cdsContratoTRANSPORTADORIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'ENTIDADEID =' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvEntidade' ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsContratoL_NOME_TRANSPORTADORA.Value := Cds.FieldByName('NOME').AsString
  else
     begin
      cdsContratoL_NOME_TRANSPORTADORA.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmCM.cdsContratoAparTIPOCONTRATOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsTipoContrato.ProviderName  ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsContratoAparL_DESCRTIPOCONTRATO.Value := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsContratoAparL_DESCRTIPOCONTRATO.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmCM.cdsContratoAparCORRETIVAIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 if cdsContratoAparCORRETIVAID.AsInteger < 1 then
    exit;
    
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsCorretiva.ProviderName  ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsContratoAparL_DESCRICAOCORRETIVA.Value := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsContratoAparL_DESCRICAOCORRETIVA.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmCM.cdsContratoAparPREVENTIVAIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsPreventiva.ProviderName  ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsContratoAparL_DESCRICAOPREVENTIVA.Value := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsContratoAparL_DESCRICAOPREVENTIVA.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmCM.cdsContratoAparTERMOCONTRATOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsTermoContrato.ProviderName  ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsContratoAparL_DESCRICAOTERMOCONTRATO.Value := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsContratoAparL_DESCRICAOTERMOCONTRATO.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmCM.cdsContratoServSERVICOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'EMPRESAID = ' + cdsContratoServEMPRESAID.AsString +
            ' AND ' + TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvServico' ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsContratoServL_DESCRICAORESUMIDA.Value := Cds.FieldByName('DESCRICAORESUMIDA').AsString;
      cdsContratoServHISTORICO.Value           := Cds.FieldByName('DESCRICAOCOMPLETA').AsString;
      cdsContratoServL_GRUPO.Value             := cds.FieldByName('GRUPOID').AsString;
     end
  else
     begin
      cdsContratoServL_DESCRICAORESUMIDA.Clear;
      cdsContratoServHISTORICO.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmCM.cdsContratoNewRecord(DataSet: TDataSet);
var ParamSQL : String;
begin
 cdsContratoEMPRESAID.Value           := EmpresaAtualId;
 ParamSQL := 'WHERE CM_CONTRATO.EMPRESAID = '+ cdsContratoEMPRESAID.AsString;
 cdsContratoCONTRATOID.AsInteger      := ContadorDB( 'CM_CONTRATO','CONTRATOID', ParamSQL);
 cdsContratoDATAEMISSAO.AsDateTime    := pCnnMain.AppServer.IServerDate;
 cdsContratoCANCELADO.AsInteger       := 0;
 cdsContratoSUSPFATURAMENTO.AsInteger := 0;
 cdsContratoPRECONTRATO.AsInteger     := 0;
 cdsContratoUSUARIO.AsString          := dmGsi.UsuarioAtivo;
 cdsContratoCONTRATOMEMO.Value        := cdsContratoPadraoANEXO.Value;
end;

procedure TdmCM.cdsContratoAnoNewRecord(DataSet: TDataSet);
begin
 cdsContratoAnoUSUARIO.AsString       := dmGsi.UsuarioAtivo;
 cdsContratoAnoPERIODOCONCLUIDO.Value := 0;
end;

procedure TdmCM.cdsContratoAparNewRecord(DataSet: TDataSet);
begin
 cdsContratoAparQTDPREVENTIVASUTIL.AsInteger := 0;
 cdsContratoAparQTDCORRETIVASUTIL.AsInteger  := 0;
 cdsContratoAparQTDPECASUTIL.AsInteger       := 0;
 cdsContratoAparUSUARIO.AsString := dmGsi.UsuarioAtivo;
end;

procedure TdmCM.cdsContratoServNewRecord(DataSet: TDataSet);
var ParamSQL : String;
begin
 ParamSQL := 'WHERE '+
             ' CM_CONTRATOSERV.EMPRESAID = ' + cdsContratoAnoEMPRESAID.AsString +
             ' AND CM_CONTRATOSERV.CONTRATOID = '+ cdsContratoAnoCONTRATOID.AsString +
             ' AND CM_CONTRATOSERV.ANOID = '+ cdsContratoAnoANOID.AsString;

 cdsContratoServITEMID.AsInteger  := ContadorDB( 'CM_CONTRATOSERV','ITEMID', ParamSQL );
 cdsContratoServUSUARIO.AsString  := dmGsi.UsuarioAtivo;
end;

procedure TdmCM.cdsContratoParcNewRecord(DataSet: TDataSet);
begin
 cdsContratoParcUSUARIO.AsString := dmGsi.UsuarioAtivo;
end;

procedure TdmCM.cdsContratoAditivoNewRecord(DataSet: TDataSet);
var ParamSQL : String;
begin
 ParamSQL := 'WHERE CM_CONTRATOADITIVO.EMPRESAID = '+ cdsContratoEMPRESAID.AsString+
             ' AND CM_CONTRATOADITIVO.CONTRATOID = '+ cdsContratoCONTRATOID.AsString;

 cdsContratoAditivoADITIVOID.AsInteger := ContadorDB( 'CM_CONTRATOADITIVO','ADITIVOID',ParamSQL );
 cdsContratoAditivoUSUARIO.AsString := dmGsi.UsuarioAtivo;
end;

procedure TdmCM.cdsValorIndiceNewRecord(DataSet: TDataSet);
begin
 cdsValorIndiceUSUARIO.AsString := dmGsi.UsuarioAtivo;
end;

procedure TdmCM.cdsContratoPadraoNewRecord(DataSet: TDataSet);
begin
 cdsContratoPadraoUSUARIO.AsString := dmGsi.UsuarioAtivo;
end;

procedure TdmCM.cdsTipoContratoNewRecord(DataSet: TDataSet);
begin
 cdsTipoContratoUSUARIO.AsString := dmGsi.UsuarioAtivo;
end;

procedure TdmCM.cdsCorretivaNewRecord(DataSet: TDataSet);
begin
 cdsCorretivaCORRETIVAID.Value :=  ContadorDB('CM_CORRETIVA','CORRETIVAID','');
 cdsCorretivaUSUARIO.AsString  := dmGsi.UsuarioAtivo;
end;

procedure TdmCM.cdsPreventivaNewRecord(DataSet: TDataSet);
begin
 cdsPreventivaPREVENTIVAID.Value :=  ContadorDB('CM_PREVENTIVA','PREVENTIVAID','');
 cdsPreventivaUSUARIO.AsString := dmGsi.UsuarioAtivo;
end;

procedure TdmCM.cdsTermoContratoNewRecord(DataSet: TDataSet);
begin
 cdsTermoContratoUSUARIO.AsString := dmGsi.UsuarioAtivo;
end;

procedure TdmCM.cdsValorIndiceAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmCM.cdsValorIndiceAfterPost(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmCM.cdsContratoPadraoAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmCM.cdsContratoPadraoAfterPost(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmCM.cdsTipoContratoAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmCM.cdsTipoContratoAfterPost(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmCM.cdsCorretivaAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmCM.cdsCorretivaAfterPost(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmCM.cdsPreventivaAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmCM.cdsPreventivaAfterPost(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmCM.cdsTermoContratoAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmCM.cdsTermoContratoAfterPost(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmCM.cdsContratoAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmCM.cdsContratoAfterPost(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmCM.cdsContratoAnoAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsContrato.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsContrato.Edit;
end;

procedure TdmCM.cdsContratoAnoAfterPost(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmCM.cdsContratoAparAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsContrato.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsContrato.Edit;
end;

procedure TdmCM.cdsContratoAparAfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsContrato.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsContrato.Edit;
end;

procedure TdmCM.cdsContratoServAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsContrato.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsContrato.Edit;
end;

procedure TdmCM.cdsContratoServAfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsContrato.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsContrato.Edit;
end;

procedure TdmCM.cdsContratoParcAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsContrato.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsContrato.Edit;
end;

procedure TdmCM.cdsContratoParcAfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsContrato.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsContrato.Edit;
end;

procedure TdmCM.cdsContratoAditivoAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsContrato.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsContrato.Edit;
end;

procedure TdmCM.cdsContratoAditivoAfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsContrato.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsContrato.Edit;
end;

procedure TdmCM.cdsContratoOBSERVACAOIDChange(Sender: TField);
var InstSQL, iSQL : String;
    Cds           : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvObservacao'  ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsContratoOBSPDS.Value  := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsContratoOBSERVACAOID.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;




end;

procedure TdmCM.cdsContratoAnoBeforeDelete(DataSet: TDataSet);
var cds  : TClientDataSet;
    iSQL : String;
begin
 cds  := nil;
 iSQL := 'SELECT GERADA' +
         '  FROM CM_CONTRATOPARC' +
         ' WHERE ' +
         ' EMPRESAID = ' + cdsContratoAnoEMPRESAID.AsString +
         ' AND CONTRATOID = ' + cdsContratoAnoCONTRATOID.AsString +
         ' AND ANOID = ' + cdsContratoAnoANOID.AsString +
         ' AND GERADA = 1 ';

 ExecDynamicProvider( -1,iSQL,cds );

 if not cds.IsEmpty then
    raise Exception.Create('Ano Contratual não pode ser excluído,' + #10#13 +
                             'Parcela(s) já virou Pedido! Atenção!');
end;

procedure TdmCM.cdsContratoAparIMPRCONDCONTRValidate(Sender: TField);
begin
 if cdsContratoAparIMPRCONDCONTR.Value = 1 then
    cdsContratoAparBLOQUEARCORRETIVAS.Value := 1;
end;

procedure TdmCM.cdsContratoParcPARCELAIDSetText(Sender: TField;
  const Text: String);
begin
 if cdsContratoParcGERADA.Value = 1 then
    raise Exception.Create('Nº da Parcela, Período, Valor e Pedido, não podem ser alterados.' + #10#13 +
                           'Pedido já foi gerado.')
 else
    Sender.Value := Text;
end;

procedure TdmCM.cdsContratoParcDATAVENCIMENTOValidate(Sender: TField);
begin
 if cdsContratoParcDATAVENCIMENTO.AsDateTime < pCnnMain.AppServer.iServerDate then
    raise Exception.Create('A data informada é menor do que a data Atual');
end;

procedure TdmCM.cdsContratoAnoINDCONTRATOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsIndContrato.ProviderName  ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsContratoAnoL_DESCRICAOINDICE.Value := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsContratoAnoL_DESCRICAOINDICE.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmCM.cdsIndContratoNewRecord(DataSet: TDataSet);
begin
 cdsIndContratoUSUARIO.Value  := dmGsi.UsuarioAtivo;
end;

procedure TdmCM.cdsContratoAnoVLRCONTRATOMENSALValidate(Sender: TField);
begin
 cdsContratoAnoVLRTOTALCONTRATO.Value  := cdsContratoAnoVLRCONTRATOMENSAL.Value *
                                          cdsContratoAnoQTDPARCELA.Value;

                                          
end;

end.
