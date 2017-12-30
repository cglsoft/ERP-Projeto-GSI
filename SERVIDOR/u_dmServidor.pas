unit u_dmServidor;

interface

uses
  SysUtils, Classes, DB, DBClient, FMTBcd, SqlExpr, Provider, DBXpress,
  WideStrings;

type
  TdmServidor = class(TDataModule)
    cdsUserAtivo: TClientDataSet;
    dsUserAtivo: TDataSource;
    dsprvUserAtivo: TDataSetProvider;
    sqldtsUserAtivo: TSQLDataSet;
    sqldtsUserAtivoUSERATIVOID: TBCDField;
    sqldtsUserAtivoUSUARIOID: TStringField;
    sqldtsUserAtivoDATACONECCAO: TSQLTimeStampField;
    sqldtsUserAtivoIP: TStringField;
    sqldtsUserAtivoNOMEMAQUINA: TStringField;
    cdsUserAtivoUSERATIVOID: TBCDField;
    cdsUserAtivoUSUARIOID: TStringField;
    cdsUserAtivoDATACONECCAO: TSQLTimeStampField;
    cdsUserAtivoIP: TStringField;
    cdsUserAtivoNOMEMAQUINA: TStringField;
    sqlcnnTOSHIBA: TSQLConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmServidor: TdmServidor;

implementation

{$R *.dfm}

end.
