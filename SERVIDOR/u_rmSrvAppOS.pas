unit u_rmSrvAppOS;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, GSIServidor_TLB, StdVcl, FMTBcd, DB, Provider, SqlExpr, Variants;


type
  TSrvAppOS = class(TRemoteDataModule, ISrvAppOS)
    sqldtsTipoOs: TSQLDataSet;
    sqldtsCustoHora: TSQLDataSet;
    sqldtsCustoHoraCUSTOHORAID: TBCDField;
    sqldtsCustoHoraVLRHORATRAB: TBCDField;
    sqldtsCustoHoraVLRHORATRANSP: TBCDField;
    sqldtsCustoHoraVLRHORAESPERA: TBCDField;
    sqldtsCustoHoraVLRHORAOUTROS: TBCDField;
    sqldtsCustoHoraUSUARIO: TStringField;
    sqldtsAparelho: TSQLDataSet;
    dsprvTipoOs: TDataSetProvider;
    dsprvCustoHora: TDataSetProvider;
    sqldtsDefeito: TSQLDataSet;
    sqldtsDefeitoDEFEITOID: TBCDField;
    sqldtsDefeitoDESCRICAO: TStringField;
    sqldtsDefeitoUSUARIO: TStringField;
    dsprvDefeito: TDataSetProvider;
    sqldtsTuboInativo: TSQLDataSet;
    sqldtsTubo: TSQLDataSet;
    sqldtsOs: TSQLDataSet;
    dsprvOs: TDataSetProvider;
    sqldtsOsHora: TSQLDataSet;
    sqldtsOsHoraOSID: TStringField;
    sqldtsOsHoraDATATRABALHOID: TSQLTimeStampField;
    sqldtsOsHoraQTDHORATRAB: TBCDField;
    sqldtsOsHoraQTDHORATRANSP: TBCDField;
    sqldtsOsHoraQTDHORAESPERA: TBCDField;
    sqldtsOsHoraQTDHORAOUTRA: TBCDField;
    sqldtsOsHoraUSUARIO: TStringField;
    dsOsLink: TDataSource;
    sqldtsOsDefeito: TSQLDataSet;
    sqldtsOsDefeitoOSID: TStringField;
    sqldtsOsDefeitoITEMID: TBCDField;
    sqldtsOsDefeitoDEFEITOID: TBCDField;
    sqldtsOsDefeitoLOCALDEFEITO: TStringField;
    sqldtsOsDefeitoUSUARIO: TStringField;
    sqldtsOsPeca: TSQLDataSet;
    sqldtsOsTerceiro: TSQLDataSet;
    sqldtsOsTerceiroEMPRESAID: TBCDField;
    sqldtsOsTerceiroNFSID: TBCDField;
    sqldtsOsTerceiroDATAEMISSAOID: TSQLTimeStampField;
    sqldtsOsTerceiroOSID: TStringField;
    sqldtsOsTerceiroNOMENOTA: TStringField;
    sqldtsOsTerceiroDATAPREVENTREGA: TSQLTimeStampField;
    sqldtsOsTerceiroDESTINATARIOID: TBCDField;
    sqldtsOsTerceiroMOTIVOATRASO: TStringField;
    sqldtsOsTerceiroUSUARIO: TStringField;
    dsAparelhoLink: TDataSource;
    dsprvAparelho: TDataSetProvider;
    sqldtsOsHoraL_NOMEPOPULARTECNICO: TStringField;
    sqldtsOsDefeitoL_DESCRICAODEFEITO: TStringField;
    dsprvOsTerceiro: TDataSetProvider;
    sqldtsOsTerceiroL_NOMEDESTINATARIO: TStringField;
    sqldtsTipoOsCfop: TSQLDataSet;
    dsTipoOSLink: TDataSource;
    sqldtsOsPecaOSID: TStringField;
    sqldtsOsPecaEMPRESAID: TBCDField;
    sqldtsOsPecaPRODUTOID: TBCDField;
    sqldtsOsPecaL_DESCRICAOPRODUTO: TStringField;
    sqldtsOsPecaDATAPECA: TSQLTimeStampField;
    sqldtsOsPecaQUANTIDADE: TBCDField;
    sqldtsOsPecaUTILIZADO: TBCDField;
    sqldtsOsPecaIMPRESSO: TBCDField;
    sqldtsOsPecaESTOQUEUTILIZADO: TStringField;
    sqldtsOsPecaUSUARIO: TStringField;
    sqldtsDefeitoGrupo: TSQLDataSet;
    dsDefeitoLink: TDataSource;
    sqldtsDefeitoGrupoDEFEITOID: TBCDField;
    sqldtsDefeitoGrupoGRUPOID: TBCDField;
    sqldtsDefeitoGrupoUSUARIO: TStringField;
    sqldtsTipoOsTIPOOSID: TStringField;
    sqldtsTipoOsDESCRICAO: TStringField;
    sqldtsTipoOsBLOQABERTURAOS: TBCDField;
    sqldtsTipoOsBLOQLANCAMENTOS: TBCDField;
    sqldtsTipoOsEXIGIRCORRELACAO: TBCDField;
    sqldtsTipoOsUSUARIO: TStringField;
    sqldtsOsOSID: TStringField;
    sqldtsOsFILIALID: TBCDField;
    sqldtsOsL_NOMEFANTASIAFILIAL: TStringField;
    sqldtsOsTIPOOSID: TStringField;
    sqldtsOsL_DESCRICAOTIPOOS: TStringField;
    sqldtsOsTIPOATENDIMENTO: TStringField;
    sqldtsOsOSCORRELACAOID: TStringField;
    sqldtsOsDATAABERTURA: TSQLTimeStampField;
    sqldtsOsDATAVALIDADE: TSQLTimeStampField;
    sqldtsOsDATACONCLUSAO: TSQLTimeStampField;
    sqldtsOsDATAFECHAMENTO: TSQLTimeStampField;
    sqldtsOsDATAENTRLABORATORIO: TSQLTimeStampField;
    sqldtsOsDATASAIDALABORATORIO: TSQLTimeStampField;
    sqldtsOsTIPOASSIST: TStringField;
    sqldtsOsSTATUS: TStringField;
    sqldtsOsSERIEID: TStringField;
    sqldtsOsMODELOID: TStringField;
    sqldtsOsCLIENTEID: TBCDField;
    sqldtsOsL_NOMECLIENTE: TStringField;
    sqldtsOsSOLICITANTE: TStringField;
    sqldtsOsSETOR: TStringField;
    sqldtsOsSERVICO: TStringField;
    sqldtsOsTECNICOID: TBCDField;
    sqldtsOsL_NOMETECNICO: TStringField;
    sqldtsOsORCAMENTOID: TStringField;
    sqldtsOsVLRORCADO: TBCDField;
    sqldtsOsMOEDAORCADA: TStringField;
    sqldtsOsCONDPAGTO: TStringField;
    sqldtsOsVLRPAGTOANTEC: TBCDField;
    sqldtsOsCEPID: TBCDField;
    sqldtsOsNUMERO: TStringField;
    sqldtsOsCOMPLEMENTO: TStringField;
    sqldtsOsENDERECO: TStringField;
    sqldtsOsBAIRRO: TStringField;
    sqldtsOsCIDADE: TStringField;
    sqldtsOsSIGLAUFID: TStringField;
    sqldtsOsUSUARIO: TStringField;
    sqldtsAparelhoSERIEID: TStringField;
    sqldtsAparelhoMODELOID: TStringField;
    sqldtsAparelhoL_DESCRICAOMODELO: TStringField;
    sqldtsAparelhoSERIEAPARELHOID: TStringField;
    sqldtsAparelhoMODELOAPARELHOID: TStringField;
    sqldtsAparelhoL_DESCRICAOMODELOAPARELHO: TStringField;
    sqldtsAparelhoCLIENTEID: TBCDField;
    sqldtsAparelhoL_NOMECLIENTE: TStringField;
    sqldtsAparelhoCLIENTEANTERIORID: TBCDField;
    sqldtsAparelhoL_NOMECLIENTEANTERIOR: TStringField;
    sqldtsAparelhoVERSAOSOFT: TStringField;
    sqldtsAparelhoNIVELHELIO: TStringField;
    sqldtsAparelhoDATAINSTALACAO: TSQLTimeStampField;
    sqldtsAparelhoDATAGARANTIA: TSQLTimeStampField;
    sqldtsAparelhoCEPID: TBCDField;
    sqldtsAparelhoNUMERO: TStringField;
    sqldtsAparelhoCOMPLEMENTO: TStringField;
    sqldtsAparelhoENDERECO: TStringField;
    sqldtsAparelhoBAIRRO: TStringField;
    sqldtsAparelhoCIDADE: TStringField;
    sqldtsAparelhoSIGLAUFID: TStringField;
    sqldtsAparelhoTELEFONE: TStringField;
    sqldtsAparelhoCONTRATOID: TStringField;
    sqldtsAparelhoDATACONTGARANTIAINI: TSQLTimeStampField;
    sqldtsAparelhoDATACONTGARANTIAFIM: TSQLTimeStampField;
    sqldtsAparelhoNXID: TStringField;
    sqldtsAparelhoINVOICEID: TStringField;
    sqldtsAparelhoTMBID: TStringField;
    sqldtsAparelhoEXIBEOBS: TBCDField;
    sqldtsAparelhoOBSERVACAO: TStringField;
    sqldtsAparelhoUSUARIO: TStringField;
    sqldtsTuboSERIEID: TStringField;
    sqldtsTuboMODELOID: TStringField;
    sqldtsTuboSERIETUBOID: TStringField;
    sqldtsTuboMODELOTUBOID: TStringField;
    sqldtsTuboL_DESCRICAOMODELOTUBO: TStringField;
    sqldtsTuboDATAATUALIZACAO: TSQLTimeStampField;
    sqldtsTuboNUMCORTESATUAL: TBCDField;
    sqldtsTuboNUMCORTESTROCA: TBCDField;
    sqldtsTuboNUMCORTES: TBCDField;
    sqldtsTuboUSUARIO: TStringField;
    sqldtsTuboInativoSERIEID: TStringField;
    sqldtsTuboInativoMODELOID: TStringField;
    sqldtsTuboInativoSERIETUBOID: TStringField;
    sqldtsTuboInativoMODELOTUBOID: TStringField;
    sqldtsTuboInativoL_DESCRICAOMODELOTUBO: TStringField;
    sqldtsTuboInativoDATASUBST: TSQLTimeStampField;
    sqldtsTuboInativoUSUARIO: TStringField;
    sqldtsOsL_TELEFONE: TStringField;
    sqldtsOsL_PASTA: TStringField;
    sqldtsOsL_VERSAOSOFT: TStringField;
    sqldtsOsL_GRUPOID: TBCDField;
    sqldtsTipoOsCfopTIPOOSID: TStringField;
    sqldtsTipoOsCfopNATUREZAOPID: TBCDField;
    sqldtsTipoOsCfopL_CFOP: TStringField;
    sqldtsTipoOsCfopL_DESCRICAONATUREZA: TStringField;
    sqldtsTipoOsCfopUSUARIO: TStringField;
    sqldtsOsL_INSCRMUNICIPAL: TStringField;
    sqldtsOsL_INSCRESTADUAL: TStringField;
    sqldtsOsL_CPFCNPJ: TStringField;
    sqldtsCustoHoraDESCRICAO: TStringField;
    sqldtsOsPecaNFSID: TBCDField;
    sqldtsOsPecaDATAEMISSAOID: TSQLTimeStampField;
    sqldtsOsPecaMATERIALAVALIADO: TBCDField;
    sqldtsOsPecaAVALIADOR: TStringField;
    sqldtsOsPecaJUSTIFICATIVA: TMemoField;
    sqldtsTuboInativoCORTESREALIZADOS: TBCDField;
    sqldtsTuboInativoCORTESTROCA: TBCDField;
    sqldtsOsPecaPECAID: TBCDField;
    sqldtsClassifPeca: TSQLDataSet;
    sqldtsOsClassifPeca: TSQLDataSet;
    dsprvClassifPeca: TDataSetProvider;
    sqldtsClassifPecaCLASSIFPECAID: TBCDField;
    sqldtsClassifPecaDESCRICAO: TStringField;
    sqldtsClassifPecaUSUARIO: TStringField;
    dsprvOSClassifPeca: TDataSetProvider;
    sqldtsOsClassifPecaOSID: TStringField;
    sqldtsOsClassifPecaCODIGOBARRASID: TBCDField;
    sqldtsOsClassifPecaSERIEID: TStringField;
    sqldtsOsClassifPecaMODELOID: TStringField;
    sqldtsOsClassifPecaEMPRESAID: TBCDField;
    sqldtsOsClassifPecaPRODUTOID: TBCDField;
    sqldtsOsClassifPecaCLASSIFPECAID: TBCDField;
    sqldtsOsClassifPecaDATACLASSIFICACAO: TSQLTimeStampField;
    sqldtsOsClassifPecaQUANTIDADE: TBCDField;
    sqldtsOsClassifPecaVLRFOB: TBCDField;
    sqldtsOsClassifPecaOBSERVACAO: TMemoField;
    sqldtsOsClassifPecaUSUARIO: TStringField;
    sqldtsOsClassifPecaPECAID: TBCDField;
    sqldtsOsClassifPecaITEMID: TBCDField;
    sqldtsOsClassifPecaL_DESCRICAOPORTUGUES: TStringField;
    sqldtsOsClassifPecaL_DESCRICAOINGLES: TStringField;
    sqldtsOsClassifPecaL_DESCRICAOCLASSIFPECA: TStringField;
    dsprvOSPecaClassif: TDataSetProvider;
    sqldtsOSPecaClassif: TSQLDataSet;
    sqldtsOSPecaClassifOSID: TStringField;
    sqldtsOSPecaClassifPECAID: TBCDField;
    sqldtsOSPecaClassifEMPRESAID: TBCDField;
    sqldtsOSPecaClassifPRODUTOID: TBCDField;
    sqldtsOSPecaClassifL_DESCRICAOPRODUTO: TStringField;
    sqldtsOSPecaClassifNFSID: TBCDField;
    sqldtsOSPecaClassifDATAEMISSAOID: TSQLTimeStampField;
    sqldtsOSPecaClassifDATAPECA: TSQLTimeStampField;
    sqldtsOSPecaClassifQUANTIDADE: TBCDField;
    sqldtsOSPecaClassifUTILIZADO: TBCDField;
    sqldtsOSPecaClassifIMPRESSO: TBCDField;
    sqldtsOSPecaClassifESTOQUEUTILIZADO: TStringField;
    sqldtsOSPecaClassifMATERIALAVALIADO: TBCDField;
    sqldtsOSPecaClassifAVALIADOR: TStringField;
    sqldtsOSPecaClassifJUSTIFICATIVA: TMemoField;
    sqldtsOSPecaClassifUSUARIO: TStringField;
    sqldtsLocalizacaoOS: TSQLDataSet;
    dsprvLocalizacaoOS: TDataSetProvider;
    sqldtsLocalizacaoOSLOCALIZACAOOSID: TBCDField;
    sqldtsLocalizacaoOSDESCRICAO: TStringField;
    sqldtsLocalizacaoOSUSUARIO: TStringField;
    sqldtsOsLOCALIZACAOOSID: TBCDField;
    sqldtsOsL_LOCALIZACAOOS: TStringField;
    sqldtsOsHoraENTIDADEID: TBCDField;
    sqldtsOsL_FAX: TStringField;
    sqldtsAparelhoL_PASTA: TStringField;
    sqldtsTipoOsBLOQMOVPRODUTOS: TBCDField;
    sqldtsTipoOsLANCRDVOSRESTRITA: TBCDField;
    sqldtsOsPecaL_LOCALIZACAO: TStringField;
    sqldtsPecaPendente: TSQLDataSet;
    dsprvPecaPendente: TDataSetProvider;
    sqldtsPecaPendentePECAPENDENTEID: TBCDField;
    sqldtsPecaPendenteDATAINCLUSAO: TSQLTimeStampField;
    sqldtsPecaPendenteEMPRESAID: TBCDField;
    sqldtsPecaPendentePRODUTOID: TBCDField;
    sqldtsPecaPendenteL_ORIGEM: TStringField;
    sqldtsPecaPendenteL_PARTNUMBER: TStringField;
    sqldtsPecaPendenteL_DESCRICAOPORTUGUES: TStringField;
    sqldtsPecaPendenteL_DESCRICAOINGLES: TStringField;
    sqldtsPecaPendenteL_ESTOQUETOTAL: TBCDField;
    sqldtsPecaPendenteOSID: TStringField;
    sqldtsPecaPendenteL_SERIEID: TStringField;
    sqldtsPecaPendenteL_MODELOID: TStringField;
    sqldtsPecaPendenteQUANTIDADE: TBCDField;
    sqldtsPecaPendenteLOCALPECAID: TBCDField;
    sqldtsPecaPendenteOBSERVACAO: TMemoField;
    sqldtsPecaPendenteUSUARIO: TStringField;
    sqldtsOSPecaClassifL_GRUPOID: TBCDField;
    sqldtsOSPecaClassifL_PARTNUMBERID: TStringField;
    sqldtsOsClassifPecaL_PARTNUMBERID: TStringField;
    sqldtsTipoOsGARANTIA: TBCDField;
    sqldtsOsPecaDOCUMENTOENTRADA: TBCDField;
    sqldtsAparelhoMODELOJAPAOID: TStringField;
    sqldtsAparelhoL_GRUPOID: TBCDField;
    sqldtsAparelhoL_GRUPOAPARELHOID: TBCDField;
    sqldtsAparelhoL_TIPO: TStringField;
    sqldtsOsNUMCORTES: TBCDField;
    sqldtsOsORCAMENTOREFID: TBCDField;
    sqldtsOsCONDPAGTOID: TBCDField;
    sqldtsOsVLRMAODEOBRA: TFMTBCDField;
    sqldtsOsVLRDESLOCAMENTO: TFMTBCDField;
    sqldtsOsVLRFRETE: TFMTBCDField;
    sqldtsOsVLRPECA: TFMTBCDField;
    sqldtsOsL_DESCR_CONDPAGTO: TStringField;
    sqldtsOSMaterial: TSQLDataSet;
    sqldtsOSMaterialOSID: TStringField;
    sqldtsOSMaterialITEMID: TBCDField;
    sqldtsOSMaterialEMPRESAID: TBCDField;
    sqldtsOSMaterialPRODUTOID: TBCDField;
    sqldtsOSMaterialL_DESCRICAOPRODUTO: TStringField;
    sqldtsOSMaterialQUANTIDADE: TBCDField;
    sqldtsOSMaterialVLRPRECOUNITARIO: TFMTBCDField;
    sqldtsOSMaterialVLRPRECOTOTAL: TFMTBCDField;
    sqldtsOSMaterialUSUARIO: TStringField;
    sqldtsDefeitoGrupoL_SIGLAGRUPO: TStringField;
    sqldtsDefeitoGrupoL_DESCRICAOGRUPO: TStringField;
    sqldtsOsL_SIGLAGRUPO: TStringField;
    sqldtsAparelhoL_SIGLAGRUPO: TStringField;
    sqldtsAparelhoL_SIGLAGRUPOAPARELHO: TStringField;
    sqlOSProgSemanal: TSQLDataSet;
    sqlOSProgSemanalItem: TSQLDataSet;
    dsprvOSProgSemanal: TDataSetProvider;
    dsOSProgSemanalLink: TDataSource;
    sqlOSProgSemanalDATASERVICOID: TSQLTimeStampField;
    sqlOSProgSemanalITEMID: TBCDField;
    sqlOSProgSemanalOSID: TStringField;
    sqlOSProgSemanalCLIENTEID: TBCDField;
    sqlOSProgSemanalNOME: TStringField;
    sqlOSProgSemanalCIDADE: TStringField;
    sqlOSProgSemanalSIGLAUFID: TStringField;
    sqlOSProgSemanalSERIEID: TStringField;
    sqlOSProgSemanalMODELOID: TStringField;
    sqlOSProgSemanalHORATRABINICIAL: TSQLTimeStampField;
    sqlOSProgSemanalHORATRABFINAL: TSQLTimeStampField;
    sqlOSProgSemanalCOMENTARIO: TMemoField;
    sqlOSProgSemanalUSUARIO: TStringField;
    sqlOSProgSemanalItemDATASERVICOID: TSQLTimeStampField;
    sqlOSProgSemanalItemITEMID: TBCDField;
    sqlOSProgSemanalItemTECNICOID: TBCDField;
    sqlOSProgSemanalItemUSUARIO: TStringField;
    sqldtsOsVLRTOTALORCCOMP: TFMTBCDField;
    sqldtsOsVLRTOTALMAODEOBRA: TFMTBCDField;
    sqldtsOsVLRTOTALDESLOCAMENTO: TFMTBCDField;
    sqldtsOsVLRTOTALFRETE: TFMTBCDField;
    sqldtsOsVLRTOTALOUTRO: TFMTBCDField;
    sqldtsOsVLRTOTALPAGAR: TFMTBCDField;
    sqldtsOsVLRTOTALPECA: TFMTBCDField;
    sqldtsOsVLRDESCONTO: TFMTBCDField;
    sqldtsOsPORCDESCONTO: TFMTBCDField;
    sqldtsOsNOMELIBDESCONTO: TStringField;
    sqldtsOSMaterialDESCRICAOMATSERV: TStringField;
    sqldtsOSOcOperacional: TSQLDataSet;
    sqldtsOSOcOperacionalOSID: TStringField;
    sqldtsOSOcOperacionalITEMID: TBCDField;
    sqldtsOSOcOperacionalOCOPERACIONALID: TBCDField;
    sqldtsOSOcOperacionalL_DESCRICAOOCOPERACIONAL: TStringField;
    sqldtsOSOcOperacionalACAOTOMADA: TMemoField;
    sqldtsOSOcOperacionalUSUARIO: TStringField;
    sqldtsOcOperacional: TSQLDataSet;
    dsprvOcOperacional: TDataSetProvider;
    sqldtsOcOperacionalOCOPERACIONALID: TBCDField;
    sqldtsOcOperacionalDESCRICAO: TStringField;
    sqldtsOcOperacionalUSUARIO: TStringField;
    sqldtsOsOSIMPRESSA: TBCDField;
    sqldtsOSOcOperacionalDATAOCORRENCIA: TSQLTimeStampField;
    sqldtsOSOcOperacionalDATAACAOTOMADA: TSQLTimeStampField;
    sqldtsOSOcOperacionalUSUARIOACAOTOMADA: TStringField;
    sqldtsTipoOsEXIGIRSERIEOSFECH: TBCDField;
    sqldtsTipoOsDERIVADA: TBCDField;
    sqldtsLocalizacaoOSFECHAROS: TBCDField;
    sqldtsOsOBSSERVICO: TStringField;
    sqldtsOSPecaClassifL_SIGLAGRUPO: TStringField;
    sqldtsPecaPendenteL_GRUPOID: TBCDField;
    sqldtsPecaPendenteL_SIGLAGRUPO: TStringField;
    sqldtsOsPecaOBSERVACAO: TStringField;
    cdsOFFOS: TClientDataSet;
    sqldtsOsDATAHORACHEGADA: TSQLTimeStampField;
    sqldtsOsDATAHORASAIDA: TSQLTimeStampField;
    sqldtsOsOSOFFLINE: TBCDField;
    sqldtsOsOSOFFLINEUSUARIO: TStringField;
    sqldtsTipoOsFECHESPECIFICO: TBCDField;
    sqldtsOSMaterialALIQUOTAIPI: TFMTBCDField;
    sqldtsAdiantamento: TSQLDataSet;
    sqldtsAdiantamentoADIANTAMENTOID: TBCDField;
    sqldtsAdiantamentoDATASOLICITACAO: TSQLTimeStampField;
    sqldtsAdiantamentoDATADEPOSITO: TSQLTimeStampField;
    sqldtsAdiantamentoFUNCIONARIOID: TBCDField;
    sqldtsAdiantamentoL_NOMEFUNCIONARIO: TStringField;
    sqldtsAdiantamentoTIPOMOEDA: TStringField;
    sqldtsAdiantamentoTIPODESPESAOS: TStringField;
    sqldtsAdiantamentoOSID: TStringField;
    sqldtsAdiantamentoOPERACAOID: TBCDField;
    sqldtsAdiantamentoL_DESCRICAOOPERACAO: TStringField;
    sqldtsAdiantamentoL_OPERACAO: TStringField;
    sqldtsAdiantamentoVLROPERACAO: TBCDField;
    sqldtsAdiantamentoHORASOLICITADA: TSQLTimeStampField;
    sqldtsAdiantamentoHISTORICO: TStringField;
    sqldtsAdiantamentoLIBCHEFIA: TBCDField;
    sqldtsAdiantamentoNOMELIBCHEFIA: TStringField;
    sqldtsAdiantamentoLIBERADO: TBCDField;
    sqldtsAdiantamentoKMSAIDA: TBCDField;
    sqldtsAdiantamentoKMCHEGADA: TBCDField;
    sqldtsAdiantamentoUSUARIO: TStringField;
    dsprvAdiantamento2: TDataSetProvider;
    sqldtsBancoHora: TSQLDataSet;
    sqldtsBancoHoraBANCOHORAID: TBCDField;
    sqldtsBancoHoraDATASOLICITACAO: TSQLTimeStampField;
    sqldtsBancoHoraMULTILANCAMENTO: TBCDField;
    sqldtsBancoHoraFUNCIONARIOID: TBCDField;
    sqldtsBancoHoraL_NOMEFUNCIONARIO: TStringField;
    sqldtsBancoHoraL_FILIALID: TBCDField;
    sqldtsBancoHoraTIPODESPESAOS: TStringField;
    sqldtsBancoHoraOSID: TStringField;
    sqldtsBancoHoraOPERACAOID: TBCDField;
    sqldtsBancoHoraL_DESCRICAOOPERACAO: TStringField;
    sqldtsBancoHoraL_OPERACAO: TStringField;
    sqldtsBancoHoraL_DATAFECHAMENTO: TSQLTimeStampField;
    sqldtsBancoHoraL_DATAMESABERTO: TSQLTimeStampField;
    sqldtsBancoHoraHORAINI: TSQLTimeStampField;
    sqldtsBancoHoraHORAFIM: TSQLTimeStampField;
    sqldtsBancoHoraDIFERENCAHORATRAB: TStringField;
    sqldtsBancoHoraDIFERENCAMINTRAB: TFMTBCDField;
    sqldtsBancoHoraHISTORICO: TStringField;
    sqldtsBancoHoraLIBCHEFIA: TBCDField;
    sqldtsBancoHoraNOMELIBCHEFIA: TStringField;
    sqldtsBancoHoraDATALIBCHEFIA: TSQLTimeStampField;
    sqldtsBancoHoraLIBERADO: TBCDField;
    sqldtsBancoHoraIMPRESSO: TBCDField;
    sqldtsBancoHoraUSUARIO: TStringField;
    dsprvBancoHora2: TDataSetProvider;
    cdsOFFAdiantamento: TClientDataSet;
    cdsOFFBancoHora: TClientDataSet;
    cdsOFFBancoHoraBANCOHORAID: TBCDField;
    cdsOFFBancoHoraDATASOLICITACAO: TSQLTimeStampField;
    cdsOFFBancoHoraMULTILANCAMENTO: TBCDField;
    cdsOFFBancoHoraFUNCIONARIOID: TBCDField;
    cdsOFFBancoHoraL_NOMEFUNCIONARIO: TStringField;
    cdsOFFBancoHoraL_FILIALID: TBCDField;
    cdsOFFBancoHoraTIPODESPESAOS: TStringField;
    cdsOFFBancoHoraOSID: TStringField;
    cdsOFFBancoHoraOPERACAOID: TBCDField;
    cdsOFFBancoHoraL_DESCRICAOOPERACAO: TStringField;
    cdsOFFBancoHoraL_OPERACAO: TStringField;
    cdsOFFBancoHoraL_DATAFECHAMENTO: TSQLTimeStampField;
    cdsOFFBancoHoraL_DATAMESABERTO: TSQLTimeStampField;
    cdsOFFBancoHoraHORAINI: TSQLTimeStampField;
    cdsOFFBancoHoraHORAFIM: TSQLTimeStampField;
    cdsOFFBancoHoraDIFERENCAHORATRAB: TStringField;
    cdsOFFBancoHoraDIFERENCAMINTRAB: TFMTBCDField;
    cdsOFFBancoHoraHISTORICO: TStringField;
    cdsOFFBancoHoraLIBCHEFIA: TBCDField;
    cdsOFFBancoHoraNOMELIBCHEFIA: TStringField;
    cdsOFFBancoHoraDATALIBCHEFIA: TSQLTimeStampField;
    cdsOFFBancoHoraLIBERADO: TBCDField;
    cdsOFFBancoHoraIMPRESSO: TBCDField;
    cdsOFFBancoHoraUSUARIO: TStringField;
    cdsOFFAdiantamentoADIANTAMENTOID: TBCDField;
    cdsOFFAdiantamentoDATASOLICITACAO: TSQLTimeStampField;
    cdsOFFAdiantamentoDATADEPOSITO: TSQLTimeStampField;
    cdsOFFAdiantamentoFUNCIONARIOID: TBCDField;
    cdsOFFAdiantamentoL_NOMEFUNCIONARIO: TStringField;
    cdsOFFAdiantamentoTIPOMOEDA: TStringField;
    cdsOFFAdiantamentoTIPODESPESAOS: TStringField;
    cdsOFFAdiantamentoOSID: TStringField;
    cdsOFFAdiantamentoHISTORICO: TStringField;
    cdsOFFAdiantamentoHORASOLICITADA: TSQLTimeStampField;
    cdsOFFAdiantamentoOPERACAOID: TBCDField;
    cdsOFFAdiantamentoL_DESCRICAOOPERACAO: TStringField;
    cdsOFFAdiantamentoL_OPERACAO: TStringField;
    cdsOFFAdiantamentoKMSAIDA: TBCDField;
    cdsOFFAdiantamentoKMCHEGADA: TBCDField;
    cdsOFFAdiantamentoLIBCHEFIA: TBCDField;
    cdsOFFAdiantamentoLIBERADO: TBCDField;
    cdsOFFAdiantamentoNOMELIBCHEFIA: TStringField;
    cdsOFFAdiantamentoVLROPERACAO: TBCDField;
    cdsOFFAdiantamentoUSUARIO: TStringField;
    sqldtsTipoOsEXIGIRSERIEABERTURA: TBCDField;
    sqldtsTipoOsEXIGIRMODELOABERTURA: TBCDField;
    sqldtsOsTerceiroL_CIDADE: TStringField;
    sqldtsOsTerceiroL_SIGLAUFID: TStringField;
    sqldtsOsDefeitoSERVICOEXECUTADO: TMemoField;
    sqldtsOSTerceiroItem: TSQLDataSet;
    sqldtsOSTerceiroItemEMPRESAID: TBCDField;
    sqldtsOSTerceiroItemNFSID: TBCDField;
    sqldtsOSTerceiroItemDATAEMISSAOID: TSQLTimeStampField;
    sqldtsOSTerceiroItemITEMID: TBCDField;
    sqldtsOSTerceiroItemPRODUTOID: TBCDField;
    sqldtsOSTerceiroItemDESCRICAOPRODUTO: TStringField;
    sqldtsOSTerceiroItemQUANTIDADE: TFMTBCDField;
    sqldtsOSTerceiroItemVLRPRECOUNITARIO: TBCDField;
    sqldtsOSTerceiroItemVLRPRECOTOTAL: TBCDField;
    sqldtsOSTerceiroItemUSUARIO: TStringField;
    dsOSTerceiroLink: TDataSource;
    sqldtsOsOSELETRONICA: TBCDField;
    sqldtsOsTerceiroTIPOCONTROLE: TStringField;
    sqldtsOsVERSAOSOFT: TStringField;
    sqldtsOsDATAENTREGA: TSQLTimeStampField;
    sqldtsOsDATARETIRADA: TSQLTimeStampField;
    sqldtsOsTENSAOLOCAL: TBCDField;
    sqldtsOsLIBCHEFIA: TBCDField;
    sqldtsOsLIBCHEFIANOME: TStringField;
    sqldtsOsLIBCHEFIADATA: TSQLTimeStampField;
    sqldtsOsVLRSEGURO: TFMTBCDField;
    sqldtsTipoOsEXIGIRLIBERACAO: TBCDField;
    sqldtsDemoCatalogo: TSQLDataSet;
    dsprvDemoCatalogo: TDataSetProvider;
    sqldtsDemoCatalogoDESCRICAOEQUIPAMENTO: TStringField;
    sqldtsDemoCatalogoEMPRESAID: TBCDField;
    sqldtsDemoCatalogoPRODUTOID: TBCDField;
    sqldtsDemoCatalogoL_DESCRICAOPORTUGUES: TStringField;
    sqldtsDemoCatalogoL_PARTNUMBERID: TStringField;
    sqldtsDemoCatalogoL_OBSERVACAO: TStringField;
    sqldtsDemoCatalogoSERIEID: TStringField;
    sqldtsDemoCatalogoUSUARIO: TStringField;
    dsDemoCatalogoLink: TDataSource;
    sqldtsDemoCatalogoItem: TSQLDataSet;
    sqldtsDemoCatalogoItemITEMID: TBCDField;
    sqldtsDemoCatalogoItemEMPRESAID: TBCDField;
    sqldtsDemoCatalogoItemPRODUTOID: TBCDField;
    sqldtsDemoCatalogoItemL_DESCRICAOPORTUGUES: TStringField;
    sqldtsDemoCatalogoItemL_PARTNUMBERID: TStringField;
    sqldtsDemoCatalogoItemL_OBSERVACAO: TStringField;
    sqldtsDemoCatalogoItemSERIEID: TStringField;
    sqldtsDemoCatalogoItemUSUARIO: TStringField;
    sqldtsDemoCatalogoDEMOCATALOGOID: TBCDField;
    sqldtsDemoCatalogoItemDEMOCATALOGOID: TBCDField;
    sqldtsOSDemo: TSQLDataSet;
    sqldtsOSDemoOSID: TStringField;
    sqldtsOSDemoITEMID: TBCDField;
    sqldtsOSDemoDEMOCATALOGOID: TBCDField;
    sqldtsOSDemoEMPRESAID: TBCDField;
    sqldtsOSDemoPRODUTOID: TBCDField;
    sqldtsOSDemoSERIEID: TStringField;
    sqldtsOSDemoL_DESCRICAODEMOCATALOGO: TStringField;
    sqldtsOSDemoL_DESCRICAOPORTUGUES: TStringField;
    sqldtsOSDemoL_PARTNUMBERID: TStringField;
    sqldtsOSDemoL_OBSERVACAO: TStringField;
    sqldtsOSDemoUSUARIO: TStringField;
    sqldtsOsRESPRECEBIMENTO: TStringField;
    sqldtsOsOBSDEMO1: TStringField;
    sqldtsOsOBSDEMO2: TStringField;
    cdsOFFOSOSID: TStringField;
    cdsOFFOSFILIALID: TBCDField;
    cdsOFFOSL_NOMEFANTASIAFILIAL: TStringField;
    cdsOFFOSTIPOOSID: TStringField;
    cdsOFFOSL_DESCRICAOTIPOOS: TStringField;
    cdsOFFOSTIPOATENDIMENTO: TStringField;
    cdsOFFOSOSCORRELACAOID: TStringField;
    cdsOFFOSLOCALIZACAOOSID: TBCDField;
    cdsOFFOSL_LOCALIZACAOOS: TStringField;
    cdsOFFOSDATAABERTURA: TSQLTimeStampField;
    cdsOFFOSDATAVALIDADE: TSQLTimeStampField;
    cdsOFFOSDATACONCLUSAO: TSQLTimeStampField;
    cdsOFFOSOSIMPRESSA: TBCDField;
    cdsOFFOSOSELETRONICA: TBCDField;
    cdsOFFOSOSOFFLINE: TBCDField;
    cdsOFFOSOSOFFLINEUSUARIO: TStringField;
    cdsOFFOSDATAFECHAMENTO: TSQLTimeStampField;
    cdsOFFOSDATAENTRLABORATORIO: TSQLTimeStampField;
    cdsOFFOSDATASAIDALABORATORIO: TSQLTimeStampField;
    cdsOFFOSTIPOASSIST: TStringField;
    cdsOFFOSSTATUS: TStringField;
    cdsOFFOSSERIEID: TStringField;
    cdsOFFOSMODELOID: TStringField;
    cdsOFFOSNUMCORTES: TBCDField;
    cdsOFFOSVERSAOSOFT: TStringField;
    cdsOFFOSL_VERSAOSOFT: TStringField;
    cdsOFFOSL_GRUPOID: TBCDField;
    cdsOFFOSL_SIGLAGRUPO: TStringField;
    cdsOFFOSCLIENTEID: TBCDField;
    cdsOFFOSL_NOMECLIENTE: TStringField;
    cdsOFFOSL_TELEFONE: TStringField;
    cdsOFFOSL_FAX: TStringField;
    cdsOFFOSL_PASTA: TStringField;
    cdsOFFOSL_INSCRMUNICIPAL: TStringField;
    cdsOFFOSL_INSCRESTADUAL: TStringField;
    cdsOFFOSL_CPFCNPJ: TStringField;
    cdsOFFOSSOLICITANTE: TStringField;
    cdsOFFOSSETOR: TStringField;
    cdsOFFOSSERVICO: TStringField;
    cdsOFFOSOBSSERVICO: TStringField;
    cdsOFFOSTECNICOID: TBCDField;
    cdsOFFOSL_NOMETECNICO: TStringField;
    cdsOFFOSDATAHORACHEGADA: TSQLTimeStampField;
    cdsOFFOSDATAHORASAIDA: TSQLTimeStampField;
    cdsOFFOSRESPRECEBIMENTO: TStringField;
    cdsOFFOSOBSDEMO1: TStringField;
    cdsOFFOSOBSDEMO2: TStringField;
    cdsOFFOSORCAMENTOID: TStringField;
    cdsOFFOSLIBCHEFIADATA: TSQLTimeStampField;
    cdsOFFOSLIBCHEFIANOME: TStringField;
    cdsOFFOSLIBCHEFIA: TBCDField;
    cdsOFFOSTENSAOLOCAL: TBCDField;
    cdsOFFOSDATARETIRADA: TSQLTimeStampField;
    cdsOFFOSDATAENTREGA: TSQLTimeStampField;
    cdsOFFOSVLRORCADO: TBCDField;
    cdsOFFOSMOEDAORCADA: TStringField;
    cdsOFFOSCONDPAGTO: TStringField;
    cdsOFFOSVLRPAGTOANTEC: TBCDField;
    cdsOFFOSCEPID: TBCDField;
    cdsOFFOSNUMERO: TStringField;
    cdsOFFOSCOMPLEMENTO: TStringField;
    cdsOFFOSENDERECO: TStringField;
    cdsOFFOSBAIRRO: TStringField;
    cdsOFFOSCIDADE: TStringField;
    cdsOFFOSSIGLAUFID: TStringField;
    cdsOFFOSORCAMENTOREFID: TBCDField;
    cdsOFFOSCONDPAGTOID: TBCDField;
    cdsOFFOSL_DESCR_CONDPAGTO: TStringField;
    cdsOFFOSVLRDESCONTO: TFMTBCDField;
    cdsOFFOSPORCDESCONTO: TFMTBCDField;
    cdsOFFOSNOMELIBDESCONTO: TStringField;
    cdsOFFOSVLRMAODEOBRA: TFMTBCDField;
    cdsOFFOSVLRDESLOCAMENTO: TFMTBCDField;
    cdsOFFOSVLRFRETE: TFMTBCDField;
    cdsOFFOSVLRPECA: TFMTBCDField;
    cdsOFFOSVLRSEGURO: TFMTBCDField;
    cdsOFFOSVLRTOTALMAODEOBRA: TFMTBCDField;
    cdsOFFOSVLRTOTALDESLOCAMENTO: TFMTBCDField;
    cdsOFFOSVLRTOTALORCCOMP: TFMTBCDField;
    cdsOFFOSVLRTOTALFRETE: TFMTBCDField;
    cdsOFFOSVLRTOTALPECA: TFMTBCDField;
    cdsOFFOSVLRTOTALOUTRO: TFMTBCDField;
    cdsOFFOSVLRTOTALPAGAR: TFMTBCDField;
    cdsOFFOSUSUARIO: TStringField;
    cdsOFFOSsqldtsOSDemo: TDataSetField;
    cdsOFFOSsqldtsOSOcOperacional: TDataSetField;
    cdsOFFOSsqldtsOSMaterial: TDataSetField;
    cdsOFFOSsqldtsOsPeca: TDataSetField;
    cdsOFFOSsqldtsOsDefeito: TDataSetField;
    cdsOFFOSsqldtsOsHora: TDataSetField;
    sqldtsAparelhoCEPMDID: TBCDField;
    sqldtsAparelhoNUMEROMD: TStringField;
    sqldtsAparelhoCOMPLEMENTOMD: TStringField;
    sqldtsAparelhoENDERECOMD: TStringField;
    sqldtsAparelhoBAIRROMD: TStringField;
    sqldtsAparelhoCIDADEMD: TStringField;
    sqldtsAparelhoSIGLAUFMDID: TStringField;
    sqldtsAparelhoTELEFONEMD: TStringField;
    sqldtsAparelhoCONTATOMD: TStringField;
    sqldtsAparelhoNOMEDEPTOMD: TStringField;
    sqldtsAparelhoEMAILMD: TStringField;
    sqldtsAparelhoCONTATOMD2: TStringField;
    sqldtsAparelhoCONTATOMD3: TStringField;
  private
    { Private declarations }
    FSrvAppGSI : ISrvAppGSI;
    FSQLcnn: integer;
    function UltContratoOS( sqlTmp : TSQLQuery; SerieID, ModeloID: String) : OleVariant;
  protected
    class procedure UpdateRegistry(Register: Boolean; const ClassID, ProgID: string); override;
    function Get_dmSrvAppGSI: ISrvAppGSI; safecall;
    procedure Set_dmSrvAppGSI(const Value: ISrvAppGSI); safecall;
    function Get_SQLcnn: Integer; safecall;
    procedure Set_SQLcnn(Value: Integer); safecall;
    function ISQL_OS: OleVariant; safecall;
    procedure IAtualizaTubo(const Serie, Modelo, SerieTubo,
      ModeloTubo: WideString; ClienteId: Integer; const Data: WideString;
      Cortes: Double); safecall;
    procedure IAtualizaUltimaOS(const FilialId: WideString); safecall;
    procedure IApagaDespesas(const OsId: WideString; TecnicoId,
      OperacaoId: Integer; VlrDespesa: Single; DataDoc: TDateTime);
      safecall;
    procedure IAtualizaContrato(const SerieId, ModeloId, TipoContrato,
      Operacao: WideString; EmpresaId: Integer); safecall;
    procedure IApagarPecaOS(const EmpresaID, ProdutoID,
      EstoqueUtilizado: WideString; Quantidade: Integer); safecall;
    procedure IAtualPecaOS(const EmpresaID, ProdutoID,
      EstoqueUtilizado: WideString; Quantidade: Integer); safecall;
    procedure IFecharOS(const OSId: WideString); safecall;
    function IOSSincronismo(const OSId, UsuarioOFFLine: WideString): OleVariant;
      safecall;
    procedure IOSSincronismoOK(const OSID, UsuarioOffLine: WideString); safecall;
    procedure ITotalOS(const OSID: WideString); safecall;
  public
    { Public declarations }
  end;

var FSrvAppOS : TComponentFactory;

implementation

uses FuncoesServidor, FuncoesDsi, DateUtils, u_rmSrvAppRD;

{$R *.DFM}

class procedure TSrvAppOS.UpdateRegistry(Register: Boolean; const ClassID, ProgID: string);
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

function TSrvAppOS.Get_dmSrvAppGSI: ISrvAppGSI;
begin
 Result := FSrvAppGSI;
end;

procedure TSrvAppOS.Set_dmSrvAppGSI(const Value: ISrvAppGSI);
begin
 FSrvAppGSI := Value;
end;

function TSrvAppOS.ISQL_OS: OleVariant;
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

function TSrvAppOS.Get_SQLcnn: Integer;
begin
  Result := FSQLcnn;
end;

procedure TSrvAppOS.Set_SQLcnn(Value: Integer);
var i: integer;
begin
  FSQLcnn := Value;
  for i:=0 to ComponentCount-1 do
     if Components[i] is TSQLDataSet then
        TSQLDataSet(Components[i]).SQLConnection := TSQLConnection(FSQLcnn);
end;

procedure TSrvAppOS.IAtualizaTubo(const Serie, Modelo, SerieTubo,
  ModeloTubo: WideString; ClienteId: Integer; const Data: WideString;
  Cortes: Double);
var sqlComponente, sqlInsert : TSQLQuery;
begin
 sqlComponente    := TSQLQuery.Create(nil);
 sqlComponente.SQLConnection := TSQLConnection(FSQLcnn);

 sqlInsert        := TSQLQuery.Create(nil);
 sqlInsert.SQLConnection := TSQLConnection(FSQLcnn);

 try
  try //Except

    with sqlComponente do
    begin
     // Verificando existência do Componente
     Close;
     SQL.Clear;
     SQL.Add('SELECT OS_APARELHO.SERIEID,');
     SQL.Add('       OS_APARELHO.MODELOID');
     SQL.Add('  FROM OS_APARELHO');
     SQL.Add(' WHERE OS_APARELHO.SERIEID = '+ QuotedStr( SERIETUBO ) );
     SQL.Add('       AND OS_APARELHO.MODELOID = '+ QuotedStr( MODELOTUBO ) );
     Prepared := True;
     Open;
    end;
    { Iniciando a Transacao }
    TSQLConnection(FSQLcnn).StartTransaction(TD);

    if sqlComponente.IsEmpty then
       begin
        with sqlInsert do
        begin
         //Inserindo Aparelho
         Close;
         SQL.Clear;
         SQL.Add('INSERT INTO OS_APARELHO');
         SQL.Add('          ( SERIEID,');
         SQL.Add('            MODELOID,');
         SQL.Add('            CLIENTEID,');
         SQL.Add('            SERIEAPARELHOID,');
         SQL.Add('            MODELOAPARELHOID,');
         SQL.Add('            DATAINSTALACAO ');
         SQL.Add('          ) ');
         SQL.Add(' VALUES ( '+QuotedStr( SERIETUBO )+',' );
         SQL.Add('           '+QuotedStr( MODELOTUBO )+',' );
         SQL.Add('           '+IntToStr( ClienteId ) + ',' );
         SQL.Add('           '+QuotedStr( SERIE )+',' );
         SQL.Add('           '+QuotedStr( MODELO )+',' );
         SQL.Add('           '+QuotedStr( data ) );
         SQL.Add('        )');
         Prepared := True;
         ExecSQL;
        end;
       end;

     { Efetivar a transação no Banco de Dados }
     TSQLConnection(FSQLcnn).Commit(TD);

  except
   on E : Exception do
    begin
     if TSQLConnection(FSQLcnn).InTransaction then
        TSQLConnection(FSQLcnn).Rollback(TD);
     raise Exception.Create(E.Message);
    end;
  end;
 finally
  FreeAndNil( sqlComponente );
  FreeAndNil( sqlInsert );
 end;
end;

procedure TSrvAppOS.IAtualizaUltimaOS(const FilialId: WideString);
var sqlFilial : TSQLQuery;
begin
 sqlFilial               := TSQLQuery.Create(nil);
 sqlFilial.SQLConnection := TSQLConnection( FSQLcnn );

 try
  { Iniciando a Transacao }
  TSQLConnection(FSQLcnn).StartTransaction(TD);

  with sqlFilial do
  begin
   Close;
   SQL.Add('UPDATE EF_FILIAL ');
   SQL.Add('SET ULTIMAOS = ULTIMAOS + 1');
   SQL.Add('WHERE FILIALID = '+ FilialId ) ;
   ExecSQL;
  end;
  { Efetivar a transação no Banco de Dados }
  TSQLConnection(FSQLcnn).Commit(TD);
 finally
   FreeAndNil( sqlFilial );
 end;
end;

procedure TSrvAppOS.IApagaDespesas(const OsId: WideString; TecnicoId,
  OperacaoId: Integer; VlrDespesa: Single; DataDoc: TDateTime);
var sqlDelete,sqlDespesa : TSQLQuery;
begin
 sqlDelete                := TSQLQuery.Create( nil );
 sqlDelete.SQLConnection  := TSQLConnection( FSQLcnn );

 sqlDespesa               := TSQLQuery.Create( nil );
 sqlDespesa.SQLConnection := TSQLConnection( FSQLcnn );

 try
  try
   { Iniciando a Transacao }
   TSQLConnection(FSQLcnn).StartTransaction(TD);

   with sqlDespesa do
   begin
    SQL.Clear;
    SQL.Add('SELECT RD_RDVITEM.RDVID,RD_RDVITEM.DATAFECHAMENTO');
    SQL.Add('  FROM RD_RDVITEM');
    SQL.Add(' WHERE RD_RDVITEM.OSID = '+ QuotedStr( OsId ) );
    SQL.Add('       AND RD_RDVITEM.OPERACAOID = '+ IntToStr( OperacaoId ) );
    SQL.Add('       AND RD_RDVITEM.DATADOC = '+ QuotedStr( DateToStr( DataDoc ) ) );
    SQL.Add('       AND RD_RDVITEM.VLRDESPESA = '+ SubstituiString( FloatToStr( VlrDespesa ),',','.') );
    Prepared := True;
    Open;
   end;

   if not sqlDespesa.IsEmpty then
      begin
       if sqlDespesa.FieldByName('DATAFECHAMENTO').IsNull then
          begin
           with sqlDelete do
           begin
            Close;
            SQL.Clear;
            SQL.Add('DELETE FROM ');
            SQL.Add('       RD_RDVITEM ');
            SQL.Add(' WHERE RD_RDVITEM.OSID = ' + QuotedStr( OsId ) );
            SQL.Add('       AND RD_RDVITEM.TECNICOID = '+ IntToStr( TecnicoId ) );
            SQL.Add('       AND RD_RDVITEM.OPERACAOID = '+ IntToStr( OperacaoId ) );
            SQL.Add('       AND RD_RDVITEM.DATADOC = '+ QuotedStr( DateToStr( DataDoc ) ) );
            SQL.Add('       AND RD_RDVITEM.VLRDESPESA = '+ SubstituiString( FloatToStr( VlrDespesa ),',','.') );
            Prepared := True;
            ExecSQL;
           end;
          end
       else raise Exception.Create('Não é possível excluir esta Despesa, pois a mesma já foi Fechada');
      end
   else
      begin
       with sqlDespesa do
       begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT RD_RDVESPELHO.RDVID');
        SQL.Add('  FROM RD_RDVESPELHO');
        SQL.Add(' WHERE RD_RDVESPELHO.OSID = '+ QuotedStr( OsId ) );
        SQL.Add('       AND RD_RDVESPELHO.TECNICOID = '+ IntToStr( TecnicoId ) );
        SQL.Add('       AND RD_RDVESPELHO.OPERACAOID = '+ IntToStr( OperacaoId ) );
        SQL.Add('       AND RD_RDVESPELHO.DATADOCID = '+ QuotedStr( DateToStr( DataDoc ) ) );
        SQL.Add('       AND RD_RDVESPELHO.VLRDESPESA = '+ SubstituiString( FloatToStr( VlrDespesa ),',','.') );
        Prepared := True;
        Open;
       end;

       if not sqlDespesa.IsEmpty then
          begin
           with sqlDelete do
           begin
            Close;
            SQL.Clear;
            SQL.Add('DELETE FROM ');
            SQL.Add('       RD_RDVESPELHO');
            SQL.Add(' WHERE RD_RDVESPELHO.OSID = ' + QuotedStr( OsId ) );
            SQL.Add('       AND RD_RDVESPELHO.TECNICOID = '+ IntToStr( TecnicoId ) );
            SQL.Add('       AND RD_RDVESPELHO.OPERACAOID = '+ IntToStr( OperacaoId ) );
            SQL.Add('       AND RD_RDVESPELHO.DATADOCID = '+ QuotedStr( DateToStr( DataDoc ) ) );
            SQL.Add('       AND RD_RDVESPELHO.VLRDESPESA = '+ SubstituiString( FloatToStr( VlrDespesa ),',','.') );
            Prepared := True;
            ExecSQL;
           end;
          end;
      end;

   sqlDespesa.Close;
   sqlDelete.Close;
   { Efetivar a transação no Banco de Dados }
   TSQLConnection(FSQLcnn).Commit(TD);
  except
  On E : Exception do
    begin
     if TSQLConnection(FSQLcnn).InTransaction then
        TSQLConnection(FSQLcnn).Rollback(TD);
     raise Exception.Create(E.Message);
    end;
  end;
  finally
    FreeAndNil( sqlDespesa );
    FreeAndNil( sqlDelete );
  end;
end;


procedure TSrvAppOS.IAtualizaContrato(const SerieId, ModeloId,
  TipoContrato, Operacao: WideString; EmpresaId: Integer);
var sqlUpd, sqlContr : TSQLQuery;
begin
 sqlUpd := TSQLQuery.Create(nil);
 sqlUpd.SQLConnection := TSQLConnection( FSQLcnn );

 sqlContr := TSQLQuery.Create(nil);
 sqlContr.SQLConnection := TSQLConnection(FSQLcnn);

 try
  try //Except
   sqlContr.SQL.Clear;
   sqlContr.SQL.Add('SELECT');
   sqlContr.SQL.Add('  CM_CONTRATOAPAR.EMPRESAID, CM_CONTRATOAPAR.CONTRATOID, CM_CONTRATOAPAR.ANOID, CM_CONTRATOAPAR.SERIEID,');
   sqlContr.SQL.Add('  CM_CONTRATOAPAR.MODELOID, CM_CONTRATOAPAR.TIPOCONTRATOID,  CM_CONTRATOAPAR.VLRMENSAL,  CM_CONTRATOAPAR.HORASESPERA,');
   sqlContr.SQL.Add('  CM_CONTRATOAPAR.QTDPREVENTIVAS,  CM_CONTRATOAPAR.QTDPREVENTIVASUTIL,  CM_CONTRATOAPAR.BLOQUEARPREVENTIVAS,');
   sqlContr.SQL.Add('  CM_CONTRATOAPAR.QTDCORRETIVAS,  CM_CONTRATOAPAR.QTDCORRETIVASUTIL,  CM_CONTRATOAPAR.BLOQUEARCORRETIVAS,');
   sqlContr.SQL.Add('  CM_CONTRATOAPAR.QTDPECAS,  CM_CONTRATOAPAR.QTDPECASUTIL,  CM_CONTRATO.CANCELADO,  CM_CONTRATOANO.PERIODOCONCLUIDO');
   sqlContr.SQL.Add('  FROM');
   sqlContr.SQL.Add('  CM_CONTRATO CM_CONTRATO,');
   sqlContr.SQL.Add('  CM_CONTRATOANO CM_CONTRATOANO,');
   sqlContr.SQL.Add('  CM_CONTRATOAPAR CM_CONTRATOAPAR');
   sqlContr.SQL.Add(' WHERE');
   sqlContr.SQL.Add('  CM_CONTRATO.EMPRESAID = CM_CONTRATOANO.EMPRESAID');
   sqlContr.SQL.Add('  AND CM_CONTRATO.CONTRATOID = CM_CONTRATOANO.CONTRATOID');
   sqlContr.SQL.Add('  AND CM_CONTRATO.EMPRESAID = CM_CONTRATOAPAR.EMPRESAID');
   sqlContr.SQL.Add('  AND CM_CONTRATO.CONTRATOID = CM_CONTRATOAPAR.CONTRATOID');
   sqlContr.SQL.Add('  AND CM_CONTRATO.CANCELADO = 0');
   sqlContr.SQL.Add('  AND CM_CONTRATOANO.ANOID = CM_CONTRATOAPAR.ANOID');
   sqlContr.SQL.Add('  AND CM_CONTRATOAPAR.SERIEID = ' + QuotedStr( SERIEID ) );
   sqlContr.SQL.Add('  AND CM_CONTRATOAPAR.MODELOID = ' + QuotedStr( MODELOID ) );
   sqlContr.SQL.Add('  AND CM_CONTRATOANO.PERIODOCONCLUIDO = 0');

   {Rotina deverá ser revisado, quando finalizar o contrato, o período
   concluído deverá estár 1 para não retornar mais de uma linha }
   //   sqlContr.SQL.Add('  AND CM_CONTRATOANO.ANOID >= '+ IntToStr( YearOf( Date ) ) );
   sqlContr.SQL.Add(' ORDER BY CM_CONTRATOAPAR.ANOID DESC');
   sqlContr.Prepared := True;
   sqlContr.Open;

   if sqlContr.IsEmpty then
      Exit;

   { Iniciando a Transação }
   TSQLConnection( FSQLcnn ).StartTransaction(TD);

   with sqlUpd do
   begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE CM_CONTRATOAPAR');
    SQL.Add('SET ' + TIPOCONTRATO + ' = ' + TIPOCONTRATO + Operacao + ' 1 ' );
    SQL.Add('WHERE ' );
    SQL.Add('CM_CONTRATOAPAR.EMPRESAID = '+ IntToStr( EmpresaId ) );
    SQL.Add('AND CM_CONTRATOAPAR.CONTRATOID   = ' +sqlContr.FieldByName('CONTRATOID').AsString );
    SQL.Add('AND CM_CONTRATOAPAR.ANOID    = ' + sqlContr.FieldByName('ANOID').AsString );
    SQL.Add('AND CM_CONTRATOAPAR.SERIEID  = ' + QuotedStr( SERIEID ) );
    SQL.Add('AND CM_CONTRATOAPAR.MODELOID = ' + QuotedStr( MODELOID ) );
    Prepared := True;
    ExecSQL;

    { Efetivar a transação no Banco de Dados }
    TSQLConnection( FSQLcnn ).Commit(TD);
   end;

  except
   on E : Exception do
    begin
     if TSQLConnection(FSQLcnn).InTransaction then
        TSQLConnection(FSQLcnn).Rollback(TD);
     raise Exception.Create(E.Message);
    end;
  end;

 finally
  FreeAndNil( sqlUpd );
  FreeAndNil( sqlContr );
 end;
end;

procedure TSrvAppOS.IApagarPecaOS(const EmpresaID, ProdutoID,
  EstoqueUtilizado: WideString; Quantidade: Integer);
var sqlUpd : TSQLQuery;
    TipoEstoque : String;
begin
 sqlUpd := TSQLQuery.Create(nil);
 sqlUpd.SQLConnection := TSQLConnection( FSQLcnn );

 try
  { Iniciando a Transação }
  TSQLConnection( FSQLcnn ).StartTransaction(TD);

  sqlUpd.Close;
  sqlUpd.SQL.Clear;
  sqlUpd.SQL.Add('UPDATE EF_PRODUTO SET');

  if EstoqueUtilizado = '' then
     TipoEstoque := 'E'
  else
     TipoEstoque := EstoqueUtilizado;

  case TipoEstoque[1] of
  'N' : begin
         sqlUpd.SQL.Add(' ESTOQUENOVO     = NVL( ESTOQUENOVO, 0 )     + ' + SubstituiString( FloatToStr( Quantidade ), ',', '.' ) + ',' );
         sqlUpd.SQL.Add(' ESTOQUEEMPENHO  = NVL( ESTOQUEEMPENHO, 0 )  - ' + SubstituiString( FloatToStr( Quantidade ), ',', '.' ) + ',' );
        end;
  'R' : begin
         sqlUpd.SQL.Add(' ESTOQUEREVISADO = NVL( ESTOQUEREVISADO, 0 ) + ' + SubstituiString( FloatToStr( Quantidade ), ',', '.' ) + ',' );
         sqlUpd.SQL.Add(' ESTOQUEEMPENHO  = NVL( ESTOQUEEMPENHO, 0 )  - ' + SubstituiString( FloatToStr( Quantidade ), ',', '.' ) + ',' );
         end;
  'E' : begin
         sqlUpd.SQL.Add(' ESTOQUEREVISADO = NVL( ESTOQUEREVISADO, 0 ) + ' + SubstituiString( FloatToStr( Quantidade ), ',', '.' ) + ',' );
         sqlUpd.SQL.Add(' ESTOQUEEMPENHO  = NVL( ESTOQUEEMPENHO, 0 )  - ' + SubstituiString( FloatToStr( Quantidade ), ',', '.' ) + ',' );
        end;
  'V' : begin
         sqlUpd.SQL.Add(' ESTOQUEREVISADO = NVL( ESTOQUEREVISADO, 0 ) + ' + SubstituiString( FloatToStr( Quantidade ), ',', '.' ) + ',' );
         sqlUpd.SQL.Add(' ESTOQUEVALE     = NVL( ESTOQUEVALE, 0 )     - ' + SubstituiString( FloatToStr( Quantidade ), ',', '.' ) + ',' );
        end;
  end;

  // Atualizar o saldo total
  sqlUpd.SQL.Add(' ESTOQUEFISICO   = NVL( ESTOQUEFISICO, 0 ) + ' + SubstituiString( FloatToStr( Quantidade ), ',', '.' ) );

  sqlUpd.SQL.Add('WHERE ');
  sqlUpd.SQL.Add(' EF_PRODUTO.EMPRESAID = ' + EmpresaID );
  sqlUpd.SQL.Add(' AND EF_PRODUTO.PRODUTOID = ' + ProdutoID );
  sqlUpd.Prepared := True;
  sqlUpd.ExecSQL;

  { Efetivar a transação no Banco de Dados }
  TSQLConnection( FSQLcnn ).Commit(TD);
 finally
  FreeAndNil( sqlUpd );
 end;

end;

procedure TSrvAppOS.IAtualPecaOS(const EmpresaID, ProdutoID,
  EstoqueUtilizado: WideString; Quantidade: Integer);
var sqlUpd : TSQLQuery;
    TipoEstoque : String;
begin
 sqlUpd := TSQLQuery.Create(nil);
 sqlUpd.SQLConnection := TSQLConnection( FSQLcnn );

 try
  { Iniciando a Transação }
  TSQLConnection( FSQLcnn ).StartTransaction(TD);

  sqlUpd.Close;
  sqlUpd.SQL.Clear;
  sqlUpd.SQL.Add('UPDATE EF_PRODUTO SET');

  if EstoqueUtilizado = '' then
     TipoEstoque := 'N'
  else
     TipoEstoque := EstoqueUtilizado;

  case TipoEstoque[1] of
  'N' :  begin
          sqlUpd.SQL.Add(' ESTOQUENOVO     = NVL( ESTOQUENOVO, 0 )    - ' + SubstituiString( FloatToStr( Quantidade ), ',', '.' ) + ',' );
          sqlUpd.SQL.Add(' ESTOQUEEMPENHO  = NVL( ESTOQUEEMPENHO, 0 ) + ' + SubstituiString( FloatToStr( Quantidade ), ',', '.' ) + ',' );
          sqlUpd.SQL.Add(' ESTOQUEFISICO   = NVL( ESTOQUEFISICO, 0 )  - ' + SubstituiString( FloatToStr( Quantidade ), ',', '.' ) );
         end;
  'R' :  begin
          sqlUpd.SQL.Add(' ESTOQUEREVISADO = NVL( ESTOQUEREVISADO, 0 ) - ' + SubstituiString( FloatToStr( Quantidade ), ',', '.' ) + ',' );
          sqlUpd.SQL.Add(' ESTOQUEEMPENHO  = NVL( ESTOQUEEMPENHO, 0 ) + ' + SubstituiString( FloatToStr( Quantidade ), ',', '.' ) + ',' );
          sqlUpd.SQL.Add(' ESTOQUEFISICO   = NVL( ESTOQUEFISICO, 0 ) - ' + SubstituiString( FloatToStr( Quantidade ), ',', '.' ) );
         end;
  end;

  // Atualizar o saldo total
  // sqlUpd.SQL.Add(' ESTOQUETOTAL  = NVL( ESTOQUETOTAL, 0 ) + ' + SubstituiString( FloatToStr( Quantidade ), ',', '.' ) + ',' );

  sqlUpd.SQL.Add('WHERE ');
  sqlUpd.SQL.Add(' EF_PRODUTO.EMPRESAID = ' + EmpresaID );
  sqlUpd.SQL.Add(' AND EF_PRODUTO.PRODUTOID = ' + ProdutoID );
  sqlUpd.Prepared := True;
  sqlUpd.ExecSQL;

  { Efetivar a transação no Banco de Dados }
  TSQLConnection( FSQLcnn ).Commit(TD);
 finally
  FreeAndNil( sqlUpd );
 end;
end;

procedure TSrvAppOS.IFecharOS(const OSId: WideString);
var sqlGeral, sqlUpd : TSQLQuery;

 // Verificar dados da O.S.
 procedure VerifOS;
 begin
  sqlGeral.Close;
  sqlGeral.SQL.Clear;
  sqlGeral.SQL.Add('SELECT OS_OS.OSID,');
  sqlGeral.SQL.Add('       OS_OS.TIPOOSID,');
  sqlGeral.SQL.Add('       OS_OS.FILIALID,');
  sqlGeral.SQL.Add('       OS_OS.TIPOASSIST,');
  sqlGeral.SQL.Add('       OS_OS.STATUS,');
  sqlGeral.SQL.Add('       OS_OS.SERIEID,');
  sqlGeral.SQL.Add('       OS_OS.DATASAIDALABORATORIO,');
  sqlGeral.SQL.Add('       OS_TIPOOS.EXIGIRSERIEOSFECH,');
  sqlGeral.SQL.Add('       OS_LOCALIZACAOOS.FECHAROS,');
  sqlGeral.SQL.Add('       OS_LOCALIZACAOOS.DESCRICAO');
  sqlGeral.SQL.Add('  FROM OS_OS,');
  sqlGeral.SQL.Add('       OS_TIPOOS, ');
  sqlGeral.SQL.Add('       OS_LOCALIZACAOOS ');
  sqlGeral.SQL.Add(' WHERE ');
  sqlGeral.SQL.Add('    OS_TIPOOS.TIPOOSID(+) = OS_OS.TIPOOSID');
  sqlGeral.SQL.Add('    AND OS_OS.LOCALIZACAOOSID = OS_LOCALIZACAOOS.LOCALIZACAOOSID(+)');
  sqlGeral.SQL.Add('    AND OSID = ' + QuotedStr( OSID ) );
  sqlGeral.Prepared := True;
  sqlGeral.Open;

  if sqlGeral.IsEmpty then
     raise Exception.Create('Não é permitido fechar a O.S. O.S não localizada ou não existe');

  if sqlGeral.FieldByName('FECHAROS').AsInteger = 0 then
     raise Exception.Create('O.S. se encontra localizada com : ' + sqlGeral.FieldByName('DESCRICAO').AsString +
                            ',não é permitido fechar O.S. com esta localização!');

  if sqlGeral.FieldByName('TIPOASSIST').AsString = 'I' then
     if sqlGeral.FieldByName('DATASAIDALABORATORIO').AsString = '' then
        raise exception.Create('Antes de fechar esta OS, verificar pendência de ( Aparelho/Componente ) com o Depto de Expedição, pois o mesmo esta em nosso poder!' );

  if sqlGeral.FieldByName('STATUS').AsString <> 'A' then
     raise Exception.Create('O.S. já está fechada / bloqueada !');

  // update os_tipoos set os_tipoos.exigirserieosfech = 1 where tipoosid in ['I','K','P','L']
  if sqlGeral.FieldByName('EXIGIRSERIEOSFECH').AsInteger = 1 then
     begin
      if ( sqlGeral.FieldByName('SERIEID').AsString = '' ) then
         raise Exception.Create('O.S. não pode ser fechada sem série!' );
     end;
 end;

 // Verificar peças em empenho
 procedure VerifEmpenho;
 begin
  sqlGeral.Close;
  sqlGeral.SQL.Clear;
  sqlGeral.SQL.Add('SELECT OSID, UTILIZADO');
  sqlGeral.SQL.Add('  FROM OS_OSPECA');
  sqlGeral.SQL.Add(' WHERE NVL(UTILIZADO, 0) = 0');
  sqlGeral.SQL.Add('  AND OSID = ' + QuotedStr( OSID ) );
  sqlGeral.Prepared := True;
  sqlGeral.Open;

  if not sqlGeral.IsEmpty then
     raise Exception.Create('Não é permitido fechar a O.S, pois existem empenhos com pendências de faturamento!');
 end;

 // Verificar RDV pendente de liberação
 procedure VerifRDV;
 begin
  sqlGeral.Close;
  sqlGeral.SQL.Clear;
  sqlGeral.SQL.Add('SELECT ADIANTAMENTOID');
  sqlGeral.SQL.Add('  FROM RD_ADIANTAMENTO');
  sqlGeral.SQL.Add(' WHERE NVL(LIBERADO, 0) = 0');
  sqlGeral.SQL.Add('  AND OSID = ' + QuotedStr( OSID ) );
  sqlGeral.Prepared := True;
  sqlGeral.Open;

  if not sqlGeral.IsEmpty then
     raise Exception.Create('Não é permitido fechar a O.S, pois existem (DESPESAS/ADIANTAMENTOS) com pendências de liberação!');
 end;

 procedure VerifHoras;
 begin
  sqlGeral.Close;
  sqlGeral.SQL.Clear;
  sqlGeral.SQL.Add('SELECT BANCOHORAID');
  sqlGeral.SQL.Add('  FROM RD_BANCOHORA');
  sqlGeral.SQL.Add(' WHERE NVL(LIBERADO, 0) = 0');
  sqlGeral.SQL.Add('  AND OSID = ' + QuotedStr( OSID ) );
  sqlGeral.Prepared := True;
  sqlGeral.Open;

  if not sqlGeral.IsEmpty then
     raise Exception.Create('Não é permitido fechar a O.S, pois existem (BANCO DE HORAS) com pendências de liberação!');
 end;

 procedure VerifRemessaTeste;
 begin
  // Verificar dados da O.S.
  sqlGeral.Close;
  sqlGeral.SQL.Clear;
  sqlGeral.SQL.Add('SELECT EF_NFS.EMPRESAID,');
  sqlGeral.SQL.Add('       EF_NFS.DATAEMISSAOID,');
  sqlGeral.SQL.Add('       EF_NFS.NFSID ');
  sqlGeral.SQL.Add('   FROM EF_NFS EF_NFS, EF_NFSITEM EF_NFSITEM, EF_NATUREZAOP EF_NATUREZAOP');
  sqlGeral.SQL.Add(' WHERE EF_NFS.EMPRESAID = EF_NFSITEM.EMPRESAID');
  sqlGeral.SQL.Add('   AND EF_NFS.NFSID = EF_NFSITEM.NFSID');
  sqlGeral.SQL.Add('   AND EF_NFS.DATAEMISSAOID = EF_NFSITEM.DATAEMISSAOID');
  sqlGeral.SQL.Add('   AND EF_NATUREZAOP.NATUREZAOPID(+) = EF_NFS.NATUREZAOPID');
  sqlGeral.SQL.Add('   AND ( EF_NATUREZAOP.MOVIMENTOESTOQUE = ''D'' OR EF_NATUREZAOP.MOVIMENTOESTOQUE = ''E'' )');
  sqlGeral.SQL.Add('   AND ( EF_NFSITEM.RETORNO = ''CR'' OR EF_NFSITEM.RETORNO = ''RP'' )');
  sqlGeral.SQL.Add('   AND EF_NFS.OSID = ' + QuotedStr( OSID ) );
  sqlGeral.Prepared := True;
  sqlGeral.Open;

  if not sqlGeral.IsEmpty then
     raise Exception.Create('Não é permitido fechar a O.S. Há peças de envio de remessa para testes no cliente');
  sqlGeral.Close;
 end;

 procedure AtualOS;
 begin
  sqlUpd.Close;
  sqlUpd.SQL.Clear;
  sqlUpd.SQL.Add('UPDATE OS_OS SET ' );
  sqlUpd.SQL.Add('  DATAFECHAMENTO = TO_DATE( ' +  QuotedStr( DateToStr( Date ) ) + ', ''DD/MM/YYYY'' ), ' );
  sqlUpd.SQL.Add(' STATUS = ''F''' );
  sqlUpd.SQL.Add(' WHERE ' );
  sqlUpd.SQL.Add('  OSID = ' + QuotedStr( OSID ) );
  sqlUpd.Prepared := True;
  sqlUpd.ExecSQL;
 end;

begin
 sqlGeral := TSQLQuery.Create(nil);
 sqlGeral.SQLConnection := TSQLConnection( FSQLcnn );

 sqlUpd := TSQLQuery.Create(nil);
 sqlUpd.SQLConnection := TSQLConnection( FSQLcnn );

 try
  try // Except

   { Iniciando a Transação }
   TSQLConnection( FSQLcnn ).StartTransaction(TD);

   // Verificar dados da O.S.
   VerifOS;

   // Verificar peças em empenho
   VerifEmpenho;

   // Verificar RDV pendente de liberação
   VerifRDV;

   // Verificar Horas pendente de liberação
   VerifHoras;

   // Verificar remessa teste
   VerifRemessaTeste;

   AtualOS;

   { Efetivar a transação no Banco de Dados }
   TSQLConnection( FSQLcnn ).Commit(TD);

  except
   on E : Exception do
    begin
     if TSQLConnection(FSQLcnn).InTransaction then
        TSQLConnection(FSQLcnn).Rollback(TD);
     raise Exception.Create(E.Message);
    end;
  end;

 finally
  FreeAndNil( sqlUpd );
  FreeAndNil( sqlGeral );
 end;
end;

function TSrvAppOS.IOSSincronismo(const OSId,
  UsuarioOFFLine: WideString): OleVariant;
var sqlGeral, sqlTmp, sqlUpd : TSQLQuery;
    cdsData : OleVariant;
    DadosContrato : OleVariant;
begin
 sqlGeral := TSQLQuery.Create(nil);
 sqlGeral.SQLConnection := TSQLConnection( FSQLcnn );

 sqlTmp := TSQLQuery.Create(nil);
 sqlTmp.SQLConnection := TSQLConnection( FSQLcnn );

 sqlUpd := TSQLQuery.Create(nil);
 sqlUpd.SQLConnection := TSQLConnection( FSQLcnn );

 try
  try // Except
   { Iniciando a Transação }
   TSQLConnection( FSQLcnn ).StartTransaction(TD);

   cdsOFFOS.Close;
   cdsOFFOS.CommandText := sqldtsOs.CommandText + ' AND OS_OS.OSID = ' + QuotedStr( OSID );
   cdsOFFOS.Open;

   cdsOFFAdiantamento.Close;
   cdsOFFAdiantamento.CommandText := sqldtsAdiantamento.CommandText + ' AND RD_ADIANTAMENTO.OSID = ' + QuotedStr( OSID );
   cdsOFFAdiantamento.Open;

   cdsOFFBancoHora.Close;
   cdsOFFBancoHora.CommandText := sqldtsBancoHora.CommandText + ' AND RD_BANCOHORA.OSID = ' + QuotedStr( OSID );
   cdsOFFBancoHora.Open;

   if cdsOFFOS.FieldByName('STATUS').AsString <> 'A' then
      raise Exception.Create('O.S. já está fechada / bloqueada !');

   if cdsOFFOS.FieldByName('OSOFFLINE').AsInteger = 1 then
      raise Exception.Create('O.S. já está OFFLINE para o usuário:' + cdsOFFOS.FieldByName('OSOFFLINEUSUARIO').Value );

   cdsData := VarArrayCreate([0,4],varVariant);

   DadosContrato := UltContratoOS( sqlTmp, cdsOFFOS.FieldByName('SERIEID').AsString, cdsOFFOS.FieldByName('MODELOID').AsString);

   cdsData[0] := cdsOFFOS.Data;
   cdsData[1] := cdsOFFAdiantamento.Data;
   cdsData[2] := cdsOFFBancoHora.Data;
   cdsData[3] := DadosContrato[0];
   cdsData[4] := DadosContrato[1];

   Result := cdsData;

   // Efetivar a transação no Banco de Dados
   TSQLConnection( FSQLcnn ).Commit(TD);

  except
   on E : Exception do
    begin
     if TSQLConnection(FSQLcnn).InTransaction then
        TSQLConnection(FSQLcnn).Rollback(TD);
     raise Exception.Create(E.Message);
    end;
  end;

 finally
  FreeAndNil( sqlUpd );
  FreeAndNil( sqlGeral );
  FreeAndNil( sqlTmp );
 end;
end;

function TSrvAppOS.UltContratoOS( sqlTmp : TSQLQuery; SerieID, ModeloID : String ) : OleVariant;
var NivelVenda : OleVariant;
begin
 sqlTmp.SQL.Clear;
 sqlTmp.SQL.Add('SELECT');
 sqlTmp.SQL.Add('  CM_CONTRATO.CONTRATOID,');
 sqlTmp.SQL.Add('  CM_CONTRATO.CONTRATOANTIGOID,');
 sqlTmp.SQL.Add('  CM_CONTRATOAPAR.EMPRESAID, CM_CONTRATOAPAR.CONTRATOID, CM_CONTRATOAPAR.ANOID,CM_CONTRATOANO.DATAFIMCONTRATO,CM_CONTRATOAPAR.SERIEID,');
 sqlTmp.SQL.Add('  CM_CONTRATOAPAR.MODELOID, CM_CONTRATOAPAR.TIPOCONTRATOID,  CM_CONTRATOAPAR.VLRMENSAL,  CM_CONTRATOAPAR.HORASESPERA,');
 sqlTmp.SQL.Add('  CM_CONTRATOAPAR.QTDPREVENTIVAS,  CM_CONTRATOAPAR.QTDPREVENTIVASUTIL,  CM_CONTRATOAPAR.BLOQUEARPREVENTIVAS,');
 sqlTmp.SQL.Add('  CM_CONTRATOAPAR.QTDCORRETIVAS,  CM_CONTRATOAPAR.QTDCORRETIVASUTIL,  CM_CONTRATOAPAR.BLOQUEARCORRETIVAS,');
 sqlTmp.SQL.Add('  CM_CONTRATOAPAR.QTDPECAS,  CM_CONTRATOAPAR.QTDPECASUTIL,  CM_CONTRATO.CANCELADO,  CM_CONTRATOANO.PERIODOCONCLUIDO,');
 sqlTmp.SQL.Add('  CM_CORRETIVA.DESCRICAO,');
 sqlTmp.SQL.Add('  CM_CONTRATOAPAR.IMPRCONDCONTR');
 sqlTmp.SQL.Add('  FROM');
 sqlTmp.SQL.Add('  CM_CONTRATO CM_CONTRATO,');
 sqlTmp.SQL.Add('  CM_CONTRATOANO CM_CONTRATOANO,');
 sqlTmp.SQL.Add('  CM_CONTRATOAPAR CM_CONTRATOAPAR,');
 sqlTmp.SQL.Add('  CM_CORRETIVA');
 sqlTmp.SQL.Add(' WHERE');
 sqlTmp.SQL.Add('  CM_CONTRATO.EMPRESAID = CM_CONTRATOANO.EMPRESAID');
 sqlTmp.SQL.Add('  AND CM_CONTRATO.CONTRATOID = CM_CONTRATOANO.CONTRATOID');
 sqlTmp.SQL.Add('  AND CM_CONTRATO.EMPRESAID = CM_CONTRATOAPAR.EMPRESAID');
 sqlTmp.SQL.Add('  AND CM_CONTRATO.CONTRATOID = CM_CONTRATOAPAR.CONTRATOID');
 sqlTmp.SQL.Add('  AND CM_CONTRATO.CANCELADO = 0');
 sqlTmp.SQL.Add('  AND CM_CONTRATOANO.ANOID = CM_CONTRATOAPAR.ANOID');
 sqlTmp.SQL.Add('  AND CM_CONTRATOAPAR.SERIEID = ' + QuotedStr( ModeloID ));
 sqlTmp.SQL.Add('  AND CM_CONTRATOAPAR.MODELOID = ' + QuotedStr( SerieID ));
 sqlTmp.SQL.Add('  AND CM_CONTRATOAPAR.CORRETIVAID = CM_CORRETIVA.CORRETIVAID(+)');
 sqlTmp.SQL.Add('  AND NVL( CM_CONTRATOANO.PERIODOCONCLUIDO,0 ) = 0');
 sqlTmp.Prepared := True;
 sqlTmp.Open;

 NivelVenda := VarArrayCreate([0,1],varVariant);

 NivelVenda[0] := sqlTmp.FieldByName('CONTRATOID').AsString + '-' + sqlTmp.FieldByName('CONTRATOANTIGOID').AsString;
 NivelVenda[1] := sqlTmp.FieldByName('DESCRICAO').AsString;

 Result := NivelVenda;
end;

procedure TSrvAppOS.IOSSincronismoOK(const OSID, UsuarioOffLine: WideString);
var sqlGeral, sqlUpd : TSQLQuery;
    cdsData : OleVariant;
begin
 sqlGeral := TSQLQuery.Create(nil);
 sqlGeral.SQLConnection := TSQLConnection( FSQLcnn );

 sqlUpd := TSQLQuery.Create(nil);
 sqlUpd.SQLConnection := TSQLConnection( FSQLcnn );

 try
  try // Except
   { Iniciando a Transação }
   TSQLConnection( FSQLcnn ).StartTransaction(TD);

   sqlUpd.Close;
   sqlUpd.SQL.Clear;
   sqlUpd.SQL.Add('UPDATE OS_OS SET ' );
   sqlUpd.SQL.Add('  OSELETRONICA = 1, ' );
   sqlUpd.SQL.Add('  OSOFFLINE = 1, ' );

   sqlUpd.SQL.Add('  OSOFFLINEUSUARIO = ' + QuotedStr( UsuarioOFFLine ) );
   sqlUpd.SQL.Add(' WHERE ' );
   sqlUpd.SQL.Add('  OSID = ' + QuotedStr( OSId ) );
   sqlUpd.Prepared := True;
   sqlUpd.ExecSQL;

   sqlUpd.Close;
   sqlUpd.SQL.Clear;
   sqlUpd.SQL.Add('DELETE FROM RD_ADIANTAMENTO ' );
   sqlUpd.SQL.Add(' WHERE ' );
   sqlUpd.SQL.Add('  OSID = ' + QuotedStr( OSId ) );
   sqlUpd.Prepared := True;
   sqlUpd.ExecSQL;

   sqlUpd.Close;
   sqlUpd.SQL.Clear;
   sqlUpd.SQL.Add('DELETE FROM RD_BANCOHORA ' );
   sqlUpd.SQL.Add(' WHERE ' );
   sqlUpd.SQL.Add('  OSID = ' + QuotedStr( OSId ) );
   sqlUpd.Prepared := True;
   sqlUpd.ExecSQL;

   sqlUpd.Close;
   sqlUpd.SQL.Clear;
   sqlUpd.SQL.Add('DELETE FROM OS_OSHORA');
   sqlUpd.SQL.Add(' WHERE ' );
   sqlUpd.SQL.Add('  OSID = ' + QuotedStr( OSId ) );
   sqlUpd.Prepared := True;
   sqlUpd.ExecSQL;

   sqlUpd.Close;
   sqlUpd.SQL.Clear;
   sqlUpd.SQL.Add('DELETE FROM OS_OSDEFEITO');
   sqlUpd.SQL.Add(' WHERE ' );
   sqlUpd.SQL.Add('  OSID = ' + QuotedStr( OSId ) );
   sqlUpd.Prepared := True;
   sqlUpd.ExecSQL;

   sqlUpd.Close;
   sqlUpd.SQL.Clear;
   sqlUpd.SQL.Add('DELETE FROM OS_OSMATERIAL');
   sqlUpd.SQL.Add(' WHERE ' );
   sqlUpd.SQL.Add('  OSID = ' + QuotedStr( OSId ) );
   sqlUpd.Prepared := True;
   sqlUpd.ExecSQL;

   cdsData := VarArrayCreate([0,3],varVariant);

   cdsData[0] := cdsOFFOS.Data;
   cdsData[1] := cdsOFFAdiantamento.Data;
   cdsData[2] := cdsOFFBancoHora.Data;


   // Efetivar a transação no Banco de Dados
   TSQLConnection( FSQLcnn ).Commit(TD);

  except
   on E : Exception do
    begin
     if TSQLConnection(FSQLcnn).InTransaction then
        TSQLConnection(FSQLcnn).Rollback(TD);
     raise Exception.Create(E.Message);
    end;
  end;

 finally
  FreeAndNil( sqlUpd );
  FreeAndNil( sqlGeral );
 end;
end;


procedure TSrvAppOS.ITotalOS(const OSID: WideString);
var sqlGeral, sqlTOS, sqlUpd : TSQLQuery;
    VlrDesconto, VlrTotalPagar : Currency;
    VlrTotalMaoObra, VlrTotalDesLoca, VlrTotalPeca, VlrTotalOrcComp : Currency;
begin
 sqlGeral := TSQLQuery.Create(nil);
 sqlGeral.SQLConnection := TSQLConnection( FSQLcnn );

 sqlTOS := TSQLQuery.Create(nil);
 sqlTOS.SQLConnection := TSQLConnection( FSQLcnn );

 sqlUpd := TSQLQuery.Create(nil);
 sqlUpd.SQLConnection := TSQLConnection( FSQLcnn );

 try
  try // Except

   { Iniciando a Transação }
   TSQLConnection( FSQLcnn ).StartTransaction(TD);

   sqlGeral.Close;
   sqlGeral.SQL.Clear;
   sqlGeral.SQL.Add('SELECT OS_OS.OSID,');
   sqlGeral.SQL.Add('       OS_OS.STATUS,');
   sqlGeral.SQL.Add('       OS_OS.OSIMPRESSA,');
   sqlGeral.SQL.Add('       OS_OS.DATASAIDALABORATORIO');
   sqlGeral.SQL.Add('  FROM OS_OS');
   sqlGeral.SQL.Add(' WHERE ');
   sqlGeral.SQL.Add('  OS_OS.OSID = ' + QuotedStr( OSID ) );
   sqlGeral.Prepared := True;
   sqlGeral.Open;

   if sqlGeral.FieldByName('OSIMPRESSA').AsInteger = 1 then
      raise Exception.Create('Não é permitido mudança nos cálculos da O.S., pois já foi feito a impressão final da O.S.');

   if sqlGeral.FieldByName('STATUS').AsString <> 'A' then
      raise Exception.Create('O.S. já está fechada / bloqueada !');

   sqlTOS.Close;
   sqlTOS.SQL.Clear;
   sqlTOS.SQL.Add(' SELECT OS_OS.OSID,');
   sqlTOS.SQL.Add(' OS_OS.NOMELIBDESCONTO,' );
   sqlTOS.SQL.Add(' OS_OS.PORCDESCONTO,' );
   sqlTOS.SQL.Add(' OS_OS.VLRMAODEOBRA,' );
   sqlTOS.SQL.Add(' OS_OS.VLRDESLOCAMENTO,' );
   sqlTOS.SQL.Add(' OS_OS.VLRFRETE,' );
   sqlTOS.SQL.Add(' OS_OS.VLRPECA,' );
   sqlTOS.SQL.Add(' OS_OS.VLRORCADO,' );
   sqlTOS.SQL.Add('/* Total de Mão de Obra */');
   sqlTOS.SQL.Add('CUSTOHORA_DESPESAS.VLRTOTALCUSTOHORA,');
   sqlTOS.SQL.Add('/* Total do Deslocamento */');
   sqlTOS.SQL.Add('RDV_DESPESAS.VLRTOTALDESPESASRDV,');
   sqlTOS.SQL.Add('/* Total de Peça */');
   sqlTOS.SQL.Add('MATERIAL_DESPESAS.VLRTOTALMATERIAL,');
   sqlTOS.SQL.Add('/* Total de Orçamento */');
   sqlTOS.SQL.Add('( NVL( CUSTOHORA_DESPESAS.VLRTOTALCUSTOHORA, 0 ) +');
   sqlTOS.SQL.Add('  NVL( RDV_DESPESAS.VLRTOTALDESPESASRDV, 0 ) +');
   sqlTOS.SQL.Add('  NVL( VLRFRETE, 0 ) + NVL( VLRPECA, 0 ) ) VLRTOTALORCAMENTO,');
   sqlTOS.SQL.Add('');
   sqlTOS.SQL.Add('/* Total O.S. */');
   sqlTOS.SQL.Add('( NVL( CUSTOHORA_DESPESAS.VLRTOTALCUSTOHORA, 0 ) +');
   sqlTOS.SQL.Add('  NVL( RDV_DESPESAS.VLRTOTALDESPESASRDV, 0 ) +');
   sqlTOS.SQL.Add('  NVL( VLRTOTALFRETE, 0 ) +');
   sqlTOS.SQL.Add('  NVL( MATERIAL_DESPESAS.VLRTOTALMATERIAL, 0 ) +');
   sqlTOS.SQL.Add('  NVL( VLRTOTALOUTRO, 0 ) ) VLRTOTALOS');
   sqlTOS.SQL.Add('   FROM OS_OS,');
   sqlTOS.SQL.Add('        (SELECT OSID, SUM(NVL(VLROPERACAO, 0)) AS VLRTOTALDESPESASRDV');
   sqlTOS.SQL.Add('           FROM RD_ADIANTAMENTO');
   sqlTOS.SQL.Add('          GROUP BY OSID');
   sqlTOS.SQL.Add('          ORDER BY OSID) RDV_DESPESAS,');
   sqlTOS.SQL.Add('        (SELECT OS_OSHORA.OSID,');
   sqlTOS.SQL.Add('                SUM((OS_CUSTOHORA.VLRHORATRAB * OS_OSHORA.QTDHORATRAB) +');
   sqlTOS.SQL.Add('                    (OS_CUSTOHORA.VLRHORATRANSP * OS_OSHORA.QTDHORATRANSP) +');
   sqlTOS.SQL.Add('                    (OS_CUSTOHORA.VLRHORAESPERA * OS_OSHORA.QTDHORAESPERA) +');
   sqlTOS.SQL.Add('                    (OS_CUSTOHORA.VLRHORAOUTROS * OS_OSHORA.QTDHORAOUTRA)) VLRTOTALCUSTOHORA');
   sqlTOS.SQL.Add('           FROM OS_OSHORA    OS_OSHORA,');
   sqlTOS.SQL.Add('                OS_OS        OS_OS,');
   sqlTOS.SQL.Add('                PP_CATALOGO  PP_CATALOGO,');
   sqlTOS.SQL.Add('                OS_CUSTOHORA OS_CUSTOHORA');
   sqlTOS.SQL.Add('          WHERE OS_OS.OSID = OS_OSHORA.OSID');
   sqlTOS.SQL.Add('            AND PP_CATALOGO.MODELOID(+) = OS_OS.MODELOID');
   sqlTOS.SQL.Add('            AND OS_CUSTOHORA.CUSTOHORAID(+) = PP_CATALOGO.CUSTOHORAID');
   sqlTOS.SQL.Add('          GROUP BY OS_OSHORA.OSID');
   sqlTOS.SQL.Add('          ORDER BY OSID) CUSTOHORA_DESPESAS,');
   sqlTOS.SQL.Add('        (SELECT OSID, SUM(VLRPRECOTOTAL) VLRTOTALMATERIAL');
   sqlTOS.SQL.Add('           FROM OS_OSMATERIAL');
   sqlTOS.SQL.Add('          GROUP BY OSID');
   sqlTOS.SQL.Add('          ORDER BY OSID) MATERIAL_DESPESAS');
   sqlTOS.SQL.Add('  WHERE OS_OS.OSID = RDV_DESPESAS.OSID(+)');
   sqlTOS.SQL.Add('    AND OS_OS.OSID = CUSTOHORA_DESPESAS.OSID(+)');
   sqlTOS.SQL.Add('    AND OS_OS.OSID = MATERIAL_DESPESAS.OSID(+)');
   sqlTOS.SQL.Add('    AND OS_OS.OSID = ' + QuotedStr( OSID ) );
   sqlTOS.Prepared := True;
   sqlTOS.Open;

   if ( sqlTOS.FieldByName('NOMELIBDESCONTO').IsNull ) or
      ( sqlTOS.FieldByName('PORCDESCONTO').IsNull )then
      VlrDesconto := 0
   else
      VlrDesconto := ( sqlTOS.FieldByName('VLRTOTALOS').AsCurrency * ( sqlTOS.FieldByName('PORCDESCONTO').AsCurrency / 100 ) );

   VlrTotalOrcComp :=  sqlTOS.FieldByName('VLRMAODEOBRA').AsFloat +
                       sqlTOS.FieldByName('VLRDESLOCAMENTO').AsFloat +
                       sqlTOS.FieldByName('VLRFRETE').AsFloat +
                       sqlTOS.FieldByName('VLRPECA').AsFloat;

   VlrTotalMaoObra := sqlTOS.FieldByName('VLRTOTALCUSTOHORA').AsCurrency;
   VlrTotalDesLoca := sqlTOS.FieldByName('VLRTOTALDESPESASRDV').AsCurrency;
   VlrTotalPeca    := sqlTOS.FieldByName('VLRTOTALMATERIAL').AsCurrency;

   // Caso o orçamento esteja preenchido não calcular os valores do orçamento
   if sqlTOS.FieldByName('VLRORCADO').AsFloat > 0 then
      VlrTotalPagar := sqlTOS.FieldByName('VLRORCADO').AsFloat + VlrTotalOrcComp - VlrDesconto
   else
      VlrTotalPagar := sqlTOS.FieldByName('VLRTOTALOS').AsCurrency + VlrTotalOrcComp - VlrDesconto;

   sqlUpd.Close;
   sqlUpd.SQL.Clear;
   sqlUpd.SQL.Add('UPDATE OS_OS SET ' );
   sqlUpd.SQL.Add('  VLRTOTALMAODEOBRA   = ' + SubstituiString( FloatToStr( VlrTotalMaoObra ), ',', '.' ) + ',' );
   sqlUpd.SQL.Add('  VLRTOTALDESLOCAMENTO= ' + SubstituiString( FloatToStr( VlrTotalDesLoca ), ',', '.' ) + ',' );
   sqlUpd.SQL.Add('  VLRTOTALPECA        = ' + SubstituiString( FloatToStr( VlrTotalPeca ), ',', '.' ) + ',' );
   sqlUpd.SQL.Add('  VLRTOTALORCCOMP     = ' + SubstituiString( FloatToStr( VlrTotalOrcComp ), ',', '.' ) + ',' );
   sqlUpd.SQL.Add('  VLRDESCONTO         = ' + SubstituiString( FloatToStr( VlrDesconto), ',', '.' ) + ',' );
   sqlUpd.SQL.Add('  VLRTOTALPAGAR       = ' + SubstituiString( FloatToStr( VlrTotalPagar), ',', '.' )  );
   sqlUpd.SQL.Add(' WHERE' );
   sqlUpd.SQL.Add('  OSID = ' + QuotedStr( OSId ) );
   sqlUpd.ExecSQL( False );

   { Efetivar a transação no Banco de Dados }
   TSQLConnection( FSQLcnn ).Commit(TD);

  except
   on E : Exception do
    begin
     if TSQLConnection(FSQLcnn).InTransaction then
        TSQLConnection(FSQLcnn).Rollback(TD);
     raise Exception.Create(E.Message);
    end;
  end;

 finally
  FreeAndNil( sqlUpd );
  FreeAndNil( sqlGeral );
 end;

end;

initialization
 FSrvAppOS := TComponentFactory.Create(ComServer, TSrvAppOS,
    Class_SrvAppOS, ciInternal, tmApartment);
end.
