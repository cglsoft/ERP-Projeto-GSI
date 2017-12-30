unit u_rmSrvAppGR;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, GSIServidor_TLB, StdVcl, FMTBcd, Provider, DB, SqlExpr;

type
  TSrvAppGR = class(TRemoteDataModule, ISrvAppGR)
    sqldtsConfigEleicao: TSQLDataSet;
    dsprvConfigEleicao: TDataSetProvider;
    sqldtsConfigEleicaoTIPOELEICAOATUALD: TBCDField;
    sqldtsConfigEleicaoL_DESCRICAOTIPOELEICAO: TStringField;
    sqldtsConfigEleicaoBLOQUEARVOTACAO: TBCDField;
    sqldtsConfigEleicaoDTINICIOVIGENCIA: TSQLTimeStampField;
    sqldtsConfigEleicaoDTFINALVIGENCIA: TSQLTimeStampField;
    sqldtsConfigEleicaoUSUARIO: TStringField;
    sqldtsGrupoEleicao: TSQLDataSet;
    dsprvGrupoEleicao: TDataSetProvider;
    sqldtsGrupoEleicaoGRUPOELEICAOID: TBCDField;
    sqldtsGrupoEleicaoDESCRICAO: TStringField;
    sqldtsGrupoEleicaoUSUARIO: TStringField;
    sqldtsEleitor: TSQLDataSet;
    dsprvEleitor: TDataSetProvider;
    sqldtsEleitorELEITORID: TBCDField;
    sqldtsEleitorL_CPFCNPJ: TStringField;
    sqldtsEleitorL_NOMEELEITOR: TStringField;
    sqldtsEleitorGRUPOELEICAOID: TBCDField;
    sqldtsEleitorL_DESCRICAOGRUPOELEICAO: TStringField;
    sqldtsEleitorUSUARIO: TStringField;
    sqldtsTipoEleicao: TSQLDataSet;
    dsprvTipoEleicao: TDataSetProvider;
    sqldtsTipoEleicaoTIPOELEICAOID: TBCDField;
    sqldtsTipoEleicaoDESCRICAO: TStringField;
    sqldtsTipoEleicaoDTINICIOVIGENCIA: TSQLTimeStampField;
    sqldtsTipoEleicaoDTFINALVIGENCIA: TSQLTimeStampField;
    sqldtsTipoEleicaoUSUARIO: TStringField;
    sqldtsVoto: TSQLDataSet;
    dsprvVoto: TDataSetProvider;
    sqldtsVotoTIPOELEICAOID: TBCDField;
    sqldtsVotoL_DESCRICAOTIPOELEICAO: TStringField;
    sqldtsVotoELEITORID: TBCDField;
    sqldtsVotoL_CPFCNPJELEITOR: TStringField;
    sqldtsVotoL_NOMEELEITOR: TStringField;
    sqldtsVotoCANDIDATOID: TBCDField;
    sqldtsVotoL_CPFCNPJCANDIDATO: TStringField;
    sqldtsVotoL_NOMECANDIDATO: TStringField;
    sqldtsVotoDATAVOTO: TSQLTimeStampField;
    sqldtsVotoUSUARIO: TStringField;
    sqldtsVotoL_DESCRICAOGRUPOELEICAO: TStringField;
    sqldtsEleitorELEGIVEL: TBCDField;
    sqldtsVotoGRUPOELEICAOID: TBCDField;
    sqldtsNomeProg: TSQLDataSet;
    dsprvNomeProg: TDataSetProvider;
    sqldtsNomeProgNOMEPROGID: TBCDField;
    sqldtsNomeProgDESCRICAO: TStringField;
    sqldtsNomeProgUSUARIO: TStringField;
    sqldtsVotoNOMEPROGID: TBCDField;
    sqldtsVotoL_DESCRICAONOMEPROG: TStringField;
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
    function ISQL_GR: OleVariant; safecall;
  public
    { Public declarations }
  end;

var FSrvAppGR : TComponentFactory;

implementation

{$R *.DFM}

class procedure TSrvAppGR.UpdateRegistry(Register: Boolean; const ClassID, ProgID: string);
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

function TSrvAppGR.Get_dmSrvAppGSI: ISrvAppGSI;
begin
  Result := FSrvAppGSI;
end;

function TSrvAppGR.Get_SQLcnn: Integer;
begin
 Result := FSQLcnn;
end;

procedure TSrvAppGR.Set_dmSrvAppGSI(const Value: ISrvAppGSI);
begin
 FSrvAppGSI := Value;
end;

procedure TSrvAppGR.Set_SQLcnn(Value: Integer);
var i: integer;
begin
 FSQLcnn := Value;
 for i:=0 to ComponentCount-1 do
     if Components[i] is TSQLDataSet then
        TSQLDataSet(Components[i]).SQLConnection := TSQLConnection(FSQLcnn)
     else if Components[i] is TSQLStoredProc then
        TSQLStoredProc(Components[i]).SQLConnection := TSQLConnection(FSQLcnn);
end;

function TSrvAppGR.ISQL_GR: OleVariant;
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

initialization
  FSrvAppGR := TComponentFactory.Create(ComServer, TSrvAppGR,
    Class_SrvAppGR, ciInternal, tmApartment);
end.
