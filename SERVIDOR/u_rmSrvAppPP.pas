unit u_rmSrvAppPP;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr, DB,
  DBClient, GSIServidor_TLB, StdVcl, FMTBcd, Provider, SqlExpr, Variants, cDateTime;

type TTipoComissao = ( Revenda, Importacao, Exportacao );

type
  TSrvAppPP = class(TRemoteDataModule, ISrvAppPP)
    sqldtsCatalogo: TSQLDataSet;
    dsprvCatalogo: TDataSetProvider;
    sqldtsCatalogoMODELOID: TStringField;
    sqldtsCatalogoDESCRICAOPORTUGUES: TStringField;
    sqldtsCatalogoDESCRICAOINGLES: TStringField;
    sqldtsCatalogoGRUPOID: TBCDField;
    sqldtsCatalogoTIPO: TStringField;
    sqldtsCatalogoCUSTOHORAID: TBCDField;
    sqldtsCatalogoREGANVISAID: TStringField;
    sqldtsCatalogoIMAGEM: TBlobField;
    sqldtsCatalogoUSUARIO: TStringField;
    sqldtsEquipamento: TSQLDataSet;
    sqldtsOpcional: TSQLDataSet;
    sqldtsComposicao: TSQLDataSet;
    sqldtsCartaApresent: TSQLDataSet;
    sqldtsPrazo: TSQLDataSet;
    sqldtsBonificacao: TSQLDataSet;
    dsprvEquipamento: TDataSetProvider;
    dsprvCartaApresent: TDataSetProvider;
    sqldtsBonificacaoBONIFICACAOID: TBCDField;
    sqldtsBonificacaoDESCRICAO: TStringField;
    sqldtsBonificacaoUSUARIO: TStringField;
    dsprvBonificacao: TDataSetProvider;
    sqldtsPrazoPRAZOID: TBCDField;
    sqldtsPrazoDESCRICAO: TStringField;
    sqldtsPrazoUSUARIO: TStringField;
    dsprvPrazo: TDataSetProvider;
    sqldtsCondPagtoProp: TSQLDataSet;
    sqldtsCondPagtoPropCONDPAGTOPROPID: TBCDField;
    sqldtsCondPagtoPropCONDPAGTOID: TBCDField;
    sqldtsCondPagtoPropL_DESC_PAGTO: TStringField;
    sqldtsCondPagtoPropUSUARIO: TStringField;
    dsprvCondPagtoProp: TDataSetProvider;
    sqldtsValidade: TSQLDataSet;
    sqldtsValidadeVALIDADEID: TBCDField;
    sqldtsValidadeDESCRICAO: TStringField;
    sqldtsValidadeUSUARIO: TStringField;
    dsprvValidade: TDataSetProvider;
    sqldtsProposta: TSQLDataSet;
    sqldtsCatalogoCOMENTARIO: TStringField;
    sqldtsCatalogoFORNECEDORID: TBCDField;
    sqldtsCatalogoL_NOME_FORNECEDOR: TStringField;
    sqldtsPropEquipamento: TSQLDataSet;
    sqldtsObsProp: TSQLDataSet;
    dsprvObsProp: TDataSetProvider;
    dsprvGarantia: TDataSetProvider;
    dsprvAssistTec: TDataSetProvider;
    dsprvInstalacao: TDataSetProvider;
    sqldtsGarantia: TSQLDataSet;
    sqldtsPropComposicao: TSQLDataSet;
    sqldtsAssistTec: TSQLDataSet;
    sqldtsPropBonificacao: TSQLDataSet;
    sqldtsInstalacao: TSQLDataSet;
    dsPropostaLink: TDataSource;
    dsprvProposta: TDataSetProvider;
    sqldtsPropTradeIn: TSQLDataSet;
    sqldtsPropVendedor: TSQLDataSet;
    dsEquipamentoLink: TDataSource;
    dsOpcionalLink: TDataSource;
    sqldtsEquipamentoMODELOEQUIPAMENTOID: TStringField;
    sqldtsEquipamentoL_DESCRICAOPORTUGUES: TStringField;
    sqldtsEquipamentoL_DESCRICAOINGLES: TStringField;
    sqldtsEquipamentoL_COMENTARIO: TStringField;
    sqldtsEquipamentoL_GRUPOID: TBCDField;
    sqldtsEquipamentoL_DESCR_GRUPO: TStringField;
    sqldtsEquipamentoREVISAOID: TBCDField;
    sqldtsEquipamentoDATAINCLUSAO: TSQLTimeStampField;
    sqldtsEquipamentoDATAALTERACAO: TSQLTimeStampField;
    sqldtsEquipamentoDOC: TStringField;
    sqldtsEquipamentoPRAZO: TSQLTimeStampField;
    sqldtsEquipamentoDISPONIVEL: TBCDField;
    sqldtsEquipamentoVLRFOB: TBCDField;
    sqldtsEquipamentoVLRREVENDA: TBCDField;
    sqldtsEquipamentoVLRNET: TBCDField;
    sqldtsEquipamentoUSUARIO: TStringField;
    sqldtsComposicaoMODELOEQUIPAMENTOID: TStringField;
    sqldtsComposicaoMODELOCOMPONENTEID: TStringField;
    sqldtsComposicaoL_DESCRICAOPORTUGUES: TStringField;
    sqldtsComposicaoL_DESCRICAOINGLES: TStringField;
    sqldtsComposicaoL_GRUPOID: TBCDField;
    sqldtsComposicaoL_DESCR_GRUPO: TStringField;
    sqldtsComposicaoPRODUTOID: TBCDField;
    sqldtsComposicaoL_DESCRICAO_PORT: TStringField;
    sqldtsComposicaoL_DESCRICAO_INGLES: TStringField;
    sqldtsComposicaoL_ESTOQUEFISICO: TBCDField;
    sqldtsComposicaoQUANTIDADE: TBCDField;
    sqldtsComposicaoVLRUNITARIOFOB: TBCDField;
    sqldtsComposicaoVLRTOTALFOB: TBCDField;
    sqldtsComposicaoVLRUNITARIOREVENDA: TBCDField;
    sqldtsComposicaoVLRTOTALREVENDA: TBCDField;
    sqldtsComposicaoVLRUNITARIONET: TBCDField;
    sqldtsComposicaoVLRTOTALNET: TBCDField;
    sqldtsComposicaoUSUARIO: TStringField;
    sqldtsOpcionalMODELOEQUIPAMENTOID: TStringField;
    sqldtsOpcionalMODELOCOMPONENTEID: TStringField;
    sqldtsOpcionalL_DESCRICAOPORTUGUES: TStringField;
    sqldtsOpcionalL_DESCRICAOINGLES: TStringField;
    sqldtsOpcionalL_GRUPOID: TBCDField;
    sqldtsOpcionalL_DESCR_GRUPO: TStringField;
    sqldtsOpcionalPRODUTOID: TBCDField;
    sqldtsOpcionalL_DESCRICAO_PORT: TStringField;
    sqldtsOpcionalL_DESCRICAO_INGLES: TStringField;
    sqldtsOpcionalL_ESTOQUEFISICO: TBCDField;
    sqldtsOpcionalQUANTIDADE: TBCDField;
    sqldtsOpcionalVLRUNITARIOFOB: TBCDField;
    sqldtsOpcionalVLRTOTALFOB: TBCDField;
    sqldtsOpcionalVLRUNITARIOREVENDA: TBCDField;
    sqldtsOpcionalVLRTOTALREVENDA: TBCDField;
    sqldtsOpcionalVLRUNITARIONET: TBCDField;
    sqldtsOpcionalVLRTOTALNET: TBCDField;
    sqldtsOpcionalUSUARIO: TStringField;
    sqldtsPropDependencia: TSQLDataSet;
    dsPropOpcionalLink: TDataSource;
    sqldtsPropOpcional: TSQLDataSet;
    dsPropEquipamentoLink: TDataSource;
    sqldtsPropEquipamentoPROPOSTAID: TBCDField;
    sqldtsPropEquipamentoMODELOEQUIPAMENTOID: TStringField;
    sqldtsPropEquipamentoL_DESCR_PORT: TStringField;
    sqldtsPropEquipamentoL_DESCR_INGLES: TStringField;
    sqldtsPropEquipamentoL_GRUPOID: TBCDField;
    sqldtsPropEquipamentoITEMID: TBCDField;
    sqldtsPropEquipamentoQUANTIDADE: TBCDField;
    sqldtsPropEquipamentoVLRUNITARIOREVENDA: TBCDField;
    sqldtsPropEquipamentoVLRTOTALREVENDA: TBCDField;
    sqldtsPropEquipamentoPORCDESCONTO: TBCDField;
    sqldtsPropEquipamentoVLRDESCONTO: TBCDField;
    sqldtsPropEquipamentoVLRLIQUIDOREVENDA: TBCDField;
    sqldtsPropEquipamentoVLRUNITARIOFOB: TBCDField;
    sqldtsPropEquipamentoVLRTOTALFOB: TBCDField;
    sqldtsPropEquipamentoVLRUNITARIONET: TBCDField;
    sqldtsPropEquipamentoVLRTOTALNET: TBCDField;
    sqldtsPropEquipamentoOBSERVACAO: TStringField;
    sqldtsPropEquipamentoREVISAOID: TBCDField;
    sqldtsPropEquipamentoUSUARIO: TStringField;
    sqldtsPropOpcionalPROPOSTAID: TBCDField;
    sqldtsPropOpcionalMODELOEQUIPAMENTOID: TStringField;
    sqldtsPropOpcionalMODELOCOMPONENTEID: TStringField;
    sqldtsPropOpcionalL_DESCRPORTUGUES: TStringField;
    sqldtsPropOpcionalL_DESCRINGLES: TStringField;
    sqldtsPropOpcionalL_GRUPOID: TBCDField;
    sqldtsPropOpcionalL_DESCR_GRUPO: TStringField;
    sqldtsPropOpcionalITEMID: TBCDField;
    sqldtsPropOpcionalQUANTIDADE: TBCDField;
    sqldtsPropOpcionalVLRUNITARIOREVENDA: TBCDField;
    sqldtsPropOpcionalVLRTOTALREVENDA: TBCDField;
    sqldtsPropOpcionalVLRUNITARIOFOB: TBCDField;
    sqldtsPropOpcionalVLRTOTALFOB: TBCDField;
    sqldtsPropOpcionalVLRUNITARIONET: TBCDField;
    sqldtsPropOpcionalVLRTOTALNET: TBCDField;
    sqldtsPropOpcionalUSUARIO: TStringField;
    sqldtsPropBonificacaoPROPOSTAID: TBCDField;
    sqldtsPropBonificacaoITEMID: TBCDField;
    sqldtsPropBonificacaoBONIFICACAOID: TBCDField;
    sqldtsPropBonificacaoL_DESCR_BONIF: TStringField;
    sqldtsPropBonificacaoDESCRICAO: TStringField;
    sqldtsPropBonificacaoVLRBONIFICACAO: TBCDField;
    sqldtsPropBonificacaoUSUARIO: TStringField;
    sqldtsPropVendedorPROPOSTAID: TBCDField;
    sqldtsPropVendedorITEMID: TBCDField;
    sqldtsPropVendedorVENDEDORID: TBCDField;
    sqldtsPropVendedorL_NOME_VENDEDOR: TStringField;
    sqldtsPropVendedorL_NOME_FANTASIA: TStringField;
    sqldtsPropVendedorFUNCAOVENDAID: TBCDField;
    sqldtsPropVendedorL_FUNCAOVENDA: TStringField;
    sqldtsPropVendedorUSUARIO: TStringField;
    sqldtsPropComposicaoPROPOSTAID: TBCDField;
    sqldtsPropComposicaoMODELOEQUIPAMENTOID: TStringField;
    sqldtsPropComposicaoITEMID: TBCDField;
    sqldtsPropComposicaoMODELOCOMPONENTEID: TStringField;
    sqldtsPropComposicaoL_DESCRPORTUGUES: TStringField;
    sqldtsPropComposicaoL_DESCRINGLES: TStringField;
    sqldtsPropComposicaoL_GRUPOID: TBCDField;
    sqldtsPropComposicaoL_DESCR_GRUPO: TStringField;
    sqldtsPropComposicaoQUANTIDADE: TBCDField;
    sqldtsPropComposicaoVLRUNITARIOREVENDA: TBCDField;
    sqldtsPropComposicaoVLRTOTALREVENDA: TBCDField;
    sqldtsPropComposicaoVLRUNITARIOFOB: TBCDField;
    sqldtsPropComposicaoVLRTOTALFOB: TBCDField;
    sqldtsPropComposicaoVLRUNITARIONET: TBCDField;
    sqldtsPropComposicaoVLRTOTALNET: TBCDField;
    sqldtsPropComposicaoUSUARIO: TStringField;
    sqldtsPropDependenciaPROPOSTAID: TBCDField;
    sqldtsPropDependenciaMODELOEQUIPAMENTOID: TStringField;
    sqldtsPropDependenciaITEMID: TBCDField;
    sqldtsPropDependenciaMODELOCOMPONENTEID: TStringField;
    sqldtsPropDependenciaMODELODEPENDENCIAID: TStringField;
    sqldtsPropDependenciaL_DESCRPORTUGUES: TStringField;
    sqldtsPropDependenciaL_DESCRINGLES: TStringField;
    sqldtsPropDependenciaL_GRUPOID: TBCDField;
    sqldtsPropDependenciaL_DESCR_GRUPO: TStringField;
    sqldtsPropDependenciaQUANTIDADE: TBCDField;
    sqldtsPropDependenciaVLRUNITARIOREVENDA: TBCDField;
    sqldtsPropDependenciaVLRTOTALREVENDA: TBCDField;
    sqldtsPropDependenciaVLRUNITARIOFOB: TBCDField;
    sqldtsPropDependenciaVLRTOTALFOB: TBCDField;
    sqldtsPropDependenciaVLRUNITARIONET: TBCDField;
    sqldtsPropDependenciaVLRTOTALNET: TBCDField;
    sqldtsPropDependenciaUSUARIO: TStringField;
    sqldtsCartaApresentCARTAAPRESENTID: TBCDField;
    sqldtsCartaApresentDESCRRESUMIDA: TStringField;
    sqldtsCartaApresentUSUARIO: TStringField;
    sqldtsDependencia: TSQLDataSet;
    sqldtsDependenciaMODELOEQUIPAMENTOID: TStringField;
    sqldtsDependenciaMODELOCOMPONENTEID: TStringField;
    sqldtsDependenciaMODELODEPENDENCIAID: TStringField;
    sqldtsDependenciaL_DESCRICAOPORTUGUES: TStringField;
    sqldtsDependenciaL_DESCRICAOINGLES: TStringField;
    sqldtsDependenciaL_COMENTARIO: TStringField;
    sqldtsDependenciaL_GRUPOID: TBCDField;
    sqldtsDependenciaL_DESCR_GRUPO: TStringField;
    sqldtsDependenciaPRODUTOID: TBCDField;
    sqldtsDependenciaL_DESCRICAO_PORT: TStringField;
    sqldtsDependenciaL_DESCRICAO_INGLES: TStringField;
    sqldtsDependenciaL_ESTOQUEFISICO: TBCDField;
    sqldtsDependenciaQUANTIDADE: TBCDField;
    sqldtsDependenciaVLRUNITARIOFOB: TBCDField;
    sqldtsDependenciaVLRTOTALFOB: TBCDField;
    sqldtsDependenciaVLRUNITARIOREVENDA: TBCDField;
    sqldtsDependenciaVLRTOTALREVENDA: TBCDField;
    sqldtsDependenciaVLRUNITARIONET: TBCDField;
    sqldtsDependenciaVLRTOTALNET: TBCDField;
    sqldtsDependenciaUSUARIO: TStringField;
    sqldtsEquipamentoDESCRICAO: TMemoField;
    sqldtsCartaApresentCARTA: TMemoField;
    sqldtsCondPagtoPropDESCRICAO: TMemoField;
    sqldtsObsPropOBSPROPID: TBCDField;
    sqldtsObsPropDESCRICAO: TMemoField;
    sqldtsObsPropUSUARIO: TStringField;
    sqldtsGarantiaGARANTIAID: TBCDField;
    sqldtsGarantiaDESCRICAO: TMemoField;
    sqldtsGarantiaUSUARIO: TStringField;
    sqldtsAssistTecASSISTTECID: TBCDField;
    sqldtsAssistTecDESCRICAO: TMemoField;
    sqldtsAssistTecUSUARIO: TStringField;
    sqldtsInstalacaoINSTALACAOID: TBCDField;
    sqldtsInstalacaoDESCRICAO: TMemoField;
    sqldtsInstalacaoUSUARIO: TStringField;
    sqldtsPropostaPROPOSTAID: TBCDField;
    sqldtsPropostaFILIALID: TBCDField;
    sqldtsPropostaL_FILIAL: TStringField;
    sqldtsPropostaDATAPROPOSTA: TSQLTimeStampField;
    sqldtsPropostaDATAVALIDADE: TSQLTimeStampField;
    sqldtsPropostaLIBERACAO: TBCDField;
    sqldtsPropostaLIBNOME: TStringField;
    sqldtsPropostaLIBDATAHORA: TSQLTimeStampField;
    sqldtsPropostaTRADEIN: TBCDField;
    sqldtsPropostaANDAMENTOPROPOSTA: TStringField;
    sqldtsPropostaCPFCNPJ: TStringField;
    sqldtsPropostaNOMECLIENTE: TStringField;
    sqldtsPropostaREPRESENTSOCIO: TStringField;
    sqldtsPropostaOBSERVACAO: TStringField;
    sqldtsPropostaCARTAAPRESENTID: TBCDField;
    sqldtsPropostaL_CARTA_APRESENT: TStringField;
    sqldtsPropostaL_CARTA: TMemoField;
    sqldtsPropostaCONDPAGTOPROPID: TBCDField;
    sqldtsPropostaL_CONDPAGTOID: TBCDField;
    sqldtsPropostaL_DESCR_CONDPGTO: TStringField;
    sqldtsPropostaOBSPROPID: TBCDField;
    sqldtsPropostaL_DESCR_OBS: TMemoField;
    sqldtsPropostaGARANTIAID: TBCDField;
    sqldtsPropostaL_DESCR_GARANTIA: TMemoField;
    sqldtsPropostaASSISTTECID: TBCDField;
    sqldtsPropostaL_DESCR_ASSISTTEC: TMemoField;
    sqldtsPropostaINSTALACAOID: TBCDField;
    sqldtsPropostaL_DESCR_INSTALACAO: TMemoField;
    sqldtsPropostaPRAZOID: TBCDField;
    sqldtsPropostaL_DESCR_PRAZO: TStringField;
    sqldtsPropostaVALIDADEID: TBCDField;
    sqldtsPropostaL_DESCR_VALID: TStringField;
    sqldtsPropostaCEPID: TBCDField;
    sqldtsPropostaNUMERO: TStringField;
    sqldtsPropostaCOMPLEMENTO: TStringField;
    sqldtsPropostaENDERECO: TStringField;
    sqldtsPropostaBAIRRO: TStringField;
    sqldtsPropostaCIDADE: TStringField;
    sqldtsPropostaSIGLAUFID: TStringField;
    sqldtsPropostaPAIS: TStringField;
    sqldtsPropostaCONTATO: TStringField;
    sqldtsPropostaTELEFONE: TStringField;
    sqldtsPropostaTELEFONE2: TStringField;
    sqldtsPropostaCELULAR: TStringField;
    sqldtsPropostaCELULAR2: TStringField;
    sqldtsPropostaFAX: TStringField;
    sqldtsPropostaEMAIL: TStringField;
    sqldtsPropostaPAGINA: TStringField;
    sqldtsPropostaVLRTOTALFOB: TBCDField;
    sqldtsPropostaVLRTOTALREVENDA: TBCDField;
    sqldtsPropostaVLRTOTALNET: TBCDField;
    sqldtsPropostaVLRTOTALDESCONTO: TBCDField;
    sqldtsPropostaVLRTOTALTRADEIN: TBCDField;
    sqldtsPropostaVLRLIQUIDOPROPOSTA: TBCDField;
    sqldtsPropostaUSUARIO: TStringField;
    sqldtsEquipamentoL_IMAGEM: TBlobField;
    sqldtsPropEquipamentoL_DESCRICAO_EQUIPAMENTO: TMemoField;
    sqldtsPropostaDESCRICAOCONDPAGTO: TMemoField;
    sqldtsPropTradeInPROPOSTAID: TBCDField;
    sqldtsPropTradeInITEMID: TBCDField;
    sqldtsPropTradeInDESCRICAO: TMemoField;
    sqldtsPropTradeInDESCRICAOIMPRESSA: TMemoField;
    sqldtsPropTradeInVLRTRADEIN: TBCDField;
    sqldtsPropTradeInUSUARIO: TStringField;
    sqldtsComposicaoEMPRESAID: TBCDField;
    sqldtsOpcionalEMPRESAID: TBCDField;
    sqldtsDependenciaEMPRESAID: TBCDField;
    sqldtsCatalogoL_DESCRICAOCUSTOHORA: TStringField;
    sqldtsCatalogoL_VLRHORATRAB: TBCDField;
    sqldtsCatalogoL_VLRHORATRANSP: TBCDField;
    sqldtsCatalogoL_VLRHORAESPERA: TBCDField;
    sqldtsCatalogoL_VLRHORAOUTROS: TBCDField;
    sqldtsCatalogoDESCRICAOANVISA: TStringField;
    sqldtsAcessorio: TSQLDataSet;
    sqldtsAcessorioMODELOEQUIPAMENTOID: TStringField;
    sqldtsAcessorioMODELOCOMPONENTEID: TStringField;
    sqldtsAcessorioMODELOACESSORIOID: TStringField;
    sqldtsAcessorioL_DESCRICAOPORTUGUES: TStringField;
    sqldtsAcessorioL_DESCRICAOINGLES: TStringField;
    sqldtsAcessorioL_COMENTARIO: TStringField;
    sqldtsAcessorioL_GRUPOID: TBCDField;
    sqldtsAcessorioL_DESCR_GRUPO: TStringField;
    sqldtsAcessorioEMPRESAID: TBCDField;
    sqldtsAcessorioPRODUTOID: TBCDField;
    sqldtsAcessorioL_DESCRICAO_PORT: TStringField;
    sqldtsAcessorioL_DESCRICAO_INGLES: TStringField;
    sqldtsAcessorioL_ESTOQUEFISICO: TBCDField;
    sqldtsAcessorioQUANTIDADE: TBCDField;
    sqldtsAcessorioVLRUNITARIOFOB: TBCDField;
    sqldtsAcessorioVLRTOTALFOB: TBCDField;
    sqldtsAcessorioVLRUNITARIOREVENDA: TBCDField;
    sqldtsAcessorioVLRTOTALREVENDA: TBCDField;
    sqldtsAcessorioVLRUNITARIONET: TBCDField;
    sqldtsAcessorioVLRTOTALNET: TBCDField;
    sqldtsAcessorioUSUARIO: TStringField;
    sqldtsIncompativel: TSQLDataSet;
    sqldtsIncompativelMODELOEQUIPAMENTOID: TStringField;
    sqldtsIncompativelMODELOCOMPONENTEID: TStringField;
    sqldtsIncompativelMODELOINCOMPATIVELID: TStringField;
    sqldtsIncompativelL_DESCRICAOPORTUGUES: TStringField;
    sqldtsIncompativelL_DESCRICAOINGLES: TStringField;
    sqldtsIncompativelL_COMENTARIO: TStringField;
    sqldtsIncompativelL_GRUPOID: TBCDField;
    sqldtsIncompativelL_DESCR_GRUPO: TStringField;
    sqldtsIncompativelEMPRESAID: TBCDField;
    sqldtsIncompativelPRODUTOID: TBCDField;
    sqldtsIncompativelL_DESCRICAO_PORT: TStringField;
    sqldtsIncompativelL_DESCRICAO_INGLES: TStringField;
    sqldtsIncompativelL_ESTOQUEFISICO: TBCDField;
    sqldtsIncompativelQUANTIDADE: TBCDField;
    sqldtsIncompativelVLRUNITARIOFOB: TBCDField;
    sqldtsIncompativelVLRTOTALFOB: TBCDField;
    sqldtsIncompativelVLRUNITARIOREVENDA: TBCDField;
    sqldtsIncompativelVLRTOTALREVENDA: TBCDField;
    sqldtsIncompativelVLRUNITARIONET: TBCDField;
    sqldtsIncompativelVLRTOTALNET: TBCDField;
    sqldtsIncompativelUSUARIO: TStringField;
    sqldtsOrigemVenda: TSQLDataSet;
    dsprvOrigemVenda: TDataSetProvider;
    dsprvTipoVenda: TDataSetProvider;
    sqldtsTipoVenda: TSQLDataSet;
    sqldtsClasseVendedor: TSQLDataSet;
    dsprvClasseVendedor: TDataSetProvider;
    sqldtsClasseVendTipoVenda: TSQLDataSet;
    sqldtsClasseVendaRegiao: TSQLDataSet;
    dsClasseVendedorLink: TDataSource;
    sqldtsTabFinanceira: TSQLDataSet;
    dsprvTabFinanceira: TDataSetProvider;
    sqldtsPedVend: TSQLDataSet;
    dsprvPedVend: TDataSetProvider;
    dsPedVendLink: TDataSource;
    sqldtsPedVendItem: TSQLDataSet;
    sqldtsPedVendVend: TSQLDataSet;
    sqldtsPedVendBonif: TSQLDataSet;
    sqldtsPedVendInterv: TSQLDataSet;
    sqldtsHistFechComissao: TSQLDataSet;
    dsprvHistFechComissao: TDataSetProvider;
    sqldtsAnaliseVenda: TSQLDataSet;
    dsprvAnaliseVenda: TDataSetProvider;
    dsAnaliseVendaLink: TDataSource;
    sqldtsAnaliseVendaItem: TSQLDataSet;
    sqldtsBasePagto: TSQLDataSet;
    dsprvBasePagto: TDataSetProvider;
    sqldtsProcessoImp: TSQLDataSet;
    dsprvProcessoImp: TDataSetProvider;
    dsProcessoImpLink: TDataSource;
    sqldtsProcessoImpParc: TSQLDataSet;
    sqldtsOrigemVendaORIGEMVENDAID: TBCDField;
    sqldtsOrigemVendaDESCRICAO: TStringField;
    sqldtsOrigemVendaUSUARIO: TStringField;
    sqldtsTipoVendaTIPOVENDAID: TBCDField;
    sqldtsTipoVendaDESCRICAO: TStringField;
    sqldtsTipoVendaUSUARIO: TStringField;
    sqldtsClasseVendedorCLASSEVENDEDORID: TBCDField;
    sqldtsClasseVendedorDESCRICAO: TStringField;
    sqldtsClasseVendedorUSUARIO: TStringField;
    sqldtsClasseVendTipoVendaCLASSEVENDEDORID: TBCDField;
    sqldtsClasseVendTipoVendaTIPOVENDAID: TBCDField;
    sqldtsClasseVendTipoVendaPERCENTUAL: TBCDField;
    sqldtsClasseVendTipoVendaL_DESCRICAOTIPOVENDA: TStringField;
    sqldtsClasseVendTipoVendaUSUARIO: TStringField;
    sqldtsClasseVendaRegiaoCLASSEVENDEDORID: TBCDField;
    sqldtsClasseVendaRegiaoCEPID: TBCDField;
    sqldtsClasseVendaRegiaoL_NOMECIDADE: TStringField;
    sqldtsClasseVendaRegiaoL_BAIRROCEP: TBCDField;
    sqldtsClasseVendaRegiaoL_NOMEBAIRRO: TStringField;
    sqldtsClasseVendaRegiaoL_SIGLAUFID: TStringField;
    sqldtsClasseVendaRegiaoL_SIGLAPAISID: TStringField;
    sqldtsClasseVendaRegiaoUSUARIO: TStringField;
    sqldtsTabFinanceiraTABFINANCEIRAID: TBCDField;
    sqldtsTabFinanceiraDESCRICAO: TStringField;
    sqldtsTabFinanceiraUSUARIO: TStringField;
    sqldtsPedVendPEDVENDID: TStringField;
    sqldtsPedVendDATAPEDIDO: TSQLTimeStampField;
    sqldtsPedVendPROPOSTAID: TBCDField;
    sqldtsPedVendNUMPEDVENDEDORID: TStringField;
    sqldtsPedVendORIGEMVENDAID: TBCDField;
    sqldtsPedVendL_DESCR_ORIGEMVENDA: TStringField;
    sqldtsPedVendTIPOVENDAID: TBCDField;
    sqldtsPedVendL_DESCRICAOTIPOVENDA: TStringField;
    sqldtsPedVendEMPRESAID: TBCDField;
    sqldtsPedVendL_NOMEEMPRESA: TStringField;
    sqldtsPedVendCANCELADO: TBCDField;
    sqldtsPedVendCLIENTEID: TBCDField;
    sqldtsPedVendL_NOMECLIENTE: TStringField;
    sqldtsPedVendL_CPFCNPJ: TStringField;
    sqldtsPedVendCEPORIGID: TBCDField;
    sqldtsPedVendNUMEROORIG: TStringField;
    sqldtsPedVendCOMPLEMENTOORIG: TStringField;
    sqldtsPedVendENDERECOORIG: TStringField;
    sqldtsPedVendBAIRROORIG: TStringField;
    sqldtsPedVendCIDADEORIG: TStringField;
    sqldtsPedVendSIGLAUFORIGID: TStringField;
    sqldtsPedVendPAISORIG: TStringField;
    sqldtsPedVendTELEFONEORIG: TStringField;
    sqldtsPedVendCONTATOORIG: TStringField;
    sqldtsPedVendCONDPAGTOPROPID: TBCDField;
    sqldtsPedVendL_DESCR_FOB: TStringField;
    sqldtsPedVendVLRFOB: TBCDField;
    sqldtsPedVendCONDINTERVID: TBCDField;
    sqldtsPedVendL_DESCR_INTERV: TStringField;
    sqldtsPedVendDESCRICAOINTERV: TStringField;
    sqldtsPedVendVLRINTERVENIENCIA: TBCDField;
    sqldtsPedVendCONDEMPRSUPLID: TBCDField;
    sqldtsPedVendL_DESCR_SUPL: TStringField;
    sqldtsPedVendVLREMPRSUPLEMENTAR: TBCDField;
    sqldtsPedVendBONIFICACAO: TMemoField;
    sqldtsPedVendOBSERVACAO: TMemoField;
    sqldtsPedVendTIPODESPESA: TStringField;
    sqldtsPedVendVLRDESPESA: TBCDField;
    sqldtsPedVendPORCDESPESA: TFMTBCDField;
    sqldtsPedVendPORCVENDA: TFMTBCDField;
    sqldtsPedVendPORCFOB: TFMTBCDField;
    sqldtsPedVendNOMEAPARELHOINTERV: TStringField;
    sqldtsPedVendVLRAPARELHOINTERV: TBCDField;
    sqldtsPedVendVLRFRETEINTERNACIONAL: TBCDField;
    sqldtsPedVendCONDPAGTOID: TBCDField;
    sqldtsPedVendL_DESCRICAOCONDPAGTO: TStringField;
    sqldtsPedVendNATUREZAOPID: TBCDField;
    sqldtsPedVendL_CFOP: TStringField;
    sqldtsPedVendL_DESCRICAOUSUARIO: TStringField;
    sqldtsPedVendPDSID: TBCDField;
    sqldtsPedVendDATAPEDIDOPDSID: TSQLTimeStampField;
    sqldtsPedVendVLRTOTALINTERVCRED: TBCDField;
    sqldtsPedVendVLRTOTALINTERVDEB: TBCDField;
    sqldtsPedVendVLRTOTALVENDA: TBCDField;
    sqldtsPedVendUSUARIO: TStringField;
    sqldtsPedVendItemPEDVENDID: TStringField;
    sqldtsPedVendItemITEMID: TBCDField;
    sqldtsPedVendItemSERIEID: TStringField;
    sqldtsPedVendItemMODELOID: TStringField;
    sqldtsPedVendItemVOLTAGEM: TStringField;
    sqldtsPedVendItemQUANTIDADE: TBCDField;
    sqldtsPedVendItemVLRFOB: TBCDField;
    sqldtsPedVendItemVLRINTERVENIENCIA: TBCDField;
    sqldtsPedVendItemVLRCOMISSAO: TBCDField;
    sqldtsPedVendItemEMPRESAID: TBCDField;
    sqldtsPedVendItemPRODUTOID: TBCDField;
    sqldtsPedVendItemL_DESCRICAOPORTUGUES: TStringField;
    sqldtsPedVendItemL_GRUPOID: TBCDField;
    sqldtsPedVendItemESTOQUEUTILIZADO: TStringField;
    sqldtsPedVendItemVLRPRECOUNITARIO: TBCDField;
    sqldtsPedVendItemVLRPRECOTOTAL: TBCDField;
    sqldtsPedVendItemNXID: TStringField;
    sqldtsPedVendItemINVOICEID: TStringField;
    sqldtsPedVendItemCEPINSTID: TBCDField;
    sqldtsPedVendItemNUMEROINST: TStringField;
    sqldtsPedVendItemCOMPLEMENTOINST: TStringField;
    sqldtsPedVendItemENDERECOINST: TStringField;
    sqldtsPedVendItemBAIRROINST: TStringField;
    sqldtsPedVendItemCIDADEINST: TStringField;
    sqldtsPedVendItemSIGLAUFINSTID: TStringField;
    sqldtsPedVendItemTELEFONEINST: TStringField;
    sqldtsPedVendItemCONTATOINST: TStringField;
    sqldtsPedVendItemEMBJAPAOID: TStringField;
    sqldtsPedVendItemLIDISPENSA: TBCDField;
    sqldtsPedVendItemLIDATATRANSMISSAO: TSQLTimeStampField;
    sqldtsPedVendItemLIDATAAPROVACAO: TSQLTimeStampField;
    sqldtsPedVendItemLINUMERO: TStringField;
    sqldtsPedVendItemLIDATAVALIDADE: TSQLTimeStampField;
    sqldtsPedVendItemLIVLRCOMISSAO: TBCDField;
    sqldtsPedVendItemLIADITIVO1: TStringField;
    sqldtsPedVendItemLIDATAVALIDADE1: TSQLTimeStampField;
    sqldtsPedVendItemLIADITIVO2: TStringField;
    sqldtsPedVendItemLIDATAVALIDADE2: TSQLTimeStampField;
    sqldtsPedVendItemLIADITIVO3: TStringField;
    sqldtsPedVendItemLIDATAVALIDADE3: TSQLTimeStampField;
    sqldtsPedVendItemLIADITIVO4: TStringField;
    sqldtsPedVendItemRTINVOICEID: TStringField;
    sqldtsPedVendItemRTCLIENTEID: TBCDField;
    sqldtsPedVendItemRTOBSERVACAO: TMemoField;
    sqldtsPedVendItemRTCABOK7: TStringField;
    sqldtsPedVendItemRTCABOVIDEOPRINTER: TStringField;
    sqldtsPedVendItemRTCABOMONITORAUXILIAR: TStringField;
    sqldtsPedVendItemRTMULTIFORMATO: TStringField;
    sqldtsPedVendItemRTESTABILIZADOR: TStringField;
    sqldtsPedVendItemRTDATASAIDA: TSQLTimeStampField;
    sqldtsPedVendItemRTTRANSPORTADORID: TBCDField;
    sqldtsPedVendItemRTOSID: TStringField;
    sqldtsPedVendItemRTIMPRESSO: TBCDField;
    sqldtsPedVendItemRTDATAPREVCHEGADA: TSQLTimeStampField;
    sqldtsPedVendItemRTUSUARIO: TStringField;
    sqldtsPedVendItemRTLIBERADO: TBCDField;
    sqldtsPedVendItemUSUARIO: TStringField;
    sqldtsPedVendVendPEDVENDID: TStringField;
    sqldtsPedVendVendITEMID: TBCDField;
    sqldtsPedVendVendVENDEDORID: TBCDField;
    sqldtsPedVendVendL_DESCR_CLASSEVENDEDOR: TStringField;
    sqldtsPedVendVendCLASSEVENDEDORID: TBCDField;
    sqldtsPedVendVendPORCENTAGEM: TFMTBCDField;
    sqldtsPedVendVendUSUARIO: TStringField;
    sqldtsPedVendBonifPEDVENDID: TStringField;
    sqldtsPedVendBonifITEMID: TBCDField;
    sqldtsPedVendBonifBONIFICACAOID: TBCDField;
    sqldtsPedVendBonifL_DESCR_BONIFICACAO: TStringField;
    sqldtsPedVendBonifDESCRICAO: TStringField;
    sqldtsPedVendBonifVLRBONIFICACAO: TBCDField;
    sqldtsPedVendBonifUSUARIO: TStringField;
    sqldtsPedVendIntervPEDVENDID: TStringField;
    sqldtsPedVendIntervITEMID: TBCDField;
    sqldtsPedVendIntervCONDINTERVID: TBCDField;
    sqldtsPedVendIntervL_DESCRICAOPAGTO: TStringField;
    sqldtsPedVendIntervDESCRICAO: TStringField;
    sqldtsPedVendIntervUSUARIO: TStringField;
    sqldtsHistFechComissaoANOMESID: TStringField;
    sqldtsHistFechComissaoMOTIVO: TStringField;
    sqldtsHistFechComissaoUSUARIO: TStringField;
    sqldtsAnaliseVendaPEDVENDID: TStringField;
    sqldtsAnaliseVendaL_DATAPEDIDO: TSQLTimeStampField;
    sqldtsAnaliseVendaL_ORIGEMVENDAID: TBCDField;
    sqldtsAnaliseVendaL_DECRICAOORIGEMVENDA: TStringField;
    sqldtsAnaliseVendaL_TIPOVENDAID: TBCDField;
    sqldtsAnaliseVendaL_DESCRICAOTIPOVENDA: TStringField;
    sqldtsAnaliseVendaL_CLIENTEID: TBCDField;
    sqldtsAnaliseVendaL_NOME: TStringField;
    sqldtsAnaliseVendaL_SIGLAUFORGID: TStringField;
    sqldtsAnaliseVendaL_CIDADEORIG: TStringField;
    sqldtsAnaliseVendaL_CPFCNPJ: TStringField;
    sqldtsAnaliseVendaL_FISICAJURIDICA: TStringField;
    sqldtsAnaliseVendaEMPRESAID: TBCDField;
    sqldtsAnaliseVendaNFSID: TBCDField;
    sqldtsAnaliseVendaDATAEMISSAOID: TSQLTimeStampField;
    sqldtsAnaliseVendaDATAFECHAMENTO: TSQLTimeStampField;
    sqldtsAnaliseVendaVLRFOB: TBCDField;
    sqldtsAnaliseVendaVLRVENDA: TBCDField;
    sqldtsAnaliseVendaVLRINTERVENIENCIA: TBCDField;
    sqldtsAnaliseVendaVLRIPI: TBCDField;
    sqldtsAnaliseVendaVLRCOMISSAO: TBCDField;
    sqldtsAnaliseVendaVLRCOMISSAOUS: TBCDField;
    sqldtsAnaliseVendaLIBPAGTOFIN: TBCDField;
    sqldtsAnaliseVendaSTATUS: TBCDField;
    sqldtsAnaliseVendaUSUARIO: TStringField;
    sqldtsProcessoImpPEDVENDID: TStringField;
    sqldtsProcessoImpDATAPROCESSO: TSQLTimeStampField;
    sqldtsProcessoImpDATAPDI: TSQLTimeStampField;
    sqldtsProcessoImpDATAPEDIDO: TSQLTimeStampField;
    sqldtsProcessoImpCLIENTEID: TBCDField;
    sqldtsProcessoImpL_CPFCNPJ: TStringField;
    sqldtsProcessoImpL_FISICAJURIDICA: TStringField;
    sqldtsProcessoImpL_NOME: TStringField;
    sqldtsProcessoImpL_CIDADE: TStringField;
    sqldtsProcessoImpL_SIGLAUFID: TStringField;
    sqldtsProcessoImpOBSERVACAOVENDA: TMemoField;
    sqldtsProcessoImpOBSERVACAOPROCESSO: TMemoField;
    sqldtsProcessoImpSOLICESQUEMA: TBCDField;
    sqldtsProcessoImpSOLICNOTAPROMISSORIA: TBCDField;
    sqldtsProcessoImpEMBDATAPREVISAO: TSQLTimeStampField;
    sqldtsProcessoImpEMBDATA: TSQLTimeStampField;
    sqldtsProcessoImpEMBDATABL: TSQLTimeStampField;
    sqldtsProcessoImpEMBNUMCONHEC: TStringField;
    sqldtsProcessoImpEMBPESOLIQUIDO: TBCDField;
    sqldtsProcessoImpEMBNOMENAVIO: TStringField;
    sqldtsProcessoImpEMBPESOBRUTO: TBCDField;
    sqldtsProcessoImpEMBSINALFOB: TBCDField;
    sqldtsProcessoImpEMBDATAPAGTOSINAL: TSQLTimeStampField;
    sqldtsProcessoImpEMBFOBAVISTA: TBCDField;
    sqldtsProcessoImpEMBDATAPAGTOFOBV: TSQLTimeStampField;
    sqldtsProcessoImpEMBDATASOLSEGINT: TSQLTimeStampField;
    sqldtsProcessoImpEMBDATAAPOLICE: TSQLTimeStampField;
    sqldtsProcessoImpEMBSEGINT: TBCDField;
    sqldtsProcessoImpEMBDESPACHANTE: TStringField;
    sqldtsProcessoImpEMBVLRDESEMBARACO: TBCDField;
    sqldtsProcessoImpEMBDATACHEGAPAR: TSQLTimeStampField;
    sqldtsProcessoImpEMBDATALIBALFANDEGA: TSQLTimeStampField;
    sqldtsProcessoImpEMBDATALIBTMB: TSQLTimeStampField;
    sqldtsProcessoImpEMBOBS: TMemoField;
    sqldtsProcessoImpEMBDIID: TStringField;
    sqldtsProcessoImpEMBDATADI: TSQLTimeStampField;
    sqldtsProcessoImpEMBFATINVOICEID: TStringField;
    sqldtsProcessoImpEMBJAPAOID: TStringField;
    sqldtsProcessoImpEMBDATAFATURA: TSQLTimeStampField;
    sqldtsProcessoImpROFDISPENSA: TBCDField;
    sqldtsProcessoImpROFDATATRANSMISSAO: TSQLTimeStampField;
    sqldtsProcessoImpROFDATAAPROVACAO: TSQLTimeStampField;
    sqldtsProcessoImpROFID: TStringField;
    sqldtsProcessoImpROFOBSEXIGENCIA: TMemoField;
    sqldtsProcessoImpPPDATASOLICITACAO: TSQLTimeStampField;
    sqldtsProcessoImpPPDATAENVIOCLIENTE: TSQLTimeStampField;
    sqldtsProcessoImpPPDATAAPROVACAO: TSQLTimeStampField;
    sqldtsProcessoImpPPOBS: TMemoField;
    sqldtsProcessoImpLIOBSEXIGENCIA: TMemoField;
    sqldtsProcessoImpPODATATRANSMISSAOEMAIL: TSQLTimeStampField;
    sqldtsProcessoImpPONXID: TStringField;
    sqldtsProcessoImpPODATAENVIOFORM: TSQLTimeStampField;
    sqldtsProcessoImpPOTRANSMISSAO1: TSQLTimeStampField;
    sqldtsProcessoImpPOTRANSMISSAO2: TSQLTimeStampField;
    sqldtsProcessoImpPOTRANSMISSAO3: TSQLTimeStampField;
    sqldtsProcessoImpPOTRANSMISSAO5: TSQLTimeStampField;
    sqldtsProcessoImpPOTRANSMISSAO6: TSQLTimeStampField;
    sqldtsProcessoImpPONUMFATPROFORMA: TStringField;
    sqldtsProcessoImpPODATAFATPROFORMA: TSQLTimeStampField;
    sqldtsProcessoImpEPDISPENSA: TBCDField;
    sqldtsProcessoImpEPDATATRANSMISSAO: TSQLTimeStampField;
    sqldtsProcessoImpEPDATAAPROVACAO: TSQLTimeStampField;
    sqldtsProcessoImpEPOBS: TMemoField;
    sqldtsProcessoImpTIDATA: TSQLTimeStampField;
    sqldtsProcessoImpTICLIENTEID: TBCDField;
    sqldtsProcessoImpTIOBS: TMemoField;
    sqldtsProcessoImpDOCDATARECDOC: TSQLTimeStampField;
    sqldtsProcessoImpDOCPEDCONFCONTRATO: TSQLTimeStampField;
    sqldtsProcessoImpDOCRECCONTRATO: TSQLTimeStampField;
    sqldtsProcessoImpDOCOBS: TMemoField;
    sqldtsProcessoImpDOCNUMCONTRATO: TStringField;
    sqldtsProcessoImpDOCDATACONTRATO: TSQLTimeStampField;
    sqldtsProcessoImpLCDISPENSA: TBCDField;
    sqldtsProcessoImpLCNUMERO: TStringField;
    sqldtsProcessoImpLCDATAEMISSAOID: TSQLTimeStampField;
    sqldtsProcessoImpLCDATAVALIDADE: TSQLTimeStampField;
    sqldtsProcessoImpLCULTDATAEMBARQUE: TSQLTimeStampField;
    sqldtsProcessoImpLCBANCOEMISSOR: TStringField;
    sqldtsProcessoImpLCPRACA: TBCDField;
    sqldtsProcessoImpLCINSTITUICAO: TBCDField;
    sqldtsProcessoImpCBDISPENSA: TBCDField;
    sqldtsProcessoImpCBNUMERO: TStringField;
    sqldtsProcessoImpCBDATA: TSQLTimeStampField;
    sqldtsProcessoImpCANCELADO: TBCDField;
    sqldtsProcessoImpDATACANCELAMENTO: TSQLTimeStampField;
    sqldtsProcessoImpOBSCANCELADO: TMemoField;
    sqldtsProcessoImpUSUARIO: TStringField;
    sqldtsProcessoImpParcPEDVENDID: TStringField;
    sqldtsProcessoImpParcPARCELAID: TBCDField;
    sqldtsProcessoImpParcQTDPARCELAS: TBCDField;
    sqldtsProcessoImpParcDATAVENCIMENTO: TSQLTimeStampField;
    sqldtsProcessoImpParcVLRPARCELA: TBCDField;
    sqldtsProcessoImpParcLIBOR: TBCDField;
    sqldtsProcessoImpParcSPREED: TBCDField;
    sqldtsProcessoImpParcVLRJUROS: TBCDField;
    sqldtsProcessoImpParcPOSICAOJUROS: TStringField;
    sqldtsProcessoImpParcVLRTOTAL: TBCDField;
    sqldtsProcessoImpParcJUROSMORA: TBCDField;
    sqldtsProcessoImpParcDATAPAGAMENTO: TSQLTimeStampField;
    sqldtsProcessoImpParcMOTIVOATRASO: TStringField;
    sqldtsProcessoImpParcPRAZOPARCELA: TBCDField;
    sqldtsProcessoImpParcPAGTOPARCIAL: TBCDField;
    sqldtsProcessoImpParcVLRSALDO: TBCDField;
    sqldtsProcessoImpParcUSUARIO: TStringField;
    sqldtsCondPagtoPropDESCRICAOPAGTO: TStringField;
    sqldtsCondPagtoPropTABFINANCEIRAID: TBCDField;
    sqldtsCondPagtoPropSPREAD: TFMTBCDField;
    sqldtsCondPagtoPropJUROS: TFMTBCDField;
    sqldtsCondPagtoPropNUMPARCELA: TBCDField;
    sqldtsCondPagtoPropNUMPARCJUROS: TBCDField;
    sqldtsCondPagtoPropPORCPAGTOAVISTA: TFMTBCDField;
    sqldtsCondPagtoPropLEASING: TBCDField;
    sqldtsCondPagtoPropRESIDUALPORC: TFMTBCDField;
    sqldtsCondPagtoPropRESIDUALNUM: TFMTBCDField;
    sqldtsCondPagtoPropTIPOPAGTO: TStringField;
    sqldtsCondPagtoPropCOMISSAOFINANCEIRA: TFMTBCDField;
    sqldtsCondPagtoPropDEDUZIRCOMISSAO: TBCDField;
    sqldtsProcessoImpEMBDATAPAGTOSEGINT: TSQLTimeStampField;
    sqldtsProcessoImpEMBVLRFRETEINTERNAC: TBCDField;
    sqldtsProcessoImpEMBVLRFRETEINTERNO: TBCDField;
    sqldtsProcessoImpEMBDATAENTREGACLI: TSQLTimeStampField;
    sqldtsProcessoImpEMBDATATERMOACEIT: TSQLTimeStampField;
    sqldtsProcessoImpPOTRANSMISSAO4: TSQLTimeStampField;
    sqldtsProcessoImpDOCDATAREQUISICAOMI: TSQLTimeStampField;
    sqldtsProcessoImpROFRESPONSAVEL: TStringField;
    sqldtsProcessoImpEPNUMERO: TStringField;
    sqldtsPedVendVLRBONIFICACAO: TBCDField;
    sqldtsPedVendItemLIDATAVALIDADE4: TSQLTimeStampField;
    sqldtsPedVendIntervVLRINTERVENIENCIA: TBCDField;
    sqldtsProcessoImpLIRESPONSAVEL: TStringField;
    sqldtsProcessoImpEPRESPONSAVEL: TStringField;
    sqldtsPedVendVLRTOTALGERAL: TBCDField;
    sqldtsPedVendItemVLRFOBREVENDA: TBCDField;
    sqldtsPedVendComp: TSQLDataSet;
    dsPedVendItemLink: TDataSource;
    sqldtsPedVendCompPEDVENDID: TStringField;
    sqldtsPedVendCompITEMID: TBCDField;
    sqldtsPedVendCompITEMCOMPID: TBCDField;
    sqldtsPedVendCompSERIEID: TStringField;
    sqldtsPedVendCompMODELOID: TStringField;
    sqldtsPedVendCompL_DESCRICAOPORTUGUES: TStringField;
    sqldtsPedVendCompL_GRUPOID: TBCDField;
    sqldtsPedVendCompQUANTIDADE: TBCDField;
    sqldtsPedVendCompVLRUNITARIOFOB: TBCDField;
    sqldtsPedVendCompVLRTOTALFOB: TBCDField;
    sqldtsPedVendCompVLRUNITARIOREVENDA: TBCDField;
    sqldtsPedVendCompVLRTOTALREVENDA: TBCDField;
    sqldtsPedVendCompUSUARIO: TStringField;
    sqldtsPedVendIntervL_DEDUZIRCOMISSAO: TBCDField;
    sqldtsAnaliseVendaVend: TSQLDataSet;
    sqldtsAnaliseVendaVendPEDVENDID: TStringField;
    sqldtsAnaliseVendaVendITEMID: TBCDField;
    sqldtsAnaliseVendaVendVENDEDORID: TBCDField;
    sqldtsAnaliseVendaVendL_DESCR_CLASSEVENDEDOR: TStringField;
    sqldtsAnaliseVendaVendCLASSEVENDEDORID: TBCDField;
    sqldtsAnaliseVendaVendPORCENTAGEM: TFMTBCDField;
    sqldtsAnaliseVendaVendUSUARIO: TStringField;
    sqldtsPedVendVendL_NOMEVENDEDOR: TStringField;
    sqldtsAnaliseVendaVendL_NOMEVENDEDOR: TStringField;
    sqldtsPedVendDATACHEGADA: TSQLTimeStampField;
    sqldtsPedVendCONTRATOID: TStringField;
    sqldtsPedVendPROPPEDVENDEDORID: TStringField;
    sqldtsPedVendL_INSCRESTADUAL: TStringField;
    sqldtsPedVendItemL_PARTNUMBERID: TStringField;
    sqldtsPedVendItemRTDATAEMBARQUE: TSQLTimeStampField;
    sqldtsPedVendItemL_NOMETRANSPORTADOR: TStringField;
    sqldtsRecebComVenda: TSQLDataSet;
    dsprvRecebComVenda: TDataSetProvider;
    sqldtsRecebComVendaENTIDADEID: TBCDField;
    sqldtsRecebComVendaL_CPFCNPJ: TStringField;
    sqldtsRecebComVendaL_NOME: TStringField;
    sqldtsRecebComVendaBLOQUEARCOMISSAO: TBCDField;
    sqldtsRecebComVendaUSUARIO: TStringField;
    sqldtsNfsParcela: TSQLDataSet;
    dsprvNfsParcela: TDataSetProvider;
    sqldtsBasePagtoVENDEDORID: TBCDField;
    sqldtsBasePagtoL_APELIDOVENDEDOR: TStringField;
    sqldtsBasePagtoPEDVENDID: TStringField;
    sqldtsBasePagtoITEMID: TBCDField;
    sqldtsBasePagtoL_DATAPEDIDO: TSQLTimeStampField;
    sqldtsBasePagtoL_ORIGEMVENDAID: TBCDField;
    sqldtsBasePagtoL_DATAFECHAMENTO: TSQLTimeStampField;
    sqldtsBasePagtoL_EMPRESAID: TBCDField;
    sqldtsBasePagtoL_NFSID: TBCDField;
    sqldtsBasePagtoL_DATAEMISSAOID: TSQLTimeStampField;
    sqldtsBasePagtoL_DECRICAOORIGEMVENDA: TStringField;
    sqldtsBasePagtoL_TIPOVENDAID: TBCDField;
    sqldtsBasePagtoL_DESCRICAOTIPOVENDA: TStringField;
    sqldtsBasePagtoL_CLIENTEID: TBCDField;
    sqldtsBasePagtoL_NOME: TStringField;
    sqldtsBasePagtoL_SIGLAUFORGID: TStringField;
    sqldtsBasePagtoL_CIDADEORIG: TStringField;
    sqldtsBasePagtoL_CPFCNPJ: TStringField;
    sqldtsBasePagtoL_FISICAJURIDICA: TStringField;
    sqldtsBasePagtoDATACONVFOB: TSQLTimeStampField;
    sqldtsBasePagtoDATALIBPAGTOFIN: TSQLTimeStampField;
    sqldtsBasePagtoDATAPAGTOCOM: TSQLTimeStampField;
    sqldtsBasePagtoCLASSEVENDEDORID: TBCDField;
    sqldtsBasePagtoL_CLASSEVENDEDOR: TStringField;
    sqldtsBasePagtoNIVELVENDA: TStringField;
    sqldtsBasePagtoVLRCOMISSAO: TBCDField;
    sqldtsBasePagtoPORCVENDA: TFMTBCDField;
    sqldtsBasePagtoVLRBASECOMISSAO: TBCDField;
    sqldtsBasePagtoVLRBASECOMISSAOUS: TBCDField;
    sqldtsBasePagtoVLRDSR: TBCDField;
    sqldtsBasePagtoVLRLIQUIDO: TBCDField;
    sqldtsBasePagtoOBSERVACAO: TMemoField;
    sqldtsBasePagtoUSUARIO: TStringField;
    sqldtsBasePagtoL_VLRFOB: TBCDField;
    sqldtsBasePagtoL_VLRVENDA: TBCDField;
    sqldtsBasePagtoL_VLRINTERVENIENCIA: TBCDField;
    sqldtsBasePagtoL_VLRIPI: TBCDField;
    sqldtsBasePagtoL_DOLAROFICIALC: TFMTBCDField;
    sqldtsNfsParcelaEMPRESAID: TBCDField;
    sqldtsNfsParcelaNFSID: TBCDField;
    sqldtsNfsParcelaDATAEMISSAOID: TSQLTimeStampField;
    sqldtsNfsParcelaPARCELAID: TBCDField;
    sqldtsNfsParcelaDATAVENCIMENTO: TSQLTimeStampField;
    sqldtsNfsParcelaDATAPAGTO: TSQLTimeStampField;
    sqldtsNfsParcelaVLRPARCELA: TBCDField;
    sqldtsNfsParcelaDUPLICATAID: TBCDField;
    sqldtsNfsParcelaEXPORTADO: TBCDField;
    sqldtsNfsParcelaVLRBASECOMISSAO: TBCDField;
    sqldtsNfsParcelaPAGTOVENDEDOR: TBCDField;
    sqldtsNfsParcelaL_PEDVENDID: TStringField;
    sqldtsNfsParcelaL_VLRFOB: TBCDField;
    sqldtsNfsParcelaL_VLRVENDA: TBCDField;
    sqldtsNfsParcelaL_VLRINTERVENIENCIA: TBCDField;
    sqldtsNfsParcelaL_VLRIPI: TBCDField;
    sqldtsNfsParcelaL_VLRCOMISSAO: TBCDField;
    sqldtsNfsParcelaL_VLRCOMISSAOUS: TBCDField;
    sqldtsNfsParcelaL_CLIENTEID: TBCDField;
    sqldtsNfsParcelaL_CIDADEORIG: TStringField;
    sqldtsNfsParcelaL_SIGLAUFORIGID: TStringField;
    sqldtsNfsParcelaL_NOME: TStringField;
    sqldtsNfsParcelaUSUARIO: TStringField;
    sqldtsPedVendL_NFSID: TBCDField;
    sqldtsPedVendL_DATAEMISSAOID: TSQLTimeStampField;
    sqldtsAnaliseVendaItemPEDVENDID: TStringField;
    sqldtsAnaliseVendaItemITEMID: TBCDField;
    sqldtsAnaliseVendaItemL_PARTNUMBER: TStringField;
    sqldtsAnaliseVendaItemL_GRUPOID: TBCDField;
    sqldtsAnaliseVendaItemL_TIPO: TStringField;
    sqldtsAnaliseVendaItemUSUARIO: TStringField;
    sqldtsAnaliseVendaItemL_DESCRICAOPORTUGUES: TStringField;
    sqldtsRecebComVendaCLASSEVENDEDORID: TBCDField;
    sqldtsRecebComVendaL_CLASSEVENDEDOR: TStringField;
    sqldtsAnaliseVendaItemMODELOID: TStringField;
    sqldtsAnaliseVendaItemL_GRUPO_IMP: TBCDField;
    sqldtsPerComRepr: TSQLDataSet;
    dsprvPerComRepr: TDataSetProvider;
    sqldtsPerComReprGRUPOID: TBCDField;
    sqldtsPerComReprORIGEMVENDAID: TBCDField;
    sqldtsPerComReprL_ORIGEMVENDA: TStringField;
    sqldtsPerComReprTIPOVENDAID: TBCDField;
    sqldtsPerComReprL_TIPOVENDA: TStringField;
    sqldtsPerComReprVLRPERCENTUAL: TFMTBCDField;
    sqldtsPerComReprVLRIRRF: TFMTBCDField;
    sqldtsPerComReprUSUARIO: TStringField;
    sqldtsPropostaORIGEMVENDAID: TBCDField;
    sqldtsPropostaL_DESCR_ORIGEMVENDA: TStringField;
    sqldtsPropostaTIPOVENDAID: TBCDField;
    sqldtsPropostaL_DESCR_TIPOVENDA: TStringField;
    sqldtsBasePagtoUSUARIOPAGTO: TStringField;
    sqldtsBasePagtoDATAUSUARIOPAGTO: TSQLTimeStampField;
    sqldtsNfsParcelaCANCELADA: TBCDField;
    sqldtsNfsParcelaOBSCANCELAMENTO: TMemoField;
    sqldtsPedVendDESTINATARIOID: TBCDField;
    sqldtsPedVendL_NOMEDESTINATARIO: TStringField;
    sqldtsBasePagtoL_FILIALID: TBCDField;
    sqldtsClasseVendedorEXIBIRNIVELVENDA: TBCDField;
    sqldtsClasseNivel: TSQLDataSet;
    dsprvClasseNivel: TDataSetProvider;
    sqldtsClasseNivelCLASSENIVELID: TBCDField;
    sqldtsClasseNivelDESCRICAO: TStringField;
    sqldtsClasseNivelCLASSEVENDEDOR1ID: TBCDField;
    sqldtsClasseNivelL_DESCRICAOCLASSEVENDEDOR1: TStringField;
    sqldtsClasseNivelNIVELVENDA1: TStringField;
    sqldtsClasseNivelCLASSEVENDEDOR2ID: TBCDField;
    sqldtsClasseNivelL_DESCRICAOCLASSEVENDEDOR2: TStringField;
    sqldtsClasseNivelNIVELVENDA2: TStringField;
    sqldtsClasseNivelCLASSEVENDEDOR3ID: TBCDField;
    sqldtsClasseNivelL_DESCRICAOCLASSEVENDEDOR3: TStringField;
    sqldtsClasseNivelNIVELVENDA3: TStringField;
    sqldtsClasseNivelCLASSEVENDEDOR4ID: TBCDField;
    sqldtsClasseNivelL_DESCRICAOCLASSEVENDEDOR4: TStringField;
    sqldtsClasseNivelNIVELVENDA4: TStringField;
    sqldtsClasseNivelCLASSEVENDEDOR5ID: TBCDField;
    sqldtsClasseNivelL_DESCRICAOCLASSEVENDEDOR5: TStringField;
    sqldtsClasseNivelNIVELVENDA5: TStringField;
    sqldtsClasseNivelCLASSEVENDEDOR6ID: TBCDField;
    sqldtsClasseNivelL_DESCRICAOCLASSEVENDEDOR6: TStringField;
    sqldtsClasseNivelNIVELVENDA6: TStringField;
    sqldtsClasseNivelUSUARIO: TStringField;
    sqldtsPedVendL_CPFCNPJDESTINATARIO: TStringField;
    sqldtsClasseNivelPERCENTUAL1: TFMTBCDField;
    sqldtsClasseNivelPERCENTUAL2: TFMTBCDField;
    sqldtsClasseNivelPERCENTUAL3: TFMTBCDField;
    sqldtsClasseNivelPERCENTUAL4: TFMTBCDField;
    sqldtsClasseNivelPERCENTUAL5: TFMTBCDField;
    sqldtsClasseNivelPERCENTUAL6: TFMTBCDField;
    sqldtsPedVendServ: TSQLDataSet;
    sqldtsPedVendServPEDVENDID: TStringField;
    sqldtsPedVendServITEMID: TBCDField;
    sqldtsPedVendServEMPRESAID: TBCDField;
    sqldtsPedVendServSERVICOID: TBCDField;
    sqldtsPedVendServL_GRUPOID: TBCDField;
    sqldtsPedVendServDESCRICAOSERVICO: TMemoField;
    sqldtsPedVendServVLRSERVICO: TFMTBCDField;
    sqldtsPedVendServUSUARIO: TStringField;
    sqldtsPedVendPEDVENDREFID: TStringField;
    sqldtsCatalogoL_DESCRICAOGRUPO: TStringField;
    sqldtsCatalogoL_SIGLAGRUPO: TStringField;
    sqldtsPerComReprL_SIGLAGRUPO: TStringField;
    sqldtsPerComReprL_DESCRICAOGRUPO: TStringField;
    sqldtsEquipamentoL_SIGLAGRUPO: TStringField;
    sqldtsComposicaoL_SIGLAGRUPO: TStringField;
    sqldtsOpcionalL_SIGLAGRUPO: TStringField;
    sqldtsAnaliseVendaItemL_SIGLAGRUPO_PRODUTO: TStringField;
    sqldtsAnaliseVendaItemL_SIGLAGRUPO_CATALOGO: TStringField;
    sqldtsClasseVendedorNIVELVENDEDORID: TBCDField;
    sqldtsPercComFunc: TSQLDataSet;
    sqldtsPercComFunGrupo: TSQLDataSet;
    sqldtsPercComFuncCLASSEVENDEDORID: TBCDField;
    sqldtsPercComFuncL_DESCRICAOCLASSEVENDEDOR: TStringField;
    sqldtsPercComFuncTIPOVENDAID: TBCDField;
    sqldtsPercComFuncL_DESCRICAOTIPOVENDA: TStringField;
    sqldtsPercComFuncUSUARIO: TStringField;
    sqldtsPercComFunGrupoCLASSEVENDEDORID: TBCDField;
    sqldtsPercComFunGrupoTIPOVENDAID: TBCDField;
    sqldtsPercComFunGrupoGRUPOID: TBCDField;
    sqldtsPercComFunGrupoL_SIGLAGRUPO: TStringField;
    sqldtsPercComFunGrupoUSUARIO: TStringField;
    dsPercComFuncLink: TDataSource;
    dsprvPercComFunc: TDataSetProvider;
    sqldtsPercComFunGrupoVLRPERCENTUAL: TFMTBCDField;
    sqldtsPedVendPAGAMENTOCOMISSAO: TBCDField;
    sqldtsRecebComVendaVIGENCIA: TSQLTimeStampField;
    sqldtsVendedorResponsavel: TSQLDataSet;
    dsprvVendedorResponsavel: TDataSetProvider;
    sqldtsVendedorResponsavelVENDEDORID: TBCDField;
    sqldtsVendedorResponsavelL_NOMEVENDEDOR: TStringField;
    sqldtsVendedorResponsavelRESPONSAVELID: TBCDField;
    sqldtsVendedorResponsavelL_NOMERESPONSAVEL: TStringField;
    sqldtsVendedorResponsavelUSUARIO: TStringField;
    sqldtsPedVendLIBCHEFIA: TBCDField;
    sqldtsPedVendLIBCHEFIANOME: TStringField;
    sqldtsPedVendLIBCHEFIADATA: TSQLTimeStampField;
    sqldtsBasePagtoVLRFOB: TBCDField;
    sqldtsDocPendente: TSQLDataSet;
    sqldtsDocPendenteDOCPENDENTEID: TBCDField;
    sqldtsDocPendenteDESCRICAO: TStringField;
    sqldtsDocPendenteUSUARIO: TStringField;
    dsprvDocPendente: TDataSetProvider;
    sqldtsMotivoRecusa: TSQLDataSet;
    sqldtsMotivoRecusaMOTIVORECUSAID: TBCDField;
    sqldtsMotivoRecusaDESCRICAO: TStringField;
    sqldtsMotivoRecusaUSUARIO: TStringField;
    dsprvMotivoRecusa: TDataSetProvider;
    sqldtsAcompPed: TSQLDataSet;
    sqldtsAcompPedNUMPEDVENDEDORID: TStringField;
    sqldtsAcompPedDATAASSINATURA: TSQLTimeStampField;
    sqldtsAcompPedDATARECEBPEDIDO: TSQLTimeStampField;
    sqldtsAcompPedTIPORECEBPEDIDO: TStringField;
    sqldtsAcompPedDOCPENDENTE2: TBCDField;
    sqldtsAcompPedDATAENTREGAFIN: TSQLTimeStampField;
    sqldtsAcompPedDATARETORNOFIN: TSQLTimeStampField;
    sqldtsAcompPedMOTIVORECUSAID: TBCDField;
    sqldtsAcompPedL_DESCRMOTIVORECUSA: TStringField;
    sqldtsAcompPedMOTIVORECUSA2ID: TBCDField;
    sqldtsAcompPedL_DESCRMOTIVORECUSA2: TStringField;
    sqldtsAcompPedHISTFINANCEIRO: TMemoField;
    sqldtsAcompPedDATAENVCONTRATO: TSQLTimeStampField;
    sqldtsAcompPedDATARETCONTRATO: TSQLTimeStampField;
    sqldtsAcompPedCONTRATOOK: TBCDField;
    sqldtsAcompPedTIPODOCRETORNO: TStringField;
    sqldtsAcompPedDATAENTREGA: TSQLTimeStampField;
    sqldtsAcompPedDATAFATURAMENTO: TSQLTimeStampField;
    sqldtsAcompPedDATAPREVENTREGA: TSQLTimeStampField;
    sqldtsAcompPedOBSERVAO: TMemoField;
    sqldtsAcompPedUSUARIO: TStringField;
    dsprvAcompPed: TDataSetProvider;
    dsAcompPedLink: TDataSource;
    sqldtsAcompPedDocPendente: TSQLDataSet;
    sqldtsAcompPedDocPendenteNUMPEDVENDEDORID: TStringField;
    sqldtsAcompPedDocPendenteITEMID: TBCDField;
    sqldtsAcompPedDocPendenteDATAREGISTRO: TSQLTimeStampField;
    sqldtsAcompPedDocPendenteDOCPENDENTEID: TBCDField;
    sqldtsAcompPedDocPendenteL_DESCRDOCPENDENTE: TStringField;
    sqldtsAcompPedDocPendenteDESCRICAO: TStringField;
    sqldtsAcompPedDocPendenteDATAULTATUAL: TSQLTimeStampField;
    sqldtsAcompPedDocPendenteRESOLVIDO: TBCDField;
    sqldtsAcompPedDocPendenteDATARESOLUCAO: TSQLTimeStampField;
    sqldtsAcompPedDocPendenteUSUARIORESOLUCAO: TStringField;
    sqldtsAcompPedDocPendenteUSUARIO: TStringField;
    sqldtsAcompPedL_ORIGEMVENDAID: TBCDField;
    sqldtsAcompPedL_DESCRORIGEMVENDA: TStringField;
    sqldtsAcompPedL_TIPOVENDAID: TBCDField;
    sqldtsAcompPedL_DESCRTIPOVENDA: TStringField;
    sqldtsAcompPedL_CLIENTEID: TBCDField;
    sqldtsAcompPedL_NOMECLIENTE: TStringField;
    sqldtsAcompPedL_CPFCNPJ: TStringField;
    sqldtsAcompPedL_CIDADEORIG: TStringField;
    sqldtsAcompPedL_SIGLAUFORIGID: TStringField;
    sqldtsAcompPedL_DESTINATARIOID: TBCDField;
    sqldtsAcompPedL_NOMEDESTINATARIO: TStringField;
    sqldtsAcompPedL_CPFCNPJDESTINATARIO: TStringField;
    sqldtsAcompPedL_EMPRESAID: TBCDField;
    sqldtsAcompPedL_PDSID: TBCDField;
    sqldtsAcompPedL_DATAPEDIDOPDSID: TSQLTimeStampField;
    sqldtsAcompPedL_VLRTOTALGERAL: TBCDField;
    sqldtsAcompPedL_VLRTOTALVENDA: TBCDField;
    sqldtsAcompPedL_PEDVENDID: TStringField;
    sqldtsAcompPedL_NFSID: TBCDField;
    sqldtsAcompPedL_DATAEMISSAOID: TSQLTimeStampField;
    sqldtsAcompPedCLIENTEID: TBCDField;
    sqldtsAcompPedNOMECLIENTE: TStringField;
    sqldtsAcompPedVLRTOTAL: TFMTBCDField;
    sqldtsAcompPedVend: TSQLDataSet;
    sqldtsAcompPedVendNUMPEDVENDEDORID: TStringField;
    sqldtsAcompPedVendITEMID: TBCDField;
    sqldtsAcompPedVendVENDEDORID: TBCDField;
    sqldtsAcompPedVendL_NOMEVENDEDOR: TStringField;
    sqldtsAcompPedVendL_DESCR_CLASSEVENDEDOR: TStringField;
    sqldtsAcompPedVendCLASSEVENDEDORID: TBCDField;
    sqldtsAcompPedVendUSUARIO: TStringField;
  private
    { Private declarations }
    FSrvAppGSI : ISrvAppGSI;
    FSQLcnn: Integer;
  protected
    class procedure UpdateRegistry(Register: Boolean; const ClassID, ProgID: string); override;
    function Get_dmSrvAppGSI: ISrvAppGSI; safecall;
    function Get_SQLcnn: Integer; safecall;
    procedure Set_dmSrvAppGSI(const Value: ISrvAppGSI); safecall;
    procedure Set_SQLcnn(Value: Integer); safecall;
    function ISQL_PP: OleVariant; safecall;
    procedure ICalcPrecoEquipamento(const Value: WideString); safecall;
    procedure IAnaliseVenda(const UsuarioID, DtInicial, DtFinal: WideString);
      safecall;
    procedure IBaixaDuplicata(const PedVendID, DataPgto, ParcelaID,
      VlrParcelaComissao: WideString; PagtoVendedor: Integer;
      const UsuarioID: WideString); safecall;
    procedure ICancelarBaixaDuplicata(const PedVendID, ParcelaID: WideString;
      PagtoVendedor: Integer); safecall;
    procedure IReparcelarDuplicata(DuplData: OleVariant; const EmpresaID,
      NFSID, DataEmissaoID, ParcelaID: WideString; VlrParcela, VlrVenda,
      VlrComissao: Currency; const UsuarioID: WideString); safecall;
    procedure ICancelarParcelaDuplicata(const PedVendID, ParcelaID,
      DescricaoCanc: WideString); safecall;
    procedure IAtualSaldoReserva(const EmpresaID, ProdutoID: WideString;
      Qtd: Currency; const Operacao: WideString); safecall;
    procedure IPagtoComissao(const DataIni, DataFim, DataPagto, DataConvFob,
      UsuarioAtivo: WideString); safecall;
    function IProvisaoComissao(DtPagtoIni, DtPagtoFim: TDateTime; VlrTxConvFOB,
      PercEncargos: Currency): OleVariant; safecall;
  public
    { Public declarations }
    procedure AddAnaliseVenda( sqlUpd, sqlGeral, sqlRecCom : TSQLQuery;
     var sqlPedVend : TSQLQuery; UsuarioID : String; DtEmissaoNF_EMB : TDateTime );
    procedure AddVendaBasePgto( sqlUpd, sqlVend : TSQLQuery; VendedorID, ClasseVendedorID, UsuarioID : String );
    function ProcessarFeriado( sqlFeriado : TSQLQuery; DtPgto : TDateTime;
     FilialID : Integer ) : Integer;
    procedure LocalizarClasseNivel( sqlClasseNivel : TSQLQuery;
     NivelVenda : array of string; var PercVenda : array of Currency; PedVendID : String );
    function RetornarComissaoRepr( sqlPercComissao : TSQLQuery; PedVendID, OrigemVendaID,
     TipoVendaID : string ) : Currency;
    function LocalizarGrupo( sqlPedGrupo : TSQLQuery;
     PedVendID : String ) : Integer;
    procedure ProcessarItensComissao( sqlPed, sqlGeral, sqlTmp, sqlPComissao, sqlUpd : TSQLQuery;
     DtPagtoComissao : TDateTime; VlrTxConvFOB, PercEncargos : Currency );
    function LocalizarPercComissao( sqlPercComissao : TSQLQuery; ClasseVendedorID,
     TipoVendaID, GrupoID : Integer; PedVendID : String ) : Currency;
    procedure CalcularPagtoComissao( PedVendID : String; VendedorId, ClasseVendedorID, FilialID : Integer;
     PercVenda, PercComissao : Real; sqlTmp, sqlUpd, sqlGeral : TSQLQuery;
     NivelVenda : array of string; VlrTxConvFOB, PercEncargos : Real; DtPagtoComissao : TDateTime );
    procedure PagtoComissaoGerFixas( PedVendID, DtVigencia : String;
     TipoVendaID, GrupoID : Integer; sqlPComissao, sqlTmp, sqlUpd, sqlPed,
     sqlGeral : TSQLQuery;  NivelVenda : array of string;
     VlrTxConvFOB, PercEncargos : Real; DtPagtoComissao : TDateTime );
  end;

  const

 SelectPedImp = '  SELECT PP_PEDVEND.PEDVENDID,' +
                '      PP_PEDVEND.DATAPEDIDO,'+
                '      PP_PEDVEND.ORIGEMVENDAID,'+
                '      PP_PEDVEND.TIPOVENDAID,'+
                '      PP_PEDVEND.EMPRESAID,'+
                '      PP_PEDVEND.PDSID,'+
                '      PP_PEDVEND.DATAPEDIDOPDSID,'+
                '      PP_PEDVEND.VLRFOB, ' +
                '      PP_PEDVEND.VLRDESPESA, ' +
                '      PP_PEDVEND.VLRFRETEINTERNACIONAL, ' +
                '      PP_PEDVEND.VLRTOTALGERAL, ' +
                '      PP_PROCESSOIMP.EMBDATA'+
                ' FROM PP_PEDVEND PP_PEDVEND, PP_PROCESSOIMP '+
                'WHERE PP_PEDVEND.PEDVENDID = PP_PROCESSOIMP.PEDVENDID AND'+
                '      PP_PROCESSOIMP.EMBDATA >= TO_DATE( :pDat1 ) AND'+
                '      PP_PROCESSOIMP.EMBDATA <= TO_DATE( :pDat2 ) AND'+
                '      NVL(PP_PEDVEND.CANCELADO, 0) = 0 AND'+
                '      NVL(PP_PEDVEND.PAGAMENTOCOMISSAO, 0) = 1 AND'+
                '      PP_PEDVEND.PEDVENDID NOT IN ( SELECT PEDVENDID FROM PP_ANALISEVENDA )';

 SelectPedRev = 'SELECT PP_PEDVEND.PEDVENDID,'+
                '       PP_PEDVEND.DATAPEDIDO,'+
                '       PP_PEDVEND.ORIGEMVENDAID,'+
                '       PP_PEDVEND.TIPOVENDAID,'+
                '       PP_PEDVEND.EMPRESAID,'+
                '       PP_PEDVEND.PDSID,'+
                '       PP_PEDVEND.DATAPEDIDOPDSID,'+
                '       EF_NFS.NFSID,'+
                '       EF_NFS.DATAEMISSAOID,'+
                '       EF_NFS.VLRTOTALIPI,'+
                '       EF_NFS.VLRTOTALNOTA'+
                '  FROM PP_PEDVEND PP_PEDVEND, EF_NFS'+
                ' WHERE PP_PEDVEND.PDSID = EF_NFS.PDSID AND'+
                '       PP_PEDVEND.DATAPEDIDOPDSID = EF_NFS.DATAPEDIDO AND'+
                '       PP_PEDVEND.EMPRESAID = EF_NFS.EMPRESAID AND'+
                '       EF_NFS.DATAEMISSAOID >= TO_DATE( :pDat1) AND'+
                '       EF_NFS.DATAEMISSAOID <= TO_DATE( :pDat2) AND'+
                '       NVL(PP_PEDVEND.CANCELADO, 0) = 0  AND'+
                '       NVL(PP_PEDVEND.PAGAMENTOCOMISSAO, 0) = 1  AND'+
                '       PP_PEDVEND.PEDVENDID NOT IN ( SELECT PEDVENDID FROM PP_ANALISEVENDA )';


 SelectPedVend= 'SELECT PP_PEDVENDVEND.PEDVENDID,' +
                '       PP_PEDVENDVEND.ITEMID,' +
                '       PP_PEDVENDVEND.VENDEDORID,' +
                '       EF_ENTIDADE.NOME,' +
                '       EF_ENTIDADE.CPFCNPJ,' +
                '       PP_PEDVENDVEND.CLASSEVENDEDORID,' +
                '       PP_CLASSEVENDEDOR.DESCRICAO,' +
                '       PP_PEDVENDVEND.PORCENTAGEM,' +
                '       PP_PEDVEND.ORIGEMVENDAID,' +
                '       PP_PROCESSOIMP.DATAPROCESSO,' +
                '       PP_PROCESSOIMP.EMBDATA,' +
                '       PP_ANALISEVENDA.VLRCOMISSAO, ' +
                '       PP_ANALISEVENDA.VLRCOMISSAOUS, ' +
                '       PP_ANALISEVENDA.VLRFOB, ' +
                '       PP_PEDVENDVEND.USUARIO' +
                '  FROM PP_PEDVENDVEND PP_PEDVENDVEND,' +
                '       PP_CLASSEVENDEDOR PP_CLASSEVENDEDOR,' +
                '       EF_ENTIDADE EF_ENTIDADE,' +
                '       PP_PEDVEND PP_PEDVEND,' +
                '       PP_PROCESSOIMP PP_PROCESSOIMP,' +
                '       PP_ANALISEVENDA ' +
                ' WHERE PP_CLASSEVENDEDOR.CLASSEVENDEDORID(+) =' +
                '       PP_PEDVENDVEND.CLASSEVENDEDORID' +
                '       AND EF_ENTIDADE.ENTIDADEID(+) = PP_PEDVENDVEND.VENDEDORID' +
                '       AND PP_PEDVEND.PEDVENDID = PP_PEDVENDVEND.PEDVENDID' +
                '       AND PP_PEDVEND.ORIGEMVENDAID = 1' +
                '       AND PP_PEDVENDVEND.PEDVENDID = PP_PROCESSOIMP.PEDVENDID' +
                '       AND PP_PEDVENDVEND.PEDVENDID = PP_ANALISEVENDA.PEDVENDID' +
                '       AND PP_PEDVENDVEND.PEDVENDID = :pPedVendID ';

 SelectRecComissao = 'SELECT PP_RECEBCOMVENDA.ENTIDADEID, ' +
                     '  PP_RECEBCOMVENDA.CLASSEVENDEDORID, ' +
                     '  EF_ENTIDADE.FILIALID, ' +
                     '  PP_RECEBCOMVENDA.VIGENCIA ' +
                     '  FROM PP_RECEBCOMVENDA, EF_ENTIDADE ' +
                     ' WHERE ' +
                     ' PP_RECEBCOMVENDA.ENTIDADEID = EF_ENTIDADE.ENTIDADEID ' +
                     ' AND NVL( PP_RECEBCOMVENDA.BLOQUEARCOMISSAO, 0 ) = 0  ' +
                     ' AND PP_RECEBCOMVENDA.VIGENCIA <= :pDt ';

 SelectPedVendedor = 'SELECT PP_PEDVENDVEND.PEDVENDID,' +
                     '       PP_PEDVENDVEND.ITEMID,' +
                     '       PP_PEDVENDVEND.VENDEDORID,' +
                     '       PP_PEDVENDVEND.CLASSEVENDEDORID,' +
                     '       PP_CLASSEVENDEDOR.EXIBIRNIVELVENDA,' +
                     '       PP_ANALISEVENDA.EMPRESAID,' +
                     '       PP_ANALISEVENDA.NFSID,' +
                     '       PP_ANALISEVENDA.DATAEMISSAOID' +
                     '  FROM PP_PEDVENDVEND PP_PEDVENDVEND, PP_ANALISEVENDA, ' +
                     '       PP_CLASSEVENDEDOR ' +
                     ' WHERE PP_PEDVENDVEND.PEDVENDID = PP_ANALISEVENDA.PEDVENDID' +
                     '  AND PP_PEDVENDVEND.CLASSEVENDEDORID = PP_CLASSEVENDEDOR.CLASSEVENDEDORID(+) ' +
                     '  AND PP_PEDVENDVEND.PEDVENDID = :pPedVendID ' +
                     ' ORDER BY PP_PEDVENDVEND.PEDVENDID, PP_PEDVENDVEND.ITEMID ';

 SelectParcDupl =    ' SELECT EF_NFSPARCELA.EMPRESAID,' +
                     '     EF_NFSPARCELA.NFSID,' +
                     '     EF_NFSPARCELA.DATAEMISSAOID,' +
                     '     EF_NFSPARCELA.PARCELAID,' +
                     '     EF_NFSPARCELA.DATAVENCIMENTO,' +
                     '     EF_NFSPARCELA.DATAPAGTO,' +
                     '     EF_NFSPARCELA.VLRPARCELA,' +
                     '     EF_NFSPARCELA.DUPLICATAID,' +
                     '     EF_NFSPARCELA.EXPORTADO,' +
                     '     EF_NFSPARCELA.VLRBASECOMISSAO,' +
                     '     EF_NFSPARCELA.PAGTOVENDEDOR,' +
                     '     EF_NFSPARCELA.USUARIO' +
                     ' FROM EF_NFSPARCELA EF_NFSPARCELA ' +
                     ' WHERE ' +
                     '  EMPRESAID   = :pEmpresaID ' +
                     '  AND NFSID   = :pNFSID ' +
                     '  AND DATAEMISSAOID = :pDataEmissaoID ' +
                     '  AND NVL( EF_NFSPARCELA.PAGTOVENDEDOR, 0 ) = :pPagtoVend ';

 SelectProvComissao = 'SELECT PP_ANALISEVENDA.PEDVENDID,'+
                      '       PP_ANALISEVENDA.EMPRESAID,'+
                      '       PP_ANALISEVENDA.NFSID,'+
                      '       PP_ANALISEVENDA.DATAEMISSAOID,'+
                      '       PP_ANALISEVENDA.VLRFOB,'+
                      '       PP_ANALISEVENDA.DATAFECHAMENTO,'+
                      '       PP_ANALISEVENDA.VLRVENDA,'+
                      '       PP_ANALISEVENDA.VLRINTERVENIENCIA,'+
                      '       PP_ANALISEVENDA.VLRIPI,'+
                      '       PP_ANALISEVENDA.VLRCOMISSAO,'+
                      '       PP_ANALISEVENDA.VLRCOMISSAOUS,'+
                      '       PP_ANALISEVENDA.VLRFOB,'+                      
                      '       NFSPARCELAS.VLRBASEDEDUZIR,'+
                      '       (PP_ANALISEVENDA.VLRCOMISSAO - NVL( NFSPARCELAS.VLRBASEDEDUZIR, 0 ) ) VLRRESIDUALAPAGAR, ' +
                      '       PP_PEDVEND.ORIGEMVENDAID,'+
                      '       PP_PEDVEND.TIPOVENDAID'+
                      '  FROM PP_ANALISEVENDA PP_ANALISEVENDA,'+
                      '       PP_PEDVEND PP_PEDVEND,'+
                      '       (SELECT EF_NFSPARCELA.EMPRESAID,'+
                      '               EF_NFSPARCELA.NFSID,'+
                      '               EF_NFSPARCELA.DATAEMISSAOID,'+
                      '               SUM(NVL(EF_NFSPARCELA.VLRBASECOMISSAO, 0)) VLRBASEDEDUZIR'+
                      '          FROM EF_NFSPARCELA EF_NFSPARCELA'+
                      '         WHERE NVL(EF_NFSPARCELA.VLRBASECOMISSAO, 0) > 0'+
                      '          AND ( NVL(EF_NFSPARCELA.PAGTOVENDEDOR, 0) = 1 OR  NVL(EF_NFSPARCELA.CANCELADA, 0) = 1 ) ' +
                      '         GROUP BY EF_NFSPARCELA.EMPRESAID,'+
                      '                  EF_NFSPARCELA.NFSID,'+
                      '                  EF_NFSPARCELA.DATAEMISSAOID) NFSPARCELAS'+
                      ' WHERE PP_PEDVEND.PEDVENDID = PP_ANALISEVENDA.PEDVENDID'+
                      '   AND NVL(PP_PEDVEND.CANCELADO, 0) = 0'+
                      '   AND PP_ANALISEVENDA.EMPRESAID = NFSPARCELAS.EMPRESAID(+)'+
                      '   AND PP_ANALISEVENDA.NFSID = NFSPARCELAS.NFSID(+)'+
                      '   AND PP_ANALISEVENDA.DATAEMISSAOID = NFSPARCELAS.DATAEMISSAOID(+)'+
                      '   AND ( ((PP_ANALISEVENDA.VLRCOMISSAO - NVL(NFSPARCELAS.VLRBASEDEDUZIR, 0)) > 1) OR NVL( PP_ANALISEVENDA.VLRCOMISSAOUS,0 ) > 0 ) ' +
                      '   AND PP_ANALISEVENDA.PEDVENDID <> ''04/0333''' +
                      '   AND PP_ANALISEVENDA.PEDVENDID <> ''05/0005''' +
                      '   AND PP_ANALISEVENDA.PEDVENDID <> ''06/2021''';



var FSrvAppPP : TComponentFactory;

implementation

uses u_rmSrvAppGSI, FuncoesServidor, FuncoesDsi, DateUtils;

{$R *.DFM}

class procedure TSrvAppPP.UpdateRegistry(Register: Boolean; const ClassID, ProgID: string);
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

function TSrvAppPP.Get_dmSrvAppGSI: ISrvAppGSI;
begin
 Result := FSrvAppGSI;
end;

function TSrvAppPP.Get_SQLcnn: Integer;
begin
 Result := FSQLcnn;
end;

procedure TSrvAppPP.Set_dmSrvAppGSI(const Value: ISrvAppGSI);
begin
 FSrvAppGSI := Value;
end;

procedure TSrvAppPP.Set_SQLcnn(Value: Integer);
var i: integer;
begin
 FSQLcnn := Value;
 for i:=0 to ComponentCount-1 do
     if Components[i] is TSQLDataSet then
        TSQLDataSet(Components[i]).SQLConnection := TSQLConnection(FSQLcnn)
     else if Components[i] is TSQLStoredProc then
        TSQLStoredProc(Components[i]).SQLConnection := TSQLConnection(FSQLcnn);
end;


function TSrvAppPP.ISQL_PP: OleVariant;
var cdsGeral : TClientDataSet;
    i : Integer;
begin
 Result := Null;
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

procedure TSrvAppPP.ICalcPrecoEquipamento(const Value: WideString);
var sqlUpd: TSQLQuery;
begin
 sqlUpd := TSQLQuery.Create(nil);
 sqlUpd.SQLConnection := TSQLConnection(FSQLcnn);

 try
  try // Except
   // Inicia transação
   TSQLConnection(FSQLcnn).StartTransaction(TD);

   // Agrupar e somar o total de dependencias
   sqlUpd.SQL.Clear;
   sqlUpd.SQL.Add( 'UPDATE PP_OPCIONAL' );
   sqlUpd.SQL.Add( ' SET ( QUANTIDADE, ' );
   sqlUpd.SQL.Add( '       VLRUNITARIOFOB, ');
   sqlUpd.SQL.Add( '       VLRTOTALFOB, ' );
   sqlUpd.SQL.Add( '       VLRUNITARIOREVENDA, ' );
   sqlUpd.SQL.Add( '       VLRTOTALREVENDA, ' );
   sqlUpd.SQL.Add( '       VLRUNITARIONET, ' );
   sqlUpd.SQL.Add( '       VLRTOTALNET ) = ' );
   sqlUpd.SQL.Add( ' ( SELECT' );
   sqlUpd.SQL.Add( '    SUM( NVL( PP_DEPENDENCIA.QUANTIDADE, 0 ) ) AS QTD,' );
   sqlUpd.SQL.Add( '    SUM( NVL( PP_DEPENDENCIA.VLRUNITARIOFOB, 0 ) ) AS UNIT_FOB,' );
   sqlUpd.SQL.Add( '    SUM( NVL( PP_DEPENDENCIA.VLRTOTALFOB, 0 ) ) AS TOT_FOB,' );
   sqlUpd.SQL.Add( '    SUM( NVL( PP_DEPENDENCIA.VLRUNITARIOREVENDA, 0 ) )  AS UNIT_REVENDA,' );
   sqlUpd.SQL.Add( '    SUM( NVL( PP_DEPENDENCIA.VLRTOTALREVENDA, 0 ) )  AS TOT_REVENDA,' );
   sqlUpd.SQL.Add( '    SUM( NVL( PP_DEPENDENCIA.VLRUNITARIONET, 0 ) ) AS UNIT_NET,' );
   sqlUpd.SQL.Add( '    SUM( NVL( PP_DEPENDENCIA.VLRTOTALNET, 0 ) ) AS TOT_NET' );
   sqlUpd.SQL.Add( '    FROM' );
   sqlUpd.SQL.Add( '    PP_DEPENDENCIA PP_DEPENDENCIA' );
   sqlUpd.SQL.Add( '  WHERE' );
   sqlUpd.SQL.Add( '    PP_DEPENDENCIA.MODELOEQUIPAMENTOID = PP_OPCIONAL.MODELOEQUIPAMENTOID' );
   sqlUpd.SQL.Add( '    AND PP_DEPENDENCIA.MODELOCOMPONENTEID = PP_OPCIONAL.MODELOCOMPONENTEID' );
   sqlUpd.SQL.Add( '  GROUP BY' );
   sqlUpd.SQL.Add( '    PP_DEPENDENCIA.MODELOEQUIPAMENTOID,' );
   sqlUpd.SQL.Add( '    PP_DEPENDENCIA.MODELOCOMPONENTEID )' );
   sqlUpd.SQL.Add( 'WHERE' );
   sqlUpd.SQL.Add( ' PP_OPCIONAL.MODELOEQUIPAMENTOID = ' + QuotedStr( Value ) );
   sqlUpd.SQL.Add( ' /* Atualizar somente os registro que tiverem dependência */' );
   sqlUpd.SQL.Add( ' AND ( SELECT COUNT(*)' );
   sqlUpd.SQL.Add( '        FROM' );
   sqlUpd.SQL.Add( '        PP_DEPENDENCIA' );
   sqlUpd.SQL.Add( '       WHERE' );
   sqlUpd.SQL.Add( '        PP_DEPENDENCIA.MODELOEQUIPAMENTOID = PP_OPCIONAL.MODELOEQUIPAMENTOID' );
   sqlUpd.SQL.Add( '        AND PP_DEPENDENCIA.MODELOCOMPONENTEID = PP_OPCIONAL.MODELOCOMPONENTEID ) > 0' );
   sqlUpd.ExecSQL( False );

   // Agrupar e somar o total de Aparelhos
   sqlUpd.SQL.Clear;
   sqlUpd.SQL.Add( 'UPDATE PP_EQUIPAMENTO' );
   sqlUpd.SQL.Add( ' SET ( VLRFOB,VLRREVENDA,VLRNET ) =' );
   sqlUpd.SQL.Add( ' ( SELECT' );
   sqlUpd.SQL.Add( '    SUM( NVL( PP_COMPOSICAO.VLRTOTALFOB, 0 ) ) AS TOT_FOB,' );
   sqlUpd.SQL.Add( '    SUM( NVL( PP_COMPOSICAO.VLRTOTALREVENDA, 0 ) )  AS TOT_REVENDA,' );
   sqlUpd.SQL.Add( '    SUM( NVL( PP_COMPOSICAO.VLRTOTALNET, 0 ) ) AS TOT_REVENDA' );
   sqlUpd.SQL.Add( '    FROM' );
   sqlUpd.SQL.Add( '    PP_COMPOSICAO' );
   sqlUpd.SQL.Add( '  WHERE' );
   sqlUpd.SQL.Add( '    PP_COMPOSICAO.MODELOEQUIPAMENTOID = PP_EQUIPAMENTO.MODELOEQUIPAMENTOID' );
   sqlUpd.SQL.Add( '  GROUP BY' );
   sqlUpd.SQL.Add( '   PP_COMPOSICAO.MODELOEQUIPAMENTOID )' );
   sqlUpd.SQL.Add( 'WHERE' );
   sqlUpd.SQL.Add( ' PP_EQUIPAMENTO.MODELOEQUIPAMENTOID = ' + QuotedStr( Value ) );
   sqlUpd.ExecSQL( False );

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
  FreeAndNil( sqlUpd );
 end;
end;


procedure TSrvAppPP.AddVendaBasePgto( sqlUpd, sqlVend : TSQLQuery;
 VendedorID, ClasseVendedorID, UsuarioID : String );
begin
 sqlUpd.Close;
 sqlUpd.SQL.Clear;
 sqlUpd.SQL.Add( 'INSERT INTO PP_BASEPAGTO' );
 sqlUpd.SQL.Add( ' ( VENDEDORID, PEDVENDID, ITEMID, DATALIBPAGTOFIN, CLASSEVENDEDORID, ');
 sqlUpd.SQL.Add( '   NIVELVENDA, VLRCOMISSAO, VLRBASECOMISSAO, VLRBASECOMISSAOUS, VLRDSR, VLRLIQUIDO, VLRFOB, USUARIO ) ');
 sqlUpd.SQL.Add( ' VALUES ( ' );
 sqlUpd.SQL.Add( VendedorID + ','  );
 sqlUpd.SQL.Add( QuotedStr( sqlVend.FieldByName('PEDVENDID').AsString ) + ','  );
 sqlUpd.SQL.Add('( SELECT NVL( MAX( PP_BASEPAGTO.ITEMID ), 0 ) + 1');
 sqlUpd.SQL.Add('   FROM PP_BASEPAGTO');
 sqlUpd.SQL.Add('   WHERE PP_BASEPAGTO.VENDEDORID = ' + sqlVend.FieldByName('VENDEDORID').AsString + '),');

 if sqlVend.FieldByName('ORIGEMVENDAID').AsInteger = 1 then
    sqlUpd.SQL.Add( QuotedStr( sqlVend.FieldByName('EMBDATA').AsString ) + ','  )
 else
    sqlUpd.SQL.Add( QuotedStr( sqlVend.FieldByName('DATAPEDIDO').AsString ) + ','  );

 sqlUpd.SQL.Add( ClasseVendedorID + ',' );

 if sqlVend.FieldByName('ITEMID').AsInteger = 1 then
    sqlUpd.SQL.Add( QuotedStr('P') + ',' )
 else
    sqlUpd.SQL.Add( QuotedStr('S') + ',' );

 sqlUpd.SQL.Add( '0,'  );
 sqlUpd.SQL.Add( SubstituiString( sqlVend.FieldByName('VLRCOMISSAO').AsString,',', '.' ) + ', ' );
 sqlUpd.SQL.Add( SubstituiString( sqlVend.FieldByName('VLRCOMISSAOUS').AsString,',', '.' ) + ', ' );
 sqlUpd.SQL.Add( '0,'  );
 sqlUpd.SQL.Add( '0,'  );
 sqlUpd.SQL.Add( SubstituiString( sqlVend.FieldByName('VLRFOB').AsString,',', '.' ) + ', ' );
 sqlUpd.SQL.Add( QuotedStr( UsuarioID ) +  ')' );
 sqlUpd.ExecSQL( False );
end;


procedure TSrvAppPP.AddAnaliseVenda( sqlUpd, sqlGeral, sqlRecCom : TSQLQuery;
 var sqlPedVend : TSQLQuery; UsuarioID : String; DtEmissaoNF_EMB : TDateTime );
var NFSID,  DtEmissao, DtFech : String;
    IPI_Produto, VlrFob, VlrVenda, VlrInterv, VlrIPI, VlrComissao, VlrComissaoUS : Real;
    ProcessVend : Integer;

 // Verificar qual item de interveniência irá pagar comissão
 function TotalInterv : Currency;
 begin
  sqlGeral.Close;
  sqlGeral.SQL.Clear;
  sqlGeral.SQL.Add('SELECT');
  sqlGeral.SQL.Add('  SUM( NVL( PP_PEDVENDINTERV.VLRINTERVENIENCIA, 0 ) ) AS TOTAL');
  sqlGeral.SQL.Add('  FROM');
  sqlGeral.SQL.Add('  PP_PEDVENDINTERV PP_PEDVENDINTERV,');
  sqlGeral.SQL.Add('  PP_CONDPAGTOPROP PP_CONDPAGTOPROP');
  sqlGeral.SQL.Add(' WHERE');
  sqlGeral.SQL.Add('  PP_CONDPAGTOPROP.CONDPAGTOPROPID(+) = PP_PEDVENDINTERV.CONDINTERVID');
  sqlGeral.SQL.Add('  AND NVL( PP_CONDPAGTOPROP.DEDUZIRCOMISSAO, 0 ) = 1');
  sqlGeral.SQL.Add('  AND PP_PEDVENDINTERV.PEDVENDID = ' +  QuotedStr( sqlPedVend.FieldByName('PEDVENDID').AsString ) );
  sqlGeral.Prepared := True;
  sqlGeral.Open;

  Result := sqlGeral.Fields[0].AsFloat;

  sqlGeral.Close;
 end;

 // Deduzir IPI dos produtos Importados com faturamento antecipado
 function TotalIPI : Currency;
 begin
  sqlGeral.Close;
  sqlGeral.SQL.Clear;
  sqlGeral.SQL.Add('SELECT');
  sqlGeral.SQL.Add('  SUM( ROUND( ( ( EF_NFSITEM.VLRPRECOTOTAL / 1.02 ) * 0.02 ), 2 ) ) VLRTOTALIPI');
  sqlGeral.SQL.Add('  FROM');
  sqlGeral.SQL.Add('  EF_NFSITEM EF_NFSITEM,');
  sqlGeral.SQL.Add('  EF_PRODUTO EF_PRODUTO,');
  sqlGeral.SQL.Add('  EF_NFS EF_NFS,');
  sqlGeral.SQL.Add('  EF_NATUREZAOP EF_NATUREZAOP');
  sqlGeral.SQL.Add(' WHERE');
  sqlGeral.SQL.Add('  EF_PRODUTO.EMPRESAID(+) = EF_NFSITEM.EMPRESAID');
  sqlGeral.SQL.Add('  AND EF_PRODUTO.PRODUTOID(+) = EF_NFSITEM.PRODUTOID');
  sqlGeral.SQL.Add('  AND EF_NFS.EMPRESAID = EF_NFSITEM.EMPRESAID');
  sqlGeral.SQL.Add('  AND EF_NFS.NFSID = EF_NFSITEM.NFSID');
  sqlGeral.SQL.Add('  AND EF_NFS.DATAEMISSAOID = EF_NFSITEM.DATAEMISSAOID');
  sqlGeral.SQL.Add('  AND EF_NATUREZAOP.NATUREZAOPID = EF_NFS.NATUREZAOPID');
  sqlGeral.SQL.Add('  AND EF_PRODUTO.ORIGEM = ''I''');
  sqlGeral.SQL.Add('  AND EF_NATUREZAOP.VENDAFATANTECIPADO = 1');
  sqlGeral.SQL.Add('  AND EF_NFSITEM.EMPRESAID = ' + sqlPedVend.FieldByName('EMPRESAID').AsString );
  sqlGeral.SQL.Add('  AND EF_NFSITEM.NFSID = ' + NFSID );
  sqlGeral.SQL.Add('  AND EF_NFSITEM.DATAEMISSAOID = ' + QuotedStr( DtEmissao ) );
  sqlGeral.Prepared := True;
  sqlGeral.Open;

  Result := sqlGeral.FieldByName('VLRTOTALIPI').AsCurrency;
 end;

 procedure AtualAnaliseVenda;
 begin
  sqlUpd.Close;
  sqlUpd.SQL.Clear;
  sqlUpd.SQL.Add( 'INSERT INTO PP_ANALISEVENDA' );
  sqlUpd.SQL.Add( ' ( PEDVENDID, EMPRESAID, NFSID, DATAEMISSAOID, DATAFECHAMENTO, VLRFOB, ');
  sqlUpd.SQL.Add( '   VLRVENDA, VLRINTERVENIENCIA, ' );
  sqlUpd.SQL.Add( '   VLRIPI, VLRCOMISSAO, VLRCOMISSAOUS, LIBPAGTOFIN, STATUS, USUARIO ) ' );
  sqlUpd.SQL.Add( ' VALUES ( ' );
  sqlUpd.SQL.Add( QuotedStr( sqlPedVend.FieldByName('PEDVENDID').AsString ) + ','  );
  sqlUpd.SQL.Add( sqlPedVend.FieldByName('EMPRESAID').AsString + ',' );

  case sqlPedVend.FieldByName('ORIGEMVENDAID').AsInteger of
  1  : begin
        sqlUpd.SQL.Add( 'NULL,' );
        sqlUpd.SQL.Add( 'NULL,' );
       end;

  2,3,4 : begin
        sqlUpd.SQL.Add( sqlPedVend.FieldByName('NFSID').AsString + ',' );
        sqlUpd.SQL.Add( QuotedStr( sqlPedVend.FieldByName('DATAEMISSAOID').AsString ) + ',' );
       end;
  end;

  sqlUpd.SQL.Add( QuotedStr( DtFech ) + ',' );
  sqlUpd.SQL.Add( SubstituiString( FloatToStr( VlrFob ),  ',', '.' ) + ', ' );
  sqlUpd.SQL.Add( SubstituiString( FloatToStr( VlrVenda ),  ',', '.' ) + ', ' );
  sqlUpd.SQL.Add( SubstituiString( FloatToStr( VlrInterv ),  ',', '.' ) + ', ' );
  sqlUpd.SQL.Add( SubstituiString( FloatToStr( VlrIPI ),  ',', '.' ) + ', ' );
  sqlUpd.SQL.Add( SubstituiString( FloatToStr( VlrComissao ),  ',', '.' ) + ', ' );
  sqlUpd.SQL.Add( SubstituiString( FloatToStr( VlrComissaoUS ),  ',', '.' ) + ', ' );
  sqlUpd.SQL.Add( '0, ' );
  sqlUpd.SQL.Add( '0, ' );
  sqlUpd.SQL.Add( QuotedStr( UsuarioID ) + ')' );
  sqlUpd.ExecSQL( False );
 end;

begin
 VlrIPI      := 0;
 VlrInterv   := TotalInterv;
 ProcessVend := 1;

 case sqlPedVend.FieldByName('ORIGEMVENDAID').AsInteger of
 1  :  begin
        DtFech        := sqlPedVend.FieldByName('EMBDATA').AsString;
        VlrFob        := sqlPedVend.FieldByName('VLRFOB').AsCurrency;
        VlrComissaoUS := sqlPedVend.FieldByName('VLRTOTALGERAL').AsCurrency -
                         VlrInterv -
                         sqlPedVend.FieldByName('VLRDESPESA').AsCurrency -
                         sqlPedVend.FieldByName('VLRFRETEINTERNACIONAL').AsCurrency;
       end;

 2,3,4 : begin
        NFSID         := sqlPedVend.FieldByName('NFSID').AsString;
        DtEmissao     := sqlPedVend.FieldByName('DATAEMISSAOID').AsString;
        DtFech        := sqlPedVend.FieldByName('DATAEMISSAOID').AsString;
        VlrVenda      := sqlPedVend.FieldByName('VLRTOTALNOTA').AsCurrency;

        if VlrVenda <> VlrInterv then
           VlrIPI := sqlPedVend.FieldByName('VLRTOTALIPI').AsCurrency;

        IPI_Produto   := TotalIPI;
        VlrComissao   := sqlPedVend.FieldByName('VLRTOTALNOTA').AsCurrency - VlrInterv -
                         IPI_Produto - VlrIPI;
        sqlUpd.Close;
        sqlUpd.SQL.Clear;
        sqlUpd.SQL.Add( 'UPDATE EF_NFSPARCELA ' );
        sqlUpd.SQL.Add( '   SET VLRBASECOMISSAO = VLRPARCELA * ' + SubstituiString( FloatToStr( VlrComissao / VlrVenda ), ',', '.' ) + ', ' );
        sqlUpd.SQL.Add( '       PAGTOVENDEDOR   = 0 ' );
        sqlUpd.SQL.Add( ' WHERE ' );
        sqlUpd.SQL.Add('  EF_NFSPARCELA.EMPRESAID     = ' + sqlPedVend.FieldByName('EMPRESAID').AsString );
        sqlUpd.SQL.Add('  AND EF_NFSPARCELA.NFSID         = ' + NFSID );
        sqlUpd.SQL.Add('  AND EF_NFSPARCELA.DATAEMISSAOID = TO_DATE(' + QuotedStr( DtEmissao ) + ', ''dd/mm/yyyy'' )' );
        sqlUpd.ExecSQL( False );
       end;
 end;

 // Gravar Analise de Venda
 AtualAnaliseVenda;

 // Gerar Base de Pagto individual de vendedores para controle do saldo pago
 // de comissões para os casos onde o pagto da duplicata ainda não ocorreu
 sqlGeral.Close;
 sqlGeral.SQL.Clear;
 sqlGeral.SQL.Add( SelectPedVend );
 sqlGeral.Params[0].AsString := sqlPedVend.FieldByName('PEDVENDID').AsString;
 sqlGeral.Prepared := True;
 sqlGeral.Open;

 while not sqlGeral.Eof do
 begin
  AddVendaBasePgto( sqlUpd, sqlGeral, sqlGeral.FieldByName('VENDEDORID').AsString,
                                      sqlGeral.FieldByName('CLASSEVENDEDORID').AsString,
                                      UsuarioID  );

  if ProcessVend = 1 then
     begin
      ProcessVend := 0;
      // Comissões Fixas para gerentes
      sqlRecCom.Close;
      sqlRecCom.SQL.Clear;
      sqlRecCom.SQL.Add( SelectRecComissao );
      sqlRecCom.Params[0].Value := DateTimeToStr( DtEmissaoNF_EMB );
      sqlRecCom.Prepared := True;
      sqlRecCom.Open;

      while not sqlRecCom.Eof do
      begin
       AddVendaBasePgto( sqlUpd, sqlGeral, sqlRecCom.FieldByName('ENTIDADEID').AsString,
                                           sqlRecCom.FieldByName('CLASSEVENDEDORID').AsString,
                                           UsuarioID );
       sqlRecCom.Next;
      end;
     end;
  sqlGeral.Next;
 end;
end;

procedure TSrvAppPP.IAnaliseVenda(const UsuarioID, DtInicial,
  DtFinal: WideString);
var sqlUpd, sqlPedVend, sqlGeral, sqlRecCom,sqlHistCom : TSQLQuery;
    DtEmissaoNF_EMB : Double;

 procedure ProcessarComissao( Tipo : TTipoComissao );
 begin
  sqlPedVend.Close;
  sqlPedVend.SQL.Clear;
  case Tipo of
  Revenda, Exportacao : sqlPedVend.SQL.Add( SelectPedRev );
  Importacao          : sqlPedVend.SQL.Add( SelectPedImp );
  end;

  sqlPedVend.ParamByName('pDat1').Value := DtInicial;
  sqlPedVend.ParamByName('pDat2').Value := DtFinal;
  sqlPedVend.Prepared := True;
  sqlPedVend.Open;

  sqlPedVend.First;
  while not sqlPedVend.Eof do
  begin
   if sqlPedVend.FieldByName('ORIGEMVENDAID').IsNull then
      raise Exception.Create('Origem da Venda não informado, Pedido Venda ID: ' + sqlPedVend.FieldByName('PEDVENDID').AsString );

   if sqlPedVend.FieldByName('TIPOVENDAID').IsNull then
      raise Exception.Create('Tipo da Venda não informado, Pedido Venda ID: ' + sqlPedVend.FieldByName('PEDVENDID').AsString );

   case Tipo of
   Revenda, Exportacao : DtEmissaoNF_EMB := sqlPedVend.FieldByName('DATAEMISSAOID').AsDateTime;
   Importacao          : DtEmissaoNF_EMB := sqlPedVend.FieldByName('EMBDATA').AsDateTime;
   end;

   AddAnaliseVenda( sqlUpd, sqlGeral, sqlRecCom, sqlPedVend, UsuarioID, DtEmissaoNF_EMB );
   sqlPedVend.Next;
  end;

 end;

 procedure UpdateHistFechamento;
 var AnoMes : String;
 begin
  AnoMes := IntToStr( YearOf( StrToDate( DtInicial ) ) ) + StrZero( MonthOf( StrToDate( DtInicial ) ),2,0 );
  sqlHistCom.Close;
  sqlHistCom.SQL.Clear;
  sqlHistCom.SQL.Text := 'SELECT PP_HISTFECHCOMISSAO.ANOMESID'+
                         '  FROM PP_HISTFECHCOMISSAO'+
                         ' WHERE PP_HISTFECHCOMISSAO.ANOMESID = '+ QuotedStr( AnoMes );
  sqlHistCom.Prepared := True;
  sqlHistCom.Open;

  if sqlHistCom.IsEmpty then
     begin
      sqlHistCom.Close;
      sqlHistCom.SQL.Clear;
      sqlHistCom.SQL.Text := 'INSERT INTO PP_HISTFECHCOMISSAO '+
                             '  VALUES('+
                             '   '+ QuotedStr( AnoMes ) + ','+
                             '   '+ QuotedStr('FECHAMENTO NORMAL')+','+
                             '   '+ QuotedStr( UsuarioID )+')';
      sqlHistCom.ExecSQL(false);
     end;

 end;

begin
 sqlUpd := TSQLQuery.Create(nil);
 sqlUpd.SQLConnection := TSQLConnection(FSQLcnn);

 sqlPedVend := TSQLQuery.Create(nil);
 sqlPedVend.SQLConnection := TSQLConnection(FSQLcnn);

 sqlGeral := TSQLQuery.Create(nil);
 sqlGeral.SQLConnection := TSQLConnection(FSQLcnn);

 sqlRecCom := TSQLQuery.Create(nil);
 sqlRecCom.SQLConnection := TSQLConnection(FSQLcnn);

 sqlHistCom := TSQLQuery.Create(nil);
 sqlHistCom.SQLConnection := TSQLConnection(FSQLcnn);

 try
  try // Except
   // Inicia transação
   TSQLConnection(FSQLcnn).StartTransaction(TD);

   UpdateHistFechamento;

   ProcessarComissao( Revenda );

   ProcessarComissao( Importacao );

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
  FreeAndNil( sqlUpd );
  FreeAndNil( sqlPedVend );
  FreeAndNil( sqlGeral );
  FreeAndNil( sqlRecCom );
  FreeAndNil( sqlHistCom );
 end;
end;

procedure TSrvAppPP.IBaixaDuplicata
(const PedVendID, DataPgto, ParcelaID,
  VlrParcelaComissao: WideString; PagtoVendedor: Integer;
  const UsuarioID: WideString);
var sqlUpd, sqlPedVendVendedor, sqlRecCom, sqlNFS, sqlNFSParcela, sqlEnt : TSQLQuery;
    ProcessVend : Integer;

 procedure AddBasePgto( VendedorID, ClasseVendedorID, ParcelaID : String );
 begin
  sqlUpd.Close;
  sqlUpd.SQL.Clear;
  sqlUpd.SQL.Add( 'INSERT INTO PP_BASEPAGTO' );
  sqlUpd.SQL.Add( ' ( VENDEDORID, PEDVENDID, ITEMID, DATALIBPAGTOFIN, CLASSEVENDEDORID, ');
  sqlUpd.SQL.Add( '   NIVELVENDA, VLRCOMISSAO, VLRBASECOMISSAO, VLRBASECOMISSAOUS, VLRDSR, VLRLIQUIDO, USUARIO ) ');
  sqlUpd.SQL.Add( ' VALUES ( ' );
  sqlUpd.SQL.Add( VendedorID + ','  );
  sqlUpd.SQL.Add( QuotedStr( sqlPedVendVendedor.FieldByName('PEDVENDID').AsString ) + ','  );
  sqlUpd.SQL.Add( ParcelaID + ',' );
  sqlUpd.SQL.Add( QuotedStr( DataPgto ) + ',' );
  sqlUpd.SQL.Add( ClasseVendedorID + ',' );

  if sqlPedVendVendedor.FieldByName('ITEMID').AsInteger = 1 then
     sqlUpd.SQL.Add( QuotedStr('P') + ',' )
  else
     sqlUpd.SQL.Add( QuotedStr('S') + ',' );

  sqlUpd.SQL.Add( '0,'  );
  sqlUpd.SQL.Add( SubstituiString( VlrParcelaComissao,',', '.' ) + ', ' );
  sqlUpd.SQL.Add( '0,'  );
  sqlUpd.SQL.Add( '0,'  );
  sqlUpd.SQL.Add( '0,'  );
  sqlUpd.SQL.Add( QuotedStr( UsuarioID ) +  ')' );
  sqlUpd.ExecSQL( False );
 end;

begin
 sqlUpd := TSQLQuery.Create(nil);
 sqlUpd.SQLConnection := TSQLConnection(FSQLcnn);

 sqlPedVendVendedor := TSQLQuery.Create(nil);
 sqlPedVendVendedor.SQLConnection := TSQLConnection(FSQLcnn);

 sqlRecCom := TSQLQuery.Create(nil);
 sqlRecCom.SQLConnection := TSQLConnection(FSQLcnn);

 sqlNFS := TSQLQuery.Create(nil);
 sqlNFS.SQLConnection := TSQLConnection(FSQLcnn);

 sqlNFSParcela := TSQLQuery.Create(nil);
 sqlNFSParcela.SQLConnection := TSQLConnection(FSQLcnn);

 sqlEnt := TSQLQuery.Create(nil);
 sqlEnt.SQLConnection := TSQLConnection(FSQLcnn);

 ProcessVend := 1;

 try
  try // Except
   // Inicia transação
   TSQLConnection(FSQLcnn).StartTransaction(TD);

   if PagtoVendedor = 1 then
      raise Exception.Create('Pagto de comissão já realizado para esta parcela.');

   if StrToDate( DataPgto ) < FirstDayOfMonth( ( FirstDayOfMonth(  Date ) - 1 ) ) then
      raise Exception.Create('Data de pagto de comissão inferior ao fechamento da análise de venda.');

   if YearOf( StrToDate( DataPgto ) ) > Year( Date ) then
      raise Exception.Create('Data de pagto está inválida.');

   sqlPedVendVendedor.Close;
   sqlPedVendVendedor.SQL.Clear;
   sqlPedVendVendedor.SQL.Add( SelectPedVendedor );
   sqlPedVendVendedor.Params[0].AsString := PedVendID;
   sqlPedVendVendedor.Prepared := True;
   sqlPedVendVendedor.Open;

   if sqlPedVendVendedor.IsEmpty then
      raise Exception.Create('Não há vendedores para pagto de comissão.');

   // Validar funcionário desligado
   sqlEnt.Close;
   sqlEnt.SQL.Clear;
   sqlEnt.SQL.Add( 'SELECT DESLIGADO FROM EF_ENTIDADE WHERE NVL( DESLIGADO, 0 ) = 1 AND ENTIDADEID = ' +
                   sqlPedVendVendedor.FieldByName('VENDEDORID').AsString );
   sqlEnt.Prepared := True;
   sqlEnt.Open;

   if not sqlEnt.IsEmpty then
      raise Exception.Create('Vendedor/representante está desligado para pagamento de comissão');

   // Verificar nota fiscal cancelada
   sqlNFS.Close;
   sqlNFS.SQL.Clear;
   sqlNFS.SQL.Add( 'SELECT CANCELADA FROM EF_NFS ');
   sqlNFS.SQL.Add( ' WHERE ' );
   sqlNFS.SQL.Add('  EMPRESAID         = ' + sqlPedVendVendedor.FieldByName('EMPRESAID').AsString );
   sqlNFS.SQL.Add('  AND NFSID         = ' + sqlPedVendVendedor.FieldByName('NFSID').AsString );
   sqlNFS.SQL.Add('  AND DATAEMISSAOID = TO_DATE(' + QuotedStr( sqlPedVendVendedor.FieldByName('DATAEMISSAOID').AsString ) + ', ''dd/mm/yyyy'' )' );
   sqlNFS.SQL.Add('  AND NVL( CANCELADA, 0 ) = 1 ' );
   sqlNFS.Prepared := True;
   sqlNFS.Open;

   if not sqlNFS.IsEmpty then
      raise Exception.Create('Nota fiscal está cancelada não é permitido pagto de comissão.');

   sqlNFS.Close;

   // Verificar parcela cancelada
   sqlNFSParcela.Close;
   sqlNFSParcela.SQL.Clear;
   sqlNFSParcela.SQL.Add( 'SELECT CANCELADA, OBSCANCELAMENTO FROM EF_NFSPARCELA ');
   sqlNFSParcela.SQL.Add( ' WHERE ' );
   sqlNFSParcela.SQL.Add('  EMPRESAID         = ' + sqlPedVendVendedor.FieldByName('EMPRESAID').AsString );
   sqlNFSParcela.SQL.Add('  AND NFSID         = ' + sqlPedVendVendedor.FieldByName('NFSID').AsString );
   sqlNFSParcela.SQL.Add('  AND DATAEMISSAOID = TO_DATE(' + QuotedStr( sqlPedVendVendedor.FieldByName('DATAEMISSAOID').AsString ) + ', ''dd/mm/yyyy'' )' );
   sqlNFSParcela.SQL.Add('  AND PARCELAID     = ' + ParcelaID );
   sqlNFSParcela.SQL.Add('  AND NVL( CANCELADA, 0 ) = 1 ' );
   sqlNFSParcela.Prepared := True;
   sqlNFSParcela.Open;

   if not sqlNFSParcela.IsEmpty then
      raise Exception.Create('Parcela de pagamento está cancelada com o seguinte motivo: '  +  sqlNFSParcela.FieldByName('OBSCANCELAMENTO').Value  );

   sqlNFSParcela.Close;

   // Atualizar parcelas de pagto
   sqlUpd.Close;
   sqlUpd.SQL.Clear;
   sqlUpd.SQL.Add( 'UPDATE EF_NFSPARCELA ' );
   sqlUpd.SQL.Add( '   SET DATAPAGTO     = TO_DATE(' + QuotedStr( DataPgto ) + ', ''dd/mm/yyyy'' ),' );
   sqlUpd.SQL.Add( '       PAGTOVENDEDOR = 1 ' );
   sqlUpd.SQL.Add( ' WHERE ' );
   sqlUpd.SQL.Add('  EMPRESAID         = ' + sqlPedVendVendedor.FieldByName('EMPRESAID').AsString );
   sqlUpd.SQL.Add('  AND NFSID         = ' + sqlPedVendVendedor.FieldByName('NFSID').AsString );
   sqlUpd.SQL.Add('  AND DATAEMISSAOID = TO_DATE(' + QuotedStr( sqlPedVendVendedor.FieldByName('DATAEMISSAOID').AsString ) + ', ''dd/mm/yyyy'' )' );
   sqlUpd.SQL.Add('  AND PARCELAID     = ' + ParcelaID );
   sqlUpd.ExecSQL( False );

   while not sqlPedVendVendedor.Eof do
   begin
    AddBasePgto( sqlPedVendVendedor.FieldByName('VENDEDORID').AsString,
                 sqlPedVendVendedor.FieldByName('CLASSEVENDEDORID').AsString,
                 ParcelaID );

    if ProcessVend = 1 then
       begin
        ProcessVend := 0;
        // Comissões Fixas para gerentes
        sqlRecCom.Close;
        sqlRecCom.SQL.Clear;
        sqlRecCom.SQL.Add( SelectRecComissao );
        sqlRecCom.Params[0].Value :=  DatetimeToStr(  sqlPedVendVendedor.FieldByName('DATAEMISSAOID').AsDateTime );
        sqlRecCom.Prepared := True;
        sqlRecCom.Open;

        while not sqlRecCom.Eof do
        begin
         AddBasePgto( sqlRecCom.FieldByName('ENTIDADEID').AsString,
                      sqlRecCom.FieldByName('CLASSEVENDEDORID').AsString,
                      ParcelaID );
         sqlRecCom.Next;
        end;
       end;

    sqlPedVendVendedor.Next;
   end;

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
  FreeAndNil( sqlUpd );
  FreeAndNil( sqlEnt );
  FreeAndNil( sqlPedVendVendedor );
  FreeAndNil( sqlNFS );
  FreeAndNil( sqlNFSParcela );
 end;
end;

procedure TSrvAppPP.ICancelarBaixaDuplicata(const PedVendID,
  ParcelaID: WideString; PagtoVendedor: Integer);
var sqlUpd, sqlPedVendVendedor : TSQLQuery;
begin
 sqlUpd := TSQLQuery.Create(nil);
 sqlUpd.SQLConnection := TSQLConnection(FSQLcnn);

 sqlPedVendVendedor := TSQLQuery.Create(nil);
 sqlPedVendVendedor.SQLConnection := TSQLConnection(FSQLcnn);

 try
  try // Except
   // Inicia transação
   TSQLConnection(FSQLcnn).StartTransaction(TD);

   if PagtoVendedor = 0 then
      raise Exception.Create('Não há pagamento de comissão para esta parcela.');

   sqlPedVendVendedor.Close;
   sqlPedVendVendedor.SQL.Clear;
   sqlPedVendVendedor.SQL.Add( SelectPedVendedor );
   sqlPedVendVendedor.Params[0].AsString := PedVendID;
   sqlPedVendVendedor.Prepared := True;
   sqlPedVendVendedor.Open;

   if sqlPedVendVendedor.IsEmpty then
      raise Exception.Create('Não há vendedores para pagto cancelamento de pagamento de comissão.');

   // Atualizar parcelas de pagto
   sqlUpd.Close;
   sqlUpd.SQL.Clear;
   sqlUpd.SQL.Add( 'UPDATE EF_NFSPARCELA ' );
   sqlUpd.SQL.Add( '   SET DATAPAGTO     = NULL,' );
   sqlUpd.SQL.Add( '       PAGTOVENDEDOR = 0 ' );
   sqlUpd.SQL.Add( ' WHERE ' );
   sqlUpd.SQL.Add('  EMPRESAID         = ' + sqlPedVendVendedor.FieldByName('EMPRESAID').AsString );
   sqlUpd.SQL.Add('  AND NFSID         = ' + sqlPedVendVendedor.FieldByName('NFSID').AsString );
   sqlUpd.SQL.Add('  AND DATAEMISSAOID = TO_DATE(' + QuotedStr( sqlPedVendVendedor.FieldByName('DATAEMISSAOID').AsString ) + ', ''dd/mm/yyyy'' )' );
   sqlUpd.SQL.Add('  AND PARCELAID     = ' + ParcelaID );
   sqlUpd.ExecSQL( False );

   sqlUpd.SQL.Clear;
   sqlUpd.SQL.Add(' DELETE FROM PP_BASEPAGTO' );
   sqlUpd.SQL.Add(' WHERE ');
   sqlUpd.SQL.Add('    PEDVENDID  = ' + QuotedStr( PedVendID ) );
   sqlUpd.SQL.Add('    AND ITEMID = ' + ParcelaID );
   sqlUpd.ExecSQL( False );

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
  FreeAndNil( sqlUpd );
  FreeAndNil( sqlPedVendVendedor );
 end;
end;

procedure TSrvAppPP.IReparcelarDuplicata(DuplData: OleVariant;
  const EmpresaID, NFSID, DataEmissaoID, ParcelaID: WideString; VlrParcela,
  VlrVenda, VlrComissao: Currency; const UsuarioID: WideString);
var sqlUpd, sqlParcDupl, sqlCopiaParcDuplic,sqlParcelas : TSQLQuery;
    VlrTotal : Extended;
    UltParc, Parc, MaiorParc : Integer;
    cdsDuplic : TClientDataSet;

 // Verificar se a parcela já foi paga não mudar o número da parcela para evitar
 // problemas nas parcelas já pagas
 function VerifParcJaPaga( Parc : Integer ) : Boolean;
 begin
  Result := False;
  sqlCopiaParcDuplic.First;
  while not sqlCopiaParcDuplic.Eof do
  begin
   if Parc = sqlCopiaParcDuplic.FieldByName('PARCELAID').Value  then
      begin
       Result := True;
       exit;
      end;
   sqlCopiaParcDuplic.Next;
  end;
 end;

begin
 sqlUpd := TSQLQuery.Create(nil);
 sqlUpd.SQLConnection := TSQLConnection(FSQLcnn);

 sqlParcDupl := TSQLQuery.Create(nil);
 sqlParcDupl.SQLConnection := TSQLConnection(FSQLcnn);

 sqlCopiaParcDuplic := TSQLQuery.Create(nil);
 sqlCopiaParcDuplic.SQLConnection := TSQLConnection(FSQLcnn);

 sqlParcelas := TSQLQuery.Create(nil);
 sqlParcelas.SQLConnection := TSQLConnection(FSQLcnn);

 cdsDuplic := TClientDataSet.Create( Self );
 cdsDuplic.Data := DuplData;

 try
  try // Except
   // Inicia transação
   TSQLConnection(FSQLcnn).StartTransaction(TD);

   //Encontrando a Ultima Parcela ( Weles )
   sqlParcelas.Close;
   sqlParcelas.SQL.Clear;
   sqlParcelas.SQL.Add('SELECT MAX( EF_NFSPARCELA.PARCELAID ) ULTPARC FROM EF_NFSPARCELA');
   sqlParcelas.SQL.Add(' WHERE EF_NFSPARCELA.EMPRESAID = '+ EmpresaID );
   sqlParcelas.SQL.Add('   AND EF_NFSPARCELA.NFSID = '+ NFSID  );
   sqlParcelas.SQL.Add('   AND EF_NFSPARCELA.DATAEMISSAOID = '+ QuotedStr( DataEmissaoID ));
   sqlParcelas.Prepared := True;
   sqlParcelas.Open;


   VlrTotal := 0;

   cdsDuplic.First;
   while not cdsDuplic.Eof do
   begin
    VlrTotal := VlrTotal + cdsDuplic.FieldByName('VlrParc').AsCurrency;
    cdsDuplic.Next;
   end;

   if FormatFloat( '#,##0.00', VlrTotal ) <> FormatFloat( '#,##0.00', VlrParcela ) then
      raise Exception.Create( 'Soma dos valores das duplicatas lançadas difere do valor total !' );

   // Posicionar o número da duplicata para uma possição que não possibilite o conflito de chaves
   //  quando for usado a rotina para atualizar os números da parcela
   UltParc := 1000;

   cdsDuplic.First;
   while not cdsDuplic.Eof do
   begin
    // Atualizar parcelas de pagto
    sqlUpd.Close;
    sqlUpd.SQL.Clear;
    sqlUpd.SQL.Add('INSERT INTO EF_NFSPARCELA( ') ;
    sqlUpd.SQL.Add('       EMPRESAID, ' );
    sqlUpd.SQL.Add('       NFSID, ' );
    sqlUpd.SQL.Add('       DATAEMISSAOID, ' );
    sqlUpd.SQL.Add('       PARCELAID, ' );
    sqlUpd.SQL.Add('       DATAVENCIMENTO, ' );
    sqlUpd.SQL.Add('       VLRPARCELA, ' );
    sqlUpd.SQL.Add('       VLRBASECOMISSAO, ' );
    sqlUpd.SQL.Add('       PAGTOVENDEDOR, ' );
    sqlUpd.SQL.Add('       USUARIO ) ' );
    sqlUpd.SQL.Add(' VALUES ( ' );
    sqlUpd.SQL.Add( EmpresaID + ',' );
    sqlUpd.SQL.Add( NFSID + ',' );
    sqlUpd.SQL.Add( QuotedStr( DataEmissaoID ) + ',' );
    sqlUpd.SQL.Add( IntToStr( UltParc + cdsDuplic.FieldByName('NumParc').Value ) + ', ' );
    sqlUpd.SQL.Add( QuotedStr( FormatDateTime( 'dd/mm/yyyy', cdsDuplic.FieldByName('DtVencto').Value ) ) + ', ' );
    sqlUpd.SQL.Add( SubstituiString( cdsDuplic.FieldByName('VlrParc').AsString, ',', '.' ) + ',' );
    sqlUpd.SQL.Add( SubstituiString( FloatToStr( cdsDuplic.FieldByName('VlrParc').Value * VlrComissao / VlrVenda ), ',', '.' ) + ', ' );
    sqlUpd.SQL.Add( '0,' );
    sqlUpd.SQL.Add( QuotedStr( UsuarioID ) + ')' );
    sqlUpd.ExecSQL( False );

    cdsDuplic.Next;
   end;

   // Excluir duplicata de pagtomento
   sqlUpd.Close;
   sqlUpd.SQL.Clear;
   sqlUpd.SQL.Add('DELETE FROM EF_NFSPARCELA ' );
   sqlUpd.SQL.Add(' WHERE ' );
   sqlUpd.SQL.Add(' EMPRESAID         = ' + EmpresaID );
   sqlUpd.SQL.Add(' AND NFSID         = ' + NFSID );
   sqlUpd.SQL.Add(' AND DATAEMISSAOID = ' + QuotedStr( DataEmissaoID ) );
   sqlUpd.SQL.Add(' AND PARCELAID     = ' + ParcelaID );
   sqlUpd.ExecSQL( False );

   // Buscar somente as parcelas antigas não considerando a parcela dividida
   {sqlParcDupl.Close;
   sqlParcDupl.SQL.Clear;
   sqlParcDupl.SQL.Add( SelectParcDupl );
   sqlParcDupl.Params[0].AsString := EmpresaID;
   sqlParcDupl.Params[1].AsString := NFSID;
   sqlParcDupl.Params[2].AsString := DataEmissaoID;
   sqlParcDupl.Params[3].AsString := '0';
   sqlParcDupl.Prepared := True;
   sqlParcDupl.Open;

   // Copia para verificar parcelas já geradas
   sqlCopiaParcDuplic.Close;
   sqlCopiaParcDuplic.SQL.Clear;
   sqlCopiaParcDuplic.SQL.Add( SelectParcDupl );
   sqlCopiaParcDuplic.Params[0].AsString := EmpresaID;
   sqlCopiaParcDuplic.Params[1].AsString := NFSID;
   sqlCopiaParcDuplic.Params[2].AsString := DataEmissaoID;
   sqlCopiaParcDuplic.Params[3].AsString := '1';
   sqlCopiaParcDuplic.Prepared := True;
   sqlCopiaParcDuplic.Open;

   Parc := 1;
   sqlParcDupl.First;
   while not sqlParcDupl.Eof do
   begin
    while True do
    begin
     {if VerifParcJaPaga( Parc ) then
        Inc( Parc )
     else
        Break;
    end;

    // Excluir duplicata de pagtomento
    sqlUpd.Close;
    sqlUpd.SQL.Clear;
    sqlUpd.SQL.Add('UPDATE EF_NFSPARCELA SET PARCELAID = ' + IntToStr( Parc ) );
    sqlUpd.SQL.Add(' WHERE ' );
    sqlUpd.SQL.Add(' EMPRESAID         = ' + EmpresaID );
    sqlUpd.SQL.Add(' AND NFSID         = ' + NFSID );
    sqlUpd.SQL.Add(' AND DATAEMISSAOID = ' + QuotedStr( DataEmissaoID ) );
    sqlUpd.SQL.Add(' AND PARCELAID     = ' + sqlParcDupl.FieldByName('PARCELAID').AsString );
    sqlUpd.ExecSQL( False );

    Inc( Parc );
    sqlParcDupl.Next;
   end; }

   MaiorParc := sqlParcelas.FieldByName('ULTPARC').AsInteger;
   Parc := StrToInt( ParcelaId );
   cdsDuplic.First;
   while not cdsDuplic.Eof do
   begin

    // Excluir duplicata de pagtomento
    sqlUpd.Close;
    sqlUpd.SQL.Clear;
    sqlUpd.SQL.Add('UPDATE EF_NFSPARCELA SET PARCELAID = ' + IntToStr( Parc ) );
    sqlUpd.SQL.Add(' WHERE ' );
    sqlUpd.SQL.Add(' EMPRESAID         = ' + EmpresaID );
    sqlUpd.SQL.Add(' AND NFSID         = ' + NFSID );
    sqlUpd.SQL.Add(' AND DATAEMISSAOID = ' + QuotedStr( DataEmissaoID ) );
    sqlUpd.SQL.Add(' AND PARCELAID     = ' + IntToStr( UltParc + cdsDuplic.FieldByName('NumParc').AsInteger )  );
    sqlUpd.ExecSQL( False );

    inc( MaiorParc );
    Parc := MaiorParc;
    cdsDuplic.Next;
   end;

   sqlParcDupl.Close;

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
  FreeAndNil( sqlUpd );
  FreeAndNil( sqlParcDupl );
  FreeAndNil( sqlCopiaParcDuplic );
  FreeAndNil( cdsDuplic );
 end;
end;

procedure TSrvAppPP.ICancelarParcelaDuplicata(const PedVendID, ParcelaID,
  DescricaoCanc: WideString);
var sqlUpd, sqlPedVendVendedor : TSQLQuery;
begin
 sqlUpd := TSQLQuery.Create(nil);
 sqlUpd.SQLConnection := TSQLConnection(FSQLcnn);

 sqlPedVendVendedor := TSQLQuery.Create(nil);
 sqlPedVendVendedor.SQLConnection := TSQLConnection(FSQLcnn);

 try
  try // Except
   // Inicia transação
   TSQLConnection(FSQLcnn).StartTransaction(TD);

   sqlPedVendVendedor.Close;
   sqlPedVendVendedor.SQL.Clear;
   sqlPedVendVendedor.SQL.Add( SelectPedVendedor );
   sqlPedVendVendedor.Params[0].AsString := PedVendID;
   sqlPedVendVendedor.Prepared := True;
   sqlPedVendVendedor.Open;

   if sqlPedVendVendedor.IsEmpty then
      raise Exception.Create('Não há vendedores para pagto cancelamento de pagamento de comissão.');

   // Atualizar parcelas de pagto
   sqlUpd.Close;
   sqlUpd.SQL.Clear;
   sqlUpd.SQL.Add( 'UPDATE EF_NFSPARCELA SET' );
   sqlUpd.SQL.Add( '  DATAPAGTO       = NULL,' );
   sqlUpd.SQL.Add( '  CANCELADA       = 1, ' );
   sqlUpd.SQL.Add( '  OBSCANCELAMENTO = ' + QuotedStr( DescricaoCanc ) + ',' );
   sqlUpd.SQL.Add( '  PAGTOVENDEDOR   = 0 ' );
   sqlUpd.SQL.Add( ' WHERE ' );
   sqlUpd.SQL.Add('  EMPRESAID         = ' + sqlPedVendVendedor.FieldByName('EMPRESAID').AsString );
   sqlUpd.SQL.Add('  AND NFSID         = ' + sqlPedVendVendedor.FieldByName('NFSID').AsString );
   sqlUpd.SQL.Add('  AND DATAEMISSAOID = TO_DATE(' + QuotedStr( sqlPedVendVendedor.FieldByName('DATAEMISSAOID').AsString ) + ', ''dd/mm/yyyy'' )' );
   sqlUpd.SQL.Add('  AND PARCELAID     = ' + ParcelaID );
   sqlUpd.ExecSQL( False );

   sqlUpd.SQL.Clear;
   sqlUpd.SQL.Add(' DELETE FROM PP_BASEPAGTO' );
   sqlUpd.SQL.Add(' WHERE ');
   sqlUpd.SQL.Add('    PEDVENDID  = ' + QuotedStr( PedVendID ) );
   sqlUpd.SQL.Add('    AND ITEMID = ' + ParcelaID );
   sqlUpd.ExecSQL( False );

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
  FreeAndNil( sqlUpd );
  FreeAndNil( sqlPedVendVendedor );
 end;
end;

procedure TSrvAppPP.IAtualSaldoReserva(const EmpresaID,
  ProdutoID: WideString; Qtd: Currency; const Operacao: WideString);
var sqlUpd : TSQLQuery;

begin
 sqlUpd := TSQLQuery.Create(nil);
 sqlUpd.SQLConnection := TSQLConnection(FSQLcnn);

 try
  try // Except
   // Inicia transação
   TSQLConnection(FSQLcnn).StartTransaction(TD);

   // Atualizar o novo saldo
   sqlUpd.SQL.Clear;
   sqlUpd.SQL.Add('UPDATE EF_PRODUTO ');
   sqlUpd.SQL.Add('  SET ESTOQUERESERVA = NVL( ESTOQUERESERVA, 0 ) ' + Operacao +  SubstituiString( FloatToStr( Qtd ), ',', '.' ) );
   sqlUpd.SQL.Add('WHERE ');
   sqlUpd.SQL.Add(' EMPRESAID = ' + EmpresaID );
   sqlUpd.SQL.Add(' AND PRODUTOID = ' + ProdutoID );
   sqlUpd.ExecSQL( False );

   sqlUpd.Close;

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
  FreeAndNil( sqlUpd );
 end;
end;

procedure TSrvAppPP.IPagtoComissao(const DataIni, DataFim, DataPagto,
  DataConvFob, UsuarioAtivo: WideString);
begin
end;


function TSrvAppPP.ProcessarFeriado( sqlFeriado : TSQLQuery; DtPgto : TDateTime;
 FilialID : Integer ) : Integer;
var  Feriado : Integer;
begin
 // Calcular feriados no mês
 sqlFeriado.Close;
 sqlFeriado.SQL.Clear;
 sqlFeriado.SQL.Add('SELECT RD_FERIADO.FERIADOID, ');
 sqlFeriado.SQL.Add(' RD_FERIADO.DATAFERIADO, ');
 sqlFeriado.SQL.Add(' RD_FERIADO.FILIALID, ');
 sqlFeriado.SQL.Add(' RD_FERIADO.FERIADOREGIONAL, ');
 sqlFeriado.SQL.Add(' RD_FERIADO.LIBERADOEMPRESA, ');
 sqlFeriado.SQL.Add(' RD_FERIADO.DESCRICAOFERIADO, ');
 sqlFeriado.SQL.Add(' RD_FERIADO.USUARIO ');
 sqlFeriado.SQL.Add('  FROM RD_FERIADO RD_FERIADO ');
 sqlFeriado.SQL.Add(' WHERE ');
 sqlFeriado.SQL.Add('  RD_FERIADO.DATAFERIADO BETWEEN ' + QuotedStr( DateToStr( FirstDayOfMonth( DtPgto ) ) ) );
 sqlFeriado.SQL.Add('  AND ' +  QuotedStr( DateToStr( LastDayOfMonth( DtPgto ) ) ) );
 sqlFeriado.SQL.Add('  AND NVL( RD_FERIADO.LIBERADOEMPRESA, 0 ) = 0 ' );
 sqlFeriado.Prepared := True;
 sqlFeriado.Open;

 Feriado := 0;

 sqlFeriado.First;
 while not sqlFeriado.Eof do
 begin
  if sqlFeriado.FieldByName('FERIADOREGIONAL').AsInteger = 1 then
     begin
      if not IsSunday( sqlFeriado.FieldByName('DATAFERIADO').AsDateTime ) then
         if sqlFeriado.FieldByName('FILIALID').AsInteger = FilialID then
            Inc( Feriado );
     end
  else
     begin
      if not IsSunday( sqlFeriado.FieldByName('DATAFERIADO').AsDateTime ) then
         Inc( Feriado );
     end;

  sqlFeriado.Next;
 end;
 Result := Feriado;
end;


procedure TSrvAppPP.LocalizarClasseNivel( sqlClasseNivel : TSQLQuery;
 NivelVenda : array of string; var PercVenda : array of Currency; PedVendID : String );
var x : Integer;
    Nivel : String;
begin
 sqlClasseNivel.Close;
 sqlClasseNivel.SQL.Clear;
 sqlClasseNivel.SQL.Add('SELECT CLASSENIVELID, PERCENTUAL1, PERCENTUAL2, PERCENTUAL3, PERCENTUAL4,');
 sqlClasseNivel.SQL.Add('       PERCENTUAL5, PERCENTUAL6');
 sqlClasseNivel.SQL.Add('  FROM PP_CLASSENIVEL');
 sqlClasseNivel.SQL.Add('WHERE ');
 sqlClasseNivel.SQL.Add(' CLASSEVENDEDOR1ID = :P1');

 Nivel := NivelVenda[0] + ',' +
          NivelVenda[1] + ',' +
          NivelVenda[2] + ',' +
          NivelVenda[3] + ',' +
          NivelVenda[4] + ',' +
          NivelVenda[5];

 sqlClasseNivel.Params[0].AsString := NivelVenda[0];

 if NivelVenda[1] <> '' then
    begin
     sqlClasseNivel.SQL.Add(' AND CLASSEVENDEDOR2ID = :P2');
     sqlClasseNivel.Params[1].AsString := NivelVenda[1];
    end
 else
     sqlClasseNivel.SQL.Add(' AND CLASSEVENDEDOR2ID IS NULL');

 if NivelVenda[2] <> '' then
    begin
     sqlClasseNivel.SQL.Add(' AND CLASSEVENDEDOR3ID = :P3');
     sqlClasseNivel.Params[2].AsString := NivelVenda[2];
    end
 else
    sqlClasseNivel.SQL.Add(' AND CLASSEVENDEDOR3ID IS NULL');

 if NivelVenda[3] <> '' then
    begin
     sqlClasseNivel.SQL.Add(' AND CLASSEVENDEDOR4ID = :P4');
     sqlClasseNivel.Params[3].AsString := NivelVenda[3];
    end
 else
    sqlClasseNivel.SQL.Add(' AND CLASSEVENDEDOR4ID IS NULL');

 if NivelVenda[4] <> '' then
    begin
     sqlClasseNivel.SQL.Add(' AND CLASSEVENDEDOR5ID = :P5');
     sqlClasseNivel.Params[4].AsString := NivelVenda[4];
    end
 else
    sqlClasseNivel.SQL.Add(' AND CLASSEVENDEDOR5ID IS NULL');

 if NivelVenda[5] <> '' then
    begin
     sqlClasseNivel.SQL.Add(' AND CLASSEVENDEDOR6ID = :P6');
     sqlClasseNivel.Params[5].AsString := NivelVenda[5];
    end
 else
    sqlClasseNivel.SQL.Add(' AND CLASSEVENDEDOR6ID IS NULL');

 sqlClasseNivel.Prepared := True;
 sqlClasseNivel.Open;

 if sqlClasseNivel.IsEmpty then
    raise Exception.Create( 'Ped. Vend ID = ' +  PedVendID +
                            '. Combinação da classe nível não localizada : ' + Nivel );

 for x := Low(PercVenda) to High(PercVenda) do
   PercVenda[x] := sqlClasseNivel.Fields[x+1].AsCurrency;
end;


function TSrvAppPP.LocalizarGrupo( sqlPedGrupo : TSQLQuery;
  PedVendID : String ) : Integer;
begin
 sqlPedGrupo.Close;
 sqlPedGrupo.SQL.Clear;
 sqlPedGrupo.SQL.Add('SELECT PP_PEDVENDITEM.PEDVENDID,');
 sqlPedGrupo.SQL.Add(' CASE ');
 sqlPedGrupo.SQL.Add('  WHEN EF_PRODUTO.GRUPOID IS NOT NULL THEN EF_PRODUTO.GRUPOID');
 sqlPedGrupo.SQL.Add('   ELSE');
 sqlPedGrupo.SQL.Add('      PP_CATALOGO.GRUPOID');
 sqlPedGrupo.SQL.Add('   END GRUPOID');
 sqlPedGrupo.SQL.Add(' FROM PP_PEDVENDITEM PP_PEDVENDITEM,');
 sqlPedGrupo.SQL.Add('      EF_PRODUTO EF_PRODUTO,');
 sqlPedGrupo.SQL.Add('      PP_CATALOGO PP_CATALOGO,');
 sqlPedGrupo.SQL.Add('      EF_GRUPO EF_GRUPO_CATALOGO');
 sqlPedGrupo.SQL.Add('WHERE EF_PRODUTO.EMPRESAID(+) = PP_PEDVENDITEM.EMPRESAID');
 sqlPedGrupo.SQL.Add('      AND EF_PRODUTO.PRODUTOID(+) = PP_PEDVENDITEM.PRODUTOID');
 sqlPedGrupo.SQL.Add('      AND PP_CATALOGO.MODELOID(+) = PP_PEDVENDITEM.MODELOID');
 sqlPedGrupo.SQL.Add('      AND PP_CATALOGO.GRUPOID = EF_GRUPO_CATALOGO.GRUPOID(+)');
 sqlPedGrupo.SQL.Add('      AND PP_PEDVENDITEM.PEDVENDID = :PEDVENDID');
 sqlPedGrupo.Params[0].AsString := PedVendID;
 sqlPedGrupo.Prepared := True;
 sqlPedGrupo.Open;

 if sqlPedGrupo.IsEmpty then
    begin
     sqlPedGrupo.Close;
     sqlPedGrupo.SQL.Clear;
     sqlPedGrupo.SQL.Add('SELECT DISTINCT PP_PEDVENDSERV.PEDVENDID, ');
     sqlPedGrupo.SQL.Add('       EF_SERVICO.GRUPOID ');
     sqlPedGrupo.SQL.Add('  FROM PP_PEDVENDSERV PP_PEDVENDSERV, ');
     sqlPedGrupo.SQL.Add('       EF_SERVICO EF_SERVICO ');
     sqlPedGrupo.SQL.Add(' WHERE EF_SERVICO.EMPRESAID(+) = PP_PEDVENDSERV.EMPRESAID ');
     sqlPedGrupo.SQL.Add('       AND EF_SERVICO.SERVICOID(+) = PP_PEDVENDSERV.SERVICOID ');
     sqlPedGrupo.SQL.Add('       AND PP_PEDVENDSERV.PEDVENDID = :PEDVENDID');
     sqlPedGrupo.Params[0].AsString := PedVendID;
     sqlPedGrupo.Prepared := True;
     sqlPedGrupo.Open;
    end;

 if sqlPedGrupo.IsEmpty then
    raise Exception.Create( 'Ped Vend ID:' + PedVendID +  '.Grupo do produto não localizado');

 Result := sqlPedGrupo.FieldByName('GRUPOID').AsInteger;

 sqlPedGrupo.Close;
end;


function TSrvAppPP.RetornarComissaoRepr( sqlPercComissao : TSQLQuery;
 PedVendID, OrigemVendaID, TipoVendaID : string ) : Currency;
var GrupoID : Integer;
begin
 GrupoId := LocalizarGrupo( sqlPercComissao, PedVendID );

 sqlPercComissao.Close;
 sqlPercComissao.SQL.Clear;
 sqlPercComissao.SQL.Add('SELECT VLRPERCENTUAL');
 sqlPercComissao.SQL.Add(' FROM PP_PERCOMREPR');
 sqlPercComissao.SQL.Add('WHERE');
 sqlPercComissao.SQL.Add(' PP_PERCOMREPR.GRUPOID = :pGrupoID');
 sqlPercComissao.SQL.Add(' AND PP_PERCOMREPR.ORIGEMVENDAID = :pOrigemVendaID');
 sqlPercComissao.SQL.Add(' AND PP_PERCOMREPR.TIPOVENDAID = :pTipoVendaID');
 sqlPercComissao.Params[0].AsString := IntToStr( GrupoID );
 sqlPercComissao.Params[1].AsString := OrigemVendaID;
 sqlPercComissao.Params[2].AsString := TipoVendaID;
 sqlPercComissao.Prepared := True;
 sqlPercComissao.Open;

 if ( sqlPercComissao.IsEmpty ) or ( sqlPercComissao.FieldByName('VLRPERCENTUAL').AsCurrency = 0 ) then
    raise Exception.Create('Atenção a porcentagem de pagamento da comissão não está sendo informado.');

 Result := sqlPercComissao.FieldByName('VLRPERCENTUAL').AsCurrency / 100;
end;


function TSrvAppPP.LocalizarPercComissao( sqlPercComissao : TSQLQuery; ClasseVendedorID,
 TipoVendaID, GrupoID : Integer; PedVendID : String ) : Currency;
begin
 sqlPercComissao.Close;
 sqlPercComissao.SQL.Clear;
 sqlPercComissao.SQL.Add('SELECT PP_PERCCOMFUNCGRUPO.CLASSEVENDEDORID,');
 sqlPercComissao.SQL.Add('      PP_PERCCOMFUNCGRUPO.TIPOVENDAID,');
 sqlPercComissao.SQL.Add('      PP_PERCCOMFUNCGRUPO.GRUPOID,');
 sqlPercComissao.SQL.Add('      PP_PERCCOMFUNCGRUPO.VLRPERCENTUAL');
 sqlPercComissao.SQL.Add(' FROM PP_PERCCOMFUNCGRUPO PP_PERCCOMFUNCGRUPO');
 sqlPercComissao.SQL.Add('WHERE PP_PERCCOMFUNCGRUPO.CLASSEVENDEDORID = :CLASSEVENDEDORID');
 sqlPercComissao.SQL.Add('  AND PP_PERCCOMFUNCGRUPO.TIPOVENDAID = :TIPOVENDAID');
 sqlPercComissao.SQL.Add('  AND PP_PERCCOMFUNCGRUPO.GRUPOID = :GRUPOID');
 sqlPercComissao.Params[0].AsInteger := ClasseVendedorID;
 sqlPercComissao.Params[1].AsInteger := TipoVendaID;
 sqlPercComissao.Params[2].AsInteger := GrupoID;
 sqlPercComissao.Prepared := True;
 sqlPercComissao.Open;

 if sqlPercComissao.IsEmpty then
    raise Exception.Create( 'Ped Vend ID:' + PedVendID +
                            ' Classe Vendedor:' + IntToStr( ClasseVendedorID ) +
                            ' Tipo Venda : ' + IntToStr( TipoVendaID ) +
                            ' Grupo Id   : ' + IntToStr( GrupoID ) +
                            '. Percentual de Pagamento não localizado');

 if sqlPercComissao.FieldByName('VLRPERCENTUAL').AsCurrency = 0 then
    raise Exception.Create( 'Ped Vend ID:' + PedVendID +
                            ' Classe Vendedor:' + IntToStr( ClasseVendedorID ) +
                            ' Tipo Venda : ' + IntToStr( TipoVendaID ) +
                            ' Grupo Id   : ' + IntToStr( GrupoID ) +
                            '. Percentual de Pagamento não localizado');

 Result := sqlPercComissao.FieldByName('VLRPERCENTUAL').AsCurrency;
end;

procedure TSrvAppPP.CalcularPagtoComissao( PedVendID : String; VendedorId, ClasseVendedorID, FilialID : Integer;
 PercVenda, PercComissao : Real; sqlTmp, sqlUpd,  sqlGeral : TSQLQuery;
 NivelVenda : array of string; VlrTxConvFOB, PercEncargos : Real; DtPagtoComissao : TDateTime );
var FimdeSemana, i : Integer;
    VlrBaseComissao, VlrResidualAPagar, VlrBaseResidual, VlrDSR,
    VlrTotalComissao, VlrComissao, PorcVenda : Real;
    Funcionario : Boolean;
    Dt : TDateTime;
    Data : String;
begin
 VlrDSR := 0;
 // Irrf   := 1.5;

 if sqlGeral.FieldByName('ORIGEMVENDAID').AsInteger = 1 then
    begin
     VlrResidualAPagar := sqlGeral.FieldByName('VLRFOB').AsFloat * VlrTxConvFOB;
     VlrBaseComissao   := VlrResidualAPagar;
    end
 else
    begin
     VlrResidualAPagar := sqlGeral.FieldByName('VLRRESIDUALAPAGAR').AsFloat;
     VlrBaseComissao   := sqlGeral.FieldByName('VLRCOMISSAO').AsFloat;
    end;

 Funcionario := ( ( VendedorId >= 50000 ) and ( VendedorId <= 59999 ) );

 if Funcionario then
    begin
     // Verificar representação em porcentagem para pagamento
     PorcVenda := ( PercComissao * PercVenda ) / 100;

     VlrBaseResidual := VlrResidualAPagar * ( PorcVenda / 100 );

     PorcVenda := ( PorcVenda / 100 );

     // Calcular Fim de semana no mês
     FimdeSemana := 0;
     Dt          := StrToDate(  '01/' + IntToStr( Month( DtPagtoComissao ) ) + '/' +
                    IntToStr( Year( DtPagtoComissao ) ) );
     Data        := DateToStr( Dt );

     for i := Day( FirstDayOfMonth( Date ) ) to Day( LastDayOfMonth( Date ) ) do
     begin
      if IsSunday( Dt ) then
         Inc( FimdeSemana );

      Dt := AddDays( Dt, 1 );
     end;

     VlrDSR := ( VlrBaseResidual /
                 // Qtd de Dias no Mês
                 25 ) *
                 // Qtd de Sábados / Domingos e Feriados no Mês
                 ( FimdeSemana + ProcessarFeriado( sqlTmp, DtPagtoComissao, FilialID ) );

     VlrComissao := VlrBaseResidual + VlrDSR;
     VlrTotalComissao :=  VlrComissao + ( VlrComissao * ( PercEncargos / 100 ) );
    end
 else
    begin
     PercEncargos := 0;
     PorcVenda := RetornarComissaoRepr( sqlTmp,
                                        PedVendID,
                                        sqlGeral.FieldByName('ORIGEMVENDAID').AsString,
                                        sqlGeral.FieldByName('TIPOVENDAID').AsString );

     VlrBaseResidual  := VlrResidualAPagar * PorcVenda;

     VlrComissao      := VlrBaseResidual;

     VlrTotalComissao :=  VlrComissao;

{     if ( VlrBaseResidual * Irrf / 100 ) > 10 then
        VlrComissao := VlrBaseResidual - ( VlrBaseResidual * Irrf / 100 )
     else
        VlrComissao := VlrBaseResidual;}
    end;

 // Inserir cálculo na tabela temporária
 sqlUpd.Close;
 sqlUpd.SQL.Clear;
 sqlUpd.SQL.Add('INSERT INTO PP_PROVISAOCOMISSAO ');
 sqlUpd.SQL.Add('   (  PROVISAOCOMISSAOID, VENDEDORID,PEDVENDID, DATAPAGTOCOM, CLASSEVENDEDORID, ');
 sqlUpd.SQL.Add('      VLRBASECOMISSAO, VLRRESIDUALAPAGAR, PORCVENDA, PERCVENDA, ');
 sqlUpd.SQL.Add('      VLRDSR, VLRCOMISSAO, PERCENCARGOS, VLRTOTALCOMISSAO )' );
 sqlUpd.SQL.Add('VALUES (');
 sqlUpd.SQL.Add(  IntToStr( ExecSequencia( 'SQ_PP_PROVCOM_ProvComissaoID', TSQLConnection( FsqlCnn ) ) ) + ', ' );
 sqlUpd.SQL.Add( IntToStr( VendedorId ) +  ',' );
 sqlUpd.SQL.Add( QuotedStr( PedVendID ) +  ',' );
 sqlUpd.SQL.Add( QuotedStr( DateToStr( Date ) ) +  ',' );
 sqlUpd.SQL.Add( IntToStr( ClasseVendedorID ) +  ',' );
 sqlUpd.SQL.Add( SubstituiString( FloatToStr( VlrBaseComissao ), ',', '.' ) + ',' );
 sqlUpd.SQL.Add( SubstituiString( FloatToStr( VlrResidualAPagar ), ',', '.' ) + ',' );
 sqlUpd.SQL.Add( SubstituiString( FloatToStr( PorcVenda ), ',', '.' ) + ',' );
 sqlUpd.SQL.Add( SubstituiString( FloatToStr( PercVenda ), ',', '.' ) + ',' );
 sqlUpd.SQL.Add( SubstituiString( FloatToStr( VlrDSR ), ',', '.' ) + ',' );
 sqlUpd.SQL.Add( SubstituiString( FloatToStr( VlrComissao ), ',', '.' ) + ',');
 sqlUpd.SQL.Add( SubstituiString( FloatToStr( PercEncargos ), ',', '.' ) + ',' );
 sqlUpd.SQL.Add( SubstituiString( FloatToStr( VlrTotalComissao ), ',', '.' ) + ')' );
 sqlUpd.ExecSQL( False );
 sqlUpd.Close;
end;


procedure TSrvAppPP.PagtoComissaoGerFixas( PedVendID, DtVigencia : String;
 TipoVendaID, GrupoID : Integer; sqlPComissao, sqlTmp, sqlUpd, sqlPed,
 sqlGeral : TSQLQuery;  NivelVenda : array of string;
 VlrTxConvFOB, PercEncargos : Real; DtPagtoComissao : TDateTime );
var PercVendaApurado, PercComissaoApurado : Real48;
begin
 // Calcular comissão para Gerência / SubGerência.
 // Comissões Fixas para gerentes
 sqlPComissao.Close;
 sqlPComissao.SQL.Clear;
 sqlPComissao.SQL.Add( SelectRecComissao );
 sqlPComissao.Params[0].Value := DtVigencia;
 sqlPComissao.Prepared := True;
 sqlPComissao.Open;

 while not sqlPComissao.Eof do
 begin
  PercComissaoApurado := LocalizarPercComissao( sqlTmp,
                                                sqlPComissao.FieldByName('CLASSEVENDEDORID').AsInteger,
                                                TipoVendaID,
                                                GrupoID,
                                                PedVendID );

  PercVendaApurado    := 100;

  CalcularPagtoComissao( PedVendID,
                         sqlPComissao.FieldByName('ENTIDADEID').AsInteger,
                         sqlPComissao.FieldByName('CLASSEVENDEDORID').AsInteger,
                         sqlPComissao.FieldByName('FILIALID').AsInteger,
                         PercVendaApurado,
                         PercComissaoApurado,
                         sqlTmp, sqlUpd, sqlGeral,
                         NivelVenda, VlrTxConvFOB, PercEncargos, DtPagtoComissao );

  sqlPComissao.Next;
 end;
end;

procedure TSrvAppPP.ProcessarItensComissao( sqlPed, sqlGeral, sqlTmp, sqlPComissao, sqlUpd : TSQLQuery;
 DtPagtoComissao : TDateTime; VlrTxConvFOB, PercEncargos : Currency );
var i : Integer;
    NivelVenda : array[0..5] of string;
    PercVenda  : array[0..5] of Currency;
    PercVendaApurado, PercComissaoApurado : Real48;
    GrupoID, TipoVendaID : Integer;
    PedVendId : String;
begin
 try
  sqlPed.Close;
  sqlPed.SQL.Clear;
  sqlPed.SQL.Add('SELECT PP_PEDVENDVEND.PEDVENDID,');
  sqlPed.SQL.Add('       PP_PEDVENDVEND.ITEMID,');
  sqlPed.SQL.Add('       EF_ENTIDADE.FILIALID,');
  sqlPed.SQL.Add('       PP_PEDVENDVEND.VENDEDORID,');
  sqlPed.SQL.Add('       PP_PEDVENDVEND.CLASSEVENDEDORID,');
  sqlPed.SQL.Add('       PP_PEDVEND.ORIGEMVENDAID,');
  sqlPed.SQL.Add('       PP_PEDVEND.TIPOVENDAID');
  sqlPed.SQL.Add('  FROM PP_PEDVENDVEND PP_PEDVENDVEND,');
  sqlPed.SQL.Add('       PP_PEDVEND,');
  sqlPed.SQL.Add('       EF_ENTIDADE');
  sqlPed.SQL.Add(' WHERE PP_PEDVENDVEND.PEDVENDID = PP_PEDVEND.PEDVENDID ');
  sqlPed.SQL.Add('   AND EF_ENTIDADE.ENTIDADEID = PP_PEDVENDVEND.VENDEDORID');
  sqlPed.SQL.Add('   AND PP_PEDVEND.PEDVENDID = :PEDVENDID');
  sqlPed.SQL.Add(' ORDER BY ITEMID');
  sqlPed.Params[0].AsString := sqlGeral.FieldByName('PEDVENDID').AsString;
  sqlPed.Prepared := True;
  sqlPed.Open;

  if sqlPed.IsEmpty then
     exit;

  GrupoID     := LocalizarGrupo( sqlTmp, sqlPed.FieldByName('PEDVENDID').AsString );

  PedVendId   := sqlPed.FieldByName('PEDVENDID').AsString;
  TipoVendaID := sqlPed.FieldByName('TIPOVENDAID').AsInteger;

  // Montar chave de pesquisa
  i := 0;
  sqlPed.First;
  while not sqlPed.Eof do
  begin
   NivelVenda[i] := sqlPed.FieldByName('CLASSEVENDEDORID').AsString;
   Inc(i);
   sqlPed.Next;
  end;

  sqlPed.First;
  while not sqlPed.Eof do
  begin
   PercComissaoApurado := 0;
   PercVendaApurado    := 0;

   if ( ( sqlPed.FieldByName('VENDEDORID').AsInteger >= 50000 ) and ( sqlPed.FieldByName('VENDEDORID').AsInteger <= 59999 ) ) then
      begin
       LocalizarClasseNivel( sqlTmp, NivelVenda, PercVenda, sqlPed.FieldByName('PEDVENDID').AsString );

       PercComissaoApurado := LocalizarPercComissao( sqlTmp,
                                                     sqlPed.FieldByName('CLASSEVENDEDORID').AsInteger,
                                                     sqlPed.FieldByName('TIPOVENDAID').AsInteger,
                                                     GrupoID,
                                                     sqlPed.FieldByName('PEDVENDID').AsString );

       PercVendaApurado    := PercVenda[sqlPed.FieldByName('ITEMID').AsInteger-1];
      end;

   // Localizar o Percentual pagto pela Classe do Vendedor
   CalcularPagtoComissao( sqlPed.FieldByName('PEDVENDID').AsString,
                          sqlPed.FieldByName('VENDEDORID').AsInteger,
                          sqlPed.FieldByName('CLASSEVENDEDORID').AsInteger,
                          sqlPed.FieldByName('FILIALID').AsInteger,
                          PercVendaApurado,
                          PercComissaoApurado,
                          sqlTmp, sqlUpd, sqlGeral,
                          NivelVenda, VlrTxConvFOB, PercEncargos, DtPagtoComissao );
   sqlPed.Next;
  end;

  PagtoComissaoGerFixas( PedVendId,
                         DatetimeToStr( sqlGeral.FieldByName('DATAFECHAMENTO').AsDateTime ),
                         TipoVendaID,
                         GrupoID,
                         sqlPComissao,
                         sqlTmp,sqlUpd,sqlPed,sqlGeral,NivelVenda,
                         VlrTxConvFOB, PercEncargos,
                         DtPagtoComissao );
 except
  on E:Exception do
     raise Exception.Create('Ped.Vend ID:' + sqlGeral.FieldByName('PEDVENDID').AsString + ' - Error: ' + E.Message);
 end;
end;

function TSrvAppPP.IProvisaoComissao(DtPagtoIni, DtPagtoFim: TDateTime;
  VlrTxConvFOB, PercEncargos: Currency): OleVariant;
var sqlGeral, sqlPed, sqlTmp, sqlPComissao, sqlUpd : TSQLQuery;
begin
 sqlUpd := TSQLQuery.Create(nil);
 sqlUpd.SQLConnection := TSQLConnection(FSQLcnn);

 sqlGeral := TSQLQuery.Create(nil);
 sqlGeral.SQLConnection := TSQLConnection(FSQLcnn);

 sqlTmp := TSQLQuery.Create(nil);
 sqlTmp.SQLConnection := TSQLConnection(FSQLcnn);

 sqlPComissao := TSQLQuery.Create(nil);
 sqlPComissao.SQLConnection := TSQLConnection(FSQLcnn);

 sqlPed := TSQLQuery.Create(nil);
 sqlPed.SQLConnection := TSQLConnection(FSQLcnn);

 try
  try // Except
   // Inicia transação
   TSQLConnection(FSQLcnn).StartTransaction(TD);

   sqlTmp.Close;
   sqlTmp.SQL.Clear;
   sqlTmp.SQL.Add( 'TRUNCATE TABLE PP_PROVISAOCOMISSAO' );
   sqlTmp.Prepared := True;
   sqlTmp.ExecSQL( True );

   sqlGeral.Close;
   sqlGeral.SQL.Clear;
   sqlGeral.SQL.Add( SelectProvComissao );
   sqlGeral.Prepared := True;
   sqlGeral.Open;

   while not sqlGeral.Eof do
   begin
    if sqlGeral.FieldByName('ORIGEMVENDAID').AsInteger = 1 then
       begin
        if ( sqlGeral.FieldByName('DATAFECHAMENTO').AsDateTime < DtPagtoIni ) or
           ( sqlGeral.FieldByName('DATAFECHAMENTO').AsDateTime > DtPagtoFim ) then
           begin
            sqlGeral.Next;
            Continue;
           end;
       end;

    ProcessarItensComissao( sqlPed, sqlGeral, sqlTmp, sqlPComissao, sqlUpd, DtPagtoFim, VlrTxConvFOB, PercEncargos );

    sqlGeral.Next;
   end;

   sqlGeral.Close;

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
  FreeAndNil( sqlUpd );
  FreeAndNil( sqlGeral );
  FreeAndNil( sqlTmp );
  FreeAndNil( sqlPComissao );
  FreeAndNil( sqlPed );
 end;
end;

initialization
 FSrvAppPP := TComponentFactory.Create(ComServer, TSrvAppPP,
    Class_SrvAppPP, ciInternal, tmApartment);
end.
