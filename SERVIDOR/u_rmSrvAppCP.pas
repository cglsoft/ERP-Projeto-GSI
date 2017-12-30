unit u_rmSrvAppCP;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, GSIServidor_TLB, StdVcl, Variants, SqlExpr, DB, Provider,
  FMTBcd;

type
  TSrvAppCP = class(TRemoteDataModule, ISrvAppCP)
    sqldsPesquisa: TSQLDataSet;
    sqldsPesquisaSIGLAUFID: TStringField;
    sqldsPesquisaTIPOLOGRADOURO: TStringField;
    sqldsPesquisaPREPOSICAO: TStringField;
    sqldsPesquisaTITULOPATENTE: TStringField;
    sqldsPesquisaNOMELOGRADOURO: TStringField;
    sqldsPesquisaBAIRROLOGRADOURO: TStringField;
    sqldsPesquisaNOMELOCALIDADE: TStringField;
    sqldsPesquisaNOMEUF: TStringField;
    sqldsPesquisaCEPID: TBCDField;
    sqldsPesquisaNOMEPAISPORTUGUES: TStringField;
    dsprvPesquisa: TDataSetProvider;
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
    function ISQL_CP: OleVariant; safecall;
  public
    { Public declarations }
  end;

var FSrvAppCP : TComponentFactory;

implementation

uses u_rmSrvAppGSI;

{$R *.DFM}

class procedure TSrvAppCP.UpdateRegistry(Register: Boolean; const ClassID, ProgID: string);
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

function TSrvAppCP.Get_dmSrvAppGSI: ISrvAppGSI;
begin
 Result := FSrvAppGSI;
end;

function TSrvAppCP.Get_SQLcnn: Integer;
begin
 Result := FSQLcnn;
end;

procedure TSrvAppCP.Set_dmSrvAppGSI(const Value: ISrvAppGSI);
begin
 FSrvAppGSI := Value;
end;

procedure TSrvAppCP.Set_SQLcnn(Value: Integer);
var i: integer;
begin
 FSQLcnn := Value;
 for i:=0 to ComponentCount-1 do
     if Components[i] is TSQLDataSet then
        TSQLDataSet(Components[i]).SQLConnection := TSQLConnection(FSQLcnn);
end;

function TSrvAppCP.ISQL_CP: OleVariant;
var cdsGeral: TClientDataSet;
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

initialization
 FSrvAppCP := TComponentFactory.Create(ComServer, TSrvAppCP,
    Class_SrvAppCP, ciInternal, tmApartment);
end.
