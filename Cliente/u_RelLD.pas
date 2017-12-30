unit u_RelLD;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Qrctrls;

type
  TfrmRelLD = class(TForm)
    qrpRelLD: TQuickRep;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    SummaryBand1: TQRBand;
    QRGroup1: TQRGroup;
    QRLabel1: TQRLabel;
    qrlblPeriodo: TQRLabel;
    QRLabel5: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    QRLabel28: TQRLabel;
    QRLabel17: TQRLabel;
    PageFooterBand2: TQRBand;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape19: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRLabel19: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    qrlblDebConta: TQRLabel;
    qrlblDeb: TQRLabel;
    qrlblCre: TQRLabel;
    qrlblCreConta: TQRLabel;
    QRExpr1: TQRExpr;
    QRDBText7: TQRDBText;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRLabel47: TQRLabel;
    QRShape39: TQRShape;
    QRSysData5: TQRSysData;
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PageFooterBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    VlrDebConta, VlrCreConta, VlrDeb, VlrCre : Extended;
  public
    { Public declarations }
  end;

var
  frmRelLD: TfrmRelLD;

implementation

uses u_dmIT;

{$R *.DFM}

procedure TfrmRelLD.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 qrlblDeb.Caption := FormatFloat( '###,###,###,##0.00', VlrDeb );
 qrlblCre.Caption := FormatFloat( '###,###,###,##0.00', VlrCre );
 VlrDeb := 0;
 VlrCre := 0;
end;

procedure TfrmRelLD.PageFooterBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 qrlblDebConta.Caption := FormatFloat( '###,###,###,##0.00', VlrDebConta );
 qrlblCreConta.Caption := FormatFloat( '###,###,###,##0.00', VlrCreConta );
 VlrDebConta := 0;
 VlrCreConta := 0;
end;

procedure TfrmRelLD.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 with dmIT do
 begin
  VlrDebConta := VlrDebConta + cdsRelLDVLRDEBITO.AsFloat;
  VlrDeb := VlrDeb + cdsRelLDVLRDEBITO.AsFloat;
  VlrCreConta := VlrCreConta + cdsRelLDVLRCREDITO.AsFloat;
  VlrCre := VlrCre + cdsRelLDVLRCREDITO.AsFloat;
 end;
end;

procedure TfrmRelLD.FormCreate(Sender: TObject);
begin
 VlrDeb      := 0;
 VlrCre      := 0;
 VlrDebConta := 0;
 VlrCreConta := 0;
end;

procedure TfrmRelLD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := caFree;
 frmRelLD := Nil;
end;

end.
