unit u_dmOFFLine;

interface

uses
  SysUtils, Classes, DB, DBClient;

type
  TdmOFFLine = class(TDataModule)
    dsAdiantamento: TDataSource;
    cdsOperacao: TClientDataSet;
    cdsOperacaoOPERACAOID: TBCDField;
    cdsOperacaoFINALIDADE: TStringField;
    cdsOperacaoDESCRICAO: TStringField;
    cdsOperacaoCONTACONTABILID: TStringField;
    cdsOperacaoOPERACAO: TStringField;
    cdsOperacaoUSUARIO: TStringField;
    dsOperacao: TDataSource;
    cdsEntidade: TClientDataSet;
    cdsEntidadeENTIDADEID: TBCDField;
    cdsEntidadeNOME: TStringField;
    cdsEntidadeUSUARIO: TStringField;
    dsEntidade: TDataSource;
    cdsAdiantamento: TClientDataSet;
    cdsAdiantamentoADIANTAMENTOID: TBCDField;
    cdsAdiantamentoDATADEPOSITO: TSQLTimeStampField;
    cdsAdiantamentoDATASOLICITACAO: TSQLTimeStampField;
    cdsAdiantamentoFUNCIONARIOID: TBCDField;
    cdsAdiantamentoTIPODESPESAOS: TStringField;
    cdsAdiantamentoOSID: TStringField;
    cdsAdiantamentoHISTORICO: TStringField;
    cdsAdiantamentoHORASOLICITADA: TSQLTimeStampField;
    cdsAdiantamentoKMSAIDA: TBCDField;
    cdsAdiantamentoKMCHEGADA: TBCDField;
    cdsAdiantamentoC_KmRodados: TFloatField;
    cdsAdiantamentoLIBCHEFIA: TBCDField;
    cdsAdiantamentoLIBERADO: TBCDField;
    cdsAdiantamentoNOMELIBCHEFIA: TStringField;
    cdsAdiantamentoOPERACAOID: TBCDField;
    cdsAdiantamentoVLROPERACAO: TBCDField;
    cdsAdiantamentoUSUARIO: TStringField;
    cdsAdiantamentoL_DESCRICAOOPERACAO: TStringField;
    cdsAdiantamentoL_OPERACAO: TStringField;
    cdsAdiantamentoL_NOMEFUNCIONARIO: TStringField;
    cdsAdiantamentoULT: TAggregateField;
    cdsConfig: TClientDataSet;
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
    dsConfig: TDataSource;
    cdsAdiantamentoPROBLEMATRANSF: TBooleanField;
    cdsAdiantamentoLOGERRO: TMemoField;
    cdsUsuario: TClientDataSet;
    cdsUsuarioUSUARIOID: TStringField;
    cdsUsuarioENTIDADEID: TBCDField;
    cdsUsuarioL_NOME: TStringField;
    cdsUsuarioSENHA: TStringField;
    cdsUsuarioREQUERSENHA: TBCDField;
    cdsUsuarioBLOQUEADO: TBCDField;
    cdsUsuarioBLOQMSG: TStringField;
    cdsUsuarioFOTO: TBlobField;
    cdsUsuarioACESSOTOTAL: TBCDField;
    cdsUsuarioMUDARSENHA: TBCDField;
    cdsOperacaoBLOQUEADO: TBCDField;
    cdsBancoHora: TClientDataSet;
    cdsBancoHoraBANCOHORAID: TBCDField;
    cdsBancoHoraDATASOLICITACAO: TSQLTimeStampField;
    cdsBancoHoraFUNCIONARIOID: TBCDField;
    cdsBancoHoraTIPODESPESAOS: TStringField;
    cdsBancoHoraOSID: TStringField;
    cdsBancoHoraOPERACAOID: TBCDField;
    cdsBancoHoraHORAINI: TSQLTimeStampField;
    cdsBancoHoraHORAFIM: TSQLTimeStampField;
    cdsBancoHoraDIFERENCAHORATRAB: TStringField;
    cdsBancoHoraDIFERENCAMINTRAB: TFMTBCDField;
    cdsBancoHoraHISTORICO: TStringField;
    cdsBancoHoraLIBCHEFIA: TBCDField;
    cdsBancoHoraNOMELIBCHEFIA: TStringField;
    cdsBancoHoraLIBERADO: TBCDField;
    cdsBancoHoraIMPRESSO: TBCDField;
    cdsBancoHoraUSUARIO: TStringField;
    dsBancoHora: TDataSource;
    cdsBancoHoraULT: TAggregateField;
    cdsBancoHoraPROBLEMATRANSF: TBooleanField;
    cdsBancoHoraLOGERRO: TMemoField;
    cdsBancoHoraL_DESCRICAOOPERACAO: TStringField;
    cdsBancoHoraL_OPERACAO: TStringField;
    cdsBancoHoraL_FILIALID: TStringField;
    cdsBancoHoraL_NOMEFUNCIONARIO: TStringField;
    cdsEntidadeFILIALID: TBCDField;
    cdsFeriado: TClientDataSet;
    cdsFeriadoFERIADOID: TBCDField;
    cdsFeriadoDATAFERIADO: TSQLTimeStampField;
    cdsFeriadoFILIALID: TBCDField;
    cdsFeriadoFERIADOREGIONAL: TBCDField;
    cdsFeriadoDESCRICAOFERIADO: TStringField;
    cdsFeriadoUSUARIO: TStringField;
    dsFeriado: TDataSource;
    cdsDefeito: TClientDataSet;
    cdsDefeitoDEFEITOID: TBCDField;
    cdsDefeitoDESCRICAO: TStringField;
    cdsDefeitoUSUARIO: TStringField;
    dsDefeito: TDataSource;
    cdsAdiantamentoTIPOMOEDA: TStringField;
    cdsFilial: TClientDataSet;
    cdsFilialFILIALID: TBCDField;
    cdsFilialCPF_CNPJ: TStringField;
    cdsFilialINSCRESTADUAL: TStringField;
    cdsFilialINSCRMUNICIPAL: TStringField;
    cdsFilialNOME: TStringField;
    cdsFilialNOMEFANTASIA: TStringField;
    cdsFilialCEPID: TBCDField;
    cdsFilialNUMERO: TStringField;
    cdsFilialCOMPLEMENTO: TStringField;
    cdsFilialENDERECO: TStringField;
    cdsFilialBAIRRO: TStringField;
    cdsFilialCIDADE: TStringField;
    cdsFilialSIGLAUFID: TStringField;
    cdsFilialCONTATO: TStringField;
    cdsFilialTELEFONE: TStringField;
    cdsFilialTELEFONE2: TStringField;
    cdsFilialCELULAR: TStringField;
    cdsFilialCELULAR2: TStringField;
    cdsFilialFAX: TStringField;
    cdsFilialEMAIL: TStringField;
    cdsFilialPAGINA: TStringField;
    cdsFilialIDENTIFICADOR: TStringField;
    cdsFilialULTIMAOS: TBCDField;
    cdsFilialCONTABANCARIA: TStringField;
    cdsFilialCONTACAIXA: TStringField;
    cdsFilialHORAINICIOTRABALHO: TSQLTimeStampField;
    cdsFilialHORAFINALTRABALHO: TSQLTimeStampField;
    cdsFilialUSUARIO: TStringField;
    dsFilial: TDataSource;
    cdsOperacaoLANCEXCLUSIVO: TBCDField;
    cdsOsHoraOFF: TClientDataSet;
    cdsOsHoraOFFOSID: TStringField;
    cdsOsHoraOFFENTIDADEID: TBCDField;
    cdsOsHoraOFFL_NOMEPOPULARTECNICO: TStringField;
    cdsOsHoraOFFDATATRABALHOID: TSQLTimeStampField;
    cdsOsHoraOFFQTDHORATRAB: TBCDField;
    cdsOsHoraOFFQTDHORATRANSP: TBCDField;
    cdsOsHoraOFFQTDHORAESPERA: TBCDField;
    cdsOsHoraOFFQTDHORAOUTRA: TBCDField;
    cdsOsHoraOFFPROBLEMATRANSF: TBooleanField;
    cdsOsHoraOFFLOGERRO: TMemoField;
    cdsOsHoraOFFUSUARIO: TStringField;
    dsOsHoraOFF: TDataSource;
    cdsOsDefeitoOFF: TClientDataSet;
    cdsOsDefeitoOFFOSID: TStringField;
    cdsOsDefeitoOFFITEMID: TBCDField;
    cdsOsDefeitoOFFDEFEITOID: TBCDField;
    cdsOsDefeitoOFFL_DESCRICAODEFEITO: TStringField;
    cdsOsDefeitoOFFLOCALDEFEITO: TStringField;
    cdsOsDefeitoOFFSERVICOEXECUTADO: TStringField;
    cdsOsDefeitoOFFPROBLEMATRANSF: TBooleanField;
    cdsOsDefeitoOFFLOGERRO: TMemoField;
    cdsOsDefeitoOFFUSUARIO: TStringField;
    cdsOsDefeitoOFFULT: TAggregateField;
    dsOsDefeitoOFF: TDataSource;
    cdsOSHora: TClientDataSet;
    dsOSDefeito: TDataSource;
    dsOSHora: TDataSource;
    cdsOSHoraOSID: TStringField;
    cdsOSHoraENTIDADEID: TBCDField;
    cdsOSHoraL_NOMEPOPULARTECNICO: TStringField;
    cdsOSHoraDATATRABALHOID: TSQLTimeStampField;
    cdsOSHoraQTDHORATRAB: TBCDField;
    cdsOSHoraQTDHORATRANSP: TBCDField;
    cdsOSHoraQTDHORAESPERA: TBCDField;
    cdsOSHoraQTDHORAOUTRA: TBCDField;
    cdsOSHoraPROBLEMATRANSF: TBooleanField;
    cdsOSHoraLOGERRO: TMemoField;
    cdsOSHoraUSUARIO: TStringField;
    cdsOSMaterial: TClientDataSet;
    dsOSMaterial: TDataSource;
    cdsOSMaterialOSID: TStringField;
    cdsOSMaterialITEMID: TBCDField;
    cdsOSMaterialEMPRESAID: TBCDField;
    cdsOSMaterialPRODUTOID: TBCDField;
    cdsOSMaterialL_DESCRICAOPRODUTO: TStringField;
    cdsOSMaterialQUANTIDADE: TBCDField;
    cdsOSMaterialDESCRICAOMATSERV: TStringField;
    cdsOSMaterialVLRPRECOUNITARIO: TFMTBCDField;
    cdsOSMaterialVLRPRECOTOTAL: TFMTBCDField;
    cdsOSMaterialUSUARIO: TStringField;
    cdsOSOCOperacional: TClientDataSet;
    dsOSOCOperacional: TDataSource;
    cdsOSOCOperacionalOSID: TStringField;
    cdsOSOCOperacionalITEMID: TBCDField;
    cdsOSOCOperacionalDATAOCORRENCIA: TSQLTimeStampField;
    cdsOSOCOperacionalOCOPERACIONALID: TBCDField;
    cdsOSOCOperacionalL_DESCRICAOOCOPERACIONAL: TStringField;
    cdsOSOCOperacionalDATAACAOTOMADA: TSQLTimeStampField;
    cdsOSOCOperacionalUSUARIOACAOTOMADA: TStringField;
    cdsOSOCOperacionalACAOTOMADA: TMemoField;
    cdsOSOCOperacionalUSUARIO: TStringField;
    cdsOSMaterialULT: TAggregateField;
    cdsOSOCOperacionalULT: TAggregateField;
    cdsOSMaterialPROBLEMATRANSF: TBooleanField;
    cdsOSMaterialLOGERRO: TMemoField;
    cdsOSOCOperacionalPROBLEMATRANSF: TBooleanField;
    cdsOSOCOperacionalLOGERRO: TMemoField;
    cdsCustoHora: TClientDataSet;
    cdsCustoHoraCUSTOHORAID: TBCDField;
    cdsCustoHoraDESCRICAO: TStringField;
    cdsCustoHoraVLRHORATRAB: TBCDField;
    cdsCustoHoraVLRHORATRANSP: TBCDField;
    cdsCustoHoraVLRHORAESPERA: TBCDField;
    cdsCustoHoraVLRHORAOUTROS: TBCDField;
    cdsCustoHoraMODELOID: TStringField;
    cdsProduto: TClientDataSet;
    cdsProdutoPRODUTOID: TBCDField;
    cdsProdutoEMPRESAID: TBCDField;
    cdsProdutoDESCRICAOPORTUGUES: TStringField;
    cdsProdutoALIQUOTAIPI: TFMTBCDField;
    cdsProdutoPRECOVENDA: TBCDField;
    cdsProdutoPRECOVENDAMINIMO: TBCDField;
    dsProduto: TDataSource;
    cdsOcOperacional: TClientDataSet;
    cdsOcOperacionalOCOPERACIONALID: TBCDField;
    cdsOcOperacionalDESCRICAO: TStringField;
    cdsOcOperacionalUSUARIO: TStringField;
    dsOcOperacional: TDataSource;
    cdsOS: TClientDataSet;
    dsOS: TDataSource;
    cdsOSOSID: TStringField;
    cdsOSCLIENTEID: TBCDField;
    d: TStringField;
    cdsOSCIDADE: TStringField;
    cdsOSSIGLAUFID: TStringField;
    cdsOSSERIEID: TStringField;
    cdsOSMODELOID: TStringField;
    cdsOSL_GRUPOID: TBCDField;
    cdsOSL_SIGLAGRUPO: TStringField;
    cdsOSFILIALID: TBCDField;
    cdsOSL_NOMEFANTASIAFILIAL: TStringField;
    cdsOSTIPOOSID: TStringField;
    cdsOSL_DESCRICAOTIPOOS: TStringField;
    cdsOSTIPOATENDIMENTO: TStringField;
    cdsOSOSCORRELACAOID: TStringField;
    cdsOSLOCALIZACAOOSID: TBCDField;
    cdsOSL_LOCALIZACAOOS: TStringField;
    cdsOSDATAABERTURA: TSQLTimeStampField;
    cdsOSDATAVALIDADE: TSQLTimeStampField;
    cdsOSDATACONCLUSAO: TSQLTimeStampField;
    cdsOSOSIMPRESSA: TBCDField;
    cdsOSOSOFFLINE: TBCDField;
    cdsOSOSOFFLINEUSUARIO: TStringField;
    cdsOSDATAFECHAMENTO: TSQLTimeStampField;
    cdsOSDATAENTRLABORATORIO: TSQLTimeStampField;
    cdsOSDATASAIDALABORATORIO: TSQLTimeStampField;
    cdsOSTIPOASSIST: TStringField;
    cdsOSSTATUS: TStringField;
    cdsOSL_VERSAOSOFT: TStringField;
    cdsOSL_TELEFONE: TStringField;
    cdsOSL_FAX: TStringField;
    cdsOSL_PASTA: TStringField;
    cdsOSL_INSCRESTADUAL: TStringField;
    cdsOSL_INSCRMUNICIPAL: TStringField;
    cdsOSL_CPFCNPJ: TStringField;
    cdsOSSOLICITANTE: TStringField;
    cdsOSSETOR: TStringField;
    cdsOSSERVICO: TStringField;
    cdsOSOBSSERVICO: TStringField;
    cdsOSTECNICOID: TBCDField;
    cdsOSL_NOMETECNICO: TStringField;
    cdsOSDATAHORACHEGADA: TSQLTimeStampField;
    cdsOSDATAHORASAIDA: TSQLTimeStampField;
    cdsOSORCAMENTOID: TStringField;
    cdsOSVLRORCADO: TBCDField;
    cdsOSMOEDAORCADA: TStringField;
    cdsOSCONDPAGTO: TStringField;
    cdsOSVLRPAGTOANTEC: TBCDField;
    cdsOSCEPID: TBCDField;
    cdsOSNUMERO: TStringField;
    cdsOSCOMPLEMENTO: TStringField;
    cdsOSENDERECO: TStringField;
    cdsOSBAIRRO: TStringField;
    cdsOSC_TIPOATENDIMENTO: TStringField;
    cdsOSNUMCORTES: TBCDField;
    cdsOSORCAMENTOREFID: TBCDField;
    cdsOSCONDPAGTOID: TBCDField;
    cdsOSPORCDESCONTO: TFMTBCDField;
    cdsOSNOMELIBDESCONTO: TStringField;
    cdsOSVLRDESCONTO: TFMTBCDField;
    cdsOSVLRMAODEOBRA: TFMTBCDField;
    cdsOSVLRDESLOCAMENTO: TFMTBCDField;
    cdsOSVLRFRETE: TFMTBCDField;
    cdsOSVLRPECA: TFMTBCDField;
    cdsOSVLRTOTALMAODEOBRA: TFMTBCDField;
    cdsOSVLRTOTALDESLOCAMENTO: TFMTBCDField;
    cdsOSVLRTOTALORCCOMP: TFMTBCDField;
    cdsOSVLRTOTALFRETE: TFMTBCDField;
    cdsOSVLRTOTALPECA: TFMTBCDField;
    cdsOSVLRTOTALOUTRO: TFMTBCDField;
    cdsOSVLRTOTALPAGAR: TFMTBCDField;
    cdsOSUSUARIO: TStringField;
    cdsOSPROBLEMATRANSF: TBooleanField;
    cdsOSLOGERRO: TMemoField;
    cdsOSDefeito: TClientDataSet;
    cdsOSDefeitoOSID: TStringField;
    cdsOSDefeitoITEMID: TBCDField;
    cdsOSDefeitoDEFEITOID: TBCDField;
    cdsOSDefeitoL_DESCRICAODEFEITO: TStringField;
    cdsOSDefeitoLOCALDEFEITO: TStringField;
    cdsOSDefeitoPROBLEMATRANSF: TBooleanField;
    cdsOSDefeitoLOGERRO: TMemoField;
    cdsOSDefeitoUSUARIO: TStringField;
    cdsOSDefeitoULT: TAggregateField;
    dsCondPagto: TDataSource;
    cdsCondPagto: TClientDataSet;
    cdsCondPagtoCONDPAGTOID: TBCDField;
    cdsCondPagtoDESCRICAO: TStringField;
    cdsCondPagtoNUMPARCELA: TBCDField;
    cdsCondPagtoDIASPRIMEIRA: TBCDField;
    cdsCondPagtoDIASENTREPARC: TBCDField;
    cdsCondPagtoMULTA: TBCDField;
    cdsCondPagtoDIASJUROS: TBCDField;
    cdsCondPagtoJUROS: TBCDField;
    cdsCondPagtoDESCONTO: TBCDField;
    cdsCondPagtoEMITEDUPLICATA: TBCDField;
    cdsCondPagtoDIAUNICO: TBCDField;
    cdsCondPagtoIMPRIMEDESCRICAO: TBCDField;
    cdsCondPagtoDESCRICAOPAGTO: TMemoField;
    cdsCondPagtoDATAIGUALEMISSAO: TBCDField;
    cdsCondPagtoIMPRIMEDUPLIC1PARCELA: TBCDField;
    cdsCondPagtoUSUARIO: TStringField;
    cdsOSL_DESCR_CONDPAGTO: TStringField;
    cdsOSMaterialALIQUOTAIPI: TFMTBCDField;
    cdsBancoHoraBLOQUEADO: TIntegerField;
    cdsAdiantamentoBLOQUEADO: TIntegerField;
    cdsOSHoraBLOQUEADO: TIntegerField;
    cdsOSDefeitoBLOQUEADO: TIntegerField;
    cdsOSMaterialBLOQUEADO: TIntegerField;
    cdsOSL_CONTRATOID: TStringField;
    cdsOSDefeitoSERVICOEXECUTADO: TMemoField;
    cdsHorasCfgTrab: TClientDataSet;
    cdsHorasCfgTrabHORASCFGTRABID: TBCDField;
    cdsHorasCfgTrabDESCRICAO: TStringField;
    cdsHorasCfgTrabBLOQUEADO: TBCDField;
    cdsHorasCfgTrabHORAINICIOTRABALHO: TSQLTimeStampField;
    cdsHorasCfgTrabHORAFINALTRABALHO: TSQLTimeStampField;
    cdsHorasCfgTrabHORASALMOCO: TFMTBCDField;
    cdsHorasCfgTrabLIMITEBCOHORAS: TFMTBCDField;
    cdsHorasCfgTrabTRABSABADO: TBCDField;
    cdsHorasCfgTrabTRABDOMINGO: TBCDField;
    cdsHorasCfgTrabUSUARIO: TStringField;
    dsHorasCfgTrab: TDataSource;
    cdsBancoHoraL_HORASCFGTRABID: TIntegerField;
    cdsEntidadeHORASCFGTRABID: TBCDField;
    cdsOSOSELETRONICA: TBCDField;
    cdsOSVERSAOSOFT: TStringField;
    cdsOSRESPRECEBIMENTO: TStringField;
    cdsOSOBSDEMO1: TStringField;
    cdsOSOBSDEMO2: TStringField;
    cdsOSLIBCHEFIADATA: TSQLTimeStampField;
    cdsOSLIBCHEFIANOME: TStringField;
    cdsOSLIBCHEFIA: TBCDField;
    cdsOSTENSAOLOCAL: TBCDField;
    cdsOSDATARETIRADA: TSQLTimeStampField;
    cdsOSDATAENTREGA: TSQLTimeStampField;
    cdsOSVLRSEGURO: TFMTBCDField;
    cdsOSL_TERMOCONTRATO: TStringField;
    cdsAdiantamentoIDENTIFSOLIC: TStringField;
    procedure cdsAdiantamentoNewRecord(DataSet: TDataSet);
    procedure cdsAdiantamentoKMSAIDAValidate(Sender: TField);
    procedure cdsAdiantamentoKMCHEGADAValidate(Sender: TField);
    procedure cdsAdiantamentoOPERACAOIDValidate(Sender: TField);
    procedure cdsAdiantamentoFUNCIONARIOIDValidate(Sender: TField);
    procedure cdsAdiantamentoCalcFields(DataSet: TDataSet);
    procedure cdsAdiantamentoBeforePost(DataSet: TDataSet);
    procedure cdsBancoHoraNewRecord(DataSet: TDataSet);
    procedure cdsBancoHoraFUNCIONARIOIDValidate(Sender: TField);
    procedure cdsBancoHoraOPERACAOIDValidate(Sender: TField);
    procedure cdsBancoHoraHORAFIMValidate(Sender: TField);
    procedure cdsOsHoraOFFNewRecord(DataSet: TDataSet);
    procedure cdsOsDefeitoOFFNewRecord(DataSet: TDataSet);
    procedure cdsOSHoraNewRecord(DataSet: TDataSet);
    procedure cdsOSDefeitoNewRecord(DataSet: TDataSet);
    procedure cdsOSBeforeDelete(DataSet: TDataSet);
    procedure cdsOSBeforePost(DataSet: TDataSet);
    procedure cdsOSMaterialNewRecord(DataSet: TDataSet);
    procedure cdsOSMaterialPRODUTOIDValidate(Sender: TField);
    procedure cdsOSMaterialVLRPRECOUNITARIOValidate(Sender: TField);
    procedure cdsOSMaterialBeforePost(DataSet: TDataSet);
    procedure cdsOSOCOperacionalNewRecord(DataSet: TDataSet);
    procedure cdsOSOCOperacionalOCOPERACIONALIDValidate(Sender: TField);
    procedure cdsOSHoraAfterDelete(DataSet: TDataSet);
    procedure cdsOSMaterialAfterPost(DataSet: TDataSet);
    procedure cdsOSPORCDESCONTOValidate(Sender: TField);
    procedure cdsOSCONDPAGTOIDValidate(Sender: TField);
    procedure cdsOSAfterDelete(DataSet: TDataSet);
    procedure cdsAdiantamentoBeforeDelete(DataSet: TDataSet);
    procedure cdsAdiantamentoBeforeEdit(DataSet: TDataSet);
    procedure cdsOSDefeitoBeforePost(DataSet: TDataSet);
  private
    procedure DeleteOSItens;
    { Private declarations }
    procedure VrfBloqDMLOS( Value : Integer );
  public
    { Public declarations }
    UsuarioOFFLine     : String;
    FuncionarioOFFLine : Integer;
    procedure TotalOSItens;
    procedure FiltroOSImpressao(sKey: String; var cds: TClientDataSet);
  end;

var
  dmOFFLine: TdmOFFLine;

implementation

uses FuncoesDSI, u_dmRD;

{$R *.dfm}


procedure TdmOFFLine.VrfBloqDMLOS( Value : Integer );
begin
 if Value = 1 then
    raise Exception.Create('Lançamento da O.S. está bloqueado, pois já foi feito o sincronismo');
end;

procedure TdmOFFLine.FiltroOSImpressao( sKey : String; var cds : TClientDataSet );
begin
 cds.SetRangeStart;
 cds['OSID'] := sKey;
 cds.SetRangeEnd;
 cds['OSID'] := sKey;

 cds.ApplyRange;
end;


procedure TdmOFFLine.TotalOSItens;
var VlrTotalMaoObra, VlrTotalMaterial, VlrTotalDespesasRDV, VlrTotalOS : Real;

 procedure T_MaoObra;
 begin
   if not cdsCustoHora.FindKey([cdsOSMODELOID.Value]) then
      raise Exception.Create('Custo da Hora técnica para o modelo da O.S. não localizado para cálculo');

   cdsOSHora.First;
   while not cdsOSHora.Eof do
   begin
    VlrTotalMaoObra := VlrTotalMaoObra +
                       ( ( cdsCustoHoraVLRHORATRAB.AsFloat   * cdsOSHoraQTDHORATRAB.AsFloat ) +
                         ( cdsCustoHoraVLRHORATRANSP.AsFloat * cdsOSHoraQTDHORATRANSP.AsFloat ) +
                         ( cdsCustoHoraVLRHORAESPERA.AsFloat * cdsOSHoraQTDHORAESPERA.AsFloat ) +
                         ( cdsCustoHoraVLRHORAOUTROS.AsFloat * cdsOSHoraQTDHORAOUTRA.AsFloat ) );

    cdsOSHora.Next;
   end;
 end;

 procedure T_DespRDV;
 begin
  cdsAdiantamento.First;
  while not cdsAdiantamento.EOF do
  begin
   if cdsAdiantamentoL_OPERACAO.Value = 'C' then
      VlrTotalDespesasRDV := VlrTotalDespesasRDV + cdsAdiantamentoVLROPERACAO.Value;

   cdsAdiantamento.Next;
  end;
 end;

 procedure T_Material;
 begin
  cdsOSMaterial.First;
  while not cdsOSMaterial.Eof do
  begin
    VlrTotalMaterial := VlrTotalMaoObra +
                        cdsOSMaterialVLRPRECOTOTAL.AsFloat;
   cdsOSMaterial.Next;
  end;
 end;

begin
 if cdsOS.Tag = 1 then
    exit;

 FiltroOSImpressao( dmOFFLine.cdsAdiantamentoOSID.AsString, dmOFFLine.cdsAdiantamento );
 FiltroOSImpressao( dmOFFLine.cdsBancoHoraOSID.AsString, dmOFFLine.cdsBancoHora );

 cdsAdiantamento.DisableControls;
 cdsOSHora.DisableControls;
 cdsOSDefeito.DisableControls;
 cdsOSMaterial.DisableControls;
 cdsOSOCOperacional.DisableControls;

 VlrTotalMaoObra     := 0;
 VlrTotalMaterial    := 0;
 VlrTotalDespesasRDV := 0;

 try
  try
   if cdsOsOSIMPRESSA.AsInteger = 1 then
      raise Exception.Create('Não é permitido mudança nos cálculos da O.S., pois já foi feito a impressão final da O.S.');

   T_MaoObra;
   T_DespRDV;
   T_Material;

   if not ( cdsOS.State in [dsEdit, dsInsert] ) then
      cdsOS.Edit;


   cdsOsVLRTOTALMAODEOBRA.AsCurrency    := VlrTotalMaoObra;
   cdsOsVLRTOTALDESLOCAMENTO.AsCurrency := VlrTotalDespesasRDV;
   cdsOsVLRTOTALPECA.AsCurrency         := VlrTotalMaterial;

   cdsOsVLRTOTALORCCOMP.AsCurrency      := cdsOsVLRMAODEOBRA.AsCurrency +
                                           cdsOsVLRDESLOCAMENTO.AsCurrency +
                                           cdsOsVLRFRETE.AsCurrency +
                                           cdsOsVLRPECA.AsCurrency;

   VlrTotalOS := ( cdsOsVLRTOTALMAODEOBRA.AsCurrency +
                   cdsOsVLRTOTALDESLOCAMENTO.AsCurrency +
                   cdsOsVLRTOTALFRETE.AsCurrency +
                   cdsOsVLRTOTALPECA.AsCurrency +
                   cdsOsVLRTOTALOUTRO.AsCurrency );

   if cdsOsNOMELIBDESCONTO.IsNull then
      cdsOsVLRDESCONTO.AsCurrency       := 0
   else
      cdsOsVLRDESCONTO.AsCurrency       := ( VlrTotalOS * ( cdsOsPORCDESCONTO.AsCurrency / 100 ) );

   // Caso o orçamento esteja preenchido não calcular os valores do orçamento
   if cdsOSVLRORCADO.AsFloat > 0 then
      cdsOsVLRTOTALPAGAR.AsCurrency := cdsOSVLRORCADO.AsFloat + cdsOsVLRTOTALORCCOMP.AsFloat - cdsOsVLRDESCONTO.AsCurrency
   else
      cdsOsVLRTOTALPAGAR.AsCurrency := VlrTotalOS + cdsOsVLRTOTALORCCOMP.AsFloat - cdsOsVLRDESCONTO.AsCurrency;


  except
   on E: Exception do
   begin
    raise Exception.Create( E.Message );
   end;
  end;

 finally
  cdsAdiantamento.EnableControls;
  cdsOSHora.EnableControls;
  cdsOSDefeito.EnableControls;
  cdsOSMaterial.EnableControls;
  cdsOSOCOperacional.EnableControls;
 end;
end;

procedure TdmOFFLine.DeleteOSItens;
begin
 cdsAdiantamento.DisableControls;
 cdsOSHora.DisableControls;
 cdsOSDefeito.DisableControls;
 cdsOSMaterial.DisableControls;
 cdsOSOCOperacional.DisableControls;

 try
  cdsAdiantamento.First;
  while not cdsAdiantamento.EOF do cdsAdiantamento.Delete;

  cdsOSHora.First;
  while not cdsOSHora.EOF do cdsOSHora.Delete;

  cdsOSDefeito.First;
  while not cdsOSDefeito.EOF do cdsOSDefeito.Delete;

  cdsOSMaterial.First;
  while not cdsOSMaterial.EOF do cdsOSMaterial.Delete;

  cdsOSOCOperacional.First;
  while not cdsOSOCOperacional.EOF do cdsOSOCOperacional.Delete;

 finally
  cdsAdiantamento.EnableControls;
  cdsOSHora.EnableControls;
  cdsOSDefeito.EnableControls;
  cdsOSMaterial.EnableControls;
  cdsOSOCOperacional.EnableControls;
 end;
end;

procedure TdmOFFLine.cdsAdiantamentoNewRecord(DataSet: TDataSet);
begin
 // Controle quando for quilometragem não alterar
 cdsAdiantamentoVLROPERACAO.ReadOnly := False;

 if ( cdsAdiantamentoULT.IsNull ) or ( cdsAdiantamentoULT.Value > 500 ) then
    cdsAdiantamentoADIANTAMENTOID.Value := 1
 else
    cdsAdiantamentoADIANTAMENTOID.Value := cdsAdiantamentoULT.AsInteger + 1;

 cdsAdiantamentoTIPOMOEDA.Value            := 'R';
 cdsAdiantamentoTIPODESPESAOS.Value        := 'S';
 cdsAdiantamentoFUNCIONARIOID.Value        := FuncionarioOFFLine;
 cdsAdiantamentoLIBERADO.Value             := 0;
 cdsAdiantamentoLIBCHEFIA.Value            := 0;
 cdsAdiantamentoVLROPERACAO.Value          := 0;
 cdsAdiantamentoDATASOLICITACAO.AsDateTime := Date;
 cdsAdiantamentoDATADEPOSITO.AsDateTime    := Date;
 cdsAdiantamentoHORASOLICITADA.AsDateTime  := Now;
 cdsAdiantamentoPROBLEMATRANSF.Value       := False;
 cdsAdiantamentoUSUARIO.AsString           := dmOFFLine.UsuarioOFFLine;
end;

procedure TdmOFFLine.cdsAdiantamentoKMSAIDAValidate(Sender: TField);
begin
 if cdsAdiantamentoOPERACAOID.Value <> cdsConfigKMID.Value then
    if cdsAdiantamentoKMSAIDA.Value > 0 then
       raise Exception.Create( 'KM Saída não deve ser preenchido para o tipo de despesa selecionado!' );

 if not cdsAdiantamentoKMSAIDA.IsNull then
    if frac(cdsAdiantamentoKMSAIDA.Value ) <> 0 then
       raise Exception.Create('KM Saida no formato inválido!' );
end;

procedure TdmOFFLine.cdsAdiantamentoKMCHEGADAValidate(Sender: TField);
begin
 if cdsAdiantamento.Tag = 1 then
    exit;

 if cdsAdiantamentoOPERACAOID.Value <> cdsConfigKMID.Value then
    if not cdsAdiantamentoKMCHEGADA.IsNull then
       raise Exception.Create('KM Chegada não deve ser preenchido para o tipo de despesa selecionado!' );

 if not cdsAdiantamentoKMCHEGADA.IsNull then
    if cdsAdiantamentoKMCHEGADA.Value < cdsAdiantamentoKMSAIDA.Value then
       raise Exception.Create('KM Chegada deve ser maior que KM de Saída!' );

 if not cdsAdiantamentoKMCHEGADA.IsNull then
    if frac(cdsAdiantamentoKMCHEGADA.Value ) <> 0 then
       raise Exception.Create('KM Chegada no formato inválido!' );

 if cdsAdiantamentoVLROPERACAO.ReadOnly then
    begin
     cdsAdiantamentoVLROPERACAO.ReadOnly := False;
     cdsAdiantamentoVLROPERACAO.Value    :=( ( cdsAdiantamentoKMCHEGADA.Value - cdsAdiantamentoKMSAIDA.Value ) * cdsConfigVLRKM.Value );
     cdsAdiantamentoVLROPERACAO.ReadOnly := True;
    end;
end;

procedure TdmOFFLine.cdsAdiantamentoOPERACAOIDValidate(Sender: TField);
begin
 if cdsOperacao.FindKey([cdsAdiantamentoOPERACAOID.Value ]) then
    begin
     if cdsOperacaoBLOQUEADO.AsInteger = 1 then
        raise Exception.Create( 'Operação está bloqueada para utilização.' );

     if cdsOperacaoLANCEXCLUSIVO.AsInteger = 1 then
        raise Exception.Create( 'Lançamento Exclusivo de Operação.' );

     cdsAdiantamentoL_DESCRICAOOPERACAO.Value := cdsOperacaoDESCRICAO.Value;
     if cdsAdiantamentoOPERACAOID.Value = cdsConfigKMID.Value then
        begin
         if cdsAdiantamentoVLROPERACAO.ReadOnly then
            cdsAdiantamentoVLROPERACAO.ReadOnly := False;

         cdsAdiantamentoVLROPERACAO.Value    := 0;

         if cdsAdiantamento.Tag = 0 then
            cdsAdiantamentoVLROPERACAO.ReadOnly := True;
        end
     else
        begin
         cdsAdiantamentoKMCHEGADA.Clear;
         cdsAdiantamentoKMSAIDA.Clear;
         cdsAdiantamentoVLROPERACAO.ReadOnly := False;
        end;
    end
 else
    begin
     cdsAdiantamentoL_DESCRICAOOPERACAO.Clear;
     raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
    end;
end;

procedure TdmOFFLine.cdsAdiantamentoFUNCIONARIOIDValidate(
  Sender: TField);
begin
 // Sincronismo com outro usuário não validar
 if cdsAdiantamento.Tag = 1 then
    exit;

 if not cdsAdiantamentoFUNCIONARIOID.IsNull then
    begin
     if cdsEntidade.FindKey([cdsAdiantamentoFUNCIONARIOID.Value ]) then
        cdsAdiantamentoL_NOMEFUNCIONARIO.Value := cdsEntidadeNOME.Value
     else
        begin
         cdsAdiantamentoL_NOMEFUNCIONARIO.Clear;
         raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
        end;
    end;
end;

procedure TdmOFFLine.cdsAdiantamentoCalcFields(DataSet: TDataSet);
begin
 if cdsAdiantamento.State = dsInternalCalc then
    cdsAdiantamentoC_KmRodados.Value := ( cdsAdiantamentoKMCHEGADA.Value - cdsAdiantamentoKMSAIDA.Value );
end;

procedure TdmOFFLine.cdsAdiantamentoBeforeDelete(DataSet: TDataSet);
begin
 VrfBloqDMLOS( DataSet.FieldByName('BLOQUEADO').AsInteger );
end;

procedure TdmOFFLine.cdsAdiantamentoBeforeEdit(DataSet: TDataSet);
begin
 VrfBloqDMLOS( DataSet.FieldByName('BLOQUEADO').AsInteger );
end;

procedure TdmOFFLine.cdsAdiantamentoBeforePost(DataSet: TDataSet);
begin
 if  cdsAdiantamentoVLROPERACAO.Value < 1 then
     raise Exception.Create('Valor da Despesa deve ser maior do que zero!');
end;

procedure TdmOFFLine.cdsBancoHoraNewRecord(DataSet: TDataSet);
begin
 if ( cdsBancoHoraULT.IsNull ) or ( cdsBancoHoraULT.Value > 500 ) then
    cdsBancoHoraBANCOHORAID.Value := 1
 else
    cdsBancoHoraBANCOHORAID.Value := cdsBancoHoraULT.AsInteger + 1;

 cdsBancoHoraLIBERADO.Value             := 0;
 cdsBancoHoraLIBCHEFIA.Value            := 0;
 cdsBancoHoraFUNCIONARIOID.Value        := FuncionarioOFFLine;
 cdsBancoHoraTIPODESPESAOS.Value        := 'S';
 cdsBancoHoraDATASOLICITACAO.AsDateTime := Date;
 cdsBancoHoraIMPRESSO.Value             := 0;
 cdsBancoHoraPROBLEMATRANSF.Value       := False;
 cdsBancoHoraUSUARIO.AsString           := dmOFFLine.UsuarioOFFLine;
end;

procedure TdmOFFLine.cdsBancoHoraFUNCIONARIOIDValidate(Sender: TField);
begin
 // Sincronismo com outro usuário não validar
 if cdsBancoHora.Tag = 1 then
    exit;

 if not cdsBancoHoraFUNCIONARIOID.IsNull then
    begin
     if cdsEntidade.FindKey([cdsBancoHoraFUNCIONARIOID.Value ]) then
        cdsBancoHoraL_NOMEFUNCIONARIO.Value := cdsEntidadeNOME .Value
     else
        begin
         cdsBancoHoraL_NOMEFUNCIONARIO.Clear;
         raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
        end;
    end;

 if ( ( cdsBancoHoraHORAINI.AsFloat > 0 ) or ( cdsBancoHoraHORAFIM.AsFloat > 0 ) ) then
    raise Exception.Create('Não é permitido mudar o código de lançamento, pois o cálculo das hora já foi efetuado');
end;

procedure TdmOFFLine.cdsBancoHoraOPERACAOIDValidate(Sender: TField);
begin
 if ( ( cdsBancoHoraHORAINI.AsFloat > 0 ) or ( cdsBancoHoraHORAFIM.AsFloat > 0 ) ) then
    raise Exception.Create('Não é permitido mudar o código de lançamento, pois o cálculo das hora já foi efetuado');

 if cdsOperacao.FindKey([cdsBancoHoraOPERACAOID.Value ]) then
    begin
     if cdsOperacaoBLOQUEADO.Value = 1 then
        raise Exception.Create( 'Operação está bloqueada para utilização.' );

     if cdsOperacaoFINALIDADE.Value <> 'H' then
        raise Exception.Create( 'Operação não é específica do banco de horas.' );

     cdsBancoHoraL_DESCRICAOOPERACAO.Value := cdsOperacaoDESCRICAO.Value;
     cdsBancoHoraL_OPERACAO.Value          := cdsOperacaoOPERACAO.Value;
    end
 else
    begin
     cdsBancoHoraL_DESCRICAOOPERACAO.Clear;
     cdsBancoHoraL_OPERACAO.Clear;
     raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
    end;
end;

procedure TdmOFFLine.cdsBancoHoraHORAFIMValidate(Sender: TField);
var DifMinTrab : Currency;
begin
 if cdsBancoHoraHORAFIM.AsDateTime < 1 then
    exit;

 if cdsBancoHoraHORAINI.AsDateTime < StrToDate( '03/04/2006') then
    raise Exception.Create('Lançamento não permitido para o novo Banco de Horas que vigora a partir de 03 Abril 2006!');

 DifMinTrab := dmRD.DiffTime( cdsBancoHoraL_FILIALID.AsInteger,  cdsBancoHoraL_HORASCFGTRABID.AsInteger, cdsBancoHoraL_OPERACAO.Value, cdsBancoHoraHORAINI.AsDateTime, cdsBancoHoraHORAFIM.AsDateTime,
                              ( cdsBancoHoraOPERACAOID.Value = 66 ) );

 if ( DifMinTrab = 0 ) then
    raise Exception.Create('Não é necessário lançar esta despesa, pois o período informado resultou em saldo zero de horas');

 cdsBancoHoraDIFERENCAMINTRAB.AsFloat   := DifMinTrab;
 cdsBancoHoraDIFERENCAHORATRAB.AsString := FormatTime( cdsBancoHoraDIFERENCAMINTRAB.AsFloat );
end;

procedure TdmOFFLine.cdsOsHoraOFFNewRecord(DataSet: TDataSet);
begin
 cdsOsHoraOFFDATATRABALHOID.AsDateTime := Date;
 cdsOsHoraOFFQTDHORATRAB.Value         := 0;
 cdsOsHoraOFFQTDHORATRANSP.Value       := 0;
 cdsOsHoraOFFQTDHORAESPERA.Value       := 0;
 cdsOsHoraOFFQTDHORAOUTRA.Value        := 0;
 cdsOsHoraOFFENTIDADEID.Value          := FuncionarioOFFLine;
 cdsOsHoraOFFPROBLEMATRANSF.Value      := False;
 cdsOsHoraOFFUSUARIO.AsString          := dmOFFLine.UsuarioOFFLine;
end;

procedure TdmOFFLine.cdsOSMaterialAfterPost(DataSet: TDataSet);
begin
 TotalOSItens;
end;

procedure TdmOFFLine.cdsOSMaterialBeforePost(DataSet: TDataSet);
begin
 cdsOSMaterialVLRPRECOTOTAL.AsFloat := cdsOSMaterialVLRPRECOUNITARIO.AsFloat *
                                       cdsOSMaterialQUANTIDADE.AsFloat;
end;

procedure TdmOFFLine.cdsOSMaterialNewRecord(DataSet: TDataSet);
begin
 if ( cdsOSMaterialULT.IsNull ) or ( cdsOSMaterialULT.Value > 500 ) then
    cdsOSMaterialITEMID.Value := 1
 else
    cdsOSMaterialITEMID.Value := cdsOSMaterialULT.AsInteger + 1;

 cdsOSMaterialPROBLEMATRANSF.Value := False;
 cdsOSMaterialUSUARIO.AsString     := dmOFFLine.UsuarioOFFLine;
end;

procedure TdmOFFLine.cdsOSMaterialPRODUTOIDValidate(Sender: TField);
begin
 if not cdsOSMaterialDESCRICAOMATSERV.IsNull then
    raise Exception.Create('Serviço já foi preenchido, o produto não pode ser incluso neste processo');

 if cdsProduto.FindKey([cdsOSMaterialEMPRESAID.Value,cdsOSMaterialPRODUTOID.Value]) then
    begin
     cdsOSMaterialALIQUOTAIPI.Value           := cdsProdutoALIQUOTAIPI.AsBCD;
     cdsOSMaterialL_DESCRICAOPRODUTO.AsString := cdsProdutoDESCRICAOPORTUGUES.AsString;
     cdsOSMaterialVLRPRECOUNITARIO.AsFloat    := cdsProdutoPRECOVENDA.AsFloat +
                                                 ( cdsProdutoPRECOVENDA.AsFloat * ( cdsProdutoALIQUOTAIPI.AsFloat / 100 ) );
     cdsOSMaterialVLRPRECOTOTAL.AsFloat       := cdsProdutoPRECOVENDA.AsFloat * cdsOSMaterialQUANTIDADE.AsFloat;
    end
 else
    begin
     cdsOSMaterialALIQUOTAIPI.Clear;
     cdsOSMaterialL_DESCRICAOPRODUTO.Clear;
     raise Exception.Create('Código do Produto não cadastrado !' );
    end;
end;

procedure TdmOFFLine.cdsOSMaterialVLRPRECOUNITARIOValidate(Sender: TField);
begin
 cdsOSMaterialVLRPRECOTOTAL.AsFloat := cdsOSMaterialVLRPRECOUNITARIO.AsFloat *
                                       cdsOSMaterialQUANTIDADE.AsFloat;
end;

procedure TdmOFFLine.cdsOSOCOperacionalNewRecord(DataSet: TDataSet);
begin
 if ( cdsOSOCOperacionalULT.IsNull ) or ( cdsOSOCOperacionalULT.Value > 500 ) then
    cdsOSOCOperacionalITEMID.Value := 1
 else
    cdsOSOCOperacionalITEMID.Value := cdsOSOCOperacionalULT.AsInteger + 1;

 cdsOSOCOperacionalPROBLEMATRANSF.Value := False;
 cdsOSOCOperacionalUSUARIO.AsString     := dmOFFLine.UsuarioOFFLine;
end;

procedure TdmOFFLine.cdsOSOCOperacionalOCOPERACIONALIDValidate(Sender: TField);
begin
 if cdsOcOperacional.FindKey([cdsOSOCOperacionalOCOPERACIONALID.Value]) then
    cdsOSOCOperacionalL_DESCRICAOOCOPERACIONAL.Value := cdsOcOperacionalDESCRICAO.Value
 else
    begin
     cdsOSOCOperacionalL_DESCRICAOOCOPERACIONAL.Clear;
     raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
    end;
end;

procedure TdmOFFLine.cdsOSPORCDESCONTOValidate(Sender: TField);
begin
 if cdsOS.State <> dsInsert then
    if ( cdsOsNOMELIBDESCONTO.IsNull ) or
       ( Length( cdsOsNOMELIBDESCONTO.AsString ) < 4 )  then
       raise Exception.Create('Não é permitido informar o desconto sem preenchimento do Nome da liberação do desconto');
end;

procedure TdmOFFLine.cdsOSAfterDelete(DataSet: TDataSet);
begin
 cdsOS.Tag := 0;   // Controlar a deleção
end;

procedure TdmOFFLine.cdsOSBeforeDelete(DataSet: TDataSet);
begin
 cdsOS.Tag := 1;   // Controlar a deleção
 DeleteOSItens;
end;

procedure TdmOFFLine.cdsOSBeforePost(DataSet: TDataSet);
begin
 TotalOSItens;
end;

procedure TdmOFFLine.cdsOSCONDPAGTOIDValidate(Sender: TField);
begin
 if cdsOSCONDPAGTOID.AsInteger > 0 then
    if not cdsCondPagto.FindKey([cdsOSCONDPAGTOID.Value]) then
       raise Exception.Create('Código da condição de pagamento não localizado');
end;

procedure TdmOFFLine.cdsOSDefeitoBeforePost(DataSet: TDataSet);
var Tam : Integer;
begin
 Tam := Length( cdsOsDefeitoSERVICOEXECUTADO.Value );
 if Tam > 741 then
    raise Exception.Create('Tamanho do campo excedido em :' +
          IntToStr( Tam - 741 ) );
end;

procedure TdmOFFLine.cdsOSDefeitoNewRecord(DataSet: TDataSet);
begin
 if ( cdsOsDefeitoULT.IsNull ) or ( cdsOsDefeitoULT.Value > 500 ) then
    cdsOsDefeitoITEMID.Value := 1
 else
    cdsOsDefeitoITEMID.Value := cdsOsDefeitoULT.AsInteger + 1;

 cdsOsDefeitoPROBLEMATRANSF.Value := False;
 cdsOsDefeitoUSUARIO.AsString     := dmOFFLine.UsuarioOFFLine;
end;

procedure TdmOFFLine.cdsOsDefeitoOFFNewRecord(DataSet: TDataSet);
begin
 if ( cdsOsDefeitoOFFULT.IsNull ) or ( cdsOsDefeitoOFFULT.Value > 500 ) then
    cdsOsDefeitoOFFITEMID.Value := 1
 else
    cdsOsDefeitoOFFITEMID.Value := cdsOsDefeitoOFFULT.AsInteger + 1;

 cdsOsDefeitoOFFPROBLEMATRANSF.Value := False;
 cdsOsDefeitoOFFUSUARIO.AsString     := dmOFFLine.UsuarioOFFLine;
end;

procedure TdmOFFLine.cdsOSHoraAfterDelete(DataSet: TDataSet);
begin
 TotalOSItens;
end;

procedure TdmOFFLine.cdsOSHoraNewRecord(DataSet: TDataSet);
begin
 cdsOsHoraDATATRABALHOID.AsDateTime := Date;
 cdsOsHoraQTDHORATRAB.Value         := 0;
 cdsOsHoraQTDHORATRANSP.Value       := 0;
 cdsOsHoraQTDHORAESPERA.Value       := 0;
 cdsOsHoraQTDHORAOUTRA.Value        := 0;
 cdsOsHoraENTIDADEID.Value          := FuncionarioOFFLine;
 cdsOsHoraPROBLEMATRANSF.Value      := False;
 cdsOsHoraUSUARIO.AsString          := dmOFFLine.UsuarioOFFLine;
end;

end.



