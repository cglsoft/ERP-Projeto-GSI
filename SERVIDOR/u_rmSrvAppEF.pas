unit u_rmSrvAppEF;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, GSIServidor_TLB, DB, Provider, SqlExpr, Variants, FMTBcd, StdVcl;

type
  TSrvAppEF = class(TRemoteDataModule, ISrvAppEF)
    sqldtsEmpresa: TSQLDataSet;
    sqldtsContaContabil: TSQLDataSet;
    sqldtsDepartamento: TSQLDataSet;
    sqldtsObservacao: TSQLDataSet;
    sqldtsSiglaNatureza: TSQLDataSet;
    sqldtsSiglaNaturezaSIGLANATUREZAID: TBCDField;
    sqldtsSiglaNaturezaDESCRICAORESUMIDA: TStringField;
    sqldtsSiglaNaturezaDESCRICAO: TStringField;
    sqldtsSiglaNaturezaCONTACONTABILID: TStringField;
    sqldtsSiglaNaturezaCENTROCUSTOID: TStringField;
    sqldtsSiglaNaturezaUSUARIO: TStringField;
    sqldtsNaturezaOp: TSQLDataSet;
    sqldtsNaturezaEmpresa: TSQLDataSet;
    sqldtsNaturezaEmpresaNATUREZAOPID: TBCDField;
    sqldtsNaturezaEmpresaEMPRESAID: TBCDField;
    sqldtsNaturezaEmpresaUSUARIO: TStringField;
    sqldtsFilial: TSQLDataSet;
    dsprvEmpresa: TDataSetProvider;
    dsprvContaContabil: TDataSetProvider;
    dsprvDepartamento: TDataSetProvider;
    dsprvCargo: TDataSetProvider;
    dsprvObservacao: TDataSetProvider;
    dsprvSiglaNatureza: TDataSetProvider;
    dsNaturezaOpLink: TDataSource;
    dsprvNaturezaOp: TDataSetProvider;
    dsprvFilial: TDataSetProvider;
    sqldtsCategoria: TSQLDataSet;
    sqldtsCategoriaCATEGORIAID: TBCDField;
    sqldtsCategoriaDESCRICAO: TStringField;
    sqldtsCategoriaUSUARIO: TStringField;
    sqldtsEntidade: TSQLDataSet;
    sqldtsEntidadeGrupo: TSQLDataSet;
    sqldtsEntidadeGrupoENTIDADEID: TBCDField;
    sqldtsEntidadeGrupoCATEGORIAID: TBCDField;
    sqldtsEntidadeGrupoUSUARIO: TStringField;
    sqldtsBanco: TSQLDataSet;
    sqldtsBancoBANCOID: TBCDField;
    sqldtsBancoNOME: TStringField;
    sqldtsBancoNUMBANCO: TStringField;
    sqldtsBancoAGENCIA: TStringField;
    sqldtsBancoCONTA: TStringField;
    sqldtsBancoNUMERO: TStringField;
    sqldtsBancoCOMPLEMENTO: TStringField;
    sqldtsBancoENDERECO: TStringField;
    sqldtsBancoBAIRRO: TStringField;
    sqldtsBancoCIDADE: TStringField;
    sqldtsBancoSIGLAUFID: TStringField;
    sqldtsBancoTELEFONE: TStringField;
    sqldtsBancoFAX: TStringField;
    sqldtsBancoCONTATO: TStringField;
    sqldtsBancoUSUARIO: TStringField;
    sqldtsCondPagto: TSQLDataSet;
    sqldtsImposto: TSQLDataSet;
    sqldtsImpostoIMPOSTOID: TStringField;
    sqldtsImpostoVLRALIQUOTA: TFMTBCDField;
    sqldtsImpostoUSUARIO: TStringField;
    sqldtsGrupo: TSQLDataSet;
    sqldtsGrupoGRUPOID: TBCDField;
    sqldtsGrupoDESCRICAO: TStringField;
    sqldtsGrupoUSUARIO: TStringField;
    sqldtsSubGrupo: TSQLDataSet;
    sqldtsSubGrupoSUBGRUPOID: TBCDField;
    sqldtsSubGrupoTIPO: TStringField;
    sqldtsSubGrupoSIGLAGRUPO: TStringField;
    sqldtsSubGrupoDESCRICAO: TStringField;
    sqldtsSubGrupoUSUARIO: TStringField;
    sqldtsOpPrestInterestadual: TSQLDataSet;
    sqldtsUnidade: TSQLDataSet;
    sqldtsUnidadeUNIDADEID: TStringField;
    sqldtsUnidadeDESCRICAO: TStringField;
    sqldtsUnidadeUSUARIO: TStringField;
    sqldtsTecWin: TSQLDataSet;
    sqldtsReceita: TSQLDataSet;
    sqldtsReceitaRECEITAID: TBCDField;
    sqldtsReceitaSIGLA: TStringField;
    sqldtsReceitaDESCRICAO: TStringField;
    sqldtsReceitaTIPORECEITA: TStringField;
    sqldtsReceitaORIGEM: TStringField;
    sqldtsReceitaCONTACONTABILID: TStringField;
    sqldtsReceitaCENTROCUSTOID: TStringField;
    sqldtsReceitaUSUARIO: TStringField;
    sqldtsServico: TSQLDataSet;
    sqldtsProduto: TSQLDataSet;
    sqldtsProdutoItem: TSQLDataSet;
    dsprvCategoria: TDataSetProvider;
    dsprvEntidade: TDataSetProvider;
    dsEntidadeLink: TDataSource;
    dsprvBanco: TDataSetProvider;
    dsprvCondPagto: TDataSetProvider;
    dsprvImposto: TDataSetProvider;
    dsprvGrupo: TDataSetProvider;
    dsprvSubGrupo: TDataSetProvider;
    dsprvOpPrestInterestadual: TDataSetProvider;
    dsprvUnidade: TDataSetProvider;
    dsprvTecWin: TDataSetProvider;
    dsprvReceita: TDataSetProvider;
    dsprvServico: TDataSetProvider;
    dsprvProduto: TDataSetProvider;
    sqldtsKardex: TSQLDataSet;
    sqldtsPde: TSQLDataSet;
    sqldtsPdeItem: TSQLDataSet;
    sqldtsPds: TSQLDataSet;
    dsprvKardex: TDataSetProvider;
    dsprvPde: TDataSetProvider;
    dsprvPds: TDataSetProvider;
    dsPdeLink: TDataSource;
    sqldtsPdsItem: TSQLDataSet;
    sqldtsPdsParcela: TSQLDataSet;
    sqldtsPdsParcelaEMPRESAID: TBCDField;
    sqldtsPdsParcelaPDSID: TBCDField;
    sqldtsPdsParcelaPARCELAID: TBCDField;
    sqldtsPdsParcelaDATAVENCIMENTO: TSQLTimeStampField;
    sqldtsPdsParcelaVLRPARCELA: TBCDField;
    sqldtsPdsParcelaUSUARIO: TStringField;
    sqldtsPdsServico: TSQLDataSet;
    dsPdsLink: TDataSource;
    sqldtsNfe: TSQLDataSet;
    sqldtsNfeItem: TSQLDataSet;
    dsprvNfe: TDataSetProvider;
    dsNfeLink: TDataSource;
    sqldtsNfs: TSQLDataSet;
    sqldtsNfsItem: TSQLDataSet;
    sqldtsNfsParcela: TSQLDataSet;
    sqldtsNfsServico: TSQLDataSet;
    dsprvNfs: TDataSetProvider;
    dsNfsLink: TDataSource;
    sqldtsCargo: TSQLDataSet;
    sqldtsBancoCEPID: TBCDField;
    sqldtsKardexEMPRESAID: TBCDField;
    sqldtsKardexKARDEXID: TBCDField;
    sqldtsKardexDATAOCORRENCIA: TSQLTimeStampField;
    sqldtsKardexNUMDOCUMENTO: TBCDField;
    sqldtsKardexTIPODOCUMENTO: TStringField;
    sqldtsKardexTIPOESTOQUE: TStringField;
    sqldtsKardexOSID: TStringField;
    sqldtsKardexDIID: TStringField;
    sqldtsKardexNATUREZAOPID: TBCDField;
    sqldtsKardexL_CFOP: TStringField;
    sqldtsKardexL_DESCRICAOOPERACAOUSUARIO: TStringField;
    sqldtsKardexTIPOOPERACAO: TStringField;
    sqldtsKardexPRODUTOID: TBCDField;
    sqldtsKardexL_DESCRICAOPORTUGUES: TStringField;
    sqldtsKardexQUANTIDADE: TBCDField;
    sqldtsKardexESTOQUEFISICO: TBCDField;
    sqldtsKardexESTOQUEPEDENTRADA: TBCDField;
    sqldtsKardexESTOQUEPEDSAIDA: TBCDField;
    sqldtsKardexESTOQUEEMTERCEIRO: TBCDField;
    sqldtsKardexESTOQUEDETERCEIRO: TBCDField;
    sqldtsKardexESTOQUEMINIMO: TBCDField;
    sqldtsKardexESTOQUEEMPENHO: TBCDField;
    sqldtsKardexESTOQUEVALE: TBCDField;
    sqldtsKardexESTOQUEESTORNO: TBCDField;
    sqldtsKardexUSUARIO: TStringField;
    sqldtsFilialFILIALID: TBCDField;
    sqldtsFilialCPF_CNPJ: TStringField;
    sqldtsFilialINSCRESTADUAL: TStringField;
    sqldtsFilialINSCRMUNICIPAL: TStringField;
    sqldtsFilialNOME: TStringField;
    sqldtsFilialNOMEFANTASIA: TStringField;
    sqldtsFilialCEPID: TBCDField;
    sqldtsFilialNUMERO: TStringField;
    sqldtsFilialCOMPLEMENTO: TStringField;
    sqldtsFilialENDERECO: TStringField;
    sqldtsFilialBAIRRO: TStringField;
    sqldtsFilialCIDADE: TStringField;
    sqldtsFilialSIGLAUFID: TStringField;
    sqldtsFilialTELEFONE: TStringField;
    sqldtsFilialTELEFONE2: TStringField;
    sqldtsFilialCELULAR: TStringField;
    sqldtsFilialCELULAR2: TStringField;
    sqldtsFilialFAX: TStringField;
    sqldtsFilialEMAIL: TStringField;
    sqldtsFilialPAGINA: TStringField;
    sqldtsFilialIDENTIFICADOR: TStringField;
    sqldtsFilialULTIMAOS: TBCDField;
    sqldtsFilialCONTABANCARIA: TStringField;
    sqldtsFilialCONTACAIXA: TStringField;
    sqldtsFilialUSUARIO: TStringField;
    sqldtsFilialCONTATO: TStringField;
    sqldtsNaturezaEmpresaL_NOMEFANTASIA: TStringField;
    sqldtsEntidadeGrupoL_DESCRICAO: TStringField;
    sqldtsPdeItemBar: TSQLDataSet;
    dsPdeItemLink: TDataSource;
    sqldtsNfeItemBar: TSQLDataSet;
    dsNfeItemLink: TDataSource;
    sqldtsPdsItemBar: TSQLDataSet;
    dsPdsItemLink: TDataSource;
    sqldtsNfsItemBar: TSQLDataSet;
    dsNfsItem: TDataSource;
    sqldtsCargoCARGOID: TBCDField;
    sqldtsCargoDESCRICAO: TStringField;
    sqldtsCargoCONTACONTABILID: TStringField;
    sqldtsCargoUSUARIO: TStringField;
    sqldtsCategoriaFUNCAOVENDA: TBCDField;
    sqldtsDepartamentoDEPARTAMENTOID: TBCDField;
    sqldtsDepartamentoDESCRICAO: TStringField;
    sqldtsDepartamentoSIGLA: TStringField;
    sqldtsDepartamentoFILIALID: TBCDField;
    sqldtsDepartamentoL_FILIAL: TStringField;
    sqldtsDepartamentoCONTACONTABILID: TStringField;
    sqldtsDepartamentoCENTROCUSTOID: TStringField;
    sqldtsDepartamentoUSUARIO: TStringField;
    sqldtsModeloDocFiscal: TSQLDataSet;
    sqldtsModeloDocFiscalMODELODOCFISCALID: TBCDField;
    sqldtsModeloDocFiscalMODELO: TStringField;
    sqldtsModeloDocFiscalUSUARIO: TStringField;
    dsprvModeloDocFiscal: TDataSetProvider;
    sqldtsCategJuridica: TSQLDataSet;
    dsprvCategJuridica: TDataSetProvider;
    sqldtsCategJuridicaCATEGJURIDICAID: TBCDField;
    sqldtsCategJuridicaDESCRICAO: TStringField;
    sqldtsCategJuridicaUSUARIO: TStringField;
    sqldtsNaturezaJuridica: TSQLDataSet;
    dsprvNaturezaJuridica: TDataSetProvider;
    sqldtsNaturezaJuridicaNATUREZAJURIDICAID: TBCDField;
    sqldtsNaturezaJuridicaCATEGJURIDICAID: TBCDField;
    sqldtsNaturezaJuridicaL_CATEGJURIDICA: TStringField;
    sqldtsNaturezaJuridicaDESCRICAO: TStringField;
    sqldtsNaturezaJuridicaIMPRIMIRDUPLICATA: TBCDField;
    sqldtsNaturezaJuridicaUSUARIO: TStringField;
    sqldtsEntidadeENTIDADEID: TBCDField;
    sqldtsEntidadeCPFCNPJ: TStringField;
    sqldtsEntidadeFISICAJURIDICA: TStringField;
    sqldtsEntidadeINSCRESTADUAL: TStringField;
    sqldtsEntidadeINSCRMUNICIPAL: TStringField;
    sqldtsEntidadeNOME: TStringField;
    sqldtsEntidadeNOMEFANTASIA: TStringField;
    sqldtsEntidadePASTA: TStringField;
    sqldtsEntidadeSTATUSCOMERCIAL: TBCDField;
    sqldtsEntidadeSTATUSFINANCEIRO: TBCDField;
    sqldtsEntidadeNATUREZAJURIDICAID: TBCDField;
    sqldtsEntidadeL_NATUREZAJURIDICA: TStringField;
    sqldtsEntidadeL_CATEGJURIDICA: TStringField;
    sqldtsEntidadeCEPID: TBCDField;
    sqldtsEntidadeNUMERO: TStringField;
    sqldtsEntidadeCOMPLEMENTO: TStringField;
    sqldtsEntidadeENDERECO: TStringField;
    sqldtsEntidadeBAIRRO: TStringField;
    sqldtsEntidadeCIDADE: TStringField;
    sqldtsEntidadeSIGLAUFID: TStringField;
    sqldtsEntidadePAIS: TStringField;
    sqldtsEntidadeCEPCOBID: TBCDField;
    sqldtsEntidadeNUMEROCOB: TStringField;
    sqldtsEntidadeCOMPLEMENTOCOB: TStringField;
    sqldtsEntidadeENDERECOCOB: TStringField;
    sqldtsEntidadeBAIRROCOB: TStringField;
    sqldtsEntidadeCIDADECOB: TStringField;
    sqldtsEntidadeSIGLAUFCOBID: TStringField;
    sqldtsEntidadePAISCOB: TStringField;
    sqldtsEntidadeCONTATO: TStringField;
    sqldtsEntidadeCONTATOCOB: TStringField;
    sqldtsEntidadeTELEFONE: TStringField;
    sqldtsEntidadeTELEFONE2: TStringField;
    sqldtsEntidadeCELULAR: TStringField;
    sqldtsEntidadeCELULAR2: TStringField;
    sqldtsEntidadeFAX: TStringField;
    sqldtsEntidadeEMAIL: TStringField;
    sqldtsEntidadePAGINA: TStringField;
    sqldtsEntidadeOBSERVACAO: TStringField;
    sqldtsEntidadeCONTRIBUINTEICMS: TBCDField;
    sqldtsEntidadeRG: TStringField;
    sqldtsEntidadeRGORGAOEMISSOR: TStringField;
    sqldtsEntidadeHABILITACAO: TStringField;
    sqldtsEntidadeVALIDADEHABILITACAO: TSQLTimeStampField;
    sqldtsEntidadeCRM: TStringField;
    sqldtsEntidadeCRMORGAOEMISSOR: TStringField;
    sqldtsEntidadeCARGOID: TBCDField;
    sqldtsEntidadeL_DESCRICAOCARGO: TStringField;
    sqldtsEntidadeFILIALID: TBCDField;
    sqldtsEntidadeL_NOMEFANTASIA: TStringField;
    sqldtsEntidadeDEPARTAMENTOID: TBCDField;
    sqldtsEntidadeL_DESCRICAODEPTO: TStringField;
    sqldtsEntidadeUSUARIO: TStringField;
    sqldtsBancoCONTACONTABILID: TStringField;
    sqldtsProdutoEMPRESAID: TBCDField;
    sqldtsProdutoPRODUTOID: TBCDField;
    sqldtsProdutoORIGEM: TStringField;
    sqldtsProdutoATIVO: TBCDField;
    sqldtsProdutoNOVOUSADO: TStringField;
    sqldtsProdutoGRUPOID: TBCDField;
    sqldtsProdutoL_DESCRICAO_GRUPO: TStringField;
    sqldtsProdutoSUBGRUPOID: TBCDField;
    sqldtsProdutoL_DESCRICAO_SUBGRUPO: TStringField;
    sqldtsProdutoPARTNUMBERID: TStringField;
    sqldtsProdutoDESCRICAOPORTUGUES: TStringField;
    sqldtsProdutoDESCRICAOINGLES: TStringField;
    sqldtsProdutoFORNECEDORID: TBCDField;
    sqldtsProdutoL_NOMEFORNECEDOR: TStringField;
    sqldtsProdutoGERACODBARRA: TBCDField;
    sqldtsProdutoLOCALIZACAO: TStringField;
    sqldtsProdutoUNIDADEID: TStringField;
    sqldtsProdutoL_DESCRICAOUNIDADE: TStringField;
    sqldtsProdutoPESO: TFMTBCDField;
    sqldtsProdutoAPLICACAO: TStringField;
    sqldtsProdutoOBSERVACAO: TStringField;
    sqldtsProdutoNCMID: TStringField;
    sqldtsProdutoDESCRICAONCM: TStringField;
    sqldtsProdutoINCENTIVOICMS: TBCDField;
    sqldtsProdutoREDUCAOICMS: TFMTBCDField;
    sqldtsProdutoALIQUOTAII: TFMTBCDField;
    sqldtsProdutoDATAINICIALII: TSQLTimeStampField;
    sqldtsProdutoDATAFINALII: TSQLTimeStampField;
    sqldtsProdutoALIQUOTAIPI: TFMTBCDField;
    sqldtsProdutoDATAINICIALIPI: TSQLTimeStampField;
    sqldtsProdutoDATAFINALIPI: TSQLTimeStampField;
    sqldtsProdutoSUSPENSAOIPI: TBCDField;
    sqldtsProdutoISENTOIPI: TBCDField;
    sqldtsProdutoCONTACTBATIVO: TStringField;
    sqldtsProdutoCONTACTBDESPESA: TStringField;
    sqldtsProdutoCONTACTBRECEITA: TStringField;
    sqldtsProdutoCUSTOMEDIOUS: TBCDField;
    sqldtsProdutoCUSTOMEDIO: TBCDField;
    sqldtsProdutoCUSTOTOTAL: TBCDField;
    sqldtsProdutoPRECOVENDA: TBCDField;
    sqldtsProdutoPRECOVENDAMINIMO: TBCDField;
    sqldtsProdutoVLRFOB: TBCDField;
    sqldtsProdutoVLRFOBUS: TBCDField;
    sqldtsProdutoESTOQUENOVO: TBCDField;
    sqldtsProdutoESTOQUEREVISADO: TBCDField;
    sqldtsProdutoESTOQUEFISICO: TBCDField;
    sqldtsProdutoESTOQUEPEDENTRADA: TBCDField;
    sqldtsProdutoESTOQUEPEDSAIDA: TBCDField;
    sqldtsProdutoESTOQUEEMTERCEIRO: TBCDField;
    sqldtsProdutoESTOQUEDETERCEIRO: TBCDField;
    sqldtsProdutoESTOQUEMINIMO: TBCDField;
    sqldtsProdutoESTOQUEEMPENHO: TBCDField;
    sqldtsProdutoESTOQUEVALE: TBCDField;
    sqldtsProdutoESTOQUEESTORNO: TBCDField;
    sqldtsProdutoESTOQUETOTAL: TBCDField;
    sqldtsProdutoNCM2ID: TStringField;
    sqldtsProdutoNCM3ID: TStringField;
    sqldtsProdutoDATANCM: TSQLTimeStampField;
    sqldtsProdutoDATANCM2: TSQLTimeStampField;
    sqldtsProdutoDATANCM3: TSQLTimeStampField;
    sqldtsProdutoALIQUOTATEMPIPI: TFMTBCDField;
    sqldtsProdutoALIQUOTATEMPII: TFMTBCDField;
    sqldtsProdutoUSUARIO: TStringField;
    sqldtsProdutoItemEMPRESAID: TBCDField;
    sqldtsProdutoItemPRODUTOID: TBCDField;
    sqldtsProdutoItemPRODUTOITEMID: TBCDField;
    sqldtsProdutoItemDATAENTRADA: TSQLTimeStampField;
    sqldtsProdutoItemCODIGOBARRA: TStringField;
    sqldtsProdutoItemSERIEID: TStringField;
    sqldtsProdutoItemREVISAO: TBCDField;
    sqldtsProdutoItemDATAULTIMAREVISAO: TSQLTimeStampField;
    sqldtsProdutoItemTIPOPRODUTO: TStringField;
    sqldtsProdutoItemQUANTIDADE: TBCDField;
    sqldtsProdutoItemQTDUTILIZADA: TBCDField;
    sqldtsProdutoItemSTATUS: TStringField;
    sqldtsProdutoItemINCENTIVOICMS: TBCDField;
    sqldtsProdutoItemNCMID: TStringField;
    sqldtsProdutoItemDATANCM: TSQLTimeStampField;
    sqldtsProdutoItemOBSERVACAO: TStringField;
    sqldtsProdutoItemUSUARIO: TStringField;
    sqldtsPdeItemBarEMPRESAID: TBCDField;
    sqldtsPdeItemBarPDEID: TBCDField;
    sqldtsPdeItemBarITEMID: TBCDField;
    sqldtsPdeItemBarITEMBARID: TBCDField;
    sqldtsPdeItemBarPRODUTOID: TBCDField;
    sqldtsPdeItemBarPRODUTOITEMID: TBCDField;
    sqldtsPdeItemBarL_INCENTIVOICMS: TBCDField;
    sqldtsPdeItemBarL_NCMID: TStringField;
    sqldtsPdeItemBarESTOQUEUTILIZADO: TStringField;
    sqldtsPdeItemBarUSUARIO: TStringField;
    sqldtsNfeItemBarEMPRESAID: TBCDField;
    sqldtsNfeItemBarNFEID: TBCDField;
    sqldtsNfeItemBarDATAEMISSAOID: TSQLTimeStampField;
    sqldtsNfeItemBarENTIDADEID: TBCDField;
    sqldtsNfeItemBarITEMID: TBCDField;
    sqldtsNfeItemBarITEMBARID: TBCDField;
    sqldtsNfeItemBarPRODUTOID: TBCDField;
    sqldtsNfeItemBarPRODUTOITEMID: TBCDField;
    sqldtsNfeItemBarL_INCENTIVOICMS: TBCDField;
    sqldtsNfeItemBarL_NCMID: TStringField;
    sqldtsNfeItemBarESTOQUEUTILIZADO: TStringField;
    sqldtsNfeItemBarUSUARIO: TStringField;
    sqldtsPdsEMPRESAID: TBCDField;
    sqldtsPdsPDSID: TBCDField;
    sqldtsPdsDATAPEDIDO: TSQLTimeStampField;
    sqldtsPdsSTATUS: TBCDField;
    sqldtsPdsPRENOTA: TBCDField;
    sqldtsPdsOSID: TStringField;
    sqldtsPdsLIBCHEFIA: TBCDField;
    sqldtsPdsLIBCHEFIANOME: TStringField;
    sqldtsPdsLIBCHEFIADATA: TSQLTimeStampField;
    sqldtsPdsLIBFINANCEIRO: TBCDField;
    sqldtsPdsLIBFINANCEIRONOME: TStringField;
    sqldtsPdsLIBFINANCEIRODATA: TSQLTimeStampField;
    sqldtsPdsLIBCONTABIL: TBCDField;
    sqldtsPdsLIBCONTABILNOME: TStringField;
    sqldtsPdsLIBCONTABILDATA: TSQLTimeStampField;
    sqldtsPdsNFEID: TBCDField;
    sqldtsPdsDATAEMISSAONFEID: TSQLTimeStampField;
    sqldtsPdsTIPONOTAENTRADA: TStringField;
    sqldtsPdsTIPONOTA: TStringField;
    sqldtsPdsCATEGORIAID: TBCDField;
    sqldtsPdsENTIDADEID: TBCDField;
    sqldtsPdsNOME: TStringField;
    sqldtsPdsCEPID: TBCDField;
    sqldtsPdsNUMERO: TStringField;
    sqldtsPdsCOMPLEMENTO: TStringField;
    sqldtsPdsENDERECO: TStringField;
    sqldtsPdsBAIRRO: TStringField;
    sqldtsPdsCIDADE: TStringField;
    sqldtsPdsSIGLAUFID: TStringField;
    sqldtsPdsPAIS: TStringField;
    sqldtsPdsCONTRIBUINTEICMS: TBCDField;
    sqldtsPdsENDERECOENTREGA: TStringField;
    sqldtsPdsENDERECOCOBRANCA: TStringField;
    sqldtsPdsNATUREZAOPID: TBCDField;
    sqldtsPdsL_CFOP: TStringField;
    sqldtsPdsL_DESCRICAOOPERACAOUSUARIO: TStringField;
    sqldtsPdsCONDPAGTOID: TBCDField;
    sqldtsPdsOBSERVACAOID: TBCDField;
    sqldtsPdsTRANSPORTADORID: TBCDField;
    sqldtsPdsL_NOMETRANSPORTADOR: TStringField;
    sqldtsPdsPLACAVEICULO: TStringField;
    sqldtsPdsMODALIDADEFRETE: TStringField;
    sqldtsPdsVLRFRETE: TBCDField;
    sqldtsPdsVLRSEGURO: TBCDField;
    sqldtsPdsVLRDESPESAACESSORIA: TBCDField;
    sqldtsPdsEMBQTDVOLUMES: TBCDField;
    sqldtsPdsEMBNUMERO: TBCDField;
    sqldtsPdsEMBMARCA: TStringField;
    sqldtsPdsEMBESPECIE: TStringField;
    sqldtsPdsEMBPESOBRUTO: TBCDField;
    sqldtsPdsEMBPESOLIQUIDO: TBCDField;
    sqldtsPdsVLRTOTALSERVICO: TBCDField;
    sqldtsPdsVLRTOTALISS: TBCDField;
    sqldtsPdsVLRTOTALCOFINS: TBCDField;
    sqldtsPdsVLRTOTALPIS: TBCDField;
    sqldtsPdsVLRTOTALBASEICMS: TBCDField;
    sqldtsPdsVLRTOTALICMS: TBCDField;
    sqldtsPdsVLRTOTALISENTASICMS: TBCDField;
    sqldtsPdsVLRTOTALOUTRASICMS: TBCDField;
    sqldtsPdsVLRTOTALBASEIPI: TBCDField;
    sqldtsPdsVLRTOTALIPI: TBCDField;
    sqldtsPdsVLRTOTALISENTASIPI: TBCDField;
    sqldtsPdsVLRTOTALOUTRASIPI: TBCDField;
    sqldtsPdsVLRTOTALPRODUTO: TBCDField;
    sqldtsPdsVLRTOTALNOTA: TBCDField;
    sqldtsPdsUSUARIO: TStringField;
    sqldtsPdsItemEMPRESAID: TBCDField;
    sqldtsPdsItemPDSID: TBCDField;
    sqldtsPdsItemITEMID: TBCDField;
    sqldtsPdsItemNATUREZAOPID: TBCDField;
    sqldtsPdsItemOBSERVACAOID: TBCDField;
    sqldtsPdsItemPRODUTOID: TBCDField;
    sqldtsPdsItemDESCRICAO: TStringField;
    sqldtsPdsItemQUANTIDADE: TBCDField;
    sqldtsPdsItemVLRPRECOUNITARIO: TBCDField;
    sqldtsPdsItemVLRPRECOTOTAL: TBCDField;
    sqldtsPdsItemVLRDESCONTO: TBCDField;
    sqldtsPdsItemEMPENHO: TBCDField;
    sqldtsPdsItemQUANTIDADEEMPENHO: TFMTBCDField;
    sqldtsPdsItemRETORNO: TStringField;
    sqldtsPdsItemQTDRETORNA: TBCDField;
    sqldtsPdsItemVLRBASEICMS: TBCDField;
    sqldtsPdsItemALIQUOTAICMS: TFMTBCDField;
    sqldtsPdsItemVLRICMS: TBCDField;
    sqldtsPdsItemVLRISENTASICMS: TBCDField;
    sqldtsPdsItemVLROUTRASICMS: TBCDField;
    sqldtsPdsItemPORCREDUCAOICMS: TBCDField;
    sqldtsPdsItemSITTRIBUTARIAESTADUAL: TStringField;
    sqldtsPdsItemALIQUOTACOFINS: TFMTBCDField;
    sqldtsPdsItemVLRCOFINS: TBCDField;
    sqldtsPdsItemALIQUOTAPIS: TFMTBCDField;
    sqldtsPdsItemVLRPIS: TBCDField;
    sqldtsPdsItemVLRBASEIPI: TBCDField;
    sqldtsPdsItemVLRIPI: TBCDField;
    sqldtsPdsItemVLRISENTASIPI: TBCDField;
    sqldtsPdsItemVLROUTRASIPI: TBCDField;
    sqldtsPdsItemTIPOIPI: TStringField;
    sqldtsPdsItemSITTRIBUTARIAFEDERAL: TBCDField;
    sqldtsPdsItemARTIGO: TStringField;
    sqldtsPdsItemDATAINICIALIPI: TSQLTimeStampField;
    sqldtsPdsItemDATAFINALIPI: TSQLTimeStampField;
    sqldtsPdsItemPRODINCENTIVADO: TBCDField;
    sqldtsPdsItemUSUARIO: TStringField;
    sqldtsPdsItemBarEMPRESAID: TBCDField;
    sqldtsPdsItemBarPDSID: TBCDField;
    sqldtsPdsItemBarITEMID: TBCDField;
    sqldtsPdsItemBarITEMBARID: TBCDField;
    sqldtsPdsItemBarPRODUTOID: TBCDField;
    sqldtsPdsItemBarPRODUTOITEMID: TBCDField;
    sqldtsPdsItemBarL_INCENTIVOICMS: TBCDField;
    sqldtsPdsItemBarL_NCMID: TStringField;
    sqldtsPdsItemBarESTOQUEUTILIZADO: TStringField;
    sqldtsPdsItemBarUSUARIO: TStringField;
    sqldtsNfsEMPRESAID: TBCDField;
    sqldtsNfsNFSID: TBCDField;
    sqldtsNfsDATAEMISSAOID: TSQLTimeStampField;
    sqldtsNfsCANCELADA: TBCDField;
    sqldtsNfsEXPORTADO: TBCDField;
    sqldtsNfsOSID: TStringField;
    sqldtsNfsPDSID: TBCDField;
    sqldtsNfsDATAPEDIDO: TSQLTimeStampField;
    sqldtsNfsLIBCHEFIA: TBCDField;
    sqldtsNfsLIBCHEFIANOME: TStringField;
    sqldtsNfsLIBCHEFIADATA: TSQLTimeStampField;
    sqldtsNfsLIBFINANCEIRO: TBCDField;
    sqldtsNfsLIBFINANCEIRONOME: TStringField;
    sqldtsNfsLIBFINANCEIRODATA: TSQLTimeStampField;
    sqldtsNfsLIBCONTABIL: TBCDField;
    sqldtsNfsLIBCONTABILNOME: TStringField;
    sqldtsNfsLIBCONTABILDATA: TSQLTimeStampField;
    sqldtsNfsNFEID: TBCDField;
    sqldtsNfsDATAEMISSAONFEID: TSQLTimeStampField;
    sqldtsNfsTIPONOTAENTRADA: TStringField;
    sqldtsNfsTIPONOTA: TStringField;
    sqldtsNfsCATEGORIAID: TBCDField;
    sqldtsNfsENTIDADEID: TBCDField;
    sqldtsNfsNOME: TStringField;
    sqldtsNfsCEPID: TBCDField;
    sqldtsNfsNUMERO: TStringField;
    sqldtsNfsCOMPLEMENTO: TStringField;
    sqldtsNfsENDERECO: TStringField;
    sqldtsNfsBAIRRO: TStringField;
    sqldtsNfsCIDADE: TStringField;
    sqldtsNfsSIGLAUFID: TStringField;
    sqldtsNfsPAIS: TStringField;
    sqldtsNfsENDERECOENTREGA: TStringField;
    sqldtsNfsENDERECOCOBRANCA: TStringField;
    sqldtsNfsCONTRIBUINTEICMS: TBCDField;
    sqldtsNfsNATUREZAOPID: TBCDField;
    sqldtsNfsL_CFOP: TStringField;
    sqldtsNfsL_DESCRICAOOPERACAOUSUARIO: TStringField;
    sqldtsNfsL_DESCRICAOOPERACAONOTA: TStringField;
    sqldtsNfsCONDPAGTOID: TBCDField;
    sqldtsNfsOBSERVACAOID: TBCDField;
    sqldtsNfsTRANSPORTADORID: TBCDField;
    sqldtsNfsL_NOMETRANSPORTADOR: TStringField;
    sqldtsNfsPLACAVEICULO: TStringField;
    sqldtsNfsMODALIDADEFRETE: TStringField;
    sqldtsNfsVLRFRETE: TBCDField;
    sqldtsNfsVLRSEGURO: TBCDField;
    sqldtsNfsVLRDESPESAACESSORIA: TBCDField;
    sqldtsNfsEMBQTDVOLUMES: TBCDField;
    sqldtsNfsEMBNUMERO: TBCDField;
    sqldtsNfsEMBMARCA: TStringField;
    sqldtsNfsEMBESPECIE: TStringField;
    sqldtsNfsEMBPESOBRUTO: TFMTBCDField;
    sqldtsNfsEMBPESOLIQUIDO: TFMTBCDField;
    sqldtsNfsVLRTOTALSERVICO: TBCDField;
    sqldtsNfsVLRTOTALISS: TBCDField;
    sqldtsNfsVLRTOTALCOFINS: TBCDField;
    sqldtsNfsVLRTOTALPIS: TBCDField;
    sqldtsNfsVLRTOTALBASEICMS: TBCDField;
    sqldtsNfsVLRTOTALICMS: TBCDField;
    sqldtsNfsVLRTOTALISENTASICMS: TBCDField;
    sqldtsNfsVLRTOTALOUTRASICMS: TBCDField;
    sqldtsNfsVLRTOTALBASEIPI: TBCDField;
    sqldtsNfsVLRTOTALIPI: TBCDField;
    sqldtsNfsVLRTOTALISENTASIPI: TBCDField;
    sqldtsNfsVLRTOTALOUTRASIPI: TBCDField;
    sqldtsNfsVLRTOTALPRODUTO: TBCDField;
    sqldtsNfsVLRTOTALNOTA: TBCDField;
    sqldtsNfsDATAIMPRESSAO: TSQLTimeStampField;
    sqldtsNfsUSUARIO: TStringField;
    sqldtsNfsItemEMPRESAID: TBCDField;
    sqldtsNfsItemNFSID: TBCDField;
    sqldtsNfsItemDATAEMISSAOID: TSQLTimeStampField;
    sqldtsNfsItemITEMID: TBCDField;
    sqldtsNfsItemNATUREZAOPID: TBCDField;
    sqldtsNfsItemOBSERVACAOID: TBCDField;
    sqldtsNfsItemPRODUTOID: TBCDField;
    sqldtsNfsItemDESCRICAOPRODUTO: TStringField;
    sqldtsNfsItemQUANTIDADE: TFMTBCDField;
    sqldtsNfsItemVLRPRECOUNITARIO: TBCDField;
    sqldtsNfsItemVLRPRECOTOTAL: TBCDField;
    sqldtsNfsItemVLRDESCONTO: TBCDField;
    sqldtsNfsItemEMPENHO: TBCDField;
    sqldtsNfsItemQUANTIDADEEMPENHO: TBCDField;
    sqldtsNfsItemRETORNO: TStringField;
    sqldtsNfsItemQTDRETORNA: TBCDField;
    sqldtsNfsItemVLRBASEICMS: TBCDField;
    sqldtsNfsItemALIQUOTAICMS: TFMTBCDField;
    sqldtsNfsItemVLRICMS: TBCDField;
    sqldtsNfsItemVLRISENTASICMS: TBCDField;
    sqldtsNfsItemVLROUTRASICMS: TBCDField;
    sqldtsNfsItemPORCREDUCAOICMS: TBCDField;
    sqldtsNfsItemSITTRIBUTARIAESTADUAL: TStringField;
    sqldtsNfsItemALIQUOTACOFINS: TFMTBCDField;
    sqldtsNfsItemVLRCOFINS: TBCDField;
    sqldtsNfsItemALIQUOTAPIS: TFMTBCDField;
    sqldtsNfsItemVLRPIS: TBCDField;
    sqldtsNfsItemVLRBASEIPI: TBCDField;
    sqldtsNfsItemALIQUOTAIPI: TFMTBCDField;
    sqldtsNfsItemVLRIPI: TBCDField;
    sqldtsNfsItemVLRISENTASIPI: TBCDField;
    sqldtsNfsItemVLROUTROIPI: TBCDField;
    sqldtsNfsItemTIPOIPI: TStringField;
    sqldtsNfsItemSITTRIBUTARIAFEDERAL: TBCDField;
    sqldtsNfsItemARTIGO: TStringField;
    sqldtsNfsItemDATAINICIALIPI: TSQLTimeStampField;
    sqldtsNfsItemDATAFINALIPI: TSQLTimeStampField;
    sqldtsNfsItemPRODINCENTIVADO: TBCDField;
    sqldtsNfsItemUSUARIO: TStringField;
    sqldtsNfsItemBarEMPRESAID: TBCDField;
    sqldtsNfsItemBarNFSID: TBCDField;
    sqldtsNfsItemBarDATAEMISSAOID: TSQLTimeStampField;
    sqldtsNfsItemBarITEMID: TBCDField;
    sqldtsNfsItemBarITEMBARID: TBCDField;
    sqldtsNfsItemBarPRODUTOID: TBCDField;
    sqldtsNfsItemBarPRODUTOITEMID: TBCDField;
    sqldtsNfsItemBarL_INCENTIVOICMS: TBCDField;
    sqldtsNfsItemBarL_NCMID: TStringField;
    sqldtsNfsItemBarESTOQUEUTILIZADO: TStringField;
    sqldtsNfsItemBarUSUARIO: TStringField;
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
    sqldtsNfsParcelaUSUARIO: TStringField;
    dsProdutoLink: TDataSource;
    sqldtsPdsL_CONDICAOPAGTO: TStringField;
    sqldtsNfsL_CONDICAOPAGTO: TStringField;
    sqldtsPdsServicoEMPRESAID: TBCDField;
    sqldtsPdsServicoPDSID: TBCDField;
    sqldtsPdsServicoITEMID: TBCDField;
    sqldtsPdsServicoSERVICOID: TBCDField;
    sqldtsPdsServicoL_DESCRICAORESUMIDA: TStringField;
    sqldtsPdsServicoVLRISS: TBCDField;
    sqldtsPdsServicoVLRSERVICO: TBCDField;
    sqldtsPdsServicoALIQUOTACOFINS: TFMTBCDField;
    sqldtsPdsServicoVLRCOFINS: TBCDField;
    sqldtsPdsServicoALIQUOTAPIS: TFMTBCDField;
    sqldtsPdsServicoVLRPIS: TBCDField;
    sqldtsPdsServicoUSUARIO: TStringField;
    sqldtsNfsServicoEMPRESAID: TBCDField;
    sqldtsNfsServicoNFSID: TBCDField;
    sqldtsNfsServicoDATAEMISSAOID: TSQLTimeStampField;
    sqldtsNfsServicoITEMID: TBCDField;
    sqldtsNfsServicoSERVICOID: TBCDField;
    sqldtsNfsServicoL_DESCRICAORESUMIDA: TStringField;
    sqldtsNfsServicoVLRISS: TBCDField;
    sqldtsNfsServicoVLRSERVICO: TBCDField;
    sqldtsNfsServicoALIQUOTACOFINS: TFMTBCDField;
    sqldtsNfsServicoVLRCOFINS: TBCDField;
    sqldtsNfsServicoALIQUOTAPIS: TFMTBCDField;
    sqldtsNfsServicoVLRPIS: TBCDField;
    sqldtsNfsServicoVLRRETCOFINS: TBCDField;
    sqldtsNfsServicoVLRRETPIS: TBCDField;
    sqldtsNfsServicoVLRRETCSLL: TBCDField;
    sqldtsNfsServicoUSUARIO: TStringField;
    sqldtsObservacaoOBSERVACAOID: TBCDField;
    sqldtsObservacaoDESCRICAO: TMemoField;
    sqldtsObservacaoUSUARIO: TStringField;
    sqldtsCondPagtoCONDPAGTOID: TBCDField;
    sqldtsCondPagtoDESCRICAO: TStringField;
    sqldtsCondPagtoNUMPARCELA: TBCDField;
    sqldtsCondPagtoDIASPRIMEIRA: TBCDField;
    sqldtsCondPagtoDIASENTREPARC: TBCDField;
    sqldtsCondPagtoMULTA: TBCDField;
    sqldtsCondPagtoDIASJUROS: TBCDField;
    sqldtsCondPagtoJUROS: TBCDField;
    sqldtsCondPagtoDESCONTO: TBCDField;
    sqldtsCondPagtoEMITEDUPLICATA: TBCDField;
    sqldtsCondPagtoDIAUNICO: TBCDField;
    sqldtsCondPagtoIMPRIMEDESCRICAO: TBCDField;
    sqldtsCondPagtoDESCRICAOPAGTO: TMemoField;
    sqldtsCondPagtoDATAIGUALEMISSAO: TBCDField;
    sqldtsCondPagtoIMPRIMEDUPLIC1PARCELA: TBCDField;
    sqldtsCondPagtoUSUARIO: TStringField;
    sqldtsServicoEMPRESAID: TBCDField;
    sqldtsServicoSERVICOID: TBCDField;
    sqldtsServicoRECEITAID: TBCDField;
    sqldtsServicoL_SIGLARECEITA: TStringField;
    sqldtsServicoL_DESCRICAORECEITA: TStringField;
    sqldtsServicoDESCRICAORESUMIDA: TStringField;
    sqldtsServicoDESCRICAOCOMPLETA: TMemoField;
    sqldtsServicoGRUPOID: TBCDField;
    sqldtsServicoUSUARIO: TStringField;
    sqldtsPdeEMPRESAID: TBCDField;
    sqldtsPdePDEID: TBCDField;
    sqldtsPdeDATAPEDIDO: TSQLTimeStampField;
    sqldtsPdeDATAPREVISAO: TSQLTimeStampField;
    sqldtsPdeDESCRICAOIMPORTACAO: TMemoField;
    sqldtsPdeOSID: TStringField;
    sqldtsPdeLIBCHEFIA: TBCDField;
    sqldtsPdeLIBCHEFIANOME: TStringField;
    sqldtsPdeLIBCHEFIADATA: TSQLTimeStampField;
    sqldtsPdeLIBFINANCEIRO: TBCDField;
    sqldtsPdeLIBFINANCEIRONOME: TStringField;
    sqldtsPdeLIBFINANCEIRODATA: TSQLTimeStampField;
    sqldtsPdeLIBCONTABIL: TBCDField;
    sqldtsPdeLIBCONTABILNOME: TStringField;
    sqldtsPdeLIBCONTABILDATA: TSQLTimeStampField;
    sqldtsPdeMOVIMENTAESTOQUE: TBCDField;
    sqldtsPdeNFEID: TBCDField;
    sqldtsPdeDATAEMISSAONFEID: TSQLTimeStampField;
    sqldtsPdeMODELODOCFISCALID: TBCDField;
    sqldtsPdeL_MODELODOCFISCAL: TStringField;
    sqldtsPdeSERIE: TStringField;
    sqldtsPdeNFSID: TBCDField;
    sqldtsPdeDATAEMISSAONFSID: TSQLTimeStampField;
    sqldtsPdeTIPONOTA: TStringField;
    sqldtsPdeCATEGORIAID: TBCDField;
    sqldtsPdeENTIDADEID: TBCDField;
    sqldtsPdeNOME: TStringField;
    sqldtsPdeCEPID: TBCDField;
    sqldtsPdeNUMERO: TStringField;
    sqldtsPdeCOMPLEMENTO: TStringField;
    sqldtsPdeENDERECO: TStringField;
    sqldtsPdeBAIRRO: TStringField;
    sqldtsPdeCIDADE: TStringField;
    sqldtsPdeSIGLAUFID: TStringField;
    sqldtsPdePAIS: TStringField;
    sqldtsPdeCONTRIBUINTEICMS: TBCDField;
    sqldtsPdeNATUREZAOPID: TBCDField;
    sqldtsPdeL_CFOP: TStringField;
    sqldtsPdeL_DESCRICAOOPERACAOUSUARIO: TStringField;
    sqldtsPdeOBSERVACAOID: TBCDField;
    sqldtsPdeDESCRICAOOBSERVACAO: TMemoField;
    sqldtsPdeTRANSPORTADORID: TBCDField;
    sqldtsPdeL_NOMETRANSPORTADOR: TStringField;
    sqldtsPdePLACAVEICULO: TStringField;
    sqldtsPdeMODALIDADEFRETE: TStringField;
    sqldtsPdeVLRFRETE: TBCDField;
    sqldtsPdeVLRSEGURO: TBCDField;
    sqldtsPdeVLRDESPESAACESSORIA: TBCDField;
    sqldtsPdeEMBQTDVOLUMES: TBCDField;
    sqldtsPdeEMBNUMERO: TBCDField;
    sqldtsPdeEMBMARCA: TStringField;
    sqldtsPdeEMBESPECIE: TStringField;
    sqldtsPdeEMBPESOBRUTO: TBCDField;
    sqldtsPdeEMBPESOLIQUIDO: TBCDField;
    sqldtsPdeVLRTOTALCOFINS: TBCDField;
    sqldtsPdeVLRTOTALPIS: TBCDField;
    sqldtsPdeVLRTOTALCREDCOFINS: TBCDField;
    sqldtsPdeVLRTOTALCREDPIS: TBCDField;
    sqldtsPdeVLRTOTALBASEICMS: TBCDField;
    sqldtsPdeVLRTOTALICMS: TBCDField;
    sqldtsPdeVLRTOTALISENTASICMS: TBCDField;
    sqldtsPdeVLRTOTALOUTRASICMS: TBCDField;
    sqldtsPdeVLRTOTALBASEIPI: TBCDField;
    sqldtsPdeVLRTOTALIPI: TBCDField;
    sqldtsPdeVLRTOTALISENTASIPI: TBCDField;
    sqldtsPdeVLRTOTALOUTRASIPI: TBCDField;
    sqldtsPdeVLRTOTALPRODUTO: TBCDField;
    sqldtsPdeVLRTOTALNOTA: TBCDField;
    sqldtsPdeUSUARIO: TStringField;
    sqldtsPdeItemEMPRESAID: TBCDField;
    sqldtsPdeItemPDEID: TBCDField;
    sqldtsPdeItemITEMID: TBCDField;
    sqldtsPdeItemNATUREZAOPID: TBCDField;
    sqldtsPdeItemL_CFOP: TStringField;
    sqldtsPdeItemL_DESCRICAOOPERACAOUSUARIO: TStringField;
    sqldtsPdeItemL_DESCRICAOOPERACAONOTA: TStringField;
    sqldtsPdeItemOBSERVACAOID: TBCDField;
    sqldtsPdeItemDESCRICAOOBSERVACAO: TMemoField;
    sqldtsPdeItemPRODUTOID: TBCDField;
    sqldtsPdeItemDESCRICAOPRODUTO: TStringField;
    sqldtsPdeItemQUANTIDADE: TBCDField;
    sqldtsPdeItemVLRPRECOUNITARIO: TBCDField;
    sqldtsPdeItemVLRPRECOTOTAL: TBCDField;
    sqldtsPdeItemEMPENHO: TBCDField;
    sqldtsPdeItemQUANTIDADEEMPENHO: TBCDField;
    sqldtsPdeItemRETORNO: TStringField;
    sqldtsPdeItemQTDRETORNA: TBCDField;
    sqldtsPdeItemVLRBASEICMS: TBCDField;
    sqldtsPdeItemALIQUOTAICMS: TFMTBCDField;
    sqldtsPdeItemVLRICMS: TBCDField;
    sqldtsPdeItemVLRISENTASICMS: TBCDField;
    sqldtsPdeItemVLROUTRASICMS: TBCDField;
    sqldtsPdeItemPORCREDUCAOICMS: TBCDField;
    sqldtsPdeItemSITTRIBUTARIAESTADUAL: TStringField;
    sqldtsPdeItemALIQUOTACOFINS: TFMTBCDField;
    sqldtsPdeItemVLRCOFINS: TBCDField;
    sqldtsPdeItemVLRCREDCOFINS: TBCDField;
    sqldtsPdeItemALIQUOTAPIS: TFMTBCDField;
    sqldtsPdeItemVLRPIS: TBCDField;
    sqldtsPdeItemVLRCREDPIS: TBCDField;
    sqldtsPdeItemVLRBASEIPI: TBCDField;
    sqldtsPdeItemALIQUOTAIPI: TFMTBCDField;
    sqldtsPdeItemVLRIPI: TBCDField;
    sqldtsPdeItemVLRISENTASIPI: TBCDField;
    sqldtsPdeItemVLROUTRASIPI: TBCDField;
    sqldtsPdeItemTIPOIPI: TStringField;
    sqldtsPdeItemSITTRIBUTARIAFEDERAL: TBCDField;
    sqldtsPdeItemARTIGO: TStringField;
    sqldtsPdeItemDATAINICIALIPI: TSQLTimeStampField;
    sqldtsPdeItemDATAFINALIPI: TSQLTimeStampField;
    sqldtsPdeItemPRODINCENTIVADO: TBCDField;
    sqldtsPdeItemUSUARIO: TStringField;
    sqldtsNfeEMPRESAID: TBCDField;
    sqldtsNfeNFEID: TBCDField;
    sqldtsNfeDATAEMISSAOID: TSQLTimeStampField;
    sqldtsNfeENTIDADEID: TBCDField;
    sqldtsNfeCATEGORIAID: TBCDField;
    sqldtsNfeMODELODOCFISCALID: TBCDField;
    sqldtsNfeL_MODELODOCFISCAL: TStringField;
    sqldtsNfeSERIE: TStringField;
    sqldtsNfeDATAENTRADA: TSQLTimeStampField;
    sqldtsNfeCANCELADA: TBCDField;
    sqldtsNfeEXPORTADO: TBCDField;
    sqldtsNfeDIID: TStringField;
    sqldtsNfeDESCRICAOIMPORTACAO: TMemoField;
    sqldtsNfeOSID: TStringField;
    sqldtsNfeCREDITARICMS: TBCDField;
    sqldtsNfeLIBCHEFIA: TBCDField;
    sqldtsNfeLIBCHEFIANOME: TStringField;
    sqldtsNfeLIBCHEFIADATA: TSQLTimeStampField;
    sqldtsNfeLIBFINANCEIRO: TBCDField;
    sqldtsNfeLIBFINANCEIRONOME: TStringField;
    sqldtsNfeLIBFINANCEIRODATA: TSQLTimeStampField;
    sqldtsNfeLIBCONTABIL: TBCDField;
    sqldtsNfeLIBCONTABILNOME: TStringField;
    sqldtsNfeLIBCONTABILDATA: TSQLTimeStampField;
    sqldtsNfePDEID: TBCDField;
    sqldtsNfeDATAPEDIDO: TSQLTimeStampField;
    sqldtsNfeREQUISITANTE: TStringField;
    sqldtsNfeNFSID: TBCDField;
    sqldtsNfeDATAEMISSAONFSID: TSQLTimeStampField;
    sqldtsNfeTIPONOTA: TStringField;
    sqldtsNfeNOME: TStringField;
    sqldtsNfeCEPID: TBCDField;
    sqldtsNfeNUMERO: TStringField;
    sqldtsNfeCOMPLEMENTO: TStringField;
    sqldtsNfeENDERECO: TStringField;
    sqldtsNfeBAIRRO: TStringField;
    sqldtsNfeCIDADE: TStringField;
    sqldtsNfeSIGLAUFID: TStringField;
    sqldtsNfePAIS: TStringField;
    sqldtsNfeCONTRIBUINTEICMS: TBCDField;
    sqldtsNfeNATUREZAOPID: TBCDField;
    sqldtsNfeL_CFOP: TStringField;
    sqldtsNfeL_DESCRICAOOPERACAOUSUARIO: TStringField;
    sqldtsNfeL_DESCRICAOOPERACAONOTA: TStringField;
    sqldtsNfeOBSERVACAOID: TBCDField;
    sqldtsNfeDESCRICAOOBSERVACAO: TMemoField;
    sqldtsNfeTRANSPORTADORID: TBCDField;
    sqldtsNfeL_NOMETRANSPORTADOR: TStringField;
    sqldtsNfePLACAVEICULO: TStringField;
    sqldtsNfeMODALIDADEFRETE: TStringField;
    sqldtsNfeVLRFRETE: TBCDField;
    sqldtsNfeVLRSEGURO: TBCDField;
    sqldtsNfeVLRDESPESAACESSORIA: TBCDField;
    sqldtsNfeEMBQTDVOLUMES: TBCDField;
    sqldtsNfeEMBNUMERO: TBCDField;
    sqldtsNfeEMBMARCA: TStringField;
    sqldtsNfeEMBESPECIE: TStringField;
    sqldtsNfeEMBPESOBRUTO: TFMTBCDField;
    sqldtsNfeEMBPESOLIQUIDO: TFMTBCDField;
    sqldtsNfeVLRTOTALCOFINS: TBCDField;
    sqldtsNfeVLRTOTALPIS: TBCDField;
    sqldtsNfeVLRTOTALCREDCOFINS: TBCDField;
    sqldtsNfeVLRTOTALCREDPIS: TBCDField;
    sqldtsNfeVLRTOTALBASEICMS: TBCDField;
    sqldtsNfeVLRTOTALICMS: TBCDField;
    sqldtsNfeVLRTOTALISENTASICMS: TBCDField;
    sqldtsNfeVLRTOTALOUTRASICMS: TBCDField;
    sqldtsNfeVLRTOTALBASEIPI: TBCDField;
    sqldtsNfeVLRTOTALIPI: TBCDField;
    sqldtsNfeVLRTOTALISENTASIPI: TBCDField;
    sqldtsNfeVLRTOTALOUTRASIPI: TBCDField;
    sqldtsNfeVLRTOTALPRODUTO: TBCDField;
    sqldtsNfeVLRTOTALNOTA: TBCDField;
    sqldtsNfeDATAIMPRESSAO: TSQLTimeStampField;
    sqldtsNfeUSUARIO: TStringField;
    sqldtsNfeItemEMPRESAID: TBCDField;
    sqldtsNfeItemNFEID: TBCDField;
    sqldtsNfeItemDATAEMISSAOID: TSQLTimeStampField;
    sqldtsNfeItemENTIDADEID: TBCDField;
    sqldtsNfeItemITEMID: TBCDField;
    sqldtsNfeItemNATUREZAOPID: TBCDField;
    sqldtsNfeItemL_CFOP: TStringField;
    sqldtsNfeItemL_DESCRICAOOPERACAOUSUARIO: TStringField;
    sqldtsNfeItemL_DESCRICAOOPERACAONOTA: TStringField;
    sqldtsNfeItemOBSERVACAOID: TBCDField;
    sqldtsNfeItemDESCRICAOOBSERVACAO: TMemoField;
    sqldtsNfeItemPRODUTOID: TBCDField;
    sqldtsNfeItemDESCRICAOPRODUTO: TStringField;
    sqldtsNfeItemQUANTIDADE: TBCDField;
    sqldtsNfeItemVLRPRECOUNITARIO: TBCDField;
    sqldtsNfeItemVLRPRECOTOTAL: TBCDField;
    sqldtsNfeItemEMPENHO: TBCDField;
    sqldtsNfeItemQTDEMPENHO: TBCDField;
    sqldtsNfeItemRETORNO: TStringField;
    sqldtsNfeItemQTDRETORNA: TBCDField;
    sqldtsNfeItemVLRBASEICMS: TBCDField;
    sqldtsNfeItemALIQUOTAICMS: TFMTBCDField;
    sqldtsNfeItemVLRICMS: TBCDField;
    sqldtsNfeItemVLRISENTASICMS: TBCDField;
    sqldtsNfeItemVLROUTRASICMS: TBCDField;
    sqldtsNfeItemPORCREDUCAOICMS: TBCDField;
    sqldtsNfeItemSITTRIBUTARIAESTADUAL: TStringField;
    sqldtsNfeItemALIQUOTACOFINS: TFMTBCDField;
    sqldtsNfeItemVLRCOFINS: TBCDField;
    sqldtsNfeItemVLRCREDCOFINS: TBCDField;
    sqldtsNfeItemALIQUOTAPIS: TFMTBCDField;
    sqldtsNfeItemVLRPIS: TBCDField;
    sqldtsNfeItemVLRCREDPIS: TBCDField;
    sqldtsNfeItemVLRBASEIPI: TBCDField;
    sqldtsNfeItemALIQUOTAIPI: TBCDField;
    sqldtsNfeItemVLRIPI: TBCDField;
    sqldtsNfeItemVLRISENTOIPI: TBCDField;
    sqldtsNfeItemVLROUTROIPI: TBCDField;
    sqldtsNfeItemTIPOIPI: TStringField;
    sqldtsNfeItemSITTRIBUTARIAFEDERAL: TBCDField;
    sqldtsNfeItemARTIGO: TStringField;
    sqldtsNfeItemDATAINICIALIPI: TSQLTimeStampField;
    sqldtsNfeItemDATAFINALIPI: TSQLTimeStampField;
    sqldtsNfeItemPRODINCENTIVADO: TBCDField;
    sqldtsNfeItemUSUARIO: TStringField;
    sqldtsPdsDESCRICAOCONDPAGTO: TMemoField;
    sqldtsPdsDESCRICAOOBSERVACAO: TMemoField;
    sqldtsPdsItemDESCRICAOOBSERVACAO: TMemoField;
    sqldtsPdsServicoDESCRICAOSERVICO: TMemoField;
    sqldtsNfsDESCRICAOCONDPAGTO: TMemoField;
    sqldtsNfsDESCRICAOOBSERVACAO: TMemoField;
    sqldtsNfsItemDESCRICAOOBSERVACAO: TMemoField;
    sqldtsNfsServicoDESCRICAOSERVICO: TMemoField;
    sqldtsNaturezaOpNATUREZAOPID: TBCDField;
    sqldtsNaturezaOpCFOP: TStringField;
    sqldtsNaturezaOpTIPOMOVIMENTO: TStringField;
    sqldtsNaturezaOpDESCRICAOOPERACAOUSUARIO: TStringField;
    sqldtsNaturezaOpDESCRICAOOPERACAONOTA: TStringField;
    sqldtsNaturezaOpDESCRICAOCOMPLETA: TStringField;
    sqldtsNaturezaOpNATUREZAOPRETORNOID: TBCDField;
    sqldtsNaturezaOpL_DESCRNATRETORNO: TStringField;
    sqldtsNaturezaOpMOVIMENTOESTOQUE: TStringField;
    sqldtsNaturezaOpVENDADEFINITIVA: TBCDField;
    sqldtsNaturezaOpCALCULAPRECOMEDIO: TBCDField;
    sqldtsNaturezaOpUTILIZAEMPENHO: TBCDField;
    sqldtsNaturezaOpGERARDUPLICATA: TBCDField;
    sqldtsNaturezaOpTRANSFCONSUMO: TBCDField;
    sqldtsNaturezaOpCOBERTURACONTRATUAL: TBCDField;
    sqldtsNaturezaOpENTRADAPRECOTRANSF: TBCDField;
    sqldtsNaturezaOpENTRADADIPJ: TBCDField;
    sqldtsNaturezaOpSAIDADIPJ: TBCDField;
    sqldtsNaturezaOpCALCULOPIS: TBCDField;
    sqldtsNaturezaOpCALCULOCOFINS: TBCDField;
    sqldtsNaturezaOpCREDITOPIS: TBCDField;
    sqldtsNaturezaOpCREDITOCOFINS: TBCDField;
    sqldtsNaturezaOpCALCULOIPI: TBCDField;
    sqldtsNaturezaOpCREDITOIPI: TBCDField;
    sqldtsNaturezaOpIPIBASE: TBCDField;
    sqldtsNaturezaOpFRETEIPI: TBCDField;
    sqldtsNaturezaOpDESTACAIPI: TBCDField;
    sqldtsNaturezaOpCALCULOIRPJ: TBCDField;
    sqldtsNaturezaOpGERAMOVIMENTO: TBCDField;
    sqldtsNaturezaOpVENDAFATANTECIPADO: TBCDField;
    sqldtsNaturezaOpTRIBUTADO: TBCDField;
    sqldtsNaturezaOpSUSPENSAOIPI: TBCDField;
    sqldtsNaturezaOpISENTOIPI: TBCDField;
    sqldtsNaturezaOpSITTRIBESTADUAL: TStringField;
    sqldtsNaturezaOpCALCULOICMS: TBCDField;
    sqldtsNaturezaOpCREDITOICMS: TBCDField;
    sqldtsNaturezaOpINCENTIVOICMS: TBCDField;
    sqldtsNaturezaOpCALCULOISS: TBCDField;
    sqldtsNaturezaOpOBSERVACAOID: TBCDField;
    sqldtsNaturezaOpL_DESCRICAOOBSERVACAO: TMemoField;
    sqldtsNaturezaOpSIGLANATUREZAID: TBCDField;
    sqldtsNaturezaOpL_DESCRICAORESUMIDA: TStringField;
    sqldtsNaturezaOpL_DESCRICAOSIGLA: TStringField;
    sqldtsNaturezaOpNUMPADRAO: TStringField;
    sqldtsNaturezaOpUSUARIO: TStringField;
    sqldtsEntidadeCONTACONTABILID: TStringField;
    sqldtsPdeItemNFSID: TBCDField;
    sqldtsPdeItemDATAEMISSAONFSID: TSQLTimeStampField;
    sqldtsNfeItemNFSID: TBCDField;
    sqldtsNfeItemDATAEMISSAONFSID: TSQLTimeStampField;
    sqldtsPdsItemNFEID: TBCDField;
    sqldtsPdsItemDATAEMISSAONFEID: TSQLTimeStampField;
    sqldtsNfsItemNFEID: TBCDField;
    sqldtsNfsItemDATAEMISSAONFEID: TSQLTimeStampField;
    sqldtsPdsItemALIQUOTAIPI: TFMTBCDField;
    sqldtsEntidadeDepto: TSQLDataSet;
    sqldtsEntidadeDeptoENTIDADEID: TBCDField;
    sqldtsEntidadeDeptoDEPARTAMENTOID: TBCDField;
    sqldtsEntidadeDeptoL_DESCRICAO_DEPTO: TStringField;
    sqldtsEntidadeDeptoUSUARIO: TStringField;
    sqldtsPdeDIID: TStringField;
    sqldtsPdsItemESTOQUEUTILIZADO: TStringField;
    sqldtsNfsItemESTOQUEUTILIZADO: TStringField;
    sqldtsProdutoL_NOMEFANTASIA: TStringField;
    sqldtsContaContabilCONTACONTABILID: TStringField;
    sqldtsContaContabilDESCRICAO: TStringField;
    sqldtsContaContabilGRAU: TBCDField;
    sqldtsContaContabilCODIGOREDUZIDOID: TBCDField;
    sqldtsContaContabilNATUREZACONTA: TStringField;
    sqldtsContaContabilCONTALALUR: TStringField;
    sqldtsContaContabilEMPRESAID: TBCDField;
    sqldtsContaContabilUSUARIO: TStringField;
    sqldtsContaContabilL_NOMEFANTASIA: TStringField;
    sqldtsPdsServicoVLRRETCOFINS: TBCDField;
    sqldtsPdsServicoVLRRETPIS: TBCDField;
    sqldtsPdsServicoVLRRETCSLL: TBCDField;
    sqldtsPdsItemL_PARTNUMBERID: TStringField;
    sqldtsPdsItemL_LOCALIZACAO: TStringField;
    sqldtsPdsItemEMPENHOITEMID: TBCDField;
    sqldtsKardexESTOQUENOVO: TBCDField;
    sqldtsKardexESTOQUEREVISADO: TBCDField;
    sqldtsKardexESTOQUETOTAL: TBCDField;
    sqldtsInventario: TSQLDataSet;
    dsprvInventario: TDataSetProvider;
    sqldtsHistInventario: TSQLDataSet;
    dsprvHistInventario: TDataSetProvider;
    sqldtsHistInventarioHISTINVENTARIOID: TBCDField;
    sqldtsHistInventarioDATAINVENTARIO: TSQLTimeStampField;
    sqldtsHistInventarioDESCRICAO: TStringField;
    sqldtsHistInventarioUSUARIO: TStringField;
    sqldtsTipoCtgInvent: TSQLDataSet;
    dsprvTipoCtgInvent: TDataSetProvider;
    sqldtsTipoCtgInventTIPOCTGINVENTID: TBCDField;
    sqldtsTipoCtgInventDESCRICAO: TStringField;
    sqldtsTipoCtgInventBLOQUEARDIGITACAO: TBCDField;
    sqldtsTipoCtgInventUSUARIO: TStringField;
    sqldtsInventarioItem: TSQLDataSet;
    dsInventarioLink: TDataSource;
    sqldtsInventarioHISTINVENTARIOID: TBCDField;
    sqldtsInventarioL_DATAINVENTARIO: TSQLTimeStampField;
    sqldtsInventarioL_DESCR_INVENTARIO: TStringField;
    sqldtsInventarioINVENTARIOID: TBCDField;
    sqldtsInventarioEMPRESAID: TBCDField;
    sqldtsInventarioPRODUTOID: TBCDField;
    sqldtsInventarioL_GRUPOID: TBCDField;
    sqldtsInventarioL_SUBGRUPOID: TBCDField;
    sqldtsInventarioL_PARTNUMBERID: TStringField;
    sqldtsInventarioL_DESCRICAOPORTUGUES: TStringField;
    sqldtsInventarioL_LOCALIZACAO: TStringField;
    sqldtsInventarioDATAINVENTARIO: TSQLTimeStampField;
    sqldtsInventarioESTOQUEFISICO: TBCDField;
    sqldtsInventarioUSUARIO: TStringField;
    sqldtsInventarioItemHISTINVENTARIOID: TBCDField;
    sqldtsInventarioItemINVENTARIOID: TBCDField;
    sqldtsInventarioItemTIPOCTGINVENTID: TBCDField;
    sqldtsInventarioItemL_TIPOCTGINVENT: TStringField;
    sqldtsInventarioItemDATACFGFISICA: TSQLTimeStampField;
    sqldtsInventarioItemQUANTIDADE: TBCDField;
    sqldtsInventarioItemREALIZADORID: TBCDField;
    sqldtsInventarioItemL_NOME_REALIZADOR: TStringField;
    sqldtsInventarioItemDIGITADORID: TBCDField;
    sqldtsInventarioItemL_NOME_DIGITADOR: TStringField;
    sqldtsInventarioItemEMPRESAID: TBCDField;
    sqldtsInventarioL_ESTOQUETOTAL: TBCDField;
    sqldtsInventarioDIFERENCASALDO: TBCDField;
    sqldtsInventarioL_ESTOQUEFISICO: TBCDField;
    sqldtsInventarioL_CUSTOMEDIO: TBCDField;
    sqldtsNfeItemL_NCMID: TStringField;
    sqldtsNfsItemL_NCMID: TStringField;
    sqldtsNfeItemL_UNIDADEID: TStringField;
    sqldtsNfsItemL_UNIDADEID: TStringField;
    sqldtsNfsREQUISITANTE: TStringField;
    sqldtsPdeDATAENTRADANFEID: TSQLTimeStampField;
    sqldtsPdsItemPORCDESCONTO: TFMTBCDField;
    sqldtsPdsItemVLRPRECOUNITDESC: TBCDField;
    sqldtsPdsItemVLRPRECOTOTALDESC: TBCDField;
    sqldtsNfsItemPORCDESCONTO: TFMTBCDField;
    sqldtsNfsItemVLRPRECOUNITDESC: TBCDField;
    sqldtsNfsItemVLRPRECOTOTALDESC: TBCDField;
    sqldtsProdutoESTOQUEQUARENTENA: TBCDField;
    sqldtsKardexESTOQUEQUARENTENA: TBCDField;
    sqldtsProdutoEMPRESASIMILARID: TBCDField;
    sqldtsProdutoPRODUTOSIMILARID: TBCDField;
    sqldtsProdutoL_NOMEFANTASIASIMILAR: TStringField;
    sqldtsProdutoL_DESCRICAOPORTUGUES: TStringField;
    sqldtsKdxTransf: TSQLDataSet;
    dsprvKdxTransf: TDataSetProvider;
    sqldtsKdxTransfEMPRESAID: TBCDField;
    sqldtsKdxTransfKARDEXID: TBCDField;
    sqldtsKdxTransfDATAOCORRENCIA: TSQLTimeStampField;
    sqldtsKdxTransfNUMDOCUMENTO: TBCDField;
    sqldtsKdxTransfTIPODOCUMENTO: TStringField;
    sqldtsKdxTransfTIPOESTOQUE: TStringField;
    sqldtsKdxTransfOSID: TStringField;
    sqldtsKdxTransfDIID: TStringField;
    sqldtsKdxTransfNATUREZAOPID: TBCDField;
    sqldtsKdxTransfL_CFOP: TStringField;
    sqldtsKdxTransfL_DESCRICAOOPERACAOUSUARIO: TStringField;
    sqldtsKdxTransfTIPOOPERACAO: TStringField;
    sqldtsKdxTransfPRODUTOID: TBCDField;
    sqldtsKdxTransfL_DESCRICAOPORTUGUES: TStringField;
    sqldtsKdxTransfESTOQUENOVO: TBCDField;
    sqldtsKdxTransfESTOQUEREVISADO: TBCDField;
    sqldtsKdxTransfESTOQUEFISICO: TBCDField;
    sqldtsKdxTransfESTOQUEPEDENTRADA: TBCDField;
    sqldtsKdxTransfESTOQUEPEDSAIDA: TBCDField;
    sqldtsKdxTransfESTOQUEEMTERCEIRO: TBCDField;
    sqldtsKdxTransfESTOQUEDETERCEIRO: TBCDField;
    sqldtsKdxTransfESTOQUEMINIMO: TBCDField;
    sqldtsKdxTransfESTOQUEEMPENHO: TBCDField;
    sqldtsKdxTransfESTOQUEVALE: TBCDField;
    sqldtsKdxTransfESTOQUEESTORNO: TBCDField;
    sqldtsKdxTransfESTOQUEQUARENTENA: TBCDField;
    sqldtsKdxTransfESTOQUETOTAL: TBCDField;
    sqldtsKdxTransfUSUARIO: TStringField;
    sqldtsPdeItemBarQUANTIDADE: TBCDField;
    sqldtsPdsItemBarQUANTIDADE: TBCDField;
    sqldtsNfeItemBarQUANTIDADE: TBCDField;
    sqldtsNfsItemBarQUANTIDADE: TBCDField;
    sqldtsInventarioESTOQUEDIFERENCA: TBCDField;
    sqldtsNaturezaOpDESMEMBRCUSTO: TBCDField;
    sqldtsEntidadeCEPINSTID: TBCDField;
    sqldtsEntidadeNUMEROINST: TStringField;
    sqldtsEntidadeCOMPLEMENTOINST: TStringField;
    sqldtsEntidadeENDERECOINST: TStringField;
    sqldtsEntidadeBAIRROINST: TStringField;
    sqldtsEntidadeCIDADEINST: TStringField;
    sqldtsEntidadeSIGLAUFINSTID: TStringField;
    sqldtsEntidadePAISINST: TStringField;
    sqldtsEntidadeCONTATOINST: TStringField;
    sqldtsEntidadeTELEFONE3: TStringField;
    sqldtsEntidadeCELULAR3: TStringField;
    sqldtsTecWinNCMID: TStringField;
    sqldtsTecWinDESCRICAO: TStringField;
    sqldtsTecWinALIQUOTAII: TFMTBCDField;
    sqldtsTecWinALIQUOTAIPI: TFMTBCDField;
    sqldtsTecWinISENTOIPI: TBCDField;
    sqldtsTecWinSITTRIBISENTO: TBCDField;
    sqldtsTecWinARTIGOISENTO: TStringField;
    sqldtsTecWinSUSPENSAOIPI: TBCDField;
    sqldtsTecWinSITTRIBSUSPENSAO: TBCDField;
    sqldtsTecWinARTIGOSUSPENSAO: TStringField;
    sqldtsTecWinTRIBUTADO: TBCDField;
    sqldtsTecWinSITTRIBTRIBUTADO: TBCDField;
    sqldtsTecWinARTIGOTRIBUTADO: TStringField;
    sqldtsTecWinSITTRIBNAOTRIBUTADO: TBCDField;
    sqldtsTecWinARTIGONAOTRIBUTADO: TStringField;
    sqldtsTecWinDATAINICIALIPI: TSQLTimeStampField;
    sqldtsTecWinDATAFINALIPI: TSQLTimeStampField;
    sqldtsTecWinDATAINICIALII: TSQLTimeStampField;
    sqldtsTecWinDATAFINALII: TSQLTimeStampField;
    sqldtsTecWinALIQUOTATEMPIPI: TFMTBCDField;
    sqldtsTecWinALIQUOTATEMPII: TFMTBCDField;
    sqldtsTecWinINCENTIVOICMS: TBCDField;
    sqldtsTecWinUSUARIO: TStringField;
    sqldtsServicoCALCULARPIS: TBCDField;
    sqldtsServicoCALCULARCOFINS: TBCDField;
    sqldtsServicoALIQUOTAISS: TFMTBCDField;
    sqldtsNaturezaOpDOCINTERNO: TBCDField;
    dsprvPrecoTransf: TDataSetProvider;
    sqldtsPrecoTransf: TSQLDataSet;
    sqldtsEmpresaEMPRESAID: TBCDField;
    sqldtsEmpresaNOME: TStringField;
    sqldtsEmpresaNOMEFANTASIA: TStringField;
    sqldtsEmpresaCPF_CNPJ: TStringField;
    sqldtsEmpresaINSCRMUNICIPAL: TStringField;
    sqldtsEmpresaINSCRESTADUAL: TStringField;
    sqldtsEmpresaBLOQUEAR: TBCDField;
    sqldtsEmpresaDIRETORIO: TStringField;
    sqldtsEmpresaCEPID: TBCDField;
    sqldtsEmpresaNUMERO: TStringField;
    sqldtsEmpresaCOMPLEMENTO: TStringField;
    sqldtsEmpresaENDERECO: TStringField;
    sqldtsEmpresaBAIRRO: TStringField;
    sqldtsEmpresaCIDADE: TStringField;
    sqldtsEmpresaSIGLAUFID: TStringField;
    sqldtsEmpresaNUMNF: TBCDField;
    sqldtsEmpresaNUMNF3: TBCDField;
    sqldtsEmpresaNUMPRODUTO: TBCDField;
    sqldtsEmpresaNUMDUPLICATA: TBCDField;
    sqldtsEmpresaNUMPDE: TBCDField;
    sqldtsEmpresaNUMPDS: TBCDField;
    sqldtsEmpresaNUMTRANSFCONSUMO: TBCDField;
    sqldtsEmpresaMODELOIMPRESSAONOTA: TBCDField;
    sqldtsEmpresaALIQUOTAISS: TFMTBCDField;
    sqldtsEmpresaALIQUOTAICMSNAOCONTRIB: TFMTBCDField;
    sqldtsEmpresaNUMEMPRESAEXP: TBCDField;
    sqldtsEmpresaSIGLADUPLICATA: TStringField;
    sqldtsKardexVLRCUSTOUNITARIO: TFMTBCDField;
    sqldtsKardexVLRCUSTOTOTAL: TFMTBCDField;
    sqldtsKardexQUANTIDADESALDO: TBCDField;
    sqldtsKardexVLRCUSTOMEDIO: TFMTBCDField;
    sqldtsKardexVLRCUSTOMEDIOTOTAL: TFMTBCDField;
    sqldtsKardexVLRCUSTOMEDIOANTERIOR: TFMTBCDField;
    sqldtsKdxTransfQUANTIDADE: TBCDField;
    sqldtsKdxTransfVLRCUSTOUNITARIO: TFMTBCDField;
    sqldtsKdxTransfVLRCUSTOTOTAL: TFMTBCDField;
    sqldtsKdxTransfQUANTIDADESALDO: TBCDField;
    sqldtsKdxTransfVLRCUSTOMEDIO: TFMTBCDField;
    sqldtsKdxTransfVLRCUSTOMEDIOTOTAL: TFMTBCDField;
    sqldtsKdxTransfVLRCUSTOMEDIOANTERIOR: TFMTBCDField;
    sqldtsPrecoTransfNFSID: TBCDField;
    sqldtsPrecoTransfDATAEMISSAOID: TSQLTimeStampField;
    sqldtsPrecoTransfOSID: TStringField;
    sqldtsPrecoTransfENTIDADEID: TBCDField;
    sqldtsPrecoTransfNOME: TStringField;
    sqldtsPrecoTransfCIDADE: TStringField;
    sqldtsPrecoTransfSIGLAUFID: TStringField;
    sqldtsPrecoTransfNATUREZAOPID: TBCDField;
    sqldtsPrecoTransfCFOP: TStringField;
    sqldtsPrecoTransfDESCRICAOOPERACAONOTA: TStringField;
    sqldtsPrecoTransfEMP_SIMILARID: TFMTBCDField;
    sqldtsPrecoTransfPROD_SIMILARID: TFMTBCDField;
    sqldtsPrecoTransfDESCRICAOPRODUTO: TStringField;
    sqldtsPrecoTransfQUANTIDADE: TFMTBCDField;
    sqldtsPrecoTransfVLRPRECOUNITARIO: TBCDField;
    sqldtsPrecoTransfVLRPRECOTOTAL: TBCDField;
    sqldtsPrecoTransfVLRPIS: TBCDField;
    sqldtsPrecoTransfVLRCOFINS: TBCDField;
    sqldtsPrecoTransfALIQUOTAICMS: TFMTBCDField;
    sqldtsPrecoTransfVLRICMS: TBCDField;
    sqldtsPrecoTransfPARTNUMBERID: TStringField;
    sqldtsPrecoTransfNCMID: TStringField;
    sqldtsPrecoTransfDESCRICAONCM: TStringField;
    sqldtsPrecoTransfQTD_MOV_PERIODO: TFMTBCDField;
    sqldtsPrecoTransfVLR_MOV_UNITARIA: TFMTBCDField;
    sqldtsPrecoTransfVLR_MOV_TOTAL: TFMTBCDField;
    sqldtsPrecoTransfVLRMEDIATOTALVENDAAPURADA: TFMTBCDField;
    sqldtsPrecoTransfVLRCUSTOUNITARIO: TFMTBCDField;
    sqldtsPrecoTransfVLRCUSTOTOTAL: TFMTBCDField;
    sqldtsPrecoTransfVLRPRECOTRANSF: TFMTBCDField;
    sqldtsPrecoTransfVLR_AJUSTE: TFMTBCDField;
    sqldtsPrecoTransfVLR_MEDIA_TOTAL: TFMTBCDField;
    sqldtsNaturezaOpDESPACESSORIABASEICMS: TBCDField;
    sqldtsDepartamentoBLOQLANCAMENTOS: TBCDField;
    sqldtsOpPrestInterestadualORIGEMUFID: TStringField;
    sqldtsOpPrestInterestadualL_DESCRICAOORIGEM: TStringField;
    sqldtsOpPrestInterestadualDESTINOUFID: TStringField;
    sqldtsOpPrestInterestadualL_DESCRICAODESTINO: TStringField;
    sqldtsOpPrestInterestadualINTERNACIONAL: TBCDField;
    sqldtsOpPrestInterestadualALIQUOTAICMSCONTRIB: TFMTBCDField;
    sqldtsOpPrestInterestadualALIQUOTAICMSNAOCONTRIB: TFMTBCDField;
    sqldtsOpPrestInterestadualUSUARIO: TStringField;
    sqldtsPdsDESCRICAOPRENOTA: TMemoField;
    sqldtsNfsDESCRICAOPRENOTA: TMemoField;
    sqldtsNaturezaOpISENTOINSCRICAOESTADUAL: TBCDField;
    sqldtsServicoSUBGRUPOID: TBCDField;
    sqldtsServicoL_DESCRICAO_SUBGRUPO: TStringField;
    sqldtsProdutoESTOQUERESERVA: TBCDField;
    sqldtsPdsLogReserva: TSQLDataSet;
    dsprvPdsLogReserva: TDataSetProvider;
    sqldtsPdsLogReservaEMPRESAID: TBCDField;
    sqldtsPdsLogReservaPDSID: TBCDField;
    sqldtsPdsLogReservaLIBERADO: TBCDField;
    sqldtsPdsLogReservaLIBUSUARIO: TStringField;
    sqldtsPdsLogReservaLOGRESERVA: TMemoField;
    sqldtsPdsLogReservaL_DATAPEDIDO: TSQLTimeStampField;
    sqldtsPdsLogReservaL_OSID: TStringField;
    sqldtsPdsLogReservaL_NOME: TStringField;
    sqldtsPdsLogReservaL_CIDADE: TStringField;
    sqldtsPdsLogReservaL_SIGLAUFID: TStringField;
    sqldtsPdsLogReservaL_NATUREZAOPID: TBCDField;
    sqldtsPdsLogReservaL_CONDPAGTOID: TBCDField;
    sqldtsPdsLogReservaL_VLRTOTALPRODUTO: TBCDField;
    sqldtsPdsLogReservaL_VLRTOTALNOTA: TBCDField;
    sqldtsPdsLogReservaL_DESCRICAOOPERACAOUSUARIO: TStringField;
    sqldtsPdsLogReservaL_CFOP: TStringField;
    sqldtsPdsLogReservaL_DESCRICAOCONDPAGTO: TStringField;
    sqldtsPdsLogReservaUSUARIO: TStringField;
    sqldtsPdsLogReservaItem: TSQLDataSet;
    dsPdsLogReservaLink: TDataSource;
    sqldtsPdsLogReservaItemEMPRESAID: TBCDField;
    sqldtsPdsLogReservaItemPDSID: TBCDField;
    sqldtsPdsLogReservaItemITEMID: TBCDField;
    sqldtsPdsLogReservaItemPRODUTOID: TBCDField;
    sqldtsPdsLogReservaItemDESCRICAOPRODUTO: TStringField;
    sqldtsPdsLogReservaItemL_PARTNUMBERID: TStringField;
    sqldtsPdsLogReservaItemL_LOCALIZACAO: TStringField;
    sqldtsPdsLogReservaItemQUANTIDADE: TBCDField;
    sqldtsPdsLogReservaItemVLRPRECOUNITARIO: TBCDField;
    sqldtsPdsLogReservaItemVLRPRECOTOTAL: TBCDField;
    sqldtsInventarioL_ESTOQUEPEDENTRADA: TBCDField;
    sqldtsInventarioL_ESTOQUEPEDSAIDA: TBCDField;
    sqldtsInventarioL_ESTOQUEEMTERCEIRO: TBCDField;
    sqldtsInventarioL_ESTOQUEDETERCEIRO: TBCDField;
    sqldtsInventarioL_ESTOQUEMINIMO: TBCDField;
    sqldtsInventarioL_ESTOQUEEMPENHO: TBCDField;
    sqldtsInventarioL_ESTOQUEVALE: TBCDField;
    sqldtsInventarioL_ESTOQUEESTORNO: TBCDField;
    sqldtsInventarioL_CUSTOTOTAL: TBCDField;
    sqldtsInventarioL_VLRFOB: TBCDField;
    sqldtsInventarioL_UNIDADEID: TStringField;
    sqldtsInventarioESTOQUEQUARENTENA: TBCDField;
    sqldtsNfsREEID: TBCDField;
    sqldtsNfsDDEID: TBCDField;
    sqldtsEntidadeDESLIGADO: TBCDField;
    sqldtsGrupoSIGLAGRUPO: TStringField;
    sqldtsServicoL_SIGLAGRUPO: TStringField;
    sqldtsServicoL_DESCRICAOGRUPO: TStringField;
    sqldtsProdutoL_SIGLAGRUPO: TStringField;
    sqldtsInventarioL_SIGLAGRUPO: TStringField;
    dsprvInventarioDig: TDataSetProvider;
    sqldtsInventarioDig: TSQLDataSet;
    sqldtsInventarioDigHISTINVENTARIOID: TBCDField;
    sqldtsInventarioDigINVENTARIOID: TBCDField;
    sqldtsInventarioDigEMPRESAID: TBCDField;
    sqldtsInventarioDigTIPOCTGINVENTID: TBCDField;
    sqldtsInventarioDigL_TIPOCTGINVENT: TStringField;
    sqldtsInventarioDigPRODUTOID: TBCDField;
    sqldtsInventarioDigL_DESCRICAOPORTUGUES: TStringField;
    sqldtsInventarioDigL_GRUPOID: TBCDField;
    sqldtsInventarioDigL_PARTNUMBERID: TStringField;
    sqldtsInventarioDigL_LOCALIZACAO: TStringField;
    sqldtsInventarioDigL_CUSTOMEDIO: TBCDField;
    sqldtsInventarioDigL_CUSTOTOTAL: TBCDField;
    sqldtsInventarioDigL_ESTOQUEFISICO: TBCDField;
    sqldtsInventarioDigDATACFGFISICA: TSQLTimeStampField;
    sqldtsInventarioDigQUANTIDADE: TBCDField;
    sqldtsInventarioDigREALIZADORID: TBCDField;
    sqldtsInventarioDigL_NOME_REALIZADOR: TStringField;
    sqldtsInventarioDigDIGITADORID: TBCDField;
    sqldtsInventarioDigL_NOME_DIGITADOR: TStringField;
    sqldtsInventarioDigDIFERENCASALDO: TBCDField;
    sqldtsInventarioDigL_SIGLAGRUPO: TStringField;
    sqldtsNfsServicoL_GRUPOID: TBCDField;
    sqldtsNfsServicoL_SIGLAGRUPO: TStringField;
    sqldtsPdsServicoL_GRUPOID: TBCDField;
    sqldtsPdsServicoL_SIGLAGRUPO: TStringField;
    sqldtsFilialHORAINICIOTRABALHO: TSQLTimeStampField;
    sqldtsFilialHORAFINALTRABALHO: TSQLTimeStampField;
    sqldtsFilialHORASALMOCO: TFMTBCDField;
    sqldtsBudget: TSQLDataSet;
    sqldtsBudgetBUDGETID: TBCDField;
    sqldtsBudgetDATABUDGET: TSQLTimeStampField;
    sqldtsBudgetDESCRICAO_BUDGET: TStringField;
    sqldtsBudgetSIGLA_DEPTO: TStringField;
    sqldtsBudgetIDENTIFICADOR_NOTA: TStringField;
    sqldtsBudgetGRUPOID: TBCDField;
    sqldtsBudgetL_DESCRICAOGRUPO: TStringField;
    sqldtsBudgetL_SIGLAGRUPO: TStringField;
    sqldtsBudgetSUBGRUPOID: TBCDField;
    sqldtsBudgetL_SIGLASUBGRUPO: TStringField;
    sqldtsBudgetL_DESCRICAOSUBGRUPO: TStringField;
    sqldtsBudgetVLRBUDGET: TFMTBCDField;
    sqldtsBudgetUSUARIO: TStringField;
    dsprvBudget: TDataSetProvider;
    sqldtsFilialLIMITEBCOHORAS: TFMTBCDField;
    sqldtsNotas_Dev: TSQLDataSet;
    sqldtsNotas_DevEMPRESAID: TBCDField;
    sqldtsNotas_DevEF_NOTAID: TBCDField;
    sqldtsNotas_DevNOTAID: TBCDField;
    sqldtsNotas_DevDATAEMISSAOID: TSQLTimeStampField;
    sqldtsNotas_DevDATADEVOLUCAO: TSQLTimeStampField;
    sqldtsNotas_DevVLRDEVOLUCAO: TFMTBCDField;
    sqldtsNotas_DevUSUARIO: TStringField;
    dsprvNotas_Dev: TDataSetProvider;
    sqldtsNaturezaOpOUTRASSAIDA: TBCDField;
    sqldtsImpostoServico: TSQLDataSet;
    dsprvImpostoServico: TDataSetProvider;
    sqldtsImpostoServicoIMPOSTOSERVICOID: TBCDField;
    sqldtsImpostoServicoATIVIDADE: TStringField;
    sqldtsImpostoServicoNIVELSERVICO: TBCDField;
    sqldtsImpostoServicoALIQUOTAISS: TFMTBCDField;
    sqldtsImpostoServicoUSUARIO: TStringField;
    sqldtsServicoIMPOSTOSERVICOID: TBCDField;
    sqldtsServicoL_ATIVIDADE: TStringField;
    sqldtsProdutoCUBAGEM: TFMTBCDField;
    sqldtsMunicipioIBGE: TSQLDataSet;
    dsprvMunicipioIBGE: TDataSetProvider;
    sqldtsMunicipioIBGEMUNICIPIOIBGEID: TBCDField;
    sqldtsMunicipioIBGEDESCRICAO: TStringField;
    sqldtsMunicipioIBGEUSUARIO: TStringField;
    sqldtsKardexITEMID: TBCDField;
    sqldtsNotas_DevTIPOMOVIMENTO: TStringField;
    sqldtsProdutoMODELOID: TStringField;
    sqldtsProdutoESTOQUEDEMO: TBCDField;
    sqldtsNaturezaOpCONTRIBUINTEICMS: TBCDField;
    sqldtsEntidadeHORASCFGTRABID: TBCDField;
    sqldtsEntidadeL_DESCRICAOHORASCFGTRAB: TStringField;
    sqldtsInventarioL_ESTOQUEQUARENTENA: TBCDField;
    sqldtsInventarioL_ATIVO: TBCDField;
    sqldtsNfsNF_E1ID: TFMTBCDField;
    sqldtsReceitaSERVICOPRESTADOID: TFMTBCDField;
    sqldtsNfsNSUID: TFMTBCDField;
    sqldtsEmpresaNUMNSU: TFMTBCDField;
    sqldtsPdsServicoVLRRETIRPJ: TBCDField;
    sqldtsPdsServicoVLRRETIRPF: TBCDField;
    sqldtsNfsServicoVLRRETIRPJ: TBCDField;
    sqldtsNfsServicoVLRRETIRPF: TBCDField;
    sqldtsNfeNSUID: TFMTBCDField;
    sqldtsNaturezaJuridicaRETENCAO1: TBCDField;
    sqldtsNaturezaJuridicaRETENCAO2: TBCDField;
    sqldtsNaturezaJuridicaRETENCAO3: TBCDField;
    sqldtsNaturezaJuridicaRETENCAO4: TBCDField;
    sqldtsNaturezaJuridicaALIQRETENCAOPIS: TBCDField;
    sqldtsNaturezaJuridicaALIQRETENCAOCOFINS: TBCDField;
    sqldtsNaturezaJuridicaALIQRETENCAOCSLL: TBCDField;
    sqldtsNaturezaJuridicaALIQRETENCAOIRPJ: TBCDField;
    sqldtsNaturezaJuridicaALIQRETENCAOIRPF: TBCDField;
    sqldtsReceitaRETENCAO1: TBCDField;
    sqldtsReceitaRETENCAO2: TBCDField;
    sqldtsReceitaRETENCAO3: TBCDField;
    sqldtsReceitaRETENCAO4: TBCDField;
    sqldtsPdsVLRTOTALRETCOFINS: TBCDField;
    sqldtsPdsVLRTOTALRETPIS: TBCDField;
    sqldtsPdsVLRTOTALRETCSLL: TBCDField;
    sqldtsPdsVLRTOTALRETIRPJ: TBCDField;
    sqldtsPdsVLRTOTALRETIRPF: TBCDField;
    sqldtsNfsVLRTOTALRETCOFINS: TBCDField;
    sqldtsNfsVLRTOTALRETPIS: TBCDField;
    sqldtsNfsVLRTOTALRETCSLL: TBCDField;
    sqldtsNfsVLRTOTALRETIRPJ: TBCDField;
    sqldtsNfsVLRTOTALRETIRPF: TBCDField;
    sqldtsEntidadeEMAILNFE: TStringField;
    sqldtsEmpresaNUMRPS: TBCDField;
    sqldtsNaturezaOpNATUREZASERVICO: TBCDField;
    sqldtsMunicipioIBGEDESCRICAO2: TStringField;
    sqldtsMunicipioIBGESIGLAUFID: TStringField;
    sqldtsMunicipioIBGEL_NOMEUUF: TStringField;
    sqldtsTipoItem: TSQLDataSet;
    dsprvTipoItem: TDataSetProvider;
    sqldtsTipoItemTIPOITEMID: TBCDField;
    sqldtsTipoItemDESCRICAO: TStringField;
    sqldtsTipoItemUSUARIO: TStringField;
    sqldtsGeneroItem: TSQLDataSet;
    dsprvGeneroItem: TDataSetProvider;
    sqldtsGeneroItemGENEROITEMID: TBCDField;
    sqldtsGeneroItemDESCRICAO: TStringField;
    sqldtsGeneroItemUSUARIO: TStringField;
    sqldtsProdutoTIPOITEMID: TBCDField;
    sqldtsProdutoL_DESCRICAOTIPOITEM: TStringField;
    sqldtsProdutoGENEROITEMID: TBCDField;
    sqldtsProdutoL_DESCRICAOGENEROITEM: TStringField;
    sqldtsPdsEMPRESANFSREFID: TBCDField;
    sqldtsPdsNFSREFID: TBCDField;
    sqldtsPdsDATANFSREFID: TSQLTimeStampField;
    sqldtsNfsEMPRESANFSREFID: TBCDField;
    sqldtsNfsNFSREFID: TBCDField;
    sqldtsNfsDATANFSREFID: TSQLTimeStampField;
    sqldtsPdsItemL_UNIDADEID: TStringField;
    sqldtsNfEmail: TSQLDataSet;
    dsprvNfEmail: TDataSetProvider;
    sqldtsNfEmailEMPRESAID: TBCDField;
    sqldtsNfEmailNOTA: TBCDField;
    sqldtsNfEmailDATAEMISSAOID: TSQLTimeStampField;
    sqldtsNfEmailDATAGERACAO: TSQLTimeStampField;
    sqldtsNfEmailEMAIL: TStringField;
    sqldtsNfEmailASSUNTO: TStringField;
    sqldtsNfEmailCORPO: TStringField;
    sqldtsNfEmailLOGPROCESSO: TStringField;
    sqldtsNfEmailDATAENVIO: TSQLTimeStampField;
    sqldtsNfEmailUSUARIO: TStringField;
    sqldtsNfEmailSTATUS: TStringField;
    sqldtsReceitaIMPOSTOSERVQLDNATID: TStringField;
  private
    { Private declarations }
    FSrvAppGSI : ISrvAppGSI;
    FSQLcnn: integer;
  protected
    class procedure UpdateRegistry(Register: Boolean; const ClassID, ProgID: string); override;
    function Get_dmSrvAppGSI: ISrvAppGSI; safecall;
    procedure Set_dmSrvAppGSI(const Value: ISrvAppGSI); safecall;
    function Get_SQLcnn: Integer; safecall;
    procedure Set_SQLcnn(Value: Integer); safecall;
    function ISQL_EF: OleVariant; safecall;
    procedure ApagarPDE( EmpresaID, PDEID : String; sqlUpd : TSQLQuery );
    procedure IAtualSaldoPDE(const EmpresaId, ProdutoID: WideString; QtdAntiga,
      QtdNova: Currency); safecall;
    function IAliquotaImposto(const ImpostoID: WideString): Currency; safecall;
    function IAliquotaICMS(const TipoMovimento: WideString; EmpresaId: Integer;
      const UfID: WideString; Contribuinte: Integer): Currency; safecall;
    procedure ICancSaldoPDE(const EmpresaID, PdeID, NFSID, DataEmissaoNFSID,
      OSID, NaturezaOPID, ItemID, ProdutoID: WideString;
      Quantidade: Currency); safecall;
    procedure ITotalPDE(const EmpresaID, PdeID: WideString); safecall;
    procedure ITotalPDS(const EmpresaId, PdsID, NaturezaOp: WideString);
      safecall;
    procedure IAtualSaldoPDS(const EmpresaId, NaturezaOPID,
      ProdutoID: WideString; QtdNova: Currency;
      const EstoqueUtilizado: WideString); safecall;
    procedure ICancSaldoPDS(const EmpresaId, NFEID, DataEmissaoNFEID, OSId,
      NaturezaOPID, ProdutoID, EstoqueUtilizado, EmpenhoItemID: WideString;
      Quantidade: Currency); safecall;
    function IEmissaoNFE(PdeData, PdeItemData, PdeItemDataBar: OleVariant;
      const DataEmissao, DataEntrada: WideString;
      RecebimentoEntrada: WordBool; const Usuario: WideString;
      DocInterno: WordBool): WideString; safecall;
    function IEmissaoNFS(PdsData, PdsItemData: OleVariant; const DataEmissao,
      Usuario: WideString; DocInterno: WordBool): WideString; safecall;
    procedure IDeletarPDE(const EmpresaID, PdeID: WideString); safecall;
    procedure IRecebimentoEntrada(PdeData, PdeItemData,
      PdeItemDataBar: OleVariant; const DataEmissao, DataEntrada,
      Usuario: WideString); safecall;
    procedure IRecebimentoImportacao(DeclaracaoData,
      MercadoriaData: OleVariant; const DataEntradaNFEID,
      Usuario: WideString); safecall;
    function IAtualNovoCustoKdxTransf: OleVariant; safecall;
    procedure IReprocessarKardex(const EmpresaId, ProdutoID: WideString;
      Tabela, Posicao: Integer); safecall;
    procedure IDesmembCusto(const EmpresaId, ProdutoID,
      ProdutoRecepID: WideString; QtdDesmemb, VlrDesmemb: Single;
      const UsuarioID: WideString); safecall;
    procedure ICancelarNota(const EmpresaID, NfId, DataEmissaoId,
      TipoNota: WideString); safecall;
  public
    { Public declarations }
    procedure DeletarMovPde( EmpresaID, PdeID, NFSID,
                             DataEmissaoNFSID, OSID, NaturezaOPID, ItemID, ProdutoID: String;
                             Quantidade : Currency; sqlNat, sqlUpd : TSQLQuery );
    procedure MovEstoq_NFE_N( NFEID, DataEntradaNFEID : String; sqlKdx, sqlProd, sqlUpd : TSQLQuery;
        cdsPde, cdsPdeItem : TClientDataSet; Quarentena : Boolean  );
    procedure MovEstoq_NFE_V( NFEID, DataEntradaNFEID, DataEmissaoNFEID : String; sqlKdx, sqlProd, sqlUpd : TSQLQuery;
        cdsPde, cdsPdeItem : TClientDataSet );
    procedure MovEstoq_NFE_E( NFEID, DataEntradaNFEID, DataEmissaoNFEID : String; Movimenta : Boolean; sqlKdx, sqlProd, sqlUpd : TSQLQuery;
        cdsPde, cdsPdeItem, cdsPdeItemBar : TClientDataSet );
    procedure MovEstoq_NFE_D( NFEID, DataEntradaNFEID : String; sqlKdx, sqlProd, sqlUpd : TSQLQuery;
        cdsPde, cdsPdeItem : TClientDataSet );
    procedure MovNotaNormal( sqlNatOp, sqlKdx, sqlProd, sqlUpd : TSQLQuery;
        cdsPde, cdsPdeItem, cdsPdeItemBar : TClientDataSet;
        NFEID, DataEmissaoNFEID, DataEntradaNFEID, Usuario : String;
        RecebimentoEntrada, Movimenta : Boolean );
    procedure UltSaldoProduto( FsqlProd : TSQLQuery; EmpresaID, ProdutoID : String );
    procedure AtualizaMovKdx( FsqlUpdKDX, FsqlProd : TSQLQuery ;
      EmpresaID, ProdutoID, OSID, DIID, NaturezaOpID, Quantidade, ItemID, Usuario : String;
      NrNF, DataEmissao, TipoDocumento, TipoEstoque, TipoOperacao : String;
      CustoUnitario, CustoTotal, CustoMedio, CustoMedioTotal : Real );
    procedure UltSaldoKdx( Fsql : TSQLQuery ; EmpresaID, ProdutoID : String;
     var QtdSaldoAnterior, CustoMedio, CustoMedioTotal : Currency );
    procedure AtualizarNFE( EmpresaID, NFEID, DataEmissaoNFEID, DataEntradaNFEID, EntidadeID, CategoriaID : String; sqlUpd : TSQLQuery );
  end;

var FSrvAppEF : TComponentFactory;

implementation

uses FuncoesServidor, FuncoesDSI, Math, DateUtils, u_rmSrvAppGSI;

{$R *.DFM}

class procedure TSrvAppEF.UpdateRegistry(Register: Boolean; const ClassID, ProgID: string);
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

function TSrvAppEF.Get_dmSrvAppGSI: ISrvAppGSI;
begin
 Result := FSrvAppGSI;
end;

procedure TSrvAppEF.Set_dmSrvAppGSI(const Value: ISrvAppGSI);
begin
 FSrvAppGSI := Value;
end;

function TSrvAppEF.ISQL_EF: OleVariant;
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

function TSrvAppEF.Get_SQLcnn: Integer;
begin
 Result := FSQLcnn;
end;

procedure TSrvAppEF.Set_SQLcnn(Value: Integer);
var i: integer;
begin
  FSQLcnn := Value;
  for i:=0 to ComponentCount-1 do
     if Components[i] is TSQLDataSet then
        TSQLDataSet(Components[i]).SQLConnection := TSQLConnection(FSQLcnn);
end;

procedure TSrvAppEF.ApagarPDE( EmpresaID, PDEID : String; sqlUpd : TSQLQuery );
begin
 sqlUpd.Close;
 sqlUpd.SQL.Clear;
 sqlUpd.SQL.Add( 'DELETE FROM EF_PDE' );
 sqlUpd.SQL.Add('WHERE');
 sqlUpd.SQL.Add(' EMPRESAID = ' + EmpresaID );
 sqlUpd.SQL.Add(' AND PDEID = ' + PDEID );
 sqlUpd.ExecSQL( False );
end;

procedure TSrvAppEF.IAtualSaldoPDE(const EmpresaId, ProdutoID: WideString;
  QtdAntiga, QtdNova: Currency);
var sqlUpdate: TSQLQuery;
begin
 sqlUpdate := TSQLQuery.Create(nil);
 sqlUpdate.SQLConnection := TSQLConnection(FSQLcnn);

 try
  try // Except
   // Inicia transação
   TSQLConnection(FSQLcnn).StartTransaction(TD);

   // Atualizar o novo saldo
   sqlUpdate.SQL.Clear;
   sqlUpdate.SQL.Add('UPDATE EF_PRODUTO ');
   sqlUpdate.SQL.Add(' SET ESTOQUEPEDENTRADA = NVL( ESTOQUEPEDENTRADA, 0 ) - ' +
                       SubstituiString( FloatToStr( QtdAntiga ), ',', '.' ) + ' + ' +
                       SubstituiString( FloatToStr( QtdNova ), ',', '.' ) ) ;
   sqlUpdate.SQL.Add('WHERE ');
   sqlUpdate.SQL.Add(' EMPRESAID = ' + EmpresaID );
   sqlUpdate.SQL.Add(' AND PRODUTOID = ' + ProdutoID );
   sqlUpdate.ExecSQL( False );

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
  FreeAndNil( sqlUpdate );
 end;
end;

function TSrvAppEF.IAliquotaImposto(const ImpostoID: WideString): Currency;
begin
 Result := AliquotaImposto( ImpostoID, TSQLConnection(FSQLcnn) );
end;

function TSrvAppEF.IAliquotaICMS(const TipoMovimento: WideString;
  EmpresaId: Integer; const UfID: WideString;
  Contribuinte: Integer): Currency;
begin
 Result := AliquotaICMS( TipoMovimento, EmpresaID, UfID, Contribuinte, TSQLConnection(FSQLcnn) );
end;

procedure TSrvAppEF.DeletarMovPde( EmpresaID, PdeID, NFSID,
  DataEmissaoNFSID, OSID, NaturezaOPID, ItemID, ProdutoID: String;
  Quantidade : Currency; sqlNat, sqlUpd : TSQLQuery );
begin
 sqlNat.SQL.Clear;
 sqlNat.SQL.Add('SELECT');
 sqlNat.SQL.Add('  MOVIMENTOESTOQUE');
 sqlNat.SQL.Add('  FROM');
 sqlNat.SQL.Add('  EF_NATUREZAOP');
 sqlNat.SQL.Add(' WHERE');
 sqlNat.SQL.Add('  NATUREZAOPID = ' + NaturezaOpId );
 sqlNat.Prepared := True;
 sqlNat.Open;

 // Atualizar o novo saldo
 sqlUpd.SQL.Clear;
 sqlUpd.SQL.Add('UPDATE EF_PRODUTO ');
 sqlUpd.SQL.Add('   SET ESTOQUEPEDENTRADA = NVL( ESTOQUEPEDENTRADA, 0 ) - ' + SubstituiString( FloatToStr( Quantidade ), ',', '.' ) );
 sqlUpd.SQL.Add('WHERE ');
 sqlUpd.SQL.Add(' EMPRESAID = ' + EmpresaID );
 sqlUpd.SQL.Add(' AND PRODUTOID = ' + ProdutoID );
 sqlUpd.ExecSQL( False );

 if sqlNat.IsEmpty then
    raise Exception.Create('Natureza de operação não preenchida');

 if sqlNat.FieldByName('MOVIMENTOESTOQUE').AsString[1] in ['E','D','V'] then
    begin
     // Verificar pepeças em empenho
     if  ( OSID <> '' ) and ( NFSID <> '' )then
         begin
          sqlUpd.SQL.Clear;
          sqlUpd.SQL.Add(' DELETE FROM OS_OSPECA' );
          sqlUpd.SQL.Add('  WHERE ');
          sqlUpd.SQL.Add('  OSID = ' + QuotedStr( OSID ) );
          sqlUpd.SQL.Add('  AND PRODUTOID = ' + ProdutoID );
          sqlUpd.SQL.Add('  AND UTILIZADO = 0 ');
          sqlUpd.SQL.Add('  AND NFSID = ' + NFSID );
          sqlUpd.SQL.Add('  AND DATAEMISSAOID  = ' + QuotedStr( DATAEMISSAONFSID ) );
          sqlUpd.ExecSQL( False );
         end;

     if NFSID <> '' then
        begin
         sqlUpd.Close;
         sqlUpd.SQL.Clear;
         sqlUpd.SQL.Add('UPDATE EF_NFSITEM' );
         sqlUpd.SQL.Add(' SET' );
         sqlUpd.SQL.Add('  EF_NFSITEM.QTDRETORNA     = NVL( EF_NFSITEM.QTDRETORNA, 0 ) - ' + SubstituiString( FormatFloat( '#,##0.000000', Quantidade ) , ',', '.' )  + ',' );
         sqlUpd.SQL.Add('  EF_NFSITEM.RETORNO        = ' +  QuotedStr( 'CR' ) );
         sqlUpd.SQL.Add(' WHERE' );
         sqlUpd.SQL.Add('  EF_NFSITEM.EMPRESAID          = ' + EmpresaID );
         sqlUpd.SQL.Add('  AND EF_NFSITEM.NFSID          = ' + NFSID );
         sqlUpd.SQL.Add('  AND EF_NFSITEM.DATAEMISSAOID  = ' + QuotedStr( DATAEMISSAONFSID ) );
         sqlUpd.SQL.Add('  AND EF_NFSITEM.PRODUTOID      = ' + ProdutoID );
         sqlUpd.ExecSQL( False );
        end;
    end;
end;

procedure TSrvAppEF.ICancSaldoPDE(const EmpresaID, PdeID, NFSID,
  DataEmissaoNFSID, OSID, NaturezaOPID, ItemID, ProdutoID: WideString;
  Quantidade: Currency);
var sqlNat, sqlUpd : TSQLQuery;
begin
 sqlNat := TSQLQuery.Create(nil);
 sqlNat.SQLConnection := TSQLConnection(FSQLcnn);

 sqlUpd := TSQLQuery.Create(nil);
 sqlUpd.SQLConnection := TSQLConnection(FSQLcnn);

 try
  try // Except
   // Inicia transação
   TSQLConnection(FSQLcnn).StartTransaction(TD);

   DeletarMovPde( EmpresaID, PdeID, NFSID, DataEmissaoNFSID, OSID,
                  NaturezaOPID, ItemID, ProdutoID, Quantidade,
                  sqlNat, sqlUpd );

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
  FreeAndNil( sqlNat );
  FreeAndNil( sqlUpd );
 end;
end;

procedure TSrvAppEF.ITotalPDE(const EmpresaID, PdeID: WideString);
var sqlUpdate: TSQLQuery;
begin
 sqlUpdate := TSQLQuery.Create(nil);
 sqlUpdate.SQLConnection := TSQLConnection(FSQLcnn);

 try
  try // Except
   // Inicia transação
   TSQLConnection(FSQLcnn).StartTransaction(TD);
   // Atualizar o novo saldo
   sqlUpdate.SQL.Clear;
   sqlUpdate.SQL.Add('UPDATE EF_PDE SET( EMBPESOLIQUIDO, VLRTOTALCOFINS, VLRTOTALPIS, VLRTOTALCREDCOFINS, VLRTOTALCREDPIS,');
   sqlUpdate.SQL.Add('         VLRTOTALBASEICMS, VLRTOTALICMS, VLRTOTALISENTASICMS,VLRTOTALOUTRASICMS, VLRTOTALBASEIPI,');
   sqlUpdate.SQL.Add('         VLRTOTALIPI, VLRTOTALISENTASIPI, VLRTOTALOUTRASIPI, VLRTOTALPRODUTO, VLRTOTALNOTA )');
   sqlUpdate.SQL.Add('  = (');
   sqlUpdate.SQL.Add('  SELECT');
   sqlUpdate.SQL.Add('         SUM(NVL(EF_PDEITEM.QUANTIDADE,0) * NVL( EF_PRODUTO.PESO, 0 ) ),');
   sqlUpdate.SQL.Add('         SUM(NVL(EF_PDEITEM.VLRCOFINS, 0)),');
   sqlUpdate.SQL.Add('         SUM(NVL(EF_PDEITEM.VLRPIS, 0)),');
   sqlUpdate.SQL.Add('         SUM(NVL(EF_PDEITEM.VLRCREDCOFINS, 0)),');
   sqlUpdate.SQL.Add('         SUM(NVL(EF_PDEITEM.VLRCREDPIS, 0)),');
   sqlUpdate.SQL.Add('         SUM(NVL(EF_PDEITEM.VLRBASEICMS, 0)),');
   sqlUpdate.SQL.Add('         SUM(NVL(EF_PDEITEM.VLRICMS, 0)),');
   sqlUpdate.SQL.Add('         SUM(NVL(EF_PDEITEM.VLRISENTASICMS, 0)),');
   sqlUpdate.SQL.Add('         SUM(NVL(EF_PDEITEM.VLROUTRASICMS, 0)),');
   sqlUpdate.SQL.Add('         SUM(NVL(EF_PDEITEM.VLRBASEIPI, 0)),');
   sqlUpdate.SQL.Add('         SUM(NVL(EF_PDEITEM.VLRIPI, 0)),');
   sqlUpdate.SQL.Add('         SUM(NVL(EF_PDEITEM.VLRISENTASIPI, 0)),');
   sqlUpdate.SQL.Add('         SUM(NVL(EF_PDEITEM.VLROUTRASIPI, 0)),');
   sqlUpdate.SQL.Add('         SUM(NVL(EF_PDEITEM.VLRPRECOTOTAL, 0)), ');
   sqlUpdate.SQL.Add('         SUM(NVL(EF_PDEITEM.VLRBASEIPI, 0)) + ');
   sqlUpdate.SQL.Add('         SUM(NVL(EF_PDE.VLRFRETE, 0)) + ');
   sqlUpdate.SQL.Add('         SUM(NVL(EF_PDE.VLRSEGURO, 0)) + ');
   sqlUpdate.SQL.Add('         SUM(NVL(EF_PDE.VLRDESPESAACESSORIA, 0)) + ');
   sqlUpdate.SQL.Add('         SUM(NVL(EF_PDEITEM.VLRIPI, 0) + ');
   sqlUpdate.SQL.Add('         NVL(EF_PDEITEM.VLRISENTASIPI, 0) + ');
   sqlUpdate.SQL.Add('         NVL(EF_PDEITEM.VLROUTRASIPI, 0) ) ');
   sqlUpdate.SQL.Add('    FROM EF_PDEITEM,');
   sqlUpdate.SQL.Add('         EF_PRODUTO');
   sqlUpdate.SQL.Add('    WHERE');
   sqlUpdate.SQL.Add('     EF_PRODUTO.EMPRESAID(+) = EF_PDEITEM.EMPRESAID');
   sqlUpdate.SQL.Add('     AND EF_PRODUTO.PRODUTOID(+) = EF_PDEITEM.PRODUTOID');
   sqlUpdate.SQL.Add('     AND EF_PDEITEM.EMPRESAID = ' + EmpresaID );
   sqlUpdate.SQL.Add('     AND EF_PDEITEM.PDEID = ' + PDEID );
   sqlUpdate.SQL.Add('   GROUP BY EF_PDEITEM.EMPRESAID, EF_PDEITEM.PDEID )');
   sqlUpdate.SQL.Add('WHERE');
   sqlUpdate.SQL.Add(' EF_PDE.EMPRESAID = ' + EmpresaID );
   sqlUpdate.SQL.Add(' AND EF_PDE.PDEID = '+ PDEID );
   sqlUpdate.ExecSQL( False );
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
  FreeAndNil( sqlUpdate );
 end;
end;

procedure TSrvAppEF.ITotalPDS(const EmpresaId, PdsID,
  NaturezaOp: WideString);
var sqlUpd, sqlPDS, sqlRatDesp, sqlTProd, sqlTServ, sqlTServRet, sqlNat : TSQLQuery;
    VlrTotalNF, VlrTotalPIS, VlrTotalCofins, VlrTotalISS, VlrTotalServico,EmbPesoTotal,
    VlrTotalBaseICMS, VlrTotalICMS,VlrTotalIsentasICMS,VlrTotalOutrasICMS,VlrTotalBaseIPI,
    VlrTotalIPI, VlrTotalIsentasIPI,VlrTotalOutrasIPI,VlrTotalProduto,
    VlrTotalRetencao2, VlrTotalRetPIS, VlrTotalRetCofins, VlrTotalRetCSLL,
    VlrTotalRetIRPF, VlrTotalRetIRPJ : Currency;

begin
 sqlUpd := TSQLQuery.Create(nil);
 sqlUpd.SQLConnection := TSQLConnection(FSQLcnn);

 sqlPDS := TSQLQuery.Create(nil);
 sqlPDS.SQLConnection := TSQLConnection(FSQLcnn);

 sqlRatDesp := TSQLQuery.Create(nil);
 sqlRatDesp.SQLConnection := TSQLConnection(FSQLcnn);

 sqlTProd := TSQLQuery.Create(nil);
 sqlTProd.SQLConnection := TSQLConnection(FSQLcnn);

 sqlTServ := TSQLQuery.Create(nil);
 sqlTServ.SQLConnection := TSQLConnection(FSQLcnn);

 sqlTServRet := TSQLQuery.Create(nil);
 sqlTServRet.SQLConnection := TSQLConnection(FSQLcnn);

 sqlNat := TSQLQuery.Create(nil);
 sqlNat.SQLConnection := TSQLConnection(FSQLcnn);

 try
  try // Except
   // Inicia transação
   TSQLConnection(FSQLcnn).StartTransaction(TD);

   sqlNat.SQL.Clear;
   sqlNat.SQL.Add('SELECT');
   sqlNat.SQL.Add('  DESPACESSORIABASEICMS');
   sqlNat.SQL.Add('  FROM');
   sqlNat.SQL.Add('  EF_NATUREZAOP');
   sqlNat.SQL.Add(' WHERE');
   sqlNat.SQL.Add('  NATUREZAOPID = ' + NaturezaOp );
   sqlNat.Prepared := True;
   sqlNat.Open;

   sqlPDS.SQL.Clear;
   sqlPDS.SQL.Add('SELECT( NVL(EF_PDS.VLRFRETE, 0) + NVL(EF_PDS.VLRSEGURO, 0) +');
   sqlPDS.SQL.Add('        NVL(EF_PDS.VLRDESPESAACESSORIA, 0)) VLRDESP_ACESS');
   sqlPDS.SQL.Add('  FROM EF_PDS ');
   sqlPDS.SQL.Add(' WHERE ');
   sqlPDS.SQL.Add('   EF_PDS.EMPRESAID = ' + EmpresaID );
   sqlPDS.SQL.Add('   AND EF_PDS.PDSID = ' + PDSID );
   sqlPDS.Prepared := True;
   sqlPDS.Open;

   // Rateio de despesas com proporção da alíquota do icms
   sqlRatDesp.SQL.Clear;
   sqlRatDesp.SQL.Add('SELECT ROUND( SUM(((NVL(EF_PDS.VLRFRETE, 0) + NVL(EF_PDS.VLRSEGURO, 0) +');
   sqlRatDesp.SQL.Add('           NVL(EF_PDS.VLRDESPESAACESSORIA, 0)) / DECODE( PDSITEM.QUANTIDADETOTAL, 0, 1,PDSITEM.QUANTIDADETOTAL) *');
   sqlRatDesp.SQL.Add('           EF_PDSITEM.QUANTIDADE) * (EF_PDSITEM.ALIQUOTAICMS / 100)), 2) VLRDESP_ACESS_PROPORCIONAL');
   sqlRatDesp.SQL.Add('  FROM EF_PDS,');
   sqlRatDesp.SQL.Add('       EF_PDSITEM,');
   sqlRatDesp.SQL.Add('       (SELECT EF_PDSITEM.EMPRESAID,');
   sqlRatDesp.SQL.Add('               EF_PDSITEM.PDSID,');
   sqlRatDesp.SQL.Add('               SUM(NVL(EF_PDSITEM.QUANTIDADE, 0)) QUANTIDADETOTAL');
   sqlRatDesp.SQL.Add('          FROM EF_PDSITEM');
   sqlRatDesp.SQL.Add('         WHERE EF_PDSITEM.EMPRESAID = ' + EmpresaID );
   sqlRatDesp.SQL.Add('           AND EF_PDSITEM.PDSID = ' + PDSID );
   sqlRatDesp.SQL.Add('         GROUP BY EF_PDSITEM.EMPRESAID, EF_PDSITEM.PDSID) PDSITEM');
   sqlRatDesp.SQL.Add('');
   sqlRatDesp.SQL.Add(' WHERE ');
   sqlRatDesp.SQL.Add('   EF_PDS.EMPRESAID = ' + EmpresaID );
   sqlRatDesp.SQL.Add('   AND EF_PDS.PDSID = ' + PDSID );
   sqlRatDesp.SQL.Add('   AND EF_PDSITEM.EMPRESAID = EF_PDS.EMPRESAID');
   sqlRatDesp.SQL.Add('   AND EF_PDSITEM.PDSID = EF_PDS.PDSID');
   sqlRatDesp.SQL.Add('   AND EF_PDSITEM.EMPRESAID = PDSITEM.EMPRESAID');
   sqlRatDesp.SQL.Add('   AND EF_PDSITEM.PDSID = PDSITEM.PDSID');
   sqlRatDesp.Prepared := True;
   sqlRatDesp.Open;

   // Totalizar os Produtos do Pedido
   sqlTProd.SQL.Clear;
   sqlTProd.SQL.Add('SELECT');
   sqlTProd.SQL.Add(' SUM(NVL(EF_PDSITEM.QUANTIDADE,0) * NVL( EF_PRODUTO.PESO, 0 ) ) EMBPESOLIQUIDO,');
   sqlTProd.SQL.Add(' SUM(NVL(EF_PDSITEM.VLRCOFINS, 0)) VLRTOTALCOFINS ,');
   sqlTProd.SQL.Add(' SUM(NVL(EF_PDSITEM.VLRPIS, 0)) VLRTOTALPIS , ');
   sqlTProd.SQL.Add(' SUM(NVL(EF_PDSITEM.VLRBASEICMS, 0)) VLRTOTALBASEICMS,');
   sqlTProd.SQL.Add(' SUM(NVL(EF_PDSITEM.VLRICMS, 0)) VLRTOTALICMS,');
   sqlTProd.SQL.Add(' SUM(NVL(EF_PDSITEM.VLRISENTASICMS, 0)) VLRTOTALISENTASICMS,');
   sqlTProd.SQL.Add(' SUM(NVL(EF_PDSITEM.VLROUTRASICMS, 0)) VLRTOTALOUTRASICMS,');
   sqlTProd.SQL.Add(' SUM(NVL(EF_PDSITEM.VLRBASEIPI, 0)) VLRTOTALBASEIPI,');
   sqlTProd.SQL.Add(' SUM(NVL(EF_PDSITEM.VLRIPI, 0)) VLRTOTALIPI,');
   sqlTProd.SQL.Add(' SUM(NVL(EF_PDSITEM.VLRISENTASIPI, 0)) VLRTOTALISENTASIPI,');
   sqlTProd.SQL.Add(' SUM(NVL(EF_PDSITEM.VLROUTRASIPI, 0)) VLRTOTALOUTRASIPI,');
   sqlTProd.SQL.Add(' SUM(NVL(EF_PDSITEM.VLRPRECOTOTAL, 0)) VLRTOTALPRODUTO,');
   sqlTProd.SQL.Add(' SUM(NVL(EF_PDSITEM.VLRDESCONTO, 0)) VLRTOTALDESCONTO,');
   sqlTProd.SQL.Add(' SUM(NVL(EF_PDSITEM.VLRBASEIPI, 0)) + SUM(NVL(EF_PDSITEM.VLRIPI, 0) + NVL(EF_PDSITEM.VLRISENTASIPI, 0) + NVL(EF_PDSITEM.VLROUTRASIPI, 0) - NVL(EF_PDSITEM.VLRDESCONTO, 0)  ) VLRTOTALNOTA');
   sqlTProd.SQL.Add(' FROM EF_PDSITEM,');
   sqlTProd.SQL.Add('      EF_PDS,');
   sqlTProd.SQL.Add('      EF_PRODUTO');
   sqlTProd.SQL.Add(' WHERE');
   sqlTProd.SQL.Add('  EF_PRODUTO.EMPRESAID(+) = EF_PDSITEM.EMPRESAID');
   sqlTProd.SQL.Add('  AND EF_PRODUTO.PRODUTOID(+) = EF_PDSITEM.PRODUTOID');
   sqlTProd.SQL.Add('  AND EF_PDSITEM.EMPRESAID = ' + EmpresaID );
   sqlTProd.SQL.Add('  AND EF_PDSITEM.PDSID = ' + PDSID );
   sqlTProd.SQL.Add('  AND EF_PDSITEM.EMPRESAID = EF_PDS.EMPRESAID ');
   sqlTProd.SQL.Add('  AND EF_PDSITEM.PDSID = EF_PDS.PDSID ' );
   sqlTProd.SQL.Add(' GROUP BY EF_PDSITEM.EMPRESAID, EF_PDSITEM.PDSID');
   sqlTProd.Prepared := True;
   sqlTProd.Open;

   // Totalizar retenção de serviços;
   {  RETENÇÃO = 2 Reter = 4,65%, sendo 1,00% CSLL, 3,00% COFINS, 0,65% PIS
      Retenção s/venda de determinados serviços para clientes privados (acima de R$ 5.000,00).
      CONTRATO DE MANUTENÇÃO - Mensagem em nota fiscal: RETENCAO DE 4,65% P/PAGTO ACIMA DE R$ 5.000,00 (CINCO MIL REAIS), REF. A CSLL, COFINS E PIS, CONF. I.N. SRF 459/2004 NO VLR. DE: R$ X.XXX,XX }

   sqlTServRet.SQL.Clear;
   sqlTServRet.SQL.Add('SELECT EF_PDSSERVICO.EMPRESAID,');
   sqlTServRet.SQL.Add('       EF_PDSSERVICO.PDSID,');
   sqlTServRet.SQL.Add('    SUM( NVL( EF_PDSSERVICO.VLRSERVICO, 0 ) * ( NVL( ALIQRETENCAOPIS, 0 ) /100   ) ) VLRTOTALRETPIS, ');
   sqlTServRet.SQL.Add('    SUM( NVL( EF_PDSSERVICO.VLRSERVICO, 0 ) * ( NVL( ALIQRETENCAOCOFINS, 0 ) /100   ) ) VLRTOTALRETCOFINS,');
   sqlTServRet.SQL.Add('    SUM( NVL( EF_PDSSERVICO.VLRSERVICO, 0 ) * ( NVL( ALIQRETENCAOCSLL, 0 ) /100   ) ) VLRTOTALRETCSLL,');
   sqlTServRet.SQL.Add('    SUM( NVL( EF_PDSSERVICO.VLRSERVICO, 0 ) ) VLRTOTALSERV ');
   sqlTServRet.SQL.Add('  FROM EF_PDS, EF_PDSSERVICO, EF_SERVICO, EF_RECEITA, EF_ENTIDADE, EF_NATUREZAJURIDICA');
   sqlTServRet.SQL.Add(' WHERE EF_SERVICO.EMPRESAID = EF_PDSSERVICO.EMPRESAID');
   sqlTServRet.SQL.Add('   AND EF_SERVICO.SERVICOID = EF_PDSSERVICO.SERVICOID');
   sqlTServRet.SQL.Add('   AND EF_RECEITA.RECEITAID = EF_SERVICO.RECEITAID');
   sqlTServRet.SQL.Add('   AND EF_PDS.EMPRESAID = EF_PDSSERVICO.EMPRESAID');
   sqlTServRet.SQL.Add('   AND EF_PDS.PDSID = EF_PDSSERVICO.PDSID');
   sqlTServRet.SQL.Add('   AND EF_PDS.ENTIDADEID = EF_ENTIDADE.ENTIDADEID');
   sqlTServRet.SQL.Add('   AND EF_ENTIDADE.NATUREZAJURIDICAID = EF_NATUREZAJURIDICA.NATUREZAJURIDICAID');
   sqlTServRet.SQL.Add('   AND NVL( EF_NATUREZAJURIDICA.RETENCAO2, 0 ) = 1');
   sqlTServRet.SQL.Add('   AND NVL( EF_RECEITA.RETENCAO2, 0 ) = 1');
//   sqlTServRet.SQL.Add('   AND NVL( EF_PDSSERVICO.VLRSERVICO, 0 ) > 5000 ' );
   sqlTServRet.SQL.Add('   AND EF_PDS.EMPRESAID = ' + EmpresaID );
   sqlTServRet.SQL.Add('   AND EF_PDS.PDSID = ' + PDSID );
   sqlTServRet.SQL.Add(' GROUP BY EF_PDSSERVICO.EMPRESAID,');
   sqlTServRet.SQL.Add('          EF_PDSSERVICO.PDSID');
   sqlTServRet.Prepared := True;
   sqlTServRet.Open;


   VlrTotalRetPIS    := 0;
   VlrTotalRetCofins := 0;
   VlrTotalRetCSLL   := 0;

   if sqlTServRet.FieldByName('VLRTOTALSERV').AsCurrency > 5000 then
      begin
       VlrTotalRetPIS    := sqlTServRet.FieldByName('VLRTOTALRETPIS').AsCurrency;
       VlrTotalRetCofins := sqlTServRet.FieldByName('VLRTOTALRETCOFINS').AsCurrency;
       VlrTotalRetCSLL   := sqlTServRet.FieldByName('VLRTOTALRETCSLL').AsCurrency;
      end;

   sqlTServRet.Close;
   sqlTServRet.SQL.Clear;
   sqlTServRet.SQL.Add('SELECT EF_PDSSERVICO.EMPRESAID,');
   sqlTServRet.SQL.Add('       EF_PDSSERVICO.PDSID,');
   sqlTServRet.SQL.Add('       SUM( NVL( VLRRETCOFINS, 0 ) ) VLRTOTALRETCOFINS,');
   sqlTServRet.SQL.Add('       SUM( NVL( VLRRETPIS, 0 ) ) VLRTOTALRETPIS,');
   sqlTServRet.SQL.Add('       SUM( NVL( VLRRETCSLL, 0 ) ) VLRTOTALRETCSLL,');
   sqlTServRet.SQL.Add('       SUM( NVL( VLRRETIRPJ, 0 ) ) VLRTOTALRETIRPJ,');
   sqlTServRet.SQL.Add('       SUM( NVL( VLRRETIRPF, 0 ) ) VLRTOTALRETIRPF');
   sqlTServRet.SQL.Add('  FROM EF_PDSSERVICO');
   sqlTServRet.SQL.Add(' WHERE ');
   sqlTServRet.SQL.Add('   EF_PDSSERVICO.EMPRESAID = ' + EmpresaID );
   sqlTServRet.SQL.Add('   AND EF_PDSSERVICO.PDSID = ' + PDSID );
   sqlTServRet.SQL.Add(' GROUP BY EF_PDSSERVICO.EMPRESAID,');
   sqlTServRet.SQL.Add('          EF_PDSSERVICO.PDSID');
   sqlTServRet.Prepared := True;
   sqlTServRet.Open;

   VlrTotalRetPIS    := VlrTotalRetPIS + sqlTServRet.FieldByName('VLRTOTALRETPIS').AsCurrency;
   VlrTotalRetCofins := VlrTotalRetCofins + sqlTServRet.FieldByName('VLRTOTALRETCOFINS').AsCurrency;
   VlrTotalRetCSLL   := VlrTotalRetCSLL + sqlTServRet.FieldByName('VLRTOTALRETCSLL').AsCurrency;
   VlrTotalRetIRPF   := sqlTServRet.FieldByName('VLRTOTALRETIRPF').AsCurrency;
   VlrTotalRetIRPJ   := sqlTServRet.FieldByName('VLRTOTALRETIRPJ').AsCurrency;

   // Totalizar os Serviços do Pedido
   sqlTServ.SQL.Clear;
   sqlTServ.SQL.Add('SELECT');
   sqlTServ.SQL.Add(' SUM(NVL(EF_PDSSERVICO.VLRSERVICO, 0)) VLRTOTALSERVICO, ');
   sqlTServ.SQL.Add(' SUM(NVL(EF_PDSSERVICO.VLRISS, 0)) VLRTOTALISS,');
   sqlTServ.SQL.Add(' SUM(NVL(EF_PDSSERVICO.VLRPIS, 0)) VLRTOTALPIS,');
   sqlTServ.SQL.Add(' SUM(NVL(EF_PDSSERVICO.VLRCOFINS, 0)) VLRTOTALCOFINS');
   sqlTServ.SQL.Add('FROM EF_PDSSERVICO');
   sqlTServ.SQL.Add(' WHERE');
   sqlTServ.SQL.Add('  EF_PDSSERVICO.EMPRESAID = ' + EmpresaID );
   sqlTServ.SQL.Add('  AND EF_PDSSERVICO.PDSID = ' + PDSID );
   sqlTServ.SQL.Add(' GROUP BY EF_PDSSERVICO.EMPRESAID, EF_PDSSERVICO.PDSID');
   sqlTServ.Prepared := True;
   sqlTServ.Open;

   VlrTotalNF          := sqlTServ.FieldByName('VLRTOTALSERVICO').AsCurrency +
                          sqlTProd.FieldByName('VLRTOTALNOTA').AsCurrency;

   VlrTotalPIS         := sqlTServ.FieldByName('VLRTOTALPIS').AsCurrency +
                          sqlTProd.FieldByName('VLRTOTALPIS').AsCurrency;
   VlrTotalCofins      := sqlTServ.FieldByName('VLRTOTALCOFINS').AsCurrency +
                          sqlTProd.FieldByName('VLRTOTALCOFINS').AsCurrency;
   VlrTotalISS         := sqlTServ.FieldByName('VLRTOTALISS').AsCurrency;
   VlrTotalServico     := sqlTServ.FieldByName('VLRTOTALSERVICO').AsCurrency;
   EmbPesoTotal        := sqlTProd.FieldByName('EMBPESOLIQUIDO').AsCurrency;

   if sqlNat.IsEmpty then
      raise Exception.Create('Natureza de operação não preenchida');

   if sqlNat.FieldByName('DESPACESSORIABASEICMS').AsInteger = 0 then
      VlrTotalBaseICMS := sqlTProd.FieldByName('VLRTOTALBASEICMS').AsCurrency
   else
      VlrTotalBaseICMS := sqlTProd.FieldByName('VLRTOTALBASEICMS').AsCurrency + sqlPDS.FieldByName('VLRDESP_ACESS').AsCurrency;

   if sqlNat.FieldByName('DESPACESSORIABASEICMS').AsInteger = 0 then
      VlrTotalICMS     := sqlTProd.FieldByName('VLRTOTALICMS').AsCurrency
   else
      VlrTotalICMS     := sqlTProd.FieldByName('VLRTOTALICMS').AsCurrency + sqlRatDesp.FieldByName('VLRDESP_ACESS_PROPORCIONAL').AsCurrency;

   VlrTotalIsentasICMS := sqlTProd.FieldByName('VLRTOTALISENTASICMS').AsCurrency;
   VlrTotalOutrasICMS  := sqlTProd.FieldByName('VLRTOTALOUTRASICMS').AsCurrency;
   VlrTotalBaseIPI     := sqlTProd.FieldByName('VLRTOTALBASEIPI').AsCurrency;
   VlrTotalIPI         := sqlTProd.FieldByName('VLRTOTALIPI').AsCurrency;
   VlrTotalIsentasIPI  := sqlTProd.FieldByName('VLRTOTALISENTASIPI').AsCurrency;
   VlrTotalOutrasIPI   := sqlTProd.FieldByName('VLRTOTALOUTRASIPI').AsCurrency;
   VlrTotalProduto     := sqlTProd.FieldByName('VLRTOTALPRODUTO').AsCurrency;

   // Atualizar quantidade em relação aos itens do produto
   sqlUpd.SQL.Clear;
   sqlUpd.SQL.Add('UPDATE EF_PDS SET ' );
   sqlUpd.SQL.Add('  VLRTOTALSERVICO     = ' + SubstituiString( FloatToStr( VlrTotalServico ), ',', '.' ) + ',' );
   sqlUpd.SQL.Add('  VLRTOTALISS         = ' + SubstituiString( FloatToStr( VlrTotalISS ), ',', '.' ) + ',' );
   sqlUpd.SQL.Add('  VLRTOTALPIS         = ' + SubstituiString( FloatToStr( VlrTotalPIS ), ',', '.' ) + ',' );
   sqlUpd.SQL.Add('  VLRTOTALCOFINS      = ' + SubstituiString( FloatToStr( VlrTotalCofins ), ',', '.' ) + ',' );
   sqlUpd.SQL.Add('  EMBPESOLIQUIDO      = ' + SubstituiString( FloatToStr( EmbPesoTotal), ',', '.' ) + ',' );
   sqlUpd.SQL.Add('  VLRTOTALBASEICMS    = ' + SubstituiString( FloatToStr( VLRTOTALBASEICMS), ',', '.' ) + ',' );
   sqlUpd.SQL.Add('  VLRTOTALICMS        = ' + SubstituiString( FloatToStr( VLRTOTALICMS), ',', '.' ) + ',' );
   sqlUpd.SQL.Add('  VLRTOTALISENTASICMS = ' + SubstituiString( FloatToStr( VLRTOTALISENTASICMS), ',', '.' ) + ',' );
   sqlUpd.SQL.Add('  VLRTOTALOUTRASICMS  = ' + SubstituiString( FloatToStr( VLRTOTALOUTRASICMS), ',', '.' ) + ',' );
   sqlUpd.SQL.Add('  VLRTOTALBASEIPI     = ' + SubstituiString( FloatToStr( VLRTOTALBASEIPI), ',', '.' ) + ',' );
   sqlUpd.SQL.Add('  VLRTOTALIPI         = ' + SubstituiString( FloatToStr( VLRTOTALIPI), ',', '.' ) + ',' );
   sqlUpd.SQL.Add('  VLRTOTALISENTASIPI  = ' + SubstituiString( FloatToStr( VLRTOTALISENTASIPI), ',', '.' ) + ',' );
   sqlUpd.SQL.Add('  VLRTOTALOUTRASIPI   = ' + SubstituiString( FloatToStr( VLRTOTALOUTRASIPI), ',', '.' ) + ',' );
   sqlUpd.SQL.Add('  VLRTOTALPRODUTO     = ' + SubstituiString( FloatToStr( VLRTOTALPRODUTO), ',', '.' ) + ',' );
   sqlUpd.SQL.Add('  VLRTOTALRETPIS      = ' + SubstituiString( FloatToStr( VlrTotalRetPIS), ',', '.' ) + ',' );
   sqlUpd.SQL.Add('  VLRTOTALRETCOFINS   = ' + SubstituiString( FloatToStr( VlrTotalRetCofins), ',', '.' ) + ',' );
   sqlUpd.SQL.Add('  VLRTOTALRETCSLL     = ' + SubstituiString( FloatToStr( VlrTotalRetCSLL), ',', '.' ) + ',' );
   sqlUpd.SQL.Add('  VLRTOTALRETIRPF     = ' + SubstituiString( FloatToStr( VlrTotalRetIRPF), ',', '.' ) + ',' );
   sqlUpd.SQL.Add('  VLRTOTALRETIRPJ     = ' + SubstituiString( FloatToStr( VlrTotalRetIRPJ), ',', '.' ) + ',' );
   sqlUpd.SQL.Add('  VLRTOTALNOTA        =  NVL( VLRFRETE, 0 ) + ' +
                                           'NVL( VLRSEGURO, 0 ) + ' +
                                           'NVL( VLRDESPESAACESSORIA, 0 ) + ' +
                                           SubstituiString( FloatToStr( VlrTotalNF ) , ',', '.' ) );
   sqlUpd.SQL.Add(' WHERE' );
   sqlUpd.SQL.Add(' EF_PDS.EMPRESAID = ' + EmpresaID );
   sqlUpd.SQL.Add(' AND EF_PDS.PDSID = '+ PDSID );
   sqlUpd.ExecSQL( False );

   sqlTServ.Close;
   sqlTProd.Close;

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
  FreeAndNil( sqlPDS );
  FreeAndNil( sqlRatDesp );
  FreeAndNil( sqlTProd );
  FreeAndNil( sqlTServ );
  FreeAndNil( sqlNat );
  FreeAndNil( sqlTServRet );
 end;
end;

procedure TSrvAppEF.IAtualSaldoPDS(const EmpresaId, NaturezaOPID,
  ProdutoID: WideString; QtdNova: Currency;
  const EstoqueUtilizado: WideString);
var sqlUpdate, sqlNat: TSQLQuery;

  procedure SaldoMovimPadrao;
  begin
   { N - Novo
     R - Revisado
     D - Demonstração
     E - Empenho
     V - Vale
     Q - Quarentena }
   case EstoqueUtilizado[1] of
   'N' :  sqlUpdate.SQL.Add(' ESTOQUENOVO       = NVL( ESTOQUENOVO, 0 )     - ' + SubstituiString( FloatToStr( QtdNova ), ',', '.' ) + ',' );
   'R' :  sqlUpdate.SQL.Add(' ESTOQUEREVISADO   = NVL( ESTOQUEREVISADO, 0 ) - ' + SubstituiString( FloatToStr( QtdNova ), ',', '.' ) + ',' );
   'D' :  sqlUpdate.SQL.Add(' ESTOQUEDEMO       = NVL( ESTOQUEDEMO, 0 ) - ' + SubstituiString( FloatToStr( QtdNova ), ',', '.' ) + ',' );
   'E' :  sqlUpdate.SQL.Add(' ESTOQUEEMPENHO    = NVL( ESTOQUEEMPENHO, 0 )  - ' + SubstituiString( FloatToStr( QtdNova ), ',', '.' ) );
   'V' :  sqlUpdate.SQL.Add(' ESTOQUEVALE       = NVL( ESTOQUEVALE, 0 )     - ' + SubstituiString( FloatToStr( QtdNova ), ',', '.' ) );
   'Q' :  sqlUpdate.SQL.Add(' ESTOQUEQUARENTENA = NVL( ESTOQUEQUARENTENA, 0 )- ' + SubstituiString( FloatToStr( QtdNova ), ',', '.' ) );
   end;

   // Atualizar o saldo total
   case EstoqueUtilizado[1] of
   'N', 'R','D' : sqlUpdate.SQL.Add(' ESTOQUEFISICO = NVL( ESTOQUEFISICO, 0 ) - ' + SubstituiString( FloatToStr( QtdNova ), ',', '.' ) );
   end;
  end;

  procedure SaldoMovimDeTerceiro;
  begin
   sqlUpdate.SQL.Add(' ESTOQUEDETERCEIRO  = NVL( ESTOQUEDETERCEIRO, 0 ) - ' + SubstituiString( FloatToStr( QtdNova ), ',', '.' ) );
  end;

begin
 sqlUpdate := TSQLQuery.Create(nil);
 sqlUpdate.SQLConnection := TSQLConnection(FSQLcnn);

 sqlNat := TSQLQuery.Create(nil);
 sqlNat.SQLConnection := TSQLConnection(FSQLcnn);

 try
  try // Except
   // Inicia transação
   TSQLConnection(FSQLcnn).StartTransaction(TD);

   sqlNat.SQL.Clear;
   sqlNat.SQL.Add('SELECT');
   sqlNat.SQL.Add('  MOVIMENTOESTOQUE, VENDAFATANTECIPADO');
   sqlNat.SQL.Add('  FROM EF_NATUREZAOP');
   sqlNat.SQL.Add(' WHERE');
   sqlNat.SQL.Add('  NATUREZAOPID = ' + NaturezaOpId );
   sqlNat.Prepared := True;
   sqlNat.Open;

   { Para Faturamento Venda Faturamento Antecipado não ÃƒÆ’Ã‚Â© necessÃƒÆ’Ã‚Â¡rio
     saldo no estoque }
   if sqlNat.FieldByName('VENDAFATANTECIPADO').AsInteger = 1 then
      begin
       TSQLConnection(FSQLcnn).Rollback(TD);
       exit;
      end;

   // Atualizar o novo saldo
   sqlUpdate.SQL.Clear;
   sqlUpdate.SQL.Add('UPDATE EF_PRODUTO ');
   sqlUpdate.SQL.Add('  SET ESTOQUEPEDSAIDA = NVL( ESTOQUEPEDSAIDA, 0 ) + ' + SubstituiString( FloatToStr( QtdNova ), ',', '.' ) + ',' );


   case sqlNat.FieldByName('MOVIMENTOESTOQUE').AsString[1] of
   // Movimento de estode de terceiro
   'D' : SaldoMovimDeTerceiro;

   // Movimento de estoque padrÃƒÆ’Ã‚Â£o
   else  SaldoMovimPadrao;
   end;

   sqlUpdate.SQL.Add('WHERE ');
   sqlUpdate.SQL.Add(' EMPRESAID = ' + EmpresaID );
   sqlUpdate.SQL.Add(' AND PRODUTOID = ' + ProdutoID );
   sqlUpdate.ExecSQL( False );

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
  FreeAndNil( sqlUpdate );
 end;
end;

procedure TSrvAppEF.ICancSaldoPDS(const EmpresaId, NFEID, DataEmissaoNFEID,
  OSId, NaturezaOPID, ProdutoID, EstoqueUtilizado,
  EmpenhoItemID: WideString; Quantidade: Currency);
var sqlUpdate, sqlUpdNFE, sqlNat, sqlUpdOSPeca : TSQLQuery;

  procedure CancUtilizOSPeca;
  begin
   sqlUpdOSPeca.SQL.Clear;
   sqlUpdOSPeca.SQL.Add('UPDATE OS_OSPECA SET UTILIZADO = 0 ');
   sqlUpdOSPeca.SQL.Add('WHERE');
   sqlUpdOSPeca.SQL.Add(' OSID       = ' + QuotedStr( OsId ) );
   sqlUpdOSPeca.SQL.Add(' AND PECAID = ' + EmpenhoItemId );
   sqlUpdOSPeca.ExecSQL( False );
  end;

  procedure SaldoMovimPadrao;
  begin
   { N - Novo
     R - Revisado
     E - Empenho
     V - Vale }
   case EstoqueUtilizado[1] of
   'N' :  sqlUpdate.SQL.Add(' ESTOQUENOVO       = NVL( ESTOQUENOVO, 0 )     + ' + SubstituiString( FloatToStr( Quantidade ), ',', '.' ) + ',' );
   'R' :  sqlUpdate.SQL.Add(' ESTOQUEREVISADO   = NVL( ESTOQUEREVISADO, 0 ) + ' + SubstituiString( FloatToStr( Quantidade ), ',', '.' ) + ',' );
   'D' :  sqlUpdate.SQL.Add(' ESTOQUEDEMO       = NVL( ESTOQUEDEMO, 0 ) + ' + SubstituiString( FloatToStr( Quantidade ), ',', '.' ) + ',' );
   'E' :  sqlUpdate.SQL.Add(' ESTOQUEEMPENHO    = NVL( ESTOQUEEMPENHO, 0 )  + ' + SubstituiString( FloatToStr( Quantidade ), ',', '.' ) );
   'V' :  sqlUpdate.SQL.Add(' ESTOQUEVALE       = NVL( ESTOQUEVALE, 0 )     + ' + SubstituiString( FloatToStr( Quantidade ), ',', '.' ) );
   'Q' :  sqlUpdate.SQL.Add(' ESTOQUEQUARENTENA = NVL( ESTOQUEQUARENTENA, 0 )  + ' + SubstituiString( FloatToStr( Quantidade ), ',', '.' ) );
   end;

   // Atualizar o saldo total
   case EstoqueUtilizado[1] of
   'E', 'V' : CancUtilizOSPeca;
   'N', 'R', 'D' : sqlUpdate.SQL.Add(' ESTOQUEFISICO = NVL( ESTOQUEFISICO, 0 ) + ' + SubstituiString( FloatToStr( Quantidade ), ',', '.' ) );
   end;
  end;

  procedure SaldoMovimDeTerceiro;
  begin
   if NFEID = '' then
      exit;

   sqlUpdate.SQL.Add(' ESTOQUEDETERCEIRO  = NVL( ESTOQUEDETERCEIRO, 0 ) + ' + SubstituiString( FloatToStr( Quantidade ), ',', '.' ) );

   sqlUpdNFE.Close;
   sqlUpdNFE.SQL.Clear;
   sqlUpdNFE.SQL.Add('UPDATE EF_NFEITEM' );
   sqlUpdNFE.SQL.Add(' SET' );
   sqlUpdNFE.SQL.Add('  EF_NFEITEM.QTDRETORNA     = NVL( EF_NFEITEM.QTDRETORNA, 0 ) - ' + SubstituiString( FormatFloat( '#,##0.000000', Quantidade ) , ',', '.' )  + ',' );
   sqlUpdNFE.SQL.Add('  EF_NFEITEM.RETORNO        = ' +  QuotedStr( 'CR' ) );
   sqlUpdNFE.SQL.Add(' WHERE' );
   sqlUpdNFE.SQL.Add('  EF_NFEITEM.EMPRESAID          = ' + EmpresaID );
   sqlUpdNFE.SQL.Add('  AND EF_NFEITEM.NFEID          = ' + NFEID );
   sqlUpdNFE.SQL.Add('  AND EF_NFEITEM.DATAEMISSAOID  = ' + QuotedStr( DATAEMISSAONFEID ) );
   sqlUpdNFE.SQL.Add('  AND EF_NFEITEM.PRODUTOID      = ' + ProdutoID );
   sqlUpdNFE.ExecSQL( False );
  end;

begin
 sqlUpdate := TSQLQuery.Create(nil);
 sqlUpdate.SQLConnection := TSQLConnection(FSQLcnn);

 sqlUpdNFE := TSQLQuery.Create(nil);
 sqlUpdNFE.SQLConnection := TSQLConnection(FSQLcnn);

 sqlUpdOSPeca := TSQLQuery.Create(nil);
 sqlUpdOSPeca.SQLConnection := TSQLConnection(FSQLcnn);

 sqlNat := TSQLQuery.Create(nil);
 sqlNat.SQLConnection := TSQLConnection(FSQLcnn);
 try
  try // Except
   // Inicia transação
   TSQLConnection(FSQLcnn).StartTransaction(TD);

   sqlNat.SQL.Clear;
   sqlNat.SQL.Add('SELECT');
   sqlNat.SQL.Add('  MOVIMENTOESTOQUE, VENDAFATANTECIPADO');
   sqlNat.SQL.Add('  FROM EF_NATUREZAOP');
   sqlNat.SQL.Add(' WHERE');
   sqlNat.SQL.Add('  NATUREZAOPID = ' + NaturezaOpId );
   sqlNat.Prepared := True;
   sqlNat.Open;

   { Para Faturamento Venda Faturamento Antecipado não ÃƒÆ’Ã‚Â© necessÃƒÆ’Ã‚Â¡rio
     saldo no estoque }
   if sqlNat.FieldByName('VENDAFATANTECIPADO').AsInteger = 1 then
      begin
       TSQLConnection(FSQLcnn).Rollback(TD);
       exit;
      end;

   // Atualizar o novo saldo
   sqlUpdate.SQL.Clear;
   sqlUpdate.SQL.Add('UPDATE EF_PRODUTO ');
   sqlUpdate.SQL.Add('  SET ESTOQUEPEDSAIDA = NVL( ESTOQUEPEDSAIDA, 0 ) - ' + SubstituiString( FloatToStr( Quantidade ), ',', '.' ) + ',' );

   case sqlNat.FieldByName('MOVIMENTOESTOQUE').AsString[1] of
   // Movimento de estode de terceiro
   'D' : SaldoMovimDeTerceiro;

   // Movimento de estoque padrÃƒÆ’Ã‚Â£o
   else  SaldoMovimPadrao;

   end;

   sqlUpdate.SQL.Add('WHERE ');
   sqlUpdate.SQL.Add(' EMPRESAID = ' + EmpresaID );
   sqlUpdate.SQL.Add(' AND PRODUTOID = ' + ProdutoID );
   sqlUpdate.ExecSQL( False );

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
  FreeAndNil( sqlUpdNFE );
  FreeAndNil( sqlUpdate );
  FreeAndNil( sqlNat );
  FreeAndNil( sqlUpdOSPeca );
 end;
end;

procedure TSrvAppEF.UltSaldoProduto( FsqlProd : TSQLQuery; EmpresaID, ProdutoID : String );
begin
 FsqlProd.Close;
 FsqlProd.SQL.Clear;
 FsqlProd.SQL.Add('SELECT EMPRESAID, PRODUTOID, CUSTOMEDIO, ');
 FsqlProd.SQL.Add(' NVL( ESTOQUENOVO, 0 ) ESTOQUENOVO,');
 FsqlProd.SQL.Add(' NVL( ESTOQUEREVISADO, 0 ) ESTOQUEREVISADO,');
 FsqlProd.SQL.Add(' NVL( ESTOQUEFISICO, 0 ) ESTOQUEFISICO,');
 FsqlProd.SQL.Add(' NVL( ESTOQUEPEDENTRADA, 0 ) ESTOQUEPEDENTRADA,');
 FsqlProd.SQL.Add(' NVL( ESTOQUEPEDSAIDA, 0 ) ESTOQUEPEDSAIDA,');
 FsqlProd.SQL.Add(' NVL( ESTOQUEEMTERCEIRO, 0 ) ESTOQUEEMTERCEIRO,');
 FsqlProd.SQL.Add(' NVL( ESTOQUEDETERCEIRO, 0 ) ESTOQUEDETERCEIRO,');
 FsqlProd.SQL.Add(' NVL( ESTOQUEMINIMO, 0 ) ESTOQUEMINIMO,');
 FsqlProd.SQL.Add(' NVL( ESTOQUEEMPENHO, 0 ) ESTOQUEEMPENHO,' );
 FsqlProd.SQL.Add(' NVL( ESTOQUEVALE, 0 ) ESTOQUEVALE,');
 FsqlProd.SQL.Add(' NVL( ESTOQUEREVISADO, 0 ) ESTOQUEREVISADO,');
 FsqlProd.SQL.Add(' NVL( ESTOQUEESTORNO, 0 ) ESTOQUEESTORNO,');
 FsqlProd.SQL.Add(' NVL( ESTOQUEQUARENTENA, 0 ) ESTOQUEQUARENTENA,');
 FsqlProd.SQL.Add(' NVL( ESTOQUETOTAL, 0 ) ESTOQUETOTAL');
 FsqlProd.SQL.Add('  FROM EF_PRODUTO');
 FsqlProd.SQL.Add(' WHERE ');
 FsqlProd.SQL.Add('  EMPRESAID     = :pEmpresa ' );
 FsqlProd.SQL.Add('  AND PRODUTOID = :pProduto ' );
 FsqlProd.Params[0].Value := EmpresaID;
 FsqlProd.Params[1].Value := ProdutoID;
 FsqlProd.Prepared := True;
 FsqlProd.Open;
end;

procedure TSrvAppEF.AtualizaMovKdx( FsqlUpdKDX, FsqlProd : TSQLQuery ;
  EmpresaID, ProdutoID, OSID, DIID, NaturezaOpID, Quantidade, ItemID, Usuario : String;
  NrNF, DataEmissao, TipoDocumento, TipoEstoque, TipoOperacao : String;
  CustoUnitario, CustoTotal, CustoMedio, CustoMedioTotal : Real );
begin
 // Atualizar Valores do Produto
 UltSaldoProduto( FsqlProd, EmpresaID, ProdutoID );

 FsqlUpdKdx.SQL.Clear;
 FsqlUpdKdx.SQL.Add( 'INSERT INTO EF_KARDEX (' );
 FsqlUpdKdx.SQL.Add( ' EMPRESAID,' );
 FsqlUpdKdx.SQL.Add( ' KARDEXID,' );
 FsqlUpdKdx.SQL.Add( ' DATAOCORRENCIA,' );
 FsqlUpdKdx.SQL.Add( ' NUMDOCUMENTO,' );
 FsqlUpdKdx.SQL.Add( ' TIPODOCUMENTO,' );
 FsqlUpdKdx.SQL.Add( ' TIPOESTOQUE,' );
 FsqlUpdKdx.SQL.Add( ' OSID,' );

 if TipoDocumento = 'NFE' then
    begin
     FsqlUpdKdx.SQL.Add( ' DIID,' );
    end;

 FsqlUpdKdx.SQL.Add( ' ITEMID,' );
 FsqlUpdKdx.SQL.Add( ' NATUREZAOPID,' );
 FsqlUpdKdx.SQL.Add( ' TIPOOPERACAO,' );
 FsqlUpdKdx.SQL.Add( ' PRODUTOID,' );
 FsqlUpdKdx.SQL.Add( ' QUANTIDADE,' );
 FsqlUpdKdx.SQL.Add( ' VLRCUSTOUNITARIO,' );
 FsqlUpdKdx.SQL.Add( ' VLRCUSTOTOTAL,' );
 FsqlUpdKdx.SQL.Add( ' QUANTIDADESALDO,' );
 FsqlUpdKdx.SQL.Add( ' VLRCUSTOMEDIO,' );
 FsqlUpdKdx.SQL.Add( ' VLRCUSTOMEDIOTOTAL,' );
 FsqlUpdKdx.SQL.Add( ' VLRCUSTOMEDIOANTERIOR,' );
 FsqlUpdKdx.SQL.Add( ' ESTOQUENOVO,' );
 FsqlUpdKdx.SQL.Add( ' ESTOQUEREVISADO,' );
 FsqlUpdKdx.SQL.Add( ' ESTOQUEFISICO,' );
 FsqlUpdKdx.SQL.Add( ' ESTOQUEPEDENTRADA,' );
 FsqlUpdKdx.SQL.Add( ' ESTOQUEPEDSAIDA,' );
 FsqlUpdKdx.SQL.Add( ' ESTOQUEEMTERCEIRO,' );
 FsqlUpdKdx.SQL.Add( ' ESTOQUEDETERCEIRO,' );
 FsqlUpdKdx.SQL.Add( ' ESTOQUEMINIMO,' );
 FsqlUpdKdx.SQL.Add( ' ESTOQUEEMPENHO,' );
 FsqlUpdKdx.SQL.Add( ' ESTOQUEVALE,' );
 FsqlUpdKdx.SQL.Add( ' ESTOQUEESTORNO,' );
 FsqlUpdKdx.SQL.Add( ' ESTOQUEQUARENTENA,' );
 FsqlUpdKdx.SQL.Add( ' ESTOQUETOTAL,' );
 FsqlUpdKdx.SQL.Add( ' USUARIO )' );
 FsqlUpdKdx.SQL.Add( 'VALUES (' );
 FsqlUpdKdx.SQL.Add(   EmpresaID + ', ' );
 FsqlUpdKdx.SQL.Add(   IntToStr( ExecSequencia( 'SQ_EF_KARDEX_KARDEXID', TSQLConnection( FsqlCnn ) ) ) + ', ' );
 FsqlUpdKdx.SQL.Add(   QuotedStr( DataEmissao ) + ', ' );
 FsqlUpdKdx.SQL.Add(   NrNF + ', ' );
 FsqlUpdKdx.SQL.Add(   QuotedStr( TipoDocumento ) + ', ' );
 FsqlUpdKdx.SQL.Add(   QuotedStr( TipoEstoque ) + ', ' );
 FsqlUpdKdx.SQL.Add(   QuotedStr( OSID ) + ', ' );

 if TipoDocumento = 'NFE' then
    begin
     FsqlUpdKdx.SQL.Add(   QuotedStr( DIID ) + ', ' );
    end;

 FsqlUpdKdx.SQL.Add(   ItemID + ', ' );

 if NaturezaOpID = '' then
    FsqlUpdKdx.SQL.Add(   'Null, ' )
 else
    FsqlUpdKDX.SQL.Add(   NaturezaOpID + ', ' );

 FsqlUpdKdx.SQL.Add(   QuotedStr( TipoOperacao ) + ', ' );
 FsqlUpdKdx.SQL.Add(   ProdutoID + ', ' );
 FsqlUpdKdx.SQL.Add(   SubstituiString( Quantidade,  ',', '.' ) + ', ' );
 FsqlUpdKdx.SQL.Add(   SubstituiString( FloatToStr( CustoUnitario ),  ',', '.' ) + ', ' );
 FsqlUpdKdx.SQL.Add(   SubstituiString( FloatToStr( CustoTotal ),  ',', '.' ) + ', ' );
 FsqlUpdKdx.SQL.Add(   SubstituiString( FsqlProd.FieldByName('ESTOQUETOTAL').AsString,  ',', '.' ) + ', ' );
 FsqlUpdKdx.SQL.Add(   SubstituiString( FloatToStr( CustoMedio ),  ',', '.' ) + ', ' );
 FsqlUpdKdx.SQL.Add(   SubstituiString( FloatToStr( CustoMedioTotal ),  ',', '.' ) + ', ' );
 FsqlUpdKdx.SQL.Add(   SubstituiString( FloatToStr( CustoMedio ),  ',', '.' ) + ', ' );
 FsqlUpdKdx.SQL.Add(   SubstituiString( FsqlProd.FieldByName('ESTOQUENOVO').AsString,  ',', '.' ) + ', ' );
 FsqlUpdKdx.SQL.Add(   SubstituiString( FsqlProd.FieldByName('ESTOQUEREVISADO').AsString,  ',', '.' ) + ', ' );
 FsqlUpdKdx.SQL.Add(   SubstituiString( FsqlProd.FieldByName('ESTOQUEFISICO').AsString,  ',', '.' ) + ', ' );
 FsqlUpdKdx.SQL.Add(   SubstituiString( FsqlProd.FieldByName('ESTOQUEPEDENTRADA').AsString,  ',', '.' ) + ', ' );
 FsqlUpdKdx.SQL.Add(   SubstituiString( FsqlProd.FieldByName('ESTOQUEPEDSAIDA').AsString,  ',', '.' ) + ', ' );
 FsqlUpdKdx.SQL.Add(   SubstituiString( FsqlProd.FieldByName('ESTOQUEEMTERCEIRO').AsString,  ',', '.' ) + ', ' );
 FsqlUpdKdx.SQL.Add(   SubstituiString( FsqlProd.FieldByName('ESTOQUEDETERCEIRO').AsString,  ',', '.' ) + ', ' );
 FsqlUpdKdx.SQL.Add(   SubstituiString( FsqlProd.FieldByName('ESTOQUEMINIMO').AsString,  ',', '.' ) + ', ' );
 FsqlUpdKdx.SQL.Add(   SubstituiString( FsqlProd.FieldByName('ESTOQUEEMPENHO').AsString,  ',', '.' ) + ', ' );
 FsqlUpdKdx.SQL.Add(   SubstituiString( FsqlProd.FieldByName('ESTOQUEVALE').AsString,  ',', '.' ) + ', ' );
 FsqlUpdKdx.SQL.Add(   SubstituiString( FsqlProd.FieldByName('ESTOQUEESTORNO').AsString,  ',', '.' ) + ', ' );
 FsqlUpdKdx.SQL.Add(   SubstituiString( FsqlProd.FieldByName('ESTOQUEQUARENTENA').AsString,  ',', '.' ) + ', ' );
 FsqlUpdKdx.SQL.Add(   SubstituiString( FsqlProd.FieldByName('ESTOQUETOTAL').AsString,  ',', '.' ) + ', ' );
 FsqlUpdKdx.SQL.Add(   QuotedStr( Usuario ) + ')' );
 FsqlUpdKdx.ExecSQL( False );
end;

procedure TSrvAppEF.UltSaldoKdx( Fsql : TSQLQuery ; EmpresaID, ProdutoID : String;
 var QtdSaldoAnterior, CustoMedio, CustoMedioTotal : Currency );
begin
 Fsql.Close;
 Fsql.SQL.Clear;
 Fsql.SQL.Add('SELECT EMPRESAID,');
 Fsql.SQL.Add('       KARDEXID,');
 Fsql.SQL.Add('       DATAOCORRENCIA,');
 Fsql.SQL.Add('       PRODUTOID,');
 Fsql.SQL.Add('       QUANTIDADESALDO,');
 Fsql.SQL.Add('       VLRCUSTOMEDIO,');
 Fsql.SQL.Add('       VLRCUSTOMEDIOTOTAL,');
 Fsql.SQL.Add('       VLRCUSTOMEDIOANTERIOR');
 Fsql.SQL.Add('  FROM EF_KARDEX');
 Fsql.SQL.Add(' WHERE ');
 Fsql.SQL.Add('  EMPRESAID = :pEmpresa ' );
 Fsql.SQL.Add('  AND PRODUTOID = :pProduto ' );
 Fsql.SQL.Add(' ORDER BY EMPRESAID, KARDEXID DESC');
 Fsql.Params[0].Value := EmpresaID;
 Fsql.Params[1].Value := ProdutoID;
 Fsql.Prepared := True;
 Fsql.Open;
 Fsql.First;

 if Fsql.IsEmpty then
    begin
     QtdSaldoAnterior := 0;
     CustoMedio       := 0;
     CustoMedioTotal  := 0;
    end
 else
    begin
     QtdSaldoAnterior := Fsql.FieldByName('QUANTIDADESALDO').AsFloat;
     CustoMedio       := Fsql.FieldByName('VLRCUSTOMEDIO').AsFloat;
     CustoMedioTotal  := Fsql.FieldByName('VLRCUSTOMEDIOTOTAL').AsFloat;
    end;

 Fsql.Close;
end;


procedure InserirNFE( NFEID, DataEmissaoNFEID, DataEntradaNFEID, CreditoICMS, Usuario : String;
 sqlUpd : TSQLQuery; cdsPde : TClientDataSet; RecebimentoEntrada : Boolean; NSUID : Integer = 0 );
begin
 sqlUpd.SQL.Clear;
 sqlUpd.SQL.Add( 'INSERT INTO EF_NFE' );
 sqlUpd.SQL.Add( '  (EF_NFE.EMPRESAID,' );
 sqlUpd.SQL.Add( '   EF_NFE.NFEID,' );
 sqlUpd.SQL.Add( '   EF_NFE.DATAEMISSAOID,' );
 sqlUpd.SQL.Add( '   EF_NFE.ENTIDADEID,' );

 if not cdsPde.FieldByName('MODELODOCFISCALID').IsNull then
    sqlUpd.SQL.Add( '   EF_NFE.MODELODOCFISCALID,' );

 sqlUpd.SQL.Add( '   EF_NFE.SERIE,' );
 sqlUpd.SQL.Add( '   EF_NFE.DATAENTRADA,' );
 sqlUpd.SQL.Add( '   EF_NFE.CANCELADA,' );
 sqlUpd.SQL.Add( '   EF_NFE.EXPORTADO,' );
 sqlUpd.SQL.Add( '   EF_NFE.DIID,' );
 sqlUpd.SQL.Add( '   EF_NFE.DESCRICAOIMPORTACAO,' );
 sqlUpd.SQL.Add( '   EF_NFE.OSID,' );
 sqlUpd.SQL.Add( '   EF_NFE.CREDITARICMS,' );
 sqlUpd.SQL.Add( '   EF_NFE.LIBCHEFIA,' );
 sqlUpd.SQL.Add( '   EF_NFE.LIBCHEFIANOME,' );
 sqlUpd.SQL.Add( '   EF_NFE.LIBCHEFIADATA,' );
 sqlUpd.SQL.Add( '   EF_NFE.LIBFINANCEIRO,' );
 sqlUpd.SQL.Add( '   EF_NFE.LIBFINANCEIRONOME,' );
 sqlUpd.SQL.Add( '   EF_NFE.LIBFINANCEIRODATA,' );
 sqlUpd.SQL.Add( '   EF_NFE.LIBCONTABIL,' );
 sqlUpd.SQL.Add( '   EF_NFE.LIBCONTABILNOME,' );
 sqlUpd.SQL.Add( '   EF_NFE.LIBCONTABILDATA,' );
 sqlUpd.SQL.Add( '   EF_NFE.PDEID,' );
 sqlUpd.SQL.Add( '   EF_NFE.DATAPEDIDO,' );
 sqlUpd.SQL.Add( '   EF_NFE.REQUISITANTE,' );

 if not cdsPde.FieldByName('NFSID').IsNull then
    begin
     sqlUpd.SQL.Add( '   EF_NFE.NFSID,' );
     sqlUpd.SQL.Add( '   EF_NFE.DATAEMISSAONFSID,' );
    end;

 sqlUpd.SQL.Add( '   EF_NFE.TIPONOTA,' );
 sqlUpd.SQL.Add( '   EF_NFE.NOME,' );
 sqlUpd.SQL.Add( '   EF_NFE.CEPID,' );
 sqlUpd.SQL.Add( '   EF_NFE.NUMERO,' );
 sqlUpd.SQL.Add( '   EF_NFE.COMPLEMENTO,' );
 sqlUpd.SQL.Add( '   EF_NFE.ENDERECO,' );
 sqlUpd.SQL.Add( '   EF_NFE.BAIRRO,' );
 sqlUpd.SQL.Add( '   EF_NFE.CIDADE,' );
 sqlUpd.SQL.Add( '   EF_NFE.SIGLAUFID,' );
 sqlUpd.SQL.Add( '   EF_NFE.PAIS,' );
 sqlUpd.SQL.Add( '   EF_NFE.CONTRIBUINTEICMS,' );
 sqlUpd.SQL.Add( '   EF_NFE.NATUREZAOPID,' );

 if NSUID > 0 then
    sqlUpd.SQL.Add( '   EF_NFE.NSUID,' );

 if not cdsPde.FieldByName('OBSERVACAOID').IsNull then
    sqlUpd.SQL.Add( '   EF_NFE.OBSERVACAOID,' );

 sqlUpd.SQL.Add( '   EF_NFE.DESCRICAOOBSERVACAO,' );

 if not cdsPde.FieldByName('TRANSPORTADORID').IsNull then
    sqlUpd.SQL.Add( '   EF_NFE.TRANSPORTADORID,' );

 if not cdsPde.FieldByName('PLACAVEICULO').IsNull then
    sqlUpd.SQL.Add( '   EF_NFE.PLACAVEICULO,' );

 sqlUpd.SQL.Add( '   EF_NFE.MODALIDADEFRETE,' );
 sqlUpd.SQL.Add( '   EF_NFE.VLRFRETE,' );
 sqlUpd.SQL.Add( '   EF_NFE.VLRSEGURO,' );
 sqlUpd.SQL.Add( '   EF_NFE.VLRDESPESAACESSORIA,' );

 if not cdsPde.FieldByName('EMBQTDVOLUMES').IsNull then
    sqlUpd.SQL.Add( '   EF_NFE.EMBQTDVOLUMES,' );

 if not cdsPde.FieldByName('EMBNUMERO').IsNull then
    sqlUpd.SQL.Add( '   EF_NFE.EMBNUMERO,' );

 if not cdsPde.FieldByName('EMBMARCA').IsNull then
    sqlUpd.SQL.Add( '   EF_NFE.EMBMARCA,' );

 if not cdsPde.FieldByName('EMBESPECIE').IsNull then
    sqlUpd.SQL.Add( '   EF_NFE.EMBESPECIE,' );

 sqlUpd.SQL.Add( '   EF_NFE.EMBPESOBRUTO,' );
 sqlUpd.SQL.Add( '   EF_NFE.EMBPESOLIQUIDO,' );
 sqlUpd.SQL.Add( '   EF_NFE.VLRTOTALCOFINS,' );
 sqlUpd.SQL.Add( '   EF_NFE.VLRTOTALPIS,' );
 sqlUpd.SQL.Add( '   EF_NFE.VLRTOTALCREDCOFINS,' );
 sqlUpd.SQL.Add( '   EF_NFE.VLRTOTALCREDPIS,' );
 sqlUpd.SQL.Add( '   EF_NFE.VLRTOTALBASEICMS,' );
 sqlUpd.SQL.Add( '   EF_NFE.VLRTOTALICMS,' );
 sqlUpd.SQL.Add( '   EF_NFE.VLRTOTALISENTASICMS,' );
 sqlUpd.SQL.Add( '   EF_NFE.VLRTOTALOUTRASICMS,' );
 sqlUpd.SQL.Add( '   EF_NFE.VLRTOTALBASEIPI,' );
 sqlUpd.SQL.Add( '   EF_NFE.VLRTOTALIPI,' );
 sqlUpd.SQL.Add( '   EF_NFE.VLRTOTALISENTASIPI,' );
 sqlUpd.SQL.Add( '   EF_NFE.VLRTOTALOUTRASIPI,' );
 sqlUpd.SQL.Add( '   EF_NFE.VLRTOTALPRODUTO,' );
 sqlUpd.SQL.Add( '   EF_NFE.VLRTOTALNOTA,' );
 sqlUpd.SQL.Add( '   EF_NFE.DATAIMPRESSAO,' );
 sqlUpd.SQL.Add( '   EF_NFE.USUARIO)' );
 sqlUpd.SQL.Add( '   VALUES ( ' + cdsPde.FieldByName('EMPRESAID').AsString + ', ' );
 sqlUpd.SQL.Add(  NFEID + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( DataEmissaoNFEID ) + ', ' );
 sqlUpd.SQL.Add(  cdsPde.FieldByName('ENTIDADEID').AsString + ', ' );

 if not cdsPde.FieldByName('MODELODOCFISCALID').IsNull then
    sqlUpd.SQL.Add(  cdsPde.FieldByName('MODELODOCFISCALID').AsString + ', ' );

 sqlUpd.SQL.Add(  QuotedStr( cdsPde.FieldByName('SERIE').AsString ) + ', ' );

 if cdsPde.FieldByName('TIPONOTA').AsString = 'I' then
    sqlUpd.SQL.Add( 'NULL,' )
 else
    begin
     if RecebimentoEntrada then
        sqlUpd.SQL.Add( 'NULL,' )
     else
        sqlUpd.SQL.Add(  QuotedStr( DataEntradaNFEID ) + ', ' );
    end;

 sqlUpd.SQL.Add(  '0' + ', ' );
 sqlUpd.SQL.Add(  '0' + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPde.FieldByName('DIID').AsString ) + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPde.FieldByName('DESCRICAOIMPORTACAO').AsString ) + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPde.FieldByName('OSID').AsString ) + ', ' );
 sqlUpd.SQL.Add(  CreditoICMS + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPde.FieldByName('LIBCHEFIA').AsString ) + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPde.FieldByName('LIBCHEFIANOME').AsString ) + ', ' );
 sqlUpd.SQL.Add(  'TO_DATE(' + QuotedStr( cdsPde.FieldByName('LIBCHEFIADATA').AsString ) + ', ''dd/mm/yyyy HH24:MI:SS'' )' + ' ,' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPde.FieldByName('LIBFINANCEIRO').AsString ) + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPde.FieldByName('LIBFINANCEIRONOME').AsString ) + ', ' );
 sqlUpd.SQL.Add(  'TO_DATE(' + QuotedStr( cdsPde.FieldByName('LIBFINANCEIRODATA').AsString ) + ', ''dd/mm/yyyy HH24:MI:SS'' )' + ' ,' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPde.FieldByName('LIBCONTABIL').AsString ) + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPde.FieldByName('LIBCONTABILNOME').AsString ) + ', ' );
 sqlUpd.SQL.Add(  'TO_DATE(' + QuotedStr( cdsPde.FieldByName('LIBCONTABILDATA').AsString ) + ', ''dd/mm/yyyy HH24:MI:SS'' )' + ' ,' );
 sqlUpd.SQL.Add(  cdsPde.FieldByName('PDEID').AsString + ', ' );
 sqlUpd.SQL.Add(  'TO_DATE(' + QuotedStr( cdsPde.FieldByName('DATAPEDIDO').AsString ) + ', ''dd/mm/yyyy HH24:MI:SS'' )' + ' ,' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPde.FieldByName('USUARIO').AsString ) + ', ' );

 if not cdsPde.FieldByName('NFSID').IsNull then
    begin
     sqlUpd.SQL.Add(  cdsPde.FieldByName('NFSID').AsString + ', ' );
     sqlUpd.SQL.Add(  QuotedStr( FormatDateTime( 'DD/MM/YYYY',cdsPde.FieldByName('DATAEMISSAONFSID').AsDateTime ) ) + ', ' );
    end;

 sqlUpd.SQL.Add(  QuotedStr( cdsPde.FieldByName('TIPONOTA').AsString ) + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPde.FieldByName('NOME').AsString ) + ', ' );
 sqlUpd.SQL.Add(  cdsPde.FieldByName('CEPID').AsString + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPde.FieldByName('NUMERO').AsString ) + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPde.FieldByName('COMPLEMENTO').AsString ) + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPde.FieldByName('ENDERECO').AsString ) + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPde.FieldByName('BAIRRO').AsString ) + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPde.FieldByName('CIDADE').AsString ) + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPde.FieldByName('SIGLAUFID').AsString ) + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPde.FieldByName('PAIS').AsString ) + ', ' );
 sqlUpd.SQL.Add(  cdsPde.FieldByName('CONTRIBUINTEICMS').AsString + ', ' );
 sqlUpd.SQL.Add(  cdsPde.FieldByName('NATUREZAOPID').AsString + ', ' );

 if NSUID > 0 then
    sqlUpd.SQL.Add(  IntToStr( NSUID ) + ', ' );

 if not cdsPde.FieldByName('OBSERVACAOID').IsNull then
    sqlUpd.SQL.Add(  cdsPde.FieldByName('OBSERVACAOID').AsString + ', ' );

 sqlUpd.SQL.Add( QuotedStr( cdsPde.FieldByName('DESCRICAOOBSERVACAO').AsString ) + ', ' );

 if not cdsPde.FieldByName('TRANSPORTADORID').IsNull then
    sqlUpd.SQL.Add(  cdsPde.FieldByName('TRANSPORTADORID').AsString + ', ' );

 if not cdsPde.FieldByName('PLACAVEICULO').IsNull then
    sqlUpd.SQL.Add(  QuotedStr( cdsPde.FieldByName('PLACAVEICULO').AsString ) + ', ' );

 sqlUpd.SQL.Add(  QuotedStr( cdsPde.FieldByName('MODALIDADEFRETE').AsString ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPde.FieldByName('VLRFRETE').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPde.FieldByName('VLRSEGURO').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPde.FieldByName('VLRDESPESAACESSORIA').AsString,  ',', '.' ) + ', ' );

 if not cdsPde.FieldByName('EMBQTDVOLUMES').IsNull then
    sqlUpd.SQL.Add(  SubstituiString( cdsPde.FieldByName('EMBQTDVOLUMES').AsString,  ',', '.' ) + ', ' );

 if not cdsPde.FieldByName('EMBNUMERO').IsNull then
    sqlUpd.SQL.Add(  SubstituiString( cdsPde.FieldByName('EMBNUMERO').AsString,  ',', '.' ) + ', ' );

 if not cdsPde.FieldByName('EMBMARCA').IsNull then
    sqlUpd.SQL.Add(  QuotedStr( cdsPde.FieldByName('EMBMARCA').AsString ) + ', ' );

 if not cdsPde.FieldByName('EMBESPECIE').IsNull then
    sqlUpd.SQL.Add(  QuotedStr( cdsPde.FieldByName('EMBESPECIE').AsString ) + ', ' );

 sqlUpd.SQL.Add(  SubstituiString( cdsPde.FieldByName('EMBPESOBRUTO').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPde.FieldByName('EMBPESOLIQUIDO').AsString,  ',', '.' ) + ', ' );

 sqlUpd.SQL.Add(  SubstituiString( cdsPde.FieldByName('VLRTOTALCOFINS').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPde.FieldByName('VLRTOTALPIS').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPde.FieldByName('VLRTOTALCREDCOFINS').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPde.FieldByName('VLRTOTALCREDPIS').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPde.FieldByName('VLRTOTALBASEICMS').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPde.FieldByName('VLRTOTALICMS').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPde.FieldByName('VLRTOTALISENTASICMS').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPde.FieldByName('VLRTOTALOUTRASICMS').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPde.FieldByName('VLRTOTALBASEIPI').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPde.FieldByName('VLRTOTALIPI').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPde.FieldByName('VLRTOTALISENTASIPI').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPde.FieldByName('VLRTOTALOUTRASIPI').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPde.FieldByName('VLRTOTALPRODUTO').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPde.FieldByName('VLRTOTALNOTA').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  'TO_DATE(' + QuotedStr( FormatDateTime( 'DD/MM/YYYYY hh:nn:ss', Date ) ) + ', ''dd/mm/yyyy HH24:MI:SS'' )' + ' ,' );
 sqlUpd.SQL.Add(  QuotedStr( Usuario ) + ' )' );
 sqlUpd.ExecSQL( False );
end;

procedure InserirNFEItem( NFEID, DataEmissaoNFEID, Usuario : String;
 sqlUpd : TSQLQuery; cdsPde, cdsPDEItem : TClientDataSet );
begin
 sqlUpd.SQL.Clear;
 sqlUpd.SQL.Add( 'INSERT INTO EF_NFEITEM (' );
 sqlUpd.SQL.Add( '  EF_NFEITEM.EMPRESAID,' );
 sqlUpd.SQL.Add( '  EF_NFEITEM.NFEID,' );
 sqlUpd.SQL.Add( '  EF_NFEITEM.DATAEMISSAOID,' );
 sqlUpd.SQL.Add( '  EF_NFEITEM.ENTIDADEID,' );
 sqlUpd.SQL.Add( '  EF_NFEITEM.ITEMID,' );
 sqlUpd.SQL.Add( '  EF_NFEITEM.NATUREZAOPID,' );

if not cdsPdeItem.FieldByName('OBSERVACAOID').IsNull then
   begin
    sqlUpd.SQL.Add( '  EF_NFEITEM.OBSERVACAOID,' );
    sqlUpd.SQL.Add( '  EF_NFEITEM.DESCRICAOOBSERVACAO,' );
   end;

 sqlUpd.SQL.Add( '  EF_NFEITEM.PRODUTOID,' );
 sqlUpd.SQL.Add( '  EF_NFEITEM.DESCRICAOPRODUTO,' );
 sqlUpd.SQL.Add( '  EF_NFEITEM.QUANTIDADE,' );
 sqlUpd.SQL.Add( '  EF_NFEITEM.VLRPRECOUNITARIO,' );
 sqlUpd.SQL.Add( '  EF_NFEITEM.VLRPRECOTOTAL,' );

 if not cdsPdeItem.FieldByName('NFSID').IsNull then
    begin
     sqlUpd.SQL.Add( '  EF_NFEITEM.NFSID,' );
     sqlUpd.SQL.Add( '  EF_NFEITEM.DATAEMISSAONFSID,' );
    end;

 sqlUpd.SQL.Add( '  EF_NFEITEM.EMPENHO,' );
 sqlUpd.SQL.Add( '  EF_NFEITEM.QTDEMPENHO,' );
 sqlUpd.SQL.Add( '  EF_NFEITEM.RETORNO,' );
 sqlUpd.SQL.Add( '  EF_NFEITEM.QTDRETORNA,' );
 sqlUpd.SQL.Add( '  EF_NFEITEM.VLRBASEICMS,' );
 sqlUpd.SQL.Add( '  EF_NFEITEM.ALIQUOTAICMS,' );
 sqlUpd.SQL.Add( '  EF_NFEITEM.VLRICMS,' );
 sqlUpd.SQL.Add( '  EF_NFEITEM.VLRISENTASICMS,' );
 sqlUpd.SQL.Add( '  EF_NFEITEM.VLROUTRASICMS,' );
 sqlUpd.SQL.Add( '  EF_NFEITEM.PORCREDUCAOICMS,' );
 sqlUpd.SQL.Add( '  EF_NFEITEM.SITTRIBUTARIAESTADUAL,' );
 sqlUpd.SQL.Add( '  EF_NFEITEM.ALIQUOTACOFINS,' );
 sqlUpd.SQL.Add( '  EF_NFEITEM.VLRCOFINS,' );
 sqlUpd.SQL.Add( '  EF_NFEITEM.VLRCREDCOFINS,' );
 sqlUpd.SQL.Add( '  EF_NFEITEM.ALIQUOTAPIS,' );
 sqlUpd.SQL.Add( '  EF_NFEITEM.VLRPIS,' );
 sqlUpd.SQL.Add( '  EF_NFEITEM.VLRCREDPIS,' );
 sqlUpd.SQL.Add( '  EF_NFEITEM.VLRBASEIPI,' );
 sqlUpd.SQL.Add( '  EF_NFEITEM.ALIQUOTAIPI,' );
 sqlUpd.SQL.Add( '  EF_NFEITEM.VLRIPI,' );
 sqlUpd.SQL.Add( '  EF_NFEITEM.VLRISENTASIPI,' );
 sqlUpd.SQL.Add( '  EF_NFEITEM.VLROUTRASIPI,' );
 sqlUpd.SQL.Add( '  EF_NFEITEM.TIPOIPI,' );
 sqlUpd.SQL.Add( '  EF_NFEITEM.SITTRIBUTARIAFEDERAL,' );
 sqlUpd.SQL.Add( '  EF_NFEITEM.ARTIGO,' );
 sqlUpd.SQL.Add( '  EF_NFEITEM.DATAINICIALIPI,' );
 sqlUpd.SQL.Add( '  EF_NFEITEM.DATAFINALIPI,' );
 sqlUpd.SQL.Add( '  EF_NFEITEM.PRODINCENTIVADO,' );
 sqlUpd.SQL.Add( '  EF_NFEITEM.USUARIO )' );
 sqlUpd.SQL.Add( '   VALUES ( ' + cdsPde.FieldByName('EMPRESAID').AsString + ', ' );
 sqlUpd.SQL.Add(  NFEID + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( DataEmissaoNFEID ) + ', ' );
 sqlUpd.SQL.Add(  cdsPde.FieldByName('ENTIDADEID').AsString + ', ' );
 sqlUpd.SQL.Add(  cdsPdeItem.FieldByName('ITEMID').AsString + ', ' );
 sqlUpd.SQL.Add(  cdsPdeItem.FieldByName('NATUREZAOPID').AsString + ', ' );

 if not cdsPdeItem.FieldByName('OBSERVACAOID').IsNull then
    begin
     sqlUpd.SQL.Add(  cdsPdeItem.FieldByName('OBSERVACAOID').AsString + ', ' );
     sqlUpd.SQL.Add(  QuotedStr( cdsPdeItem.FieldByName('DESCRICAOOBSERVACAO').AsString ) + ', ' );
    end;

 sqlUpd.SQL.Add(  cdsPdeItem.FieldByName('PRODUTOID').AsString + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPdeItem.FieldByName('DESCRICAOPRODUTO').AsString ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPdeItem.FieldByName('QUANTIDADE').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPdeItem.FieldByName('VLRPRECOUNITARIO').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPdeItem.FieldByName('VLRPRECOTOTAL').AsString,  ',', '.' ) + ', ' );

 if not cdsPdeItem.FieldByName('NFSID').IsNull then
    begin
     sqlUpd.SQL.Add(  cdsPdeItem.FieldByName('NFSID').AsString + ', ' );
     sqlUpd.SQL.Add(  QuotedStr( FormatDateTime( 'DD/MM/YYYY',cdsPdeItem.FieldByName('DATAEMISSAONFSID').AsDateTime ) ) + ', ' );
    end;

 sqlUpd.SQL.Add(  cdsPdeItem.FieldByName('EMPENHO').AsString + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPdeItem.FieldByName('QUANTIDADEEMPENHO').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPdeItem.FieldByName('RETORNO').AsString ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPdeItem.FieldByName('QTDRETORNA').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPdeItem.FieldByName('VLRBASEICMS').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPdeItem.FieldByName('ALIQUOTAICMS').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPdeItem.FieldByName('VLRICMS').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPdeItem.FieldByName('VLRISENTASICMS').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPdeItem.FieldByName('VLROUTRASICMS').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPdeItem.FieldByName('PORCREDUCAOICMS').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPdeItem.FieldByName('SITTRIBUTARIAESTADUAL').AsString ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPdeItem.FieldByName('ALIQUOTACOFINS').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPdeItem.FieldByName('VLRCOFINS').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPdeItem.FieldByName('VLRCREDCOFINS').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPdeItem.FieldByName('ALIQUOTAPIS').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPdeItem.FieldByName('VLRPIS').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPdeItem.FieldByName('VLRCREDPIS').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPdeItem.FieldByName('VLRBASEIPI').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPdeItem.FieldByName('ALIQUOTAIPI').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPdeItem.FieldByName('VLRIPI').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPdeItem.FieldByName('VLRISENTASIPI').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPdeItem.FieldByName('VLROUTRASIPI').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPdeItem.FieldByName('TIPOIPI').AsString ) + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPdeItem.FieldByName('SITTRIBUTARIAFEDERAL').AsString ) + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPdeItem.FieldByName('ARTIGO').AsString ) + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPdeItem.FieldByName('DATAINICIALIPI').AsString ) + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPdeItem.FieldByName('DATAFINALIPI').AsString ) + ', ' );
 sqlUpd.SQL.Add(  cdsPdeItem.FieldByName('PRODINCENTIVADO').AsString + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( Usuario ) + ' )' );
 sqlUpd.ExecSQL( False );
end;

// Atualizar DI para notas do tipo importação‚Â£o
procedure MovNotaImportada( NFEID, DataEmissaoNFEID, DIID : String; sqlUpd : TSQLQuery );
begin
 sqlUpd.Close;
 sqlUpd.SQL.Clear;
 sqlUpd.SQL.Add('UPDATE IT_DECLARACAO SET');
 sqlUpd.SQL.Add(' NFEID            = ' + NFEID + ', ' );
 sqlUpd.SQL.Add(' DATAEMISSAONFEID = ' + QuotedStr( DataEmissaoNFEID ) );
 sqlUpd.SQL.Add('WHERE');
 sqlUpd.SQL.Add(' DIID = ' + QuotedStr( DIID ) );
 sqlUpd.ExecSQL( False );
end;

{ Movimentação Normal }
procedure TSrvAppEF.MovEstoq_NFE_N( NFEID, DataEntradaNFEID : String; sqlKdx, sqlProd, sqlUpd : TSQLQuery;
        cdsPde, cdsPdeItem : TClientDataSet; Quarentena : Boolean  );
var QtdSaldoAnterior, QtdSaldoAtual, VlrIPI, VlrFrete, VlrSeguro, VlrDespAcess,
    CustoMedio, CustoMedioTotal, CustoUnitario, CustoTotal : Currency;
begin
 UltSaldoKdx( sqlKdx, cdsPde.FieldByName('EMPRESAID').AsString, cdsPdeItem.FieldByName('PRODUTOID').AsString,
              QtdSaldoAnterior, CustoMedio, CustoMedioTotal );

 // Ratear Custo com despesas de transporte
 VlrFrete        := cdsPde.FieldByName('VLRFRETE').AsFloat / cdsPdeItem.RecordCount;
 VlrSeguro       := cdsPde.FieldByName('VLRSEGURO').AsFloat / cdsPdeItem.RecordCount;
 VlrDespAcess    := cdsPde.FieldByName('VLRDESPESAACESSORIA').AsFloat / cdsPdeItem.RecordCount;

 QtdSaldoAtual   := QtdSaldoAnterior + cdsPdeItem.FieldByName('QUANTIDADE').AsFloat;
 VlrIPI          := cdsPdeItem.FieldByName('VLRPRECOTOTAL').Value * ( cdsPdeItem.FieldByName('ALIQUOTAIPI').Value / 100 );
 CustoTotal      := cdsPdeItem.FieldByName('VLRPRECOTOTAL').AsCurrency +
                    VlrFrete + VlrSeguro + VlrDespAcess +
                    VlrIPI -
                    cdsPdeItem.FieldByName('VLRICMS').AsCurrency -
                    cdsPdeItem.FieldByName('VLRCREDPIS').AsCurrency -
                    cdsPdeItem.FieldByName('VLRCREDCOFINS').AsCurrency;
 CustoUnitario   := CustoTotal / cdsPdeItem.FieldByName('QUANTIDADE').AsFloat;
 CustoMedioTotal := CustoMedioTotal + CustoTotal;
 CustoMedio      :=  IfThen( ( QtdSaldoAtual > 0 ), ( CustoMedioTotal / QtdSaldoAtual ), 0  );


 // Efetivar a movimentação do produto por item
 sqlUpd.SQL.Clear;
 sqlUpd.SQL.Add('UPDATE EF_PRODUTO SET');
 sqlUpd.SQL.Add(' ESTOQUEPEDENTRADA = NVL( ESTOQUEPEDENTRADA, 0 ) - ' + SubstituiString( FloatToStr( cdsPdeItem.FieldByName('QUANTIDADE').AsCurrency ), ',', '.' ) + ',');

 if Quarentena then
    sqlUpd.SQL.Add(' ESTOQUEQUARENTENA = NVL( ESTOQUEQUARENTENA, 0 ) + ' + SubstituiString( FloatToStr( cdsPdeItem.FieldByName('QUANTIDADE').AsCurrency ), ',', '.' ) + ',')
 else
     begin
     sqlUpd.SQL.Add(' ESTOQUENOVO       = NVL( ESTOQUENOVO, 0 ) + ' + SubstituiString( FloatToStr( cdsPdeItem.FieldByName('QUANTIDADE').AsCurrency ), ',', '.' ) + ',');
     sqlUpd.SQL.Add(' ESTOQUEFISICO     = NVL( ESTOQUEFISICO, 0 ) + ' + SubstituiString( FloatToStr( cdsPdeItem.FieldByName('QUANTIDADE').AsCurrency ), ',', '.' ) + ',');
    end;

 sqlUpd.SQL.Add(' CUSTOMEDIO        = ' + SubstituiString( FloatToStr( CustoMedio ), ',', '.' ) + ',' );
 sqlUpd.SQL.Add(' CUSTOTOTAL        = ' + SubstituiString( FloatToStr( CustoMedioTotal ), ',', '.' ) + ',' );
 sqlUpd.SQL.Add(' ESTOQUETOTAL      = NVL( ESTOQUETOTAL, 0 ) + ' + SubstituiString( FloatToStr( cdsPdeItem.FieldByName('QUANTIDADE').AsCurrency ), ',', '.' ) );
 sqlUpd.SQL.Add('WHERE ');
 sqlUpd.SQL.Add(' EMPRESAID = ' + cdsPde.FieldByName('EMPRESAID').AsString );
 sqlUpd.SQL.Add(' AND PRODUTOID = ' + cdsPdeItem.FieldByName('PRODUTOID').AsString );
 sqlUpd.ExecSQL( False );

 // Gerar registro de Kardex para entrada em fisico
 AtualizaMovKdx( sqlUpd, sqlProd, cdsPde.FieldByName('EMPRESAID').AsString,
                                  cdsPdeItem.FieldByName('PRODUTOID').AsString,
                                  cdsPde.FieldByName('OSID').AsString,
                                  cdsPde.FieldByName('DIID').AsString,
                                  cdsPdeItem.FieldByName('NATUREZAOPID').AsString,
                                  cdsPdeItem.FieldByName('QUANTIDADE').AsString,
                                  cdsPdeItem.FieldByName('ITEMID').AsString,                                  
                                  cdsPde.FieldByName('USUARIO').AsString,
                                  NFEID, DataEntradaNFEID,
                                 'NFE', 'FIS', 'E', CustoUnitario, CustoTotal, CustoMedio, CustoMedioTotal );
end;

{ Devolução de Venda }
procedure TSrvAppEF.MovEstoq_NFE_V( NFEID, DataEntradaNFEID, DataEmissaoNFEID : String; sqlKdx, sqlProd, sqlUpd : TSQLQuery;
        cdsPde, cdsPdeItem : TClientDataSet );
var QtdSaldoAnterior, QtdSaldoAtual,
    CustoMedio, CustoMedioTotal, CustoUnitario, CustoTotal : Currency;
begin
 UltSaldoKdx( sqlKdx, cdsPde.FieldByName('EMPRESAID').AsString, cdsPdeItem.FieldByName('PRODUTOID').AsString,
              QtdSaldoAnterior, CustoMedio, CustoMedioTotal );

 sqlKdx.Close;
 sqlKdx.SQL.Clear;
 sqlKdx.SQL.Add('SELECT VLRCUSTOUNITARIO, VLRCUSTOTOTAL ');
 sqlKdx.SQL.Add('  FROM EF_KARDEX');
 sqlKdx.SQL.Add(' WHERE');
 sqlKdx.SQL.Add('  EMPRESAID = ' + cdsPde.FieldByName('EMPRESAID').AsString );
 sqlKdx.SQL.Add('  AND DATAOCORRENCIA = ' + QuotedStr( cdsPde.FieldByName('DATAEMISSAONFSID').AsString ) );
 sqlKdx.SQL.Add('  AND NUMDOCUMENTO   = ' + cdsPde.FieldByName('NFSID').AsString );
 sqlKdx.SQL.Add('  AND PRODUTOID      = ' + cdsPdeItem.FieldByName('PRODUTOID').AsString );
 sqlKdx.SQL.Add('  AND TIPODOCUMENTO  = ' + QuotedStr('NFS') );
 sqlKdx.SQL.Add('  AND TIPOESTOQUE    = ' + QuotedStr('FIS') );
 sqlKdx.SQL.Add('  AND TIPOOPERACAO   = ' + QuotedStr('S') );
 sqlKdx.Prepared := True;
 sqlKdx.Open;

 if sqlKdx.IsEmpty then
    raise Exception.Create('não localizado a nota fiscal da venda ( saÃƒÆ’Ã‚Â­da ), para o cÃƒÆ’Ã‚Â¡lculo do custo da devolução');

 QtdSaldoAtual   := QtdSaldoAnterior + cdsPdeItem.FieldByName('QUANTIDADE').AsFloat;
 CustoUnitario   := sqlKdx.FieldByName('VLRCUSTOUNITARIO').AsCurrency;
 CustoTotal      := sqlKdx.FieldByName('VLRCUSTOTOTAL').AsCurrency;   
 CustoMedioTotal := CustoMedioTotal + CustoTotal;
 CustoMedio      :=  IfThen( ( QtdSaldoAtual > 0 ), ( CustoMedioTotal / QtdSaldoAtual ), 0  );

 // Efetivar a movimentação do produto por item
 sqlUpd.SQL.Clear;
 sqlUpd.SQL.Add('UPDATE EF_PRODUTO SET');
 sqlUpd.SQL.Add(' ESTOQUEPEDENTRADA = NVL( ESTOQUEPEDENTRADA, 0 ) - ' + SubstituiString( FloatToStr( cdsPdeItem.FieldByName('QUANTIDADE').AsCurrency ), ',', '.' ) + ',');
 sqlUpd.SQL.Add(' ESTOQUEREVISADO   = NVL( ESTOQUEREVISADO, 0 ) + ' + SubstituiString( FloatToStr( cdsPdeItem.FieldByName('QUANTIDADE').AsCurrency ), ',', '.' ) + ',');
 sqlUpd.SQL.Add(' ESTOQUEFISICO     = NVL( ESTOQUEFISICO, 0 ) + ' + SubstituiString( FloatToStr( cdsPdeItem.FieldByName('QUANTIDADE').AsCurrency ), ',', '.' ) + ',');
 sqlUpd.SQL.Add(' CUSTOMEDIO   = ' + SubstituiString( FloatToStr( CustoMedio ), ',', '.' ) + ',' );
 sqlUpd.SQL.Add(' CUSTOTOTAL   = ' + SubstituiString( FloatToStr( CustoMedioTotal ), ',', '.' ) + ',' );
 sqlUpd.SQL.Add(' ESTOQUETOTAL = NVL( ESTOQUETOTAL, 0 ) + ' + SubstituiString( FloatToStr( cdsPdeItem.FieldByName('QUANTIDADE').AsCurrency ), ',', '.' ) );
 sqlUpd.SQL.Add('WHERE ');
 sqlUpd.SQL.Add(' EMPRESAID = ' + cdsPde.FieldByName('EMPRESAID').AsString );
 sqlUpd.SQL.Add(' AND PRODUTOID = ' + cdsPdeItem.FieldByName('PRODUTOID').AsString );
 sqlUpd.ExecSQL( False );

 // Gerar registro de Kardex para entrada em fisico //
 AtualizaMovKdx( sqlUpd, sqlProd, cdsPde.FieldByName('EMPRESAID').AsString,
                 cdsPdeItem.FieldByName('PRODUTOID').AsString,
                 cdsPde.FieldByName('OSID').AsString,
                 cdsPde.FieldByName('DIID').AsString,
                 cdsPdeItem.FieldByName('NATUREZAOPID').AsString,
                 cdsPdeItem.FieldByName('QUANTIDADE').AsString,
                 cdsPdeItem.FieldByName('ITEMID').AsString,                 
                 cdsPde.FieldByName('USUARIO').AsString,
                  NFEID, DataEntradaNFEID,
                 'NFE', 'FIS', 'E', CustoUnitario, CustoTotal, CustoMedio, CustoMedioTotal );
end;

{ Movimentação em Terceiro }
procedure TSrvAppEF.MovEstoq_NFE_E( NFEID, DataEntradaNFEID, DataEmissaoNFEID : String;
 Movimenta : Boolean; sqlKdx, sqlProd, sqlUpd : TSQLQuery;
 cdsPde, cdsPdeItem, cdsPdeItemBar : TClientDataSet );
var QtdSaldoAnterior,
    CustoUnitario, CustoTotal, CustoMedio, CustoMedioTotal : Currency;

 procedure InserirNFEItemBar;
 begin
  sqlUpd.SQL.Clear;
  sqlUpd.SQL.Add( 'INSERT INTO EF_NFEITEMBAR (' );
  sqlUpd.SQL.Add( ' EMPRESAID,' );
  sqlUpd.SQL.Add( ' NFEID,' );
  sqlUpd.SQL.Add( ' DATAEMISSAOID,' );
  sqlUpd.SQL.Add( ' ENTIDADEID,' );
  sqlUpd.SQL.Add( ' ITEMID,' );
  sqlUpd.SQL.Add( ' ITEMBARID,' );
  sqlUpd.SQL.Add( ' PRODUTOID,' );
  sqlUpd.SQL.Add( ' QUANTIDADE,' );
  sqlUpd.SQL.Add( ' ESTOQUEUTILIZADO,' );
  sqlUpd.SQL.Add( ' USUARIO )' );
  sqlUpd.SQL.Add( 'VALUES (' );
  sqlUpd.SQL.Add(   cdsPde.FieldByName('EMPRESAID').AsString + ', ' );
  sqlUpd.SQL.Add(   NFEID + ', ' );
  sqlUpd.SQL.Add(   QuotedStr( DataEmissaoNFEID ) + ', ' );
  sqlUpd.SQL.Add(   cdsPde.FieldByName('ENTIDADEID').AsString + ', ' );
  sqlUpd.SQL.Add(   cdsPdeItemBar.FieldByName('ITEMID').AsString + ', ' );
  sqlUpd.SQL.Add(   cdsPdeItemBar.FieldByName('ITEMBARID').AsString + ', ' );
  sqlUpd.SQL.Add(   cdsPdeItemBar.FieldByName('PRODUTOID').AsString + ', ' );
  sqlUpd.SQL.Add(   cdsPdeItemBar.FieldByName('QUANTIDADE').AsString + ', ' );
  sqlUpd.SQL.Add(   QuotedStr( cdsPdeItemBar.FieldByName('ESTOQUEUTILIZADO').AsString ) + ', ' );
  sqlUpd.SQL.Add(   QuotedStr( cdsPdeItemBar.FieldByName('USUARIO').AsString ) + ')' );
  sqlUpd.ExecSQL( False );
 end;
begin
 cdsPdeItemBar.First;
 while not cdsPdeItemBar.Eof do
 begin
  if cdsPdeItem.FieldByName('ITEMID').AsInteger <> cdsPdeItemBar.FieldByName('ITEMID').AsInteger then
     begin
      cdsPdeItemBar.Next;
      Continue;
     end;

  if Movimenta then
     InserirNFEItemBar;

  UltSaldoKdx( sqlKdx, cdsPde.FieldByName('EMPRESAID').AsString, cdsPdeItem.FieldByName('PRODUTOID').AsString,
               QtdSaldoAnterior, CustoMedio, CustoMedioTotal );

  CustoUnitario   := CustoMedio;
  CustoTotal      := CustoMedio * cdsPdeItem.FieldByName('QUANTIDADE').AsFloat;

  // Preparar query genÃƒÆ’Ã‚Â©rica para atualizar a movimentação do produto
  sqlUpd.SQL.Clear;
  sqlUpd.SQL.Add('UPDATE EF_PRODUTO SET');
  sqlUpd.SQL.Add(' ESTOQUEPEDENTRADA = NVL( ESTOQUEPEDENTRADA, 0 ) - ' + SubstituiString( cdsPdeItem.FieldByName('QUANTIDADE').AsString, ',', '.' ) + ',');
  sqlUpd.SQL.Add(' ESTOQUEEMTERCEIRO = NVL( ESTOQUEEMTERCEIRO, 0 ) - ' + SubstituiString( cdsPdeItem.FieldByName('QUANTIDADE').AsString,  ',', '.' ) + ',');
  case cdsPdeItemBar.FieldByName('ESTOQUEUTILIZADO').AsString[1] of
  'N' : begin
         sqlUpd.SQL.Add(' ESTOQUENOVO     = NVL( ESTOQUENOVO, 0 ) + ' + SubstituiString( cdsPdeItemBar.FieldByName('QUANTIDADE').AsString, ',', '.' ) + ',');
         sqlUpd.SQL.Add(' ESTOQUEFISICO   = NVL( ESTOQUEFISICO, 0 ) + ' + SubstituiString( cdsPdeItemBar.FieldByName('QUANTIDADE').AsString, ',', '.' ) + ',');
        end;
  'R' : begin
         sqlUpd.SQL.Add(' ESTOQUEREVISADO = NVL( ESTOQUEREVISADO, 0 ) + ' + SubstituiString( cdsPdeItemBar.FieldByName('QUANTIDADE').AsString, ',', '.' ) + ',');
         sqlUpd.SQL.Add(' ESTOQUEFISICO   = NVL( ESTOQUEFISICO, 0 ) + ' + SubstituiString( cdsPdeItemBar.FieldByName('QUANTIDADE').AsString, ',', '.' ) + ',');
        end;
  'D' : begin
         sqlUpd.SQL.Add(' ESTOQUEDEMO     = NVL( ESTOQUEDEMO, 0 ) + ' + SubstituiString( cdsPdeItemBar.FieldByName('QUANTIDADE').AsString, ',', '.' ) + ',');
         sqlUpd.SQL.Add(' ESTOQUEFISICO   = NVL( ESTOQUEFISICO, 0 ) + ' + SubstituiString( cdsPdeItemBar.FieldByName('QUANTIDADE').AsString, ',', '.' ) + ',');
        end;




  'E' : sqlUpd.SQL.Add(' ESTOQUEEMPENHO   = NVL( ESTOQUEEMPENHO, 0 ) + ' + SubstituiString( cdsPdeItemBar.FieldByName('QUANTIDADE').AsString, ',', '.' ) + ',');
  end;

  sqlUpd.SQL.Add(' CUSTOMEDIO = ' + SubstituiString( FloatToStr( CustoMedio ), ',', '.' ) + ',' );
  sqlUpd.SQL.Add(' CUSTOTOTAL = ' + SubstituiString( FloatToStr( CustoMedioTotal ), ',', '.' ) );
  sqlUpd.SQL.Add('WHERE ');
  sqlUpd.SQL.Add(' EMPRESAID = ' + cdsPde.FieldByName('EMPRESAID').AsString );
  sqlUpd.SQL.Add(' AND PRODUTOID = ' + cdsPdeItem.FieldByName('PRODUTOID').AsString );
  sqlUpd.ExecSQL( False );

  // Gerar registro de Kardex para entrada em fisico
  AtualizaMovKdx( sqlUpd, sqlProd, cdsPde.FieldByName('EMPRESAID').AsString,
                  cdsPdeItem.FieldByName('PRODUTOID').AsString,
                  cdsPde.FieldByName('OSID').AsString,
                  cdsPde.FieldByName('DIID').AsString,
                  cdsPdeItem.FieldByName('NATUREZAOPID').AsString,
                  cdsPdeItem.FieldByName('QUANTIDADE').AsString,
                  cdsPdeItem.FieldByName('ITEMID').AsString,                  
                  cdsPde.FieldByName('USUARIO').AsString,
                  NFEID, DataEntradaNFEID,
                  'NFE', 'EMT', 'S', CustoUnitario, CustoTotal, CustoMedio, CustoMedioTotal );

  AtualizaMovKdx( sqlUpd, sqlProd,cdsPde.FieldByName('EMPRESAID').AsString,
                  cdsPdeItem.FieldByName('PRODUTOID').AsString,
                  cdsPde.FieldByName('OSID').AsString,
                  cdsPde.FieldByName('DIID').AsString,
                  cdsPdeItem.FieldByName('NATUREZAOPID').AsString,
                  cdsPdeItem.FieldByName('QUANTIDADE').AsString,
                  cdsPdeItem.FieldByName('ITEMID').AsString,
                  cdsPde.FieldByName('USUARIO').AsString,
                  NFEID, DataEntradaNFEID,
                  'NFE', 'FIS', 'E', CustoUnitario, CustoTotal, CustoMedio, CustoMedioTotal );

  cdsPdeItemBar.Next;
 end;
end;

{ Movimentação DE Terceiro }
procedure TSrvAppEF.MovEstoq_NFE_D( NFEID, DataEntradaNFEID : String; sqlKdx, sqlProd, sqlUpd : TSQLQuery;
        cdsPde, cdsPdeItem : TClientDataSet );
var QtdSaldoAnterior, QtdSaldoAtual, VlrFrete, VlrSeguro, VlrDespAcess,
    CustoMedio, CustoMedioTotal, CustoUnitario, CustoTotal : Currency;
begin
 UltSaldoKdx( sqlKdx, cdsPde.FieldByName('EMPRESAID').AsString, cdsPdeItem.FieldByName('PRODUTOID').AsString,
              QtdSaldoAnterior, CustoMedio, CustoMedioTotal );

 // Ratear Custo com despesas de transporte
 VlrFrete        := cdsPde.FieldByName('VLRFRETE').AsFloat / cdsPdeItem.RecordCount;
 VlrSeguro       := cdsPde.FieldByName('VLRSEGURO').AsFloat / cdsPdeItem.RecordCount;
 VlrDespAcess    := cdsPde.FieldByName('VLRDESPESAACESSORIA').AsFloat / cdsPdeItem.RecordCount;

 QtdSaldoAtual   := QtdSaldoAnterior + cdsPdeItem.FieldByName('QUANTIDADE').AsFloat;
 CustoTotal      := cdsPdeItem.FieldByName('VLRPRECOTOTAL').AsCurrency +
                    VlrFrete + VlrSeguro + VlrDespAcess +
                    cdsPdeItem.FieldByName('VLRCREDPIS').AsCurrency -
                    cdsPdeItem.FieldByName('VLRCREDCOFINS').AsCurrency;
 CustoUnitario   := CustoTotal / cdsPdeItem.FieldByName('QUANTIDADE').AsFloat;
 CustoMedioTotal := CustoMedioTotal + CustoTotal;
 CustoMedio      :=  IfThen( ( QtdSaldoAtual > 0 ), ( CustoMedioTotal / QtdSaldoAtual ), 0  );

 // Efetivar a movimentação do produto por item
 sqlUpd.SQL.Clear;
 sqlUpd.SQL.Add('UPDATE EF_PRODUTO SET');
 sqlUpd.SQL.Add(' ESTOQUEDETERCEIRO = NVL( ESTOQUEDETERCEIRO, 0 ) + ' + SubstituiString( FloatToStr( cdsPdeItem.FieldByName('QUANTIDADE').AsCurrency ), ',', '.' ) + ',' );
 sqlUpd.SQL.Add(' ESTOQUEPEDENTRADA = NVL( ESTOQUEPEDENTRADA, 0 ) - ' + SubstituiString( FloatToStr( cdsPdeItem.FieldByName('QUANTIDADE').AsCurrency ), ',', '.' ) + ',');
 sqlUpd.SQL.Add(' CUSTOMEDIO        = ' + SubstituiString( FloatToStr( CustoMedio ), ',', '.' ) + ',' );
 sqlUpd.SQL.Add(' CUSTOTOTAL        = ' + SubstituiString( FloatToStr( CustoMedioTotal ), ',', '.' ) + ',' );
 sqlUpd.SQL.Add(' ESTOQUETOTAL      = NVL( ESTOQUETOTAL, 0 ) + ' + SubstituiString( FloatToStr( cdsPdeItem.FieldByName('QUANTIDADE').AsCurrency ), ',', '.' ) );
 sqlUpd.SQL.Add('WHERE ');
 sqlUpd.SQL.Add(' EMPRESAID = ' + cdsPde.FieldByName('EMPRESAID').AsString );
 sqlUpd.SQL.Add(' AND PRODUTOID = ' + cdsPdeItem.FieldByName('PRODUTOID').AsString );
 sqlUpd.ExecSQL( False );

 // Gerar registro de Kardex para entrada em fisico
 AtualizaMovKdx( sqlUpd, sqlProd, cdsPde.FieldByName('EMPRESAID').AsString,
                                  cdsPdeItem.FieldByName('PRODUTOID').AsString,
                                  cdsPde.FieldByName('OSID').AsString,
                                  cdsPde.FieldByName('DIID').AsString,
                                  cdsPdeItem.FieldByName('NATUREZAOPID').AsString,
                                  cdsPdeItem.FieldByName('QUANTIDADE').AsString,
                                  cdsPdeItem.FieldByName('ITEMID').AsString,
                                  cdsPde.FieldByName('USUARIO').AsString,
                                  NFEID, DataEntradaNFEID,
                                 'NFE', 'DET', 'E', CustoUnitario, CustoTotal, CustoMedio, CustoMedioTotal );
end;

procedure AtualRecebSaida( sqlUpd : TSQLQuery; NFEID, DataEmissaoNFEID : String; cdsPde, cdsPdeItem : TClientDataSet );
begin
 if  cdsPdeItem.FieldByName('NFSID').AsString = '' then
     exit;

 sqlUpd.Close;
 sqlUpd.SQL.Clear;
 sqlUpd.SQL.Add('UPDATE EF_NFSITEM ');
 sqlUpd.SQL.Add('   SET NFEID            = ' + NFEID  + ',');
 sqlUpd.SQL.Add('       DATAEMISSAONFEID = ' + QuotedStr( DataEmissaoNFEID ));
 sqlUpd.SQL.Add('WHERE ');
 sqlUpd.SQL.Add(' EMPRESAID         = ' + cdsPde.FieldByName('EMPRESAID').AsString );
 sqlUpd.SQL.Add(' AND NFSID         = ' + cdsPdeItem.FieldByName('NFSID').AsString );
 sqlUpd.SQL.Add(' AND DATAEMISSAOID = ' + QuotedStr( FormatDateTime( 'DD/MM/YYYY',cdsPdeItem.FieldByName('DATAEMISSAONFSID').AsDateTime ) ) );
 sqlUpd.SQL.Add(' AND PRODUTOID     = ' + cdsPdeItem.FieldByName('PRODUTOID').AsString );
 sqlUpd.ExecSQL( False );
end;

// Gerar movimentação para nota fiscal normal diferente de importada
procedure TSrvAppEF.MovNotaNormal( sqlNatOp, sqlKdx, sqlProd, sqlUpd : TSQLQuery;
  cdsPde, cdsPdeItem, cdsPdeItemBar : TClientDataSet;
  NFEID, DataEmissaoNFEID, DataEntradaNFEID, Usuario : String;
  RecebimentoEntrada, Movimenta : Boolean );
begin
 cdsPdeItem.First;
 while not cdsPdeItem.eof do
 begin
  if Movimenta then
     InserirNFEItem( NFEID, DataEmissaoNFEID, Usuario, sqlUpd, cdsPDE, cdsPDEItem );

  if RecebimentoEntrada then
     begin
      cdsPdeItem.Next;
      Continue;
     end;

  case sqlNatOp.FieldByName('MOVIMENTOESTOQUE').AsString[1] of
  'N' : MovEstoq_NFE_N( NFEID, DataEntradaNFEID, sqlKdx, sqlProd, sqlUpd, cdsPde, cdsPdeItem, False );
  'Q' : MovEstoq_NFE_N( NFEID, DataEntradaNFEID, sqlKdx, sqlProd, sqlUpd, cdsPde, cdsPdeItem, True );
  'V' : MovEstoq_NFE_V( NFEID, DataEntradaNFEID, DataEmissaoNFEID, sqlKdx, sqlProd, sqlUpd, cdsPde, cdsPdeItem );
  'E' : begin
         MovEstoq_NFE_E( NFEID, DataEntradaNFEID, DataEmissaoNFEID, Movimenta, sqlKdx, sqlProd, sqlUpd, cdsPde, cdsPdeItem, cdsPdeItemBar,  );
         AtualRecebSaida( sqlUpd, NFEID, DataEmissaoNFEID, cdsPde, cdsPdeItem  );
        end;
  'D' : MovEstoq_NFE_D( NFEID, DataEntradaNFEID, sqlKdx, sqlProd, sqlUpd, cdsPde, cdsPdeItem );

  else
   raise Exception.Create('Tipo de movimentação de estoque não localizado');
  end;

  cdsPdeItem.Next;
 end;
end;

function TSrvAppEF.IEmissaoNFE(PdeData, PdeItemData,
  PdeItemDataBar: OleVariant; const DataEmissao, DataEntrada: WideString;
  RecebimentoEntrada: WordBool; const Usuario: WideString;
  DocInterno: WordBool): WideString;
var sqlUpd : TSQLQuery;
    sqlDI, sqlEmpresa, sqlNFE, sqlProd, sqlKdx, sqlNatOp : TSQLQuery;
    cdsPde, cdsPdeItem, cdsPdeItemBar : TClientDataSet;
    EmpresaID, NFEID, DataEmissaoNFEID, DataEntradaNFEID, CreditoICMS : String;
    NSUID : Integer;

 procedure VerificarNFEmitida;
 begin
  // Verificar Nota Fiscal já emitida
  sqlNFE.SQL.Clear;
  sqlNFE.SQL.Add('SELECT');
  sqlNFE.SQL.Add('  NFEID, DATAEMISSAOID' );
  sqlNFE.SQL.Add('  FROM EF_NFE');
  sqlNFE.SQL.Add(' WHERE');
  sqlNFE.SQL.Add('  NFEID = ' + NFEID );
  sqlNFE.SQL.Add('  AND DATAEMISSAOID = TO_DATE(' + QuotedStr( DataEmissao ) + ', ''dd/mm/yyyy'' )' );
  sqlNFE.Prepared := True;
  sqlNFE.Open;

  if not sqlNFE.IsEmpty then
     raise Exception.Create('O Número da Nota Fiscal nesta data jÃƒÆ’Ã‚Â¡ foi impresso.!');
 end;

 procedure GerarMovKardexEstoque;
 var MovimentoEstoque : Boolean;
 begin
  MovimentoEstoque   := True;

  if cdsPde.FieldByName('TIPONOTA').AsString = 'I' then
     begin
      MovNotaImportada( NFEID, DataEmissaoNFEID, cdsPde.FieldByName('DIID').AsString, sqlUpd );
      RecebimentoEntrada := True;
     end;

  MovNotaNormal( sqlNatOp, sqlKDX, sqlProd, sqlUpd,
                 cdsPde, cdsPdeItem, cdsPdeItemBar,
                 NFEID, DataEmissaoNFEID, DataEntradaNFEID, Usuario, RecebimentoEntrada, MovimentoEstoque );

  // Apagar o pedido de entrada
  // Quando a Nota Fiscal for de recebimento não apagar o pedido
  if ( not RecebimentoEntrada ) or ( cdsPde.FieldByName('TIPONOTA').AsString = 'I' ) then
     ApagarPDE( cdsPde.FieldByName('EMPRESAID').AsString,
                cdsPde.FieldByName('PDEID').AsString, sqlUpd  );
 end;

 // Atualizar Pedido de entrada para recebimento futuro
 procedure AtualPdeMovRecebimento;
 begin
  sqlUpd.Close;
  sqlUpd.SQL.Clear;
  sqlUpd.SQL.Add('UPDATE EF_PDE SET');
  sqlUpd.SQL.Add(' NFEID            = ' + NFEID + ', ' );
  sqlUpd.SQL.Add(' DATAEMISSAONFEID = ' + QuotedStr( DataEmissaoNFEID) + ',');
  sqlUpd.SQL.Add(' MOVIMENTAESTOQUE =  0' );
  sqlUpd.SQL.Add('WHERE');
  sqlUpd.SQL.Add(' EMPRESAID = ' + cdsPde.FieldByName('EMPRESAID').AsString );
  sqlUpd.SQL.Add(' AND PDEID = ' + cdsPde.FieldByName('PDEID').AsString );
  sqlUpd.ExecSQL( False );
 end;

begin
 sqlUpd := TSQLQuery.Create(nil);
 sqlUpd.SQLConnection := TSQLConnection(FSQLcnn);

 sqlEmpresa := TSQLQuery.Create(nil);
 sqlEmpresa.SQLConnection := TSQLConnection(FSQLcnn);

 sqlNFE := TSQLQuery.Create(nil);
 sqlNFE.SQLConnection := TSQLConnection(FSQLcnn);

 cdsPde := TClientDataSet.Create( Self );
 cdsPde.Data := PdeData;

 cdsPdeItem := TClientDataSet.Create( Self );
 cdsPdeItem.Data := PdeItemData;

 cdsPdeItemBar := TClientDataSet.Create( Self );
 cdsPdeItemBar.Data := PdeItemDataBar;

 sqlDI := TSQLQuery.Create(nil);
 sqlDI.SQLConnection := TSQLConnection(FSQLcnn);

 sqlProd := TSQLQuery.Create(nil);
 sqlProd.SQLConnection := TSQLConnection(FSQLcnn);

 sqlKdx := TSQLQuery.Create(nil);
 sqlKdx.SQLConnection := TSQLConnection(FSQLcnn);

 sqlNatOp := TSQLQuery.Create(nil);
 sqlNatOp.SQLConnection := TSQLConnection(FSQLcnn);

 try
  try // Except
   // Inicia transação
   TSQLConnection(FSQLcnn).StartTransaction(TD);

   if ( cdsPde.FieldByName('LIBCHEFIA').Value = 0 ) or ( cdsPde.FieldByName('LIBCONTABIL').Value = 0 ) then
      raise Exception.Create('Impressão não disponivel. Liberação do pedido pendente! ');

   // Número de Nota Fiscal conforme a empresa
   case cdsPDE.FieldByName('EMPRESAID').AsInteger of
   1..5   : EmpresaID := '1';
   12..13 : EmpresaID := '12';
   15, 17 : EmpresaID := '15';
   else ;
    EmpresaID := cdsPDE.FieldByName('EMPRESAID').AsString
   end;

   NSUID := 0;

   // Analisar tipo de nota do pedido para geração do NFEID
   if cdsPde.FieldByName('TIPONOTA').Value <> 'F' then
      begin
       sqlEmpresa.SQL.Clear;
       sqlEmpresa.SQL.Add('SELECT EMPRESAID, NUMNF, NUMNF3, NUMTRANSFCONSUMO, NUMNSU FROM EF_EMPRESA');
       sqlEmpresa.SQL.Add(' WHERE');
       sqlEmpresa.SQL.Add('  EMPRESAID = ' +  EmpresaID );
       sqlEmpresa.Prepared := True;
       sqlEmpresa.Open;

       if sqlEmpresa.IsEmpty then
          raise Exception.Create('Problemas na localização da empresa!');

       case cdsPDE.FieldByName('EMPRESAID').AsInteger  of
       1..11 : begin
                if DocInterno then
                   NFEID := sqlEmpresa.FieldByName('NUMTRANSFCONSUMO').AsString
                else
                   NFEID := sqlEmpresa.FieldByName('NUMNF').AsString;
               end;

       12..13 : begin
                if DocInterno then
                   NFEID := sqlEmpresa.FieldByName('NUMTRANSFCONSUMO').AsString
                else
                   NFEID := sqlEmpresa.FieldByName('NUMNF3').AsString;
               end;

       15..17 : begin
                if DocInterno then
                   NFEID := sqlEmpresa.FieldByName('NUMTRANSFCONSUMO').AsString
                else
                   NFEID := sqlEmpresa.FieldByName('NUMNF').AsString;
               end;
       end;

       DataEmissaoNFEID := DataEmissao;
       DataEntradaNFEID := DataEntrada;

       if cdsPde.FieldByName('EMPRESAID').AsInteger in [15,17] then
          NSUID := sqlEmpresa.FieldByName('NUMNSU').AsInteger;
      end
   else
      begin
       if ( cdsPde.FieldByName('NFEID').AsInteger < 1 ) or ( cdsPde.FieldByName('DATAEMISSAONFEID').IsNull ) or
          ( cdsPde.FieldByName('DATAENTRADANFEID').IsNull ) then
          raise Exception.Create('Número da Nota Fiscal / Data Emissão de Entrada para o tipo de nota de fornecedor, não preenchida');

       NFEID            := cdsPde.FieldByName('NFEID').AsString;
       DataEmissaoNFEID := cdsPde.FieldByName('DATAEMISSAONFEID').AsString;
       DataEntradaNFEID := cdsPde.FieldByName('DATAENTRADANFEID').AsString;
      end;


   { A DI pertencente a esta nota foi emitida em :
     'Creditar ICMS na data da entrada no estoque?  }
   CreditoICMS := '0';
   if cdsPde.FieldByName('TIPONOTA').Value = 'I' then
      begin
       sqlDI.SQL.Clear;
       sqlDI.SQL.Add('SELECT DIID, DATAREGISTRO');
       sqlDI.SQL.Add('  FROM IT_DECLARACAO');
       sqlDI.SQL.Add(' WHERE');
       sqlDI.SQL.Add('  DIID = ' + QuotedStr( cdsPde.FieldByName('DIID').AsString ) );
       sqlDI.Prepared := True;
       sqlDI.Open;

       if not sqlDI.IsEmpty then
          if ( MonthOf( sqlDI.FieldByName('DATAREGISTRO').AsDateTime ) <> MonthOf( StrToDate( DataEmissaoNFEID ) ) ) and
             ( YearOf( sqlDI.FieldByName('DATAREGISTRO').AsDateTime ) <> YearOf( StrToDate( DataEmissaoNFEID ) ) ) then
             CreditoICMS := '0'
          else
             CreditoICMS := '1';
      end;
   // Controle para validar o recebimento ( genÃƒÆ’Ã‚Â©rico )
   VerificarNFEmitida;

   sqlNatOp.SQL.Clear;
   sqlNatOp.SQL.Add('SELECT');
   sqlNatOp.SQL.Add('  MOVIMENTOESTOQUE, VENDAFATANTECIPADO, CREDITOICMS, CREDITOIPI');
   sqlNatOp.SQL.Add('  FROM EF_NATUREZAOP');
   sqlNatOp.SQL.Add(' WHERE');
   sqlNatOp.SQL.Add('  NATUREZAOPID = ' + cdsPdeItem.FieldByName('NATUREZAOPID').AsString );
   sqlNatOp.Prepared := True;
   sqlNatOp.Open;

   // Gerar Nota Fiscal de Entrada
   InserirNFE( NFEID, DataEmissaoNFEID, DataEntradaNFEID, CreditoICMS, Usuario, sqlUpd, cdsPde, RecebimentoEntrada, NSUID );

   GerarMovKardexEstoque;

   if RecebimentoEntrada then
      AtualPdeMovRecebimento;

   // Atualizar Número de emissão de nota fiscal
   if cdsPde.FieldByName('TIPONOTA').Value <> 'F' then
      begin
       sqlUpd.SQL.Clear;
       if DocInterno then
          sqlUpd.SQL.Add( 'UPDATE EF_EMPRESA SET NUMTRANSFCONSUMO = NVL( NUMTRANSFCONSUMO, 0 ) + 1 ' )
       else
          case cdsPDE.FieldByName('EMPRESAID').AsInteger of
           1..11 : sqlUpd.SQL.Add( 'UPDATE EF_EMPRESA SET NUMNF  = NVL( NUMNF, 0 ) + 1 ' );
          12..13 : sqlUpd.SQL.Add( 'UPDATE EF_EMPRESA SET NUMNF3 = NVL( NUMNF3, 0 ) + 1 ' );
          15..17 : sqlUpd.SQL.Add( 'UPDATE EF_EMPRESA SET NUMNF  = NVL( NUMNF, 0 ) + 1, ' +
                                   'NUMNSU  = NVL( NUMNSU, 0 ) + 1 ' );
          end;

       sqlUpd.SQL.Add( ' WHERE' );
       sqlUpd.SQL.Add( ' EMPRESAID = ' + EmpresaID );
       sqlUpd.ExecSQL( False );
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
  Result := NFEID;

  FreeAndNil( sqlUpd );
  FreeAndNil( sqlDI );
  FreeAndNil( sqlEmpresa );
  FreeAndNil( sqlNfe );
  FreeAndNil( sqlProd );
  FreeAndNil( sqlKdx );
  FreeAndNil( sqlNatOp );
  FreeAndNil( cdsPde );
  FreeAndNil( cdsPdeItem );
  FreeAndNil( cdsPdeItemBar );
 end;
end;


procedure InserirNFS( NFSID, DataEmissao, Usuario : String; sqlUpd : TSQLQuery; cdsPDS : TClientDataSet;
 NSUID : Integer = 0 );
begin
 sqlUpd.SQL.Clear;
 sqlUpd.SQL.Add( 'INSERT INTO EF_NFS' );
 sqlUpd.SQL.Add( '  (EF_NFS.EMPRESAID,' );
 sqlUpd.SQL.Add( '   EF_NFS.NFSID,' );
 sqlUpd.SQL.Add( '   EF_NFS.DATAEMISSAOID,' );
 sqlUpd.SQL.Add( '   EF_NFS.CANCELADA,' );
 sqlUpd.SQL.Add( '   EF_NFS.EXPORTADO,' );
 sqlUpd.SQL.Add( '   EF_NFS.OSID,' );
 sqlUpd.SQL.Add( '   EF_NFS.PDSID,' );
 sqlUpd.SQL.Add( '   EF_NFS.DATAPEDIDO,' );
 sqlUpd.SQL.Add( '   EF_NFS.REQUISITANTE,' );
 sqlUpd.SQL.Add( '   EF_NFS.DESCRICAOPRENOTA,' );
 sqlUpd.SQL.Add( '   EF_NFS.LIBCHEFIA,' );
 sqlUpd.SQL.Add( '   EF_NFS.LIBCHEFIANOME,' );
 sqlUpd.SQL.Add( '   EF_NFS.LIBCHEFIADATA,' );
 sqlUpd.SQL.Add( '   EF_NFS.LIBFINANCEIRO,' );
 sqlUpd.SQL.Add( '   EF_NFS.LIBFINANCEIRONOME,' );
 sqlUpd.SQL.Add( '   EF_NFS.LIBFINANCEIRODATA,' );
 sqlUpd.SQL.Add( '   EF_NFS.LIBCONTABIL,' );
 sqlUpd.SQL.Add( '   EF_NFS.LIBCONTABILNOME,' );
 sqlUpd.SQL.Add( '   EF_NFS.LIBCONTABILDATA,' );

 if not cdsPds.FieldByName('NFEID').IsNull then
    begin
     sqlUpd.SQL.Add( '   EF_NFS.NFEID,' );
     sqlUpd.SQL.Add( '   EF_NFS.DATAEMISSAONFEID,' );
    end;

 if not cdsPds.FieldByName('TIPONOTAENTRADA').IsNull then
    sqlUpd.SQL.Add( '   EF_NFS.TIPONOTAENTRADA,' );

 if not cdsPds.FieldByName('EMPRESANFSREFID').IsNull then
    begin
     sqlUpd.SQL.Add( '   EF_NFS.EMPRESANFSREFID,' );
     sqlUpd.SQL.Add( '   EF_NFS.NFSREFID,' );
     sqlUpd.SQL.Add( '   EF_NFS.DATANFSREFID,' );
    end;

 sqlUpd.SQL.Add( '   EF_NFS.TIPONOTA,' );
 sqlUpd.SQL.Add( '   EF_NFS.ENTIDADEID,' );
 sqlUpd.SQL.Add( '   EF_NFS.NOME,' );
 sqlUpd.SQL.Add( '   EF_NFS.CEPID,' );
 sqlUpd.SQL.Add( '   EF_NFS.NUMERO,' );
 sqlUpd.SQL.Add( '   EF_NFS.COMPLEMENTO,' );
 sqlUpd.SQL.Add( '   EF_NFS.ENDERECO,' );
 sqlUpd.SQL.Add( '   EF_NFS.BAIRRO,' );
 sqlUpd.SQL.Add( '   EF_NFS.CIDADE,' );
 sqlUpd.SQL.Add( '   EF_NFS.SIGLAUFID,' );
 sqlUpd.SQL.Add( '   EF_NFS.PAIS,' );
 sqlUpd.SQL.Add( '   EF_NFS.ENDERECOENTREGA,' );
 sqlUpd.SQL.Add( '   EF_NFS.ENDERECOCOBRANCA,' );
 sqlUpd.SQL.Add( '   EF_NFS.CONTRIBUINTEICMS,' );
 sqlUpd.SQL.Add( '   EF_NFS.NATUREZAOPID,' );

 if not cdsPds.FieldByName('CONDPAGTOID').IsNull then
    sqlUpd.SQL.Add( '   EF_NFS.CONDPAGTOID,' );
 sqlUpd.SQL.Add( '   EF_NFS.DESCRICAOCONDPAGTO,' );

 if not cdsPds.FieldByName('OBSERVACAOID').IsNull then
    sqlUpd.SQL.Add( '   EF_NFS.OBSERVACAOID,' );

 sqlUpd.SQL.Add( '   EF_NFS.DESCRICAOOBSERVACAO,' );

 if not cdsPds.FieldByName('TRANSPORTADORID').IsNull then
    sqlUpd.SQL.Add( '   EF_NFS.TRANSPORTADORID,' );

 if not cdsPds.FieldByName('PLACAVEICULO').IsNull then
    sqlUpd.SQL.Add( '   EF_NFS.PLACAVEICULO,' );

 sqlUpd.SQL.Add( '   EF_NFS.MODALIDADEFRETE,' );
 sqlUpd.SQL.Add( '   EF_NFS.VLRFRETE,' );
 sqlUpd.SQL.Add( '   EF_NFS.VLRSEGURO,' );
 sqlUpd.SQL.Add( '   EF_NFS.VLRDESPESAACESSORIA,' );

 if not cdsPds.FieldByName('EMBQTDVOLUMES').IsNull then
    sqlUpd.SQL.Add( '   EF_NFS.EMBQTDVOLUMES,' );

 if not cdsPds.FieldByName('EMBNUMERO').IsNull then
    sqlUpd.SQL.Add( '   EF_NFS.EMBNUMERO,' );

 if not cdsPds.FieldByName('EMBMARCA').IsNull then
    sqlUpd.SQL.Add( '   EF_NFS.EMBMARCA,' );

 if not cdsPds.FieldByName('EMBESPECIE').IsNull then
    sqlUpd.SQL.Add( '   EF_NFS.EMBESPECIE,' );

 if not cdsPds.FieldByName('EMBPESOBRUTO').IsNull then
    sqlUpd.SQL.Add( '   EF_NFS.EMBPESOBRUTO,' );

 if not cdsPds.FieldByName('EMBPESOLIQUIDO').IsNull then
    sqlUpd.SQL.Add( '   EF_NFS.EMBPESOLIQUIDO,' );

 sqlUpd.SQL.Add( '   EF_NFS.VLRTOTALSERVICO,' );
 sqlUpd.SQL.Add( '   EF_NFS.VLRTOTALISS,' );
 sqlUpd.SQL.Add( '   EF_NFS.VLRTOTALCOFINS,' );
 sqlUpd.SQL.Add( '   EF_NFS.VLRTOTALPIS,' );
 sqlUpd.SQL.Add( '   EF_NFS.VLRTOTALBASEICMS,' );
 sqlUpd.SQL.Add( '   EF_NFS.VLRTOTALICMS,' );
 sqlUpd.SQL.Add( '   EF_NFS.VLRTOTALISENTASICMS,' );
 sqlUpd.SQL.Add( '   EF_NFS.VLRTOTALOUTRASICMS,' );
 sqlUpd.SQL.Add( '   EF_NFS.VLRTOTALBASEIPI,' );
 sqlUpd.SQL.Add( '   EF_NFS.VLRTOTALIPI,' );
 sqlUpd.SQL.Add( '   EF_NFS.VLRTOTALISENTASIPI,' );
 sqlUpd.SQL.Add( '   EF_NFS.VLRTOTALOUTRASIPI,' );
 sqlUpd.SQL.Add( '   EF_NFS.VLRTOTALPRODUTO,' );
 sqlUpd.SQL.Add( '   EF_NFS.VLRTOTALNOTA,' );
 sqlUpd.SQL.Add( '   EF_NFS.DATAIMPRESSAO,' );

 if NSUID > 0 then
    sqlUpd.SQL.Add( '   EF_NFS.NSUID,' );

 sqlUpd.SQL.Add( '   VLRTOTALRETCOFINS, ' );
 sqlUpd.SQL.Add( '   VLRTOTALRETPIS, ' );
 sqlUpd.SQL.Add( '   VLRTOTALRETCSLL, ' );
 sqlUpd.SQL.Add( '   VLRTOTALRETIRPJ, ' );
 sqlUpd.SQL.Add( '   VLRTOTALRETIRPF, ' );
 sqlUpd.SQL.Add( '   EF_NFS.USUARIO)' );
 sqlUpd.SQL.Add( '   VALUES ( ' + cdsPds.FieldByName('EMPRESAID').AsString + ', ' );
 sqlUpd.SQL.Add(  NFSID + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( DataEmissao ) + ', ' );
 sqlUpd.SQL.Add(  '0' + ', ' );
 sqlUpd.SQL.Add(  '0' + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPds.FieldByName('OSID').AsString ) + ', ' );
 sqlUpd.SQL.Add(  cdsPds.FieldByName('PDSID').AsString + ', ' );
 sqlUpd.SQL.Add(  'TO_DATE(' + QuotedStr( cdsPds.FieldByName('DATAPEDIDO').AsString ) + ', ''dd/mm/yyyy HH24:MI:SS'' )' + ' ,' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPds.FieldByName('USUARIO').AsString ) + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPds.FieldByName('DESCRICAOPRENOTA').AsString ) + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPds.FieldByName('LIBCHEFIA').AsString ) + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPds.FieldByName('LIBCHEFIANOME').AsString ) + ', ' );
 sqlUpd.SQL.Add(  'TO_DATE(' + QuotedStr( cdsPds.FieldByName('LIBCHEFIADATA').AsString ) + ', ''dd/mm/yyyy HH24:MI:SS'' )' + ' ,' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPds.FieldByName('LIBFINANCEIRO').AsString ) + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPds.FieldByName('LIBFINANCEIRONOME').AsString ) + ', ' );
 sqlUpd.SQL.Add(  'TO_DATE(' + QuotedStr( cdsPds.FieldByName('LIBFINANCEIRODATA').AsString ) + ', ''dd/mm/yyyy HH24:MI:SS'' )' + ' ,' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPds.FieldByName('LIBCONTABIL').AsString ) + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPds.FieldByName('LIBCONTABILNOME').AsString ) + ', ' );
 sqlUpd.SQL.Add(  'TO_DATE(' + QuotedStr( cdsPds.FieldByName('LIBCONTABILDATA').AsString ) + ', ''dd/mm/yyyy HH24:MI:SS'' )' + ' ,' );

 if not cdsPds.FieldByName('NFEID').IsNull then
    begin
     sqlUpd.SQL.Add(  cdsPds.FieldByName('NFEID').AsString + ', ' );
     sqlUpd.SQL.Add(  QuotedStr( FormatDateTime( 'DD/MM/YYYY',cdsPds.FieldByName('DATAEMISSAONFEID').AsDateTime ) ) + ', ' );
     end;

 if not cdsPds.FieldByName('TIPONOTAENTRADA').IsNull then
    sqlUpd.SQL.Add(  QuotedStr( cdsPds.FieldByName('TIPONOTAENTRADA').AsString ) + ', ' );

 if not cdsPds.FieldByName('EMPRESANFSREFID').IsNull then
    begin
     sqlUpd.SQL.Add(  cdsPds.FieldByName('EMPRESANFSREFID').AsString + ', ' );
     sqlUpd.SQL.Add(  cdsPds.FieldByName('NFSREFID').AsString + ', ' );
     sqlUpd.SQL.Add(  QuotedStr( FormatDateTime( 'DD/MM/YYYY',cdsPds.FieldByName('DATANFSREFID').AsDateTime ) ) + ', ' );
    end;

 sqlUpd.SQL.Add(  QuotedStr( cdsPds.FieldByName('TIPONOTA').AsString ) + ', ' );
 sqlUpd.SQL.Add(  cdsPds.FieldByName('ENTIDADEID').AsString + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPds.FieldByName('NOME').AsString ) + ', ' );
 sqlUpd.SQL.Add(  cdsPds.FieldByName('CEPID').AsString + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPds.FieldByName('NUMERO').AsString ) + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPds.FieldByName('COMPLEMENTO').AsString ) + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPds.FieldByName('ENDERECO').AsString ) + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPds.FieldByName('BAIRRO').AsString ) + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPds.FieldByName('CIDADE').AsString ) + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPds.FieldByName('SIGLAUFID').AsString ) + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPds.FieldByName('PAIS').AsString ) + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPds.FieldByName('ENDERECOENTREGA').AsString ) + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPds.FieldByName('ENDERECOCOBRANCA').AsString ) + ', ' );
 sqlUpd.SQL.Add(  cdsPds.FieldByName('CONTRIBUINTEICMS').AsString + ', ' );
 sqlUpd.SQL.Add(  cdsPds.FieldByName('NATUREZAOPID').AsString + ', ' );

 if not cdsPds.FieldByName('CONDPAGTOID').IsNull then
    sqlUpd.SQL.Add(  cdsPds.FieldByName('CONDPAGTOID').AsString + ', ' );

 sqlUpd.SQL.Add(  QuotedStr( cdsPds.FieldByName('DESCRICAOCONDPAGTO').AsString ) + ', ' );

 if not cdsPds.FieldByName('OBSERVACAOID').IsNull then
    sqlUpd.SQL.Add(  cdsPds.FieldByName('OBSERVACAOID').AsString + ', ' );

 sqlUpd.SQL.Add(  QuotedStr( cdsPds.FieldByName('DESCRICAOOBSERVACAO').AsString ) + ', ' );

 if not cdsPds.FieldByName('TRANSPORTADORID').IsNull then
    sqlUpd.SQL.Add(  cdsPds.FieldByName('TRANSPORTADORID').AsString + ', ' );

 if not cdsPds.FieldByName('PLACAVEICULO').IsNull then
    sqlUpd.SQL.Add(  QuotedStr( cdsPds.FieldByName('PLACAVEICULO').AsString ) + ', ' );

 sqlUpd.SQL.Add(  QuotedStr( cdsPds.FieldByName('MODALIDADEFRETE').AsString ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPds.FieldByName('VLRFRETE').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPds.FieldByName('VLRSEGURO').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPds.FieldByName('VLRDESPESAACESSORIA').AsString,  ',', '.' ) + ', ' );

 if not cdsPds.FieldByName('EMBQTDVOLUMES').IsNull then
    sqlUpd.SQL.Add(  SubstituiString( cdsPds.FieldByName('EMBQTDVOLUMES').AsString,  ',', '.' ) + ', ' );

 if not cdsPds.FieldByName('EMBNUMERO').IsNull then
    sqlUpd.SQL.Add(  SubstituiString( cdsPds.FieldByName('EMBNUMERO').AsString,  ',', '.' ) + ', ' );

 if not cdsPds.FieldByName('EMBMARCA').IsNull then
    sqlUpd.SQL.Add(  QuotedStr( cdsPds.FieldByName('EMBMARCA').AsString ) + ', ' );

 if not cdsPds.FieldByName('EMBESPECIE').IsNull then
    sqlUpd.SQL.Add(  QuotedStr( cdsPds.FieldByName('EMBESPECIE').AsString ) + ', ' );

 if not cdsPds.FieldByName('EMBPESOBRUTO').IsNull then
    sqlUpd.SQL.Add(  SubstituiString( cdsPds.FieldByName('EMBPESOBRUTO').AsString,  ',', '.' ) + ', ' );

 if not cdsPds.FieldByName('EMBPESOLIQUIDO').IsNull then
    sqlUpd.SQL.Add(  SubstituiString( cdsPds.FieldByName('EMBPESOLIQUIDO').AsString,  ',', '.' ) + ', ' );

 sqlUpd.SQL.Add(  SubstituiString( cdsPds.FieldByName('VLRTOTALSERVICO').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPds.FieldByName('VLRTOTALISS').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPds.FieldByName('VLRTOTALCOFINS').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPds.FieldByName('VLRTOTALPIS').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPds.FieldByName('VLRTOTALBASEICMS').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPds.FieldByName('VLRTOTALICMS').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPds.FieldByName('VLRTOTALISENTASICMS').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPds.FieldByName('VLRTOTALOUTRASICMS').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPds.FieldByName('VLRTOTALBASEIPI').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPds.FieldByName('VLRTOTALIPI').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPds.FieldByName('VLRTOTALISENTASIPI').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPds.FieldByName('VLRTOTALOUTRASIPI').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPds.FieldByName('VLRTOTALPRODUTO').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPds.FieldByName('VLRTOTALNOTA').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  'TO_DATE(' + QuotedStr( FormatDateTime( 'DD/MM/YYYYY hh:nn:ss', Date ) ) + ', ''dd/mm/yyyy HH24:MI:SS'' )' + ' ,' );

 if NSUID > 0 then
    sqlUpd.SQL.Add(  IntToStr( NSUID ) + ', ' );

 sqlUpd.SQL.Add(  SubstituiString( cdsPds.FieldByName('VLRTOTALRETCOFINS').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPds.FieldByName('VLRTOTALRETPIS').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPds.FieldByName('VLRTOTALRETCSLL').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPds.FieldByName('VLRTOTALRETIRPJ').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPds.FieldByName('VLRTOTALRETIRPF').AsString,  ',', '.' ) + ', ' );

 sqlUpd.SQL.Add(  QuotedStr( Usuario ) + ' )' );

 sqlUpd.ExecSQL( False );
end;

procedure InserirNFSItem( NFSID, DataEmissao, Usuario : String; sqlUpd : TSQLQuery; cdsPDSItem : TClientDataSet );
begin
 sqlUpd.SQL.Clear;
 sqlUpd.SQL.Add( 'INSERT INTO EF_NFSITEM (' );
 sqlUpd.SQL.Add( '  EMPRESAID,' );
 sqlUpd.SQL.Add( '  NFSID,' );
 sqlUpd.SQL.Add( '  DATAEMISSAOID,' );
 sqlUpd.SQL.Add( '  ITEMID,' );
 sqlUpd.SQL.Add( '  NATUREZAOPID,' );

if not cdsPdsItem.FieldByName('OBSERVACAOID').IsNull then
   begin
    sqlUpd.SQL.Add( '  OBSERVACAOID,' );
    sqlUpd.SQL.Add( '  DESCRICAOOBSERVACAO,' );
   end;

 sqlUpd.SQL.Add( '  PRODUTOID,' );
 sqlUpd.SQL.Add( '  DESCRICAOPRODUTO,' );
 sqlUpd.SQL.Add( '  QUANTIDADE,' );
 sqlUpd.SQL.Add( '  VLRPRECOUNITARIO,' );
 sqlUpd.SQL.Add( '  VLRPRECOTOTAL,' );
 sqlUpd.SQL.Add( '  PORCDESCONTO,' );
 sqlUpd.SQL.Add( '  VLRDESCONTO,' );
 sqlUpd.SQL.Add( '  VLRPRECOUNITDESC,' );
 sqlUpd.SQL.Add( '  VLRPRECOTOTALDESC,' );

 if not cdsPdsItem.FieldByName('NFEID').IsNull then
    begin
     sqlUpd.SQL.Add( '  NFEID,' );
     sqlUpd.SQL.Add( '  DATAEMISSAONFEID,' );
    end;

 sqlUpd.SQL.Add( '  EMPENHO,' );
 sqlUpd.SQL.Add( '  QUANTIDADEEMPENHO,' );
 sqlUpd.SQL.Add( '  RETORNO,' );
 sqlUpd.SQL.Add( '  QTDRETORNA,' );
 sqlUpd.SQL.Add( '  VLRBASEICMS,' );
 sqlUpd.SQL.Add( '  ALIQUOTAICMS,' );
 sqlUpd.SQL.Add( '  VLRICMS,' );
 sqlUpd.SQL.Add( '  VLRISENTASICMS,' );
 sqlUpd.SQL.Add( '  VLROUTRASICMS,' );
 sqlUpd.SQL.Add( '  PORCREDUCAOICMS,' );
 sqlUpd.SQL.Add( '  SITTRIBUTARIAESTADUAL,' );
 sqlUpd.SQL.Add( '  ALIQUOTACOFINS,' );
 sqlUpd.SQL.Add( '  VLRCOFINS,' );
 sqlUpd.SQL.Add( '  ALIQUOTAPIS,' );
 sqlUpd.SQL.Add( '  VLRPIS,' );
 sqlUpd.SQL.Add( '  VLRBASEIPI,' );
 sqlUpd.SQL.Add( '  ALIQUOTAIPI,' );
 sqlUpd.SQL.Add( '  VLRIPI,' );
 sqlUpd.SQL.Add( '  VLRISENTASIPI,' );
 sqlUpd.SQL.Add( '  VLROUTRASIPI,' );
 sqlUpd.SQL.Add( '  TIPOIPI,' );
 sqlUpd.SQL.Add( '  SITTRIBUTARIAFEDERAL,' );
 sqlUpd.SQL.Add( '  ARTIGO,' );
 sqlUpd.SQL.Add( '  DATAINICIALIPI,' );
 sqlUpd.SQL.Add( '  DATAFINALIPI,' );
 sqlUpd.SQL.Add( '  PRODINCENTIVADO,' );
 sqlUpd.SQL.Add( '  ESTOQUEUTILIZADO,' );
 sqlUpd.SQL.Add( '  USUARIO )' );
 sqlUpd.SQL.Add( '   VALUES ( ' + cdsPdsItem.FieldByName('EMPRESAID').AsString + ', ' );
 sqlUpd.SQL.Add(  NFSID + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( DataEmissao ) + ', ' );
 sqlUpd.SQL.Add(  cdsPdsItem.FieldByName('ITEMID').AsString + ', ' );
 sqlUpd.SQL.Add(  cdsPdsItem.FieldByName('NATUREZAOPID').AsString + ', ' );

 if not cdsPdsItem.FieldByName('OBSERVACAOID').IsNull then
    begin
     sqlUpd.SQL.Add(  cdsPdsItem.FieldByName('OBSERVACAOID').AsString + ', ' );
     sqlUpd.SQL.Add(  QuotedStr( cdsPdsItem.FieldByName('DESCRICAOOBSERVACAO').AsString ) + ', ' );
    end;

 sqlUpd.SQL.Add(  cdsPdsItem.FieldByName('PRODUTOID').AsString + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPdsItem.FieldByName('DESCRICAOPRODUTO').AsString ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPdsItem.FieldByName('QUANTIDADE').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPdsItem.FieldByName('VLRPRECOUNITARIO').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPdsItem.FieldByName('VLRPRECOTOTAL').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPdsItem.FieldByName('PORCDESCONTO').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPdsItem.FieldByName('VLRDESCONTO').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPdsItem.FieldByName('VLRPRECOUNITDESC').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPdsItem.FieldByName('VLRPRECOTOTALDESC').AsString,  ',', '.' ) + ', ' );

 if not cdsPdsItem.FieldByName('NFEID').IsNull then
    begin
     sqlUpd.SQL.Add(  cdsPdsItem.FieldByName('NFEID').AsString + ', ' );
     sqlUpd.SQL.Add(  QuotedStr( FormatDateTime( 'DD/MM/YYYY',cdsPdsItem.FieldByName('DATAEMISSAONFEID').AsDateTime ) ) + ', ' );
    end;

 sqlUpd.SQL.Add(  cdsPdsItem.FieldByName('EMPENHO').AsString + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPdsItem.FieldByName('QUANTIDADEEMPENHO').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPdsItem.FieldByName('RETORNO').AsString ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPdsItem.FieldByName('QTDRETORNA').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPdsItem.FieldByName('VLRBASEICMS').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPdsItem.FieldByName('ALIQUOTAICMS').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPdsItem.FieldByName('VLRICMS').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPdsItem.FieldByName('VLRISENTASICMS').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPdsItem.FieldByName('VLROUTRASICMS').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPdsItem.FieldByName('PORCREDUCAOICMS').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPdsItem.FieldByName('SITTRIBUTARIAESTADUAL').AsString ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPdsItem.FieldByName('ALIQUOTACOFINS').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPdsItem.FieldByName('VLRCOFINS').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPdsItem.FieldByName('ALIQUOTAPIS').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPdsItem.FieldByName('VLRPIS').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPdsItem.FieldByName('VLRBASEIPI').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPdsItem.FieldByName('ALIQUOTAIPI').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPdsItem.FieldByName('VLRIPI').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPdsItem.FieldByName('VLRISENTASIPI').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  SubstituiString( cdsPdsItem.FieldByName('VLROUTRASIPI').AsString,  ',', '.' ) + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPdsItem.FieldByName('TIPOIPI').AsString ) + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPdsItem.FieldByName('SITTRIBUTARIAFEDERAL').AsString ) + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPdsItem.FieldByName('ARTIGO').AsString ) + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPdsItem.FieldByName('DATAINICIALIPI').AsString ) + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPdsItem.FieldByName('DATAFINALIPI').AsString ) + ', ' );
 sqlUpd.SQL.Add(  cdsPdsItem.FieldByName('PRODINCENTIVADO').AsString + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( cdsPdsItem.FieldByName('ESTOQUEUTILIZADO').AsString ) + ', ' );
 sqlUpd.SQL.Add(  QuotedStr( Usuario ) + ' )' );
 sqlUpd.ExecSQL( False );
end;

procedure InserirNFSParcela( NFSID, PDSID, DataEmissao, EmpresaID : String; sqlUpd : TSQLQuery );
begin
 sqlUpd.SQL.Clear;
 sqlUpd.SQL.Add('INSERT INTO EF_NFSPARCELA');
 sqlUpd.SQL.Add('  (EMPRESAID,');
 sqlUpd.SQL.Add('   NFSID,');
 sqlUpd.SQL.Add('   DATAEMISSAOID,');
 sqlUpd.SQL.Add('   PARCELAID,');
 sqlUpd.SQL.Add('   DATAVENCIMENTO,');
 sqlUpd.SQL.Add('   VLRPARCELA,');
 sqlUpd.SQL.Add('   DUPLICATAID,');
 sqlUpd.SQL.Add('   EXPORTADO,');
 sqlUpd.SQL.Add('   USUARIO)');
 sqlUpd.SQL.Add('  SELECT EMPRESAID,');
 sqlUpd.SQL.Add('         ' + NFSID + ',');
 sqlUpd.SQL.Add(   QuotedStr( DataEmissao ) + ', ' );
 sqlUpd.SQL.Add('         PARCELAID,');
 sqlUpd.SQL.Add('         DATAVENCIMENTO,');
 sqlUpd.SQL.Add('         VLRPARCELA,');
 sqlUpd.SQL.Add('         ' + NFSID + ',');
 sqlUpd.SQL.Add('         0,');
 sqlUpd.SQL.Add('         USUARIO');
 sqlUpd.SQL.Add('    FROM EF_PDSPARCELA');
 sqlUpd.SQL.Add('    WHERE ');
 sqlUpd.SQL.Add('    EMPRESAID = ' + EmpresaID );
 sqlUpd.SQL.Add('    AND PDSID = ' + PDSID );
 sqlUpd.ExecSQL( False );
end;

procedure InserirNFSServico( NFSID, PDSID, DataEmissao, EmpresaID : String; sqlUpd : TSQLQuery );
begin
 sqlUpd.SQL.Clear;
 sqlUpd.SQL.Add('INSERT INTO EF_NFSSERVICO');
 sqlUpd.SQL.Add('  (EMPRESAID,');
 sqlUpd.SQL.Add('   NFSID,');
 sqlUpd.SQL.Add('   DATAEMISSAOID,');
 sqlUpd.SQL.Add('   ITEMID,');
 sqlUpd.SQL.Add('   SERVICOID,');
 sqlUpd.SQL.Add('   DESCRICAOSERVICO,');
 sqlUpd.SQL.Add('   VLRISS,');
 sqlUpd.SQL.Add('   VLRSERVICO,');
 sqlUpd.SQL.Add('   ALIQUOTACOFINS,');
 sqlUpd.SQL.Add('   VLRCOFINS,');
 sqlUpd.SQL.Add('   ALIQUOTAPIS,');
 sqlUpd.SQL.Add('   VLRPIS,');
 sqlUpd.SQL.Add('   VLRRETCOFINS,');
 sqlUpd.SQL.Add('   VLRRETPIS,');
 sqlUpd.SQL.Add('   VLRRETCSLL,');
 sqlUpd.SQL.Add('   VLRRETIRPJ,');
 sqlUpd.SQL.Add('   VLRRETIRPF,');
 sqlUpd.SQL.Add('   USUARIO)');
 sqlUpd.SQL.Add('  SELECT EMPRESAID,');
 sqlUpd.SQL.Add('         ' + NFSID + ',');
 sqlUpd.SQL.Add(   QuotedStr( DataEmissao ) + ', ' );
 sqlUpd.SQL.Add('         ITEMID,');
 sqlUpd.SQL.Add('         SERVICOID,');
 sqlUpd.SQL.Add('         DESCRICAOSERVICO,');
 sqlUpd.SQL.Add('         VLRISS,');
 sqlUpd.SQL.Add('         VLRSERVICO,');
 sqlUpd.SQL.Add('         ALIQUOTACOFINS,');
 sqlUpd.SQL.Add('         VLRCOFINS,');
 sqlUpd.SQL.Add('         ALIQUOTAPIS,');
 sqlUpd.SQL.Add('         VLRPIS,');
 sqlUpd.SQL.Add('         VLRRETCOFINS,');
 sqlUpd.SQL.Add('         VLRRETPIS,');
 sqlUpd.SQL.Add('         VLRRETCSLL,');
 sqlUpd.SQL.Add('         VLRRETIRPJ,');
 sqlUpd.SQL.Add('         VLRRETIRPF,');
 sqlUpd.SQL.Add('         USUARIO');
 sqlUpd.SQL.Add('    FROM GSI.EF_PDSSERVICO');
 sqlUpd.SQL.Add('    WHERE ');
 sqlUpd.SQL.Add('    EMPRESAID = ' + EmpresaID );
 sqlUpd.SQL.Add('    AND PDSID = ' + PDSID );
 sqlUpd.ExecSQL( False );
end;

procedure ExclusaoMovPDS( PDSID, EmpresaID : String; sqlUpd : TSQLQuery );
begin
 sqlUpd.SQL.Clear;
 sqlUpd.SQL.Add(' DELETE FROM EF_PDS' );
 sqlUpd.SQL.Add(' WHERE ');
 sqlUpd.SQL.Add('    EMPRESAID = ' + EmpresaID );
 sqlUpd.SQL.Add('    AND PDSID = ' + PDSID );
 sqlUpd.ExecSQL( False );
end;

function TSrvAppEF.IEmissaoNFS(PdsData, PdsItemData: OleVariant;
  const DataEmissao, Usuario: WideString;
  DocInterno: WordBool): WideString;
var cdsPDS, cdsPDSItem : TClientDataSet;
    sqlUpd, sqlUpdProd, sqlUpdPDSParcela, sqlUpdKdx : TSQLQuery;
    sqlCPagto, sqlEmp, sqlNFS, sqlNatOp, sqlProd, sqlDupl, sqlKdx : TSQLQuery;
    EmpresaID, NFSID, Nota : String;
    NSUID : Integer;
    NatServico : Boolean;

 procedure AtualPDSParcelaVcto;
 begin
  sqlUpdPDSParcela.Close;
  sqlUpdPDSParcela.SQL.Clear;
  sqlUpdPDSParcela.SQL.Add('UPDATE EF_PDSPARCELA SET');
  sqlUpdPDSParcela.SQL.Add(' DATAVENCIMENTO   = ' + QuotedStr( DataEmissao));
  sqlUpdPDSParcela.SQL.Add('WHERE');
  sqlUpdPDSParcela.SQL.Add(' EMPRESAID = ' + cdsPds.FieldByName('EMPRESAID').AsString );
  sqlUpdPDSParcela.SQL.Add(' AND PDSID     = ' + cdsPds.FieldByName('PDSID').AsString );
  sqlUpdPDSParcela.SQL.Add(' AND PARCELAID = 1 ');
  sqlUpdPDSParcela.ExecSQL( False );
 end;

  { Movimentação Normal }
 procedure MovEstoq_NFS_N;
 var QtdSaldoAtual, QtdSaldoAnterior,
     CustoUnitario, CustoTotal, CustoMedio, CustoMedioTotal : Currency;
 begin
  if DocInterno then
     Nota := sqlEmp.FieldByName('NUMTRANSFCONSUMO').AsString
  else
     Nota := sqlEmp.FieldByName('NUMNF').AsString;

  UltSaldoKdx( sqlKdx, cdsPds.FieldByName('EMPRESAID').AsString, cdsPdsItem.FieldByName('PRODUTOID').AsString,
               QtdSaldoAnterior, CustoMedio, CustoMedioTotal );

  QtdSaldoAtual   := QtdSaldoAnterior - cdsPdsItem.FieldByName('QUANTIDADE').AsFloat;

  if QtdSaldoAtual < 0 then
     QtdSaldoAtual := 0;

  CustoUnitario   := CustoMedio;
  CustoTotal      := CustoMedio * cdsPdsItem.FieldByName('QUANTIDADE').AsFloat;

  CustoMedioTotal := CustoMedio * QtdSaldoAtual;

  // Analisar natureza operacao

  if sqlNatOp.FieldByName('VENDAFATANTECIPADO').AsInteger = 0 then
     begin
      // Preparar query genÃƒÆ’Ã‚Â©rica para atualizar a movimentação do produto
      sqlUpdProd.SQL.Clear;
      sqlUpdProd.SQL.Add('UPDATE EF_PRODUTO SET');
      sqlUpdProd.SQL.Add(' ESTOQUEPEDSAIDA = NVL( ESTOQUEPEDSAIDA, 0 ) - ' + SubstituiString( FloatToStr( cdsPdsItem.FieldByName('QUANTIDADE').AsCurrency ), ',', '.' ) + ',');
      sqlUpdProd.SQL.Add(' ESTOQUETOTAL    = NVL( ESTOQUETOTAL, 0 ) - ' + SubstituiString( FloatToStr( cdsPdsItem.FieldByName('QUANTIDADE').AsCurrency ), ',', '.' ) + ',');
      sqlUpdProd.SQL.Add(' CUSTOMEDIO      = ' + SubstituiString( FloatToStr( CustoMedio ), ',', '.' ) + ',' );
      sqlUpdProd.SQL.Add(' CUSTOTOTAL      = ' + SubstituiString( FloatToStr( CustoMedioTotal ), ',', '.' ) );
      sqlUpdProd.SQL.Add('WHERE ');
      sqlUpdProd.SQL.Add(' EMPRESAID = ' + cdsPds.FieldByName('EMPRESAID').AsString );
      sqlUpdProd.SQL.Add(' AND PRODUTOID = ' + cdsPdsItem.FieldByName('PRODUTOID').AsString );
      sqlUpdProd.ExecSQL( False );
     end;

  // Gerar registro de Kardex para entrada em fÃƒÆ’Ã‚Â­sico
  AtualizaMovKdx( sqlUpdKdx, sqlProd, cdsPds.FieldByName('EMPRESAID').AsString,
                  cdsPdsItem.FieldByName('PRODUTOID').AsString,
                  cdsPds.FieldByName('OSID').AsString,
                  '',
                  cdsPdsItem.FieldByName('NATUREZAOPID').AsString,
                  cdsPdsItem.FieldByName('QUANTIDADE').AsString,
                  cdsPdsItem.FieldByName('ITEMID').AsString,
                  cdsPds.FieldByName('USUARIO').AsString,
                  Nota, DataEmissao, 'NFS', 'FIS', 'S',
                  CustoUnitario, CustoTotal, CustoMedio, CustoMedioTotal );
 end;

 { Devolução de Venda }
 procedure MovEstoq_NFS_V;
 var QtdSaldoAtual, QtdSaldoAnterior,
     CustoUnitario, CustoTotal, CustoMedio, CustoMedioTotal : Currency;
 begin
  UltSaldoKdx( sqlKdx, cdsPds.FieldByName('EMPRESAID').AsString, cdsPdsItem.FieldByName('PRODUTOID').AsString,
               QtdSaldoAnterior, CustoMedio, CustoMedioTotal );

  QtdSaldoAtual   := QtdSaldoAnterior - cdsPdsItem.FieldByName('QUANTIDADE').AsFloat;

  if QtdSaldoAtual < 0 then
     QtdSaldoAtual := 0;

  CustoTotal      := CustoMedio * QtdSaldoAtual;
  CustoUnitario   := CustoTotal / cdsPdsItem.FieldByName('QUANTIDADE').AsFloat;

  CustoMedioTotal := CustoMedioTotal - CustoTotal;

  // Preparar query genÃƒÆ’Ã‚Â©rica para atualizar a movimentação do produto
  sqlUpdProd.SQL.Clear;
  sqlUpdProd.SQL.Add('UPDATE EF_PRODUTO SET');
  sqlUpdProd.SQL.Add(' ESTOQUEPEDSAIDA = NVL( ESTOQUEPEDSAIDA, 0 ) - ' + SubstituiString( FloatToStr( cdsPdsItem.FieldByName('QUANTIDADE').AsCurrency ), ',', '.' ) + ',');
  sqlUpdProd.SQL.Add(' ESTOQUETOTAL    = NVL( ESTOQUETOTAL, 0 ) - ' + SubstituiString( FloatToStr( cdsPdsItem.FieldByName('QUANTIDADE').AsCurrency ), ',', '.' ) + ',');
  sqlUpdProd.SQL.Add(' CUSTOMEDIO      = ' + SubstituiString( FloatToStr( CustoMedio ), ',', '.' ) + ',' );
  sqlUpdProd.SQL.Add(' CUSTOTOTAL      = ' + SubstituiString( FloatToStr( CustoMedioTotal ), ',', '.' ) );
  sqlUpdProd.SQL.Add('WHERE ');
  sqlUpdProd.SQL.Add(' EMPRESAID = ' + cdsPds.FieldByName('EMPRESAID').AsString );
  sqlUpdProd.SQL.Add(' AND PRODUTOID = ' + cdsPdsItem.FieldByName('PRODUTOID').AsString );
  sqlUpdProd.ExecSQL( False );

  // Gerar registro de Kardex para entrada em fÃƒÆ’Ã‚Â­sico
  AtualizaMovKdx( sqlUpdKdx, sqlProd, cdsPds.FieldByName('EMPRESAID').AsString,
                  cdsPdsItem.FieldByName('PRODUTOID').AsString,
                  cdsPds.FieldByName('OSID').AsString,
                  '',
                  cdsPdsItem.FieldByName('NATUREZAOPID').AsString,
                  cdsPdsItem.FieldByName('QUANTIDADE').AsString,
                  cdsPdsItem.FieldByName('ITEMID').AsString,
                  cdsPds.FieldByName('USUARIO').AsString,
                  sqlEmp.FieldByName('NUMNF').AsString, DataEmissao, 'NFS', 'FIS', 'S',
                  CustoUnitario, CustoTotal, CustoMedio, CustoMedioTotal );
 end;

 { Movimentação em Terceiro }
 procedure MovEstoq_NFS_E;
 var QtdSaldoAnterior,
     CustoUnitario, CustoTotal, CustoMedio, CustoMedioTotal : Currency;
 begin
  UltSaldoKdx( sqlKdx, cdsPds.FieldByName('EMPRESAID').AsString, cdsPdsItem.FieldByName('PRODUTOID').AsString,
               QtdSaldoAnterior, CustoMedio, CustoMedioTotal );

  CustoUnitario   := CustoMedio;
  CustoTotal      := CustoMedio * cdsPdsItem.FieldByName('QUANTIDADE').AsFloat;

  // Preparar query genÃƒÆ’Ã‚Â©rica para atualizar a movimentação do produto
  sqlUpdProd.SQL.Clear;
  sqlUpdProd.SQL.Add('UPDATE EF_PRODUTO SET');
  sqlUpdProd.SQL.Add(' ESTOQUEPEDSAIDA   = NVL( ESTOQUEPEDSAIDA, 0 ) - ' + SubstituiString( FloatToStr( cdsPdsItem.FieldByName('QUANTIDADE').AsCurrency ), ',', '.' ) + ',');
  sqlUpdProd.SQL.Add(' ESTOQUEEMTERCEIRO = NVL( ESTOQUEEMTERCEIRO, 0 ) + ' + SubstituiString( FloatToStr( cdsPdsItem.FieldByName('QUANTIDADE').AsCurrency ), ',', '.' ) + ',');
  sqlUpdProd.SQL.Add(' CUSTOMEDIO        = ' + SubstituiString( FloatToStr( CustoMedio ), ',', '.' ) + ',' );
  sqlUpdProd.SQL.Add(' CUSTOTOTAL        = ' + SubstituiString( FloatToStr( CustoMedioTotal ), ',', '.' ) );
  sqlUpdProd.SQL.Add('WHERE ');
  sqlUpdProd.SQL.Add(' EMPRESAID = ' + cdsPds.FieldByName('EMPRESAID').AsString );
  sqlUpdProd.SQL.Add(' AND PRODUTOID = ' + cdsPdsItem.FieldByName('PRODUTOID').AsString );
  sqlUpdProd.ExecSQL( False );

  // Gerar registro de Kardex para entrada em fÃƒÆ’Ã‚Â­sico
  AtualizaMovKdx( sqlUpdKdx, sqlProd, cdsPds.FieldByName('EMPRESAID').AsString,
                  cdsPdsItem.FieldByName('PRODUTOID').AsString,
                  cdsPds.FieldByName('OSID').AsString,
                  '',
                  cdsPdsItem.FieldByName('NATUREZAOPID').AsString,
                  cdsPdsItem.FieldByName('QUANTIDADE').AsString,
                  cdsPdsItem.FieldByName('ITEMID').AsString,                  
                  cdsPds.FieldByName('USUARIO').AsString,
                  sqlEmp.FieldByName('NUMNF').AsString, DataEmissao, 'NFS', 'FIS', 'S',
                  CustoUnitario, CustoTotal, CustoMedio, CustoMedioTotal );

  // Gerar registro de Kardex para entrada em fÃƒÆ’Ã‚Â­sico
  AtualizaMovKdx( sqlUpdKdx, sqlProd, cdsPds.FieldByName('EMPRESAID').AsString,
                  cdsPdsItem.FieldByName('PRODUTOID').AsString,
                  cdsPds.FieldByName('OSID').AsString,
                  '',
                  cdsPdsItem.FieldByName('NATUREZAOPID').AsString,
                  cdsPdsItem.FieldByName('QUANTIDADE').AsString,
                  cdsPdsItem.FieldByName('ITEMID').AsString,
                  cdsPds.FieldByName('USUARIO').AsString,
                  sqlEmp.FieldByName('NUMNF').AsString, DataEmissao, 'NFS', 'EMT', 'E',
                  CustoUnitario, CustoTotal, CustoMedio, CustoMedioTotal );
 end;

 { Movimentação DE Terceiro }
 procedure MovEstoq_NFS_D;
 var QtdSaldoAtual, QtdSaldoAnterior,
     CustoUnitario, CustoTotal, CustoMedio, CustoMedioTotal : Currency;
 begin
  UltSaldoKdx( sqlKdx, cdsPds.FieldByName('EMPRESAID').AsString, cdsPdsItem.FieldByName('PRODUTOID').AsString,
               QtdSaldoAnterior, CustoMedio, CustoMedioTotal );

  QtdSaldoAtual   := QtdSaldoAnterior - cdsPdsItem.FieldByName('QUANTIDADE').AsFloat;

  if QtdSaldoAtual < 0 then
     QtdSaldoAtual := 0;

  CustoTotal      := CustoMedio * QtdSaldoAtual;
  CustoUnitario   := CustoTotal / cdsPdsItem.FieldByName('QUANTIDADE').AsFloat;
  CustoMedioTotal := CustoMedioTotal - CustoTotal;

  // Preparar query genÃƒÆ’Ã‚Â©rica para atualizar a movimentação do produto
  sqlUpdProd.SQL.Clear;
  sqlUpdProd.SQL.Add('UPDATE EF_PRODUTO SET');
  sqlUpdProd.SQL.Add(' ESTOQUEPEDSAIDA   = NVL( ESTOQUEPEDSAIDA, 0 ) - ' + SubstituiString( FloatToStr( cdsPdsItem.FieldByName('QUANTIDADE').AsCurrency ), ',', '.' ) + ',');
  sqlUpdProd.SQL.Add(' ESTOQUETOTAL      = NVL( ESTOQUETOTAL, 0 ) - ' + SubstituiString( FloatToStr( cdsPdsItem.FieldByName('QUANTIDADE').AsCurrency ), ',', '.' ) + ',');
  sqlUpdProd.SQL.Add(' CUSTOMEDIO        = ' + SubstituiString( FloatToStr( CustoMedio ), ',', '.' ) + ',' );
  sqlUpdProd.SQL.Add(' CUSTOTOTAL        = ' + SubstituiString( FloatToStr( CustoMedioTotal ), ',', '.' ) );
  sqlUpdProd.SQL.Add('WHERE ');
  sqlUpdProd.SQL.Add(' EMPRESAID = ' + cdsPds.FieldByName('EMPRESAID').AsString );
  sqlUpdProd.SQL.Add(' AND PRODUTOID = ' + cdsPdsItem.FieldByName('PRODUTOID').AsString );
  sqlUpdProd.ExecSQL( False );

  // Gerar registro de Kardex para entrada em fÃƒÆ’Ã‚Â­sico
  AtualizaMovKdx( sqlUpdKdx, sqlProd, cdsPds.FieldByName('EMPRESAID').AsString,
                  cdsPdsItem.FieldByName('PRODUTOID').AsString,
                  cdsPds.FieldByName('OSID').AsString,
                  '',
                  cdsPdsItem.FieldByName('NATUREZAOPID').AsString,
                  cdsPdsItem.FieldByName('QUANTIDADE').AsString,
                  cdsPdsItem.FieldByName('ITEMID').AsString,
                  cdsPds.FieldByName('USUARIO').AsString,
                  sqlEmp.FieldByName('NUMNF').AsString, DataEmissao, 'NFS', 'DET', 'S',
                  CustoUnitario, CustoTotal, CustoMedio, CustoMedioTotal );
 end;

 // Gerar movimentação para nota fiscal
 procedure MovItemNotaSaida;
 begin
  cdsPdsItem.First;
  while not cdsPdsItem.eof do
  begin
   if DocInterno then
      InserirNFSItem( sqlEmp.FieldByName('NUMTRANSFCONSUMO').AsString, DataEmissao, Usuario, sqlUpd, cdsPDSItem )
   else
      InserirNFSItem( sqlEmp.FieldByName('NUMNF').AsString, DataEmissao, Usuario, sqlUpd, cdsPDSItem );

   if cdsPDS.FieldByName('TIPONOTA').Value <> 'A' then
      begin
       cdsPdsItem.Next;
       Continue;
      end;

   case sqlNatOp.FieldByName('MOVIMENTOESTOQUE').AsString[1] of
   'N' : MovEstoq_NFS_N;
   'Q' : MovEstoq_NFS_N;
   'V' : MovEstoq_NFS_V;
   'E' : MovEstoq_NFS_E;
   'D' : MovEstoq_NFS_D;
   else
    raise Exception.Create('Tipo de movimentação de estoque não localizado');
   end;

   cdsPdsItem.Next;
  end;
 end;

begin
 NatServico := False;

 cdsPds := TClientDataSet.Create( Self );
 cdsPds.Data := PdsData;

 cdsPdsItem := TClientDataSet.Create( Self );
 cdsPdsItem.Data := PdsItemData;

 sqlUpd := TSQLQuery.Create(nil);
 sqlUpd.SQLConnection := TSQLConnection(FSQLcnn);

 sqlUpdPDSParcela := TSQLQuery.Create(nil);
 sqlUpdPDSParcela.SQLConnection := TSQLConnection(FSQLcnn);

 sqlUpdProd := TSQLQuery.Create(nil);
 sqlUpdProd.SQLConnection := TSQLConnection(FSQLcnn);

 sqlUpdKdx := TSQLQuery.Create(nil);
 sqlUpdKdx.SQLConnection := TSQLConnection(FSQLcnn);

 sqlEmp := TSQLQuery.Create(nil);
 sqlEmp.SQLConnection := TSQLConnection(FSQLcnn);

 sqlProd := TSQLQuery.Create(nil);
 sqlProd.SQLConnection := TSQLConnection(FSQLcnn);

 sqlDupl := TSQLQuery.Create(nil);
 sqlDupl.SQLConnection := TSQLConnection(FSQLcnn);

 sqlKdx := TSQLQuery.Create(nil);
 sqlKdx.SQLConnection := TSQLConnection(FSQLcnn);

 sqlCPagto := TSQLQuery.Create(nil);
 sqlCPagto.SQLConnection := TSQLConnection(FSQLcnn);

 sqlNFS := TSQLQuery.Create(nil);
 sqlNFS.SQLConnection := TSQLConnection(FSQLcnn);

 sqlNatOp := TSQLQuery.Create(nil);
 sqlNatOp.SQLConnection := TSQLConnection(FSQLcnn);

 try
  try // Except
   // Inicia transação
   TSQLConnection(FSQLcnn).StartTransaction(TD);

   // Número de Nota Fiscal conforme a empresa
   case cdsPDS.FieldByName('EMPRESAID').AsInteger of
   1..5   : EmpresaID := '1';
   12..13 : EmpresaID := '12';
   15, 17 : EmpresaID := '15';
   else ;
    EmpresaID := cdsPDS.FieldByName('EMPRESAID').AsString
   end;

   sqlEmp.SQL.Clear;
   sqlEmp.SQL.Add('SELECT EMPRESAID, NUMNF, NUMTRANSFCONSUMO, NUMNSU, NUMRPS FROM EF_EMPRESA');
   sqlEmp.SQL.Add(' WHERE');
   sqlEmp.SQL.Add('  EMPRESAID = ' + EmpresaID );
   sqlEmp.Prepared := True;
   sqlEmp.Open;

   if sqlEmp.IsEmpty then
      raise Exception.Create('Problemas na localização da empresa!');

   sqlNatOp.SQL.Clear;
   sqlNatOp.SQL.Add('SELECT');
   sqlNatOp.SQL.Add('  MOVIMENTOESTOQUE, VENDADEFINITIVA, VENDAFATANTECIPADO, CREDITOICMS, CREDITOIPI, NATUREZASERVICO');
   sqlNatOp.SQL.Add('  FROM EF_NATUREZAOP');
   sqlNatOp.SQL.Add(' WHERE');
   sqlNatOp.SQL.Add('  NATUREZAOPID = ' + cdsPds.FieldByName('NATUREZAOPID').AsString );
   sqlNatOp.Prepared := True;
   sqlNatOp.Open;

   if DocInterno then
      NFSID := sqlEmp.FieldByName('NUMTRANSFCONSUMO').AsString
   else
      NFSID := sqlEmp.FieldByName('NUMNF').AsString;

   // RPS - Serviços Barueri
   if sqlEmp.FieldByName('EMPRESAID').AsInteger = 1 then
      if sqlNatOp.FieldByName('NATUREZASERVICO').AsInteger = 1 then
         NFSID := sqlEmp.FieldByName('NUMRPS').AsString;

   NSUID := 0;
   if sqlEmp.FieldByName('EMPRESAID').AsInteger in [15,17]  then
      NSUID := sqlEmp.FieldByName('NUMNSU').AsInteger;

   // Verificar Nota Fiscal já emitida
   sqlNFS.SQL.Clear;
   sqlNFS.SQL.Add('SELECT');
   sqlNFS.SQL.Add('  NFSID, DATAEMISSAOID' );
   sqlNFS.SQL.Add('  FROM EF_NFS');
   sqlNFS.SQL.Add(' WHERE');
   sqlNFS.SQL.Add('  EMPRESAID = ' + cdsPDS.FieldByName('EMPRESAID').AsString );
   sqlNFS.SQL.Add('  AND NFSID = ' +  NFSID );
   sqlNFS.SQL.Add('  AND DATAEMISSAOID = TO_DATE(' + QuotedStr( DataEmissao ) + ', ''dd/mm/yyyy'' )' );
   sqlNFS.Prepared := True;
   sqlNFS.Open;

   if not sqlNFS.IsEmpty then
      raise Exception.Create('O número da Nota Fiscal nesta data ja foi impresso.!');

   if sqlNatOp.FieldByName('VENDADEFINITIVA').AsInteger = 1 then
      begin
       if cdsPds.FieldByName('CONDPAGTOID').IsNull then
          raise Exception.Create('Emissão de Nota Fiscal cancelada, condição de pagamento não informada');

       sqlCPagto.SQL.Clear;
       sqlCPagto.SQL.Add('SELECT CONDPAGTOID, EMITEDUPLICATA, DATAIGUALEMISSAO');
       sqlCPagto.SQL.Add('  FROM EF_CONDPAGTO');
       sqlCPagto.SQL.Add(' WHERE');
       sqlCPagto.SQL.Add('  CONDPAGTOID = ' + cdsPds.FieldByName('CONDPAGTOID').AsString );
       sqlCPagto.Prepared := True;
       sqlCPagto.Open;

       if not sqlCPagto.IsEmpty then
          begin
           if sqlCPagto.FieldByName('EMITEDUPLICATA').AsInteger = 1 then
              begin
               sqlDupl.SQL.Clear;
               sqlDupl.SQL.Add('SELECT EMPRESAID, PDSID');
               sqlDupl.SQL.Add('  FROM EF_PDSPARCELA');
               sqlDupl.SQL.Add(' WHERE');
               sqlDupl.SQL.Add('    EMPRESAID = ' + cdsPDS.FieldByName('EMPRESAID').AsString );
               sqlDupl.SQL.Add('    AND PDSID = ' + cdsPDS.FieldByName('PDSID').AsString );
               sqlDupl.Prepared := True;
               sqlDupl.Open;

               if sqlDupl.IsEmpty then
                  raise Exception.Create('Emissão de Nota Fiscal cancelada, falta geração da parcela de duplicata');

               sqlDupl.Close;
              end;

           if sqlCPagto.FieldByName('DATAIGUALEMISSAO').AsInteger = 1 then
              AtualPDSParcelaVcto;
          end;
      end;

   // Inserir dados principais da nota fiscal de saída
   InserirNFS( NFSID, DataEmissao, Usuario,sqlUpd ,cdsPDS, NSUID );

   // Inserir toda a movimentação do Pedido de saída
   MovItemNotaSaida;

   InserirNFSParcela( NFSID,
                      cdsPDS.FieldByName('PDSID').AsString,
                      DataEmissao,
                      cdsPDS.FieldByName('EMPRESAID').AsString,
                      sqlUpd );

   InserirNFSServico( NFSID,
                      cdsPDS.FieldByName('PDSID').AsString,
                      DataEmissao,
                      cdsPDS.FieldByName('EMPRESAID').AsString,
                      sqlUpd );

   ExclusaoMovPDS( cdsPDS.FieldByName('PDSID').AsString,
                   cdsPDS.FieldByName('EMPRESAID').AsString,
                   sqlUpd );

   // Número nota provisória Nota fiscal eletrônica de Barueri
   if sqlEmp.FieldByName('EMPRESAID').AsInteger = 1 then
      if sqlNatOp.FieldByName('NATUREZASERVICO').AsInteger = 1 then
         NatServico := True;

   // Atualizar Número de emissão de nota fiscal
   sqlUpd.SQL.Clear;
   if DocInterno then
      sqlUpd.SQL.Add( 'UPDATE EF_EMPRESA SET NUMTRANSFCONSUMO = NVL( NUMTRANSFCONSUMO, 0 ) + 1 ' )
   else
      begin
       if NatServico then
          sqlUpd.SQL.Add( 'UPDATE EF_EMPRESA SET NUMRPS = NVL( NUMRPS, 0 ) + 1  ' )
       else
          sqlUpd.SQL.Add( 'UPDATE EF_EMPRESA SET NUMNF = NVL( NUMNF, 0 ) + 1 ' );

       if cdsPDS.FieldByName('EMPRESAID').AsInteger in [15,17] then
          begin
            sqlUpd.SQL.Add( ', NUMNSU = NVL( NUMNSU, 0 ) + 1   ' );
          end;
      end;

   sqlUpd.SQL.Add( ' WHERE' );
   sqlUpd.SQL.Add( ' EMPRESAID = ' + EmpresaID );
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
  if DocInterno then
     Result := sqlEmp.FieldByName('NUMTRANSFCONSUMO').AsString
  else
     begin
      if NatServico then
         Result :=  sqlEmp.FieldByName('NUMRPS').AsString
      else
         Result := sqlEmp.FieldByName('NUMNF').AsString;
     end;

  FreeAndNil( cdsPds );
  FreeAndNil( cdsPdsItem );
  FreeAndNil( sqlEmp );
  FreeAndNil( sqlUpd );
  FreeAndNil( sqlUpdPDSParcela );
  FreeAndNil( sqlUpdProd );
  FreeAndNil( sqlUpdKdx );
  FreeAndNil( sqlCPagto );
  FreeAndNil( sqlNFS );
  FreeAndNil( sqlNatOp );
  FreeAndNil( sqlProd );
  FreeAndNil( sqlDupl );
  FreeAndNil( sqlKdx );
 end;
end;

procedure TSrvAppEF.IDeletarPDE(const EmpresaID, PdeID: WideString);
var sqlPde, sqlNat, sqlUpd : TSQLQuery;
begin
 sqlPde := TSQLQuery.Create(nil);
 sqlPde.SQLConnection := TSQLConnection(FSQLcnn);

 sqlNat := TSQLQuery.Create(nil);
 sqlNat.SQLConnection := TSQLConnection(FSQLcnn);

 sqlUpd := TSQLQuery.Create(nil);
 sqlUpd.SQLConnection := TSQLConnection(FSQLcnn);

 try
  try // Except
   // Inicia transação
   TSQLConnection(FSQLcnn).StartTransaction(TD);

   sqlPde.Close;
   sqlPde.SQL.Clear;
   sqlPde.SQL.Add('SELECT');
   sqlPde.SQL.Add('  EF_PDE.EMPRESAID,');
   sqlPde.SQL.Add('  EF_PDE.PDEID,');
   sqlPde.SQL.Add('  EF_PDE.DATAPEDIDO,');
   sqlPde.SQL.Add('  EF_PDE.DIID,');
   sqlPde.SQL.Add('  EF_PDE.TIPONOTA,');
   sqlPde.SQL.Add('  EF_PDE.OSID,');
   sqlPde.SQL.Add('  EF_PDEITEM.ITEMID,');
   sqlPde.SQL.Add('  EF_PDEITEM.NATUREZAOPID,');
   sqlPde.SQL.Add('  EF_PDEITEM.PRODUTOID,');
   sqlPde.SQL.Add('  EF_PDEITEM.QUANTIDADE,');
   sqlPde.SQL.Add('  EF_PDEITEM.NFSID,');
   sqlPde.SQL.Add('  EF_PDEITEM.DATAEMISSAONFSID');
   sqlPde.SQL.Add('  FROM');
   sqlPde.SQL.Add('  EF_PDE EF_PDE,');
   sqlPde.SQL.Add('  EF_PDEITEM EF_PDEITEM');
   sqlPde.SQL.Add(' WHERE');
   sqlPde.SQL.Add('  EF_PDE.EMPRESAID = EF_PDEITEM.EMPRESAID');
   sqlPde.SQL.Add('  AND EF_PDE.PDEID = EF_PDEITEM.PDEID');
   sqlPde.SQL.Add('  AND EF_PDE.EMPRESAID = ' + EmpresaID );
   sqlPde.SQL.Add('  AND EF_PDE.PDEID = ' + PdeID );
   sqlPde.Prepared := True;
   sqlPde.Open;

   sqlPde.First;
   while not sqlPde.Eof and
   ( sqlPde.FieldByName('TIPONOTA').AsString <> 'I' ) do
   begin
    DeletarMovPde( sqlPde.FieldByName('EMPRESAID').AsString,
                   sqlPde.FieldByName('PDEID').AsString,
                   sqlPde.FieldByName('NFSID').AsString,
                   sqlPde.FieldByName('DATAEMISSAONFSID').AsString,
                   sqlPde.FieldByName('OSID').AsString,
                   sqlPde.FieldByName('NATUREZAOPID').AsString,
                   sqlPde.FieldByName('ITEMID').AsString,
                   sqlPde.FieldByName('PRODUTOID').AsString,
                   sqlPde.FieldByName('QUANTIDADE').AsCurrency,
                   sqlNat, sqlUpd );

    sqlPde.Next;
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
  FreeAndNil( sqlPde );
  FreeAndNil( sqlNat );
  FreeAndNil( sqlUpd );
 end;
end;


procedure TSrvAppEF.AtualizarNFE( EmpresaID, NFEID, DataEmissaoNFEID, DataEntradaNFEID, EntidadeID, CategoriaID : String; sqlUpd : TSQLQuery );
begin
 sqlUpd.Close;
 sqlUpd.SQL.Clear;
 sqlUpd.SQL.Add('UPDATE EF_NFE' );
 sqlUpd.SQL.Add(' SET' );
 sqlUpd.SQL.Add('  EF_NFE.DATAENTRADA = TO_DATE(' + QuotedStr( DataEntradaNFEID ) + ', ''dd/mm/yyyy'' )' );
 sqlUpd.SQL.Add(' WHERE' );
 sqlUpd.SQL.Add('  EF_NFE.EMPRESAID          = ' + EmpresaID );
 sqlUpd.SQL.Add('  AND EF_NFE.NFEID          = ' + NFEID );
 sqlUpd.SQL.Add('  AND EF_NFE.DATAEMISSAOID  = ' + QuotedStr( DATAEMISSAONFEID ) );
 sqlUpd.SQL.Add('  AND EF_NFE.ENTIDADEID     = ' + EntidadeID );

 if CategoriaID <> '' then
    sqlUpd.SQL.Add('  AND EF_NFE.CATEGORIAID    = ' + QuotedStr( CategoriaID ) );

 sqlUpd.ExecSQL( False );
end;

procedure TSrvAppEF.IRecebimentoEntrada(PdeData, PdeItemData,
  PdeItemDataBar: OleVariant; const DataEmissao, DataEntrada,
  Usuario: WideString);
var sqlUpd, sqlEmpresa, sqlNFE, sqlProd, sqlKdx, sqlNatOp : TSQLQuery;
    cdsPde, cdsPdeItem, cdsPdeItemBar : TClientDataSet;
    NFEID, DataEmissaoNFEID, DataEntradaNFEID : String;

 procedure GerarMovKardexEstoque;
 begin
  if cdsPde.FieldByName('TIPONOTA').AsString = 'I' then
     MovNotaImportada( NFEID, DataEmissaoNFEID, cdsPde.FieldByName('DIID').AsString, sqlUpd )
  else
     MovNotaNormal( sqlNatOp, sqlKDX, sqlProd, sqlUpd,
                    cdsPde, cdsPdeItem, cdsPdeItemBar,
                    NFEID, DataEmissaoNFEID, DataEntradaNFEID, Usuario, False, False );

  // Apagar o pedido de entrada
  ApagarPDE( cdsPde.FieldByName('EMPRESAID').AsString,
             cdsPde.FieldByName('PDEID').AsString, sqlUpd  );
 end;

begin
 sqlUpd := TSQLQuery.Create(nil);
 sqlUpd.SQLConnection := TSQLConnection(FSQLcnn);

 sqlEmpresa := TSQLQuery.Create(nil);
 sqlEmpresa.SQLConnection := TSQLConnection(FSQLcnn);

 sqlNFE := TSQLQuery.Create(nil);
 sqlNFE.SQLConnection := TSQLConnection(FSQLcnn);

 cdsPde := TClientDataSet.Create( Self );
 cdsPde.Data := PdeData;

 cdsPdeItem := TClientDataSet.Create( Self );
 cdsPdeItem.Data := PdeItemData;

 cdsPdeItemBar := TClientDataSet.Create( Self );
 cdsPdeItemBar.Data := PdeItemDataBar;

 sqlProd := TSQLQuery.Create(nil);
 sqlProd.SQLConnection := TSQLConnection(FSQLcnn);

 sqlKdx := TSQLQuery.Create(nil);
 sqlKdx.SQLConnection := TSQLConnection(FSQLcnn);

 sqlNatOp := TSQLQuery.Create(nil);
 sqlNatOp.SQLConnection := TSQLConnection(FSQLcnn);

 try
  try // Except
   // Inicia transação
   TSQLConnection(FSQLcnn).StartTransaction(TD);

   if cdsPde.FieldByName('MOVIMENTAESTOQUE').AsInteger <> 0 then
      raise Exception.Create('Pedido de Entrada não ÃƒÆ’Ã‚Â© de recebimento futuro');

   if ( cdsPde.FieldByName('LIBCHEFIA').Value = 0 ) or ( cdsPde.FieldByName('LIBCONTABIL').Value = 0 ) then
      raise Exception.Create('Impressão não disponivel. Liberação do pedido pendente! ');

   // Analisar tipo de nota do pedido para geração do NFEID
   if ( cdsPde.FieldByName('NFEID').AsInteger < 1 ) or ( cdsPde.FieldByName('DATAEMISSAONFEID').IsNull ) then
       raise Exception.Create('Número da Nota Fiscal / Data Emissão não preenchido');

   NFEID            := cdsPde.FieldByName('NFEID').AsString;
   DataEmissaoNFEID := cdsPde.FieldByName('DATAEMISSAONFEID').AsString;
   DataEntradaNFEID := DataEntrada;

   sqlNatOp.SQL.Clear;
   sqlNatOp.SQL.Add('SELECT');
   sqlNatOp.SQL.Add('  MOVIMENTOESTOQUE, VENDAFATANTECIPADO, CREDITOICMS, CREDITOIPI');
   sqlNatOp.SQL.Add('  FROM EF_NATUREZAOP');
   sqlNatOp.SQL.Add(' WHERE');
   sqlNatOp.SQL.Add('  NATUREZAOPID = ' + cdsPdeItem.FieldByName('NATUREZAOPID').AsString );
   sqlNatOp.Prepared := True;
   sqlNatOp.Open;

   // Gerar Nota Fiscal de Entrada
   AtualizarNFE( cdsPde.FieldByName('EMPRESAID').AsString, NFEID, DataEmissaoNFEID, DataEntradaNFEID,
                 cdsPde.FieldByName('ENTIDADEID').AsString,cdsPde.FieldByName('CATEGORIAID').AsString, sqlUpd );

   GerarMovKardexEstoque;

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
  FreeAndNil( sqlEmpresa );
  FreeAndNil( sqlNfe );
  FreeAndNil( sqlProd );
  FreeAndNil( sqlKdx );
  FreeAndNil( sqlNatOp );
  FreeAndNil( cdsPde );
  FreeAndNil( cdsPdeItem );
  FreeAndNil( cdsPdeItemBar );
 end;
end;

procedure TSrvAppEF.IRecebimentoImportacao(DeclaracaoData,
  MercadoriaData: OleVariant; const DataEntradaNFEID, Usuario: WideString);
var sqlUpd, sqlDI, sqlProd, sqlNFE, sqlNatOp : TSQLQuery;
    cdsDeclaracao, cdsMercadoria : TClientDataSet;
    CustoMedio, CustoMedioTotal, CustoUnitario, CustoTotal : Currency;
begin
 sqlUpd := TSQLQuery.Create(nil);
 sqlUpd.SQLConnection := TSQLConnection(FSQLcnn);

 sqlDI := TSQLQuery.Create(nil);
 sqlDI.SQLConnection := TSQLConnection(FSQLcnn);

 sqlNFE := TSQLQuery.Create(nil);
 sqlNFE.SQLConnection := TSQLConnection(FSQLcnn);

 cdsDeclaracao := TClientDataSet.Create( Self );
 cdsDeclaracao.Data := DeclaracaoData;

 cdsMercadoria := TClientDataSet.Create( Self );
 cdsMercadoria.Data := MercadoriaData;

 sqlProd := TSQLQuery.Create(nil);
 sqlProd.SQLConnection := TSQLConnection(FSQLcnn);

 sqlNatOp := TSQLQuery.Create(nil);
 sqlNatOp.SQLConnection := TSQLConnection(FSQLcnn);

 try
  try // Except
   // Inicia transação
   TSQLConnection(FSQLcnn).StartTransaction(TD);

   sqlDI.SQL.Clear;
   sqlDI.SQL.Add('SELECT DECLARACAOID ');
   sqlDI.SQL.Add('  FROM IT_DECLARACAO');
   sqlDI.SQL.Add(' WHERE');
   sqlDI.SQL.Add('  DECLARACAOID = ' + cdsDeclaracao.FieldByName('DECLARACAOID').AsString  );
   sqlDI.SQL.Add('  AND NVL( LIBERARESTOQUE, 0) =  1' );
   sqlDI.Prepared := True;
   sqlDI.Open;

   if not sqlDI.IsEmpty then
      raise Exception.Create('Declaração de importação‚Â£o jÃƒÆ’Ã‚Â¡ liberada');

   if cdsDeclaracao.FieldByName('LIBERARESTOQUE').AsInteger = 1 then
      raise Exception.Create('Declaração de importação‚Â£o jÃƒÆ’Ã‚Â¡ liberada');

   if cdsDeclaracao.FieldByName('DIID').IsNull then
      raise Exception.Create('Declaração de importação‚Â£o não preenchido');

   if cdsDeclaracao.FieldByName('NFEID').AsInteger < 1 then
      raise Exception.Create('Declaração de importação‚Â£o não tem nota fiscal de entrada para recebimento de importação‚Â£o jÃƒÆ’Ã‚Â¡ foi efetuado');

   sqlNatOp.SQL.Clear;
   sqlNatOp.SQL.Add('SELECT');
   sqlNatOp.SQL.Add('  MOVIMENTOESTOQUE, VENDAFATANTECIPADO, CREDITOICMS, CREDITOIPI');
   sqlNatOp.SQL.Add('  FROM EF_NATUREZAOP');
   sqlNatOp.SQL.Add(' WHERE');
   sqlNatOp.SQL.Add('  NATUREZAOPID = ' + cdsDeclaracao.FieldByName('NATUREZAOPID').AsString  );
   sqlNatOp.Prepared := True;
   sqlNatOp.Open;

   AtualizarNFE( cdsDeclaracao.FieldByName('EMPRESAID').AsString,
                 cdsDeclaracao.FieldByName('NFEID').AsString,
                 cdsDeclaracao.FieldByName('DATAEMISSAONFEID').AsString,
                 DataEntradaNFEID,
                 cdsDeclaracao.FieldByName('FORNECEDORID').AsString,
                 '', sqlUpd );

   cdsMercadoria.First;
   while not cdsMercadoria.Eof do
   begin
    // Voltar o saldo pois houve mudanÃƒÆ’Ã‚Â§a na quantidade pedida
    sqlUpd.SQL.Clear;
    sqlUpd.SQL.Add('UPDATE EF_PRODUTO SET ');
    sqlUpd.SQL.Add(' ESTOQUENOVO       = NVL( ESTOQUENOVO, 0 ) + ' + SubstituiString( FloatToStr( cdsMercadoria.FieldByName('QUANTIDADE').AsCurrency ), ',', '.' ) + ',');
    sqlUpd.SQL.Add(' ESTOQUEFISICO     = NVL( ESTOQUEFISICO, 0 ) + ' + SubstituiString( FloatToStr( cdsMercadoria.FieldByName('QUANTIDADE').AsCurrency ), ',', '.' ) + ',');
    sqlUpd.SQL.Add(' ESTOQUETOTAL      = NVL( ESTOQUETOTAL, 0 ) + ' + SubstituiString( FloatToStr( cdsMercadoria.FieldByName('QUANTIDADE').AsCurrency ), ',', '.' ) );
    sqlUpd.SQL.Add('WHERE ');
    sqlUpd.SQL.Add(' EMPRESAID = ' + cdsMercadoria.FieldByName('EMPRESAID').AsString  );
    sqlUpd.SQL.Add(' AND PRODUTOID = ' + cdsMercadoria.FieldByName('PRODUTOID').AsString );
    sqlUpd.ExecSQL( False );

    // Ùltimo custo do produto
    CustoMedio      := 0;
    CustoMedioTotal := 0;
    CustoUnitario   := 0;
    CustoTotal      := 0;

    // Gerar registro de Kardex para entrada em fisico
    AtualizaMovKdx( sqlUpd, sqlProd, cdsMercadoria.FieldByName('EMPRESAID').AsString,
                                     cdsMercadoria.FieldByName('PRODUTOID').AsString,
                                     '',
                                     cdsDeclaracao.FieldByName('DIID').AsString,
                                     cdsDeclaracao.FieldByName('NATUREZAOPID').AsString,
                                     cdsMercadoria.FieldByName('QUANTIDADE').AsString,
                                     cdsMercadoria.FieldByName('MERCADORIAID').AsString,
                                     Usuario,
                                     cdsDeclaracao.FieldByName('NFEID').AsString,
                                     DataEntradaNFEID,
                                    'NFE', 'FIS', 'E', CustoUnitario, CustoTotal, CustoMedio, CustoMedioTotal );
     cdsMercadoria.Next;
    end;

    sqlUpd.SQL.Clear;
    sqlUpd.SQL.Add('UPDATE IT_DECLARACAO SET ');
    sqlUpd.SQL.Add(' DATAENTRADANFEID = TO_DATE(' + QuotedStr( DataEntradaNFEID ) + ', ''dd/mm/yyyy'' ),' );
    sqlUpd.SQL.Add(' LIBERARESTOQUE   = 1' );
    sqlUpd.SQL.Add('WHERE ');
    sqlUpd.SQL.Add(' DECLARACAOID = ' + cdsDeclaracao.FieldByName('DECLARACAOID').AsString  );
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
  FreeAndNil( sqlDI );
  FreeAndNil( sqlNfe );
  FreeAndNil( sqlProd );
  FreeAndNil( sqlNatOp );
  FreeAndNil( cdsDeclaracao );
  FreeAndNil( cdsMercadoria );
 end;
end;

function TSrvAppEF.IAtualNovoCustoKdxTransf: OleVariant;
var cdsEntradasDI  : TClientDataSet;
    sqlUpd, sqlDITransf, sqlEntradasDI, sqlKdx, sqlProd : TSQLQuery;
    dsprvEntradasDI : TDataSetProvider;
    Log : TStrings;
begin
 Log := TStringList.Create;
 Log.Add( ' Documento não Localizado :' );

 sqlUpd := TSQLQuery.Create(nil);
 sqlUpd.SQLConnection := TSQLConnection(FSQLcnn);

 sqlDITransf := TSQLQuery.Create(nil);
 sqlDITransf.SQLConnection := TSQLConnection(FSQLcnn);

 sqlEntradasDI := TSQLQuery.Create(nil);
 sqlEntradasDI.SQLConnection := TSQLConnection(FSQLcnn);

 sqlKdx := TSQLQuery.Create(nil);
 sqlKdx.SQLConnection := TSQLConnection(FSQLcnn);

 sqlProd := TSQLQuery.Create(nil);
 sqlProd.SQLConnection := TSQLConnection(FSQLcnn);

 try
  try // Except
   // Inicia transação
   TSQLConnection(FSQLcnn).StartTransaction(TD);

   // Retornar pesquisa com o custo do preÃƒÆ’Ã‚Â§o de transferÃƒÆ’Ã‚Âªncia calculado por DI
   sqlDITransf.Close;
   sqlDITransf.SQL.Add( SelectDeclaracaoCustoTransf );
   sqlDITransf.Prepared := True;
   sqlDITransf.Open;

   // Filtro das Entradas de importação‚Â£o para diminuir o processamento
   sqlEntradasDI.Close;
   sqlEntradasDI.SQL.Add( SelectKdxTransfEntradas );
   sqlEntradasDI.Prepared := True;
   sqlEntradasDI.Open;

   dsprvEntradasDI := TDataSetProvider.Create( Self );
   dsprvEntradasDI.Name    := 'dsprvEntradasDI';
   dsprvEntradasDI.DataSet := sqlEntradasDI;
   dsprvEntradasDI.Options := [poAutoRefresh, poPropogateChanges, poAllowCommandText];

   cdsEntradasDI := TClientDataSet.Create( Self );
   cdsEntradasDI.ProviderName  := 'dsprvEntradasDI';
   cdsEntradasDI.PacketRecords := -1;

   cdsEntradasDI.Open;
   cdsEntradasDI.AddIndex( 'idx1','EMPRESAID;DATAOCORRENCIA;NUMDOCUMENTO;PRODUTOID',[ixCaseInsensitive],'','',0);
   cdsEntradasDI.IndexName := 'idx1';

   sqlDITransf.First;
   while not sqlDITransf.Eof do
   begin
    if not cdsEntradasDI.FindKey([sqlDITransf.FieldByName('EMP_SIMILARID').AsString,
                                  sqlDITransf.FieldByName('DATAENTRADANFEID').AsString,
                                  sqlDITransf.FieldByName('NFEID').AsString,
                                  sqlDITransf.FieldByName('PROD_SIMILARID').AsString ]) then
       begin
        Log.Add( sqlDITransf.FieldByName('EMP_SIMILARID').AsString + '-' +
                 sqlDITransf.FieldByName('DATAENTRADANFEID').AsString + '-' +
                 sqlDITransf.FieldByName('NFEID').AsString + '-' +
                 sqlDITransf.FieldByName('DIID').AsString + '-' +
                 sqlDITransf.FieldByName('PROD_SIMILARID').AsString );

        sqlDITransf.Next;
        Continue;
       end;

    sqlUpd.SQL.Clear;
    sqlUpd.SQL.Add('UPDATE EF_KDXTRANSF SET ');
    sqlUpd.SQL.Add(' VLRCUSTOUNITARIO = ' + SubstituiString( FloatToStr( sqlDITransf.FieldByName('VLRCUSTOTRANSFERENCIA').AsCurrency / sqlDITransf.FieldByName('QUANTIDADE').AsCurrency ), ',', '.' ) + ',' );
    sqlUpd.SQL.Add(' VLRCUSTOTOTAL    = ' + SubstituiString( FloatToStr( sqlDITransf.FieldByName('VLRCUSTOTRANSFERENCIA').AsCurrency  ), ',', '.' ) );
    sqlUpd.SQL.Add('WHERE ');
    sqlUpd.SQL.Add(' EMPRESAID          = ' + sqlDITransf.FieldByName('EMP_SIMILARID').AsString  );
    sqlUpd.SQL.Add(' AND PRODUTOID      = ' + sqlDITransf.FieldByName('PROD_SIMILARID').AsString );
    sqlUpd.SQL.Add(' AND KARDEXID       = ' + cdsEntradasDI.FieldByName('KARDEXID').AsString );
    sqlUpd.SQL.Add(' AND DATAOCORRENCIA = ' + QuotedStr( cdsEntradasDI.FieldByName('DATAOCORRENCIA').AsString ) );
    sqlUpd.ExecSQL( False );

    sqlDITransf.Next;
   end;

   // Filtro dos produtos importados para reprocessamento do Kardex
   sqlProd.Close;
   sqlProd.SQL.Add( SelectProdSimilarImport );
   sqlProd.Prepared := True;
   sqlProd.Open;

   while not sqlProd.Eof do
   begin
    ReprocessarKardex( sqlProd.FieldByName('EMP_SIMILARID').AsString,
                       sqlProd.FieldByName('PROD_SIMILARID').AsString,
                       sqlKdx,
                       sqlUpd,
                       2,
                       0 );

    sqlProd.Next;
   end;

   cdsEntradasDI.DeleteIndex('idx1');

   sqlProd.Close;
   sqlKdx.Close;
   sqlDITransf.Close;
   cdsEntradasDI.Close;

   Result := StringlistToVariant( Log );

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
  FreeAndNil( sqlDITransf );
  FreeAndNil( cdsEntradasDI );
  FreeAndNil( dsprvEntradasDI );
  FreeAndNil( sqlKdx );
  FreeAndNil( sqlProd );
 end;
end;

procedure TSrvAppEF.IReprocessarKardex(const EmpresaId,
  ProdutoID: WideString; Tabela, Posicao: Integer);
var sqlUpd, sqlKdx : TSQLQuery;
begin
 sqlKdx := TSQLQuery.Create(nil);
 sqlKdx.SQLConnection := TSQLConnection(FSQLcnn);

 sqlUpd := TSQLQuery.Create(nil);
 sqlUpd.SQLConnection := TSQLConnection(FSQLcnn);

 try
  try // Except

   // Inicia transação
   TSQLConnection(FSQLcnn).StartTransaction(TD);

   ReprocessarKardex( EmpresaId, ProdutoID, sqlKdx, sqlUpd, Tabela, Posicao );

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
  FreeAndNil( sqlKdx );
 end;
end;

procedure TSrvAppEF.IDesmembCusto(const EmpresaId, ProdutoID,
  ProdutoRecepID: WideString; QtdDesmemb, VlrDesmemb: Single;
  const UsuarioID: WideString);
var sqlUpd, sqlKdx, sqlProdOrigem, sqlProdRecept : TSQLQuery;
    CustoUnitario, CustoTotal, QtdSaldoAnterior, CustoMedio, CustoMedioTotal  : Currency;
                               QtdSaldoAnterior2, CustoMedio2, CustoMedioTotal2  : Currency;

  procedure ValidarProduto( var sql : TSQLQuery; EmpresaID, ProdutoID : String );
  begin
   sql.Close;
   sql.SQL.Clear;
   sql.SQL.Add('SELECT EMPRESAID, PRODUTOID, ESTOQUETOTAL, CUSTOMEDIO, CUSTOTOTAL ');
   sql.SQL.Add('  FROM EF_PRODUTO');
   sql.SQL.Add(' WHERE ');
   sql.SQL.Add('  EMPRESAID     = ' + EmpresaID );
   sql.SQL.Add('  AND PRODUTOID = ' + ProdutoID );
   sql.Prepared := True;
   sql.Open;
  end;

begin
 sqlKdx := TSQLQuery.Create(nil);
 sqlKdx.SQLConnection := TSQLConnection(FSQLcnn);

 sqlProdOrigem := TSQLQuery.Create(nil);
 sqlProdOrigem.SQLConnection := TSQLConnection(FSQLcnn);

 sqlProdRecept := TSQLQuery.Create(nil);
 sqlProdRecept.SQLConnection := TSQLConnection(FSQLcnn);

 sqlUpd := TSQLQuery.Create(nil);
 sqlUpd.SQLConnection := TSQLConnection(FSQLcnn);

 try
  try // Except
   // Inicia transação
   TSQLConnection(FSQLcnn).StartTransaction(TD);

   if ProdutoID = ProdutoRecepID then
      raise Exception.Create('Produto de Origem e Receptor são iguais o desmembramento será cancelado');

   if QtdDesmemb < 1 then
      raise Exception.Create('Quantidade a ser desmembrada não informada');

   if VlrDesmemb < 1 then
      raise Exception.Create('Valor a ser desmembrado não informado');

   ValidarProduto( sqlProdOrigem, EmpresaID, ProdutoID );
   if sqlProdOrigem.IsEmpty then
      raise Exception.Create('Produto origem não localizado');

   ValidarProduto( sqlProdRecept, EmpresaID, ProdutoRecepID );
   if sqlProdRecept.IsEmpty then
      raise Exception.Create('Produto receptor não localizado');

   // Deduzir custos e quantidades do produto de origem
   CustoUnitario := VlrDesmemb;
   CustoTotal    := CustoUnitario * QtdDesmemb;

   UltSaldoKdx( sqlKdx, EmpresaId, ProdutoID, QtdSaldoAnterior, CustoMedio, CustoMedioTotal );

   CustoMedioTotal := CustoMedioTotal - CustoTotal;
   CustoMedio      := CustoMedioTotal / QtdSaldoAnterior;

   // Adicionar custos e quantidades do produto receptor
   sqlKdx.Close;
   UltSaldoKdx( sqlKdx, EmpresaId, ProdutoRecepID, QtdSaldoAnterior2, CustoMedio2, CustoMedioTotal2 );

   CustoMedioTotal2 := CustoMedioTotal2 + CustoTotal;
   CustoMedio2      := CustoMedioTotal2 / ( QtdSaldoAnterior2 + QtdDesmemb );
   sqlKdx.Close;

   // Efetivar a movimentação do produto por item
   sqlUpd.Close;
   sqlUpd.SQL.Clear;
   sqlUpd.SQL.Add('UPDATE EF_PRODUTO SET');
   sqlUpd.SQL.Add(' ESTOQUENOVO   = NVL( ESTOQUENOVO, 0 ) + ' + SubstituiString( FloatToStr( QtdDesmemb ), ',', '.' ) + ',');
   sqlUpd.SQL.Add(' ESTOQUEFISICO = NVL( ESTOQUEFISICO, 0 ) + ' + SubstituiString( FloatToStr( QtdDesmemb ), ',', '.' ) + ',');
   sqlUpd.SQL.Add(' CUSTOMEDIO    = ' + SubstituiString( FloatToStr( CustoMedio2 ), ',', '.' ) + ',' );
   sqlUpd.SQL.Add(' CUSTOTOTAL    = ' + SubstituiString( FloatToStr( CustoMedioTotal2 ), ',', '.' ) + ',' );
   sqlUpd.SQL.Add(' ESTOQUETOTAL  = NVL( ESTOQUETOTAL, 0 ) + ' + SubstituiString( FloatToStr( QtdDesmemb ), ',', '.' ) );
   sqlUpd.SQL.Add('WHERE ');
   sqlUpd.SQL.Add(' EMPRESAID = ' + EmpresaId );
   sqlUpd.SQL.Add(' AND PRODUTOID = ' + ProdutoRecepID );
   sqlUpd.ExecSQL( False );

   // Efetivar a movimentação do produto por item
   sqlUpd.Close;
   sqlUpd.SQL.Clear;
   sqlUpd.SQL.Add('UPDATE EF_PRODUTO SET');
   sqlUpd.SQL.Add(' CUSTOMEDIO    = ' + SubstituiString( FloatToStr( CustoMedio ), ',', '.' ) + ',' );
   sqlUpd.SQL.Add(' CUSTOTOTAL    = ' + SubstituiString( FloatToStr( CustoMedioTotal ), ',', '.' )  );
   sqlUpd.SQL.Add('WHERE ');
   sqlUpd.SQL.Add(' EMPRESAID = ' + EmpresaId );
   sqlUpd.SQL.Add(' AND PRODUTOID = ' + ProdutoID );
   sqlUpd.ExecSQL( False );

   // Gerar registro de Kardex para saida em fisico
   AtualizaMovKdx( sqlUpd, sqlProdOrigem, EmpresaID,
                   ProdutoRecepID,
                   '',
                   '',
                   '',
                   FloatToStr( QtdDesmemb ),
                   '0',
                   UsuarioID,
                   ProdutoID, DateToStr( Date ),
                  'DMC', 'FIS', 'E', CustoUnitario, CustoTotal, CustoMedio2, CustoMedioTotal2 );

   // Gerar registro de Kardex para saida em fisico
   AtualizaMovKdx( sqlUpd, sqlProdRecept, EmpresaID,
                   ProdutoID,
                   '',
                   '',
                   '',
                   FloatToStr( QtdDesmemb ),
                   '0',
                   UsuarioID,
                   ProdutoRecepID, DateToStr( Date ),
                  'DMC', 'FIS', 'S', CustoUnitario, CustoTotal, CustoMedio, CustoMedioTotal );

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
  FreeAndNil( sqlProdOrigem );
  FreeAndNil( sqlProdRecept );
  FreeAndNil( sqlKdx );
 end;
end;

procedure TSrvAppEF.ICancelarNota(const EmpresaID, NfId, DataEmissaoId,
  TipoNota: WideString);

var sqlUpd, sqlKdx : TSQLQuery;

begin
 sqlKdx := TSQLQuery.Create(nil);
 sqlKdx.SQLConnection := TSQLConnection(FSQLcnn);

 sqlUpd := TSQLQuery.Create(nil);
 sqlUpd.SQLConnection := TSQLConnection(FSQLcnn);

 try
  try // Except
   // Inicia transação
   TSQLConnection(FSQLcnn).StartTransaction(TD);

   // Efetivar a movimentação do produto por item
   sqlUpd.Close;
   sqlUpd.SQL.Clear;
   sqlUpd.SQL.Add('UPDATE EF_PRODUTO SET');
   sqlUpd.ExecSQL( False );

   // Efetivar a movimentação do produto por item
   sqlUpd.Close;
   sqlUpd.SQL.Clear;
   sqlUpd.SQL.Add('UPDATE EF_PRODUTO SET');
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
  FreeAndNil( sqlKdx );
 end;
end;

initialization
 FSrvAppEF := TComponentFactory.Create(ComServer, TSrvAppEF,
    Class_SrvAppEF, ciInternal, tmApartment);
end.
