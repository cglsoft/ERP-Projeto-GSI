unit u_dmPP;

interface

uses
  SysUtils, Classes, DB, DBClient, MConnect, Dialogs, Controls;

type MsgPedido = ( Atencao, Bloquear );

type
  TdmPP = class(TDataModule)
    shdcnnPP: TSharedConnection;
    cdsCatalogo: TClientDataSet;
    cdsCatalogoMODELOID: TStringField;
    cdsCatalogoDESCRICAOPORTUGUES: TStringField;
    cdsCatalogoDESCRICAOINGLES: TStringField;
    cdsCatalogoCOMENTARIO: TStringField;
    cdsCatalogoFORNECEDORID: TBCDField;
    cdsCatalogoL_NOME_FORNECEDOR: TStringField;
    cdsCatalogoGRUPOID: TBCDField;
    cdsCatalogoTIPO: TStringField;
    cdsCatalogoCUSTOHORAID: TBCDField;
    cdsCatalogoREGANVISAID: TStringField;
    cdsCatalogoIMAGEM: TBlobField;
    cdsCatalogoUSUARIO: TStringField;
    cdsEquipamento: TClientDataSet;
    cdsValidade: TClientDataSet;
    cdsProposta: TClientDataSet;
    cdsPrazo: TClientDataSet;
    cdsCondPagtoProp: TClientDataSet;
    cdsPropEquipamento: TClientDataSet;
    cdsObsProp: TClientDataSet;
    cdsInstalacao: TClientDataSet;
    cdsAssistTec: TClientDataSet;
    cdsGarantia: TClientDataSet;
    cdsCartaApresent: TClientDataSet;
    cdsOpcional: TClientDataSet;
    cdsBonificacao: TClientDataSet;
    cdsDependencia: TClientDataSet;
    cdsComposicao: TClientDataSet;
    dsCatalogo: TDataSource;
    dsEquipamento: TDataSource;
    dsComposicao: TDataSource;
    dsDependencia: TDataSource;
    dsOpcional: TDataSource;
    cdsBonificacaoBONIFICACAOID: TBCDField;
    cdsBonificacaoDESCRICAO: TStringField;
    cdsBonificacaoUSUARIO: TStringField;
    dsBonificacao: TDataSource;
    cdsPrazoPRAZOID: TBCDField;
    cdsPrazoDESCRICAO: TStringField;
    cdsPrazoUSUARIO: TStringField;
    cdsValidadeVALIDADEID: TBCDField;
    cdsValidadeDESCRICAO: TStringField;
    cdsValidadeUSUARIO: TStringField;
    dsCartaApresent: TDataSource;
    dsCondPagtoProp: TDataSource;
    dsObsProp: TDataSource;
    dsGarantia: TDataSource;
    dsAssistTec: TDataSource;
    dsInstalacao: TDataSource;
    dsPrazo: TDataSource;
    dsValidade: TDataSource;
    dsProposta: TDataSource;
    cdsPropTradeIn: TClientDataSet;
    cdsPropVendedor: TClientDataSet;
    cdsPropComposicao: TClientDataSet;
    cdsPropBonificacao: TClientDataSet;
    dsPropEquipamento: TDataSource;
    dsPropComposicao: TDataSource;
    dsPropBonificacao: TDataSource;
    dsPropVendedor: TDataSource;
    dsPropTradeIn: TDataSource;
    cdsEquipamentoMODELOEQUIPAMENTOID: TStringField;
    cdsEquipamentoL_DESCRICAOPORTUGUES: TStringField;
    cdsEquipamentoL_DESCRICAOINGLES: TStringField;
    cdsEquipamentoL_COMENTARIO: TStringField;
    cdsEquipamentoL_GRUPOID: TBCDField;
    cdsEquipamentoL_DESCR_GRUPO: TStringField;
    cdsEquipamentoREVISAOID: TBCDField;
    cdsEquipamentoDATAINCLUSAO: TSQLTimeStampField;
    cdsEquipamentoDATAALTERACAO: TSQLTimeStampField;
    cdsEquipamentoDOC: TStringField;
    cdsEquipamentoPRAZO: TSQLTimeStampField;
    cdsEquipamentoDISPONIVEL: TBCDField;
    cdsEquipamentoVLRFOB: TBCDField;
    cdsEquipamentoVLRREVENDA: TBCDField;
    cdsEquipamentoVLRNET: TBCDField;
    cdsEquipamentoUSUARIO: TStringField;
    cdsEquipamentosqldtsComposicao: TDataSetField;
    cdsEquipamentosqldtsOpcional: TDataSetField;
    cdsComposicaoMODELOEQUIPAMENTOID: TStringField;
    cdsComposicaoMODELOCOMPONENTEID: TStringField;
    cdsComposicaoL_DESCRICAOPORTUGUES: TStringField;
    cdsComposicaoL_DESCRICAOINGLES: TStringField;
    cdsComposicaoL_GRUPOID: TBCDField;
    cdsComposicaoL_DESCR_GRUPO: TStringField;
    cdsComposicaoPRODUTOID: TBCDField;
    cdsComposicaoL_DESCRICAO_PORT: TStringField;
    cdsComposicaoL_DESCRICAO_INGLES: TStringField;
    cdsComposicaoL_ESTOQUEFISICO: TBCDField;
    cdsComposicaoQUANTIDADE: TBCDField;
    cdsComposicaoVLRUNITARIOFOB: TBCDField;
    cdsComposicaoVLRTOTALFOB: TBCDField;
    cdsComposicaoVLRUNITARIOREVENDA: TBCDField;
    cdsComposicaoVLRTOTALREVENDA: TBCDField;
    cdsComposicaoVLRUNITARIONET: TBCDField;
    cdsComposicaoVLRTOTALNET: TBCDField;
    cdsComposicaoUSUARIO: TStringField;
    cdsDependenciaMODELOEQUIPAMENTOID: TStringField;
    cdsDependenciaMODELOCOMPONENTEID: TStringField;
    cdsDependenciaMODELODEPENDENCIAID: TStringField;
    cdsDependenciaL_DESCRICAOPORTUGUES: TStringField;
    cdsDependenciaL_DESCRICAOINGLES: TStringField;
    cdsDependenciaL_COMENTARIO: TStringField;
    cdsDependenciaL_GRUPOID: TBCDField;
    cdsDependenciaL_DESCR_GRUPO: TStringField;
    cdsDependenciaPRODUTOID: TBCDField;
    cdsDependenciaL_DESCRICAO_PORT: TStringField;
    cdsDependenciaL_DESCRICAO_INGLES: TStringField;
    cdsDependenciaL_ESTOQUEFISICO: TBCDField;
    cdsDependenciaQUANTIDADE: TBCDField;
    cdsDependenciaVLRUNITARIOFOB: TBCDField;
    cdsDependenciaVLRTOTALFOB: TBCDField;
    cdsDependenciaVLRUNITARIOREVENDA: TBCDField;
    cdsDependenciaVLRTOTALREVENDA: TBCDField;
    cdsDependenciaVLRUNITARIONET: TBCDField;
    cdsDependenciaVLRTOTALNET: TBCDField;
    cdsDependenciaUSUARIO: TStringField;
    cdsOpcionalMODELOEQUIPAMENTOID: TStringField;
    cdsOpcionalMODELOCOMPONENTEID: TStringField;
    cdsOpcionalL_DESCRICAOPORTUGUES: TStringField;
    cdsOpcionalL_DESCRICAOINGLES: TStringField;
    cdsOpcionalL_GRUPOID: TBCDField;
    cdsOpcionalL_DESCR_GRUPO: TStringField;
    cdsOpcionalPRODUTOID: TBCDField;
    cdsOpcionalL_DESCRICAO_PORT: TStringField;
    cdsOpcionalL_DESCRICAO_INGLES: TStringField;
    cdsOpcionalL_ESTOQUEFISICO: TBCDField;
    cdsOpcionalQUANTIDADE: TBCDField;
    cdsOpcionalVLRUNITARIOFOB: TBCDField;
    cdsOpcionalVLRTOTALFOB: TBCDField;
    cdsOpcionalVLRUNITARIOREVENDA: TBCDField;
    cdsOpcionalVLRTOTALREVENDA: TBCDField;
    cdsOpcionalVLRUNITARIONET: TBCDField;
    cdsOpcionalVLRTOTALNET: TBCDField;
    cdsOpcionalUSUARIO: TStringField;
    cdsEquipamentoL_OPCIONAL: TIntegerField;
    cdsPropDependencia: TClientDataSet;
    dsPropDependencia: TDataSource;
    cdsPropOpcional: TClientDataSet;
    dsPropOpcional: TDataSource;
    cdsPropostaPROPOSTAID: TBCDField;
    cdsPropostaFILIALID: TBCDField;
    cdsPropostaL_FILIAL: TStringField;
    cdsPropostaDATAPROPOSTA: TSQLTimeStampField;
    cdsPropostaDATAVALIDADE: TSQLTimeStampField;
    cdsPropostaLIBERACAO: TBCDField;
    cdsPropostaLIBNOME: TStringField;
    cdsPropostaLIBDATAHORA: TSQLTimeStampField;
    cdsPropostaTRADEIN: TBCDField;
    cdsPropostaANDAMENTOPROPOSTA: TStringField;
    cdsPropostaCPFCNPJ: TStringField;
    cdsPropostaNOMECLIENTE: TStringField;
    cdsPropostaREPRESENTSOCIO: TStringField;
    cdsPropostaOBSERVACAO: TStringField;
    cdsPropostaCARTAAPRESENTID: TBCDField;
    cdsPropostaCONDPAGTOPROPID: TBCDField;
    cdsPropostaL_CONDPAGTOID: TBCDField;
    cdsPropostaL_DESCR_CONDPGTO: TStringField;
    cdsPropostaOBSPROPID: TBCDField;
    cdsPropostaGARANTIAID: TBCDField;
    cdsPropostaASSISTTECID: TBCDField;
    cdsPropostaINSTALACAOID: TBCDField;
    cdsPropostaPRAZOID: TBCDField;
    cdsPropostaL_DESCR_PRAZO: TStringField;
    cdsPropostaVALIDADEID: TBCDField;
    cdsPropostaL_DESCR_VALID: TStringField;
    cdsPropostaCEPID: TBCDField;
    cdsPropostaNUMERO: TStringField;
    cdsPropostaCOMPLEMENTO: TStringField;
    cdsPropostaENDERECO: TStringField;
    cdsPropostaBAIRRO: TStringField;
    cdsPropostaCIDADE: TStringField;
    cdsPropostaSIGLAUFID: TStringField;
    cdsPropostaPAIS: TStringField;
    cdsPropostaCONTATO: TStringField;
    cdsPropostaTELEFONE: TStringField;
    cdsPropostaTELEFONE2: TStringField;
    cdsPropostaCELULAR: TStringField;
    cdsPropostaCELULAR2: TStringField;
    cdsPropostaFAX: TStringField;
    cdsPropostaEMAIL: TStringField;
    cdsPropostaPAGINA: TStringField;
    cdsPropostaVLRTOTALFOB: TBCDField;
    cdsPropostaVLRTOTALREVENDA: TBCDField;
    cdsPropostaVLRTOTALNET: TBCDField;
    cdsPropostaVLRTOTALDESCONTO: TBCDField;
    cdsPropostaVLRTOTALTRADEIN: TBCDField;
    cdsPropostaVLRLIQUIDOPROPOSTA: TBCDField;
    cdsPropostaUSUARIO: TStringField;
    cdsPropostasqldtsPropVendedor: TDataSetField;
    cdsPropostasqldtsPropTradeIn: TDataSetField;
    cdsPropostasqldtsPropBonificacao: TDataSetField;
    cdsPropostasqldtsPropEquipamento: TDataSetField;
    cdsPropEquipamentoPROPOSTAID: TBCDField;
    cdsPropEquipamentoMODELOEQUIPAMENTOID: TStringField;
    cdsPropEquipamentoITEMID: TBCDField;
    cdsPropEquipamentoL_DESCR_PORT: TStringField;
    cdsPropEquipamentoL_DESCR_INGLES: TStringField;
    cdsPropEquipamentoL_GRUPOID: TBCDField;
    cdsPropEquipamentoQUANTIDADE: TBCDField;
    cdsPropEquipamentoVLRUNITARIOREVENDA: TBCDField;
    cdsPropEquipamentoVLRTOTALREVENDA: TBCDField;
    cdsPropEquipamentoPORCDESCONTO: TBCDField;
    cdsPropEquipamentoVLRDESCONTO: TBCDField;
    cdsPropEquipamentoVLRLIQUIDOREVENDA: TBCDField;
    cdsPropEquipamentoVLRUNITARIOFOB: TBCDField;
    cdsPropEquipamentoVLRTOTALFOB: TBCDField;
    cdsPropEquipamentoVLRUNITARIONET: TBCDField;
    cdsPropEquipamentoVLRTOTALNET: TBCDField;
    cdsPropEquipamentoOBSERVACAO: TStringField;
    cdsPropEquipamentoREVISAOID: TBCDField;
    cdsPropEquipamentoUSUARIO: TStringField;
    cdsPropEquipamentosqldtsPropOpcional: TDataSetField;
    cdsPropEquipamentosqldtsPropComposicao: TDataSetField;
    cdsPropComposicaoPROPOSTAID: TBCDField;
    cdsPropComposicaoMODELOEQUIPAMENTOID: TStringField;
    cdsPropComposicaoMODELOCOMPONENTEID: TStringField;
    cdsPropComposicaoITEMID: TBCDField;
    cdsPropComposicaoL_DESCRPORTUGUES: TStringField;
    cdsPropComposicaoL_DESCRINGLES: TStringField;
    cdsPropComposicaoL_GRUPOID: TBCDField;
    cdsPropComposicaoL_DESCR_GRUPO: TStringField;
    cdsPropComposicaoQUANTIDADE: TBCDField;
    cdsPropComposicaoVLRUNITARIOREVENDA: TBCDField;
    cdsPropComposicaoVLRTOTALREVENDA: TBCDField;
    cdsPropComposicaoVLRUNITARIOFOB: TBCDField;
    cdsPropComposicaoVLRTOTALFOB: TBCDField;
    cdsPropComposicaoVLRUNITARIONET: TBCDField;
    cdsPropComposicaoVLRTOTALNET: TBCDField;
    cdsPropComposicaoUSUARIO: TStringField;
    cdsPropDependenciaPROPOSTAID: TBCDField;
    cdsPropDependenciaMODELOEQUIPAMENTOID: TStringField;
    cdsPropDependenciaMODELOCOMPONENTEID: TStringField;
    cdsPropDependenciaMODELODEPENDENCIAID: TStringField;
    cdsPropDependenciaITEMID: TBCDField;
    cdsPropDependenciaL_DESCRPORTUGUES: TStringField;
    cdsPropDependenciaL_DESCRINGLES: TStringField;
    cdsPropDependenciaL_GRUPOID: TBCDField;
    cdsPropDependenciaL_DESCR_GRUPO: TStringField;
    cdsPropDependenciaQUANTIDADE: TBCDField;
    cdsPropDependenciaVLRUNITARIOREVENDA: TBCDField;
    cdsPropDependenciaVLRTOTALREVENDA: TBCDField;
    cdsPropDependenciaVLRUNITARIOFOB: TBCDField;
    cdsPropDependenciaVLRTOTALFOB: TBCDField;
    cdsPropDependenciaVLRUNITARIONET: TBCDField;
    cdsPropDependenciaVLRTOTALNET: TBCDField;
    cdsPropDependenciaUSUARIO: TStringField;
    cdsPropOpcionalPROPOSTAID: TBCDField;
    cdsPropOpcionalMODELOEQUIPAMENTOID: TStringField;
    cdsPropOpcionalMODELOCOMPONENTEID: TStringField;
    cdsPropOpcionalITEMID: TBCDField;
    cdsPropOpcionalL_DESCRPORTUGUES: TStringField;
    cdsPropOpcionalL_DESCRINGLES: TStringField;
    cdsPropOpcionalL_GRUPOID: TBCDField;
    cdsPropOpcionalL_DESCR_GRUPO: TStringField;
    cdsPropOpcionalQUANTIDADE: TBCDField;
    cdsPropOpcionalVLRUNITARIOREVENDA: TBCDField;
    cdsPropOpcionalVLRTOTALREVENDA: TBCDField;
    cdsPropOpcionalVLRUNITARIOFOB: TBCDField;
    cdsPropOpcionalVLRTOTALFOB: TBCDField;
    cdsPropOpcionalVLRUNITARIONET: TBCDField;
    cdsPropOpcionalVLRTOTALNET: TBCDField;
    cdsPropOpcionalUSUARIO: TStringField;
    cdsPropBonificacaoPROPOSTAID: TBCDField;
    cdsPropBonificacaoITEMID: TBCDField;
    cdsPropBonificacaoBONIFICACAOID: TBCDField;
    cdsPropBonificacaoL_DESCR_BONIF: TStringField;
    cdsPropBonificacaoDESCRICAO: TStringField;
    cdsPropBonificacaoVLRBONIFICACAO: TBCDField;
    cdsPropBonificacaoUSUARIO: TStringField;
    cdsPropVendedorPROPOSTAID: TBCDField;
    cdsPropVendedorITEMID: TBCDField;
    cdsPropVendedorVENDEDORID: TBCDField;
    cdsPropVendedorL_NOME_VENDEDOR: TStringField;
    cdsPropVendedorL_NOME_FANTASIA: TStringField;
    cdsPropVendedorFUNCAOVENDAID: TBCDField;
    cdsPropVendedorL_FUNCAOVENDA: TStringField;
    cdsPropVendedorUSUARIO: TStringField;
    cdsPropostaL_CARTA_APRESENT: TStringField;
    cdsOpcionalsqldtsDependencia: TDataSetField;
    cdsPropOpcionalsqldtsPropDependencia: TDataSetField;
    cdsEquipamentoDESCRICAO: TMemoField;
    cdsCartaApresentCARTAAPRESENTID: TBCDField;
    cdsCartaApresentDESCRRESUMIDA: TStringField;
    cdsCartaApresentCARTA: TMemoField;
    cdsCartaApresentUSUARIO: TStringField;
    cdsObsPropOBSPROPID: TBCDField;
    cdsObsPropDESCRICAO: TMemoField;
    cdsObsPropUSUARIO: TStringField;
    cdsGarantiaGARANTIAID: TBCDField;
    cdsGarantiaDESCRICAO: TMemoField;
    cdsGarantiaUSUARIO: TStringField;
    cdsAssistTecASSISTTECID: TBCDField;
    cdsAssistTecDESCRICAO: TMemoField;
    cdsAssistTecUSUARIO: TStringField;
    cdsInstalacaoINSTALACAOID: TBCDField;
    cdsInstalacaoDESCRICAO: TMemoField;
    cdsInstalacaoUSUARIO: TStringField;
    cdsPropostaL_CARTA: TMemoField;
    cdsPropostaL_DESCR_GARANTIA: TMemoField;
    cdsPropostaL_DESCR_ASSISTTEC: TMemoField;
    cdsPropostaL_DESCR_INSTALACAO: TMemoField;
    cdsPropostaL_DESCR_OBS: TMemoField;
    cdsEquipamentoL_IMAGEM: TBlobField;
    cdsPropEquipamentoL_DESCRICAO_EQUIPAMENTO: TBlobField;
    cdsPropostaDESCRICAOCONDPAGTO: TBlobField;
    cdsPropTradeInPROPOSTAID: TBCDField;
    cdsPropTradeInITEMID: TBCDField;
    cdsPropTradeInDESCRICAO: TBlobField;
    cdsPropTradeInDESCRICAOIMPRESSA: TBlobField;
    cdsPropTradeInVLRTRADEIN: TBCDField;
    cdsPropTradeInUSUARIO: TStringField;
    cdsPropDependenciaT_REVENDA: TAggregateField;
    cdsCatalogoL_DESCRICAOCUSTOHORA: TStringField;
    cdsCatalogoL_VLRHORATRAB: TBCDField;
    cdsCatalogoL_VLRHORATRANSP: TBCDField;
    cdsCatalogoL_VLRHORAESPERA: TBCDField;
    cdsCatalogoL_VLRHORAOUTROS: TBCDField;
    cdsCatalogoDESCRICAOANVISA: TStringField;
    cdsComposicaoEMPRESAID: TBCDField;
    cdsOpcionalEMPRESAID: TBCDField;
    cdsDependenciaEMPRESAID: TBCDField;
    cdsOpcionalsqldtsIncompativel: TDataSetField;
    cdsOpcionalsqldtsAcessorio: TDataSetField;
    cdsAcessorio: TClientDataSet;
    dsAcessorio: TDataSource;
    cdsAcessorioMODELOEQUIPAMENTOID: TStringField;
    cdsAcessorioMODELOCOMPONENTEID: TStringField;
    cdsAcessorioMODELOACESSORIOID: TStringField;
    cdsAcessorioL_DESCRICAOPORTUGUES: TStringField;
    cdsAcessorioL_DESCRICAOINGLES: TStringField;
    cdsAcessorioL_COMENTARIO: TStringField;
    cdsAcessorioL_GRUPOID: TBCDField;
    cdsAcessorioL_DESCR_GRUPO: TStringField;
    cdsAcessorioEMPRESAID: TBCDField;
    cdsAcessorioPRODUTOID: TBCDField;
    cdsAcessorioL_DESCRICAO_PORT: TStringField;
    cdsAcessorioL_DESCRICAO_INGLES: TStringField;
    cdsAcessorioL_ESTOQUEFISICO: TBCDField;
    cdsAcessorioQUANTIDADE: TBCDField;
    cdsAcessorioVLRUNITARIOFOB: TBCDField;
    cdsAcessorioVLRTOTALFOB: TBCDField;
    cdsAcessorioVLRUNITARIOREVENDA: TBCDField;
    cdsAcessorioVLRTOTALREVENDA: TBCDField;
    cdsAcessorioVLRUNITARIONET: TBCDField;
    cdsAcessorioVLRTOTALNET: TBCDField;
    cdsAcessorioUSUARIO: TStringField;
    cdsIncompativel: TClientDataSet;
    dsIncompativel: TDataSource;
    cdsIncompativelMODELOEQUIPAMENTOID: TStringField;
    cdsIncompativelMODELOCOMPONENTEID: TStringField;
    cdsIncompativelMODELOINCOMPATIVELID: TStringField;
    cdsIncompativelL_DESCRICAOPORTUGUES: TStringField;
    cdsIncompativelL_DESCRICAOINGLES: TStringField;
    cdsIncompativelL_COMENTARIO: TStringField;
    cdsIncompativelL_GRUPOID: TBCDField;
    cdsIncompativelL_DESCR_GRUPO: TStringField;
    cdsIncompativelEMPRESAID: TBCDField;
    cdsIncompativelPRODUTOID: TBCDField;
    cdsIncompativelL_DESCRICAO_PORT: TStringField;
    cdsIncompativelL_DESCRICAO_INGLES: TStringField;
    cdsIncompativelL_ESTOQUEFISICO: TBCDField;
    cdsIncompativelQUANTIDADE: TBCDField;
    cdsIncompativelVLRUNITARIOFOB: TBCDField;
    cdsIncompativelVLRTOTALFOB: TBCDField;
    cdsIncompativelVLRUNITARIOREVENDA: TBCDField;
    cdsIncompativelVLRTOTALREVENDA: TBCDField;
    cdsIncompativelVLRUNITARIONET: TBCDField;
    cdsIncompativelVLRTOTALNET: TBCDField;
    cdsIncompativelUSUARIO: TStringField;
    cdsOrigemVenda: TClientDataSet;
    dsOrigemVenda: TDataSource;
    cdsTipoVenda: TClientDataSet;
    dsTipoVenda: TDataSource;
    cdsClasseVendedor: TClientDataSet;
    dsClasseVendedor: TDataSource;
    cdsClasseVendTipoVenda: TClientDataSet;
    dsClasseVendTipoVenda: TDataSource;
    cdsClasseVendRegiao: TClientDataSet;
    dsClasseVendRegiao: TDataSource;
    cdsTabFinanceira: TClientDataSet;
    dsTabFinanceira: TDataSource;
    cdsPedVend: TClientDataSet;
    dsPedVend: TDataSource;
    cdsPedVendItem: TClientDataSet;
    dsPedVendItem: TDataSource;
    cdsPedVendVend: TClientDataSet;
    dsPedVendVend: TDataSource;
    cdsPedVendBonif: TClientDataSet;
    dsPedVendBonif: TDataSource;
    cdsPedVendInterv: TClientDataSet;
    dsPedVendInterv: TDataSource;
    cdsHistFechComissao: TClientDataSet;
    dsHistFechComissao: TDataSource;
    cdsAnaliseVenda: TClientDataSet;
    dsAnaliseVenda: TDataSource;
    cdsAnaliseVendaItem: TClientDataSet;
    dsAnaliseVendaItem: TDataSource;
    cdsBasePagto: TClientDataSet;
    dsBasePagto: TDataSource;
    cdsProcessoImp: TClientDataSet;
    dsProcessoImp: TDataSource;
    cdsProcessoImpParc: TClientDataSet;
    dsProcessoImpParc: TDataSource;
    cdsOrigemVendaORIGEMVENDAID: TBCDField;
    cdsOrigemVendaDESCRICAO: TStringField;
    cdsOrigemVendaUSUARIO: TStringField;
    cdsTipoVendaTIPOVENDAID: TBCDField;
    cdsTipoVendaDESCRICAO: TStringField;
    cdsTipoVendaUSUARIO: TStringField;
    cdsClasseVendedorCLASSEVENDEDORID: TBCDField;
    cdsClasseVendedorDESCRICAO: TStringField;
    cdsClasseVendedorUSUARIO: TStringField;
    cdsClasseVendedorsqldtsClasseVendaRegiao: TDataSetField;
    cdsClasseVendedorsqldtsClasseVendTipoVenda: TDataSetField;
    cdsClasseVendTipoVendaCLASSEVENDEDORID: TBCDField;
    cdsClasseVendTipoVendaTIPOVENDAID: TBCDField;
    cdsClasseVendTipoVendaPERCENTUAL: TBCDField;
    cdsClasseVendTipoVendaL_DESCRICAOTIPOVENDA: TStringField;
    cdsClasseVendTipoVendaUSUARIO: TStringField;
    cdsClasseVendRegiaoCLASSEVENDEDORID: TBCDField;
    cdsClasseVendRegiaoCEPID: TBCDField;
    cdsClasseVendRegiaoL_NOMECIDADE: TStringField;
    cdsClasseVendRegiaoL_BAIRROCEP: TBCDField;
    cdsClasseVendRegiaoL_NOMEBAIRRO: TStringField;
    cdsClasseVendRegiaoL_SIGLAUFID: TStringField;
    cdsClasseVendRegiaoL_SIGLAPAISID: TStringField;
    cdsClasseVendRegiaoUSUARIO: TStringField;
    cdsTabFinanceiraTABFINANCEIRAID: TBCDField;
    cdsTabFinanceiraDESCRICAO: TStringField;
    cdsTabFinanceiraUSUARIO: TStringField;
    cdsPedVendVendPEDVENDID: TStringField;
    cdsPedVendVendITEMID: TBCDField;
    cdsPedVendVendVENDEDORID: TBCDField;
    cdsPedVendVendL_DESCR_CLASSEVENDEDOR: TStringField;
    cdsPedVendVendCLASSEVENDEDORID: TBCDField;
    cdsPedVendVendPORCENTAGEM: TFMTBCDField;
    cdsPedVendVendUSUARIO: TStringField;
    cdsPedVendBonifPEDVENDID: TStringField;
    cdsPedVendBonifITEMID: TBCDField;
    cdsPedVendBonifBONIFICACAOID: TBCDField;
    cdsPedVendBonifL_DESCR_BONIFICACAO: TStringField;
    cdsPedVendBonifDESCRICAO: TStringField;
    cdsPedVendBonifVLRBONIFICACAO: TBCDField;
    cdsPedVendBonifUSUARIO: TStringField;
    cdsPedVendIntervPEDVENDID: TStringField;
    cdsPedVendIntervITEMID: TBCDField;
    cdsPedVendIntervCONDINTERVID: TBCDField;
    cdsPedVendIntervL_DESCRICAOPAGTO: TStringField;
    cdsPedVendIntervDESCRICAO: TStringField;
    cdsPedVendIntervUSUARIO: TStringField;
    cdsHistFechComissaoANOMESID: TStringField;
    cdsHistFechComissaoMOTIVO: TStringField;
    cdsHistFechComissaoUSUARIO: TStringField;
    cdsProcessoImpPEDVENDID: TStringField;
    cdsProcessoImpDATAPROCESSO: TSQLTimeStampField;
    cdsProcessoImpDATAPDI: TSQLTimeStampField;
    cdsProcessoImpDATAPEDIDO: TSQLTimeStampField;
    cdsProcessoImpCLIENTEID: TBCDField;
    cdsProcessoImpL_CPFCNPJ: TStringField;
    cdsProcessoImpL_FISICAJURIDICA: TStringField;
    cdsProcessoImpL_NOME: TStringField;
    cdsProcessoImpL_CIDADE: TStringField;
    cdsProcessoImpL_SIGLAUFID: TStringField;
    cdsProcessoImpOBSERVACAOVENDA: TMemoField;
    cdsProcessoImpOBSERVACAOPROCESSO: TMemoField;
    cdsProcessoImpSOLICESQUEMA: TBCDField;
    cdsProcessoImpSOLICNOTAPROMISSORIA: TBCDField;
    cdsProcessoImpEMBDATAPREVISAO: TSQLTimeStampField;
    cdsProcessoImpEMBDATA: TSQLTimeStampField;
    cdsProcessoImpEMBDATABL: TSQLTimeStampField;
    cdsProcessoImpEMBNUMCONHEC: TStringField;
    cdsProcessoImpEMBPESOLIQUIDO: TBCDField;
    cdsProcessoImpEMBNOMENAVIO: TStringField;
    cdsProcessoImpEMBPESOBRUTO: TBCDField;
    cdsProcessoImpEMBSINALFOB: TBCDField;
    cdsProcessoImpEMBDATAPAGTOSINAL: TSQLTimeStampField;
    cdsProcessoImpEMBFOBAVISTA: TBCDField;
    cdsProcessoImpEMBDATAPAGTOFOBV: TSQLTimeStampField;
    cdsProcessoImpEMBDATASOLSEGINT: TSQLTimeStampField;
    cdsProcessoImpEMBDATAAPOLICE: TSQLTimeStampField;
    cdsProcessoImpEMBSEGINT: TBCDField;
    cdsProcessoImpEMBDESPACHANTE: TStringField;
    cdsProcessoImpEMBVLRDESEMBARACO: TBCDField;
    cdsProcessoImpEMBDATACHEGAPAR: TSQLTimeStampField;
    cdsProcessoImpEMBDATALIBALFANDEGA: TSQLTimeStampField;
    cdsProcessoImpEMBDATALIBTMB: TSQLTimeStampField;
    cdsProcessoImpEMBOBS: TMemoField;
    cdsProcessoImpEMBDIID: TStringField;
    cdsProcessoImpEMBDATADI: TSQLTimeStampField;
    cdsProcessoImpEMBFATINVOICEID: TStringField;
    cdsProcessoImpEMBJAPAOID: TStringField;
    cdsProcessoImpEMBDATAFATURA: TSQLTimeStampField;
    cdsProcessoImpROFRESPONSAVEL: TStringField;
    cdsProcessoImpROFDISPENSA: TBCDField;
    cdsProcessoImpROFDATATRANSMISSAO: TSQLTimeStampField;
    cdsProcessoImpROFDATAAPROVACAO: TSQLTimeStampField;
    cdsProcessoImpROFID: TStringField;
    cdsProcessoImpROFOBSEXIGENCIA: TMemoField;
    cdsProcessoImpPPDATASOLICITACAO: TSQLTimeStampField;
    cdsProcessoImpPPDATAENVIOCLIENTE: TSQLTimeStampField;
    cdsProcessoImpPPDATAAPROVACAO: TSQLTimeStampField;
    cdsProcessoImpPPOBS: TMemoField;
    cdsProcessoImpLIOBSEXIGENCIA: TMemoField;
    cdsProcessoImpPODATATRANSMISSAOEMAIL: TSQLTimeStampField;
    cdsProcessoImpPONXID: TStringField;
    cdsProcessoImpPODATAENVIOFORM: TSQLTimeStampField;
    cdsProcessoImpPOTRANSMISSAO1: TSQLTimeStampField;
    cdsProcessoImpPOTRANSMISSAO2: TSQLTimeStampField;
    cdsProcessoImpPOTRANSMISSAO3: TSQLTimeStampField;
    cdsProcessoImpPOTRANSMISSAO5: TSQLTimeStampField;
    cdsProcessoImpPOTRANSMISSAO6: TSQLTimeStampField;
    cdsProcessoImpPONUMFATPROFORMA: TStringField;
    cdsProcessoImpPODATAFATPROFORMA: TSQLTimeStampField;
    cdsProcessoImpEPDISPENSA: TBCDField;
    cdsProcessoImpEPDATATRANSMISSAO: TSQLTimeStampField;
    cdsProcessoImpEPDATAAPROVACAO: TSQLTimeStampField;
    cdsProcessoImpEPOBS: TMemoField;
    cdsProcessoImpTIDATA: TSQLTimeStampField;
    cdsProcessoImpTICLIENTEID: TBCDField;
    cdsProcessoImpTIOBS: TMemoField;
    cdsProcessoImpDOCDATARECDOC: TSQLTimeStampField;
    cdsProcessoImpDOCPEDCONFCONTRATO: TSQLTimeStampField;
    cdsProcessoImpDOCRECCONTRATO: TSQLTimeStampField;
    cdsProcessoImpDOCOBS: TMemoField;
    cdsProcessoImpDOCNUMCONTRATO: TStringField;
    cdsProcessoImpDOCDATACONTRATO: TSQLTimeStampField;
    cdsProcessoImpLCDISPENSA: TBCDField;
    cdsProcessoImpLCNUMERO: TStringField;
    cdsProcessoImpLCDATAEMISSAOID: TSQLTimeStampField;
    cdsProcessoImpLCDATAVALIDADE: TSQLTimeStampField;
    cdsProcessoImpLCULTDATAEMBARQUE: TSQLTimeStampField;
    cdsProcessoImpLCBANCOEMISSOR: TStringField;
    cdsProcessoImpLCPRACA: TBCDField;
    cdsProcessoImpLCINSTITUICAO: TBCDField;
    cdsProcessoImpCBDISPENSA: TBCDField;
    cdsProcessoImpCBNUMERO: TStringField;
    cdsProcessoImpCBDATA: TSQLTimeStampField;
    cdsProcessoImpCANCELADO: TBCDField;
    cdsProcessoImpDATACANCELAMENTO: TSQLTimeStampField;
    cdsProcessoImpOBSCANCELADO: TMemoField;
    cdsProcessoImpUSUARIO: TStringField;
    cdsProcessoImpParcPEDVENDID: TStringField;
    cdsProcessoImpParcPARCELAID: TBCDField;
    cdsProcessoImpParcQTDPARCELAS: TBCDField;
    cdsProcessoImpParcDATAVENCIMENTO: TSQLTimeStampField;
    cdsProcessoImpParcVLRPARCELA: TBCDField;
    cdsProcessoImpParcLIBOR: TBCDField;
    cdsProcessoImpParcSPREED: TBCDField;
    cdsProcessoImpParcVLRJUROS: TBCDField;
    cdsProcessoImpParcPOSICAOJUROS: TStringField;
    cdsProcessoImpParcVLRTOTAL: TBCDField;
    cdsProcessoImpParcJUROSMORA: TBCDField;
    cdsProcessoImpParcDATAPAGAMENTO: TSQLTimeStampField;
    cdsProcessoImpParcMOTIVOATRASO: TStringField;
    cdsProcessoImpParcPRAZOPARCELA: TBCDField;
    cdsProcessoImpParcPAGTOPARCIAL: TBCDField;
    cdsProcessoImpParcVLRSALDO: TBCDField;
    cdsProcessoImpParcUSUARIO: TStringField;
    cdsPedVendIntervVLRINTERVENIENCIA: TBCDField;
    cdsProcessoImpEMBDATAPAGTOSEGINT: TSQLTimeStampField;
    cdsProcessoImpEMBVLRFRETEINTERNAC: TBCDField;
    cdsProcessoImpEMBVLRFRETEINTERNO: TBCDField;
    cdsProcessoImpEMBDATAENTREGACLI: TSQLTimeStampField;
    cdsProcessoImpEMBDATATERMOACEIT: TSQLTimeStampField;
    cdsProcessoImpLIRESPONSAVEL: TStringField;
    cdsProcessoImpPOTRANSMISSAO4: TSQLTimeStampField;
    cdsProcessoImpEPRESPONSAVEL: TStringField;
    cdsProcessoImpDOCDATAREQUISICAOMI: TSQLTimeStampField;
    cdsProcessoImpEPNUMERO: TStringField;
    cdsCondPagtoPropCONDPAGTOPROPID: TBCDField;
    cdsCondPagtoPropDESCRICAO: TMemoField;
    cdsCondPagtoPropCONDPAGTOID: TBCDField;
    cdsCondPagtoPropL_DESC_PAGTO: TStringField;
    cdsCondPagtoPropDESCRICAOPAGTO: TStringField;
    cdsCondPagtoPropTABFINANCEIRAID: TBCDField;
    cdsCondPagtoPropSPREAD: TFMTBCDField;
    cdsCondPagtoPropJUROS: TFMTBCDField;
    cdsCondPagtoPropNUMPARCELA: TBCDField;
    cdsCondPagtoPropNUMPARCJUROS: TBCDField;
    cdsCondPagtoPropPORCPAGTOAVISTA: TFMTBCDField;
    cdsCondPagtoPropLEASING: TBCDField;
    cdsCondPagtoPropRESIDUALPORC: TFMTBCDField;
    cdsCondPagtoPropRESIDUALNUM: TFMTBCDField;
    cdsCondPagtoPropTIPOPAGTO: TStringField;
    cdsCondPagtoPropCOMISSAOFINANCEIRA: TFMTBCDField;
    cdsCondPagtoPropDEDUZIRCOMISSAO: TBCDField;
    cdsCondPagtoPropUSUARIO: TStringField;
    cdsPedVendComp: TClientDataSet;
    dsPedVendComp: TDataSource;
    cdsPedVendCompPEDVENDID: TStringField;
    cdsPedVendCompITEMID: TBCDField;
    cdsPedVendCompITEMCOMPID: TBCDField;
    cdsPedVendCompSERIEID: TStringField;
    cdsPedVendCompMODELOID: TStringField;
    cdsPedVendCompL_DESCRICAOPORTUGUES: TStringField;
    cdsPedVendCompL_GRUPOID: TBCDField;
    cdsPedVendCompQUANTIDADE: TBCDField;
    cdsPedVendCompVLRUNITARIOFOB: TBCDField;
    cdsPedVendCompVLRTOTALFOB: TBCDField;
    cdsPedVendCompVLRUNITARIOREVENDA: TBCDField;
    cdsPedVendCompVLRTOTALREVENDA: TBCDField;
    cdsPedVendCompUSUARIO: TStringField;
    cdsPedVendPEDVENDID: TStringField;
    cdsPedVendDATAPEDIDO: TSQLTimeStampField;
    cdsPedVendPROPOSTAID: TBCDField;
    cdsPedVendNUMPEDVENDEDORID: TStringField;
    cdsPedVendORIGEMVENDAID: TBCDField;
    cdsPedVendL_DESCR_ORIGEMVENDA: TStringField;
    cdsPedVendTIPOVENDAID: TBCDField;
    cdsPedVendL_DESCRICAOTIPOVENDA: TStringField;
    cdsPedVendEMPRESAID: TBCDField;
    cdsPedVendL_NOMEEMPRESA: TStringField;
    cdsPedVendCANCELADO: TBCDField;
    cdsPedVendCLIENTEID: TBCDField;
    cdsPedVendL_NOMECLIENTE: TStringField;
    cdsPedVendL_CPFCNPJ: TStringField;
    cdsPedVendCEPORIGID: TBCDField;
    cdsPedVendNUMEROORIG: TStringField;
    cdsPedVendCOMPLEMENTOORIG: TStringField;
    cdsPedVendENDERECOORIG: TStringField;
    cdsPedVendBAIRROORIG: TStringField;
    cdsPedVendCIDADEORIG: TStringField;
    cdsPedVendSIGLAUFORIGID: TStringField;
    cdsPedVendPAISORIG: TStringField;
    cdsPedVendTELEFONEORIG: TStringField;
    cdsPedVendCONTATOORIG: TStringField;
    cdsPedVendCONDPAGTOPROPID: TBCDField;
    cdsPedVendL_DESCR_FOB: TStringField;
    cdsPedVendVLRFOB: TBCDField;
    cdsPedVendCONDINTERVID: TBCDField;
    cdsPedVendL_DESCR_INTERV: TStringField;
    cdsPedVendDESCRICAOINTERV: TStringField;
    cdsPedVendVLRINTERVENIENCIA: TBCDField;
    cdsPedVendCONDEMPRSUPLID: TBCDField;
    cdsPedVendL_DESCR_SUPL: TStringField;
    cdsPedVendVLREMPRSUPLEMENTAR: TBCDField;
    cdsPedVendBONIFICACAO: TMemoField;
    cdsPedVendVLRBONIFICACAO: TBCDField;
    cdsPedVendOBSERVACAO: TMemoField;
    cdsPedVendTIPODESPESA: TStringField;
    cdsPedVendVLRDESPESA: TBCDField;
    cdsPedVendPORCDESPESA: TFMTBCDField;
    cdsPedVendPORCVENDA: TFMTBCDField;
    cdsPedVendPORCFOB: TFMTBCDField;
    cdsPedVendNOMEAPARELHOINTERV: TStringField;
    cdsPedVendVLRAPARELHOINTERV: TBCDField;
    cdsPedVendVLRFRETEINTERNACIONAL: TBCDField;
    cdsPedVendCONDPAGTOID: TBCDField;
    cdsPedVendL_DESCRICAOCONDPAGTO: TStringField;
    cdsPedVendNATUREZAOPID: TBCDField;
    cdsPedVendL_CFOP: TStringField;
    cdsPedVendL_DESCRICAOUSUARIO: TStringField;
    cdsPedVendPDSID: TBCDField;
    cdsPedVendDATAPEDIDOPDSID: TSQLTimeStampField;
    cdsPedVendVLRTOTALINTERVCRED: TBCDField;
    cdsPedVendVLRTOTALINTERVDEB: TBCDField;
    cdsPedVendVLRTOTALVENDA: TBCDField;
    cdsPedVendVLRTOTALGERAL: TBCDField;
    cdsPedVendUSUARIO: TStringField;
    cdsPedVendsqldtsPedVendInterv: TDataSetField;
    cdsPedVendsqldtsPedVendBonif: TDataSetField;
    cdsPedVendsqldtsPedVendVend: TDataSetField;
    cdsPedVendsqldtsPedVendItem: TDataSetField;
    cdsPedVendItemPEDVENDID: TStringField;
    cdsPedVendItemITEMID: TBCDField;
    cdsPedVendItemSERIEID: TStringField;
    cdsPedVendItemMODELOID: TStringField;
    cdsPedVendItemVOLTAGEM: TStringField;
    cdsPedVendItemQUANTIDADE: TBCDField;
    cdsPedVendItemVLRFOB: TBCDField;
    cdsPedVendItemVLRFOBREVENDA: TBCDField;
    cdsPedVendItemVLRINTERVENIENCIA: TBCDField;
    cdsPedVendItemVLRCOMISSAO: TBCDField;
    cdsPedVendItemEMPRESAID: TBCDField;
    cdsPedVendItemPRODUTOID: TBCDField;
    cdsPedVendItemL_DESCRICAOPORTUGUES: TStringField;
    cdsPedVendItemL_GRUPOID: TBCDField;
    cdsPedVendItemESTOQUEUTILIZADO: TStringField;
    cdsPedVendItemVLRPRECOUNITARIO: TBCDField;
    cdsPedVendItemVLRPRECOTOTAL: TBCDField;
    cdsPedVendItemNXID: TStringField;
    cdsPedVendItemINVOICEID: TStringField;
    cdsPedVendItemCEPINSTID: TBCDField;
    cdsPedVendItemNUMEROINST: TStringField;
    cdsPedVendItemCOMPLEMENTOINST: TStringField;
    cdsPedVendItemENDERECOINST: TStringField;
    cdsPedVendItemBAIRROINST: TStringField;
    cdsPedVendItemCIDADEINST: TStringField;
    cdsPedVendItemSIGLAUFINSTID: TStringField;
    cdsPedVendItemTELEFONEINST: TStringField;
    cdsPedVendItemCONTATOINST: TStringField;
    cdsPedVendItemEMBJAPAOID: TStringField;
    cdsPedVendItemLIDISPENSA: TBCDField;
    cdsPedVendItemLIDATATRANSMISSAO: TSQLTimeStampField;
    cdsPedVendItemLIDATAAPROVACAO: TSQLTimeStampField;
    cdsPedVendItemLINUMERO: TStringField;
    cdsPedVendItemLIDATAVALIDADE: TSQLTimeStampField;
    cdsPedVendItemLIVLRCOMISSAO: TBCDField;
    cdsPedVendItemLIADITIVO1: TStringField;
    cdsPedVendItemLIDATAVALIDADE1: TSQLTimeStampField;
    cdsPedVendItemLIADITIVO2: TStringField;
    cdsPedVendItemLIDATAVALIDADE2: TSQLTimeStampField;
    cdsPedVendItemLIADITIVO3: TStringField;
    cdsPedVendItemLIDATAVALIDADE3: TSQLTimeStampField;
    cdsPedVendItemLIADITIVO4: TStringField;
    cdsPedVendItemLIDATAVALIDADE4: TSQLTimeStampField;
    cdsPedVendItemRTINVOICEID: TStringField;
    cdsPedVendItemRTCLIENTEID: TBCDField;
    cdsPedVendItemRTOBSERVACAO: TMemoField;
    cdsPedVendItemRTCABOK7: TStringField;
    cdsPedVendItemRTCABOVIDEOPRINTER: TStringField;
    cdsPedVendItemRTCABOMONITORAUXILIAR: TStringField;
    cdsPedVendItemRTMULTIFORMATO: TStringField;
    cdsPedVendItemRTESTABILIZADOR: TStringField;
    cdsPedVendItemRTDATASAIDA: TSQLTimeStampField;
    cdsPedVendItemRTTRANSPORTADORID: TBCDField;
    cdsPedVendItemRTOSID: TStringField;
    cdsPedVendItemRTIMPRESSO: TBCDField;
    cdsPedVendItemRTDATAPREVCHEGADA: TSQLTimeStampField;
    cdsPedVendItemRTUSUARIO: TStringField;
    cdsPedVendItemRTLIBERADO: TBCDField;
    cdsPedVendItemUSUARIO: TStringField;
    cdsPedVendItemsqldtsPedVendComp: TDataSetField;
    cdsPedVendIntervL_DEDUZIRCOMISSAO: TBCDField;
    cdsAnaliseVendaVend: TClientDataSet;
    dsAnaliseVendaVend: TDataSource;
    cdsAnaliseVendaPEDVENDID: TStringField;
    cdsAnaliseVendaL_DATAPEDIDO: TSQLTimeStampField;
    cdsAnaliseVendaL_ORIGEMVENDAID: TBCDField;
    cdsAnaliseVendaL_DECRICAOORIGEMVENDA: TStringField;
    cdsAnaliseVendaL_TIPOVENDAID: TBCDField;
    cdsAnaliseVendaL_DESCRICAOTIPOVENDA: TStringField;
    cdsAnaliseVendaL_CLIENTEID: TBCDField;
    cdsAnaliseVendaL_NOME: TStringField;
    cdsAnaliseVendaL_SIGLAUFORGID: TStringField;
    cdsAnaliseVendaL_CIDADEORIG: TStringField;
    cdsAnaliseVendaL_CPFCNPJ: TStringField;
    cdsAnaliseVendaL_FISICAJURIDICA: TStringField;
    cdsAnaliseVendaEMPRESAID: TBCDField;
    cdsAnaliseVendaNFSID: TBCDField;
    cdsAnaliseVendaDATAEMISSAOID: TSQLTimeStampField;
    cdsAnaliseVendaDATAFECHAMENTO: TSQLTimeStampField;
    cdsAnaliseVendaVLRFOB: TBCDField;
    cdsAnaliseVendaVLRVENDA: TBCDField;
    cdsAnaliseVendaVLRINTERVENIENCIA: TBCDField;
    cdsAnaliseVendaVLRIPI: TBCDField;
    cdsAnaliseVendaVLRCOMISSAO: TBCDField;
    cdsAnaliseVendaVLRCOMISSAOUS: TBCDField;
    cdsAnaliseVendaLIBPAGTOFIN: TBCDField;
    cdsAnaliseVendaSTATUS: TBCDField;
    cdsAnaliseVendaUSUARIO: TStringField;
    cdsAnaliseVendasqldtsAnaliseVendaVend: TDataSetField;
    cdsAnaliseVendasqldtsAnaliseVendaItem: TDataSetField;
    cdsAnaliseVendaVendPEDVENDID: TStringField;
    cdsAnaliseVendaVendITEMID: TBCDField;
    cdsAnaliseVendaVendVENDEDORID: TBCDField;
    cdsAnaliseVendaVendL_DESCR_CLASSEVENDEDOR: TStringField;
    cdsAnaliseVendaVendCLASSEVENDEDORID: TBCDField;
    cdsAnaliseVendaVendPORCENTAGEM: TFMTBCDField;
    cdsAnaliseVendaVendUSUARIO: TStringField;
    cdsAnaliseVendaVendL_NOMEVENDEDOR: TStringField;
    cdsPedVendVendL_NOMEVENDEDOR: TStringField;
    cdsPedVendDATACHEGADA: TSQLTimeStampField;
    cdsPedVendPROPPEDVENDEDORID: TStringField;
    cdsPedVendCONTRATOID: TStringField;
    cdsPedVendL_INSCRESTADUAL: TStringField;
    cdsPedVendItemL_PARTNUMBERID: TStringField;
    cdsPedVendItemL_NOMETRANSPORTADOR: TStringField;
    cdsPedVendItemRTDATAEMBARQUE: TSQLTimeStampField;
    cdsRecebComVenda: TClientDataSet;
    dsRecebComVenda: TDataSource;
    cdsRecebComVendaENTIDADEID: TBCDField;
    cdsRecebComVendaL_CPFCNPJ: TStringField;
    cdsRecebComVendaL_NOME: TStringField;
    cdsRecebComVendaBLOQUEARCOMISSAO: TBCDField;
    cdsRecebComVendaUSUARIO: TStringField;
    cdsAnaliseItem: TClientDataSet;
    dsAnaliseItem: TDataSource;
    cdsBasePagtoVENDEDORID: TBCDField;
    cdsBasePagtoL_APELIDOVENDEDOR: TStringField;
    cdsBasePagtoPEDVENDID: TStringField;
    cdsBasePagtoITEMID: TBCDField;
    cdsBasePagtoL_DATAPEDIDO: TSQLTimeStampField;
    cdsBasePagtoL_ORIGEMVENDAID: TBCDField;
    cdsBasePagtoL_DATAFECHAMENTO: TSQLTimeStampField;
    cdsBasePagtoL_EMPRESAID: TBCDField;
    cdsBasePagtoL_NFSID: TBCDField;
    cdsBasePagtoL_DATAEMISSAOID: TSQLTimeStampField;
    cdsBasePagtoL_DECRICAOORIGEMVENDA: TStringField;
    cdsBasePagtoL_TIPOVENDAID: TBCDField;
    cdsBasePagtoL_DESCRICAOTIPOVENDA: TStringField;
    cdsBasePagtoL_CLIENTEID: TBCDField;
    cdsBasePagtoL_NOME: TStringField;
    cdsBasePagtoL_SIGLAUFORGID: TStringField;
    cdsBasePagtoL_CIDADEORIG: TStringField;
    cdsBasePagtoL_CPFCNPJ: TStringField;
    cdsBasePagtoL_FISICAJURIDICA: TStringField;
    cdsBasePagtoDATACONVFOB: TSQLTimeStampField;
    cdsBasePagtoDATALIBPAGTOFIN: TSQLTimeStampField;
    cdsBasePagtoDATAPAGTOCOM: TSQLTimeStampField;
    cdsBasePagtoCLASSEVENDEDORID: TBCDField;
    cdsBasePagtoL_CLASSEVENDEDOR: TStringField;
    cdsBasePagtoNIVELVENDA: TStringField;
    cdsBasePagtoVLRCOMISSAO: TBCDField;
    cdsBasePagtoPORCVENDA: TFMTBCDField;
    cdsBasePagtoVLRBASECOMISSAO: TBCDField;
    cdsBasePagtoVLRBASECOMISSAOUS: TBCDField;
    cdsBasePagtoVLRDSR: TBCDField;
    cdsBasePagtoVLRLIQUIDO: TBCDField;
    cdsBasePagtoOBSERVACAO: TMemoField;
    cdsBasePagtoUSUARIO: TStringField;
    cdsBasePagtoL_VLRFOB: TBCDField;
    cdsBasePagtoL_VLRVENDA: TBCDField;
    cdsBasePagtoL_VLRINTERVENIENCIA: TBCDField;
    cdsBasePagtoL_VLRIPI: TBCDField;
    cdsAnaliseParc: TClientDataSet;
    dsAnaliseParc: TDataSource;
    cdsBasePagtoL_DOLAROFICIALC: TFMTBCDField;
    cdsNfsParcela: TClientDataSet;
    dsNfsParcela: TDataSource;
    cdsNfsParcelaEMPRESAID: TBCDField;
    cdsNfsParcelaNFSID: TBCDField;
    cdsNfsParcelaDATAEMISSAOID: TSQLTimeStampField;
    cdsNfsParcelaPARCELAID: TBCDField;
    cdsNfsParcelaDATAVENCIMENTO: TSQLTimeStampField;
    cdsNfsParcelaDATAPAGTO: TSQLTimeStampField;
    cdsNfsParcelaVLRPARCELA: TBCDField;
    cdsNfsParcelaDUPLICATAID: TBCDField;
    cdsNfsParcelaEXPORTADO: TBCDField;
    cdsNfsParcelaVLRBASECOMISSAO: TBCDField;
    cdsNfsParcelaPAGTOVENDEDOR: TBCDField;
    cdsNfsParcelaL_PEDVENDID: TStringField;
    cdsNfsParcelaL_VLRFOB: TBCDField;
    cdsNfsParcelaL_VLRVENDA: TBCDField;
    cdsNfsParcelaL_VLRINTERVENIENCIA: TBCDField;
    cdsNfsParcelaL_VLRIPI: TBCDField;
    cdsNfsParcelaL_VLRCOMISSAO: TBCDField;
    cdsNfsParcelaL_VLRCOMISSAOUS: TBCDField;
    cdsNfsParcelaL_CLIENTEID: TBCDField;
    cdsNfsParcelaL_CIDADEORIG: TStringField;
    cdsNfsParcelaL_SIGLAUFORIGID: TStringField;
    cdsNfsParcelaL_NOME: TStringField;
    cdsNfsParcelaUSUARIO: TStringField;
    cdsPedVendL_NFSID: TBCDField;
    cdsPedVendL_DATAEMISSAOID: TSQLTimeStampField;
    cdsAnaliseVendaItemPEDVENDID: TStringField;
    cdsAnaliseVendaItemITEMID: TBCDField;
    cdsAnaliseVendaItemL_PARTNUMBER: TStringField;
    cdsAnaliseVendaItemL_GRUPOID: TBCDField;
    cdsAnaliseVendaItemL_TIPO: TStringField;
    cdsAnaliseVendaItemUSUARIO: TStringField;
    cdsAnaliseVendaItemL_DESCRICAOPORTUGUES: TStringField;
    cdsRecebComVendaCLASSEVENDEDORID: TBCDField;
    cdsRecebComVendaL_CLASSEVENDEDOR: TStringField;
    cdsProcessoImpsqldtsProcessoImpParc: TDataSetField;
    cdsAnaliseVendaItemMODELOID: TStringField;
    cdsAnaliseVendaItemL_GRUPO_IMP: TBCDField;
    cdsPerComRepr: TClientDataSet;
    dsPerComRepr: TDataSource;
    cdsPerComReprGRUPOID: TBCDField;
    cdsPerComReprORIGEMVENDAID: TBCDField;
    cdsPerComReprL_ORIGEMVENDA: TStringField;
    cdsPerComReprTIPOVENDAID: TBCDField;
    cdsPerComReprL_TIPOVENDA: TStringField;
    cdsPerComReprVLRPERCENTUAL: TFMTBCDField;
    cdsPerComReprVLRIRRF: TFMTBCDField;
    cdsPerComReprUSUARIO: TStringField;
    cdsPropostaORIGEMVENDAID: TBCDField;
    cdsPropostaL_DESCR_ORIGEMVENDA: TStringField;
    cdsPropostaTIPOVENDAID: TBCDField;
    cdsPropostaL_DESCR_TIPOVENDA: TStringField;
    cdsBasePagtoUSUARIOPAGTO: TStringField;
    cdsBasePagtoDATAUSUARIOPAGTO: TSQLTimeStampField;
    cdsNfsParcelaCANCELADA: TBCDField;
    cdsNfsParcelaOBSCANCELAMENTO: TMemoField;
    cdsPedVendDESTINATARIOID: TBCDField;
    cdsPedVendL_NOMEDESTINATARIO: TStringField;
    cdsBasePagtoL_FILIALID: TBCDField;
    cdsClasseVendedorEXIBIRNIVELVENDA: TBCDField;
    cdsVendedorResponsavel: TClientDataSet;
    dsVendedorResponsavel: TDataSource;
    cdsClasseNivel: TClientDataSet;
    dsClasseNivel: TDataSource;
    cdsClasseNivelCLASSENIVELID: TBCDField;
    cdsClasseNivelDESCRICAO: TStringField;
    cdsClasseNivelCLASSEVENDEDOR1ID: TBCDField;
    cdsClasseNivelL_DESCRICAOCLASSEVENDEDOR1: TStringField;
    cdsClasseNivelNIVELVENDA1: TStringField;
    cdsClasseNivelCLASSEVENDEDOR2ID: TBCDField;
    cdsClasseNivelL_DESCRICAOCLASSEVENDEDOR2: TStringField;
    cdsClasseNivelNIVELVENDA2: TStringField;
    cdsClasseNivelCLASSEVENDEDOR3ID: TBCDField;
    cdsClasseNivelL_DESCRICAOCLASSEVENDEDOR3: TStringField;
    cdsClasseNivelNIVELVENDA3: TStringField;
    cdsClasseNivelCLASSEVENDEDOR4ID: TBCDField;
    cdsClasseNivelL_DESCRICAOCLASSEVENDEDOR4: TStringField;
    cdsClasseNivelNIVELVENDA4: TStringField;
    cdsClasseNivelCLASSEVENDEDOR5ID: TBCDField;
    cdsClasseNivelL_DESCRICAOCLASSEVENDEDOR5: TStringField;
    cdsClasseNivelNIVELVENDA5: TStringField;
    cdsClasseNivelCLASSEVENDEDOR6ID: TBCDField;
    cdsClasseNivelL_DESCRICAOCLASSEVENDEDOR6: TStringField;
    cdsClasseNivelNIVELVENDA6: TStringField;
    cdsClasseNivelUSUARIO: TStringField;
    cdsPedVendL_CPFCNPJDESTINATARIO: TStringField;
    cdsClasseNivelPERCENTUAL1: TFMTBCDField;
    cdsClasseNivelPERCENTUAL2: TFMTBCDField;
    cdsClasseNivelPERCENTUAL3: TFMTBCDField;
    cdsClasseNivelPERCENTUAL4: TFMTBCDField;
    cdsClasseNivelPERCENTUAL5: TFMTBCDField;
    cdsClasseNivelPERCENTUAL6: TFMTBCDField;
    cdsPedVendsqldtsPedVendServ: TDataSetField;
    cdsPedVendServ: TClientDataSet;
    dsPedVendServ: TDataSource;
    cdsPedVendServPEDVENDID: TStringField;
    cdsPedVendServITEMID: TBCDField;
    cdsPedVendServEMPRESAID: TBCDField;
    cdsPedVendServSERVICOID: TBCDField;
    cdsPedVendServL_GRUPOID: TBCDField;
    cdsPedVendServDESCRICAOSERVICO: TMemoField;
    cdsPedVendServVLRSERVICO: TFMTBCDField;
    cdsPedVendServUSUARIO: TStringField;
    cdsPedVendPEDVENDREFID: TStringField;
    cdsCatalogoL_DESCRICAOGRUPO: TStringField;
    cdsCatalogoL_SIGLAGRUPO: TStringField;
    cdsPerComReprL_SIGLAGRUPO: TStringField;
    cdsPerComReprL_DESCRICAOGRUPO: TStringField;
    cdsComposicaoL_SIGLAGRUPO: TStringField;
    cdsOpcionalL_SIGLAGRUPO: TStringField;
    cdsAnaliseVendaItemL_SIGLAGRUPO_PRODUTO: TStringField;
    cdsAnaliseVendaItemL_SIGLAGRUPO_CATALOGO: TStringField;
    cdsClasseVendedorNIVELVENDEDORID: TBCDField;
    cdsPercComFunc: TClientDataSet;
    dsPercComFunc: TDataSource;
    cdsPercComFuncGrupo: TClientDataSet;
    dsPercComFuncGrupo: TDataSource;
    cdsPercComFuncCLASSEVENDEDORID: TBCDField;
    cdsPercComFuncL_DESCRICAOCLASSEVENDEDOR: TStringField;
    cdsPercComFuncTIPOVENDAID: TBCDField;
    cdsPercComFuncL_DESCRICAOTIPOVENDA: TStringField;
    cdsPercComFuncUSUARIO: TStringField;
    cdsPercComFuncsqldtsPercComFunGrupo: TDataSetField;
    cdsPercComFuncGrupoCLASSEVENDEDORID: TBCDField;
    cdsPercComFuncGrupoTIPOVENDAID: TBCDField;
    cdsPercComFuncGrupoGRUPOID: TBCDField;
    cdsPercComFuncGrupoL_SIGLAGRUPO: TStringField;
    cdsPercComFuncGrupoUSUARIO: TStringField;
    cdsPercComFuncGrupoVLRPERCENTUAL: TFMTBCDField;
    cdsPedVendPAGAMENTOCOMISSAO: TBCDField;
    cdsRecebComVendaVIGENCIA: TSQLTimeStampField;
    cdsVendedorResponsavelVENDEDORID: TBCDField;
    cdsVendedorResponsavelL_NOMEVENDEDOR: TStringField;
    cdsVendedorResponsavelRESPONSAVELID: TBCDField;
    cdsVendedorResponsavelL_NOMERESPONSAVEL: TStringField;
    cdsVendedorResponsavelUSUARIO: TStringField;
    cdsPedVendLIBCHEFIA: TBCDField;
    cdsPedVendLIBCHEFIANOME: TStringField;
    cdsPedVendLIBCHEFIADATA: TSQLTimeStampField;
    cdsBasePagtoVLRFOB: TBCDField;
    dsMotivoRecusa: TDataSource;
    cdsMotivoRecusa: TClientDataSet;
    cdsDocPendente: TClientDataSet;
    dsDocPendente: TDataSource;
    cdsAcompPed: TClientDataSet;
    dsAcompPed: TDataSource;
    cdsAcompPedDocPend: TClientDataSet;
    dsAcompPedDocPend: TDataSource;
    cdsMotivoRecusaMOTIVORECUSAID: TBCDField;
    cdsMotivoRecusaDESCRICAO: TStringField;
    cdsMotivoRecusaUSUARIO: TStringField;
    cdsDocPendenteDOCPENDENTEID: TBCDField;
    cdsDocPendenteDESCRICAO: TStringField;
    cdsDocPendenteUSUARIO: TStringField;
    cdsAcompPedNUMPEDVENDEDORID: TStringField;
    cdsAcompPedDATAASSINATURA: TSQLTimeStampField;
    cdsAcompPedDATARECEBPEDIDO: TSQLTimeStampField;
    cdsAcompPedTIPORECEBPEDIDO: TStringField;
    cdsAcompPedDOCPENDENTE: TBCDField;
    cdsAcompPedDATAENTREGAFIN: TSQLTimeStampField;
    cdsAcompPedDATARETORNOFIN: TSQLTimeStampField;
    cdsAcompPedMOTIVORECUSAID: TBCDField;
    cdsAcompPedL_DESCRMOTIVORECUSA: TStringField;
    cdsAcompPedMOTIVORECUSA2ID: TBCDField;
    cdsAcompPedL_DESCRMOTIVORECUSA2: TStringField;
    cdsAcompPedHISTFINANCEIRO: TMemoField;
    cdsAcompPedDATAENVCONTRATO: TSQLTimeStampField;
    cdsAcompPedDATARETCONTRATO: TSQLTimeStampField;
    cdsAcompPedCONTRATOOK: TBCDField;
    cdsAcompPedTIPODOCRETORNO: TStringField;
    cdsAcompPedDATAENTREGA: TSQLTimeStampField;
    cdsAcompPedDATAFATURAMENTO: TSQLTimeStampField;
    cdsAcompPedDATAPREVENTREGA: TSQLTimeStampField;
    cdsAcompPedOBSERVAO: TMemoField;
    cdsAcompPedUSUARIO: TStringField;
    cdsAcompPedsqldtsAcompPedDocPendente: TDataSetField;
    cdsAcompPedDocPendNUMPEDVENDEDORID: TStringField;
    cdsAcompPedDocPendITEMID: TBCDField;
    cdsAcompPedDocPendDATAREGISTRO: TSQLTimeStampField;
    cdsAcompPedDocPendDOCPENDENTEID: TBCDField;
    cdsAcompPedDocPendL_DESCRDOCPENDENTE: TStringField;
    cdsAcompPedDocPendDESCRICAO: TStringField;
    cdsAcompPedDocPendDATAULTATUAL: TSQLTimeStampField;
    cdsAcompPedDocPendRESOLVIDO: TBCDField;
    cdsAcompPedDocPendDATARESOLUCAO: TSQLTimeStampField;
    cdsAcompPedDocPendUSUARIORESOLUCAO: TStringField;
    cdsAcompPedDocPendUSUARIO: TStringField;
    cdsAcompPedL_ORIGEMVENDAID: TBCDField;
    cdsAcompPedL_DESCRORIGEMVENDA: TStringField;
    cdsAcompPedL_TIPOVENDAID: TBCDField;
    cdsAcompPedL_DESCRTIPOVENDA: TStringField;
    cdsAcompPedL_CLIENTEID: TBCDField;
    cdsAcompPedL_NOMECLIENTE: TStringField;
    cdsAcompPedL_CPFCNPJ: TStringField;
    cdsAcompPedL_CIDADEORIG: TStringField;
    cdsAcompPedL_SIGLAUFORIGID: TStringField;
    cdsAcompPedL_DESTINATARIOID: TBCDField;
    cdsAcompPedL_NOMEDESTINATARIO: TStringField;
    cdsAcompPedL_CPFCNPJDESTINATARIO: TStringField;
    cdsAcompPedL_EMPRESAID: TBCDField;
    cdsAcompPedL_PDSID: TBCDField;
    cdsAcompPedL_DATAPEDIDOPDSID: TSQLTimeStampField;
    cdsAcompPedL_VLRTOTALGERAL: TBCDField;
    cdsAcompPedL_VLRTOTALVENDA: TBCDField;
    cdsAcompPedL_PEDVENDID: TStringField;
    cdsAcompPedL_NFSID: TBCDField;
    cdsAcompPedL_DATAEMISSAOID: TSQLTimeStampField;
    cdsAcompPedVend: TClientDataSet;
    cdsAcompPedCLIENTEID: TBCDField;
    cdsAcompPedNOMECLIENTE: TStringField;
    cdsAcompPedVLRTOTAL: TFMTBCDField;
    cdsAcompPedsqldtsAcompPedVend: TDataSetField;
    cdsAcompPedVendNUMPEDVENDEDORID: TStringField;
    cdsAcompPedVendITEMID: TBCDField;
    cdsAcompPedVendVENDEDORID: TBCDField;
    cdsAcompPedVendL_NOMEVENDEDOR: TStringField;
    cdsAcompPedVendCLASSEVENDEDORID: TBCDField;
    cdsAcompPedVendL_DESCR_CLASSEVENDEDOR: TStringField;
    cdsAcompPedVendUSUARIO: TStringField;
    dsAcompPedVend: TDataSource;
    procedure cdsCatalogoFORNECEDORIDValidate(Sender: TField);
    procedure cdsCatalogoGRUPOIDValidate(Sender: TField);
    procedure cdsCatalogoCUSTOHORAIDValidate(Sender: TField);
    procedure cdsEquipamentoNewRecord(DataSet: TDataSet);
    procedure cdsCatalogoAfterDelete(DataSet: TDataSet);
    procedure cdsCatalogoAfterPost(DataSet: TDataSet);
    procedure cdsComposicaoMODELOCOMPONENTEIDValidate(Sender: TField);
    procedure cdsCatalogoReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsEquipamentoAfterPost(DataSet: TDataSet);
    procedure cdsComposicaoNewRecord(DataSet: TDataSet);
    procedure cdsDependenciaNewRecord(DataSet: TDataSet);
    procedure cdsOpcionalNewRecord(DataSet: TDataSet);
    procedure cdsOpcionalMODELOCOMPONENTEIDValidate(Sender: TField);
    procedure cdsEquipamentoMODELOEQUIPAMENTOIDValidate(Sender: TField);
    procedure cdsComposicaoPRODUTOIDValidate(Sender: TField);
    procedure cdsDependenciaPRODUTOIDValidate(Sender: TField);
    procedure cdsComposicaoVLRUNITARIOFOBValidate(Sender: TField);
    procedure cdsComposicaoVLRUNITARIOREVENDAValidate(Sender: TField);
    procedure cdsComposicaoVLRUNITARIONETValidate(Sender: TField);
    procedure cdsDependenciaVLRUNITARIOFOBValidate(Sender: TField);
    procedure cdsDependenciaVLRUNITARIOREVENDAValidate(Sender: TField);
    procedure cdsDependenciaVLRUNITARIONETValidate(Sender: TField);
    procedure cdsOpcionalVLRUNITARIOFOBValidate(Sender: TField);
    procedure cdsOpcionalVLRUNITARIOREVENDAValidate(Sender: TField);
    procedure cdsOpcionalVLRUNITARIONETValidate(Sender: TField);
    procedure cdsCatalogoNewRecord(DataSet: TDataSet);
    procedure cdsPropostaNewRecord(DataSet: TDataSet);
    procedure cdsPropostaCPFCNPJGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure cdsPropostaCPFCNPJValidate(Sender: TField);
    procedure cdsPropostaCEPIDValidate(Sender: TField);
    procedure cdsPropostaFILIALIDValidate(Sender: TField);
    procedure cdsPropostaCONDPAGTOPROPIDValidate(Sender: TField);
    procedure cdsPropostaOBSPROPIDValidate(Sender: TField);
    procedure cdsPropostaGARANTIAIDValidate(Sender: TField);
    procedure cdsPropostaASSISTTECIDValidate(Sender: TField);
    procedure cdsPropostaINSTALACAOIDValidate(Sender: TField);
    procedure cdsPropostaPRAZOIDValidate(Sender: TField);
    procedure cdsPropostaVALIDADEIDValidate(Sender: TField);
    procedure cdsPropostaCARTAAPRESENTIDValidate(Sender: TField);
    procedure cdsPropEquipamentoNewRecord(DataSet: TDataSet);
    procedure cdsPropComposicaoNewRecord(DataSet: TDataSet);
    procedure cdsPropDependenciaNewRecord(DataSet: TDataSet);
    procedure cdsPropOpcionalNewRecord(DataSet: TDataSet);
    procedure cdsPropBonificacaoNewRecord(DataSet: TDataSet);
    procedure cdsPropVendedorNewRecord(DataSet: TDataSet);
    procedure cdsPropTradeInNewRecord(DataSet: TDataSet);
    procedure cdsPropostaDATAVALIDADEValidate(Sender: TField);
    procedure cdsComposicaoAfterDelete(DataSet: TDataSet);
    procedure cdsComposicaoAfterPost(DataSet: TDataSet);
    procedure cdsPropEquipamentoAfterDelete(DataSet: TDataSet);
    procedure cdsPropEquipamentoAfterPost(DataSet: TDataSet);
    procedure cdsCondPagtoPropCONDPAGTOIDValidate(Sender: TField);
    procedure cdsCartaApresentNewRecord(DataSet: TDataSet);
    procedure cdsPropostaEMAILValidate(Sender: TField);
    procedure cdsGarantiaNewRecord(DataSet: TDataSet);
    procedure cdsCondPagtoPropNewRecord(DataSet: TDataSet);
    procedure cdsObsPropNewRecord(DataSet: TDataSet);
    procedure cdsAssistTecNewRecord(DataSet: TDataSet);
    procedure cdsInstalacaoNewRecord(DataSet: TDataSet);
    procedure cdsPrazoNewRecord(DataSet: TDataSet);
    procedure cdsValidadeNewRecord(DataSet: TDataSet);
    procedure cdsBonificacaoNewRecord(DataSet: TDataSet);
    procedure cdsPropBonificacaoBONIFICACAOIDValidate(Sender: TField);
    procedure cdsEquipamentoDATAALTERACAOValidate(Sender: TField);
    procedure cdsPropComposicaoAfterDelete(DataSet: TDataSet);
    procedure cdsPropComposicaoAfterPost(DataSet: TDataSet);
    procedure cdsPropOpcionalAfterDelete(DataSet: TDataSet);
    procedure cdsPropOpcionalAfterPost(DataSet: TDataSet);
    procedure cdsPropDependenciaAfterDelete(DataSet: TDataSet);
    procedure cdsPropDependenciaAfterPost(DataSet: TDataSet);
    procedure cdsPropBonificacaoAfterDelete(DataSet: TDataSet);
    procedure cdsPropBonificacaoAfterOpen(DataSet: TDataSet);
    procedure cdsPropVendedorAfterDelete(DataSet: TDataSet);
    procedure cdsPropVendedorAfterPost(DataSet: TDataSet);
    procedure cdsPropTradeInAfterPost(DataSet: TDataSet);
    procedure cdsPropTradeInAfterDelete(DataSet: TDataSet);
    procedure cdsDependenciaMODELODEPENDENCIAIDValidate(Sender: TField);
    procedure cdsAcessorioMODELOACESSORIOIDValidate(Sender: TField);
    procedure cdsIncompativelMODELOINCOMPATIVELIDValidate(Sender: TField);
    procedure cdsAcessorioNewRecord(DataSet: TDataSet);
    procedure cdsIncompativelNewRecord(DataSet: TDataSet);
    procedure cdsPedVendCLIENTEIDValidate(Sender: TField);
    procedure cdsPedVendCONDPAGTOPROPIDValidate(Sender: TField);
    procedure cdsPedVendCONDINTERVIDValidate(Sender: TField);
    procedure cdsPedVendCONDEMPRSUPLIDValidate(Sender: TField);
    procedure cdsPedVendCONDPAGTOIDValidate(Sender: TField);
    procedure cdsPedVendNATUREZAOPIDValidate(Sender: TField);
    procedure cdsPedVendORIGEMVENDAIDValidate(Sender: TField);
    procedure cdsPedVendTIPOVENDAIDValidate(Sender: TField);
    procedure cdsPedVendEMPRESAIDValidate(Sender: TField);
    procedure cdsPedVendAfterPost(DataSet: TDataSet);
    procedure cdsPedVendAfterDelete(DataSet: TDataSet);
    procedure cdsPedVendItemAfterPost(DataSet: TDataSet);
    procedure cdsPedVendItemAfterDelete(DataSet: TDataSet);
    procedure cdsPedVendVendAfterDelete(DataSet: TDataSet);
    procedure cdsPedVendItemBeforeInsert(DataSet: TDataSet);
    procedure cdsPedVendNewRecord(DataSet: TDataSet);
    procedure cdsPedVendBeforePost(DataSet: TDataSet);
    procedure cdsPedVendBeforeDelete(DataSet: TDataSet);
    procedure cdsPedVendItemNewRecord(DataSet: TDataSet);
    procedure cdsPedVendItemPRODUTOIDValidate(Sender: TField);
    procedure cdsPedVendItemVLRPRECOUNITARIOValidate(Sender: TField);
    procedure cdsPedVendCompAfterDelete(DataSet: TDataSet);
    procedure cdsPedVendCompAfterPost(DataSet: TDataSet);
    procedure cdsPedVendCompNewRecord(DataSet: TDataSet);
    procedure cdsPedVendVendAfterPost(DataSet: TDataSet);
    procedure cdsPedVendBonifAfterPost(DataSet: TDataSet);
    procedure cdsPedVendBonifAfterDelete(DataSet: TDataSet);
    procedure cdsPedVendIntervAfterDelete(DataSet: TDataSet);
    procedure cdsPedVendIntervAfterPost(DataSet: TDataSet);
    procedure cdsPedVendBonifNewRecord(DataSet: TDataSet);
    procedure cdsPedVendAfterEdit(DataSet: TDataSet);
    procedure cdsPedVendVendBeforeEdit(DataSet: TDataSet);
    procedure cdsPedVendBonifBeforeEdit(DataSet: TDataSet);
    procedure cdsPedVendIntervBeforeEdit(DataSet: TDataSet);
    procedure cdsPedVendVendBeforeDelete(DataSet: TDataSet);
    procedure cdsPedVendBonifBeforeDelete(DataSet: TDataSet);
    procedure cdsPedVendIntervBeforeDelete(DataSet: TDataSet);
    procedure cdsPedVendCompBeforeDelete(DataSet: TDataSet);
    procedure cdsPedVendItemBeforeDelete(DataSet: TDataSet);
    procedure cdsPedVendVendNewRecord(DataSet: TDataSet);
    procedure cdsPedVendVendVENDEDORIDValidate(Sender: TField);
    procedure cdsPedVendVendCLASSEVENDEDORIDValidate(Sender: TField);
    procedure cdsHistFechComissaoAfterDelete(DataSet: TDataSet);
    procedure cdsHistFechComissaoAfterPost(DataSet: TDataSet);
    procedure cdsHistFechComissaoNewRecord(DataSet: TDataSet);
    procedure cdsRecebComVendaNewRecord(DataSet: TDataSet);
    procedure cdsRecebComVendaENTIDADEIDValidate(Sender: TField);
    procedure cdsOrigemVendaNewRecord(DataSet: TDataSet);
    procedure cdsTipoVendaNewRecord(DataSet: TDataSet);
    procedure cdsBasePagtoAfterDelete(DataSet: TDataSet);
    procedure cdsBasePagtoAfterPost(DataSet: TDataSet);
    procedure cdsNfsParcelaAfterPost(DataSet: TDataSet);
    procedure cdsNfsParcelaAfterDelete(DataSet: TDataSet);
    procedure cdsPedVendReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsPedVendIntervNewRecord(DataSet: TDataSet);
    procedure cdsPedVendIntervCONDINTERVIDValidate(Sender: TField);
    procedure cdsAnaliseVendaAfterDelete(DataSet: TDataSet);
    procedure cdsAnaliseVendaAfterPost(DataSet: TDataSet);
    procedure cdsProcessoImpAfterDelete(DataSet: TDataSet);
    procedure cdsProcessoImpAfterPost(DataSet: TDataSet);
    procedure cdsProcessoImpParcAfterDelete(DataSet: TDataSet);
    procedure cdsProcessoImpParcAfterOpen(DataSet: TDataSet);
    procedure cdsProcessoImpAfterEdit(DataSet: TDataSet);
    procedure cdsPerComReprNewRecord(DataSet: TDataSet);
    procedure cdsPropostaORIGEMVENDAIDValidate(Sender: TField);
    procedure cdsPropostaTIPOVENDAIDValidate(Sender: TField);
    procedure cdsPedVendVendBeforeInsert(DataSet: TDataSet);
    procedure cdsPedVendDESTINATARIOIDValidate(Sender: TField);
    procedure cdsPedVendBonifBONIFICACAOIDValidate(Sender: TField);
    procedure cdsPedVendCompVLRUNITARIOFOBValidate(Sender: TField);
    procedure cdsPedVendCompVLRUNITARIOREVENDAValidate(Sender: TField);
    procedure cdsProcessoImpBeforePost(DataSet: TDataSet);
    procedure cdsClasseVendedorNewRecord(DataSet: TDataSet);
    procedure cdsVendedorResponsavelNewRecord(DataSet: TDataSet);
    procedure cdsVendedorResponsavelVENDEDORIDValidate(Sender: TField);
    procedure cdsPedVendItemRTTRANSPORTADORIDValidate(Sender: TField);
    procedure cdsClasseNivelNewRecord(DataSet: TDataSet);
    procedure cdsBasePagtoDATACONVFOBValidate(Sender: TField);
    procedure cdsClasseNivelItemAfterDelete(DataSet: TDataSet);
    procedure cdsClasseNivelItemAfterPost(DataSet: TDataSet);
    procedure cdsClasseNivelCLASSEVENDEDOR1IDValidate(Sender: TField);
    procedure cdsPedVendServAfterDelete(DataSet: TDataSet);
    procedure cdsPedVendServAfterPost(DataSet: TDataSet);
    procedure cdsPedVendServBeforeDelete(DataSet: TDataSet);
    procedure cdsPedVendServBeforeEdit(DataSet: TDataSet);
    procedure cdsPedVendServBeforeInsert(DataSet: TDataSet);
    procedure cdsPedVendServNewRecord(DataSet: TDataSet);
    procedure cdsPedVendServSERVICOIDValidate(Sender: TField);
    procedure cdsPedVendItemQUANTIDADEValidate(Sender: TField);
    procedure cdsPedVendItemBeforeEdit(DataSet: TDataSet);
    procedure cdsPedVendItemBeforePost(DataSet: TDataSet);
    procedure cdsPerComReprGRUPOIDValidate(Sender: TField);
    procedure cdsPercComFuncAfterDelete(DataSet: TDataSet);
    procedure cdsPercComFuncAfterPost(DataSet: TDataSet);
    procedure cdsPercComFuncNewRecord(DataSet: TDataSet);
    procedure cdsPercComFuncCLASSEVENDEDORIDValidate(Sender: TField);
    procedure cdsPercComFuncTIPOVENDAIDValidate(Sender: TField);
    procedure cdsPercComFuncGrupoAfterDelete(DataSet: TDataSet);
    procedure cdsPercComFuncGrupoAfterPost(DataSet: TDataSet);
    procedure cdsPercComFuncGrupoNewRecord(DataSet: TDataSet);
    procedure cdsPercComFuncGrupoGRUPOIDValidate(Sender: TField);
    procedure cdsVendedorResponsavelRESPONSAVELIDValidate(Sender: TField);
    procedure cdsPedVendLIBCHEFIAValidate(Sender: TField);
    procedure cdsMotivoRecusaNewRecord(DataSet: TDataSet);
    procedure cdsAcompPedAfterDelete(DataSet: TDataSet);
    procedure cdsAcompPedAfterPost(DataSet: TDataSet);
    procedure cdsAcompPedDocPendAfterDelete(DataSet: TDataSet);
    procedure cdsAcompPedDocPendAfterPost(DataSet: TDataSet);
    procedure cdsDocPendenteNewRecord(DataSet: TDataSet);
    procedure cdsAcompPedNewRecord(DataSet: TDataSet);
    procedure cdsAcompPedDocPendNewRecord(DataSet: TDataSet);
    procedure cdsAcompPedDocPendDOCPENDENTEIDValidate(Sender: TField);
    procedure cdsAcompPedDocPendRESOLVIDOValidate(Sender: TField);
    procedure cdsAcompPedVendAfterDelete(DataSet: TDataSet);
    procedure cdsAcompPedVendAfterPost(DataSet: TDataSet);
    procedure cdsAcompPedVendNewRecord(DataSet: TDataSet);
    procedure cdsAcompPedCLIENTEIDValidate(Sender: TField);
    procedure cdsAcompPedVendVENDEDORIDValidate(Sender: TField);
    procedure cdsAcompPedVendCLASSEVENDEDORIDValidate(Sender: TField);
    procedure cdsAcompPedMOTIVORECUSAIDValidate(Sender: TField);
    procedure cdsAcompPedMOTIVORECUSA2IDValidate(Sender: TField);
  private
    { Private declarations }
    NovoRegPedVend : Boolean;
    procedure VerifComissaoEfetuada( PedVendID : String; Tipo : MsgPedido );
    procedure ValidarModeloEquip( Sender : TField ; cdsModelo : TClientDataSet );
    procedure NovoRegPadraoTabPreco( cdsNovoRegPadraoTabPreco : TClientDataSet );
    function CalculaVlrFob( PedVendID : String ) : Real;
    procedure AtualizaInterveniencia( PedvendId : String );
    procedure ValidVendAtivo( VendedorId : String; var Campo : TStringField );
    procedure ValidClassVend(ClasseVendedorId: String; var Campo: TStringField);
  public
    function VerifEdicaoComissaoEfetuada(PedVendID: String) : Boolean;
 end;

var
  dmPP: TdmPP;

implementation

uses  FuncoesCliente, FuncoesDsi, u_dmGSI, u_ReconcileError, u_dmOs,
  u_dmEF, u_Proposta, DateUtils, u_dmIT;

{$R *.dfm}

procedure  TdmPP.VerifComissaoEfetuada( PedVendID : String; Tipo : MsgPedido );
var iSQL : String;
    cds  : TClientDataSet;
begin
 iSQL := 'SELECT '+
         '  PP_ANALISEVENDA.PEDVENDID'+
         '  FROM'+
         '  PP_ANALISEVENDA'+
         ' WHERE '+
         '  PP_ANALISEVENDA.PEDVENDID = '+ QuotedStr( PedVendID );

 try
  ExecDynamicProvider( -1, iSQL, cds );
  if not cds.IsEmpty then
     if not CheckSenha(dmGsi.UsuarioAtivo,'Pedido de Venda','Edição com Comissão Paga',False ) then
        begin
         case Tipo of
         Atencao  : MessageDlg('Toda alteração no pedido será gerado log, pois já foi feito o pagto de comissão', mtWarning, [mbOK], 0 );
         Bloquear : raise Exception.Create('Não é permitido a alteração dos dados, pois já foi feito o pagto de comissão' );
         end;
        end;

 cds.Close;

 finally
   FreeAndNil( cds );
 end;
end;

function  TdmPP.VerifEdicaoComissaoEfetuada( PedVendID : String ) : Boolean;
var iSQL : String;
    cds  : TClientDataSet;
begin
 Result := True;
 cds    := Nil;
 iSQL   := 'SELECT PP_ANALISEVENDA.PEDVENDID'+
           '  FROM PP_ANALISEVENDA'+
           ' WHERE '+
           '  PP_ANALISEVENDA.PEDVENDID = '+ QuotedStr( PedVendID );

 try
  try
   ExecDynamicProvider( -1, iSQL, cds );
   if not cds.IsEmpty then
      if not CheckSenha(dmGsi.UsuarioAtivo,'Pedido de Venda','Edição com Comissão Paga',False ) then
         Result := False;

   cds.Close;

  except
  on E:Exception do
   begin
    Exception.Create( E.Message );
    Result := False
   end;
  end;

 finally
  FreeAndNil( cds );
 end;
end;


procedure TdmPP.ValidarModeloEquip( Sender : TField ; cdsModelo : TClientDataSet );
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 if TField( Sender ).AsString = '' then
    exit;

 Cds     := nil;
 InstSQL := 'MODELOID = ' + QuotedStr( Sender.AsString );
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvCatalogo' ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsModelo.FieldByName('L_DESCRICAOPORTUGUES').Value := Cds.FieldByName('DESCRICAOPORTUGUES').AsString;
      cdsModelo.FieldByName('L_DESCRICAOINGLES').Value    := Cds.FieldByName('DESCRICAOINGLES').AsString;
      cdsModelo.FieldByName('L_GRUPOID').Value            := Cds.FieldByName('GRUPOID').AsString;
      cdsModelo.FieldByName('L_DESCR_GRUPO').Value        := Cds.FieldByName('L_DESCRICAO').AsString;
//      cdsModelo.FieldByName('L_IMAGEM').Value             := Cds.FieldByName('IMAGEM').AsString;
     end
  else
     begin
      cdsModelo.FieldByName('L_DESCRICAOPORTUGUES').Clear;
      cdsModelo.FieldByName('L_DESCRICAOINGLES').Clear;
      cdsModelo.FieldByName('L_GRUPOID').Clear;
      cdsModelo.FieldByName('L_DESCR_GRUPO').Clear;
      MessageDlg('Valor do campo ' + Sender.DisplayName + ' é Inválido.', mtError, [mbOk], 0);
      Abort;
     end;

 finally
  Cds.Close;
  FreeAndNil( Cds );
 end;
end;

procedure TdmPP.NovoRegPadraoTabPreco( cdsNovoRegPadraoTabPreco : TClientDataSet );
begin
 cdsNovoRegPadraoTabPreco.FieldByName('QUANTIDADE').Value         := 1;
 cdsNovoRegPadraoTabPreco.FieldByName('VLRUNITARIOFOB').Value     := 0;
 cdsNovoRegPadraoTabPreco.FieldByName('VLRTOTALFOB').Value        := 0;
 cdsNovoRegPadraoTabPreco.FieldByName('VLRUNITARIOREVENDA').Value := 0;
 cdsNovoRegPadraoTabPreco.FieldByName('VLRTOTALREVENDA').Value    := 0;
 cdsNovoRegPadraoTabPreco.FieldByName('VLRUNITARIONET').Value     := 0;
 cdsNovoRegPadraoTabPreco.FieldByName('VLRTOTALNET').Value        := 0;
 cdsNovoRegPadraoTabPreco.FieldByName('USUARIO').Value            := dmGsi.UsuarioAtivo;
end;


procedure TdmPP.cdsCatalogoFORNECEDORIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 if TField( Sender ).AsString = '' then
    begin
     cdsCatalogoL_NOME_FORNECEDOR.Clear;
     exit;
    end;

 Cds     := nil;
 InstSQL := 'ENTIDADEID =' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvEntidade' ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsCatalogoL_NOME_FORNECEDOR.Value := Cds.FieldByName('NOME').AsString
  else
     begin
      cdsCatalogoL_NOME_FORNECEDOR.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmPP.cdsCatalogoGRUPOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 if TField( Sender ).AsString = '' then
    begin
     cdsCatalogoL_SIGLAGRUPO.Clear;
     cdsCatalogoL_DESCRICAOGRUPO.Clear;
     exit;
    end;

 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvGrupo' ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsCatalogoL_SIGLAGRUPO.Value     := Cds.FieldByName('SIGLAGRUPO').AsString;
      cdsCatalogoL_DESCRICAOGRUPO.Value := Cds.FieldByName('DESCRICAO').AsString;
     end
  else
     begin
      cdsCatalogoL_SIGLAGRUPO.Clear;
      cdsCatalogoL_DESCRICAOGRUPO.Clear;
      raise Exception.Create('Valor do campo ' + Sender.DisplayName + ' é Inválido.');
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmPP.cdsCatalogoCUSTOHORAIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 if TField( Sender ).AsString = '' then
    exit;

 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( dmOS.cdsCustoHora.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsCatalogoL_DESCRICAOCUSTOHORA.Value := Cds.FieldByName('DESCRICAO').AsString;
      cdsCatalogoL_VLRHORATRAB.Value        := Cds.FieldByName('VLRHORATRAB').AsCurrency;
      cdsCatalogoL_VLRHORATRANSP.Value      := Cds.FieldByName('VLRHORATRANSP').AsCurrency;
      cdsCatalogoL_VLRHORAESPERA.Value      := Cds.FieldByName('VLRHORAESPERA').AsCurrency;
      cdsCatalogoL_VLRHORAOUTROS.Value      := Cds.FieldByName('VLRHORAOUTROS').AsCurrency;
     end

  else
     begin
      cdsCatalogoL_DESCRICAOCUSTOHORA.Clear;
      cdsCatalogoL_VLRHORATRAB.Clear;
      cdsCatalogoL_VLRHORATRANSP.Clear;
      cdsCatalogoL_VLRHORAESPERA.Clear;
      cdsCatalogoL_VLRHORAOUTROS.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.');
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmPP.cdsEquipamentoNewRecord(DataSet: TDataSet);
begin
 cdsEquipamentoDATAINCLUSAO.AsDateTime := Date;
 cdsEquipamentoDISPONIVEL.Value        := 1;
 cdsEquipamentoVLRFOB.Value            := 0;
 cdsEquipamentoVLRREVENDA.Value        := 0;
 cdsEquipamentoVLRNET.Value            := 0;
 cdsEquipamentoUSUARIO.Value           := dmGsi.UsuarioAtivo;
end;

procedure TdmPP.cdsCatalogoAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmPP.cdsCatalogoAfterPost(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmPP.cdsComposicaoMODELOCOMPONENTEIDValidate(Sender: TField);
begin
 ValidarModeloEquip( Sender, cdsComposicao );
end;

procedure TdmPP.cdsCatalogoReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
 Action := HandleReconcileError( DataSet, UpdateKind, E);
end;

procedure TdmPP.cdsEquipamentoAfterPost(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 // Agrupar e calcular o preco do equipamento
 shdcnnPP.AppServer.ICalcPrecoEquipamento( cdsEquipamentoMODELOEQUIPAMENTOID.Value );
 DataSet.Refresh;
end;

procedure TdmPP.cdsComposicaoNewRecord(DataSet: TDataSet);
begin
 NovoRegPadraoTabPreco( cdsComposicao );
end;

procedure TdmPP.cdsDependenciaNewRecord(DataSet: TDataSet);
begin
 NovoRegPadraoTabPreco( cdsDependencia );
end;

procedure TdmPP.cdsOpcionalNewRecord(DataSet: TDataSet);
begin
 NovoRegPadraoTabPreco( cdsOpcional );
end;

procedure TdmPP.cdsOpcionalMODELOCOMPONENTEIDValidate(Sender: TField);
begin
 ValidarModeloEquip( Sender, cdsOpcional );
end;

procedure TdmPP.cdsEquipamentoMODELOEQUIPAMENTOIDValidate(Sender: TField);

 procedure LimpaFields;
 begin
  cdsEquipamentoL_DESCRICAOPORTUGUES.Clear;
  cdsEquipamentoL_DESCRICAOINGLES.Clear;
  cdsEquipamentoL_COMENTARIO.Clear;
  cdsEquipamentoL_GRUPOID.Clear;
  cdsEquipamentoL_DESCR_GRUPO.Clear;
  cdsEquipamentoL_IMAGEM.Clear;
 end;

var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 if TField( Sender ).AsString = '' then
    exit;

 Cds     := nil;
 InstSQL := 'MODELOEQUIPAMENTOID = ' + QuotedStr( Sender.AsString );
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvEquipamento' ),
                            InstSQL );

 ExecDynamicProvider( -1, iSQL, Cds );
 if not Cds.IsEmpty then
    begin
     //Raise Exception.Create( 'Modelo do Equipamento já cadastrado.' );
      MessageDlg('Modelo do Equipamento já cadastrado.' , mtError, [mbOk], 0);
      abort;
    end;

 InstSQL := 'MODELOID = ' + QuotedStr( Sender.AsString );
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvCatalogo' ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      if Cds.FieldByName('TIPO').Value = 'A' then
         begin
          cdsEquipamentoL_DESCRICAOPORTUGUES.Value := Cds.FieldByName('DESCRICAOPORTUGUES').AsString;
          cdsEquipamentoL_DESCRICAOINGLES.Value    := Cds.FieldByName('DESCRICAOINGLES').AsString;
          cdsEquipamentoL_COMENTARIO.Value         := Cds.FieldByName('COMENTARIO').AsString;
          cdsEquipamentoL_GRUPOID.Value            := Cds.FieldByName('GRUPOID').Value;
          cdsEquipamentoL_DESCR_GRUPO.Value        := Cds.FieldByName('L_DESCRICAO').AsString;
          cdsEquipamentoL_IMAGEM.Value             := Cds.FieldByName('IMAGEM').Value;
         end
      else
         begin
          LimpaFields;
          //Raise Exception.Create( 'Modelo do Equipamento não é do tipo Aparelho!' );
          MessageDlg('Modelo do Equipamento não é do tipo Aparelho!' , mtError, [mbOk], 0);
          abort;
         end;
     end
  else
     begin
      LimpaFields;
      //Raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
      MessageDlg('Valor do campo ' + Sender.DisplayName + ' é Inválido.' , mtError, [mbOk], 0);
      abort;
     end;

 finally
  Cds.Close;
  FreeAndNil( Cds );
 end;

end;

procedure TdmPP.cdsComposicaoPRODUTOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 if TField( Sender ).AsString = '' then
    begin
     cdsComposicaoL_DESCRICAO_PORT.Clear;
     cdsComposicaoL_DESCRICAO_INGLES.Clear;
     cdsComposicaoL_ESTOQUEFISICO.Clear;
     exit;
    end;

 Cds     := nil;
 InstSQL := 'EMPRESAID = ' + cdsComposicaoEMPRESAID.AsString + ' AND ' +
            Sender.FieldName + ' = ' + Sender.AsString;

 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvProduto' ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsComposicaoL_DESCRICAO_PORT.Value      := Cds.FieldByName('DESCRICAOPORTUGUES').AsString;
      cdsComposicaoL_DESCRICAO_INGLES.Value    := Cds.FieldByName('DESCRICAOINGLES').AsString;
      cdsComposicaoL_ESTOQUEFISICO.Value       := Cds.FieldByName('ESTOQUEFISICO').AsCurrency;
     end
  else
     begin
      cdsComposicaoL_DESCRICAO_PORT.Clear;
      cdsComposicaoL_DESCRICAO_INGLES.Clear;
      cdsComposicaoL_ESTOQUEFISICO.Clear;
      MessageDlg('Valor do campo ' + Sender.DisplayName + ' é Inválido.', mtError, [mbOk], 0);
      Abort;
     end;

 finally
  Cds.Close;
  FreeAndNil( Cds );
 end;
end;

procedure TdmPP.cdsDependenciaPRODUTOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 if TField( Sender ).AsString = '' then
    exit;

 Cds     := nil;
 InstSQL := 'EMPRESAID = ' + cdsDependenciaEMPRESAID.AsString + ' AND ' +
            Sender.FieldName + ' = ' + Sender.AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvProduto' ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsDependenciaL_DESCRICAO_PORT.Value      := Cds.FieldByName('DESCRICAOPORTUGUES').AsString;
      cdsDependenciaL_DESCRICAO_INGLES.Value    := Cds.FieldByName('DESCRICAOINGLES').AsString;
      cdsDependenciaL_ESTOQUEFISICO.Value       := Cds.FieldByName('ESTOQUEFISICO').AsCurrency;
     end
  else
     begin
      MessageDlg('Valor do campo ' + Sender.DisplayName + ' é Inválido.', mtError, [mbOk], 0);
      Abort;
     end;

 finally
  Cds.Close;
  FreeAndNil( Cds );
 end;
end;

procedure TdmPP.cdsComposicaoVLRUNITARIOFOBValidate(Sender: TField);
begin
 cdsComposicaoVLRTOTALFOB.Value := cdsComposicaoQUANTIDADE.Value *
                                   cdsComposicaoVLRUNITARIOFOB.Value;
end;

procedure TdmPP.cdsComposicaoVLRUNITARIOREVENDAValidate(Sender: TField);
begin
 cdsComposicaoVLRTOTALREVENDA.Value := cdsComposicaoQUANTIDADE.Value *
                                       cdsComposicaoVLRUNITARIOREVENDA.Value;
end;

procedure TdmPP.cdsComposicaoVLRUNITARIONETValidate(Sender: TField);
begin
 cdsComposicaoVLRTOTALNET.Value := cdsComposicaoQUANTIDADE.Value *
                                   cdsComposicaoVLRUNITARIONET.Value;
end;

procedure TdmPP.cdsDependenciaVLRUNITARIOFOBValidate(Sender: TField);
begin
 cdsDependenciaVLRTOTALFOB.Value := cdsDependenciaQUANTIDADE.Value *
                                    cdsDependenciaVLRUNITARIOFOB.Value;
end;

procedure TdmPP.cdsDependenciaVLRUNITARIOREVENDAValidate(Sender: TField);
begin
 cdsDependenciaVLRTOTALREVENDA.Value := cdsDependenciaQUANTIDADE.Value *
                                        cdsDependenciaVLRUNITARIOREVENDA.Value;
end;

procedure TdmPP.cdsDocPendenteNewRecord(DataSet: TDataSet);
begin
 cdsDocPendenteDOCPENDENTEID.Value := ContadorDB('PP_DOCPENDENTE','DOCPENDENTEID','');
 cdsDocPendenteUSUARIO.Value       := dmGsi.UsuarioAtivo;
end;

procedure TdmPP.cdsDependenciaVLRUNITARIONETValidate(Sender: TField);
begin
 cdsDependenciaVLRTOTALNET.Value := cdsDependenciaQUANTIDADE.Value *
                                    cdsDependenciaVLRUNITARIONET.Value;
end;

procedure TdmPP.cdsOpcionalVLRUNITARIOFOBValidate(Sender: TField);
begin
 cdsOpcionalVLRTOTALFOB.Value := cdsOpcionalQUANTIDADE.Value *
                                 cdsOpcionalVLRUNITARIOFOB.Value;
end;

procedure TdmPP.cdsOpcionalVLRUNITARIOREVENDAValidate(Sender: TField);
begin
 cdsOpcionalVLRTOTALREVENDA.Value := cdsOpcionalQUANTIDADE.Value *
                                     cdsOpcionalVLRUNITARIOREVENDA.Value;
end;

procedure TdmPP.cdsOpcionalVLRUNITARIONETValidate(Sender: TField);
begin
 cdsOpcionalVLRTOTALNET.Value := cdsOpcionalQUANTIDADE.Value *
                                 cdsOpcionalVLRUNITARIONET.Value;
end;

procedure TdmPP.cdsCatalogoNewRecord(DataSet: TDataSet);
begin
 cdsCatalogoUSUARIO.Value     := dmGsi.UsuarioAtivo;
end;

procedure TdmPP.cdsPropostaNewRecord(DataSet: TDataSet);
var Cds : TClientDataSet;
    iSQL : String;
begin
 cdsPropostaPROPOSTAID.Value := ContadorDB('PP_PROPOSTA','PROPOSTAID','');
 cdsPropostaUSUARIO.Value    := dmGsi.UsuarioAtivo;

 Cds     := nil;
 iSQL    := 'SELECT NVL( MAX( PROPOSTAID ), 0 ) FROM PP_PROPOSTA';

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsPropostaPROPOSTAID.Value   := Cds.Fields[0].Value + 1;
  Cds.Close;

  cdsPropostaDATAPROPOSTA.AsDateTime := Date;
  cdsPropostaANDAMENTOPROPOSTA.Value := 'A';
  cdsPropostaLIBERACAO.Value         := 0;
  cdsPropostaTRADEIN.Value           := 0;
  cdsPropostaUSUARIO.Value           := dmGsi.UsuarioAtivo;
 finally
  FreeAndNil( Cds );
 end
end;

procedure TdmPP.cdsPropostaCPFCNPJGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
 if not Sender.IsNull then
    Text := FormatCNPF_CNPJ_CCM( Sender.AsString );
end;

procedure TdmPP.cdsPropostaCPFCNPJValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 if TField( Sender ).AsString = '' then
    exit;

 if not ValidCnPJ_CnPF( TField( Sender ).Value ) then
    begin
     MessageDlg('CPF / CNPJ inválido.', mtError, [mbOk], 0);
     Abort;
    end;

 Cds     := nil;
 InstSQL := 'CPFCNPJ = ' + QuotedStr( Sender.AsString );
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvEntidade' ),
                            InstSQL );
 try
  try
   ExecDynamicProvider( -1, iSQL, Cds );
   if not Cds.IsEmpty then
      begin
       cdsPropostaNOMECLIENTE.Value := Cds.FieldByName('NOME').AsString;
       cdsPropostaCEPID.Value       := Cds.FieldByName('CEPID').AsInteger;
      end
   else
      begin
       cdsPropostaNOMECLIENTE.Clear;
       cdsPropostaCEPID.Clear;
      end;
  Except
  On E:Exception do
     Exception.Create( E.Message );
  end;
 finally
  Cds.Close;
  FreeAndNil( Cds );
 end;
end;

procedure TdmPP.cdsPropostaCEPIDValidate(Sender: TField);
var Cds  : TClientDataSet;
    iSql, Endereco : String;
begin
 if TField( Sender ).AsString = '' then
    exit;

 iSQL := SQLCEPPadrao +
         ' AND CEPID = ' + cdsPropostaCEPID.AsString;

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
          cdsPropostaENDERECO.Value  := SubstituiString( Endereco, '  ','' );
          cdsPropostaBAIRRO.Value    := cds.FieldByName('BAIRROLOGRADOURO').AsString;
          cdsPropostaCIDADE.Value    := cds.FieldByName('NOMELOCALIDADE').AsString;
          cdsPropostaSIGLAUFID.Value := cds.FieldByName('SIGLAUFID').AsString;
          cdsPropostaPAIS.Value      := cds.FieldByName('NOMEPAISPORTUGUES').AsString;
         end;
     end
  else
     raise Exception.Create( 'Código Postal (CEP) está inválido.');

 finally
  Cds.Close;
  FreeAndNil( Cds );
 end;

end;

procedure TdmPP.cdsPropostaFILIALIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 if TField( Sender ).AsString = '' then
    exit;

 Cds     := nil;
 InstSQL := Sender.FieldName + ' = ' + Sender.AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( dmEF.cdsFilial.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsPropostaL_FILIAL.Value := Cds.FieldByName('NOMEFANTASIA').AsString
  else
     begin
      cdsPropostaL_FILIAL.Clear;
      MessageDlg('Valor do campo ' + Sender.DisplayName + ' é Inválido.', mtError, [mbOk], 0);
      Abort;
     end;

 finally
  Cds.Close;
  FreeAndNil( Cds );
 end;
end;

procedure TdmPP.cdsPropostaCONDPAGTOPROPIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 if TField( Sender ).AsString = '' then
    exit;

 Cds     := nil;
 InstSQL := Sender.FieldName + ' = ' + Sender.AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsCondPagtoProp.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );
  if not Cds.IsEmpty then
     begin
      cdsPropostaDESCRICAOCONDPAGTO.Value := Cds.FieldByName('DESCRICAO').AsVariant;
      cdsPropostaL_CONDPAGTOID.Value        := Cds.FieldByName('CONDPAGTOID').AsInteger;
      cdsPropostaL_DESCR_CONDPGTO.Value     := Cds.FieldByName('L_DESC_PAGTO').AsString;
     end
  else
     begin
      cdsPropostaDESCRICAOCONDPAGTO.Clear;
      cdsPropostaL_CONDPAGTOID.Clear;
      cdsPropostaL_DESCR_CONDPGTO.Clear;
      MessageDlg('Valor do campo ' + Sender.DisplayName + ' é Inválido.', mtError, [mbOk], 0);
      Abort;
     end;
 finally
  Cds.Close;
  FreeAndNil( Cds );
 end;
end;

procedure TdmPP.cdsPropostaOBSPROPIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 if TField( Sender ).AsString = '' then
    exit;

 Cds     := nil;
 InstSQL := Sender.FieldName + ' = ' + Sender.AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsObsProp.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );
  if not Cds.IsEmpty then
     cdsPropostaL_DESCR_OBS.Value     := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsPropostaL_DESCR_OBS.Clear;
      MessageDlg('Valor do campo ' + Sender.DisplayName + ' é Inválido.', mtError, [mbOk], 0);
      Abort;
     end;
 finally
  Cds.Close;
  FreeAndNil( Cds );
 end;
end;

procedure TdmPP.cdsPropostaGARANTIAIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 if TField( Sender ).AsString = '' then
    exit;

 Cds     := nil;
 InstSQL := Sender.FieldName + ' = ' + Sender.AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsGarantia.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsPropostaL_DESCR_GARANTIA.Value := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsPropostaL_DESCR_GARANTIA.Clear;
      MessageDlg('Valor do campo ' + Sender.DisplayName + ' é Inválido.', mtError, [mbOk], 0);
      Abort;
     end;
 finally
  Cds.Close;
  FreeAndNil( Cds );
 end;
end;

procedure TdmPP.cdsPropostaASSISTTECIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 if TField( Sender ).AsString = '' then
    exit;

 Cds     := nil;
 InstSQL := Sender.FieldName + ' = ' + Sender.AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsAssistTec.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );
  if not Cds.IsEmpty then
     cdsPropostaL_DESCR_ASSISTTEC.Value := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsPropostaL_DESCR_ASSISTTEC.Clear;
      MessageDlg('Valor do campo ' + Sender.DisplayName + ' é Inválido.', mtError, [mbOk], 0);
      Abort;
     end;
 finally
  Cds.Close;
  FreeAndNil( Cds );
 end;
end;

procedure TdmPP.cdsPropostaINSTALACAOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 if TField( Sender ).AsString = '' then
    exit;

 Cds     := nil;
 InstSQL := Sender.FieldName + ' = ' + Sender.AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsInstalacao.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );
  if not Cds.IsEmpty then
     cdsPropostaL_DESCR_INSTALACAO.Value := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsPropostaL_DESCR_INSTALACAO.Clear;
      MessageDlg('Valor do campo ' + Sender.DisplayName + ' é Inválido.', mtError, [mbOk], 0);
      Abort;
     end;
 finally
  Cds.Close;
  FreeAndNil( Cds );
 end;
end;

procedure TdmPP.cdsPropostaPRAZOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 if TField( Sender ).AsString = '' then
    exit;

 Cds     := nil;
 InstSQL := Sender.FieldName + ' = ' + Sender.AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsPrazo.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );
  if not Cds.IsEmpty then
     cdsPropostaL_DESCR_PRAZO.Value := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsPropostaL_DESCR_PRAZO.Clear;
      MessageDlg('Valor do campo ' + Sender.DisplayName + ' é Inválido.', mtError, [mbOk], 0);
      Abort;
     end;
 finally
  Cds.Close;
  FreeAndNil( Cds );
 end;
end;

procedure TdmPP.cdsPropostaVALIDADEIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 if TField( Sender ).AsString = '' then
    exit;

 Cds     := nil;
 InstSQL := Sender.FieldName + ' = ' + Sender.AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsValidade.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );
  if not Cds.IsEmpty then
     cdsPropostaL_DESCR_VALID.Value := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsPropostaL_DESCR_VALID.Clear;
      MessageDlg('Valor do campo ' + Sender.DisplayName + ' é Inválido.', mtError, [mbOk], 0);
      Abort;
     end;
 finally
  Cds.Close;
  FreeAndNil( Cds );
 end;
end;

procedure TdmPP.cdsPropostaCARTAAPRESENTIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 if Trim(Sender.AsString) <> '' then
    begin
     Cds     := nil;
     InstSQL := Sender.FieldName + ' = ' + Sender.AsString;
     iSQL    := AnalisarAddSQL( LocateSQL( cdsCartaApresent.ProviderName ),
                                InstSQL );
     try
      ExecDynamicProvider( -1, iSQL, Cds );
      if not Cds.IsEmpty then
         begin
          cdsPropostaL_CARTA_APRESENT.Value := Cds.FieldByName('DESCRRESUMIDA').AsString;
          cdsPropostaL_CARTA.Value          := Cds.FieldByName('CARTA').AsString;
         end
      else
         begin
          cdsPropostaL_CARTA_APRESENT.Clear;
          cdsPropostaL_CARTA.Clear;
          MessageDlg('Valor do campo ' + Sender.DisplayName + ' é Inválido.', mtError, [mbOk], 0);
          Abort;
         end;
     finally
      Cds.Close;
      FreeAndNil( Cds );
     end;
 end;
end;

procedure TdmPP.cdsPropEquipamentoNewRecord(DataSet: TDataSet);
var Cds: TClientDataSet;
    iSQL: String;
begin
 iSQL := 'SELECT NVL( MAX( ITEMID ), 0 ) ' +
         ' FROM PP_PROPEQUIPAMENTO ' +
         ' WHERE PROPOSTAID = ' + cdsPropostaPROPOSTAID.AsString;

 try
  ExecDynamicProvider( -1, iSQL, Cds );
  cdsPropEquipamentoQUANTIDADE.Value         := 1;
  cdsPropEquipamentoVLRUNITARIOFOB.Value     := 0;
  cdsPropEquipamentoVLRTOTALFOB.Value        := 0;
  cdsPropEquipamentoVLRUNITARIOREVENDA.Value := 0;
  cdsPropEquipamentoVLRTOTALREVENDA.Value    := 0;
  cdsPropEquipamentoVLRUNITARIONET.Value     := 0;
  cdsPropEquipamentoVLRTOTALNET.Value        := 0;
  cdsPropEquipamentoVLRDESCONTO.Value        := 0;
  cdsPropEquipamentoPORCDESCONTO.Value       := 0;
  cdsPropEquipamentoVLRLIQUIDOREVENDA.Value  := 0;
  cdsPropEquipamentoITEMID.Value     := Cds.Fields[0].Value + 1;
  cdsPropEquipamentoUSUARIO.Value    := dmGsi.UsuarioAtivo;
  cdsPropEquipamentoQUANTIDADE.Value := 1;
  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmPP.cdsPropComposicaoNewRecord(DataSet: TDataSet);
begin
 cdsPropComposicaoUSUARIO.Value    := dmGsi.UsuarioAtivo;
end;

procedure TdmPP.cdsPropDependenciaNewRecord(DataSet: TDataSet);
begin
 cdsPropDependenciaUSUARIO.Value    := dmGsi.UsuarioAtivo;
end;

procedure TdmPP.cdsPropOpcionalNewRecord(DataSet: TDataSet);
begin
 cdsPropOpcionalUSUARIO.Value    := dmGsi.UsuarioAtivo;
end;

procedure TdmPP.cdsPropBonificacaoNewRecord(DataSet: TDataSet);
begin
 cdsPropBonificacaoVLRBONIFICACAO.Value := 0;
 cdsPropBonificacaoITEMID.Value  := ContadorDB('PP_PROPBONIFICACAO', 'PP_PROPBONIFICACAO.ITEMID','WHERE PROPOSTAID = ' + cdsPropostaPROPOSTAID.AsString );
 cdsPropBonificacaoUSUARIO.Value := dmGsi.UsuarioAtivo;
end;

procedure TdmPP.cdsPropVendedorNewRecord(DataSet: TDataSet);
begin
 cdsPropVendedorITEMID.Value  := ContadorDB('PP_PROPVENDEDOR', 'PP_PROPVENDEDOR.ITEMID','WHERE PROPOSTAID = ' + cdsPropostaPROPOSTAID.AsString );
 cdsPropVendedorUSUARIO.Value := dmGsi.UsuarioAtivo;
end;

procedure TdmPP.cdsPropTradeInNewRecord(DataSet: TDataSet);
begin
 cdsPropTradeInITEMID.Value  := ContadorDB('PP_PROPTRADEIN', 'PP_PROPTRADEIN.ITEMID','WHERE PROPOSTAID = ' + cdsPropostaPROPOSTAID.AsString );
 cdsPropTradeInUSUARIO.Value := dmGsi.UsuarioAtivo;
end;

procedure TdmPP.cdsPropostaDATAVALIDADEValidate(Sender: TField);
begin
 if (cdsPropostaDATAPROPOSTA.AsDateTime > cdsPropostaDATAVALIDADE.AsDateTime) then
    raise Exception.Create( 'Dt. de Validade tem que ser maior do que a Dt. da Proposta.' );
end;

procedure TdmPP.cdsComposicaoAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsEquipamento.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsEquipamento.Edit;
end;

procedure TdmPP.cdsComposicaoAfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsEquipamento.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsEquipamento.Edit;
end;

procedure TdmPP.cdsPropEquipamentoAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsProposta.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsProposta.Edit;
end;

procedure TdmPP.cdsPropEquipamentoAfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsProposta.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsProposta.Edit;
end;

procedure TdmPP.cdsCondPagtoPropCONDPAGTOIDValidate(Sender: TField);
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
     cdsCondPagtoPropL_DESC_PAGTO.Value := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsCondPagtoPropL_DESC_PAGTO.Clear;
      //raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.');
      MessageDlg('Valor do campo ' + Sender.DisplayName + ' é Inválido.', mtError, [mbOk], 0);
     end;
  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;

end;

procedure TdmPP.cdsCartaApresentNewRecord(DataSet: TDataSet);
begin
 cdsCartaApresentCARTAAPRESENTID.Value := ContadorDB('PP_CARTAAPRESENT','CARTAAPRESENTID','');
 cdsCartaApresentUSUARIO.Value         := dmGsi.UsuarioAtivo;
end;

procedure TdmPP.cdsPropostaEMAILValidate(Sender: TField);
begin
 if Pos('@', cdsPropostaEMAIL.AsString) = 0 then
    raise Exception.Create( 'Endereço de e-mail não é válido.' + Sender.DisplayName + ' é Inválido.' );
end;

procedure TdmPP.cdsGarantiaNewRecord(DataSet: TDataSet);
begin
 cdsGarantiaGARANTIAID.Value := ContadorDB('PP_GARANTIA','GARANTIAID','');
 cdsGarantiaUSUARIO.Value    := dmGsi.UsuarioAtivo;
end;

procedure TdmPP.cdsCondPagtoPropNewRecord(DataSet: TDataSet);
begin
 cdsCondPagtoPropCONDPAGTOPROPID.Value := ContadorDB('PP_CONDPAGTOPROP','CONDPAGTOPROPID','');
 cdsCondPagtoPropDEDUZIRCOMISSAO.Value := 0;
 cdsCondPagtoPropUSUARIO.Value         := dmGsi.UsuarioAtivo;
end;

procedure TdmPP.cdsObsPropNewRecord(DataSet: TDataSet);
begin
 cdsObsPropOBSPROPID.Value := ContadorDB('PP_OBSPROP','OBSPROPID','');
 cdsObsPropUSUARIO.Value    := dmGsi.UsuarioAtivo;
end;

procedure TdmPP.cdsAssistTecNewRecord(DataSet: TDataSet);
begin
 cdsAssistTecASSISTTECID.Value := ContadorDB('PP_ASSISTTEC','ASSISTTECID','');
 cdsAssistTecUSUARIO.Value     := dmGsi.UsuarioAtivo;
end;

procedure TdmPP.cdsInstalacaoNewRecord(DataSet: TDataSet);
begin
 cdsInstalacaoINSTALACAOID.Value := ContadorDB('PP_INSTALACAO','INSTALACAOID','');
 cdsInstalacaoUSUARIO.Value      := dmGsi.UsuarioAtivo;
end;

procedure TdmPP.cdsMotivoRecusaNewRecord(DataSet: TDataSet);
begin
 cdsMotivoRecusaMOTIVORECUSAID.Value := ContadorDB('PP_MOTIVORECUSA','MOTIVORECUSAID','');
 cdsMotivoRecusaUSUARIO.Value        := dmGsi.UsuarioAtivo;
end;

procedure TdmPP.cdsPrazoNewRecord(DataSet: TDataSet);
begin
 cdsPrazoPRAZOID.Value  := ContadorDB('PP_PRAZO','PRAZOID','');
 cdsPrazoUSUARIO.Value  := dmGsi.UsuarioAtivo;
end;

procedure TdmPP.cdsValidadeNewRecord(DataSet: TDataSet);
begin
 cdsValidadeVALIDADEID.Value  := ContadorDB('PP_VALIDADE','VALIDADEID','');
 cdsValidadeUSUARIO.Value     := dmGsi.UsuarioAtivo;
end;

procedure TdmPP.cdsBonificacaoNewRecord(DataSet: TDataSet);
begin
 cdsBonificacaoBONIFICACAOID.Value  := ContadorDB('PP_BONIFICACAO','BONIFICACAOID','');
 cdsBonificacaoUSUARIO.Value        := dmGsi.UsuarioAtivo;
end;

procedure TdmPP.cdsPropBonificacaoBONIFICACAOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := Sender.FieldName + ' = ' + Sender.AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvBonificacao' ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsPropBonificacaoL_DESCR_BONIF.Value := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsPropBonificacaoL_DESCR_BONIF.Clear;
      //raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
      MessageDlg('Valor do campo ' + Sender.DisplayName + ' é Inválido.' , mtError, [mbOk], 0);
     end;

 finally
  Cds.Close;
  FreeAndNil( Cds );
 end;
end;

procedure TdmPP.cdsEquipamentoDATAALTERACAOValidate(Sender: TField);
begin
 if ((cdsEquipamentoDATAALTERACAO.AsDateTime) < (cdsEquipamentoDATAINCLUSAO.AsDateTime)) then
 begin
  //raise Exception.Create( 'Data de Alteração tem que ser maior do que a Data de Inclusão.');
  MessageDlg('Data de Alteração tem que ser maior do que a Data de Inclusão.', mtError, [mbOk], 0);
  abort;
 end;
end;

procedure TdmPP.cdsPropComposicaoAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsPropEquipamento.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsPropEquipamento.Edit;
end;

procedure TdmPP.cdsPropComposicaoAfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsPropEquipamento.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsPropEquipamento.Edit;
end;

procedure TdmPP.cdsPropOpcionalAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsPropEquipamento.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsPropEquipamento.Edit;
end;

procedure TdmPP.cdsPropOpcionalAfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsPropEquipamento.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsPropEquipamento.Edit;
end;

procedure TdmPP.cdsPropDependenciaAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsPropComposicao.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsPropComposicao.Edit;
end;

procedure TdmPP.cdsPropDependenciaAfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsPropComposicao.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsPropComposicao.Edit;
end;

procedure TdmPP.cdsPropBonificacaoAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsProposta.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsProposta.Edit;
end;

procedure TdmPP.cdsPropBonificacaoAfterOpen(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsProposta.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsProposta.Edit;
end;

procedure TdmPP.cdsPropVendedorAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsProposta.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsProposta.Edit;
end;

procedure TdmPP.cdsPropVendedorAfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsProposta.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsProposta.Edit;
end;

procedure TdmPP.cdsPropTradeInAfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsProposta.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsProposta.Edit;
end;

procedure TdmPP.cdsPropTradeInAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsProposta.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsProposta.Edit;
end;

procedure TdmPP.cdsDependenciaMODELODEPENDENCIAIDValidate(Sender: TField);
begin
 ValidarModeloEquip( Sender, cdsDependencia );
end;

procedure TdmPP.cdsAcessorioMODELOACESSORIOIDValidate(Sender: TField);
begin
 ValidarModeloEquip( Sender, cdsAcessorio );
end;

procedure TdmPP.cdsIncompativelMODELOINCOMPATIVELIDValidate(
  Sender: TField);
begin
 ValidarModeloEquip( Sender, cdsIncompativel );
end;

procedure TdmPP.cdsAcessorioNewRecord(DataSet: TDataSet);
begin
 NovoRegPadraoTabPreco( cdsAcessorio );
end;

procedure TdmPP.cdsAcompPedAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmPP.cdsAcompPedAfterPost(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmPP.cdsAcompPedCLIENTEIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 if TField( Sender ).AsString = '' then
    exit;

 Cds     := nil;
 InstSQL :=   'EF_ENTIDADE.ENTIDADEID = ' + QuotedStr( Sender.AsString );
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvEntidade' ),
                            InstSQL );
 try
  try
   ExecDynamicProvider( -1, iSQL, Cds );
   if not Cds.IsEmpty then
      begin
       cdsAcompPedNOMECLIENTE.Value := Cds.FieldByName('NOME').AsString;
      end
   else
      begin
       cdsPropostaNOMECLIENTE.Clear;
       MessageDlg('Valor do campo ' + Sender.DisplayName + ' é Inválido.', mtError, [mbOk], 0);
       Abort;
      end;
  except
  On E:Exception do
     Exception.Create( E.Message );
  end;
 finally
  Cds.Close;
  FreeAndNil( Cds );
 end;

end;

procedure TdmPP.cdsAcompPedDocPendAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsAcompPed.State;

 if cdsAcompPed.UpdateStatus = usUnmodified then
    cdsAcompPed.Post;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsAcompPed.Edit;
end;

procedure TdmPP.cdsAcompPedDocPendAfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsAcompPed.State;

 if cdsAcompPed.UpdateStatus = usUnmodified then
    if cdsAcompPed.UpdateStatus <> usDeleted then
       cdsAcompPed.Post;

 if cdsAcompPedDocPend.ChangeCount > 0 then
    cdsAcompPedDocPend.ApplyUpdates(-1);

 if cdsAcompPed.UpdateStatus <> usDeleted then
    begin
     cdsAcompPed.RefreshRecord;
     if dsState in [dsEdit,dsInsert] then
        cdsAcompPed.Edit;
    end;
end;

procedure TdmPP.cdsAcompPedDocPendDOCPENDENTEIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'DOCPENDENTEID =' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsDocPendente.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );
  if not Cds.IsEmpty then
     cdsAcompPedDocPendL_DESCRDOCPENDENTE.AsString := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsAcompPedDocPendL_DESCRDOCPENDENTE.Clear;
      MessageDlg('Valor do campo ' + Sender.DisplayName + ' é Inválido.', mtError, [mbOk], 0);
      Abort;
     end;

   Cds.Close;
 finally
  FreeAndNil(cds);
 end;
end;

procedure TdmPP.cdsAcompPedDocPendNewRecord(DataSet: TDataSet);
var iSQL : String;
begin
 iSQL := 'WHERE PP_ACOMPPEDDOCPEND.NUMPEDVENDEDORID = ' + QuotedStr( cdsAcompPedNUMPEDVENDEDORID.AsString );

 cdsAcompPedDocPendITEMID.AsInteger        := ContadorDB('PP_ACOMPPEDDOCPEND','ITEMID',iSQL);
 cdsAcompPedDocPendDATAREGISTRO.AsDateTime := Now;
 cdsAcompPedDocPendUSUARIO.Value           := dmGsi.UsuarioAtivo;
end;

procedure TdmPP.cdsAcompPedDocPendRESOLVIDOValidate(Sender: TField);
begin
 if cdsAcompPedDocPendRESOLVIDO.AsInteger = 1 then
    cdsAcompPedDocPendDATARESOLUCAO.AsDateTime := Now
 else
    cdsAcompPedDocPendDATARESOLUCAO.Clear;
 
end;

procedure TdmPP.cdsAcompPedMOTIVORECUSA2IDValidate(Sender: TField);
var iSQL,InstSQL : String;
    cds  : TCLientDataSet;
begin
 Cds     := nil;
 InstSQL := 'PP_MOTIVORECUSA.MOTIVORECUSAID =' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( dmPP.cdsMotivoRecusa.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );
  if not Cds.IsEmpty then
     cdsAcompPedL_DESCRMOTIVORECUSA2.AsString := cds.FieldByName('DESCRICAOPAGTO').AsString
  else
     begin
      cdsAcompPedL_DESCRMOTIVORECUSA2.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

 finally
  FreeAndNil(cds);
 end;
end;

procedure TdmPP.cdsAcompPedMOTIVORECUSAIDValidate(Sender: TField);
var iSQL,InstSQL : String;
    cds  : TCLientDataSet;
begin
 Cds     := nil;
 InstSQL := 'PP_MOTIVORECUSA.MOTIVORECUSAID =' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( dmPP.cdsMotivoRecusa.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );
  if not Cds.IsEmpty then
     cdsAcompPedL_DESCRMOTIVORECUSA.AsString := cds.FieldByName('DESCRICAOPAGTO').AsString
  else
     begin
      cdsAcompPedL_DESCRMOTIVORECUSA.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

 finally
  FreeAndNil(cds);
 end;
end;

procedure TdmPP.cdsAcompPedNewRecord(DataSet: TDataSet);
begin
 cdsAcompPedDOCPENDENTE.Value := 0;
 cdsAcompPedCONTRATOOK.Value  := 0;
 cdsAcompPedUSUARIO.Value := dmGsi.UsuarioAtivo;
end;

procedure TdmPP.cdsAcompPedVendAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsAcompPed.State;

 if cdsAcompPed.UpdateStatus = usUnmodified then
    cdsAcompPed.Post;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsAcompPed.Edit;

end;

procedure TdmPP.cdsAcompPedVendAfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsAcompPed.State;

 if cdsAcompPed.UpdateStatus = usUnmodified then
    if cdsAcompPed.UpdateStatus <> usDeleted then
       cdsAcompPed.Post;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if cdsAcompPed.UpdateStatus <> usDeleted then
    begin
     cdsAcompPed.RefreshRecord;
     if dsState in [dsEdit,dsInsert] then
        cdsAcompPed.Edit;
    end;
end;

procedure TdmPP.cdsAcompPedVendCLASSEVENDEDORIDValidate(Sender: TField);
begin
 ValidClassVend( cdsAcompPedVendCLASSEVENDEDORID.AsString, cdsAcompPedVendL_DESCR_CLASSEVENDEDOR );
end;

procedure TdmPP.cdsAcompPedVendNewRecord(DataSet: TDataSet);
var iSQL : String;
begin
 iSQL := 'WHERE PP_ACOMPPEDVEND.NUMPEDVENDEDORID = ' + QuotedStr( cdsAcompPedNUMPEDVENDEDORID.AsString );

 cdsAcompPedVendITEMID.AsInteger := ContadorDB('PP_ACOMPPEDVEND','ITEMID',iSQL);
 cdsAcompPedVendUSUARIO.Value    := dmGsi.UsuarioAtivo;
end;

procedure TdmPP.cdsAcompPedVendVENDEDORIDValidate(Sender: TField);
begin
 ValidVendAtivo( cdsAcompPedVendVENDEDORID.AsString, cdsAcompPedVendL_NOMEVENDEDOR );
end;

procedure TdmPP.cdsIncompativelNewRecord(DataSet: TDataSet);
begin
 NovoRegPadraoTabPreco( cdsIncompativel );
end;

procedure TdmPP.cdsPedVendCLIENTEIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'ENTIDADEID =' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( dmEF.cdsEntidade.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );
  if not Cds.IsEmpty then
     begin
      // Verificar se existem observações para este aparelho
      if cds.FieldByName('STATUSFINANCEIRO').AsInteger = 1 then
         raise Exception.Create('Cliente está bloqueado pelo departamento financeiro');

      cdsPedVendL_NOMECLIENTE.AsString   := Cds.FieldByName('NOME').AsString;
      cdsPedVendL_CPFCNPJ.AsString       := Cds.FieldByName('CPFCNPJ').AsString;
      cdsPedVendCONTATOORIG.AsString     := Cds.FieldByName('CONTATO').AsString;
      cdsPedVendCEPORIGID.AsString       := Cds.FieldByName('CEPID').AsString;
      cdsPedVendNUMEROORIG.AsString      := Cds.FieldByName('NUMERO').AsString;
      cdsPedVendCOMPLEMENTOORIG.AsString := Cds.FieldByName('COMPLEMENTO').AsString;
      cdsPedVendENDERECOORIG.AsString    := Cds.FieldByName('ENDERECO').AsString;
      cdsPedVendBAIRROORIG.AsString      := cds.FieldByName('BAIRRO').AsString;
      cdsPedVendCIDADEORIG.AsString      := cds.FieldByName('CIDADE').AsString;
      cdsPedVendSIGLAUFORIGID.AsString   := cds.FieldByName('SIGLAUFID').AsString;
      cdsPedVendPAISORIG.AsString        := cds.FieldByName('PAIS').AsString;
      cdsPedVendTELEFONEORIG.AsString    := cds.FieldByName('TELEFONE').AsString;
    end
  else
    begin
     cdsPedVendL_NOMECLIENTE.Clear;
     cdsPedVendL_CPFCNPJ.Clear;
     cdsPedVendCONTATOORIG.Clear;
     cdsPedVendCEPORIGID.Clear;
     cdsPedVendNUMEROORIG.Clear;
     cdsPedVendCOMPLEMENTOORIG.Clear;
     cdsPedVendENDERECOORIG.Clear;
     cdsPedVendBAIRROORIG.Clear;
     cdsPedVendCIDADEORIG.Clear;
     cdsPedVendSIGLAUFORIGID.Clear;
     cdsPedVendPAISORIG.Clear;
     cdsPedVendTELEFONEORIG.Clear;
    end;
   Cds.Close;
  finally
   FreeAndNil(cds);
  end;
end;

procedure TdmPP.cdsPedVendCONDPAGTOPROPIDValidate(Sender: TField);
var iSQL,InstSQL : String;
    cds          : TCLientDataSet;
begin
 Cds     := nil;
 InstSQL := 'PP_CONDPAGTOPROP.CONDPAGTOPROPID =' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( dmPP.cdsCondPagtoProp.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );
  if not Cds.IsEmpty then
     cdsPedVendL_DESCR_FOB.AsString := cds.FieldByName('DESCRICAOPAGTO').AsString
  else
     begin
      cdsPedVendL_DESCR_FOB.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;
 finally
  FreeAndNil(cds);
 end;

end;

procedure TdmPP.cdsPedVendCONDINTERVIDValidate(Sender: TField);
var iSQL,InstSQL : String;
    cds  : TCLientDataSet;
begin
 Cds     := nil;
 InstSQL := 'PP_CONDPAGTOPROP.CONDPAGTOPROPID =' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( dmPP.cdsCondPagtoProp.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );
  if not Cds.IsEmpty then
     cdsPedVendL_DESCR_INTERV.AsString := cds.FieldByName('DESCRICAOPAGTO').AsString
  else
     begin
      cdsPedVendL_DESCR_INTERV.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

 finally
  FreeAndNil(cds);
 end;
end;

procedure TdmPP.cdsPedVendCONDEMPRSUPLIDValidate(Sender: TField);
var iSQL,InstSQL : String;
    cds  : TCLientDataSet;
begin
 Cds     := nil;
 InstSQL := 'PP_CONDPAGTOPROP.CONDPAGTOPROPID =' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( dmPP.cdsCondPagtoProp.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );
  if not Cds.IsEmpty then
     cdsPedVendL_DESCR_SUPL.AsString := cds.FieldByName('DESCRICAOPAGTO').AsString
  else
     begin
      cdsPedVendL_DESCR_SUPL.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;
 finally
  FreeAndNil(cds);
 end;
end;

procedure TdmPP.cdsPedVendCONDPAGTOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'EF_CONDPAGTO.'+TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( dmEF.cdsCondPagto.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsPedVendL_DESCRICAOCONDPAGTO.AsString  := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsPedVendL_DESCRICAOCONDPAGTO.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmPP.cdsPedVendNATUREZAOPIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'EF_NATUREZAOP.'+TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( dmEF.cdsNaturezaOp.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsPedVendL_CFOP.AsString             := Cds.FieldByName('CFOP').AsString;
      cdsPedVendL_DESCRICAOUSUARIO.AsString := Cds.FieldByName('DESCRICAOOPERACAOUSUARIO').AsString;
     end
  else
     begin
      cdsPedVendL_CFOP.Clear;
      cdsPedVendL_DESCRICAOUSUARIO.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmPP.cdsPedVendORIGEMVENDAIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsOrigemVenda.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsPedVendL_DESCR_ORIGEMVENDA.AsString  := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsPedVendL_DESCR_ORIGEMVENDA.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmPP.cdsPedVendTIPOVENDAIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsTipoVenda.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsPedVendL_DESCRICAOTIPOVENDA.AsString  := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsPedVendL_DESCRICAOTIPOVENDA.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmPP.cdsPedVendEMPRESAIDValidate(Sender: TField);
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
     cdsPedVendL_NOMEEMPRESA.AsString  := Cds.FieldByName('NOMEFANTASIA').AsString
  else
     begin
      cdsPedVendL_NOMEEMPRESA.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmPP.cdsPedVendAfterPost(DataSet: TDataSet);
begin
 if cdsPedVend.ChangeCount > 0 then
    cdsPedVend.ApplyUpdates(-1);

 AtualizaInterveniencia( cdsPedVendPEDVENDID.AsString );    
end;

procedure TdmPP.cdsPedVendAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmPP.cdsPedVendItemAfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsPedVend.State;

 if cdsPedVend.UpdateStatus = usUnmodified then
    if cdsPedVend.UpdateStatus <> usDeleted then
       cdsPedVend.Post;

 if cdsPedVendItem.ChangeCount > 0 then
    cdsPedVendItem.ApplyUpdates(-1);

 if cdsPedVend.UpdateStatus <> usDeleted then
    begin
     cdsPedVend.RefreshRecord;
     if dsState in [dsEdit,dsInsert] then
        cdsPedVend.Edit;
    end;
end;

procedure TdmPP.cdsPedVendItemAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsPedVend.State;

 if cdsPedVend.UpdateStatus = usUnmodified then
    cdsPedVend.Post;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsPedVend.Edit;
end;

procedure TdmPP.cdsPedVendVendAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsPedVend.State;

 if cdsPedVend.UpdateStatus = usUnmodified then
    cdsPedVend.Post;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsPedVend.Edit;
end;

procedure TdmPP.cdsPedVendItemBeforeInsert(DataSet: TDataSet);
begin
 VerifComissaoEfetuada( cdsPedVendPEDVENDID.Value, Bloquear );
 
 if cdsPedVendCONDPAGTOPROPID.AsInteger < 1 then
    if cdsPedVendNATUREZAOPID.Value < 1 then
       raise Exception.Create('Natureza de operação na informada no pedido');
end;

procedure TdmPP.cdsPedVendNewRecord(DataSet: TDataSet);
var Ano,iSQL,iUpd : String;
    NumProcesso : Integer;
    cds : TClientDataSet;
begin
 NumProcesso := 0;
 iSQL := 'SELECT '+
         '  IT_TIPOPROCESSO.TIPOPROCESSOID,'+
         '  IT_TIPOPROCESSO.NUMPROCESSO'+
         '  FROM '+
         '  IT_TIPOPROCESSO'+
         ' WHERE '+
         '  IT_TIPOPROCESSO.SIGLA = '+ QuotedStr('PED');
 try
  ExecDynamicProvider(-1,iSQL,cds);

  if cds.IsEmpty then
     raise Exception.Create('Número de processo não encontrato!')
  else
    begin
     NovoRegPedVend := True;

     NumProcesso := cds.FieldByName('NUMPROCESSO').Value +1;

     {*** Atualizando Numero do Processo ***}
     iUpd := 'UPDATE IT_TIPOPROCESSO SET NUMPROCESSO = NUMPROCESSO + 1 '+
             'WHERE IT_TIPOPROCESSO.SIGLA = '+ QuotedStr('PED');

     ExecDML( iUpd );
    end;

 finally
  FreeAndNil( cds );
 end;

 Ano := IntToStr( YearOf( pCnnMain.AppServer.iServerDate ) );
 cdsPedVendPEDVENDID.AsString          := Copy( Ano,3, 2) + '/' + StrZero( NumProcesso, 4, 0 );
 cdsPedVendDATAPEDIDO.AsDateTime       := pCnnMain.AppServer.iServerDate;
 cdsPedVendCANCELADO.Value             := 0;
 cdsPedVendLIBCHEFIA.Value             := 0;
 cdsPedVendPAGAMENTOCOMISSAO.Value     := 1;
 cdsPedVendVLRBONIFICACAO.Value        := 0;
 cdsPedVendPORCDESPESA.AsFloat         := 0;
 cdsPedVendVLRAPARELHOINTERV.Value     := 0;
 cdsPedVendVLRFRETEINTERNACIONAL.Value := 0;
 cdsPedVendTIPODESPESA.AsString        := 'S';
 cdsPedVendEMPRESAID.Value             := EmpresaAtualId;
 cdsPedVendUSUARIO.Value               := dmGsi.UsuarioAtivo;


 NovoRegPedVend := True;
end;

function TdmPP.CalculaVlrFob( PedVendID : String ) : Real;
var cds : TClientDataSet;
    iSQL : String;
begin
 iSQL := 'SELECT SUM(DECODE(VLRFOBREVENDA, 0, NVL(VLRFOBREVENDA, 0), NVL(VLRFOB, 0))) ' +
         '  FROM PP_PEDVENDITEM ' +
         ' WHERE PEDVENDID = ' + QuotedStr( PedVendID );
 cds := nil;
 ExecDynamicProvider( -1, iSQL, cds );
 try
  Result := cds.Fields[0].AsCurrency;
 finally
  FreeAndNil( cds );
 end;
end;

procedure TdmPP.cdsPedVendBeforePost(DataSet: TDataSet);
begin
 cdsPedVendVLRFOB.AsFloat := CalculaVlrFob( cdsPedVendPEDVENDID.AsString );
end;

procedure TdmPP.cdsPedVendBeforeDelete(DataSet: TDataSet);
begin
 if cdsPedVendUSUARIO.AsString <> dmGsi.UsuarioAtivo then
    if not CheckSenha(dmGsi.UsuarioAtivo,'Pedido de Venda','Excluir pedido de outro usuário',False ) then
       raise Exception.Create('Error, Usuário do sistemas diferente do usuário do Pedido.');

 if MessageDlg('Tem certeza que deseja apagar o Pedido? Todos os ítens serão apagados!',mtWarning,[mbYes,MbNo],0 ) = MrNo then
    Exit;
end;

procedure TdmPP.cdsPedVendItemNewRecord(DataSet: TDataSet);
var iSQL : String;
begin
 dmPP.cdsPedVendItemLIDISPENSA.Value := 0;
 iSQL := 'WHERE PP_PEDVENDITEM.PEDVENDID = ' + QuotedStr( cdsPedVendPEDVENDID.AsString );

 cdsPedVendItemITEMID.AsInteger := ContadorDB('PP_PEDVENDITEM','ITEMID',iSQL);
 cdsPedVendItemEMPRESAID.Value  := dmPP.cdsPedVendEMPRESAID.Value;
 cdsPedVendItemUSUARIO.Value    := dmGsi.UsuarioAtivo;
 cdsPedVendItemPRODUTOID.Tag    := 0;
 cdsPedVendItemQUANTIDADE.Tag   := 0;
end;

procedure TdmPP.cdsPedVendItemPRODUTOIDValidate(Sender: TField);
var iSQLProd, iSQLNat, iSQLTipo, iSQLEnt : String;
    cdsProd, cdsNatOp,cdsCatalogo,cdsEntidade : TClientDataSet;
begin
 if cdsPedVendItemPRODUTOID.IsNull then
    exit;

 cdsProd     := Nil;
 cdsNatOp    := Nil;
 cdsCatalogo := NIl;
 cdsEntidade := NIL;

 iSQLNat     := 'SELECT NATUREZAOPID, MOVIMENTOESTOQUE, VENDAFATANTECIPADO ' +
                ' FROM EF_NATUREZAOP ' +
                ' WHERE NATUREZAOPID = ' + cdsPedVendNATUREZAOPID.AsString;

 iSQLProd   := 'SELECT EMPRESAID, PRODUTOID, PARTNUMBERID, GRUPOID, DESCRICAOPORTUGUES, ORIGEM, ESTOQUENOVO, ESTOQUEREVISADO, ESTOQUEFISICO, ' +
               ' ESTOQUEPEDENTRADA, ESTOQUEPEDSAIDA, ESTOQUEEMTERCEIRO, ESTOQUEDETERCEIRO, ESTOQUEMINIMO, ESTOQUEEMPENHO, ESTOQUEVALE ' +
               ' FROM EF_PRODUTO ' +
               ' WHERE EMPRESAID = ' + cdsPedVendItemEMPRESAID.AsString +
               '   AND PRODUTOID = ' + cdsPedVendItemPRODUTOID.AsString;

  iSQLTipo  := 'SELECT PP_CATALOGO.TIPO'+
               '  FROM PP_CATALOGO';

  iSQLEnt   := 'SELECT EF_ENTIDADE.ENDERECOINST, EF_ENTIDADE.CIDADEINST, EF_ENTIDADE.CEPINSTID, EF_ENTIDADE.NUMEROINST,'+
               ' EF_ENTIDADE.BAIRROINST, EF_ENTIDADE.SIGLAUFINSTID, EF_ENTIDADE.TELEFONE2, EF_ENTIDADE.CONTATOINST'+
               ' FROM EF_ENTIDADE'+
               ' WHERE EF_ENTIDADE.ENTIDADEID = ' + cdsPedVendCLIENTEID.AsString;

 try
  if cdsPedVendItemEMPRESAID.Value <> cdsPedVendEMPRESAID.Value then
     raise Exception.Create('O pedido atual está utilizando a empresa ' + cdsPedVendEMPRESAID.AsString + 'e o produto selecionado é da empresa ' + cdsPedVendItemEMPRESAID.AsString + #13 +
                            'O item do pedido será bloqueado até normalização da digitação' );

  ExecDynamicProvider( -1, iSQLProd, cdsProd );

  ExecDynamicProvider( -1, iSQLNat, cdsNatOp );

  if cdsProd.IsEmpty then
     begin
      cdsPedVendItemL_DESCRICAOPORTUGUES.Clear;
      cdsPedVendItemL_GRUPOID.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end
  else
     begin
      iSQLTipo := iSQLTipo + ' WHERE PP_CATALOGO.MODELOID = '+ QuotedStr( cdsProd.FieldByName('PARTNUMBERID').AsString );

      ExecDynamicProvider( -1,iSQLTipo,cdsCatalogo );

      if cdsCatalogo.FieldByName('TIPO').AsString = 'A' then
         begin
          ExecDynamicProvider( -1,iSQLEnt,cdsEntidade );

          cdsPedVendItemENDERECOINST.AsString  := cdsEntidade.FieldByName('ENDERECOINST').AsString;
          cdsPedVendItemCIDADEINST.AsString    := cdsEntidade.FieldByName('CIDADEINST').AsString;
          cdsPedVendItemCEPINSTID.AsInteger    := cdsEntidade.FieldByName('CEPINSTID').AsInteger;
          cdsPedVendItemNUMEROINST.AsString    := cdsEntidade.FieldByName('NUMEROINST').AsString;
          cdsPedVendItemBAIRROINST.AsString    := cdsEntidade.FieldByName('BAIRROINST').AsString;
          cdsPedVendItemSIGLAUFINSTID.AsString := cdsEntidade.FieldByName('SIGLAUFINSTID').AsString;
          cdsPedVendItemTELEFONEINST.AsString  := cdsEntidade.FieldByName('TELEFONE2').AsString;
          cdsPedVendItemCONTATOINST.AsString   := cdsEntidade.FieldByName('CONTATOINST').AsString;

          cdsEntidade.Close;
         end
      else
        begin
         cdsPedVendItemENDERECOINST.Clear;
         cdsPedVendItemCIDADEINST.Clear;
         cdsPedVendItemCEPINSTID.Clear;
         cdsPedVendItemNUMEROINST.Clear;
         cdsPedVendItemBAIRROINST.Clear;
         cdsPedVendItemSIGLAUFINSTID.Clear;
         cdsPedVendItemTELEFONEINST.Clear;
         cdsPedVendItemCONTATOINST.Clear;
        end;

       cdsCatalogo.Close;
     end;

  cdsPedVendItemL_DESCRICAOPORTUGUES.Value := cdsProd.FieldByName('DESCRICAOPORTUGUES').AsString;
  cdsPedVendItemL_GRUPOID.Value            := cdsProd.FieldByName('GRUPOID').AsInteger;

  if MessageDlg('Utilizar estoque de peças novas?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
      if cdsProd.FieldByName('ESTOQUENOVO').Value > 0 then
         cdsPedVendItemESTOQUEUTILIZADO.Value := 'N'
      else
         begin
          if cdsNatOp.FieldByName('VENDAFATANTECIPADO').Value = 1 then
             cdsPedVendItemESTOQUEUTILIZADO.Value := 'N';
{          else
             raise Exception.Create('Não há quantidade mínima do produto em estoque de peças novas !' );}
         end;
     end
  else
     begin
      if cdsProd.FieldByName('ESTOQUEREVISADO').Value > 0 then
         cdsPedVendItemESTOQUEUTILIZADO.Value := 'R'
      else
         begin
          if cdsNatOp.FieldByName('VENDAFATANTECIPADO').Value = 1 then
             cdsPedVendItemESTOQUEUTILIZADO.Value := 'R';
{          else
             raise Exception.Create('Não há quantidade mínima do produto em estoque de peças revisadas !' );}
         end;
     end;

  cdsProd.Close;
  cdsNatOp.Close;

 finally
  FreeAndNil( cdsProd );
  FreeAndNil( cdsNatOp );
  FreeAndNil( cdsCatalogo );
  FreeAndNil( cdsEntidade );
 end;
end;

procedure TdmPP.cdsPedVendItemVLRPRECOUNITARIOValidate(Sender: TField);
begin
 cdsPedVendItemVLRPRECOTOTAL.Value := cdsPedVendItemQUANTIDADE.Value *
                                      cdsPedVendItemVLRPRECOUNITARIO.Value;

end;

procedure TdmPP.cdsPedVendLIBCHEFIAValidate(Sender: TField);
begin
 if NovoRegPedVend then
    exit;

 if not CheckSenha(dmGsi.UsuarioAtivo,'Pedido de Venda / Importação Direta','Liberar Pedido de Venda',True) then
    raise Exception.Create('O Usuário não pode liberar chefia !')
 else
    begin
     if cdsPedVendLIBCHEFIA.Value = 1 then
        begin
         cdsPedVendLIBCHEFIANOME.Value      := dmGsi.UsuarioAtivo;
         cdsPedVendLIBCHEFIADATA.AsDateTime := Now;
        end
     else
        begin
         if cdsPedVendPDSID.Value > 0 then
            raise Exception.Create('Pedido de faturamento já gerado é necessário cancelar o pedido');

         cdsPedVendLIBCHEFIANOME.Clear;
         cdsPedVendLIBCHEFIADATA.Clear;
        end
    end;
end;

procedure TdmPP.cdsPedVendCompAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsPedVend.State;

 if cdsPedVend.UpdateStatus = usUnmodified then
    cdsPedVend.Post;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsPedVend.Edit;
end;

procedure TdmPP.cdsPedVendCompAfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsPedVend.State;

 if cdsPedVend.UpdateStatus = usUnmodified then
    cdsPedVend.Post;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsPedVend.Edit;
end;

procedure TdmPP.cdsPedVendCompNewRecord(DataSet: TDataSet);
var iSQL : String;
begin
 iSQL := 'WHERE PP_PEDVENDCOMP.PEDVENDID = ' + QuotedStr( cdsPedVendPEDVENDID.AsString ) +
         ' AND PP_PEDVENDCOMP.ITEMID = ' +  cdsPedVendItemITEMID.AsString;

 cdsPedVendCompITEMCOMPID.AsInteger        := ContadorDB('PP_PEDVENDCOMP','ITEMCOMPID',iSQL);
 cdsPedVendCompVLRUNITARIOFOB.AsFloat      := 0;
 cdsPedVendCompVLRTOTALFOB.AsFloat         := 0;
 cdsPedVendCompVLRUNITARIOREVENDA.AsFloat  := 0;
 cdsPedVendCompVLRTOTALREVENDA.AsFloat     := 0;
 cdsPedVendCompUSUARIO.Value               := dmGsi.UsuarioAtivo;
end;

procedure TdmPP.cdsPedVendVendAfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsPedVend.State;

 if cdsPedVend.UpdateStatus = usUnmodified then
    cdsPedVend.Post;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsPedVend.Edit;
end;

procedure TdmPP.cdsPedVendBonifAfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsPedVend.State;

 if cdsPedVend.UpdateStatus = usUnmodified then
    cdsPedVend.Post;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsPedVend.Edit;
end;

procedure TdmPP.cdsPedVendBonifAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsPedVend.State;

 if cdsPedVend.UpdateStatus = usUnmodified then
    cdsPedVend.Post;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsPedVend.Edit;
end;

procedure TdmPP.cdsPedVendIntervAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsPedVend.State;

 if cdsPedVend.UpdateStatus = usUnmodified then
    cdsPedVend.Post;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsPedVend.Edit;
end;

procedure TdmPP.cdsPedVendIntervAfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsPedVend.State;

 if cdsPedVend.UpdateStatus = usUnmodified then
    cdsPedVend.Post;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsPedVend.Edit;
end;

procedure TdmPP.cdsPedVendBonifNewRecord(DataSet: TDataSet);
var iSQL : String;
begin
 iSQL := 'WHERE PP_PEDVENDBONIF.PEDVENDID = ' + QuotedStr( cdsPedVendPEDVENDID.AsString );

 cdsPedVendBonifITEMID.AsInteger := ContadorDB('PP_PEDVENDBONIF','ITEMID',iSQL);
 cdsPedVendBonifUSUARIO.Value    := dmGsi.UsuarioAtivo;
end;

procedure TdmPP.cdsPedVendAfterEdit(DataSet: TDataSet);
begin
 VerifComissaoEfetuada( cdsPedVendPEDVENDID.Value, Atencao );
end;

procedure TdmPP.cdsPedVendVendBeforeEdit(DataSet: TDataSet);
begin
 VerifComissaoEfetuada( cdsPedVendPEDVENDID.Value, Bloquear );
end;

procedure TdmPP.cdsPedVendBonifBeforeEdit(DataSet: TDataSet);
begin
 VerifComissaoEfetuada( cdsPedVendPEDVENDID.Value, Bloquear );
end;

procedure TdmPP.cdsPedVendIntervBeforeEdit(DataSet: TDataSet);
begin
 VerifComissaoEfetuada( cdsPedVendPEDVENDID.Value, Bloquear );
end;

procedure TdmPP.cdsPedVendVendBeforeDelete(DataSet: TDataSet);
begin
 VerifComissaoEfetuada( cdsPedVendPEDVENDID.Value, Bloquear );
end;

procedure TdmPP.cdsPedVendBonifBeforeDelete(DataSet: TDataSet);
begin
 VerifComissaoEfetuada( cdsPedVendPEDVENDID.Value, Bloquear );
end;

procedure TdmPP.cdsPedVendIntervBeforeDelete(DataSet: TDataSet);
begin
 VerifComissaoEfetuada( cdsPedVendPEDVENDID.Value, Bloquear );
end;

procedure TdmPP.cdsPedVendCompBeforeDelete(DataSet: TDataSet);
begin
 VerifComissaoEfetuada( cdsPedVendPEDVENDID.Value, Bloquear );
end;

procedure TdmPP.cdsPedVendItemBeforeDelete(DataSet: TDataSet);
begin
 VerifComissaoEfetuada( cdsPedVendPEDVENDID.Value, Bloquear );

 if cdsPedVendORIGEMVENDAID.AsInteger = 2 then
    shdcnnPP.AppServer.IAtualSaldoReserva( cdsPedVendItemEMPRESAID.AsString,
                                           cdsPedVendItemPRODUTOID.AsString,
                                           cdsPedVendItemQUANTIDADE.Value,
                                           '-' );
end;

procedure TdmPP.cdsPedVendVendNewRecord(DataSet: TDataSet);
var iSQL : String;
begin
 iSQL := 'WHERE PP_PEDVENDVEND.PEDVENDID = ' + QuotedStr( cdsPedVendPEDVENDID.AsString );

 cdsPedVendVendITEMID.AsInteger := ContadorDB('PP_PEDVENDVEND','ITEMID',iSQL);
 cdsPedVendVendUSUARIO.Value    := dmGsi.UsuarioAtivo;
end;

procedure TdmPP.ValidVendAtivo( VendedorId : String; var Campo : TStringField );
var iSql : String;
    Cds : TClientDataSet;
begin
 Cds  := nil;
 iSQL := 'SELECT EF_ENTIDADE.ENTIDADEID,' +
         '       EF_ENTIDADE.NOME ' +
         '  FROM EF_ENTIDADE EF_ENTIDADE,' +
         '       EF_ENTIDADEGRUPO EF_ENTIDADEGRUPO,' +
         '       EF_CATEGORIA EF_CATEGORIA' +
         ' WHERE EF_ENTIDADEGRUPO.CATEGORIAID = 6' +
         '       AND NVL( EF_ENTIDADE.DESLIGADO,0 ) = 0 '+
         '       AND EF_ENTIDADE.ENTIDADEID = EF_ENTIDADEGRUPO.ENTIDADEID' +
         '       AND EF_ENTIDADE.ENTIDADEID = ' + VendedorId;
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     Campo.AsString   := Cds.FieldByName('NOME').AsString
  else
     begin
      Campo.Clear;
      raise Exception.Create( 'Valor do campo ' + Campo.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmPP.cdsPedVendVendVENDEDORIDValidate(Sender: TField);
begin
 ValidVendAtivo( cdsPedVendVendVENDEDORID.AsString, cdsPedVendVendL_NOMEVENDEDOR );
end;


procedure TdmPP.ValidClassVend( ClasseVendedorId : String; var Campo : TStringField );
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'PP_CLASSEVENDEDOR.CLASSEVENDEDORID =' + ClasseVendedorId;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsClasseVendedor.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     Campo.Value := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      Campo.Clear;
      raise Exception.Create( 'Valor do campo ' + Campo.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmPP.cdsPedVendVendCLASSEVENDEDORIDValidate(Sender: TField);
begin
 ValidClassVend( cdsPedVendVendCLASSEVENDEDORID.AsString, cdsPedVendVendL_DESCR_CLASSEVENDEDOR );
end;

procedure TdmPP.cdsHistFechComissaoAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmPP.cdsHistFechComissaoAfterPost(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmPP.cdsHistFechComissaoNewRecord(DataSet: TDataSet);
begin
 cdsHistFechComissaoUSUARIO.Value := dmGsi.UsuarioAtivo;
end;

procedure TdmPP.cdsRecebComVendaNewRecord(DataSet: TDataSet);
begin
 cdsRecebComVendaUSUARIO.Value := dmGsi.UsuarioAtivo;
end;

procedure TdmPP.cdsRecebComVendaENTIDADEIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'ENTIDADEID =' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( dmEF.cdsEntidade.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );
  if not Cds.IsEmpty then
     begin
      // Verificar se existem observações para este aparelho
      if cds.FieldByName('STATUSFINANCEIRO').AsInteger = 1 then
         raise Exception.Create('Cliente está bloqueado pelo departamento financeiro');

      cdsRecebComVendaL_NOME.AsString    := Cds.FieldByName('NOME').AsString;
      cdsRecebComVendaL_CPFCNPJ.AsString := Cds.FieldByName('CPFCNPJ').AsString;
    end
  else
    begin
     cdsRecebComVendaL_NOME.Clear;
     cdsRecebComVendaL_CPFCNPJ.Clear;
    end;
    Cds.Close;
  finally
   FreeAndNil(cds);
  end;
end;

procedure TdmPP.cdsOrigemVendaNewRecord(DataSet: TDataSet);
begin
 cdsOrigemVendaORIGEMVENDAID.Value := ContadorDB('PP_ORIGEMVENDA','ORIGEMVENDAID','');
 cdsOrigemVendaUSUARIO.Value       := dmGsi.UsuarioAtivo;
end;

procedure TdmPP.cdsTipoVendaNewRecord(DataSet: TDataSet);
begin
 cdsTipoVendaTIPOVENDAID.Value := ContadorDB('PP_TIPOVENDA','TIPOVENDAID','');
 cdsTipoVendaUSUARIO.Value     := dmGsi.UsuarioAtivo;
end;

procedure TdmPP.cdsBasePagtoAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

end;

procedure TdmPP.cdsBasePagtoAfterPost(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmPP.cdsNfsParcelaAfterPost(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmPP.cdsNfsParcelaAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmPP.cdsPedVendReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
 Action := HandleReconcileError( DataSet, UpdateKind, E);
end;

procedure TdmPP.cdsPedVendIntervNewRecord(DataSet: TDataSet);
var iSQL : String;
begin
 iSQL := 'WHERE PP_PEDVENDINTERV.PEDVENDID = ' + QuotedStr( cdsPedVendPEDVENDID.AsString );

 cdsPedVendIntervITEMID.AsInteger          := ContadorDB('PP_PEDVENDINTERV','ITEMID',iSQL);
 cdsPedVendIntervVLRINTERVENIENCIA.AsFloat := 0;
 cdsPedVendIntervUSUARIO.Value             := dmGsi.UsuarioAtivo;
end;

procedure TdmPP.cdsPedVendIntervCONDINTERVIDValidate(Sender: TField);
var iSQL,InstSQL : String;
    cds  : TCLientDataSet;
begin
 Cds     := nil;
 InstSQL := 'PP_CONDPAGTOPROP.CONDPAGTOPROPID =' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( dmPP.cdsCondPagtoProp.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );
  if not Cds.IsEmpty then
     begin
      cdsPedVendIntervL_DESCRICAOPAGTO.AsString   := cds.FieldByName('DESCRICAOPAGTO').AsString;
      cdsPedVendIntervL_DEDUZIRCOMISSAO.AsInteger := cds.FieldByName('DEDUZIRCOMISSAO').AsInteger;
     end
  else
     begin
      cdsPedVendIntervL_DESCRICAOPAGTO.Clear;
      cdsPedVendIntervL_DEDUZIRCOMISSAO.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

 finally
  FreeAndNil(cds);
 end;
end;

procedure TdmPP.cdsAnaliseVendaAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmPP.cdsAnaliseVendaAfterPost(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmPP.cdsProcessoImpAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmPP.cdsProcessoImpAfterPost(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmPP.cdsProcessoImpParcAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmPP.cdsProcessoImpParcAfterOpen(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmPP.cdsProcessoImpAfterEdit(DataSet: TDataSet);
begin
 GerarPesquisa( cdsPedVend, 'PP_PEDVEND.PEDVENDID = ' + QuotedStr( cdsProcessoImpPEDVENDID.Value )  );
 if cdsPedVend.RecordCount > 0 then
    cdsPedVend.Edit;
end;

procedure TdmPP.cdsPerComReprNewRecord(DataSet: TDataSet);
begin
 cdsPerComReprUSUARIO.Value := dmGsi.UsuarioAtivo;
end;

procedure TdmPP.cdsPropostaORIGEMVENDAIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsOrigemVenda.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsPropostaL_DESCR_ORIGEMVENDA.AsString  := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsPropostaL_DESCR_ORIGEMVENDA.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmPP.cdsPropostaTIPOVENDAIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsTipoVenda.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsPropostaL_DESCR_TIPOVENDA.AsString  := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsPropostaL_DESCR_TIPOVENDA.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmPP.cdsPedVendVendBeforeInsert(DataSet: TDataSet);
begin
 VerifComissaoEfetuada( cdsPedVendPEDVENDID.Value, Bloquear );
end;

procedure TdmPP.cdsPedVendDESTINATARIOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'ENTIDADEID =' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( dmEF.cdsEntidade.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );
  if not Cds.IsEmpty then
     begin
      // Verificar se existem observações para este aparelho
      if cds.FieldByName('STATUSFINANCEIRO').AsInteger = 1 then
         raise Exception.Create('Cliente está bloqueado pelo departamento financeiro');

      cdsPedVendL_NOMEDESTINATARIO.AsString := Cds.FieldByName('NOME').AsString;
     end
  else
     begin
       cdsPedVendL_NOMEDESTINATARIO.Clear;
       raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

   Cds.Close;
  finally
   FreeAndNil(cds);
  end;
end;

procedure TdmPP.cdsPedVendBonifBONIFICACAOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'BONIFICACAOID =' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsBonificacao.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );
  if not Cds.IsEmpty then
     cdsPedVendBonifL_DESCR_BONIFICACAO.AsString := Cds.FieldByName('DESCRICAO').AsString
  else
     cdsPedVendBonifL_DESCR_BONIFICACAO.Clear;

   Cds.Close;
 finally
  FreeAndNil(cds);
 end;
end;

procedure TdmPP.cdsPedVendCompVLRUNITARIOFOBValidate(Sender: TField);
begin
 cdsPedVendCompVLRTOTALFOB.AsFloat := ( cdsPedVendCompQUANTIDADE.AsFloat * cdsPedVendCompVLRUNITARIOFOB.AsFloat );
end;

procedure TdmPP.cdsPedVendCompVLRUNITARIOREVENDAValidate(Sender: TField);
begin
 cdsPedVendCompVLRTOTALREVENDA.AsFloat := ( cdsPedVendCompQUANTIDADE.AsFloat * cdsPedVendCompVLRUNITARIOREVENDA.AsFloat );
end;

procedure TdmPP.AtualizaInterveniencia(PedvendId: String);
var iExecSQL : String;
begin
 iExecSQL := 'UPDATE PP_PEDVEND'+
             ' SET ( PP_PEDVEND.VLRTOTALINTERVDEB,'+
             '       PP_PEDVEND.VLRTOTALINTERVCRED ) =('+
             '  SELECT'+
             '    ( SUM ( CASE WHEN  DECODE( PP_CONDPAGTOPROP.DEDUZIRCOMISSAO,NULL,1,PP_CONDPAGTOPROP.DEDUZIRCOMISSAO) =  1 THEN'+
             '                  PP_PEDVENDINTERV.VLRINTERVENIENCIA'+
             '                 ELSE'+
             '             0'+
             '            END'+
             '           ) + NVL( PP_PEDVEND.VLRAPARELHOINTERV,0 ) ) VLRINTERVENIENCIADEB,'+
             '    ( SUM ( CASE WHEN  PP_CONDPAGTOPROP.DEDUZIRCOMISSAO = 0 THEN'+
             '                  PP_PEDVENDINTERV.VLRINTERVENIENCIA'+
             '                 ELSE'+
             '             0'+
             '            END'+
             '           ) + NVL( PP_PEDVEND.VLRAPARELHOINTERV,0 ) ) VLRINTERVENIENCIACRED'+
             '    FROM'+
             '    PP_PEDVENDINTERV,'+
             '    PP_CONDPAGTOPROP,'+
             '    PP_PEDVEND'+
             '   WHERE'+
             '    PP_CONDPAGTOPROP.CONDPAGTOPROPID(+)= PP_PEDVENDINTERV.CONDINTERVID'+
             '    AND PP_PEDVEND.PEDVENDID = PP_PEDVENDINTERV.PEDVENDID'+
             '    AND PP_PEDVENDINTERV.PEDVENDID = '+ QuotedStr( PedvendId )+
             '   GROUP BY PP_PEDVEND.VLRAPARELHOINTERV )'+
             ' WHERE PP_PEDVEND.PEDVENDID = '+ QuotedStr( PedvendId );

 try
  ExecDML( iExecSQL );

  iExecSQL := ' UPDATE PP_PEDVEND'+
             '   SET PP_PEDVEND.VLRBONIFICACAO = ('+
             '   SELECT NVL( SUM( PP_PEDVENDBONIF.VLRBONIFICACAO ),0 ) VLRBONIF'+
             '     FROM PP_PEDVENDBONIF'+
             '    WHERE'+
             '     PP_PEDVENDBONIF.PEDVENDID = '+ QuotedStr ( PedvendId )+')'+
             '  WHERE PP_PEDVEND.PEDVENDID = '+ QuotedStr( PedvendId );

  ExecDML( iExecSQL );

  iExecSQL := 'UPDATE PP_PEDVEND'+
              ' SET PP_PEDVEND.VLRTOTALGERAL = ('+
              '      SELECT ( NVL( PP_PEDVEND.VLRTOTALINTERVDEB,0) +'+
              '               NVL( PP_PEDVEND.VLRTOTALINTERVCRED,0) +'+
              '               NVL( PP_PEDVEND.VLRFOB,0) +'+
              '               NVL( PP_PEDVEND.VLRDESPESA,0) +'+
              '               NVL( PP_PEDVEND.VLRFRETEINTERNACIONAL,0) )'+
              '        FROM PP_PEDVEND'+
              '       WHERE PP_PEDVEND.PEDVENDID = '+ QuotedStr ( PedvendId )+')'+
              ' WHERE PP_PEDVEND.PEDVENDID = '+ QuotedStr ( PedvendId )+
              '   AND PP_PEDVEND.ORIGEMVENDAID = 1';

  ExecDML( iExecSQL );

  cdsPedVend.Refresh;
 except on
   e : Exception do
   raise Exception.Create( e.Message );
 end;
end;

procedure TdmPP.cdsProcessoImpBeforePost(DataSet: TDataSet);
begin
 dmPP.cdsPedVendItem.Edit;
 dmPP.cdsPedVendItem.Post;
end;

procedure TdmPP.cdsClasseVendedorNewRecord(DataSet: TDataSet);
begin
 cdsClasseVendedorCLASSEVENDEDORID.Value := ContadorDB('PP_CLASSEVENDEDOR','CLASSEVENDEDORID','');
 cdsClasseVendedorEXIBIRNIVELVENDA.Value := 0;
 cdsClasseVendedorUSUARIO.Value          := dmGsi.UsuarioAtivo;
end;

procedure TdmPP.cdsVendedorResponsavelNewRecord(DataSet: TDataSet);
begin
 cdsVendedorResponsavelUSUARIO.Value := dmGsi.UsuarioAtivo;
end;

procedure TdmPP.cdsVendedorResponsavelRESPONSAVELIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 if TField( Sender ).AsString = '' then
    begin
     cdsVendedorResponsavelL_NOMERESPONSAVEL.Clear;
     exit;
    end;

 Cds     := nil;
 InstSQL := 'ENTIDADEID =' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvEntidade' ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsVendedorResponsavelL_NOMERESPONSAVEL.Value := Cds.FieldByName('NOME').AsString
  else
     begin
      cdsVendedorResponsavelL_NOMERESPONSAVEL.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;


end;

procedure TdmPP.cdsVendedorResponsavelVENDEDORIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 if TField( Sender ).AsString = '' then
    begin
     cdsVendedorResponsavelL_NOMEVENDEDOR.Clear;
     exit;
    end;

 Cds     := nil;
 InstSQL := 'ENTIDADEID =' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvEntidade' ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsVendedorResponsavelL_NOMEVENDEDOR.Value := Cds.FieldByName('NOME').AsString
  else
     begin
      cdsVendedorResponsavelL_NOMEVENDEDOR.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmPP.cdsPedVendItemRTTRANSPORTADORIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 if TField( Sender ).AsString = '' then
    begin
     cdsCatalogoL_NOME_FORNECEDOR.Clear;
     exit;
    end;

 Cds     := nil;
 InstSQL := 'ENTIDADEID =' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvEntidade' ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsPedVendItemL_NOMETRANSPORTADOR.Value := Cds.FieldByName('NOME').AsString
  else
     begin
      cdsPedVendItemL_NOMETRANSPORTADOR.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;

end;

procedure TdmPP.cdsClasseNivelNewRecord(DataSet: TDataSet);
begin
 cdsClasseNivelCLASSENIVELID.Value      := ContadorDB('PP_CLASSENIVEL','CLASSENIVELID','');
 cdsClasseNivelPERCENTUAL1.AsCurrency   := 0;
 cdsClasseNivelPERCENTUAL2.AsCurrency   := 0;
 cdsClasseNivelPERCENTUAL3.AsCurrency   := 0;
 cdsClasseNivelPERCENTUAL4.AsCurrency   := 0;
 cdsClasseNivelPERCENTUAL5.AsCurrency   := 0;
 cdsClasseNivelPERCENTUAL6.AsCurrency   := 0;
 cdsClasseNivelUSUARIO.Value            := dmGsi.UsuarioAtivo;
end;

procedure TdmPP.cdsBasePagtoDATACONVFOBValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'DATAID =' + QuotedStr(  TField( Sender ).AsString );
 iSQL    := AnalisarAddSQL( LocateSQL( dmIT.cdsIndice.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );
  if not Cds.IsEmpty then
     cdsBasePagtoL_DOLAROFICIALC.AsFloat := Cds.FieldByName('DOLAROFICIALC').AsFloat
  else
     begin
      cdsBasePagtoL_DOLAROFICIALC.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil(cds);
 end;
end;

procedure TdmPP.cdsClasseNivelItemAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsClasseNivel.State;

 if cdsClasseNivel.UpdateStatus = usUnmodified then
    cdsClasseNivel.Post;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsClasseNivel.Edit;
end;

procedure TdmPP.cdsClasseNivelItemAfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsClasseNivel.State;

 if cdsClasseNivel.UpdateStatus = usUnmodified then
    cdsClasseNivel.Post;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsClasseNivel.Edit;
end;

procedure TdmPP.cdsClasseNivelCLASSEVENDEDOR1IDValidate(Sender: TField);
var InstSQL, iSql, NomeDesc : String;
    Cds : TClientDataSet;
begin
 NomeDesc   := 'L_DESCRICAOCLASSEVENDEDOR' + Copy( TField( Sender ).FieldName, 15, 1 );

 if TField( Sender ).IsNull then
    begin
     cdsClasseNivel.FieldByName( NomeDesc ).Clear;
     exit;
    end;

 Cds        := Nil;
 InstSQL    := 'CLASSEVENDEDORID =' + TField( Sender ).AsString;
 iSQL       := AnalisarAddSQL( LocateSQL( cdsClasseVendedor.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );
  if not Cds.IsEmpty then
     cdsClasseNivel.FieldByName( NomeDesc ).AsString := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsClasseNivel.FieldByName( NomeDesc ).Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil(cds);
 end;
end;

procedure TdmPP.cdsPedVendServAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsPedVend.State;

 if cdsPedVend.UpdateStatus = usUnmodified then
    cdsPedVend.Post;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsPedVend.Edit;

end;

procedure TdmPP.cdsPedVendServAfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsPedVend.State;

 if cdsPedVend.UpdateStatus = usUnmodified then
    cdsPedVend.Post;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsPedVend.Edit;

end;

procedure TdmPP.cdsPedVendServBeforeDelete(DataSet: TDataSet);
begin
 VerifComissaoEfetuada( cdsPedVendPEDVENDID.Value, Bloquear );
end;

procedure TdmPP.cdsPedVendServBeforeEdit(DataSet: TDataSet);
begin
 VerifComissaoEfetuada( cdsPedVendPEDVENDID.Value, Bloquear );
end;

procedure TdmPP.cdsPedVendServBeforeInsert(DataSet: TDataSet);
begin
 VerifComissaoEfetuada( cdsPedVendPEDVENDID.Value, Bloquear );
end;

procedure TdmPP.cdsPedVendServNewRecord(DataSet: TDataSet);
var iSQL : String;
begin
 iSQL := 'WHERE PP_PEDVENDSERV.PEDVENDID = ' + QuotedStr( cdsPedVendPEDVENDID.AsString );

 cdsPedVendServITEMID.AsInteger   := ContadorDB('PP_PEDVENDSERV','ITEMID',iSQL);
 cdsPedVendServEMPRESAID.Value    := cdsPedVendEMPRESAID.Value;
 cdsPedVendServVLRSERVICO.AsFloat := 0;
 cdsPedVendServUSUARIO.Value      := dmGsi.UsuarioAtivo;
end;

procedure TdmPP.cdsPedVendServSERVICOIDValidate(Sender: TField);
var iSQL : String;
    cds  : TClientDataSet;
begin
 if cdsPedVendServSERVICOID.IsNull then
    exit;

 cds  := Nil;

 iSQL := 'SELECT EMPRESAID, SERVICOID, RECEITAID, '+
         ' DESCRICAORESUMIDA, DESCRICAOCOMPLETA, GRUPOID ' +
         ' FROM EF_SERVICO ' +
         ' WHERE EMPRESAID = ' + cdsPedVendServEMPRESAID.AsString +
         '   AND SERVICOID = ' + cdsPedVendServSERVICOID.AsString;
 try
  ExecDynamicProvider( -1, iSQL, cds );

  if not cds.IsEmpty then
     begin
      cdsPedVendServL_GRUPOID.Value        := cds.FieldByName('GRUPOID').AsInteger;
      cdsPedVendServDESCRICAOSERVICO.Value := cds.FieldByName('DESCRICAOCOMPLETA').AsString;
     end
  else
     begin
      cdsPedVendServL_GRUPOID.Clear;
      cdsPedVendServDESCRICAOSERVICO.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  cds.Close;

 finally
  FreeAndNil( cds );
 end;

end;

procedure TdmPP.cdsPedVendItemQUANTIDADEValidate(Sender: TField);
//var BookMark : TBookMark;
var iSQLProd, iSQLNat : String;
    cdsProd, cdsNat : TClientDataSet;
    EstoqReser : Currency;
begin
 if cdsPedVendItemQUANTIDADE.Value = 0 then
    exit;

 if cdsPedVendItemPRODUTOID.IsNull then
    exit;

 cdsProd  := Nil;
 cdsNat   := Nil;
 iSQLProd := 'SELECT EMPRESAID, PRODUTOID, ESTOQUENOVO, ESTOQUEREVISADO, ESTOQUEDEMO, ESTOQUEFISICO, ESTOQUEPEDENTRADA, ESTOQUEPEDSAIDA, ' +
             ' ESTOQUEEMTERCEIRO, ESTOQUEDETERCEIRO, ESTOQUEQUARENTENA, ESTOQUEMINIMO, ESTOQUEEMPENHO, ESTOQUERESERVA, ' +
             ' ESTOQUEVALE, ESTOQUETOTAL, PRECOVENDAMINIMO, PRECOVENDA ' +
             ' FROM EF_PRODUTO ' +
             ' WHERE EMPRESAID = ' + cdsPedVendItemEMPRESAID.AsString +
             '   AND PRODUTOID = ' + cdsPedVendItemPRODUTOID.AsString;

 iSQLNat  := 'SELECT NATUREZAOPID, MOVIMENTOESTOQUE, VENDAFATANTECIPADO, COBERTURACONTRATUAL , VENDADEFINITIVA, DOCINTERNO' +
             ' FROM EF_NATUREZAOP ' +
             ' WHERE NATUREZAOPID = ' + cdsPedVendNATUREZAOPID.AsString;

 try
 //  BookMark := cdsPedVendItem.GetBookmark;

 //  if Assigned( BookMark ) then
 //   if cdsPedVendItem.BookMarkValid( BookMark ) then
 //        raise Exception.Create('Quantidade pedida não pode ser alterada, apague o item e refaça novamente');

  ExecDynamicProvider( -1, iSQLProd, cdsProd );

  ExecDynamicProvider( -1, isqlNat, cdsNat );

  if cdsProd.IsEmpty then
     raise Exception.Create( 'Produto não localizado ' )
  else
     begin
      EstoqReser := cdsProd.FieldByName('ESTOQUEFISICO').AsCurrency -
                    cdsProd.FieldByName('ESTOQUERESERVA').AsCurrency;

      if cdsPedVendItemQUANTIDADE.AsCurrency >  EstoqReser then
         MessageDlg('Quantidade Estoque físico  : ' + FormatFloat( '###,##0.0000',  cdsProd.FieldByName('ESTOQUEFISICO').AsCurrency ) + #13 +
                    'Quantidade Estoque reserva : ' + FormatFloat( '###,##0.0000',  cdsProd.FieldByName('ESTOQUERESERVA').AsCurrency ) + #13 +
                    'Quantidade disponível      : ' + FormatFloat( '###,##0.0000', EstoqReser ) + #13 +
                    'Quantidade solicitada      : ' + FormatFloat( '###,##0.0000', cdsPedVendItemQUANTIDADE.AsCurrency ), mtInformation,[mbOk], 0);

      case cdsPedVendEMPRESAID.AsInteger of
      1,12  : begin
               if      ( cdsNat.FieldByName('MOVIMENTOESTOQUE').Value = 'N' ) or ( cdsNat.FieldByName('MOVIMENTOESTOQUE').Value = 'Q' )then
                       begin
                        if cdsNat.FieldByName('VENDADEFINITIVA').AsInteger = 1  then
                           cdsPedVendItemVLRPRECOUNITARIO.Value := cdsProd.FieldByName('PRECOVENDAMINIMO').AsCurrency
                        else
                           begin
                            if cdsNat.FieldByName('DOCINTERNO').AsInteger = 1  then
                               cdsPedVendItemVLRPRECOUNITARIO.Value := cdsProd.FieldByName('CUSTOMEDIO').AsCurrency
                            else
                               // Incluindo a pedido de Lorival no Dia 16/02/2000 às 10:35am para baixar os impostos
                               cdsPedVendItemVLRPRECOUNITARIO.Value := (cdsProd.FieldByName('PRECOVENDAMINIMO').AsCurrency/100)*80;
                            end;

                       end
               else if cdsNat.FieldByName('MOVIMENTOESTOQUE').Value <> 'V' then
                       cdsPedVendItemVLRPRECOUNITARIO.Value := (cdsProd.FieldByName('PRECOVENDAMINIMO').AsCurrency/100)*60;
              end;
      else
        cdsPedVendItemVLRPRECOUNITARIO.Value := (cdsProd.FieldByName('PRECOVENDAMINIMO').AsCurrency/100)*60;
      end;

     end;

   cdsProd.Close;

 finally
//  FreeAndNil( BookMark );
  FreeAndNil( cdsProd );
 end;

end;

procedure TdmPP.cdsPedVendItemBeforeEdit(DataSet: TDataSet);
begin
 cdsPedVendItemPRODUTOID.Tag  := 1;
// cdsPedVendItemQUANTIDADE.Tag := 1;
end;

procedure TdmPP.cdsPedVendItemBeforePost(DataSet: TDataSet);
begin
 if cdsPedVendItem.State = dsInsert then
    if cdsPedVendORIGEMVENDAID.AsInteger = 2 then
       shdcnnPP.AppServer.IAtualSaldoReserva( cdsPedVendItemEMPRESAID.AsString,
                                              cdsPedVendItemPRODUTOID.AsString,
                                              cdsPedVendItemQUANTIDADE.Value,
                                              '+' );
end;

procedure TdmPP.cdsPercComFuncAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmPP.cdsPercComFuncAfterPost(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmPP.cdsPercComFuncCLASSEVENDEDORIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsClasseVendedor.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsPercComFuncL_DESCRICAOCLASSEVENDEDOR.Value := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsPercComFuncL_DESCRICAOCLASSEVENDEDOR.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmPP.cdsPercComFuncGrupoAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsPercComFunc.State;

 if cdsPercComFunc.UpdateStatus = usUnmodified then
    cdsPercComFunc.Post;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsPercComFunc.Edit;
end;

procedure TdmPP.cdsPercComFuncGrupoAfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsPercComFunc.State;

 if cdsPercComFunc.UpdateStatus = usUnmodified then
    if cdsPercComFunc.UpdateStatus <> usDeleted then
       cdsPercComFunc.Post;

 if cdsPercComFuncGrupo.ChangeCount > 0 then
    cdsPercComFuncGrupo.ApplyUpdates(-1);

 if cdsPercComFunc.UpdateStatus <> usDeleted then
    begin
     cdsPercComFunc.RefreshRecord;
     if dsState in [dsEdit,dsInsert] then
        cdsPercComFunc.Edit;
    end;
end;

procedure TdmPP.cdsPercComFuncGrupoGRUPOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvGrupo' ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsPercComFuncGrupoL_SIGLAGRUPO.Value     := Cds.FieldByName('SIGLAGRUPO').AsString
  else
     begin
      cdsPercComFuncGrupoL_SIGLAGRUPO.Clear;
      raise Exception.Create('Valor do campo ' + Sender.DisplayName + ' é Inválido.');
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmPP.cdsPercComFuncGrupoNewRecord(DataSet: TDataSet);
begin
 cdsPercComFuncGrupoUSUARIO.Value := dmGsi.UsuarioAtivo;
end;

procedure TdmPP.cdsPercComFuncNewRecord(DataSet: TDataSet);
begin
 cdsPercComFuncUSUARIO.Value := dmGsi.UsuarioAtivo;
end;

procedure TdmPP.cdsPercComFuncTIPOVENDAIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsTipoVenda.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsPercComFuncL_DESCRICAOTIPOVENDA.AsString  := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsPercComFuncL_DESCRICAOTIPOVENDA.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmPP.cdsPerComReprGRUPOIDValidate(Sender: TField);
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
     begin
      cdsPerComReprL_SIGLAGRUPO.Value     := Cds.FieldByName('SIGLAGRUPO').AsString;
      cdsPerComReprL_DESCRICAOGRUPO.Value := Cds.FieldByName('DESCRICAO').AsString;
     end
  else
     begin
      cdsPerComReprL_SIGLAGRUPO.Clear;
      cdsPerComReprL_DESCRICAOGRUPO.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

end.


