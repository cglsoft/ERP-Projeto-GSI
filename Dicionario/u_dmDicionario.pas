unit u_dmDicionario;

interface

uses
  SysUtils, Classes, DBXpress, FMTBcd, Provider, DB, SqlExpr, DBClient,
  WideStrings;

type
  TdmDicionario = class(TDataModule)
    sqlcnnTOSHIBA: TSQLConnection;
    sqlqryDicionario: TSQLQuery;
    dsprvDicionario: TDataSetProvider;
    sqlqryDicionarioDICIONARIOID: TBCDField;
    sqlqryDicionarioNOMETABELA: TStringField;
    sqlqryDicionarioNOMECAMPO: TStringField;
    sqlqryDicionarioNOVONOMECAMPO: TStringField;
    cdsDicionario: TClientDataSet;
    cdsDicionarioDICIONARIOID: TBCDField;
    cdsDicionarioNOMETABELA: TStringField;
    cdsDicionarioNOMECAMPO: TStringField;
    cdsDicionarioNOVONOMECAMPO: TStringField;
    sqlqryGeral: TSQLQuery;
    dsprovGeral: TDataSetProvider;
    cdsGeral: TClientDataSet;
    dsDicionario: TDataSource;
    sqlqryDicionarioITENS: TStringField;
    sqlqryDicionarioTITULOITENS: TStringField;
    cdsDicionarioITENS: TStringField;
    cdsDicionarioTITULOITENS: TStringField;
    sqlqry: TSQLQuery;
    dsprov: TDataSetProvider;
    cds: TClientDataSet;
    procedure cdsDicionarioReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsGeralReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsDicionarioNewRecord(DataSet: TDataSet);
    procedure sqlcnnTOSHIBAAfterConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmDicionario: TdmDicionario;

implementation

uses u_ReconcileError;

{$R *.dfm}

procedure TdmDicionario.cdsDicionarioReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
 Action := HandleReconcileError( DataSet, UpdateKind, E);
end;

procedure TdmDicionario.cdsGeralReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
 Action := HandleReconcileError( DataSet, UpdateKind, E);
end;

procedure TdmDicionario.sqlcnnTOSHIBAAfterConnect(Sender: TObject);
begin
 sqlqryGeral.SQL.Clear;
 sqlqryGeral.SQL.Add( 'ALTER SESSION SET NLS_NUMERIC_CHARACTERS = ' + QuotedStr('.,') );
 sqlqryGeral.ExecSQL;
end;

procedure TdmDicionario.cdsDicionarioNewRecord(DataSet: TDataSet);
var iSql : String;
begin
 iSQL := 'SELECT NVL( MAX( DICIONARIOID ), 0 ) ' +
          ' FROM AS_DICIONARIO ';
 try
  cds.Close;

  cds.CommandText := iSql;
  cds.Open;

  if not Cds.IsEmpty then
     cdsDicionarioDICIONARIOID.Value := Cds.Fields[0].Value + 1;
 finally
  Cds.Close;
 end;
end;

end.
