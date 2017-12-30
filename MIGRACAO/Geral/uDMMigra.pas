unit uDMMigra;

interface

uses
  SysUtils, FMTBcd, DBXpress, Provider, DB, DBClient, SqlExpr, DBTables,
  Classes, WideStrings;

type
  TDMMigra = class(TDataModule)
    dbMigra: TDatabase;
    dbMigra2: TDatabase;
    Tb3: TTable;
    Tb1: TTable;
    Tb2: TTable;
    qryGeral: TQuery;
    sqldsUpdate: TSQLDataSet;
    SQLCon: TSQLConnection;
    Qr2: TQuery;
    Seq: TSQLQuery;
    Teste: TSQLQuery;
    Teste2: TSQLQuery;
    tbMaster: TTable;
    tbDetails: TTable;
    dsMaster: TDataSource;
    dsDetails: TDataSource;
    qryItemSerie: TQuery;
    sqldtsSC1: TSQLDataSet;
    sqldtsSC2: TSQLDataSet;
    dsprvSC1: TDataSetProvider;
    dsprvSC2: TDataSetProvider;
    SC1: TClientDataSet;
    SC2: TClientDataSet;
    sqldtsDynamic: TSQLDataSet;
    dsprvDynamic: TDataSetProvider;
    cdsDynamic: TClientDataSet;
    Qr1: TQuery;
    tbUnidadeFED: TTable;
    SqlGeral: TSQLQuery;
    testeSef: TSQLQuery;
    tbTecnico: TTable;
    tbTecnicoCODIGO: TFloatField;
    tbTecnicoPOPULAR: TStringField;
    tbTecnicoNOME: TStringField;
    tbTecnicoDDD1: TStringField;
    tbTecnicoFONE1: TStringField;
    tbTecnicoRAMAL1: TStringField;
    tbTecnicoENDERECO: TStringField;
    tbTecnicoCIDADE: TStringField;
    tbTecnicoESTADO: TStringField;
    tbTecnicoCEP: TStringField;
    tbTecnicoCONTATO: TStringField;
    tbTecnicoDDD2: TStringField;
    tbTecnicoFONE2: TStringField;
    tbTecnicoRAMAL2: TStringField;
    tbTecnicoRG: TStringField;
    tbTecnicoCPF: TStringField;
    tbTecnicoPAS: TStringField;
    tbTecnicoESPTEC: TStringField;
    tbTecnicoFILIAL: TStringField;
    tbTecnicoUSUARIO: TStringField;
    sqlcnnNOVO: TSQLConnection;
    sqlqryNOVO: TSQLQuery;
    dsprvNOVO: TDataSetProvider;
    cdsNOVO: TClientDataSet;
    sqlcnnANTIGO: TSQLConnection;
    sqlqryANTIGO: TSQLQuery;
    dsprvANTIGO: TDataSetProvider;
    cdsANTIGO: TClientDataSet;
    procedure Sc2ReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure SC1ReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
  private
    { Private declarations }
  public
    procedure ExecQry( Cmd : String );
    { Public declarations }
  end;

var
  DMMigra: TDMMigra;

implementation

uses uReconcileError;

{$R *.dfm}

procedure TDMMigra.Sc2ReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
 Action := HandleReconcileError(DataSet,UpdateKind, E);
end;

procedure TDMMigra.ExecQry ( Cmd : String );
begin
 if Cmd = '' then exit;

 with sqldsUpdate do
 begin
  if Active then
     Active := False;

  CommandText := Cmd;
  ExecSQL;
 end;
end;

procedure TDMMigra.SC1ReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
 Action := HandleReconcileError(DataSet,UpdateKind, E);
end;

end.
