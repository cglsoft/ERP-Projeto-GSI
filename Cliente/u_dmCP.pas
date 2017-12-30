unit u_dmCP;

interface

uses
  SysUtils, Classes, DB, DBClient, MConnect;

type
  TdmCP = class(TDataModule)
    shdcnnCP: TSharedConnection;
    dsPesquisa: TDataSource;
    cdsPesquisa: TClientDataSet;
    cdsPesquisaSIGLAUFID: TStringField;
    cdsPesquisaCEPID: TBCDField;
    cdsPesquisaTIPOLOGRADOURO: TStringField;
    cdsPesquisaPREPOSICAO: TStringField;
    cdsPesquisaTITULOPATENTE: TStringField;
    cdsPesquisaNOMELOGRADOURO: TStringField;
    cdsPesquisaBAIRROLOGRADOURO: TStringField;
    cdsPesquisaNOMELOCALIDADE: TStringField;
    cdsPesquisaNOMEUF: TStringField;
    cdsPesquisaNOMEPAISPORTUGUES: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCP: TdmCP;

implementation

uses u_dmGSI;

{$R *.dfm}

end.
