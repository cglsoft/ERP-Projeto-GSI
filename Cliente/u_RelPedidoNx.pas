unit u_RelPedidoNx;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, ExtCtrls, jpeg;

type
  TfrmRelPedidoNx = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText2: TQRDBText;
    qrdbtxtPartnumber: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRExpr1: TQRExpr;
    TitleBand1: TQRBand;
    QRLabel6: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRImage1: TQRImage;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel19: TQRLabel;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRShape26: TQRShape;
    QRLabel44: TQRLabel;
    QRDBText20: TQRDBText;
    DetailBand1: TQRBand;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRBand1: TQRBand;
    QRLabel29: TQRLabel;
    QRExpr2: TQRExpr;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText18: TQRDBText;
    QRExpr3: TQRExpr;
    QRDBText9: TQRDBText;
    QRBand2: TQRBand;
    QRSysData5: TQRSysData;
    QRShape39: TQRShape;
    QRSysData4: TQRSysData;
    QRLabel47: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText19: TQRDBText;
    qrlblEnd: TQRLabel;
    qrlblEnd2: TQRLabel;
    qrlblFone: TQRLabel;
    ChildBand1: TQRChildBand;
    QRDBRichText1: TQRDBRichText;
    QRImage2: TQRImage;
    qrlblSigla1: TQRLabel;
    qrlblSigla2: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelPedidoNx: TfrmRelPedidoNx;

implementation

uses u_dmIT;

{$R *.DFM}

procedure TfrmRelPedidoNx.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action         := caFree;
 frmRelPedidoNx := Nil;
end;

end.
