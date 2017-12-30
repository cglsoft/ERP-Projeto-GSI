unit u_dmEF;

interface

uses
  SysUtils, Classes, DB, DBClient, MConnect, Dialogs, Controls,
  Forms, Variants;

type
  TdmEF = class(TDataModule)
    cdsContaContabil: TClientDataSet;
    cdsDepartamento: TClientDataSet;
    cdsCargo: TClientDataSet;
    cdsCargoCARGOID: TBCDField;
    cdsCargoDESCRICAO: TStringField;
    cdsCargoCONTACONTABILID: TStringField;
    cdsCargoUSUARIO: TStringField;
    cdsObservacao: TClientDataSet;
    cdsSiglaNatureza: TClientDataSet;
    cdsSiglaNaturezaSIGLANATUREZAID: TBCDField;
    cdsSiglaNaturezaDESCRICAORESUMIDA: TStringField;
    cdsSiglaNaturezaDESCRICAO: TStringField;
    cdsSiglaNaturezaCONTACONTABILID: TStringField;
    cdsSiglaNaturezaCENTROCUSTOID: TStringField;
    cdsSiglaNaturezaUSUARIO: TStringField;
    cdsNaturezaOp: TClientDataSet;
    cdsNaturezaEmpresa: TClientDataSet;
    cdsNaturezaEmpresaNATUREZAOPID: TBCDField;
    cdsNaturezaEmpresaEMPRESAID: TBCDField;
    cdsNaturezaEmpresaUSUARIO: TStringField;
    cdsFilial: TClientDataSet;
    cdsCategoria: TClientDataSet;
    cdsBanco: TClientDataSet;
    cdsCondPagto: TClientDataSet;
    cdsImposto: TClientDataSet;
    cdsImpostoIMPOSTOID: TStringField;
    cdsImpostoVLRALIQUOTA: TFMTBCDField;
    cdsImpostoUSUARIO: TStringField;
    cdsGrupo: TClientDataSet;
    cdsSubGrupo: TClientDataSet;
    cdsSubGrupoSUBGRUPOID: TBCDField;
    cdsSubGrupoTIPO: TStringField;
    cdsSubGrupoSIGLAGRUPO: TStringField;
    cdsSubGrupoDESCRICAO: TStringField;
    cdsSubGrupoUSUARIO: TStringField;
    cdsUnidade: TClientDataSet;
    cdsUnidadeUNIDADEID: TStringField;
    cdsUnidadeDESCRICAO: TStringField;
    cdsUnidadeUSUARIO: TStringField;
    cdsTecWin: TClientDataSet;
    cdsReceita: TClientDataSet;
    cdsReceitaRECEITAID: TBCDField;
    cdsReceitaSIGLA: TStringField;
    cdsReceitaDESCRICAO: TStringField;
    cdsReceitaTIPORECEITA: TStringField;
    cdsReceitaORIGEM: TStringField;
    cdsReceitaCONTACONTABILID: TStringField;
    cdsReceitaCENTROCUSTOID: TStringField;
    cdsReceitaUSUARIO: TStringField;
    cdsServico: TClientDataSet;
    cdsKardex: TClientDataSet;
    cdsPde: TClientDataSet;
    cdsPdeItem: TClientDataSet;
    dsContaContabil: TDataSource;
    dsDepartamento: TDataSource;
    dsCargo: TDataSource;
    dsObservacao: TDataSource;
    dsSiglaNatureza: TDataSource;
    dsNaturezaOp: TDataSource;
    dsNaturezaEmpresa: TDataSource;
    dsFilial: TDataSource;
    dsCategoria: TDataSource;
    dsBanco: TDataSource;
    dsCondPagto: TDataSource;
    dsImposto: TDataSource;
    dsGrupo: TDataSource;
    dsSubGrupo: TDataSource;
    dsUnidade: TDataSource;
    dsTecWin: TDataSource;
    dsReceita: TDataSource;
    dsServico: TDataSource;
    dsKardex: TDataSource;
    dsPde: TDataSource;
    dsPdeItem: TDataSource;
    cdsNfe: TClientDataSet;
    cdsNfeItem: TClientDataSet;
    dsNfe: TDataSource;
    dsNfeItem: TDataSource;
    cdsEntidade: TClientDataSet;
    cdsEntidadeGrupo: TClientDataSet;
    dsEntidade: TDataSource;
    dsEntidadeGrupo: TDataSource;
    cdsEmpresa: TClientDataSet;
    dsEmpresa: TDataSource;
    cdsNfs: TClientDataSet;
    cdsNfsItem: TClientDataSet;
    cdsNfsParcela: TClientDataSet;
    cdsNfsServico: TClientDataSet;
    dsNfs: TDataSource;
    dsNfsItem: TDataSource;
    dsNfsParcela: TDataSource;
    dsNfsServico: TDataSource;
    cdsPds: TClientDataSet;
    cdsPdsItem: TClientDataSet;
    cdsPdsParcela: TClientDataSet;
    cdsPdsServico: TClientDataSet;
    dsPds: TDataSource;
    dsPdsItem: TDataSource;
    dsPdsParcela: TDataSource;
    dsPdsServico: TDataSource;
    cdsProduto: TClientDataSet;
    cdsProdutoItem: TClientDataSet;
    dsProduto: TDataSource;
    dsProdutoItem: TDataSource;
    shdcnnEF: TSharedConnection;
    cdsEntidadeGrupoENTIDADEID: TBCDField;
    cdsEntidadeGrupoCATEGORIAID: TBCDField;
    cdsEntidadeGrupoUSUARIO: TStringField;
    cdsKardexEMPRESAID: TBCDField;
    cdsKardexKARDEXID: TBCDField;
    cdsKardexDATAOCORRENCIA: TSQLTimeStampField;
    cdsKardexNUMDOCUMENTO: TBCDField;
    cdsKardexTIPODOCUMENTO: TStringField;
    cdsKardexTIPOESTOQUE: TStringField;
    cdsKardexOSID: TStringField;
    cdsKardexDIID: TStringField;
    cdsKardexNATUREZAOPID: TBCDField;
    cdsKardexL_CFOP: TStringField;
    cdsKardexL_DESCRICAOOPERACAOUSUARIO: TStringField;
    cdsKardexTIPOOPERACAO: TStringField;
    cdsKardexPRODUTOID: TBCDField;
    cdsKardexL_DESCRICAOPORTUGUES: TStringField;
    cdsKardexQUANTIDADE: TBCDField;
    cdsKardexESTOQUEFISICO: TBCDField;
    cdsKardexESTOQUEPEDENTRADA: TBCDField;
    cdsKardexESTOQUEPEDSAIDA: TBCDField;
    cdsKardexESTOQUEEMTERCEIRO: TBCDField;
    cdsKardexESTOQUEDETERCEIRO: TBCDField;
    cdsKardexESTOQUEMINIMO: TBCDField;
    cdsKardexESTOQUEEMPENHO: TBCDField;
    cdsKardexESTOQUEVALE: TBCDField;
    cdsKardexESTOQUEESTORNO: TBCDField;
    cdsKardexUSUARIO: TStringField;
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
    cdsFilialUSUARIO: TStringField;
    cdsGrupoGRUPOID: TBCDField;
    cdsGrupoDESCRICAO: TStringField;
    cdsGrupoUSUARIO: TStringField;
    cdsNaturezaEmpresaL_NOMEFANTASIA: TStringField;
    cdsEntidadeGrupoL_DESCRICAO: TStringField;
    cdsPdeItemBar: TClientDataSet;
    dsPdeItemBar: TDataSource;
    cdsNfeItemBar: TClientDataSet;
    dsNfeItemBar: TDataSource;
    cdsPdsItemBar: TClientDataSet;
    dsPdsItemBar: TDataSource;
    cdsNfsItemBar: TClientDataSet;
    dsNfsItemBar: TDataSource;
    cdsDepartamentoDEPARTAMENTOID: TBCDField;
    cdsDepartamentoDESCRICAO: TStringField;
    cdsDepartamentoSIGLA: TStringField;
    cdsDepartamentoFILIALID: TBCDField;
    cdsDepartamentoL_FILIAL: TStringField;
    cdsDepartamentoCONTACONTABILID: TStringField;
    cdsDepartamentoCENTROCUSTOID: TStringField;
    cdsDepartamentoUSUARIO: TStringField;
    cdsModeloDocFiscal: TClientDataSet;
    dsModeloDocFiscal: TDataSource;
    cdsModeloDocFiscalMODELODOCFISCALID: TBCDField;
    cdsModeloDocFiscalMODELO: TStringField;
    cdsModeloDocFiscalUSUARIO: TStringField;
    cdsCategJuridica: TClientDataSet;
    cdsCategJuridicaCATEGJURIDICAID: TBCDField;
    cdsCategJuridicaDESCRICAO: TStringField;
    cdsCategJuridicaUSUARIO: TStringField;
    dsCategJuridica: TDataSource;
    cdsNaturezaJuridica: TClientDataSet;
    cdsNaturezaJuridicaNATUREZAJURIDICAID: TBCDField;
    cdsNaturezaJuridicaCATEGJURIDICAID: TBCDField;
    cdsNaturezaJuridicaL_CATEGJURIDICA: TStringField;
    cdsNaturezaJuridicaDESCRICAO: TStringField;
    cdsNaturezaJuridicaIMPRIMIRDUPLICATA: TBCDField;
    cdsNaturezaJuridicaUSUARIO: TStringField;
    dsNaturezaJuridica: TDataSource;
    cdsEntidadeENTIDADEID: TBCDField;
    cdsEntidadeCPFCNPJ: TStringField;
    cdsEntidadeFISICAJURIDICA: TStringField;
    cdsEntidadeINSCRESTADUAL: TStringField;
    cdsEntidadeINSCRMUNICIPAL: TStringField;
    cdsEntidadeNOME: TStringField;
    cdsEntidadeNOMEFANTASIA: TStringField;
    cdsEntidadePASTA: TStringField;
    cdsEntidadeSTATUSCOMERCIAL: TBCDField;
    cdsEntidadeSTATUSFINANCEIRO: TBCDField;
    cdsEntidadeNATUREZAJURIDICAID: TBCDField;
    cdsEntidadeL_NATUREZAJURIDICA: TStringField;
    cdsEntidadeL_CATEGJURIDICA: TStringField;
    cdsEntidadeCEPID: TBCDField;
    cdsEntidadeNUMERO: TStringField;
    cdsEntidadeCOMPLEMENTO: TStringField;
    cdsEntidadeENDERECO: TStringField;
    cdsEntidadeBAIRRO: TStringField;
    cdsEntidadeCIDADE: TStringField;
    cdsEntidadeSIGLAUFID: TStringField;
    cdsEntidadePAIS: TStringField;
    cdsEntidadeCEPCOBID: TBCDField;
    cdsEntidadeNUMEROCOB: TStringField;
    cdsEntidadeCOMPLEMENTOCOB: TStringField;
    cdsEntidadeENDERECOCOB: TStringField;
    cdsEntidadeBAIRROCOB: TStringField;
    cdsEntidadeCIDADECOB: TStringField;
    cdsEntidadeSIGLAUFCOBID: TStringField;
    cdsEntidadePAISCOB: TStringField;
    cdsEntidadeCONTATO: TStringField;
    cdsEntidadeCONTATOCOB: TStringField;
    cdsEntidadeTELEFONE: TStringField;
    cdsEntidadeTELEFONE2: TStringField;
    cdsEntidadeCELULAR: TStringField;
    cdsEntidadeCELULAR2: TStringField;
    cdsEntidadeFAX: TStringField;
    cdsEntidadeEMAIL: TStringField;
    cdsEntidadePAGINA: TStringField;
    cdsEntidadeOBSERVACAO: TStringField;
    cdsEntidadeCONTRIBUINTEICMS: TBCDField;
    cdsEntidadeRG: TStringField;
    cdsEntidadeRGORGAOEMISSOR: TStringField;
    cdsEntidadeHABILITACAO: TStringField;
    cdsEntidadeVALIDADEHABILITACAO: TSQLTimeStampField;
    cdsEntidadeCRM: TStringField;
    cdsEntidadeCRMORGAOEMISSOR: TStringField;
    cdsEntidadeCARGOID: TBCDField;
    cdsEntidadeL_DESCRICAOCARGO: TStringField;
    cdsEntidadeFILIALID: TBCDField;
    cdsEntidadeL_NOMEFANTASIA: TStringField;
    cdsEntidadeDEPARTAMENTOID: TBCDField;
    cdsEntidadeL_DESCRICAODEPTO: TStringField;
    cdsEntidadeUSUARIO: TStringField;
    cdsEntidadesqldtsEntidadeGrupo: TDataSetField;
    cdsBancoBANCOID: TBCDField;
    cdsBancoNOME: TStringField;
    cdsBancoNUMBANCO: TStringField;
    cdsBancoAGENCIA: TStringField;
    cdsBancoCONTA: TStringField;
    cdsBancoNUMERO: TStringField;
    cdsBancoCOMPLEMENTO: TStringField;
    cdsBancoENDERECO: TStringField;
    cdsBancoBAIRRO: TStringField;
    cdsBancoCIDADE: TStringField;
    cdsBancoSIGLAUFID: TStringField;
    cdsBancoCEPID: TBCDField;
    cdsBancoTELEFONE: TStringField;
    cdsBancoFAX: TStringField;
    cdsBancoCONTATO: TStringField;
    cdsBancoCONTACONTABILID: TStringField;
    cdsBancoUSUARIO: TStringField;
    cdsProdutoEMPRESAID: TBCDField;
    cdsProdutoPRODUTOID: TBCDField;
    cdsProdutoORIGEM: TStringField;
    cdsProdutoATIVO: TBCDField;
    cdsProdutoNOVOUSADO: TStringField;
    cdsProdutoGRUPOID: TBCDField;
    cdsProdutoL_DESCRICAO_GRUPO: TStringField;
    cdsProdutoSUBGRUPOID: TBCDField;
    cdsProdutoL_DESCRICAO_SUBGRUPO: TStringField;
    cdsProdutoPARTNUMBERID: TStringField;
    cdsProdutoDESCRICAOPORTUGUES: TStringField;
    cdsProdutoDESCRICAOINGLES: TStringField;
    cdsProdutoFORNECEDORID: TBCDField;
    cdsProdutoL_NOMEFORNECEDOR: TStringField;
    cdsProdutoGERACODBARRA: TBCDField;
    cdsProdutoLOCALIZACAO: TStringField;
    cdsProdutoUNIDADEID: TStringField;
    cdsProdutoL_DESCRICAOUNIDADE: TStringField;
    cdsProdutoPESO: TFMTBCDField;
    cdsProdutoAPLICACAO: TStringField;
    cdsProdutoOBSERVACAO: TStringField;
    cdsProdutoNCMID: TStringField;
    cdsProdutoDESCRICAONCM: TStringField;
    cdsProdutoINCENTIVOICMS: TBCDField;
    cdsProdutoREDUCAOICMS: TFMTBCDField;
    cdsProdutoALIQUOTAII: TFMTBCDField;
    cdsProdutoDATAINICIALII: TSQLTimeStampField;
    cdsProdutoDATAFINALII: TSQLTimeStampField;
    cdsProdutoALIQUOTAIPI: TFMTBCDField;
    cdsProdutoDATAINICIALIPI: TSQLTimeStampField;
    cdsProdutoDATAFINALIPI: TSQLTimeStampField;
    cdsProdutoSUSPENSAOIPI: TBCDField;
    cdsProdutoISENTOIPI: TBCDField;
    cdsProdutoCONTACTBATIVO: TStringField;
    cdsProdutoCONTACTBDESPESA: TStringField;
    cdsProdutoCONTACTBRECEITA: TStringField;
    cdsProdutoCUSTOMEDIOUS: TBCDField;
    cdsProdutoCUSTOMEDIO: TBCDField;
    cdsProdutoCUSTOTOTAL: TBCDField;
    cdsProdutoPRECOVENDA: TBCDField;
    cdsProdutoPRECOVENDAMINIMO: TBCDField;
    cdsProdutoVLRFOB: TBCDField;
    cdsProdutoVLRFOBUS: TBCDField;
    cdsProdutoESTOQUENOVO: TBCDField;
    cdsProdutoESTOQUEREVISADO: TBCDField;
    cdsProdutoESTOQUEFISICO: TBCDField;
    cdsProdutoESTOQUEPEDENTRADA: TBCDField;
    cdsProdutoESTOQUEPEDSAIDA: TBCDField;
    cdsProdutoESTOQUEEMTERCEIRO: TBCDField;
    cdsProdutoESTOQUEDETERCEIRO: TBCDField;
    cdsProdutoESTOQUEMINIMO: TBCDField;
    cdsProdutoESTOQUEEMPENHO: TBCDField;
    cdsProdutoESTOQUEVALE: TBCDField;
    cdsProdutoESTOQUEESTORNO: TBCDField;
    cdsProdutoESTOQUETOTAL: TBCDField;
    cdsProdutoNCM2ID: TStringField;
    cdsProdutoNCM3ID: TStringField;
    cdsProdutoDATANCM: TSQLTimeStampField;
    cdsProdutoDATANCM2: TSQLTimeStampField;
    cdsProdutoDATANCM3: TSQLTimeStampField;
    cdsProdutoALIQUOTATEMPIPI: TFMTBCDField;
    cdsProdutoALIQUOTATEMPII: TFMTBCDField;
    cdsProdutoUSUARIO: TStringField;
    cdsProdutosqldtsProdutoItem: TDataSetField;
    cdsProdutoItemEMPRESAID: TBCDField;
    cdsProdutoItemPRODUTOID: TBCDField;
    cdsProdutoItemPRODUTOITEMID: TBCDField;
    cdsProdutoItemDATAENTRADA: TSQLTimeStampField;
    cdsProdutoItemCODIGOBARRA: TStringField;
    cdsProdutoItemSERIEID: TStringField;
    cdsProdutoItemREVISAO: TBCDField;
    cdsProdutoItemDATAULTIMAREVISAO: TSQLTimeStampField;
    cdsProdutoItemTIPOPRODUTO: TStringField;
    cdsProdutoItemQUANTIDADE: TBCDField;
    cdsProdutoItemQTDUTILIZADA: TBCDField;
    cdsProdutoItemSTATUS: TStringField;
    cdsProdutoItemINCENTIVOICMS: TBCDField;
    cdsProdutoItemNCMID: TStringField;
    cdsProdutoItemDATANCM: TSQLTimeStampField;
    cdsProdutoItemOBSERVACAO: TStringField;
    cdsProdutoItemUSUARIO: TStringField;
    cdsPdeItemBarEMPRESAID: TBCDField;
    cdsPdeItemBarPDEID: TBCDField;
    cdsPdeItemBarITEMID: TBCDField;
    cdsPdeItemBarITEMBARID: TBCDField;
    cdsPdeItemBarPRODUTOID: TBCDField;
    cdsPdeItemBarPRODUTOITEMID: TBCDField;
    cdsPdeItemBarL_INCENTIVOICMS: TBCDField;
    cdsPdeItemBarL_NCMID: TStringField;
    cdsPdeItemBarESTOQUEUTILIZADO: TStringField;
    cdsPdeItemBarUSUARIO: TStringField;
    cdsNfeItemBarEMPRESAID: TBCDField;
    cdsNfeItemBarNFEID: TBCDField;
    cdsNfeItemBarDATAEMISSAOID: TSQLTimeStampField;
    cdsNfeItemBarENTIDADEID: TBCDField;
    cdsNfeItemBarITEMID: TBCDField;
    cdsNfeItemBarITEMBARID: TBCDField;
    cdsNfeItemBarPRODUTOID: TBCDField;
    cdsNfeItemBarPRODUTOITEMID: TBCDField;
    cdsNfeItemBarL_INCENTIVOICMS: TBCDField;
    cdsNfeItemBarL_NCMID: TStringField;
    cdsNfeItemBarESTOQUEUTILIZADO: TStringField;
    cdsNfeItemBarUSUARIO: TStringField;
    cdsPdsItemBarEMPRESAID: TBCDField;
    cdsPdsItemBarPDSID: TBCDField;
    cdsPdsItemBarITEMID: TBCDField;
    cdsPdsItemBarITEMBARID: TBCDField;
    cdsPdsItemBarPRODUTOID: TBCDField;
    cdsPdsItemBarPRODUTOITEMID: TBCDField;
    cdsPdsItemBarL_INCENTIVOICMS: TBCDField;
    cdsPdsItemBarL_NCMID: TStringField;
    cdsPdsItemBarESTOQUEUTILIZADO: TStringField;
    cdsPdsItemBarUSUARIO: TStringField;
    cdsPdsParcelaEMPRESAID: TBCDField;
    cdsPdsParcelaPDSID: TBCDField;
    cdsPdsParcelaPARCELAID: TBCDField;
    cdsPdsParcelaDATAVENCIMENTO: TSQLTimeStampField;
    cdsPdsParcelaVLRPARCELA: TBCDField;
    cdsPdsParcelaUSUARIO: TStringField;
    cdsNfsItemBarEMPRESAID: TBCDField;
    cdsNfsItemBarNFSID: TBCDField;
    cdsNfsItemBarDATAEMISSAOID: TSQLTimeStampField;
    cdsNfsItemBarITEMID: TBCDField;
    cdsNfsItemBarITEMBARID: TBCDField;
    cdsNfsItemBarPRODUTOID: TBCDField;
    cdsNfsItemBarPRODUTOITEMID: TBCDField;
    cdsNfsItemBarL_INCENTIVOICMS: TBCDField;
    cdsNfsItemBarL_NCMID: TStringField;
    cdsNfsItemBarESTOQUEUTILIZADO: TStringField;
    cdsNfsItemBarUSUARIO: TStringField;
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
    cdsNfsParcelaUSUARIO: TStringField;
    cdsEmpresaEMPRESAID: TBCDField;
    cdsEmpresaNOME: TStringField;
    cdsEmpresaNOMEFANTASIA: TStringField;
    cdsEmpresaCPF_CNPJ: TStringField;
    cdsEmpresaBLOQUEAR: TBCDField;
    cdsEmpresaDIRETORIO: TStringField;
    cdsEmpresaCEPID: TBCDField;
    cdsEmpresaNUMERO: TStringField;
    cdsEmpresaCOMPLEMENTO: TStringField;
    cdsEmpresaENDERECO: TStringField;
    cdsEmpresaBAIRRO: TStringField;
    cdsEmpresaCIDADE: TStringField;
    cdsEmpresaSIGLAUFID: TStringField;
    cdsEmpresaNUMNF: TBCDField;
    cdsEmpresaNUMNF3: TBCDField;
    cdsEmpresaNUMPRODUTO: TBCDField;
    cdsEmpresaNUMDUPLICATA: TBCDField;
    cdsEmpresaNUMPDE: TBCDField;
    cdsEmpresaNUMPDS: TBCDField;
    cdsEmpresaNUMTRANSFCONSUMO: TBCDField;
    cdsEmpresaMODELOIMPRESSAONOTA: TBCDField;
    cdsEmpresaALIQUOTAISS: TFMTBCDField;
    cdsEmpresaNUMEMPRESAEXP: TBCDField;
    cdsEmpresaSIGLADUPLICATA: TStringField;
    cdsCategoriaCATEGORIAID: TBCDField;
    cdsCategoriaDESCRICAO: TStringField;
    cdsCategoriaFUNCAOVENDA: TBCDField;
    cdsCategoriaUSUARIO: TStringField;
    cdsObservacaoOBSERVACAOID: TBCDField;
    cdsObservacaoDESCRICAO: TMemoField;
    cdsObservacaoUSUARIO: TStringField;
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
    cdsServicoEMPRESAID: TBCDField;
    cdsServicoSERVICOID: TBCDField;
    cdsServicoRECEITAID: TBCDField;
    cdsServicoL_SIGLARECEITA: TStringField;
    cdsServicoL_DESCRICAORECEITA: TStringField;
    cdsServicoDESCRICAORESUMIDA: TStringField;
    cdsServicoDESCRICAOCOMPLETA: TMemoField;
    cdsServicoGRUPOID: TBCDField;
    cdsServicoUSUARIO: TStringField;
    cdsPdeEMPRESAID: TBCDField;
    cdsPdePDEID: TBCDField;
    cdsPdeDATAPEDIDO: TSQLTimeStampField;
    cdsPdeDATAPREVISAO: TSQLTimeStampField;
    cdsPdeDIID: TStringField;
    cdsPdeDESCRICAOIMPORTACAO: TMemoField;
    cdsPdeOSID: TStringField;
    cdsPdeLIBCHEFIA: TBCDField;
    cdsPdeLIBCHEFIANOME: TStringField;
    cdsPdeLIBCHEFIADATA: TSQLTimeStampField;
    cdsPdeLIBFINANCEIRO: TBCDField;
    cdsPdeLIBFINANCEIRONOME: TStringField;
    cdsPdeLIBFINANCEIRODATA: TSQLTimeStampField;
    cdsPdeLIBCONTABIL: TBCDField;
    cdsPdeLIBCONTABILNOME: TStringField;
    cdsPdeLIBCONTABILDATA: TSQLTimeStampField;
    cdsPdeMOVIMENTAESTOQUE: TBCDField;
    cdsPdeNFEID: TBCDField;
    cdsPdeDATAEMISSAONFEID: TSQLTimeStampField;
    cdsPdeMODELODOCFISCALID: TBCDField;
    cdsPdeL_MODELODOCFISCAL: TStringField;
    cdsPdeSERIE: TStringField;
    cdsPdeNFSID: TBCDField;
    cdsPdeDATAEMISSAONFSID: TSQLTimeStampField;
    cdsPdeTIPONOTA: TStringField;
    cdsPdeCATEGORIAID: TBCDField;
    cdsPdeENTIDADEID: TBCDField;
    cdsPdeNOME: TStringField;
    cdsPdeCEPID: TBCDField;
    cdsPdeNUMERO: TStringField;
    cdsPdeCOMPLEMENTO: TStringField;
    cdsPdeENDERECO: TStringField;
    cdsPdeBAIRRO: TStringField;
    cdsPdeCIDADE: TStringField;
    cdsPdeSIGLAUFID: TStringField;
    cdsPdePAIS: TStringField;
    cdsPdeCONTRIBUINTEICMS: TBCDField;
    cdsPdeNATUREZAOPID: TBCDField;
    cdsPdeL_CFOP: TStringField;
    cdsPdeL_DESCRICAOOPERACAOUSUARIO: TStringField;
    cdsPdeOBSERVACAOID: TBCDField;
    cdsPdeDESCRICAOOBSERVACAO: TMemoField;
    cdsPdeTRANSPORTADORID: TBCDField;
    cdsPdeL_NOMETRANSPORTADOR: TStringField;
    cdsPdePLACAVEICULO: TStringField;
    cdsPdeMODALIDADEFRETE: TStringField;
    cdsPdeVLRFRETE: TBCDField;
    cdsPdeVLRSEGURO: TBCDField;
    cdsPdeVLRDESPESAACESSORIA: TBCDField;
    cdsPdeEMBQTDVOLUMES: TBCDField;
    cdsPdeEMBNUMERO: TBCDField;
    cdsPdeEMBMARCA: TStringField;
    cdsPdeEMBESPECIE: TStringField;
    cdsPdeEMBPESOBRUTO: TBCDField;
    cdsPdeEMBPESOLIQUIDO: TBCDField;
    cdsPdeVLRTOTALCOFINS: TBCDField;
    cdsPdeVLRTOTALPIS: TBCDField;
    cdsPdeVLRTOTALCREDCOFINS: TBCDField;
    cdsPdeVLRTOTALCREDPIS: TBCDField;
    cdsPdeVLRTOTALBASEICMS: TBCDField;
    cdsPdeVLRTOTALICMS: TBCDField;
    cdsPdeVLRTOTALISENTASICMS: TBCDField;
    cdsPdeVLRTOTALOUTRASICMS: TBCDField;
    cdsPdeVLRTOTALBASEIPI: TBCDField;
    cdsPdeVLRTOTALIPI: TBCDField;
    cdsPdeVLRTOTALISENTASIPI: TBCDField;
    cdsPdeVLRTOTALOUTRASIPI: TBCDField;
    cdsPdeVLRTOTALPRODUTO: TBCDField;
    cdsPdeVLRTOTALNOTA: TBCDField;
    cdsPdeUSUARIO: TStringField;
    cdsPdesqldtsPdeItem: TDataSetField;
    cdsPdeItemEMPRESAID: TBCDField;
    cdsPdeItemPDEID: TBCDField;
    cdsPdeItemITEMID: TBCDField;
    cdsPdeItemNATUREZAOPID: TBCDField;
    cdsPdeItemL_CFOP: TStringField;
    cdsPdeItemL_DESCRICAOOPERACAOUSUARIO: TStringField;
    cdsPdeItemL_DESCRICAOOPERACAONOTA: TStringField;
    cdsPdeItemOBSERVACAOID: TBCDField;
    cdsPdeItemDESCRICAOOBSERVACAO: TMemoField;
    cdsPdeItemPRODUTOID: TBCDField;
    cdsPdeItemDESCRICAOPRODUTO: TStringField;
    cdsPdeItemQUANTIDADE: TBCDField;
    cdsPdeItemVLRPRECOUNITARIO: TBCDField;
    cdsPdeItemVLRPRECOTOTAL: TBCDField;
    cdsPdeItemEMPENHO: TBCDField;
    cdsPdeItemQUANTIDADEEMPENHO: TBCDField;
    cdsPdeItemRETORNO: TStringField;
    cdsPdeItemQTDRETORNA: TBCDField;
    cdsPdeItemVLRBASEICMS: TBCDField;
    cdsPdeItemALIQUOTAICMS: TFMTBCDField;
    cdsPdeItemVLRICMS: TBCDField;
    cdsPdeItemVLRISENTASICMS: TBCDField;
    cdsPdeItemVLROUTRASICMS: TBCDField;
    cdsPdeItemPORCREDUCAOICMS: TBCDField;
    cdsPdeItemSITTRIBUTARIAESTADUAL: TStringField;
    cdsPdeItemALIQUOTACOFINS: TFMTBCDField;
    cdsPdeItemVLRCOFINS: TBCDField;
    cdsPdeItemVLRCREDCOFINS: TBCDField;
    cdsPdeItemALIQUOTAPIS: TFMTBCDField;
    cdsPdeItemVLRPIS: TBCDField;
    cdsPdeItemVLRCREDPIS: TBCDField;
    cdsPdeItemVLRBASEIPI: TBCDField;
    cdsPdeItemALIQUOTAIPI: TFMTBCDField;
    cdsPdeItemVLRIPI: TBCDField;
    cdsPdeItemVLRISENTASIPI: TBCDField;
    cdsPdeItemVLROUTRASIPI: TBCDField;
    cdsPdeItemTIPOIPI: TStringField;
    cdsPdeItemSITTRIBUTARIAFEDERAL: TBCDField;
    cdsPdeItemARTIGO: TStringField;
    cdsPdeItemDATAINICIALIPI: TSQLTimeStampField;
    cdsPdeItemDATAFINALIPI: TSQLTimeStampField;
    cdsPdeItemPRODINCENTIVADO: TBCDField;
    cdsPdeItemUSUARIO: TStringField;
    cdsPdeItemsqldtsPdeItemBar: TDataSetField;
    cdsNfeEMPRESAID: TBCDField;
    cdsNfeNFEID: TBCDField;
    cdsNfeDATAEMISSAOID: TSQLTimeStampField;
    cdsNfeENTIDADEID: TBCDField;
    cdsNfeCATEGORIAID: TBCDField;
    cdsNfeMODELODOCFISCALID: TBCDField;
    cdsNfeL_MODELODOCFISCAL: TStringField;
    cdsNfeSERIE: TStringField;
    cdsNfeDATAENTRADA: TSQLTimeStampField;
    cdsNfeCANCELADA: TBCDField;
    cdsNfeEXPORTADO: TBCDField;
    cdsNfeDIID: TStringField;
    cdsNfeDESCRICAOIMPORTACAO: TMemoField;
    cdsNfeOSID: TStringField;
    cdsNfeCREDITARICMS: TBCDField;
    cdsNfeLIBCHEFIA: TBCDField;
    cdsNfeLIBCHEFIANOME: TStringField;
    cdsNfeLIBCHEFIADATA: TSQLTimeStampField;
    cdsNfeLIBFINANCEIRO: TBCDField;
    cdsNfeLIBFINANCEIRONOME: TStringField;
    cdsNfeLIBFINANCEIRODATA: TSQLTimeStampField;
    cdsNfeLIBCONTABIL: TBCDField;
    cdsNfeLIBCONTABILNOME: TStringField;
    cdsNfeLIBCONTABILDATA: TSQLTimeStampField;
    cdsNfePDEID: TBCDField;
    cdsNfeDATAPEDIDO: TSQLTimeStampField;
    cdsNfeREQUISITANTE: TStringField;
    cdsNfeNFSID: TBCDField;
    cdsNfeDATAEMISSAONFSID: TSQLTimeStampField;
    cdsNfeTIPONOTA: TStringField;
    cdsNfeNOME: TStringField;
    cdsNfeCEPID: TBCDField;
    cdsNfeNUMERO: TStringField;
    cdsNfeCOMPLEMENTO: TStringField;
    cdsNfeENDERECO: TStringField;
    cdsNfeBAIRRO: TStringField;
    cdsNfeCIDADE: TStringField;
    cdsNfeSIGLAUFID: TStringField;
    cdsNfePAIS: TStringField;
    cdsNfeCONTRIBUINTEICMS: TBCDField;
    cdsNfeNATUREZAOPID: TBCDField;
    cdsNfeL_CFOP: TStringField;
    cdsNfeL_DESCRICAOOPERACAOUSUARIO: TStringField;
    cdsNfeL_DESCRICAOOPERACAONOTA: TStringField;
    cdsNfeOBSERVACAOID: TBCDField;
    cdsNfeDESCRICAOOBSERVACAO: TMemoField;
    cdsNfeTRANSPORTADORID: TBCDField;
    cdsNfeL_NOMETRANSPORTADOR: TStringField;
    cdsNfePLACAVEICULO: TStringField;
    cdsNfeMODALIDADEFRETE: TStringField;
    cdsNfeVLRFRETE: TBCDField;
    cdsNfeVLRSEGURO: TBCDField;
    cdsNfeVLRDESPESAACESSORIA: TBCDField;
    cdsNfeEMBQTDVOLUMES: TBCDField;
    cdsNfeEMBNUMERO: TBCDField;
    cdsNfeEMBMARCA: TStringField;
    cdsNfeEMBESPECIE: TStringField;
    cdsNfeEMBPESOBRUTO: TFMTBCDField;
    cdsNfeEMBPESOLIQUIDO: TFMTBCDField;
    cdsNfeVLRTOTALCOFINS: TBCDField;
    cdsNfeVLRTOTALPIS: TBCDField;
    cdsNfeVLRTOTALCREDCOFINS: TBCDField;
    cdsNfeVLRTOTALCREDPIS: TBCDField;
    cdsNfeVLRTOTALBASEICMS: TBCDField;
    cdsNfeVLRTOTALICMS: TBCDField;
    cdsNfeVLRTOTALISENTASICMS: TBCDField;
    cdsNfeVLRTOTALOUTRASICMS: TBCDField;
    cdsNfeVLRTOTALBASEIPI: TBCDField;
    cdsNfeVLRTOTALIPI: TBCDField;
    cdsNfeVLRTOTALISENTASIPI: TBCDField;
    cdsNfeVLRTOTALOUTRASIPI: TBCDField;
    cdsNfeVLRTOTALPRODUTO: TBCDField;
    cdsNfeVLRTOTALNOTA: TBCDField;
    cdsNfeDATAIMPRESSAO: TSQLTimeStampField;
    cdsNfeUSUARIO: TStringField;
    cdsNfesqldtsNfeItem: TDataSetField;
    cdsNfeItemEMPRESAID: TBCDField;
    cdsNfeItemNFEID: TBCDField;
    cdsNfeItemDATAEMISSAOID: TSQLTimeStampField;
    cdsNfeItemENTIDADEID: TBCDField;
    cdsNfeItemITEMID: TBCDField;
    cdsNfeItemNATUREZAOPID: TBCDField;
    cdsNfeItemL_CFOP: TStringField;
    cdsNfeItemL_DESCRICAOOPERACAOUSUARIO: TStringField;
    cdsNfeItemL_DESCRICAOOPERACAONOTA: TStringField;
    cdsNfeItemOBSERVACAOID: TBCDField;
    cdsNfeItemDESCRICAOOBSERVACAO: TMemoField;
    cdsNfeItemPRODUTOID: TBCDField;
    cdsNfeItemDESCRICAOPRODUTO: TStringField;
    cdsNfeItemQUANTIDADE: TBCDField;
    cdsNfeItemVLRPRECOUNITARIO: TBCDField;
    cdsNfeItemVLRPRECOTOTAL: TBCDField;
    cdsNfeItemEMPENHO: TBCDField;
    cdsNfeItemQTDEMPENHO: TBCDField;
    cdsNfeItemRETORNO: TStringField;
    cdsNfeItemQTDRETORNA: TBCDField;
    cdsNfeItemVLRBASEICMS: TBCDField;
    cdsNfeItemALIQUOTAICMS: TFMTBCDField;
    cdsNfeItemVLRICMS: TBCDField;
    cdsNfeItemVLRISENTASICMS: TBCDField;
    cdsNfeItemVLROUTRASICMS: TBCDField;
    cdsNfeItemPORCREDUCAOICMS: TBCDField;
    cdsNfeItemSITTRIBUTARIAESTADUAL: TStringField;
    cdsNfeItemALIQUOTACOFINS: TFMTBCDField;
    cdsNfeItemVLRCOFINS: TBCDField;
    cdsNfeItemVLRCREDCOFINS: TBCDField;
    cdsNfeItemALIQUOTAPIS: TFMTBCDField;
    cdsNfeItemVLRPIS: TBCDField;
    cdsNfeItemVLRCREDPIS: TBCDField;
    cdsNfeItemVLRBASEIPI: TBCDField;
    cdsNfeItemALIQUOTAIPI: TBCDField;
    cdsNfeItemVLRIPI: TBCDField;
    cdsNfeItemVLRISENTASIPI: TBCDField;
    cdsNfeItemVLROUTRASIPI: TBCDField;
    cdsNfeItemTIPOIPI: TStringField;
    cdsNfeItemSITTRIBUTARIAFEDERAL: TBCDField;
    cdsNfeItemARTIGO: TStringField;
    cdsNfeItemDATAINICIALIPI: TSQLTimeStampField;
    cdsNfeItemDATAFINALIPI: TSQLTimeStampField;
    cdsNfeItemPRODINCENTIVADO: TBCDField;
    cdsNfeItemUSUARIO: TStringField;
    cdsNfeItemsqldtsNfeItemBar: TDataSetField;
    cdsPdsEMPRESAID: TBCDField;
    cdsPdsPDSID: TBCDField;
    cdsPdsDATAPEDIDO: TSQLTimeStampField;
    cdsPdsSTATUS: TBCDField;
    cdsPdsPRENOTA: TBCDField;
    cdsPdsOSID: TStringField;
    cdsPdsLIBCHEFIA: TBCDField;
    cdsPdsLIBCHEFIANOME: TStringField;
    cdsPdsLIBCHEFIADATA: TSQLTimeStampField;
    cdsPdsLIBFINANCEIRO: TBCDField;
    cdsPdsLIBFINANCEIRONOME: TStringField;
    cdsPdsLIBFINANCEIRODATA: TSQLTimeStampField;
    cdsPdsLIBCONTABIL: TBCDField;
    cdsPdsLIBCONTABILNOME: TStringField;
    cdsPdsLIBCONTABILDATA: TSQLTimeStampField;
    cdsPdsNFEID: TBCDField;
    cdsPdsDATAEMISSAONFEID: TSQLTimeStampField;
    cdsPdsTIPONOTAENTRADA: TStringField;
    cdsPdsTIPONOTA: TStringField;
    cdsPdsCATEGORIAID: TBCDField;
    cdsPdsENTIDADEID: TBCDField;
    cdsPdsNOME: TStringField;
    cdsPdsCEPID: TBCDField;
    cdsPdsNUMERO: TStringField;
    cdsPdsCOMPLEMENTO: TStringField;
    cdsPdsENDERECO: TStringField;
    cdsPdsBAIRRO: TStringField;
    cdsPdsCIDADE: TStringField;
    cdsPdsSIGLAUFID: TStringField;
    cdsPdsPAIS: TStringField;
    cdsPdsCONTRIBUINTEICMS: TBCDField;
    cdsPdsENDERECOENTREGA: TStringField;
    cdsPdsENDERECOCOBRANCA: TStringField;
    cdsPdsNATUREZAOPID: TBCDField;
    cdsPdsL_CFOP: TStringField;
    cdsPdsL_DESCRICAOOPERACAOUSUARIO: TStringField;
    cdsPdsCONDPAGTOID: TBCDField;
    cdsPdsL_CONDICAOPAGTO: TStringField;
    cdsPdsDESCRICAOCONDPAGTO: TMemoField;
    cdsPdsOBSERVACAOID: TBCDField;
    cdsPdsDESCRICAOOBSERVACAO: TMemoField;
    cdsPdsTRANSPORTADORID: TBCDField;
    cdsPdsL_NOMETRANSPORTADOR: TStringField;
    cdsPdsPLACAVEICULO: TStringField;
    cdsPdsMODALIDADEFRETE: TStringField;
    cdsPdsVLRFRETE: TBCDField;
    cdsPdsVLRSEGURO: TBCDField;
    cdsPdsVLRDESPESAACESSORIA: TBCDField;
    cdsPdsEMBQTDVOLUMES: TBCDField;
    cdsPdsEMBNUMERO: TBCDField;
    cdsPdsEMBMARCA: TStringField;
    cdsPdsEMBESPECIE: TStringField;
    cdsPdsEMBPESOBRUTO: TBCDField;
    cdsPdsEMBPESOLIQUIDO: TBCDField;
    cdsPdsVLRTOTALSERVICO: TBCDField;
    cdsPdsVLRTOTALISS: TBCDField;
    cdsPdsVLRTOTALCOFINS: TBCDField;
    cdsPdsVLRTOTALPIS: TBCDField;
    cdsPdsVLRTOTALBASEICMS: TBCDField;
    cdsPdsVLRTOTALICMS: TBCDField;
    cdsPdsVLRTOTALISENTASICMS: TBCDField;
    cdsPdsVLRTOTALOUTRASICMS: TBCDField;
    cdsPdsVLRTOTALBASEIPI: TBCDField;
    cdsPdsVLRTOTALIPI: TBCDField;
    cdsPdsVLRTOTALISENTASIPI: TBCDField;
    cdsPdsVLRTOTALOUTRASIPI: TBCDField;
    cdsPdsVLRTOTALPRODUTO: TBCDField;
    cdsPdsVLRTOTALNOTA: TBCDField;
    cdsPdsUSUARIO: TStringField;
    cdsPdssqldtsPdsServico: TDataSetField;
    cdsPdssqldtsPdsParcela: TDataSetField;
    cdsPdssqldtsPdsItem: TDataSetField;
    cdsPdsItemEMPRESAID: TBCDField;
    cdsPdsItemPDSID: TBCDField;
    cdsPdsItemITEMID: TBCDField;
    cdsPdsItemNATUREZAOPID: TBCDField;
    cdsPdsItemOBSERVACAOID: TBCDField;
    cdsPdsItemDESCRICAOOBSERVACAO: TMemoField;
    cdsPdsItemPRODUTOID: TBCDField;
    cdsPdsItemDESCRICAOPRODUTO: TStringField;
    cdsPdsItemQUANTIDADE: TBCDField;
    cdsPdsItemVLRPRECOUNITARIO: TBCDField;
    cdsPdsItemVLRPRECOTOTAL: TBCDField;
    cdsPdsItemVLRDESCONTO: TBCDField;
    cdsPdsItemEMPENHO: TBCDField;
    cdsPdsItemQUANTIDADEEMPENHO: TFMTBCDField;
    cdsPdsItemRETORNO: TStringField;
    cdsPdsItemQTDRETORNA: TBCDField;
    cdsPdsItemVLRBASEICMS: TBCDField;
    cdsPdsItemALIQUOTAICMS: TFMTBCDField;
    cdsPdsItemVLRICMS: TBCDField;
    cdsPdsItemVLRISENTASICMS: TBCDField;
    cdsPdsItemVLROUTRASICMS: TBCDField;
    cdsPdsItemPORCREDUCAOICMS: TBCDField;
    cdsPdsItemSITTRIBUTARIAESTADUAL: TStringField;
    cdsPdsItemALIQUOTACOFINS: TFMTBCDField;
    cdsPdsItemVLRCOFINS: TBCDField;
    cdsPdsItemALIQUOTAPIS: TFMTBCDField;
    cdsPdsItemVLRPIS: TBCDField;
    cdsPdsItemVLRBASEIPI: TBCDField;
    cdsPdsItemVLRIPI: TBCDField;
    cdsPdsItemVLRISENTASIPI: TBCDField;
    cdsPdsItemVLROUTRASIPI: TBCDField;
    cdsPdsItemTIPOIPI: TStringField;
    cdsPdsItemSITTRIBUTARIAFEDERAL: TBCDField;
    cdsPdsItemARTIGO: TStringField;
    cdsPdsItemDATAINICIALIPI: TSQLTimeStampField;
    cdsPdsItemDATAFINALIPI: TSQLTimeStampField;
    cdsPdsItemPRODINCENTIVADO: TBCDField;
    cdsPdsItemUSUARIO: TStringField;
    cdsPdsItemsqldtsPdsItemBar: TDataSetField;
    cdsNfsEMPRESAID: TBCDField;
    cdsNfsNFSID: TBCDField;
    cdsNfsDATAEMISSAOID: TSQLTimeStampField;
    cdsNfsCANCELADA: TBCDField;
    cdsNfsEXPORTADO: TBCDField;
    cdsNfsOSID: TStringField;
    cdsNfsPDSID: TBCDField;
    cdsNfsDATAPEDIDO: TSQLTimeStampField;
    cdsNfsLIBCHEFIA: TBCDField;
    cdsNfsLIBCHEFIANOME: TStringField;
    cdsNfsLIBCHEFIADATA: TSQLTimeStampField;
    cdsNfsLIBFINANCEIRO: TBCDField;
    cdsNfsLIBFINANCEIRONOME: TStringField;
    cdsNfsLIBFINANCEIRODATA: TSQLTimeStampField;
    cdsNfsLIBCONTABIL: TBCDField;
    cdsNfsLIBCONTABILNOME: TStringField;
    cdsNfsLIBCONTABILDATA: TSQLTimeStampField;
    cdsNfsNFEID: TBCDField;
    cdsNfsDATAEMISSAONFEID: TSQLTimeStampField;
    cdsNfsTIPONOTAENTRADA: TStringField;
    cdsNfsTIPONOTA: TStringField;
    cdsNfsCATEGORIAID: TBCDField;
    cdsNfsENTIDADEID: TBCDField;
    cdsNfsNOME: TStringField;
    cdsNfsCEPID: TBCDField;
    cdsNfsNUMERO: TStringField;
    cdsNfsCOMPLEMENTO: TStringField;
    cdsNfsENDERECO: TStringField;
    cdsNfsBAIRRO: TStringField;
    cdsNfsCIDADE: TStringField;
    cdsNfsSIGLAUFID: TStringField;
    cdsNfsPAIS: TStringField;
    cdsNfsENDERECOENTREGA: TStringField;
    cdsNfsENDERECOCOBRANCA: TStringField;
    cdsNfsCONTRIBUINTEICMS: TBCDField;
    cdsNfsNATUREZAOPID: TBCDField;
    cdsNfsL_CFOP: TStringField;
    cdsNfsL_DESCRICAOOPERACAOUSUARIO: TStringField;
    cdsNfsL_DESCRICAOOPERACAONOTA: TStringField;
    cdsNfsCONDPAGTOID: TBCDField;
    cdsNfsL_CONDICAOPAGTO: TStringField;
    cdsNfsDESCRICAOCONDPAGTO: TMemoField;
    cdsNfsOBSERVACAOID: TBCDField;
    cdsNfsDESCRICAOOBSERVACAO: TMemoField;
    cdsNfsTRANSPORTADORID: TBCDField;
    cdsNfsL_NOMETRANSPORTADOR: TStringField;
    cdsNfsPLACAVEICULO: TStringField;
    cdsNfsMODALIDADEFRETE: TStringField;
    cdsNfsVLRFRETE: TBCDField;
    cdsNfsVLRSEGURO: TBCDField;
    cdsNfsVLRDESPESAACESSORIA: TBCDField;
    cdsNfsEMBQTDVOLUMES: TBCDField;
    cdsNfsEMBNUMERO: TBCDField;
    cdsNfsEMBMARCA: TStringField;
    cdsNfsEMBESPECIE: TStringField;
    cdsNfsEMBPESOBRUTO: TFMTBCDField;
    cdsNfsEMBPESOLIQUIDO: TFMTBCDField;
    cdsNfsVLRTOTALSERVICO: TBCDField;
    cdsNfsVLRTOTALISS: TBCDField;
    cdsNfsVLRTOTALCOFINS: TBCDField;
    cdsNfsVLRTOTALPIS: TBCDField;
    cdsNfsVLRTOTALBASEICMS: TBCDField;
    cdsNfsVLRTOTALICMS: TBCDField;
    cdsNfsVLRTOTALISENTASICMS: TBCDField;
    cdsNfsVLRTOTALOUTRASICMS: TBCDField;
    cdsNfsVLRTOTALBASEIPI: TBCDField;
    cdsNfsVLRTOTALIPI: TBCDField;
    cdsNfsVLRTOTALISENTASIPI: TBCDField;
    cdsNfsVLRTOTALOUTRASIPI: TBCDField;
    cdsNfsVLRTOTALPRODUTO: TBCDField;
    cdsNfsVLRTOTALNOTA: TBCDField;
    cdsNfsDATAIMPRESSAO: TSQLTimeStampField;
    cdsNfsUSUARIO: TStringField;
    cdsNfssqldtsNfsServico: TDataSetField;
    cdsNfssqldtsNfsParcela: TDataSetField;
    cdsNfssqldtsNfsItem: TDataSetField;
    cdsNfsItemEMPRESAID: TBCDField;
    cdsNfsItemNFSID: TBCDField;
    cdsNfsItemDATAEMISSAOID: TSQLTimeStampField;
    cdsNfsItemITEMID: TBCDField;
    cdsNfsItemNATUREZAOPID: TBCDField;
    cdsNfsItemOBSERVACAOID: TBCDField;
    cdsNfsItemDESCRICAOOBSERVACAO: TMemoField;
    cdsNfsItemPRODUTOID: TBCDField;
    cdsNfsItemDESCRICAOPRODUTO: TStringField;
    cdsNfsItemQUANTIDADE: TFMTBCDField;
    cdsNfsItemVLRPRECOUNITARIO: TBCDField;
    cdsNfsItemVLRPRECOTOTAL: TBCDField;
    cdsNfsItemVLRDESCONTO: TBCDField;
    cdsNfsItemEMPENHO: TBCDField;
    cdsNfsItemQUANTIDADEEMPENHO: TBCDField;
    cdsNfsItemRETORNO: TStringField;
    cdsNfsItemQTDRETORNA: TBCDField;
    cdsNfsItemVLRBASEICMS: TBCDField;
    cdsNfsItemALIQUOTAICMS: TFMTBCDField;
    cdsNfsItemVLRICMS: TBCDField;
    cdsNfsItemVLRISENTASICMS: TBCDField;
    cdsNfsItemVLROUTRASICMS: TBCDField;
    cdsNfsItemPORCREDUCAOICMS: TBCDField;
    cdsNfsItemSITTRIBUTARIAESTADUAL: TStringField;
    cdsNfsItemALIQUOTACOFINS: TFMTBCDField;
    cdsNfsItemVLRCOFINS: TBCDField;
    cdsNfsItemALIQUOTAPIS: TFMTBCDField;
    cdsNfsItemVLRPIS: TBCDField;
    cdsNfsItemVLRBASEIPI: TBCDField;
    cdsNfsItemALIQUOTAIPI: TFMTBCDField;
    cdsNfsItemVLRIPI: TBCDField;
    cdsNfsItemVLRISENTASIPI: TBCDField;
    cdsNfsItemVLROUTRASIPI: TBCDField;
    cdsNfsItemTIPOIPI: TStringField;
    cdsNfsItemSITTRIBUTARIAFEDERAL: TBCDField;
    cdsNfsItemARTIGO: TStringField;
    cdsNfsItemDATAINICIALIPI: TSQLTimeStampField;
    cdsNfsItemDATAFINALIPI: TSQLTimeStampField;
    cdsNfsItemPRODINCENTIVADO: TBCDField;
    cdsNfsItemUSUARIO: TStringField;
    cdsNfsItemsqldtsNfsItemBar: TDataSetField;
    cdsNfsServicoEMPRESAID: TBCDField;
    cdsNfsServicoNFSID: TBCDField;
    cdsNfsServicoDATAEMISSAOID: TSQLTimeStampField;
    cdsNfsServicoITEMID: TBCDField;
    cdsNfsServicoSERVICOID: TBCDField;
    cdsNfsServicoL_DESCRICAORESUMIDA: TStringField;
    cdsNfsServicoDESCRICAOSERVICO: TMemoField;
    cdsNfsServicoVLRISS: TBCDField;
    cdsNfsServicoVLRSERVICO: TBCDField;
    cdsNfsServicoALIQUOTACOFINS: TFMTBCDField;
    cdsNfsServicoVLRCOFINS: TBCDField;
    cdsNfsServicoALIQUOTAPIS: TFMTBCDField;
    cdsNfsServicoVLRPIS: TBCDField;
    cdsNfsServicoVLRRETCOFINS: TBCDField;
    cdsNfsServicoVLRRETPIS: TBCDField;
    cdsNfsServicoVLRRETCSLL: TBCDField;
    cdsNfsServicoUSUARIO: TStringField;
    cdsNaturezaOpNATUREZAOPID: TBCDField;
    cdsNaturezaOpCFOP: TStringField;
    cdsNaturezaOpTIPOMOVIMENTO: TStringField;
    cdsNaturezaOpDESCRICAOOPERACAOUSUARIO: TStringField;
    cdsNaturezaOpDESCRICAOOPERACAONOTA: TStringField;
    cdsNaturezaOpDESCRICAOCOMPLETA: TStringField;
    cdsNaturezaOpNATUREZAOPRETORNOID: TBCDField;
    cdsNaturezaOpL_DESCRNATRETORNO: TStringField;
    cdsNaturezaOpMOVIMENTOESTOQUE: TStringField;
    cdsNaturezaOpVENDADEFINITIVA: TBCDField;
    cdsNaturezaOpCALCULAPRECOMEDIO: TBCDField;
    cdsNaturezaOpUTILIZAEMPENHO: TBCDField;
    cdsNaturezaOpGERARDUPLICATA: TBCDField;
    cdsNaturezaOpTRANSFCONSUMO: TBCDField;
    cdsNaturezaOpCOBERTURACONTRATUAL: TBCDField;
    cdsNaturezaOpENTRADAPRECOTRANSF: TBCDField;
    cdsNaturezaOpENTRADADIPJ: TBCDField;
    cdsNaturezaOpSAIDADIPJ: TBCDField;
    cdsNaturezaOpCALCULOPIS: TBCDField;
    cdsNaturezaOpCALCULOCOFINS: TBCDField;
    cdsNaturezaOpCREDITOPIS: TBCDField;
    cdsNaturezaOpCREDITOCOFINS: TBCDField;
    cdsNaturezaOpCALCULOIPI: TBCDField;
    cdsNaturezaOpCREDITOIPI: TBCDField;
    cdsNaturezaOpIPIBASE: TBCDField;
    cdsNaturezaOpFRETEIPI: TBCDField;
    cdsNaturezaOpDESTACAIPI: TBCDField;
    cdsNaturezaOpCALCULOIRPJ: TBCDField;
    cdsNaturezaOpGERAMOVIMENTO: TBCDField;
    cdsNaturezaOpVENDAFATANTECIPADO: TBCDField;
    cdsNaturezaOpTRIBUTADO: TBCDField;
    cdsNaturezaOpSUSPENSAOIPI: TBCDField;
    cdsNaturezaOpISENTOIPI: TBCDField;
    cdsNaturezaOpSITTRIBESTADUAL: TStringField;
    cdsNaturezaOpCALCULOICMS: TBCDField;
    cdsNaturezaOpCREDITOICMS: TBCDField;
    cdsNaturezaOpINCENTIVOICMS: TBCDField;
    cdsNaturezaOpCALCULOISS: TBCDField;
    cdsNaturezaOpOBSERVACAOID: TBCDField;
    cdsNaturezaOpL_DESCRICAOOBSERVACAO: TBlobField;
    cdsNaturezaOpSIGLANATUREZAID: TBCDField;
    cdsNaturezaOpL_DESCRICAORESUMIDA: TStringField;
    cdsNaturezaOpL_DESCRICAOSIGLA: TStringField;
    cdsNaturezaOpNUMPADRAO: TStringField;
    cdsNaturezaOpUSUARIO: TStringField;
    cdsNaturezaOpsqldtsNaturezaEmpresa: TDataSetField;
    cdsEntidadeCONTACONTABILID: TStringField;
    cdsPdeItemNFSID: TBCDField;
    cdsPdeItemDATAEMISSAONFSID: TSQLTimeStampField;
    cdsNfeItemNFSID: TBCDField;
    cdsNfeItemDATAEMISSAONFSID: TSQLTimeStampField;
    cdsPdsItemNFEID: TBCDField;
    cdsPdsItemDATAEMISSAONFEID: TSQLTimeStampField;
    cdsNfsItemNFEID: TBCDField;
    cdsNfsItemDATAEMISSAONFEID: TSQLTimeStampField;
    cdsPdsItemALIQUOTAIPI: TFMTBCDField;
    cdsEntidadeDepto: TClientDataSet;
    dsEntidadeDepto: TDataSource;
    cdsEntidadesqldtsEntidadeDepto: TDataSetField;
    cdsEntidadeDeptoENTIDADEID: TBCDField;
    cdsEntidadeDeptoDEPARTAMENTOID: TBCDField;
    cdsEntidadeDeptoL_DESCRICAO_DEPTO: TStringField;
    cdsEntidadeDeptoUSUARIO: TStringField;
    cdsKardexC_QUANTIDADESAIDA: TIntegerField;
    cdsKardexC_VLRUNITENTRADA: TFloatField;
    cdsKardexC_VLRUNITSAIDA: TFloatField;
    cdsKardexC_VLRTOTALENTRADA: TFloatField;
    cdsKardexC_VLRTOTALSAIDA: TFloatField;
    cdsPdsItemESTOQUEUTILIZADO: TStringField;
    cdsNfsItemESTOQUEUTILIZADO: TStringField;
    cdsProdutoL_NOMEFANTASIA: TStringField;
    cdsKardexC_QUANTIDADEENTRADA: TIntegerField;
    cdsPdsServicoEMPRESAID: TBCDField;
    cdsPdsServicoPDSID: TBCDField;
    cdsPdsServicoITEMID: TBCDField;
    cdsPdsServicoSERVICOID: TBCDField;
    cdsPdsServicoL_DESCRICAORESUMIDA: TStringField;
    cdsPdsServicoDESCRICAOSERVICO: TMemoField;
    cdsPdsServicoVLRISS: TBCDField;
    cdsPdsServicoVLRSERVICO: TBCDField;
    cdsPdsServicoALIQUOTACOFINS: TFMTBCDField;
    cdsPdsServicoVLRCOFINS: TBCDField;
    cdsPdsServicoALIQUOTAPIS: TFMTBCDField;
    cdsPdsServicoVLRPIS: TBCDField;
    cdsPdsServicoUSUARIO: TStringField;
    cdsContaContabilCONTACONTABILID: TStringField;
    cdsContaContabilDESCRICAO: TStringField;
    cdsContaContabilGRAU: TBCDField;
    cdsContaContabilCODIGOREDUZIDOID: TBCDField;
    cdsContaContabilNATUREZACONTA: TStringField;
    cdsContaContabilCONTALALUR: TStringField;
    cdsContaContabilEMPRESAID: TBCDField;
    cdsContaContabilUSUARIO: TStringField;
    cdsContaContabilL_NOMEFANTASIA: TStringField;
    cdsEmpresaALIQUOTAICMSNAOCONTRIB: TFMTBCDField;
    cdsPdsServicoVLRRETCOFINS: TBCDField;
    cdsPdsServicoVLRRETPIS: TBCDField;
    cdsPdsServicoVLRRETCSLL: TBCDField;
    cdsPdsItemL_PARTNUMBERID: TStringField;
    cdsPdsItemL_LOCALIZACAO: TStringField;
    cdsPdsItemEMPENHOITEMID: TBCDField;
    cdsKardexESTOQUENOVO: TBCDField;
    cdsKardexESTOQUEREVISADO: TBCDField;
    cdsKardexESTOQUETOTAL: TBCDField;
    cdsInventario: TClientDataSet;
    dsInventario: TDataSource;
    cdsHistInventario: TClientDataSet;
    dsHistInventario: TDataSource;
    cdsHistInventarioHISTINVENTARIOID: TBCDField;
    cdsHistInventarioDATAINVENTARIO: TSQLTimeStampField;
    cdsHistInventarioDESCRICAO: TStringField;
    cdsHistInventarioUSUARIO: TStringField;
    cdsInventarioItem: TClientDataSet;
    dsInventarioItem: TDataSource;
    cdsInventarioHISTINVENTARIOID: TBCDField;
    cdsInventarioL_DATAINVENTARIO: TSQLTimeStampField;
    cdsInventarioL_DESCR_INVENTARIO: TStringField;
    cdsInventarioINVENTARIOID: TBCDField;
    cdsInventarioEMPRESAID: TBCDField;
    cdsInventarioPRODUTOID: TBCDField;
    cdsInventarioL_GRUPOID: TBCDField;
    cdsInventarioL_SUBGRUPOID: TBCDField;
    cdsInventarioL_PARTNUMBERID: TStringField;
    cdsInventarioL_DESCRICAOPORTUGUES: TStringField;
    cdsInventarioL_LOCALIZACAO: TStringField;
    cdsInventarioDATAINVENTARIO: TSQLTimeStampField;
    cdsInventarioESTOQUEFISICO: TBCDField;
    cdsInventarioUSUARIO: TStringField;
    cdsInventariosqldtsInventarioItem: TDataSetField;
    cdsInventarioItemHISTINVENTARIOID: TBCDField;
    cdsInventarioItemINVENTARIOID: TBCDField;
    cdsInventarioItemTIPOCTGINVENTID: TBCDField;
    cdsInventarioItemL_TIPOCTGINVENT: TStringField;
    cdsInventarioItemDATACFGFISICA: TSQLTimeStampField;
    cdsInventarioItemQUANTIDADE: TBCDField;
    cdsInventarioItemREALIZADORID: TBCDField;
    cdsInventarioItemL_NOME_REALIZADOR: TStringField;
    cdsInventarioItemDIGITADORID: TBCDField;
    cdsInventarioItemL_NOME_DIGITADOR: TStringField;
    cdsTipoCtgInvent: TClientDataSet;
    cdsTipoCtgInventTIPOCTGINVENTID: TBCDField;
    cdsTipoCtgInventDESCRICAO: TStringField;
    cdsTipoCtgInventBLOQUEARDIGITACAO: TBCDField;
    cdsTipoCtgInventUSUARIO: TStringField;
    dsTipoCtgInvent: TDataSource;
    cdsInventarioItemEMPRESAID: TBCDField;
    cdsInventarioL_ESTOQUETOTAL: TBCDField;
    cdsInventarioDIFERENCASALDO: TBCDField;
    cdsInventarioL_ESTOQUEFISICO: TBCDField;
    cdsInventarioL_CUSTOMEDIO: TBCDField;
    cdsNfeItemL_NCMID: TStringField;
    cdsNfsItemL_NCMID: TStringField;
    cdsNfeItemL_UNIDADEID: TStringField;
    cdsNfsItemL_UNIDADEID: TStringField;
    cdsNfsREQUISITANTE: TStringField;
    cdsPdeDATAENTRADANFEID: TSQLTimeStampField;
    cdsPdsItemPORCDESCONTO: TFMTBCDField;
    cdsPdsItemVLRPRECOUNITDESC: TBCDField;
    cdsPdsItemVLRPRECOTOTALDESC: TBCDField;
    cdsNfsItemPORCDESCONTO: TFMTBCDField;
    cdsNfsItemVLRPRECOUNITDESC: TBCDField;
    cdsNfsItemVLRPRECOTOTALDESC: TBCDField;
    cdsProdutoESTOQUEQUARENTENA: TBCDField;
    cdsKardexESTOQUEQUARENTENA: TBCDField;
    cdsProdutoEMPRESASIMILARID: TBCDField;
    cdsProdutoPRODUTOSIMILARID: TBCDField;
    cdsProdutoL_NOMEFANTASIASIMILAR: TStringField;
    cdsProdutoL_DESCRICAOPORTUGUES: TStringField;
    cdsKdxTransf: TClientDataSet;
    dsKdxTransf: TDataSource;
    cdsKdxTransfEMPRESAID: TBCDField;
    cdsKdxTransfKARDEXID: TBCDField;
    cdsKdxTransfDATAOCORRENCIA: TSQLTimeStampField;
    cdsKdxTransfNUMDOCUMENTO: TBCDField;
    cdsKdxTransfTIPODOCUMENTO: TStringField;
    cdsKdxTransfTIPOESTOQUE: TStringField;
    cdsKdxTransfOSID: TStringField;
    cdsKdxTransfDIID: TStringField;
    cdsKdxTransfNATUREZAOPID: TBCDField;
    cdsKdxTransfL_CFOP: TStringField;
    cdsKdxTransfL_DESCRICAOOPERACAOUSUARIO: TStringField;
    cdsKdxTransfTIPOOPERACAO: TStringField;
    cdsKdxTransfPRODUTOID: TBCDField;
    cdsKdxTransfL_DESCRICAOPORTUGUES: TStringField;
    cdsKdxTransfQUANTIDADE: TBCDField;
    cdsKdxTransfESTOQUENOVO: TBCDField;
    cdsKdxTransfESTOQUEREVISADO: TBCDField;
    cdsKdxTransfESTOQUEFISICO: TBCDField;
    cdsKdxTransfESTOQUEPEDENTRADA: TBCDField;
    cdsKdxTransfESTOQUEPEDSAIDA: TBCDField;
    cdsKdxTransfESTOQUEEMTERCEIRO: TBCDField;
    cdsKdxTransfESTOQUEDETERCEIRO: TBCDField;
    cdsKdxTransfESTOQUEMINIMO: TBCDField;
    cdsKdxTransfESTOQUEEMPENHO: TBCDField;
    cdsKdxTransfESTOQUEVALE: TBCDField;
    cdsKdxTransfESTOQUEESTORNO: TBCDField;
    cdsKdxTransfESTOQUEQUARENTENA: TBCDField;
    cdsKdxTransfESTOQUETOTAL: TBCDField;
    cdsKdxTransfUSUARIO: TStringField;
    cdsKdxTransfC_QUANTIDADEENTRADA: TIntegerField;
    cdsKdxTransfC_QUANTIDADESAIDA: TIntegerField;
    cdsKdxTransfC_VLRUNITENTRADA: TFloatField;
    cdsKdxTransfC_VLRUNITSAIDA: TFloatField;
    cdsKdxTransfC_VLRTOTALENTRADA: TFloatField;
    cdsKdxTransfC_VLRTOTALSAIDA: TFloatField;
    cdsPdeItemBarQUANTIDADE: TBCDField;
    cdsNfeItemBarQUANTIDADE: TBCDField;
    cdsPdsItemBarQUANTIDADE: TBCDField;
    cdsNfsItemBarQUANTIDADE: TBCDField;
    cdsInventarioESTOQUEDIFERENCA: TBCDField;
    cdsNaturezaOpDESMEMBRCUSTO: TBCDField;
    cdsEntidadePAISINST: TStringField;
    cdsEntidadeSIGLAUFINSTID: TStringField;
    cdsEntidadeCIDADEINST: TStringField;
    cdsEntidadeBAIRROINST: TStringField;
    cdsEntidadeENDERECOINST: TStringField;
    cdsEntidadeCOMPLEMENTOINST: TStringField;
    cdsEntidadeNUMEROINST: TStringField;
    cdsEntidadeCEPINSTID: TBCDField;
    cdsEntidadeCONTATOINST: TStringField;
    cdsEntidadeTELEFONE3: TStringField;
    cdsEntidadeCELULAR3: TStringField;
    cdsTecWinNCMID: TStringField;
    cdsTecWinDESCRICAO: TStringField;
    cdsTecWinALIQUOTAII: TFMTBCDField;
    cdsTecWinALIQUOTAIPI: TFMTBCDField;
    cdsTecWinISENTOIPI: TBCDField;
    cdsTecWinSITTRIBISENTO: TBCDField;
    cdsTecWinARTIGOISENTO: TStringField;
    cdsTecWinSUSPENSAOIPI: TBCDField;
    cdsTecWinSITTRIBSUSPENSAO: TBCDField;
    cdsTecWinARTIGOSUSPENSAO: TStringField;
    cdsTecWinTRIBUTADO: TBCDField;
    cdsTecWinSITTRIBTRIBUTADO: TBCDField;
    cdsTecWinARTIGOTRIBUTADO: TStringField;
    cdsTecWinSITTRIBNAOTRIBUTADO: TBCDField;
    cdsTecWinARTIGONAOTRIBUTADO: TStringField;
    cdsTecWinDATAINICIALIPI: TSQLTimeStampField;
    cdsTecWinDATAFINALIPI: TSQLTimeStampField;
    cdsTecWinDATAINICIALII: TSQLTimeStampField;
    cdsTecWinDATAFINALII: TSQLTimeStampField;
    cdsTecWinALIQUOTATEMPIPI: TFMTBCDField;
    cdsTecWinALIQUOTATEMPII: TFMTBCDField;
    cdsTecWinINCENTIVOICMS: TBCDField;
    cdsTecWinUSUARIO: TStringField;
    cdsServicoCALCULARPIS: TBCDField;
    cdsServicoCALCULARCOFINS: TBCDField;
    cdsServicoALIQUOTAISS: TFMTBCDField;
    cdsNaturezaOpDOCINTERNO: TBCDField;
    dsPrecoTransf: TDataSource;
    cdsPrecoTransf: TClientDataSet;
    cdsPrecoTransfNFSID: TBCDField;
    cdsPrecoTransfDATAEMISSAOID: TSQLTimeStampField;
    cdsPrecoTransfOSID: TStringField;
    cdsPrecoTransfENTIDADEID: TBCDField;
    cdsPrecoTransfNOME: TStringField;
    cdsPrecoTransfCIDADE: TStringField;
    cdsPrecoTransfSIGLAUFID: TStringField;
    cdsPrecoTransfNATUREZAOPID: TBCDField;
    cdsPrecoTransfCFOP: TStringField;
    cdsPrecoTransfDESCRICAOOPERACAONOTA: TStringField;
    cdsPrecoTransfEMP_SIMILARID: TFMTBCDField;
    cdsPrecoTransfPROD_SIMILARID: TFMTBCDField;
    cdsPrecoTransfDESCRICAOPRODUTO: TStringField;
    cdsPrecoTransfQUANTIDADE: TFMTBCDField;
    cdsPrecoTransfVLRPRECOUNITARIO: TBCDField;
    cdsPrecoTransfVLRPRECOTOTAL: TBCDField;
    cdsPrecoTransfVLRPIS: TBCDField;
    cdsPrecoTransfVLRCOFINS: TBCDField;
    cdsPrecoTransfALIQUOTAICMS: TFMTBCDField;
    cdsPrecoTransfVLRICMS: TBCDField;
    cdsPrecoTransfPARTNUMBERID: TStringField;
    cdsPrecoTransfNCMID: TStringField;
    cdsPrecoTransfDESCRICAONCM: TStringField;
    cdsEmpresaINSCRMUNICIPAL: TStringField;
    cdsEmpresaINSCRESTADUAL: TStringField;
    cdsKardexVLRCUSTOUNITARIO: TFMTBCDField;
    cdsKardexVLRCUSTOTOTAL: TFMTBCDField;
    cdsKardexQUANTIDADESALDO: TBCDField;
    cdsKardexVLRCUSTOMEDIO: TFMTBCDField;
    cdsKardexVLRCUSTOMEDIOTOTAL: TFMTBCDField;
    cdsKardexVLRCUSTOMEDIOANTERIOR: TFMTBCDField;
    cdsKdxTransfVLRCUSTOUNITARIO: TFMTBCDField;
    cdsKdxTransfVLRCUSTOTOTAL: TFMTBCDField;
    cdsKdxTransfQUANTIDADESALDO: TBCDField;
    cdsKdxTransfVLRCUSTOMEDIO: TFMTBCDField;
    cdsKdxTransfVLRCUSTOMEDIOTOTAL: TFMTBCDField;
    cdsKdxTransfVLRCUSTOMEDIOANTERIOR: TFMTBCDField;
    cdsPrecoTransfQTD_MOV_PERIODO: TFMTBCDField;
    cdsPrecoTransfVLR_MOV_UNITARIA: TFMTBCDField;
    cdsPrecoTransfVLR_MOV_TOTAL: TFMTBCDField;
    cdsPrecoTransfVLRMEDIATOTALVENDAAPURADA: TFMTBCDField;
    cdsPrecoTransfVLRCUSTOUNITARIO: TFMTBCDField;
    cdsPrecoTransfVLRCUSTOTOTAL: TFMTBCDField;
    cdsPrecoTransfVLRPRECOTRANSF: TFMTBCDField;
    cdsPrecoTransfVLR_AJUSTE: TFMTBCDField;
    cdsPrecoTransfVLR_MEDIA_TOTAL: TFMTBCDField;
    cdsNaturezaOpDESPACESSORIABASEICMS: TBCDField;
    cdsDepartamentoBLOQLANCAMENTOS: TBCDField;
    cdsOpPrestInterestadual: TClientDataSet;
    dsOpPrestInterestadual: TDataSource;
    cdsOpPrestInterestadualORIGEMUFID: TStringField;
    cdsOpPrestInterestadualL_DESCRICAOORIGEM: TStringField;
    cdsOpPrestInterestadualDESTINOUFID: TStringField;
    cdsOpPrestInterestadualL_DESCRICAODESTINO: TStringField;
    cdsOpPrestInterestadualINTERNACIONAL: TBCDField;
    cdsOpPrestInterestadualALIQUOTAICMSCONTRIB: TFMTBCDField;
    cdsOpPrestInterestadualALIQUOTAICMSNAOCONTRIB: TFMTBCDField;
    cdsOpPrestInterestadualUSUARIO: TStringField;
    cdsProdutoC_PRECOVENDA_IPI: TFloatField;
    cdsProdutoC_PRECOVENDAMININO_IPI: TFloatField;
    cdsPdsDESCRICAOPRENOTA: TMemoField;
    cdsNfsDESCRICAOPRENOTA: TMemoField;
    cdsNaturezaOpISENTOINSCRICAOESTADUAL: TBCDField;
    cdsServicoSUBGRUPOID: TBCDField;
    cdsServicoL_DESCRICAO_SUBGRUPO: TStringField;
    cdsProdutoESTOQUERESERVA: TBCDField;
    cdsPdsLogReserva: TClientDataSet;
    dsPdsLogReserva: TDataSource;
    cdsPdsLogReservaEMPRESAID: TBCDField;
    cdsPdsLogReservaPDSID: TBCDField;
    cdsPdsLogReservaLIBERADO: TBCDField;
    cdsPdsLogReservaLIBUSUARIO: TStringField;
    cdsPdsLogReservaLOGRESERVA: TMemoField;
    cdsPdsLogReservaL_DATAPEDIDO: TSQLTimeStampField;
    cdsPdsLogReservaL_OSID: TStringField;
    cdsPdsLogReservaL_NOME: TStringField;
    cdsPdsLogReservaL_CIDADE: TStringField;
    cdsPdsLogReservaL_SIGLAUFID: TStringField;
    cdsPdsLogReservaL_NATUREZAOPID: TBCDField;
    cdsPdsLogReservaL_CONDPAGTOID: TBCDField;
    cdsPdsLogReservaL_VLRTOTALPRODUTO: TBCDField;
    cdsPdsLogReservaL_VLRTOTALNOTA: TBCDField;
    cdsPdsLogReservaL_DESCRICAOOPERACAOUSUARIO: TStringField;
    cdsPdsLogReservaL_CFOP: TStringField;
    cdsPdsLogReservaL_DESCRICAOCONDPAGTO: TStringField;
    cdsPdsLogReservaUSUARIO: TStringField;
    cdsPdsLogReservaItem: TClientDataSet;
    dsPdsLogReservaItem: TDataSource;
    cdsPdsLogReservasqldtsPdsLogReservaItem: TDataSetField;
    cdsPdsLogReservaItemEMPRESAID: TBCDField;
    cdsPdsLogReservaItemPDSID: TBCDField;
    cdsPdsLogReservaItemITEMID: TBCDField;
    cdsPdsLogReservaItemPRODUTOID: TBCDField;
    cdsPdsLogReservaItemDESCRICAOPRODUTO: TStringField;
    cdsPdsLogReservaItemL_PARTNUMBERID: TStringField;
    cdsPdsLogReservaItemL_LOCALIZACAO: TStringField;
    cdsPdsLogReservaItemQUANTIDADE: TBCDField;
    cdsPdsLogReservaItemVLRPRECOUNITARIO: TBCDField;
    cdsPdsLogReservaItemVLRPRECOTOTAL: TBCDField;
    cdsInventarioL_ESTOQUEPEDENTRADA: TBCDField;
    cdsInventarioL_ESTOQUEPEDSAIDA: TBCDField;
    cdsInventarioL_ESTOQUEEMTERCEIRO: TBCDField;
    cdsInventarioL_ESTOQUEDETERCEIRO: TBCDField;
    cdsInventarioL_ESTOQUEMINIMO: TBCDField;
    cdsInventarioL_ESTOQUEEMPENHO: TBCDField;
    cdsInventarioL_ESTOQUEVALE: TBCDField;
    cdsInventarioL_ESTOQUEESTORNO: TBCDField;
    cdsInventarioL_CUSTOTOTAL: TBCDField;
    cdsInventarioL_VLRFOB: TBCDField;
    cdsInventarioL_UNIDADEID: TStringField;
    cdsInventarioESTOQUEQUARENTENA: TBCDField;
    cdsInventarioA_CUSTOMEDIOAPURADO: TAggregateField;
    cdsNfsREEID: TBCDField;
    cdsNfsDDEID: TBCDField;
    cdsEntidadeDESLIGADO: TBCDField;
    cdsGrupoSIGLAGRUPO: TStringField;
    cdsServicoL_SIGLAGRUPO: TStringField;
    cdsServicoL_DESCRICAOGRUPO: TStringField;
    cdsProdutoL_SIGLAGRUPO: TStringField;
    cdsInventarioL_SIGLAGRUPO: TStringField;
    cdsInventarioDig: TClientDataSet;
    dsInventarioDig: TDataSource;
    cdsInventarioDigHISTINVENTARIOID: TBCDField;
    cdsInventarioDigINVENTARIOID: TBCDField;
    cdsInventarioDigEMPRESAID: TBCDField;
    cdsInventarioDigTIPOCTGINVENTID: TBCDField;
    cdsInventarioDigL_TIPOCTGINVENT: TStringField;
    cdsInventarioDigPRODUTOID: TBCDField;
    cdsInventarioDigL_DESCRICAOPORTUGUES: TStringField;
    cdsInventarioDigL_GRUPOID: TBCDField;
    cdsInventarioDigL_PARTNUMBERID: TStringField;
    cdsInventarioDigL_LOCALIZACAO: TStringField;
    cdsInventarioDigL_CUSTOMEDIO: TBCDField;
    cdsInventarioDigL_CUSTOTOTAL: TBCDField;
    cdsInventarioDigL_ESTOQUEFISICO: TBCDField;
    cdsInventarioDigDATACFGFISICA: TSQLTimeStampField;
    cdsInventarioDigQUANTIDADE: TBCDField;
    cdsInventarioDigREALIZADORID: TBCDField;
    cdsInventarioDigL_NOME_REALIZADOR: TStringField;
    cdsInventarioDigDIGITADORID: TBCDField;
    cdsInventarioDigL_NOME_DIGITADOR: TStringField;
    cdsInventarioDigDIFERENCASALDO: TBCDField;
    cdsInventarioDigL_SIGLAGRUPO: TStringField;
    cdsPdsServicoL_GRUPOID: TBCDField;
    cdsPdsServicoL_SIGLAGRUPO: TStringField;
    cdsNfsServicoL_GRUPOID: TBCDField;
    cdsNfsServicoL_SIGLAGRUPO: TStringField;
    cdsFilialHORAINICIOTRABALHO: TSQLTimeStampField;
    cdsFilialHORAFINALTRABALHO: TSQLTimeStampField;
    cdsFilialHORASALMOCO: TFMTBCDField;
    cdsBudget: TClientDataSet;
    dsBudget: TDataSource;
    cdsBudgetBUDGETID: TBCDField;
    cdsBudgetDATABUDGET: TSQLTimeStampField;
    cdsBudgetDESCRICAO_BUDGET: TStringField;
    cdsBudgetSIGLA_DEPTO: TStringField;
    cdsBudgetIDENTIFICADOR_NOTA: TStringField;
    cdsBudgetGRUPOID: TBCDField;
    cdsBudgetL_DESCRICAOGRUPO: TStringField;
    cdsBudgetL_SIGLAGRUPO: TStringField;
    cdsBudgetSUBGRUPOID: TBCDField;
    cdsBudgetL_SIGLASUBGRUPO: TStringField;
    cdsBudgetL_DESCRICAOSUBGRUPO: TStringField;
    cdsBudgetVLRBUDGET: TFMTBCDField;
    cdsBudgetUSUARIO: TStringField;
    cdsFilialLIMITEBCOHORAS: TFMTBCDField;
    cdsNotas_Dev: TClientDataSet;
    dsNotas_Dev: TDataSource;
    cdsNotas_DevEF_NOTAID: TBCDField;
    cdsNotas_DevEMPRESAID: TBCDField;
    cdsNotas_DevNOTAID: TBCDField;
    cdsNotas_DevDATAEMISSAOID: TSQLTimeStampField;
    cdsNotas_DevDATADEVOLUCAO: TSQLTimeStampField;
    cdsNotas_DevVLRDEVOLUCAO: TFMTBCDField;
    cdsNotas_DevUSUARIO: TStringField;
    cdsNaturezaOpOUTRASSAIDA: TBCDField;
    cdsImpostoServico: TClientDataSet;
    dsImpostoServico: TDataSource;
    cdsImpostoServicoIMPOSTOSERVICOID: TBCDField;
    cdsImpostoServicoATIVIDADE: TStringField;
    cdsImpostoServicoNIVELSERVICO: TBCDField;
    cdsImpostoServicoALIQUOTAISS: TFMTBCDField;
    cdsImpostoServicoUSUARIO: TStringField;
    cdsServicoIMPOSTOSERVICOID: TBCDField;
    cdsServicoL_ATIVIDADE: TStringField;
    cdsProdutoCUBAGEM: TFMTBCDField;
    cdsMunicipioIBGE: TClientDataSet;
    dsMunicipioIBGE: TDataSource;
    cdsMunicipioIBGEMUNICIPIOIBGEID: TBCDField;
    cdsMunicipioIBGEDESCRICAO: TStringField;
    cdsMunicipioIBGEUSUARIO: TStringField;
    cdsKardexITEMID: TBCDField;
    cdsNotas_DevTIPOMOVIMENTO: TStringField;
    cdsProdutoMODELOID: TStringField;
    cdsProdutoESTOQUEDEMO: TBCDField;
    cdsNaturezaOpCONTRIBUINTEICMS: TBCDField;
    cdsEntidadeHORASCFGTRABID: TBCDField;
    cdsEntidadeL_DESCRICAOHORASCFGTRAB: TStringField;
    cdsInventarioL_ESTOQUEQUARENTENA: TBCDField;
    cdsInventarioL_ATIVO: TBCDField;
    cdsCall: TClientDataSet;
    cdsCallItem: TClientDataSet;
    dsCall: TDataSource;
    dsCallItem: TDataSource;
    cdsCallEMPRESAID: TBCDField;
    cdsCallCALLID: TBCDField;
    cdsCallDATAPEDIDO: TSQLTimeStampField;
    cdsCallSTATUS: TBCDField;
    cdsCallPRENOTA: TBCDField;
    cdsCallENTIDADEID: TBCDField;
    cdsCallOBSERVACAO: TMemoField;
    cdsCallVLRTOTALPRODUTO: TBCDField;
    cdsCallUSUARIO: TStringField;
    cdsCallItemEMPRESAID: TBCDField;
    cdsCallItemCALLID: TBCDField;
    cdsCallItemITEMID: TBCDField;
    cdsCallItemPRODUTOID: TBCDField;
    cdsCallItemL_DESCRICAOPORTUGUES: TStringField;
    cdsCallItemL_DESCRICAOINGLES: TStringField;
    cdsCallItemL_ESTOQUENOVO: TBCDField;
    cdsCallItemL_ESTOQUEREVISADO: TBCDField;
    cdsCallItemL_ESTOQUEFISICO: TBCDField;
    cdsCallItemL_ESTOQUETOTAL: TBCDField;
    cdsCallItemQUANTIDADE: TBCDField;
    cdsCallItemVLRPRECOUNITARIO: TBCDField;
    cdsCallItemVLRPRECOTOTAL: TBCDField;
    cdsCallItemUSUARIO: TStringField;
    cdsCallL_NOME: TStringField;
    cdsCallL_CONTATO: TStringField;
    cdsCallsqldtsCallItem: TDataSetField;
    cdsCallEMAIL: TStringField;
    cdsCallTELEFONE: TStringField;
    cdsCallLOCALENTRID: TBCDField;
    cdsCallL_DESCRICAOLOCAL: TStringField;
    cdsCallCEPID: TBCDField;
    cdsCallNUMERO: TStringField;
    cdsCallCOMPLEMENTO: TStringField;
    cdsCallENDERECO: TStringField;
    cdsCallBAIRRO: TStringField;
    cdsCallCIDADE: TStringField;
    cdsCallSIGLAUFID: TStringField;
    cdsCallPAIS: TStringField;
    cdsLocalEntr: TClientDataSet;
    dsLocalEntr: TDataSource;
    cdsLocalEntrLOCALENTRID: TBCDField;
    cdsLocalEntrDESCRICAO: TStringField;
    cdsLocalEntrUSUARIO: TStringField;
    cdsNfsNF_E1ID: TFMTBCDField;
    cdsReceitaSERVICOPRESTADOID: TFMTBCDField;
    cdsNfsNSUID: TFMTBCDField;
    cdsEmpresaNUMNSU: TFMTBCDField;
    cdsPdsServicoVLRRETIRPJ: TBCDField;
    cdsPdsServicoVLRRETIRPF: TBCDField;
    cdsNfsServicoVLRRETIRPJ: TBCDField;
    cdsNfsServicoVLRRETIRPF: TBCDField;
    cdsNfeNSUID: TFMTBCDField;
    cdsReceitaRETENCAO1: TBCDField;
    cdsReceitaRETENCAO2: TBCDField;
    cdsReceitaRETENCAO3: TBCDField;
    cdsReceitaRETENCAO4: TBCDField;
    cdsNaturezaJuridicaRETENCAO1: TBCDField;
    cdsNaturezaJuridicaRETENCAO2: TBCDField;
    cdsNaturezaJuridicaRETENCAO3: TBCDField;
    cdsNaturezaJuridicaRETENCAO4: TBCDField;
    cdsNaturezaJuridicaALIQRETENCAOPIS: TBCDField;
    cdsNaturezaJuridicaALIQRETENCAOCOFINS: TBCDField;
    cdsNaturezaJuridicaALIQRETENCAOCSLL: TBCDField;
    cdsNaturezaJuridicaALIQRETENCAOIRPJ: TBCDField;
    cdsNaturezaJuridicaALIQRETENCAOIRPF: TBCDField;
    cdsPdsVLRTOTALRETCOFINS: TBCDField;
    cdsPdsVLRTOTALRETPIS: TBCDField;
    cdsPdsVLRTOTALRETCSLL: TBCDField;
    cdsPdsVLRTOTALRETIRPJ: TBCDField;
    cdsPdsVLRTOTALRETIRPF: TBCDField;
    cdsNfsVLRTOTALRETCOFINS: TBCDField;
    cdsNfsVLRTOTALRETPIS: TBCDField;
    cdsNfsVLRTOTALRETCSLL: TBCDField;
    cdsNfsVLRTOTALRETIRPJ: TBCDField;
    cdsNfsVLRTOTALRETIRPF: TBCDField;
    cdsEntidadeEMAILNFE: TStringField;
    cdsEmpresaNUMRPS: TBCDField;
    cdsNaturezaOpNATUREZASERVICO: TBCDField;
    cdsMunicipioIBGEDESCRICAO2: TStringField;
    cdsMunicipioIBGESIGLAUFID: TStringField;
    cdsMunicipioIBGEL_NOMEUUF: TStringField;
    cdsTipoItem: TClientDataSet;
    dsTipoItem: TDataSource;
    cdsTipoItemTIPOITEMID: TBCDField;
    cdsTipoItemDESCRICAO: TStringField;
    cdsTipoItemUSUARIO: TStringField;
    cdsGeneroItem: TClientDataSet;
    dsGeneroItem: TDataSource;
    cdsGeneroItemGENEROITEMID: TBCDField;
    cdsGeneroItemDESCRICAO: TStringField;
    cdsGeneroItemUSUARIO: TStringField;
    cdsProdutoTIPOITEMID: TBCDField;
    cdsProdutoL_DESCRICAOTIPOITEM: TStringField;
    cdsProdutoGENEROITEMID: TBCDField;
    cdsProdutoL_DESCRICAOGENEROITEM: TStringField;
    cdsPdsEMPRESANFSREFID: TBCDField;
    cdsPdsNFSREFID: TBCDField;
    cdsPdsDATANFSREFID: TSQLTimeStampField;
    cdsNfsEMPRESANFSREFID: TBCDField;
    cdsNfsNFSREFID: TBCDField;
    cdsNfsDATANFSREFID: TSQLTimeStampField;
    cdsPdsItemL_UNIDADEID: TStringField;
    cdsNfEmail: TClientDataSet;
    dsNfEmail: TDataSource;
    cdsNfEmailEMPRESAID: TBCDField;
    cdsNfEmailNOTA: TBCDField;
    cdsNfEmailDATAEMISSAOID: TSQLTimeStampField;
    cdsNfEmailDATAGERACAO: TSQLTimeStampField;
    cdsNfEmailEMAIL: TStringField;
    cdsNfEmailASSUNTO: TStringField;
    cdsNfEmailCORPO: TStringField;
    cdsNfEmailLOGPROCESSO: TStringField;
    cdsNfEmailDATAENVIO: TSQLTimeStampField;
    cdsNfEmailUSUARIO: TStringField;
    cdsNfEmailSTATUS: TStringField;
    cdsReceitaIMPOSTOSERVQLDNATID: TStringField;
    procedure cdsImpostoServicoNewRecord(DataSet: TDataSet);
    procedure cdsEmpresafterPost(DataSet: TDataSet);
    procedure cdsEmpresaReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsEntidadeFILIALIDValidate(Sender: TField);
    procedure cdsEntidadeDEPARTAMENTOIDValidate(Sender: TField);
    procedure cdsProdutoGRUPOIDValidate(Sender: TField);
    procedure cdsProdutoSUBGRUPOIDValidate(Sender: TField);
    procedure cdsKardexNATUREZAOPIDValidate(Sender: TField);
    procedure cdsKardexPRODUTOIDValidate(Sender: TField);
    procedure cdsPdeNATUREZAOPIDValidate(Sender: TField);
    procedure cdsPdeTRANSPORTADORIDValidate(Sender: TField);
    procedure cdsNfeNATUREZAOPIDValidate(Sender: TField);
    procedure cdsPdsTRANSPORTADORIDValidate(Sender: TField);
    procedure cdsNfsNATUREZAOPIDValidate(Sender: TField);
    procedure cdsEmpresaAfterDelete(DataSet: TDataSet);
    procedure cdsEmpresaCPF_CNPJValidate(Sender: TField);
    procedure cdsFilialCPF_CNPJValidate(Sender: TField);
    procedure cdsEntidadeCPFCNPJValidate(Sender: TField);
    procedure cdsEntidadeCPFCNPJGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure cdsFilialCPF_CNPJGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure cdsEmpresaCPF_CNPJGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure cdsNaturezaOpNATUREZAOPRETORNOIDValidate(Sender: TField);
    procedure cdsNaturezaOpOBSERVACAOIDValidate(Sender: TField);
    procedure cdsNaturezaOpSIGLANATUREZAIDValidate(Sender: TField);
    procedure cdsNaturezaEmpresaEMPRESAIDValidate(Sender: TField);
    procedure cdsNaturezaEmpresaNewRecord(DataSet: TDataSet);
    procedure cdsProdutoNewRecord(DataSet: TDataSet);
    procedure cdsEntidadeCEPIDValidate(Sender: TField);
    procedure cdsEntidadeCEPCOBIDValidate(Sender: TField);
    procedure cdsEntidadeGrupoNewRecord(DataSet: TDataSet);
    procedure cdsEntidadeGrupoCATEGORIAIDValidate(Sender: TField);
    procedure cdsDepartamentoFILIALIDValidate(Sender: TField);
    procedure cdsContaContabilNewRecord(DataSet: TDataSet);
    procedure cdsNaturezaJuridicaCATEGJURIDICAIDValidate(Sender: TField);
    procedure cdsEntidadeNATUREZAJURIDICAIDValidate(Sender: TField);
    procedure cdsServicoRECEITAIDValidate(Sender: TField);
    procedure cdsServicoGRUPOIDValidate(Sender: TField);
    procedure cdsProdutoFORNECEDORIDValidate(Sender: TField);
    procedure cdsProdutoUNIDADEIDValidate(Sender: TField);
    procedure cdsKardexNewRecord(DataSet: TDataSet);
    procedure cdsPdeMODELODOCFISCALIDValidate(Sender: TField);
    procedure cdsPdeENTIDADEIDValidate(Sender: TField);
    procedure cdsPdeOBSERVACAOIDValidate(Sender: TField);
    procedure cdsPdeNewRecord(DataSet: TDataSet);
    procedure cdsPdeItemNATUREZAOPIDValidate(Sender: TField);
    procedure cdsPdeItemOBSERVACAOIDValidate(Sender: TField);
    procedure cdsPdeItemPRODUTOIDValidate(Sender: TField);
    procedure cdsPdeItemNewRecord(DataSet: TDataSet);
    procedure cdsPdeItemBarNewRecord(DataSet: TDataSet);
    procedure cdsNfeMODELODOCFISCALIDValidate(Sender: TField);
    procedure cdsNfeTRANSPORTADORIDValidate(Sender: TField);
    procedure cdsPdsENTIDADEIDValidate(Sender: TField);
    procedure cdsPdsNATUREZAOPIDValidate(Sender: TField);
    procedure cdsPdsOBSERVACAOIDValidate(Sender: TField);
    procedure cdsPdsCONDPAGTOIDValidate(Sender: TField);
    procedure cdsPdsNewRecord(DataSet: TDataSet);
    procedure cdsPdsItemNewRecord(DataSet: TDataSet);
    procedure cdsCategoriaNewRecord(DataSet: TDataSet);
    procedure cdsNfeNewRecord(DataSet: TDataSet);
    procedure cdsNfsNewRecord(DataSet: TDataSet);
    procedure cdsPdeEMBPESOBRUTOValidate(Sender: TField);
    procedure cdsPdeLIBCHEFIAValidate(Sender: TField);
    procedure cdsPdeLIBCONTABILValidate(Sender: TField);
    procedure cdsProdutoSUSPENSAOIPIValidate(Sender: TField);
    procedure cdsProdutoISENTOIPIValidate(Sender: TField);
    procedure cdsNaturezaOpTRIBUTADOValidate(Sender: TField);
    procedure cdsNaturezaOpSUSPENSAOIPIValidate(Sender: TField);
    procedure cdsNaturezaOpISENTOIPIValidate(Sender: TField);
    procedure cdsPdeItemBeforeInsert(DataSet: TDataSet);
    procedure cdsPdeItemAfterPost(DataSet: TDataSet);
    procedure cdsPdeItemBeforeEdit(DataSet: TDataSet);
    procedure cdsPdeItemAfterDelete(DataSet: TDataSet);
    procedure cdsPdeItemBeforePost(DataSet: TDataSet);
    procedure cdsPdeItemBeforeDelete(DataSet: TDataSet);
    procedure cdsNfsAfterDelete(DataSet: TDataSet);
    procedure cdsNfsAfterPost(DataSet: TDataSet);
    procedure cdsNfsItemAfterDelete(DataSet: TDataSet);
    procedure cdsNfsItemAfterPost(DataSet: TDataSet);
    procedure cdsPdeItemBarAfterDelete(DataSet: TDataSet);
    procedure cdsPdeItemBarAfterPost(DataSet: TDataSet);
    procedure cdsPdsLIBCHEFIAValidate(Sender: TField);
    procedure cdsPdsLIBCONTABILValidate(Sender: TField);
    procedure cdsPdsLIBFINANCEIROValidate(Sender: TField);
    procedure cdsPdsItemAfterDelete(DataSet: TDataSet);
    procedure cdsPdsItemAfterPost(DataSet: TDataSet);
    procedure cdsPdsItemBeforeEdit(DataSet: TDataSet);
    procedure cdsPdsItemBeforeInsert(DataSet: TDataSet);
    procedure cdsPdsItemBeforePost(DataSet: TDataSet);
    procedure cdsPdsItemPRODUTOIDValidate(Sender: TField);
    procedure cdsPdsItemVLRPRECOUNITARIOValidate(Sender: TField);
    procedure cdsPdsItemQUANTIDADEValidate(Sender: TField);
    procedure cdsEntidadeDeptoNewRecord(DataSet: TDataSet);
    procedure cdsEntidadeDeptoDEPARTAMENTOIDValidate(Sender: TField);
    procedure cdsEntidadeGrupoAfterDelete(DataSet: TDataSet);
    procedure cdsEntidadeDeptoAfterDelete(DataSet: TDataSet);
    procedure cdsEntidadeGrupoAfterPost(DataSet: TDataSet);
    procedure cdsEntidadeDeptoAfterPost(DataSet: TDataSet);
    procedure cdsEntidadeCARGOIDValidate(Sender: TField);
    procedure cdsProdutoBeforePost(DataSet: TDataSet);
    procedure cdsProdutoEMPRESAIDValidate(Sender: TField);
    procedure cdsPdeItemQUANTIDADEValidate(Sender: TField);
    procedure cdsKardexAfterDelete(DataSet: TDataSet);
    procedure cdsKardexAfterPost(DataSet: TDataSet);
    procedure cdsKardexCalcFields(DataSet: TDataSet);
    procedure cdsContaContabilEMPRESAIDValidate(Sender: TField);
    procedure cdsCargoNewRecord(DataSet: TDataSet);
    procedure cdsEmpresaNewRecord(DataSet: TDataSet);
    procedure cdsPdsServicoNewRecord(DataSet: TDataSet);
    procedure cdsPdsServicoSERVICOIDValidate(Sender: TField);
    procedure cdsPdsServicoVLRSERVICOValidate(Sender: TField);
    procedure cdsPdsServicoBeforePost(DataSet: TDataSet);
    procedure cdsPdsServicoAfterPost(DataSet: TDataSet);
    procedure cdsPdsParcelaAfterPost(DataSet: TDataSet);
    procedure cdsPdsParcelaNewRecord(DataSet: TDataSet);
    procedure cdsPdsParcelaAfterDelete(DataSet: TDataSet);
    procedure cdsPdsServicoAfterDelete(DataSet: TDataSet);
    procedure cdsPdeBeforeDelete(DataSet: TDataSet);
    procedure cdsPdsBeforeDelete(DataSet: TDataSet);
    procedure cdsPdsItemBeforeDelete(DataSet: TDataSet);
    procedure cdsDepartamentoNewRecord(DataSet: TDataSet);
    procedure cdsHistInventarioNewRecord(DataSet: TDataSet);
    procedure cdsInventarioItemAfterDelete(DataSet: TDataSet);
    procedure cdsInventarioItemAfterPost(DataSet: TDataSet);
    procedure cdsTipoCtgInventNewRecord(DataSet: TDataSet);
    procedure cdsInventarioItemREALIZADORIDValidate(Sender: TField);
    procedure cdsInventarioItemDIGITADORIDValidate(Sender: TField);
    procedure cdsInventarioItemTIPOCTGINVENTIDValidate(Sender: TField);
    procedure cdsInventarioDigNewRecord(DataSet: TDataSet);
    procedure cdsInventarioDigQUANTIDADEValidate(Sender: TField);
    procedure cdsInventarioDigPRODUTOIDValidate(Sender: TField);
    procedure cdsPdeAfterPost(DataSet: TDataSet);
    procedure cdsPdeItemALIQUOTAICMSValidate(Sender: TField);
    procedure cdsPdeBeforeEdit(DataSet: TDataSet);
    procedure cdsProdutoEMPRESASIMILARIDValidate(Sender: TField);
    procedure cdsProdutoPRODUTOSIMILARIDValidate(Sender: TField);
    procedure cdsInventarioNewRecord(DataSet: TDataSet);
    procedure cdsEntidadeNewRecord(DataSet: TDataSet);
    procedure cdsNaturezaOpNewRecord(DataSet: TDataSet);
    procedure cdsNfsENTIDADEIDValidate(Sender: TField);
    procedure cdsEntidadeCEPINSTIDValidate(Sender: TField);
    procedure cdsServicoNewRecord(DataSet: TDataSet);
    procedure cdsSiglaNaturezaNewRecord(DataSet: TDataSet);
    procedure cdsPdsItemPORCDESCONTOValidate(Sender: TField);
    procedure cdsProdutoCalcFields(DataSet: TDataSet);
    procedure cdsPdeNFEIDValidate(Sender: TField);
    procedure cdsServicoSUBGRUPOIDValidate(Sender: TField);
    procedure cdsPdsVLRFRETEValidate(Sender: TField);
    procedure cdsPdsLogReservaNewRecord(DataSet: TDataSet);
    procedure cdsReceitaNewRecord(DataSet: TDataSet);
    procedure cdsBudgetNewRecord(DataSet: TDataSet);
    procedure cdsBudgetGRUPOIDValidate(Sender: TField);
    procedure cdsBudgetSUBGRUPOIDValidate(Sender: TField);
    procedure cdsNotas_DevNewRecord(DataSet: TDataSet);
    procedure cdsMunicipioIBGENewRecord(DataSet: TDataSet);
    procedure cdsProdutoMODELOIDValidate(Sender: TField);
    procedure cdsPdeEMBPESOLIQUIDOValidate(Sender: TField);
    procedure cdsEntidadeHORASCFGTRABIDValidate(Sender: TField);
    procedure cdsPdeItemVLRPRECOUNITARIOValidate(Sender: TField);
    procedure cdsCallENTIDADEIDValidate(Sender: TField);
    procedure cdsCallNewRecord(DataSet: TDataSet);
    procedure cdsCallBeforeDelete(DataSet: TDataSet);
    procedure cdsCallItemAfterDelete(DataSet: TDataSet);
    procedure cdsCallItemAfterPost(DataSet: TDataSet);
    procedure cdsCallItemBeforeDelete(DataSet: TDataSet);
    procedure cdsCallItemBeforeEdit(DataSet: TDataSet);
    procedure cdsCallItemBeforePost(DataSet: TDataSet);
    procedure cdsCallItemNewRecord(DataSet: TDataSet);
    procedure cdsCallItemPRODUTOIDValidate(Sender: TField);
    procedure cdsCallItemQUANTIDADEValidate(Sender: TField);
    procedure cdsLocalEntrNewRecord(DataSet: TDataSet);
    procedure cdsCallLOCALENTRIDValidate(Sender: TField);
    procedure cdsCallCEPIDValidate(Sender: TField);
    procedure cdsCallItemVLRPRECOUNITARIOValidate(Sender: TField);
    procedure cdsCallBeforeEdit(DataSet: TDataSet);
    procedure cdsCallAfterPost(DataSet: TDataSet);
    procedure cdsProdutoItemNewRecord(DataSet: TDataSet);
    procedure cdsTipoItemNewRecord(DataSet: TDataSet);
    procedure cdsGeneroItemNewRecord(DataSet: TDataSet);
    procedure cdsProdutoTIPOITEMIDValidate(Sender: TField);
    procedure cdsProdutoGENEROITEMIDValidate(Sender: TField);
    procedure cdsNfEmailNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    NovoRegPDE  : Boolean;
    NovoRegPDS  : Boolean;
    NovoRegCALL : Boolean;
    procedure AtualDespAcessorias( Campo : String );
    procedure AtualizaContrato( OsId : String; Quantidade,NaturezaOp,Empenho : Integer; Gravar : Boolean );
  public
    { Public declarations }
    procedure AtualizarTotalPDE;
    procedure GerarDuplicata( DtDuplic : TDate );
    procedure ValidarPecasContrato;
    procedure BloqInserirPD( DataSet : TDataSet);
    procedure Analas_Nat_Op_Item;
    procedure CalculoPDEItem;
    procedure CalculoPDSItem;
    procedure CalculoCallItem;
    function  ValidaCFOP: String;
    function  SomaDuplicata( EmpresaId,PdsId  : Integer ) : Real;
  end;

var
  dmEF: TdmEF;

implementation

uses u_dmGSI, u_ReconcileError, FuncoesCliente, FuncoesDSI, u_dmOs, Math,
  DateUtils, u_dmRD;

{$R *.dfm}

procedure TdmEF.AtualDespAcessorias( Campo : String );
var dsState : TDataSetState;
    iUpd : String;
begin
 if cdsPds.State = dsInsert then
    exit;

 dsState := cdsPds.State;

 iUpd := 'UPDATE EF_PDS SET ' +
         Campo + ' = ' +  SubstituiString( dmEF.cdsPds.FieldByName( Campo ).AsString, ',', '.' ) +
         ' WHERE ' +
         '  EMPRESAID = ' + cdsPdsEMPRESAID.AsString +
         '  AND PDSID = ' + cdsPdsPDSID.AsString;

 ExecDML( iUpd );

 shdcnnEF.AppServer.ITotalPDS( cdsPdsEMPRESAID.AsString, cdsPdsPDSID.AsString, cdsPdsNATUREZAOPID.AsString );

 cdsPds.RefreshRecord;
 if dsState in [dsEdit,dsInsert] then
    cdsPds.Edit;
end;


procedure TdmEF.AtualizarTotalPDE;
var dsState : TDataSetState;
begin
 dsState := cdsPde.State;

 if cdsPde.UpdateStatus = usUnmodified then
    if cdsPde.UpdateStatus <> usDeleted then
       cdsPde.Post;

 if cdsPdeItem.ChangeCount > 0 then
    cdsPdeItem.ApplyUpdates(-1);

 shdcnnEF.AppServer.ITotalPDE( cdsPdeEMPRESAID.AsString, cdsPdePDEID.AsString );

 if cdsPde.UpdateStatus <> usDeleted then
    begin
     cdsPde.RefreshRecord;
     if dsState in [dsEdit,dsInsert] then
        cdsPde.Edit;
    end;
end;


procedure TdmEF.GerarDuplicata( DtDuplic : TDate );
var cdsCPg, cdsNat : TClientDataSet;
    isqlCPg, isqlNat : String;
    nC : Integer;
    Valor_Total, Vlr_Parcelas, Vlr_Primeira : Currency;
    DtVenc : TDate;
begin
 cdsCPg  := Nil;
 cdsNat  := Nil;
 isqlCPg := 'SELECT' +
            '  EF_CONDPAGTO.CONDPAGTOID, EF_CONDPAGTO.EMITEDUPLICATA, DIASPRIMEIRA, DIASENTREPARC, ' +
            '  NUMPARCELA' +
            '  FROM EF_CONDPAGTO EF_CONDPAGTO' +
            ' WHERE ' +
            ' EF_CONDPAGTO.CONDPAGTOID = ' + cdsPdsCONDPAGTOID.AsString;

 iSQLNat  := 'SELECT NATUREZAOPID, MOVIMENTOESTOQUE ' +
             ' FROM EF_NATUREZAOP ' +
             ' WHERE NATUREZAOPID = ' + cdsPdsNATUREZAOPID.AsString;

 try
  ExecDynamicProvider( -1, isqlCPg, cdsCPg );

  ExecDynamicProvider( -1, isqlNat, cdsNat );

  if cdsCPg.IsEmpty then
     raise Exception.Create('Condição de pagamento não informada no pedido!');

  if cdsNat.IsEmpty then
     raise Exception.Create('Natureza de operação não encontrada!');

  if DtDuplic < StrToDate( DateToStr( cdsPDSDATAPEDIDO.AsDateTime ) ) then
     begin
      MessageDlg('Data da Duplicata não pode ser menor que a data do pedido.', mtInformation,[mbOk], 0);
      Exit;
     end;

  if ( cdsPDSSTATUS.Value = 1 ) or ( cdsPdsParcelaPARCELAID.Value > 0 ) or
     ( DtDuplic < 1 ) then
     begin
      MessageDlg('Duplicata não gerada ( Pedido já Faturado ).', mtInformation,[mbOk], 0);
      Exit;
     end;

  if cdsCPg.FieldByName('EMITEDUPLICATA').Value =  0 then
     begin
      MessageDlg('Não é permitido gerar duplicatas nesta condição de pagto.', mtInformation,[mbOk], 0);
      Exit;
     end;

  if cdsNat.FieldByName('MOVIMENTOESTOQUE').Value <> 'N' then
     begin
      MessageDlg('Não é permitido gerar duplicatas para esta natureza de operação.', mtInformation,[mbOk], 0);
      Exit;
     end;

  // Criar duplicatas
  nC := 1;
  Valor_Total := StrToFloat( FormatCurr('0000000000.00', cdsPdsVLRTOTALNOTA.Value ) );

  // Achar o Valor das parcelas a partir da 2º
  Vlr_Parcelas := Int( ( Valor_Total / cdsCPg.FieldByName('NUMPARCELA').Value ) );

  // Achar o valor da primeira parcela
  Vlr_Primeira := Valor_Total - ( Vlr_Parcelas * ( cdsCPg.FieldByName('NUMPARCELA').Value - 1 ) );

  while nC <= cdsCPg.FieldByName('NUMPARCELA').Value do
  begin
   cdsPDSParcela.Insert;

   if nC <> 1 then
      begin
       DtVenc := DtDuplic + ( cdsCPg.FieldByName('DIASPRIMEIRA').AsInteger +
                 ( cdsCPg.FieldByName('DIASENTREPARC').Value * ( nC-1 ) ) );
       cdsPdsParcelaVLRPARCELA.Value := Vlr_Parcelas;
      end
   else
      begin
       DtVenc := DtDuplic + cdsCPg.FieldByName('DIASPRIMEIRA').AsInteger;
       cdsPdsParcelaVLRPARCELA.Value := Vlr_Primeira;
      end;

   // Tirar as hora / problemas no select !
   cdsPdsParcelaDATAVENCIMENTO.AsDateTime := StrToDate( FormatDateTime( 'DD/MM/YYYY', DtVenc ) );

   if cdsPdsParcelaDATAVENCIMENTO.AsDateTime < StrToDate( '01/01/1999') then
      begin
       MessageDlg('Data inválida (BUG do Milênio !!!), favor contactar ( DSI ).', mtInformation,[mbOk], 0);
       // Apagar duplicata;
       exit;
      end;

   cdsPdsParcelaPARCELAID.Value := nC;
   cdsPDSParcela.Post;

   Inc( nC  );
  end;

  cdsCPg.Close;
  cdsNat.Close;
 finally
  FreeAndNil( cdsCPg );
  FreeAndNil( cdsNat );
 end;
end;

procedure TdmEF.ValidarPecasContrato;
var cdsOSCt, cdsCt : TClientDataSet;
    isqlOS, isqlCt : String;
    Qtpecas, QtpecasUtil     : Integer;
begin
 cdsOSCt := Nil;
 cdsCt   := Nil;
 isqlOS  := 'SELECT OSID, DATAABERTURA, SERIEID, MODELOID ' +
            ' FROM OS_OS ' +
            ' WHERE OSID = ' + QuotedStr( cdsPdsOSID.AsString );

 // Movimentação em terceiro utilizar o botão de retorno de nota
 try
  ExecDynamicProvider( -1, isqlOS, cdsOSCt );

  isqlCt  := 'SELECT '+
             ' A.CONTRATOID AS CONTRATO, A.ANOID AS ANO,' +
             ' I.DATAINICIOCONTRATO AS DATAINICIO,'+
             ' I.DATAFIMCONTRATO AS DATAFIM,'+
             ' A.SERIEID, A.MODELOID, QTDPECAS, QTDPECASUTIL ' +
             ' FROM CM_CONTRATO C ' +
             ' LEFT OUTER JOIN CM_CONTRATOANO  I ON ( C.CONTRATOID = I.CONTRATOID ) ' +
             ' LEFT OUTER JOIN CM_CONTRATOAPAR A ON ( I.CONTRATOID = A.CONTRATOID AND I.ANOID = A.ANOID )' +
             'WHERE ' +
             ' I.DATAFIMCONTRATO >= ' + QuotedStr( cdsOSCt.FieldByName('DATAABERTURA').AsString ) +
             ' AND NVL( I.PERIODOCONCLUIDO,0 ) = 0'+
             ' AND A.SERIEID  = ' + QuotedStr( cdsOSCt.FieldByName('SERIEID').AsString ) +
             ' AND A.MODELOID = ' + QuotedStr( cdsOSCt.FieldByName('MODELOID').AsString );

  ExecDynamicProvider( -1, isqlCt, cdsCt );

  if cdsOSCt.IsEmpty then
     raise Exception.Create('O pedido gerado não possui O.S. válida para o sistema.');

  if cdsOSCt.IsEmpty then
     raise Exception.Create('O Equipamento Série : ' + cdsOSCt.FieldByName('SERIEID').AsString + #13 +
                                          'Modelo: ' + cdsOSCt.FieldByName('MODELOID').AsString + ', não possui contrato de manutenção');

  Qtpecas     := cdsCt.FieldByName('QTDPECAS').AsInteger;
  QtpecasUtil := cdsCt.FieldByName('QTDPECASUTIL').AsInteger;

  if ( cdsPdsItemQUANTIDADE.Value + QtpecasUtil > QtPecas ) then
     begin
      if CheckSenha(dmGsi.UsuarioAtivo,'Pedido de Saída','Pedido de Saída sem Qtde de Peças no Contrato',True) then
         begin
          if MessageDlg('A quantidade de peças é maior do que a quantidade Contratada! Deseja Cadastrar mesmo assim?',mtConfirmation,[MbYes,MbNo],0) = mrYes then
             MessageDlg('Quantidade de Peças será alterada no Sistema',mtConfirmation,[Mbok],0)
          else
             raise Exception.Create('Quantidade de Peças ultrapassou o limite do Contrato!');
         end
      else
         raise Exception.Create('Quantidade de Peças ultrapassou o limite do Contrato!');
     end
  else if ( pCnnMain.AppServer.IServerDate ) > cdsCt.FieldByName('DATAFIM').Value then  { Alterado 31/05/2005 weles }
          raise Exception.Create('O Contrato está Expirado. Verificar as informações de contrato com o depto responsável.');

  cdsOSCt.Close;
  cdsCt.Close;

 finally
  FreeAndNil( cdsOSCt );
  FreeAndNil( cdsCt );
 end;
end;

procedure TdmEF.BloqInserirPD( DataSet : TDataSet);
begin
 if ( DataSet.FieldByName( 'NATUREZAOPID').AsInteger = 0 ) or ( DataSet.FieldByName( 'NATUREZAOPID').IsNull )then
    raise Exception.Create('Inclusão de Itens de Produto não permitida sem Natureza de Operação.');
end;

procedure TdmEF.Analas_Nat_Op_Item;
var cdsNat : TClientDataSet;
    iSQLNat : String;
    Pd : Boolean;
    i  : Integer;
begin
 cdsNat  := Nil;

 iSQLNat  := 'SELECT NATUREZAOPID, MOVIMENTOESTOQUE ' +
             ' FROM EF_NATUREZAOP ' +
             ' WHERE NATUREZAOPID = ' + cdsPdeNATUREZAOPID.AsString;

 // Movimentação em terceiro utilizar o botão de retorno de nota
 try
  ExecDynamicProvider( -1, iSQLNat, cdsNat );
  Pd := True;
  for i := 0 to Screen.FormCount - 1 do
      if 'frmRetornoNFSParcial' = Screen.Forms[i].Name then
            Pd := False;
  if Pd then
{     if cdsNat.FieldByName('MOVIMENTOESTOQUE').AsString = 'E' then
        raise Exception.Create('Inclusão de item de pedido de entrada não permitido para esta natureza de operaração (Em Terceiros) !');}
 finally
  FreeAndNil( cdsNat );
 end;
end;

procedure TdmEF.CalculoPDEItem;
var cdsProd, cdsNat : TClientDataSet;
    iSQLProd, iSQLNat : String;
    VlrDespesasAcessorias : Currency;

 procedure BasesEntradaNormal;
 begin
  cdsPdeItemVLRBASEIPI.Value       := 0;
  cdsPdeItemALIQUOTAIPI.AsCurrency := cdsProd.FieldByName('ALIQUOTAIPI').AsCurrency;
  cdsPdeItemVLRIPI.Value           := 0;
  cdsPdeItemVLRISENTASIPI.Value    := 0;
  cdsPdeItemVLROUTRASIPI.Value     := 0;
  cdsPdeItemDATAINICIALIPI.Value   := cdsProd.FieldByName('DATAINICIALIPI').AsSQLTimeStamp;
  cdsPdeItemDATAFINALIPI.Value     := cdsProd.FieldByName('DATAFINALIPI').AsSQLTimeStamp;

  // Tributado
  if cdsNat.FieldByName('TRIBUTADO').AsInteger = 1 then
     begin
      cdsPdeItemVLRBASEIPI.Value       := cdsPdeItemVLRPRECOTOTAL.Value;
      cdsPdeItemVLRIPI.Value           := cdsPdeItemVLRPRECOTOTAL.Value * ( cdsPdeItemALIQUOTAIPI.AsCurrency / 100 );
      cdsPdeItemVLRISENTASIPI.Value    := 0;
      cdsPdeItemVLROUTRASIPI.Value     := 0;
      cdsPdeItemTIPOIPI.Value          := 'T';
     end;

  // Suspensão / Outras IPI
  if ( cdsProd.FieldByName('SUSPENSAOIPI').AsInteger = 1 ) or
     ( cdsNat.FieldByName('SUSPENSAOIPI').AsInteger = 1 ) then
     begin
      cdsPdeItemVLRBASEIPI.Value       := 0;
      cdsPdeItemVLRIPI.Value           := 0;
      cdsPdeItemVLRISENTASIPI.Value    := 0;
      cdsPdeItemVLROUTRASIPI.Value     := cdsPdeItemVLRPRECOTOTAL.Value;
      cdsPdeItemTIPOIPI.Value          := 'S';
     end;

  // Isento IPI / Não Tributado
  if ( cdsProd.FieldByName('ISENTOIPI').AsInteger = 1 ) or
     ( cdsNat.FieldByName('ISENTOIPI').AsInteger = 1 ) then
     begin
      cdsPdeItemVLRBASEIPI.Value       := 0;
      cdsPdeItemVLRIPI.Value           := 0;
      cdsPdeItemVLRISENTASIPI.Value    := cdsPdeItemVLRPRECOTOTAL.Value;
      cdsPdeItemVLROUTRASIPI.Value     := 0;
      cdsPdeItemTIPOIPI.Value          := 'I';
     end;

  { Compra tributado mas não tem direito a crédito.
    TRIBUTAÇÃO NA NATUREZA DE OPERAÇÃO TEM ESTAR SEM MARCAR NADA
    E A TRIBUTAÇÃO DO PRODUTO TAMBÉM }
  if ( cdsNat.FieldByName('TRIBUTADO').AsInteger = 0 ) and
     ( cdsProd.FieldByName('SUSPENSAOIPI').AsInteger = 0 ) and
     ( cdsNat.FieldByName('SUSPENSAOIPI').AsInteger = 0 ) and
     ( cdsProd.FieldByName('ISENTOIPI').AsInteger = 0 ) and
     ( cdsNat.FieldByName('ISENTOIPI').AsInteger = 0 ) then
     begin
      cdsPdeItemVLRBASEIPI.Value       := 0;

      if  cdsNat.FieldByName('CREDITOIPI').AsInteger = 1 then
          cdsPdeItemVLRIPI.Value  := cdsPdeItemVLRPRECOTOTAL.Value * ( cdsPdeItemALIQUOTAIPI.AsCurrency / 100 )
      else
          cdsPdeItemVLRIPI.Value  := 0;

      cdsPdeItemVLRISENTASIPI.Value    := 0;

      if  ( cdsNat.FieldByName('CREDITOIPI').AsInteger = 0 ) then
          cdsPdeItemVLROUTRASIPI.Value     := cdsPdeItemVLRPRECOTOTAL.Value +
                                              ( cdsPdeItemVLRPRECOTOTAL.Value * ( cdsPdeItemALIQUOTAIPI.AsCurrency / 100 ) )
      else
          cdsPdeItemVLROUTRASIPI.Value     := cdsPdeItemVLRPRECOTOTAL.Value;

      cdsPdeItemTIPOIPI.Value          := 'N';
     end;

  // Cálculo das base ICMS
  // Despesas Acessorias com Transporte para agregar na Base de ICMS
  VlrDespesasAcessorias := ( cdsPdeVLRFRETE.Value +
                             cdsPdeVLRSEGURO.Value +
                             cdsPdeVLRDESPESAACESSORIA.Value ) /
                             IfThen( ( cdsPdeItem.RecordCount = 0 ), 1, cdsPdeItem.RecordCount );

  case cdsNat.FieldByName('SITTRIBESTADUAL').AsInteger of
  0   : begin
         if cdsNat.FieldByName('IPIBASE').AsInteger = 1 then
            cdsPdeItemVLRBASEICMS.Value := cdsPdeItemVLRPRECOTOTAL.Value + cdsPdeItemVLRIPI.Value + VlrDespesasAcessorias
         else
            cdsPdeItemVLRBASEICMS.Value := cdsPdeItemVLRPRECOTOTAL.Value + VlrDespesasAcessorias;

         cdsPdeItemVLRICMS.Value := ( cdsPdeItemVLRBASEICMS.Value / 100 ) * cdsPdeItemALIQUOTAICMS.AsCurrency;
        end;
  // ICMS com redução
  20  : begin
         cdsPdeItemPORCREDUCAOICMS.Value := cdsProd.FieldByName('REDUCAOICMS').Value;
         if cdsNat.FieldByName('IPIBASE').AsInteger = 1 then
            cdsPdeItemVLRBASEICMS.Value  := ( ( cdsPdeItemVLRPRECOTOTAL.Value + cdsPdeItemVLRIPI.Value + VlrDespesasAcessorias ) / 100 ) * ( 100 - cdsPdeItemPORCREDUCAOICMS.Value)
         else
            cdsPdeItemVLRBASEICMS.Value  := ( ( cdsPdeItemVLRPRECOTOTAL.Value + VlrDespesasAcessorias ) / 100 ) * ( 100 - cdsProd.FieldByName('REDUCAOICMS').Value );

         cdsPdeItemVLRICMS.Value         := cdsPdeItemVLRBASEICMS.Value * ( cdsPdeItemALIQUOTAICMS.AsCurrency / 100 );
         cdsPdeItemVLRISENTASICMS.Value  := cdsPdeItemVLRPRECOTOTAL.Value - cdsPdeItemVLRBASEICMS.Value;
        end;

  // ICMS isento
  40..41: cdsPdeItemVLRISENTASICMS.Value := cdsPdeItemVLRPRECOTOTAL.Value;

  // ICMS suspenso
  50    : begin
           cdsPdeItemVLROUTRASICMS.Value  := cdsPdeItemVLRPRECOTOTAL.Value + cdsPdeItemVLRIPI.Value;
          end;

  // ICMS diferido
  51    : cdsPdeItemVLRBASEICMS.Value    := cdsPdeItemVLRPRECOTOTAL.Value;

  // ICMS Outras
  52..90: cdsPdeItemVLROUTRASICMS.Value  := cdsPdeItemVLRPRECOTOTAL.Value;

  end;

  // Cálculo do PIS / COFINS para devolução de venda
  if ( cdsNat.FieldByName('MOVIMENTOESTOQUE').Value = 'V' ) or
     ( cdsNat.FieldByName('CREDITOPIS').Value = 1 ) or
     ( cdsNat.FieldByName('CREDITOCOFINS').Value = 1 ) then
     begin
      cdsPdeItemALIQUOTAPIS.AsVariant    := shdcnnEF.AppServer.IAliquotaImposto( 'PIS' );
      cdsPdeItemALIQUOTACOFINS.AsVariant := shdcnnEF.AppServer.IAliquotaImposto( 'COFINS' );
     end;

  if cdsNat.FieldByName('MOVIMENTOESTOQUE').Value = 'V' then
     begin
      cdsPdeItemVLRPIS.Value    := ( cdsPdeItemVLRPRECOTOTAL.Value / 100 ) * cdsPdeItemALIQUOTAPIS.AsCurrency;
      cdsPdeItemVLRCOFINS.Value := ( cdsPdeItemVLRPRECOTOTAL.Value / 100 ) * cdsPdeItemALIQUOTACOFINS.AsCurrency;
    end;

  { Crédito do PIS }
  if cdsNat.FieldByName('CREDITOPIS').Value = 1 then
     cdsPdeItemVLRCREDPIS.Value := cdsPdeItemVLRPRECOTOTAL.Value * ( cdsPdeItemALIQUOTAPIS.AsCurrency / 100 );

  { Crédito do COFINS }
  if cdsNat.FieldByName('CREDITOCOFINS').Value = 1 then
     cdsPdeItemVLRCREDCOFINS.Value :=  cdsPdeItemVLRPRECOTOTAL.Value * ( cdsPdeItemALIQUOTACOFINS.AsCurrency / 100 );

 end;


begin
 cdsProd := Nil;
 cdsNat  := Nil;

 if ( cdsPdeItemQUANTIDADE.Value < 1 ) or ( cdsPdeItemPRODUTOID.Value < 0 ) or
    ( cdsPdeItemVLRPRECOUNITARIO.Value < 0 ) then
    exit;

 iSQLProd := 'SELECT EMPRESAID, PRODUTOID, SUSPENSAOIPI, ISENTOIPI, ALIQUOTAIPI, ' +
             ' DATAINICIALIPI, DATAFINALIPI, REDUCAOICMS ' +
             ' FROM EF_PRODUTO ' +
             ' WHERE EMPRESAID = ' + cdsPdeItemEMPRESAID.AsString +
             '   AND PRODUTOID = ' + cdsPdeItemPRODUTOID.AsString;
 iSQLNat  := 'SELECT NATUREZAOPID, TRIBUTADO, SUSPENSAOIPI, ISENTOIPI, SITTRIBESTADUAL, IPIBASE, MOVIMENTOESTOQUE, ' +
             ' CREDITOPIS, CREDITOCOFINS, CREDITOIPI ' +
             ' FROM EF_NATUREZAOP ' +
             ' WHERE NATUREZAOPID = ' + cdsPdeItemNATUREZAOPID.AsString;

 try
  ExecDynamicProvider( -1, iSQLProd, cdsProd );
  ExecDynamicProvider( -1, iSQLNat, cdsNat );

  if cdsPdeItemQUANTIDADE.AsInteger < 1 then
     raise Exception.Create('Quantidade do produto não informada' );
     
  // Cálculo das base IPI
  cdsPdeItemVLRPRECOTOTAL.Value    := cdsPdeItemQUANTIDADE.Value * cdsPdeItemVLRPRECOUNITARIO.Value;

  // Cálculo das base ICMS
  cdsPdeItemSITTRIBUTARIAESTADUAL.Value := cdsPdeItemSITTRIBUTARIAESTADUAL.Value + cdsNat.FieldByName('SITTRIBESTADUAL').Value;

  // Nota Fiscal diferente da importada
  if cdsPdeTIPONOTA.Value <> 'I' then
     BasesEntradaNormal;

  cdsProd.Close;
  cdsNat.Close;

 finally
  FreeAndNil( cdsProd );
  FreeAndNil( cdsNat );
 end;
end;

procedure TdmEF.CalculoPDSItem;
var cdsProd, cdsNat : TClientDataSet;
    iSQLProd, iSQLNat : String;
begin
 cdsProd := Nil;
 cdsNat  := Nil;

 if ( cdsPdsItemQUANTIDADE.Value < 1 ) or ( cdsPdsItemPRODUTOID.Value < 0 ) then
    exit;

 iSQLProd := 'SELECT EMPRESAID, PRODUTOID, SUSPENSAOIPI, ISENTOIPI, ALIQUOTAIPI, ' +
             ' DATAINICIALIPI, DATAFINALIPI, REDUCAOICMS, PRECOVENDAMINIMO ' +
             ' FROM EF_PRODUTO ' +
             ' WHERE EMPRESAID = ' + cdsPdsItemEMPRESAID.AsString +
             '   AND PRODUTOID = ' + cdsPdsItemPRODUTOID.AsString;
 iSQLNat  := 'SELECT NATUREZAOPID, TRIBUTADO, SUSPENSAOIPI, ISENTOIPI, SITTRIBESTADUAL, IPIBASE, MOVIMENTOESTOQUE, ' +
             ' VENDADEFINITIVA ' +
             ' FROM EF_NATUREZAOP ' +
             ' WHERE NATUREZAOPID = ' + cdsPdsNATUREZAOPID.AsString;

 try
  ExecDynamicProvider( -1, iSQLProd, cdsProd );
  ExecDynamicProvider( -1, iSQLNat, cdsNat );

  if cdsProd.IsEmpty then
     raise Exception.Create('Produto não encontrado, o cálculo do imposto será cancelado!');

  if cdsNat.IsEmpty then
     raise Exception.Create('Natureza de Operação não encontrada, o cálculo do imposto será cancelado!');

  // Verificar se o usuário poderá alterar o valor da venda
  if cdsNat.FieldByName('MOVIMENTOESTOQUE').Value = 'N' then
       if cdsNat.FieldByName('VENDADEFINITIVA').AsInteger = 1 then
         if cdsPdsItemVLRPRECOUNITARIO.AsFloat < cdsProd.FieldByName('PRECOVENDAMINIMO').AsFloat then
            if not CheckSenha(dmGsi.UsuarioAtivo,'Pedido de Saída','Valor de Venda Abaixo Minimo',True) then
               raise Exception.Create('Valor de venda atingiu o preco de mínimo de venda!' );

  // Cálculo das base IPI
  cdsPdsItemVLRPRECOTOTAL.Value    := cdsPdsItemVLRPRECOUNITARIO.AsFloat * cdsPdsItemQUANTIDADE.Value;
  cdsPdsItemVLRBASEIPI.Value       := 0;
  cdsPdsItemALIQUOTAIPI.AsCurrency := cdsProd.FieldByName('ALIQUOTAIPI').AsCurrency;
  cdsPdsItemVLRIPI.Value           := 0;
  cdsPdsItemVLRISENTASIPI.Value    := 0;
  cdsPdsItemVLROUTRASIPI.Value     := 0;
  cdsPdsItemDATAINICIALIPI.Value   := cdsProd.FieldByName('DATAINICIALIPI').AsSQLTimeStamp;
  cdsPdsItemDATAFINALIPI.Value     := cdsProd.FieldByName('DATAFINALIPI').AsSQLTimeStamp;

  // Tributado
  if cdsNat.FieldByName('TRIBUTADO').AsInteger = 1 then
     begin
      cdsPdsItemVLRBASEIPI.Value       := cdsPdsItemVLRPRECOTOTAL.Value;
      cdsPdsItemVLRIPI.Value           := cdsPdsItemVLRPRECOTOTAL.Value * ( cdsPdsItemALIQUOTAIPI.AsCurrency / 100 );
      cdsPdsItemVLRISENTASIPI.Value    := 0;
      cdsPdsItemVLROUTRASIPI.Value     := 0;
      cdsPdsItemTIPOIPI.Value          := 'T';
     end;

  // Suspensão / Outras IPI
  if ( cdsProd.FieldByName('SUSPENSAOIPI').AsInteger = 1 ) or
     ( cdsNat.FieldByName('SUSPENSAOIPI').AsInteger = 1 ) then
     begin
      cdsPdsItemVLRBASEIPI.Value       := 0;
      cdsPdsItemVLRIPI.Value           := 0;
      cdsPdsItemVLRISENTASIPI.Value    := 0;
      cdsPdsItemVLROUTRASIPI.Value     := cdsPdsItemVLRPRECOTOTAL.Value;
      cdsPdsItemTIPOIPI.Value          := 'S';
     end;

  // Isento IPI / Não Tributado
  if ( cdsProd.FieldByName('ISENTOIPI').AsInteger = 1 ) or
     ( cdsNat.FieldByName('ISENTOIPI').AsInteger = 1 ) then
     begin
      cdsPdsItemVLRBASEIPI.Value       := 0;
      cdsPdsItemVLRIPI.Value           := 0;
      cdsPdsItemVLRISENTASIPI.Value    := cdsPdsItemVLRPRECOTOTAL.Value;
      cdsPdsItemVLROUTRASIPI.Value     := 0;
      cdsPdsItemTIPOIPI.Value          := 'I';
     end;

  // Cálculo das base ICMS
  cdsPdsItemSITTRIBUTARIAESTADUAL.Value := cdsPdsItemSITTRIBUTARIAESTADUAL.Value + cdsNat.FieldByName('SITTRIBESTADUAL').AsString;

  case cdsNat.FieldByName('SITTRIBESTADUAL').AsInteger of
  0   : begin
         if cdsNat.FieldByName('IPIBASE').AsInteger = 1 then
            cdsPdsItemVLRBASEICMS.Value := cdsPdsItemVLRPRECOTOTAL.Value + ( ( cdsPdsItemVLRPRECOTOTAL.Value * cdsProd.FieldByName('ALIQUOTAIPI').AsCurrency ) / 100 )
         else
            cdsPdsItemVLRBASEICMS.Value := cdsPdsItemVLRPRECOTOTAL.Value;

         cdsPdsItemVLRICMS.Value := ( cdsPdsItemVLRBASEICMS.Value / 100 ) * cdsPdsItemALIQUOTAICMS.AsCurrency;
        end;
  // ICMS com redução
  20  : begin
         cdsPdsItemPORCREDUCAOICMS.Value := cdsProd.FieldByName('REDUCAOICMS').AsInteger;
         if cdsNat.FieldByName('IPIBASE').AsInteger = 1 then
            cdsPdsItemVLRBASEICMS.Value  := ( ( cdsPdsItemVLRPRECOTOTAL.Value + cdsPdsItemVLRIPI.Value ) / 100 ) * ( 100 - cdsPdsItemPORCREDUCAOICMS.Value)
         else
            cdsPdsItemVLRBASEICMS.Value  := ( cdsPdsItemVLRPRECOTOTAL.Value / 100 ) * ( 100 - cdsProd.FieldByName('REDUCAOICMS').AsFloat );

         cdsPdsItemVLRISENTASICMS.Value  := cdsPdsItemVLRPRECOTOTAL.Value - cdsPdsItemVLRBASEICMS.Value;
        end;

  // ICMS isento
  40..41:  cdsPdsItemVLRISENTASICMS.Value := cdsPdsItemVLRPRECOTOTAL.Value;

  // ICMS suspenso
  50..90: if cdsNat.FieldByName('IPIBASE').AsInteger = 1 then
             cdsPdsItemVLROUTRASICMS.Value  := cdsPdsItemVLRPRECOTOTAL.Value + cdsPdsItemVLRIPI.Value
          else
             cdsPdsItemVLROUTRASICMS.Value  := cdsPdsItemVLRPRECOTOTAL.Value

  end;

  // Calculo do PIS / COFINS para devolução de venda e venda definitiva
 if ( cdsNat.FieldByName('MOVIMENTOESTOQUE').Value = 'V' ) or
    ( cdsNat.FieldByName('VENDADEFINITIVA').AsInteger = 1 ) then
    begin
     cdsPdsItemALIQUOTAPIS.AsVariant    := shdcnnEF.AppServer.IAliquotaImposto( 'PIS' );
     cdsPdsItemALIQUOTACOFINS.AsVariant := shdcnnEF.AppServer.IAliquotaImposto( 'COFINS' );

     cdsPdsItemVLRPIS.Value             := ( cdsPdsItemVLRPRECOTOTAL.Value / 100 ) * cdsPdsItemALIQUOTAPIS.AsCurrency;
     cdsPdsItemVLRCOFINS.Value          := ( cdsPdsItemVLRPRECOTOTAL.Value / 100 ) * cdsPdsItemALIQUOTACOFINS.AsCurrency;
    end;

  cdsProd.Close;
  cdsNat.Close;

 finally
  FreeAndNil( cdsProd );
  FreeAndNil( cdsNat );
 end;
end;


procedure TdmEF.CalculoCallItem;
var cdsProd : TClientDataSet;
    iSQLProd : String;
begin
 cdsProd := Nil;

 if ( cdsCallItemQUANTIDADE.Value < 1 ) or ( cdsCallItemPRODUTOID.Value < 0 ) then
    exit;

 iSQLProd := 'SELECT EMPRESAID, PRODUTOID, SUSPENSAOIPI, ISENTOIPI, ALIQUOTAIPI, ' +
             ' DATAINICIALIPI, DATAFINALIPI, REDUCAOICMS, PRECOVENDAMINIMO ' +
             ' FROM EF_PRODUTO ' +
             ' WHERE EMPRESAID = ' + cdsCallItemEMPRESAID.AsString +
             '   AND PRODUTOID = ' + cdsCallItemPRODUTOID.AsString;

 try
  ExecDynamicProvider( -1, iSQLProd, cdsProd );

  if cdsProd.IsEmpty then
     raise Exception.Create('Produto não encontrado, o cálculo do imposto será cancelado!');


  // Cálculo das base IPI
  cdsCallItemVLRPRECOTOTAL.Value    := cdsCallItemVLRPRECOUNITARIO.AsFloat * cdsCallItemQUANTIDADE.Value;

  cdsProd.Close;

 finally
  FreeAndNil( cdsProd );
 end;
end;

procedure TdmEF.cdsEmpresafterPost(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmEF.cdsEmpresaReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
 Action := HandleReconcileError( DataSet, UpdateKind, E);
end;

procedure TdmEF.cdsEntidadeFILIALIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsFilial.ProviderName ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsEntidadeL_NOMEFANTASIA.Value := Cds.FieldByName('NOMEFANTASIA').AsString;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsEntidadeDEPARTAMENTOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsDepartamento.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsEntidadeL_DESCRICAODEPTO.Value := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsEntidadeL_DESCRICAODEPTO.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;
  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsProdutoGENEROITEMIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsGeneroItem.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsProdutoL_DESCRICAOGENEROITEM.Value := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsProdutoL_DESCRICAOGENEROITEM.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsProdutoGRUPOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsGrupo.ProviderName ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsProdutoL_SIGLAGRUPO.Value      := Cds.FieldByName('SIGLAGRUPO').AsString;
      cdsProdutoL_DESCRICAO_GRUPO.Value := Cds.FieldByName('DESCRICAO').AsString;
     end
  else
     begin
      cdsProdutoL_SIGLAGRUPO.Clear;
      cdsProdutoL_DESCRICAO_GRUPO.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsProdutoSUBGRUPOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + QuotedStr( TField( Sender ).AsString );
 iSQL    := AnalisarAddSQL( LocateSQL( cdsSubGrupo.ProviderName ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsProdutoL_DESCRICAO_SUBGRUPO.Value := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsProdutoL_DESCRICAO_SUBGRUPO.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsKardexNATUREZAOPIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'EF_NATUREZAOP.NATUREZAOPID = ' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsNaturezaOp.ProviderName ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsKardexL_DESCRICAOOPERACAOUSUARIO.Value := Cds.FieldByName('DESCRICAOOPERACAOUSUARIO').AsString;
      cdsKardexL_CFOP.Value                     := Cds.FieldByName('CFOP').AsString;
     end
  else
     begin
      cdsKardexL_DESCRICAOOPERACAOUSUARIO.Clear;
      cdsKardexL_CFOP.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsKardexPRODUTOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'EF_PRODUTO.EMPRESAID = ' + cdsKardexEMPRESAID.AsString + ' AND ' +
            'EF_PRODUTO.' + Sender.FieldName + ' = ' + Sender.AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsProduto.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsKardexL_DESCRICAOPORTUGUES.Value := Cds.FieldByName('DESCRICAOPORTUGUES').AsString
  else
     begin
      cdsKardexL_DESCRICAOPORTUGUES.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsLocalEntrNewRecord(DataSet: TDataSet);
begin
 cdsLocalEntrLOCALENTRID.Value := ContadorDB('EF_LOCALENTR','LOCALENTRID','');
 cdsLocalEntrUSUARIO.Value     := dmGsi.UsuarioAtivo;
end;

procedure TdmEF.cdsMunicipioIBGENewRecord(DataSet: TDataSet);
begin
 cdsMunicipioIBGEUSUARIO.Value := dmGsi.UsuarioAtivo;
end;

procedure TdmEF.cdsPdeNATUREZAOPIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'EF_NATUREZAOP.NATUREZAOPID =' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsNaturezaOp.ProviderName ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsPdeL_DESCRICAOOPERACAOUSUARIO.Value := Cds.FieldByName('DESCRICAOOPERACAOUSUARIO').AsString;
      cdsPdeL_CFOP.Value                     := Cds.FieldByName('CFOP').AsString;

      if Cds.FieldByName('OBSERVACAOID').AsInteger > 0 then
         cdsPdeOBSERVACAOID.Value               := Cds.FieldByName('OBSERVACAOID').AsInteger;

      { *** Verificar se eh isento de inscricao estadual ( Sintegra ) *** }
      if Cds.FieldByName('ISENTOINSCRICAOESTADUAL').AsInteger = 1 then
         cdsPdeCONTRIBUINTEICMS.AsInteger := 0;
     end
  else
     begin
      cdsPdeL_DESCRICAOOPERACAOUSUARIO.Clear;
      cdsPdeL_CFOP.Clear;
      cdsPdeOBSERVACAOID.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsPdeTRANSPORTADORIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'ENTIDADEID =' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsEntidade.ProviderName ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsPdeL_NOMETRANSPORTADOR.Value := Cds.FieldByName('NOME').AsString
  else
     begin
      cdsPdeL_NOMETRANSPORTADOR.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsNfeNATUREZAOPIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'EF_NATUREZAOP.NATUREZAOPID =' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsNaturezaOp.ProviderName ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsNfeL_CFOP.Value                     := Cds.FieldByName('CFOP').AsString;
      cdsNfeL_DESCRICAOOPERACAONOTA.Value    := Cds.FieldByName('DESCRICAOOPERACAONOTA').AsString;
      cdsNfeL_DESCRICAOOPERACAOUSUARIO.Value := Cds.FieldByName('DESCRICAOOPERACAOUSUARIO').AsString;
     end
  else
     begin
      cdsNfeL_CFOP.Clear;
      cdsNfeL_DESCRICAOOPERACAONOTA.Clear;
      cdsNfeL_DESCRICAOOPERACAOUSUARIO.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;

end;

procedure TdmEF.cdsPdsTRANSPORTADORIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 if cdsPdsTRANSPORTADORID.AsInteger < 1 then
    exit;
    
 Cds     := nil;
 InstSQL := 'EF_ENTIDADE.ENTIDADEID =' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsEntidade.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsPdsL_NOMETRANSPORTADOR.Value := Cds.FieldByName('NOMEFANTASIA').AsString
  else
     begin
      cdsPdsL_NOMETRANSPORTADOR.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsNfsNATUREZAOPIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'EF_NATUREZAOP.NATUREZAOPID =' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsNaturezaOp.ProviderName ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsNfsL_DESCRICAOOPERACAOUSUARIO.Value := Cds.FieldByName('DESCRICAOOPERACAOUSUARIO').AsString;
      cdsNfsL_DESCRICAOOPERACAONOTA.Value := Cds.FieldByName('DESCRICAOOPERACAONOTA').AsString;
      cdsNfsL_CFOP.Value := Cds.FieldByName('CFOP').AsString;
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsEmpresaAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmEF.cdsEmpresaCPF_CNPJValidate(Sender: TField);
begin
 if not ValidCnPJ_CnPF( TField( Sender ).Value ) then
    raise Exception.Create( 'CPF / CNPJ inválido.' );
end;

procedure TdmEF.cdsFilialCPF_CNPJValidate(Sender: TField);
begin
 if not ValidCnPJ_CnPF( TField( Sender ).Value ) then
    raise Exception.Create( 'CPF / CNPJ inválido.' );
end;

procedure TdmEF.cdsGeneroItemNewRecord(DataSet: TDataSet);
begin
 cdsGeneroItemUSUARIO.Value := dmGsi.UsuarioAtivo;
end;

procedure TdmEF.cdsEntidadeCPFCNPJValidate(Sender: TField);
var cds : TClientDataSet;
    iSQL : String;
begin
 cds  := Nil;

 iSQL := 'SELECT ENTIDADEID, CPFCNPJ ' +
         ' FROM EF_ENTIDADE ' +
         ' WHERE CPFCNPJ = ' + QuotedStr( cdsEntidadeCPFCNPJ.AsString );
 try
  ExecDynamicProvider( -1, iSQL, cds );

  if cds.RecordCount > 0 then
     raise Exception.Create('Entidade já está cadastrado com o número:' + cds.FieldByName('ENTIDADEID').AsString );

  if not ValidCnPJ_CnPF( TField( Sender ).Value ) then
     raise Exception.Create( 'CPF / CNPJ inválido.' );

  cds.Close;
 finally
  FreeAndNil( cds );
 end;

end;

procedure TdmEF.cdsEntidadeCPFCNPJGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
 if not Sender.IsNull then
    Text := FormatCNPF_CNPJ_CCM( Sender.AsString );
end;

procedure TdmEF.cdsFilialCPF_CNPJGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
 if not Sender.IsNull then
    Text := FormatCNPF_CNPJ_CCM( Sender.AsString );
end;

procedure TdmEF.cdsEmpresaCPF_CNPJGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
 if not Sender.IsNull then
    Text := FormatCNPF_CNPJ_CCM( Sender.AsString );
end;

procedure TdmEF.cdsNaturezaOpNATUREZAOPRETORNOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'EF_NATUREZAOP.NATUREZAOPID =' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsNaturezaOp.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsNaturezaOpL_DESCRNATRETORNO.Value := Cds.FieldByName('DESCRICAOOPERACAOUSUARIO').AsString
  else
     begin
      cdsNaturezaOpL_DESCRNATRETORNO.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsNaturezaOpOBSERVACAOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsObservacao.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsNaturezaOpL_DESCRICAOOBSERVACAO.Value := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsNaturezaOpL_DESCRICAOOBSERVACAO.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsNaturezaOpSIGLANATUREZAIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsSiglaNatureza.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsNaturezaOpL_DESCRICAOSIGLA.Value    := Cds.FieldByName('DESCRICAORESUMIDA').AsString;
      cdsNaturezaOpL_DESCRICAORESUMIDA.Value := Cds.FieldByName('DESCRICAO').AsString;
     end
  else
     begin
      cdsNaturezaOpL_DESCRICAOSIGLA.Clear;
      cdsNaturezaOpL_DESCRICAORESUMIDA.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;
  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsNaturezaEmpresaEMPRESAIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsEmpresa.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsNaturezaEmpresaL_NOMEFANTASIA.Value := Cds.FieldByName('NOMEFANTASIA').AsString
  else
     begin
      cdsNaturezaEmpresaL_NOMEFANTASIA.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;
  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsNaturezaEmpresaNewRecord(DataSet: TDataSet);
begin
 cdsNaturezaEmpresaUSUARIO.Value   := dmGsi.UsuarioAtivo;
end;

procedure TdmEF.cdsProdutoNewRecord(DataSet: TDataSet);
var iSql : String;
    Cds : TClientDataSet;
begin
 cdsProdutoATIVO.Value              := 1;
 cdsProdutoORIGEM.Value             := 'I';
 cdsProdutoNOVOUSADO.Value          := 'N';
 cdsProdutoEMPRESAID.Value          := EmpresaAtualId;
 cdsProdutoSUSPENSAOIPI.Value       := 0;
 cdsProdutoISENTOIPI.Value          := 0;
 cdsProdutoESTOQUENOVO.Value        := 0;
 cdsProdutoESTOQUEREVISADO.Value    := 0;
 cdsProdutoESTOQUEDEMO.Value        := 0;
 cdsProdutoESTOQUEFISICO.Value      := 0;
 cdsProdutoESTOQUEPEDENTRADA.Value  := 0;
 cdsProdutoESTOQUEPEDSAIDA.Value    := 0;
 cdsProdutoESTOQUEEMTERCEIRO.Value  := 0;
 cdsProdutoESTOQUEDETERCEIRO.Value  := 0;
 cdsProdutoESTOQUEMINIMO.Value      := 0;
 cdsProdutoESTOQUEEMPENHO.Value     := 0;
 cdsProdutoESTOQUEQUARENTENA.Value  := 0;
 cdsProdutoESTOQUEVALE.Value        := 0;
 cdsProdutoESTOQUEESTORNO.Value     := 0;
 cdsProdutoESTOQUERESERVA.Value     := 0;
 cdsProdutoESTOQUETOTAL.Value       := 0;
 cdsProdutoCUBAGEM.AsCurrency       := 0;
 cdsProdutoUSUARIO.Value            := dmGsi.UsuarioAtivo;

 iSQL := 'SELECT NVL( MAX( PRODUTOID ), 0 ) ' +
         ' FROM EF_PRODUTO ' +
         ' WHERE EMPRESAID = ' + cdsProdutoEMPRESAID.AsString +
         '  AND PRODUTOID < 9000';


 Cds := TClientDataSet.Create( nil );
 try
  ExecDynamicProvider( -1, iSQL, Cds );
  if not Cds.IsEmpty then
     cdsProdutoPRODUTOID.Value := Cds.Fields[0].Value + 1;
 finally
  Cds.Close;
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsEntidadeCEPIDValidate(Sender: TField);
var Cds  : TClientDataSet;
    iSql, Endereco : String;
begin
 iSQL := SQLCEPPadrao +
         ' AND CEPID = ' + cdsEntidadeCEPID.AsString;

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
          cdsEntidadeENDERECO.Value  := SubstituiString( Endereco, '  ','' );
          cdsEntidadeBAIRRO.Value    := cds.FieldByName('BAIRROLOGRADOURO').AsString;
          cdsEntidadeCIDADE.Value    := cds.FieldByName('NOMELOCALIDADE').AsString;
          cdsEntidadeSIGLAUFID.Value := cds.FieldByName('SIGLAUFID').AsString;
          cdsEntidadePAIS.Value      := cds.FieldByName('NOMEPAISPORTUGUES').AsString;
         end;
     end
  else
    MessageDlg('Código Postal (CEP) está inválido.', mtInformation, [mbOk], 0 );


 finally
  Cds.Close;
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsEntidadeCEPCOBIDValidate(Sender: TField);
var Cds  : TClientDataSet;
    iSql, Endereco : String;
begin
 iSQL := SQLCEPPadrao +
         ' AND CEPID = ' + cdsEntidadeCEPCOBID.AsString;

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
          cdsEntidadeENDERECOCOB.Value  := SubstituiString( Endereco, '  ','' );
          cdsEntidadeBAIRROCOB.Value    := cds.FieldByName('BAIRROLOGRADOURO').AsString;
          cdsEntidadeCIDADECOB.Value    := cds.FieldByName('NOMELOCALIDADE').AsString;
          cdsEntidadeSIGLAUFCOBID.Value := cds.FieldByName('SIGLAUFID').AsString;
          cdsEntidadePAISCOB.Value      := cds.FieldByName('NOMEPAISPORTUGUES').AsString;
         end;
     end
  else
    MessageDlg('Código Postal (CEP) está inválido.', mtInformation, [mbOk], 0);

 finally
  Cds.Close;
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsEntidadeGrupoNewRecord(DataSet: TDataSet);
begin
 cdsEntidadeGrupoCATEGORIAID.Value := cdsCategoriaCATEGORIAID.Value;
 cdsEntidadeGrupoUSUARIO.Value     := dmGsi.UsuarioAtivo;
end;

procedure TdmEF.cdsEntidadeHORASCFGTRABIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( dmRD.cdsHorasCfgTrab.ProviderName ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsEntidadeL_DESCRICAOHORASCFGTRAB.Value := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsEntidadeL_DESCRICAOHORASCFGTRAB.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsEntidadeGrupoCATEGORIAIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsCategoria.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsEntidadeGrupoL_DESCRICAO.Value := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsEntidadeGrupoL_DESCRICAO.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;
  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsDepartamentoFILIALIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsFilial.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsDepartamentoL_FILIAL.Value := Cds.FieldByName('NOMEFANTASIA').AsString
  else
     begin
      cdsDepartamentoL_FILIAL.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsContaContabilNewRecord(DataSet: TDataSet);
begin
 DataSet.FieldByName('USUARIO').AsString := dmGsi.UsuarioAtivo;
end;

procedure TdmEF.cdsNaturezaJuridicaCATEGJURIDICAIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsCategoria.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsNaturezaJuridicaL_CATEGJURIDICA.Value := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsNaturezaJuridicaL_CATEGJURIDICA.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsEntidadeNATUREZAJURIDICAIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsNaturezaJuridica.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsEntidadeL_NATUREZAJURIDICA.Value := Cds.FieldByName('DESCRICAO').AsString;

      // Atualizar a Categoria Jurídica de outra tabela
      InstSQL := 'CATEGJURIDICAID = ' + Cds.FieldByName('CATEGJURIDICAID').AsString;
      iSQL    := AnalisarAddSQL( LocateSQL( cdsCategJuridica.ProviderName ),
                                 InstSQL );
      ExecDynamicProvider( -1, iSQL, Cds );

      cdsEntidadeL_CATEGJURIDICA.Value    := Cds.FieldByName('DESCRICAO').AsString;
     end
  else
     begin
      cdsEntidadeL_NATUREZAJURIDICA.Clear;
      cdsEntidadeL_CATEGJURIDICA.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsServicoRECEITAIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsReceita.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsServicoL_SIGLARECEITA.Value     := Cds.FieldByName('SIGLA').AsString;
      cdsServicoL_DESCRICAORECEITA.Value := Cds.FieldByName('DESCRICAO').AsString;
     end
  else
     begin
      cdsServicoL_SIGLARECEITA.Clear;
      cdsServicoL_DESCRICAORECEITA.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsServicoGRUPOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsGrupo.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsServicoL_SIGLAGRUPO.Value     := Cds.FieldByName('SIGLAGRUPO').AsString;
      cdsServicoL_DESCRICAOGRUPO.Value := Cds.FieldByName('DESCRICAO').AsString;
     end
  else
     begin
      cdsServicoL_SIGLAGRUPO.Clear;
      cdsServicoL_DESCRICAOGRUPO.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsProdutoFORNECEDORIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'ENTIDADEID =' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsEntidade.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsProdutoL_NOMEFORNECEDOR.Value := Cds.FieldByName('NOME').AsString
  else
     begin
      cdsProdutoL_NOMEFORNECEDOR.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsProdutoUNIDADEIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + QuotedStr( TField( Sender ).AsString );
 iSQL    := AnalisarAddSQL( LocateSQL( cdsUnidade.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsProdutoL_DESCRICAOUNIDADE.Value := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsProdutoL_DESCRICAOUNIDADE.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsKardexNewRecord(DataSet: TDataSet);
begin
 cdsKardexKARDEXID.Value := ExecSequencia( 'SQ_EF_KARDEX_KardexId');
 cdsKardexUSUARIO.Value  := dmGsi.UsuarioAtivo;
end;

procedure TdmEF.cdsPdeMODELODOCFISCALIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsModeloDocFiscal.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsPdeL_MODELODOCFISCAL.Value := Cds.FieldByName('MODELO').AsString
  else
     begin
      cdsPdeL_MODELODOCFISCAL.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsPdeENTIDADEIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'ENTIDADEID =' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsEntidade.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsPdeNOME.Value             := Cds.FieldByName('NOME').AsString;
      cdsPdeCEPID.Value            := Cds.FieldByName('CEPID').AsInteger;
      cdsPdeNUMERO.Value           := Cds.FieldByName('NUMERO').AsString;
      cdsPdeCOMPLEMENTO.Value      := Cds.FieldByName('COMPLEMENTO').AsString;
      cdsPdeENDERECO.Value         := Cds.FieldByName('ENDERECO').AsString;
      cdsPdeBAIRRO.Value           := cds.FieldByName('BAIRRO').AsString;
      cdsPdeCIDADE.Value           := cds.FieldByName('CIDADE').AsString;
      cdsPdeSIGLAUFID.Value        := cds.FieldByName('SIGLAUFID').AsString;
      cdsPdePAIS.Value             := cds.FieldByName('PAIS').AsString;
      cdsPdeCONTRIBUINTEICMS.Value := cds.FieldByName('CONTRIBUINTEICMS').AsInteger;
     end
  else
     begin
      cdsPdeNOME.Clear;
      cdsPdeCEPID.Clear;
      cdsPdeNUMERO.Clear;
      cdsPdeCOMPLEMENTO.Clear;
      cdsPdeENDERECO.Clear;
      cdsPdeBAIRRO.Clear;
      cdsPdeCIDADE.Clear;
      cdsPdeSIGLAUFID.Clear;
      cdsPdePAIS.Clear;
      cdsPdeCONTRIBUINTEICMS.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsPdeOBSERVACAOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;

 if ( cdsPdeOBSERVACAOID.IsNull ) or ( cdsPdeOBSERVACAOID.Value < 1 ) then
    exit;

 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsObservacao.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsPdeDESCRICAOOBSERVACAO.Value := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsPdeDESCRICAOOBSERVACAO.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsPdeNewRecord(DataSet: TDataSet);
var iSql, iUpd : String;
    Cds : TClientDataSet;
begin
 Cds  := nil;
 iSql := 'SELECT EMPRESAID, NUMPDE FROM EF_EMPRESA WHERE EMPRESAID = ' + IntToStr( EmpresaAtualId );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if Cds.IsEmpty then
     Raise Exception.Create( 'O Campo EmpresaID  : ' + IntToStr( EmpresaAtualId ) + ', está inválido!' );

  NovoRegPDE := True;
  cdsPdePDEID.Value                 := cds.FieldByName('NUMPDE').Value;

  iUpd := 'UPDATE EF_EMPRESA SET NUMPDE = NUMPDE + 1 WHERE EMPRESAID = ' +
           IntToStr( EmpresaAtualId );

  ExecDML( iUpd );

  cdsPdeEMPRESAID.Value             := EmpresaAtualId;
  cdsPdeDATAPEDIDO.AsDateTime       := Now;
  cdsPdeDATAPREVISAO.AsDateTime     := pCnnMain.AppServer.IServerDate;
  cdsPdeMOVIMENTAESTOQUE.Value      := 1;
  cdsPdeCONTRIBUINTEICMS.Value      := 0;
  cdsPdeTIPONOTA.Value              := 'C';
  cdsPdeLIBCHEFIA.Value             := 0;
  cdsPdeLIBFINANCEIRO.Value         := 0;
  cdsPdeLIBCONTABIL.Value           := 0;
  cdsPdeMODALIDADEFRETE.Value       := 'D';
  cdsPdeEMBMARCA.Value              := 'TOSHIBA';
  cdsPdeEMBNUMERO.Value             := 1;
  cdsPdeEMBPESOBRUTO.Value          := 0;
  cdsPdeEMBPESOLIQUIDO.Value        := 0;
  cdsPdeVLRFRETE.Value              := 0;
  cdsPdeVLRSEGURO.Value             := 0;
  cdsPdeVLRDESPESAACESSORIA.Value   := 0;
  cdsPdeVLRTOTALCOFINS.Value        := 0;
  cdsPdeVLRTOTALPIS.Value           := 0;
  cdsPdeVLRTOTALCREDCOFINS.Value    := 0;
  cdsPdeVLRTOTALCREDPIS.Value       := 0;
  cdsPdeVLRTOTALBASEICMS.Value      := 0;
  cdsPdeVLRTOTALICMS.Value          := 0;
  cdsPdeVLRTOTALISENTASICMS.Value   := 0;
  cdsPdeVLRTOTALOUTRASICMS.Value    := 0;
  cdsPdeVLRTOTALBASEIPI.Value       := 0;
  cdsPdeVLRTOTALIPI.Value           := 0;
  cdsPdeVLRTOTALISENTASIPI.Value    := 0;
  cdsPdeVLRTOTALOUTRASIPI.Value     := 0;
  cdsPdeVLRTOTALPRODUTO.Value       := 0;
  cdsPdeVLRTOTALNOTA.Value          := 0;
  cdsPdeUSUARIO.Value               := dmGsi.UsuarioAtivo;
  NovoRegPDE                        := False;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsPdeItemNATUREZAOPIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'EF_NATUREZAOP.NATUREZAOPID =' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsNaturezaOp.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsPdeItemL_CFOP.Value                     := Cds.FieldByName('CFOP').AsString;
      cdsPdeItemL_DESCRICAOOPERACAOUSUARIO.Value := Cds.FieldByName('DESCRICAOOPERACAOUSUARIO').AsString;
      cdsPdeItemL_DESCRICAOOPERACAONOTA.Value    := Cds.FieldByName('DESCRICAOOPERACAONOTA').AsString;
//      cdsPdeItemOBSERVACAOID.Value               := Cds.FieldByName('OBSERVACAOID').AsInteger;
     end
  else
     begin
      cdsPdeItemL_CFOP.Clear;
      cdsPdeItemL_DESCRICAOOPERACAOUSUARIO.Clear;
      cdsPdeItemL_DESCRICAOOPERACAONOTA.Clear;
//      cdsPdeItemOBSERVACAOID.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsPdeItemOBSERVACAOIDValidate(Sender: TField);
{var InstSQL, iSql : String;
    Cds : TClientDataSet;}
begin
{ Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsObservacao.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsPdeItemDESCRICAOOBSERVACAO.Value := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsPdeItemDESCRICAOOBSERVACAO.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;}
end;

procedure TdmEF.cdsPdeItemPRODUTOIDValidate(Sender: TField);
var InstSQL, iSql, iSqlVrfItem : String;
    Cds, cdsVrfItem : TClientDataSet;
begin
 Cds         := nil;
 cdsVrfItem  := Nil;
 InstSQL     := 'EF_PRODUTO.EMPRESAID = ' + cdsPdeItemEMPRESAID.AsString + ' AND ' +
                'EF_PRODUTO.' + Sender.FieldName + ' = ' + Sender.AsString;
 iSQL        := AnalisarAddSQL( LocateSQL( 'dsprvProduto' ),
                InstSQL );

 iSqlVrfItem := 'SELECT EMPRESAID, PDEID, ITEMID, PRODUTOID  '  +
                ' FROM EF_PDEITEM ' +
                ' WHERE' +
                '  EMPRESAID     = ' + cdsPdeItemEMPRESAID.AsString +
                '  AND PDEID     = ' + cdsPdeItemPDEID.AsString +
                '  AND ITEMID    = ' + cdsPdeItemITEMID.AsString +
                '  AND PRODUTOID = ' + IntToStr( cdsPdeItemPRODUTOID.OldValue );

 try
  if cdsPdeItemEMPRESAID.Value <> cdsPdeEMPRESAID.Value then
     raise Exception.Create('O pedido atual está utilizando a empresa ' + cdsPdeEMPRESAID.AsString + ' e o produto selecionado é da empresa ' + cdsPdeItemEMPRESAID.AsString + #13 +
                            'O item do pedido será bloqueado até normalização da digitação' );

  ExecDynamicProvider( -1, iSQL, Cds );

  ExecDynamicProvider( -1, iSqlVrfItem, cdsVrfItem  );

  if not cdsVrfItem.IsEmpty then
     raise Exception.Create('O produto não pode ser alterado. Apague o item e cadastre novamente.');

  if not Cds.IsEmpty then
     begin
      if cds.FieldByName('ATIVO').AsInteger = 0 then
         raise Exception.Create('Produto não está ativo para utilização');

      cdsPdeItemDESCRICAOPRODUTO.Value := Cds.FieldByName('DESCRICAOPORTUGUES').AsString
     end
  else
     begin
      cdsPdeItemDESCRICAOPRODUTO.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  if      cds.FieldByName('ORIGEM').AsString = 'N' then
          cdsPdeItemSITTRIBUTARIAESTADUAL.Value := '0'
  else if cds.FieldByName('ORIGEM').AsString = 'I' then
          cdsPdeItemSITTRIBUTARIAESTADUAL.Value := '1'
  else if cds.FieldByName('ORIGEM').AsString = 'B' then
          cdsPdeItemSITTRIBUTARIAESTADUAL.Value := '2';

  Cds.Close;
  cdsVrfItem.Close;

 finally
  FreeAndNil( Cds );
  FreeAndNil( cdsVrfItem );
 end;
end;

procedure TdmEF.cdsPdeItemNewRecord(DataSet: TDataSet);
var Cds, cdsNat : TClientDataSet;
    iSQL, iSQLNat : String;
begin
 cdsNat  := Nil;
 Cds     := nil;
 iSQL    := 'SELECT NVL( MAX( ITEMID ), 0 ) ' +
            ' FROM EF_PDEITEM ' +
            '  WHERE ' +
            ' EMPRESAID = ' + cdsPdeItemEMPRESAID.AsString +
            ' AND PDEID = ' + cdsPdeItemPDEID.AsString;

 iSQLNat := 'SELECT NATUREZAOPID, MOVIMENTOESTOQUE, SITTRIBESTADUAL ' +
            ' FROM EF_NATUREZAOP ' +
            ' WHERE NATUREZAOPID = ' + cdsPdeNATUREZAOPID.AsString;
 try
  ExecDynamicProvider( -1, iSQL, Cds );
  ExecDynamicProvider( -1, iSQLNat, cdsNat );

  // Inicializar Valores
  if not Cds.IsEmpty then
     cdsPdeItemITEMID.Value   := Cds.Fields[0].Value + 1;

  cds.Close;
  cdsPdeItemNATUREZAOPID.Value        := cdsPdeNATUREZAOPID.Value;

  if not cdsNat.IsEmpty then
     if cdsNat.FieldByName('MOVIMENTOESTOQUE').AsString[1] in ['D','E'] then
        cdsPdeItemRETORNO.Value := 'CR'
     else
        cdsPdeItemRETORNO.Value := 'SR';

  cdsPdeItemQUANTIDADE.Value          := 0;
  cdsPdeItemEMPENHO.Value             := 0;
  cdsPdeItemQUANTIDADEEMPENHO.Value   := 0;
  cdsPdeItemQTDRETORNA.Value          := 0;
  cdsPdeItemVLRBASEICMS.Value         := 0;

  if cdsNat.FieldByName('SITTRIBESTADUAL').AsString = '00' then
     cdsPdeItemALIQUOTAICMS.AsCurrency := shdcnnEF.AppServer.IAliquotaICMS( 'E', cdsPdeEMPRESAID.Value, cdsPdeSIGLAUFID.Value, cdsPdeCONTRIBUINTEICMS.AsInteger )
  else
     cdsPdeItemALIQUOTAICMS.AsCurrency := 0;

  cdsPdeItemVLRICMS.Value             := 0;
  cdsPdeItemVLRISENTASICMS.Value      := 0;
  cdsPdeItemVLROUTRASICMS.Value       := 0;
  cdsPdeItemPORCREDUCAOICMS.Value     := 0;
  cdsPdeItemALIQUOTACOFINS.AsCurrency := 0;
  cdsPdeItemVLRCOFINS.Value           := 0;
  cdsPdeItemVLRCREDCOFINS.Value       := 0;
  cdsPdeItemALIQUOTAPIS.AsCurrency    := 0;
  cdsPdeItemVLRPIS.Value              := 0;
  cdsPdeItemVLRCREDPIS.Value          := 0;
  cdsPdeItemVLRBASEIPI.Value          := 0;
  cdsPdeItemALIQUOTAIPI.AsCurrency    := 0;
  cdsPdeItemVLRIPI.Value              := 0;
  cdsPdeItemVLRISENTASIPI.Value       := 0;
  cdsPdeItemVLROUTRASIPI.Value        := 0;
  cdsPdeItemPRODINCENTIVADO.Value     := 0; 
  cdsPdeItemUSUARIO.Value             := dmGsi.UsuarioAtivo;
  cdsPdeItemPRODUTOID.Tag             := 0;
 finally
  FreeAndNil( Cds );
  FreeAndNil( cdsNat );
 end;
end;

procedure TdmEF.cdsPdeItemBarNewRecord(DataSet: TDataSet);
begin
 cdsPdeItemBarITEMBARID.Value := ContadorDB('EF_PDEITEMBAR','EF_PDEITEMBAR.ITEMBARID','WHERE EMPRESAID = ' + cdsPdeItemEMPRESAID.AsString + 'AND PDEID = ' + cdsPdeItemPDEID.AsString +  ' AND ITEMID = ' + cdsPdeItemITEMID.AsString );
 cdsPdeItemBarUSUARIO.Value   := dmGSI.UsuarioAtivo;
end;

procedure TdmEF.cdsNfEmailNewRecord(DataSet: TDataSet);
begin
 cdsNfEmailDATAGERACAO.AsDateTime := Now;
end;

procedure TdmEF.cdsNfeMODELODOCFISCALIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsModeloDocFiscal.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsNfeL_MODELODOCFISCAL.Value := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsNfeL_MODELODOCFISCAL.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;

end;

procedure TdmEF.cdsNfeTRANSPORTADORIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'ENTIDADEID =' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsEntidade.ProviderName ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsNfeL_NOMETRANSPORTADOR.Value := Cds.FieldByName('NOME').AsString
  else
     begin
      cdsNfeL_NOMETRANSPORTADOR.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;

end;

procedure TdmEF.cdsPdsENTIDADEIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'ENTIDADEID =' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsEntidade.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );
  if not Cds.IsEmpty then
     begin
      // Verificar se existem observações para este aparelho
      if cds.FieldByName('STATUSFINANCEIRO').AsInteger = 1 then
         raise Exception.Create( 'Cliente está bloqueado pelo departamento financeiro.' +
                                 'Msg.:' + Cds.FieldByName('OBSERVACAO').AsString );

      cdsPdsNOME.Value                := Cds.FieldByName('NOME').AsString;
      cdsPdsCEPID.Value               := Cds.FieldByName('CEPID').AsInteger;
      cdsPdsNUMERO.Value              := Cds.FieldByName('NUMERO').AsString;
      cdsPdsCOMPLEMENTO.Value         := Cds.FieldByName('COMPLEMENTO').AsString;
      cdsPdsENDERECO.Value            := Cds.FieldByName('ENDERECO').AsString;
      cdsPdsBAIRRO.Value              := cds.FieldByName('BAIRRO').AsString;
      cdsPdsCIDADE.Value              := cds.FieldByName('CIDADE').AsString;
      cdsPdsSIGLAUFID.Value           := cds.FieldByName('SIGLAUFID').AsString;
      cdsPdsPAIS.Value                := cds.FieldByName('PAIS').AsString;
      cdsPdsENDERECOENTREGA.Value     := Trim( cds.FieldByName('ENDERECOINST').AsString ) + ',' +
                                         Trim( cds.FieldByName('NUMEROINST').AsString ) + ' ' +
                                         Trim( cds.FieldByName('COMPLEMENTOINST').AsString );
      cdsPdsENDERECOCOBRANCA.Value    := Trim( cds.FieldByName('ENDERECOCOB').AsString ) + ',' +
                                         Trim( cds.FieldByName('NUMEROCOB').AsString ) + ' ' +
                                         Trim( cds.FieldByName('COMPLEMENTOCOB').AsString );

      cdsPdsCONTRIBUINTEICMS.Value    := cds.FieldByName('CONTRIBUINTEICMS').AsInteger;
     end
  else
     begin
      cdsPdsNOME.Clear;
      cdsPdsCEPID.Clear;
      cdsPdsNUMERO.Clear;
      cdsPdsCOMPLEMENTO.Clear;
      cdsPdsENDERECO.Clear;
      cdsPdsBAIRRO.Clear;
      cdsPdsCIDADE.Clear;
      cdsPdsSIGLAUFID.Clear;
      cdsPdsPAIS.Clear;
      cdsPdsENDERECOENTREGA.Clear;
      cdsPdsENDERECOCOBRANCA.Clear;
      cdsPdsCONTRIBUINTEICMS.Value := 0;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsPdsNATUREZAOPIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 if cdsPdsNATUREZAOPID.IsNull then
    exit; 

 if cdsPdsItem.RecordCount > 0 then
    raise Exception.Create('Não é permitido mudar a natureza de operação, pois já foram calculados os tributos das mercadorias. ' + #13 +
                           'Apague os produtos e altere a Natureza de Operação' );

 Cds     := nil;
 InstSQL := 'EF_NATUREZAOP.NATUREZAOPID =' + TField( Sender ).AsString;

 if dmEF.cdsPdsOSID.Value <> '' then
    begin
     InstSQL := InstSQL + '  AND EF_NATUREZAOP.NATUREZAOPID IN' +
                          '     (SELECT OS_TIPOOSCFOP.NATUREZAOPID' +
                          '      FROM OS_TIPOOSCFOP' +
                          '      WHERE OS_TIPOOSCFOP.TIPOOSID = ' + QuotedStr( Copy( dmEF.cdsPdsOSID.Value, 13, 1 ) )  + ')';
    end;

 iSQL    := AnalisarAddSQL( LocateSQL( cdsNaturezaOp.ProviderName ),
                            InstSQL );
 try
  try
   ExecDynamicProvider( -1, iSQL, Cds );

   if not Cds.IsEmpty then
      begin
       cdsPdsL_DESCRICAOOPERACAOUSUARIO.Value := Cds.FieldByName('DESCRICAOOPERACAOUSUARIO').AsString;
       cdsPdsL_CFOP.Value                     := Cds.FieldByName('CFOP').AsString;

       if Cds.FieldByName('OBSERVACAOID').AsInteger > 0 then
          cdsPdsOBSERVACAOID.Value               := Cds.FieldByName('OBSERVACAOID').AsInteger;

       // Verificar se eh isento de inscricao estadual ( Sintegra )
       if Cds.FieldByName('ISENTOINSCRICAOESTADUAL').AsInteger = 1 then
          cdsPdsCONTRIBUINTEICMS.AsInteger := 0;

       // Validar Contribuindo do ICMS do PDS com a Natureza de operação
       if Cds.FieldByName('VENDADEFINITIVA').AsInteger = 1 then
          if Cds.FieldByName('CONTRIBUINTEICMS').AsInteger <> cdsPdsCONTRIBUINTEICMS.AsInteger then
             raise Exception.Create( 'Cliente do Pedido campo (Contribuinte do ICMS) é diferente da Natureza de Operação campo (Contribuinte do ICMS).' );
      end
   else
      begin
       cdsPdsL_DESCRICAOOPERACAOUSUARIO.Clear;
       cdsPdsL_CFOP.Clear;
       cdsPdsOBSERVACAOID.Clear;
       raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
      end;

   Cds.Close;

  except
   on E: Exception do
   begin
    cdsPdsL_DESCRICAOOPERACAOUSUARIO.Clear;
    cdsPdsL_CFOP.Clear;
    cdsPdsOBSERVACAOID.Clear;

    raise Exception.Create( E.Message );
   end;
  end;

 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsPdsOBSERVACAOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 if cdsPdsOBSERVACAOID.Value < 1 then
    exit;

 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsObservacao.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsPdsDESCRICAOOBSERVACAO.Value := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsPdsDESCRICAOOBSERVACAO.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;

end;

procedure TdmEF.cdsPdsCONDPAGTOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsCondPagto.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsPdsL_CONDICAOPAGTO.Value    := Cds.FieldByName('DESCRICAO').AsString;
      cdsPdsDESCRICAOCONDPAGTO.Value := Cds.FieldByName('DESCRICAOPAGTO').AsString;
     end
  else
     begin
      cdsPdsL_CONDICAOPAGTO.Clear;
      cdsPdsDESCRICAOCONDPAGTO.Clear;

      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsPdsNewRecord(DataSet: TDataSet);
var iSql, iUpd : String;
    Cds : TClientDataSet;
begin
 Cds  := nil;
 iSql := 'SELECT EMPRESAID, NUMPDS FROM EF_EMPRESA WHERE EMPRESAID = ' + IntToStr( EmpresaAtualId );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if Cds.IsEmpty then
     Raise Exception.Create( 'O Campo EmpresaID  : ' + IntToStr( EmpresaAtualId ) + ', está inválido!' );

  NovoRegPDS        := True;
  cdsPdsPDSID.Value := cds.FieldByName('NUMPDS').Value;

  iUpd := 'UPDATE EF_EMPRESA SET NUMPDS = NUMPDS + 1 WHERE EMPRESAID = ' +
           IntToStr( EmpresaAtualId );

  ExecDML( iUpd );

  cdsPdsEMPRESAID.Value             := EmpresaAtualId;
  cdsPdsDATAPEDIDO.AsDateTime       := Now;
  cdsPdsSTATUS.Value                := 0;
  cdsPdsPRENOTA.Value               := 0;
  cdsPdsTIPONOTAENTRADA.Value       := 'T';
  cdsPdsTIPONOTA.Value              := 'A';
  cdsPdsLIBCHEFIA.Value             := 0;
  cdsPdsLIBFINANCEIRO.Value         := 0;
  cdsPdsLIBCONTABIL.Value           := 0;
  cdsPdsMODALIDADEFRETE.Value       := 'E';
  cdsPdsEMBMARCA.Value              := 'TOSHIBA';
  cdsPdsEMBNUMERO.Value             := 1;
  cdsPdsVLRFRETE.Value              := 0;
  cdsPdsVLRSEGURO.Value             := 0;
  cdsPdsVLRDESPESAACESSORIA.Value   := 0;
  cdsPdsVLRTOTALSERVICO.Value       := 0;
  cdsPdsVLRTOTALISS.Value           := 0;
  cdsPdsVLRTOTALCOFINS.Value        := 0;
  cdsPdsVLRTOTALPIS.Value           := 0;
  cdsPdsVLRTOTALBASEICMS.Value      := 0;
  cdsPdsVLRTOTALICMS.Value          := 0;
  cdsPdsVLRTOTALISENTASICMS.Value   := 0;
  cdsPdsVLRTOTALOUTRASICMS.Value    := 0;
  cdsPdsVLRTOTALBASEIPI.Value       := 0;
  cdsPdsVLRTOTALIPI.Value           := 0;
  cdsPdsVLRTOTALISENTASIPI.Value    := 0;
  cdsPdsVLRTOTALOUTRASIPI.Value     := 0;
  cdsPdsVLRTOTALPRODUTO.Value       := 0;
  cdsPdsVLRTOTALNOTA.Value          := 0;
  cdsPdsVLRTOTALRETCOFINS.Value     := 0;
  cdsPdsVLRTOTALRETPIS.Value        := 0;
  cdsPdsVLRTOTALRETCSLL.Value       := 0;
  cdsPdsVLRTOTALRETCSLL.Value       := 0;
  cdsPdsVLRTOTALRETIRPJ.Value       := 0;
  cdsPdsVLRTOTALRETIRPF.Value       := 0;


  cdsPdsUSUARIO.Value               := dmGsi.UsuarioAtivo;
  NovoRegPDS                        := False;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsPdsItemNewRecord(DataSet: TDataSet);
var Cds : TClientDataSet;
    iSQL : String;
begin
 Cds     := nil;
 iSQL    := 'SELECT NVL( MAX( ITEMID ), 0 ) ' +
            ' FROM EF_PDSITEM ' +
            '  WHERE ' +
            ' EMPRESAID = ' + cdsPdsItemEMPRESAID.AsString +
            ' AND PDSID = ' + cdsPdsItemPDSID.AsString;

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  // Inicializar Valores
  if not Cds.IsEmpty then
     cdsPdsItemITEMID.Value              := Cds.Fields[0].Value + 1;

  cds.Close;
  iSQL  := 'SELECT NATUREZAOPID, MOVIMENTOESTOQUE, SITTRIBESTADUAL ' +
           ' FROM EF_NATUREZAOP ' +
           ' WHERE NATUREZAOPID = ' + cdsPdsNATUREZAOPID.AsString;

  ExecDynamicProvider( -1, iSQL, Cds );

  if Cds.IsEmpty then
     raise exception.Create('Natureza de operação não localizada');

  if Cds.FieldByName('MOVIMENTOESTOQUE').AsString[1] in ['D','E'] then
     cdsPdsItemRETORNO.Value  := 'CR'
  else
     cdsPdsItemRETORNO.Value  := 'SR';

  cdsPdsItemNATUREZAOPID.Value           := cdsPdsNATUREZAOPID.Value;
  cdsPdsItemQUANTIDADE.Value             := 0;
  cdsPdsItemPORCDESCONTO.AsCurrency      := 0;
  cdsPdsItemVLRDESCONTO.Value            := 0;
  cdsPdsItemVLRPRECOUNITDESC.Value       := 0;
  cdsPdsItemVLRPRECOTOTALDESC.Value      := 0;
  cdsPdsItemEMPENHO.Value                := 0;
  cdsPdsItemQUANTIDADEEMPENHO.AsCurrency := 0;
  cdsPdsItemQTDRETORNA.Value             := 0;
  cdsPdsItemVLRBASEICMS.Value            := 0;

  if Cds.FieldByName('SITTRIBESTADUAL').AsString = '00' then
     cdsPdsItemALIQUOTAICMS.AsCurrency   := shdcnnEF.AppServer.IAliquotaICMS( 'S', cdsPdsEMPRESAID.Value, cdsPdsSIGLAUFID.Value, cdsPdsCONTRIBUINTEICMS.AsInteger )
  else
     cdsPdsItemALIQUOTAICMS.AsCurrency   := 0;

  cdsPdsItemVLRICMS.Value                := 0;
  cdsPdsItemVLRISENTASICMS.Value         := 0;
  cdsPdsItemVLROUTRASICMS.Value          := 0;
  cdsPdsItemPORCREDUCAOICMS.Value        := 0;
  cdsPdsItemALIQUOTACOFINS.AsCurrency    := 0;
  cdsPdsItemVLRCOFINS.Value              := 0;
  cdsPdsItemALIQUOTAPIS.AsCurrency       := 0;
  cdsPdsItemVLRPIS.Value                 := 0;
  cdsPdsItemVLRBASEIPI.Value             := 0;
  cdsPdsItemALIQUOTAIPI.AsCurrency       := 0;
  cdsPdsItemVLRIPI.Value                 := 0;
  cdsPdsItemVLRISENTASIPI.Value          := 0;
  cdsPdsItemVLROUTRASIPI.Value           := 0;
  cdsPdsItemPRODINCENTIVADO.Value        := 0;
  cdsPdsItemUSUARIO.Value                := dmGsi.UsuarioAtivo;

  cdsPdsItemPRODUTOID.Tag                := 0;
  cdsPdsItemQUANTIDADE.Tag               := 0;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsCategoriaNewRecord(DataSet: TDataSet);
begin
 cdsCategoriaCATEGORIAID.Value := ContadorDB('EF_CATEGORIA','CATEGORIAID','');
 cdsCategoriaUSUARIO.Value     := dmGsi.UsuarioAtivo;
end;

procedure TdmEF.cdsNfeNewRecord(DataSet: TDataSet);
begin
  cdsNfeEMPRESAID.Value            := EmpresaAtualId;
  cdsNfeDATAEMISSAOID.AsDateTime   := Date;
  cdsNfeTIPONOTA.Value             := 'A';
  cdsNfeLIBCHEFIA.Value            := 0;
  cdsNfeLIBFINANCEIRO.Value        := 0;
  cdsNfeLIBCONTABIL.Value          := 0;
  cdsNfeMODALIDADEFRETE.Value      := 'E';
  cdsNfeEMBMARCA.Value             := 'TOSHIBA';
  cdsNfeEMBNUMERO.Value            := 1;
  cdsNfeCANCELADA.Value            := 0;
  cdsNfeCONTRIBUINTEICMS.Value     := 0;
  cdsNfeVLRFRETE.Value             := 0;
  cdsNfeVLRSEGURO.Value            := 0;
  cdsNfeVLRDESPESAACESSORIA.Value  := 0;
  cdsNfeVLRTOTALCOFINS.Value       := 0;
  cdsNfeVLRTOTALPIS.Value          := 0;
  cdsNfeVLRTOTALCREDCOFINS.Value   := 0;
  cdsNfeVLRTOTALCREDPIS.Value      := 0;
  cdsNfeVLRTOTALBASEICMS.Value     := 0;
  cdsNfeVLRTOTALICMS.Value         := 0;
  cdsNfeVLRTOTALISENTASICMS.Value  := 0;
  cdsNfeVLRTOTALOUTRASICMS.Value   := 0;
  cdsNfeVLRTOTALBASEIPI.Value      := 0;
  cdsNfeVLRTOTALIPI.Value          := 0;
  cdsNfeVLRTOTALISENTASIPI.Value   := 0;
  cdsNfeVLRTOTALOUTRASIPI.Value    := 0;
  cdsNfeVLRTOTALPRODUTO.Value      := 0;
  cdsNfeVLRTOTALNOTA.Value         := 0;
  cdsNfeUSUARIO.Value              := dmGsi.UsuarioAtivo;  
end;

procedure TdmEF.cdsNfsNewRecord(DataSet: TDataSet);
begin
  cdsNfsEMPRESAID.Value            := EmpresaAtualId;
  cdsNfsDATAPEDIDO.AsDateTime      := Date;
  cdsNfsTIPONOTAENTRADA.Value      := 'T';
  cdsNfsTIPONOTA.Value             := 'A';
  cdsNfsLIBCHEFIA.Value            := 0;
  cdsNfsLIBFINANCEIRO.Value        := 0;
  cdsNfsLIBCONTABIL.Value          := 0;
  cdsNfsMODALIDADEFRETE.Value      := 'E';
  cdsNfsEMBMARCA.Value             := 'TOSHIBA';
  cdsNfsEMBNUMERO.Value            := 1;
  cdsNfsVLRFRETE.Value             := 0;
  cdsNfsVLRSEGURO.Value            := 0;
  cdsNfeCONTRIBUINTEICMS.Value     := 0;
  cdsNfsVLRFRETE.Value             := 0;
  cdsNfsVLRSEGURO.Value            := 0;
  cdsNfsVLRDESPESAACESSORIA.Value  := 0;
  cdsNfsVLRTOTALCOFINS.Value       := 0;
  cdsNfsVLRTOTALPIS.Value          := 0;
  cdsNfsVLRTOTALCOFINS.Value       := 0;
  cdsNfsVLRTOTALPIS.Value          := 0;
  cdsNfsVLRTOTALBASEICMS.Value     := 0;
  cdsNfsVLRTOTALICMS.Value         := 0;
  cdsNfsVLRTOTALISENTASICMS.Value  := 0;
  cdsNfsVLRTOTALOUTRASICMS.Value   := 0;
  cdsNfsVLRTOTALBASEIPI.Value      := 0;
  cdsNfsVLRTOTALIPI.Value          := 0;
  cdsNfsVLRTOTALISENTASIPI.Value   := 0;
  cdsNfsVLRTOTALOUTRASIPI.Value    := 0;
  cdsNfsVLRTOTALPRODUTO.Value      := 0;
  cdsNfsVLRTOTALNOTA.Value         := 0;
  cdsNfsUSUARIO.Value              := dmGsi.UsuarioAtivo;
end;

procedure TdmEF.cdsPdeEMBPESOBRUTOValidate(Sender: TField);
begin
 if cdsPdeEMBPESOLIQUIDO.Value > 0 then
    if cdsPdeEMBPESOBRUTO.Value < cdsPdeEMBPESOLIQUIDO.Value then
       raise Exception.Create('Peso bruto menor que peso líquido!');
end;

procedure TdmEF.cdsPdeEMBPESOLIQUIDOValidate(Sender: TField);
begin
 if cdsPdeEMBPESOBRUTO.Value > 0 then
    if cdsPdeEMBPESOLIQUIDO.Value > cdsPdeEMBPESOBRUTO.Value then
       raise Exception.Create('Peso líquido maior que peso bruto!');
end;

procedure TdmEF.cdsPdeLIBCHEFIAValidate(Sender: TField);
begin
 if NovoRegPDE then
    exit;

 if cdsPdeNATUREZAOPID.IsNull then
    raise Exception.Create(' Natureza de operação não identificada.');

 if ( cdsPdeNFEID.Value > 0 ) and  ( cdsPdeTIPONOTA.Value <> 'F' ) then
    raise Exception.Create('Tipo de Nota Fiscal deve ser "FORNECEDOR" está informada de forma errada.');

 if cdsPdeLIBCONTABIL.Value = 1  then
    raise Exception.Create('Não é permitido cancelar a liberação, pois a liberação da contabilidade já foi feita.');

 if not CheckSenha(dmGsi.UsuarioAtivo,'Pedido de Entrada','Liberar PDE Chefia',True) then
    raise Exception.Create('O Usuário não pode liberar chefia !')
  else
    begin
     if cdsPdeLIBCHEFIA.Value = 1 then
        begin
         cdsPdeLIBCHEFIANOME.Value      := dmGsi.UsuarioAtivo;
         cdsPdeLIBCHEFIADATA.AsDateTime := Now;
         cdsPdeLIBFINANCEIRO.Value      := 1;
        end
     else
        begin
         cdsPdeLIBCHEFIANOME.Clear;
         cdsPdeLIBCHEFIADATA.Clear;
         cdsPdeLIBFINANCEIRO.Value := 0;
        end
    end;
end;

procedure TdmEF.cdsPdeLIBCONTABILValidate(Sender: TField);
begin
 if NovoRegPDE then
    exit;

 if cdsPdeNATUREZAOPID.IsNull then
    raise Exception.Create(' Natureza de operação não identificada.');

 if cdsPdeLIBCHEFIA.Value = 0 then
    raise Exception.Create('Falta liberacao Chefia!');

 if not CheckSenha(dmGsi.UsuarioAtivo,'Pedido de Entrada','Liberar PDE Contabilidade',True) then
    raise Exception.Create('O Usuário não pode liberar contabilidade !')
 else
    if cdsPdeLIBCONTABIL.Value = 1 then
        begin
         cdsPdeLIBCONTABILNOME.Value      := dmGsi.UsuarioAtivo;
         cdsPdeLIBCONTABILDATA.AsDateTime := Now;
        end
     else
        begin
         cdsPdeLIBCONTABILNOME.Clear;
         cdsPdeLIBCONTABILDATA.Clear;
        end
end;

procedure TdmEF.cdsProdutoSUSPENSAOIPIValidate(Sender: TField);
begin
 if cdsProdutoISENTOIPI.Value = 1 then
    cdsProdutoISENTOIPI.Value := 0;
end;

procedure TdmEF.cdsProdutoTIPOITEMIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsTipoItem.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsProdutoL_DESCRICAOTIPOITEM.Value := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsProdutoL_DESCRICAOTIPOITEM.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;
  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsProdutoISENTOIPIValidate(Sender: TField);
begin
 if cdsProdutoSUSPENSAOIPI.Value = 1 then
    cdsProdutoSUSPENSAOIPI.Value := 0;
end;

procedure TdmEF.cdsProdutoItemNewRecord(DataSet: TDataSet);
var Cds : TClientDataSet;
    iSQL : String;
begin
 Cds     := nil;
 iSQL    := 'SELECT NVL( MAX( PRODUTOITEMID ), 0 ) ' +
            ' FROM EF_PRODUTOITEM ' +
            '  WHERE ' +
            ' EMPRESAID     = ' + cdsProdutoEMPRESAID.AsString +
            ' AND PRODUTOID = ' + cdsProdutoPRODUTOID.AsString;

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  // Inicializar Valores
  if not Cds.IsEmpty then
     cdsProdutoItemPRODUTOITEMID.Value  := Cds.Fields[0].Value + 1;

  Cds.Close;

  cdsProdutoItemUSUARIO.Value  := dmGsi.UsuarioAtivo;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsProdutoMODELOIDValidate(Sender: TField);
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

  if Cds.IsEmpty then
     begin
      MessageDlg('Valor do campo ' + Sender.DisplayName + ' é Inválido.', mtError, [mbOk], 0);
      Abort;
     end;

 finally
  Cds.Close;
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsNaturezaOpTRIBUTADOValidate(Sender: TField);
begin
 if cdsNaturezaOpTRIBUTADO.Value = 1 then
    begin
     cdsNaturezaOpSUSPENSAOIPI.Value := 0;
     cdsNaturezaOpISENTOIPI.Value    := 0;
    end;
end;

procedure TdmEF.cdsNaturezaOpSUSPENSAOIPIValidate(Sender: TField);
begin
 if cdsNaturezaOpSUSPENSAOIPI.Value = 1 then
    begin
     cdsNaturezaOpTRIBUTADO.Value := 0;
     cdsNaturezaOpISENTOIPI.Value := 0;
    end;
end;

procedure TdmEF.cdsNaturezaOpISENTOIPIValidate(Sender: TField);
begin
 if cdsNaturezaOpISENTOIPI.Value = 1 then
    begin
     cdsNaturezaOpTRIBUTADO.Value    := 0;
     cdsNaturezaOpSUSPENSAOIPI.Value := 0;
    end;
end;

procedure TdmEF.cdsPdeItemBeforeInsert(DataSet: TDataSet);
begin
 BloqInserirPD( cdsPDE );

 // Movimentação em terceiro utilizar o botão de retorno de nota
 Analas_Nat_Op_Item;
end;

procedure TdmEF.cdsPdeItemAfterPost(DataSet: TDataSet);
begin
 AtualizarTotalPDE;
end;

procedure TdmEF.cdsPdeItemBeforeEdit(DataSet: TDataSet);
begin
 cdsPdeItemPRODUTOID.Tag := 1;
end;

procedure TdmEF.cdsPdeItemAfterDelete(DataSet: TDataSet);
begin
 AtualizarTotalPDE;
end;

procedure TdmEF.cdsPdeItemBeforePost(DataSet: TDataSet);
var OldValue, NewValue : OleVariant;
begin
 if cdsPdeItem.State = dsInsert then
    OldValue  := 0
 else
    OldValue  := cdsPdeItemQUANTIDADE.OldValue;

 NewValue := cdsPdeItemQUANTIDADE.NewValue;

 if cdsPdeTIPONOTA.Value[1] in ['C','F'] then
    begin
     shdcnnEF.AppServer.IAtualSaldoPDE( cdsPdeItemEMPRESAID.AsString,
                                        cdsPdeItemPRODUTOID.AsString,
                                        OldValue,
                                        NewValue );
    end;
end;

procedure TdmEF.cdsPdeItemBeforeDelete(DataSet: TDataSet);
begin
 // Cancela operação de retorno / devolução.
 if cdsPdeTIPONOTA.Value <> 'I' then
    begin
     shdcnnEF.AppServer.ICancSaldoPDE( cdsPdeItemEMPRESAID.AsString,
                                       cdsPdeItemPDEID.AsString,
                                       cdsPdeItemNFSID.AsString,
                                       cdsPdeItemDATAEMISSAONFSID.AsString,
                                       cdsPdeOSID.AsString,
                                       cdsPdeNATUREZAOPID.AsString,
                                       cdsPdeItemITEMID.AsString,
                                       cdsPdeItemPRODUTOID.AsString,
                                       cdsPdeItemQUANTIDADE.Value );
    end;
end;

procedure TdmEF.cdsNfsAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

end;

procedure TdmEF.cdsNfsAfterPost(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

end;

procedure TdmEF.cdsNfsItemAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmEF.cdsNfsItemAfterPost(DataSet: TDataSet);
begin
 if cdsNfs.UpdateStatus = usUnmodified then
    cdsNfs.Post;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

end;

procedure TdmEF.cdsPdeItemBarAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmEF.cdsPdeItemBarAfterPost(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmEF.cdsPdsLIBCHEFIAValidate(Sender: TField);
var cdsNat, cdsProd, cdsReserva : TClientDataSet;
    iSQLNat, iSQLProd,iSQLReserva : String;
    VlrTotalParcela : Currency;

 procedure VerificarEstoqueReserva;
 begin

  try
   iSQLProd := 'SELECT EF_PDSITEM.EMPRESAID,' +
               '       EF_PDSITEM.PDSID,' +
               '       EF_PDSITEM.ITEMID,' +
               '       EF_PDSITEM.PRODUTOID,' +
               '       EF_PDSITEM.QUANTIDADE,' +
               '       EF_PRODUTO.ESTOQUEFISICO,' +
               '       EF_PRODUTO.ESTOQUERESERVA' +
               '  FROM EF_PDSITEM EF_PDSITEM,' +
               '       EF_PRODUTO EF_PRODUTO' +
               ' WHERE EF_PRODUTO.EMPRESAID(+) = EF_PDSITEM.EMPRESAID' +
               '       AND EF_PRODUTO.PRODUTOID(+) = EF_PDSITEM.PRODUTOID' +
               '       AND EF_PRODUTO.ESTOQUERESERVA > 0' +
               '       AND ( EF_PDSITEM.QUANTIDADE > (  EF_PRODUTO.ESTOQUEFISICO - EF_PRODUTO.ESTOQUERESERVA ) )' +
               '       AND EF_PDSITEM.EMPRESAID = ' + cdsPdsEMPRESAID.AsString +
               '       AND EF_PDSITEM.PDSID = ' + cdsPdsPDSID.AsString;

   iSQLReserva := ' SELECT EMPRESAID, PDSID ' +
                  '  FROM EF_PDSLOGRESERVA ' +
                  ' WHERE EMPRESAID = ' + cdsPdsEMPRESAID.AsString +
                  '  AND  PDSID     = ' + cdsPdsPDSID.AsString;

   ExecDynamicProvider( -1, iSQLReserva, cdsReserva );
   ExecDynamicProvider( -1, iSQLProd, cdsProd );
   if not cdsProd.IsEmpty then
      begin
       if cdsReserva.IsEmpty then
          begin
           if not cdsPdsLogReserva.Active then
              cdsPdsLogReserva.Open;

           cdsPdsLogReserva.Insert;
           cdsPdsLogReservaEMPRESAID.Value := cdsPdsEMPRESAID.Value;
           cdsPdsLogReservaPDSID.Value     := cdsPdsPDSID.Value;
           cdsPdsLogReserva.Post;
          end;

       raise Exception.Create('Quantidade utilizada do pedido está reservado pelo departamento comercial.' + #13 +
                              'O sistema irá gerar log de reserva para liberação.');
      end;

   cdsProd.Close;
   cdsReserva.Close;
  finally
   FreeAndNil( cdsProd );
   FreeAndNil( cdsReserva );
  end;
 end;

begin
 cdsNat     := Nil;
 cdsProd    := Nil;
 cdsReserva := Nil;

 iSQLNat    := 'SELECT NATUREZAOPID, VENDADEFINITIVA, VENDAFATANTECIPADO ' +
               ' FROM EF_NATUREZAOP ' +
               ' WHERE NATUREZAOPID = ' + cdsPdsNATUREZAOPID.AsString;
 try
  if NovoRegPDS then
     exit;

  if ( cdsPdsItem.RecordCount > 0 ) then
     if ( cdsPdsEMBQTDVOLUMES.AsInteger < 0 ) or ( cdsPdsEMBNUMERO.AsInteger < 0 ) or
        ( cdsPdsEMBMARCA.IsNull ) or ( cdsPdsEMBESPECIE.IsNull ) or
        ( cdsPdsEMBPESOBRUTO.IsNull ) or ( cdsPdsEMBPESOLIQUIDO.IsNull ) or
        ( cdsPdsTRANSPORTADORID.AsInteger < 0 ) then
        raise Exception.Create('Embalagens / volumes / transportador não preenchido corretamente');

   if cdsPdsEMBPESOBRUTO.AsFloat < cdsPdsEMBPESOLIQUIDO.AsFloat then
      raise Exception.Create('Peso bruto menor que peso líquido');

  if cdsPdsNATUREZAOPID.IsNull then
     raise Exception.Create(' Natureza de operação não identificada.');

  if cdsPdsItem.RecordCount > 0 then
     if cdsPdsPRENOTA.AsInteger = 0 then
        raise Exception.Create('Não é permitido liberar pedido sem a impressão da pré-nota.');

  if cdsPdsLIBCONTABIL.Value = 1  then
     raise Exception.Create('Não é permitido cancelar a liberação, pois a liberação da contabilidade já foi feita.');

  ExecDynamicProvider( -1, iSQLNat, cdsNat );
  if cdsNat.IsEmpty then
     raise Exception.Create(' Natureza de operação não identificada.');

  VlrTotalParcela := SomaDuplicata(cdsPdsEMPRESAID.AsInteger,cdsPdsPDSID.AsInteger );

  if cdsPdsParcela.RecordCount > 0 then
     if cdsPdsVLRTOTALNOTA.AsCurrency <>  VlrTotalParcela then
         raise Exception.Create('A soma das Duplicatas difere do Valor Total do Pedido!');

  if not CheckSenha(dmGsi.UsuarioAtivo,'Pedido de Saída','Liberar PDS Chefia',True) then
     raise Exception.Create('O Usuário não pode liberar chefia !')
   else
     begin
      // VerificarEstoqueReserva;

      if cdsPdsLIBCHEFIA.Value = 1 then
         begin
          cdsPdsLIBCHEFIANOME.Value      := dmGsi.UsuarioAtivo;
          cdsPdsLIBCHEFIADATA.AsDateTime := Now;

          if ( cdsNat.FieldByName('VENDADEFINITIVA').AsInteger <> 1 ) and
             ( cdsNat.FieldByName('VENDAFATANTECIPADO').AsInteger <> 1 ) and
             ( cdsPdsLIBCHEFIA.Value <> 0 ) then
             begin
              cdsPdsLIBFINANCEIRO.Value          := 1;
              cdsPdsLIBFINANCEIRONOME.Value      := dmGsi.UsuarioAtivo;
              cdsPdsLIBFINANCEIRODATA.AsDateTime := Now;
             end
         end
      else
         begin
          cdsPdsLIBCHEFIANOME.Clear;
          cdsPdsLIBCHEFIADATA.Clear;
          cdsPdsLIBFINANCEIRO.Value := 0;
         end
     end;

  cdsNat.Close;

 finally
  FreeAndNil( cdsNat );
 end;
end;

procedure TdmEF.cdsPdsLIBCONTABILValidate(Sender: TField);
begin
 if NovoRegPDS then
    exit;

 if cdsPdsNATUREZAOPID.IsNull then
    raise Exception.Create(' Natureza de operação não identificada.');

 if cdsPdsLIBCHEFIA.Value = 0 then
    raise Exception.Create('Falta liberacao Chefia!');

 if not CheckSenha(dmGsi.UsuarioAtivo,'Pedido de Saída','Liberar PDS Contabilidade',True) then
    raise Exception.Create('O Usuário não pode liberar contabilidade !')
 else
    if cdsPdsLIBCONTABIL.Value = 1 then
        begin
         cdsPdsLIBCONTABILNOME.Value      := dmGsi.UsuarioAtivo;
         cdsPdsLIBCONTABILDATA.AsDateTime := Now;
        end
     else
        begin
         cdsPdsLIBCONTABILNOME.Clear;
         cdsPdsLIBCONTABILDATA.Clear;
        end
end;

procedure TdmEF.cdsPdsLIBFINANCEIROValidate(Sender: TField);
var cdsNat : TClientDataSet;
    iSQLNat : String;
begin
 cdsNat  := Nil;

 iSQLNat  := 'SELECT NATUREZAOPID, VENDADEFINITIVA ' +
             ' FROM EF_NATUREZAOP ' +
             ' WHERE NATUREZAOPID = ' + cdsPdsNATUREZAOPID.AsString;

 try
  if NovoRegPDS then
     exit;

  if cdsPdsNATUREZAOPID.IsNull then
     raise Exception.Create(' Natureza de operação não identificada.');

  if cdsPdsLIBFINANCEIRO.Value = 0 then
     begin
      cdsPdsLIBFINANCEIRONOME.Clear;
      cdsPdsLIBFINANCEIRODATA.Clear;
      exit;
     end;

  if cdsPdsLIBCHEFIA.Value = 0 then
     raise Exception.Create('Falta liberacao Chefia!');

  ExecDynamicProvider( -1, iSQLNat, cdsNat );
  if cdsNat.IsEmpty then
     raise Exception.Create(' Natureza de operação não identificada.');

  if cdsNat.FieldByName('VENDADEFINITIVA').Value <> 1 then
     begin
      cdsPdsLIBFINANCEIRONOME.Value      := dmGsi.UsuarioAtivo;
      cdsPdsLIBFINANCEIRODATA.AsDateTime := Now;
     end
  else
     begin
      if not CheckSenha(dmGsi.UsuarioAtivo,'Pedido de Saída','Liberar PDS Financeiro',True) then
         raise Exception.Create('O Usuário não pode liberar Financeiro !')
      else
         if cdsPdsLIBFINANCEIRO.Value = 1 then
            begin
             cdsPdsLIBFINANCEIRONOME.Value      := dmGsi.UsuarioAtivo;
             cdsPdsLIBFINANCEIRODATA.AsDateTime := Now;
            end
         else
            begin
             cdsPdsLIBFINANCEIRONOME.Clear;
             cdsPdsLIBFINANCEIRODATA.Clear;
            end
     end;
  cdsNat.Close;
 finally
  FreeAndNil( cdsNat );
 end;
end;

procedure TdmEF.cdsPdsItemAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsPde.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 shdcnnEF.AppServer.ITotalPDS( cdsPdsEMPRESAID.AsString, cdsPdsPDSID.AsString, cdsPdsNATUREZAOPID.AsString );

 cdsPds.RefreshRecord;
 if dsState in [dsEdit,dsInsert] then
    cdsPds.Edit;
end;

procedure TdmEF.cdsPdsItemAfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
    OSId    : String;
    Quantidade,NaturezaOp,Empenho : Integer;
begin
 dsState := cdsPds.State;

 if cdsPds.UpdateStatus = usUnmodified then
    cdsPds.Post;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 OSId       := cdsPdsOSID.AsString;
 Quantidade := cdsPdsItemQUANTIDADE.AsInteger;
 NaturezaOp := cdsPdsNATUREZAOPID.AsInteger;
 Empenho    := cdsPdsItemEMPENHO.AsInteger;

 shdcnnEF.AppServer.ITotalPDS( cdsPdsEMPRESAID.AsString, cdsPdsPDSID.AsString, cdsPdsNATUREZAOPID.AsString );

 AtualizaContrato( OSId, Quantidade, NaturezaOp,Empenho,True );

 cdsPds.RefreshRecord;
 if dsState in [dsEdit,dsInsert] then
    cdsPds.Edit;

end;

procedure TdmEF.cdsPdsItemBeforeEdit(DataSet: TDataSet);
begin
 cdsPdsItemPRODUTOID.Tag  := 1;
 cdsPdsItemQUANTIDADE.Tag := 1;
end;

procedure TdmEF.cdsPdsItemBeforeInsert(DataSet: TDataSet);
begin
 BloqInserirPD( cdsPDS );
end;

procedure TdmEF.cdsPdsItemBeforePost(DataSet: TDataSet);
begin
 // Atualizar os cálculos do item
 // CalculoPDSItem;    Tirado por questões de arrendondamento

 if cdsPdsItem.State = dsInsert then
    if cdsPdsTIPONOTA.Value[1] in ['A','B','C','D'] then
       begin
        shdcnnEF.AppServer.IAtualSaldoPDS( cdsPdsItemEMPRESAID.AsString,
                                           cdsPdsNATUREZAOPID.AsString,
                                           cdsPdsItemPRODUTOID.AsString,
                                           cdsPdsItemQUANTIDADE.Value,
                                           cdsPdsItemESTOQUEUTILIZADO.Value );
       end;
end;

procedure TdmEF.cdsPdsItemPRODUTOIDValidate(Sender: TField);
var iSQLProd, iSQLNat, iSQLVrfItem : String;
    cdsProd, cdsNatOp, cdsVrfItem  : TClientDataSet;


 procedure MsgTipoEsqueUtilizar;
 var DiagOpc : Integer;
 begin
  DiagOpc := MessageDialog('Utilizar estoque de peças novas?', mtConfirmation, mbYesNoCancel,
    ['Novo', 'Revisado','Demonstração']);

  case DiagOpc of
  mrYes    : if cdsProd.FieldByName('ESTOQUENOVO').Value > 0 then
                cdsPdsItemESTOQUEUTILIZADO.Value := 'N'
             else
                begin
                 if cdsNatOp.FieldByName('VENDAFATANTECIPADO').Value = 1 then
                    cdsPdsItemESTOQUEUTILIZADO.Value := 'N'
                 else
                    raise Exception.Create('Não há quantidade mínima do produto em estoque de peças novas !' );
                end;

  mrNo     : if cdsProd.FieldByName('ESTOQUEREVISADO').Value > 0 then
                cdsPdsItemESTOQUEUTILIZADO.Value := 'R'
             else
                begin
                 if cdsNatOp.FieldByName('VENDAFATANTECIPADO').Value = 1 then
                    cdsPdsItemESTOQUEUTILIZADO.Value := 'R'
                 else
                    raise Exception.Create('Não há quantidade mínima do produto em estoque de peças revisadas !' );
                end;

  mrCancel : if cdsProd.FieldByName('ESTOQUEDEMO').Value > 0 then
                cdsPdsItemESTOQUEUTILIZADO.Value := 'D'
             else
                begin
                 if cdsNatOp.FieldByName('VENDAFATANTECIPADO').Value = 1 then
                    cdsPdsItemESTOQUEUTILIZADO.Value := 'D'
                 else
                    raise Exception.Create('Não há quantidade mínima do produto em estoque de peças em demonstração!' );
                end;
  end;
 end;

begin
 if cdsPdsItemPRODUTOID.IsNull then
    exit;

 cdsProd     := Nil;
 cdsNatOp    := Nil;
 cdsVrfItem  := Nil;

 iSQLNat    := 'SELECT NATUREZAOPID, MOVIMENTOESTOQUE, VENDAFATANTECIPADO, COBERTURACONTRATUAL ' +
               ' FROM EF_NATUREZAOP ' +
               ' WHERE NATUREZAOPID = ' + cdsPdsNATUREZAOPID.AsString;

 iSQLProd   := 'SELECT EMPRESAID, PRODUTOID, ATIVO, PARTNUMBERID,LOCALIZACAO, DESCRICAOPORTUGUES, ORIGEM, ESTOQUENOVO, ESTOQUEREVISADO, ESTOQUEDEMO, ESTOQUEFISICO, ' +
               ' ESTOQUEPEDENTRADA, ESTOQUEPEDSAIDA, ESTOQUEEMTERCEIRO, ESTOQUEDETERCEIRO, ESTOQUEMINIMO, ESTOQUEEMPENHO, ESTOQUEVALE ' +
               ' FROM EF_PRODUTO ' +
               ' WHERE EMPRESAID = ' + cdsPdsItemEMPRESAID.AsString +
               '   AND PRODUTOID = ' + cdsPdsItemPRODUTOID.AsString;

 iSqlVrfItem := 'SELECT EMPRESAID, PDSID, ITEMID, PRODUTOID  '  +
                ' FROM EF_PDSITEM ' +
                ' WHERE' +
                '  EMPRESAID     = ' + cdsPdsItemEMPRESAID.AsString +
                '  AND PDSID     = ' + cdsPdsItemPDSID.AsString +
                '  AND ITEMID    = ' + cdsPdsItemITEMID.AsString +
                '  AND PRODUTOID = ' + IntToStr( cdsPdsItemPRODUTOID.OldValue );


 try
  try
   if cdsPdsItemEMPRESAID.Value <> cdsPdsEMPRESAID.Value then
      raise Exception.Create('O pedido atual está utilizando a empresa ' + cdsPdsEMPRESAID.AsString + 'e o produto selecionado é da empresa ' + cdsPdsItemEMPRESAID.AsString + #13 +
                             'O item do pedido será bloqueado até normalização da digitação' );
   ExecDynamicProvider( -1, iSqlVrfItem, cdsVrfItem  );

   if not cdsVrfItem.IsEmpty then
      raise Exception.Create('O produto não pode ser alterado. Apague o item e cadastre novamente.');

   ExecDynamicProvider( -1, iSQLProd, cdsProd );

   ExecDynamicProvider( -1, iSQLNat, cdsNatOp );

   if cdsProd.IsEmpty then
      begin
       cdsPdsItemDESCRICAOPRODUTO.Clear;
       raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
      end;

   if cdsProd.FieldByName('ATIVO').AsInteger = 0 then
      raise Exception.Create('Produto não está ativo para utilização');

   cdsPdsItemDESCRICAOPRODUTO.Value := cdsProd.FieldByName('DESCRICAOPORTUGUES').AsString;
   cdsPdsItemL_PARTNUMBERID.Value   := cdsProd.FieldByName('PARTNUMBERID').AsString;
   cdsPdsItemL_LOCALIZACAO.Value    := cdsProd.FieldByName('LOCALIZACAO').AsString;

   // Não utilizar o rotina quando a peça for de empenho / vale
   // ou quando for devolução de Entrada ou quando for quarentena
   if cdsPdsTIPONOTA.Value = 'A' then
      if cdsNatOp.FieldByName('MOVIMENTOESTOQUE').Value <> 'D' then
         if cdsNatOp.FieldByName('MOVIMENTOESTOQUE').Value <> 'Q' then
            begin
             if cdsPdsItemEMPENHO.AsInteger <> 1 then
                MsgTipoEsqueUtilizar;
            end
         else
            cdsPdsItemESTOQUEUTILIZADO.Value := 'Q';

   if      cdsProd.FieldByName('ORIGEM').AsString = 'N' then
           cdsPdsItemSITTRIBUTARIAESTADUAL.Value := '0'
   else if cdsProd.FieldByName('ORIGEM').AsString = 'I' then
           cdsPdsItemSITTRIBUTARIAESTADUAL.Value := '1'
   else if cdsProd.FieldByName('ORIGEM').AsString = 'B' then
           cdsPdsItemSITTRIBUTARIAESTADUAL.Value := '2';

   cdsProd.Close;
   cdsNatOp.Close;
   cdsVrfItem.Close;

  except
   on E: Exception do
   begin
    cdsPdsItemDESCRICAOPRODUTO.Clear;
    MessageDlg( E.Message, mtError, [mbOK], 0 );
   end;
  end;

 finally
  FreeAndNil( cdsProd );
  FreeAndNil( cdsNatOp );
  FreeAndNil( cdsVrfItem );
 end;
end;

procedure TdmEF.cdsPdsItemVLRPRECOUNITARIOValidate(Sender: TField);
begin
 CalculoPDSItem;
end;

procedure TdmEF.cdsPdsItemQUANTIDADEValidate(Sender: TField);
var cdsNat, cdsProd, cdsKdx : TClientDataSet;
    iSQLNat, iSQLProd, isqlKdx : String;
    BookMark    : TBookMark;
begin
 if cdsPdsItemQUANTIDADE.Value = 0 then
    exit;

 cdsNat   := Nil;
 cdsProd  := Nil;
 cdsKdx   := Nil;
 iSQLNat  := 'SELECT NATUREZAOPID, MOVIMENTOESTOQUE, VENDAFATANTECIPADO, COBERTURACONTRATUAL , VENDADEFINITIVA, DOCINTERNO, ' +
             ' CALCULAPRECOMEDIO FROM EF_NATUREZAOP ' +
             ' WHERE NATUREZAOPID = ' + cdsPdsNATUREZAOPID.AsString;

 iSQLProd := 'SELECT EMPRESAID, PRODUTOID, ESTOQUENOVO, ESTOQUEREVISADO, ESTOQUEDEMO, ESTOQUEFISICO, ESTOQUEPEDENTRADA, ESTOQUEPEDSAIDA, ' +
             ' ESTOQUEEMTERCEIRO, ESTOQUEDETERCEIRO, ESTOQUEQUARENTENA, ESTOQUEMINIMO, ESTOQUEEMPENHO, ESTOQUERESERVA, ' +
             ' ESTOQUEVALE, ESTOQUETOTAL, PRECOVENDAMINIMO, PRECOVENDA, CUSTOMEDIO ' +
             ' FROM EF_PRODUTO ' +
             ' WHERE EMPRESAID = ' + cdsPdsItemEMPRESAID.AsString +
             '   AND PRODUTOID = ' + cdsPdsItemPRODUTOID.AsString;

 iSQLKdx  := 'SELECT KARDEXID, EMPRESAID, PRODUTOID, QUANTIDADESALDO ' +
             ' FROM EF_KARDEX ' +
             ' WHERE EMPRESAID = ' + cdsPdsItemEMPRESAID.AsString +
             '   AND PRODUTOID = ' + cdsPdsItemPRODUTOID.AsString +
             ' ORDER BY KARDEXID DESC';

 // Movimentação em terceiro utilizar o botão de retorno de nota
 try
  ExecDynamicProvider( -1, isqlNat, cdsNat );
  ExecDynamicProvider( -1, isqlProd, cdsProd );
  ExecDynamicProvider( -1, isqlKdx, cdsKdx );

  BookMark := cdsPdsItem.GetBookmark;

  if Assigned( BookMark ) then
     if cdsPdsItem.BookMarkValid( BookMark ) then
        raise Exception.Create('Quantidade pedida não pode ser alterada, apague o item e refaça novamente');

  { Para Faturamento Venda Faturamento Antecipado não é necessário
    saldo no estoque }
  if cdsNat.FieldByName('VENDAFATANTECIPADO').AsInteger = 1 then
     exit;

  case cdsPdsTIPONOTA.Value[1] of
  'A': begin
        if cdsPdsItemPRODUTOID.Value < 1 then
           raise Exception.Create('Digitar o código do produto antes de colocar a quantidade.');

        if cdsNat.FieldByName('MOVIMENTOESTOQUE').Value = 'D' then
           if cdsProd.FieldByName('ESTOQUEDETERCEIRO').Value < cdsPdsItemQUANTIDADE.Value then
              raise Exception.Create('Não há saldo em Estoque de Terceiros para quantidade digitada.' );

        if cdsNat.FieldByName('MOVIMENTOESTOQUE').Value = 'Q' then
           if cdsProd.FieldByName('ESTOQUEQUARENTENA').Value < cdsPdsItemQUANTIDADE.Value then
              raise Exception.Create('Não há saldo em Estoque de Quarentena para quantidade digitada.' );

        if cdsNat.FieldByName('MOVIMENTOESTOQUE').Value <> 'D' then
           begin
            if cdsPdsItemEMPENHO.Value = 0 then
               if ( cdsProd.FieldByName('ESTOQUEFISICO').AsCurrency < 0 ) or
                  ( cdsProd.FieldByName('ESTOQUENOVO').AsCurrency < 0 ) or
                  ( cdsProd.FieldByName('ESTOQUEREVISADO').AsCurrency < 0 ) or
                  ( cdsProd.FieldByName('ESTOQUEPEDENTRADA').AsCurrency < 0 ) or
                  ( cdsProd.FieldByName('ESTOQUEPEDSAIDA').AsCurrency < 0 ) or
                  ( cdsProd.FieldByName('ESTOQUEVALE').AsCurrency < 0 ) or
                  ( cdsProd.FieldByName('ESTOQUEEMPENHO').AsCurrency < 0 ) or
                  ( cdsProd.FieldByName('ESTOQUEDETERCEIRO').AsCurrency < 0 ) or
                  ( cdsProd.FieldByName('ESTOQUEQUARENTENA').AsCurrency < 0 ) or
                  ( cdsProd.FieldByName('ESTOQUEEMTERCEIRO').AsCurrency < 0 ) then
                  raise Exception.Create('Divergência no cadastro de produto, comunicar urgente ao DSI, o processo será bloqueado !.' );

            if      cdsPdsItemESTOQUEUTILIZADO.Value =  'N' then
                    begin
                     if cdsProd.FieldByName('ESTOQUENOVO').AsCurrency < cdsPdsItemQUANTIDADE.Value then
                        raise Exception.Create('Não há quantidade mínima do produto em estoque de peças novas!' );
                    end
            else if cdsPdsItemESTOQUEUTILIZADO.Value =  'R' then
                    begin
                     if cdsProd.FieldByName('ESTOQUEREVISADO').AsCurrency < cdsPdsItemQUANTIDADE.Value then
                        raise Exception.Create('Não há quantidade mínima do produto em estoque de peças revisadas!' );
                    end
            else if cdsPdsItemESTOQUEUTILIZADO.Value =  'D' then
                    begin
                     if cdsProd.FieldByName('ESTOQUEDEMO').AsCurrency < cdsPdsItemQUANTIDADE.Value then
                        raise Exception.Create('Não há quantidade mínima do produto em estoque de demonstração!' );
                    end
            else if cdsPdsItemESTOQUEUTILIZADO.Value =  'E' then
                    begin
                     if cdsProd.FieldByName('ESTOQUEEMPENHO').AsCurrency < cdsPdsItemQUANTIDADE.Value then
                        raise Exception.Create('Não há quantidade mínima do produto em estoque de peças em empenho. ' + #13 +
                                               'Verifique se a entrada está pendente de emissão de nota fiscal.' );
                    end
            else if cdsPdsItemESTOQUEUTILIZADO.Value =  'Q' then
                    begin
                     if cdsProd.FieldByName('ESTOQUEQUARENTENA').AsCurrency < cdsPdsItemQUANTIDADE.Value then
                        raise Exception.Create('Não há quantidade mínima do produto em estoque de peças em quarentena. ' + #13 +
                                               'Verifique se a entrada está pendente de emissão de nota fiscal.' );
                    end
            else
                    raise Exception.Create( 'Problemas na inclusão do pedido campo ESTOQUE UTILIZADO não informado! ' );

            if cdsProd.FieldByName('ESTOQUERESERVA').AsCurrency > 0 then
               if  cdsPdsItemQUANTIDADE.AsCurrency > ( cdsProd.FieldByName('ESTOQUEFISICO').AsCurrency -
                                                       cdsProd.FieldByName('ESTOQUERESERVA').AsCurrency ) then
                    MessageDlg('Quantidade já está reservado pelo departamento comercial, ' +
                               'não será permitido efetuar a liberação de chefia até normalização', mtInformation, [mbOK], 0 );

            if cdsKdx.FieldByName('QUANTIDADESALDO').AsCurrency <> cdsProd.FieldByName('ESTOQUETOTAL').AsCurrency then
               raise Exception.Create('Saldo total do Kardex é diferente do saldo total do estoque, verificar junto ao dsi.' );
           end;
       end;
  end; // case

  if cdsPdsItemEMPENHO.AsInteger <> 1 then
     if cdsNat.FieldByName('COBERTURACONTRATUAL').AsInteger = 1 then
        ValidarPecasContrato;

  case cdsPdsEMPRESAID.AsInteger of
  1,12,15  : begin
           if      ( cdsNat.FieldByName('MOVIMENTOESTOQUE').Value = 'N' ) or ( cdsNat.FieldByName('MOVIMENTOESTOQUE').Value = 'Q' )then
                   begin
                    if cdsNat.FieldByName('VENDADEFINITIVA').AsInteger = 1  then
                       cdsPdsItemVLRPRECOUNITARIO.Value := cdsProd.FieldByName('PRECOVENDAMINIMO').AsCurrency
                    else
                       begin
                        if ( cdsNat.FieldByName('DOCINTERNO').AsInteger = 1 ) or ( cdsNat.FieldByName('CALCULAPRECOMEDIO').AsInteger = 1 ) then
                           cdsPdsItemVLRPRECOUNITARIO.Value := cdsProd.FieldByName('CUSTOMEDIO').AsCurrency
                        else
                           // Incluindo a pedido de Lorival no Dia 16/02/2000 às 10:35am para baixar os impostos
                           //cdsPdsItemVLRPRECOUNITARIO.Value := (cdsProd.FieldByName('PRECOVENDAMINIMO').AsCurrency/100)*80;
                           // Incluindo a pedido de Luiz ramos no Dia  16/09/2008
                           cdsPdsItemVLRPRECOUNITARIO.Value := cdsProd.FieldByName('CUSTOMEDIO').AsCurrency / 0.80;
                        end;

                   end
           else if cdsNat.FieldByName('MOVIMENTOESTOQUE').Value <> 'V' then
                   // cdsPdsItemVLRPRECOUNITARIO.Value := (cdsProd.FieldByName('PRECOVENDAMINIMO').AsCurrency/100)*60;
                   cdsPdsItemVLRPRECOUNITARIO.Value := cdsProd.FieldByName('CUSTOMEDIO').AsCurrency / 0.80;
          end;
  else
    // cdsPdsItemVLRPRECOUNITARIO.Value := (cdsProd.FieldByName('PRECOVENDAMINIMO').AsCurrency/100)*60;
    cdsPdsItemVLRPRECOUNITARIO.Value := cdsProd.FieldByName('CUSTOMEDIO').AsCurrency / 0.80;
  end;

  cdsProd.Close;
  cdsNat.Close;
  cdsKdx.Close;
 finally
  FreeAndNil( cdsProd );
  FreeAndNil( cdsNat );
  FreeAndNil( cdsKdx );
 end;
end;

procedure TdmEF.cdsEntidadeDeptoNewRecord(DataSet: TDataSet);
begin
 cdsEntidadeDeptoDEPARTAMENTOID.Value := cdsDepartamentoDEPARTAMENTOID.Value;
 cdsEntidadeDeptoUSUARIO.Value        := dmGsi.UsuarioAtivo;
end;

procedure TdmEF.cdsEntidadeDeptoDEPARTAMENTOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsDepartamento.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsEntidadeDeptoL_DESCRICAO_DEPTO.Value := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsEntidadeDeptoL_DESCRICAO_DEPTO.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;
  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;

end;

procedure TdmEF.cdsEntidadeGrupoAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsEntidade.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsEntidade.Edit;
end;

procedure TdmEF.cdsEntidadeDeptoAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsEntidade.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsEntidade.Edit;
end;

procedure TdmEF.cdsEntidadeGrupoAfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsEntidade.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsEntidade.Edit;
end;

procedure TdmEF.cdsEntidadeDeptoAfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsEntidade.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsEntidade.Edit;
end;

procedure TdmEF.cdsEntidadeCARGOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsCargo.ProviderName ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsEntidadeL_DESCRICAOCARGO.Value := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsEntidadeL_DESCRICAODEPTO.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsProdutoBeforePost(DataSet: TDataSet);
var CtaCtbReceita, CtaCtbAtivo, CtaCtbDesp : String;
begin
 case cdsProdutoEMPRESAID.AsInteger of
 1..11 : begin
          if   cdsProdutoSUBGRUPOID.Value = 8 then // Aparelho
               begin
                case cdsProdutoORIGEM.Value[1] of
                'I' : begin
                       CtaCtbReceita := '1110101004';
                       CtaCtbAtivo   := '11401001';
                       CtaCtbDesp    := '41101001';
                      end
                else
                      begin
                       CtaCtbReceita := '1110101002';
                       CtaCtbAtivo   := '11401001';
                       CtaCtbDesp    := '41101001';
                      end;
                end;
               end
          else
               case cdsProdutoORIGEM.Value[1] of

               'I' : begin
                      CtaCtbReceita := '1110101003';
                      CtaCtbAtivo   := '11401002';
                      CtaCtbDesp    := '41101002';
                     end
               else
                     begin
                      CtaCtbReceita := '1110101001';
                      CtaCtbAtivo   := '11401002';
                      CtaCtbDesp    := '41101002';
                     end;
               end;
         end;

 12..13 :begin
          if    cdsProdutoSUBGRUPOID.Value = 8 then // Aparelho
                        begin
                         case cdsProdutoORIGEM.Value[1] of
                         'I' : begin
                                CtaCtbReceita := '1110101008';
                                CtaCtbAtivo   := '11402001';
                                CtaCtbDesp    := '41101003';
                               end
                         else
                               begin
                                CtaCtbReceita := '1110101006';
                                CtaCtbAtivo   := '11402001';
                                CtaCtbDesp    := '41101003';
                               end;
                         end;
                        end
                   else
                         case cdsProdutoORIGEM.Value[1] of
                         'I' : begin
                                CtaCtbReceita := '1110101007';
                                CtaCtbAtivo   := '11402002';
                                CtaCtbDesp    := '41101004';
                               end
                         else
                               begin
                                CtaCtbReceita := '1110101005';
                                CtaCtbAtivo   := '11402002';
                                CtaCtbDesp    := '41101004';
                               end;
                         end;
                  end;


 15..17 :begin
          if    cdsProdutoSUBGRUPOID.Value = 8 then // Aparelho
                        begin
                         case cdsProdutoORIGEM.Value[1] of
                         'I' : begin
                                CtaCtbReceita := '1110101010';
                                CtaCtbAtivo   := '11403001';
                                CtaCtbDesp    := '41101005';
                              end
                         else
                               begin
                                CtaCtbReceita := '1110101011';
                                CtaCtbAtivo   := '11403001';
                                CtaCtbDesp    := '41101005';
                               end;
                         end;
                        end
                   else
                         case cdsProdutoORIGEM.Value[1] of
                         'I' : begin
                                CtaCtbReceita := '1110101009';
                                CtaCtbAtivo   := '11403002';
                                CtaCtbDesp    := '41101006';
                               end
                         else
                               begin
                                CtaCtbReceita := '1110101012';
                                CtaCtbAtivo   := '11403002';
                                CtaCtbDesp    := '41101006';
                               end;
                         end;
                  end;

 end;

 cdsProdutoCONTACTBRECEITA.Value := CtaCtbReceita;
 cdsProdutoCONTACTBATIVO.Value   := CtaCtbAtivo;
 cdsProdutoCONTACTBDESPESA.Value := CtaCtbDesp;


 cdsProdutoESTOQUEFISICO.Value   := cdsProdutoESTOQUENOVO.Value +
                                    cdsProdutoESTOQUEREVISADO.Value +
                                    cdsProdutoESTOQUEDEMO.Value;

 cdsProdutoESTOQUETOTAL.Value    := cdsProdutoESTOQUEFISICO.Value +
                                    cdsProdutoESTOQUEPEDSAIDA.Value +
                                    cdsProdutoESTOQUEDETERCEIRO.Value +
                                    cdsProdutoESTOQUEVALE.Value +
                                    cdsProdutoESTOQUEEMPENHO.Value +
                                    cdsProdutoESTOQUEQUARENTENA.Value +
                                    cdsProdutoESTOQUEEMTERCEIRO.Value;
end;

procedure TdmEF.cdsProdutoEMPRESAIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'EMPRESAID = ' + Sender.AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvEmpresa' ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsProdutoL_NOMEFANTASIA.Value := Cds.FieldByName('NOMEFANTASIA').AsString
  else
     begin
      cdsProdutoL_NOMEFANTASIA.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsPdeItemQUANTIDADEValidate(Sender: TField);
begin
 // Atualizar os cálculos do item
 CalculoPDEItem;
end;

procedure TdmEF.cdsPdeItemVLRPRECOUNITARIOValidate(Sender: TField);
begin
 // Atualizar os cálculos do item
 CalculoPDEItem;
end;

procedure TdmEF.cdsKardexAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmEF.cdsKardexAfterPost(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmEF.cdsKardexCalcFields(DataSet: TDataSet);
begin
 if DataSet.State = dsInternalCalc then
    begin
     if DataSet.FieldByName('TIPOOPERACAO').AsString  = 'E' then
        begin
         DataSet.FieldByName('C_QUANTIDADEENTRADA').AsBCD     := DataSet.FieldByName('QUANTIDADE').AsBCD;
         DataSet.FieldByName('C_VLRUNITENTRADA').Value        := DataSet.FieldByName('VLRCUSTOUNITARIO').Value;
         DataSet.FieldByName('C_VLRTOTALENTRADA').Value       := DataSet.FieldByName('VLRCUSTOTOTAL').Value;
        end
     else
        begin
         DataSet.FieldByName('C_QUANTIDADEENTRADA').Clear;
         DataSet.FieldByName('C_VLRUNITENTRADA').Clear;
         DataSet.FieldByName('C_VLRTOTALENTRADA').Clear;
        end;

     if DataSet.FieldByName('TIPOOPERACAO').Value  = 'S' then
        begin
         DataSet.FieldByName('C_QUANTIDADESAIDA').AsInteger  := DataSet.FieldByName('QUANTIDADE').AsInteger;
         DataSet.FieldByName('C_VLRUNITSAIDA').Value         := DataSet.FieldByName('VLRCUSTOUNITARIO').Value;
         DataSet.FieldByName('C_VLRTOTALSAIDA').Value        := DataSet.FieldByName('VLRCUSTOTOTAL').Value;;
        end
     else
        begin
         DataSet.FieldByName('C_QUANTIDADESAIDA').Clear;
         DataSet.FieldByName('C_VLRUNITSAIDA').Clear;
         DataSet.FieldByName('C_VLRTOTALSAIDA').Clear;
        end;
    end;

end;

procedure TdmEF.cdsContaContabilEMPRESAIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'EMPRESAID = ' + Sender.AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvEmpresa' ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsContaContabilL_NOMEFANTASIA.Value := Cds.FieldByName('NOMEFANTASIA').AsString
  else
     begin
      cdsContaContabilL_NOMEFANTASIA.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;

end;

procedure TdmEF.cdsCallAfterPost(DataSet: TDataSet);
begin
 shdcnnEF.AppServer.ITotalCALL( cdsCallEMPRESAID.AsString, cdsCallCALLID.AsString );

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

end;

procedure TdmEF.cdsCallBeforeDelete(DataSet: TDataSet);
begin
 if cdsCallUSUARIO.Value <> dmGsi.UsuarioAtivo then
    if not CheckSenha(dmGsi.UsuarioAtivo,'Call Center','Excluir pedido de outro usuário',False ) then
       raise Exception.Create('Error, Usuário do sistemas diferente do usuário do pedido.');

 if cdsCallSTATUS.Value = 1 then
    if not CheckSenha(dmGsi.UsuarioAtivo,'Call Center','Pedido fechado não é possível excluir',False ) then
       raise Exception.Create('Error, Usuário do sistemas diferente do usuário do pedido.');

 cdsCall.First;
 while not cdsCallItem.Eof do cdsCallItem.Delete;
end;

procedure TdmEF.cdsCallBeforeEdit(DataSet: TDataSet);
begin
 if cdsCallUSUARIO.Value <> dmGsi.UsuarioAtivo then
    if not CheckSenha(dmGsi.UsuarioAtivo,'Call Center','Pedido de outro usuário',False ) then
       raise Exception.Create('Pedido de outro usuário !  :' + dmEF.cdsCallUSUARIO.AsString );
end;

procedure TdmEF.cdsCallCEPIDValidate(Sender: TField);
var Cds  : TClientDataSet;
    iSql, Endereco : String;
begin
 iSQL := SQLCEPPadrao +
         ' AND CEPID = ' + cdsCallCEPID.AsString;

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
          cdsCallENDERECO.Value  := SubstituiString( Endereco, '  ','' );
          cdsCallBAIRRO.Value    := cds.FieldByName('BAIRROLOGRADOURO').AsString;
          cdsCallCIDADE.Value    := cds.FieldByName('NOMELOCALIDADE').AsString;
          cdsCallSIGLAUFID.Value := cds.FieldByName('SIGLAUFID').AsString;
          cdsCallPAIS.Value      := cds.FieldByName('NOMEPAISPORTUGUES').AsString;
         end;
     end
  else
    MessageDlg('Código Postal (CEP) está inválido.', mtInformation, [mbOk], 0 );


 finally
  Cds.Close;
  FreeAndNil( Cds );
 end;

end;

procedure TdmEF.cdsCallENTIDADEIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'ENTIDADEID =' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsEntidade.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );
  if not Cds.IsEmpty then
     begin
      // Verificar se existem observações para este aparelho
      cdsCallL_NOME.Value       := Cds.FieldByName('NOME').AsString;
      cdsCallL_CONTATO.Value    := Cds.FieldByName('CONTATO').AsString;
     end
  else
     begin
      cdsCallL_NOME.Clear;
      cdsCallL_CONTATO.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsCallItemAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsCall.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 shdcnnEF.AppServer.ITotalCALL( cdsCallEMPRESAID.AsString, cdsCallCALLID.AsString );

 cdsCall.RefreshRecord;
 if dsState in [dsEdit,dsInsert] then
    cdsCall.Edit;

end;

procedure TdmEF.cdsCallItemAfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsCall.State;

 if cdsCall.UpdateStatus = usUnmodified then
    cdsCall.Post;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 shdcnnEF.AppServer.ITotalCALL( cdsCallEMPRESAID.AsString, cdsCallCALLID.AsString );

 cdsCall.RefreshRecord;
 if dsState in [dsEdit,dsInsert] then
    cdsCall.Edit;

end;

procedure TdmEF.cdsCallItemBeforeDelete(DataSet: TDataSet);
begin
 // Cancela operação de retorno / devolução.
 shdcnnEF.AppServer.ICancSaldoCALL( cdsCallItemEMPRESAID.AsString,
                                    cdsCallItemPRODUTOID.AsString,
                                    cdsCallItemQUANTIDADE.Value );
end;

procedure TdmEF.cdsCallItemBeforeEdit(DataSet: TDataSet);
begin
 cdsCallItemPRODUTOID.Tag  := 1;
 cdsCallItemQUANTIDADE.Tag := 1;
end;

procedure TdmEF.cdsCallItemBeforePost(DataSet: TDataSet);
begin
 // Atualizar os cálculos do item
 // CalculoPDSItem;    Tirado por questões de arrendondamento

 if cdsCallItem.State = dsInsert then
    shdcnnEF.AppServer.IAtualSaldoCALL( cdsCallItemEMPRESAID.AsString,
                                        cdsCallItemPRODUTOID.AsString,
                                        cdsCallItemQUANTIDADE.Value );
end;

procedure TdmEF.cdsCallItemNewRecord(DataSet: TDataSet);
var Cds : TClientDataSet;
    iSQL : String;
begin
 Cds     := nil;
 iSQL    := 'SELECT NVL( MAX( ITEMID ), 0 ) ' +
            ' FROM EF_CALLITEM ' +
            '  WHERE ' +
            ' EMPRESAID  = ' + cdsCallEMPRESAID.AsString +
            ' AND CALLID = ' + cdsCallCALLID.AsString;

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  // Inicializar Valores
  if not Cds.IsEmpty then
     cdsCallItemITEMID.Value  := Cds.Fields[0].Value + 1;

  Cds.Close;

  cdsCallItemQUANTIDADE.Value             := 0;
  cdsCallItemUSUARIO.Value                := dmGsi.UsuarioAtivo;

  cdsCallItemPRODUTOID.Tag                := 0;
  cdsCallItemQUANTIDADE.Tag               := 0;
 finally
  FreeAndNil( Cds );
 end;

end;

procedure TdmEF.cdsCallItemPRODUTOIDValidate(Sender: TField);
var iSQLProd, iSQLVrfItem : String;
    cdsProd, cdsVrfItem  : TClientDataSet;
begin
 if cdsCallItemPRODUTOID.IsNull then
    exit;

 cdsProd     := Nil;
 cdsVrfItem  := Nil;

 iSQLProd   := 'SELECT EMPRESAID, PRODUTOID, ATIVO, DESCRICAOPORTUGUES, DESCRICAOINGLES, ESTOQUENOVO, ESTOQUEREVISADO, ESTOQUEDEMO, ESTOQUEFISICO, ' +
               ' ESTOQUEPEDENTRADA, ESTOQUETOTAL, ESTOQUEPEDSAIDA, ESTOQUEEMTERCEIRO, ESTOQUEDETERCEIRO, ESTOQUEMINIMO, ESTOQUEEMPENHO, ESTOQUEVALE ' +
               ' FROM EF_PRODUTO ' +
               ' WHERE EMPRESAID = ' + cdsCallItemEMPRESAID.AsString +
               '   AND PRODUTOID = ' + cdsCallItemPRODUTOID.AsString;

 iSqlVrfItem := 'SELECT EMPRESAID, CALLID, ITEMID, PRODUTOID  '  +
                ' FROM EF_CALLITEM ' +
                ' WHERE' +
                '  EMPRESAID     = ' + cdsCallItemEMPRESAID.AsString +
                '  AND CALLID    = ' + cdsCallItemCALLID.AsString +
                '  AND ITEMID    = ' + cdsCallItemITEMID.AsString +
                '  AND PRODUTOID = ' + IntToStr( cdsCallItemPRODUTOID.OldValue );
 try
  try
   if cdsCallItemEMPRESAID.Value <> cdsCallEMPRESAID.Value then
      raise Exception.Create('O pedido atual está utilizando a empresa ' + cdsCallEMPRESAID.AsString + 'e o produto selecionado é da empresa ' + cdsCallItemEMPRESAID.AsString + #13 +
                             'O item do pedido será bloqueado até normalização da digitação' );
   ExecDynamicProvider( -1, iSqlVrfItem, cdsVrfItem  );

   if not cdsVrfItem.IsEmpty then
      raise Exception.Create('O produto não pode ser alterado. Apague o item e cadastre novamente.');

   ExecDynamicProvider( -1, iSQLProd, cdsProd );

   if cdsProd.IsEmpty then
      begin
       cdsCallItemL_DESCRICAOPORTUGUES.Clear;
       cdsCallItemL_DESCRICAOINGLES.Clear;
       cdsCallItemL_ESTOQUENOVO.Clear;
       cdsCallItemL_ESTOQUEREVISADO.Clear;
       cdsCallItemL_ESTOQUEFISICO.Clear;
       cdsCallItemL_ESTOQUETOTAL.Clear;


       raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
      end;

   if cdsProd.FieldByName('ATIVO').AsInteger = 0 then
      raise Exception.Create('Produto não está ativo para utilização');

   cdsCallItemL_DESCRICAOPORTUGUES.Value := cdsProd.FieldByName('DESCRICAOPORTUGUES').AsString;
   cdsCallItemL_DESCRICAOINGLES.Value    := cdsProd.FieldByName('DESCRICAOINGLES').AsString;
   cdsCallItemL_ESTOQUENOVO.Value        := cdsProd.FieldByName('ESTOQUENOVO').AsFloat;
   cdsCallItemL_ESTOQUEREVISADO.Value    := cdsProd.FieldByName('ESTOQUEREVISADO').AsFloat;
   cdsCallItemL_ESTOQUEFISICO.Value      := cdsProd.FieldByName('ESTOQUEFISICO').AsFloat;
   cdsCallItemL_ESTOQUETOTAL.Value       := cdsProd.FieldByName('ESTOQUETOTAL').AsFloat;

   cdsProd.Close;
   cdsVrfItem.Close;

  except
   on E: Exception do
   begin
    cdsCallItemL_DESCRICAOPORTUGUES.Clear;
    cdsCallItemL_DESCRICAOINGLES.Clear;
    cdsCallItemL_ESTOQUENOVO.Clear;
    cdsCallItemL_ESTOQUEREVISADO.Clear;
    cdsCallItemL_ESTOQUEFISICO.Clear;
    cdsCallItemL_ESTOQUETOTAL.Clear;

    MessageDlg( E.Message, mtError, [mbOK], 0 );
   end;
  end;

 finally
  FreeAndNil( cdsProd );
  FreeAndNil( cdsVrfItem );
 end;
end;

procedure TdmEF.cdsCallItemQUANTIDADEValidate(Sender: TField);
var cdsProd : TClientDataSet;
    iSQLProd : String;
    BookMark    : TBookMark;
begin
 if cdsCallItemQUANTIDADE.Value = 0 then
    exit;

 cdsProd  := Nil;

 iSQLProd := 'SELECT EMPRESAID, PRODUTOID, ESTOQUENOVO, ESTOQUEREVISADO, ESTOQUEDEMO, ESTOQUEFISICO, ESTOQUEPEDENTRADA, ESTOQUEPEDSAIDA, ' +
             ' ESTOQUEEMTERCEIRO, ESTOQUEDETERCEIRO, ESTOQUEQUARENTENA, ESTOQUEMINIMO, ESTOQUEEMPENHO, ESTOQUERESERVA, ' +
             ' ESTOQUEVALE, ESTOQUETOTAL, PRECOVENDAMINIMO, PRECOVENDA, CUSTOMEDIO ' +
             ' FROM EF_PRODUTO ' +
             ' WHERE EMPRESAID = ' + cdsCallItemEMPRESAID.AsString +
             '   AND PRODUTOID = ' + cdsCallItemPRODUTOID.AsString;

 // Movimentação em terceiro utilizar o botão de retorno de nota
 try
  ExecDynamicProvider( -1, isqlProd, cdsProd );

  BookMark := cdsCallItem.GetBookmark;

  if Assigned( BookMark ) then
     if cdsCallItem.BookMarkValid( BookMark ) then
        raise Exception.Create('Quantidade pedida não pode ser alterada, apague o item e refaça novamente');


  if cdsCallItemPRODUTOID.Value < 1 then
     raise Exception.Create('Digitar o código do produto antes de colocar a quantidade.');


  if ( cdsProd.FieldByName('ESTOQUEFISICO').AsCurrency < 0 ) or
     ( cdsProd.FieldByName('ESTOQUENOVO').AsCurrency < 0 ) or
     ( cdsProd.FieldByName('ESTOQUEREVISADO').AsCurrency < 0 ) or
     ( cdsProd.FieldByName('ESTOQUEPEDENTRADA').AsCurrency < 0 ) or
     ( cdsProd.FieldByName('ESTOQUEPEDSAIDA').AsCurrency < 0 ) or
     ( cdsProd.FieldByName('ESTOQUEVALE').AsCurrency < 0 ) or
     ( cdsProd.FieldByName('ESTOQUEEMPENHO').AsCurrency < 0 ) or
     ( cdsProd.FieldByName('ESTOQUEDETERCEIRO').AsCurrency < 0 ) or
     ( cdsProd.FieldByName('ESTOQUEQUARENTENA').AsCurrency < 0 ) or
     ( cdsProd.FieldByName('ESTOQUEEMTERCEIRO').AsCurrency < 0 ) then
     raise Exception.Create('Divergência no cadastro de produto, comunicar urgente ao DSI, o processo será bloqueado !.' );

  if cdsProd.FieldByName('ESTOQUENOVO').AsCurrency < cdsCallItemQUANTIDADE.Value then
     raise Exception.Create('Não há quantidade mínima do produto em estoque de peças novas!' );

  cdsCallItemVLRPRECOUNITARIO.Value := cdsProd.FieldByName('PRECOVENDA').AsCurrency;

  cdsProd.Close;
 finally
  FreeAndNil( cdsProd );
 end;

end;

procedure TdmEF.cdsCallItemVLRPRECOUNITARIOValidate(Sender: TField);
begin
 CalculoCallItem;
end;

procedure TdmEF.cdsCallLOCALENTRIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'LOCALENTRID =' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsLocalEntr.ProviderName ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsCallL_DESCRICAOLOCAL.Value := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsCallL_DESCRICAOLOCAL.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;

end;

procedure TdmEF.cdsCallNewRecord(DataSet: TDataSet);
begin
 cdsCallEMPRESAID.Value             := EmpresaAtualId;
 cdsCallCALLID.Value                := ExecSequencia( 'SQ_EF_CALL_CallId');
 cdsCallUSUARIO.Value               := dmGsi.UsuarioAtivo;
 cdsCallDATAPEDIDO.AsDateTime       := Now;

 cdsCallSTATUS.Value                := 0;
 cdsCallPRENOTA.Value               := 0;
 cdsCallVLRTOTALPRODUTO.Value       := 0;
 NovoRegCALL                        := False;
end;

procedure TdmEF.cdsCargoNewRecord(DataSet: TDataSet);
begin
 cdsCargoCARGOID.Value := ContadorDB('EF_CARGO','CARGOID','');
 cdsCargoUSUARIO.Value := dmGsi.UsuarioAtivo;
end;

procedure TdmEF.cdsEmpresaNewRecord(DataSet: TDataSet);
begin
 cdsEmpresaEMPRESAID.Value := ContadorDB('EF_EMPRESA','EMPRESAID','');
end;

procedure TdmEF.cdsPdsServicoNewRecord(DataSet: TDataSet);
var iSQL: String;
begin
 iSQL := '  WHERE ' +
         ' EMPRESAID = ' + cdsPdsServicoEMPRESAID.AsString +
         ' AND PDSID = ' + cdsPdsServicoPDSID.AsString;

 cdsPdsServicoITEMID.Value              := ContadorDB('EF_PDSSERVICO','ITEMID', iSQL );
 cdsPdsServicoVLRISS.Value              := 0;
 cdsPdsServicoVLRSERVICO.Value          := 0;
 cdsPdsServicoALIQUOTACOFINS.AsCurrency := 0;
 cdsPdsServicoVLRCOFINS.Value           := 0;
 cdsPdsServicoALIQUOTAPIS.AsCurrency    := 0;
 cdsPdsServicoVLRPIS.Value              := 0;
 cdsPdsServicoVLRRETCOFINS.Value        := 0;
 cdsPdsServicoVLRRETPIS.Value           := 0;
 cdsPdsServicoVLRRETCSLL.Value          := 0;
 cdsPdsServicoVLRRETIRPJ.Value          := 0;
 cdsPdsServicoVLRRETIRPF.Value          := 0;
 cdsPdsServicoUSUARIO.Value             := dmGsi.UsuarioAtivo;
end;

procedure TdmEF.cdsPdsServicoSERVICOIDValidate(Sender: TField);
var iSQL,iSQLOS  : String;
    cds,cdsiOS   : TClientDataSet;
begin
 if cdsPdsServicoSERVICOID.IsNull then
    exit;

 cds  := Nil;

 iSQL := 'SELECT EF_SERVICO.EMPRESAID, EF_SERVICO.SERVICOID, EF_SERVICO.RECEITAID, '+
         ' EF_SERVICO.DESCRICAORESUMIDA, EF_SERVICO.DESCRICAOCOMPLETA, EF_GRUPO.GRUPOID, EF_GRUPO.SIGLAGRUPO ' +
         ' FROM EF_SERVICO, ' +
         '      EF_GRUPO'+
         ' WHERE EMPRESAID = ' + cdsPdsServicoEMPRESAID.AsString +
         '   AND EF_SERVICO.SERVICOID = ' + cdsPdsServicoSERVICOID.AsString+
         '   AND EF_SERVICO.GRUPOID = EF_GRUPO.GRUPOID(+)';

 cdsIOS  := Nil;
 iSQLOS := ' SELECT OS_OS.SERIEID,OS_OS.MODELOID '+
           '   FROM OS_OS'+
           '  WHERE OS_OS.OSID = '+ QuotedStr( cdsPdsOSID.AsString );

 try
  ExecDynamicProvider( -1, iSQL, cds );

  ExecDynamicProvider(-1, iSQLOS,cdsIOS );

  if not cds.IsEmpty then
     begin
      cdsPdsServicoL_GRUPOID.Value           := cds.FieldByName('GRUPOID').Value;
      cdsPdsServicoL_SIGLAGRUPO.Value        := cds.FieldByName('SIGLAGRUPO').AsString;
      cdsPdsServicoL_DESCRICAORESUMIDA.Value := cds.FieldByName('DESCRICAORESUMIDA').AsString;

      if cdsiOS.IsEmpty then
         cdsPdsServicoDESCRICAOSERVICO.Value := cds.FieldByName('DESCRICAOCOMPLETA').AsString
      else
         cdsPdsServicoDESCRICAOSERVICO.Value := cds.FieldByName('DESCRICAOCOMPLETA').AsString +
                                                'SÉRIE: ' + cdsiOs.FieldByName('SERIEID').AsString + '  MODELO: ' + cdsiOs.FieldByName('MODELOID').AsString;
     end
  else
     begin
      cdsPdsServicoL_GRUPOID.Clear;
      cdsPdsServicoL_SIGLAGRUPO.Clear;
      cdsPdsServicoL_DESCRICAORESUMIDA.Clear;
      cdsPdsServicoDESCRICAOSERVICO.Clear;
     end;

  cds.Close;
  cdsiOS.Close;
 finally
  FreeAndNil( cds );
  FreeAndNil( cdsiOS );
 end;
end;

procedure TdmEF.cdsPdsServicoVLRSERVICOValidate(Sender: TField);
var cdsNat, cdsEmp : TClientDataSet;
    iSQLNat, iSQLEmp : String;
begin
 if cdsPdsServicoVLRSERVICO.Value < 1 then
    exit;

 cdsNat  := Nil;
 cdsEmp  := Nil;
 iSQLNat := 'SELECT NATUREZAOPID, CALCULOISS ' +
             ' FROM EF_NATUREZAOP ' +
             ' WHERE NATUREZAOPID = ' + cdsPdsNATUREZAOPID.AsString;

 iSQLEmp := 'SELECT EMPRESAID, SERVICOID, ALIQUOTAISS FROM EF_SERVICO ' +
            ' WHERE ' +
            '  EMPRESAID     = ' + cdsPdsServicoEMPRESAID.AsString +
            '  AND SERVICOID = ' + cdsPdsServicoSERVICOID.AsString ;

 // Movimentação em terceiro utilizar o botão de retorno de nota
 try
  ExecDynamicProvider( -1, iSQLEmp, cdsEmp );
  if cdsEmp.IsEmpty then
     raise Exception.Create( 'O Campo EmpresaID  : ' + IntToStr( EmpresaAtualId ) + ', está inválido!' );

  ExecDynamicProvider( -1, iSQLNat, cdsNat );
  if cdsNat.IsEmpty then
     raise Exception.Create('Natureza de Operação não localizada');

  if cdsNat.FieldByName('CALCULOISS').AsInteger = 1 then
     cdsPdsServicoVLRISS.Value := ( cdsPdsServicoVLRSERVICO.Value / 100 ) * cdsEmp.FieldByName('ALIQUOTAISS').Value
  else
     cdsPdsServicoVLRISS.Value := 0;

  cdsNat.Close;
  cdsEmp.Close;

 finally
  FreeAndNil( cdsNat );
  FreeAndNil( cdsEmp );
 end;
end;

procedure TdmEF.cdsPdsServicoBeforePost(DataSet: TDataSet);
var iSql, iSqlServ : String;
    Cds,cdsServ : TClientDataSet;
begin
 Cds     := nil;
 cdsServ := Nil;
 iSQL    := 'SELECT ' +
            '  EF_ENTIDADE.ENTIDADEID,' +
            '  EF_ENTIDADE.NATUREZAJURIDICAID,' +
            '  EF_NATUREZAJURIDICA.AliqRetencaoPIS, ' +
            '  EF_NATUREZAJURIDICA.AliqRetencaoCOFINS, ' +
            '  EF_NATUREZAJURIDICA.AliqRetencaoCSLL, ' +
            '  EF_NATUREZAJURIDICA.AliqRetencaoIRPJ, ' +
            '  EF_NATUREZAJURIDICA.AliqRetencaoIRPF, ' +
            '  EF_NATUREZAJURIDICA.RETENCAO1, ' +
            '  EF_NATUREZAJURIDICA.RETENCAO2, ' +
            '  EF_NATUREZAJURIDICA.RETENCAO3, ' +
            '  EF_NATUREZAJURIDICA.RETENCAO4  ' +
            '  FROM' +
            '  EF_ENTIDADE,' +
            '  EF_NATUREZAJURIDICA EF_NATUREZAJURIDICA' +
            ' WHERE' +
            '  EF_NATUREZAJURIDICA.NATUREZAJURIDICAID(+) = EF_ENTIDADE.NATUREZAJURIDICAID' +
            '  AND EF_ENTIDADE.ENTIDADEID = ' + cdsPdsENTIDADEID.AsString;

 iSqlServ:= 'SELECT EMPRESAID, SERVICOID,CALCULARPIS, CALCULARCOFINS,  RETENCAO1, RETENCAO2, RETENCAO3, RETENCAO4 ' +
            '   FROM EF_SERVICO, ' +
            '       EF_RECEITA   ' +
            ' WHERE EF_RECEITA.RECEITAID = EF_SERVICO.RECEITAID ' +
            ' AND EMPRESAID = ' + cdsPdsServicoEMPRESAID.AsString +
            ' AND SERVICOID = ' + cdsPdsServicoSERVICOID.AsString;

 try
  ExecDynamicProvider( -1, iSQL, Cds );
  ExecDynamicProvider( -1, iSqlServ, cdsServ );

  if Cds.IsEmpty then
     raise Exception.Create('Não é possível calcular as retensões, problemas no arquivo de Natureza Jurídica');

  if cdsServ.IsEmpty then
     raise Exception.Create('Identificar do serviço não localizado na tabela de serviço');

  if cdsServ.FieldByName('CALCULARPIS').AsInteger = 1 then
     begin
      cdsPdsServicoALIQUOTAPIS.AsVariant    := shdcnnEF.AppServer.IAliquotaImposto( 'PIS' );
      cdsPdsServicoVLRPIS.Value             := ( cdsPdsServicoVLRSERVICO.Value / 100 ) * cdsPdsServicoALIQUOTAPIS.AsCurrency;
     end
  else
     begin
      cdsPdsServicoALIQUOTAPIS.AsVariant    := 0;
      cdsPdsServicoVLRPIS.Value             := 0;
     end;

  if cdsServ.FieldByName('CALCULARCOFINS').AsInteger = 1 then
     begin
      cdsPdsServicoALIQUOTACOFINS.AsVariant := shdcnnEF.AppServer.IAliquotaImposto( 'COFINS' );
      cdsPdsServicoVLRCOFINS.Value          := ( cdsPdsServicoVLRSERVICO.Value / 100 ) * cdsPdsServicoALIQUOTACOFINS.AsCurrency;
     end
  else
     begin
      cdsPdsServicoALIQUOTACOFINS.AsVariant := 0;
      cdsPdsServicoVLRCOFINS.Value          := 0;
     end;

  if dmEF.cdsPdsServicoEMPRESAID.AsInteger = 1 then
     begin
      { Retenções conforme a natureza jurídica}
      { RETENÇÃO = 1 Reter = 1,50%, IRRF
        Retenção s/venda de determinados serviços. (
        INTERMEDIAÇÃO - Mensagem em nota fiscal: IRRF CONFORME ARTIGO 53 - INCISO X DA LEI No 7450/85 DE 1,5% = R$ XX,XX
        TREINAMENTO - Mensagem em nota fiscal: IRRF.: RETENCAO DE 1,5% = R$ XX,XX CONF. ARTIGO 647 DO RIR/99 DECRETO 3000 - ITEM 18.    }
      if ( cds.FieldByName('RETENCAO1').AsInteger = 1 ) and  ( cdsServ.FieldByName('RETENCAO1').AsInteger = 1 ) then
         cdsPdsServicoVLRRETIRPF.Value    := cdsPdsServicoVLRSERVICO.Value * ( cds.FieldByName('AliqRetencaoIRPF').AsCurrency / 100 );

      { DEVIDO A QUANTIDADE DE SERVIÇOS SERÁ CALCULADO SOMENTE NO VALOR TOTAL DA NOTA.

        RETENÇÃO = 2 Reter = 4,65%, sendo 1,00% CSLL, 3,00% COFINS, 0,65% PIS
        Retenção s/venda de determinados serviços para clientes privados (acima de R$ 5.000,00).
        CONTRATO DE MANUTENÇÃO - Mensagem em nota fiscal: RETENCAO DE 4,65% P/PAGTO ACIMA DE R$ 5.000,00 (CINCO MIL REAIS), REF. A CSLL, COFINS E PIS, CONF. I.N. SRF 459/2004 NO VLR. DE: R$ X.XXX,XX
      if ( cds.FieldByName('RETENCAO2').AsInteger = 1 ) and  ( cdsServ.FieldByName('RETENCAO2').AsInteger = 1 ) then
         begin
          cdsPdsServicoVLRRETPIS.Value    := cdsPdsServicoVLRSERVICO.Value * ( cdsServ.FieldByName('AliqRetencaoPIS').AsCurrency / 100 );
          cdsPdsServicoVLRRETCOFINS.Value := cdsPdsServicoVLRSERVICO.Value * ( cdsServ.FieldByName('AliqRetencaoCOFINS').AsCurrency / 100 );
          cdsPdsServicoVLRRETCSLL.Value   := cdsPdsServicoVLRSERVICO.Value * ( cdsServ.FieldByName('AliqRetencaoCSLL').AsCurrency / 100 );
         end;}

      { Retenção = 3 = Reter = 9,45%, sendo 4,80% IRPJ, 3,00% COFINS, 0,65% PIS, 1,00% CSLL
        Retenção s/venda de serviços para órgão público federal.
        QUALQUER SERVIÇO = Mensagem em nota fiscal: RETENCAO DE 9,45% CONF. I.N. SRF 480/2004 ALTERADA PELA I.N. SRF 539/2005: 4,80% IR; 1,0% CSLL; 3,0% COFINS E 0,65% PIS NO VLR. TOTAL DE R$ X.XXX,XX }
      if ( cds.FieldByName('RETENCAO3').AsInteger = 1 ) and  ( cdsServ.FieldByName('RETENCAO3').AsInteger = 1 ) then
         begin
          cdsPdsServicoVLRRETIRPJ.Value   := cdsPdsServicoVLRSERVICO.Value * ( cds.FieldByName('AliqRetencaoIRPJ').AsCurrency / 100 );
          cdsPdsServicoVLRRETPIS.Value    := cdsPdsServicoVLRSERVICO.Value * ( cds.FieldByName('AliqRetencaoPIS').AsCurrency / 100 );
          cdsPdsServicoVLRRETCOFINS.Value := cdsPdsServicoVLRSERVICO.Value * ( cds.FieldByName('AliqRetencaoCOFINS').AsCurrency / 100 );
          cdsPdsServicoVLRRETCSLL.Value   := cdsPdsServicoVLRSERVICO.Value * ( cds.FieldByName('AliqRetencaoCSLL').AsCurrency / 100 );
         end;
     end;

  Cds.Close;
  cdsServ.Close
 finally
  FreeAndNil( Cds );
  FreeAndNil( cdsServ );
 end;

end;

procedure TdmEF.cdsPdsServicoAfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsPds.State;

 if cdsPds.UpdateStatus = usUnmodified then
    cdsPds.Post;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 shdcnnEF.AppServer.ITotalPDS( cdsPdsEMPRESAID.AsString, cdsPdsPDSID.AsString, cdsPdsNATUREZAOPID.AsString );

 cdsPds.RefreshRecord;
 if dsState in [dsEdit,dsInsert] then
    cdsPds.Edit;
end;

procedure TdmEF.cdsPdsParcelaAfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsPds.State;

 if cdsPds.UpdateStatus = usUnmodified then
    cdsPds.Post;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 cdsPds.RefreshRecord;
 if dsState in [dsEdit,dsInsert] then
    cdsPds.Edit;
end;

procedure TdmEF.cdsPdsParcelaNewRecord(DataSet: TDataSet);
begin
 cdsPdsParcelaUSUARIO.Value := dmGsi.UsuarioAtivo;
end;

procedure TdmEF.cdsPdsParcelaAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsPds.State;

 if cdsPds.UpdateStatus = usUnmodified then
    cdsPds.Post;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 cdsPds.RefreshRecord;
 if dsState in [dsEdit,dsInsert] then
    cdsPds.Edit;
end;

procedure TdmEF.cdsPdsServicoAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsPds.State;

 if cdsPds.UpdateStatus = usUnmodified then
    cdsPds.Post;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 shdcnnEF.AppServer.ITotalPDS( cdsPdsEMPRESAID.AsString, cdsPdsPDSID.AsString, cdsPdsNATUREZAOPID.AsString );

 cdsPds.RefreshRecord;
 if dsState in [dsEdit,dsInsert] then
    cdsPds.Edit;

end;

procedure TdmEF.cdsPdeBeforeDelete(DataSet: TDataSet);
begin
 if cdsPdeUSUARIO.Value <> dmGsi.UsuarioAtivo then
    if not CheckSenha(dmGsi.UsuarioAtivo,'Pedido de Entrada','Excluir pedido de outro usuário', False ) then
       begin
        MessageDlg('Error, Usuário do sistemas diferente do usuário do pedido.', mtError,[mbOk], 0);
        Abort;
       end;

 shdcnnEF.AppServer.IDeletarPDE( cdsPdeEMPRESAID.AsString, cdsPdePDEID.AsString );
 cdsPde.Refresh;
end;

procedure TdmEF.cdsPdsBeforeDelete(DataSet: TDataSet);
begin
 if cdsPdsUSUARIO.Value <> dmGsi.UsuarioAtivo then
    if not CheckSenha(dmGsi.UsuarioAtivo,'Pedido de Saída','Excluir pedido de outro usuário',False ) then
       raise Exception.Create('Error, Usuário do sistemas diferente do usuário do pedido.');

 cdsPdsItem.First;
 while not cdsPdsItem.Eof do cdsPdsItem.Delete;
end;

procedure TdmEF.cdsPdsItemBeforeDelete(DataSet: TDataSet);
begin
 // Cancela operação de retorno / devolução.
 if cdsPdsTIPONOTA.Value[1] in ['A','B','C','D'] then
    begin
     AtualizaContrato( cdsPdsOSID.AsString,
                       cdsPdsItemQUANTIDADE.AsInteger ,
                       cdsPdsNATUREZAOPID.AsInteger,
                       cdsPdsItemEMPENHO.AsInteger,False );

     shdcnnEF.AppServer.ICancSaldoPDS( cdsPdsItemEMPRESAID.AsString,
                                       cdsPdsItemNFEID.AsString,
                                       cdsPdsItemDATAEMISSAONFEID.AsString,
                                       cdsPdsOSID.AsString,
                                       cdsPdsNATUREZAOPID.AsString,
                                       cdsPdsItemPRODUTOID.AsString,
                                       cdsPdsItemESTOQUEUTILIZADO.AsString,
                                       cdsPdsItemEMPENHOITEMID.AsString,
                                       cdsPdsItemQUANTIDADE.Value );
    end;

end;

procedure TdmEF.cdsDepartamentoNewRecord(DataSet: TDataSet);
begin
 cdsDepartamentoDEPARTAMENTOID.Value := ContadorDB('EF_DEPARTAMENTO','DEPARTAMENTOID','');
 cdsDepartamentoUSUARIO.Value        := dmGsi.UsuarioAtivo;
end;

procedure TdmEF.cdsHistInventarioNewRecord(DataSet: TDataSet);
begin
 cdsHistInventarioHISTINVENTARIOID.AsInteger := ContadorDB('EF_HISTINVENTARIO','HISTINVENTARIOID','');
 cdsHistInventarioUSUARIO.Value              := dmGsi.UsuarioAtivo;
end;

procedure TdmEF.cdsInventarioItemAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsInventario.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 cdsInventario.RefreshRecord;
 if dsState in [dsEdit,dsInsert] then
    cdsInventario.Edit;
end;

procedure TdmEF.cdsInventarioItemAfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsInventario.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 cdsInventario.RefreshRecord;
 if dsState in [dsEdit,dsInsert] then
    cdsInventario.Edit;
end;

procedure TdmEF.cdsTipoCtgInventNewRecord(DataSet: TDataSet);
begin
 cdsTipoCtgInventTIPOCTGINVENTID.AsInteger := ContadorDB('EF_TIPOCTGINVENT','TIPOCTGINVENTID','');
 cdsTipoCtgInventBLOQUEARDIGITACAO.Value   := 0;
 cdsTipoCtgInventUSUARIO.Value             := dmGsi.UsuarioAtivo;
end;

procedure TdmEF.cdsTipoItemNewRecord(DataSet: TDataSet);
begin
 cdsTipoItemUSUARIO.Value := dmGsi.UsuarioAtivo;
end;

procedure TdmEF.cdsInventarioItemREALIZADORIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'ENTIDADEID =' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsEntidade.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     Sender.DataSet.FieldByName('L_NOME_REALIZADOR').Value := Cds.FieldByName('NOME').AsString
  else
     begin
      Sender.DataSet.FieldByName('L_NOME_REALIZADOR').Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsInventarioItemDIGITADORIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'ENTIDADEID =' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsEntidade.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     Sender.DataSet.FieldByName('L_NOME_DIGITADOR').Value := Cds.FieldByName('NOME').AsString
  else
     begin
      Sender.DataSet.FieldByName('L_NOME_DIGITADOR').Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsInventarioItemTIPOCTGINVENTIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsTipoCtgInvent.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     Sender.DataSet.FieldByName('L_TIPOCTGINVENT').Value := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      Sender.DataSet.FieldByName('L_TIPOCTGINVENT').Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsImpostoServicoNewRecord(DataSet: TDataSet);
begin
 cdsImpostoServicoUSUARIO.Value   := dmGsi.UsuarioAtivo;
end;

procedure TdmEF.cdsInventarioDigNewRecord(DataSet: TDataSet);
begin
 cdsInventarioDigDATACFGFISICA.AsDateTime := pCnnMain.AppServer.IServerDate;
 cdsInventarioDigDIGITADORID.Value        := dmGSI.FuncionarioId;
 cdsInventarioDigDIFERENCASALDO.Value     := 0;
end;

procedure TdmEF.cdsInventarioDigQUANTIDADEValidate(Sender: TField);
{var iSql : String;
    Cds  : TClientDataSet;}
begin
{ Cds  := nil;
 iSQL := 'SELECT PRODUTOID, ESTOQUEFISICO FROM EF_PRODUTO' +
         ' WHERE ' +
         ' EMPRESAID = ' + cdsInventarioDigEMPRESAID.AsString +
         ' AND PRODUTOID = ' + cdsInventarioDigPRODUTOID.AsString;

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      if cdsInventarioDigQUANTIDADE.Value <> Cds.FieldByName('ESTOQUEFISICO').Value then
         MessageDlg('Quantidade digitada é diferente da quantidade física', mtInformation, [mbOK], 0 );
     end
  else
     raise Exception.Create( 'Produto não localizado para o inventário' );

  Cds.Close;

 finally
  FreeAndNil( Cds );
 end;}
end;

procedure TdmEF.cdsInventarioDigPRODUTOIDValidate(Sender: TField);
var iSql : String;
    Cds  : TClientDataSet;
begin
 Cds  := nil;
 iSQL := 'SELECT DESCRICAOPORTUGUES FROM EF_PRODUTO' +
         ' WHERE ' +
         ' EMPRESAID = ' + cdsInventarioDigEMPRESAID.AsString +
         ' AND PRODUTOID = ' + cdsInventarioDigPRODUTOID.AsString;
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsInventarioDigL_DESCRICAOPORTUGUES.Value := Cds.FieldByName('DESCRICAOPORTUGUES').AsString
  else
     begin
      cdsInventarioDigL_DESCRICAOPORTUGUES.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' está Inválido.' );
     end;

  Cds.Close;

 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsPdeAfterPost(DataSet: TDataSet);
begin
 if cdsPde.ChangeCount > 0 then
    cdsPde.ApplyUpdates(-1);

 shdcnnEF.AppServer.ITotalPDE( cdsPdeEMPRESAID.AsString, cdsPdePDEID.AsString );
end;

procedure TdmEF.cdsPdeItemALIQUOTAICMSValidate(Sender: TField);
begin
 // Atualizar os cálculos do item
 CalculoPDEItem;
end;

procedure TdmEF.cdsPdeBeforeEdit(DataSet: TDataSet);
begin
 if cdsPdeMOVIMENTAESTOQUE.Value = 0 then
    raise Exception.Create( 'Edição do Pedido não permitido, pois o pedido é de recebimento de nota fiscal e já foi impresso e está aguardando o seu recebimento' );
end;

procedure TdmEF.cdsProdutoEMPRESASIMILARIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 if ( cdsProdutoEMPRESASIMILARID.IsNull ) or ( cdsProdutoEMPRESASIMILARID.Value < 1 ) then
    exit;

 Cds     := nil;
 InstSQL := 'EMPRESAID = ' + Sender.AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvEmpresa' ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsProdutoL_NOMEFANTASIASIMILAR.Value := Cds.FieldByName('NOMEFANTASIA').AsString
  else
     begin
      cdsProdutoL_NOMEFANTASIASIMILAR.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsProdutoPRODUTOSIMILARIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 if ( cdsProdutoPRODUTOSIMILARID.IsNull ) or ( cdsProdutoPRODUTOSIMILARID.Value < 1 ) then
    exit;

 Cds     := nil;
 InstSQL := 'EF_PRODUTO.EMPRESAID = ' + cdsProdutoEMPRESASIMILARID.AsString +
            ' AND EF_PRODUTO.PRODUTOID = ' + cdsProdutoPRODUTOSIMILARID.AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvProduto' ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsProdutoL_DESCRICAOPORTUGUES.Value := Cds.FieldByName('DESCRICAOPORTUGUES').AsString
  else
     begin
      cdsProdutoL_DESCRICAOPORTUGUES.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsInventarioNewRecord(DataSet: TDataSet);
begin
 cdsInventarioUSUARIO.Value := dmGsi.UsuarioAtivo;
end;

procedure TdmEF.cdsEntidadeNewRecord(DataSet: TDataSet);
begin
 cdsEntidadeSTATUSCOMERCIAL.Value  := 0;
 cdsEntidadeSTATUSFINANCEIRO.Value := 0;
 cdsEntidadeCONTRIBUINTEICMS.Value := 0;
 cdsEntidadeDESLIGADO.Value        := 0;
 cdsEntidadeUSUARIO.Value          := dmGsi.UsuarioAtivo;
end;

procedure TdmEF.cdsNaturezaOpNewRecord(DataSet: TDataSet);
begin
 cdsNaturezaOpNATUREZAOPID.Value            := ContadorDB('EF_NATUREZAOP','NATUREZAOPID','');
 cdsNaturezaOpDESMEMBRCUSTO.Value           := 0;
 cdsNaturezaOpDOCINTERNO.Value              := 0;
 cdsNaturezaOpVENDADEFINITIVA.Value         := 0;
 cdsNaturezaOpOUTRASSAIDA.Value             := 0; 
 cdsNaturezaOpCALCULAPRECOMEDIO.Value       := 0;
 cdsNaturezaOpUTILIZAEMPENHO.Value          := 0;
 cdsNaturezaOpGERARDUPLICATA.Value          := 0;
 cdsNaturezaOpTRANSFCONSUMO.Value           := 0;
 cdsNaturezaOpCOBERTURACONTRATUAL.Value     := 0;
 cdsNaturezaOpENTRADAPRECOTRANSF.Value      := 0;
 cdsNaturezaOpENTRADADIPJ.Value             := 0;
 cdsNaturezaOpSAIDADIPJ.Value               := 0;
 cdsNaturezaOpCALCULOPIS.Value              := 0;
 cdsNaturezaOpCALCULOCOFINS.Value           := 0;
 cdsNaturezaOpCREDITOPIS.Value              := 0;
 cdsNaturezaOpCREDITOCOFINS.Value           := 0;
 cdsNaturezaOpCALCULOIPI.Value              := 0;
 cdsNaturezaOpCREDITOIPI.Value              := 0;
 cdsNaturezaOpFRETEIPI.Value                := 0;
 cdsNaturezaOpDESTACAIPI.Value              := 0;
 cdsNaturezaOpCALCULOIRPJ.Value             := 0;
 cdsNaturezaOpGERAMOVIMENTO.Value           := 0;
 cdsNaturezaOpVENDAFATANTECIPADO.Value      := 0;
 cdsNaturezaOpTRIBUTADO.Value               := 0;
 cdsNaturezaOpSUSPENSAOIPI.Value            := 0;
 cdsNaturezaOpISENTOIPI.Value               := 0;
 cdsNaturezaOpCALCULOICMS.Value             := 0;
 cdsNaturezaOpCREDITOICMS.Value             := 0;
 cdsNaturezaOpINCENTIVOICMS.Value           := 0;
 cdsNaturezaOpCONTRIBUINTEICMS.Value        := 0;
 cdsNaturezaOpCALCULOISS.Value              := 0;
 cdsNaturezaOpDESPACESSORIABASEICMS.Value   := 1;
 cdsNaturezaOpISENTOINSCRICAOESTADUAL.Value := 0;
 cdsNaturezaOpIPIBASE.Value                 := 0;
 cdsNaturezaOpNATUREZASERVICO.Value         := 0;
 cdsNaturezaOpUSUARIO.Value                 := dmGsi.UsuarioAtivo;
end;

procedure TdmEF.cdsNfsENTIDADEIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'EF_ENTIDADE.ENTIDADEID =' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( cdsEntidade.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );
  if not Cds.IsEmpty then
     begin
      // Verificar se existem observações para este aparelho
      if cds.FieldByName('STATUSFINANCEIRO').AsInteger = 1 then
         raise Exception.Create('Cliente está bloqueado pelo departamento financeiro');

      cdsNfsNOME.Value                := Cds.FieldByName('NOME').AsString;
      cdsNfsCEPID.Value               := Cds.FieldByName('CEPID').AsInteger;
      cdsNfsNUMERO.Value              := Cds.FieldByName('NUMERO').AsString;
      cdsNfsCOMPLEMENTO.Value         := Cds.FieldByName('COMPLEMENTO').AsString;
      cdsNfsENDERECO.Value            := Cds.FieldByName('ENDERECO').AsString;
      cdsNfsBAIRRO.Value              := cds.FieldByName('BAIRRO').AsString;
      cdsNfsCIDADE.Value              := cds.FieldByName('CIDADE').AsString;
      cdsNfsSIGLAUFID.Value           := cds.FieldByName('SIGLAUFID').AsString;
      cdsNfsPAIS.Value                := cds.FieldByName('PAIS').AsString;
      cdsNfsCONTRIBUINTEICMS.Value    := cds.FieldByName('CONTRIBUINTEICMS').AsInteger;
     end
  else
     begin
      cdsNfsNOME.Clear;
      cdsNfsCEPID.Clear;
      cdsNfsNUMERO.Clear;
      cdsNfsCOMPLEMENTO.Clear;
      cdsNfsENDERECO.Clear;
      cdsNfsBAIRRO.Clear;
      cdsNfsCIDADE.Clear;
      cdsNfsSIGLAUFID.Clear;
      cdsNfsPAIS.Clear;
      cdsNfsCONTRIBUINTEICMS.Value := 0;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;

end;

procedure TdmEF.cdsEntidadeCEPINSTIDValidate(Sender: TField);
var Cds  : TClientDataSet;
    iSql, Endereco : String;
begin
 iSQL := SQLCEPPadrao +
         ' AND CEPID = ' + cdsEntidadeCEPINSTID.AsString;

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
          cdsEntidadeENDERECOINST.Value  := SubstituiString( Endereco, '  ','' );
          cdsEntidadeBAIRROINST.Value    := cds.FieldByName('BAIRROLOGRADOURO').AsString;
          cdsEntidadeCIDADEINST.Value    := cds.FieldByName('NOMELOCALIDADE').AsString;
          cdsEntidadeSIGLAUFINSTID.Value := cds.FieldByName('SIGLAUFID').AsString;
          cdsEntidadePAISINST.Value      := cds.FieldByName('NOMEPAISPORTUGUES').AsString;
         end;
     end
  else
    MessageDlg('Código Postal (CEP) está inválido.', mtInformation, [mbOk], 0);

 finally
  Cds.Close;
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsServicoNewRecord(DataSet: TDataSet);
begin
 cdsServicoEMPRESAID.Value            := EmpresaAtualId;
 cdsServicoCALCULARPIS.AsFloat        := 1;
 cdsServicoCALCULARCOFINS.AsFloat     := 1;
 cdsServicoALIQUOTAISS.AsFloat        := 0;
end;

procedure TdmEF.cdsSiglaNaturezaNewRecord(DataSet: TDataSet);
begin
 cdsSiglaNaturezaSIGLANATUREZAID.Value := ContadorDB('EF_SIGLANATUREZA','SIGLANATUREZAID','');
 cdsSiglaNaturezaUSUARIO.Value         := dmGsi.UsuarioAtivo;
end;

procedure TdmEF.cdsPdsItemPORCDESCONTOValidate(Sender: TField);
begin
 if cdsPdsItemPORCDESCONTO.AsFloat < 1 then
    exit;

 cdsPdsItemVLRDESCONTO.Value :=
 ( cdsPdsItemVLRPRECOTOTAL.Value + cdsPdsItemVLRIPI.Value ) * cdsPdsItemPORCDESCONTO.AsCurrency / 100;

 cdsPdsItemVLRPRECOTOTALDESC.Value := cdsPdsItemVLRPRECOTOTAL.Value - cdsPdsItemVLRDESCONTO.Value;
 cdsPdsItemVLRPRECOUNITDESC.Value  := cdsPdsItemVLRPRECOTOTALDESC.Value / cdsPdsItemQUANTIDADE.Value;
end;

function TdmEF.SomaDuplicata( EmpresaId,PdsId  : Integer ) : Real;
var cds  : TClientDataSet;
    iSQL : String;
begin
 Result := 0;
 cds  := nil;
 iSQL := 'SELECT '+
         '  NVL( SUM( EF_PDSPARCELA.VLRPARCELA ),0 ) VLRTOTALPARCELA'+
         '  FROM EF_PDSPARCELA'+
         ' WHERE'+
         '  EF_PDSPARCELA.EMPRESAID = '+ IntToStr( EmpresaId ) +' AND'+
         '  EF_PDSPARCELA.PDSID = '+ IntToStr( PdsId );
 try
  ExecDynamicProvider(-1,iSQL, cds );
  if not cds.IsEmpty then
     Result := cds.FieldByName('VLRTOTALPARCELA').Value;
 finally
  FreeAndNil(cds);
 end;
end;

procedure TdmEF.cdsProdutoCalcFields(DataSet: TDataSet);
begin
 if cdsProduto.State = dsInternalCalc then
    begin
     cdsProdutoC_PRECOVENDA_IPI.Value       := cdsProdutoPRECOVENDA.Value +
                                               ( cdsProdutoPRECOVENDA.Value * ( cdsProdutoALIQUOTAIPI.AsFloat / 100 ) );
     cdsProdutoC_PRECOVENDAMININO_IPI.Value := cdsProdutoPRECOVENDAMINIMO.Value +
                                               ( cdsProdutoPRECOVENDAMINIMO.Value * ( cdsProdutoALIQUOTAIPI.AsFloat / 100 ) );
    end;
end;

procedure TdmEF.cdsPdeNFEIDValidate(Sender: TField);
begin
 if cdsPdeNFEID.AsInteger > 0 then
    cdsPdeDATAENTRADANFEID.AsDateTime := pCnnMain.AppServer.IServerDate;
end;

procedure TdmEF.cdsServicoSUBGRUPOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := 'EF_SUBGRUPO.' + TField( Sender ).FieldName + '=' + QuotedStr( TField( Sender ).AsString );
 iSQL    := AnalisarAddSQL( LocateSQL( cdsSubGrupo.ProviderName ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsServicoL_SIGLAGRUPO.AsString         := Cds.FieldByName('SIGLAGRUPO').AsString;
      cdsServicoL_DESCRICAO_SUBGRUPO.AsString := Cds.FieldByName('DESCRICAO').AsString;
     end
  else
     begin
      cdsServicoL_SIGLAGRUPO.Clear;
      cdsServicoL_DESCRICAO_SUBGRUPO.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;


procedure TdmEF.cdsPdsVLRFRETEValidate(Sender: TField);
begin
 AtualDespAcessorias( Sender.FieldName );
end;

procedure TdmEF.cdsPdsLogReservaNewRecord(DataSet: TDataSet);
begin
 cdsPdsLogReservaLIBERADO.Value         := 0;
 cdsPdsLogReservaUSUARIO.Value          := dmGsi.UsuarioAtivo;
end;

function TdmEF.ValidaCFOP: String;
var iSql, CfopInicial : String;
begin
 iSQL := 'SELECT EF_NATUREZAOP.NATUREZAOPID,' +
         '       EF_NATUREZAOP.CFOP,' +
         '       EF_NATUREZAOP.TIPOMOVIMENTO,' +
         '       EF_NATUREZAOP.DESCRICAOOPERACAOUSUARIO' +
         '  FROM EF_NATUREZAOP EF_NATUREZAOP, EF_NATUREZAEMPRESA EF_NATUREZAEMPRESA' +
         ' WHERE EF_NATUREZAOP.NATUREZAOPID = EF_NATUREZAEMPRESA.NATUREZAOPID(+)' +
         '  AND EF_NATUREZAOP.MOVIMENTOESTOQUE <> ''D'' AND MOVIMENTOESTOQUE <> ''V''';

 dmEF.cdsEmpresa.Open;
 if not dmEF.cdsEmpresa.Locate('EMPRESAID', VarArrayOf([ dmEF.cdsPdsEMPRESAID.AsString]), [loPartialKey]) then
    begin
     MessageDlg('Problemas com o cadatro de empresas, favor comunidar o departamento de Informática.', mtInformation,[mbOk], 0);
     exit
    end;

 if ( trim( dmEF.cdsPdsPAIS.Value ) = 'BRASIL' ) or ( trim( dmEF.cdsPdsPAIS.Value ) = 'BRAZIL' ) then
    begin
     // Para dentro do Estado = 1 para fora = 2 Ex. Origem ->TABOÃO Destino->Recife = 1;
     if dmEF.cdsPdsSIGLAUFID.Value = dmEF.cdsEmpresaSIGLAUFID.Value then
        CfopInicial := '5'
     else
        CfopInicial := '6';
    end
 else
    CfopInicial := '7';  // Exterior;

 iSql := iSql + '  AND SUBSTR( EF_NATUREZAOP.CFOP, 1, 1 ) =  ' + CfopInicial +
                '  AND EF_NATUREZAEMPRESA.EMPRESAID = ' + dmEF.cdsPdsEMPRESAID.AsString;

 if dmEF.cdsPdsOSID.Value <> '' then
    begin
     iSql := iSql + '    AND EF_NATUREZAOP.NATUREZAOPID IN' +
                    '       (SELECT OS_TIPOOSCFOP.NATUREZAOPID' +
                    '          FROM OS_TIPOOSCFOP' +
                    '         WHERE OS_TIPOOSCFOP.TIPOOSID = ' + QuotedStr( Copy( dmEF.cdsPdsOSID.Value, 13, 1 ) )  + ')';
    end;

 Result := iSql;
end;


procedure TdmEF.AtualizaContrato( OsId: String; Quantidade, NaturezaOp,Empenho : Integer; Gravar : Boolean );
var iSQL,iSQLContrato,iSQLUpdContrato,iSQlNat : String;
    cds,cdsCont,cdsNat : TClientDataSet;
begin
 iSQLNat  := 'SELECT NATUREZAOPID, MOVIMENTOESTOQUE, VENDAFATANTECIPADO, COBERTURACONTRATUAL , VENDADEFINITIVA' +
            ' FROM EF_NATUREZAOP ' +
            ' WHERE NATUREZAOPID = ' + IntToStr( NaturezaOp );

 iSQL  := 'SELECT OS_OS.SERIEID,'+
          '       OS_OS.MODELOID,'+
          '       OS_OS.DATAABERTURA'+
          '  FROM OS_OS'+
          ' WHERE OS_OS.OSID = '+ QuotedStr( OsId );

  cds     := nil;
  cdsCont := nil;
  cdsNat  := nil;

 try
  ExecDynamicProvider( -1,iSQLNat,cdsNat );

  if ( Empenho <> 1 ) and
     ( cdsNat.FieldByName('COBERTURACONTRATUAL').AsInteger = 1 ) then
     begin
      ExecDynamicProvider( -1,iSQL,cds );

      iSQLContrato  := 'SELECT '+
                       ' A.CONTRATOID AS CONTRATO, A.ANOID AS ANO,' +
                       ' I.DATAINICIOCONTRATO AS DATAINICIO,'+
                       ' I.DATAFIMCONTRATO AS DATAFIM,'+
                       ' A.SERIEID, A.MODELOID, QTDPECAS, QTDPECASUTIL ' +
                       ' FROM CM_CONTRATO C ' +
                       ' LEFT OUTER JOIN CM_CONTRATOANO  I ON ( C.CONTRATOID = I.CONTRATOID ) ' +
                       ' LEFT OUTER JOIN CM_CONTRATOAPAR A ON ( I.CONTRATOID = A.CONTRATOID AND I.ANOID = A.ANOID )' +
                       'WHERE ' +
                       ' I.DATAFIMCONTRATO >= ' + QuotedStr( cds.FieldByName('DATAABERTURA').AsString ) +
                       ' AND NVL( I.PERIODOCONCLUIDO,0 ) = 0'+
                       ' AND A.SERIEID  = ' + QuotedStr( cds.FieldByName('SERIEID').AsString ) +
                       ' AND A.MODELOID = ' + QuotedStr( cds.FieldByName('MODELOID').AsString );

      ExecDynamicProvider(-1, iSQLContrato, cdsCont );

      iSQLUpdContrato := 'UPDATE CM_CONTRATOAPAR';
      if Gravar then
        iSQLUpdContrato := iSQLUpdContrato+ ' SET QTDPECASUTIL = QTDPECASUTIL + '+ IntToStr( Quantidade )
      else
        iSQLUpdContrato := iSQLUpdContrato+ ' SET QTDPECASUTIL = QTDPECASUTIL - '+ IntToStr( Quantidade );

      iSQLUpdContrato := iSQLUpdContrato +   ' WHERE CM_CONTRATOAPAR.SERIEID  = '+ QuotedStr( cds.FieldByName('SERIEID').AsString ) +
                                             '   AND CM_CONTRATOAPAR.MODELOID = '+ QuotedStr( cds.FieldByName('MODELOID').AsString ) +
                                             '   AND CM_CONTRATOAPAR.ANOID = '+ cdsCont.FieldByName('ANO').AsString;
      ExecDML( iSQLUpdContrato );
     end;

 finally
  FreeAndNil( cds );
  FreeAndNil( cdsCont );
  FreeAndNil( cdsNat );
 end;
end;

procedure TdmEF.cdsReceitaNewRecord(DataSet: TDataSet);
begin
 cdsReceitaRECEITAID.Value := ContadorDB('EF_RECEITA','RECEITAID','');
 cdsReceitaRETENCAO1.Value := 0;
 cdsReceitaRETENCAO2.Value := 0;
 cdsReceitaRETENCAO3.Value := 0;
 cdsReceitaRETENCAO4.Value := 0;
 cdsReceitaUSUARIO.Value   := dmGsi.UsuarioAtivo;
end;

procedure TdmEF.cdsBudgetNewRecord(DataSet: TDataSet);
begin
 cdsBudgetBUDGETID.Value := ContadorDB('EF_BUDGET','BUDGETID','');
 cdsBudgetUSUARIO.Value  := dmGsi.UsuarioAtivo;
end;

procedure TdmEF.cdsBudgetGRUPOIDValidate(Sender: TField);
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
      cdsBudgetL_SIGLAGRUPO.Value     := Cds.FieldByName('SIGLAGRUPO').AsString;
      cdsBudgetL_DESCRICAOGRUPO.Value := Cds.FieldByName('DESCRICAO').AsString;
     end
  else
     begin
      cdsBudgetL_SIGLAGRUPO.Clear;
      cdsBudgetL_DESCRICAOGRUPO.Clear;

      raise Exception.Create('Valor do campo ' + Sender.DisplayName + ' é Inválido.');
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsBudgetSUBGRUPOIDValidate(Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := Nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( dmEF.cdsSubGrupo.ProviderName ),
                            InstSQL );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsBudgetL_SIGLASUBGRUPO.Value     := Cds.FieldByName('SIGLAGRUPO').AsString;
      cdsBudgetL_DESCRICAOSUBGRUPO.Value := Cds.FieldByName('DESCRICAO').AsString;
     end
  else
     begin
      cdsBudgetL_SIGLASUBGRUPO.Clear;
      cdsBudgetL_DESCRICAOSUBGRUPO.Clear;

      raise Exception.Create('Valor do campo ' + Sender.DisplayName + ' é Inválido.');
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TdmEF.cdsNotas_DevNewRecord(DataSet: TDataSet);
begin
 cdsNotas_DevEF_NOTAID.Value     := ContadorDB('EF_NOTAS_DEV','EF_NOTAID','');
 cdsNotas_DevTIPOMOVIMENTO.Value := 'D';
 cdsNotas_DevUSUARIO.Value       := dmGsi.UsuarioAtivo;
end;

end.



