unit u_rmSrvAppCM;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, GSIServidor_TLB, StdVcl, FMTBcd, Provider, DB, SqlExpr, Variants;

type
  TSrvAppCM = class(TRemoteDataModule, ISrvAppCM)
    sqldtsIndContrato: TSQLDataSet;
    dsprvIndContrato: TDataSetProvider;
    sqldtsIndContratoDESCRICAO: TStringField;
    sqldtsIndContratoUSUARIO: TStringField;
    sqldtsContratoAditivo: TSQLDataSet;
    sqldtsContratoParc: TSQLDataSet;
    sqldtsTermoContrato: TSQLDataSet;
    sqldtsPreventiva: TSQLDataSet;
    sqldtsCorretiva: TSQLDataSet;
    sqldtsTipoContrato: TSQLDataSet;
    sqldtsContratoPadrao: TSQLDataSet;
    sqldtsValorIndice: TSQLDataSet;
    sqldtsValorIndiceINDICEID: TBCDField;
    sqldtsValorIndiceDATAINDICE: TSQLTimeStampField;
    sqldtsValorIndiceVLRINDICE: TFMTBCDField;
    sqldtsValorIndiceUSUARIO: TStringField;
    dsprvValorIndice: TDataSetProvider;
    dsprvContratoPadrao: TDataSetProvider;
    sqldtsContratoPadraoANEXO: TMemoField;
    sqldtsContratoPadraoADITIVO: TMemoField;
    sqldtsContratoPadraoULTIMOCONTRATO: TBCDField;
    sqldtsContratoPadraoUSUARIO: TStringField;
    sqldtsTipoContratoTIPOCONTRATOID: TBCDField;
    sqldtsTipoContratoDESCRICAO: TStringField;
    sqldtsTipoContratoUSUARIO: TStringField;
    dsprvTipoContrato: TDataSetProvider;
    dsprvCorretiva: TDataSetProvider;
    sqldtsCorretivaCORRETIVAID: TBCDField;
    sqldtsCorretivaDESCRICAO: TStringField;
    sqldtsCorretivaUSUARIO: TStringField;
    dsprvPreventiva: TDataSetProvider;
    sqldtsPreventivaPREVENTIVAID: TBCDField;
    sqldtsPreventivaDESCRICAO: TStringField;
    sqldtsPreventivaUSUARIO: TStringField;
    dsprvTermoContrato: TDataSetProvider;
    sqldtsContratoServ: TSQLDataSet;
    sqldtsContratoApar: TSQLDataSet;
    sqldtsContratoAno: TSQLDataSet;
    sqldtsContrato: TSQLDataSet;
    sqldtsTermoContratoTERMOCONTRATOID: TBCDField;
    sqldtsTermoContratoDESCRICAO: TStringField;
    sqldtsTermoContratoUSUARIO: TStringField;
    dsprvContrato: TDataSetProvider;
    sqldtsContratoEMPRESAID: TBCDField;
    sqldtsContratoCONTRATOID: TBCDField;
    sqldtsContratoDATAEMISSAO: TSQLTimeStampField;
    sqldtsContratoCONTRATOANTIGOID: TStringField;
    sqldtsContratoCLIENTEID: TBCDField;
    sqldtsContratoL_NOME_CLIENTE: TStringField;
    sqldtsContratoCONTATO: TStringField;
    sqldtsContratoFILIALID: TBCDField;
    sqldtsContratoL_FILIAL: TStringField;
    sqldtsContratoNATUREZAOPID: TBCDField;
    sqldtsContratoL_CFOP: TStringField;
    sqldtsContratoL_DESCRICAOOPERACAOUSUARIO: TStringField;
    sqldtsContratoL_DESCRICAOOPERACAONOTA: TStringField;
    sqldtsContratoALIQUOTAICMS: TFMTBCDField;
    sqldtsContratoOBSERVACAOID: TBCDField;
    sqldtsContratoOBSPDS: TStringField;
    sqldtsContratoTRANSPORTADORID: TBCDField;
    sqldtsContratoL_NOME_TRANSPORTADORA: TStringField;
    sqldtsContratoCONTRATOMEMO: TStringField;
    sqldtsContratoCANCELADO: TBCDField;
    sqldtsContratoUSUARIO: TStringField;
    sqldtsContratoAnoEMPRESAID: TBCDField;
    sqldtsContratoAnoCONTRATOID: TBCDField;
    sqldtsContratoAnoDATAINICIOCONTRATO: TSQLTimeStampField;
    sqldtsContratoAnoDATAFIMCONTRATO: TSQLTimeStampField;
    sqldtsContratoAnoVLRCONTRATOMENSAL: TBCDField;
    sqldtsContratoAnoVLRTOTALCONTRATO: TBCDField;
    sqldtsContratoAnoQTDPARCELA: TBCDField;
    sqldtsContratoAnoPAGAMENTO: TStringField;
    sqldtsContratoAnoPERIODOCONCLUIDO: TBCDField;
    sqldtsContratoAnoUSUARIO: TStringField;
    dsContratoLink: TDataSource;
    sqldtsContratoServEMPRESAID: TBCDField;
    sqldtsContratoServCONTRATOID: TBCDField;
    sqldtsContratoServANOID: TBCDField;
    sqldtsContratoServITEMID: TBCDField;
    sqldtsContratoServSERVICOID: TBCDField;
    sqldtsContratoServVLRSERVICO: TBCDField;
    sqldtsContratoServL_GRUPO: TStringField;
    sqldtsContratoServHISTORICO: TStringField;
    sqldtsContratoServUSUARIO: TStringField;
    sqldtsContratoParcEMPRESAID: TBCDField;
    sqldtsContratoParcCONTRATOID: TBCDField;
    sqldtsContratoParcANOID: TBCDField;
    sqldtsContratoParcPARCELAID: TBCDField;
    sqldtsContratoParcPERIODOINICIAL: TSQLTimeStampField;
    sqldtsContratoParcPERIODOFINAL: TSQLTimeStampField;
    sqldtsContratoParcDATAVENCIMENTO: TSQLTimeStampField;
    sqldtsContratoParcMESVENCIMENTO: TStringField;
    sqldtsContratoParcDATAPAGAMENTO: TSQLTimeStampField;
    sqldtsContratoParcVLRCONTRATO: TBCDField;
    sqldtsContratoParcPDSID: TBCDField;
    sqldtsContratoParcNFSID: TBCDField;
    sqldtsContratoParcDATAEMISSAOID: TSQLTimeStampField;
    sqldtsContratoParcGERADA: TBCDField;
    sqldtsContratoParcUSUARIO: TStringField;
    sqldtsContratoAditivoEMPRESAID: TBCDField;
    sqldtsContratoAditivoCONTRATOID: TBCDField;
    sqldtsContratoAditivoADITIVOID: TBCDField;
    sqldtsContratoAditivoDATAADITIVO: TSQLTimeStampField;
    sqldtsContratoAditivoUSUARIO: TStringField;
    sqldtsContratoServL_DESCRICAORESUMIDA: TStringField;
    sqldtsContratoAnoANOID: TBCDField;
    sqldtsContratoL_CNPJ: TStringField;
    sqldtsContratoL_CEPID: TBCDField;
    sqldtsContratoL_ENDERECO: TStringField;
    sqldtsContratoL_COMPLEMENTO: TStringField;
    sqldtsContratoL_NUMERO: TStringField;
    sqldtsContratoL_BAIRRO: TStringField;
    sqldtsContratoL_CIDADE: TStringField;
    sqldtsContratoL_SIGLAUFID: TStringField;
    sqldtsContratoL_TELEFONE: TStringField;
    sqldtsContratoAparEMPRESAID: TBCDField;
    sqldtsContratoAparCONTRATOID: TBCDField;
    sqldtsContratoAparANOID: TBCDField;
    sqldtsContratoAparSERIEID: TStringField;
    sqldtsContratoAparMODELOID: TStringField;
    sqldtsContratoAparTIPOCONTRATOID: TBCDField;
    sqldtsContratoAparL_DESCRTIPOCONTRATO: TStringField;
    sqldtsContratoAparVLRMENSAL: TBCDField;
    sqldtsContratoAparCORRETIVAID: TBCDField;
    sqldtsContratoAparL_DESCRICAOCORRETIVA: TStringField;
    sqldtsContratoAparPREVENTIVAID: TBCDField;
    sqldtsContratoAparL_DESCRICAOPREVENTIVA: TStringField;
    sqldtsContratoAparHORASESPERA: TBCDField;
    sqldtsContratoAparQTDPREVENTIVAS: TBCDField;
    sqldtsContratoAparQTDPREVENTIVASUTIL: TBCDField;
    sqldtsContratoAparBLOQUEARPREVENTIVAS: TBCDField;
    sqldtsContratoAparQTDCORRETIVAS: TBCDField;
    sqldtsContratoAparQTDCORRETIVASUTIL: TBCDField;
    sqldtsContratoAparBLOQUEARCORRETIVAS: TBCDField;
    sqldtsContratoAparQTDPECAS: TBCDField;
    sqldtsContratoAparQTDPECASUTIL: TBCDField;
    sqldtsContratoAparTERMOCONTRATOID: TBCDField;
    sqldtsContratoAparL_DESCRICAOTERMOCONTRATO: TStringField;
    sqldtsContratoAparIMPRCONDCONTR: TBCDField;
    sqldtsContratoAparUSUARIO: TStringField;
    dsContratoAnoLink: TDataSource;
    sqldtsIndContratoINDCONTRATOID: TBCDField;
    sqldtsContratoAnoINDCONTRATOID: TBCDField;
    sqldtsContratoAnoL_DESCRICAOINDICE: TStringField;
    sqldtsContratoL_ANO: TBCDField;
    sqldtsContratoL_DATAINICIOCONTRATO: TSQLTimeStampField;
    sqldtsContratoL_DATAFIMCONTRATO: TSQLTimeStampField;
    sqldtsContratoL_VLRCONTRATOMENSAL: TBCDField;
    sqldtsContratoL_VLRTOTALCONTRATO: TBCDField;
    sqldtsContratoL_QTDPARCELA: TBCDField;
    sqldtsContratoL_PAGAMENTO: TStringField;
    sqldtsContratoL_PERIODOCONCLUIDO: TBCDField;
    sqldtsVisualContrato: TSQLDataSet;
    dsprvVizualContrato: TDataSetProvider;
    sqldtsVisualContratoEMPRESAID: TBCDField;
    sqldtsVisualContratoCONTRATOID: TBCDField;
    sqldtsVisualContratoANOID: TBCDField;
    sqldtsVisualContratoCLIENTEID: TBCDField;
    sqldtsVisualContratoSERIEID: TStringField;
    sqldtsVisualContratoMODELOID: TStringField;
    sqldtsVisualContratoL_NOME_CLIENTE: TStringField;
    sqldtsVisualContratoDATAINICIOCONTRATO: TSQLTimeStampField;
    sqldtsVisualContratoDATAFIMCONTRATO: TSQLTimeStampField;
    sqldtsVisualContratoCANCELADO: TBCDField;
    sqldtsVisualContratoDESCRICAO: TStringField;
    sqldtsVisualContratoQTDPECAS: TBCDField;
    sqldtsVisualContratoQTDPECASUTIL: TBCDField;
    sqldtsVisualContratoQTDPREVENTIVAS: TBCDField;
    sqldtsVisualContratoQTDPREVENTIVASUTIL: TBCDField;
    sqldtsVisualContratoQTDCORRETIVAS: TBCDField;
    sqldtsVisualContratoQTDCORRETIVASUTIL: TBCDField;
    sqldtsVisualContratoQTDPARCELA: TBCDField;
    sqldtsVisualContratoPAGAMENTO: TStringField;
    sqldtsVisualContratoVLRCONTRATOMENSAL: TBCDField;
    sqldtsVisualContratoVLRTOTALCONTRATO: TBCDField;
    sqldtsVisualContratoCONTRATOANTIGOID: TStringField;
    sqldtsVisualContratoCORRETIVAID: TBCDField;
    sqldtsVisualContratoL_DESCRCORRETIVA: TStringField;
    sqldtsVisualContratoPREVENTIVAID: TBCDField;
    sqldtsVisualContratoL_DESCRICAOPREVENTIVA: TStringField;
    sqldtsContratoServGRUPOID: TBCDField;
    sqldtsContratoServL_SIGLAGRUPO: TStringField;
    sqldtsContratoPRECONTRATO: TBCDField;
    sqldtsContratoAparVLRCONTRATO: TFMTBCDField;
    sqldtsVisualContratoVLRCONTRATO: TFMTBCDField;
    sqldtsVisualContratoL_CIDADE: TStringField;
    sqldtsVisualContratoL_SIGLAUFID: TStringField;
    sqldtsContratoOBSCLIENTE: TMemoField;
    sqldtsVisualContratoOBSCLIENTE: TMemoField;
    sqldtsContratoSUSPFATURAMENTO: TBCDField;
    sqldtsContratoAuto: TSQLDataSet;
    sqldtsContratoAutoServ: TSQLDataSet;
    BCDField17: TBCDField;
    BCDField18: TBCDField;
    BCDField19: TBCDField;
    BCDField20: TBCDField;
    BCDField21: TBCDField;
    StringField21: TStringField;
    BCDField22: TBCDField;
    BCDField23: TBCDField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    dsprvContratoAuto: TDataSetProvider;
    dsContratoAutoLink: TDataSource;
    sqldtsContratoAutoEMPRESAID: TBCDField;
    sqldtsContratoAutoCONTRATOID: TBCDField;
    sqldtsContratoAutoANOID: TBCDField;
    sqldtsContratoAutoNOME: TStringField;
    sqldtsContratoAutoCLIENTEID: TBCDField;
    sqldtsContratoAutoNATUREZAOPID: TBCDField;
    sqldtsContratoAutoTRANSPORTADORID: TBCDField;
    sqldtsContratoAutoOBSERVACAOID: TBCDField;
    sqldtsContratoAutoOBSPDS: TStringField;
    sqldtsContratoAutoDATAVENCIMENTO: TSQLTimeStampField;
    sqldtsContratoAutoVLRCONTRATO: TBCDField;
    sqldtsContratoAutoMESVENCIMENTO: TStringField;
    sqldtsContratoAutoPERIODOINICIAL: TSQLTimeStampField;
    sqldtsContratoAutoSTATUSFINANCEIRO: TBCDField;
    sqldtsContratoAutoPARCELAID: TBCDField;
    sqldtsContratoAutoPERIODOFINAL: TSQLTimeStampField;
    sqldtsContratoL_STATUSFINANCEIRO: TBCDField;
    sqldtsVisualContratoFILIALID: TBCDField;
    sqldtsVisualContratoL_FILIALNOME: TStringField;
    sqldtsVisualContratoVLRMENSAL: TBCDField;
  private
    { Private declarations }
    FSrvAppGSI : ISrvAppGSI;
    FSQLcnn: integer;
  protected
    class procedure UpdateRegistry(Register: Boolean; const ClassID, ProgID: string); override;
    function Get_dmSrvAppGSI: ISrvAppGSI; safecall;
    function Get_SQLcnn: Integer; safecall;
    procedure Set_dmSrvAppGSI(const Value: ISrvAppGSI); safecall;
    procedure Set_SQLcnn(Value: Integer); safecall;
    function ISQL_CM: OleVariant; safecall;
    procedure IVerifParcEmitidas; safecall;
  public
    { Public declarations }
  end;

var FSrvAppCM : TComponentFactory;

implementation

uses FuncoesServidor;

{$R *.DFM}

class procedure TSrvAppCM.UpdateRegistry(Register: Boolean; const ClassID, ProgID: string);
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

function TSrvAppCM.Get_dmSrvAppGSI: ISrvAppGSI;
begin
 Result := FSrvAppGSI;
end;

function TSrvAppCM.Get_SQLcnn: Integer;
begin
 Result := FSQLcnn;
end;

procedure TSrvAppCM.Set_dmSrvAppGSI(const Value: ISrvAppGSI);
begin
 FSrvAppGSI := Value;
end;

procedure TSrvAppCM.Set_SQLcnn(Value: Integer);
var i: integer;
begin
 FSQLcnn := Value;
 for i:=0 to ComponentCount-1 do
     if Components[i] is TSQLDataSet then
        TSQLDataSet(Components[i]).SQLConnection := TSQLConnection(FSQLcnn)
     else if Components[i] is TSQLStoredProc then
        TSQLStoredProc(Components[i]).SQLConnection := TSQLConnection(FSQLcnn);
end;

function TSrvAppCM.ISQL_CM: OleVariant;
var cdsGeral: TClientDataSet;
    i:integer;
begin
 Result := null;
 try
  cdsGeral := TClientDataSet.Create(nil);
  cdsGeral.FieldDefs.Add('Nome', ftString, 50, True);
  cdsGeral.FieldDefs.Add('SQL', ftString, 5000, False);
  cdsGeral.CreateDataSet;

  for i := 0 to ComponentCount -1 do
     if Components[i] is TDataSetProvider then
      begin
        cdsGeral.Append;
        cdsGeral.FieldByName('Nome').AsString := UpperCase((Components[i] as TDataSetProvider ).Name);
        cdsGeral.FieldByName('SQL').AsString := ((Components[i] as TDataSetProvider).DataSet as TSQLDataSet).CommandText;
        cdsGeral.Post;
      end;

  Result := cdsGeral.Data;
 finally
  FreeAndNil(cdsGeral);
 end;
end;

procedure TSrvAppCM.IVerifParcEmitidas;
var sqlCont, sqlUpd : TSQLQuery;
begin
 sqlCont := TSQLQuery.Create(nil);
 sqlCont.SQLConnection := TSQLConnection(FSQLcnn);

 sqlUpd := TSQLQuery.Create(nil);
 sqlUpd.SQLConnection := TSQLConnection(FSQLcnn);

 try
  try // Except
   sqlCont.SQL.Clear;
   sqlCont.SQL.Add('SELECT CM_CONTRATOPARC.EMPRESAID,');
   sqlCont.SQL.Add('       CM_CONTRATOPARC.CONTRATOID,');
   sqlCont.SQL.Add('       CM_CONTRATOPARC.ANOID,');
   sqlCont.SQL.Add('       CM_CONTRATOPARC.PARCELAID,');
   sqlCont.SQL.Add('       CM_CONTRATOPARC.PDSID,');
   sqlCont.SQL.Add('       CM_CONTRATOPARC.GERADA,');
   sqlCont.SQL.Add('       EF_NFS.EMPRESAID,');
   sqlCont.SQL.Add('       EF_NFS.NFSID,');
   sqlCont.SQL.Add('       EF_NFS.DATAEMISSAOID');
   sqlCont.SQL.Add('  FROM CM_CONTRATOPARC CM_CONTRATOPARC, EF_NFS EF_NFS');
   sqlCont.SQL.Add(' WHERE NVL( CM_CONTRATOPARC.PDSID, 0 ) > 0 AND NVL(CM_CONTRATOPARC.GERADA, 0) = 1 AND');
   sqlCont.SQL.Add('       CM_CONTRATOPARC.NFSID IS NULL AND');
   sqlCont.SQL.Add('       CM_CONTRATOPARC.EMPRESAID = EF_NFS.EMPRESAID AND');
   sqlCont.SQL.Add('       CM_CONTRATOPARC.PDSID = EF_NFS.PDSID');
   sqlCont.Prepared := True;
   sqlCont.Open;

   if sqlCont.IsEmpty then
      raise Exception.Create('Não há contrato para atualização de número de notas');

   TSQLConnection(FSQLcnn).StartTransaction(TD);

   while not sqlCont.Eof do
   begin
    sqlUpd.Close;
    sqlUpd.SQL.Clear;
    sqlUpd.SQL.Add('UPDATE CM_CONTRATOPARC');
    sqlUpd.SQL.Add('   SET NFSID         = ' + sqlCont.FieldByName('NFSID').AsString + ', ' );
    sqlUpd.SQL.Add('       DATAEMISSAOID = TO_DATE( ' +  QuotedStr( sqlCont.FieldByName('DATAEMISSAOID').AsString ) + ', ''DD/MM/YYYY'' ) ' );
    sqlUpd.SQL.Add(' WHERE ');
    sqlUpd.SQL.Add('  NVL( PDSID, 0 ) > 0 AND NVL(CM_CONTRATOPARC.GERADA, 0) = 1');
    sqlUpd.SQL.Add('  AND NFSID IS NULL ');
    sqlUpd.SQL.Add('  AND EMPRESAID  = ' + sqlCont.FieldByName('EMPRESAID').AsString );
    sqlUpd.SQL.Add('  AND CONTRATOID = ' + sqlCont.FieldByName('CONTRATOID').AsString );
    sqlUpd.SQL.Add('  AND ANOID      = ' + sqlCont.FieldByName('ANOID').AsString );
    sqlUpd.SQL.Add('  AND PARCELAID  = ' + sqlCont.FieldByName('PARCELAID').AsString );
    sqlUpd.ExecSQL( False );

    sqlCont.Next;
   end;

   { Efetivar a transação no Banco de Dados }
   TSQLConnection(FSQLcnn).Commit(TD);

  except
   on E:Exception do
   begin
    if TSQLConnection(FSQLcnn).InTransaction then
       TSQLConnection(FSQLcnn).Rollback(TD);
    raise Exception.Create(E.Message);
   end;
  end;
 finally
  FreeAndNil( sqlCont );
  FreeAndNil( sqlUpd );
 end;

end;

initialization

FSrvAppCM := TComponentFactory.Create(ComServer, TSrvAppCM,
    Class_SrvAppCM, ciInternal, tmApartment);
end.
