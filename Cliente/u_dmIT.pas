unit u_dmIT;

interface

uses
  SysUtils, Classes, Controls, DB, DBClient, MConnect, Dialogs, Forms;

type
  TdmIT = class(TDataModule)
    shdcnnIT: TSharedConnection;
    cdsIndiceMes: TClientDataSet;
    cdsDespachante: TClientDataSet;
    cdsDespachanteDESPACHANTEID: TBCDField;
    cdsDespachanteNOME: TStringField;
    cdsDespachanteCONTACONTABILID: TStringField;
    cdsDespachanteUSUARIO: TStringField;
    cdsContatoJapao: TClientDataSet;
    cdsContatoJapaoCONTATOJAPAOID: TBCDField;
    cdsContatoJapaoDESTINATARIO: TStringField;
    cdsContatoJapaoEMAILDESTINATARIO: TStringField;
    cdsContatoJapaoDESTINATARIOCC: TStringField;
    cdsContatoJapaoEMAILDESTINATARIOCC: TStringField;
    cdsContatoJapaoREMETENTE: TStringField;
    cdsContatoJapaoUSUARIO: TStringField;
    cdsTipoProcesso: TClientDataSet;
    cdsTipoProcessoTIPOPROCESSOID: TBCDField;
    cdsTipoProcessoSIGLA: TStringField;
    cdsTipoProcessoDESCRICAO: TStringField;
    cdsTipoProcessoNUMPROCESSO: TBCDField;
    cdsTipoProcessoORIGEMPROCESSO: TStringField;
    cdsTipoProcessoUSUARIO: TStringField;
    cdsTermoPagto: TClientDataSet;
    cdsTermoPagtoTERMOPAGTOID: TBCDField;
    cdsTermoPagtoDESCRICAO: TStringField;
    cdsTermoPagtoUSUARIO: TStringField;
    cdsDeclaracao: TClientDataSet;
    cdsAdicao: TClientDataSet;
    cdsMercadoria: TClientDataSet;
    dsIndice: TDataSource;
    dsIndiceMes: TDataSource;
    dsDespachante: TDataSource;
    dsContatoJapao: TDataSource;
    dsTipoProcesso: TDataSource;
    dsTermoPagto: TDataSource;
    dsDeclaracao: TDataSource;
    dsAdicao: TDataSource;
    dsMercadoria: TDataSource;
    cdsProcesso: TClientDataSet;
    cdsProcessoItem: TClientDataSet;
    dsProcesso: TDataSource;
    dsProcessoItem: TDataSource;
    cdsIndice: TClientDataSet;
    cdsIndiceDATAID: TSQLTimeStampField;
    cdsIndiceDOLAROFICIALC: TFMTBCDField;
    cdsIndiceDOLAROFICIALV: TFMTBCDField;
    cdsIndiceDOLARPARALELOC: TFMTBCDField;
    cdsIndiceDOLARPARALELOV: TFMTBCDField;
    cdsIndiceDOLARTURISMOC: TFMTBCDField;
    cdsIndiceDOLARTURISMOV: TFMTBCDField;
    cdsIndiceDOLARFISCALDIARIO: TFMTBCDField;
    cdsIndiceYENEFISCALDIARIO: TFMTBCDField;
    cdsIndiceUSUARIO: TStringField;
    cdsIndiceMesANOMESID: TBCDField;
    cdsIndiceMesUFIR: TBCDField;
    cdsIndiceMesUFESP: TBCDField;
    cdsIndiceMesIPCFIPE: TBCDField;
    cdsIndiceMesIGPM: TBCDField;
    cdsIndiceMesIPC: TBCDField;
    cdsIndiceMesIPA: TBCDField;
    cdsIndiceMesINCC: TBCDField;
    cdsIndiceMesIPCA: TBCDField;
    cdsIndiceMesICV: TBCDField;
    cdsIndiceMesICVM: TBCDField;
    cdsIndiceMesUSUARIO: TStringField;
    cdsTipoCategoria: TClientDataSet;
    dsTipoCategoria: TDataSource;
    cdsRazaoExigencia: TClientDataSet;
    dsRazaoExigencia: TDataSource;
    cdsFrequencia: TClientDataSet;
    dsFrequencia: TDataSource;
    cdsTipoCategoriaTIPOCATEGORIAID: TBCDField;
    cdsTipoCategoriaDESCRICAO: TStringField;
    cdsTipoCategoriaUSUARIO: TStringField;
    cdsRazaoExigenciaRAZAOEXIGENCIAID: TBCDField;
    cdsRazaoExigenciaDESCRICAO: TStringField;
    cdsRazaoExigenciaUSUARIO: TStringField;
    cdsFrequenciaFREQUENCIAID: TBCDField;
    cdsFrequenciaDESCRICAO: TStringField;
    cdsFrequenciaUSUARIO: TStringField;
    cdsListaPreco: TClientDataSet;
    dsListaPreco: TDataSource;
    cdsListaPrecoPARTNUMBERID: TStringField;
    cdsListaPrecoDESCRICAOINGLES: TStringField;
    cdsListaPrecoMODELOID: TStringField;
    cdsListaPrecoVLRFOB: TBCDField;
    cdsListaPrecoVLRVENDA: TBCDField;
    cdsListaPrecoVLRTROCA: TBCDField;
    cdsListaPrecoUSUARIO: TStringField;
    cdsCorListaPreco: TClientDataSet;
    dsCorListaPreco: TDataSource;
    cdsCorListaPrecoDATAID: TSQLTimeStampField;
    cdsCorListaPrecoVLRDOLAR: TFMTBCDField;
    cdsCorListaPrecoVLRIPI: TFMTBCDField;
    cdsCorListaPrecoOBSERVACAO: TStringField;
    cdsCorListaPrecoUSUARIO: TStringField;
    cdsRelLD: TClientDataSet;
    dsRelLD: TDataSource;
    cdsProcessoItemSerie: TClientDataSet;
    dsProcessoItemSerie: TDataSource;
    cdsProcessoPROCESSOID: TBCDField;
    cdsProcessoTIPOPROCESSOID: TBCDField;
    cdsProcessoL_SIGLAPROCESSO: TStringField;
    cdsProcessoPROCESSOANTIGOID: TStringField;
    cdsProcessoEMPRESAID: TBCDField;
    cdsProcessoL_NOMEFANTASIA: TStringField;
    cdsProcessoCLIENTEID: TBCDField;
    cdsProcessoL_NOMECLIENTE: TStringField;
    cdsProcessoL_CEPCLIENTE: TBCDField;
    cdsProcessoL_ENDERECOCLIENTE: TStringField;
    cdsProcessoL_CIDADECLIENTE: TStringField;
    cdsProcessoL_UFCLIENTE: TStringField;
    cdsProcessoCONTATOJAPAOID: TBCDField;
    cdsProcessoL_DESTINATARIOJAPAO: TStringField;
    cdsProcessoL_DESTINATARIOEMAILJAPAO: TStringField;
    cdsProcessoL_DESTINATARIOCCJAPAO: TStringField;
    cdsProcessoL_DESTINATARIOCCEMAILJAPAO: TStringField;
    cdsProcessoL_REMETENTEJAPAO: TStringField;
    cdsProcessoSTATUS: TStringField;
    cdsProcessoOBSERVACAO: TStringField;
    cdsProcessoTIPOSERVICO: TStringField;
    cdsProcessoTIPOREQUISICAO: TStringField;
    cdsProcessoPERGUNTA1: TBCDField;
    cdsProcessoPERGUNTA2: TBCDField;
    cdsProcessoPERGUNTA3: TBCDField;
    cdsProcessoPERGUNTA4: TBCDField;
    cdsProcessoPERGUNTA5: TBCDField;
    cdsProcessoTIPOCATEGORIAID: TBCDField;
    cdsProcessoL_DESCRICAOTIPOCATEGORIA: TStringField;
    cdsProcessoRAZAOEXIGENCIAID: TBCDField;
    cdsProcessoL_DESCRICAORAZAOEXIGENCIA: TStringField;
    cdsProcessoFREQUENCIAID: TBCDField;
    cdsProcessoL_DESCRICAOFREQUENCIA: TStringField;
    cdsProcessoUSOMEDICO: TBCDField;
    cdsProcessoNUMREMESSA: TStringField;
    cdsProcessoNUMAGENTE: TStringField;
    cdsProcessoPAISDESTINO: TStringField;
    cdsProcessoNUMREFERCONSERTO: TBCDField;
    cdsProcessoLIBERACHEFIA: TBCDField;
    cdsProcessoNOMELIBERANTE: TStringField;
    cdsProcessoDATALIBERACAO: TSQLTimeStampField;
    cdsProcessoFORNECEDORID: TBCDField;
    cdsProcessoL_NOMEFORNECEDOR: TStringField;
    cdsProcessoL_CEPFORNECEDOR: TBCDField;
    cdsProcessoL_ENDERECOFORNECEDOR: TStringField;
    cdsProcessoL_CIDADEFORNECEDOR: TStringField;
    cdsProcessoL_UFFORNECEDOR: TStringField;
    cdsProcessoTERMOPAGTOID: TBCDField;
    cdsProcessoL_DESCRICAOTERMOPAGTO: TStringField;
    cdsProcessoNUMPROCESSOJAPAO: TStringField;
    cdsProcessoDATAPREVISAO: TSQLTimeStampField;
    cdsProcessoCOBERTURACAMBIAL: TBCDField;
    cdsProcessoAGRUPANCM: TBCDField;
    cdsProcessoUSUARIO: TStringField;
    cdsProcessosqldtsProcessoItem: TDataSetField;
    cdsProcessoItemPROCESSOID: TBCDField;
    cdsProcessoItemTIPOPROCESSOID: TBCDField;
    cdsProcessoItemITEMID: TBCDField;
    cdsProcessoItemEMPRESAID: TBCDField;
    cdsProcessoItemPRODUTOID: TBCDField;
    cdsProcessoItemPARTNUMBERID: TStringField;
    cdsProcessoItemGRUPOID: TBCDField;
    cdsProcessoItemDESCRICAOINGLES: TStringField;
    cdsProcessoItemDESCRICAOPORTUGUES: TStringField;
    cdsProcessoItemNCMID: TStringField;
    cdsProcessoItemVLRFOBUS: TBCDField;
    cdsProcessoItemVLRYEN: TBCDField;
    cdsProcessoItemSERIEID: TStringField;
    cdsProcessoItemMODELOID: TStringField;
    cdsProcessoItemPEDIDOORIGINAL: TStringField;
    cdsProcessoItemDATAINSTALEQUIP: TSQLTimeStampField;
    cdsProcessoItemDATAFALHAEQUIP: TSQLTimeStampField;
    cdsProcessoItemPRIORIDADE: TStringField;
    cdsProcessoItemQTDPEDIDA: TBCDField;
    cdsProcessoItemQTDLIBERADA: TBCDField;
    cdsProcessoItemREGANVISA: TStringField;
    cdsProcessoItemDATAPREVISAO: TSQLTimeStampField;
    cdsProcessoItemDATAEMBARQUE: TSQLTimeStampField;
    cdsProcessoItemDATACHEGADA: TSQLTimeStampField;
    cdsProcessoItemINVOICEID: TStringField;
    cdsProcessoItemNUMCONHECEMBARQUE: TStringField;
    cdsProcessoItemTSBREFID: TStringField;
    cdsProcessoItemDATADEVOLUCAO: TSQLTimeStampField;
    cdsProcessoItemDATAPREVRETORNO: TSQLTimeStampField;
    cdsProcessoItemRETORNAPECADEF: TBCDField;
    cdsProcessoItemUSUARIO: TStringField;
    cdsProcessoItemSeriePROCESSOID: TBCDField;
    cdsProcessoItemSerieTIPOPROCESSOID: TBCDField;
    cdsProcessoItemSerieITEMID: TBCDField;
    cdsProcessoItemSerieSERIEID: TStringField;
    cdsProcessoItemSerieMODELOID: TStringField;
    cdsProcessoItemSerieCOMPOSICAO: TBlobField;
    cdsProcessoItemSerieUSUARIO: TStringField;
    cdsProcessoItemsqldtsProcessoItemSerie: TDataSetField;
    cdsDeclaracaoDECLARACAOID: TBCDField;
    cdsDeclaracaoEMPRESAID: TBCDField;
    cdsDeclaracaoL_NOMEFANTASIA: TStringField;
    cdsDeclaracaoDIID: TStringField;
    cdsDeclaracaoDATAREGISTRO: TSQLTimeStampField;
    cdsDeclaracaoREFERENCIA: TStringField;
    cdsDeclaracaoDATALIBERACAO: TSQLTimeStampField;
    cdsDeclaracaoTIPOMOEDAFRETE: TStringField;
    cdsDeclaracaoIMPORTADORID: TBCDField;
    cdsDeclaracaoL_NOMEIMPORTADOR: TStringField;
    cdsDeclaracaoFORNECEDORID: TBCDField;
    cdsDeclaracaoL_NOMEFORNECEDOR: TStringField;
    cdsDeclaracaoCONTACONTABILID: TStringField;
    cdsDeclaracaoCENTROCUSTOID: TStringField;
    cdsDeclaracaoNUMCONTRATOCAMBIO: TStringField;
    cdsDeclaracaoDATACONTRATO: TSQLTimeStampField;
    cdsDeclaracaoOBSPEDIDO: TMemoField;
    cdsDeclaracaoCREDITARICMS: TBCDField;
    cdsDeclaracaoAGREGARVLRFOB: TBCDField;
    cdsDeclaracaoRESTITUIRICMS: TBCDField;
    cdsDeclaracaoAGREGARFRETE: TBCDField;
    cdsDeclaracaoFOBANTECIPADO: TBCDField;
    cdsDeclaracaoADMISSAOTEMP: TBCDField;
    cdsDeclaracaoLIBERARESTOQUE: TBCDField;
    cdsDeclaracaoATIVOFIXO: TBCDField;
    cdsDeclaracaoFRETEPAGO: TBCDField;
    cdsDeclaracaoDESPACHANTEID: TBCDField;
    cdsDeclaracaoL_NOMEDESPACHANTE: TStringField;
    cdsDeclaracaoNUMDEMONSDESPESA: TStringField;
    cdsDeclaracaoVLRDESPESAII: TBCDField;
    cdsDeclaracaoVLRDESPESADESEMB: TBCDField;
    cdsDeclaracaoNFEID: TStringField;
    cdsDeclaracaoDATAEMISSAONFEID: TSQLTimeStampField;
    cdsDeclaracaoDATAENTRADANFEID: TSQLTimeStampField;
    cdsDeclaracaoNATUREZAOPID: TBCDField;
    cdsDeclaracaoL_CFOP: TStringField;
    cdsDeclaracaoL_DESCRICAONATUREZAUSUARIO: TStringField;
    cdsDeclaracaoL_DESCRICAONATUREZANOTA: TStringField;
    cdsDeclaracaoVLRTOTALCIF: TBCDField;
    cdsDeclaracaoVLRTOTALFOBUS: TBCDField;
    cdsDeclaracaoVLRTOTALFOB: TBCDField;
    cdsDeclaracaoVLRFRETE: TBCDField;
    cdsDeclaracaoVLRSEGUROINTERNAC: TBCDField;
    cdsDeclaracaoTAXAFOBANTECIPADO: TFMTBCDField;
    cdsDeclaracaoTAXASISCOMEX: TBCDField;
    cdsDeclaracaoVLRTOTALIPI: TBCDField;
    cdsDeclaracaoVLRTOTALICMS: TBCDField;
    cdsDeclaracaoVLRTOTALCUSTOAPARELHO: TBCDField;
    cdsDeclaracaoVLRTOTALCUSTOPECA: TBCDField;
    cdsDeclaracaoVLRTOTALMAQEQUIP: TBCDField;
    cdsDeclaracaoVLRTOTALFERRAMENTAL: TBCDField;
    cdsDeclaracaoVLRTOTALMOVUTENSILIOS: TBCDField;
    cdsDeclaracaoVLRTOTALADMTEMP: TBCDField;
    cdsDeclaracaoVLRTOTALPIS: TBCDField;
    cdsDeclaracaoVLRTOTALCOFINS: TBCDField;
    cdsDeclaracaoVLRTOTALFOB2: TBCDField;
    cdsDeclaracaoVLRTOTALFOBANT: TBCDField;
    cdsDeclaracaoVLRTOTALCIF2: TBCDField;
    cdsDeclaracaoVLRTOTALCIFANT: TBCDField;
    cdsDeclaracaoVLRTOTALDESPDESP: TBCDField;
    cdsDeclaracaoVLRTOTALDESPGI: TBCDField;
    cdsDeclaracaoVLRTOTALSEGUROTRANSP: TBCDField;
    cdsDeclaracaoVLRTOTALIRRFPAGAR: TBCDField;
    cdsDeclaracaoVLRTOTALFRETELOCAL: TBCDField;
    cdsDeclaracaoUSUARIO: TStringField;
    cdsDeclaracaosqldtsMercadoria: TDataSetField;
    cdsDeclaracaosqldtsAdicao: TDataSetField;
    cdsAdicaoDECLARACAOID: TBCDField;
    cdsAdicaoADICAOID: TBCDField;
    cdsAdicaoNCMID: TStringField;
    cdsAdicaoPESOLIQUIDO: TFMTBCDField;
    cdsAdicaoVLRFOBUS: TBCDField;
    cdsAdicaoVLRFOB: TBCDField;
    cdsAdicaoVLRCIF: TBCDField;
    cdsAdicaoALIQUOTAII: TBCDField;
    cdsAdicaoVLRII: TBCDField;
    cdsAdicaoALIQUOTAIPI: TBCDField;
    cdsAdicaoVLRIPI: TBCDField;
    cdsAdicaoUSUARIO: TStringField;
    cdsMercadoriaDECLARACAOID: TBCDField;
    cdsMercadoriaMERCADORIAID: TBCDField;
    cdsMercadoriaPROCESSOID: TBCDField;
    cdsMercadoriaTIPOPROCESSOID: TBCDField;
    cdsMercadoriaL_SIGLA: TStringField;
    cdsMercadoriaITEMPROCESSOID: TBCDField;
    cdsMercadoriaNCMID: TStringField;
    cdsMercadoriaLIBERAESTOQUE: TBCDField;
    cdsMercadoriaEMPRESAID: TBCDField;
    cdsMercadoriaPRODUTOID: TBCDField;
    cdsMercadoriaL_DESCRICAO_PRODUTO: TStringField;
    cdsMercadoriaQUANTIDADE: TBCDField;
    cdsMercadoriaIMOBILIZADO: TBCDField;
    cdsMercadoriaTIPOMATERIAL: TStringField;
    cdsMercadoriaPESOLIQUIDO: TFMTBCDField;
    cdsMercadoriaPESOBRUTO: TFMTBCDField;
    cdsMercadoriaVLRFOBUS: TBCDField;
    cdsMercadoriaVLRFOB: TBCDField;
    cdsMercadoriaVLRCUSTOMOVIMENTO: TBCDField;
    cdsMercadoriaVLRCUSTOTRANSFERENCIA: TBCDField;
    cdsMercadoriaVLRBASEIPI: TBCDField;
    cdsMercadoriaALIQUOTAIPI: TFMTBCDField;
    cdsMercadoriaVLRIPI: TBCDField;
    cdsMercadoriaVLRBASEICMS: TBCDField;
    cdsMercadoriaVLRICMS: TBCDField;
    cdsMercadoriaALIQUOTAII: TFMTBCDField;
    cdsMercadoriaVLRFRETE: TBCDField;
    cdsMercadoriaVLRFRETEUS: TBCDField;
    cdsMercadoriaVLRPIS: TBCDField;
    cdsMercadoriaVLRCOFINS: TBCDField;
    cdsMercadoriaUSUARIO: TStringField;
    cdsMercadoriaVLRCIF: TBCDField;
    cdsConta: TClientDataSet;
    cdsContaEMPRESAID: TBCDField;
    cdsContaL_NOMEFANTASIA: TStringField;
    cdsContaNOMECAMPOID: TStringField;
    cdsContaCONTACONTABILID: TStringField;
    cdsContaL_DESCRICAOCONTA: TStringField;
    cdsContaCREDDEB: TStringField;
    cdsContaUSUARIO: TStringField;
    dsConta: TDataSource;
    cdsRelLDCONTACONTABILID: TStringField;
    cdsRelLDDESCRICAO: TStringField;
    cdsRelLDDIID: TStringField;
    cdsRelLDDATAENTRADANFEID: TSQLTimeStampField;
    cdsRelLDNFEID: TStringField;
    cdsRelLDNUMDEMONSDESPESA: TStringField;
    cdsRelLDVLRTOTALFOBUS: TBCDField;
    cdsRelLDREFERENCIA: TStringField;
    cdsRelLDVLRDEBITO: TFMTBCDField;
    cdsRelLDVLRCREDITO: TFMTBCDField;
    cdsProcessoItemL_SIGLA: TStringField;
    cdsProcessoItemDATACONVERSAO: TSQLTimeStampField;
    cdsProcessoItemNOMEUNIDADE: TStringField;
    cdsMercadoriaL_PARTNUMBERID: TStringField;
    cdsDeclaracaoL_DOLARFISCALDIARIO: TFMTBCDField;
    cdsDeclaracaoL_YENEFISCALDIARIO: TFMTBCDField;
    cdsProcessoLOCALCHEGADAID: TBCDField;
    cdsProcessoVIAEMBARQUEID: TBCDField;
    cdsLocalChegada: TClientDataSet;
    cdsViaEmbarque: TClientDataSet;
    dsLocalChegada: TDataSource;
    dsViaEmbarque: TDataSource;
    cdsLocalChegadaLOCALCHEGADAID: TBCDField;
    cdsLocalChegadaDESCRICAO: TStringField;
    cdsLocalChegadaUSUARIO: TStringField;
    cdsViaEmbarqueVIAEMBARQUEID: TBCDField;
    cdsViaEmbarqueDESCRICAO: TStringField;
    cdsViaEmbarqueUSUARIO: TStringField;
    cdsProcessoL_DESCRICAOLOCALCHEGADA: TStringField;
    cdsProcessoL_DESCRICAOVIAEMBARQUE: TStringField;
    cdsProcessoItemDECLARACAOID: TBCDField;
    cdsProcessoItemL_DIID: TStringField;
    cdsProcessoItemL_NFEID: TStringField;
    cdsProcessoItemL_DATAEMISSAONFEID: TSQLTimeStampField;
    cdsProcessoItemL_DATAENTRADANFEID: TSQLTimeStampField;
    cdsDeclaracaoVLRDESPSINDDESP: TBCDField;
    cdsDeclaracaoVLRDESPCODESPINFRAERO: TBCDField;
    cdsDeclaracaoVLRDESPAFRMM: TBCDField;
    cdsDeclaracaoVLRDESPCPMF: TBCDField;
    cdsDeclaracaoVLRDESPTRANSPENTREGA: TBCDField;
    cdsDeclaracaoVLRDESPTRANSPREMOCAO: TBCDField;
    cdsDeclaracaoVLRDESPARMAZENTREPOSTO: TBCDField;
    cdsDeclaracaoVLRDESPTXEXPEDIENTE: TBCDField;
    cdsDeclaracaoVLRDESPVIGSANITARIA: TBCDField;
    cdsDeclaracaoVLRDESPCOMISSAONFS: TBCDField;
    cdsDeclaracaoC_DIFAPURARESUMO: TFloatField;
    cdsDeclaracaoMATERIALCONSUMO: TBCDField;
    cdsRelLDCREDDEB: TStringField;
    cdsRelLDNUMEMPRESAEXP: TBCDField;
    cdsRelLDCENTROCUSTOID: TStringField;
    cdsDeclaracaoVLRTOTALPESO: TFMTBCDField;
    cdsDeclaracaoNUMCONTRATOCAMBIO2: TStringField;
    cdsDeclaracaoDATACONTRATO2: TSQLTimeStampField;
    cdsDeclaracaoNUMCONTRATOCAMBIO3: TStringField;
    cdsDeclaracaoDATACONTRATO3: TSQLTimeStampField;
    cdsProcessoEMBARQUEMARCACAO: TStringField;
    cdsProcessoItemDATAEMBTOKIO: TSQLTimeStampField;
    cdsDeclaracaoVLRFRETEMARITIMOAEREO: TBCDField;
    cdsDeclaracaoVLRTAXAEMISSAOLI: TBCDField;
    cdsProcessoIMPORTADORID: TBCDField;
    cdsProcessoL_NOMEIMPORTADOR: TStringField;
    cdsProcessoL_CEPIMPORTADOR: TBCDField;
    cdsProcessoL_ENDERECOIMPORTADOR: TStringField;
    cdsProcessoL_CIDADEIMPORTADOR: TStringField;
    cdsProcessoL_UFIMPORTADOR: TStringField;
    cdsProcessoItemL_SIGLAGRUPO: TStringField;
    cdsMercadoriaALIQUOTAICMS: TFMTBCDField;
    cdsProcessoItemPARTNUMBERFABID: TStringField;
    cdsProcessoREVISAO: TStringField;
    cdsProcessoLOCALFABRICACAO: TStringField;
    cdsProcessoOBSERVACAOPO: TMemoField;
    cdsProcessoDATAPROCESSOID: TSQLTimeStampField;
    cdsProcessoItemDATAPROCESSOID: TSQLTimeStampField;
    cdsProcessoItemSerieDATAPROCESSOID: TSQLTimeStampField;
    cdsMercadoriaDATAPROCESSOID: TSQLTimeStampField;
    cdsProcessoItemDATAINSTRENVEMB: TSQLTimeStampField;
    cdsDeclaracaoC_TOTALDESPADUANEIRAS: TFloatField;
    cdsDeclaracaoVLROUTRASDESPESAS: TBCDField;
    cdsProcessoItemDATASOLICLI: TSQLTimeStampField;
    cdsProcessoItemDATAAUTORIZLI: TSQLTimeStampField;
    cdsDeclaracaoVLRIRRF: TBCDField;
    cdsDeclaracaoDATANFDESP: TSQLTimeStampField;
    cdsDeclaracaoVLRCSRF: TBCDField;
    cdsDeclaracaoVLRICMSANTECIPADO: TBCDField;
    cdsDeclaracaoVLRDESPCAPATAZIA: TBCDField;
    procedure cdsIndiceAfterPost(DataSet: TDataSet);
    procedure cdsProcessoTIPOPROCESSOIDValidate(Sender: TField);
    procedure cdsProcessoCLIENTEIDValidate(Sender: TField);
    procedure cdsProcessoFORNECEDORIDValidate(Sender: TField);
    procedure cdsProcessoTIPOCATEGORIAIDValidate(Sender: TField);
    procedure cdsProcessoRAZAOEXIGENCIAIDValidate(Sender: TField);
    procedure cdsProcessoFREQUENCIAIDValidate(Sender: TField);
    procedure cdsProcessoCONTATOJAPAOIDValidate(Sender: TField);
    procedure cdsProcessoTERMOPAGTOIDValidate(Sender: TField);
    procedure cdsProcessoLIBERACHEFIAValidate(Sender: TField);
    procedure cdsProcessoNewRecord(DataSet: TDataSet);
    procedure cdsProcessoL_SIGLAPROCESSOValidate(Sender: TField);
    procedure cdsProcessoDATAPREVISAOValidate(Sender: TField);
    procedure dsProcessoStateChange(Sender: TObject);
    procedure cdsDeclaracaoIMPORTADORIDValidate(Sender: TField);
    procedure cdsDeclaracaoFORNECEDORIDValidate(Sender: TField);
    procedure cdsDeclaracaoNATUREZAOPIDValidate(Sender: TField);
    procedure cdsMercadoriaTIPOPROCESSOIDValidate(Sender: TField);
    procedure cdsMercadoriaPRODUTOIDValidate(Sender: TField);
    procedure cdsDeclaracaoEMPRESAIDValidate(Sender: TField);
    procedure cdsProcessoEMPRESAIDValidate(Sender: TField);
    procedure cdsDeclaracaoDESPACHANTEIDValidate(Sender: TField);
    procedure cdsDeclaracaoNewRecord(DataSet: TDataSet);
    procedure cdsProcessoBeforeEdit(DataSet: TDataSet);
    procedure cdsProcessoBeforeDelete(DataSet: TDataSet);
    procedure cdsDeclaracaoDIIDValidate(Sender: TField);
    procedure cdsMercadoriaVLRFOBUSValidate(Sender: TField);
    procedure cdsMercadoriaPESOLIQUIDOValidate(Sender: TField);
    procedure cdsIndiceAfterDelete(DataSet: TDataSet);
    procedure cdsDeclaracaoReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsDeclaracaoVLRSEGUROINTERNACValidate(Sender: TField);
    procedure cdsProcessoItemNewRecord(DataSet: TDataSet);
    procedure cdsProcessoItemPARTNUMBERIDValidate(Sender: TField);
    procedure cdsMercadoriaNewRecord(DataSet: TDataSet);
    procedure cdsIndiceNewRecord(DataSet: TDataSet);
    procedure cdsIndiceReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsIndiceMesNewRecord(DataSet: TDataSet);
    procedure cdsDespachanteNewRecord(DataSet: TDataSet);
    procedure cdsContatoJapaoNewRecord(DataSet: TDataSet);
    procedure cdsTipoProcessoNewRecord(DataSet: TDataSet);
    procedure cdsTermoPagtoNewRecord(DataSet: TDataSet);
    procedure cdsTipoCategoriaNewRecord(DataSet: TDataSet);
    procedure cdsRazaoExigenciaNewRecord(DataSet: TDataSet);
    procedure cdsFrequenciaNewRecord(DataSet: TDataSet);
    procedure cdsListaPrecoNewRecord(DataSet: TDataSet);
    procedure cdsCorListaPrecoNewRecord(DataSet: TDataSet);
    procedure cdsProcessoReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsProcessoItemAfterDelete(DataSet: TDataSet);
    procedure cdsProcessoItemSerieNewRecord(DataSet: TDataSet);
    procedure cdsAdicaoAfterDelete(DataSet: TDataSet);
    procedure cdsAdicaoAfterPost(DataSet: TDataSet);
    procedure cdsMercadoriaAfterDelete(DataSet: TDataSet);
    procedure cdsMercadoriaAfterPost(DataSet: TDataSet);
    procedure cdsProcessoItemAfterPost(DataSet: TDataSet);
    procedure cdsProcessoItemSerieAfterPost(DataSet: TDataSet);
    procedure cdsProcessoItemSerieAfterDelete(DataSet: TDataSet);
    procedure cdsContaEMPRESAIDValidate(Sender: TField);
    procedure cdsContaCONTACONTABILIDValidate(Sender: TField);
    procedure cdsContaAfterDelete(DataSet: TDataSet);
    procedure cdsContaAfterPost(DataSet: TDataSet);
    procedure cdsContaNewRecord(DataSet: TDataSet);
    procedure cdsProcessoItemVLRYENValidate(Sender: TField);
    procedure cdsDeclaracaoDATAREGISTROValidate(Sender: TField);
    procedure cdsProcessoLOCALCHEGADAIDValidate(Sender: TField);
    procedure cdsProcessoVIAEMBARQUEIDValidate(Sender: TField);
    procedure cdsLocalChegadaNewRecord(DataSet: TDataSet);
    procedure cdsViaEmbarqueNewRecord(DataSet: TDataSet);
    procedure cdsDeclaracaoCalcFields(DataSet: TDataSet);
    procedure cdsProcessoItemREGANVISAValidate(Sender: TField);
    procedure cdsProcessoIMPORTADORIDValidate(Sender: TField);
    procedure cdsProcessoItemGRUPOIDValidate(Sender: TField);
    procedure cdsMercadoriaBeforeDelete(DataSet: TDataSet);
    procedure cdsDeclaracaoBeforeDelete(DataSet: TDataSet);
    procedure cdsDeclaracaoAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AtualizaProcesso( DeclaracaoID, ProcessoID, TipoProcessoID, ItemID : String );
  end;

var
  dmIT: TdmIT;

implementation

uses u_dmGSI, FuncoesCliente, FuncoesDSI, u_Principal, u_VisualizadorPadrao,
  u_ReconcileError, u_dmEF;

{$R *.dfm}

procedure TdmIT.AtualizaProcesso( DeclaracaoID, ProcessoID, TipoProcessoID, ItemID : String );
var sSql : String;
begin
 sSQL := 'UPDATE IT_PROCESSOITEM SET ' +
          ' DECLARACAOID = ' +  DeclaracaoID +
          ' WHERE ' +
          ' PROCESSOID         = ' + ProcessoID +
          ' AND TIPOPROCESSOID = ' + TipoProcessoID +
          ' AND ITEMID         = ' + ItemID;
 try
  ExecDML( sSql);
 except
 on E: Exception do raise;
 end;
end;

procedure TdmIT.cdsIndiceAfterPost(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmIT.cdsProcessoTIPOPROCESSOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := Sender.FieldName + ' = ' + Sender.AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsTipoProcesso.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsProcessoL_SIGLAPROCESSO.Value := Cds.FieldByName('SIGLA').AsString;
      cdsProcessoPROCESSOID.Value      := Cds.FieldByName('NUMPROCESSO').AsInteger;

      iSQL    := 'UPDATE  IT_TIPOPROCESSO SET NUMPROCESSO = NUMPROCESSO + 1' +
                 ' WHERE TIPOPROCESSOID = ' + cdsProcessoTIPOPROCESSOID.AsString;
      ExecDML( iSQL );
     end
  else
     begin
      cdsProcessoL_SIGLAPROCESSO.Clear;
      cdsProcessoPROCESSOID.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

 finally
  Cds.Close;
  FreeAndNil( Cds );
 end;
end;

procedure TdmIT.cdsProcessoCLIENTEIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'ENTIDADEID = ' + Sender.AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvEntidade' ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
  begin
   cdsProcessoL_NOMECLIENTE.Value := Cds.FieldByName('NOME').AsString;
   cdsProcessoL_CEPCLIENTE.Value := Cds.FieldByName('CEPID').AsCurrency;
   cdsProcessoL_ENDERECOCLIENTE.Value := Cds.FieldByName('ENDERECO').AsString;
   cdsProcessoL_CIDADECLIENTE.Value := Cds.FieldByName('CIDADE').AsString;
   cdsProcessoL_UFCLIENTE.Value := Cds.FieldByName('SIGLAUFID').AsString;
  end
  else
  begin
   cdsProcessoL_NOMECLIENTE.Clear;
   cdsProcessoL_CEPCLIENTE.Clear;
   cdsProcessoL_ENDERECOCLIENTE.Clear;
   cdsProcessoL_CIDADECLIENTE.Clear;
   cdsProcessoL_UFCLIENTE.Clear;
   raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
  end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmIT.cdsProcessoFORNECEDORIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'ENTIDADEID = ' + Sender.AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvEntidade' ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
  begin
   cdsProcessoL_NOMEFORNECEDOR.Value := Cds.FieldByName('NOME').AsString;
   cdsProcessoL_CEPFORNECEDOR.Value := Cds.FieldByName('CEPID').AsCurrency;
   cdsProcessoL_ENDERECOFORNECEDOR.Value := Cds.FieldByName('ENDERECO').AsString;
   cdsProcessoL_CIDADEFORNECEDOR.Value := Cds.FieldByName('CIDADE').AsString;
   cdsProcessoL_UFFORNECEDOR.Value := Cds.FieldByName('SIGLAUFID').AsString;
  end
  else
  begin
   cdsProcessoL_NOMEFORNECEDOR.Clear;
   cdsProcessoL_CEPFORNECEDOR.Clear;
   cdsProcessoL_ENDERECOFORNECEDOR.Clear;
   cdsProcessoL_CIDADEFORNECEDOR.Clear;
   cdsProcessoL_UFFORNECEDOR.Clear;
   raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
  end;

 finally
  Cds.Close;
  FreeAndNil( Cds );
 end;
end;

procedure TdmIT.cdsProcessoTIPOCATEGORIAIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := Sender.FieldName + ' = ' + Sender.AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsTipoCategoria.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsProcessoL_DESCRICAOTIPOCATEGORIA.Value := Cds.FieldByName('DESCRICAO').AsString
  else
   begin
    cdsProcessoL_DESCRICAOTIPOCATEGORIA.Clear;
    raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
   end;

 finally
  Cds.Close;
  FreeAndNil( Cds );
 end;
end;

procedure TdmIT.cdsProcessoRAZAOEXIGENCIAIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := Sender.FieldName + ' = ' + Sender.AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsRazaoExigencia.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsProcessoL_DESCRICAORAZAOEXIGENCIA.Value := Cds.FieldByName('DESCRICAO').AsString
  else
  begin
   cdsProcessoL_DESCRICAORAZAOEXIGENCIA.Clear;
   raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
  end;

 finally
  Cds.Close;
  FreeAndNil( Cds );
 end;
end;

procedure TdmIT.cdsProcessoFREQUENCIAIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := Sender.FieldName + ' = ' + Sender.AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsFrequencia.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsProcessoL_DESCRICAOFREQUENCIA.Value := Cds.FieldByName('DESCRICAO').AsString
  else
  begin
   cdsProcessoL_DESCRICAOFREQUENCIA.Clear;
   raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
  end;

 finally
  Cds.Close;
  FreeAndNil( Cds );
 end;
end;

procedure TdmIT.cdsProcessoCONTATOJAPAOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := Sender.FieldName + ' = ' + Sender.AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsContatoJapao.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
  begin
   cdsProcessoL_DESTINATARIOJAPAO.Value := Cds.FieldByName('DESTINATARIO').AsString;
   cdsProcessoL_DESTINATARIOEMAILJAPAO.Value := Cds.FieldByName('EMAILDESTINATARIO').AsString;
   cdsProcessoL_DESTINATARIOCCJAPAO.Value := Cds.FieldByName('DESTINATARIOCC').AsString;
   cdsProcessoL_DESTINATARIOCCEMAILJAPAO.Value := Cds.FieldByName('EMAILDESTINATARIOCC').AsString;
   cdsProcessoL_REMETENTEJAPAO.Value := Cds.FieldByName('REMETENTE').AsString;
  end
  else
  begin
   cdsProcessoL_DESTINATARIOJAPAO.Clear;
   cdsProcessoL_DESTINATARIOEMAILJAPAO.Clear;
   cdsProcessoL_DESTINATARIOCCJAPAO.Clear;
   cdsProcessoL_DESTINATARIOCCEMAILJAPAO.Clear;
   cdsProcessoL_REMETENTEJAPAO.Clear;
   raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
  end;

 finally
  Cds.Close;
  FreeAndNil( Cds );
 end;
end;

procedure TdmIT.cdsProcessoTERMOPAGTOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := Sender.FieldName + ' = ' + Sender.AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvTermoPagto' ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsProcessoL_DESCRICAOTERMOPAGTO.Value := Cds.FieldByName('DESCRICAO').AsString
  else
  begin
   cdsProcessoL_DESCRICAOTERMOPAGTO.Clear;
   raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
  end;

 finally
  Cds.Close;
  FreeAndNil( Cds );
 end;
end;

procedure TdmIT.cdsProcessoLIBERACHEFIAValidate(Sender: TField);
begin
 if Sender.AsInteger = 1 then
    try
     cdsProcessoNOMELIBERANTE.Value      := dmGsi.UsuarioAtivo;
     cdsProcessoDATALIBERACAO.AsDateTime := pCnnMain.AppServer.IServerDate;
    except
     on e: Exception do
      MessageDlg( 'Erro ao executar função IServerDate', mtWarning, [mbOK], 0 );
    end
 else
    begin
     cdsProcessoNOMELIBERANTE.Clear;
     cdsProcessoDATALIBERACAO.Clear;
    end;
end;

procedure TdmIT.cdsProcessoNewRecord(DataSet: TDataSet);
begin
 cdsProcessoSTATUS.Value            := 'A';
 cdsProcessoAGRUPANCM.Value         := 0;
 cdsProcessoEMPRESAID.Value         := EmpresaAtualId;
 cdsProcessoLIBERACHEFIA.Value      := 0;
 cdsProcessoCOBERTURACAMBIAL.Value  := 1;
 cdsProcessoDATAPROCESSOID.AsDateTime := pCnnMain.AppServer.IServerDate;
 cdsProcessoNUMAGENTE.Value         := '90684';
 cdsProcessoNUMREMESSA.Value        := 'D178A';
 cdsProcessoPAISDESTINO.Value       := 'BRAZIL';
 cdsProcessoUSOMEDICO.Value         := 1;
 cdsProcessoPERGUNTA1.Value         := 0;
 cdsProcessoPERGUNTA2.Value         := 0;
 cdsProcessoPERGUNTA3.Value         := 0;
 cdsProcessoPERGUNTA4.Value         := 0;
 cdsProcessoPERGUNTA5.Value         := 0;
 cdsProcessoLOCALFABRICACAO.Value   := 'JAPAN';
 cdsProcessoUSUARIO.Value           := dmGsi.UsuarioAtivo;
end;

procedure TdmIT.cdsProcessoL_SIGLAPROCESSOValidate(Sender: TField);
begin
 if Sender.AsString = 'TMBJ' then
 begin
  cdsProcessoUSOMEDICO.Value      := 0;
  cdsProcessoPERGUNTA1.Value      := 0;
  cdsProcessoPERGUNTA2.Value      := 0;
  cdsProcessoPERGUNTA3.Value      := 0;
  cdsProcessoPERGUNTA4.Value      := 0;
  cdsProcessoPERGUNTA5.Value      := 0;
  cdsProcessoNUMAGENTE.Value      := '90684';
  cdsProcessoNUMREMESSA.Value     := 'D178';
  cdsProcessoPAISDESTINO.Value    := 'BRAZIL';
  cdsProcessoTIPOSERVICO.Value    := 'A';
  cdsProcessoTIPOREQUISICAO.Value := 'B';
 end
 else
 begin
  cdsProcessoUSOMEDICO.Clear;
  cdsProcessoPERGUNTA1.Clear;
  cdsProcessoPERGUNTA2.Clear;
  cdsProcessoPERGUNTA3.Clear;
  cdsProcessoPERGUNTA4.Clear;
  cdsProcessoPERGUNTA5.Clear;
  cdsProcessoNUMAGENTE.Clear;
  cdsProcessoNUMREMESSA.Clear;
  cdsProcessoPAISDESTINO.Clear;
  cdsProcessoTIPOSERVICO.Clear;
  cdsProcessoTIPOREQUISICAO.Clear;
 end;
end;

procedure TdmIT.cdsProcessoDATAPREVISAOValidate(Sender: TField);
begin
 if Sender.AsDateTime > cdsProcessoDATAPROCESSOID.AsDateTime then
    raise Exception.Create( 'Data da Previsão deve ser maior que Data do Processo!' );
end;

procedure TdmIT.dsProcessoStateChange(Sender: TObject);
begin
 cdsProcessoPROCESSOID.ReadOnly     := ( cdsProcesso.State = dsEdit );
 cdsProcessoTIPOPROCESSOID.ReadOnly := ( cdsProcesso.State = dsEdit );
end;

procedure TdmIT.cdsDeclaracaoEMPRESAIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 if cdsMercadoria.RecordCount > 0 then
    raise Exception.Create('Não é permitido mudar a empresa, pois já existem itens na mercadoria!');

 Cds     := nil;
 InstSQL := 'EMPRESAID = ' + Sender.AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvEmpresa' ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsDeclaracaoL_NOMEFANTASIA.Value := Cds.FieldByName('NOMEFANTASIA').AsString
  else
     begin
      cdsDeclaracaoL_NOMEFANTASIA.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;

end;

procedure TdmIT.cdsProcessoEMPRESAIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
{ if cdsProcessoItem.RecordCount > 0 then
    raise Exception.Create('Não é permitido mudar a empresa, pois já exitem itens de processo cadastrados.');}

 Cds     := nil;
 InstSQL := Sender.FieldName + ' = ' + Sender.AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvEmpresa' ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsProcessoL_NOMEFANTASIA.Value := Cds.FieldByName('NOMEFANTASIA').AsString
  else
    begin
     cdsProcessoL_NOMEFANTASIA.Clear;
     raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
    end;  

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmIT.cdsDeclaracaoIMPORTADORIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'ENTIDADEID = ' + Sender.AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvEntidade' ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsDeclaracaoL_NOMEIMPORTADOR.Value := Cds.FieldByName('NOME').AsString
  else
     begin
      cdsDeclaracaoL_NOMEIMPORTADOR.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

 finally
  Cds.Close;
  FreeAndNil( Cds );
 end;
end;

procedure TdmIT.cdsDeclaracaoFORNECEDORIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'ENTIDADEID = ' + Sender.AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvEntidade' ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsDeclaracaoL_NOMEFORNECEDOR.Value := Cds.FieldByName('NOME').AsString
  else
     begin
      cdsDeclaracaoL_NOMEFORNECEDOR.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

 finally
  Cds.Close;
  FreeAndNil( Cds );
 end;
end;

procedure TdmIT.cdsDeclaracaoNATUREZAOPIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'EF_NATUREZAOP.'+ Sender.FieldName + ' = ' + Sender.AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvNaturezaOp' ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsDeclaracaoL_DESCRICAONATUREZANOTA.Value := Cds.FieldByName('DESCRICAOOPERACAONOTA').AsString;
      cdsDeclaracaoL_DESCRICAONATUREZAUSUARIO.Value := Cds.FieldByName('DESCRICAOOPERACAOUSUARIO').AsString;
      cdsDeclaracaoL_CFOP.Value := Cds.FieldByName('CFOP').AsString;
     end
  else
     begin
      cdsDeclaracaoL_DESCRICAONATUREZANOTA.Clear;
      cdsDeclaracaoL_DESCRICAONATUREZAUSUARIO.Clear;
      cdsDeclaracaoL_CFOP.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

 finally
  Cds.Close;
  FreeAndNil( Cds );
 end;
end;

procedure TdmIT.cdsMercadoriaTIPOPROCESSOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := Sender.FieldName + ' = ' + Sender.AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsTipoProcesso.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsMercadoriaL_SIGLA.Value := Cds.FieldByName('SIGLA').AsString
  else
  begin
   cdsMercadoriaL_SIGLA.Clear;
   raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
  end;

 finally
  Cds.Close;
  FreeAndNil( Cds );
 end;
end;

procedure TdmIT.cdsMercadoriaPRODUTOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := ' EF_PRODUTO.EMPRESAID     = ' + cdsMercadoriaEMPRESAID.AsString +
            ' AND EF_PRODUTO.PRODUTOID = ' + Sender.AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvProduto' ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsMercadoriaL_DESCRICAO_PRODUTO.Value := Cds.FieldByName('DESCRICAOPORTUGUES').AsString;
      cdsMercadoriaL_PARTNUMBERID.Value      := Cds.FieldByName('PARTNUMBERID').AsString;
     end
  else
     begin
      cdsMercadoriaL_DESCRICAO_PRODUTO.Clear;
      cdsMercadoriaL_PARTNUMBERID.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

 finally
  Cds.Close;
  FreeAndNil( Cds );
 end;
end;

procedure TdmIT.cdsDeclaracaoDESPACHANTEIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := Sender.FieldName + ' = ' + Sender.AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvDespachante' ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsDeclaracaoL_NOMEDESPACHANTE.Value := Cds.FieldByName('NOME').AsString
  else
  begin
   cdsDeclaracaoL_NOMEDESPACHANTE.Clear;
   raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
  end;

 finally
  Cds.Close;
  FreeAndNil( Cds );
 end;
end;


procedure TdmIT.cdsDeclaracaoNewRecord(DataSet: TDataSet);
var Cds : TClientDataSet;
    iSQL : String;
begin
 Cds     := nil;
 iSQL    := 'SELECT NVL( MAX( DECLARACAOID ), 0 ) FROM IT_DECLARACAO';

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsDeclaracaoDECLARACAOID.Value   := Cds.Fields[0].Value + 1;
  Cds.Close;

  cdsDeclaracaoEMPRESAID.Value       := EmpresaAtualId;
  cdsDeclaracaoTIPOMOEDAFRETE.Value  := 'D';
  cdsDeclaracaoCREDITARICMS.Value    := 1;
  cdsDeclaracaoAGREGARVLRFOB.Value   := 1;
  cdsDeclaracaoRESTITUIRICMS.Value   := 0;
  cdsDeclaracaoFOBANTECIPADO.Value   := 0;
  cdsDeclaracaoAGREGARFRETE.Value    := 0;
  cdsDeclaracaoADMISSAOTEMP.Value    := 0;
  cdsDeclaracaoATIVOFIXO.Value       := 0;
  cdsDeclaracaoFRETEPAGO.Value       := 0;
  cdsDeclaracaoLIBERARESTOQUE.Value  := 0;
  cdsDeclaracaoMATERIALCONSUMO.Value  := 0;
  cdsDeclaracaoVLRDESPCAPATAZIA.Value := 0;


  // Inicializar Valores
  cdsDeclaracaoVLRDESPESAII.AsFloat          := 0;
  cdsDeclaracaoVLRDESPESADESEMB.AsFloat      := 0;
  cdsDeclaracaoVLRTOTALCIF.AsFloat           := 0;
  cdsDeclaracaoVLRTOTALPESO.AsFloat          := 0;
  cdsDeclaracaoVLRTOTALFOBUS.AsFloat         := 0;
  cdsDeclaracaoVLRTOTALFOB.AsFloat           := 0;
  cdsDeclaracaoVLRFRETE.AsFloat              := 0;
  cdsDeclaracaoVLRSEGUROINTERNAC.AsFloat     := 0;
  cdsDeclaracaoTAXAFOBANTECIPADO.AsFloat     := 0;
  cdsDeclaracaoTAXASISCOMEX.AsFloat          := 0;
  cdsDeclaracaoVLRICMSANTECIPADO.AsFloat     := 0;
  cdsDeclaracaoVLRTOTALIPI.AsFloat           := 0;
  cdsDeclaracaoVLRTOTALICMS.AsFloat          := 0;
  cdsDeclaracaoVLRTOTALCUSTOAPARELHO.AsFloat := 0;
  cdsDeclaracaoVLRTOTALCUSTOPECA.AsFloat     := 0;
  cdsDeclaracaoVLRTOTALMAQEQUIP.AsFloat      := 0;
  cdsDeclaracaoVLRTOTALFERRAMENTAL.AsFloat   := 0;
  cdsDeclaracaoVLRTOTALMOVUTENSILIOS.AsFloat := 0;
  cdsDeclaracaoVLRTOTALADMTEMP.AsFloat       := 0;
  cdsDeclaracaoVLRTOTALFOB2.AsFloat          := 0;
  cdsDeclaracaoVLRTOTALFOBANT.AsFloat        := 0;
  cdsDeclaracaoVLRTOTALCIF2.AsFloat          := 0;
  cdsDeclaracaoVLRTOTALCIFANT.AsFloat        := 0;
  cdsDeclaracaoVLRTOTALDESPDESP.AsFloat      := 0;
  cdsDeclaracaoVLRTOTALDESPGI.AsFloat        := 0;
  cdsDeclaracaoVLRTOTALSEGUROTRANSP.AsFloat  := 0;
  cdsDeclaracaoVLRTOTALIRRFPAGAR.AsFloat     := 0;
  cdsDeclaracaoVLRTOTALFRETELOCAL.AsFloat    := 0;
  cdsDeclaracaoUSUARIO.Value                 := dmGsi.UsuarioAtivo;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmIT.cdsProcessoBeforeEdit(DataSet: TDataSet);
begin
 if ( cdsProcessoLIBERACHEFIA.Value = 1 ) and ( cdsProcessoNOMELIBERANTE.Value <> dmGsi.UsuarioAtivo ) then
    if not CheckSenha(dmGsi.UsuarioAtivo,'Processo de Importação Técnica','Alterar processo já liberado',True) then
       raise Exception.Create( 'Processo não pode ser Alterado, pois já foi liberado.' );
end;

procedure TdmIT.cdsProcessoBeforeDelete(DataSet: TDataSet);
begin
 if cdsProcessoLIBERACHEFIA.Value = 1 then
    raise Exception.Create( 'Processo não pode ser Excluído, pois já foi liberado.' );
end;

procedure TdmIT.cdsDeclaracaoDIIDValidate(Sender: TField);
var Cds : TClientDataSet;
    iSQL : String;
begin
 Cds      := nil;
 iSQL     := 'SELECT DECLARACAOID, DIID, DATAREGISTRO, USUARIO FROM IT_DECLARACAO ' +
             'WHERE ' +
             ' DIID = ' + QuotedStr( TField( Sender ).Value );

 Screen.Cursor := crHourGlass;
 try
  if cdsDeclaracao.State = dsInsert	then
     begin
      ExecDynamicProvider( -1, iSQL, Cds );

      if not Cds.IsEmpty then
         begin
          frmVisualizadorPadrao := TfrmVisualizadorPadrao.Create( Self );
          frmVisualizadorPadrao.dsVisualizar.DataSet := Cds;
          frmVisualizadorPadrao.ShowModal;
          raise Exception.Create('DI já existe. Não é permitido duplicidade no cadastro de Declaração de Importação !' );
         end;
     end;

 finally
  Screen.Cursor := crDefault;
  FreeAndNil( Cds );
 end;
end;

procedure TdmIT.cdsMercadoriaVLRFOBUSValidate(Sender: TField);
var TaxaDolar : Extended;
begin
 TaxaDolar := shdcnnIT.AppServer.ITaxaDiaria( cdsDeclaracaoDATAREGISTRO.ASString, 'DOLARFISCALDIARIO' );

 if TaxaDolar > 0 then
    cdsMercadoriaVLRFOB.AsFloat := cdsMercadoriaVLRFOBUS.AsFloat * TaxaDolar;
end;

procedure TdmIT.cdsMercadoriaPESOLIQUIDOValidate(Sender: TField);
begin
 if not cdsMercadoriaPESOLIQUIDO.IsNull then
    cdsMercadoriaPESOBRUTO.AsFloat := cdsMercadoriaPESOLIQUIDO.AsFloat * cdsMercadoriaQUANTIDADE.AsFloat;
end;

procedure TdmIT.cdsIndiceAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmIT.cdsDeclaracaoReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
 Action := HandleReconcileError( DataSet, UpdateKind, E);
end;

procedure TdmIT.cdsDeclaracaoVLRSEGUROINTERNACValidate(Sender: TField);
var TaxaDolar : Extended;
begin
 TaxaDolar := shdcnnIT.AppServer.ITaxaDiaria( cdsDeclaracaoDATAREGISTRO.ASString, 'DOLARFISCALDIARIO' );

 if TaxaDolar > 0 then
    cdsDeclaracaoVLRTOTALSEGUROTRANSP.AsFloat := cdsDeclaracaoVLRSEGUROINTERNAC.AsFloat * TaxaDolar;
end;

procedure TdmIT.cdsProcessoItemNewRecord(DataSet: TDataSet);
begin
 cdsProcessoItemEMPRESAID.Value    := cdsProcessoEMPRESAID.Value;
 cdsProcessoItemITEMID.Value       := ContadorDB('IT_PROCESSOITEM','IT_PROCESSOITEM.ITEMID','WHERE PROCESSOID = ' + cdsProcessoPROCESSOID.AsString + ' AND TIPOPROCESSOID = ' + cdsProcessoTIPOPROCESSOID.AsString );
 cdsProcessoItemVLRYEN.Value       := 0;
 cdsProcessoItemVLRFOBUS.Value     := 0;
 cdsProcessoItemQTDPEDIDA.Value    := 0;
 cdsProcessoItemQTDLIBERADA.Value  := 0;
 cdsProcessoItemUSUARIO.Value      := dmGsi.UsuarioAtivo;
end;

procedure TdmIT.cdsProcessoItemPARTNUMBERIDValidate(Sender: TField);
var Cds : TClientDataSet;
    Sql : String;
 procedure ChecarPartNumber;
 var iSql    : String;
     CdsProd : TClientDataSet;
 begin
  CdsProd := nil;
  iSQL    := 'SELECT EMPRESAID, PRODUTOID, PARTNUMBERID, GRUPOID, DESCRICAOPORTUGUES, ESTOQUEMINIMO, ESTOQUETOTAL ' +
             ' FROM EF_PRODUTO ' +
             ' WHERE EMPRESAID = ' + cdsProcessoItemEMPRESAID.AsString +
             ' AND PARTNUMBERID = ' + QuotedStr( cdsProcessoItemPARTNUMBERID.AsString );

  try
   ExecDynamicProvider( -1, iSQL, CdsProd );

   if not CdsProd.IsEmpty then
      begin
       cdsProcessoItemGRUPOID.Value            := CdsProd.FieldByName('GRUPOID').AsInteger;
       cdsProcessoItemDESCRICAOPORTUGUES.Value := CdsProd.FieldByName('DESCRICAOPORTUGUES').AsString;

       if CdsProd.FieldByName('ESTOQUEMINIMO').AsInteger  >= CdsProd.FieldByName('ESTOQUETOTAL').AsInteger then
          MessageDlg( 'Já existe ' + CdsProd.FieldByName('ESTOQUETOTAL').AsString + ' pecas no estoque.', mtInformation, [mbOk], 0);
      end;

   CdsProd.Close;

  finally
   FreeAndNil( CdsProd );
  end;
 end;

 procedure ChecarRegAnvisa;
 var iSqlA : String;
     cdsA  : TClientDataSet;
 begin
  cdsA  := nil;
  iSQLA := 'SELECT MODELOID, REGANVISAID FROM PP_CATALOGO' +
           ' WHERE MODELOID = ' + QuotedStr( cdsProcessoItemPARTNUMBERID.AsString );

  try
   ExecDynamicProvider( -1, iSqlA, cdsA );

   if not cdsA.IsEmpty then
      cdsProcessoItemREGANVISA.Value          := cdsA.FieldByName('REGANVISAID').AsString;

   cdsA.Close;

  finally
   FreeAndNil( cdsA );
  end;
 end;

begin
 Cds := Nil;
 Sql := 'SELECT PARTNUMBERID, DESCRICAOINGLES, VLRFOB ' +
         ' FROM IT_LISTAPRECO ' +
        ' WHERE PARTNUMBERID = ' +  QuotedStr( cdsProcessoItemPARTNUMBERID.Value );
 try
  ExecDynamicProvider( -1, Sql, Cds );
  if not Cds.IsEmpty then
     begin
      cdsProcessoItemPARTNUMBERFABID.Value := cdsProcessoItemPARTNUMBERID.Value;
      cdsProcessoItemDESCRICAOINGLES.Value := Cds.FieldByName('DESCRICAOINGLES').AsString;
      cdsProcessoItemVLRFOBUS.Value        := Cds.FieldByName('VLRFOB').AsCurrency;

      ChecarPartNumber;
      ChecarRegAnvisa;
     end
  else
     begin
      cdsProcessoItemDESCRICAOPORTUGUES.Clear;
      cdsProcessoItemDESCRICAOINGLES.Clear;
      cdsProcessoItemVLRFOBUS.Clear;
      cdsProcessoItemGRUPOID.Clear;

      raise Exception.Create( 'Part Number Inválido.' );
     end;
  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmIT.cdsMercadoriaNewRecord(DataSet: TDataSet);
var Cds: TClientDataSet;
    iSQL: String;
begin
 iSQL := 'SELECT NVL( MAX( MERCADORIAID ), 0 ) ' +
          ' FROM IT_MERCADORIA ' +
         ' WHERE DECLARACAOID = ' + cdsDeclaracaoDECLARACAOID.AsString;

 try
  ExecDynamicProvider( -1, iSQL, Cds );

 // Admissão temporária
  if cdsDeclaracaoADMISSAOTEMP.AsInteger = 0 then
      begin
       // Alíquota do ICMS
       if cdsDeclaracaoEMPRESAID.AsInteger in [1..11] then
          cdsMercadoriaALIQUOTAICMS.AsFloat := 18
       else
          cdsMercadoriaALIQUOTAICMS.AsFloat := 17;
      end
   else
      cdsMercadoriaALIQUOTAICMS.AsFloat  := 0;

  cdsMercadoriaMERCADORIAID.Value            := Cds.Fields[0].Value + 1;
  cdsMercadoriaUSUARIO.Value                 := dmGSI.UsuarioAtivo;
  cdsMercadoriaVLRFOB.AsFloat                := 0;
  cdsMercadoriaVLRIPI.AsFloat                := 0;
  cdsMercadoriaVLRICMS.AsFloat               := 0;
  cdsMercadoriaVLRFOBUS.AsFloat              := 0;
  cdsMercadoriaVLRFRETE.AsFloat              := 0;
  cdsMercadoriaVLRFRETEUS.AsFloat            := 0;
  cdsMercadoriaVLRBASEIPI.AsFloat            := 0;
  cdsMercadoriaVLRBASEICMS.AsFloat           := 0;
  cdsMercadoriaVLRCUSTOMOVIMENTO.AsFloat     := 0;
  cdsMercadoriaVLRCUSTOTRANSFERENCIA.AsFloat := 0;
  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmIT.cdsIndiceNewRecord(DataSet: TDataSet);
begin
 cdsIndiceUSUARIO.Value := dmGsi.UsuarioAtivo;
end;

procedure TdmIT.cdsIndiceReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
 Action := HandleReconcileError( DataSet, UpdateKind, E);
end;

procedure TdmIT.cdsIndiceMesNewRecord(DataSet: TDataSet);
begin
 cdsIndiceMesUSUARIO.Value := dmGsi.UsuarioAtivo
end;

procedure TdmIT.cdsDespachanteNewRecord(DataSet: TDataSet);
begin
 cdsDespachanteUSUARIO.Value := dmGsi.UsuarioAtivo
end;

procedure TdmIT.cdsContatoJapaoNewRecord(DataSet: TDataSet);
begin
 cdsContatoJapaoUSUARIO.Value := dmGsi.UsuarioAtivo
end;

procedure TdmIT.cdsTipoProcessoNewRecord(DataSet: TDataSet);
begin
 cdsTipoProcessoTIPOPROCESSOID.Value := ContadorDB('IT_TIPOPROCESSO','TIPOPROCESSOID','');
 cdsTipoProcessoUSUARIO.Value        := dmGsi.UsuarioAtivo
end;

procedure TdmIT.cdsTermoPagtoNewRecord(DataSet: TDataSet);
begin
 cdsTermoPagtoTERMOPAGTOID.Value := ContadorDB('IT_TERMOPAGTO','TERMOPAGTOID','');
 cdsTermoPagtoUSUARIO.Value      := dmGsi.UsuarioAtivo
end;

procedure TdmIT.cdsTipoCategoriaNewRecord(DataSet: TDataSet);
begin
 cdsTipoCategoriaUSUARIO.Value := dmGsi.UsuarioAtivo
end;

procedure TdmIT.cdsRazaoExigenciaNewRecord(DataSet: TDataSet);
begin
 cdsRazaoExigenciaUSUARIO.Value := dmGsi.UsuarioAtivo
end;

procedure TdmIT.cdsFrequenciaNewRecord(DataSet: TDataSet);
begin
 cdsFrequenciaUSUARIO.Value := dmGsi.UsuarioAtivo
end;

procedure TdmIT.cdsListaPrecoNewRecord(DataSet: TDataSet);
begin
 cdsListaPrecoUSUARIO.Value := dmGsi.UsuarioAtivo
end;

procedure TdmIT.cdsCorListaPrecoNewRecord(DataSet: TDataSet);
begin
 cdsCorListaPrecoDATAID.AsDateTime := pCnnMain.AppServer.IServerDate;
 cdsCorListaPrecoUSUARIO.Value     := dmGsi.UsuarioAtivo
end;

procedure TdmIT.cdsProcessoReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
 Action := HandleReconcileError( DataSet, UpdateKind, E);
end;

procedure TdmIT.cdsProcessoItemAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsProcesso.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsProcesso.Edit;
end;

procedure TdmIT.cdsProcessoItemSerieNewRecord(DataSet: TDataSet);
begin
 cdsProcessoItemSerieUSUARIO.Value := dmGsi.UsuarioAtivo
end;

procedure TdmIT.cdsAdicaoAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsDeclaracao.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsDeclaracao.Edit;
end;

procedure TdmIT.cdsAdicaoAfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsDeclaracao.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsDeclaracao.Edit;
end;

procedure TdmIT.cdsMercadoriaAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsDeclaracao.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsDeclaracao.Edit;
end;

procedure TdmIT.cdsMercadoriaAfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsDeclaracao.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsDeclaracao.Edit;
end;

procedure TdmIT.cdsProcessoItemAfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsProcesso.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsProcesso.Edit;
end;

procedure TdmIT.cdsProcessoItemSerieAfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsProcessoItem.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsProcessoItem.Edit;
end;

procedure TdmIT.cdsProcessoItemSerieAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsProcessoItem.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsProcessoItem.Edit;
end;


procedure TdmIT.cdsContaEMPRESAIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( 'DSPRVEMPRESA' ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsContaL_NOMEFANTASIA.Value := Cds.FieldByName('NOMEFANTASIA').AsString
  else
     begin
      cdsContaL_NOMEFANTASIA.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;
  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmIT.cdsContaCONTACONTABILIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( 'DSPRVCONTACONTABIL' ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsContaL_DESCRICAOCONTA.Value := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsContaL_DESCRICAOCONTA.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;
  Cds.Close;
 finally
  FreeAndNil( Cds );
end;


end;

procedure TdmIT.cdsContaAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmIT.cdsContaAfterPost(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmIT.cdsContaNewRecord(DataSet: TDataSet);
begin
 cdsContaUSUARIO.Value := dmGsi.UsuarioAtivo
end;

procedure TdmIT.cdsProcessoItemVLRYENValidate(Sender: TField);
var TaxaDolar, TaxaYene : Extended;
begin
 if ( cdsProcessoCOBERTURACAMBIAL.Value = 1 ) or ( cdsProcessoItemVLRYEN.Value < 1 ) then
    exit;

 TaxaDolar := shdcnnIT.AppServer.ITaxaDiaria( cdsProcessoItemDATACONVERSAO.ASString, 'DOLARFISCALDIARIO' );
 TaxaYene  := shdcnnIT.AppServer.ITaxaDiaria( cdsProcessoItemDATACONVERSAO.ASString, 'YENEFISCALDIARIO' );

 if ( TaxaDolar = 0 ) or ( TaxaYene = 0 ) then
    raise Exception.Create('Indice não cadastrado na tabela de Índices diários !' );

 if cdsProcessoItemVLRYEN.Value > 0 then
    cdsProcessoItemVLRFOBUS.Value := ( cdsProcessoItemVLRYEN.Value * TaxaYene ) / TaxaDolar;
end;

procedure TdmIT.cdsDeclaracaoDATAREGISTROValidate(Sender: TField);
begin
 cdsDeclaracaoL_DOLARFISCALDIARIO.AsCurrency := shdcnnIT.AppServer.ITaxaDiaria( cdsDeclaracaoDATAREGISTRO.ASString, 'DOLARFISCALDIARIO' );
 cdsDeclaracaoL_YENEFISCALDIARIO.AsCurrency  := shdcnnIT.AppServer.ITaxaDiaria( cdsProcessoItemDATACONVERSAO.ASString, 'YENEFISCALDIARIO' );

 if cdsDeclaracaoL_DOLARFISCALDIARIO.AsCurrency = 0 then
    raise Exception.Create('Indice não cadastrado na tabela de Índices diários !' );
end;

procedure TdmIT.cdsProcessoLOCALCHEGADAIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 if ( cdsProcessoLOCALCHEGADAID.IsNull ) then
    begin
     cdsProcessoL_DESCRICAOLOCALCHEGADA.Clear;
     Exit;
    end;

 Cds     := nil;
 InstSQL := 'IT_LOCALCHEGADA.'+Sender.FieldName + ' = ' + Sender.AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsLocalChegada.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsProcessoL_DESCRICAOLOCALCHEGADA.AsString := Cds.FieldByName('DESCRICAO').AsString
  else
   begin
    cdsProcessoL_DESCRICAOLOCALCHEGADA.Clear;
    raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
   end;

 finally
  Cds.Close;
  FreeAndNil( Cds );
 end;
end;

procedure TdmIT.cdsProcessoVIAEMBARQUEIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'IT_VIAEMBARQUE.'+ Sender.FieldName + ' = ' + Sender.AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsViaEmbarque.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsProcessoL_DESCRICAOVIAEMBARQUE.AsString := Cds.FieldByName('DESCRICAO').AsString
  else
   begin
    cdsProcessoL_DESCRICAOVIAEMBARQUE.Clear;
    raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
   end;
  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmIT.cdsLocalChegadaNewRecord(DataSet: TDataSet);
begin
 cdsLocalChegadaLOCALCHEGADAID.Value := ContadorDB('IT_LOCALCHEGADA','LOCALCHEGADAID','');
 cdsLocalChegadaUSUARIO.Value        := dmGsi.UsuarioAtivo
end;

procedure TdmIT.cdsViaEmbarqueNewRecord(DataSet: TDataSet);
begin
 cdsViaEmbarqueVIAEMBARQUEID.Value := ContadorDB('IT_VIAEMBARQUE','VIAEMBARQUEID','');
 cdsViaEmbarqueUSUARIO.Value       := dmGsi.UsuarioAtivo;
end;

procedure TdmIT.cdsDeclaracaoCalcFields(DataSet: TDataSet);
begin
 if cdsDeclaracao.State = dsInternalCalc then
    cdsDeclaracaoC_DIFAPURARESUMO.Value := cdsDeclaracaoVLRTOTALIPI.Value +
                                           cdsDeclaracaoVLRTOTALICMS.Value +
                                           cdsDeclaracaoVLRTOTALCUSTOAPARELHO.Value +
                                           cdsDeclaracaoVLRTOTALCUSTOPECA.Value +
                                           cdsDeclaracaoVLRTOTALMAQEQUIP.Value  +
                                           cdsDeclaracaoVLRTOTALFERRAMENTAL.Value +
                                           cdsDeclaracaoVLRTOTALMOVUTENSILIOS.Value +
                                           cdsDeclaracaoVLRTOTALADMTEMP.Value +
                                           cdsDeclaracaoVLRTOTALPIS.Value +
                                           cdsDeclaracaoVLRTOTALCOFINS.Value -
                                           cdsDeclaracaoVLRTOTALFOB2.Value -
                                           cdsDeclaracaoVLRTOTALFOBANT.Value -
                                           cdsDeclaracaoVLRTOTALCIF2.Value -
                                           cdsDeclaracaoVLRTOTALCIFANT.Value -
                                           cdsDeclaracaoVLRTOTALDESPDESP.Value -
                                           cdsDeclaracaoVLRTOTALDESPGI.Value -
                                           cdsDeclaracaoVLRTOTALSEGUROTRANSP.Value -
                                           cdsDeclaracaoVLRTOTALIRRFPAGAR.Value -
                                           cdsDeclaracaoVLRTOTALFRETELOCAL.Value ;

    cdsDeclaracaoC_TOTALDESPADUANEIRAS.Value := cdsDeclaracaoVLRDESPSINDDESP.Value +
                                                cdsDeclaracaoVLRDESPCODESPINFRAERO.Value +
                                                cdsDeclaracaoVLRDESPAFRMM.Value +
                                                cdsDeclaracaoVLRFRETEMARITIMOAEREO.Value +
                                                cdsDeclaracaoVLRDESPCPMF.Value +
                                                cdsDeclaracaoTAXASISCOMEX.Value +
                                                cdsDeclaracaoVLRDESPTRANSPENTREGA.Value +
                                                cdsDeclaracaoVLRDESPTRANSPREMOCAO.Value +
                                                cdsDeclaracaoVLRDESPARMAZENTREPOSTO.Value +
                                                cdsDeclaracaoVLRDESPTXEXPEDIENTE.Value +
                                                cdsDeclaracaoVLRTAXAEMISSAOLI.Value +
                                                cdsDeclaracaoVLRDESPVIGSANITARIA.Value +
                                                cdsDeclaracaoVLROUTRASDESPESAS.Value +
                                                cdsDeclaracaoVLRDESPCOMISSAONFS.Value +
                                                cdsDeclaracaoVLRTOTALIPI.Value +
                                                cdsDeclaracaoVLRDESPESAII.Value +
                                                cdsDeclaracaoVLRTOTALICMS.Value +
                                                cdsDeclaracaoVLRTOTALPIS.Value +
                                                cdsDeclaracaoVLRTOTALCOFINS.Value;
end;

procedure TdmIT.cdsProcessoItemREGANVISAValidate(Sender: TField);

 procedure ChecarRegAnvisa;
 var iSqlA, iUpd : String;
     cdsA  : TClientDataSet;
 begin
  cdsA  := nil;
  iSQLA := 'SELECT MODELOID, REGANVISAID FROM PP_CATALOGO' +
           ' WHERE MODELOID = ' + QuotedStr( cdsProcessoItemPARTNUMBERID.AsString ) +
           ' AND REGANVISAID IS NULL';

  iUpd  := 'UPDATE PP_CATALOGO SET ' +
           '  REGANVISAID     = ' + QuotedStr( cdsProcessoItemREGANVISA.Value ) +
           ' WHERE MODELOID = ' + QuotedStr( cdsProcessoItemPARTNUMBERID.Value );
  try
   ExecDynamicProvider( -1, iSqlA, cdsA );
   if not cdsA.IsEmpty then
      ExecDML( iUpd );

   cdsA.Close;
  finally
   FreeAndNil( cdsA );
  end;
 end;

begin
 ChecarRegAnvisa;
end;

procedure TdmIT.cdsProcessoIMPORTADORIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'ENTIDADEID = ' + Sender.AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvEntidade' ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
  begin
   cdsProcessoL_NOMEIMPORTADOR.Value     := Cds.FieldByName('NOME').AsString;
   cdsProcessoL_CEPIMPORTADOR.Value      := Cds.FieldByName('CEPID').AsCurrency;
   cdsProcessoL_ENDERECOIMPORTADOR.Value := Cds.FieldByName('ENDERECO').AsString;
   cdsProcessoL_CIDADEIMPORTADOR.Value   := Cds.FieldByName('CIDADE').AsString;
   cdsProcessoL_UFIMPORTADOR.Value       := Cds.FieldByName('SIGLAUFID').AsString;
  end
  else
  begin
   cdsProcessoL_NOMEIMPORTADOR.Clear;
   cdsProcessoL_CEPIMPORTADOR.Clear;
   cdsProcessoL_ENDERECOIMPORTADOR.Clear;
   cdsProcessoL_CIDADEIMPORTADOR.Clear;
   cdsProcessoL_UFIMPORTADOR.Clear;
   raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
  end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmIT.cdsProcessoItemGRUPOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( dmEF.cdsGrupo.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsProcessoItemL_SIGLAGRUPO.Value := Cds.FieldByName('SIGLAGRUPO').AsString
  else
     begin
      cdsProcessoItemL_SIGLAGRUPO.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmIT.cdsMercadoriaBeforeDelete(DataSet: TDataSet);
begin
 AtualizaProcesso( 'Null',
                   cdsMercadoriaPROCESSOID.AsString,
                   cdsMercadoriaTIPOPROCESSOID.AsString,
                   cdsMercadoriaITEMPROCESSOID.AsString );
end;

procedure TdmIT.cdsDeclaracaoBeforeDelete(DataSet: TDataSet);
begin
 if ( not cdsDeclaracaoDIID.IsNull ) or ( not cdsDeclaracaoNFEID.IsNull ) then
    raise Exception.Create('Declaração não pode ser apagada, pois há processos vinculados');
end;

procedure TdmIT.cdsDeclaracaoAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

end.
