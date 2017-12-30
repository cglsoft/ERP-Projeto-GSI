unit u_RelPedidoDI;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, quickrpt, Qrctrls;

type
  TfrmRelPedidoDI = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRSubDetail2: TQRSubDetail;
    DetailBand1: TQRBand;
    QRShape3: TQRShape;
    QRLabel7: TQRLabel;
    QRDBText2: TQRDBText;
    QRShape4: TQRShape;
    QRLabel8: TQRLabel;
    QRShape5: TQRShape;
    QRLabel9: TQRLabel;
    QRShape6: TQRShape;
    QRLabel10: TQRLabel;
    QRShape7: TQRShape;
    QRLabel11: TQRLabel;
    QRShape8: TQRShape;
    QRLabel12: TQRLabel;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRDBText5: TQRDBText;
    QRShape11: TQRShape;
    QRDBText1: TQRDBText;
    QRShape12: TQRShape;
    QRDBText3: TQRDBText;
    QRShape13: TQRShape;
    QRDBText6: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRShape14: TQRShape;
    QRLabel19: TQRLabel;
    QRShape15: TQRShape;
    QRDBText8: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape1: TQRShape;
    QRLabel5: TQRLabel;
    QRDBText9: TQRDBText;
    QRShape2: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel22: TQRLabel;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRDBText10: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRLabel23: TQRLabel;
    QRShape18: TQRShape;
    QRExpr1: TQRExpr;
    SummaryBand1: TQRBand;
    QRLabel24: TQRLabel;
    QRDBRichText1: TQRDBRichText;
    QRSysData5: TQRSysData;
    QRShape39: TQRShape;
    QRSysData4: TQRSysData;
    QRLabel47: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelPedidoDI: TfrmRelPedidoDI;

implementation

uses u_dmIT;

{$R *.DFM}

procedure TfrmRelPedidoDI.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 action          := caFree;
 frmRelPedidoDI  := nil;
end;

procedure TfrmRelPedidoDI.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 if ( dmIT.cdsMercadoriaNCMID.Value <> dmIT.cdsAdicaoNCMID.Value ) then
    PrintBand := False;
end;

end.
