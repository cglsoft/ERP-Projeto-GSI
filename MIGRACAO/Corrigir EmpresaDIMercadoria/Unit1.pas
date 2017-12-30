unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBXpress, FMTBcd, DBClient, DB, Provider, SqlExpr, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    sqlcnnTOSHIBA: TSQLConnection;
    sqldtsDeclaracao: TSQLDataSet;
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
    sqldtsDeclaracaoVLRDESPESAICMS: TBCDField;
    sqldtsDeclaracaoVLRDESPESADESEMB: TBCDField;
    sqldtsDeclaracaoVLRDESPESATOTAL: TBCDField;
    sqldtsDeclaracaoNFEID: TStringField;
    sqldtsDeclaracaoDATAEMISSAONFEID: TSQLTimeStampField;
    sqldtsDeclaracaoDATAENTRADANFEID: TSQLTimeStampField;
    sqldtsDeclaracaoNATUREZAOPID: TBCDField;
    sqldtsDeclaracaoL_CFOP: TStringField;
    sqldtsDeclaracaoL_DESCRICAONATUREZAUSUARIO: TStringField;
    sqldtsDeclaracaoL_DESCRICAONATUREZANOTA: TStringField;
    sqldtsDeclaracaoVLRTOTALCIF: TBCDField;
    sqldtsDeclaracaoVLRTOTALPESO: TBCDField;
    sqldtsDeclaracaoVLRTOTALFOBUS: TBCDField;
    sqldtsDeclaracaoVLRTOTALFOB: TBCDField;
    sqldtsDeclaracaoVLRFRETE: TBCDField;
    sqldtsDeclaracaoVLRSEGUROINTERNAC: TBCDField;
    sqldtsDeclaracaoTAXAFOBANTECIPADO: TBCDField;
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
    sqldtsAdicao: TSQLDataSet;
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
    sqldtsMercadoria: TSQLDataSet;
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
    sqldtsMercadoriaVLRCIF: TBCDField;
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
    dsprvDeclaracao: TDataSetProvider;
    dsDILink: TDataSource;
    dsprvAdicao: TDataSetProvider;
    dsprvMercadoria: TDataSetProvider;
    cdsDI: TClientDataSet;
    cdsAdicao: TClientDataSet;
    cdsMercadoria: TClientDataSet;
    dsDI: TDataSource;
    cdsDIDECLARACAOID: TBCDField;
    cdsDIEMPRESAID: TBCDField;
    cdsDIL_NOMEFANTASIA: TStringField;
    cdsDIDIID: TStringField;
    cdsDIDATAREGISTRO: TSQLTimeStampField;
    cdsDIREFERENCIA: TStringField;
    cdsDIDATALIBERACAO: TSQLTimeStampField;
    cdsDITIPOMOEDAFRETE: TStringField;
    cdsDIIMPORTADORID: TBCDField;
    cdsDIL_NOMEIMPORTADOR: TStringField;
    cdsDIFORNECEDORID: TBCDField;
    cdsDIL_NOMEFORNECEDOR: TStringField;
    cdsDICONTACONTABILID: TStringField;
    cdsDICENTROCUSTOID: TStringField;
    cdsDINUMCONTRATOCAMBIO: TStringField;
    cdsDIDATACONTRATO: TSQLTimeStampField;
    cdsDIOBSPEDIDO: TMemoField;
    cdsDICREDITARICMS: TBCDField;
    cdsDIAGREGARVLRFOB: TBCDField;
    cdsDIRESTITUIRICMS: TBCDField;
    cdsDIAGREGARFRETE: TBCDField;
    cdsDIFOBANTECIPADO: TBCDField;
    cdsDIADMISSAOTEMP: TBCDField;
    cdsDILIBERARESTOQUE: TBCDField;
    cdsDIATIVOFIXO: TBCDField;
    cdsDIFRETEPAGO: TBCDField;
    cdsDIDESPACHANTEID: TBCDField;
    cdsDIL_NOMEDESPACHANTE: TStringField;
    cdsDINUMDEMONSDESPESA: TStringField;
    cdsDIVLRDESPESAII: TBCDField;
    cdsDIVLRDESPESAICMS: TBCDField;
    cdsDIVLRDESPESADESEMB: TBCDField;
    cdsDIVLRDESPESATOTAL: TBCDField;
    cdsDINFEID: TStringField;
    cdsDIDATAEMISSAONFEID: TSQLTimeStampField;
    cdsDIDATAENTRADANFEID: TSQLTimeStampField;
    cdsDINATUREZAOPID: TBCDField;
    cdsDIL_CFOP: TStringField;
    cdsDIL_DESCRICAONATUREZAUSUARIO: TStringField;
    cdsDIL_DESCRICAONATUREZANOTA: TStringField;
    cdsDIVLRTOTALCIF: TBCDField;
    cdsDIVLRTOTALPESO: TBCDField;
    cdsDIVLRTOTALFOBUS: TBCDField;
    cdsDIVLRTOTALFOB: TBCDField;
    cdsDIVLRFRETE: TBCDField;
    cdsDIVLRSEGUROINTERNAC: TBCDField;
    cdsDITAXAFOBANTECIPADO: TBCDField;
    cdsDITAXASISCOMEX: TBCDField;
    cdsDIVLRTOTALIPI: TBCDField;
    cdsDIVLRTOTALICMS: TBCDField;
    cdsDIVLRTOTALCUSTOAPARELHO: TBCDField;
    cdsDIVLRTOTALCUSTOPECA: TBCDField;
    cdsDIVLRTOTALMAQEQUIP: TBCDField;
    cdsDIVLRTOTALFERRAMENTAL: TBCDField;
    cdsDIVLRTOTALMOVUTENSILIOS: TBCDField;
    cdsDIVLRTOTALADMTEMP: TBCDField;
    cdsDIVLRTOTALPIS: TBCDField;
    cdsDIVLRTOTALCOFINS: TBCDField;
    cdsDIVLRTOTALFOB2: TBCDField;
    cdsDIVLRTOTALFOBANT: TBCDField;
    cdsDIVLRTOTALCIF2: TBCDField;
    cdsDIVLRTOTALCIFANT: TBCDField;
    cdsDIVLRTOTALDESPDESP: TBCDField;
    cdsDIVLRTOTALDESPGI: TBCDField;
    cdsDIVLRTOTALSEGUROTRANSP: TBCDField;
    cdsDIVLRTOTALIRRFPAGAR: TBCDField;
    cdsDIVLRTOTALFRETELOCAL: TBCDField;
    cdsDIUSUARIO: TStringField;
    cdsDIsqldtsMercadoria: TDataSetField;
    cdsDIsqldtsAdicao: TDataSetField;
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
    cdsMercadoriaVLRCIF: TBCDField;
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
    procedure cdsDIReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses u_reconci;

{$R *.dfm}

procedure TForm1.cdsDIReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
 Action := HandleReconcileError(DataSet, UpdateKind, E );
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
 cdsDI.Open;
 cdsDI.First;
 while not cdsDI.Eof do
 begin
  if cdsDIEMPRESAID.IsNull then
     begin
      cdsDI.Next;
      Continue;
     end;

  cdsMercadoria.First;
  while not cdsMercadoria.Eof do
  begin
   cdsMercadoria.Edit;
   cdsMercadoriaEMPRESAID.Value := cdsDIEMPRESAID.Value;
   cdsMercadoria.Post;
   cdsMercadoria.ApplyUpdates(-1);

   cdsMercadoria.Next;
  end;

  cdsDI.Next
 end;

end;

end.
