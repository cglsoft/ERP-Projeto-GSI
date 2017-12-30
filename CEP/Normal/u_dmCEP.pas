unit u_dmCEP;

interface

uses
  SysUtils, Classes, DBXpress, DB, SqlExpr, FMTBcd, Provider, DBClient,
  DBLocal, DBLocalS;

type
  TdmCEP = class(TDataModule)
    sqlconnCEP: TSQLConnection;
    sqlcds: TSQLClientDataSet;
    sqlGeral: TSQLQuery;
    dssqlcdsPesq: TDataSource;
    sqlPesq: TSQLQuery;
    sqlPesqENDERECO: TStringField;
    sqlPesqNOMEBAIRROLOGRADOURO: TStringField;
    sqlPesqNOMELOCALIDADE: TStringField;
    sqlPesqNOMEUF: TStringField;
    sqlPesqCEPID: TBCDField;
    sqlPesqNOMEPAISPORTUGUES: TStringField;
    dsprovPesq: TDataSetProvider;
    cdsPesq: TClientDataSet;
    cdsPesqENDERECO: TStringField;
    cdsPesqNOMEBAIRROLOGRADOURO: TStringField;
    cdsPesqNOMELOCALIDADE: TStringField;
    cdsPesqNOMEUF: TStringField;
    cdsPesqCEPID: TBCDField;
    cdsPesqNOMEPAISPORTUGUES: TStringField;
    sqlUF: TSQLQuery;
    sqlUFSIGLAUFID: TStringField;
    sqlUFSIGLAPAISID: TStringField;
    sqlUFNOMEUF: TStringField;
    sqlPesqSIGLAUFID: TStringField;
    cdsPesqSIGLAUFID: TStringField;
    procedure sqlcdsReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCEP: TdmCEP;

implementation

uses uReconcileErrorForm;

{$R *.dfm}

procedure TdmCEP.sqlcdsReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
 Action := HandleReconcileError( DataSet, UpdateKind, E);
end;

end.
