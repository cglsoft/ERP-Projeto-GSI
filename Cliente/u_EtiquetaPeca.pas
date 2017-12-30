unit u_EtiquetaPeca;

interface

uses
  Windows, Forms, QRBarcode, QRCtrls, QuickRpt, Controls, ExtCtrls, Classes,
  StdCtrls;

type
  TfrmEtiquetaPeca = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QrDbTOsId1: TQRDBText;
    QrDbTProdutoId1: TQRDBText;
    QRBarcode1: TQRBarcode;
    QRLabel4: TQRLabel;
    QrDbTOsId2: TQRDBText;
    QRLabel5: TQRLabel;
    QRBarcode2: TQRBarcode;
    QRLabel7: TQRLabel;
    QrDbTClassifPeca1: TQRDBText;
    QrDbTClassifPeca2: TQRDBText;
    QRLabel6: TQRLabel;
    QrDbTProdutoId2: TQRDBText;
    QRLabel8: TQRLabel;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEtiquetaPeca: TfrmEtiquetaPeca;

implementation

{$R *.dfm}

procedure TfrmEtiquetaPeca.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 action := cafree;
 frmEtiquetaPeca := nil;
end;

procedure TfrmEtiquetaPeca.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 PrintBand := True;
end;

end.
