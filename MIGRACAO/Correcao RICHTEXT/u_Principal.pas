unit u_Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBXpress, FMTBcd, wwdbedit, Wwdotdot, StdCtrls, ComCtrls,
  DBCtrls, wwdbdatetimepicker, Mask, Buttons, DB, DBClient, Provider,
  SqlExpr, ExtCtrls, Grids, DBGrids;

type
  TForm1 = class(TForm)
    sqlcnnTOSHIBA: TSQLConnection;
    sqldtsNfs: TSQLDataSet;
    sqldtsNfsEMPRESAID: TBCDField;
    sqldtsNfsNFSID: TBCDField;
    sqldtsNfsDATAEMISSAOID: TSQLTimeStampField;
    sqldtsNfsCANCELADA: TBCDField;
    sqldtsNfsEXPORTADO: TBCDField;
    sqldtsNfsOSID: TStringField;
    sqldtsNfsPDSID: TBCDField;
    sqldtsNfsDATAPEDIDO: TSQLTimeStampField;
    sqldtsNfsREQUISITANTE: TStringField;
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
    sqldtsNfsL_CONDICAOPAGTO: TStringField;
    sqldtsNfsDESCRICAOCONDPAGTO: TMemoField;
    sqldtsNfsOBSERVACAOID: TBCDField;
    sqldtsNfsDESCRICAOOBSERVACAO: TMemoField;
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
    sqldtsNfsItem: TSQLDataSet;
    sqldtsNfsItemEMPRESAID: TBCDField;
    sqldtsNfsItemNFSID: TBCDField;
    sqldtsNfsItemDATAEMISSAOID: TSQLTimeStampField;
    sqldtsNfsItemITEMID: TBCDField;
    sqldtsNfsItemNATUREZAOPID: TBCDField;
    sqldtsNfsItemOBSERVACAOID: TBCDField;
    sqldtsNfsItemDESCRICAOOBSERVACAO: TMemoField;
    sqldtsNfsItemPRODUTOID: TBCDField;
    sqldtsNfsItemDESCRICAOPRODUTO: TStringField;
    sqldtsNfsItemQUANTIDADE: TBCDField;
    sqldtsNfsItemVLRPRECOUNITARIO: TBCDField;
    sqldtsNfsItemVLRPRECOTOTAL: TBCDField;
    sqldtsNfsItemPORCDESCONTO: TFMTBCDField;
    sqldtsNfsItemVLRDESCONTO: TBCDField;
    sqldtsNfsItemVLRPRECOUNITDESC: TBCDField;
    sqldtsNfsItemVLRPRECOTOTALDESC: TBCDField;
    sqldtsNfsItemNFEID: TBCDField;
    sqldtsNfsItemDATAEMISSAONFEID: TSQLTimeStampField;
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
    sqldtsNfsItemESTOQUEUTILIZADO: TStringField;
    sqldtsNfsItemL_NCMID: TStringField;
    sqldtsNfsItemL_UNIDADEID: TStringField;
    sqldtsNfsItemUSUARIO: TStringField;
    sqldtsNfsParcela: TSQLDataSet;
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
    sqldtsNfsServico: TSQLDataSet;
    sqldtsNfsServicoEMPRESAID: TBCDField;
    sqldtsNfsServicoNFSID: TBCDField;
    sqldtsNfsServicoDATAEMISSAOID: TSQLTimeStampField;
    sqldtsNfsServicoITEMID: TBCDField;
    sqldtsNfsServicoSERVICOID: TBCDField;
    sqldtsNfsServicoL_GRUPO: TStringField;
    sqldtsNfsServicoL_DESCRICAORESUMIDA: TStringField;
    sqldtsNfsServicoDESCRICAOSERVICO: TMemoField;
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
    dsprvNfs: TDataSetProvider;
    dsNfsLink: TDataSource;
    sqldtsNfsItemBar: TSQLDataSet;
    sqldtsNfsItemBarEMPRESAID: TBCDField;
    sqldtsNfsItemBarNFSID: TBCDField;
    sqldtsNfsItemBarDATAEMISSAOID: TSQLTimeStampField;
    sqldtsNfsItemBarITEMID: TBCDField;
    sqldtsNfsItemBarITEMBARID: TBCDField;
    sqldtsNfsItemBarPRODUTOID: TBCDField;
    sqldtsNfsItemBarPRODUTOITEMID: TBCDField;
    sqldtsNfsItemBarL_INCENTIVOICMS: TBCDField;
    sqldtsNfsItemBarL_NCMID: TStringField;
    sqldtsNfsItemBarQUANTIDADE: TBCDField;
    sqldtsNfsItemBarESTOQUEUTILIZADO: TStringField;
    sqldtsNfsItemBarUSUARIO: TStringField;
    dsNfsItem: TDataSource;
    cdsNfs: TClientDataSet;
    cdsNfsEMPRESAID: TBCDField;
    cdsNfsNFSID: TBCDField;
    cdsNfsDATAEMISSAOID: TSQLTimeStampField;
    cdsNfsNOME: TStringField;
    cdsNfsL_DESCRICAOOPERACAOUSUARIO: TStringField;
    cdsNfsOSID: TStringField;
    cdsNfsPDSID: TBCDField;
    cdsNfsDATAPEDIDO: TSQLTimeStampField;
    cdsNfsREQUISITANTE: TStringField;
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
    cdsNfsCANCELADA: TBCDField;
    cdsNfsEXPORTADO: TBCDField;
    cdsNfsL_CFOP: TStringField;
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
    cdsNfsItem: TClientDataSet;
    cdsNfsItemEMPRESAID: TBCDField;
    cdsNfsItemNFSID: TBCDField;
    cdsNfsItemDATAEMISSAOID: TSQLTimeStampField;
    cdsNfsItemITEMID: TBCDField;
    cdsNfsItemNATUREZAOPID: TBCDField;
    cdsNfsItemOBSERVACAOID: TBCDField;
    cdsNfsItemDESCRICAOOBSERVACAO: TMemoField;
    cdsNfsItemPRODUTOID: TBCDField;
    cdsNfsItemDESCRICAOPRODUTO: TStringField;
    cdsNfsItemQUANTIDADE: TBCDField;
    cdsNfsItemVLRPRECOUNITARIO: TBCDField;
    cdsNfsItemVLRPRECOTOTAL: TBCDField;
    cdsNfsItemPORCDESCONTO: TFMTBCDField;
    cdsNfsItemVLRDESCONTO: TBCDField;
    cdsNfsItemVLRPRECOUNITDESC: TBCDField;
    cdsNfsItemVLRPRECOTOTALDESC: TBCDField;
    cdsNfsItemNFEID: TBCDField;
    cdsNfsItemDATAEMISSAONFEID: TSQLTimeStampField;
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
    cdsNfsItemVLRBASEIPI: TBCDField;
    cdsNfsItemALIQUOTAIPI: TFMTBCDField;
    cdsNfsItemVLRIPI: TBCDField;
    cdsNfsItemVLRISENTASIPI: TBCDField;
    cdsNfsItemVLROUTRASIPI: TBCDField;
    cdsNfsItemTIPOIPI: TStringField;
    cdsNfsItemSITTRIBUTARIAFEDERAL: TBCDField;
    cdsNfsItemVLRPIS: TBCDField;
    cdsNfsItemALIQUOTAPIS: TFMTBCDField;
    cdsNfsItemVLRCOFINS: TBCDField;
    cdsNfsItemALIQUOTACOFINS: TFMTBCDField;
    cdsNfsItemARTIGO: TStringField;
    cdsNfsItemDATAINICIALIPI: TSQLTimeStampField;
    cdsNfsItemDATAFINALIPI: TSQLTimeStampField;
    cdsNfsItemPRODINCENTIVADO: TBCDField;
    cdsNfsItemESTOQUEUTILIZADO: TStringField;
    cdsNfsItemL_NCMID: TStringField;
    cdsNfsItemL_UNIDADEID: TStringField;
    cdsNfsItemUSUARIO: TStringField;
    cdsNfsItemsqldtsNfsItemBar: TDataSetField;
    cdsNfsParcela: TClientDataSet;
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
    cdsNfsServico: TClientDataSet;
    cdsNfsServicoEMPRESAID: TBCDField;
    cdsNfsServicoNFSID: TBCDField;
    cdsNfsServicoDATAEMISSAOID: TSQLTimeStampField;
    cdsNfsServicoITEMID: TBCDField;
    cdsNfsServicoSERVICOID: TBCDField;
    cdsNfsServicoL_GRUPO: TStringField;
    cdsNfsServicoL_DESCRICAORESUMIDA: TStringField;
    cdsNfsServicoDESCRICAOSERVICO: TMemoField;
    cdsNfsServicoVLRISS: TBCDField;
    cdsNfsServicoVLRSERVICO: TBCDField;
    cdsNfsServicoALIQUOTAPIS: TFMTBCDField;
    cdsNfsServicoVLRPIS: TBCDField;
    cdsNfsServicoALIQUOTACOFINS: TFMTBCDField;
    cdsNfsServicoVLRCOFINS: TBCDField;
    cdsNfsServicoVLRRETPIS: TBCDField;
    cdsNfsServicoVLRRETCOFINS: TBCDField;
    cdsNfsServicoVLRRETCSLL: TBCDField;
    cdsNfsServicoUSUARIO: TStringField;
    dsNfs: TDataSource;
    DataSource1: TDataSource;
    dsNfsParcela: TDataSource;
    dsNfsServico: TDataSource;
    cdsNfsItemBar: TClientDataSet;
    cdsNfsItemBarEMPRESAID: TBCDField;
    cdsNfsItemBarNFSID: TBCDField;
    cdsNfsItemBarDATAEMISSAOID: TSQLTimeStampField;
    cdsNfsItemBarITEMID: TBCDField;
    cdsNfsItemBarITEMBARID: TBCDField;
    cdsNfsItemBarPRODUTOID: TBCDField;
    cdsNfsItemBarPRODUTOITEMID: TBCDField;
    cdsNfsItemBarL_INCENTIVOICMS: TBCDField;
    cdsNfsItemBarL_NCMID: TStringField;
    cdsNfsItemBarQUANTIDADE: TBCDField;
    cdsNfsItemBarESTOQUEUTILIZADO: TStringField;
    cdsNfsItemBarUSUARIO: TStringField;
    dsNfsItemBar: TDataSource;
    sqldtsNfe: TSQLDataSet;
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
    sqldtsNfeItem: TSQLDataSet;
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
    sqldtsNfeItemNFSID: TBCDField;
    sqldtsNfeItemDATAEMISSAONFSID: TSQLTimeStampField;
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
    sqldtsNfeItemL_NCMID: TStringField;
    sqldtsNfeItemL_UNIDADEID: TStringField;
    sqldtsNfeItemUSUARIO: TStringField;
    dsprvNfe: TDataSetProvider;
    dsNfeLink: TDataSource;
    sqldtsNfeItemBar: TSQLDataSet;
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
    sqldtsNfeItemBarQUANTIDADE: TBCDField;
    sqldtsNfeItemBarESTOQUEUTILIZADO: TStringField;
    sqldtsNfeItemBarUSUARIO: TStringField;
    dsNfeItemLink: TDataSource;
    cdsNfe: TClientDataSet;
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
    cdsNfeItem: TClientDataSet;
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
    cdsNfeItemNFSID: TBCDField;
    cdsNfeItemDATAEMISSAONFSID: TSQLTimeStampField;
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
    cdsNfeItemL_NCMID: TStringField;
    cdsNfeItemL_UNIDADEID: TStringField;
    cdsNfeItemUSUARIO: TStringField;
    cdsNfeItemsqldtsNfeItemBar: TDataSetField;
    dsNfe: TDataSource;
    dsNfeItem: TDataSource;
    cdsNfeItemBar: TClientDataSet;
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
    cdsNfeItemBarQUANTIDADE: TBCDField;
    cdsNfeItemBarESTOQUEUTILIZADO: TStringField;
    cdsNfeItemBarUSUARIO: TStringField;
    dsNfeItemBar: TDataSource;
    pgctrlNOTA: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Memo1: TMemo;
    DBMemo1: TDBMemo;
    DBRichEdit1: TDBRichEdit;
    DBEdit53: TDBEdit;
    Label62: TLabel;
    wwDBDateTimePicker4: TwwDBDateTimePicker;
    Label3: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    Label61: TLabel;
    DBEdit3: TDBEdit;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label9: TLabel;
    Label60: TLabel;
    DBEdit2: TDBEdit;
    Label33: TLabel;
    wwDBComboDlg6: TwwDBComboDlg;
    Label5: TLabel;
    Label12: TLabel;
    Label34: TLabel;
    Label6: TLabel;
    Label55: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    DBEdit8: TDBEdit;
    DBRadioGroup5: TDBRadioGroup;
    DBEdit47: TDBEdit;
    GroupBox11: TGroupBox;
    DBRichEdit2: TDBRichEdit;
    DBRichEdit3: TDBRichEdit;
    BitBtn1: TBitBtn;
    mktPesquisa: TMaskEdit;
    DBNavigator1: TDBNavigator;
    BitBtn2: TBitBtn;
    wwdtpcktPosicao1: TwwDBDateTimePicker;
    Label2: TLabel;
    BitBtn3: TBitBtn;
    Label4: TLabel;
    wwdtpcktPosicao2: TwwDBDateTimePicker;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    chkbxAtualizaBD: TCheckBox;
    mktNFS_CDS: TMaskEdit;
    lblPesquisar: TLabel;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    TabSheet3: TTabSheet;
    GroupBox1: TGroupBox;
    DBRichEdit4: TDBRichEdit;
    DBMemo4: TDBMemo;
    Memo4: TMemo;
    sqldtsObservacao: TSQLDataSet;
    sqldtsObservacaoOBSERVACAOID: TBCDField;
    sqldtsObservacaoDESCRICAO: TMemoField;
    sqldtsObservacaoUSUARIO: TStringField;
    dsprvObservacao: TDataSetProvider;
    cdsObservacao: TClientDataSet;
    cdsObservacaoOBSERVACAOID: TBCDField;
    cdsObservacaoDESCRICAO: TMemoField;
    cdsObservacaoUSUARIO: TStringField;
    dsObservacao: TDataSource;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure cdsNfsAfterPost(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure cdsNfeAfterPost(DataSet: TDataSet);
    procedure cdsObservacaoAfterPost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Pesq1, Pesq2, Pesq3 : String;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
 case pgctrlNOTA.ActivePageIndex  of
 0 : begin
      if cdsNfs.Active then
         cdsNfs.DeleteIndex('idx');
      cdsNFS.Close;
      cdsNfs.CommandText := Pesq1 + ' AND EF_NFS.NFSID = ' + mktPesquisa.Text;
      cdsNfs.Open;
      cdsNfs.AddIndex('idx','NFSID',[ixDescending],'','',0);
      DBNavigator1.DataSource := dsNfs;
     end;
 1 : begin
      if cdsNfe.Active then
         cdsNfe.DeleteIndex('idx');

      cdsNfs.PacketRecords := 1;
      cdsNfe.Close;
      cdsNfe.CommandText := Pesq2 + ' AND EF_NFE.NFEID = ' + mktPesquisa.Text ;
      cdsNfe.Open;
      cdsNfe.AddIndex('idx','NFEID',[ixDescending],'','',0);
      DBNavigator1.DataSource := dsNfe;
     end;
 2 : begin
      if cdsObservacao.Active then
         cdsObservacao.DeleteIndex('idx');
      cdsObservacao.Close;
      cdsObservacao.CommandText := Pesq3 + ' AND EF_OBSERVACAO.OBSERVACAOID = ' + mktPesquisa.Text ;
      cdsObservacao.Open;
      cdsObservacao.AddIndex('idx','OBSERVACAOID',[ixDescending],'','',0);
      DBNavigator1.DataSource := dsObservacao;
     end;
 end;

end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
 case pgctrlNOTA.ActivePageIndex  of
 0 : begin
      cdsNFS.DisableControls;
      try
       cdsNfs.Edit;
       cdsNfsDESCRICAOOBSERVACAO.Value := DBRichEdit1.Text;
       cdsNfs.Post;
      finally
       cdsNFS.EnableControls;
      end;
     end;
 1 : begin
      cdsNFE.DisableControls;
      try
       cdsNfe.Edit;
       cdsNfeDESCRICAOIMPORTACAO.Value := DBRichEdit2.Text;
       cdsNfeDESCRICAOOBSERVACAO.Value := DBRichEdit3.Text;
       cdsNfE.Post;
      finally
       cdsNFE.EnableControls;
      end;
     end;
 2 : begin
      cdsObservacao.DisableControls;
      try
       cdsObservacao.Edit;
       cdsObservacaoDESCRICAO.Value := DBRichEdit4.Text;
       cdsObservacao.Post;
      finally
       cdsObservacao.EnableControls;
      end;
     end;

 end;


end;

procedure TForm1.cdsNfsAfterPost(DataSet: TDataSet);
begin
 if chkbxAtualizaBD.Checked then
    begin
     if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
        ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
    end;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
var
begin
 case pgctrlNOTA.ActivePageIndex of
 0 : begin
      if cdsNfs.Active then
         cdsNfs.DeleteIndex('idx');
      cdsNfs.Close;
      cdsNfs.CommandText := Pesq1 + ' AND EF_NFS.DATAEMISSAOID >= ' + QuotedStr( DateToStr(  wwdtpcktPosicao1.Date ) ) +
                                    ' AND EF_NFS.DATAEMISSAOID <= ' + QuotedStr( DateToStr(  wwdtpcktPosicao2.Date ) );
      cdsNfs.Open;

      convesavetofile ( cdsNfs.CommandText )
      cdsNfs.AddIndex('idx','NFSID',[ixDescending],'','',0);
      DBNavigator1.DataSource := dsNfs;
     end;
 1 : begin
      if cdsNfe.Active then
         cdsNfe.DeleteIndex('idx');
      cdsNfe.Close;
      cdsNfe.CommandText := Pesq2 + ' AND EF_NFE.DATAEMISSAOID >= ' + QuotedStr( DateToStr(  wwdtpcktPosicao1.Date ) ) +
                                    ' AND EF_NFE.DATAEMISSAOID <= ' + QuotedStr( DateToStr(  wwdtpcktPosicao2.Date ) );
      cdsNfe.Open;
      cdsNfs.PacketRecords := 1;
      cdsNfe.AddIndex('idx','NFEID',[ixDescending],'','',0);
      DBNavigator1.DataSource := dsNfe;
     end;
 2 : begin
      if cdsObservacao.Active then
         cdsObservacao.DeleteIndex('idx');
      cdsObservacao.Close;
      cdsObservacao.CommandText := Pesq3;
      cdsObservacao.Open;
      cdsNfs.PacketRecords := 1;
      cdsObservacao.AddIndex('idx','OBSERVACAOID',[ixDescending],'','',0);
      DBNavigator1.DataSource := dsObservacao;
     end;


 end;

end;

procedure TForm1.BitBtn4Click(Sender: TObject);
begin
 case pgctrlNOTA.ActivePageIndex  of
 0 : begin
      try
       // cdsNFS.DisableControls;
       while not cdsNfs.Eof  do
       begin
        cdsNfs.Edit;
        cdsNfsDESCRICAOOBSERVACAO.Value := DBRichEdit1.Text;
        Memo1.Text := DBRichEdit1.Text;
        cdsNfs.Post;

        cdsNfs.Next;
       end;

      finally
       // cdsNFS.EnableControls;
      end;
     end;
 1 : begin
      try
       // cdsNFE.DisableControls;
       while not cdsNfe.Eof  do
       begin
        cdsNfe.Edit;
        cdsNfeDESCRICAOIMPORTACAO.Value := DBRichEdit2.Text;
        cdsNfeDESCRICAOOBSERVACAO.Value := DBRichEdit3.Text;
        cdsNfe.Post;
        cdsNfe.Next;
       end;

      finally
       // cdsNFS.EnableControls;
      end;
     end;
 2 : begin
      try
       while not cdsObservacao.Eof  do
       begin
        cdsObservacao.Edit;
        cdsObservacaoDESCRICAO.Value := DBRichEdit4.Text;
        cdsObservacao.Post;
        cdsObservacao.Next;
       end;

      finally
       // cdsObservacao.EnableControls;
      end;
     end;



 end;



end;

procedure TForm1.BitBtn5Click(Sender: TObject);
begin
 case pgctrlNOTA.ActivePageIndex  of
 0 : cdsNfs.FindKey( [mktNFS_CDS.Text] ) ;
 1 : cdsNfE.FindKey( [mktNFS_CDS.Text] ) ;
 2 : cdsObservacao.FindKey( [mktNFS_CDS.Text] ) ;
 end;
end;

procedure TForm1.cdsNfeAfterPost(DataSet: TDataSet);
begin
 if chkbxAtualizaBD.Checked then
    begin
     if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
        ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
    end;
end;

procedure TForm1.cdsObservacaoAfterPost(DataSet: TDataSet);
begin
 if chkbxAtualizaBD.Checked then
    begin
     if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
        ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
    end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 Pesq1 := sqldtsNfs.CommandText;
 Pesq2 := sqldtsNfe.CommandText;
 Pesq3 := sqldtsObservacao.CommandText;
end;

end.
