unit u_dmFC;

interface

uses
  SysUtils, Classes, DB, DBClient, MConnect;

type
  TdmFC = class(TDataModule)
    shdcnnFC: TSharedConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmFC: TdmFC;

implementation

{$R *.dfm}

end.
