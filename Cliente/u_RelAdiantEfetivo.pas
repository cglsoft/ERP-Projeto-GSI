unit u_RelAdiantEfetivo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TfrmRelAdiantEfetivo = class(TForm)
    QuickRep1: TQuickRep;
    QRGroup1: TQRGroup;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape6: TQRShape;
    QRShape8: TQRShape;
    QRShape4: TQRShape;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel5: TQRLabel;
    QRShape2: TQRShape;
    QRLabel11: TQRLabel;
    QRShape5: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel9: TQRLabel;
    QRBand1: TQRBand;
    QRShape18: TQRShape;
    QRLabel12: TQRLabel;
    QRExpr1: TQRExpr;
    QRBand2: TQRBand;
    QRShape16: TQRShape;
    QRShape15: TQRShape;
    QRShape14: TQRShape;
    QRShape13: TQRShape;
    QRShape12: TQRShape;
    QRShape3: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText10: TQRDBText;
    PageHeaderBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape11: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel14: TQRLabel;
    SummaryBand1: TQRBand;
    QRShape7: TQRShape;
    QRLabel13: TQRLabel;
    QRExpr2: TQRExpr;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape22: TQRShape;
    QRLabel17: TQRLabel;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRDBText9: TQRDBText;
    QRLabel18: TQRLabel;
    QRShape17: TQRShape;
    QRLabel7: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRBand3: TQRBand;
    QRShape27: TQRShape;
    QRSysData4: TQRSysData;
    QRLabel23: TQRLabel;
    QRSysData1: TQRSysData;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelAdiantEfetivo: TfrmRelAdiantEfetivo;

implementation

uses u_dmRD;

{$R *.dfm}

procedure TfrmRelAdiantEfetivo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 frmRelAdiantEfetivo := nil;
end;

end.
