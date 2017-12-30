unit u_dmOS;

interface

uses
  SysUtils, DB, DBClient, MConnect, Classes, Dialogs, Controls;

type
  TConfig = record
    VlrDiaria, VlrRefeicao, VlrKm: Extended;
    OperacaoIdKm, OperacaoIdAdiantamento: Integer;
  end;

  TTubo = record
    CorteAnterior, CortesRealAnterior, UltimoCorte: Extended;
    DataAnterior: TDateTime;
    SerieTuboAnterior, ModeloTuboAnterior: String;
  end;

  TOperacao = ( Gravar,Deletar );

  TdmOS = class(TDataModule)
    cdsCustoHora: TClientDataSet;
    cdsDefeito: TClientDataSet;
    dsCustoHora: TDataSource;
    dsDefeito: TDataSource;
    cdsOs: TClientDataSet;
    dsOs: TDataSource;
    cdsOsHora: TClientDataSet;
    dsOsHora: TDataSource;
    cdsOsDefeito: TClientDataSet;
    dsOsDefeito: TDataSource;
    cdsOsTerceiro: TClientDataSet;
    dsOsTerceiro: TDataSource;
    cdsOsHoraOSID: TStringField;
    cdsOsHoraDATATRABALHOID: TSQLTimeStampField;
    cdsOsHoraQTDHORATRAB: TBCDField;
    cdsOsHoraQTDHORATRANSP: TBCDField;
    cdsOsHoraQTDHORAESPERA: TBCDField;
    cdsOsHoraQTDHORAOUTRA: TBCDField;
    cdsOsHoraUSUARIO: TStringField;
    cdsOsDefeitoOSID: TStringField;
    cdsOsDefeitoITEMID: TBCDField;
    cdsOsDefeitoDEFEITOID: TBCDField;
    cdsOsDefeitoLOCALDEFEITO: TStringField;
    cdsOsDefeitoUSUARIO: TStringField;
    cdsOsTerceiroEMPRESAID: TBCDField;
    cdsOsTerceiroNFSID: TBCDField;
    cdsOsTerceiroDATAEMISSAOID: TSQLTimeStampField;
    cdsOsTerceiroOSID: TStringField;
    cdsOsTerceiroNOMENOTA: TStringField;
    cdsOsTerceiroDATAPREVENTREGA: TSQLTimeStampField;
    cdsOsTerceiroDESTINATARIOID: TBCDField;
    cdsOsTerceiroMOTIVOATRASO: TStringField;
    cdsOsTerceiroUSUARIO: TStringField;
    shdcnnOs: TSharedConnection;
    cdsDefeitoDEFEITOID: TBCDField;
    cdsDefeitoDESCRICAO: TStringField;
    cdsDefeitoUSUARIO: TStringField;
    cdsCustoHoraCUSTOHORAID: TBCDField;
    cdsCustoHoraVLRHORATRAB: TBCDField;
    cdsCustoHoraVLRHORATRANSP: TBCDField;
    cdsCustoHoraVLRHORAESPERA: TBCDField;
    cdsCustoHoraVLRHORAOUTROS: TBCDField;
    cdsCustoHoraUSUARIO: TStringField;
    cdsOsHoraL_NOMEPOPULARTECNICO: TStringField;
    cdsOsDefeitoL_DESCRICAODEFEITO: TStringField;
    cdsOsTerceiroL_NOMEDESTINATARIO: TStringField;
    cdsTipoOS: TClientDataSet;
    cdsTipoOSCFOP: TClientDataSet;
    dsTipoOS: TDataSource;
    dsTipoOSCFOP: TDataSource;
    cdsOSPeca: TClientDataSet;
    dsOSPeca: TDataSource;
    cdsOSPecaOSID: TStringField;
    cdsOSPecaEMPRESAID: TBCDField;
    cdsOSPecaPRODUTOID: TBCDField;
    cdsOSPecaL_DESCRICAOPRODUTO: TStringField;
    cdsOSPecaDATAPECA: TSQLTimeStampField;
    cdsOSPecaQUANTIDADE: TBCDField;
    cdsOSPecaUTILIZADO: TBCDField;
    cdsOSPecaIMPRESSO: TBCDField;
    cdsOSPecaESTOQUEUTILIZADO: TStringField;
    cdsOSPecaUSUARIO: TStringField;
    cdsDefeitosqldtsDefeitoGrupo: TDataSetField;
    cdsDefeitoGrupo: TClientDataSet;
    cdsDefeitoGrupoDEFEITOID: TBCDField;
    cdsDefeitoGrupoGRUPOID: TBCDField;
    dsDefeitoGrupo: TDataSource;
    cdsDefeitoGrupoUSUARIO: TStringField;
    cdsOsOSID: TStringField;
    cdsOsFILIALID: TBCDField;
    cdsOsL_NOMEFANTASIAFILIAL: TStringField;
    cdsOsTIPOOSID: TStringField;
    cdsOsL_DESCRICAOTIPOOS: TStringField;
    cdsOsTIPOATENDIMENTO: TStringField;
    cdsOsOSCORRELACAOID: TStringField;
    cdsOsDATAABERTURA: TSQLTimeStampField;
    cdsOsDATAVALIDADE: TSQLTimeStampField;
    cdsOsDATACONCLUSAO: TSQLTimeStampField;
    cdsOsDATAFECHAMENTO: TSQLTimeStampField;
    cdsOsDATAENTRLABORATORIO: TSQLTimeStampField;
    cdsOsDATASAIDALABORATORIO: TSQLTimeStampField;
    cdsOsTIPOASSIST: TStringField;
    cdsOsSTATUS: TStringField;
    cdsOsSERIEID: TStringField;
    cdsOsMODELOID: TStringField;
    cdsOsCLIENTEID: TBCDField;
    cdsOsL_NOMECLIENTE: TStringField;
    cdsOsSOLICITANTE: TStringField;
    cdsOsSETOR: TStringField;
    cdsOsSERVICO: TStringField;
    cdsOsTECNICOID: TBCDField;
    cdsOsL_NOMETECNICO: TStringField;
    cdsOsORCAMENTOID: TStringField;
    cdsOsVLRORCADO: TBCDField;
    cdsOsMOEDAORCADA: TStringField;
    cdsOsCONDPAGTO: TStringField;
    cdsOsVLRPAGTOANTEC: TBCDField;
    cdsOsCEPID: TBCDField;
    cdsOsNUMERO: TStringField;
    cdsOsCOMPLEMENTO: TStringField;
    cdsOsENDERECO: TStringField;
    cdsOsBAIRRO: TStringField;
    cdsOsCIDADE: TStringField;
    cdsOsSIGLAUFID: TStringField;
    cdsOsUSUARIO: TStringField;
    cdsOssqldtsOsPeca: TDataSetField;
    cdsOssqldtsOsDefeito: TDataSetField;
    cdsOssqldtsOsHora: TDataSetField;
    cdsAparelho: TClientDataSet;
    dsAparelho: TDataSource;
    cdsAparelhoSERIEID: TStringField;
    cdsAparelhoMODELOID: TStringField;
    cdsAparelhoL_DESCRICAOMODELO: TStringField;
    cdsAparelhoSERIEAPARELHOID: TStringField;
    cdsAparelhoMODELOAPARELHOID: TStringField;
    cdsAparelhoL_DESCRICAOMODELOAPARELHO: TStringField;
    cdsAparelhoCLIENTEID: TBCDField;
    cdsAparelhoL_NOMECLIENTE: TStringField;
    cdsAparelhoCLIENTEANTERIORID: TBCDField;
    cdsAparelhoL_NOMECLIENTEANTERIOR: TStringField;
    cdsAparelhoVERSAOSOFT: TStringField;
    cdsAparelhoNIVELHELIO: TStringField;
    cdsAparelhoDATAINSTALACAO: TSQLTimeStampField;
    cdsAparelhoDATAGARANTIA: TSQLTimeStampField;
    cdsAparelhoCEPID: TBCDField;
    cdsAparelhoNUMERO: TStringField;
    cdsAparelhoCOMPLEMENTO: TStringField;
    cdsAparelhoENDERECO: TStringField;
    cdsAparelhoBAIRRO: TStringField;
    cdsAparelhoCIDADE: TStringField;
    cdsAparelhoSIGLAUFID: TStringField;
    cdsAparelhoTELEFONE: TStringField;
    cdsAparelhoCONTRATOID: TStringField;
    cdsAparelhoDATACONTGARANTIAINI: TSQLTimeStampField;
    cdsAparelhoDATACONTGARANTIAFIM: TSQLTimeStampField;
    cdsAparelhoNXID: TStringField;
    cdsAparelhoINVOICEID: TStringField;
    cdsAparelhoTMBID: TStringField;
    cdsAparelhoEXIBEOBS: TBCDField;
    cdsAparelhoOBSERVACAO: TStringField;
    cdsAparelhoUSUARIO: TStringField;
    cdsAparelhosqldtsTubo: TDataSetField;
    cdsAparelhosqldtsTuboInativo: TDataSetField;
    cdsTubo: TClientDataSet;
    dsTubo: TDataSource;
    cdsTuboSERIEID: TStringField;
    cdsTuboMODELOID: TStringField;
    cdsTuboSERIETUBOID: TStringField;
    cdsTuboMODELOTUBOID: TStringField;
    cdsTuboL_DESCRICAOMODELOTUBO: TStringField;
    cdsTuboDATAATUALIZACAO: TSQLTimeStampField;
    cdsTuboNUMCORTESATUAL: TBCDField;
    cdsTuboNUMCORTESTROCA: TBCDField;
    cdsTuboNUMCORTES: TBCDField;
    cdsTuboUSUARIO: TStringField;
    cdsTuboInativo: TClientDataSet;
    dsTuboInativo: TDataSource;
    cdsTuboInativoSERIEID: TStringField;
    cdsTuboInativoMODELOID: TStringField;
    cdsTuboInativoSERIETUBOID: TStringField;
    cdsTuboInativoMODELOTUBOID: TStringField;
    cdsTuboInativoL_DESCRICAOMODELOTUBO: TStringField;
    cdsTuboInativoDATASUBST: TSQLTimeStampField;
    cdsTuboInativoUSUARIO: TStringField;
    cdsOsL_TELEFONE: TStringField;
    cdsOsL_PASTA: TStringField;
    cdsOsL_VERSAOSOFT: TStringField;
    cdsOsL_GRUPOID: TBCDField;
    cdsTipoOSTIPOOSID: TStringField;
    cdsTipoOSDESCRICAO: TStringField;
    cdsTipoOSBLOQABERTURAOS: TBCDField;
    cdsTipoOSBLOQLANCAMENTOS: TBCDField;
    cdsTipoOSEXIGIRCORRELACAO: TBCDField;
    cdsTipoOSUSUARIO: TStringField;
    cdsTipoOSsqldtsTipoOsCfop: TDataSetField;
    cdsTipoOSCFOPTIPOOSID: TStringField;
    cdsTipoOSCFOPNATUREZAOPID: TBCDField;
    cdsTipoOSCFOPL_CFOP: TStringField;
    cdsTipoOSCFOPL_DESCRICAONATUREZA: TStringField;
    cdsTipoOSCFOPUSUARIO: TStringField;
    cdsOsL_INSCRESTADUAL: TStringField;
    cdsOsL_CPFCNPJ: TStringField;
    cdsOsL_INSCRMUNICIPAL: TStringField;
    cdsCustoHoraDESCRICAO: TStringField;
    cdsOSPecaNFSID: TBCDField;
    cdsOSPecaDATAEMISSAOID: TSQLTimeStampField;
    cdsOSPecaMATERIALAVALIADO: TBCDField;
    cdsOSPecaAVALIADOR: TStringField;
    cdsOSPecaJUSTIFICATIVA: TMemoField;
    cdsTuboInativoCORTESREALIZADOS: TBCDField;
    cdsTuboInativoCORTESTROCA: TBCDField;
    cdsOsC_TIPOATENDIMENTO: TStringField;
    cdsOSPecaPECAID: TBCDField;
    cdsClassifPeca: TClientDataSet;
    cdsOsClassifPeca: TClientDataSet;
    dsClassifPeca: TDataSource;
    dsOsClassifPeca: TDataSource;
    cdsClassifPecaCLASSIFPECAID: TBCDField;
    cdsClassifPecaDESCRICAO: TStringField;
    cdsClassifPecaUSUARIO: TStringField;
    cdsOsClassifPecaOSID: TStringField;
    cdsOsClassifPecaITEMID: TBCDField;
    cdsOsClassifPecaCODIGOBARRASID: TBCDField;
    cdsOsClassifPecaSERIEID: TStringField;
    cdsOsClassifPecaMODELOID: TStringField;
    cdsOsClassifPecaEMPRESAID: TBCDField;
    cdsOsClassifPecaPRODUTOID: TBCDField;
    cdsOsClassifPecaCLASSIFPECAID: TBCDField;
    cdsOsClassifPecaDATACLASSIFICACAO: TSQLTimeStampField;
    cdsOsClassifPecaQUANTIDADE: TBCDField;
    cdsOsClassifPecaVLRFOB: TBCDField;
    cdsOsClassifPecaOBSERVACAO: TMemoField;
    cdsOsClassifPecaUSUARIO: TStringField;
    cdsOsClassifPecaPECAID: TBCDField;
    cdsOsClassifPecaL_DESCRICAOPORTUGUES: TStringField;
    cdsOsClassifPecaL_DESCRICAOINGLES: TStringField;
    cdsOsClassifPecaL_DESCRICAOCLASSIFPECA: TStringField;
    cdsOSPecaClassif: TClientDataSet;
    dsOSPecaClassif: TDataSource;
    cdsOSPecaClassifOSID: TStringField;
    cdsOSPecaClassifPECAID: TBCDField;
    cdsOSPecaClassifEMPRESAID: TBCDField;
    cdsOSPecaClassifPRODUTOID: TBCDField;
    cdsOSPecaClassifL_DESCRICAOPRODUTO: TStringField;
    cdsOSPecaClassifNFSID: TBCDField;
    cdsOSPecaClassifDATAEMISSAOID: TSQLTimeStampField;
    cdsOSPecaClassifDATAPECA: TSQLTimeStampField;
    cdsOSPecaClassifQUANTIDADE: TBCDField;
    cdsOSPecaClassifUTILIZADO: TBCDField;
    cdsOSPecaClassifIMPRESSO: TBCDField;
    cdsOSPecaClassifESTOQUEUTILIZADO: TStringField;
    cdsOSPecaClassifMATERIALAVALIADO: TBCDField;
    cdsOSPecaClassifAVALIADOR: TStringField;
    cdsOSPecaClassifJUSTIFICATIVA: TMemoField;
    cdsOSPecaClassifUSUARIO: TStringField;
    cdsLocalizacaoOS: TClientDataSet;
    dsLocalizacaoOS: TDataSource;
    cdsLocalizacaoOSLOCALIZACAOOSID: TBCDField;
    cdsLocalizacaoOSDESCRICAO: TStringField;
    cdsLocalizacaoOSUSUARIO: TStringField;
    cdsOsLOCALIZACAOOSID: TBCDField;
    cdsOsL_LOCALIZACAOOS: TStringField;
    cdsOsHoraENTIDADEID: TBCDField;
    cdsOsL_FAX: TStringField;
    cdsAparelhoL_PASTA: TStringField;
    cdsTipoOSBLOQMOVPRODUTOS: TBCDField;
    cdsTipoOSLANCRDVOSRESTRITA: TBCDField;
    cdsOSPecaL_LOCALIZACAO: TStringField;
    cdsPecaPendente: TClientDataSet;
    dsPecaPendente: TDataSource;
    cdsPecaPendentePECAPENDENTEID: TBCDField;
    cdsPecaPendenteDATAINCLUSAO: TSQLTimeStampField;
    cdsPecaPendenteEMPRESAID: TBCDField;
    cdsPecaPendentePRODUTOID: TBCDField;
    cdsPecaPendenteL_ORIGEM: TStringField;
    cdsPecaPendenteL_PARTNUMBER: TStringField;
    cdsPecaPendenteL_DESCRICAOPORTUGUES: TStringField;
    cdsPecaPendenteL_DESCRICAOINGLES: TStringField;
    cdsPecaPendenteL_ESTOQUETOTAL: TBCDField;
    cdsPecaPendenteOSID: TStringField;
    cdsPecaPendenteL_SERIEID: TStringField;
    cdsPecaPendenteL_MODELOID: TStringField;
    cdsPecaPendenteQUANTIDADE: TBCDField;
    cdsPecaPendenteLOCALPECAID: TBCDField;
    cdsPecaPendenteOBSERVACAO: TMemoField;
    cdsPecaPendenteUSUARIO: TStringField;
    cdsOSPecaClassifL_GRUPOID: TBCDField;
    cdsOSPecaClassifL_PARTNUMBERID: TStringField;
    cdsOsClassifPecaL_PARTNUMBERID: TStringField;
    cdsTipoOSGARANTIA: TBCDField;
    cdsOSPecaDOCUMENTOENTRADA: TBCDField;
    cdsAparelhoMODELOJAPAOID: TStringField;
    cdsAparelhoL_GRUPOID: TBCDField;
    cdsAparelhoL_GRUPOAPARELHOID: TBCDField;
    cdsAparelhoL_TIPO: TStringField;
    cdsOsNUMCORTES: TBCDField;
    cdsOsORCAMENTOREFID: TBCDField;
    cdsOsCONDPAGTOID: TBCDField;
    cdsOsVLRMAODEOBRA: TFMTBCDField;
    cdsOsVLRDESLOCAMENTO: TFMTBCDField;
    cdsOsVLRFRETE: TFMTBCDField;
    cdsOsVLRPECA: TFMTBCDField;
    cdsOsL_DESCR_CONDPAGTO: TStringField;
    cdsOSMaterial: TClientDataSet;
    dsOSMaterial: TDataSource;
    cdsOssqldtsOSMaterial: TDataSetField;
    cdsOSMaterialOSID: TStringField;
    cdsOSMaterialITEMID: TBCDField;
    cdsOSMaterialEMPRESAID: TBCDField;
    cdsOSMaterialPRODUTOID: TBCDField;
    cdsOSMaterialL_DESCRICAOPRODUTO: TStringField;
    cdsOSMaterialQUANTIDADE: TBCDField;
    cdsOSMaterialVLRPRECOUNITARIO: TFMTBCDField;
    cdsOSMaterialVLRPRECOTOTAL: TFMTBCDField;
    cdsOSMaterialUSUARIO: TStringField;
    cdsDefeitoGrupoL_SIGLAGRUPO: TStringField;
    cdsDefeitoGrupoL_DESCRICAOGRUPO: TStringField;
    cdsOsL_SIGLAGRUPO: TStringField;
    cdsAparelhoL_SIGLAGRUPO: TStringField;
    cdsAparelhoL_SIGLAGRUPOAPARELHO: TStringField;
    cdsOSProgSemanal: TClientDataSet;
    dsOSProgSemanal: TDataSource;
    cdsOSProgSemanalItem: TClientDataSet;
    dsOSProgSemanalItem: TDataSource;
    cdsOSProgSemanalDATASERVICOID: TSQLTimeStampField;
    cdsOSProgSemanalITEMID: TBCDField;
    cdsOSProgSemanalOSID: TStringField;
    cdsOSProgSemanalCLIENTEID: TBCDField;
    cdsOSProgSemanalNOME: TStringField;
    cdsOSProgSemanalCIDADE: TStringField;
    cdsOSProgSemanalSIGLAUFID: TStringField;
    cdsOSProgSemanalSERIEID: TStringField;
    cdsOSProgSemanalMODELOID: TStringField;
    cdsOSProgSemanalHORATRABINICIAL: TSQLTimeStampField;
    cdsOSProgSemanalHORATRABFINAL: TSQLTimeStampField;
    cdsOSProgSemanalCOMENTARIO: TMemoField;
    cdsOSProgSemanalUSUARIO: TStringField;
    cdsOSProgSemanalsqlOSProgSemanalItem: TDataSetField;
    cdsOSProgSemanalItemDATASERVICOID: TSQLTimeStampField;
    cdsOSProgSemanalItemITEMID: TBCDField;
    cdsOSProgSemanalItemTECNICOID: TBCDField;
    cdsOSProgSemanalItemUSUARIO: TStringField;
    cdsOsVLRTOTALMAODEOBRA: TFMTBCDField;
    cdsOsVLRTOTALDESLOCAMENTO: TFMTBCDField;
    cdsOsVLRTOTALORCCOMP: TFMTBCDField;
    cdsOsVLRTOTALFRETE: TFMTBCDField;
    cdsOsVLRTOTALOUTRO: TFMTBCDField;
    cdsOsVLRTOTALPAGAR: TFMTBCDField;
    cdsOsVLRTOTALPECA: TFMTBCDField;
    cdsOsVLRDESCONTO: TFMTBCDField;
    cdsOsPORCDESCONTO: TFMTBCDField;
    cdsOsNOMELIBDESCONTO: TStringField;
    cdsOSMaterialDESCRICAOMATSERV: TStringField;
    cdsOsOSIMPRESSA: TBCDField;
    cdsOssqldtsOSOcOperacional: TDataSetField;
    cdsOcOperacional: TClientDataSet;
    dsOcOperacional: TDataSource;
    cdsOcOperacionalOCOPERACIONALID: TBCDField;
    cdsOcOperacionalDESCRICAO: TStringField;
    cdsOcOperacionalUSUARIO: TStringField;
    cdsOsOcOperacional: TClientDataSet;
    dsOSOcOperacional: TDataSource;
    cdsOsOcOperacionalOSID: TStringField;
    cdsOsOcOperacionalITEMID: TBCDField;
    cdsOsOcOperacionalOCOPERACIONALID: TBCDField;
    cdsOsOcOperacionalL_DESCRICAOOCOPERACIONAL: TStringField;
    cdsOsOcOperacionalACAOTOMADA: TMemoField;
    cdsOsOcOperacionalUSUARIO: TStringField;
    cdsOsOcOperacionalDATAOCORRENCIA: TSQLTimeStampField;
    cdsOsOcOperacionalDATAACAOTOMADA: TSQLTimeStampField;
    cdsOsOcOperacionalUSUARIOACAOTOMADA: TStringField;
    cdsTipoOSEXIGIRSERIEOSFECH: TBCDField;
    cdsTipoOSDERIVADA: TBCDField;
    cdsLocalizacaoOSFECHAROS: TBCDField;
    cdsOsOBSSERVICO: TStringField;
    cdsOSPecaClassifL_SIGLAGRUPO: TStringField;
    cdsPecaPendenteL_GRUPOID: TBCDField;
    cdsPecaPendenteL_SIGLAGRUPO: TStringField;
    cdsOSPecaOBSERVACAO: TStringField;
    cdsOsDATAHORACHEGADA: TSQLTimeStampField;
    cdsOsDATAHORASAIDA: TSQLTimeStampField;
    cdsOsOSOFFLINE: TBCDField;
    cdsOsOSOFFLINEUSUARIO: TStringField;
    cdsTipoOSFECHESPECIFICO: TBCDField;
    cdsOSMaterialALIQUOTAIPI: TFMTBCDField;
    cdsTipoOSEXIGIRSERIEABERTURA: TBCDField;
    cdsTipoOSEXIGIRMODELOABERTURA: TBCDField;
    cdsOsTerceiroL_CIDADE: TStringField;
    cdsOsTerceiroL_SIGLAUFID: TStringField;
    cdsOsDefeitoSERVICOEXECUTADO: TMemoField;
    cdsOsTerceiroItem: TClientDataSet;
    cdsOsTerceirosqldtsOSTerceiroItem: TDataSetField;
    cdsOsTerceiroItemEMPRESAID: TBCDField;
    cdsOsTerceiroItemNFSID: TBCDField;
    cdsOsTerceiroItemDATAEMISSAOID: TSQLTimeStampField;
    cdsOsTerceiroItemITEMID: TBCDField;
    cdsOsTerceiroItemPRODUTOID: TBCDField;
    cdsOsTerceiroItemDESCRICAOPRODUTO: TStringField;
    cdsOsTerceiroItemQUANTIDADE: TFMTBCDField;
    cdsOsTerceiroItemVLRPRECOUNITARIO: TBCDField;
    cdsOsTerceiroItemVLRPRECOTOTAL: TBCDField;
    cdsOsTerceiroItemUSUARIO: TStringField;
    dsOsTerceiroItem: TDataSource;
    cdsOsOSELETRONICA: TBCDField;
    cdsOsTerceiroTIPOCONTROLE: TStringField;
    cdsOsVERSAOSOFT: TStringField;
    cdsOsLIBCHEFIADATA: TSQLTimeStampField;
    cdsOsLIBCHEFIANOME: TStringField;
    cdsOsLIBCHEFIA: TBCDField;
    cdsOsTENSAOLOCAL: TBCDField;
    cdsOsDATARETIRADA: TSQLTimeStampField;
    cdsOsDATAENTREGA: TSQLTimeStampField;
    cdsOsVLRSEGURO: TFMTBCDField;
    cdsTipoOSEXIGIRLIBERACAO: TBCDField;
    cdsDemoCatalogo: TClientDataSet;
    cdsDemoCatalogoItem: TClientDataSet;
    dsDemoCatalogo: TDataSource;
    dsDemoCatalogoItem: TDataSource;
    cdsDemoCatalogoDEMOCATALOGOID: TBCDField;
    cdsDemoCatalogoDESCRICAOEQUIPAMENTO: TStringField;
    cdsDemoCatalogoEMPRESAID: TBCDField;
    cdsDemoCatalogoPRODUTOID: TBCDField;
    cdsDemoCatalogoL_DESCRICAOPORTUGUES: TStringField;
    cdsDemoCatalogoL_PARTNUMBERID: TStringField;
    cdsDemoCatalogoL_OBSERVACAO: TStringField;
    cdsDemoCatalogoSERIEID: TStringField;
    cdsDemoCatalogoUSUARIO: TStringField;
    cdsDemoCatalogosqldtsDemoCatalogoItem: TDataSetField;
    cdsDemoCatalogoItemDEMOCATALOGOID: TBCDField;
    cdsDemoCatalogoItemITEMID: TBCDField;
    cdsDemoCatalogoItemEMPRESAID: TBCDField;
    cdsDemoCatalogoItemPRODUTOID: TBCDField;
    cdsDemoCatalogoItemL_DESCRICAOPORTUGUES: TStringField;
    cdsDemoCatalogoItemL_PARTNUMBERID: TStringField;
    cdsDemoCatalogoItemL_OBSERVACAO: TStringField;
    cdsDemoCatalogoItemSERIEID: TStringField;
    cdsDemoCatalogoItemUSUARIO: TStringField;
    cdsOSDemo: TClientDataSet;
    dsOSDemo: TDataSource;
    cdsOssqldtsOSDemo: TDataSetField;
    cdsOSDemoOSID: TStringField;
    cdsOSDemoITEMID: TBCDField;
    cdsOSDemoDEMOCATALOGOID: TBCDField;
    cdsOSDemoEMPRESAID: TBCDField;
    cdsOSDemoPRODUTOID: TBCDField;
    cdsOSDemoSERIEID: TStringField;
    cdsOSDemoL_DESCRICAODEMOCATALOGO: TStringField;
    cdsOSDemoL_DESCRICAOPORTUGUES: TStringField;
    cdsOSDemoL_PARTNUMBERID: TStringField;
    cdsOSDemoL_OBSERVACAO: TStringField;
    cdsOSDemoUSUARIO: TStringField;
    cdsOsRESPRECEBIMENTO: TStringField;
    cdsOsOBSDEMO1: TStringField;
    cdsOsOBSDEMO2: TStringField;
    cdsAparelhoCEPMDID: TBCDField;
    cdsAparelhoNUMEROMD: TStringField;
    cdsAparelhoCOMPLEMENTOMD: TStringField;
    cdsAparelhoENDERECOMD: TStringField;
    cdsAparelhoBAIRROMD: TStringField;
    cdsAparelhoCIDADEMD: TStringField;
    cdsAparelhoSIGLAUFMDID: TStringField;
    cdsAparelhoTELEFONEMD: TStringField;
    cdsAparelhoCONTATOMD: TStringField;
    cdsAparelhoNOMEDEPTOMD: TStringField;
    cdsAparelhoEMAILMD: TStringField;
    cdsAparelhoCONTATOMD2: TStringField;
    cdsAparelhoCONTATOMD3: TStringField;
    procedure cdsAparelhoCLIENTEIDValidate(Sender: TField);
    procedure cdsAparelhoDATACONTGARANTIAINIChange(Sender: TField);
    procedure cdsTuboBeforeEdit(DataSet: TDataSet);
    procedure cdsTuboNUMCORTESATUALChange(Sender: TField);
    procedure cdsTuboDATAATUALIZACAOValidate(Sender: TField);
    procedure cdsOsBeforeDelete(DataSet: TDataSet);
    procedure cdsOsAfterPost(DataSet: TDataSet);
    procedure cdsOsNewRecord(DataSet: TDataSet);
    procedure cdsOsBeforeCancel(DataSet: TDataSet);
    procedure cdsOsHoraNewRecord(DataSet: TDataSet);
    procedure cdsOsHoraAfterPost(DataSet: TDataSet);
    procedure cdsOsHoraBeforeEdit(DataSet: TDataSet);
    procedure cdsOsHoraDATATRABALHOIDValidate(Sender: TField);
    procedure cdsTipoOsAfterPost(DataSet: TDataSet);
    procedure cdsTipoOsReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsAparelhoMODELOIDValidate(Sender: TField);
    procedure cdsAparelhoMODELOAPARELHOIDValidate(Sender: TField);
    procedure cdsAparelhoCLIENTEANTERIORIDValidate(Sender: TField);
    procedure cdsTipoOsCfopNATUREZAOPIDValidate(Sender: TField);
    procedure cdsOsFILIALIDValidate(Sender: TField);
    procedure cdsOsTIPOOSIDValidate(Sender: TField);
    procedure cdsOsCLIENTEIDValidate(Sender: TField);
    procedure cdsOsTECNICOIDValidate(Sender: TField);
    procedure cdsOsDefeitoDEFEITOIDValidate(Sender: TField);
    procedure cdsOsTerceiroDESTINATARIOIDValidate(Sender: TField);
    procedure cdsTecnicoCPF_CNPJValidate(Sender: TField);
    procedure cdsTipoOsAfterDelete(DataSet: TDataSet);
    procedure cdsTecnicoCPF_CNPJGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure cdsTuboMODELOTUBOIDValidate(Sender: TField);
    procedure cdsOSPecaNewRecord(DataSet: TDataSet);
    procedure cdsTuboInativoMODELOIDValidate(Sender: TField);
    procedure cdsTuboAfterPost(DataSet: TDataSet);
    procedure cdsTuboBeforeInsert(DataSet: TDataSet);
    procedure cdsDefeitoGrupoGRUPOIDValidate(Sender: TField);
    procedure cdsCustoHoraNewRecord(DataSet: TDataSet);
    procedure cdsAparelhoAfterDelete(DataSet: TDataSet);
    procedure cdsTuboAfterDelete(DataSet: TDataSet);
    procedure cdsAparelhoAfterPost(DataSet: TDataSet);
    procedure cdsTuboInativoAfterDelete(DataSet: TDataSet);
    procedure cdsTuboInativoAfterPost(DataSet: TDataSet);
    procedure cdsOSPecaAfterInsert(DataSet: TDataSet);
    procedure cdsOsHoraBeforeInsert(DataSet: TDataSet);
    procedure cdsOsDespesaBeforeInsert(DataSet: TDataSet);
    procedure cdsOsDefeitoBeforeInsert(DataSet: TDataSet);
    procedure cdsOsBeforePost(DataSet: TDataSet);
    procedure cdsOsFILIALIDChange(Sender: TField);
    procedure cdsOsTIPOOSIDChange(Sender: TField);
    procedure cdsOsOSIDValidate(Sender: TField);
    procedure cdsOsDATAABERTURAValidate(Sender: TField);
    procedure cdsOsMODELOIDValidate(Sender: TField);
    procedure cdsOsDATAFECHAMENTOValidate(Sender: TField);
    procedure cdsOsDATACONCLUSAOValidate(Sender: TField);
    procedure cdsOsTIPOATENDIMENTOValidate(Sender: TField);
    procedure cdsDefeitoDEFEITOIDValidate(Sender: TField);
    procedure cdsTipoOSCFOPAfterPost(DataSet: TDataSet);
    procedure cdsTipoOSTIPOOSIDValidate(Sender: TField);
    procedure cdsTipoOSCFOPAfterDelete(DataSet: TDataSet);
    procedure cdsOsDefeitoBeforeEdit(DataSet: TDataSet);
    procedure cdsOSPecaBeforeEdit(DataSet: TDataSet);
    procedure cdsOSPecaBeforeDelete(DataSet: TDataSet);
    procedure cdsOSPecaPRODUTOIDValidate(Sender: TField);
    procedure cdsOSPecaQUANTIDADEValidate(Sender: TField);
    procedure cdsOsDefeitoNewRecord(DataSet: TDataSet);
    procedure cdsCustoHoraAfterDelete(DataSet: TDataSet);
    procedure cdsDefeitoAfterDelete(DataSet: TDataSet);
    procedure cdsDefeitoAfterPost(DataSet: TDataSet);
    procedure cdsDefeitoGrupoAfterDelete(DataSet: TDataSet);
    procedure cdsDefeitoGrupoAfterPost(DataSet: TDataSet);
    procedure cdsOsAfterDelete(DataSet: TDataSet);
    procedure cdsOsHoraAfterDelete(DataSet: TDataSet);
    procedure cdsOsDefeitoAfterPost(DataSet: TDataSet);
    procedure cdsOsDefeitoAfterDelete(DataSet: TDataSet);
    procedure cdsOSPecaAfterDelete(DataSet: TDataSet);
    procedure cdsOSPecaAfterPost(DataSet: TDataSet);
    procedure cdsOsBcoHoraAfterDelete(DataSet: TDataSet);
    procedure cdsOsBcoHoraAfterPost(DataSet: TDataSet);
    procedure cdsOsTerceiroAfterPost(DataSet: TDataSet);
    procedure cdsOsTerceiroAfterDelete(DataSet: TDataSet);
    procedure cdsDefeitoGrupoNewRecord(DataSet: TDataSet);
    procedure cdsDefeitoNewRecord(DataSet: TDataSet);
    procedure cdsTipoOSNewRecord(DataSet: TDataSet);
    procedure cdsTipoOSCFOPNewRecord(DataSet: TDataSet);
    procedure cdsAparelhoNewRecord(DataSet: TDataSet);
    procedure cdsTuboNewRecord(DataSet: TDataSet);
    procedure cdsTuboInativoNewRecord(DataSet: TDataSet);
    procedure cdsOsTerceiroNewRecord(DataSet: TDataSet);
    procedure cdsOSPecaBeforePost(DataSet: TDataSet);
    procedure cdsOSPecaAfterEdit(DataSet: TDataSet);
    procedure cdsCustoHoraAfterPost(DataSet: TDataSet);
    procedure cdsOsCalcFields(DataSet: TDataSet);
    procedure cdsTuboBeforePost(DataSet: TDataSet);
    procedure cdsClassifPecaAfterDelete(DataSet: TDataSet);
    procedure cdsClassifPecaAfterPost(DataSet: TDataSet);
    procedure cdsOsClassifPecaAfterDelete(DataSet: TDataSet);
    procedure cdsOsClassifPecaAfterPost(DataSet: TDataSet);
    procedure cdsOsClassifPecaNewRecord(DataSet: TDataSet);
    procedure cdsOsClassifPecaPRODUTOIDValidate(Sender: TField);
    procedure cdsOsClassifPecaCLASSIFPECAIDValidate(Sender: TField);
    procedure cdsOSPecaClassifOSIDValidate(Sender: TField);
    procedure cdsOSPecaClassifPRODUTOIDValidate(Sender: TField);
    procedure cdsOSPecaClassifNewRecord(DataSet: TDataSet);
    procedure cdsOSPecaClassifBeforePost(DataSet: TDataSet);
    procedure cdsLocalizacaoOSNewRecord(DataSet: TDataSet);
    procedure cdsOsHoraENTIDADEIDValidate(Sender: TField);
    procedure cdsOsLOCALIZACAOOSIDValidate(Sender: TField);
    procedure cdsAparelhoDATAINSTALACAOChange(Sender: TField);
    procedure cdsPecaPendenteNewRecord(DataSet: TDataSet);
    procedure cdsPecaPendentePRODUTOIDValidate(Sender: TField);
    procedure cdsPecaPendenteOSIDValidate(Sender: TField);
    procedure cdsOsCONDPAGTOIDValidate(Sender: TField);
    procedure cdsOSMaterialAfterDelete(DataSet: TDataSet);
    procedure cdsOSMaterialAfterPost(DataSet: TDataSet);
    procedure cdsOSMaterialBeforeEdit(DataSet: TDataSet);
    procedure cdsOSMaterialBeforeInsert(DataSet: TDataSet);
    procedure cdsOSMaterialNewRecord(DataSet: TDataSet);
    procedure cdsOsHoraBeforeDelete(DataSet: TDataSet);
    procedure cdsOsDefeitoBeforeDelete(DataSet: TDataSet);
    procedure cdsOSMaterialPRODUTOIDValidate(Sender: TField);
    procedure cdsOsVLRMAODEOBRAValidate(Sender: TField);
    procedure cdsOSMaterialVLRPRECOUNITARIOValidate(Sender: TField);
    procedure cdsOSMaterialQUANTIDADEValidate(Sender: TField);
    procedure cdsOcOperacionalAfterDelete(DataSet: TDataSet);
    procedure cdsOcOperacionalAfterPost(DataSet: TDataSet);
    procedure cdsOcOperacionalNewRecord(DataSet: TDataSet);
    procedure cdsOsOcOperacionalAfterDelete(DataSet: TDataSet);
    procedure cdsOsOcOperacionalAfterPost(DataSet: TDataSet);
    procedure cdsOsOcOperacionalBeforeEdit(DataSet: TDataSet);
    procedure cdsOsOcOperacionalBeforeInsert(DataSet: TDataSet);
    procedure cdsOsOcOperacionalNewRecord(DataSet: TDataSet);
    procedure cdsOsOcOperacionalOCOPERACIONALIDValidate(Sender: TField);
    procedure cdsOsOcOperacionalDATAACAOTOMADAValidate(Sender: TField);
    procedure cdsOsPORCDESCONTOValidate(Sender: TField);
    procedure cdsOsNOMELIBDESCONTOValidate(Sender: TField);
    procedure cdsOsLIBCHEFIAValidate(Sender: TField);
    procedure cdsDemoCatalogoAfterDelete(DataSet: TDataSet);
    procedure cdsDemoCatalogoAfterPost(DataSet: TDataSet);
    procedure cdsDemoCatalogoNewRecord(DataSet: TDataSet);
    procedure cdsDemoCatalogoItemNewRecord(DataSet: TDataSet);
    procedure cdsDemoCatalogoItemAfterDelete(DataSet: TDataSet);
    procedure cdsDemoCatalogoItemAfterPost(DataSet: TDataSet);
    procedure cdsDemoCatalogoPRODUTOIDValidate(Sender: TField);
    procedure cdsDemoCatalogoItemPRODUTOIDValidate(Sender: TField);
    procedure cdsDemoCatalogoEMPRESAIDValidate(Sender: TField);
    procedure cdsOSDemoAfterDelete(DataSet: TDataSet);
    procedure cdsOSDemoAfterPost(DataSet: TDataSet);
    procedure cdsOSDemoNewRecord(DataSet: TDataSet);
    procedure cdsOSDemoEMPRESAIDValidate(Sender: TField);
    procedure cdsOSDemoPRODUTOIDValidate(Sender: TField);
    procedure cdsOSDemoDEMOCATALOGOIDValidate(Sender: TField);
    procedure cdsOsDefeitoBeforePost(DataSet: TDataSet);
    procedure cdsAparelhoCEPMDIDValidate(Sender: TField);
  private
    { Private declarations }
    NovoTubo : TTubo;
    NovoRegOS : Boolean;
    procedure ValidarModelo(ModeloId: String);
    procedure AtualizaCorteTubo;
    procedure AnaliseContrato;
    procedure AutoOS( FilialId : Integer  );
    procedure VerificaStatusContrato( Data : TDateTime );
    procedure BloquearInsercao;
    procedure BloqOSFechada( Operacao : String );
    procedure AbreTabela( Client : TClientDataSet );
    procedure Correlacao;
    procedure VerificarTabelas;
    procedure DeletaEstoque;
    procedure AtualizaComponente;
    function  OsExiste:Boolean;
    procedure AtualizarLogPeca(  Dataset : TDataSet );
  public
    { Public declarations }
    Config: TConfig;
    function VerifStatusTIPOOS( TipoOS, CampoBloqueio : String ) : Boolean;
    function ValidadeOS : Boolean;
    procedure FiltroDefeitoGrupo( Campo : TField );
    function RetornarTipoOS( TipoOSId, Campo : String ) : Integer;
  end;

var
  dmOS: TdmOS;

const
  QtdDiasGarantia: Integer = 365;

implementation

{$R *.dfm}

uses
  FuncoesDsi, FuncoesCliente, u_dmGSI, u_ReconcileError, u_dmPP, Variants, u_dmEF, u_dmAS;


procedure TdmOS.AtualizarLogPeca(  Dataset : TDataSet );
var sUpd : String;
begin
 sUpd := 'INSERT INTO OS_OSPECALOG( OSID, PECAID, ITEMID, EMPRESAID, PRODUTOID, NFSID, DATAEMISSAOID, DATAPECA, ' +
         '   QUANTIDADE, UTILIZADO, IMPRESSO, ESTOQUEUTILIZADO, OBSERVACAO,' +
         '   USUARIOAPAGOU, DATAHORAEXCLUSAO, USUARIO ) VALUES (' +
         QuotedStr( DataSet.FieldByName('OSID').AsString ) + ',' +
         DataSet.FieldByName('PECAID').AsString + ',' +
         IntToStr( ExecSequencia( 'SQ_OS_OSPecaLog_ItemId') ) + ',' +
         DataSet.FieldByName('EMPRESAID').AsString + ',' +
         DataSet.FieldByName('PRODUTOID').AsString + ',';

 if DataSet.FieldByName('NFSID').IsNull then
    sUpd :=  sUpd + 'NULL, '
 else
    sUpd := sUpd + DataSet.FieldByName('NFSID').AsString + ',';

 sUpd := sUpd +
         QuotedStr( DataSet.FieldByName('DATAEMISSAOID').AsString ) + ',' +
         QuotedStr( DataSet.FieldByName('DATAPECA').AsString ) + ',' +
         SubstituiString( DataSet.FieldByName( 'QUANTIDADE' ).AsString, ',', '.' ) + ',' +
         DataSet.FieldByName('UTILIZADO').AsString + ',' +
         DataSet.FieldByName('IMPRESSO').AsString + ',' +
         QuotedStr( DataSet.FieldByName('ESTOQUEUTILIZADO').AsString ) + ',' +
         QuotedStr( DataSet.FieldByName('OBSERVACAO').AsString ) + ',' +
         QuotedStr( dmGsi.UsuarioAtivo ) + ',' +
         'TO_DATE(''' +  DateTimeToStr( Now ) + ''', ''dd/mm/yyyy HH24:MI:SS'' )' + ',' +
         QuotedStr( DataSet.FieldByName('USUARIO').AsString ) +  ')';

 StringToSQLFile( sUpd );

 ExecDML( sUpd );
end;


procedure TdmOS.FiltroDefeitoGrupo( Campo : TField );
var cds : TClientDataSet;
    sSQL : String;
begin
 try
  sSQL := 'SELECT OS_DEFEITO.DEFEITOID "DefeitoId",' + #13#10 +
          '       OS_DEFEITO.DESCRICAO Descricao,' + #13#10 +
          '       OS_DEFEITOGRUPO.GRUPOID "L_GrupoID",' + #13#10 +
          '       EF_GRUPO.SIGLAGRUPO "L_SiglaGrupo"' + #13#10 +
          '  FROM os_defeito,' + #13#10 +
          '       OS_DEFEITOGRUPO OS_DEFEITOGRUPO,' + #13#10 +
          '       EF_GRUPO EF_GRUPO' + #13#10 +
          ' WHERE OS_DEFEITO.DEFEITOID = OS_DEFEITOGRUPO.DEFEITOID' + #13#10 +
          '       AND EF_GRUPO.GRUPOID(+) = OS_DEFEITOGRUPO.GRUPOID' +
          '       AND OS_DEFEITOGRUPO.GRUPOID = ' + dmOS.cdsOsL_GRUPOID.AsString;

  ExecDynamicProvider( -1, sSQL, Cds );

  CriaFormLookUp( dmOS.cdsDefeito.Name, sSQL, Campo,'DEFEITOID','DEFEITOID' );
  
  if Campo.IsNull then
     MessageDlg('Defeito grupo não cadastrado!',mtInformation,[mbOK],0);

 finally
  FreeAndNil( cds );
 end;
end;

function TdmOS.VerifStatusTIPOOS( TipoOS, CampoBloqueio : String ) : Boolean;
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Result := True;

 if TipoOS = '' then
    exit;

 Cds     := nil;
 InstSQL := 'TIPOOSID = ' + QuotedStr( TipoOS );
 iSQL    := AnalisarAddSQL( LocateSQL( cdsTipoOs.ProviderName ), InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if Cds.IsEmpty then
     begin
      Result := False;
      raise Exception.Create('Valor do campo TIPOOSID está Inválido.');
     end;

  if Cds.FieldByName( CampoBloqueio ).AsInteger = 1 then
     begin
      Result := False;
      raise Exception.Create('Tipo de O.S. com restrição no campo : ' + CampoBloqueio );
     end;

 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmOS.ValidarModelo(ModeloId: String);
var InstSQL, iSql : String;
    cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'MODELOID = ' + QuotedStr( ModeloId );
 iSQL    := AnalisarAddSQL( LocateSQL( dmPP.cdsCatalogo.ProviderName ),
                             InstSQL );
 try
  try
   ExecDynamicProvider( -1, iSQL, Cds );

   if cds.IsEmpty then
      begin
       if ( cdsOsTIPOOSID.Value = 'I' ) or ( cdsOsTIPOOSID.Value = 'K' ) then
          begin
           if ( cdsOsMODELOID.Value <> '' ) then
              raise Exception.Create('Catálogo não existe !');
          end
       else
          raise Exception.Create('Catálogo não existe !');
      end
   else
      begin
       cdsOsL_GRUPOID.Value    := cds.FieldByName('GRUPOID').Value;
       cdsOsL_SIGLAGRUPO.Value := cds.FieldByName('L_SIGLAGRUPO').Value;
      end;

   cds.Close;
   except
    on E: Exception do raise;
   end;
 finally
  FreeAndNil( cds );
 end;
end;

procedure TdmOS.cdsAparelhoCLIENTEIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'ENTIDADEID =' + QuotedStr( TField( Sender ).AsString );
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvEntidade' ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsAparelhoL_NOMECLIENTE.Value := Cds.FieldByName('NOME').AsString;

      if MessageDlg('Atualizar endereço do Cliente no Aparelho ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
         begin
          cdsAparelhoCEPID.Value         := Cds.FieldByName('CEPID').AsInteger;
          cdsAparelhoNUMERO.Value        := Cds.FieldByName('NUMERO').AsString;
          cdsAparelhoCOMPLEMENTO.Value   := Cds.FieldByName('COMPLEMENTO').AsString;
          cdsAparelhoENDERECO.Value      := Cds.FieldByName('ENDERECO').AsString;
          cdsAparelhoBAIRRO.Value        := Cds.FieldByName('BAIRRO').AsString;
          cdsAparelhoCIDADE.Value        := Cds.FieldByName('CIDADE').AsString;
          cdsAparelhoSIGLAUFID.Value     := Cds.FieldByName('SIGLAUFID').AsString;
          cdsAparelhoTELEFONE.Value      := Cds.FieldByName('TELEFONE').AsString;
         end;
     end
  else
     begin
      cdsAparelhoL_NOMECLIENTE.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.');
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;

end;

procedure TdmOS.cdsAparelhoDATACONTGARANTIAINIChange(Sender: TField);
begin
 cdsAparelhoDATACONTGARANTIAFIM.AsDateTime := cdsAparelhoDATACONTGARANTIAINI.AsDateTime + QtdDiasGarantia;
end;

procedure TdmOS.cdsTuboBeforeEdit(DataSet: TDataSet);
begin
 NovoTubo.DataAnterior       := cdsTuboDATAATUALIZACAO.AsDateTime;
 NovoTubo.CorteAnterior      := cdsTuboNUMCORTESATUAL.Value;
 NovoTubo.SerieTuboAnterior  := cdsTuboSERIETUBOID.Value;
 NovoTubo.ModeloTuboAnterior := cdsTuboMODELOTUBOID.Value;
 NovoTubo.CortesRealAnterior := cdsTuboNUMCORTES.Value;
end;

procedure TdmOS.AtualizaCorteTubo;
begin
 if NovoTubo.CorteAnterior <= cdsTuboNUMCORTESATUAL.Value then
    begin
     if NovoTubo.SerieTuboAnterior <> cdsTuboSERIETUBOID.Value then
        begin
         NovoTubo.UltimoCorte   := cdsTuboNUMCORTESATUAL.Value - NovoTubo.CorteAnterior + cdsTuboNUMCORTES.Value;
         NovoTubo.CorteAnterior := cdsTuboNUMCORTESATUAL.Value;
         cdsTuboNUMCORTES.Value := 0;
        end
     else
        NovoTubo.UltimoCorte := cdsTuboNUMCORTESATUAL.Value - NovoTubo.CorteAnterior + cdsTuboNUMCORTES.Value;

     cdsTuboNUMCORTES.Value := cdsTuboNUMCORTESATUAL.Value - NovoTubo.CorteAnterior + cdsTuboNUMCORTES.Value;
    end
 else
    begin
     if MessageDlg( 'Número de cortes inferior a última atualização ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
         // Quando trocar o tubo
         if NovoTubo.SerieTuboAnterior <> cdsTuboSERIETUBOID.Value then
            begin
             NovoTubo.UltimoCorte   := cdsTuboNUMCORTESATUAL.Value + 1000000 - NovoTubo.CorteAnterior + cdsTuboNUMCORTES.Value;
             cdsTuboNUMCORTES.Value := 0;
            end
         else
            cdsTuboNUMCORTES.Value := cdsTuboNUMCORTESATUAL.Value + 1000000 - NovoTubo.CorteAnterior + cdsTuboNUMCORTES.Value;
        end
     else
        Abort;
    end;

 if ( NovoTubo.SerieTuboAnterior <> cdsTuboSERIETUBOID.Value ) then
    begin
     NovoTubo.CorteAnterior      := cdsTuboNUMCORTESATUAL.Value;
     cdsTuboNUMCORTESTROCA.Value := NovoTubo.CorteAnterior;
    end;
end;

procedure TdmOS.cdsTuboNUMCORTESATUALChange(Sender: TField);
begin
 AtualizaCorteTubo;
end;

procedure TdmOS.cdsTuboDATAATUALIZACAOValidate(Sender: TField);
begin
 if TField( Sender ).AsDateTime < cdsAparelhoDATAINSTALACAO.AsDateTime then
    raise Exception.Create('Data de atualização do Tubo menor que data de instalação !');

 if cdsTubo.State = dsEdit then
    if TField( Sender ).Value < NovoTubo.DataAnterior then
       raise Exception.Create('Data de atualização menor que data anterior de atualização do Tubo!');
end;

procedure TdmOS.cdsOsBeforeDelete(DataSet: TDataSet);
var Tipo  : String;
begin
 BloqOSFechada( 'Deleção' );

 if not MessageDlg( 'Deletar Ordem de Serviço e seus itens ?', mtConfirmation, [mbYes, mbNo], 0 ) = mrNo then
    Abort;

 VerificarTabelas;

 if cdsOsTIPOOSID.Value = 'D' then
    begin
     if cdsOsTIPOATENDIMENTO.AsString = 'P' then
        Tipo := 'QTDPREVENTIVASUTIL'
     else
        Tipo := 'QTDCORRETIVASUTIL';

     shdcnnOs.AppServer.IAtualizaContrato( cdsOsSERIEID.AsString,cdsOsMODELOID.AsString,
                                           Tipo, '-', EmpresaAtualId );
    end;

end;

procedure TdmOS.cdsOsAfterPost(DataSet: TDataSet);
var Tipo : String;
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if DataSet.Tag = 1 then      // Qdo for novo registro atualizar o contador
    begin
     DataSet.Tag := 0;
     shdcnnOs.AppServer.IAtualizaUltimaOS( cdsOsFILIALID.AsString );

     if cdsOsTIPOOSID.Value = 'D' then
         begin
          if      cdsOsTIPOATENDIMENTO.AsString = 'P' then
                  Tipo := 'QTDPREVENTIVASUTIL'
          else if cdsOsTIPOATENDIMENTO.AsString = 'C' then
                  Tipo := 'QTDCORRETIVASUTIL';

          shdcnnOs.AppServer.IAtualizaContrato( cdsOsSERIEID.AsString,cdsOsMODELOID.AsString,
                                                Tipo, '+', EmpresaAtualId );
        end;
    end;
end;

procedure TdmOS.cdsOsNewRecord(DataSet: TDataSet);
begin
 DataSet.Tag := 1;
 NovoRegOS   := True;

 cdsOsFILIALID.AsInteger              := dmGsi.PadraoFilialId;
 cdsOsNUMCORTES.Value                 := 0;
 cdsOsOSIMPRESSA.Value                := 0;
 cdsOsOSOFFLINE.Value                 := 0;
 cdsOsOSELETRONICA.Value              := 0;
 cdsOsLIBCHEFIA.AsInteger             := 0;
 cdsOsLOCALIZACAOOSID.Value           := 1;
 cdsOsVLRORCADO.Value                 := 0;
 cdsOsVLRPAGTOANTEC.Value             := 0;
 cdsOsVLRDESCONTO.AsCurrency          := 0;
 cdsOsPORCDESCONTO.AsCurrency         := 0;
 cdsOsVLRMAODEOBRA.AsCurrency         := 0;
 cdsOsVLRDESLOCAMENTO.AsCurrency      := 0;
 cdsOsVLRFRETE.AsCurrency             := 0;
 cdsOsVLRPECA.AsCurrency              := 0;
 cdsOsVLRSEGURO.AsCurrency            := 0;
 cdsOsVLRTOTALORCCOMP.AsCurrency      := 0;
 cdsOsVLRTOTALMAODEOBRA.AsCurrency    := 0;
 cdsOsVLRTOTALDESLOCAMENTO.AsCurrency := 0;
 cdsOsVLRTOTALFRETE.AsCurrency        := 0;
 cdsOsVLRTOTALOUTRO.AsCurrency        := 0;
 cdsOsVLRTOTALPAGAR.AsCurrency        := 0;
 cdsOsUSUARIO.Value                   := dmGsi.UsuarioAtivo;

 NovoRegOS   := False;
end;

procedure TdmOS.cdsOsNOMELIBDESCONTOValidate(Sender: TField);
begin
 if dmOS.cdsOsVLRDESCONTO.AsCurrency > 0 then
    raise Exception.Create('Campo não pode ser alterado');
end;

procedure TdmOS.cdsOsBeforeCancel(DataSet: TDataSet);
begin
 DataSet.Tag := 0;
end;

procedure TdmOS.cdsOsHoraNewRecord(DataSet: TDataSet);
begin
 BloquearInsercao;
 cdsOsHoraENTIDADEID.Value    := dmGsi.FuncionarioId;
 cdsOsHoraQTDHORATRAB.Value   := 0;
 cdsOsHoraQTDHORAOUTRA.Value  := 0;
 cdsOsHoraQTDHORATRANSP.Value := 0;
 cdsOsHoraQTDHORAESPERA.Value := 0;
 cdsOsHoraUSUARIO.Value       := dmGsi.UsuarioAtivo;
end;


procedure TdmOS.VerificaStatusContrato( Data : TDateTime );
begin
 if ( cdsOsDATAABERTURA.AsDateTime > Data ) then
    begin
     if CheckSenha(dmGsi.UsuarioAtivo,'Ordem de Serviço ','Abertura de O.S. com Contrato Expirado',True) then
        begin
         if ( MessageDlg('Contrato Exiparado! Deseja Abrir O.S. mesmo assim?',mtconfirmation,[mbyes,mbno],0) = mryes ) then
            MessageDlg('Os será aberta para este Aparelho',mtInformation,[mbok],0)
         else
            raise Exception.Create('Período do Contrato Expirado!');
        end
     else
        raise Exception.Create('Período do Contrato Expirado!');
    end;
end;

procedure TdmOS.BloquearInsercao;
var BookMark : TBookmark;
begin
 BookMark  := cdsOs.GetBookmark;
 if not cdsOs.BookmarkValid( BookMark ) then
    raise Exception.Create('Ordem de Serviço não gravada. Inclusão Cancelada!');
end;

procedure TdmOS.BloqOSFechada( Operacao : String );
begin
 if ( cdsOsSTATUS.AsString = 'F' ) or ( cdsOsSTATUS.AsString = 'B' ) then
    if not CheckSenha( dmGsi.UsuarioAtivo,'Ordem de Serviço', 'Editar O.S. Fechada/Bloqueada/Expirada' , False ) then
       raise Exception.Create('Ordem de Serviço fechada ou bloqueada, '+ Operacao +' não permitida!' )
end;

function TdmOS.ValidadeOS : Boolean;
var Hoje : TDateTime;
begin
 Result := True;

 Hoje := pCnnMain.AppServer.IServerDate;

 if ( ( ( cdsOsSTATUS.AsString = 'F' ) or ( cdsOsSTATUS.AsString = 'B' ) ) and
      ( cdsOsDATAVALIDADE.AsDateTime < Hoje ) ) then
       if not CheckSenha( dmGsi.UsuarioAtivo,'Ordem de Serviço','Gerenciar O.S. com Data de Validade Vencida!',false) then
          Result := False;
end;


procedure TdmOS.AbreTabela( Client : TClientDataSet );
begin
 if not Client.Active then
    Client.Open;
end;

procedure TdmOS.Correlacao;
var cds : TClientDataSet;
    iSQL : String;
begin
 cds  := nil;
 iSQL := 'SELECT EXIGIRCORRELACAO '+
         'FROM OS_TIPOOS '+
         'WHERE TIPOOSID = '+ QuotedStr( cdsOsTIPOOSID.AsString ) +
         'AND EXIGIRCORRELACAO = 1';

 try
  ExecDynamicProvider(-1,iSQL,cds);

  if not cds.IsEmpty then
     if cdsOsOSCORRELACAOID.IsNull then
        raise Exception.Create('Os de Correlação não Preenchida!');
 finally
   FreeAndNil( cds );
 end;
end;

function TdmOS.RetornarTipoOS( TipoOSId, Campo : String ) : Integer;
var cds : TClientDataSet;
    iSQL : String;
begin
 Result := 0;
 cds    := nil;
 iSQL   := 'SELECT ' + Campo  +
           ' FROM OS_TIPOOS '+
           'WHERE TIPOOSID = '+ QuotedStr( TipoOSId );
 try
  ExecDynamicProvider(-1,iSQL,cds);

  if not cds.IsEmpty then
     Result := cds.FieldByName( Campo ).AsInteger;

 finally
  FreeAndNil( cds );
 end;
end;

procedure TdmOS.VerificarTabelas;
var str : String;
begin
 if not cdsOsHora.IsEmpty then
    begin
     str := 'Hora';
    end;

 if not cdsOsDefeito.IsEmpty  then
    begin
     str := '; Serviço';
    end;

 if not cdsOSPeca.IsEmpty then
    begin
     str := '; Assistência Técnica';
    end;

 if str <> '' then
    raise Exception.Create('Não é possível Apagar OS! Existem dados nas Tabelas: '+str);
end;

procedure TdmOS.DeletaEstoque ;
begin
 BloqOSFechada( 'Edição' );

 { Atualizar o Estoque }
 shdcnnOs.AppServer.IApagarPecaOS( cdsOSPecaEMPRESAID.AsString,
                                   cdsOSPecaPRODUTOID.AsString,
                                   cdsOSPecaESTOQUEUTILIZADO.AsString, cdsOSPecaQUANTIDADE.AsInteger );


end;

function TdmOS.OsExiste : Boolean;
var cds       : TClientDataSet;
    iSQL      : String;
begin
 Result := False;
 if cdsOs.State = dsInsert then
    begin
     cds  := nil;
     iSQL := 'SELECT OS_OS.OSID '+
             'FROM '+
              ' OS_OS '+
             'WHERE '+
              'OS_OS.OSID = '+ QuotedStr( cdsOsOSID.AsString );
     try
      ExecDyNamicProvider( -1,iSQL,cds );
      Result := not ( cds.IsEmpty );

      finally
       FreeAndNil( cds );
      end;
    end;
end;

procedure TdmOS.AnaliseContrato;
var cds  : TClientDataSet;
    iSQL : String;
begin
 cds      := Nil;

 iSQL     := 'SELECT'+
             '  CM_CONTRATOAPAR.EMPRESAID, CM_CONTRATOAPAR.CONTRATOID, CM_CONTRATOAPAR.ANOID,CM_CONTRATOANO.DATAFIMCONTRATO,CM_CONTRATOAPAR.SERIEID,'+
             '  CM_CONTRATOAPAR.MODELOID, CM_CONTRATOAPAR.TIPOCONTRATOID,  CM_CONTRATOAPAR.VLRMENSAL,  CM_CONTRATOAPAR.HORASESPERA,'+
             '  CM_CONTRATOAPAR.QTDPREVENTIVAS,  CM_CONTRATOAPAR.QTDPREVENTIVASUTIL,  CM_CONTRATOAPAR.BLOQUEARPREVENTIVAS,'+
             '  CM_CONTRATOAPAR.QTDCORRETIVAS,  CM_CONTRATOAPAR.QTDCORRETIVASUTIL,  CM_CONTRATOAPAR.BLOQUEARCORRETIVAS,'+
             '  CM_CONTRATOAPAR.QTDPECAS,  CM_CONTRATOAPAR.QTDPECASUTIL,  CM_CONTRATO.CANCELADO,  CM_CONTRATOANO.PERIODOCONCLUIDO'+
             '  FROM'+
             '  CM_CONTRATO CM_CONTRATO,'+
             '  CM_CONTRATOANO CM_CONTRATOANO,'+
             '  CM_CONTRATOAPAR CM_CONTRATOAPAR'+
             ' WHERE'+
             '  CM_CONTRATO.EMPRESAID = CM_CONTRATOANO.EMPRESAID'+
             '  AND CM_CONTRATO.CONTRATOID = CM_CONTRATOANO.CONTRATOID'+
             '  AND CM_CONTRATO.EMPRESAID = CM_CONTRATOAPAR.EMPRESAID'+
             '  AND CM_CONTRATO.CONTRATOID = CM_CONTRATOAPAR.CONTRATOID'+
             '  AND CM_CONTRATO.CANCELADO = 0'+
             '  AND CM_CONTRATOANO.ANOID = CM_CONTRATOAPAR.ANOID'+
             '  AND CM_CONTRATOAPAR.SERIEID = ' + QuotedStr( cdsOsSERIEID.AsString ) +
             '  AND CM_CONTRATOAPAR.MODELOID = ' + QuotedStr( cdsOsMODELOID.AsString ) +
             '  AND NVL( CM_CONTRATOANO.PERIODOCONCLUIDO,0 ) = 0'; 
//             '  AND CM_CONTRATOANO.ANOID >= '+ IntToStr( YearOf( pCnnMain.AppServer.iServerDate) );

 try
  ExecDynamicProvider(-1, iSQL, cds );

  if not cds.IsEmpty then
     begin
      VerificaStatusContrato( cds.FieldByName('DATAFIMCONTRATO').AsDateTime );
      if      cdsOsTIPOATENDIMENTO.Value = 'P' then
              begin
               if ( cds.FieldByName('QTDPREVENTIVAS').AsInteger <= cds.FieldByName('QTDPREVENTIVASUTIL').AsInteger ) or ( cds.FieldByName('QTDPREVENTIVAS').AsInteger = 0 ) then
                  raise Exception.Create('Não é possível Abrir OS. limite de chamados Preventivos chegou ao fim!')
              end
      else if cdsOsTIPOATENDIMENTO.Value = 'C' then
              begin
               if ( cds.FieldByName('QTDCORRETIVAS').AsInteger <= cds.FieldByName('QTDCORRETIVASUTIL').AsInteger ) or ( cds.FieldByName('QTDCORRETIVAS').AsInteger = 0 ) then
                  if  ( CheckSenha( dmGsi.UsuarioAtivo,'Ordem de Serviço','Autorizar Chamado Corretivo',true ) and ( cds.FieldByName('BLOQUEARCORRETIVAS').AsInteger = 0 ) ) then
                      begin
                       MessageDlg('O limite de chamados Corretivos chegou ao fim!',mtConfirmation, [mbok], 0);
                       if MessageDlg('Deseja Abrior O.S mesmo assim? Se sim todas as despesas serão cobradas!',mtConfirmation, [mbYes, mbNo], 0) = MrNo then
                          raise Exception.Create('Não é possível Abrir OS. limite de chamados Corretivos chegou ao fim!');
                      end
                  else
                      raise Exception.Create('Não é possível Abrir OS. limite de chamados Corretivos chegou ao fim!');
              end;
          cds.Close;
     end
   else
     begin
      if CheckSenha( dmGsi.UsuarioAtivo,'Ordem de Serviço','Abertura de O.S. sem Contrato',True) then
         begin
          if MessageDlg('Série não possui Contrato! Deseja abrir O.S. para este aparelho?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
             raise Exception.Create('Série não possui Contrato!')
          else
             MessageDlg('OS será aberta para este aparelho!',mtConfirmation,[mbOk],0);
         end
      else
         raise Exception.Create('Série e Modelo não possui Contrato, ou Contrato está Cancelado!');
     end;
 finally
  freeAndNil( cds );
 end;
end;

procedure TdmOS.cdsOsHoraAfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsOs.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if cdsOSOSIMPRESSA.AsInteger = 0 then
    shdcnnOS.AppServer.ITotalOS( cdsOsOSID.AsString );

 cdsOs.RefreshRecord;

 if dsState in [dsEdit,dsInsert] then
    cdsOs.Edit;
end;

procedure TdmOS.cdsOsHoraBeforeEdit(DataSet: TDataSet);
begin
 if cdsOsHoraUSUARIO.AsString <> dmGsi.UsuarioAtivo then
    if not CheckSenha(dmGsi.UsuarioAtivo,'Ordem de Servico-OSHora','Editar Hora de outro usuário', False ) then
       raise Exception.Create('Ordem de Servico-OSHora - Você não possui direitos para esta rotina - Editar Hora de outro usuário');

 BloqOSFechada( 'Deleção' );
end;

procedure TdmOS.cdsOsHoraDATATRABALHOIDValidate(Sender: TField);
begin
 if cdsOsHoraDATATRABALHOID.AsDateTime < cdsOsDATAABERTURA.AsDateTime then
    raise Exception.Create('Data de horas de trabalho não pode ser menor que a data de abertura da O.S.!');
end;

procedure TdmOS.cdsTipoOsAfterPost(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmOS.cdsTipoOsReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
 Action := HandleReconcileError( DataSet, UpdateKind, E);
end;

procedure TdmOS.cdsAparelhoMODELOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := Nil;
 InstSQL := TField( Sender ).FieldName + '=' + QuotedStr( TField( Sender ).AsString );
 iSQL    := AnalisarAddSQL( LocateSQL( dmPP.cdsCatalogo.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsAparelhoL_DESCRICAOMODELO.Value := Cds.FieldByName('DESCRICAOPORTUGUES').AsString
  else
     begin
      cdsAparelhoL_DESCRICAOMODELO.Clear;
      raise Exception.Create('Valor do campo ' + Sender.DisplayName + ' é Inválido.');
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmOS.cdsAparelhoMODELOAPARELHOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'MODELOID =' + QuotedStr( TField( Sender ).AsString );
 iSQL    := AnalisarAddSQL( LocateSQL( dmPP.cdsCatalogo.ProviderName ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      if Cds.FieldByName('TIPO').AsString = 'A' then
         begin
          cdsAparelhoL_DESCRICAOMODELOAPARELHO.Value := Cds.FieldByName('DESCRICAOPORTUGUES').AsString;
          AtualizaComponente;
         end
      else
        raise Exception.Create('A Série digitada pertence a um Componente!');
     end
  else
     begin
      cdsAparelhoL_DESCRICAOMODELOAPARELHO.Clear;
      raise Exception.Create('Valor do campo ' + Sender.DisplayName + ' é Inválido.');
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmOS.cdsAparelhoCEPMDIDValidate(Sender: TField);
var Cds  : TClientDataSet;
    iSql, Endereco : String;
begin
 iSQL := SQLCEPPadrao +
         ' AND CEPID = ' + cdsAparelhoCEPMDID.AsString;

 Cds := TClientDataSet.Create( nil );
 try
  ExecDynamicProvider( -1, iSQL, Cds );
  if not Cds.IsEmpty then
     begin
      if MessageDlg('Deseja atualizar os dados do endereço agora ?',
                      mtConfirmation, [mbYes, mbNo], mrYes ) = mrYes then
         begin
          Endereco                   := Trim( cds.FieldByName('TIPOLOGRADOURO').AsString ) + ' ' +
                                        Trim( cds.FieldByName('PREPOSICAO').AsString ) + ' ' +
                                        Trim( cds.FieldByName('TITULOPATENTE').AsString ) + ' ' +
                                        Trim( cds.FieldByName('NOMELOGRADOURO').AsString );
          cdsAparelhoENDERECOMD.Value  := SubstituiString( Endereco, '  ','' );
          cdsAparelhoBAIRROMD.Value    := cds.FieldByName('BAIRROLOGRADOURO').AsString;
          cdsAparelhoCIDADEMD.Value    := cds.FieldByName('NOMELOCALIDADE').AsString;
          cdsAparelhoSIGLAUFMDID.Value := cds.FieldByName('SIGLAUFID').AsString;
         end;
     end
  else
    MessageDlg('Código Postal (CEP) está inválido.', mtInformation, [mbOk], 0 );


 finally
  Cds.Close;
  FreeAndNil( Cds );
 end;
end;

procedure TdmOS.cdsAparelhoCLIENTEANTERIORIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'ENTIDADEID =' + QuotedStr( TField( Sender ).AsString );
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvEntidade' ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsAparelhoL_NOMECLIENTEANTERIOR.Value := Cds.FieldByName('NOME').AsString
  else
     begin
      cdsAparelhoL_NOMECLIENTEANTERIOR.Clear;
      raise Exception.Create('Valor do campo ' + Sender.DisplayName + ' é Inválido.');
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmOS.cdsTipoOsCfopNATUREZAOPIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'EF_NATUREZAOP.' + TField( Sender ).FieldName + '=' +  TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvNaturezaOp' ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsTipoOsCfopL_DESCRICAONATUREZA.Value := Cds.FieldByName('DESCRICAOOPERACAOUSUARIO').AsString;
      cdsTipoOsCfopL_CFOP.Value              := Cds.FieldByName('CFOP').AsString;
     end
  else
     begin
      cdsTipoOsCfopL_DESCRICAONATUREZA.Clear;
      cdsTipoOsCfopL_CFOP.Clear;
      raise Exception.Create('Valor do campo ' + Sender.DisplayName + ' é Inválido.');
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

Procedure TdmOS.AutoOS( FilialId : Integer );
var Hoje          : TDateTime;
    Ano, Mes, Dia : Word;
    cds           : TClientDataSet;
    iSQl,InstSql  : String;
begin
 with dmOS do
 begin
  Hoje       := pCnnMain.AppServer.IServerDate;
  AbreTabela( dmAS.cdsConfig );

  try
   DecodeDate( Hoje, Ano, Mes, Dia );

   if cdsOsTIPOOSID.Value = '' then
      cdsOsTIPOOSID.Value := dmAS.cdsConfigTIPOOSID.AsString;
                    
   if cdsOsDATAABERTURA.IsNull then
      cdsOsDATAABERTURA.AsDateTime := pCnnMain.AppServer.IServerDate;

   if cdsOsDATAVALIDADE.IsNull then
      cdsOsDATAVALIDADE.AsDateTime :=  cdsOsDATAABERTURA.AsDateTime + dmAS.cdsConfigDIASVALIDADEOS.AsInteger ;
      
   if cdsOsSTATUS.Value = '' then
      cdsOsSTATUS.Value := 'A';                // Ordem de Serviço aberta

   //Verificando existência de Filial
    Cds     := nil;
    InstSQL := 'FILIAlID' + '=' + IntToStr( FilialId );
    iSQL    := AnalisarAddSQL( LocateSQL( dmEF.cdsFilial.ProviderName ),
                            InstSQL );

    ExecDynamicProvider( -1, iSQL, Cds );

     if not cds.IsEmpty then
        begin

        // Atualizar o Número da Ordem de Serviço Ex.: '97.08.0001.MA'
        cdsOsOSID.Value :=  Copy( CurrToStr( Ano ), 3, 2 ) + '.' +
                            StrZero( Mes, 2, 0 ) + '.' +
                            StrZero( ( cds.FieldByName('ULTIMAOS').Value ), 4, 0 ) +
                            '.' + cds.FieldByName('IDENTIFICADOR').AsString + cdsOsTIPOOSID.AsString;
        end;

  cds.Close;
  finally
    FreeAndNil( cds );
  end;
 end;
end;


procedure TdmOS.cdsOsFILIALIDValidate(Sender: TField);
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
     cdsOsL_NOMEFANTASIAFILIAL.Value := Cds.FieldByName('NOMEFANTASIA').AsString
  else
     begin
      cdsOsL_NOMEFANTASIAFILIAL.Clear;
      raise Exception.Create('Valor do campo ' + Sender.DisplayName + ' é Inválido.');
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmOS.cdsOsTIPOOSIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 if ( TField( Sender ).AsString <> '' ) and ( cdsOsTIPOATENDIMENTO.Tag <> 1 )  then
    begin
     Cds     := nil;
     InstSQL := TField( Sender ).FieldName + '=' + QuotedStr( TField( Sender ).AsString );
     iSQL    := AnalisarAddSQL( LocateSQL( cdsTipoOs.ProviderName ),
                            InstSQL );

     try
      ExecDynamicProvider( -1, iSQL, Cds );

      if Cds.IsEmpty then
         begin
          cdsOsL_DESCRICAOTIPOOS.Clear;
          raise Exception.Create('Valor do campo ' + Sender.DisplayName + ' é Inválido.');
         end;

      if Cds.FieldByName('BLOQABERTURAOS').AsInteger = 1 then
         begin
          cdsOsL_DESCRICAOTIPOOS.Clear;
          raise Exception.Create('Abertura de O.S. para o tipo selecionado não permitido. O Tipo de O.S. está bloqueada.');
         end;

      cdsOsL_DESCRICAOTIPOOS.Value := Cds.FieldByName('DESCRICAO').AsString;

      Cds.Close;
     finally
      FreeAndNil( Cds );
     end;
    end;
end;

procedure TdmOS.cdsOsCLIENTEIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'ENTIDADEID =' + QuotedStr( TField( Sender ).AsString );
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvEntidade' ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      // Verificar se existem observações para este aparelho
      if cds.FieldByName('STATUSFINANCEIRO').AsInteger = 1 then
         raise Exception.Create('Cliente ' +  cds.FieldByName('ENTIDADEID').AsString + '  está bloqueado pelo departamento financeiro. ' + #13 +
                                cds.FieldByName('OBSERVACAO').AsString );

      cdsOsL_NOMECLIENTE.Value := Cds.FieldByName('NOME').AsString;
      cdsOsCEPID.Value         := Cds.FieldByName('CEPID').AsInteger;
      cdsOsNUMERO.Value        := Cds.FieldByName('NUMERO').AsString;
      cdsOsCOMPLEMENTO.Value   := Cds.FieldByName('COMPLEMENTO').AsString;
      cdsOsENDERECO.Value      := Cds.FieldByName('ENDERECO').AsString;
      cdsOsBAIRRO.Value        := Cds.FieldByName('BAIRRO').AsString;
      cdsOsCIDADE.Value        := Cds.FieldByName('CIDADE').AsString;
      cdsOsSIGLAUFID.Value     := Cds.FieldByName('SIGLAUFID').AsString;
      cdsOsL_TELEFONE.Value    := Cds.FieldByName('TELEFONE').AsString;
      cdsOsL_FAX.Value         := Cds.FieldByName('FAX').AsString;
      cdsOsL_PASTA.Value       := Cds.FieldByName('PASTA').AsString;
     end
  else
     begin
      cdsOsL_NOMECLIENTE.Clear;
      raise Exception.Create('Valor do campo ' + Sender.DisplayName + ' é Inválido.');
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmOS.cdsOsPORCDESCONTOValidate(Sender: TField);
begin
 if cdsOsPORCDESCONTO.AsCurrency > 0 then
    if cdsOsNOMELIBDESCONTO.IsNull then
       raise Exception.Create('Não é permitido alterar o percentual do desconto.');        
end;

procedure TdmOS.cdsOsTECNICOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'ENTIDADEID =' + QuotedStr( TField( Sender ).AsString );
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvEntidade' ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsOsL_NOMETECNICO.Value := Cds.FieldByName('NOME').AsString
  else
     begin
      cdsOsL_NOMETECNICO.Clear;
      raise Exception.Create('Valor do campo ' + Sender.DisplayName + ' é Inválido.');
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmOS.cdsOsDefeitoDEFEITOIDValidate(Sender: TField);
var iSQL : String;
    cds : TClientDataSet;
begin
 cds     := nil;
 iSQL    := 'SELECT OS_DEFEITO.DEFEITOID,OS_DEFEITO.DESCRICAO,OS_DEFEITOGRUPO.GRUPOID '+
            ' FROM OS_DEFEITO,OS_DEFEITOGRUPO '+
            ' WHERE '+
            '  OS_DEFEITO.DEFEITOID = OS_DEFEITOGRUPO.DEFEITOID '+
            '  AND OS_DEFEITO.DEFEITOID = '+ TField( Sender ).AsString +
            '  AND OS_DEFEITOGRUPO.GRUPOID = '+ cdsOsL_GRUPOID.AsString;
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not cds.IsEmpty then
     cdsOsDefeitoL_DESCRICAODEFEITO.AsString := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsOsDefeitoL_DESCRICAODEFEITO.Clear;
      raise Exception.Create('Defeito não cadastrado para o Grupo: '+ cdsOsL_GRUPOID.AsString );
     end;

  cds.Close;
 finally
  FreeAndNil( cds );
 end;
end;

procedure TdmOS.cdsOsTerceiroDESTINATARIOIDValidate(Sender: TField);
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
     cdsOsTerceiroL_NOMEDESTINATARIO.Value := Cds.FieldByName('NOME').AsString
  else
     begin
      cdsOsTerceiroL_NOMEDESTINATARIO.Clear;
      raise Exception.Create('Valor do campo ' + Sender.DisplayName + ' é Inválido.');
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmOS.cdsTecnicoCPF_CNPJValidate(Sender: TField);
begin
 if not ValidCnPJ_CnPF( TField( Sender ).Value ) then
    raise Exception.Create('CPF / CNPJ inválido!');
end;

procedure TdmOS.cdsTipoOsAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmOS.cdsTecnicoCPF_CNPJGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
 if not Sender.IsNull then
    Text := FormatCNPF_CNPJ_CCM( Sender.AsString );
end;

procedure TdmOS.cdsTuboMODELOTUBOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'MODELOID =' + QuotedStr( TField( Sender ).AsString );
 iSQL    := AnalisarAddSQL( LocateSQL( dmPP.cdsCatalogo.ProviderName ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if ( not Cds.IsEmpty ) then
     begin
      if ( Cds.FieldByName('TIPO').AsString = 'C' ) then
         cdsTuboL_DESCRICAOMODELOTUBO.Value := Cds.FieldByName('DESCRICAOPORTUGUES').AsString
      else
         raise Exception.Create('A Série digitada pertence a um Aparelho!');
     end
  else
     begin
      cdsTuboL_DESCRICAOMODELOTUBO.Clear;
      raise Exception.Create('Valor do campo ' + Sender.DisplayName + ' é Inválido.');
     end;

  Cds.Close;

  Cds     := nil;
  InstSQL := 'SELECT OS_TUBOINATIVO.SERIETUBOID,'+
             'OS_TUBOINATIVO.MODELOTUBOID '+
             'FROM OS_TUBOINATIVO '+
             'WHERE '+
             'OS_TUBOINATIVO.SERIEID = '+ QuotedStr( cdsTubo.FieldByName('SERIEID').AsString )+' AND '+
             'OS_TUBOINATIVO.MODELOID = '+ QuotedStr( cdsTubo.FieldByName('MODELOID').AsString )+' AND '+
             'OS_TUBOINATIVO.SERIETUBOID ='+QuotedStr( cdsTubo.FieldByName('SERIETUBOID').AsString )+' AND '+
             'OS_TUBOINATIVO.MODELOTUBOID =' + QuotedStr( TField( Sender ).AsString );

 { iSQL    := AnalisarAddSQL( LocateSQL( '' ),
                             InstSQL );}

  ExecDynamicProvider( -1, InstSQL, Cds );

  if not cds.IsEmpty then
     raise Exception.Create('Tubo Desativado!');
  
  Cds.Close;

  finally
  FreeAndNil( Cds );
 end;

end;

procedure TdmOS.cdsOSPecaNewRecord(DataSet: TDataSet);
begin
 cdsOSPecaPECAID.AsInteger       := ContadorDB('OS_OSPECA','OS_OSPECA.PECAID','WHERE OS_OSPECA.OSID = '+ QuotedStr( cdsOsOSID.AsString )  );
 cdsOSPecaEMPRESAID.AsInteger    := EmpresaAtualId;
 cdsOSPecaDATAPECA.AsDateTime    := pCnnMain.AppServer.iServerDate;
 cdsOSPecaUTILIZADO.Value        := 0;
 cdsOSPecaIMPRESSO.Value         := 0;
 cdsOSPecaMATERIALAVALIADO.Value := 0;
 cdsOSPecaUSUARIO.Value          := dmGsi.UsuarioAtivo;
end;

procedure TdmOS.cdsTuboInativoMODELOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + QuotedStr( TField( Sender ).AsString );
 iSQL    := AnalisarAddSQL( LocateSQL( dmPP.cdsCatalogo.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsTuboInativoL_DESCRICAOMODELOTUBO.Value := Cds.FieldByName('DESCRICAOPORTUGUES').AsString
  else
     begin
      cdsTuboInativoL_DESCRICAOMODELOTUBO.Clear;
      raise Exception.Create('Valor do campo ' + Sender.DisplayName + ' é Inválido.');
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmOS.cdsTuboAfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsAparelho.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsAparelho.Edit;
end;

procedure TdmOS.cdsTuboBeforeInsert(DataSet: TDataSet);
begin

 if cdsAparelho.State in [ dsInsert ] then
    if MessageDlg('Deseja gravar os Dados do Aparelho!',mtConfirmation,[mbYes, mbNo],0)= mrYes then
       begin
        cdsAparelho.Post;
        MessageDlg('Dados Salvos com Sucesso!',mtInformation,[mbOk],0);
       end
    else
       raise Exception.Create('É necessário Salvar os Dados do Aparelho!');
end;

procedure TdmOS.cdsDefeitoGrupoGRUPOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := Nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( dmEF.cdsGrupo.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsDefeitoGrupoL_SIGLAGRUPO.Value     := Cds.FieldByName('SIGLAGRUPO').AsString;
      cdsDefeitoGrupoL_DESCRICAOGRUPO.Value := Cds.FieldByName('DESCRICAO').AsString;
     end
  else
     begin
      cdsDefeitoGrupoL_SIGLAGRUPO.Clear;
      cdsDefeitoGrupoL_DESCRICAOGRUPO.Clear;
      raise Exception.Create('Valor do campo ' + Sender.DisplayName + ' é Inválido.');
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmOS.cdsCustoHoraNewRecord(DataSet: TDataSet);
begin
 cdsCustoHoraCUSTOHORAID.Value := ContadorDB('OS_CUSTOHORA','CUSTOHORAID','');
 cdsCustoHoraUSUARIO.Value     := dmGsi.UsuarioAtivo;
end;

procedure TdmOS.cdsAparelhoAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmOS.cdsTuboAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsAparelho.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsAparelho.Edit;
end;

procedure TdmOS.cdsAparelhoAfterPost(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmOS.cdsTuboInativoAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsAparelho.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsAparelho.Edit;
end;

procedure TdmOS.cdsTuboInativoAfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsAparelho.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsAparelho.Edit;
end;

procedure TdmOS.cdsOSPecaAfterInsert(DataSet: TDataSet);
begin
 BloqOSFechada( 'Edição' );

 if cdsOsLIBCHEFIA.AsInteger = 0 then
   if not VerifStatusTIPOOS( Copy( cdsOSPecaOSID.AsString,13, 1 ), 'EXIGIRLIBERACAO' ) then
      cdsOSPeca.Cancel;

 if not VerifStatusTIPOOS( Copy( cdsOSPecaOSID.AsString,13, 1 ), 'BLOQMOVPRODUTOS' ) then
    cdsOSPeca.Cancel;
end;

procedure TdmOS.cdsOsHoraBeforeInsert(DataSet: TDataSet);
begin
 BloqOSFechada( 'Edição' );
end;

procedure TdmOS.cdsOsDespesaBeforeInsert(DataSet: TDataSet);
begin
 BloqOSFechada( 'Edição' );

 if cdsOsTIPOOSID.Value <> 'I' then
    if cdsOsDefeito.IsEmpty then
       raise Exception.Create('É necessário preencher o serviço executado nesta OS!');
end;

procedure TdmOS.cdsOsDefeitoBeforeInsert(DataSet: TDataSet);
begin
 BloqOSFechada( 'Edição' );
end;

procedure TdmOS.cdsOsDefeitoBeforePost(DataSet: TDataSet);
var Tam : Integer;
begin
 Tam := Length( cdsOsDefeitoSERVICOEXECUTADO.Value );
 if Tam > 741 then
    raise Exception.Create('Tamanho do campo excedido em :' +
          IntToStr( Tam - 741 ) );
end;

procedure TdmOS.cdsOsBeforePost(DataSet: TDataSet);
begin
 if RetornarTipoOS( cdsOsTIPOOSID.Value, 'EXIGIRMODELOABERTURA' ) = 1 then
    if ( cdsOsMODELOID.Value = '' ) or ( cdsOsMODELOID.Value = ' ' ) then
       raise Exception.Create('Campo modelo não preenchido !');

 if RetornarTipoOS( cdsOsTIPOOSID.Value, 'EXIGIRSERIEABERTURA' ) = 1 then
    if ( cdsOsSERIEID.Value = '' ) or ( cdsOsSERIEID.Value = ' ' ) then
       raise Exception.Create('Campo série não preenchido !');

 // Requerir campo como Técnico como Obrigatório
 // Não exigir estas alterações para lançamentos antigos, posteriores a alteração
 if cdsOsDATAABERTURA.AsDateTime > StrToDate( '17/11/2003') then
    begin
     if cdsOsTECNICOID.IsNull then
        raise Exception.Create('Campo Técnico não Preenchido !');

     if cdsOsTIPOOSID.Value = 'D' then
        if cdsOsTIPOATENDIMENTO.IsNull then
           raise Exception.Create('Campo Tipo de Atendimento não Preenchido!');
    end;

 if cdsOsTIPOASSIST.IsNull then
    raise Exception.Create('Campo Assistência Técnica não preenchido!');

 if cdsOsSOLICITANTE.IsNull then
    raise Exception.Create('Campo Solicitante não Preenchido!');

 if cdsOsTIPOOSID.IsNull then
    raise Exception.Create('Campo Tipo da O.S. não Preenchido!');

 if cdsOsSETOR.IsNull then
    raise Exception.Create('Campo Setor não Preenchido!');

 if cdsOsSERVICO.IsNull then
    raise Exception.Create('Campo Serviço não Preenchido!');

 Correlacao;

 if OsExiste then
    raise Exception.Create('Os já cadastrada! Verifique o Tipo Selecionado! ');

end;
procedure TdmOS.cdsOsFILIALIDChange(Sender: TField);
begin
 AutoOS( cdsOsFILIALID.AsInteger );
end;

procedure TdmOS.cdsOsTIPOOSIDChange(Sender: TField);
begin
 cdsOsOSID.Value := Copy( cdsOsOSID.Value,1,12) + cdsOsTIPOOSID.Value;
 if TField( sender ).AsString = 'D' then
    cdsOsTIPOATENDIMENTO.ReadOnly := False
 else
    cdsOsTIPOATENDIMENTO.ReadOnly := True;
end;

procedure TdmOS.cdsOsOSIDValidate(Sender: TField);
var Ano, Mes, Dia: Word;
begin
 DecodeDate( cdsOsDATAABERTURA.AsDateTime, Ano, Mes, Dia);

 if Length( TField( Sender ).AsString ) > 4 then
    begin
     if ( StrToFloat(Copy( TField( Sender ).Value, 4, 2 ) ) < 0 ) or ( StrToFloat( Copy( TField( Sender ).Value, 4, 2 ) ) > 12 ) then
        raise Exception.Create('Mês do número da O.S. inválido !');

     if not CheckSenha( dmGsi.UsuarioAtivo,'Ordem de Servico','Gerar Ordem de Serviço Derivada',False ) then
        if StrToInt( Copy( TField( Sender ).Value, 4, 2 ) ) < Mes  then
           raise Exception.Create('Mês do número da O.S. fora de período !');
    end;
end;

procedure TdmOS.cdsOsDATAABERTURAValidate(Sender: TField);
var AnoMes : Integer;
begin
 if not CheckSenha( dmGsi.UsuarioAtivo,'Ordem de Servico','Gerar Ordem de Serviço Derivada',False ) then
    begin
     AnoMes := StrToInt( FormatDateTime('yyyymm', TField( Sender ).Value ) );
     if AnoMes <> dmAS.cdsConfigMESATUAL.AsInteger then
        raise Exception.Create( 'Ordem de Serviço fora do período para abertura');
    end;
end;

procedure TdmOS.cdsOsMODELOIDValidate(Sender: TField);
var InstSQL, iSQL, iSQL2, iSQL3 : String;
    cds, cds2, cds3 : TClientDataSet;
begin
 Cds     := nil;
 Cds2    := nil;
 cds3    := nil;
 InstSQL := 'OS_APARELHO.SERIEID = ' + QuotedStr( cdsOsSERIEID.AsString ) +
            ' AND OS_APARELHO.MODELOID = ' + QuotedStr( TField( Sender ).AsString );
 iSQL    := AnalisarAddSQL( LocateSQL( cdsAparelho.ProviderName ),
                            InstSQL );

 InstSQL := ' OS_TIPOOS.TIPOOSID = ' + QuotedStr( cdsOsTIPOOSID.AsString );
 iSQL2   := AnalisarAddSQL( LocateSQL( cdsTipoOS.ProviderName ),
                            InstSQL );

 InstSQL := 'OS_OS.SERIEID = ' + QuotedStr( cdsOsSERIEID.AsString ) +
            ' AND OS_OS.MODELOID = ' + QuotedStr( TField( Sender ).AsString ) +
            ' AND OS_OS.DATAABERTURA > SYSDATE - 5 ';
 iSQL3   := AnalisarAddSQL( LocateSQL( cdsOs.ProviderName ),
                            InstSQL );

 try
  try // except
   ValidarModelo( cdsOsMODELOID.Value );

   // Procurar em Aparelho / Componente
   if cdsOsSERIEID.AsString <> '' then
      begin

       ExecDynamicProvider( -1, iSQL, Cds );

       ExecDynamicProvider( -1, iSQL2, Cds2 );

       ExecDynamicProvider( -1, iSQL3, Cds3 );

       if cds3.RecordCount > 0 then
          if MessageDlg( '(' + cds3.FieldByName('OSID').AsString + ')' + '-Série e Modelo já aberta no período de 5 dias. Continuar a abertura da OS?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
             raise Exception.Create('Abertura de OS não permitida. Utilize a OS :' +  cds3.FieldByName('OSID').AsString );

       if not cds.IsEmpty then
          begin
           // Verificar se existem observações para este aparelho
           if cds.FieldByName('EXIBEOBS').AsInteger = 1 then
              MessageDlg( cds.FieldByName('OBSERVACAO').AsString, mtInformation, [mbOk], 0);

           // Verifica se Aparelho está em garantia
           if cds.FieldByName('DATAGARANTIA').AsDateTime >= cdsOs.FieldByName('DATAABERTURA').AsDateTime then
              begin
               // Atualizar dados do Aparelho
               if MessageDlg('Aparelho está em garantia de ' + DateToStr( cds.FieldByName('DATAINSTALACAO').Value ) + ' a ' + DateToStr( cds.FieldByName('DATAGARANTIA').Value ) + ', utiliza este Aparelho ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                  if cdsOs.State =  dsInsert then
                     cdsOsTIPOOSID.Value := dmAS.cdsConfigTIPOOSGARANTIAID.Value ; // Ordem de Serviço em Garantia
              end
           else
              begin
               // Bloquear Aparelho / Componente sem garantia
               if cds2.RecordCount > 0 then
                  if cds2.FieldByName('GARANTIA').AsInteger = 1 then
                     raise Exception.Create('Garantia do Aparelho / Componente expirada em : ' +  cds.FieldByName('DATAGARANTIA').AsString );
              end;

           if MessageDlg('Atualizar os dados do Aparelho na Ordem de Serviço ?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
              begin
               cdsOsCLIENTEID.AsInteger    := cds.FieldByName('CLIENTEID').AsInteger;
               cdsOsL_NOMECLIENTE.AsString := cds.FieldByName('L_NOMECLIENTE').AsString;
               cdsOsENDERECO.AsString      := cds.FieldByName('ENDERECO').AsString;
               cdsOsCOMPLEMENTO.AsString   := cds.FieldByName('COMPLEMENTO').AsString;
               cdsOsNUMERO.Value           := cds.FieldByName('NUMERO').AsString;
               cdsOsCIDADE.AsString        := cds.FieldByName('CIDADE').AsString;
               cdsOsBAIRRO.AsString        := cds.FieldByName('BAIRRO').AsString;
               cdsOsSIGLAUFID.AsString     := cds.FieldByName('SIGLAUFID').AsString;
               cdsOsL_TELEFONE.AsString    := cds.FieldByName('TELEFONE').AsString;

               if cds.FieldByName('CEPID').AsInteger <> 0 then
                  cdsOsCEPID.AsInteger     := cds.FieldByName('CEPID').AsInteger;
              end
          end
       else
          raise Exception.Create('Série e Modelo do Aparelho nao existe !');
       cds.Close;
      end;

   { Validar o Contrato }
   if ( ( cdsOsTIPOOSID.Value = 'D' ) and ( not cdsOsSERIEID.IsNull ) and ( not cdsOsMODELOID.IsNull ) ) then
      begin
       if not cdsOsTIPOATENDIMENTO.IsNull then
          AnaliseContrato
       else
          raise Exception.Create('Campo Tipo de Atendimento não informado!');
      end;

  except
   on E: Exception do
   begin
    MessageDlg( E.Message, mtError, [mbOK], 0);
    raise;
   end;
  end;
 finally
  FreeAndNil(cds);
  FreeAndNil(cds2);
 end;

end;

procedure TdmOS.cdsOsDATAFECHAMENTOValidate(Sender: TField);
begin
 if not TField( Sender ).IsNull then
    begin
     if TField( Sender ).AsDateTime  < cdsOsDATAABERTURA.AsDateTime then
        raise Exception.Create('Data de Fechamento menor que Data de Abertura da O.S. !');
     if TField( Sender ).AsDateTime  < cdsOsDATACONCLUSAO.AsDateTime then
        raise Exception.Create('Data de Encerramento menor que a Data de Fechamento da O.S. !');
    end;
end;

procedure TdmOS.cdsOsDATACONCLUSAOValidate(Sender: TField);
begin
 if not TField( Sender ).IsNull then
    if TField( Sender ).AsDateTime < cdsOsDATAABERTURA.AsDateTime then
       raise Exception.Create('Data de Encerramento menor que Data de Abertura da O.S. !');

 if CheckSenha(dmGsi.UsuarioAtivo,'Ordem de Serviço','Alterar Localização da O.S. para Matriz',false) then
    cdsOsLOCALIZACAOOSID.Value := 4
 else
   raise Exception.Create('Voce Nao possui direito para Alterar Localizacao da os para Matriz!');
end;

procedure TdmOS.cdsOsTIPOATENDIMENTOValidate(Sender: TField);
begin
 if ( cdsOsTIPOATENDIMENTO.Value <> 'P' ) and ( cdsOsTIPOATENDIMENTO.Value <> 'C' ) then
    raise Exception.Create('Tipo de Atendimento não Existe!');

 if ( not ( cdsOsSERIEID.IsNull ) and not ( cdsOsMODELOID.IsNull ) ) then
    AnaliseContrato;
end;

procedure TdmOS.cdsDefeitoDEFEITOIDValidate(Sender: TField);
var cdsGeral : TClientDataSet;
    iSQL     : String;
begin
 if cdsDefeito.State in [dsEdit,dsInsert] then
    begin
     try
      cdsGeral := nil;
      iSQL := 'SELECT DEFEITOID '+
              'FROM OS_DEFEITO '+
              'WHERE DEFEITOID = '+ cdsDefeitoDEFEITOID.AsString;

      ExecDynamicProvider( -1,iSQL,cdsGeral );

      if not cdsGeral.IsEmpty then
         raise Exception.Create('Código já utilizado!');

      cdsGeral.Close;
     finally
       FreeAndNil( cdsGeral );
     end;
   end;
end;

procedure TdmOS.cdsTipoOSCFOPAfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsTipoOS.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsTipoOS.Edit;
end;

procedure TdmOS.cdsTipoOSTIPOOSIDValidate(Sender: TField);
var cdsGeral : TClientDataSet;
    iSQL     : String;
begin
 if cdsTipoOS.State in [dsEdit,dsInsert] then
    begin
     try
      cdsGeral := nil;
      iSQL := 'SELECT TIPOOSID '+
              'FROM OS_TIPOOS '+
              'WHERE TIPOOSID = '+ QuotedStr( cdsTipoOSTIPOOSID.AsString );

      ExecDynamicProvider( -1,iSQL,cdsGeral );

      if not cdsGeral.IsEmpty then
         raise Exception.Create('Tipo já utilizado!');

      cdsGeral.Close;
     finally
        FreeAndNil( cdsGeral );
      end;
   end;
end;

procedure TdmOS.cdsTipoOSCFOPAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsTipoOS.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsTipoOS.Edit;
end;

procedure TdmOS.cdsOsDefeitoBeforeEdit(DataSet: TDataSet);
begin
 BloqOSFechada( 'Edição' );
end;

procedure TdmOS.cdsOSPecaBeforeEdit(DataSet: TDataSet);
begin
 if cdsOSPecaUTILIZADO.AsInteger = 1 then
    raise Exception.Create('Peça já foi utilizadado, exclusão não permitido!');

 BloqOSFechada( 'Deleção' );
end;

procedure TdmOS.cdsOSPecaBeforeDelete(DataSet: TDataSet);
begin
 if cdsOSPecaUTILIZADO.AsInteger = 1 then
    raise Exception.Create('Peça já foi utilizadado, exclusão não permitido!');

 DeletaEstoque;

 AtualizarLogPeca( DataSet );
end;

procedure TdmOS.cdsOSPecaPRODUTOIDValidate(Sender: TField);
var InstSQL, iSql : String; Cds : TClientDataSet;
begin
 if ( cdsOSPeca.State in [dsBrowse,dsSetKey] ) then
    exit;

 Cds     := nil;

 InstSQL := ' EF_PRODUTO.EMPRESAID = '+ cdsOSPecaEMPRESAID.AsString +
            ' AND EF_PRODUTO.PRODUTOID = ' + cdsOSPecaPRODUTOID.AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( dmEF.cdsProduto.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      if cds.FieldByName('ATIVO').AsInteger = 0 then
         raise Exception.Create('Produto não está ativo para utilização');

      cdsOSPecaL_DESCRICAOPRODUTO.AsString := cds.FieldByName('DESCRICAOPORTUGUES').AsString;
      cdsOSPecaL_LOCALIZACAO.AsString      := Cds.FieldByName('LOCALIZACAO').AsString;

      if cds.FieldByName('ESTOQUEFISICO').AsInteger < 1 then        // Verificar se existe Saldo em ESTOQUE FÍSICO
         if cds.FieldByName('ESTOQUEEMTERCEIRO').AsInteger < 1 then  // Verificar se existe Saldo em ESTOQUE EM TERCEIRO
            raise Exception.Create('Não há quantidade mínima do produto !' );

      if MessageDlg('Utilizar estoque de peças novas?', mtConfirmation, [mbYes, mbNo, mbOK], 0) = mrYes then
         begin
          if cds.FieldByName('ESTOQUENOVO').AsInteger > 0 then
             cdsOSPecaESTOQUEUTILIZADO.AsString := 'N'
          else
             raise Exception.Create('Não há quantidade mínima do produto em estoque de peças novas !' );
         end
      else
         begin
          if  cds.FieldByName('ESTOQUEREVISADO').AsInteger > 0 then
              cdsOSPecaESTOQUEUTILIZADO.AsString := 'R'
          else
             raise Exception.Create('Não há quantidade mínima do produto em estoque de peças revisadas !' );
         end;
     end
  else
     raise Exception.Create('Código do Produto não cadastrado !' );
   Cds.Close;
  finally
   FreeAndNil(cds);
  end;
end;

procedure TdmOS.cdsOSPecaQUANTIDADEValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 if ( cdsOSPeca.State in [dsBrowse,dsSetKey] ) then
    exit;

 Cds     := nil;
 InstSQL := 'EF_PRODUTO.PRODUTOID = ' + cdsOSPecaPRODUTOID.AsString +
            ' AND EF_PRODUTO.EMPRESAID = '+ IntToStr( EmpresaAtualId );
 iSQL    := AnalisarAddSQL( LocateSQL( dmEF.cdsProduto.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      if cdsOSPecaESTOQUEUTILIZADO.AsString = 'N' then
         begin
          if cdsOSPecaQUANTIDADE.AsFloat > cds.FieldByName('ESTOQUENOVO').AsFloat then
             raise Exception.Create('Quantidade não disponível no estoque de novos. Há somente ' + FloatToStr( cds.FieldByName('ESTOQUENOVO').AsFloat ) + ' unidade do produto no estoque' );
         end
      else if cdsOSPecaESTOQUEUTILIZADO.AsString = 'R' then
              begin
               if cdsOSPecaQUANTIDADE.AsFloat > cds.FieldByName('ESTOQUEREVISADO').AsFloat then
                  raise Exception.Create('Quantidade não disponível no estoque de revisados. Há somente ' + FloatToStr( cds.FieldByName('ESTOQUEREVISADO').AsFloat ) + ' unidade do produto no estoque' );
              end;
     end;
   Cds.Close;
  finally
   FreeAndNil(cds);
  end;

end;

procedure TdmOS.cdsOsDefeitoNewRecord(DataSet: TDataSet);
begin
 cdsOsDefeitoITEMID.AsInteger := ContadorDB('OS_OSDEFEITO','ITEMID','WHERE OSID = '+ QuotedStr( cdsOsOSID.AsString ));
 cdsOsDefeitoUSUARIO.Value    := dmGsi.UsuarioAtivo;
end;

procedure TdmOS.cdsOSDemoAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmOS.cdsOSDemoAfterPost(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmOS.cdsOSDemoDEMOCATALOGOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( dmOS.cdsDemoCatalogo.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsOSDemoL_DESCRICAODEMOCATALOGO.Value := cds.FieldByName('DESCRICAOEQUIPAMENTO').AsString;
     end
  else
     begin
      cdsOSDemoL_DESCRICAODEMOCATALOGO.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmOS.cdsOSDemoEMPRESAIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( dmEF.cdsEmpresa.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if Cds.IsEmpty then
     raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmOS.cdsOSDemoNewRecord(DataSet: TDataSet);
begin
 cdsOSDemoITEMID.AsInteger := ContadorDB('OS_OSDEMO','ITEMID','WHERE OSID = '+ QuotedStr( cdsOsOSID.AsString ));
 cdsOSDemoUSUARIO.Value    := dmGsi.UsuarioAtivo;
end;

procedure TdmOS.cdsOSDemoPRODUTOIDValidate(Sender: TField);
var InstSQL, iSql : String; Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := ' EF_PRODUTO.EMPRESAID = '+ cdsOSDemoEMPRESAID.AsString +
            ' AND EF_PRODUTO.PRODUTOID = ' + cdsOSDemoPRODUTOID.AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( dmEF.cdsProduto.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      if cds.FieldByName('ATIVO').AsInteger = 0 then
         raise Exception.Create('Produto não está ativo para utilização');

      cdsOSDemoL_DESCRICAOPORTUGUES.AsString := cds.FieldByName('DESCRICAOPORTUGUES').AsString;
      cdsOSDemoL_PARTNUMBERID.AsString       := cds.FieldByName('PARTNUMBERID').AsString;
      cdsOSDemoL_OBSERVACAO.AsString         := cds.FieldByName('OBSERVACAO').AsString;
     end
  else
     raise Exception.Create('Código do Produto não cadastrado !' );
  Cds.Close;
 finally
  FreeAndNil(cds);
 end;
end;

procedure TdmOS.cdsCustoHoraAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmOS.cdsDefeitoAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmOS.cdsDefeitoAfterPost(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmOS.cdsDefeitoGrupoAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsDefeito.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsDefeito.Edit;
end;

procedure TdmOS.cdsDefeitoGrupoAfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsDefeito.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsDefeito.Edit;
end;

procedure TdmOS.cdsOsAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmOS.cdsOsHoraAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsOs.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 shdcnnOS.AppServer.ITotalOS( cdsOsOSID.AsString );

 cdsOs.RefreshRecord;

 if dsState in [dsEdit,dsInsert] then
    cdsOs.Edit;
end;

procedure TdmOS.cdsOsDefeitoAfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsOs.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if cdsOSOSIMPRESSA.AsInteger = 0 then
    shdcnnOS.AppServer.ITotalOS( cdsOsOSID.AsString );

 cdsOs.RefreshRecord;

 if dsState in [dsEdit,dsInsert] then
    cdsOs.Edit;
end;

procedure TdmOS.cdsOsDefeitoAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsOs.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 shdcnnOS.AppServer.ITotalOS( cdsOsOSID.AsString );

 cdsOs.RefreshRecord;

 if dsState in [dsEdit,dsInsert] then
    cdsOs.Edit;
end;

procedure TdmOS.cdsOSPecaAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsOs.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsOs.Edit;
end;

procedure TdmOS.cdsOSPecaAfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsOs.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsOs.Edit;
end;

procedure TdmOS.cdsOsBcoHoraAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsOs.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    begin
     ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
    end;

 if dsState in [dsEdit,dsInsert] then
    cdsOs.Edit;
end;

procedure TdmOS.cdsOsBcoHoraAfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsOs.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsOs.Edit;
end;

procedure TdmOS.cdsOsTerceiroAfterPost(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmOS.cdsOsTerceiroAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmOS.cdsDefeitoGrupoNewRecord(DataSet: TDataSet);
begin
 cdsDefeitoGrupoUSUARIO.Value := dmGsi.UsuarioAtivo;
end;

procedure TdmOS.cdsDefeitoNewRecord(DataSet: TDataSet);
begin
 cdsDefeitoUSUARIO.Value := dmGsi.UsuarioAtivo;
end;

procedure TdmOS.cdsDemoCatalogoAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmOS.cdsDemoCatalogoAfterPost(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmOS.cdsDemoCatalogoEMPRESAIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( dmEF.cdsEmpresa.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if Cds.IsEmpty then
     raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmOS.cdsDemoCatalogoItemAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsDemoCatalogo.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsDemoCatalogo.Edit;
end;

procedure TdmOS.cdsDemoCatalogoItemAfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsDemoCatalogo.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsDemoCatalogo.Edit;
end;

procedure TdmOS.cdsDemoCatalogoItemNewRecord(DataSet: TDataSet);
begin
 cdsDemoCatalogoItemEMPRESAID.AsInteger := cdsDemoCatalogoEMPRESAID.AsInteger;
 cdsDemoCatalogoItemITEMID.AsInteger    := ContadorDB('OS_DEMOCATALOGOITEM','ITEMID','WHERE DEMOCATALOGOID = '+ QuotedStr( cdsDemoCatalogoItemDEMOCATALOGOID.AsString ));
 cdsDemoCatalogoItemUSUARIO.Value       := dmGsi.UsuarioAtivo;
end;

procedure TdmOS.cdsDemoCatalogoItemPRODUTOIDValidate(Sender: TField);
var InstSQL, iSql : String; Cds : TClientDataSet;
begin
 Cds     := nil;

 InstSQL := ' EF_PRODUTO.EMPRESAID = '+ cdsDemoCatalogoItemEMPRESAID.AsString +
            ' AND EF_PRODUTO.PRODUTOID = ' + cdsDemoCatalogoItemPRODUTOID.AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( dmEF.cdsProduto.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      if cds.FieldByName('ATIVO').AsInteger = 0 then
         raise Exception.Create('Produto não está ativo para utilização');

      cdsDemoCatalogoItemL_DESCRICAOPORTUGUES.AsString := cds.FieldByName('DESCRICAOPORTUGUES').AsString;
      cdsDemoCatalogoItemL_PARTNUMBERID.AsString       := cds.FieldByName('PARTNUMBERID').AsString;
      cdsDemoCatalogoItemL_OBSERVACAO.AsString         := cds.FieldByName('OBSERVACAO').AsString;
     end
  else
     raise Exception.Create('Código do Produto não cadastrado !' );
  Cds.Close;
 finally
  FreeAndNil(cds);
 end;
end;

procedure TdmOS.cdsDemoCatalogoNewRecord(DataSet: TDataSet);
begin
 cdsDemoCatalogoDEMOCATALOGOID.AsInteger := ContadorDB('OS_DEMOCATALOGO','DEMOCATALOGOID','');
 cdsDemoCatalogoEMPRESAID.AsInteger      := EmpresaAtualId;
 cdsDemoCatalogoUSUARIO.Value            := dmGsi.UsuarioAtivo;
end;

procedure TdmOS.cdsDemoCatalogoPRODUTOIDValidate(Sender: TField);
var InstSQL, iSql : String; Cds : TClientDataSet;
begin
 Cds     := nil;

 InstSQL := ' EF_PRODUTO.EMPRESAID = '+ cdsDemoCatalogoEMPRESAID.AsString +
            ' AND EF_PRODUTO.PRODUTOID = ' + cdsDemoCatalogoPRODUTOID.AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( dmEF.cdsProduto.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      if cds.FieldByName('ATIVO').AsInteger = 0 then
         raise Exception.Create('Produto não está ativo para utilização');

      cdsDemoCatalogoL_DESCRICAOPORTUGUES.AsString := cds.FieldByName('DESCRICAOPORTUGUES').AsString;
      cdsDemoCatalogoL_PARTNUMBERID.AsString       := cds.FieldByName('PARTNUMBERID').AsString;
      cdsDemoCatalogoL_OBSERVACAO.AsString         := cds.FieldByName('OBSERVACAO').AsString;
     end
  else
     raise Exception.Create('Código do Produto não cadastrado !' );
  Cds.Close;
 finally
  FreeAndNil(cds);
 end;
end;

procedure TdmOS.cdsTipoOSNewRecord(DataSet: TDataSet);
begin
 cdsTipoOSBLOQABERTURAOS.Value       := 0;
 cdsTipoOSBLOQLANCAMENTOS.Value      := 0;
 cdsTipoOSEXIGIRCORRELACAO.Value     := 0;
 cdsTipoOSBLOQMOVPRODUTOS.Value      := 0;
 cdsTipoOSLANCRDVOSRESTRITA.Value    := 0;
 cdsTipoOSGARANTIA.Value             := 0;
 cdsTipoOSEXIGIRSERIEOSFECH.Value    := 1;
 cdsTipoOSDERIVADA.Value             := 0;
 cdsTipoOSFECHESPECIFICO.Value       := 0;
 cdsTipoOSEXIGIRSERIEABERTURA.Value  := 1;
 cdsTipoOSEXIGIRMODELOABERTURA.Value := 1;
 cdsTipoOSEXIGIRLIBERACAO.Value      := 0;
 cdsTipoOSUSUARIO.Value              := dmGsi.UsuarioAtivo;
end;

procedure TdmOS.cdsTipoOSCFOPNewRecord(DataSet: TDataSet);
begin
 dmOs.cdsTipoOSCFOPUSUARIO.Value := dmGsi.UsuarioAtivo;
end;

procedure TdmOS.cdsAparelhoNewRecord(DataSet: TDataSet);
begin
 cdsAparelhoUSUARIO.Value := dmGsi.UsuarioAtivo;
end;

procedure TdmOS.cdsTuboNewRecord(DataSet: TDataSet);
begin
 cdsTuboUSUARIO.Value := dmGsi.UsuarioAtivo;
end;

procedure TdmOS.cdsTuboInativoNewRecord(DataSet: TDataSet);
begin
 cdsTuboInativoUSUARIO.Value := dmGsi.UsuarioAtivo;
end;

procedure TdmOS.cdsOsTerceiroNewRecord(DataSet: TDataSet);
begin
 cdsOsTerceiroUSUARIO.Value := dmGsi.UsuarioAtivo;
end;

procedure TdmOS.cdsOSPecaBeforePost(DataSet: TDataSet);
begin
 if cdsOSPecaPRODUTOID.AsInteger < 1 then
    raise Exception.Create( 'Código do Produto não pode ser menor que 1 ' );

 if cdsOSPecaQUANTIDADE.Value < 1 then
    raise Exception.Create( 'Quantidade do empenho não informada ' );

 shdcnnOs.AppServer.IAtualPecaOS( cdsOSPecaEMPRESAID.AsString,
                                  cdsOSPecaPRODUTOID.AsString,
                                  cdsOSPecaESTOQUEUTILIZADO.Value,
                                  cdsOSPecaQUANTIDADE.Value );
end;

procedure TdmOS.cdsOSPecaAfterEdit(DataSet: TDataSet);
var BookMark : TBookMark;
begin
 BookMark := TDataSet( DataSet ).GetBookmark;
 if TDataSet( DataSet ).BookmarkValid( BookMark ) then
    raise Exception.Create('Empenho não pode ser editado, exclua-o e cadastre novamente');
end;

procedure TdmOS.cdsCustoHoraAfterPost(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmOS.cdsOsCalcFields(DataSet: TDataSet);
begin
 if cdsOs.State = dsInternalCalc then
    begin
     if      cdsOsTIPOATENDIMENTO.Value = 'P' then
             cdsOsC_TIPOATENDIMENTO.Value := 'PREVENTIVA'
     else if cdsOsTIPOATENDIMENTO.Value = 'C' then
         cdsOsC_TIPOATENDIMENTO.Value := 'CORRETIVA';
    end;
end;

procedure TdmOS.cdsTuboBeforePost(DataSet: TDataSet);
var Modelo : String;
    Corte  : double;
begin
 Corte  := 0;
 Modelo := cdsTuboMODELOTUBOID.Value;

 // Guardar os dados da série anterior
 if ( ( NovoTubo.SerieTuboAnterior <> cdsTuboSERIEID.Value ) and
    ( NovoTubo.SerieTuboAnterior <> '' ) ) then
    begin
//     Data   := DateToStr( NovoTubo.DataAnterior );
     Corte  := NovoTubo.UltimoCorte;
     Modelo := NovoTubo.ModeloTuboAnterior;
    end;

 shdcnnOs.AppServer.IAtualizaTubo( cdsTuboSERIEID.Value,cdsTuboMODELOID.Value,cdsTuboSERIETUBOID.Value,
                                   Modelo, cdsAparelhoCLIENTEID.Value, cdsTuboDATAATUALIZACAO.AsString ,Corte);
end;

procedure TdmOS.cdsClassifPecaAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmOS.cdsClassifPecaAfterPost(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmOS.cdsOsClassifPecaAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmOS.cdsOsClassifPecaAfterPost(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmOS.cdsOsClassifPecaNewRecord(DataSet: TDataSet);
var ParamSQL : String;
begin
 ParamSQL := 'WHERE OSID = '+ QuotedStr( cdsOSPecaClassifOSID.AsString )+
             'AND PECAID = '+ cdsOSPecaClassifPECAID.AsString;

 cdsOsClassifPecaOSID.AsString                := cdsOSPecaClassifOSID.AsString;
 cdsOsClassifPecaPECAID.Value                 := cdsOSPecaClassifPECAID.Value;
 cdsOsClassifPecaITEMID.Value                 := ContadorDB('OS_OSCLASSIFPECA','ITEMID' ,ParamSQL);
 cdsOsClassifPecaEMPRESAID.Value              := cdsOSPecaClassifEMPRESAID.Value;
 cdsOsClassifPecaPRODUTOID.Value              := cdsOSPecaClassifPRODUTOID.Value;
 cdsOsClassifPecaDATACLASSIFICACAO.AsDateTime := pCnnMain.AppServer.iServerDate;
 cdsOsClassifPecaQUANTIDADE.Value             := 1;
 cdsOsClassifPecaVLRFOB.Value := 0;

 cdsOsClassifPecaCODIGOBARRASID.AsString := IntToStr( ContadorDB('OS_OSCLASSIFPECA','CODIGOBARRASID','') );
 cdsOsClassifPecaUSUARIO.AsString        := dmGsi.UsuarioAtivo;
end;


procedure TdmOS.cdsOsClassifPecaPRODUTOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'EF_PRODUTO.EMPRESAID      = ' + cdsOsClassifPecaEMPRESAID.AsString +
            ' AND EF_PRODUTO.PRODUTOID = ' + cdsOsClassifPecaPRODUTOID.AsString;

 iSQL    := AnalisarAddSQL( LocateSQL( dmEF.cdsProduto.ProviderName ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsOsClassifPecaL_DESCRICAOPORTUGUES.AsString := Cds.FieldByName('DESCRICAOPORTUGUES').AsString;
      cdsOsClassifPecaL_DESCRICAOINGLES.AsString    := Cds.FieldByName('DESCRICAOINGLES').AsString;
     end
  else
     begin
      cdsOsClassifPecaL_DESCRICAOPORTUGUES.Clear;
      cdsOsClassifPecaL_DESCRICAOINGLES.Clear;
      raise Exception.Create('Valor do campo ' + Sender.DisplayName + ' é Inválido.');
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmOS.cdsOsClassifPecaCLASSIFPECAIDValidate(Sender: TField);
var Cds          : TClientDataSet;
    InstSQL,iSQL : String;
begin
 Cds     := nil;
 InstSQL := 'OS_CLASSIFPECA.CLASSIFPECAID = ' + TField( Sender ).AsString; 

 iSQL    := AnalisarAddSQL( LocateSQL( cdsClassifPeca.ProviderName ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsOsClassifPecaL_DESCRICAOCLASSIFPECA.AsString := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsOsClassifPecaL_DESCRICAOCLASSIFPECA.Clear;
      raise Exception.Create('Valor do campo ' + Sender.DisplayName + ' é Inválido.');
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmOS.cdsOSPecaClassifOSIDValidate(Sender: TField);
var cds  : TClientDataSet;
    iSQL,InstSQL : String;
begin
 cds := nil;
 InstSQL := 'OS_OS.OSID = '+ QuotedStr( UpperCase( TField( Sender ).AsString ) );
 iSQL    := AnalisarAddSQL( LocateSQL( dmOS.cdsOs.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if Cds.IsEmpty then
     raise Exception.Create('Valor do campo ' + Sender.DisplayName + ' é Inválido.');
     
 finally
  FreeAndNil( cds );
 end;
end;

procedure TdmOS.cdsOSPecaClassifPRODUTOIDValidate(Sender: TField);
var cds  : TClientDataSet;
    iSQL,InstSQL : String;
begin
 cds := nil;
 InstSQL := '    EF_PRODUTO.EMPRESAID = ' + cdsOSPecaClassifEMPRESAID.AsString +
            'AND EF_PRODUTO.PRODUTOID = ' + cdsOSPecaClassifPRODUTOID.AsString;

 iSQL    := AnalisarAddSQL( LocateSQL( dmEF.cdsProduto.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsOSPecaClassifL_DESCRICAOPRODUTO.Value := cds.FieldByName('DESCRICAOPORTUGUES').AsString;
      cdsOSPecaClassifL_GRUPOID.Value          := cds.FieldByName('GRUPOID').AsInteger;
      cdsOSPecaClassifL_SIGLAGRUPO.Value       := cds.FieldByName('SIGLAGRUPO').AsString;
      cdsOSPecaClassifL_PARTNUMBERID.Value     := cds.FieldByName('PARTNUMBERID').AsString;
      cdsOSPecaClassifESTOQUEUTILIZADO.Value   := 'R';
     end
  else
     begin
      cdsOSPecaClassifL_DESCRICAOPRODUTO.Clear;
      cdsOSPecaClassifL_GRUPOID.Clear;
      cdsOSPecaClassifL_SIGLAGRUPO.Clear;
      cdsOSPecaClassifL_PARTNUMBERID.Clear;
      raise Exception.Create('Valor do campo ' + Sender.DisplayName + ' é Inválido.');
     end;
 finally
  FreeAndNil( cds );
 end;
end;

procedure TdmOS.cdsOSPecaClassifNewRecord(DataSet: TDataSet);
begin
 cdsOSPecaClassifEMPRESAID.Value            := EmpresaAtualId;
 cdsOSPecaClassifDATAPECA.AsDateTime        := pCnnMain.AppServer.IServerDate;
 cdsOSPecaClassifUTILIZADO.AsInteger        := 1;
 cdsOSPecaClassifMATERIALAVALIADO.AsInteger := 0;
 cdsOSPecaClassifUSUARIO.AsString           := dmGsi.UsuarioAtivo;
end;

procedure TdmOS.cdsOSPecaClassifBeforePost(DataSet: TDataSet);
begin
 if cdsOSPecaClassifOSID.IsNull then
    raise Exception.Create('Campo N.O.S. Não Preenchido!');

 if cdsOSPecaClassifPRODUTOID.IsNull then
    raise Exception.Create('Campo Produto Não Preenchido!');

 if cdsOSPecaClassifPECAID.AsInteger = 0 then
    cdsOSPecaClassifPECAID.AsInteger := ContadorDB('OS_OSPECA','OS_OSPECA.PECAID','WHERE OS_OSPECA.OSID = '+ QuotedStr( cdsOSPecaClassifOSID.AsString ) );

end;

procedure TdmOS.cdsLocalizacaoOSNewRecord(DataSet: TDataSet);
begin
 cdsLocalizacaoOSLOCALIZACAOOSID.Value := ContadorDB('OS_LOCALIZACAOOS','LOCALIZACAOOSID','');
 cdsLocalizacaoOSFECHAROS.Value        := 1;
 cdsLocalizacaoOSUSUARIO.Value         := dmGsi.UsuarioAtivo;
end;

procedure TdmOS.cdsOsHoraENTIDADEIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'ENTIDADEID =' + QuotedStr( TField( Sender ).AsString );
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvEntidade' ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsOsHoraL_NOMEPOPULARTECNICO.Value := Cds.FieldByName('NOME').AsString
  else
     begin
      cdsOsHoraL_NOMEPOPULARTECNICO.Clear;
      raise Exception.Create('Valor do campo ' + Sender.DisplayName + ' é Inválido.');
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;

end;

procedure TdmOS.cdsOsLIBCHEFIAValidate(Sender: TField);
begin
 if NovoRegOS then
    exit;

 if not CheckSenha(dmGsi.UsuarioAtivo,'Ordem de Serviço','Liberar Ordem de Serviço',True) then
    raise Exception.Create('O Usuário não pode liberar chefia !')
  else
    begin
     if cdsOSLIBCHEFIA.Value = 1 then
        begin
         cdsOSLIBCHEFIANOME.Value      := dmGsi.UsuarioAtivo;
         cdsOSLIBCHEFIADATA.AsDateTime := Now;
        end
     else
        begin
         cdsOSLIBCHEFIANOME.Clear;
         cdsOSLIBCHEFIADATA.Clear;
        end
    end;
end;

procedure TdmOS.cdsOsLOCALIZACAOOSIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + ' = ' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvLocalizacaoOS' ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
    cdsOsL_LOCALIZACAOOS.AsString := Cds.FieldByName('DESCRICAO').AsString
  else
     cdsOsLOCALIZACAOOSID.Clear;

 finally
  FreeAndNil(cds);
 end;
end;

procedure TdmOS.AtualizaComponente;
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'OS_APARELHO.SERIEID = '+ QuotedStr( cdsAparelhoSERIEAPARELHOID.AsString )+' '+
            'AND OS_APARELHO.MODELOID =' + QuotedStr( cdsAparelhoMODELOAPARELHOID.AsString );
 iSQL    := AnalisarAddSQL( LocateSQL( dmOS.cdsAparelho.ProviderName ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsAparelhoCLIENTEID.Value           := cds.FieldByName('CLIENTEID').Value;
      cdsAparelhoENDERECO.AsString         := cds.FieldByName('ENDERECO').AsString;
      cdsAparelhoCEPID.AsInteger           := cds.FieldByName('CEPID').AsInteger;
      cdsAparelhoBAIRRO.AsString           := cds.FieldByName('BAIRRO').AsString;
      cdsAparelhoCIDADE.AsString           := cds.FieldByName('CIDADE').AsString;
      cdsAparelhoNUMERO.AsString           := cds.FieldByName('NUMERO').AsString;
      cdsAparelhoCOMPLEMENTO.AsString      := cds.FieldByName('COMPLEMENTO').AsString;
      cdsAparelhoTELEFONE.AsString         := cds.FieldByName('TELEFONE').AsString;
      cdsAparelhoDATAINSTALACAO.AsDateTime := cds.FieldByName('DATAINSTALACAO').AsDateTime;
      cdsAparelhoDATAGARANTIA.AsDateTime   := cds.FieldByName('DATAGARANTIA').AsDateTime;
      cdsAparelhoVERSAOSOFT.AsString       := cds.FieldByName('VERSAOSOFT').AsString;
     end;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmOS.cdsAparelhoDATAINSTALACAOChange(Sender: TField);
begin
 cdsAparelhoDATAGARANTIA.AsDateTime := cdsAparelhoDATAINSTALACAO.AsDateTime + 365;
end;

procedure TdmOS.cdsPecaPendenteNewRecord(DataSet: TDataSet);
begin
 cdsPecaPendentePECAPENDENTEID.Value    := ExecSequencia( 'SQ_OS_OSPecaPendenteID');
 cdsPecaPendenteEMPRESAID.AsInteger     := EmpresaAtualId;
 cdsPecaPendenteDATAINCLUSAO.AsDateTime := pCnnMain.AppServer.IServerDate;
 cdsPecaPendenteUSUARIO.Value           := dmGsi.UsuarioAtivo;
end;

procedure TdmOS.cdsPecaPendentePRODUTOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := ' EF_PRODUTO.EMPRESAID     = ' + cdsPecaPendenteEMPRESAID.AsString +
            ' AND EF_PRODUTO.PRODUTOID = ' + cdsPecaPendentePRODUTOID.AsString;

 iSQL    := AnalisarAddSQL( LocateSQL( dmEF.cdsProduto.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsPecaPendenteL_ORIGEM.Value                := Cds.FieldByName('ORIGEM').AsString;
      cdsPecaPendenteL_GRUPOID.Value               := Cds.FieldByName('GRUPOID').AsFloat;
      cdsPecaPendenteL_SIGLAGRUPO.Value            := Cds.FieldByName('L_SIGLAGRUPO').Value;
      cdsPecaPendenteL_PARTNUMBER.AsString         := Cds.FieldByName('PARTNUMBERID').AsString;
      cdsPecaPendenteL_DESCRICAOPORTUGUES.AsString := Cds.FieldByName('DESCRICAOPORTUGUES').AsString;
      cdsPecaPendenteL_DESCRICAOINGLES.AsString    := Cds.FieldByName('DESCRICAOINGLES').AsString;
      cdsPecaPendenteL_ESTOQUETOTAL.AsInteger      := Cds.FieldByName('ESTOQUETOTAL').AsInteger;
     end
  else
     begin
      cdsPecaPendenteL_ORIGEM.Clear;
      cdsPecaPendenteL_GRUPOID.Clear;
      cdsPecaPendenteL_PARTNUMBER.Clear;
      cdsPecaPendenteL_DESCRICAOPORTUGUES.Clear;
      cdsPecaPendenteL_DESCRICAOINGLES.Clear;
      cdsPecaPendenteL_ESTOQUETOTAL.Clear;
      raise Exception.Create('Valor do campo ' + Sender.DisplayName + ' é Inválido.');
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;

end;

procedure TdmOS.cdsPecaPendenteOSIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := ' OSID = ' + QuotedStr( cdsPecaPendenteOSID.AsString );
 iSQL    := AnalisarAddSQL( LocateSQL( dmOS.cdsOS.ProviderName ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsPecaPendenteL_SERIEID.Value     := Cds.FieldByName('SERIEID').AsString;
      cdsPecaPendenteL_MODELOID.AsString := Cds .FieldByName('MODELOID').AsString;
     end
  else
     begin
      cdsPecaPendenteL_SERIEID.Value     := Cds.FieldByName('SERIEID').AsString;
      cdsPecaPendenteL_MODELOID.AsString := Cds .FieldByName('MODELOID').AsString;
      raise Exception.Create('Valor do campo ' + Sender.DisplayName + ' é Inválido.');
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmOS.cdsOsCONDPAGTOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 if TField( Sender ).AsString = '' then
    exit;

 Cds     := nil;
 InstSQL := Sender.FieldName + ' = ' + Sender.AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( dmEF.cdsCondPagto.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );
  if not Cds.IsEmpty then
     cdsOsL_DESCR_CONDPAGTO.Value := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsOsL_DESCR_CONDPAGTO.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.');
     end;
  Cds.Close;

 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmOS.cdsOSMaterialAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsOs.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 shdcnnOS.AppServer.ITotalOS( cdsOsOSID.AsString );

 cdsOs.RefreshRecord;

 if dsState in [dsEdit,dsInsert] then
    cdsOs.Edit;
end;

procedure TdmOS.cdsOSMaterialAfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsOs.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if cdsOSOSIMPRESSA.AsInteger = 0 then
    shdcnnOS.AppServer.ITotalOS( cdsOsOSID.AsString );

 cdsOs.RefreshRecord;

 if dsState in [dsEdit,dsInsert] then
    cdsOs.Edit;
end;

procedure TdmOS.cdsOSMaterialBeforeEdit(DataSet: TDataSet);
begin
 BloqOSFechada( 'Edição' );
end;

procedure TdmOS.cdsOSMaterialBeforeInsert(DataSet: TDataSet);
begin
 BloqOSFechada( 'Edição' );
end;

procedure TdmOS.cdsOSMaterialNewRecord(DataSet: TDataSet);
begin
 BloquearInsercao;

 cdsOSMaterialITEMID.AsInteger            := ContadorDB('OS_OSMATERIAL','ITEMID','WHERE OSID = '+ QuotedStr( cdsOsOSID.AsString ));
 cdsOSMaterialEMPRESAID.AsInteger         := EmpresaAtualId;
 cdsOSMaterialQUANTIDADE.Value            := 0;
 cdsOSMaterialVLRPRECOUNITARIO.AsCurrency := 0;
 cdsOSMaterialVLRPRECOTOTAL.AsCurrency    := 0;
 cdsOSMaterialUSUARIO.Value               := dmGsi.UsuarioAtivo;
end;

procedure TdmOS.cdsOsHoraBeforeDelete(DataSet: TDataSet);
begin
 if cdsOsHoraUSUARIO.AsString <> dmGsi.UsuarioAtivo then
    if not CheckSenha(dmGsi.UsuarioAtivo,'Ordem de Servico-OSHora','Apagar Hora de outro usuário', False ) then
       raise Exception.Create('Ordem de Servico-OSHora - Você não possui direitos para esta rotina - Apagar Hora de outro usuário');
end;

procedure TdmOS.cdsOsDefeitoBeforeDelete(DataSet: TDataSet);
begin
 if cdsOsDefeitoUSUARIO.AsString <> dmGsi.UsuarioAtivo then
    if not CheckSenha(dmGsi.UsuarioAtivo,'Ordem de Servico-OSDefeito','Apagar Servico de outro usuário', False ) then
       raise Exception.Create('Ordem de Servico-OSDefeito - Você não possui direitos para esta rotina - Apagar Servico de outro usuário');
end;

procedure TdmOS.cdsOSMaterialPRODUTOIDValidate(Sender: TField);
var InstSQL, iSql : String; Cds : TClientDataSet;
begin
 if ( cdsOSMaterial.State in [dsBrowse,dsSetKey] ) then
    exit;

 if not cdsOSMaterialDESCRICAOMATSERV.IsNull then
    raise Exception.Create('Serviço já foi preenchido, o produto não pode ser incluso neste processo');

 Cds     := nil;
 InstSQL := ' EF_PRODUTO.EMPRESAID = '+ cdsOSMaterialEMPRESAID.AsString +
            ' AND EF_PRODUTO.PRODUTOID = ' + cdsOSMaterialPRODUTOID.AsString;

 iSQL    := AnalisarAddSQL( LocateSQL( dmEF.cdsProduto.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsOSMaterialALIQUOTAIPI.AsFloat         := cds.FieldByName('ALIQUOTAIPI').AsFloat;
      cdsOSMaterialL_DESCRICAOPRODUTO.AsString := cds.FieldByName('DESCRICAOPORTUGUES').AsString;
      cdsOSMaterialVLRPRECOUNITARIO.AsFloat    := cds.FieldByName('PRECOVENDA').AsFloat +
                                                  ( Cds.FieldByName('PRECOVENDA').AsFloat * ( Cds.FieldByName('ALIQUOTAIPI').AsFloat / 100 ) );
     end
  else
     begin
      cdsOSMaterialALIQUOTAIPI.AsFloat;
      cdsOSMaterialL_DESCRICAOPRODUTO.Clear;
      raise Exception.Create('Código do Produto não cadastrado !' );
     end;

   Cds.Close;
  finally
   FreeAndNil(cds);
  end;
end;

procedure TdmOS.cdsOsVLRMAODEOBRAValidate(Sender: TField);
begin
 shdcnnOS.AppServer.ITotalOS( cdsOsOSID.AsString );
end;

procedure TdmOS.cdsOSMaterialVLRPRECOUNITARIOValidate(Sender: TField);
begin
 cdsOSMaterialVLRPRECOTOTAL.AsCurrency := cdsOSMaterialVLRPRECOUNITARIO.AsCurrency * cdsOSMaterialQUANTIDADE.AsCurrency;
end;

procedure TdmOS.cdsOSMaterialQUANTIDADEValidate(Sender: TField);
begin
  cdsOSMaterialVLRPRECOTOTAL.AsCurrency := cdsOSMaterialVLRPRECOUNITARIO.AsCurrency * cdsOSMaterialQUANTIDADE.AsCurrency;
end;

procedure TdmOS.cdsOcOperacionalAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmOS.cdsOcOperacionalAfterPost(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmOS.cdsOcOperacionalNewRecord(DataSet: TDataSet);
begin
 cdsOcOperacionalOCOPERACIONALID.Value := ContadorDB('OS_OCOPERACIONAL','OCOPERACIONALID','');
 cdsOcOperacionalUSUARIO.Value         := dmGsi.UsuarioAtivo;
end;

procedure TdmOS.cdsOsOcOperacionalAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsOs.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsOs.Edit;
end;

procedure TdmOS.cdsOsOcOperacionalAfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsOs.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsOs.Edit;
end;

procedure TdmOS.cdsOsOcOperacionalBeforeEdit(DataSet: TDataSet);
begin
 BloqOSFechada( 'Edição' );
end;

procedure TdmOS.cdsOsOcOperacionalBeforeInsert(DataSet: TDataSet);
begin
 BloqOSFechada( 'Edição' );
end;

procedure TdmOS.cdsOsOcOperacionalNewRecord(DataSet: TDataSet);
begin
 cdsOsOcOperacionalITEMID.AsInteger          := ContadorDB('OS_OSOCOPERACIONAL','OS_OSOCOPERACIONAL.ITEMID','WHERE OS_OSOCOPERACIONAL.OSID = '+ QuotedStr( cdsOsOSID.AsString )  );
 cdsOsOcOperacionalDATAOCORRENCIA.AsDateTime := pCnnMain.AppServer.iServerDate;
 cdsOsOcOperacionalUSUARIO.Value             := dmGsi.UsuarioAtivo;
end;

procedure TdmOS.cdsOsOcOperacionalOCOPERACIONALIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 if TField( Sender ).AsString = '' then
    exit;

 Cds     := nil;
 InstSQL := Sender.FieldName + ' = ' + Sender.AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( dmOS.cdsOcOperacional.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );
  if not Cds.IsEmpty then
     cdsOsOcOperacionalL_DESCRICAOOCOPERACIONAL.Value := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsOsOcOperacionalL_DESCRICAOOCOPERACIONAL.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.');
     end;
  Cds.Close;

 finally
  FreeAndNil( Cds );
 end;

end;

procedure TdmOS.cdsOsOcOperacionalDATAACAOTOMADAValidate(Sender: TField);
begin
 cdsOsOcOperacionalUSUARIOACAOTOMADA.Value   := dmGsi.UsuarioAtivo;
end;

end.
