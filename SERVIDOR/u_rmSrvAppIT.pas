unit u_rmSrvAppIT;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows,  DataBkr, ComServ, DBClient, GSIServidor_TLB, StdVcl, FMTBcd, DB, Provider,
  Classes, SqlExpr, VCLCom, SysUtils, ComObj;

type
  TSrvAppIT = class(TRemoteDataModule, ISrvAppIT)
    sqldtsIndiceMes: TSQLDataSet;
    sqldtsDespachante: TSQLDataSet;
    sqldtsDespachanteDESPACHANTEID: TBCDField;
    sqldtsDespachanteNOME: TStringField;
    sqldtsDespachanteCONTACONTABILID: TStringField;
    sqldtsDespachanteUSUARIO: TStringField;
    sqldtsContatoJapao: TSQLDataSet;
    sqldtsContatoJapaoCONTATOJAPAOID: TBCDField;
    sqldtsContatoJapaoDESTINATARIO: TStringField;
    sqldtsContatoJapaoEMAILDESTINATARIO: TStringField;
    sqldtsContatoJapaoDESTINATARIOCC: TStringField;
    sqldtsContatoJapaoEMAILDESTINATARIOCC: TStringField;
    sqldtsContatoJapaoREMETENTE: TStringField;
    sqldtsContatoJapaoUSUARIO: TStringField;
    sqldtsTipoProcesso: TSQLDataSet;
    sqldtsTipoProcessoTIPOPROCESSOID: TBCDField;
    sqldtsTipoProcessoSIGLA: TStringField;
    sqldtsTipoProcessoDESCRICAO: TStringField;
    sqldtsTipoProcessoNUMPROCESSO: TBCDField;
    sqldtsTipoProcessoORIGEMPROCESSO: TStringField;
    sqldtsTipoProcessoUSUARIO: TStringField;
    sqldtsTermoPagto: TSQLDataSet;
    sqldtsTermoPagtoTERMOPAGTOID: TBCDField;
    sqldtsTermoPagtoDESCRICAO: TStringField;
    sqldtsTermoPagtoUSUARIO: TStringField;
    dsprvIndiceMes: TDataSetProvider;
    dsprvDespachante: TDataSetProvider;
    dsprvContatoJapao: TDataSetProvider;
    dsprvTipoProcesso: TDataSetProvider;
    dsprvTermoPagto: TDataSetProvider;
    sqldtsDeclaracao: TSQLDataSet;
    sqldtsAdicao: TSQLDataSet;
    sqldtsMercadoria: TSQLDataSet;
    dsprvDeclaracao: TDataSetProvider;
    dsDILink: TDataSource;
    dsProcessoLink: TDataSource;
    sqldtsProcesso: TSQLDataSet;
    sqldtsProcessoItem: TSQLDataSet;
    dsprvProcesso: TDataSetProvider;
    sqldtsIndice: TSQLDataSet;
    dsprvIndice: TDataSetProvider;
    sqldtsIndiceDATAID: TSQLTimeStampField;
    sqldtsIndiceDOLAROFICIALC: TFMTBCDField;
    sqldtsIndiceDOLAROFICIALV: TFMTBCDField;
    sqldtsIndiceDOLARPARALELOC: TFMTBCDField;
    sqldtsIndiceDOLARPARALELOV: TFMTBCDField;
    sqldtsIndiceDOLARTURISMOC: TFMTBCDField;
    sqldtsIndiceDOLARTURISMOV: TFMTBCDField;
    sqldtsIndiceDOLARFISCALDIARIO: TFMTBCDField;
    sqldtsIndiceYENEFISCALDIARIO: TFMTBCDField;
    sqldtsIndiceUSUARIO: TStringField;
    sqldtsIndiceMesANOMESID: TBCDField;
    sqldtsIndiceMesUFIR: TBCDField;
    sqldtsIndiceMesUFESP: TBCDField;
    sqldtsIndiceMesIPCFIPE: TBCDField;
    sqldtsIndiceMesIGPM: TBCDField;
    sqldtsIndiceMesIPC: TBCDField;
    sqldtsIndiceMesIPA: TBCDField;
    sqldtsIndiceMesINCC: TBCDField;
    sqldtsIndiceMesIPCA: TBCDField;
    sqldtsIndiceMesICV: TBCDField;
    sqldtsIndiceMesICVM: TBCDField;
    sqldtsIndiceMesUSUARIO: TStringField;
    sqldtsTipoCategoria: TSQLDataSet;
    dsprvTipoCategoria: TDataSetProvider;
    sqldtsTipoCategoriaTIPOCATEGORIAID: TBCDField;
    sqldtsTipoCategoriaDESCRICAO: TStringField;
    sqldtsTipoCategoriaUSUARIO: TStringField;
    sqldtsRazaoExigencia: TSQLDataSet;
    dsprvRazaoExigencia: TDataSetProvider;
    sqldtsRazaoExigenciaRAZAOEXIGENCIAID: TBCDField;
    sqldtsRazaoExigenciaDESCRICAO: TStringField;
    sqldtsRazaoExigenciaUSUARIO: TStringField;
    sqldtsFrequencia: TSQLDataSet;
    dsprvFrequencia: TDataSetProvider;
    sqldtsFrequenciaFREQUENCIAID: TBCDField;
    sqldtsFrequenciaDESCRICAO: TStringField;
    sqldtsFrequenciaUSUARIO: TStringField;
    dsprvAdicao: TDataSetProvider;
    dsprvMercadoria: TDataSetProvider;
    sqldtsListaPreco: TSQLDataSet;
    dsprvListaPreco: TDataSetProvider;
    sqldtsListaPrecoPARTNUMBERID: TStringField;
    sqldtsListaPrecoDESCRICAOINGLES: TStringField;
    sqldtsListaPrecoMODELOID: TStringField;
    sqldtsListaPrecoVLRFOB: TBCDField;
    sqldtsListaPrecoVLRVENDA: TBCDField;
    sqldtsListaPrecoVLRTROCA: TBCDField;
    sqldtsListaPrecoUSUARIO: TStringField;
    sqldtsCorListaPreco: TSQLDataSet;
    dsprvCorListaPreco: TDataSetProvider;
    sqldtsCorListaPrecoDATAID: TSQLTimeStampField;
    sqldtsCorListaPrecoVLRDOLAR: TFMTBCDField;
    sqldtsCorListaPrecoVLRIPI: TFMTBCDField;
    sqldtsCorListaPrecoOBSERVACAO: TStringField;
    sqldtsCorListaPrecoUSUARIO: TStringField;
    sqldtsRelLD: TSQLDataSet;
    dsprvRelLD: TDataSetProvider;
    sqldtsAdicaoDECLARACAOID: TBCDField;
    sqldtsAdicaoADICAOID: TBCDField;
    sqldtsAdicaoNCMID: TStringField;
    sqldtsAdicaoPESOLIQUIDO: TFMTBCDField;
    sqldtsAdicaoVLRFOBUS: TBCDField;
    sqldtsAdicaoVLRFOB: TBCDField;
    sqldtsAdicaoVLRCIF: TBCDField;
    sqldtsAdicaoALIQUOTAII: TBCDField;
    sqldtsAdicaoVLRII: TBCDField;
    sqldtsAdicaoALIQUOTAIPI: TBCDField;
    sqldtsAdicaoVLRIPI: TBCDField;
    sqldtsAdicaoUSUARIO: TStringField;
    sqldtsProcessoItemSerie: TSQLDataSet;
    sqldtsProcessoItemSeriePROCESSOID: TBCDField;
    sqldtsProcessoItemSerieTIPOPROCESSOID: TBCDField;
    sqldtsProcessoItemSerieITEMID: TBCDField;
    sqldtsProcessoItemSerieSERIEID: TStringField;
    sqldtsProcessoItemSerieMODELOID: TStringField;
    sqldtsProcessoItemSerieCOMPOSICAO: TMemoField;
    sqldtsProcessoItemSerieUSUARIO: TStringField;
    dsProcessoItemLink: TDataSource;
    sqldtsDeclaracaoDECLARACAOID: TBCDField;
    sqldtsDeclaracaoEMPRESAID: TBCDField;
    sqldtsDeclaracaoL_NOMEFANTASIA: TStringField;
    sqldtsDeclaracaoDIID: TStringField;
    sqldtsDeclaracaoDATAREGISTRO: TSQLTimeStampField;
    sqldtsDeclaracaoREFERENCIA: TStringField;
    sqldtsDeclaracaoDATALIBERACAO: TSQLTimeStampField;
    sqldtsDeclaracaoTIPOMOEDAFRETE: TStringField;
    sqldtsDeclaracaoIMPORTADORID: TBCDField;
    sqldtsDeclaracaoL_NOMEIMPORTADOR: TStringField;
    sqldtsDeclaracaoFORNECEDORID: TBCDField;
    sqldtsDeclaracaoL_NOMEFORNECEDOR: TStringField;
    sqldtsDeclaracaoCONTACONTABILID: TStringField;
    sqldtsDeclaracaoCENTROCUSTOID: TStringField;
    sqldtsDeclaracaoNUMCONTRATOCAMBIO: TStringField;
    sqldtsDeclaracaoDATACONTRATO: TSQLTimeStampField;
    sqldtsDeclaracaoOBSPEDIDO: TMemoField;
    sqldtsDeclaracaoCREDITARICMS: TBCDField;
    sqldtsDeclaracaoAGREGARVLRFOB: TBCDField;
    sqldtsDeclaracaoRESTITUIRICMS: TBCDField;
    sqldtsDeclaracaoAGREGARFRETE: TBCDField;
    sqldtsDeclaracaoFOBANTECIPADO: TBCDField;
    sqldtsDeclaracaoADMISSAOTEMP: TBCDField;
    sqldtsDeclaracaoLIBERARESTOQUE: TBCDField;
    sqldtsDeclaracaoATIVOFIXO: TBCDField;
    sqldtsDeclaracaoFRETEPAGO: TBCDField;
    sqldtsDeclaracaoDESPACHANTEID: TBCDField;
    sqldtsDeclaracaoL_NOMEDESPACHANTE: TStringField;
    sqldtsDeclaracaoNUMDEMONSDESPESA: TStringField;
    sqldtsDeclaracaoVLRDESPESAII: TBCDField;
    sqldtsDeclaracaoVLRDESPESADESEMB: TBCDField;
    sqldtsDeclaracaoNFEID: TStringField;
    sqldtsDeclaracaoDATAEMISSAONFEID: TSQLTimeStampField;
    sqldtsDeclaracaoDATAENTRADANFEID: TSQLTimeStampField;
    sqldtsDeclaracaoNATUREZAOPID: TBCDField;
    sqldtsDeclaracaoL_CFOP: TStringField;
    sqldtsDeclaracaoL_DESCRICAONATUREZAUSUARIO: TStringField;
    sqldtsDeclaracaoL_DESCRICAONATUREZANOTA: TStringField;
    sqldtsDeclaracaoVLRTOTALCIF: TBCDField;
    sqldtsDeclaracaoVLRTOTALFOBUS: TBCDField;
    sqldtsDeclaracaoVLRTOTALFOB: TBCDField;
    sqldtsDeclaracaoVLRFRETE: TBCDField;
    sqldtsDeclaracaoVLRSEGUROINTERNAC: TBCDField;
    sqldtsDeclaracaoTAXAFOBANTECIPADO: TFMTBCDField;
    sqldtsDeclaracaoTAXASISCOMEX: TBCDField;
    sqldtsDeclaracaoVLRTOTALIPI: TBCDField;
    sqldtsDeclaracaoVLRTOTALICMS: TBCDField;
    sqldtsDeclaracaoVLRTOTALCUSTOAPARELHO: TBCDField;
    sqldtsDeclaracaoVLRTOTALCUSTOPECA: TBCDField;
    sqldtsDeclaracaoVLRTOTALMAQEQUIP: TBCDField;
    sqldtsDeclaracaoVLRTOTALFERRAMENTAL: TBCDField;
    sqldtsDeclaracaoVLRTOTALMOVUTENSILIOS: TBCDField;
    sqldtsDeclaracaoVLRTOTALADMTEMP: TBCDField;
    sqldtsDeclaracaoVLRTOTALPIS: TBCDField;
    sqldtsDeclaracaoVLRTOTALCOFINS: TBCDField;
    sqldtsDeclaracaoVLRTOTALFOB2: TBCDField;
    sqldtsDeclaracaoVLRTOTALFOBANT: TBCDField;
    sqldtsDeclaracaoVLRTOTALCIF2: TBCDField;
    sqldtsDeclaracaoVLRTOTALCIFANT: TBCDField;
    sqldtsDeclaracaoVLRTOTALDESPDESP: TBCDField;
    sqldtsDeclaracaoVLRTOTALDESPGI: TBCDField;
    sqldtsDeclaracaoVLRTOTALSEGUROTRANSP: TBCDField;
    sqldtsDeclaracaoVLRTOTALIRRFPAGAR: TBCDField;
    sqldtsDeclaracaoVLRTOTALFRETELOCAL: TBCDField;
    sqldtsDeclaracaoUSUARIO: TStringField;
    sqldtsMercadoriaDECLARACAOID: TBCDField;
    sqldtsMercadoriaMERCADORIAID: TBCDField;
    sqldtsMercadoriaPROCESSOID: TBCDField;
    sqldtsMercadoriaTIPOPROCESSOID: TBCDField;
    sqldtsMercadoriaL_SIGLA: TStringField;
    sqldtsMercadoriaITEMPROCESSOID: TBCDField;
    sqldtsMercadoriaNCMID: TStringField;
    sqldtsMercadoriaLIBERAESTOQUE: TBCDField;
    sqldtsMercadoriaEMPRESAID: TBCDField;
    sqldtsMercadoriaPRODUTOID: TBCDField;
    sqldtsMercadoriaL_DESCRICAO_PRODUTO: TStringField;
    sqldtsMercadoriaQUANTIDADE: TBCDField;
    sqldtsMercadoriaIMOBILIZADO: TBCDField;
    sqldtsMercadoriaTIPOMATERIAL: TStringField;
    sqldtsMercadoriaPESOLIQUIDO: TFMTBCDField;
    sqldtsMercadoriaPESOBRUTO: TFMTBCDField;
    sqldtsMercadoriaVLRFOBUS: TBCDField;
    sqldtsMercadoriaVLRFOB: TBCDField;
    sqldtsMercadoriaVLRCUSTOMOVIMENTO: TBCDField;
    sqldtsMercadoriaVLRCUSTOTRANSFERENCIA: TBCDField;
    sqldtsMercadoriaVLRBASEIPI: TBCDField;
    sqldtsMercadoriaALIQUOTAIPI: TFMTBCDField;
    sqldtsMercadoriaVLRIPI: TBCDField;
    sqldtsMercadoriaVLRBASEICMS: TBCDField;
    sqldtsMercadoriaVLRICMS: TBCDField;
    sqldtsMercadoriaALIQUOTAII: TFMTBCDField;
    sqldtsMercadoriaVLRFRETE: TBCDField;
    sqldtsMercadoriaVLRFRETEUS: TBCDField;
    sqldtsMercadoriaVLRPIS: TBCDField;
    sqldtsMercadoriaVLRCOFINS: TBCDField;
    sqldtsMercadoriaUSUARIO: TStringField;
    sqldtsMercadoriaVLRCIF: TBCDField;
    sqldtsConta: TSQLDataSet;
    dsprvConta: TDataSetProvider;
    sqldtsContaEMPRESAID: TBCDField;
    sqldtsContaL_NOMEFANTASIA: TStringField;
    sqldtsContaNOMECAMPOID: TStringField;
    sqldtsContaCONTACONTABILID: TStringField;
    sqldtsContaL_DESCRICAOCONTA: TStringField;
    sqldtsContaCREDDEB: TStringField;
    sqldtsContaUSUARIO: TStringField;
    sqldtsRelLDCONTACONTABILID: TStringField;
    sqldtsRelLDDESCRICAO: TStringField;
    sqldtsRelLDDIID: TStringField;
    sqldtsRelLDDATAENTRADANFEID: TSQLTimeStampField;
    sqldtsRelLDNFEID: TStringField;
    sqldtsRelLDNUMDEMONSDESPESA: TStringField;
    sqldtsRelLDVLRTOTALFOBUS: TBCDField;
    sqldtsRelLDREFERENCIA: TStringField;
    sqldtsRelLDVLRDEBITO: TFMTBCDField;
    sqldtsRelLDVLRCREDITO: TFMTBCDField;
    sqldtsProcessoItemPROCESSOID: TBCDField;
    sqldtsProcessoItemTIPOPROCESSOID: TBCDField;
    sqldtsProcessoItemL_SIGLA: TStringField;
    sqldtsProcessoItemITEMID: TBCDField;
    sqldtsProcessoItemEMPRESAID: TBCDField;
    sqldtsProcessoItemPRODUTOID: TBCDField;
    sqldtsProcessoItemPARTNUMBERID: TStringField;
    sqldtsProcessoItemGRUPOID: TBCDField;
    sqldtsProcessoItemDESCRICAOINGLES: TStringField;
    sqldtsProcessoItemDESCRICAOPORTUGUES: TStringField;
    sqldtsProcessoItemNCMID: TStringField;
    sqldtsProcessoItemDATACONVERSAO: TSQLTimeStampField;
    sqldtsProcessoItemVLRYEN: TBCDField;
    sqldtsProcessoItemVLRFOBUS: TBCDField;
    sqldtsProcessoItemSERIEID: TStringField;
    sqldtsProcessoItemMODELOID: TStringField;
    sqldtsProcessoItemPEDIDOORIGINAL: TStringField;
    sqldtsProcessoItemDATAINSTALEQUIP: TSQLTimeStampField;
    sqldtsProcessoItemDATAFALHAEQUIP: TSQLTimeStampField;
    sqldtsProcessoItemPRIORIDADE: TStringField;
    sqldtsProcessoItemQTDPEDIDA: TBCDField;
    sqldtsProcessoItemQTDLIBERADA: TBCDField;
    sqldtsProcessoItemREGANVISA: TStringField;
    sqldtsProcessoItemDATAPREVISAO: TSQLTimeStampField;
    sqldtsProcessoItemDATAEMBARQUE: TSQLTimeStampField;
    sqldtsProcessoItemDATACHEGADA: TSQLTimeStampField;
    sqldtsProcessoItemINVOICEID: TStringField;
    sqldtsProcessoItemNUMCONHECEMBARQUE: TStringField;
    sqldtsProcessoItemTSBREFID: TStringField;
    sqldtsProcessoItemDATADEVOLUCAO: TSQLTimeStampField;
    sqldtsProcessoItemDATAPREVRETORNO: TSQLTimeStampField;
    sqldtsProcessoItemRETORNAPECADEF: TBCDField;
    sqldtsProcessoItemUSUARIO: TStringField;
    sqldtsProcessoItemNOMEUNIDADE: TStringField;
    sqldtsMercadoriaL_PARTNUMBERID: TStringField;
    sqldtsDeclaracaoL_DOLARFISCALDIARIO: TFMTBCDField;
    sqldtsDeclaracaoL_YENEFISCALDIARIO: TFMTBCDField;
    sqldtsLocalChegada: TSQLDataSet;
    sqldtsViaEmbarque: TSQLDataSet;
    dsprvLocalChegada: TDataSetProvider;
    dsprvViaEmbarque: TDataSetProvider;
    sqldtsLocalChegadaLOCALCHEGADAID: TBCDField;
    sqldtsLocalChegadaDESCRICAO: TStringField;
    sqldtsLocalChegadaUSUARIO: TStringField;
    sqldtsViaEmbarqueVIAEMBARQUEID: TBCDField;
    sqldtsViaEmbarqueDESCRICAO: TStringField;
    sqldtsViaEmbarqueUSUARIO: TStringField;
    sqldtsProcessoItemDECLARACAOID: TBCDField;
    sqldtsProcessoItemL_DIID: TStringField;
    sqldtsProcessoItemL_NFEID: TStringField;
    sqldtsProcessoItemL_DATAEMISSAONFEID: TSQLTimeStampField;
    sqldtsProcessoItemL_DATAENTRADANFEID: TSQLTimeStampField;
    sqldtsDeclaracaoVLRDESPSINDDESP: TBCDField;
    sqldtsDeclaracaoVLRDESPCODESPINFRAERO: TBCDField;
    sqldtsDeclaracaoVLRDESPAFRMM: TBCDField;
    sqldtsDeclaracaoVLRDESPCPMF: TBCDField;
    sqldtsDeclaracaoVLRDESPTRANSPENTREGA: TBCDField;
    sqldtsDeclaracaoVLRDESPTRANSPREMOCAO: TBCDField;
    sqldtsDeclaracaoVLRDESPARMAZENTREPOSTO: TBCDField;
    sqldtsDeclaracaoVLRDESPTXEXPEDIENTE: TBCDField;
    sqldtsDeclaracaoVLRDESPVIGSANITARIA: TBCDField;
    sqldtsDeclaracaoVLRDESPCOMISSAONFS: TBCDField;
    sqldtsDeclaracaoMATERIALCONSUMO: TBCDField;
    sqldtsRelLDCREDDEB: TStringField;
    sqldtsRelLDNUMEMPRESAEXP: TBCDField;
    sqldtsRelLDCENTROCUSTOID: TStringField;
    sqldtsDeclaracaoVLRTOTALPESO: TFMTBCDField;
    sqldtsDeclaracaoNUMCONTRATOCAMBIO2: TStringField;
    sqldtsDeclaracaoDATACONTRATO2: TSQLTimeStampField;
    sqldtsDeclaracaoNUMCONTRATOCAMBIO3: TStringField;
    sqldtsDeclaracaoDATACONTRATO3: TSQLTimeStampField;
    sqldtsProcessoItemDATAEMBTOKIO: TSQLTimeStampField;
    sqldtsDeclaracaoVLRFRETEMARITIMOAEREO: TBCDField;
    sqldtsDeclaracaoVLRTAXAEMISSAOLI: TBCDField;
    sqldtsProcessoItemL_SIGLAGRUPO: TStringField;
    sqldtsMercadoriaALIQUOTAICMS: TFMTBCDField;
    sqldtsProcessoItemPARTNUMBERFABID: TStringField;
    sqldtsProcessoPROCESSOID: TBCDField;
    sqldtsProcessoTIPOPROCESSOID: TBCDField;
    sqldtsProcessoL_SIGLAPROCESSO: TStringField;
    sqldtsProcessoPROCESSOANTIGOID: TStringField;
    sqldtsProcessoEMPRESAID: TBCDField;
    sqldtsProcessoL_NOMEFANTASIA: TStringField;
    sqldtsProcessoIMPORTADORID: TBCDField;
    sqldtsProcessoL_NOMEIMPORTADOR: TStringField;
    sqldtsProcessoL_CEPIMPORTADOR: TBCDField;
    sqldtsProcessoL_ENDERECOIMPORTADOR: TStringField;
    sqldtsProcessoL_CIDADEIMPORTADOR: TStringField;
    sqldtsProcessoL_UFIMPORTADOR: TStringField;
    sqldtsProcessoCLIENTEID: TBCDField;
    sqldtsProcessoL_NOMECLIENTE: TStringField;
    sqldtsProcessoL_CEPCLIENTE: TBCDField;
    sqldtsProcessoL_ENDERECOCLIENTE: TStringField;
    sqldtsProcessoL_CIDADECLIENTE: TStringField;
    sqldtsProcessoL_UFCLIENTE: TStringField;
    sqldtsProcessoCONTATOJAPAOID: TBCDField;
    sqldtsProcessoL_DESTINATARIOJAPAO: TStringField;
    sqldtsProcessoL_DESTINATARIOEMAILJAPAO: TStringField;
    sqldtsProcessoL_DESTINATARIOCCJAPAO: TStringField;
    sqldtsProcessoL_DESTINATARIOCCEMAILJAPAO: TStringField;
    sqldtsProcessoL_REMETENTEJAPAO: TStringField;
    sqldtsProcessoSTATUS: TStringField;
    sqldtsProcessoREVISAO: TStringField;
    sqldtsProcessoLOCALFABRICACAO: TStringField;
    sqldtsProcessoOBSERVACAO: TStringField;
    sqldtsProcessoOBSERVACAOPO: TMemoField;
    sqldtsProcessoTIPOSERVICO: TStringField;
    sqldtsProcessoTIPOREQUISICAO: TStringField;
    sqldtsProcessoPERGUNTA1: TBCDField;
    sqldtsProcessoPERGUNTA2: TBCDField;
    sqldtsProcessoPERGUNTA3: TBCDField;
    sqldtsProcessoPERGUNTA4: TBCDField;
    sqldtsProcessoPERGUNTA5: TBCDField;
    sqldtsProcessoTIPOCATEGORIAID: TBCDField;
    sqldtsProcessoL_DESCRICAOTIPOCATEGORIA: TStringField;
    sqldtsProcessoRAZAOEXIGENCIAID: TBCDField;
    sqldtsProcessoL_DESCRICAORAZAOEXIGENCIA: TStringField;
    sqldtsProcessoFREQUENCIAID: TBCDField;
    sqldtsProcessoL_DESCRICAOFREQUENCIA: TStringField;
    sqldtsProcessoUSOMEDICO: TBCDField;
    sqldtsProcessoNUMREMESSA: TStringField;
    sqldtsProcessoNUMAGENTE: TStringField;
    sqldtsProcessoPAISDESTINO: TStringField;
    sqldtsProcessoNUMREFERCONSERTO: TBCDField;
    sqldtsProcessoLIBERACHEFIA: TBCDField;
    sqldtsProcessoNOMELIBERANTE: TStringField;
    sqldtsProcessoDATALIBERACAO: TSQLTimeStampField;
    sqldtsProcessoFORNECEDORID: TBCDField;
    sqldtsProcessoL_NOMEFORNECEDOR: TStringField;
    sqldtsProcessoL_CEPFORNECEDOR: TBCDField;
    sqldtsProcessoL_ENDERECOFORNECEDOR: TStringField;
    sqldtsProcessoL_CIDADEFORNECEDOR: TStringField;
    sqldtsProcessoL_UFFORNECEDOR: TStringField;
    sqldtsProcessoTERMOPAGTOID: TBCDField;
    sqldtsProcessoL_DESCRICAOTERMOPAGTO: TStringField;
    sqldtsProcessoNUMPROCESSOJAPAO: TStringField;
    sqldtsProcessoDATAPREVISAO: TSQLTimeStampField;
    sqldtsProcessoLOCALCHEGADAID: TBCDField;
    sqldtsProcessoL_DESCRICAOLOCALCHEGADA: TStringField;
    sqldtsProcessoVIAEMBARQUEID: TBCDField;
    sqldtsProcessoL_DESCRICAOVIAEMBARQUE: TStringField;
    sqldtsProcessoEMBARQUEMARCACAO: TStringField;
    sqldtsProcessoCOBERTURACAMBIAL: TBCDField;
    sqldtsProcessoAGRUPANCM: TBCDField;
    sqldtsProcessoUSUARIO: TStringField;
    sqldtsProcessoDATAPROCESSOID: TSQLTimeStampField;
    sqldtsProcessoItemDATAPROCESSOID: TSQLTimeStampField;
    sqldtsProcessoItemSerieDATAPROCESSOID: TSQLTimeStampField;
    sqldtsMercadoriaDATAPROCESSOID: TSQLTimeStampField;
    sqldtsProcessoItemDATAINSTRENVEMB: TSQLTimeStampField;
    sqldtsDeclaracaoVLROUTRASDESPESAS: TBCDField;
    sqldtsProcessoItemDATASOLICLI: TSQLTimeStampField;
    sqldtsProcessoItemDATAAUTORIZLI: TSQLTimeStampField;
    sqldtsDeclaracaoVLRIRRF: TBCDField;
    sqldtsDeclaracaoDATANFDESP: TSQLTimeStampField;
    sqldtsDeclaracaoVLRCSRF: TBCDField;
    sqldtsDeclaracaoVLRICMSANTECIPADO: TBCDField;
    sqldtsDeclaracaoVLRDESPCAPATAZIA: TBCDField;
  private
    { Private declarations }
    FSrvAppGSI: ISrvAppGSI;
    FSQLcnn: integer;
    procedure AtualizaFOBMercadoriaDI( DeclaracaoID : Integer; var sqlQry, sqlUpd : TSQLQuery );
    procedure SelectCIF_Fatores( DeclaracaoID : Integer; var sqlQry : TSQLQuery );
    procedure AtualizarAdicao( DeclaracaoID : Integer; Usuario : String; var sqlMer, sqlUpdate : TSQLQuery );
    procedure CalcCustoMercadoria( DeclaracaoID: Integer; const Usuario: String;
                sqlCnn: TSQLConnection );
  protected
    class procedure UpdateRegistry(Register: Boolean; const ClassID, ProgID: string); override;
    function Get_dmSrvAppGSI: ISrvAppGSI; safecall;
    procedure Set_dmSrvAppGSI(const Value: ISrvAppGSI); safecall;
    function Get_SQLcnn: Integer; safecall;
    procedure Set_SQLcnn(Value: Integer); safecall;
    function ITaxaDiaria(const Data, Campo: WideString): Currency; safecall;
    procedure ICalculoAdicao(DeclaracaoId: Integer; const Usuario: WideString); safecall;
    function ISQL_IT: OleVariant; safecall;
    function IResumoDI(DeclaracaoID: Integer;
      const Usuario: WideString): Integer; safecall;
    procedure IRecalculaListaPreco(const PartNumber: WideString); safecall;
  public
    { Public declarations }
  end;

var FSrvAppIT : TComponentFactory;

implementation

uses FuncoesServidor, FuncoesDsi, DateUtils;

{$R *.DFM}

class procedure TSrvAppIT.UpdateRegistry(Register: Boolean; const ClassID, ProgID: string);
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

function TSrvAppIT.Get_dmSrvAppGSI: ISrvAppGSI;
begin
 Result := FSrvAppGSI;
end;

procedure TSrvAppIT.Set_dmSrvAppGSI(const Value: ISrvAppGSI);
begin
 FSrvAppGSI := Value;
end;

function TSrvAppIT.ITaxaDiaria(const Data, Campo: WideString): Currency;
begin
 Result := TaxaDiaria(Data, Campo, TSQLConnection(FSQLcnn));
end;

procedure TSrvAppIT.AtualizaFOBMercadoriaDI( DeclaracaoID : Integer; var sqlQry, sqlUpd : TSQLQuery );
var TaxaDolar : Extended;
    VlrTotalSeguroTransp : Currency;

 procedure AtualVlrSeguroInter;
 begin
  TaxaDolar := sqlQry.FieldByName('DOLARFISCALDIARIO').AsFloat;

  if TaxaDolar > 0 then
     VlrTotalSeguroTransp := sqlQry.FieldByName('VLRSEGUROINTERNAC').AsFloat * TaxaDolar;

  if VlrTotalSeguroTransp < 1 then
     exit;

  // Atualizar cálculo do seguro transporte
  sqlUpd.SQL.Clear;
  sqlUpd.SQL.Add('UPDATE IT_DECLARACAO ');
  sqlUpd.SQL.Add('   SET  ' );
  sqlUpd.SQL.Add( ' VLRTOTALSEGUROTRANSP = ' + SubstituiString( FloatToStr( VlrTotalSeguroTransp ) ,',','.' ) );
  sqlUpd.SQL.Add( 'WHERE ' );
  sqlUpd.SQL.Add( ' DECLARACAOID = ' + IntToStr(DeclaracaoID) );
  sqlUpd.ExecSQL( False );
 end;

begin
 sqlQry.Close;
 sqlQry.SQL.Clear;
 sqlQry.SQL.Add('SELECT');
 sqlQry.SQL.Add('  IT_MERCADORIA.DECLARACAOID,');
 sqlQry.SQL.Add('  NVL( IT_DECLARACAO.VLRSEGUROINTERNAC, 0 ) AS VLRSEGUROINTERNAC ,');
 sqlQry.SQL.Add('  IT_MERCADORIA.MERCADORIAID,');
 sqlQry.SQL.Add('  ROUND( NVL( IT_MERCADORIA.VLRFOBUS, 0 ) * ');
 sqlQry.SQL.Add('         NVL( IT_INDICE.DOLARFISCALDIARIO, 0 ), 2 ) AS VLRNOVOFOB, ' );
 sqlQry.SQL.Add('  NVL( IT_INDICE.DOLARFISCALDIARIO, 0 ) AS DOLARFISCALDIARIO');
 sqlQry.SQL.Add('  FROM');
 sqlQry.SQL.Add('  IT_MERCADORIA IT_MERCADORIA,');
 sqlQry.SQL.Add('  IT_DECLARACAO IT_DECLARACAO,');
 sqlQry.SQL.Add('  IT_INDICE IT_INDICE');
 sqlQry.SQL.Add(' WHERE');
 sqlQry.SQL.Add('  IT_DECLARACAO.DECLARACAOID = IT_MERCADORIA.DECLARACAOID');
 sqlQry.SQL.Add('  AND IT_DECLARACAO.DATAREGISTRO = IT_INDICE.DATAID(+)');
 sqlQry.SQL.Add('  AND IT_MERCADORIA.DECLARACAOID = ' + IntToStr(DeclaracaoID) );
 sqlQry.Prepared := True;
 sqlQry.Open;

 AtualVlrSeguroInter;

 while not sqlQry.Eof do
 begin
  sqlUpd.SQL.Clear;
  sqlUpd.SQL.Add( 'UPDATE IT_MERCADORIA ' );
  sqlUpd.SQL.Add( 'SET ' );
  sqlUpd.SQL.Add( ' VLRFOB      = ' + SubstituiString( sqlQry.FieldByName('VLRNOVOFOB').AsString ,',','.' ) );
  sqlUpd.SQL.Add( 'WHERE ' );
  sqlUpd.SQL.Add( ' DECLARACAOID = ' + IntToStr(DeclaracaoID) );
  sqlUpd.SQL.Add( ' AND MERCADORIAID = ' + sqlQry.FieldByName('MERCADORIAID').AsString );
  sqlUpd.ExecSQL( False );

  sqlQry.Next
 end;

end;

procedure TSrvAppIT.SelectCIF_Fatores( DeclaracaoID : Integer; var sqlQry : TSQLQuery );
begin
 sqlQry.Close;
 sqlQry.SQL.Clear;
 sqlQry.SQL.Add('SELECT IT_MERCADORIA.MERCADORIAID,');
 sqlQry.SQL.Add('       IT_MERCADORIA.ALIQUOTAII,');
 sqlQry.SQL.Add('       IT_MERCADORIA.ALIQUOTAIPI,');
 sqlQry.SQL.Add('       IT_MERCADORIA.ALIQUOTAICMS,');
 sqlQry.SQL.Add('       IT_MERCADORIA.EMPRESAID,');
 sqlQry.SQL.Add('       IT_DECLARACAO.DATALIBERACAO,');
 sqlQry.SQL.Add('       IT_DECLARACAO.DATAREGISTRO,');
 sqlQry.SQL.Add('       IT_DECLARACAO.CREDITARICMS,');
 sqlQry.SQL.Add('       IT_DECLARACAO.ADMISSAOTEMP,');
 sqlQry.SQL.Add('       IT_DECLARACAO.VLRTOTALPESO,');
 sqlQry.SQL.Add('       IT_DECLARACAO.TAXASISCOMEX,');
 sqlQry.SQL.Add('       IT_DECLARACAO.FRETEPAGO,');
 sqlQry.SQL.Add('       IT_DECLARACAO.VLRDESPCAPATAZIA,');
 sqlQry.SQL.Add('       EF_NATUREZAOP.CALCULOPIS,');
 sqlQry.SQL.Add('       EF_NATUREZAOP.CALCULOCOFINS,');
 sqlQry.SQL.Add('       IT_DECLARACAO.VLRTOTALFOB,');
 sqlQry.SQL.Add('       IT_MERCADORIA.VLRFOB,');
 sqlQry.SQL.Add('       NVL(EF_PRODUTO.INCENTIVOICMS, 0) INCENTIVOICMS,');
 sqlQry.SQL.Add('       /* Valor do frete em Reais */');
 sqlQry.SQL.Add('       ROUND(( ( NVL(IT_DECLARACAO.VLRFRETE, 0) *');
 sqlQry.SQL.Add('            DECODE(IT_DECLARACAO.TIPOMOEDAFRETE, ''D'', IT_INDICE.DOLARFISCALDIARIO,');
 sqlQry.SQL.Add('                                                 ''Y'', ( IT_INDICE.YENEFISCALDIARIO / IT_INDICE.DOLARFISCALDIARIO ) * IT_INDICE.DOLARFISCALDIARIO');
 sqlQry.SQL.Add('                   )) * DECODE( IT_DECLARACAO.FRETEPAGO, 1, ( ( IT_MERCADORIA.PESOBRUTO / IT_DECLARACAO.VLRTOTALPESO ) )');
 sqlQry.SQL.Add('                                                       , 0, ( IT_MERCADORIA.PESOBRUTO / IT_DECLARACAO.VLRTOTALPESO ) )');
 sqlQry.SQL.Add('                    ), 10 )  AS FATOR_FRETE,');
 sqlQry.SQL.Add('       /* Valor do seguro em reais  */');
 sqlQry.SQL.Add('ROUND( ( ( ( IT_DECLARACAO.VLRSEGUROINTERNAC ) * IT_INDICE.DOLARFISCALDIARIO ) / (  IT_DECLARACAO.VLRTOTALFOB -');
 sqlQry.SQL.Add('  /* Valor do Frete em reais */');
 sqlQry.SQL.Add('  ( IT_DECLARACAO.VLRFRETE *');
 sqlQry.SQL.Add('     DECODE(IT_DECLARACAO.TIPOMOEDAFRETE, ''D'', IT_INDICE.DOLARFISCALDIARIO,');
 sqlQry.SQL.Add('                                          ''Y'', ( IT_INDICE.YENEFISCALDIARIO / IT_INDICE.DOLARFISCALDIARIO ) * IT_INDICE.DOLARFISCALDIARIO');
 sqlQry.SQL.Add('            )) * DECODE( IT_DECLARACAO.FRETEPAGO, 1, 1');
 sqlQry.SQL.Add('                                                , 0, 0 ) ) *');
 sqlQry.SQL.Add('            ( IT_MERCADORIA.VLRFOB -');
 sqlQry.SQL.Add('            /* Valor do frete em Reais */');
 sqlQry.SQL.Add('            ( ( NVL(IT_DECLARACAO.VLRFRETE, 0) *');
 sqlQry.SQL.Add('                       DECODE(IT_DECLARACAO.TIPOMOEDAFRETE, ''D'', IT_INDICE.DOLARFISCALDIARIO,');
 sqlQry.SQL.Add('                                                            ''Y'', ( IT_INDICE.YENEFISCALDIARIO / IT_INDICE.DOLARFISCALDIARIO ) * IT_INDICE.DOLARFISCALDIARIO');
 sqlQry.SQL.Add('                              )) * DECODE( IT_DECLARACAO.FRETEPAGO, 1, ( ( IT_MERCADORIA.PESOBRUTO / IT_DECLARACAO.VLRTOTALPESO ) )');
 sqlQry.SQL.Add('                                                                  , 0, ( IT_MERCADORIA.PESOBRUTO / IT_DECLARACAO.VLRTOTALPESO ) )');
 sqlQry.SQL.Add('             )');
 sqlQry.SQL.Add('             * DECODE( IT_DECLARACAO.FRETEPAGO, 1, 1');
 sqlQry.SQL.Add('                                               , 0, 0 ) ) ), 10 ) FATOR_SEGURO,');
 sqlQry.SQL.Add('     ROUND((IT_MERCADORIA.PESOBRUTO / IT_DECLARACAO.VLRTOTALPESO) * ' );
 sqlQry.SQL.Add('          (IT_DECLARACAO.VLRDESPCAPATAZIA * IT_INDICE.DOLARFISCALDIARIO), ');
 sqlQry.SQL.Add('                  10) FATOR_CAPATAZIA, ');
 sqlQry.SQL.Add('/* Novo rateio capatazia 28/12/2009 */ ' );
 sqlQry.SQL.Add('     ROUND((((IT_DECLARACAO.VLRDESPCAPATAZIA * IT_INDICE.DOLARFISCALDIARIO) /   ' );
 sqlQry.SQL.Add('             IT_DECLARACAO.VLRTOTALFOB ) ) *  IT_MERCADORIA.VLRFOB,10) FATOR_CAPATAZIA2, ');
 sqlQry.SQL.Add(' ROUND( IT_DECLARACAO.TAXASISCOMEX /');
 sqlQry.SQL.Add('             ( IT_DECLARACAO.VLRDESPCAPATAZIA  + IT_DECLARACAO.VLRTOTALFOB +');
 sqlQry.SQL.Add('             (-- Frete');
 sqlQry.SQL.Add('             (NVL(IT_DECLARACAO.VLRFRETE, 0) *');
 sqlQry.SQL.Add('              DECODE(IT_DECLARACAO.TIPOMOEDAFRETE, ''D'', IT_INDICE.DOLARFISCALDIARIO,');
 sqlQry.SQL.Add('                                                   ''Y'', (IT_INDICE.YENEFISCALDIARIO / IT_INDICE.DOLARFISCALDIARIO) *');
 sqlQry.SQL.Add('                      IT_INDICE.DOLARFISCALDIARIO)) +');
 sqlQry.SQL.Add('             -- Seguro');
 sqlQry.SQL.Add('             (NVL(IT_DECLARACAO.VLRSEGUROINTERNAC, 0) *');
 sqlQry.SQL.Add('              DECODE(IT_DECLARACAO.TIPOMOEDAFRETE, ''D'', IT_INDICE.DOLARFISCALDIARIO,');
 sqlQry.SQL.Add('                                                   ''Y'', (IT_INDICE.YENEFISCALDIARIO / IT_INDICE.DOLARFISCALDIARIO) *');
 sqlQry.SQL.Add('                                                   IT_INDICE.DOLARFISCALDIARIO)))) * IT_MERCADORIA.VLRCIF');
 sqlQry.SQL.Add('            , 10) AS FATOR_TAXASISCOMEX');
 sqlQry.SQL.Add('  FROM IT_MERCADORIA IT_MERCADORIA,');
 sqlQry.SQL.Add('       IT_DECLARACAO IT_DECLARACAO,');
 sqlQry.SQL.Add('       EF_NATUREZAOP,');
 sqlQry.SQL.Add('       EF_PRODUTO,');
 sqlQry.SQL.Add('       IT_INDICE');
 sqlQry.SQL.Add('  WHERE ');
 sqlQry.SQL.Add('        IT_MERCADORIA.DECLARACAOID = ' + IntToStr(DeclaracaoID) + ' AND ' );
 sqlQry.SQL.Add('        IT_DECLARACAO.DATAREGISTRO = IT_INDICE.DATAID(+) AND');
 sqlQry.SQL.Add('        IT_DECLARACAO.DECLARACAOID = IT_MERCADORIA.DECLARACAOID AND');
 sqlQry.SQL.Add('        IT_DECLARACAO.NATUREZAOPID = EF_NATUREZAOP.NATUREZAOPID(+) AND');
 sqlQry.SQL.Add('        IT_MERCADORIA.EMPRESAID = EF_PRODUTO.EMPRESAID AND');
 sqlQry.SQL.Add('        IT_MERCADORIA.PRODUTOID = EF_PRODUTO.PRODUTOID');
 sqlQry.Prepared := True;
 sqlQry.Open;
end;

procedure TSrvAppIT.AtualizarAdicao( DeclaracaoID : Integer; Usuario : String; var sqlMer,
 sqlUpdate : TSQLQuery );
var ItemId : Integer;
begin
 sqlMer.Close;
 sqlMer.SQL.Clear;
 sqlMer.SQL.Add('SELECT IT_MERCADORIA.NCMID,' );
 sqlMer.SQL.Add('       NVL( IT_MERCADORIA.ALIQUOTAIPI, 0 ) AS ALIQUOTAIPI,' );
 sqlMer.SQL.Add('       NVL( IT_MERCADORIA.ALIQUOTAII, 0 ) AS ALIQUOTAII,' );
 sqlMer.SQL.Add('       SUM( NVL( IT_MERCADORIA.VLRFOBUS, 0 ) ) AS VLRFOBUS,' );
 sqlMer.SQL.Add('       SUM( NVL( IT_MERCADORIA.VLRFOB, 0 ) ) AS VLRFOB,' );
 sqlMer.SQL.Add('       SUM( NVL( IT_MERCADORIA.PESOBRUTO, 0 ) ) AS PESOBRUTO, ' );
 sqlMer.SQL.Add('       SUM( NVL( IT_MERCADORIA.VLRCIF, 0 ) ) AS VLRCIF,' );
 sqlMer.SQL.Add('       SUM( NVL( IT_MERCADORIA.VLRIPI, 0 ) ) AS VLRIPI, ' );
 sqlMer.SQL.Add('       SUM( ( NVL( IT_MERCADORIA.VLRCIF, 0 ) * NVL( IT_MERCADORIA.ALIQUOTAII, 0 ) ) / 100  ) AS VLRII, ' );
 sqlMer.SQL.Add('       SUM( NVL( IT_MERCADORIA.VLRPIS, 0 ) ) AS VLRPIS,' );
 sqlMer.SQL.Add('       SUM( NVL( IT_MERCADORIA.VLRCOFINS, 0 ) ) AS VLRCOFINS' );
 sqlMer.SQL.Add('  FROM IT_MERCADORIA IT_MERCADORIA ' );
 sqlMer.SQL.Add(' WHERE IT_MERCADORIA.DECLARACAOID = ' + IntToStr(DeclaracaoId) );
 sqlMer.SQL.Add(' GROUP BY IT_MERCADORIA.NCMID,' );
 sqlMer.SQL.Add('       IT_MERCADORIA.ALIQUOTAIPI,' );
 sqlMer.SQL.Add('       IT_MERCADORIA.ALIQUOTAII ' );
 sqlMer.SQL.Add(' ORDER BY IT_MERCADORIA.NCMID' );
 sqlMer.Prepared := True;
 sqlMer.Open;

 ItemId := 0;
 while not sqlMer.Eof do
 begin
  Inc( ItemId );

  sqlUpdate.SQL.Clear;
  sqlUpdate.SQL.Add( 'INSERT INTO ' );
  sqlUpdate.SQL.Add( ' IT_ADICAO( DECLARACAOID, ADICAOID, NCMID, PESOLIQUIDO, ' );
  sqlUpdate.SQL.Add( '            VLRFOBUS, VLRFOB, VLRCIF, ALIQUOTAII, ALIQUOTAIPI, ' );
  sqlUpdate.SQL.Add( '            VLRII, VLRIPI, USUARIO ) ' );
  sqlUpdate.SQL.Add( '   VALUES ( ' + IntToStr(DeclaracaoID) + ', ' );
  sqlUpdate.SQL.Add( '            ' + IntToStr( ItemId ) + ', ' );
  sqlUpdate.SQL.Add( '            ' + QuotedStr( sqlMer.FieldByName('NCMID').AsString ) + ', ' );
  sqlUpdate.SQL.Add( '            ' + SubstituiString( sqlMer.FieldByName('PESOBRUTO').AsString,   ',', '.' ) + ', ' );
  sqlUpdate.SQL.Add( '            ' + SubstituiString( sqlMer.FieldByName('VLRFOBUS').AsString,    ',', '.' ) + ', ' );
  sqlUpdate.SQL.Add( '            ' + SubstituiString( sqlMer.FieldByName('VLRFOB').AsString,      ',', '.' ) + ', ' );
  sqlUpdate.SQL.Add( '            ' + SubstituiString( sqlMer.FieldByName('VLRCIF').AsString,      ',', '.' ) + ', ' );
  sqlUpdate.SQL.Add( '            ' + SubstituiString( sqlMer.FieldByName('ALIQUOTAII').AsString,  ',', '.' ) + ', ' );
  sqlUpdate.SQL.Add( '            ' + SubstituiString( sqlMer.FieldByName('ALIQUOTAIPI').AsString, ',', '.' ) + ', ' );
  sqlUpdate.SQL.Add( '            ' + SubstituiString( sqlMer.FieldByName('VLRII').AsString,       ',', '.' ) + ', ' );
  sqlUpdate.SQL.Add( '            ' + SubstituiString( sqlMer.FieldByName('VLRIPI').AsString,      ',', '.' ) + ', ' );
  sqlUpdate.SQL.Add( '            ' + QuotedStr( Usuario ) + ' )' );
  sqlUpdate.ExecSQL( False );
  sqlMer.Next;
 end;

 sqlMer.Close;
end;

procedure TSrvAppIT.ICalculoAdicao(DeclaracaoId: Integer;
  const Usuario: WideString);
var sqlMer, sqlMerFOB, sqlUpdate: TSQLQuery;
    BaseIPI, VlrIPI, VlrII, VlrCif, VlrPIS, VlrCOFINS : Real48;
    BaseICMS, BaseICMS2,BasePISCOFINS, VlrICMS : Real48;
    X, Y, Aliq_ICMS, Aliq_PIS, Aliq_COFINS, Coef_PIS_Cofins : Real48;
    Aliq_II, Aliq_IPI, PropContrib,Porc_TX: Real48;
    TotalPIS, TotalCOFINS, TotalIPI, TotalCIF, TotalII, TotalICMS : Real48;
begin
 sqlMer := TSQLQuery.Create(nil);
 sqlMer.SQLConnection := TSQLConnection(FSQLcnn);

 sqlMerFOB := TSQLQuery.Create(nil);
 sqlMerFOB.SQLConnection := TSQLConnection(FSQLcnn);

 sqlUpdate := TSQLQuery.Create(nil);
 sqlUpdate.SQLConnection := TSQLConnection(FSQLcnn);
 try
  try // Except
   // Inicia transação
   TSQLConnection(FSQLcnn).StartTransaction(TD);

   // Apagar as Adições
   sqlUpdate.SQL.Clear;
   sqlUpdate.SQL.Add( 'DELETE ' );
   sqlUpdate.SQL.Add( '  FROM IT_ADICAO ' );
   sqlUpdate.SQL.Add( ' WHERE DECLARACAOID = ' + IntToStr(DeclaracaoID));
   sqlUpdate.ExecSQL( False );

   // Atualizar direto a Declaracao com sqlupdate !
   sqlUpdate.SQL.Clear;
   sqlUpdate.SQL.Add('UPDATE IT_DECLARACAO ');
   sqlUpdate.SQL.Add('   SET ( VLRTOTALFOB, VLRTOTALFOBUS, VLRTOTALPESO ) = ' );
   sqlUpdate.SQL.Add('( SELECT ' );
   sqlUpdate.SQL.Add('   SUM( NVL( IT_MERCADORIA.VLRFOB, 0 ) ) AS VLRFOB,' );
   sqlUpdate.SQL.Add('   SUM( NVL( IT_MERCADORIA.VLRFOBUS, 0 ) ) AS VLRFOBUS,' );
   sqlUpdate.SQL.Add('   SUM( NVL( IT_MERCADORIA.PESOBRUTO, 0 ) ) AS PESOBRUTO' );
   sqlUpdate.SQL.Add('  FROM IT_MERCADORIA IT_MERCADORIA ' );
   sqlUpdate.SQL.Add(' WHERE IT_MERCADORIA.DECLARACAOID = ' + IntToStr(DeclaracaoId) + ')' );
   sqlUpdate.SQL.Add('WHERE DECLARACAOID = ' + IntToStr(DeclaracaoId) );
   sqlUpdate.ExecSQL( False );

   // Atualizar FOB atual da mercadoria
   AtualizaFOBMercadoriaDI( DeclaracaoID, sqlMerFOB, sqlUpdate );

   // Selecionar as mercadorias já resolvendo o cálculo dos CIF + fatores
   SelectCIF_Fatores( DeclaracaoID, sqlMer );

   // Calculo DO PIS / COFINS
   if sqlMer.FieldByName('CALCULOPIS').AsInteger = 1 then
      Aliq_PIS    := ( AliquotaImposto('PIS', TSQLConnection( FSQLcnn ) ) / 100 )
   else
      Aliq_PIS    := 0;

   if sqlMer.FieldByName('CALCULOCOFINS').AsInteger = 1 then
      Aliq_COFINS := ( AliquotaImposto('COFINS', TSQLConnection( FSQLcnn ) ) / 100 )
   else
      Aliq_COFINS := 0;

   TotalPIS    := 0;
   TotalCOFINS := 0;
   TotalIPI    := 0;
   TotalCIF    := 0;
   TotalII     := 0;
   TotalICMS   := 0;

   while not sqlMer.Eof do
   begin
    // Admissão temporária
    Aliq_ICMS := ( sqlMer.FieldByName('ALIQUOTAICMS').AsFloat / 100 );

    VlrCif    := sqlMer.FieldByName('VLRFOB').AsFloat + sqlMer.FieldByName('FATOR_SEGURO').AsFloat +
                 sqlMer.FieldByName('FATOR_CAPATAZIA').AsFloat;

    if sqlMer.FieldByName('FRETEPAGO').AsInteger = 0 then
       VlrCif := VlrCif + sqlMer.FieldByName('FATOR_FRETE').AsFloat;

    Aliq_II  := ( sqlMer.FieldByName('ALIQUOTAII').AsFloat / 100 );
    Aliq_IPI := ( sqlMer.FieldByName('ALIQUOTAIPI').AsFloat / 100 );

    VlrII    := ( VlrCIF * Aliq_II );
    BaseIPI  := ( VlrCIF + VlrII );
    VlrIPI   := BaseIPI * Aliq_IPI;

    if      ( sqlMer.FieldByName('DATALIBERACAO').AsDateTime > StrToDate('28/06/2005') ) and
            ( sqlMer.FieldByName('DATALIBERACAO').AsDateTime <= StrToDate('27/10/2005') ) then
            begin
             // Calculando o Vlr da Base de Comissao para o Pis e Cofins
             X         := ( VlrCif + VlrII + VlrIPI );
             BaseICMS2 := ( X / ( ( 100 - ( Aliq_ICMS * 100 ) )/100 ) * ( Aliq_ICMS ) );

             // Calculando a Base do PIS e COFINS
             PropContrib   :=  ( 100 - ( ( Aliq_PIS * 100 ) + ( Aliq_COFINS * 100 ) ) ) /100;
             BasePISCOFINS := ( VlrCif + BaseICMS2 )/PropContrib;

             // Obtendo o Pis e COfins
             VlrPIS     := BasePISCOFINS * Aliq_PIS;
             VlrCOFINS  := BasePISCOFINS * Aliq_COFINS;

             // Calculando a porcentagem da Taxa SisComex
             Porc_TX    := ( sqlMer.FieldByName('VLRFOB').AsFloat / sqlMer.FieldByName('VLRTOTALFOB').AsFloat ) * sqlMer.FieldByName('TAXASISCOMEX').AsFloat;
             // Porc_TX    := sqlMer.FieldByName('FATOR_TAXASISCOMEX').AsFloat;

             // Calculando a Base de Cálculo do ICMS
             if sqlMer.FieldByName('DATAREGISTRO').AsDateTime >= StrToDate('01/01/2002') then
                BaseICMS := ( VlrCif + VlrII + VlrIPI + VlrPIS + VlrCOFINS +  Porc_TX ) / ( ( 100 - ( Aliq_ICMS * 100 ) )/100 )
             else
                BaseICMS := ( BaseIPI + VlrIPI );
            end
   else if ( sqlMer.FieldByName('DATALIBERACAO').AsDateTime >=  StrToDate('24/11/2005') ) then
            begin
             // Admissão temporária
             if sqlMer.FieldByName('ADMISSAOTEMP').AsInteger = 0 then
                X := ((1+Aliq_ICMS*(Aliq_II+Aliq_IPI*(1+Aliq_II)))/
                       ( (1-Aliq_PIS-Aliq_COFINS) * (1-Aliq_ICMS)))
              else
                X := 0;

             VlrCOFINS :=  Aliq_COFINS * ( VlrCif * X );
             VlrPIS    :=  Aliq_PIS * ( VlrCif * X );

             // Calculando a porcentagem da Taxa SisComex
             Porc_TX    := ( sqlMer.FieldByName('VLRFOB').AsFloat / sqlMer.FieldByName('VLRTOTALFOB').AsFloat ) * sqlMer.FieldByName('TAXASISCOMEX').AsFloat;
             // Porc_TX    := sqlMer.FieldByName('FATOR_TAXASISCOMEX').AsFloat;

             // Base de Cálculo do ICMS
             if sqlMer.FieldByName('DATAREGISTRO').AsDateTime >= StrToDate('01/01/2002') then
                BaseICMS := ( Porc_TX + BaseIPI + VlrIPI + VlrPIS + VlrCOFINS ) / ( ( 100 - ( Aliq_ICMS * 100 ) )/100 )
             else
                BaseICMS := ( BaseIPI + VlrIPI );
            end
   else
            begin
             // Admissão temporária
             if sqlMer.FieldByName('ADMISSAOTEMP').AsInteger = 0 then
                begin
                 X := ((1+Aliq_ICMS*(Aliq_II+Aliq_IPI*(1+Aliq_II)))/(1-Aliq_PIS-Aliq_COFINS-Aliq_ICMS));
                 Y := (Aliq_ICMS)/(1-Aliq_PIS-Aliq_COFINS-Aliq_ICMS);
                end
             else
                begin
                 X := 0;
                 Y := 0;
                end;

             // Porcentagem de representação do valor FOB em R$ sobre o CIF e Taxa SISCOMEX das mercadorias
             Porc_TX    := ( sqlMer.FieldByName('VLRFOB').AsFloat / sqlMer.FieldByName('VLRTOTALFOB').AsFloat ) * sqlMer.FieldByName('TAXASISCOMEX').AsFloat;
             // Porc_TX    := sqlMer.FieldByName('FATOR_TAXASISCOMEX').AsFloat;

             Coef_PIS_Cofins := ( VlrCif * X ) + ( Porc_TX * Y );

             // Data inicio do tributação do COFINS / PIS
             if sqlMer.FieldByName('DATALIBERACAO').AsDateTime >= StrToDate( '01/05/2004') then
                begin
                 VlrCOFINS := Coef_PIS_Cofins * Aliq_COFINS;
                 VlrPIS    := Coef_PIS_Cofins * Aliq_PIS;
                end
             else
                begin
                 VlrCOFINS := 0;
                 VlrPIS    := 0;
                end;

             // Base de Cálculo do ICMS
             if sqlMer.FieldByName('DATAREGISTRO').AsDateTime >= StrToDate('01/01/2002') then
                BaseICMS := ( Porc_TX + BaseIPI + VlrIPI + VlrPIS + VlrCOFINS ) / ( ( 100 - ( Aliq_ICMS * 100 ) )/100 )
             else
                BaseICMS := ( BaseIPI + VlrIPI );
            end;

    // Beneficio do PRODETE não calcular ICMS
    if sqlMer.FieldByName('INCENTIVOICMS').AsInteger = 0 then
       begin
        if sqlMer.FieldByName('CREDITARICMS').AsInteger = 1 then
           VlrICMS := ( BaseICMS * Aliq_ICMS )
        else
           VlrICMS := 0;
       end
    else
       VlrICMS := 0;

    sqlUpdate.SQL.Clear;
    sqlUpdate.SQL.Add( 'UPDATE IT_MERCADORIA ' );
    sqlUpdate.SQL.Add( 'SET ' );
    sqlUpdate.SQL.Add( ' VLRCIF      = ' + SubstituiString( FloatToStr( VlrCIF ),',','.' ) + ',' );
    sqlUpdate.SQL.Add( ' VLRBASEIPI  = ' + SubstituiString( FloatToStr( BaseIPI ),',','.' ) + ',' );
    sqlUpdate.SQL.Add( ' VLRIPI      = ' + SubstituiString( FloatToStr( VlrIPI ),',','.' ) + ',' );
    sqlUpdate.SQL.Add( ' VLRBASEICMS = ' + SubstituiString( FloatToStr( BaseICMS ),',','.' ) + ',' );
    sqlUpdate.SQL.Add( ' VLRICMS     = ' + SubstituiString( FloatToStr( VlrICMS ),',','.' ) + ',' );
    sqlUpdate.SQL.Add( ' VLRPIS      = ' + SubstituiString( FloatToStr( VlrPIS),',','.' ) + ',' );
    sqlUpdate.SQL.Add( ' VLRCOFINS   = ' + SubstituiString( FloatToStr( VlrCOFINS ),',','.' ) );
    sqlUpdate.SQL.Add( 'WHERE ' );
    sqlUpdate.SQL.Add( ' DECLARACAOID = ' + IntToStr(DeclaracaoID) );
    sqlUpdate.SQL.Add( ' AND MERCADORIAID = ' + sqlMer.FieldByName('MERCADORIAID').AsString );
    sqlUpdate.ExecSQL( False );

    TotalPIS    := TotalPIS + VlrPIS;
    TotalCOFINS := TotalCOFINS + VlrCOFINS;
    TotalIPI    := TotalIPI + VlrIPI;
    TotalCIF    := TotalCIF + VlrCif;
    TotalII     := TotalII + VlrII;
    TotalICMS   := TotalICMS + VlrICMS;

    sqlMer.Next;
   end;

   // Atualizar direto a Declaracao com sqlupdate !
   sqlUpdate.SQL.Clear;
   sqlUpdate.SQL.Add('UPDATE IT_DECLARACAO SET');
   sqlUpdate.SQL.Add( ' VLRTOTALPIS      = ' + SubstituiString( FloatToStr( TotalPIS ),',','.' ) + ',' );
   sqlUpdate.SQL.Add( ' VLRTOTALCOFINS   = ' + SubstituiString( FloatToStr( TotalCOFINS ),',','.' ) + ',' );
   sqlUpdate.SQL.Add( ' VLRTOTALCIF      = ' + SubstituiString( FloatToStr( TotalCIF ),',','.' ) + ',' );
   sqlUpdate.SQL.Add( ' VLRTOTALIPI      = ' + SubstituiString( FloatToStr( TotalIPI ),',','.' ) + ',' );
   sqlUpdate.SQL.Add( ' VLRDESPESAII     = ' + SubstituiString( FloatToStr( TotalII ),',','.' ) + ',' );
   sqlUpdate.SQL.Add( ' VLRTOTALICMS     = ' + SubstituiString( FloatToStr( TotalICMS ),',','.' ) + ',' );
   sqlUpdate.SQL.Add('  VLRDESPESADESEMB = NVL( VLRTOTALDESPDESP, 0 ) - ' +
                                           SubstituiString( FloatToStr( TotalII ) ,',','.' ) + ' - ' +
                                           SubstituiString( FloatToStr( TotalIPI ) ,',','.' ) + ' - ' +
                                           SubstituiString( FloatToStr( TotalICMS ) ,',','.' ) );
   sqlUpdate.SQL.Add('WHERE DECLARACAOID = ' + IntToStr(DeclaracaoId) );
   sqlUpdate.ExecSQL( False );

   // Atualizar Adições conforme as mercadorias
   AtualizarAdicao( DeclaracaoID, Usuario, sqlMer, sqlUpdate );

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
  FreeAndNil( sqlMer );
  FreeAndNil( sqlMerFOB );
  FreeAndNil( sqlUpdate );
 end;
end;

function TSrvAppIT.ISQL_IT: OleVariant;
var cdsGeral : TClientDataSet;
    i : Integer;
begin
 Result := '';
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
          cdsGeral.FieldByName('SQL').AsString  := ((Components[i] as TDataSetProvider).DataSet as TSQLDataSet).CommandText;
          cdsGeral.Post;
         end;
  Result := cdsGeral.Data;
 finally
  FreeAndNil(cdsGeral);
 end;
end;

function TSrvAppIT.Get_SQLcnn: Integer;
begin
 Result := FSQLcnn;
end;

procedure TSrvAppIT.Set_SQLcnn(Value: Integer);
var i: integer;
begin
 FSQLcnn := Value;
 for i:=0 to ComponentCount-1 do
     if Components[i] is TSQLDataSet then
        TSQLDataSet(Components[i]).SQLConnection := TSQLConnection(FSQLcnn)
     else if Components[i] is TSQLStoredProc then
        TSQLStoredProc(Components[i]).SQLConnection := TSQLConnection(FSQLcnn);
end;

function TSrvAppIT.IResumoDI(DeclaracaoID: Integer;
  const Usuario: WideString): Integer;
var ValorICMS, ValorImobilizado, VlrIcmsAntecip : Real;
    sqlDI, sqlMer, sqlUpdate: TSQLQuery;
begin
 sqlDI := TSQLQuery.Create(nil);
 sqlDI.SQLConnection := TSQLConnection(FSQLcnn);

 sqlMer := TSQLQuery.Create(nil);
 sqlMer.SQLConnection := TSQLConnection(FSQLcnn);

 sqlUpdate := TSQLQuery.Create(nil);
 sqlUpdate.SQLConnection := TSQLConnection(FSQLcnn);

 try
  try // Except

   sqlDI.SQL.Clear;
   sqlDI.SQL.Add('SELECT IT_DECLARACAO.EMPRESAID, ');
   sqlDI.SQL.Add('       IT_DECLARACAO.RESTITUIRICMS, ');
   sqlDI.SQL.Add('       IT_DECLARACAO.ATIVOFIXO, ');
   sqlDI.SQL.Add('       IT_DECLARACAO.AGREGARVLRFOB, ');
   sqlDI.SQL.Add('       IT_DECLARACAO.FOBANTECIPADO, ');
   sqlDI.SQL.Add('       IT_DECLARACAO.ADMISSAOTEMP, ');
   sqlDI.SQL.Add('       IT_DECLARACAO.AGREGARFRETE, ');
   sqlDI.SQL.Add('       IT_DECLARACAO.MATERIALCONSUMO, ');
   sqlDI.SQL.Add('       IT_DECLARACAO.TAXAFOBANTECIPADO, ');
   sqlDI.SQL.Add('       IT_DECLARACAO.VLRICMSANTECIPADO, ');
   sqlDI.SQL.Add('       NVL( IT_INDICE.DOLARFISCALDIARIO, 0 ) AS DOLARFISCALDIARIO, ');
   sqlDI.SQL.Add('       NVL( IT_INDICE.YENEFISCALDIARIO, 0 ) AS YENEFISCALDIARIO ');
   sqlDI.SQL.Add('  FROM IT_DECLARACAO IT_DECLARACAO, ');
   sqlDI.SQL.Add('       IT_INDICE IT_INDICE ');
   sqlDI.SQL.Add(' WHERE IT_DECLARACAO.DECLARACAOID = ' + IntToStr(DeclaracaoID));
   sqlDI.SQL.Add('   AND IT_DECLARACAO.DATAREGISTRO = IT_INDICE.DATAID(+) ');
   sqlDI.Prepared := True;
   sqlDI.Open;

   TSQLConnection(FSQLcnn).StartTransaction(TD);

   // Calcula Custo da Mercadoria
   CalcCustoMercadoria( DeclaracaoId, Usuario, TSQLConnection(FSQLcnn) );

   sqlMer.SQL.Add('SELECT EF_SUBGRUPO.TIPO, ');
   sqlMer.SQL.Add('       IT_MERCADORIA.* ');
   sqlMer.SQL.Add('  FROM IT_MERCADORIA IT_MERCADORIA, ');
   sqlMer.SQL.Add('       EF_PRODUTO EF_PRODUTO, ');
   sqlMer.SQL.Add('       EF_SUBGRUPO EF_SUBGRUPO ');
   sqlMer.SQL.Add(' WHERE  ' );
   sqlMer.SQL.Add('       EF_PRODUTO.EMPRESAID(+) = IT_MERCADORIA.EMPRESAID ');
   sqlMer.SQL.Add('   AND EF_PRODUTO.PRODUTOID(+) = IT_MERCADORIA.PRODUTOID ');
   sqlMer.SQL.Add('   AND EF_SUBGRUPO.SUBGRUPOID(+) = EF_PRODUTO.SUBGRUPOID ');
   sqlMer.SQL.Add('   AND IT_MERCADORIA.DECLARACAOID = ' + IntToStr(DeclaracaoID) );
   sqlMer.Prepared := True;
   sqlMer.Open;

   sqlUpdate.SQL.Clear;
   sqlUpdate.SQL.Add('UPDATE IT_DECLARACAO ');
   sqlUpdate.SQL.Add('   SET VlrTotalICMS = 0, ');
   sqlUpdate.SQL.Add('       VlrTotalCustoAparelho = 0, ');
   sqlUpdate.SQL.Add('       VlrTotalCustoPeca = 0, ');
   sqlUpdate.SQL.Add('       VlrTotalMaqEquip = 0, ');
   sqlUpdate.SQL.Add('       VlrTotalFerramental = 0, ');
   sqlUpdate.SQL.Add('       VlrTotalMovUtensilios = 0, ');
   sqlUpdate.SQL.Add('       VlrTotalAdmTemp = 0, ');
   sqlUpdate.SQL.Add('       VLRTOTALFOB2 = 0, ');
   sqlUpdate.SQL.Add('       VLRTOTALFOBANT = 0, ');
   sqlUpdate.SQL.Add('       VlrTotalCIF2 = 0, ');
   sqlUpdate.SQL.Add('       VlrTotalCIFAnt = 0, ');
   sqlUpdate.SQL.Add('       VlrTotalPIS = 0, ');
   sqlUpdate.SQL.Add('       VlrTotalCOFINS = 0 ');
   sqlUpdate.SQL.Add(' WHERE DECLARACAOID = ' + IntToStr(DeclaracaoID) );
   sqlUpdate.ExecSQL( False );

   while not sqlMer.Eof do
   begin
    sqlUpdate.SQL.Clear;
    sqlUpdate.SQL.Add('UPDATE IT_DECLARACAO SET ');

    { Lançamentos contábeis Crédito }
    { Total do IPI
    if not ( sqlDI.FieldByName('EmpresaID').AsInteger in [3, 4, 5] ) then
       sqlUpdate.SQL.Add(' VlrTotalIPI = VlrTotalIPI + ' + SubstituiString( sqlMer.FieldByName('VlrIPI').AsString, ',', '.' ) + ', ');}

    { Total do ICMS }
    if not ( ( sqlDI.FieldByName('RestituirICMS').Value = 1 ) or ( sqlDI.FieldByName('EmpresaID').AsInteger in [3, 4, 5] ) ) then
       sqlUpdate.SQL.Add(' VlrTotalICMS = VlrTotalICMS + ' + SubstituiString( sqlMer.FieldByName('VlrICMS').AsString, ',', '.' ) + ', ');

    { Total custo de Aparelhos / Peças }
    { Verificar se natureza de Operação 3.91 para Ativo Fixo }
    if ( sqlDI.FieldByName('AtivoFixo').AsInteger = 0 ) and not ( sqlDI.FieldByName('EmpresaID').AsInteger in [3,4,5] ) and
       ( sqlMer.FieldByName('Imobilizado').AsInteger = 0 ) and ( sqlDI.FieldByName('AdmissaoTemp').AsInteger = 0 ) then
       begin
        if      sqlMer.FieldByName('TIPO').AsString = 'A' then  // Tipo
                sqlUpdate.SQL.Add(' VlrTotalCustoAparelho = VlrTotalCustoAparelho + ' + SubstituiString( sqlMer.FieldByName('VLRCUSTOMOVIMENTO').AsString, ',', '.' ) + ', ' )
        else if sqlMer.FieldByName('TIPO').AsString = 'C' then
                sqlUpdate.SQL.Add(' VlrTotalCustoPeca = VlrTotalCustoPeca + ' + SubstituiString( sqlMer.FieldByName('VLRCUSTOMOVIMENTO').AsString, ',', '.' ) + ', ' )
        else
          raise Exception.Create('Mercadoria ' +  sqlMer.FieldByName('PRODUTOID').AsString + 'não classificado como aparelho / componente' );
       end;

    { Verificar se natureza de Operação 3.91 para Ativo Fixo }
    if sqlDI.FieldByName('AtivoFixo').AsInteger = 0 then
       ValorICMS  := sqlMer.FieldByName('VlrICMS').AsFloat
    else
       ValorICMS  := 0;

    { Apurar valor imobilizado }
    ValorImobilizado := ( sqlMer.FieldByName('VlrIPI').AsFloat +
                          sqlMer.FieldByName('VlrCustoMovimento').AsFloat ) +
                          ValorICMS;

    { Material de consumo }
    if ( sqlDI.FieldByName('MATERIALCONSUMO').AsInteger = 1 ) then
       begin
        ValorImobilizado := ValorImobilizado + sqlMer.FieldByName('VLRPIS').AsCurrency +
                            sqlMer.FieldByName('VLRCOFINS').AsCurrency;
       end
    else
       begin
        sqlUpdate.SQL.Add(' VlrTotalPIS    = VlrTotalPIS    + ' + SubstituiString( FloatToStr( sqlMer.FieldByName('VlrFrete').AsFloat + sqlMer.FieldByName('VlrPIS').AsFloat ), ',', '.' ) + ', ' );
        sqlUpdate.SQL.Add(' VlrTotalCOFINS = VlrTotalCOFINS + ' + SubstituiString( FloatToStr( sqlMer.FieldByName('VlrFrete').AsFloat + sqlMer.FieldByName('VlrCOFINS').AsFloat ), ',', '.' ) + ', ' );
       end;

    if ( sqlMer.FieldByName('Imobilizado').AsInteger = 1 ) then
       begin
        { Maquina e Equipamentos }
        if      ( sqlMer.FieldByName('TipoMaterial').AsString = 'ME' ) then
                sqlUpdate.SQL.Add(' VlrTotalMaqEquip = VlrTotalMaqEquip + ' + SubstituiString( FloatToStr( ValorImobilizado ), ',', '.' ) + ', ' )
        { Ferramental }
        else if ( sqlMer.FieldByName('TipoMaterial').AsString = 'FR' ) then
                sqlUpdate.SQL.Add(' VlrTotalFerramental = VlrTotalFerramental + ' + SubstituiString( FloatToStr( ValorImobilizado ), ',', '.' ) + ', ' )
        { Móveis e Utensílios }
        else if ( sqlMer.FieldByName('TipoMaterial').AsString = 'MU' ) then
                sqlUpdate.SQL.Add(' VlrTotalMovUtensilios = VlrTotalMovUtensilios + ' +  SubstituiString( FloatToStr( ValorImobilizado ), ',', '.' ) + ', ' );
       end;

    { Admissão Temporária }
    if ( sqlDI.FieldByName('AdmissaoTemp').AsInteger = 1 ) or ( sqlDI.FieldByName('EmpresaID').AsInteger in [3, 4, 5] )  then
       sqlUpdate.SQL.Add(' VlrTotalAdmTemp = VlrTotalAdmTemp + ' + SubstituiString( FloatToStr( ValorImobilizado ), ',', '.' ) + ', ' );

    { Lançamentos contábeis Débito }
    { Valor FOB }
    if ( sqlDI.FieldByName('AgregarVlrFob').AsInteger = 1 ) and ( sqlDI.FieldByName('AgregarFrete').AsInteger = 0 ) and ( sqlDI.FieldByName('FobAntecipado').AsInteger = 0 ) then
       sqlUpdate.SQL.Add(' VlrTotalFOB2 = VlrTotalFOB2 + ' + SubstituiString( sqlMer.FieldByName('VlrFOB').AsString, ',', '.' ) + ', ' );

    { Valor FOB Antecipado }
    if ( sqlDI.FieldByName('FobAntecipado').AsInteger = 1 ) and ( sqlDI.FieldByName('AgregarVlrFob').AsInteger = 1 ) and ( sqlDI.FieldByName('AgregarFrete').AsInteger = 0 ) then
       if sqlDI.FieldByName('TaxaFobAntecipado').AsFloat > 0 then
          sqlUpdate.SQL.Add(' VlrTotalFOBAnt = VlrTotalFOBAnt + ' +
                              SubstituiString( FloatToStr( sqlMer.FieldByName('VlrFobUS').AsFloat *
                                                           sqlDI.FieldByName('TaxaFobAntecipado').AsFloat ), ',', '.' ) + ', ' );
    { Valor CIF }
    if ( sqlDI.FieldByName('FobAntecipado').AsInteger = 0 ) and ( sqlDI.FieldByName('AgregarVlrFob').AsInteger = 1 ) and ( sqlDI.FieldByName('AgregarFrete').Value = 1 ) then
       sqlUpdate.SQL.Add(' VlrTotalCIF2 = VlrTotalCIF2 + ' + SubstituiString( FloatToStr( sqlMer.FieldByName('VlrFrete').AsFloat + sqlMer.FieldByName('VlrFOB').AsFloat ), ',', '.' ) + ', ' );

    { Valor CIF Antecipado }
    if ( sqlDI.FieldByName('FobAntecipado').AsInteger = 1 ) and ( sqlDI.FieldByName('AgregarVlrFob').AsInteger = 1 ) and ( sqlDI.FieldByName('AgregarFrete').Value = 1 ) then
       sqlUpdate.SQL.Add(' VlrTotalCIFAnt = VlrTotalCIFAnt + ' + SubstituiString( sqlMer.FieldByName('VlrFOB').AsString, ',', '.' ) + ', ' );

    sqlUpdate.SQL.Add( 'USUARIO = ' + QuotedStr( Usuario ) );
    sqlUpdate.SQL.Add(' WHERE DECLARACAOID = ' + IntToStr(DeclaracaoID) );
    sqlUpdate.ExecSQL( False );

    sqlMer.Next;
   end;


   if sqlDI.FieldByName('VLRICMSANTECIPADO').AsFloat < 1 then
      VlrIcmsAntecip := 0
   else
      VlrIcmsAntecip := sqlDI.FieldByName('VLRICMSANTECIPADO').AsFloat;

   sqlUpdate.Close;
   sqlUpdate.SQL.Clear;
   sqlUpdate.SQL.Add('UPDATE IT_DECLARACAO SET ');
   sqlUpdate.SQL.Add(' VlrTotalICMS = VlrTotalICMS + ' + SubstituiString( FloatToStr( VlrIcmsAntecip ), ',', '.' ) );
   sqlUpdate.SQL.Add(' WHERE DECLARACAOID = ' + IntToStr(DeclaracaoID) );
   sqlUpdate.ExecSQL( False );

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
  FreeAndNil( sqlDI );
  FreeAndNil( sqlMer );
  FreeAndNil( sqlUpdate );
 end;
end;

procedure TSrvAppIT.IRecalculaListaPreco(const PartNumber: WideString);
var Coef1, Coef2, Preco : Extended;
    sqlProduto, sqlLPreco, sqlUpdate, sqlTxPreco : TSQLQuery;
begin
 Coef1 := 0;
 Preco := 0;

 sqlProduto := TSQLQuery.Create(nil);
 sqlProduto.SQLConnection := TSQLConnection(FSQLcnn);

 sqlLPreco := TSQLQuery.Create(nil);
 sqlLPreco.SQLConnection := TSQLConnection(FSQLcnn);

 sqlUpdate := TSQLQuery.Create(nil);
 sqlUpdate.SQLConnection := TSQLConnection(FSQLcnn);

 sqlTxPreco := TSQLQuery.Create(nil);
 sqlTxPreco.SQLConnection := TSQLConnection(FSQLcnn);

 try
  try // Except
   sqlProduto.SQL.Clear;
   sqlProduto.SQL.Add('SELECT ');
   sqlProduto.SQL.Add('  EMPRESAID,');
   sqlProduto.SQL.Add('  PRODUTOID,');
   sqlProduto.SQL.Add('  PARTNUMBERID,');
   sqlProduto.SQL.Add('  SUBGRUPOID,');
   sqlProduto.SQL.Add('  ORIGEM,');
   sqlProduto.SQL.Add('  CUSTOMEDIO');
   sqlProduto.SQL.Add('  FROM EF_PRODUTO');
   sqlProduto.SQL.Add(' WHERE PARTNUMBERID = :PARTNUMBER');
   sqlProduto.ParamByName('PARTNUMBER').DataType := ftString;
   sqlProduto.Prepared := True;

   sqlTxPreco.SQL.Clear;
   sqlTxPreco.SQL.Add('SELECT');
   sqlTxPreco.SQL.Add('  DATAID,');
   sqlTxPreco.SQL.Add('  VLRDOLAR,');
   sqlTxPreco.SQL.Add('  VLRIPI,');
   sqlTxPreco.SQL.Add('  OBSERVACAO,');
   sqlTxPreco.SQL.Add('  USUARIO');
   sqlTxPreco.SQL.Add('  FROM');
   sqlTxPreco.SQL.Add('  IT_CORLISTAPRECO IT_CORLISTAPRECO');
   sqlTxPreco.Prepared := True;
   sqlTxPreco.Open;

   if sqlTxPreco.IsEmpty then
      raise Exception.Create('Não há taxa de correção para os preços do produtos');

   sqlLPreco.SQL.Clear;
   sqlLPreco.SQL.Add('SELECT PARTNUMBERID,');
   sqlLPreco.SQL.Add('       VLRFOB');
   sqlLPreco.SQL.Add('  FROM IT_LISTAPRECO');
   if PartNumber <> '' then
      sqlLPreco.SQL.Add(' WHERE PARTNUMBERID = ' + QuotedStr( PartNumber ) );
   sqlLPreco.Prepared := True;
   sqlLPreco.Open;

   TSQLConnection(FSQLcnn).StartTransaction(TD);

   while not sqlLPreco.Eof do
   begin
    sqlProduto.Close;
    sqlProduto.ParamByName('PARTNUMBER').AsString := sqlLPreco.FieldByName('PARTNUMBERID').AsString;
    sqlProduto.Open;
    if sqlProduto.IsEmpty then
    begin
     if sqlLPreco.FieldByName('VLRFOB').AsFloat <= 1000 then
        Coef2 := 0.60
     else
        Coef2 := 0.55;

     if sqlLPreco.FieldByName('VLRFOB').AsFloat <= 20 then
        Coef1 := 3
     else if ( sqlLPreco.FieldByName('VLRFOB').AsFloat > 20 ) and
             ( sqlLPreco.FieldByName('VLRFOB').AsFloat <= 50 ) then
        Coef1 := 2.6
     else if ( sqlLPreco.FieldByName('VLRFOB').AsFloat > 50 ) and
             ( sqlLPreco.FieldByName('VLRFOB').AsFloat <= 100 ) then
        Coef1 := 2.4
     else if ( sqlLPreco.FieldByName('VLRFOB').AsFloat > 100 ) and
             ( sqlLPreco.FieldByName('VLRFOB').AsFloat <= 500 ) then
        Coef1 := 2.2
     else if ( sqlLPreco.FieldByName('VLRFOB').AsFloat > 500 ) and
             ( sqlLPreco.FieldByName('VLRFOB').AsFloat <= 1000 ) then
        Coef1 := 2
     else if ( sqlLPreco.FieldByName('VLRFOB').AsFloat > 1000 ) and
             ( sqlLPreco.FieldByName('VLRFOB').AsFloat <= 5000 ) then
        Coef1 := 1.9
     else
        Coef1 := 1.8;

     Preco := ( sqlLPreco.FieldByName('VLRFOB').AsFloat * Coef1 +
                sqlLPreco.FieldByName('VLRFOB').AsFloat * Coef2 ) * 1.4302;
     Preco := Preco * sqlTxPreco.FieldByName('VLRDOLAR').AsCurrency;

     sqlUpdate.SQL.Clear;
     sqlUpdate.SQL.Add('UPDATE IT_LISTAPRECO');
     sqlUpdate.SQL.Add('   SET VLRVENDA = ' + SubstituiString( FloatToStr( Preco ), ',', '.' ) + ', ' );
     sqlUpdate.SQL.Add('       VLRTROCA = ' + SubstituiString( FloatToStr( Preco * 0.75 ), ',', '.' ) );
     sqlUpdate.SQL.Add(' WHERE PARTNUMBERID = ' + QuotedStr( sqlLPreco.FieldByName('PARTNUMBERID').AsString ) );
     sqlUpdate.ExecSQL( False );
    end
    else
    begin
     while not sqlProduto.Eof do
     begin
      if sqlProduto.FieldByName('EMPRESAID').AsInteger <> 2 then
         if sqlProduto.FieldByName('SUBGRUPOID').AsInteger = 9 then
            begin
             sqlProduto.Next;
             Continue;
            end;

      // Produtos Importados
      if sqlProduto.FieldByName('ORIGEM').AsString = 'I' then
      begin
       if sqlLPreco.FieldByName('VLRFOB').AsFloat <= 1000 then
          Coef2 := 0.60
       else
          Coef2 := 0.55;

       if sqlLPreco.FieldByName('VLRFOB').AsFloat <= 20 then
          Coef1 := 3
       else if ( sqlLPreco.FieldByName('VLRFOB').AsFloat > 20 ) and
               ( sqlLPreco.FieldByName('VLRFOB').AsFloat <= 50 ) then
          Coef1 := 2.6
       else if ( sqlLPreco.FieldByName('VLRFOB').AsFloat > 50 ) and
               ( sqlLPreco.FieldByName('VLRFOB').AsFloat <= 100 ) then
          Coef1 := 2.4
       else if ( sqlLPreco.FieldByName('VLRFOB').AsFloat > 100 ) and
               ( sqlLPreco.FieldByName('VLRFOB').AsFloat <= 500 ) then
          Coef1 := 2.2
       else if ( sqlLPreco.FieldByName('VLRFOB').AsFloat > 500 ) and
               ( sqlLPreco.FieldByName('VLRFOB').AsFloat <= 1000 ) then
          Coef1 := 2
       else if ( sqlLPreco.FieldByName('VLRFOB').AsFloat > 1000 ) and
               ( sqlLPreco.FieldByName('VLRFOB').AsFloat <= 5000 ) then
          Coef1 := 1.9
       else
          Coef1 := 1.8;

       Preco := ( sqlLPreco.FieldByName('VLRFOB').AsFloat * Coef1 +
                  sqlLPreco.FieldByName('VLRFOB').AsFloat * Coef2 ) * 1.4302;
       Preco := Preco * sqlTxPreco.FieldByName('VLRDOLAR').AsCurrency;
      end
      else if sqlProduto.FieldByName('ORIGEM').AsString = 'N' then
      begin
       if sqlProduto.FieldByName('CUSTOMEDIO').AsFloat <= 100 then
          Coef1 := 2
       else if ( sqlProduto.FieldByName('CUSTOMEDIO').AsFloat > 100 ) and
               ( sqlProduto.FieldByName('CUSTOMEDIO').AsFloat <= 500 ) then
          Coef1 := 1.8
       else if sqlProduto.FieldByName('CUSTOMEDIO').AsFloat > 500 then
          Coef1 := 1.5;

       Preco := sqlProduto.FieldByName('CUSTOMEDIO').AsFloat * Coef1 * 1.4302;
      end;

      sqlUpdate.SQL.Clear;
      sqlUpdate.SQL.Add('UPDATE IT_LISTAPRECO');
      sqlUpdate.SQL.Add('   SET VLRVENDA = ' + SubstituiString( FloatToStr( Preco ), ',', '.' ) + ', ' );
      sqlUpdate.SQL.Add('       VLRTROCA = ' + SubstituiString( FloatToStr( Preco * 0.75 ), ',', '.' ) );
      sqlUpdate.SQL.Add(' WHERE PARTNUMBERID = ' + QuotedStr( sqlLPreco.FieldByName('PARTNUMBERID').AsString ) );
      sqlUpdate.ExecSQL( False );

      sqlUpdate.SQL.Clear;
      sqlUpdate.SQL.Add('UPDATE EF_PRODUTO');
      sqlUpdate.SQL.Add('   SET VLRFOBUS = ' + SubstituiString( FloatToStr( sqlLPreco.FieldByName('VLRFOB').AsFloat ), ',', '.' ) + ', ' );
      sqlUpdate.SQL.Add('       PRECOVENDA = ' + SubstituiString( FloatToStr( Preco ), ',', '.' ) + ', '  );
      sqlUpdate.SQL.Add('       PRECOVENDAMINIMO = ' + SubstituiString( FloatToStr( Preco * 0.75 ), ',', '.' ) );
      sqlUpdate.SQL.Add(' WHERE ');
      sqlUpdate.SQL.Add('  EMPRESAID     = ' + sqlProduto.FieldByName('EMPRESAID').AsString );
      sqlUpdate.SQL.Add('  AND PRODUTOID = ' + sqlProduto.FieldByName('PRODUTOID').AsString );
      sqlUpdate.ExecSQL( False );

      sqlProduto.Next;
     end;
    end;
    sqlLPreco.Next;
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
  FreeAndNil( sqlProduto );
  FreeAndNil( sqlLPreco );
  FreeAndNil( sqlUpdate );
  FreeAndNil( sqlTxPreco );
 end;
end;

procedure TSrvAppIT.CalcCustoMercadoria(DeclaracaoID: Integer;
  const Usuario: String; sqlCnn: TSQLConnection);
var VlrDespesa, VlrCif, VlrII, VlrCustoMovimento : Real;
    VlrFreteUS, VlrIPI, VlrBaseIPI, VlrICMSAnt : Real;
    sqlMer, sqlNfeItem, sqlAdicao, sqlUpd, sqlKdx, sqlUltPosKdx : TSQLQuery;

 procedure AtualizaCustoKdx( DIID, EmpresaID, ProdutoID, DataEntrada, Quantidade : String; ItemID : Integer; VlrCustoUntario, VlrCustoTotal : Currency );
 begin
  sqlUpd.SQL.Clear;
  sqlUpd.SQL.Add('UPDATE EF_KARDEX ');
  sqlUpd.SQL.Add(' SET VLRCUSTOUNITARIO      =  ' + SubstituiString( FloatToStr( VlrCustoUntario ), ',', '.' )   + ', ' );
  sqlUpd.SQL.Add('     VLRCUSTOTOTAL         =  ' + SubstituiString( FloatToStr( VlrCustoTotal   ), ',', '.' )   + ', ' );
  sqlUpd.SQL.Add('     VLRCUSTOMEDIO         =  ' + SubstituiString( FloatToStr( VlrCustoUntario   ), ',', '.' ) + ', ' );
  sqlUpd.SQL.Add('     VLRCUSTOMEDIOTOTAL    =  ' + SubstituiString( FloatToStr( VlrCustoTotal   ), ',', '.' )   + ', ' );
  sqlUpd.SQL.Add('     VLRCUSTOMEDIOANTERIOR = 0 ');
  sqlUpd.SQL.Add(' WHERE DIID = ' + QuotedStr( DIID) );
  sqlUpd.SQL.Add(' AND EMPRESAID  = ' + EmpresaID );
  sqlUpd.SQL.Add(' AND PRODUTOID  = ' + ProdutoID );
  sqlUpd.SQL.Add(' AND QUANTIDADE = ' + Quantidade );

  if ( Date > StrToDate('03/05/2006') ) or ( ItemID > 0 ) then
     sqlUpd.SQL.Add(' AND ITEMID     = ' + IntToStr( ItemID ) );

  sqlUpd.ExecSQL( False );

  sqlUltPosKdx.SQL.Clear;
  sqlUltPosKdx.SQL.Add(' SELECT KARDEXID');
  sqlUltPosKdx.SQL.Add(' FROM (SELECT KARDEXID');
  sqlUltPosKdx.SQL.Add('         FROM EF_KARDEX');
  sqlUltPosKdx.SQL.Add('        WHERE EMPRESAID = ' + EmpresaID );
  sqlUltPosKdx.SQL.Add('          AND PRODUTOID = ' + ProdutoID );
  sqlUltPosKdx.SQL.Add('          AND DATAOCORRENCIA < TO_DATE(' + QuotedStr( DataEntrada ) + ',' + QuotedStr('DD/MM/YYYY') + ')' );
  sqlUltPosKdx.SQL.Add('        ORDER BY EMPRESAID, PRODUTOID, DATAOCORRENCIA DESC)');
  sqlUltPosKdx.SQL.Add('WHERE ROWNUM = 1');
  sqlUltPosKdx.Prepared := True;
  sqlUltPosKdx.Open;

  ReprocessarKardex( EmpresaId, ProdutoID, sqlKdx, sqlUpd, 1, sqlUltPosKdx.FieldByName('KARDEXID').AsInteger );
  sqlUltPosKdx.Close;
 end;

begin
 sqlMer := TSQLQuery.Create(nil);
 sqlMer.SQLConnection := sqlCnn;

 sqlNfeItem := TSQLQuery.Create(nil);
 sqlNfeItem.SQLConnection := sqlCnn;

 sqlAdicao := TSQLQuery.Create(nil);
 sqlAdicao.SQLConnection := sqlCnn;

 sqlUpd := TSQLQuery.Create(nil);
 sqlUpd.SQLConnection := sqlCnn;

 sqlKdx := TSQLQuery.Create(nil);
 sqlKdx.SQLConnection := sqlCnn;

 sqlUltPosKdx := TSQLQuery.Create(nil);
 sqlUltPosKdx.SQLConnection := sqlCnn;


 try
  sqlMer.SQL.Clear;
  sqlMer.SQL.Add('SELECT IT_DECLARACAO.TIPOMOEDAFRETE, ');
  sqlMer.SQL.Add('       IT_DECLARACAO.DIID, ');
  sqlMer.SQL.Add('       IT_DECLARACAO.DATAREGISTRO, ');
  sqlMer.SQL.Add('       IT_DECLARACAO.DATAENTRADANFEID, ');
  sqlMer.SQL.Add('       IT_DECLARACAO.CREDITARICMS, ');
  sqlMer.SQL.Add('       IT_DECLARACAO.AGREGARVLRFOB, ');
  sqlMer.SQL.Add('       IT_DECLARACAO.AGREGARFRETE, ');
  sqlMer.SQL.Add('       IT_DECLARACAO.FOBANTECIPADO, ');
  sqlMer.SQL.Add('       IT_DECLARACAO.ATIVOFIXO, ');
  sqlMer.SQL.Add('       IT_DECLARACAO.EMPRESAID, ');
  sqlMer.SQL.Add('       IT_DECLARACAO.NFEID, ');
  sqlMer.SQL.Add('       IT_DECLARACAO.DATAEMISSAONFEID, ');
  sqlMer.SQL.Add('       IT_MERCADORIA.MERCADORIAID, ');
  sqlMer.SQL.Add('       IT_DECLARACAO.VLRICMSANTECIPADO,');
  sqlMer.SQL.Add('       IT_DECLARACAO.VLRTOTALCIF,');
  sqlMer.SQL.Add('       IT_MERCADORIA.PRODUTOID, ');
  sqlMer.SQL.Add('       IT_MERCADORIA.QUANTIDADE, ');
  sqlMer.SQL.Add('       IT_MERCADORIA.NCMID, ');
  sqlMer.SQL.Add('       IT_MERCADORIA.ALIQUOTAII, ');
  sqlMer.SQL.Add('       IT_MERCADORIA.VLRCIF, ');
  sqlMer.SQL.Add('       IT_MERCADORIA.VLRFOBUS, ');
  sqlMer.SQL.Add('       IT_MERCADORIA.VLRPIS, ');
  sqlMer.SQL.Add('       IT_MERCADORIA.VLRCOFINS, ');
  sqlMer.SQL.Add('       ROUND( IT_MERCADORIA.VLRFOBUS * NVL( IT_INDICE.DOLARFISCALDIARIO, 0 ), 14 ) AS VLRFOB, ');
  sqlMer.SQL.Add('       IT_MERCADORIA.ALIQUOTAIPI, ');
  sqlMer.SQL.Add('       NVL( IT_INDICE.DOLARFISCALDIARIO, 0 ) AS DOLARFISCALDIARIO, ');
  sqlMer.SQL.Add('       NVL( IT_INDICE.YENEFISCALDIARIO, 0 ) AS YENEFISCALDIARIO, ');
  sqlMer.SQL.Add('       ROUND( ( NVL( IT_DECLARACAO.VLRDESPESADESEMB, 0 ) + ' );
  sqlMer.SQL.Add('                NVL( IT_DECLARACAO.VLRTOTALDESPGI, 0 ) + ' );
  sqlMer.SQL.Add('                NVL( IT_DECLARACAO.VLRTOTALFRETELOCAL, 0 ) + ' );
  sqlMer.SQL.Add('                NVL( IT_DECLARACAO.VLRTOTALSEGUROTRANSP, 0 ) ) / ' );
  sqlMer.SQL.Add('                IT_DECLARACAO.VLRTOTALFOB * IT_MERCADORIA.VLRFOB , 02 ) AS VLRDESPESA, ');
  sqlMer.SQL.Add('       ROUND( IT_DECLARACAO.VLRFRETE / NVL( IT_INDICE.DOLARFISCALDIARIO, 1 ) / ' );
  sqlMer.SQL.Add('              NVL( IT_DECLARACAO.VLRTOTALPESO, 1 ) * NVL( IT_INDICE.YENEFISCALDIARIO, 0 ) * ' );
  sqlMer.SQL.Add('              IT_MERCADORIA.PESOBRUTO, 14 ) AS VLRFRETEYENE, ');
  sqlMer.SQL.Add('       ROUND( IT_DECLARACAO.VLRFRETE / NVL( IT_INDICE.DOLARFISCALDIARIO, 1 ) / ' );
  sqlMer.SQL.Add('              NVL( IT_DECLARACAO.VLRTOTALPESO, 1 ) * IT_MERCADORIA.PESOBRUTO, 14 ) AS VLRFRETEDOLAR, ');
  sqlMer.SQL.Add('       ROUND( IT_MERCADORIA.VLRFOBUS * NVL( IT_DECLARACAO.TAXAFOBANTECIPADO, 0 ), 14 ) AS VLRFOBANTECIPADO ');
  sqlMer.SQL.Add('  FROM IT_DECLARACAO, ');
  sqlMer.SQL.Add('       IT_MERCADORIA, ');
  sqlMer.SQL.Add('       IT_INDICE ');
  sqlMer.SQL.Add(' WHERE IT_DECLARACAO.DECLARACAOID = ' + IntToStr(DeclaracaoID));
  sqlMer.SQL.Add('   AND IT_DECLARACAO.DECLARACAOID = IT_MERCADORIA.DECLARACAOID ');
  sqlMer.SQL.Add('   AND IT_DECLARACAO.DATAREGISTRO = IT_INDICE.DATAID(+) ');
  sqlMer.Prepared := True;
  sqlMer.Open;

  sqlAdicao.SQL.Clear;
  sqlAdicao.SQL.Add('SELECT IT_ADICAO.VLRCIF, ');
  sqlAdicao.SQL.Add('       IT_ADICAO.VLRII, ');
  sqlAdicao.SQL.Add('       ROUND( ( IT_ADICAO.VLRCIF / IT_ADICAO.VLRFOB ), 14 ) AS VLRCIFFOB, ');
  sqlAdicao.SQL.Add('       ROUND( ( IT_ADICAO.VLRII / IT_ADICAO.VLRFOB ), 14 ) AS VLRIIFOB ');
  sqlAdicao.SQL.Add('  FROM IT_ADICAO ');
  sqlAdicao.SQL.Add(' WHERE DECLARACAOID = ' + IntToStr(DeclaracaoID));
  sqlAdicao.SQL.Add('   AND NCMID = :NCMID ');

  sqlAdicao.Params[0].DataType := ftString;
  sqlAdicao.Prepared := True;

  if sqlMer.FieldByName('NFEID').IsNull then
     raise Exception.Create( 'Nota Fiscal de Entrada não gerada!' );

  sqlNfeItem.SQL.Clear;
  sqlNfeItem.SQL.Add('SELECT ROUND( ( ALIQUOTAICMS / 100 ), 14 ) ALIQUOTAICMS, ');
  sqlNfeItem.SQL.Add('       ROUND( ( 1 - ( ALIQUOTAICMS / 100 ) ), 14 ) ALIQUOTAICMS2 ');
  sqlNfeItem.SQL.Add('  FROM EF_NFEITEM ');
  sqlNfeItem.SQL.Add(' WHERE EMPRESAID = ' + sqlMer.FieldByName( 'EMPRESAID' ).AsString );
  sqlNfeItem.SQL.Add('   AND NFEID = ' + sqlMer.FieldByName( 'NFEID' ).AsString );
  sqlNfeItem.SQL.Add('   AND DATAEMISSAOID >= TO_DATE( ''' + sqlMer.FieldByName( 'DATAEMISSAONFEID' ).AsString + ' 00:00'', ''DD/MM/YYYY HH24:MI'' )' );
  sqlNfeItem.SQL.Add('   AND DATAEMISSAOID <= TO_DATE( ''' + sqlMer.FieldByName( 'DATAEMISSAONFEID' ).AsString + ' 23:59'', ''DD/MM/YYYY HH24:MI'' )' );
  sqlNfeItem.Prepared := True;
  sqlNfeItem.Open;

  if sqlNfeItem.IsEmpty then
     raise Exception.Create( 'Nota Fiscal de Entrada não encontrada!' );

  sqlNfeItem.Close;
  sqlNfeItem.SQL.Add('   AND PRODUTOID = :PRODUTOID ' );
  sqlNfeItem.Prepared := True;
  sqlNfeItem.Params[0].DataType := ftString;

  sqlUpd.SQL.Clear;
  sqlUpd.SQL.Add('UPDATE IT_MERCADORIA ');
  sqlUpd.SQL.Add('   SET VLRCUSTOMOVIMENTO = 0, ');
  sqlUpd.SQL.Add('       VLRCUSTOTRANSFERENCIA = 0, ');
  sqlUpd.SQL.Add('       VLRBASEIPI = 0, ');
  sqlUpd.SQL.Add('       VLRIPI = 0, ');
  sqlUpd.SQL.Add('       VLRFRETE = 0, ');
  sqlUpd.SQL.Add('       VLRFRETEUS = 0 ');
  sqlUpd.SQL.Add(' WHERE DECLARACAOID = ' + IntToStr(DeclaracaoID));
  sqlUpd.ExecSQL( False );

  while not sqlMer.Eof do
  begin
   VlrIPI     := 0;
   VlrDespesa := 0;
   VlrFreteUS := 0;

   sqlUpd.SQL.Clear;
   sqlUpd.SQL.Add('UPDATE IT_MERCADORIA SET ');

   sqlAdicao.Close;
   sqlAdicao.Params[0].AsString := sqlMer.FieldByName( 'NCMID' ).AsString;
   sqlAdicao.Open;

   sqlNfeItem.Params[0].AsString := sqlMer.FieldByName( 'PRODUTOID' ).AsString;
   sqlNfeItem.Open;

   // Ratear despesas para cada movimento - BASE DI
   if sqlMer.FieldByName('VLRDESPESA').AsFloat > 0 then
      VlrDespesa := sqlMer.FieldByName('VLRDESPESA').AsFloat;

///  Mudado na data 31 Mai  2006 Apagar esta linha e o SQL
//   if sqlAdicao.FieldByName( 'VLRCIF' ).AsFloat > 0 then
//      VlrCif := sqlAdicao.FieldByName( 'VLRCIFFOB' ).AsFloat *
//                sqlMer.FieldByName( 'VLRFOB' ).AsFloat;

//   if sqlAdicao.FieldByName( 'VLRII' ).AsFloat > 0 then
//      VlrII := sqlAdicao.FieldByName( 'VLRIIFOB' ).AsFloat *
//               sqlMer.FieldByName( 'VLRFOB' ).AsFloat;

   VlrCif := sqlMer.FieldByName('VLRCIF').AsFloat;
   VlrII  := sqlMer.FieldByName('VLRCIF').AsFloat * ( sqlMer.FieldByName('ALIQUOTAII').AsFloat / 100 );


   // Nas importações de mercadorias para o estoque recebidas por Blumenau, temos que antecipar 3% do
   // valor do ICMS para desembaraço e esse valor nos dá o direito ao crédito.
   // Atualizar rateio ICMS antecipado
   VlrICMSAnt := 0;
   if sqlMer.FieldByName('VLRICMSANTECIPADO').AsFloat > 0 then
      VlrICMSAnt := ( VlrCif /  sqlMer.FieldByName('VLRTOTALCIF').AsFloat ) *  sqlMer.FieldByName('VLRICMSANTECIPADO').AsFloat;

   // Agregar Frete no Custo
   if sqlMer.FieldByName( 'AGREGARFRETE' ).AsInteger = 1 then
      begin
       if sqlMer.FieldByName( 'TIPOMOEDAFRETE' ).AsString = 'Y' then
          VlrFreteUS := sqlMer.FieldByName( 'VLRFRETEYENE' ).AsFloat
       else
          VlrFreteUS := sqlMer.FieldByName( 'VLRFRETEDOLAR' ).AsFloat;

       sqlUpd.SQL.Add(' VLRFRETEUS = ' + SubstituiString( FloatToStr( VlrFreteUS ), ',', '.' ) + ', ' );

       // A partir daqui VlrFreteUS se torna VlrFrete em Real.
       VlrFreteUS := VlrFreteUS * sqlMer.FieldByName( 'DOLARFISCALDIARIO' ).AsFloat;

       // Converter Frete para Dolar para Atualizar o Custo
       sqlUpd.SQL.Add(' VLRFRETE = ' + SubstituiString( FloatToStr( VlrFreteUS ), ',', '.' ) + ', ' );
      end;

   // Atualiza VlrFob em Real
   sqlUpd.SQL.Add(' VLRFOB = ' + SubstituiString( sqlMer.FieldByName( 'VLRFOB' ).AsString, ',', '.' ) + ', ' );

   VlrBaseIPI := VlrCif + VlrII;
   sqlUpd.SQL.Add(' VLRBASEIPI = ' + SubstituiString( FloatToStr( VlrBaseIPI ), ',', '.' ) + ', ' );

   // Cálculo do Custo para cada Mercadoria
   if sqlMer.FieldByName( 'AGREGARVLRFOB' ).AsInteger = 1 then
      begin
       if sqlMer.FieldByName( 'FOBANTECIPADO' ).AsInteger = 1 then
          VlrCustoMovimento := sqlMer.FieldByName( 'VLRFOBANTECIPADO' ).AsFloat +
                               VlrII + VlrDespesa + VlrFreteUS - VlrICMSAnt - ( sqlMer.FieldByName( 'VLRPIS' ).AsFloat + sqlMer.FieldByName( 'VLRCOFINS' ).AsFloat )
       else
          VlrCustoMovimento := sqlMer.FieldByName( 'VLRFOB' ).AsFloat +
                               VlrII + VlrDespesa + VlrFreteUS - VlrICMSAnt - ( sqlMer.FieldByName( 'VLRPIS' ).AsFloat + sqlMer.FieldByName( 'VLRCOFINS' ).AsFloat );
      end
   else
      VlrCustoMovimento := VlrII + VlrDespesa + VlrFreteUS - VlrICMSAnt - ( sqlMer.FieldByName( 'VLRPIS' ).AsFloat + sqlMer.FieldByName( 'VLRCOFINS' ).AsFloat );

   if ( VlrBaseIPI > 0 ) and
      ( sqlMer.FieldByName( 'ALIQUOTAIPI' ).AsFloat > 0 ) then
      VlrIPI := VlrBaseIPI * sqlMer.FieldByName( 'ALIQUOTAIPI' ).AsFloat / 100;

   // Quando ativo fixo o valor do IPI será utilizando somente para compor as Bases de Cálculo
   // mas não será gravado o seu valor
   if ( sqlMer.FieldByName( 'ATIVOFIXO' ).AsInteger = 0 ) then
      sqlUpd.SQL.Add(' VLRIPI = ' + SubstituiString( FloatToStr( VlrIPI ), ',', '.' ) + ', ' );

   // Agregar VALOR DO I.P.I no Custo da Mercadoria se for Nat.Oper. 3.91
   // Verificar se Nat. Oper. 3.91 para Ativo Fixo
   if sqlMer.FieldByName( 'ATIVOFIXO' ).AsInteger = 1 then
      VlrCustoMovimento := VlrCustoMovimento + VlrIPI;

    sqlUpd.SQL.Add(' VLRCUSTOMOVIMENTO = ' +
                     SubstituiString( FloatToStr( VlrCustoMovimento ), ',', '.' ) + ', ' );

   sqlUpd.SQL.Add('       USUARIO = ' + QuotedStr( Usuario ) );
   sqlUpd.SQL.Add(' WHERE DECLARACAOID = ' + IntToStr(DeclaracaoID) );
   sqlUpd.SQL.Add('   AND MERCADORIAID = ' + sqlMer.FieldByName( 'MERCADORIAID' ).AsString );
   sqlUpd.ExecSQL( False );

   AtualizaCustoKdx( sqlMer.FieldByName('DIID').AsString,
                     sqlMer.FieldByName('EMPRESAID').AsString,
                     sqlMer.FieldByName('PRODUTOID').AsString,
                     sqlMer.FieldByName('DATAENTRADANFEID').AsString,
                     sqlMer.FieldByName('QUANTIDADE').AsString,
                     sqlMer.FieldByName('MERCADORIAID').AsInteger,
                     ( VlrCustoMovimento / sqlMer.FieldByName('QUANTIDADE').AsCurrency ),
                     VlrCustoMovimento );

   sqlAdicao.Close;
   sqlNfeItem.Close;
   sqlMer.Next;
  end;
  sqlMer.Close;

  sqlUpd.SQL.Clear;
  sqlUpd.SQL.Add('UPDATE IT_MERCADORIA ');
  sqlUpd.SQL.Add('   SET VLRCUSTOMOVIMENTO = TRUNC( VLRCUSTOMOVIMENTO, 3 ), ');
  sqlUpd.SQL.Add('       VLRCUSTOTRANSFERENCIA = TRUNC( VLRCUSTOTRANSFERENCIA, 3 ), ');
  sqlUpd.SQL.Add('       VLRBASEIPI = TRUNC( VLRBASEIPI, 3 ), ');
  sqlUpd.SQL.Add('       VLRIPI = TRUNC( VLRIPI, 3 ), ');
  sqlUpd.SQL.Add('       VLRBASEICMS = TRUNC( VLRBASEICMS, 3 ), ');
  sqlUpd.SQL.Add('       VLRFRETE = TRUNC( VLRFRETE, 3 ), ');
  sqlUpd.SQL.Add('       VLRFRETEUS = TRUNC( VLRFRETEUS, 3 ) ');
  sqlUpd.SQL.Add(' WHERE DECLARACAOID = ' + IntToStr(DeclaracaoID));
  sqlUpd.ExecSQL( False );

 finally
  FreeAndNil( sqlMer );
  FreeAndNil( sqlAdicao );
  FreeAndNil( sqlUpd );
  FreeAndNil( sqlKdx );
  FreeAndNil( sqlUltPosKdx );
  FreeAndNil( sqlNfeItem );
 end;
end;

initialization
 FSrvAppIT := TComponentFactory.Create(ComServer, TSrvAppIT,
    Class_SrvAppIT, ciInternal, tmApartment);
end.



