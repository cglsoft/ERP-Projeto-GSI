 unit u_dmRD;

interface

uses
  SysUtils, Forms, Classes, Controls, DB, DBClient, MConnect, Dialogs,
 cDateTime,DateUtils;

type
  TdmRD = class(TDataModule)
    cdsOperacao: TClientDataSet;
    cdsOperacaoOPERACAOID: TBCDField;
    cdsOperacaoFINALIDADE: TStringField;
    cdsOperacaoDESCRICAO: TStringField;
    cdsOperacaoOPERACAO: TStringField;
    cdsOperacaoUSUARIO: TStringField;
    dsOperacao: TDataSource;
    cdsMemo: TClientDataSet;
    dsMemo: TDataSource;
    cdsMemoMEMOID: TBCDField;
    cdsMemoDATASOLICITACAO: TSQLTimeStampField;
    cdsMemoDATADEPOSITO: TSQLTimeStampField;
    cdsMemoFUNCIONARIOID: TBCDField;
    cdsMemoOPERACAOID: TBCDField;
    cdsMemoVLRMEMO: TBCDField;
    cdsMemoHISTORICO: TStringField;
    cdsMemoSOLICITANTE: TStringField;
    cdsMemoLIBERADO: TBCDField;
    cdsMemoTRANSFERIDO: TBCDField;
    cdsFeriado: TClientDataSet;
    dsFeriado: TDataSource;
    cdsFeriadoFERIADOREGIONAL: TBCDField;
    cdsFeriadoDESCRICAOFERIADO: TStringField;
    cdsFeriadoUSUARIO: TStringField;
    dsRdv: TDataSource;
    cdsRdvItem: TClientDataSet;
    dsRdvItem: TDataSource;
    cdsRdvEspelho: TClientDataSet;
    dsRdvEspelho: TDataSource;
    cdsHora: TClientDataSet;
    dsHora: TDataSource;
    cdsHoraHORAID: TBCDField;
    cdsHoraDATAABERTURA: TSQLTimeStampField;
    cdsHoraVLRSALDO: TBCDField;
    cdsHoraDATAFECHAMENTO: TSQLTimeStampField;
    cdsHoraBLOQUEADO: TBCDField;
    cdsHoraItem: TClientDataSet;
    dsHoraItem: TDataSource;
    cdsHoraItemHORAID: TBCDField;
    cdsHoraItemDATASERVICOID: TSQLTimeStampField;
    cdsHoraItemITEMID: TBCDField;
    cdsHoraItemOSID: TStringField;
    cdsHoraItemOPERACAOID: TBCDField;
    cdsHoraItemHORAINI: TSQLTimeStampField;
    cdsHoraItemHORAFIM: TSQLTimeStampField;
    cdsHoraItemVLRSALDO: TBCDField;
    cdsHoraItemHISTORICO: TStringField;
    cdsHoraItemUSUARIO: TStringField;
    cdsAdiantamento: TClientDataSet;
    dsAdiantamento: TDataSource;
    cdsAdiantamentoADIANTAMENTOID: TBCDField;
    cdsAdiantamentoDATASOLICITACAO: TSQLTimeStampField;
    cdsAdiantamentoDATADEPOSITO: TSQLTimeStampField;
    cdsAdiantamentoFUNCIONARIOID: TBCDField;
    cdsAdiantamentoOPERACAOID: TBCDField;
    cdsAdiantamentoVLROPERACAO: TBCDField;
    cdsAdiantamentoHORASOLICITADA: TSQLTimeStampField;
    cdsAdiantamentoHISTORICO: TStringField;
    cdsAdiantamentoLIBCHEFIA: TBCDField;
    cdsAdiantamentoNOMELIBCHEFIA: TStringField;
    cdsAdiantamentoLIBERADO: TBCDField;
    cdsAdiantamentoKMSAIDA: TBCDField;
    cdsAdiantamentoKMCHEGADA: TBCDField;
    cdsAdiantamentoUSUARIO: TStringField;
    cdsAdiantamentoItem: TClientDataSet;
    dsAdiantamentoItem: TDataSource;
    cdsAdiantamentoItemADIANTAMENTOID: TBCDField;
    cdsAdiantamentoItemITEMID: TBCDField;
    cdsAdiantamentoItemDATASOLICITACAO: TSQLTimeStampField;
    cdsAdiantamentoItemOPERACAOID: TBCDField;
    cdsAdiantamentoItemVLROPERACAO: TBCDField;
    cdsAdiantamentoItemHISTORICO: TStringField;
    cdsAdiantamentoItemKMSAIDA: TBCDField;
    cdsAdiantamentoItemKMCHEGADA: TBCDField;
    cdsAdiantamentoItemUSUARIO: TStringField;
    cdsRdv: TClientDataSet;
    cdsRdvRDVID: TBCDField;
    cdsRdvDATAABERTURA: TSQLTimeStampField;
    cdsRdvVLRSALDO: TBCDField;
    cdsRdvDATAFECHAMENTO: TSQLTimeStampField;
    cdsRdvDATAMESABERTO: TSQLTimeStampField;
    cdsRdvBLOQUEADO: TBCDField;
    cdsAdiantamentoC_KmRodados: TFloatField;
    cdsAdiantamentoItemC_KMRODADOS: TFloatField;
    cdsRdvEspelhoRDVID: TBCDField;
    cdsRdvEspelhoDATADOCID: TSQLTimeStampField;
    cdsRdvEspelhoITEMID: TBCDField;
    cdsRdvEspelhoOSID: TStringField;
    cdsRdvEspelhoOPERACAOID: TBCDField;
    cdsRdvEspelhoVLRDESPESA: TBCDField;
    cdsRdvEspelhoVLRSALDO: TBCDField;
    cdsRdvEspelhoHISTORICO: TStringField;
    cdsRdvEspelhoKMSAIDA: TBCDField;
    cdsRdvEspelhoKMCHEGADA: TBCDField;
    cdsRdvEspelhoUSUARIO: TStringField;
    cdsRdvEspelhoC_KmRodados: TFloatField;
    cdsRdvItemRDVID: TBCDField;
    cdsRdvItemDATAMOVIMENTOID: TSQLTimeStampField;
    cdsRdvItemITEMID: TBCDField;
    cdsRdvItemDATADOC: TSQLTimeStampField;
    cdsRdvItemOSID: TStringField;
    cdsRdvItemOPERACAOID: TBCDField;
    cdsRdvItemHISTORICO: TStringField;
    cdsRdvItemKMSAIDA: TBCDField;
    cdsRdvItemKMCHEGADA: TBCDField;
    cdsRdvItemDATAFECHAMENTO: TSQLTimeStampField;
    cdsRdvItemUSUARIO: TStringField;
    cdsOperacaoCONTACONTABILID: TStringField;
    shdcnnRD: TSharedConnection;
    cdsMemoL_DESCRICAOOPERACAO: TStringField;
    cdsMemoL_NOMEFUNCIONARIO: TStringField;
    cdsFeriadoL_NOMEFANTASIAFILIAL: TStringField;
    cdsRdvL_NOMEFUNCIONARIO: TStringField;
    cdsRdvsqldtsRdvEspelho: TDataSetField;
    cdsRdvsqldtsRdvItem: TDataSetField;
    cdsRdvItemL_DESCRICAOOPERACAO: TStringField;
    cdsRdvEspelhoL_DESCRICAOOPERACAO: TStringField;
    cdsHoraItemL_DESCRICAOOPERACAO: TStringField;
    cdsAdiantamentoL_DESCRICAOOPERACAO: TStringField;
    cdsAdiantamentoL_NOMEFUNCIONARIO: TStringField;
    cdsAdiantamentosqldtsAdiantamentoItem: TDataSetField;
    cdsAdiantamentoItemL_DESCRICAOOPERACAO: TStringField;
    cdsRdvItemVLRDESPESA: TBCDField;
    cdsRdvItemVLRSALDO: TBCDField;
    cdsHoraL_NOMEFUNCIONARIO: TStringField;
    cdsAdiantamentoL_OPERACAO: TStringField;
    cdsAdiantamentoL_VLRSALDO: TBCDField;
    cdsRdvItemL_OPERACAO: TStringField;
    cdsHoraItemL_OPERACAO: TStringField;
    cdsGeral: TClientDataSet;
    dsGeral: TDataSource;
    cdsGeralRDVID: TBCDField;
    cdsGeralDATAMOVIMENTOID: TSQLTimeStampField;
    cdsGeralITEMID: TBCDField;
    cdsGeralDATADOC: TSQLTimeStampField;
    cdsGeralOSID: TStringField;
    cdsGeralOPERACAOID: TBCDField;
    cdsGeralVLRDESPESA: TBCDField;
    cdsGeralVLRSALDO: TBCDField;
    cdsGeralHISTORICO: TStringField;
    cdsGeralKMSAIDA: TBCDField;
    cdsGeralKMCHEGADA: TBCDField;
    cdsGeralCONTACONTABILID: TStringField;
    cdsGeralOPERACAO: TStringField;
    cdsGeralDESCRICAO: TStringField;
    cdsGeralUSUARIO: TStringField;
    cdsGeralC_KMRODADOS: TFloatField;
    cdsRdvL_CONTACONTABIL: TStringField;
    cdsRdvL_DEPARTAMENTO: TStringField;
    cdsMemoL_OPERACAO: TStringField;
    cdsAdiantamentoL_DATAFECHAMENTO: TSQLTimeStampField;
    cdsRdvItemL_CONTACONTABIL: TStringField;
    cdsAdiantamentoTIPODESPESAOS: TStringField;
    cdsAdiantamentoOSID: TStringField;
    cdsRdvItemTIPODESPESAOS: TStringField;
    cdsRdvEspelhoTIPODESPESAOS: TStringField;
    cdsRdvItemC_KMRODADOS: TFloatField;
    cdsFeriadoFERIADOID: TBCDField;
    cdsFeriadoDATAFERIADO: TSQLTimeStampField;
    cdsFeriadoFILIALID: TBCDField;
    cdsOperacaoBLOQUEADO: TBCDField;
    cdsAdiantamentoL_SERIEID: TStringField;
    cdsAdiantamentoL_MODELOID: TStringField;
    cdsAdiantamentoL_NOME_OS: TStringField;
    cdsRdvLog: TClientDataSet;
    dsRdvLog: TDataSource;
    cdsRdvsqldtsRDVLog: TDataSetField;
    cdsRdvLogRDVID: TBCDField;
    cdsRdvLogITEMID: TBCDField;
    cdsRdvLogDATAEXCLUSAO: TSQLTimeStampField;
    cdsRdvLogLOGRDVID: TBCDField;
    cdsRdvLogDATAMOVIMENTOID: TSQLTimeStampField;
    cdsRdvLogDATADOC: TSQLTimeStampField;
    cdsRdvLogTIPODESPESAOS: TStringField;
    cdsRdvLogOSID: TStringField;
    cdsRdvLogOPERACAOID: TBCDField;
    cdsRdvLogL_DESCRICAOOPERACAO: TStringField;
    cdsRdvLogL_OPERACAO: TStringField;
    cdsRdvLogVLRDESPESA: TBCDField;
    cdsRdvLogVLRSALDO: TBCDField;
    cdsRdvLogHISTORICO: TStringField;
    cdsRdvLogKMSAIDA: TBCDField;
    cdsRdvLogKMCHEGADA: TBCDField;
    cdsRdvLogDATAFECHAMENTO: TSQLTimeStampField;
    cdsRdvLogOBSERVACAO: TStringField;
    cdsRdvLogUSUARIO: TStringField;
    cdsLogRDV: TClientDataSet;
    dsLogRdv: TDataSource;
    cdsLogRDVLOGRDVID: TBCDField;
    cdsLogRDVDESCRICAO: TStringField;
    cdsLogRDVUSUARIO: TStringField;
    cdsRdvLogL_LOGRDVDESCRICAO: TStringField;
    cdsRdvLog2: TClientDataSet;
    dsRdvLog2: TDataSource;
    cdsRdvLog2RDVID: TBCDField;
    cdsRdvLog2ITEMID: TBCDField;
    cdsRdvLog2DATAEXCLUSAO: TSQLTimeStampField;
    cdsRdvLog2LOGRDVID: TBCDField;
    cdsRdvLog2L_LOGRDVDESCRICAO: TStringField;
    cdsRdvLog2DATAMOVIMENTOID: TSQLTimeStampField;
    cdsRdvLog2DATADOC: TSQLTimeStampField;
    cdsRdvLog2TIPODESPESAOS: TStringField;
    cdsRdvLog2OSID: TStringField;
    cdsRdvLog2OPERACAOID: TBCDField;
    cdsRdvLog2L_DESCRICAOOPERACAO: TStringField;
    cdsRdvLog2L_OPERACAO: TStringField;
    cdsRdvLog2VLRDESPESA: TBCDField;
    cdsRdvLog2VLRSALDO: TBCDField;
    cdsRdvLog2HISTORICO: TStringField;
    cdsRdvLog2KMSAIDA: TBCDField;
    cdsRdvLog2KMCHEGADA: TBCDField;
    cdsRdvLog2DATAFECHAMENTO: TSQLTimeStampField;
    cdsRdvLog2OBSERVACAO: TStringField;
    cdsRdvLog2USUARIO: TStringField;
    cdsRdvItemADIANTAMENTOID: TBCDField;
    cdsRdvEspelhoADIANTAMENTOID: TBCDField;
    cdsRdvLogADIANTAMENTOID: TBCDField;
    cdsRdvLog2ADIANTAMENTOID: TBCDField;
    cdsAdiantamentoIMPRESSO: TBCDField;
    cdsRelHoraItem: TClientDataSet;
    dscdsRelHoraItem: TDataSource;
    cdsRelHoraItemHORAID: TBCDField;
    cdsRelHoraItemDATASERVICOID: TSQLTimeStampField;
    cdsRelHoraItemITEMID: TBCDField;
    cdsRelHoraItemOSID: TStringField;
    cdsRelHoraItemOPERACAOID: TBCDField;
    cdsRelHoraItemDATAHORAINICIAL: TSQLTimeStampField;
    cdsRelHoraItemHORAFIM: TSQLTimeStampField;
    cdsRelHoraItemVLRSALDO: TBCDField;
    cdsRelHoraItemHISTORICO: TStringField;
    cdsRelHoraItemUSUARIO: TStringField;
    cdsRelHoraItemL_DESCRICAOOPERACAO: TStringField;
    cdsRelHoraItemC_SALDOHORAS: TStringField;
    cdsRelHoraItemL_OPERACAO: TStringField;
    cdsRdvLogITEMRDVID: TBCDField;
    cdsRDVVisualiza: TClientDataSet;
    dsRDVVisualiza: TDataSource;
    cdsHoraItemDIFERENCAMINTRAB: TFMTBCDField;
    cdsBancoHora: TClientDataSet;
    dsBancoHora: TDataSource;
    cdsBancoHoraBANCOHORAID: TBCDField;
    cdsBancoHoraDATASOLICITACAO: TSQLTimeStampField;
    cdsBancoHoraFUNCIONARIOID: TBCDField;
    cdsBancoHoraL_NOMEFUNCIONARIO: TStringField;
    cdsBancoHoraTIPODESPESAOS: TStringField;
    cdsBancoHoraOSID: TStringField;
    cdsBancoHoraOPERACAOID: TBCDField;
    cdsBancoHoraL_DESCRICAOOPERACAO: TStringField;
    cdsBancoHoraL_OPERACAO: TStringField;
    cdsBancoHoraHORAINI: TSQLTimeStampField;
    cdsBancoHoraHORAFIM: TSQLTimeStampField;
    cdsBancoHoraDIFERENCAMINTRAB: TFMTBCDField;
    cdsBancoHoraHISTORICO: TStringField;
    cdsBancoHoraLIBCHEFIA: TBCDField;
    cdsBancoHoraNOMELIBCHEFIA: TStringField;
    cdsBancoHoraLIBERADO: TBCDField;
    cdsBancoHoraIMPRESSO: TBCDField;
    cdsBancoHoraUSUARIO: TStringField;
    cdsHoraVisualiza: TClientDataSet;
    dsHoraVisualiza: TDataSource;
    cdsHoraL_FILIALID: TBCDField;
    cdsHorasqldtsHoraItem: TDataSetField;
    cdsHoraItemDIFERENCAHORATRAB: TStringField;
    cdsBancoHoraL_FILIALID: TBCDField;
    cdsBancoHoraDIFERENCAHORATRAB: TStringField;
    cdsRelHoraItemDIFERENCAHORATRAB: TStringField;
    cdsGeralADIANTAMENTOID: TBCDField;
    cdsBancoHoraL_DATAFECHAMENTO: TSQLTimeStampField;
    cdsBancoHoraL_DATAMESABERTO: TSQLTimeStampField;
    cdsAdiantamentoTIPOMOEDA: TStringField;
    cdsRdvVLRSALDOUS: TFMTBCDField;
    cdsRdvItemTIPOMOEDA: TStringField;
    cdsRdvEspelhoTIPOMOEDA: TStringField;
    cdsRdvLogTIPOMOEDA: TStringField;
    cdsRdvsqldtsRdvItemUS: TDataSetField;
    cdsRDVItemUS: TClientDataSet;
    dsRDVItemUS: TDataSource;
    cdsRDVItemUSRDVID: TBCDField;
    cdsRDVItemUSDATAMOVIMENTOID: TSQLTimeStampField;
    cdsRDVItemUSITEMID: TBCDField;
    cdsRDVItemUSDATADOC: TSQLTimeStampField;
    cdsRDVItemUSTIPOMOEDA: TStringField;
    cdsRDVItemUSTIPODESPESAOS: TStringField;
    cdsRDVItemUSOSID: TStringField;
    cdsRDVItemUSOPERACAOID: TBCDField;
    cdsRDVItemUSL_DESCRICAOOPERACAO: TStringField;
    cdsRDVItemUSL_OPERACAO: TStringField;
    cdsRDVItemUSL_CONTACONTABIL: TStringField;
    cdsRDVItemUSVLRDESPESA: TBCDField;
    cdsRDVItemUSVLRSALDO: TBCDField;
    cdsRDVItemUSHISTORICO: TStringField;
    cdsRDVItemUSKMSAIDA: TBCDField;
    cdsRDVItemUSKMCHEGADA: TBCDField;
    cdsRDVItemUSC_KMRODADOS: TFloatField;
    cdsRDVItemUSDATAFECHAMENTO: TSQLTimeStampField;
    cdsRDVItemUSADIANTAMENTOID: TBCDField;
    cdsRDVItemUSUSUARIO: TStringField;
    cdsRdvLog2ITEMRDVID: TBCDField;
    cdsRdvLog2TIPOMOEDA: TStringField;
    cdsRdvDATAFECHAMENTOUS: TSQLTimeStampField;
    cdsMemoTIPOMOEDA: TStringField;
    cdsRelHoraItemHORAINI: TSQLTimeStampField;
    cdsRdvItemDATACONTABILIZACAO: TSQLTimeStampField;
    cdsRDVItemUSDATACONTABILIZACAO: TSQLTimeStampField;
    cdsMemoDATACONTABILIZACAO: TSQLTimeStampField;
    cdsHoraItemVLRSALDOMINUTOS: TFMTBCDField;
    cdsBancoHoraMULTILANCAMENTO: TBCDField;
    cdsOperacaoHORASDEDUZIR: TFMTBCDField;
    cdsAdiantamentoDATALIBCHEFIA: TSQLTimeStampField;
    cdsBancoHoraDATALIBCHEFIA: TSQLTimeStampField;
    cdsHoraItemBANCOHORAID: TBCDField;
    cdsOperacaoLANCEXCLUSIVO: TBCDField;
    cdsHoraCFG: TClientDataSet;
    dsHoraCFG: TDataSource;
    cdsHoraCFGANOMES: TBCDField;
    cdsHoraCFGDATACADASTRO: TSQLTimeStampField;
    cdsHoraCFGDATALIMITEFECH: TSQLTimeStampField;
    cdsHoraCFGDATALIMITELIB: TSQLTimeStampField;
    cdsHoraCFGUSUARIO: TStringField;
    cdsBancoHoraFILIALID: TBCDField;
    cdsBancoHoraL_NOMEFANTASIAFILIAL: TStringField;
    cdsHorasCfgTrab: TClientDataSet;
    dsHorasCfgTrab: TDataSource;
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
    cdsHoraL_HORASCFGTRABID: TBCDField;
    cdsBancoHoraL_HORASCFGTRABID: TBCDField;
    cdsRelHoraItemL_NOMEFUNCIONARIO: TStringField;
    cdsOperacaoIDENTIFSOLIC: TBCDField;
    cdsAdiantamentoIDENTIFSOLIC: TStringField;
    cdsAdiantamentoL_IDENTIFSOLIC: TBCDField;
    cdsRdvItemL_IDENTIFSOLIC: TStringField;
    cdsGeralL_IDENTIFSOLIC: TStringField;
    procedure cdsOperacaoNewRecord(DataSet: TDataSet);
    procedure cdsMemoNewRecord(DataSet: TDataSet);
    procedure cdsFeriadoNewRecord(DataSet: TDataSet);
    procedure cdsRdvNewRecord(DataSet: TDataSet);
    procedure cdsRdvItemNewRecord(DataSet: TDataSet);
    procedure cdsRdvEspelhoNewRecord(DataSet: TDataSet);
    procedure cdsHoraNewRecord(DataSet: TDataSet);
    procedure cdsHoraItemNewRecord(DataSet: TDataSet);
    procedure cdsAdiantamentoNewRecord(DataSet: TDataSet);
    procedure cdsAdiantamentoItemNewRecord(DataSet: TDataSet);
    procedure cdsRdvBeforeDelete(DataSet: TDataSet);
    procedure cdsHoraBeforeDelete(DataSet: TDataSet);
    procedure cdsAdiantamentoBeforeDelete(DataSet: TDataSet);
    procedure cdsAdiantamentoCalcFields(DataSet: TDataSet);
    procedure cdsAdiantamentoKMSAIDAValidate(Sender: TField);
    procedure cdsAdiantamentoKMCHEGADAValidate(Sender: TField);
    procedure cdsAdiantamentoItemAfterPost(DataSet: TDataSet);
    procedure cdsAdiantamentoItemBeforePost(DataSet: TDataSet);
    procedure cdsAdiantamentoItemCalcFields(DataSet: TDataSet);
    procedure cdsAdiantamentoItemVLROPERACAOValidate(Sender: TField);
    procedure cdsAdiantamentoItemKMSAIDAValidate(Sender: TField);
    procedure cdsAdiantamentoItemKMCHEGADAValidate(Sender: TField);
    procedure cdsHoraItemBeforeInsert(DataSet: TDataSet);
    procedure cdsHoraItemAfterPost(DataSet: TDataSet);
    procedure cdsRdvDATAFECHAMENTOValidate(Sender: TField);
    procedure cdsRdvCalcFields(DataSet: TDataSet);
    procedure cdsRdvItemBeforePost(DataSet: TDataSet);
    procedure cdsRdvItemAfterPost(DataSet: TDataSet);
    procedure cdsRdvItemCalcFields(DataSet: TDataSet);
    procedure cdsRdvEspelhoCalcFields(DataSet: TDataSet);
    procedure cdsOperacaoAfterPost(DataSet: TDataSet);
    procedure cdsOperacaoReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsMemoOPERACAOIDValidate(Sender: TField);
    procedure cdsFeriadoFILIALIDValidate(Sender: TField);
    procedure cdsRdvRDVIDValidate(Sender: TField);
    procedure cdsRdvItemOPERACAOIDValidate(Sender: TField);
    procedure cdsRdvEspelhoOPERACAOIDValidate(Sender: TField);
    procedure cdsHoraItemOPERACAOIDValidate(Sender: TField);
    procedure cdsAdiantamentoFUNCIONARIOIDValidate(Sender: TField);
    procedure cdsAdiantamentoOPERACAOIDValidate(Sender: TField);
    procedure cdsAdiantamentoItemOPERACAOIDValidate(Sender: TField);
    procedure cdsOperacaoAfterDelete(DataSet: TDataSet);
    procedure cdsRdvEspelhoAfterPost(DataSet: TDataSet);
    procedure cdsHoraHORAIDValidate(Sender: TField);
    procedure cdsAdiantamentoAfterDelete(DataSet: TDataSet);
    procedure cdsAdiantamentoAfterPost(DataSet: TDataSet);
    procedure cdsAdiantamentoItemAfterDelete(DataSet: TDataSet);
    procedure cdsRdvItemAfterDelete(DataSet: TDataSet);
    procedure cdsRdvItemBeforeInsert(DataSet: TDataSet);
    procedure cdsHoraItemBeforePost(DataSet: TDataSet);
    procedure cdsHoraItemAfterDelete(DataSet: TDataSet);
    procedure cdsAdiantamentoBeforePost(DataSet: TDataSet);
    procedure cdsGeralCalcFields(DataSet: TDataSet);
    procedure cdsMemoFUNCIONARIOIDValidate(Sender: TField);
    procedure cdsMemoAfterPost(DataSet: TDataSet);
    procedure cdsMemoAfterDelete(DataSet: TDataSet);
    procedure cdsMemoBeforePost(DataSet: TDataSet);
    procedure cdsRdvAfterPost(DataSet: TDataSet);
    procedure cdsRdvAfterDelete(DataSet: TDataSet);
    procedure cdsRdvEspelhoAfterDelete(DataSet: TDataSet);
    procedure cdsRdvItemBeforeDelete(DataSet: TDataSet);
    procedure cdsHoraAfterDelete(DataSet: TDataSet);
    procedure cdsHoraItemBeforeDelete(DataSet: TDataSet);
    procedure cdsAdiantamentoOSIDValidate(Sender: TField);
    procedure cdsLogRDVNewRecord(DataSet: TDataSet);
    procedure cdsRdvLogAfterDelete(DataSet: TDataSet);
    procedure cdsRdvLogAfterPost(DataSet: TDataSet);
    procedure cdsRdvLogNewRecord(DataSet: TDataSet);
    procedure cdsRdvLogLOGRDVIDValidate(Sender: TField);
    procedure cdsRdvLogOPERACAOIDValidate(Sender: TField);
    procedure cdsRdvLog2LOGRDVIDValidate(Sender: TField);
    procedure cdsRdvLog2NewRecord(DataSet: TDataSet);
    procedure cdsRdvItemVLRDESPESAValidate(Sender: TField);
    procedure cdsRdvItemDATAMOVIMENTOIDValidate(Sender: TField);
    procedure cdsRelHoraItemOPERACAOIDValidate(Sender: TField);
    procedure cdsRelHoraItemCalcFields(DataSet: TDataSet);
    procedure cdsHoraItemBeforeEdit(DataSet: TDataSet);
    procedure cdsHoraItemOSIDValidate(Sender: TField);
    procedure cdsHoraItemHORAFIMValidate(Sender: TField);
    procedure cdsBancoHoraNewRecord(DataSet: TDataSet);
    procedure cdsBancoHoraFUNCIONARIOIDValidate(Sender: TField);
    procedure cdsBancoHoraOPERACAOIDValidate(Sender: TField);
    procedure cdsBancoHoraOSIDValidate(Sender: TField);
    procedure cdsBancoHoraHORAFIMValidate(Sender: TField);
    procedure cdsFeriadoAfterPost(DataSet: TDataSet);
    procedure cdsFeriadoAfterDelete(DataSet: TDataSet);
    procedure cdsBancoHoraHORAINIValidate(Sender: TField);
    procedure cdsRDVItemUSNewRecord(DataSet: TDataSet);
    procedure cdsRDVItemUSAfterDelete(DataSet: TDataSet);
    procedure cdsRDVItemUSAfterPost(DataSet: TDataSet);
    procedure cdsRDVItemUSBeforeInsert(DataSet: TDataSet);
    procedure cdsRDVItemUSBeforePost(DataSet: TDataSet);
    procedure cdsRDVItemUSCalcFields(DataSet: TDataSet);
    procedure cdsBancoHoraBeforeDelete(DataSet: TDataSet);
    procedure cdsRdvItemDATACONTABILIZACAOValidate(Sender: TField);
    procedure cdsBancoHoraMULTILANCAMENTOValidate(Sender: TField);
    procedure cdsBancoHoraDATASOLICITACAOValidate(Sender: TField);
    procedure cdsHoraCFGNewRecord(DataSet: TDataSet);
    procedure cdsBancoHoraFILIALIDValidate(Sender: TField);
    procedure cdsHorasCfgTrabNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure RDVGravarItem( DataSet: TDataSet; TipoMoeda : String; var NovoRDV : Boolean );
    procedure DeletarItemRDV( DataSet: TDataSet; TipoMoeda : String );
    procedure VisualRDVLog( cds : TClientDataSet );
    procedure TransfereEspelho( DataSet: TDataSet );
    procedure ValidVisoesFuncionario( FFuncionario, FNome, FSaldo, FHorasCfgTrab :  TField; Direito, DireitoSecundario : String );
    function GetSaldo( FuncionarioId : String ):Extended;
    class procedure GetHoraCfgTrab( HorasCfgTrabID : String; var HoraTrabIni, HoraTrabFim : TDateTime;
      var HorasAlmoco : Extended );
    procedure ValidarHorasIniFim( Field : TField );
  public
    { Public declarations }
    NovoRdv   : Boolean;
    NovoHora  : Boolean;

    // Rotina para calculo da diferenca de horas
    class function DiffTime( FilialID, HorasCfgTrabID : Integer; TipoOperacao : String; DtHrIni, DtHrFim : TDateTime ;
     HoraViagem : Boolean ): Real;
    // Verifica se o dia eh feriado ou final de semana }
    class function GetFeriado( Data : TDateTime; FilialId, HorasCfgTrabId : Integer ) : Integer;
    // Retornar Hora Inicial e Final de trabalho da Filial;

    procedure FiltroFuncionarioRDV( Campo : TField );
    procedure LiberarAdiantDespesa( AdiantamentoId : String );
    procedure LiberarBancoHoras(BancoHoraID : String);
  end;

var
  dmRD: TdmRD;

implementation

uses u_dmGSI, u_ReconcileError, FuncoesCliente, FuncoesDsi, u_dmAS,
  u_RDVLogExclusao, u_dmOs, Math, u_dmOFFLine, u_dmEF;

{$R *.dfm}

procedure TdmRD.RDVGravarItem( DataSet: TDataSet; TipoMoeda : String; var NovoRDV : Boolean );
var Saldo   : Currency;
    dsState : TDataSetState;
begin
 dmAS.cdsConfig.Open;
 try
  dsState := cdsRdv.State;
  Saldo   := DataSet.FieldByName('VLRSALDO').AsCurrency;

  // Módulo para exportar os dados para o espelho
  if ( dmAS.cdsConfigMEMOPAGARID.AsInteger <> DataSet.FieldByName('OPERACAOID').AsInteger  ) and
     ( dmAS.cdsConfigMEMORECEBERID.AsInteger <> DataSet.FieldByName('OPERACAOID').AsInteger  ) then
     if not cdsRdvDATAMESABERTO.IsNull then
        if DataSet.FieldByName('DATAMOVIMENTOID').AsDateTime > cdsRdvDATAMESABERTO.AsDateTime then
           begin
            TransfereEspelho( DataSet );
            Saldo := 0;
           end;

  if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
     ( DataSet as TCustomClientDataSet ).ApplyUpdates( -1 );

  if not NovoRdv then
     begin
      //Atualiza o Saldo
      Screen.Cursor := crHourGlass;
      shdcnnRD.AppServer.IAtualizaSaldo(  DataSet.FieldByName('RdvId').AsInteger, TipoMoeda );
      cdsRdv.Refresh;
      Screen.Cursor := crDefault;
     end
  else
     begin
      NovoRdv := False;
      if saldo <> 0 then
         begin
          cdsRdv.Edit;
          case TipoMoeda[1]  of
          'R' : cdsRdvVLRSALDO.AsCurrency   := Saldo;
          'D' : cdsRdvVLRSALDOUS.AsCurrency := Saldo;
          else
                cdsRdvVLRSALDO.AsCurrency   := Saldo;
          end;
          cdsRdv.Post;
         end;
     end;

  if dsState in [dsEdit, dsInsert] then
     cdsRdv.Edit;
 except
  On E:Exception do
     ShowMessage( E.Message );
 end;
end;


procedure TdmRD.DeletarItemRDV( DataSet: TDataSet; TipoMoeda : String );
var dsState : TDataSetState;
begin
 dsState := cdsRdv.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if not ( cdsRdvEspelho.State in [dsInsert] ) then
    begin
     Screen.Cursor := crHourGlass;
     shdcnnRD.AppServer.IAtualizaSaldo( cdsRdvRdvId.AsInteger, TipoMoeda );
     cdsRdv.Refresh;
     Screen.Cursor := crDefault;
    end;

 if dsState in [dsEdit,dsInsert] then
    cdsRdv.Edit;
end;


procedure TdmRD.VisualRDVLog( cds : TClientDataSet );
var i : Integer;
begin
 if cdsRdvEspelho.State = dsInsert then
    Exit;

 cdsRDVLog2.Open;
 cdsRdvLog2.Insert;

 for i := 0 to cds.FieldCount - 1 do
 begin
  if ( cds.Fields[i].ProviderFlags <> [] ) then
     if ( cds.Fields[i].FieldName <> 'ITEMID' ) and
        ( cds.Fields[i].FieldName <> 'DATACONTABILIZACAO' ) then
        cdsRdvLog2.FieldByName( cds.Fields[i].FieldName ).Value := cds.FieldByName( cds.Fields[i].FieldName ).Value
 end;


 Application.CreateForm( TfrmRDVLogExclusao, frmRDVLogExclusao );
 frmRDVLogExclusao.ShowModal;
end;

procedure TdmRD.FiltroFuncionarioRDV( Campo : TField );
var cds : TClientDataSet;
    ISQL : String;
begin
 try
  ISQL := 'SELECT EF_ENTIDADE.ENTIDADEID, ' +
          '       EF_ENTIDADE.NOME ' +
          '  FROM EF_ENTIDADE, ' +
          '       EF_ENTIDADEGRUPO ' +
          ' WHERE EF_ENTIDADE.ENTIDADEID = EF_ENTIDADEGRUPO.ENTIDADEID ' +
          ' AND EF_ENTIDADEGRUPO.CATEGORIAID = 5 ' +
          ' AND EF_ENTIDADE.DEPARTAMENTOID IN' +
          '     (SELECT EF_ENTIDADEDEPTO.DEPARTAMENTOID' +
          '     FROM EF_ENTIDADEDEPTO' +
          '     WHERE EF_ENTIDADEDEPTO.ENTIDADEID = ' + IntToStr( dmGsi.FuncionarioId )+ ')';

  ExecDynamicProvider( -1, ISQL, Cds );

  // Caso o usuário não tenha nenhuma visão visualizar somente o seu RDV
  if cds.IsEmpty then
     begin
      ISQL := 'SELECT EF_ENTIDADE.ENTIDADEID, ' +
              '       EF_ENTIDADE.NOME ' +
              '  FROM EF_ENTIDADE, ' +
              '       EF_ENTIDADEGRUPO ' +
              ' WHERE EF_ENTIDADE.ENTIDADEID = EF_ENTIDADEGRUPO.ENTIDADEID ' +
              ' AND EF_ENTIDADEGRUPO.CATEGORIAID = 5 ' +
              ' AND EF_ENTIDADE.ENTIDADEID = ' + IntToStr( dmGsi.FuncionarioId ) ;

      ExecDynamicProvider( -1, ISQL, Cds );
     end;

  CriaFormLookUp( dmEF.cdsEntidade.Name, iSQL, Campo,'ENTIDADEID','FUNCIONARIOID' );

  if Campo.IsNull then
     MessageDlg('Funcionário não Cadastrado!',mtInformation,[mbOK],0);

 finally
  FreeAndNil( cds );
 end;
end;

procedure TdmRD.cdsOperacaoNewRecord(DataSet: TDataSet);
begin
 cdsOperacaoOPERACAOID.AsInteger  := ContadorDB('RD_OPERACAO','OPERACAOID','');
 cdsOperacaoOPERACAO.Value        := 'N';
 cdsOperacaoFINALIDADE.Value      := 'R';
 cdsOperacaoBLOQUEADO.Value       := 0;
 cdsOperacaoHORASDEDUZIR.AsFloat  := 0;
 cdsOperacaoLANCEXCLUSIVO.AsFloat := 0;
 cdsOperacaoIDENTIFSOLIC.Value    := 0;
 cdsOperacaoUSUARIO.Value         := dmGsi.UsuarioAtivo;
end;

procedure TdmRD.cdsMemoNewRecord(DataSet: TDataSet);
begin
 cdsMemoMEMOID.AsInteger           := ContadorDB('RD_MEMO','MEMOID','');
 cdsMemoDATASOLICITACAO.AsDateTime := pCnnMain.AppServer.IServerDate;
 cdsMemoDATADEPOSITO.AsDateTime    := pCnnMain.AppServer.IServerDate;
 cdsMemoVLRMEMO.Value              := 0;
 cdsMemoLIBERADO.Value             := 1;
 cdsMemoTRANSFERIDO.Value          := 0;
 cdsMemoHISTORICO.Value            := 'Reembolso RDV de Data dd/mm/aaaa a dd/mm/aaaa';
 cdsMemoFUNCIONARIOID.Value        := cdsRdvRDVID.Value;
// cdsMemoC_SALDO.Value              := cdsRdvVLRSALDO.Value;
 cdsMemoSOLICITANTE.AsString       := dmGsi.UsuarioAtivo;
end;

procedure TdmRD.cdsFeriadoNewRecord(DataSet: TDataSet);
begin
 cdsFeriadoFERIADOREGIONAL.Value := 0;
 cdsFeriadoFERIADOID.Value       := ExecSequencia('SQ_RD_FERIADO_FERIADOID');
 cdsFeriadoUSUARIO.Value         := dmGsi.UsuarioAtivo;
end;

procedure TdmRD.cdsRdvNewRecord(DataSet: TDataSet);
begin
 cdsRdvVLRSALDO.Value            := 0;
 cdsRdvBLOQUEADO.Value           := 0;
 cdsRdvDATAABERTURA.AsDateTime   := pCnnMain.AppServer.iServerDate;
 cdsRdvDATAFECHAMENTO.AsDateTime := pCnnMain.AppServer.iServerDate;
 cdsRdvDATAMESABERTO.AsDateTime  := LastDayOfMonth( pCnnMain.AppServer.iServerDate );
end;

procedure TdmRD.cdsRdvItemNewRecord(DataSet: TDataSet);
var ParamSQL : String;
begin
 ParamSQL := 'WHERE RD_RDVITEM.RDVID = '+ dmRD.cdsRdvRDVID.AsString;

 cdsRdvItemTIPOMOEDA.Value            := 'R';
 cdsRdvItemVLRSALDO.Value             := 0;
 cdsRdvItemVLRDESPESA.Value           := 0;
 cdsRdvItemDATAMOVIMENTOID.AsDateTime := pCnnMain.AppServer.iServerDate;
 cdsRdvItemITEMID.Value               := ContadorDB( 'RD_RDVITEM','ITEMID',ParamSQL );
 cdsRdvItemUSUARIO.AsString           := dmGsi.UsuarioAtivo;
end;

procedure TdmRD.cdsRdvEspelhoNewRecord(DataSet: TDataSet);
begin
 cdsRdvEspelhoVLRSALDO.Value       := 0;
 cdsRdvEspelhoVLRDESPESA.Value     := 0;
 cdsRdvEspelhoDATADOCID.AsDateTime := 0;
end;

procedure TdmRD.cdsHoraNewRecord(DataSet: TDataSet);
begin
 cdsHoraVLRSALDO.Value          := 0;
 cdsHoraBLOQUEADO.Value         := 0;
 cdsHoraDATAABERTURA.AsDateTime := Date;
end;

procedure TdmRD.cdsHorasCfgTrabNewRecord(DataSet: TDataSet);
begin
 cdsHorasCfgTrabHORASCFGTRABID.AsInteger := ContadorDB('RD_HORASCFGTRAB','HORASCFGTRABID','');
 cdsHorasCfgTrabUSUARIO.Value            := dmGsi.UsuarioAtivo;
end;

procedure TdmRD.cdsHoraItemNewRecord(DataSet: TDataSet);
var ParamSQL : String;
begin
 ParamSQL := 'WHERE RD_HORAITEM.HORAID = '+ dmRD.cdsHoraHORAID.AsString;

 cdsHoraItemITEMID.Value      := ContadorDB( 'RD_HORAITEM','ITEMID',ParamSQL );
 cdsHoraItemVLRSALDO.AsFloat  := 0;
 cdsHoraItemUSUARIO.AsString  := dmGsi.UsuarioAtivo;
end;

procedure TdmRD.cdsAdiantamentoNewRecord(DataSet: TDataSet);
begin
 dmAS.cdsConfig.Open;
 cdsAdiantamentoADIANTAMENTOID.Value       := ExecSequencia('SQ_RD_ADIANT_ADIANTAMENTOID');
 cdsAdiantamentoTIPOMOEDA.Value            := 'R';
 cdsAdiantamentoLIBERADO.Value             := 0;
 cdsAdiantamentoLIBCHEFIA.Value            := 0;
 cdsAdiantamentoFUNCIONARIOID.Value        := dmGsi.FuncionarioId;
 cdsAdiantamentoOPERACAOID.Value           := dmAS.cdsConfigADIANTAMENTOID.Value;
 cdsAdiantamentoTIPODESPESAOS.Value        := 'S';
 cdsAdiantamentoVLROPERACAO.Value          := 0;
 cdsAdiantamentoDATASOLICITACAO.AsDateTime := Date;
 cdsAdiantamentoHORASOLICITADA.AsDateTime  := Now;
 cdsAdiantamentoIMPRESSO.Value             := 0;
 cdsAdiantamentoUSUARIO.AsString           := dmGsi.UsuarioAtivo;
end;

procedure TdmRD.cdsAdiantamentoItemNewRecord(DataSet: TDataSet);
var ParamSQL : String;
begin
 ParamSQL := 'WHERE RD_ADIANTAMENTOITEM.ADIANTAMENTOID = '+cdsAdiantamentoItemADIANTAMENTOID.AsString;
 cdsAdiantamentoItemITEMID.AsInteger           := ContadorDB('RD_ADIANTAMENTOITEM','ITEMID',ParamSQL);
 cdsAdiantamentoItemUSUARIO.AsString           := dmGsi.UsuarioAtivo;
 cdsAdiantamentoItemVLROPERACAO.Value          := 0;
 cdsAdiantamentoItemDATASOLICITACAO.AsDateTime := pCnnMain.AppServer.IServerDate;
end;

procedure TdmRD.cdsRdvBeforeDelete(DataSet: TDataSet);
begin
 if MessageDlg( 'Deseja Excluir o Rdv e seus itens?', mtConfirmation,
                            [mbYes, mbNo], 0 ) = mrNo then
    Abort;
end;

procedure TdmRD.cdsHoraBeforeDelete(DataSet: TDataSet);
begin
 if MessageDlg( 'Deseja Excluir esta Hora e seus itens?',mtConfirmation,
                           [mbYes, mbNo], 0 ) = mrNo then
    Abort;
end;

procedure TdmRD.cdsHoraCFGNewRecord(DataSet: TDataSet);
begin
 cdsHoraCFGDATACADASTRO.AsDateTime := pCnnMain.AppServer.IServerDate;
 cdsHoraCFGUSUARIO.Value           := dmGsi.UsuarioAtivo;
end;

procedure TdmRD.cdsAdiantamentoBeforeDelete(DataSet: TDataSet);
begin
 if MessageDlg( 'Deseja Excluir o Adiantamento e seus itens?', mtConfirmation,
                            [mbYes, mbNo], 0 ) = mrNo then
    Abort;
end;

procedure TdmRD.cdsAdiantamentoCalcFields(DataSet: TDataSet);
begin
 if cdsAdiantamento.State = dsInternalCalc then
    cdsAdiantamentoC_KmRodados.Value := ( cdsAdiantamentoKMCHEGADA.Value - cdsAdiantamentoKMSAIDA.Value );
end;

procedure TdmRD.cdsAdiantamentoKMSAIDAValidate(Sender: TField);
begin
 dmAS.cdsConfig.Open;
 if cdsAdiantamentoOPERACAOID.Value <> dmAS.cdsConfigKMID.Value then
    if cdsAdiantamentoKMSAIDA.Value > 0 then
       raise Exception.Create( 'KM Saída não deve ser preenchido para o tipo de despesa selecionado!' );

 if not cdsAdiantamentoKMSAIDA.IsNull then
    if frac(cdsAdiantamentoKMSAIDA.Value ) <> 0 then
       raise Exception.Create('KM Saida no formato inválido!' );

 dmAS.cdsConfig.Close;
end;

procedure TdmRD.cdsAdiantamentoKMCHEGADAValidate(Sender: TField);
begin
 dmAS.cdsConfig.Open;
 if cdsAdiantamentoOPERACAOID.Value <> dmAS.cdsConfigKMID.Value then
    if not cdsAdiantamentoKMCHEGADA.IsNull then
       raise Exception.Create('KM Chegada não deve ser preenchido para o tipo de despesa selecionado!' );

 if not cdsAdiantamentoKMCHEGADA.IsNull then
    if cdsAdiantamentoKMCHEGADA.Value < cdsAdiantamentoKMSAIDA.Value then
       raise Exception.Create('KM Chegada deve ser maior que KM de Saída!' );

 if not cdsAdiantamentoKMCHEGADA.IsNull then
    if frac(cdsAdiantamentoKMCHEGADA.Value ) <> 0 then
       raise Exception.Create('KM Chegada no formato inválido!' );
{
Texto := FormatFloat('000000.00', Valor);
        Milhar := MiniExtenso(Copy(Texto, 1, 3));
        Centena := MiniExtenso(Copy(Texto, 4, 3));
        Centavos := MiniExtenso('0' + Copy(Texto, 8, 2));
}

 if cdsAdiantamentoVLROPERACAO.ReadOnly then
    begin
     cdsAdiantamentoVLROPERACAO.ReadOnly := False;
     cdsAdiantamentoVLROPERACAO.Value    :=( ( cdsAdiantamentoKMCHEGADA.Value - cdsAdiantamentoKMSAIDA.Value ) * dmAS.cdsConfigVLRKM.Value );
     cdsAdiantamentoVLROPERACAO.ReadOnly := True;
    end;
 dmAS.cdsConfig.Close;
end;

procedure TdmRD.cdsAdiantamentoItemAfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsAdiantamento.State;

 if cdsAdiantamento.UpdateStatus = usUnmodified then
    cdsAdiantamento.Post;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates( -1 );

 try
  Screen.Cursor := crHourGlass;
  shdcnnRD.AppServer.IAtualizaAdiantamento( cdsAdiantamentoADIANTAMENTOID.AsInteger );
  cdsAdiantamento.RefreshRecord;
 finally
  Screen.Cursor := crDefault;
 end;

 if dsState in [dsInsert, dsEdit] then
    cdsAdiantamento.Edit;
end;

procedure TdmRD.cdsAdiantamentoItemBeforePost(DataSet: TDataSet);
begin
 dmAS.cdsConfig.Open;

 if cdsAdiantamentoItemVLROPERACAO.Value < 1 then
    raise Exception.Create('Falta Preencher o Valor da Operação!');

 if      cdsAdiantamentoItemOPERACAOID.Value = dmAS.cdsConfigKMID.Value then
         begin
          if ( cdsAdiantamentoItemKMSAIDA.Value < 1 ) then
             raise Exception.Create( 'Falta preencher o Km Saída !' );

          if ( cdsAdiantamentoItemKMCHEGADA.Value < 1 ) then
             raise Exception.Create( 'Falta preencher o Km Entrada !' );
         end
 else if cdsAdiantamentoItemVLROPERACAO.Value < 1 then
         raise Exception.Create( 'Falta preencher o Valor do adiantamento !' );
 dmAS.cdsConfig.Close;
end;

procedure TdmRD.cdsAdiantamentoItemCalcFields(DataSet: TDataSet);
begin
 cdsAdiantamentoItemC_KmRodados.Value := ( cdsAdiantamentoKMSAIDA.Value - cdsAdiantamentoKMCHEGADA.Value );
end;

procedure TdmRD.cdsAdiantamentoItemVLROPERACAOValidate(Sender: TField);
begin
 dmAS.cdsConfig.Open;
 if cdsAdiantamentoItemOPERACAOID.Value = dmAS.cdsConfigKMID.Value then
    if ( cdsAdiantamentoItemKMSAIDA.Value < 1 ) and ( cdsAdiantamentoItemKMCHEGADA.Value < 1 ) then
       raise Exception.Create( 'Não é permitido digitar o valor da despesa, pois o campo é calculado. !' );
 dmAS.cdsConfig.Close;       
end;

procedure TdmRD.cdsAdiantamentoItemKMSAIDAValidate(Sender: TField);
begin
 dmAS.cdsConfig.Open;
 if cdsAdiantamentoItemOPERACAOID.Value <> dmAS.cdsConfigKMID.Value then
    if cdsAdiantamentoItemKMSAIDA.Value > 0 then
       raise Exception.Create( 'KM Saída não deve ser preenchido para o tipo de despesa selecionado!' );
 dmAS.cdsConfig.Close;
end;

procedure TdmRD.cdsAdiantamentoItemKMCHEGADAValidate(Sender: TField);
begin
 dmAS.cdsConfig.Open;
 if cdsAdiantamentoItemOPERACAOID.Value <> dmAS.cdsConfigKMID.Value then
    raise Exception.Create( 'KM Saída não deve ser preenchido para o tipo de despesa selecionado!' );

 if cdsAdiantamentoItemKMCHEGADA.Value < cdsAdiantamentoItemKMSAIDA.Value then
    raise Exception.Create( 'KM Chegada deve ser maior que KM de Saída!' );

 cdsAdiantamentoItemVLROPERACAO.Value := ( cdsAdiantamentoItemKMCHEGADA.Value - cdsAdiantamentoItemKMSAIDA.Value ) * dmAS.cdsConfigVLRKM.Value;
 dmAS.cdsConfig.Close;
end;

procedure TdmRD.cdsHoraItemBeforeInsert(DataSet: TDataSet);
begin
 if cdsHora.State = dsEdit then
    cdsHora.Post;
 NovoHora := True;
end;

procedure TdmRD.cdsHoraItemAfterPost(DataSet: TDataSet);
var Saldo   : Extended;
    dsState : TDataSetState;
begin
 try
  dsState := cdsHora.State;
  Saldo   := cdsHoraItemVLRSALDO.AsFloat;

  if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
     ( DataSet as TCustomClientDataSet ).ApplyUpdates( -1 );

  if not ( NovoHora ) then
    begin
     Screen.Cursor := crHourGlass;
     shdcnnRD.AppServer.IAtualizaSaldoHoras( cdsHoraItemHORAID.AsInteger );
     cdsHora.Refresh;
     Screen.Cursor := crDefault;
    end
  else
    begin
     NovoHora := False;
     if Saldo <> 0 then
        begin
         cdsHora.Edit;
         cdsHoraVLRSALDO.Value := Saldo;
         cdsHora.Post;
        end;
    end;

 if dsState in [dsEdit,dsInsert] then
    cdsHora.Edit;

 except
  on E : Exception do
     showmessage( E.Message );
 end;
end;

procedure TdmRD.cdsRdvDATAFECHAMENTOValidate(Sender: TField);
begin
 if not cdsRdvDATAMESABERTO.IsNull then
    if cdsRdvDATAFECHAMENTO.AsDateTime > cdsRdvDATAMESABERTO.AsDateTime then
       raise Exception.Create( 'Data de fechamento do RDV não pode ser maior que a data do mês em aberto !' );
end;

procedure TdmRD.cdsRdvCalcFields(DataSet: TDataSet);
begin
 if cdsRdv.State = dsInternalCalc then
    cdsRdvItemC_KmRodados.Value := ( cdsRdvItemKMSAIDA.Value - cdsRdvItemKMCHEGADA.Value );
end;

procedure TdmRD.cdsRdvItemBeforePost(DataSet: TDataSet);
begin
 if cdsRdvItem.State = dsInsert then
    begin
     if      cdsRdvItemL_OPERACAO.Value = 'C' then
             cdsRdvItemVLRSALDO.Value := cdsRdvVLRSALDO.Value + cdsRdvItemVLRDESPESA.Value
     else if cdsRdvItemL_OPERACAO.Value = 'D' then
             cdsRdvItemVLRSALDO.Value := cdsRdvVLRSALDO.Value - cdsRdvItemVLRDESPESA.Value;
    end;
end;


procedure TdmRD.cdsRdvItemAfterPost(DataSet: TDataSet);
begin
 RDVGravarItem( DataSet, 'R', NovoRDV );
end;

procedure TdmRD.cdsRdvItemCalcFields(DataSet: TDataSet);
begin
 if cdsRdvItem.State = dsInternalCalc then
    cdsRdvItemC_KmRodados.Value := ( cdsRdvItemKMCHEGADA.Value - cdsRdvItemKMSAIDA.Value );
end;

procedure TdmRD.cdsRdvEspelhoCalcFields(DataSet: TDataSet);
begin
 if cdsRdvEspelho.State = dsInternalCalc then
    cdsRdvEspelhoC_KmRodados.Value := ( cdsRdvEspelhoKMSAIDA.Value - cdsRdvEspelhoKMCHEGADA.Value );
end;

procedure TdmRD.cdsOperacaoAfterPost(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmRD.cdsOperacaoReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
 Action := HandleReconcileError( DataSet, UpdateKind, E);
end;

procedure TdmRD.cdsMemoOPERACAOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsOperacao.ProviderName ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsMemoL_DESCRICAOOPERACAO.Value := Cds.FieldByName('DESCRICAO').AsString;
      cdsMemoL_OPERACAO.AsString       := Cds.FieldByName('OPERACAO').AsString;
     end
  else
     begin
      cdsMemoL_DESCRICAOOPERACAO.Clear;
      cdsMemoL_OPERACAO.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmRD.cdsFeriadoFILIALIDValidate(Sender: TField);
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
     cdsFeriadoL_NOMEFANTASIAFILIAL.Value := Cds.FieldByName('NOMEFANTASIA').AsString
  else
     begin
      cdsFeriadoL_NOMEFANTASIAFILIAL.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmRD.cdsRdvRDVIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'EF_ENTIDADE.ENTIDADEID =' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvEntidade' ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsRdvL_NOMEFUNCIONARIO.Value := Cds.FieldByName('NOME').AsString;

      Cds     := Nil;
      InstSQL := 'RD_RDV.RDVID =' + TField( Sender ).AsString;
      iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvRDV' ),
                            InstSQL );

      ExecDynamicProvider( -1, iSQL, Cds );

      if not Cds.IsEmpty then
         begin
          cdsRdvL_NOMEFUNCIONARIO.Clear;
          raise Exception.Create( 'Este RDV já existe.' );
         end

     end
  else
     begin
      cdsRdvL_NOMEFUNCIONARIO.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmRD.cdsRdvItemOPERACAOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsOperacao.ProviderName ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      TField( Sender ).DataSet.FieldByName('L_DESCRICAOOPERACAO').AsString := Cds.FieldByName('DESCRICAO').AsString;
      TField( Sender ).DataSet.FieldByName('L_OPERACAO').AsString          := Cds.FieldByName('OPERACAO').AsString;
      TField( Sender ).DataSet.FieldByName('L_CONTACONTABIL').AsString     := Cds.FieldByName('DESCRICAO').AsString;
     end
  else
     begin
      TField( Sender ).DataSet.FieldByName('L_DESCRICAOOPERACAO').Clear;
      TField( Sender ).DataSet.FieldByName('L_OPERACAO').Clear;
      TField( Sender ).DataSet.FieldByName('L_CONTACONTABIL').Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmRD.cdsRdvEspelhoOPERACAOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsOperacao.ProviderName ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsRdvEspelhoL_DESCRICAOOPERACAO.Value := Cds.FieldByName('DESCRICAO').AsString;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmRD.cdsHoraItemOPERACAOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsOperacao.ProviderName ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsHoraItemL_DESCRICAOOPERACAO.Value := Cds.FieldByName('DESCRICAO').AsString;
      cdsHoraItemL_OPERACAO.Value          := Cds.FieldByName('OPERACAO').AsString;
     end;
  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmRD.ValidVisoesFuncionario( FFuncionario, FNome, FSaldo, FHorasCfgTrab :  TField; Direito, DireitoSecundario : String );
var InstSQL : String;
    cds : TClientDataSet;

 procedure AtualizaNome;
 begin
  FNome.Value         := cds.FieldByName('NOME').AsString;

  if FHorasCfgTrab <> Nil then  
     FHorasCfgTrab.Value := cds.FieldByName('HORASCFGTRABID').AsString;

  if FFuncionario.Name = 'cdsBancoHoraFUNCIONARIOID' then
     FSaldo.Value := cds.FieldByName('FILIALID').Value
 end;

begin
 cds     := nil;

 if CheckSenha( dmGsi.UsuarioAtivo, Direito, DireitoSecundario, False ) then
    InstSQL := 'SELECT EF_ENTIDADE.ENTIDADEID, ' +
               '       EF_ENTIDADE.NOME, ' +
               '       EF_ENTIDADE.FILIALID,'+
               '       EF_ENTIDADE.HORASCFGTRABID,'+
               '       EF_ENTIDADE.USUARIO ' +
               '  FROM EF_ENTIDADE, ' +
               '       EF_ENTIDADEGRUPO ' +
               ' WHERE EF_ENTIDADE.ENTIDADEID = EF_ENTIDADEGRUPO.ENTIDADEID ' +
               ' AND EF_ENTIDADE.ENTIDADEID =' + FFuncionario.AsString +
               ' AND EF_ENTIDADEGRUPO.CATEGORIAID = 5 '
 else
    InstSQL := 'SELECT EF_ENTIDADE.ENTIDADEID, ' +
               '       EF_ENTIDADE.NOME, ' +
               '       EF_ENTIDADE.FILIALID,'+
               '       EF_ENTIDADE.HORASCFGTRABID,'+
               '       EF_ENTIDADE.USUARIO ' +
               '  FROM EF_ENTIDADE, ' +
               '       EF_ENTIDADEGRUPO ' +
               ' WHERE EF_ENTIDADE.ENTIDADEID = EF_ENTIDADEGRUPO.ENTIDADEID ' +
               ' AND EF_ENTIDADE.ENTIDADEID =' + FFuncionario.AsString +
               ' AND EF_ENTIDADEGRUPO.CATEGORIAID = 5 ' +
               ' AND EF_ENTIDADE.DEPARTAMENTOID IN' +
               '     (SELECT EF_ENTIDADEDEPTO.DEPARTAMENTOID' +
               '     FROM EF_ENTIDADEDEPTO' +
               '     WHERE EF_ENTIDADEDEPTO.ENTIDADEID = ' + IntToStr( dmGsi.FuncionarioId )+ ')';

 try
  try
   ExecDynamicProvider( -1, InstSQL, cds );

   if not cds.IsEmpty then
      AtualizaNome
   else
      begin
       // Caso o usuário não tenha nenhuma visão visualizar somente o seu RDV
       cds.Close;

       if dmGsi.FuncionarioId <>  FFuncionario.AsInteger then
          raise Exception.Create( 'Valor do campo ' + FFuncionario.DisplayName + ' é Inválido.' );

       InstSQL := 'SELECT EF_ENTIDADE.ENTIDADEID, ' +
                  '       EF_ENTIDADE.NOME, ' +
                  '       EF_ENTIDADE.FILIALID,'+
                  '       EF_ENTIDADE.HORASCFGTRABID '+
                  '  FROM EF_ENTIDADE, ' +
                  '       EF_ENTIDADEGRUPO ' +
                  ' WHERE EF_ENTIDADE.ENTIDADEID = EF_ENTIDADEGRUPO.ENTIDADEID ' +
                  ' AND EF_ENTIDADEGRUPO.CATEGORIAID = 5 ' +
                  ' AND EF_ENTIDADE.ENTIDADEID = ' + IntToStr( dmGsi.FuncionarioId );

       ExecDynamicProvider( -1, InstSQL, Cds );

       if not cds.IsEmpty then
          AtualizaNome
       else
          raise Exception.Create( 'Valor do campo ' + FFuncionario.DisplayName + ' é Inválido.' );
      end;

  cds.Close;

  if FSaldo.DataSet.DataSource = dsAdiantamento then
     FSaldo.Value := GetSaldo( FFuncionario.AsString )

  except
  on E: Exception do
   begin
    FNome.Clear;
    raise Exception.Create( E.Message );
   end;
  end;

 finally
  FreeAndNil( Cds );
 end;
end;


procedure TdmRD.cdsAdiantamentoFUNCIONARIOIDValidate(Sender: TField);
begin
 ValidVisoesFuncionario( cdsAdiantamentoFUNCIONARIOID,
                         cdsAdiantamentoL_NOMEFUNCIONARIO,
                         cdsAdiantamentoL_VLRSALDO,
                         Nil,
                         'Despesas de Viagem',
                         'Visualizar Todos Adiantamentos/Despesas' );
end;

procedure TdmRD.cdsAdiantamentoOPERACAOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 if cdsAdiantamentoOPERACAOID.IsNull then
    begin
     cdsAdiantamentoL_DESCRICAOOPERACAO.Clear;
     exit;
    end;

 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsOperacao.ProviderName ),
                            InstSQL );
 dmAS.cdsConfig.Open;
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin

      if Cds.FieldByName('LANCEXCLUSIVO').AsInteger = 1 then
         if not CheckSenha( dmGsi.UsuarioAtivo,'Despesas de Viagem','Lançamento Exclusivo de Operação', True ) then
            begin
             cdsAdiantamentoL_DESCRICAOOPERACAO.Clear;
             cdsAdiantamentoL_IDENTIFSOLIC.Clear;
             cdsAdiantamentoL_OPERACAO.Clear;
             raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
            end;

      cdsAdiantamentoL_DESCRICAOOPERACAO.AsString := Cds.FieldByName('DESCRICAO').AsString;
      cdsAdiantamentoL_OPERACAO.AsString          := Cds.FieldByName('OPERACAO').AsString;
      cdsAdiantamentoL_IDENTIFSOLIC.AsInteger     := Cds.FieldByName('IDENTIFSOLIC').AsInteger;
      if cdsAdiantamentoOPERACAOID.Value = dmAS.cdsConfigKMID.Value then
         begin
          if cdsAdiantamentoVLROPERACAO.ReadOnly then
             cdsAdiantamentoVLROPERACAO.ReadOnly := False;

          cdsAdiantamentoVLROPERACAO.Value    := 0;
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
      cdsAdiantamentoL_OPERACAO.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmRD.cdsAdiantamentoItemOPERACAOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsOperacao.ProviderName ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsAdiantamentoItemL_DESCRICAOOPERACAO.Value := Cds.FieldByName('DESCRICAO').AsString;

      if Cds.FieldByName('BLOQUEADO').AsInteger = 1 then
         raise Exception.Create( 'Operação está bloqueada para utilização.' );
     end
  else
     begin
      cdsAdiantamentoItemL_DESCRICAOOPERACAO.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmRD.cdsOperacaoAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsRdv.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates( -1 );

 if dsState in [dsEdit,dsInsert] then
    cdsRdv.Edit;
end;

procedure TdmRD.cdsRdvEspelhoAfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsRdv.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates( -1 );

 if dsState in [dsEdit,dsInsert] then
    cdsRdv.Edit;
end;

procedure TdmRD.cdsHoraHORAIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'EF_ENTIDADE.ENTIDADEID = ' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvEntidade' ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsHoraL_NOMEFUNCIONARIO.Value := Cds.FieldByName('NOME').AsString;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;

end;

procedure TdmRD.cdsAdiantamentoAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates( -1 );
end;

procedure TdmRD.cdsAdiantamentoAfterPost(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates( -1 );
 TClientDataSet( DataSet ).RefreshRecord;
end;

procedure TdmRD.cdsAdiantamentoItemAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsAdiantamento.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsAdiantamento.Edit;
end;

procedure TdmRD.TransfereEspelho( DataSet: TDataSet );
var paramSQL : String;
begin
 cdsRdvEspelho.Insert;
 cdsRdvEspelhoDATADOCID.AsDateTime  := DataSet.FieldByName('DATADOC').AsDateTime;

 ParamSQL := 'WHERE RD_RDVESPELHO.RDVID = '+ cdsRdvEspelhoRDVID.AsString +' AND '+
             'RD_RDVESPELHO.DATADOCID = '+ QuotedStr( DataSet.FieldByName('DATADOC').AsString );

 cdsRdvEspelhoITEMID.Value     := ContadorDB( 'RD_RDVESPELHO','ITEMID',ParamSQL );
 cdsRdvEspelhoOSID.Value       := DataSet.FieldByName('OSID').AsString;

 cdsRdvEspelhoOPERACAOID.Value := DataSet.FieldByName('OPERACAOID').AsInteger;
 cdsRdvEspelhoVLRDESPESA.Value := DataSet.FieldByName('VLRDESPESA').AsCurrency;
 cdsRdvEspelhoHISTORICO.Value  := DataSet.FieldByName('HISTORICO').AsString;
 cdsRdvEspelhoKMSAIDA.Value    := DataSet.FieldByName('KMSAIDA').AsCurrency;
 cdsRdvEspelhoKMCHEGADA.Value  := DataSet.FieldByName('KMCHEGADA').AsCurrency;
 cdsRdvEspelhoUSUARIO.Value    := DataSet.FieldByName('USUARIO').AsString;
 DataSet.Delete;

 cdsRdvEspelho.Edit;
 cdsRdvEspelho.Post;

 MessageDlg( 'Este lançamento foi direcionado para a tabela ' +
             'de ESPELHO do RDV que constará no seu próximo RDV.',mtInformation, [mbOK], 0 );
end;

procedure TdmRD.cdsRdvItemAfterDelete(DataSet: TDataSet);
begin
 DeletarItemRDV( DataSet, 'R' );
end;

procedure TdmRD.cdsRdvItemBeforeInsert(DataSet: TDataSet);
begin
 if cdsRdv.State = dsEdit then
    cdsRdv.Post;
 NovoRdv := True;
end;

procedure TdmRD.cdsHoraItemBeforePost(DataSet: TDataSet);
var Saldo : real;
begin
 Saldo := ( cdsHoraVLRSALDO.Value / 24 );
 if cdsHoraItem.State = dsInsert then
    begin
     if      cdsHoraItemL_OPERACAO.Value = 'C' then
             Saldo := Saldo + cdsHoraItemDIFERENCAMINTRAB.AsFloat
     else if cdsHoraItemL_OPERACAO.Value = 'D' then
             Saldo := Saldo - cdsHoraItemDIFERENCAMINTRAB.AsFloat
     else if cdsHoraItemOPERACAOID.Value = 46 then
             Saldo := Saldo + cdsHoraItemVLRSALDO.AsFloat / 24;
     cdsHoraItemVLRSALDO.AsFloat := FloatToTime( Saldo );
    end;
end;

procedure TdmRD.cdsHoraItemAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsHora.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates( -1 );

 Screen.Cursor := crHourGlass;
 shdcnnRD.AppServer.IAtualizaSaldoHoras( cdsHoraItemHORAID.AsInteger );
 cdsHora.Refresh;
 Screen.Cursor := crDefault;

 if dsState in [dsEdit, dsInsert] then
    cdsHora.Edit;
end;

procedure TdmRD.cdsAdiantamentoBeforePost(DataSet: TDataSet);
begin
 dmAS.cdsConfig.Open;

 if cdsAdiantamentoL_IDENTIFSOLIC.AsInteger = 1 then
    if Length( trim( cdsAdiantamentoIDENTIFSOLIC.AsString ) ) < 1  then
       raise Exception.Create('Campo de identificação de preenchimento obrigatório!');

 if cdsAdiantamentoFUNCIONARIOID.IsNull then
    raise Exception.Create('Falta Pree.ncher o campo FuncionárioId!');

 if cdsAdiantamentoTIPODESPESAOS.Value =  'C' then
    if cdsAdiantamentoOSID.IsNull then
       raise Exception.Create('Falta Preencher o campo Ordem de Serviço ID!');

 if cdsAdiantamentoOPERACAOID.Value <> dmAS.cdsConfigADIANTAMENTOID.Value then
    if  cdsAdiantamentoVLROPERACAO.Value < 0 then
        raise Exception.Create('Valor da Despesa deve ser maior do que zero!');

 if cdsAdiantamentoOPERACAOID.Value = dmAS.cdsConfigKMID.Value then
    begin
     if ( cdsAdiantamentoKMSAIDA.Value < 1 ) then
       raise Exception.Create('Falta preencher o campo Km Saída !');

     if ( cdsAdiantamentoKMCHEGADA.Value < 1 ) then
       raise Exception.Create('Falta preencher o campo Km Entrada !');
    end;

 if ( cdsAdiantamentoLIBERADO.Value = 0 ) and
    ( cdsAdiantamentoOPERACAOID.Value = dmAS.cdsConfigADIANTAMENTOID.Value ) then
    begin
     if ( cdsAdiantamentoDATADEPOSITO.AsDateTime < cdsAdiantamentoDATASOLICITACAO.AsDateTime ) then
        raise Exception.Create('Data do Deposito deve ser maior ou igual a Data da Solicitação!');
    end
 else if ( cdsAdiantamentoLIBERADO.Value = 0 ) and
         ( cdsAdiantamentoOPERACAOID.Value <> dmAS.cdsConfigADIANTAMENTOID.Value ) then
         if ( cdsAdiantamentoDATADEPOSITO.AsDateTime > cdsAdiantamentoDATASOLICITACAO.AsDateTime ) then
            raise Exception.Create('Data da Despesa deve ser menor ou igual a Data da Solicitação!');

 dmAS.cdsConfig.Close;
end;

procedure TdmRD.cdsGeralCalcFields(DataSet: TDataSet);
begin
 cdsGeralC_KmRodados.Value := ( cdsGeralKMSAIDA.Value - cdsGeralKMCHEGADA.Value );
end;

procedure TdmRD.cdsMemoFUNCIONARIOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'EF_ENTIDADE.ENTIDADEID =' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvEntidade' ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsMemoL_NOMEFUNCIONARIO.AsString := Cds.FieldByName('NOME').AsString;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmRD.cdsMemoAfterPost(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmRD.cdsMemoAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmRD.cdsMemoBeforePost(DataSet: TDataSet);
begin
 if dmRD.cdsMemoOPERACAOID.IsNull then
    raise Exception.Create('É necessário preencher o campo Operação!');

 // Tirado a pedido da Simone 02 Jun 2006
 // if dmRD.cdsMemoVLRMEMO.Value = 0 then
 //   raise Exception.Create('É necessário preencher o campo Valor do Memo!');

end;

procedure TdmRD.cdsRdvAfterPost(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmRD.cdsRdvAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmRD.cdsRdvEspelhoAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsRdv.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates( -1 );

 if dsState in [dsEdit,dsInsert] then
    cdsRdv.Edit;
end;

procedure TdmRD.cdsRdvItemBeforeDelete(DataSet: TDataSet);
begin
// if not cdsRdvItemDATAFECHAMENTO.IsNull then
//    raise Exception.Create('Não é possível excluir este Registro, pois o período já foi encerrado.');
 VisualRDVLog( TClientDataSet( DataSet ) );
end;

procedure TdmRD.cdsHoraAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmRD.cdsHoraItemBeforeDelete(DataSet: TDataSet);
begin
 if not CheckSenha( dmGsi.UsuarioAtivo,'Banco de Horas','Excluir primeiro lançamento de horas', False ) then
    if ( cdsHoraItemOPERACAOID.Value = 26 ) and ( cdsHoraItemITEMID.Value < 2 ) then
       raise Exception.Create('Não é possível Excluir este registro!');
end;

function TdmRD.GetSaldo(FuncionarioId: String): Extended;
var iSQL : String;
    cds : TClientDataSet;
begin
 Result := 0;
 cds  := nil;
 iSQL := 'SELECT RD_RDV.VLRSALDO '+
         '  FROM RD_RDV '+
         ' WHERE RD_RDV.RDVID = '+ FuncionarioId;
 try
  ExecDynamicProvider( -1, iSQL, cds );

  if not cds.IsEmpty then
     Result := cds.FieldByName('VLRSALDO').Value;

  cds.Close;
 finally
  FreeAndNil( Cds );
 end;

end;

procedure TdmRD.LiberarAdiantDespesa(AdiantamentoId: String);
var DataMesAberto : String;
begin
 DataMesAberto := DateToStr( LastDayOfMonth( pCnnMain.AppServer.iServerDate ) );

 if dmRD.cdsAdiantamento.IsEmpty then
    raise Exception.Create('Não há Adiantamento/Despesa para liberar.');

 if not CheckSenha( dmGsi.UsuarioAtivo,'Despesas de Viagem','Liberar Adiantamento/Despesas', False ) then
    raise Exception.Create('Usuário não pode liberar Adiantamento / Despesas do RDV !')
 else
    begin
     // Usuário não pode liberar a sua própria despesa
     if dmRD.cdsAdiantamentoFUNCIONARIOID.Value = dmGsi.FuncionarioId then
        if not CheckSenha( dmGsi.UsuarioAtivo,'Despesas de Viagem','Liberar o próprio Adiantamento/Despesas', False ) then
           raise Exception.Create('O usuário não pode liberar o seu próprio adiantamento/despesa.');

     dmRD.shdcnnRD.AppServer.ITransfMovimento( dmRD.cdsAdiantamentoFUNCIONARIOID.AsString,
                                               dmRD.cdsAdiantamentoADIANTAMENTOID.AsString,
                                               DataMesAberto,
                                               dmGsi.UsuarioAtivo );
    end;
end;

procedure TdmRD.LiberarBancoHoras(BancoHoraID : String);
var DataMesAberto : String;
begin
 DataMesAberto := DateToStr( LastDayOfMonth( pCnnMain.AppServer.iServerDate ) );

 if dmRD.cdsBancoHora.IsEmpty then
    raise Exception.Create('Não há itens do Banco de Horas para liberar.');

 if not CheckSenha( dmGsi.UsuarioAtivo,'Banco de Horas','Liberar Banco de Horas', False ) then
    raise Exception.Create('Usuário não pode liberar item do Banco de Horas!')
 else
    begin
     // Usuário não pode liberar a sua própria despesa
     if dmRD.cdsBancoHoraFUNCIONARIOID.Value = dmGsi.FuncionarioId then
        if not CheckSenha( dmGsi.UsuarioAtivo,'Banco de Horas','Liberar o próprio Item do Banco de Horas', False ) then
           raise Exception.Create('Usuário não pode liberar o próprio item do Banco de Horas!');

     dmRD.shdcnnRD.AppServer.ITransfHoras( dmRD.cdsBancoHoraFUNCIONARIOID.AsString,
                                           dmRD.cdsBancoHoraBANCOHORAID.AsString,
                                           dmGsi.UsuarioAtivo );
    end;
end;

procedure TdmRD.cdsAdiantamentoOSIDValidate(Sender: TField);
var iSql,isqlDef : String;
    Cds,cdsDef : TClientDataSet;
begin
 if ( cdsAdiantamentoOSID.IsNull ) or ( cdsAdiantamentoOSID.Value = '' ) then
    exit;

 Cds  := nil;
 iSQL := 'SELECT OS_OS.OSID, OS_OS.TIPOOSID, OS_OS.LIBCHEFIA, OS_TIPOOS.LANCRDVOSRESTRITA, OS_OS.DATAVALIDADE, OS_OS.SERIEID, STATUS, OS_OS.MODELOID, OS_OS.CLIENTEID, EF_ENTIDADE.NOME ' +
         ' FROM OS_OS, EF_ENTIDADE, OS_TIPOOS ' +
         ' WHERE OSID = ' + QuotedStr( TField( Sender ).AsString ) +
         ' AND EF_ENTIDADE.ENTIDADEID(+) = OS_OS.CLIENTEID ' +
         ' AND OS_OS.TIPOOSID = OS_TIPOOS.TIPOOSID(+)';

 isqlDef := 'SELECT OSID FROM OS_OSDEFEITO ' +
            ' WHERE OSID = ' + QuotedStr( TField( Sender ).AsString );

 ExecDynamicProvider( -1, iSQL, Cds );

 ExecDynamicProvider( -1, isqlDef, cdsDef );

 try
  if not Cds.IsEmpty then
     begin
      if  Cds.FieldByName('LANCRDVOSRESTRITA').AsInteger <> 1 then
          begin
           if Cds.FieldByName('STATUS').AsString[1] in ['E','F','B'] then
              raise Exception.Create( 'Ordem de Serviço fechada / bloqueada' );

           if Cds.FieldByName('TIPOOSID').AsString[1] <>  'I' then
              if cdsDef.RecordCount < 1 then
                 raise Exception.Create( 'Ordem de Serviço sem código de defeito' );

            dmOS.VerifStatusTIPOOS( Copy( cdsAdiantamentoOSID.AsString,13, 1 ), 'BLOQLANCAMENTOS' );

           if Cds.FieldByName('LIBCHEFIA').AsInteger = 0 then
              dmOS.VerifStatusTIPOOS( Copy( cdsAdiantamentoOSID.AsString,13, 1 ), 'EXIGIRLIBERACAO' );

           if not Cds.FieldByName('DATAVALIDADE').IsNull then
              if pCnnMain.AppServer.IServerDate > Cds.FieldByName('DATAVALIDADE').AsDateTime then
                 raise Exception.Create( 'Data de validade da Ordem de Serviço está expirada. ' + #13 +
                                         'A validade atual é : ' + cds.FieldByName('DATAVALIDADE').AsString );
          end;

      cdsAdiantamentoL_SERIEID.Value  := Cds.FieldByName('SERIEID').AsString;
      cdsAdiantamentoL_MODELOID.Value := Cds.FieldByName('MODELOID').AsString;
      cdsAdiantamentoL_NOME_OS.Value  := Cds.FieldByName('NOME').AsString;
     end
  else
     begin
      cdsAdiantamentoL_SERIEID.Clear;
      cdsAdiantamentoL_MODELOID.Clear;
      cdsAdiantamentoL_NOME_OS.Clear;

      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
  cdsDef.Close;
 finally
  FreeAndNil( Cds );
  FreeAndNil( cdsDef );
 end;
end;

procedure TdmRD.cdsLogRDVNewRecord(DataSet: TDataSet);
begin
 cdsLogRDVLOGRDVID.Value   := ContadorDB('RD_LOGRDV','LOGRDVID','');
 cdsLogRDVUSUARIO.Value    := dmGsi.UsuarioAtivo;
end;

procedure TdmRD.cdsRdvLogAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsRdv.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsRdv.Edit;
end;

procedure TdmRD.cdsRdvLogAfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsRdv.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsRdv.Edit;
end;

procedure TdmRD.cdsRdvLogNewRecord(DataSet: TDataSet);
var ParamSQL : String;
begin
 ParamSQL := 'WHERE RD_RDVLOG.RDVID = ' + cdsRdvLogRDVID.AsString;

 cdsRdvLogITEMID.AsInteger        := ContadorDB('RD_RDVLOG','ITEMID',ParamSQL);
 cdsRdvLogDATAEXCLUSAO.AsDateTime := pCnnMain.AppServer.IServerDate;
 cdsRdvLogUSUARIO.Value           := dmGsi.UsuarioAtivo;
end;

procedure TdmRD.cdsRdvLogLOGRDVIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsLogRDV.ProviderName ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsRdvLogL_LOGRDVDESCRICAO.Value := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsRdvLogL_LOGRDVDESCRICAO.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmRD.cdsRdvLogOPERACAOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsOperacao.ProviderName ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsRdvLOGL_DESCRICAOOPERACAO.Value := Cds.FieldByName('DESCRICAO').AsString;
      cdsRdvLOGL_OPERACAO.Value          := Cds.FieldByName('OPERACAO').AsString;
     end
  else
     begin
      cdsRdvLOGL_DESCRICAOOPERACAO.Clear;
      cdsRdvLOGL_OPERACAO.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;

end;

procedure TdmRD.cdsRdvLog2LOGRDVIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsLogRDV.ProviderName ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsRdvLog2L_LOGRDVDESCRICAO.Value := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsRdvLog2L_LOGRDVDESCRICAO.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmRD.cdsRdvLog2NewRecord(DataSet: TDataSet);
var ParamSQL : String;
begin
 ParamSQL := 'WHERE RD_RDVLOG.RDVID = ' + cdsRdvRDVID.AsString;

 cdsRdvLog2ITEMID.AsInteger        := ContadorDB('RD_RDVLOG','ITEMID',ParamSQL);
 cdsRdvLog2DATAEXCLUSAO.AsDateTime := pCnnMain.AppServer.IServerDate;
 cdsRdvLog2USUARIO.Value           := dmGsi.UsuarioAtivo;
end;

procedure TdmRD.cdsRdvItemVLRDESPESAValidate(Sender: TField);
begin
 if  TField( Sender ).DataSet.State = dsEdit then
     VisualRDVLog( TClientDataSet( TField( Sender ).DataSet ) );
end;

procedure TdmRD.cdsRdvItemDATAMOVIMENTOIDValidate(Sender: TField);
begin
 if cdsRdvItem.State = dsEdit then
    VisualRDVLog( TClientDataSet( TField( Sender ).DataSet ) );
end;

procedure TdmRD.cdsRelHoraItemOPERACAOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsOperacao.ProviderName ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsHoraItemL_DESCRICAOOPERACAO.Value := Cds.FieldByName('DESCRICAO').AsString;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmRD.cdsRelHoraItemCalcFields(DataSet: TDataSet);
var Hora, Minuto: Extended;
begin
 Hora   := Trunc( cdsRelHoraItemVLRSALDO.Value );
 Minuto := Frac( cdsRelHoraItemVLRSALDO.Value ) * 60;

 if Minuto < -59 then
    begin
     Minuto := 00;
     Hora   := Hora + 1;
    end;

 cdsRelHoraItemC_SALDOHORAS.AsString := FormatFloat( '0', Hora ) + ':' + FormatFloat('00', Minuto );
end;

procedure TdmRD.cdsHoraItemBeforeEdit(DataSet: TDataSet);
begin
 NovoHora := False;
end;

procedure TdmRD.cdsHoraItemOSIDValidate(Sender: TField);
var cds  : TClientDataSet;
    iSQL,InstSQL : String;
begin
 if ( TField( Sender ).Value <> '' ) and ( TField( Sender ).Value <> ' ' ) then
    begin
     InstSQL := 'OS_OS.OSID = '+ QuotedStr( cdsHoraItemOSID.AsString );
     iSQL    := AnalisarAddSQL( LocateSQL('dsprvOS'),
                            InstSQL );

     cds := nil;
     try
      ExecDynamicProvider( -1,iSQL,cds );

      if cds.IsEmpty then
         raise Exception.Create('Valor do campo ' + Sender.DisplayName + ' é Inválido.' );

     finally
      FreeAndNil(cds);
     end;
    end;
end;

procedure TdmRD.cdsHoraItemHORAFIMValidate(Sender: TField);
begin
 if cdsHoraItemHORAFIM.AsDateTime < cdsHoraItemHORAINI.AsDateTime then
    raise Exception.Create('A data Final deve ser maior do que a data Inicial');

 cdsHoraItemDIFERENCAMINTRAB.AsFloat   := DiffTime( cdsHoraL_FILIALID.AsInteger,  cdsHoraL_HORASCFGTRABID.AsInteger, cdsHoraItemL_OPERACAO.Value, cdsHoraItemHORAINI.AsDateTime, cdsHoraItemHORAFIM.AsDateTime,
                                                    ( cdsHoraItemOPERACAOID.AsInteger = 66 ) );
 cdsHoraItemDIFERENCAHORATRAB.AsString := FormatTime( cdsHoraItemDIFERENCAMINTRAB.AsFloat );
end;

procedure TdmRD.cdsBancoHoraNewRecord(DataSet: TDataSet);
begin
 dmAS.cdsConfig.Open;
 cdsBancoHoraBANCOHORAID.Value          := ExecSequencia('SQ_RD_BANCOHORA_BANCOHORAID');
 cdsBancoHoraLIBERADO.Value             := 0;
 cdsBancoHoraMULTILANCAMENTO.Value      := 0;
 cdsBancoHoraLIBCHEFIA.Value            := 0;
 cdsBancoHoraFUNCIONARIOID.Value        := dmGsi.FuncionarioId;
 cdsBancoHoraTIPODESPESAOS.Value        := 'S';
 cdsBancoHoraDATASOLICITACAO.AsDateTime := Date;
 cdsBancoHoraIMPRESSO.Value             := 0;
 cdsBancoHoraUSUARIO.AsString           := dmGsi.UsuarioAtivo;
end;

procedure TdmRD.cdsBancoHoraFILIALIDValidate(Sender: TField);
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
     cdsBancoHoraL_NOMEFANTASIAFILIAL.Value := Cds.FieldByName('NOMEFANTASIA').AsString
  else
     begin
      cdsBancoHoraL_NOMEFANTASIAFILIAL.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmRD.cdsBancoHoraFUNCIONARIOIDValidate(Sender: TField);
var iSQL : String;
    cds  : TClientDataSet;
begin
 if ( ( cdsBancoHoraHORAINI.AsFloat > 0 ) or ( cdsBancoHoraHORAFIM.AsFloat > 0 ) ) then
    raise Exception.Create('Não é permitido mudar o código de lançamento, pois o cálculo das hora já foi efetuado');

 ValidVisoesFuncionario( cdsBancoHoraFUNCIONARIOID,
                         cdsBancoHoraL_NOMEFUNCIONARIO,
                         cdsBancoHoraL_FILIALID,
                         cdsBancoHoraL_HORASCFGTRABID,
                         'Banco de Horas',
                         'Visualizar Todos Bancos de Horas' );
 Cds     := nil;
 iSQL    := 'SELECT RD_HORA.DATAABERTURA,'+
            '       RD_HORA.DATAFECHAMENTO'+
            '  FROM RD_HORA'+
            ' WHERE RD_HORA.HORAID = '+ TField( Sender ).AsString;
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsBancoHoraL_DATAMESABERTO.AsDateTime  := cds.FieldByName('DATAABERTURA').AsDateTime;
      cdsBancoHoraL_DATAFECHAMENTO.AsDateTime := cds.FieldByName('DATAFECHAMENTO').AsDateTime;
     end
  else
     begin
      cdsBancoHoraL_DATAMESABERTO.Clear;
      cdsBancoHoraL_DATAFECHAMENTO.Clear;
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmRD.cdsBancoHoraOPERACAOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 if cdsBancoHoraOPERACAOID.IsNull then
    exit;

 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvOperacao' ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if ( ( cdsBancoHoraHORAINI.AsFloat > 0 ) or ( cdsBancoHoraHORAFIM.AsFloat > 0 ) ) then
     raise Exception.Create('Não é permitido mudar o código de lançamento, pois o cálculo das hora já foi efetuado');

  if not Cds.IsEmpty then
     begin
      if Cds.FieldByName('FINALIDADE').AsString = 'H' then
         begin
          if Cds.FieldByName('LANCEXCLUSIVO').AsInteger = 1 then
             if not CheckSenha( dmGsi.UsuarioAtivo,'Banco de Horas','Lançamento Exclusivo de Operação', True ) then
                begin
                 cdsBancoHoraL_DESCRICAOOPERACAO.Clear;
                 cdsBancoHoraL_OPERACAO.Clear;
                 raise Exception.Create('Valor do campo ' + Sender.DisplayName + ' é Inválido.');
                end;

          cdsBancoHoraL_DESCRICAOOPERACAO.Value := Cds.FieldByName('DESCRICAO').AsString;
          cdsBancoHoraL_OPERACAO.Value          := Cds.FieldByName('OPERACAO').AsString;
         end
      else
         raise Exception.Create('Operação selecionada não é de utilização de horas!' );
     end
  else
     begin
      cdsBancoHoraL_DESCRICAOOPERACAO.Clear;
      cdsBancoHoraL_OPERACAO.Clear;
      raise Exception.Create('Valor do campo ' + Sender.DisplayName + ' é Inválido.');
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmRD.cdsBancoHoraOSIDValidate(Sender: TField);
var iSql : String;
    Cds : TClientDataSet;
begin
 if ( cdsBancoHoraOSID.IsNull ) or ( cdsBancoHoraOSID.Value = '' ) or
    ( Copy( cdsBancoHoraOSID.Value,1,1) = ' ') then
    exit;

 dmOS.VerifStatusTIPOOS( Copy( cdsBancoHoraOSID.AsString,13, 1 ), 'BLOQLANCAMENTOS' );

 Cds  := nil;
 iSQL := 'SELECT OS_OS.OSID, OS_OS.SERIEID, OS_OS.LIBCHEFIA, OS_OS.DATAVALIDADE, STATUS, OS_OS.MODELOID, OS_OS.CLIENTEID, EF_ENTIDADE.NOME ' +
         ' FROM OS_OS, EF_ENTIDADE ' +
         ' WHERE OSID = ' + QuotedStr( TField( Sender ).AsString ) +
         ' AND EF_ENTIDADE.ENTIDADEID(+) = OS_OS.CLIENTEID ';

 ExecDynamicProvider( -1, iSQL, Cds );

 try
  if not Cds.IsEmpty then
     begin
      if Cds.FieldByName('STATUS').AsString[1] in ['E','F'] then
         raise Exception.Create( 'Ordem de Serviço fechada / bloqueada' );

      if Cds.FieldByName('LIBCHEFIA').AsInteger = 0 then
         dmOS.VerifStatusTIPOOS( Copy( cdsBancoHoraOSID.AsString,13, 1 ), 'EXIGIRLIBERACAO' );

      if not Cds.FieldByName('DATAVALIDADE').IsNull then
         if pCnnMain.AppServer.IServerDate > Cds.FieldByName('DATAVALIDADE').AsDateTime then
            raise Exception.Create( 'Data de validade da Ordem de Serviço está expirada. ' + #13 +
                                    'A validade atual é : ' + cds.FieldByName('DATAVALIDADE').AsString );
     end
  else
     raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );

  Cds.Close;

 finally
  FreeAndNil( Cds );
 end;
end;

class function TdmRD.DiffTime( FilialID, HorasCfgTrabID : Integer; TipoOperacao : String; DtHrIni, DtHrFim : TDateTime ;
 HoraViagem : Boolean ): Real;
var Operacao : Integer;
    DtHrIni_Padrao, DtHrFim_Padrao : TDateTime;
    DtHrIni_Padrao_Adicional, DtHrFim_Padrao_Adicional : TDateTime;
    HrIni_Dif, HrFim_Dif, HrAlmoco : Extended;

  function CalcularHoraPadrao : Extended;
  begin
   // Comparar Hora Inicial com inicio e fim de Trabalho e obter a diferença
   if not ( DtHrIni >= DtHrIni_Padrao_Adicional ) then
      HrIni_Dif := DiffDate( DtHrIni, DtHrIni_Padrao );

   if not ( DtHrIni <= DtHrFim_Padrao_Adicional ) then
      HrIni_Dif := HrIni_Dif + DiffDate( DtHrIni, DtHrFim_Padrao );

   // Comparar Hora Final com inicio e fim de Trabalho e obter a diferença
   if not ( DtHrFim >= DtHrIni_Padrao_Adicional ) then
      HrFim_Dif := DiffDate( DtHrIni_Padrao, DtHrFim );

   if not ( DtHrFim <= DtHrFim_Padrao_Adicional ) then
      HrFim_Dif := HrFim_Dif + DiffDate( DtHrFim_Padrao, DtHrFim );

   Result := TimeOF( HrIni_Dif + HrFim_Dif );
  end;

  function CalcularHoraViagem : Extended;
  begin
   // Comparar Hora Inicial com inicio e fim de Trabalho e obter a diferença
   if not ( DtHrIni >= DtHrIni_Padrao_Adicional ) then
      HrIni_Dif := DiffDate( DtHrIni, DtHrIni_Padrao_Adicional );

   if not ( DtHrIni <= DtHrFim_Padrao_Adicional ) then
      HrIni_Dif := HrIni_Dif + DiffDate( DtHrIni, DtHrFim_Padrao_Adicional );

   // Comparar Hora Final com inicio e fim de Trabalho e obter a diferença
   if not ( DtHrFim >= DtHrIni_Padrao_Adicional ) then
      HrFim_Dif := DiffDate( DtHrIni_Padrao_Adicional, DtHrFim );

   if not ( DtHrFim <= DtHrFim_Padrao_Adicional ) then
      HrFim_Dif := HrFim_Dif + DiffDate( DtHrFim_Padrao_Adicional, DtHrFim );

   Result := TimeOf( HrIni_Dif + HrFim_Dif );
  end;

begin
  Result := 0;

  case TipoOperacao[1] of
  'C' : begin
         Operacao := GetFeriado( DateOf( DtHrIni ), FilialID, HorasCfgTrabID );
         // Feriado ou Sabado ou Domingo
         if      Operacao = 1 then
                 Result := DiffDate( DtHrIni, DtHrFim )
         // Dias Normais
         else if Operacao = 0 then
                 begin
                  // Hora Inicial e Final da tabela de Configuração
                  GetHoraCfgTrab( IntToStr(HorasCfgTrabID), DtHrIni_Padrao, DtHrFim_Padrao, HrAlmoco );

                  HrIni_Dif := 0;
                  HrFim_Dif := 0;

                  DtHrIni_Padrao := DateOf( DtHrIni ) + TimeOf( DtHrIni_Padrao );
                  DtHrFim_Padrao := DateOf( DtHrIni ) + TimeOf( DtHrFim_Padrao );

                  DtHrIni_Padrao_Adicional := DateOf( DtHrIni ) + TimeOf( DtHrIni_Padrao ) - GSI_1Hora;
                  DtHrFim_Padrao_Adicional := DateOf( DtHrIni ) + TimeOf( DtHrFim_Padrao ) + GSI_1Hora;

                  if HoraViagem then
                     Result := CalcularHoraViagem
                  else
                     Result := CalcularHoraPadrao;

                  if HoraViagem then
                     if Round( Result ) < Round( GSI_1Hora ) then
                        raise Exception.Create('Lançamento inferir a 1 hora' );
                 end;
        end;
  'D' : begin
         GetHoraCfgTrab( IntToStr(HorasCfgTrabID), DtHrIni_Padrao, DtHrFim_Padrao, HrAlmoco );

         Result := TimeOf( DiffDate( DtHrIni, DtHrFim ) );

//         if Result > GSI_6Hora then
//            Result := Result - HourToMinute( HrAlmoco );
        end;
  end;
end;

class function TdmRD.GetFeriado( Data: TDateTime; FilialId, HorasCfgTrabId : Integer ): Integer;
var iSQL : String;
    cds, cdsCfg : TClientDataSet;
begin
 Result := 0;
 cds    := TClientDataSet.Create( Nil );
 cdsCfg := TClientDataSet.Create( Nil );

 try
  if not pCnnMain.Connected then
     begin
       cds.Data     := dmOFFLine.cdsFeriado.Data;
       cds.Filter   := 'DATAFERIADO = ' + QuotedStr( DateToStr( DATA ) );
       cds.Filtered := True;
     end
  else
     begin
      iSQL := 'SELECT RD_FERIADO.DATAFERIADO,'+
              '       RD_FERIADO.FERIADOREGIONAL,'+
              '       RD_FERIADO.FILIALID'+
              '  FROM RD_FERIADO'+
              ' WHERE RD_FERIADO.DATAFERIADO = '+ QuotedStr( DateToStr( Data ) );

      ExecDynamicProvider( -1,iSQL,cds );
     end;

  // Se Feriado
  if      not cds.IsEmpty then
          begin
           cds.First;
           while not ( cds.Eof )  do
           begin
            if ( ( cds.FieldByName('FERIADOREGIONAL').Value = 1 ) ) then
               begin
                if ( ( cds.FieldByName('FILIALID').Value = FilialId ) ) then
                   Result := 1;
               end
            else
               Result := 1;
            cds.Next;
           end;
          end;

  // Validar Domingo e Sábado
  if ( DayOfWeek( Data ) ) in [1,7] then
     begin
      // Validar tabela de configuração de horários.
      if not pCnnMain.Connected then
         begin
           if dmOFFLine.cdsHorasCfgTrab.FindKey([HorasCfgTrabId]) then
              begin
               case ( DayOfWeek( Data ) ) of
               7 : // Validar o sábado
                   if dmOFFLine.cdsHorasCfgTrabTRABSABADO.AsInteger = 0 then
                      Result := 1;

               1 : // Validar domingo
                   if dmOFFLine.cdsHorasCfgTrabTRABDOMINGO.AsInteger = 0 then
                      Result := 1;
               end;
              end
           else
              raise Exception.Create('Não foi possível validar o lançamento de horas, favor atualizar as bases de dados no sincronismo offline');
         end
      else
         begin
          iSQL :=  'SELECT BLOQUEADO, HORAINICIOTRABALHO, ' +
                   ' HORAFINALTRABALHO, HORASALMOCO, LIMITEBCOHORAS, TRABSABADO, TRABDOMINGO ' +
                   '  FROM RD_HORASCFGTRAB ' +
                   ' WHERE RD_HORASCFGTRAB.HORASCFGTRABID = ' + IntToStr( HorasCfgTrabId );

          ExecDynamicProvider( -1,iSQL,cdsCfg );

          if cdsCfg.RecordCount > 0 then
             begin
               case ( DayOfWeek( Data ) ) of
               7 : // Validar o sábado
                   if cdsCfg.FieldByName('TRABSABADO').AsInteger = 0 then
                      Result := 1;

               1 : // Validar domingo
                   if cdsCfg.FieldByName('TRABDOMINGO').AsInteger = 0 then
                      Result := 1;
               end;
             end
          else
            raise Exception.Create('Não foi possível validar o lançamento de horas, favor atualizar as bases de dados no sincronismo offline');
         end;
     end;

 finally
  FreeAndNil( cds );
  FreeAndNil( cdsCfg );
 end;
end;

class procedure TdmRD.GetHoraCfgTrab( HorasCfgTrabID : String; var HoraTrabIni, HoraTrabFim : TDateTime;
 var HorasAlmoco : Extended );
var sSQL : String;
    cds  : TClientDataSet;
begin
 cds := TClientDataSet.Create( Nil );

 try
  if not pCnnMain.Connected then
     begin
      cds.Data     := dmOFFLine.cdsHorasCfgTrab.Data;
      cds.Filter   := 'HORACFGTRABID = ' + HorasCfgTrabID;
      cds.Filtered := True;
     end
  else
     begin
      sSQL := '  SELECT HORASCFGTRABID, ' +
              '      HORAINICIOTRABALHO, ' +
              '      HORAFINALTRABALHO, ' +
              '      HORASALMOCO, ' +
              '      TRABSABADO, ' +
              '      TRABDOMINGO ' +
              ' FROM RD_HORASCFGTRAB ' +
              '  WHERE HORASCFGTRABID = ' + HorasCfgTrabID;

      ExecDynamicProvider( -1,sSQL,cds );
     end;

  if ( cds.FieldByName('HORAINICIOTRABALHO').AsDateTime = 0 ) or
     ( cds.FieldByName('HORAFINALTRABALHO').AsDateTime = 0 ) then
     raise Exception.Create('Configuração de Horas :' + HorasCfgTrabID + 'não está cadastrada' );

  HoraTrabIni := cds.FieldByName('HORAINICIOTRABALHO').AsDateTime;
  HoraTrabFim := cds.FieldByName('HORAFINALTRABALHO').AsDateTime;
  HorasAlmoco := cds.FieldByName('HORASALMOCO').AsCurrency;

  cds.Close;
 finally
  FreeAndNil( cds );
 end;
end;

procedure TdmRD.cdsBancoHoraHORAFIMValidate(Sender: TField);
var DifMinTrab : Currency;
begin
 dmAS.cdsConfig.Open;

 if cdsBancoHoraHORAINI.IsNull then
    raise Exception.Create('Falta informar a Hora Inicial! Pressione Esc para continuar!');

 if cdsBancoHoraHORAFIM.AsDateTime < cdsBancoHoraHORAINI.AsDateTime then
    raise Exception.Create('A data final deve ser maior do que a data inicial');

 ValidarHorasIniFim( cdsBancoHoraHORAFIM );

 DifMinTrab := DiffTime( cdsBancoHoraL_FILIALID.AsInteger, cdsBancoHoraL_HORASCFGTRABID.AsInteger, cdsBancoHoraL_OPERACAO.Value, cdsBancoHoraHORAINI.AsDateTime, cdsBancoHoraHORAFIM.AsDateTime,
                       ( cdsBancoHoraOPERACAOID.Value = 66 ) );

 if dmRD.cdsBancoHoraOPERACAOID.Value = 25 then
    if ( DifMinTrab = 0 ) then
       begin
        if not CheckSenha( dmGsi.UsuarioAtivo,'Banco de Horas','Lançamento multiplo saldo zero', False ) then
           raise Exception.Create('Não é necessário lançar esta despesa, pois o período informado resultou em saldo zero de horas');
       end;

 // Saldo deve ser maior do que 01:00 hora
 if dmRD.cdsBancoHoraOPERACAOID.Value = 25 then
    if ( DifMinTrab <= GSI_1Hora ) then
       begin
        if not CheckSenha( dmGsi.UsuarioAtivo,'Banco de Horas','Lançamento multiplo saldo zero', False ) then
           raise Exception.Create('Saldo de Horas menor do que o Permitido!');
       end;

 if cdsBancoHoraL_OPERACAO.Value = 'C' then
    if not shdcnnRD.AppServer.IValidSaldoHoras( cdsBancoHoraFUNCIONARIOID.AsString,
                                                cdsBancoHoraBANCOHORAID.AsString,
                                                DifMinTrab ) then
    raise Exception.Create('Limite do banco de horas já excedido!');

 cdsBancoHoraDIFERENCAMINTRAB.AsFloat   := DifMinTrab;
 cdsBancoHoraDIFERENCAHORATRAB.AsString := FormatTime( cdsBancoHoraDIFERENCAMINTRAB.AsFloat );
end;

procedure TdmRD.cdsFeriadoAfterPost(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmRD.cdsFeriadoAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmRD.ValidarHorasIniFim( Field : TField );
begin
 if cdsBancoHoraOPERACAOID.IsNull then
    raise exception.Create('Operação não informada!');

 if not CheckSenha( dmGsi.UsuarioAtivo,'Banco de Horas','Lançar Horas fora do mês em aberto', False ) then
    if DateOf( cdsBancoHoraHORAINI.AsDateTime ) > pCnnMain.AppServer.IServerdate then
       raise Exception.Create('A Data Informada é maior do que a data Atual!');

 if ( cdsBancoHoraOPERACAOID.Value <> 29 ) then
    if not CheckSenha( dmGsi.UsuarioAtivo,'Banco de Horas','Lançar Horas fora do mês em aberto', False ) then
       if not shdcnnRD.AppServer.IValidLimiteLancHoras( Field.AsDateTime, 1 ) then
          raise Exception.Create('Limite de lançamento excedido');
end;

procedure TdmRD.cdsBancoHoraHORAINIValidate(Sender: TField);
begin
 ValidarHorasIniFim( cdsBancoHoraHORAINI );

 if cdsBancoHoraHORAFIM.AsFloat > 0 then
    cdsBancoHoraHORAFIMValidate( Sender );
end;

procedure TdmRD.cdsRDVItemUSNewRecord(DataSet: TDataSet);
var ParamSQL : String;
begin
 ParamSQL := 'WHERE RD_RDVITEM.RDVID = '+ dmRD.cdsRdvRDVID.AsString;

 cdsRdvItemUSTIPOMOEDA.Value            := 'D';
 cdsRdvItemUSVLRSALDO.Value             := 0;
 cdsRdvItemUSVLRDESPESA.Value           := 0;
 cdsRdvItemUSDATAMOVIMENTOID.AsDateTime := pCnnMain.AppServer.iServerDate;
 cdsRdvItemUSITEMID.Value               := ContadorDB( 'RD_RDVITEM','ITEMID',ParamSQL );
 cdsRdvItemUSUSUARIO.AsString           := dmGsi.UsuarioAtivo;
end;

procedure TdmRD.cdsRDVItemUSAfterDelete(DataSet: TDataSet);
begin
 DeletarItemRDV( DataSet, 'D' );
end;

procedure TdmRD.cdsRDVItemUSAfterPost(DataSet: TDataSet);
begin
 RDVGravarItem( DataSet, 'D', NovoRDV );
end;

procedure TdmRD.cdsRDVItemUSBeforeInsert(DataSet: TDataSet);
begin
 if cdsRdv.State = dsEdit then
    cdsRdv.Post;
 NovoRdv := True;
end;

procedure TdmRD.cdsRDVItemUSBeforePost(DataSet: TDataSet);
begin
 if cdsRdvItem.State = dsInsert then
    begin
     if      cdsRdvItemUSL_OPERACAO.Value = 'C' then
             cdsRdvItemUSVLRSALDO.Value := cdsRdvVLRSALDOUS.AsCurrency + cdsRdvItemUSVLRDESPESA.Value
     else if cdsRDVItemUSL_OPERACAO.Value = 'D' then
             cdsRdvItemUSVLRSALDO.Value := cdsRdvVLRSALDOUS.AsCurrency - cdsRdvItemUSVLRDESPESA.Value;
    end;
end;

procedure TdmRD.cdsRDVItemUSCalcFields(DataSet: TDataSet);
begin
 if cdsRdvItemUS.State = dsInternalCalc then
    cdsRdvItemUSC_KmRodados.Value := ( cdsRdvItemUSKMCHEGADA.Value - cdsRdvItemUSKMSAIDA.Value );
end;

procedure TdmRD.cdsBancoHoraBeforeDelete(DataSet: TDataSet);
begin
 if cdsBancoHoraOPERACAOID.AsInteger = 26 then
    if not CheckSenha( dmGsi.UsuarioAtivo,'Banco de Horas','Excluir Horas de Debito',false ) then
       raise exception.Create( 'Banco de Horas - Você não tem direitos para esta rotina - Excluir Horas de Debito' );
end;

procedure TdmRD.cdsRdvItemDATACONTABILIZACAOValidate(Sender: TField);
begin
 if not CheckSenha(dmGsi.UsuarioAtivo,'Despesa de Viagem','Alterar Data de Contabilizacao', false ) then
    raise Exception.Create( 'Despesa de Viagem - Você não possui direitos para esta rotina - Alterar Data de Contabilizacao' );
end;

procedure TdmRD.cdsBancoHoraMULTILANCAMENTOValidate(Sender: TField);
begin
 if cdsBancoHoraMULTILANCAMENTO.AsInteger = 1 then
    if not CheckSenha( dmGsi.UsuarioAtivo,'Banco de Horas','Multi Lançamento de Horas', False ) then
       raise Exception.Create('Usuário não pode fazer Multi Lançamento de Horas!')
end;

procedure TdmRD.cdsBancoHoraDATASOLICITACAOValidate(Sender: TField);
begin
 if cdsBancoHoraDATASOLICITACAO.AsDateTime < StrToDate( '03/04/2006') then
    raise Exception.Create('Lançamento não permitido para o novo Banco de Horas que vigora a partir de 03 Abril 2006!');
end;

end.



