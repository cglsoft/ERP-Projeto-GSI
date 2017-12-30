unit u_rmSrvAppAS;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, GSIServidor_TLB, DB, Provider, SqlExpr, Variants, FMTBcd, StdVcl;

type
  TSrvAppAS = class(TRemoteDataModule, ISrvAppAS)
    sqldtsUsuario: TSQLDataSet;
    sqldtsDireito: TSQLDataSet;
    sqldtsUsuarioDireito: TSQLDataSet;
    dsprvUsuario: TDataSetProvider;
    dsprvDireito: TDataSetProvider;
    dsUsuariosLink: TDataSource;
    sqldtsDicionario: TSQLDataSet;
    sqldtsDicionarioDICIONARIOID: TBCDField;
    sqldtsDicionarioNOMETABELA: TStringField;
    sqldtsDicionarioNOMECAMPO: TStringField;
    sqldtsDicionarioNOVONOMECAMPO: TStringField;
    sqldtsDicionarioITENS: TStringField;
    sqldtsDicionarioTITULOITENS: TStringField;
    dsprvDicionario: TDataSetProvider;
    dsprvUserAtivo: TDataSetProvider;
    sqldtsUserAtivo: TSQLDataSet;
    sqldtsUsuarioUSUARIOID: TStringField;
    sqldtsUsuarioENTIDADEID: TBCDField;
    sqldtsUsuarioSENHA: TStringField;
    sqldtsUsuarioREQUERSENHA: TBCDField;
    sqldtsUsuarioBLOQUEADO: TBCDField;
    sqldtsUsuarioBLOQMSG: TStringField;
    sqldtsUsuarioFOTO: TBlobField;
    sqldtsUsuarioL_NOME: TStringField;
    sqldtsUsuarioACESSOTOTAL: TBCDField;
    sqldtsUsuarioDireitoUSUARIOID: TStringField;
    sqldtsUsuarioDireitoDIREITOID: TStringField;
    sqldtsUsuarioDireitoDIREITOSECUNDARIOID: TStringField;
    sqldtsDireitoDIREITOID: TStringField;
    sqldtsDireitoDIREITOSECUNDARIOID: TStringField;
    sqldtsDireitoTIPO: TStringField;
    sqldtsDireitoDESCRICAO: TStringField;
    sqldtsUserAtivoUSERATIVOID: TBCDField;
    sqldtsUserAtivoUSUARIOID: TStringField;
    sqldtsUserAtivoDATACONECCAO: TSQLTimeStampField;
    sqldtsUserAtivoIP: TStringField;
    sqldtsUserAtivoNOMEMAQUINA: TStringField;
    sqldtsUsuarioMUDARSENHA: TBCDField;
    sqldtsConfig: TSQLDataSet;
    dsprvConfig: TDataSetProvider;
    sqldtsConfigTIPOOSID: TStringField;
    sqldtsConfigL_TIPOOS_ABERTURA: TStringField;
    sqldtsConfigFILIALID: TBCDField;
    sqldtsConfigL_FILIAL: TStringField;
    sqldtsConfigTIPOOSGARANTIAID: TStringField;
    sqldtsConfigL_TIPOOS_GARANTIA: TStringField;
    sqldtsConfigSTATUS: TBCDField;
    sqldtsConfigDIRETORIOEXPORT: TStringField;
    sqldtsConfigMESATUAL: TBCDField;
    sqldtsConfigVLRDIARIA: TBCDField;
    sqldtsConfigVLRREFEICOES: TBCDField;
    sqldtsConfigVLRKM: TBCDField;
    sqldtsConfigKMID: TBCDField;
    sqldtsConfigL_KM: TStringField;
    sqldtsConfigADIANTAMENTOID: TBCDField;
    sqldtsConfigL_ADIANTAMENTO: TStringField;
    sqldtsConfigMEMOPAGARID: TBCDField;
    sqldtsConfigL_MEMOPAGAR: TStringField;
    sqldtsConfigMEMORECEBERID: TBCDField;
    sqldtsConfigL_MEMORECEBER: TStringField;
    sqldtsConfigHORASCREDID: TBCDField;
    sqldtsConfigL_HORASCRED: TStringField;
    sqldtsConfigDIASVALIDADEOS: TBCDField;
    sqldtsConfigPP_MARGEMCABECALHO: TBCDField;
    sqldtsConfigPP_MARGEMPARAGRAFO: TBCDField;
    sqldtsConfigPP_ESTILOFONTE: TStringField;
    sqldtsConfigPP_TAMANHOFONTE: TBCDField;
    sqldtsConfigPP_IMPRIMIR: TBCDField;
    sqldtsConfigPP_VISUALIZAR: TBCDField;
    sqldtsConfigPP_DIRETORIODESTINO: TStringField;
    sqldtsConfigPP_NOMEGERENTE: TStringField;
    sqldtsConfigPP_CARGO: TStringField;
    sqldtsDicionarioNOMETABELAPESQ: TStringField;
    sqldtsDicionarioNOMECAMPOTABELAPESQ: TStringField;
    sqldtsConfigEMPRESAID: TBCDField;
    sqldtsConfigL_NOMEFANTASIA: TStringField;
    sqldtsPesquisa: TSQLDataSet;
    dsprvPesquisa: TDataSetProvider;
    sqldtsPesqGenerica: TSQLDataSet;
    dsprvPesqGenerica: TDataSetProvider;
    sqldtsPesquisaPESQUISAID: TBCDField;
    sqldtsPesquisaNOMEPESQUISA: TStringField;
    sqldtsPesquisaTABELADICIONARIOID: TStringField;
    sqldtsPesquisaISQL: TMemoField;
    sqldtsPesquisaDATACRIACAO: TSQLTimeStampField;
    sqldtsPesquisaDATAALTERACAO: TSQLTimeStampField;
    sqldtsPesquisaUSUARIO: TStringField;
    sqldtsUsuarioEMPRESAID: TBCDField;
    sqldtsUsuarioL_NOMEFANTASIA: TStringField;
    sqldtsConfigRS_DATAFECHAMENTO: TSQLTimeStampField;
    sqldtsUsuarioPASSWORD: TStringField;
    sqldtsUsuarioEMAIL: TStringField;
    sqldtsConfigHTMLPORTAL: TMemoField;
    sqldtsUsuarioPORTALVISAOID: TBCDField;
    sqldtsUsuarioNIVELACESSOPORTALID: TBCDField;
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
    function ISQL_AS: OleVariant; safecall;
  public
    { Public declarations }
  end;

var FSrvAppAS : TComponentFactory;

implementation

uses u_rmSrvAppGSI;

{$R *.DFM}

class procedure TSrvAppAS.UpdateRegistry(Register: Boolean; const ClassID, ProgID: string);
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

function TSrvAppAS.Get_dmSrvAppGSI: ISrvAppGSI;
begin
 Result := FSrvAppGSI;
end;

procedure TSrvAppAS.Set_dmSrvAppGSI(const Value: ISrvAppGSI);
begin
 FSrvAppGSI := Value;
end;

function TSrvAppAS.ISQL_AS: OleVariant;
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
          cdsGeral.FieldByName('SQL').AsString  := ((Components[i] as TDataSetProvider).DataSet as TSQLDataSet).CommandText;
          cdsGeral.Post;
         end;

  Result := cdsGeral.Data;
 finally
  FreeAndNil(cdsGeral);
 end;
end;

function TSrvAppAS.Get_SQLcnn: Integer;
begin
  Result := FSQLcnn;
end;

procedure TSrvAppAS.Set_SQLcnn(Value: Integer);
var i: integer;
begin
 FSQLcnn := Value;
 for i:=0 to ComponentCount-1 do
     if Components[i] is TSQLDataSet then
        TSQLDataSet(Components[i]).SQLConnection := TSQLConnection(FSQLcnn);
end;

initialization
 FSrvAppAS := TComponentFactory.Create(ComServer, TSrvAppAS,
    Class_SrvAppAS, ciInternal, tmApartment);
end.
