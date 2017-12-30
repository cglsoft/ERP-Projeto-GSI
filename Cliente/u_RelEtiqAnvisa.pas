unit u_RelEtiqAnvisa;

interface

uses
  Windows, Forms, DB, DBClient, QRCtrls, QuickRpt, Controls, ExtCtrls, Classes,
  StdCtrls;

type
  TfrmRelEtiqAnvisa = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    qrdbPart: TQRDBText;
    qrdbSerie: TQRDBText;
    QRDBText3: TQRDBText;
    Label1: TLabel;
    cdsEtiqueta: TClientDataSet;
    dsEtiqueta: TDataSource;
    cdsEtiquetaPARTNUMBERID: TStringField;
    cdsEtiquetaREGANVISAID: TStringField;
    cdsEtiquetaEMPRESAID: TBCDField;
    QRLabel5: TQRLabel;
    qrdbNX: TQRDBText;
    cdsEtiquetaNX: TStringField;
    procedure qrdbPartPrint(sender: TObject; var Value: String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelEtiqAnvisa: TfrmRelEtiqAnvisa;

implementation

{$R *.dfm}

procedure TfrmRelEtiqAnvisa.qrdbPartPrint(sender: TObject;
  var Value: String);
begin
 if Pos( 'SSA-550A', Value ) > 0 then
    Value := 'SSA-550A';
end;

procedure TfrmRelEtiqAnvisa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 cdsEtiqueta.Close;
 Action := caFree;
 frmRelEtiqAnvisa := Nil;
end;

end.
