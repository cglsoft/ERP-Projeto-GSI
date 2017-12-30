unit u_dmCEP;

interface

uses
 DB, DBClient, MConnect, SConnect, Classes;

type
  TdmCEP = class(TDataModule)
    cdsPesq: TClientDataSet;
    sktcnnCEP: TSocketConnection;
    dsPesq: TDataSource;
    cdsUF: TClientDataSet;
    cdsUFSIGLAUFID: TStringField;
    cdsUFSIGLAPAISID: TStringField;
    cdsUFNOMEUF: TStringField;
    cdsPesqSIGLAUFID: TStringField;
    cdsPesqTIPOLOGRADOURO: TStringField;
    cdsPesqPREPOSICAO: TStringField;
    cdsPesqTITULOPATENTE: TStringField;
    cdsPesqNOMELOGRADOURO: TStringField;
    cdsPesqBAIRROLOGRADOURO: TStringField;
    cdsPesqNOMELOCALIDADE: TStringField;
    cdsPesqNOMEUF: TStringField;
    cdsPesqCEPID: TBCDField;
    cdsPesqNOMEPAISPORTUGUES: TStringField;
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

uses u_ReconcileErrorFrm;

{$R *.dfm}

procedure TdmCEP.sqlcdsReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
 Action := HandleReconcileError( DataSet, UpdateKind, E);
end;


end.
