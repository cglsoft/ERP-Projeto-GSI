unit u_rmSrvAppFC;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, GSIServidor_TLB, StdVcl, FMTBcd, Provider, DB, SqlExpr, Variants;

type
  TSrvAppFC = class(TRemoteDataModule, ISrvAppFC)
    sqldtsImpostoServico: TSQLDataSet;
    dsprvImpostoServico: TDataSetProvider;
    sqldtsLimiteContribuicao: TSQLDataSet;
    dsprvLimiteContribuicao: TDataSetProvider;
    sqldtsPrestador: TSQLDataSet;
    dsprvPrestador: TDataSetProvider;
    sqldtsPrestadorReceb: TSQLDataSet;
    dsPrestadorLink: TDataSource;
    sqldtsRecibo: TSQLDataSet;
    dsprvRecibo: TDataSetProvider;
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
    function ISQL_FC: OleVariant; safecall;
  public
    { Public declarations }
  end;

var FSrvAppFC : TComponentFactory;

implementation

{$R *.DFM}

class procedure TSrvAppFC.UpdateRegistry(Register: Boolean; const ClassID, ProgID: string);
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

function TSrvAppFC.Get_dmSrvAppGSI: ISrvAppGSI;
begin
 Result := FSrvAppGSI;
end;

function TSrvAppFC.Get_SQLcnn: Integer;
begin
 Result := FSQLcnn;
end;

procedure TSrvAppFC.Set_dmSrvAppGSI(const Value: ISrvAppGSI);
begin
 FSrvAppGSI := Value;
end;

procedure TSrvAppFC.Set_SQLcnn(Value: Integer);
var i: integer;
begin
  FSQLcnn := Value;
  for i:=0 to ComponentCount-1 do
     if Components[i] is TSQLDataSet then
        TSQLDataSet(Components[i]).SQLConnection := TSQLConnection(FSQLcnn);
end;

function TSrvAppFC.ISQL_FC: OleVariant;
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
 FSrvAppFC := TComponentFactory.Create(ComServer, TSrvAppFC,
    Class_SrvAppFC, ciInternal, tmApartment);
end.
