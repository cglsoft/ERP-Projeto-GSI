unit u_RelOsClassifpeca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls,DB;

type
  TfrmRelOsClassifpeca = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRShape2: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel19: TQRLabel;
    PageFooterBand1: TQRBand;
    QRShape24: TQRShape;
    QRLabel11: TQRLabel;
    QRExpr5: TQRExpr;
    QRExpr2: TQRExpr;
    DetailBand1: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    SummaryBand1: TQRBand;
    QRShape3: TQRShape;
    QRExpr1: TQRExpr;
    QRExpr3: TQRExpr;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    PageFooterBand2: TQRBand;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
    QRSysData3: TQRSysData;
    QRGroup2: TQRGroup;
    QRShape4: TQRShape;
    QRDBText19: TQRDBText;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRSysData2: TQRSysData;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelOsClassifpeca: TfrmRelOsClassifpeca;

implementation

uses u_dmOs;

{$R *.dfm}

procedure TfrmRelOsClassifpeca.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 action := cafree;
 frmRelOsClassifpeca := nil;
end;

end.
