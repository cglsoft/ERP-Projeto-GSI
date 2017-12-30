unit u_rmSrvAppFI;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, GSIServidor_TLB, StdVcl, FMTBcd, Provider, DB, SqlExpr;

type
  TsrvAppFI = class(TRemoteDataModule, IsrvAppFI)
    sqldtsImpostoRetido: TSQLDataSet;
    sqldtsAcao: TSQLDataSet;
    sqldtsFormaPagto: TSQLDataSet;
    sqldtsImpostoRetidoIMPOSTORETIDOID: TBCDField;
    sqldtsImpostoRetidoDESCRICAO: TStringField;
    sqldtsImpostoRetidoALIQUOTA: TFMTBCDField;
    sqldtsImpostoRetidoDATAVENCIMENTO: TSQLTimeStampField;
    sqldtsImpostoRetidoUSUARIO: TStringField;
    dsprvImpostoRetido: TDataSetProvider;
    dsprvAcao: TDataSetProvider;
    sqldtsFormaPagtoFORMAPAGTOID: TBCDField;
    sqldtsFormaPagtoDESCRICAO: TStringField;
    sqldtsFormaPagtoUSUARIO: TStringField;
    dsprvFormaPagto: TDataSetProvider;
    sqldtsTipoCobranca: TSQLDataSet;
    dsprvTipoCobranca: TDataSetProvider;
    sqldtsTipoCobrancaTIPOCOBRANCAID: TBCDField;
    sqldtsTipoCobrancaDESCRICAO: TStringField;
    sqldtsTipoCobrancaUSUARIO: TStringField;
    sqldtsFI: TSQLDataSet;
    sqldtsFIParcela: TSQLDataSet;
    dsFILink: TDataSource;
    dsprvFI: TDataSetProvider;
    sqldtsFIParcelaFIID: TBCDField;
    sqldtsFIParcelaPARCELAID: TBCDField;
    sqldtsFIParcelaDTVENCIMENTO: TSQLTimeStampField;
    sqldtsFIParcelaDTPRORROGACAO: TSQLTimeStampField;
    sqldtsFIParcelaFORMAPAGTOID: TBCDField;
    sqldtsFIParcelaL_DESCRFORMAPAGTO: TStringField;
    sqldtsFIParcelaTIPOCOBRANCAID: TBCDField;
    sqldtsFIParcelaL_DESCRTIPOCOBRANCA: TStringField;
    sqldtsFIParcelaBANCOID: TBCDField;
    sqldtsFIParcelaL_NOMEBANCO: TStringField;
    sqldtsFIParcelaL_NUMBANCO: TStringField;
    sqldtsFIParcelaL_AGENCIA: TStringField;
    sqldtsFIParcelaL_CONTA: TStringField;
    sqldtsFIParcelaOBSERVACAO: TMemoField;
    sqldtsFIParcelaCODIGOBARRASID: TStringField;
    sqldtsFIParcelaTITULOCONCESSIONARIA: TBCDField;
    sqldtsFIParcelaLINHADIGITAVEL: TStringField;
    sqldtsFIParcelaAGENCIACODIGOCEDENTE: TStringField;
    sqldtsFIParcelaNOSSONUMERO: TStringField;
    sqldtsFIParcelaVLRLIQDOC: TFMTBCDField;
    sqldtsFIParcelaCODIGOBARRAS: TStringField;
    sqldtsFIParcelaUSUARIO: TStringField;
    sqldtsFIParcelaClasse: TSQLDataSet;
    sqldtsFIParcelaClasseFIID: TBCDField;
    sqldtsFIParcelaClassePARCELAID: TBCDField;
    sqldtsFIParcelaClasseITEMID: TBCDField;
    sqldtsFIParcelaClasseCENTROCUSTOID: TBCDField;
    sqldtsFIParcelaClassePROJETOID: TBCDField;
    sqldtsFIParcelaClasseL_DESCRPROJETO: TStringField;
    sqldtsFIParcelaClasseVLRPAGAMENTO: TFMTBCDField;
    sqldtsFIParcelaClassePERCENTUALPAGTO: TFMTBCDField;
    sqldtsFIParcelaClasseUSUARIO: TStringField;
    dsFIParcelaLink: TDataSource;
    sqldtsFIRetencao: TSQLDataSet;
    sqldtsFIRetencaoFIID: TBCDField;
    sqldtsFIRetencaoITEMID: TBCDField;
    sqldtsFIRetencaoIMPOSTORETIDOID: TBCDField;
    sqldtsFIRetencaoL_DESCRIMPOSTO: TStringField;
    sqldtsFIRetencaoL_ALIQIMPOSTO: TFMTBCDField;
    sqldtsFIRetencaoVLRLIQUIDOID: TFMTBCDField;
    sqldtsFIRetencaoHISTORICO: TMemoField;
    sqldtsFIRetencaoUSUARIO: TStringField;
    sqldtsProjeto: TSQLDataSet;
    dsprvProjeto: TDataSetProvider;
    sqldtsProjetoPROJETOID: TBCDField;
    sqldtsProjetoDESCRICAO: TStringField;
    sqldtsProjetoUSUARIO: TStringField;
    sqldtsAcaoACAOID: TBCDField;
    sqldtsAcaoDESCRICAO: TStringField;
    sqldtsAcaoCONTACONTABILID: TStringField;
    sqldtsAcaoEXIGECENTROCUSTO: TBCDField;
    sqldtsAcaoRETEMIMPOSTO: TBCDField;
    sqldtsAcaoNUMDOCOBRIGATORIO: TBCDField;
    sqldtsAcaoMOVCONTASPAGAR: TBCDField;
    sqldtsAcaoMOVCONTASRECEBER: TBCDField;
    sqldtsAcaoMOVINFORMATIVO: TBCDField;
    sqldtsAcaoUSUARIO: TStringField;
    sqldtsFIFIID: TBCDField;
    sqldtsFIDATAREGISTRO: TSQLTimeStampField;
    sqldtsFIEMPRESAID: TBCDField;
    sqldtsFIL_NOMEEMPRESA: TStringField;
    sqldtsFIFILIALID: TBCDField;
    sqldtsFIL_NOMEFILIAL: TStringField;
    sqldtsFIACAOID: TBCDField;
    sqldtsFIL_DESCRICAOACAO: TStringField;
    sqldtsFIL_MOVCONTASPAGAR: TBCDField;
    sqldtsFIL_MOVCONTASRECEBER: TBCDField;
    sqldtsFIL_MOVINFORMATIVO: TBCDField;
    sqldtsFIFORNECEDORID: TBCDField;
    sqldtsFIL_NOMEFORNECEDOR: TStringField;
    sqldtsFINUMDOCID: TStringField;
    sqldtsFIDATAEMISSAOID: TSQLTimeStampField;
    sqldtsFISERIEDOC: TStringField;
    sqldtsFIDATAVENDOC: TSQLTimeStampField;
    sqldtsFICONDPAGTOID: TBCDField;
    sqldtsFIL_DESCRICAOCONDPAGTO: TStringField;
    sqldtsFIVLRDOC: TFMTBCDField;
    sqldtsFITIPOMOVIMENTO: TStringField;
    sqldtsFIDOCPGTOVISTA: TBCDField;
    sqldtsFIVLRLIQUIDO: TFMTBCDField;
    sqldtsFIHISTORICO: TMemoField;
    sqldtsFICONCILIADO: TBCDField;
    sqldtsFIUSUARIO: TStringField;
  private
    { Private declarations }
    FSrvAppGSI: ISrvAppGSI;
    FSQLcnn: integer;
  protected
    class procedure UpdateRegistry(Register: Boolean; const ClassID, ProgID: string); override;
    function Get_dmSrvAppGSI: ISrvAppGSI; safecall;
    function Get_SQLcnn: Integer; safecall;
    procedure Set_dmSrvAppGSI(const Value: ISrvAppGSI); safecall;
    procedure Set_SQLcnn(Value: Integer); safecall;
    function ISQL_FI: OleVariant; safecall;
  public
    { Public declarations }
  end;

var FsrvAppFI : TComponentFactory;

implementation

uses u_rmSrvAppGSI;

{$R *.DFM}


function TsrvAppFI.Get_dmSrvAppGSI: ISrvAppGSI;
begin
  Result := FSrvAppGSI;
end;

function TsrvAppFI.Get_SQLcnn: Integer;
begin
 Result := FSQLcnn;
end;

function TsrvAppFI.ISQL_FI: OleVariant;
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

procedure TsrvAppFI.Set_dmSrvAppGSI(const Value: ISrvAppGSI);
begin
 FSrvAppGSI := Value;
end;

procedure TsrvAppFI.Set_SQLcnn(Value: Integer);
var i: integer;
begin
 FSQLcnn := Value;
 for i:=0 to ComponentCount-1 do
     if Components[i] is TSQLDataSet then
        TSQLDataSet(Components[i]).SQLConnection := TSQLConnection(FSQLcnn)
     else if Components[i] is TSQLStoredProc then
        TSQLStoredProc(Components[i]).SQLConnection := TSQLConnection(FSQLcnn);
end;

class procedure TsrvAppFI.UpdateRegistry(Register: Boolean; const ClassID, ProgID: string);
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

initialization
 FSrvAppFI := TComponentFactory.Create(ComServer, TsrvAppFI,
    Class_srvAppFI, ciInternal, tmApartment);
end.
