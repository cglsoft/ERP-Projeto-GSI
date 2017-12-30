unit u_rmSrvAppRS;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, GSIServidor_TLB, StdVcl, FMTBcd, Provider, DB, SqlExpr, Variants;

type
  TSrvAppRS = class(TRemoteDataModule, ISrvAppRS)
    sqldtsImpostoServico: TSQLDataSet;
    dsprvImpostoServico: TDataSetProvider;
    sqldtsImpostoServicoIMPOSTOSERVICOID: TBCDField;
    sqldtsImpostoServicoDESCRICAO: TStringField;
    sqldtsImpostoServicoVLRALIQUOTA: TBCDField;
    sqldtsImpostoServicoFRETE: TBCDField;
    sqldtsImpostoServicoUSUARIO: TStringField;
    sqldtsLimiteContribuicao: TSQLDataSet;
    dsprvLimiteContribuicao: TDataSetProvider;
    dsprvPrestador: TDataSetProvider;
    dsprvRecibo: TDataSetProvider;
    sqldtsPrestador: TSQLDataSet;
    sqldtsPrestadorReceb: TSQLDataSet;
    sqldtsRecibo: TSQLDataSet;
    sqldtsLimiteContribuicaoDATAVIGENCIA: TSQLTimeStampField;
    sqldtsLimiteContribuicaoVLRCONTRIBUICAO: TBCDField;
    sqldtsLimiteContribuicaoUSUARIO: TStringField;
    sqldtsPrestadorPRESTADORID: TBCDField;
    sqldtsPrestadorNOME: TStringField;
    sqldtsPrestadorCEPID: TBCDField;
    sqldtsPrestadorNUMERO: TStringField;
    sqldtsPrestadorCOMPLEMENTO: TStringField;
    sqldtsPrestadorENDERECO: TStringField;
    sqldtsPrestadorBAIRRO: TStringField;
    sqldtsPrestadorCIDADE: TStringField;
    sqldtsPrestadorSIGLAUFID: TStringField;
    sqldtsPrestadorCPFCNPJ: TStringField;
    sqldtsPrestadorINSCRPREFMUNICIPAL: TStringField;
    sqldtsPrestadorINSCRORGAOCLASSE: TStringField;
    sqldtsPrestadorINSCRINSS: TStringField;
    sqldtsPrestadorINSCRPIS: TStringField;
    sqldtsPrestadorTELEFONE: TStringField;
    sqldtsPrestadorFAX: TStringField;
    sqldtsPrestadorBENEFICIOTRIBTRANSP: TBCDField;
    sqldtsPrestadorUSUARIO: TStringField;
    dsPrestadorLink: TDataSource;
    sqldtsPrestadorRecebPRESTADORID: TBCDField;
    sqldtsPrestadorRecebITEMID: TBCDField;
    sqldtsPrestadorRecebDATAEXECUCAO: TSQLTimeStampField;
    sqldtsPrestadorRecebCPFCNPJ: TStringField;
    sqldtsPrestadorRecebRAZAOSOCIAL: TStringField;
    sqldtsPrestadorRecebVLRSERVICO: TBCDField;
    sqldtsPrestadorRecebVLRRETIDO: TBCDField;
    sqldtsPrestadorRecebUSUARIO: TStringField;
    sqldtsReciboRECIBOID: TBCDField;
    sqldtsReciboFILIALID: TBCDField;
    sqldtsReciboL_FILIAL: TStringField;
    sqldtsReciboDATACALCULO: TSQLTimeStampField;
    sqldtsReciboDATAVENCIMENTO: TSQLTimeStampField;
    sqldtsReciboPRESTADORID: TBCDField;
    sqldtsReciboL_NOME: TStringField;
    sqldtsReciboL_CEPID: TBCDField;
    sqldtsReciboL_NUMERO: TStringField;
    sqldtsReciboL_COMPLEMENTO: TStringField;
    sqldtsReciboL_ENDERECO: TStringField;
    sqldtsReciboL_BAIRRO: TStringField;
    sqldtsReciboL_CIDADE: TStringField;
    sqldtsReciboL_SIGLAUFID: TStringField;
    sqldtsReciboL_CPFCNPJ: TStringField;
    sqldtsReciboL_INSCRPREFMUNICIPAL: TStringField;
    sqldtsReciboL_INSCRORGAOCLASSE: TStringField;
    sqldtsReciboL_INSCRINSS: TStringField;
    sqldtsReciboL_INSCRPIS: TStringField;
    sqldtsReciboL_TELEFONE: TStringField;
    sqldtsReciboFRETE: TBCDField;
    sqldtsReciboIMPOSTOSERVICOID: TBCDField;
    sqldtsReciboVLRSERVICO: TBCDField;
    sqldtsReciboVLRIRRF: TBCDField;
    sqldtsReciboVLRISS: TBCDField;
    sqldtsReciboVLRINSS: TBCDField;
    sqldtsReciboVLRDESCONTO: TBCDField;
    sqldtsReciboVLRLIQUIDO: TBCDField;
    sqldtsReciboVLRBASEINSSEMPRESA: TBCDField;
    sqldtsReciboVLRINSSEMPRESA: TBCDField;
    sqldtsReciboDESCRICAOSERVICO: TMemoField;
    sqldtsReciboOBSERVACAO: TMemoField;
    sqldtsReciboUSUARIO: TStringField;
    sqldtsReciboL_NOMEFILIAL: TStringField;
    sqldtsReciboL_ENDERECOFILIAL: TStringField;
    sqldtsReciboL_NUMEROFILIAL: TStringField;
    sqldtsReciboL_CIDADEFILIAL: TStringField;
    sqldtsReciboL_CPEIDFILIAL: TBCDField;
    sqldtsReciboL_CPFCNPJFILIAL: TStringField;
    sqldtsReciboL_SIGLAUFIDFILIAL: TStringField;
  private
    { Private declarations }
    FSrvAppGSI : ISrvAppGSI;
    FSQLcnn: integer;
  protected
    class procedure UpdateRegistry(Register: Boolean; const ClassID, ProgID: string); override;
    function Get_dmSrvAppGSI: ISrvAppGSI; safecall;
    function Get_SQLcnn: Integer; safecall;
    procedure Set_dmSrvAppGSI(const Value: ISrvAppGSI); safecall;
    procedure Set_SQLcnn(Value: Integer); safecall;
    function ISQL_RS: OleVariant; safecall;
  public
    { Public declarations }
  end;

var FSrvAppRS : TComponentFactory;

implementation

uses u_rmSrvAppGSI;

{$R *.DFM}

class procedure TSrvAppRS.UpdateRegistry(Register: Boolean; const ClassID, ProgID: string);
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

function TSrvAppRS.Get_dmSrvAppGSI: ISrvAppGSI;
begin
 Result := FSrvAppGSI;
end;

function TSrvAppRS.Get_SQLcnn: Integer;
begin
 Result := FSQLcnn;
end;

procedure TSrvAppRS.Set_dmSrvAppGSI(const Value: ISrvAppGSI);
begin
 FSrvAppGSI := Value;
end;

procedure TSrvAppRS.Set_SQLcnn(Value: Integer);
var i: integer;
begin
  FSQLcnn := Value;
  for i:=0 to ComponentCount-1 do
     if Components[i] is TSQLDataSet then
        TSQLDataSet(Components[i]).SQLConnection := TSQLConnection(FSQLcnn);
end;

function TSrvAppRS.ISQL_RS: OleVariant;
var cdsGeral: TClientDataSet;
    i:integer;
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
         cdsGeral.FieldByName('SQL').AsString := ((Components[i] as TDataSetProvider).DataSet as TSQLDataSet).CommandText;
         cdsGeral.Post;
       end;

   Result := cdsGeral.Data;
  finally
   FreeAndNil(cdsGeral);
  end;
end;

initialization
 FSrvAppRS := TComponentFactory.Create(ComServer, TSrvAppRS,
    Class_SrvAppRS, ciInternal, tmApartment);
end.
