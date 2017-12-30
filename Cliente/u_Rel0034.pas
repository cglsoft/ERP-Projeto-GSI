unit u_Rel0034;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  TfrmRel0034 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRGroup1: TQRGroup;
    QRShape1: TQRShape;
    QRLabel18: TQRLabel;
    QRDBText12: TQRDBText;
    QRExpr5: TQRExpr;
    QRShape7: TQRShape;
    QRDBText19: TQRDBText;
    QRLabel29: TQRLabel;
    QRLabel19: TQRLabel;
    QRExpr10: TQRExpr;
    QRDBText13: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText8: TQRDBText;
    SummaryBand1: TQRBand;
    QRShape5: TQRShape;
    QRExpr1: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    US1: TQRLabel;
    RX1: TQRLabel;
    CT1: TQRLabel;
    MR1: TQRLabel;
    US2: TQRLabel;
    RX2: TQRLabel;
    CT2: TQRLabel;
    MR2: TQRLabel;
    US3: TQRLabel;
    RX3: TQRLabel;
    CT3: TQRLabel;
    MR3: TQRLabel;
    US4: TQRLabel;
    RX4: TQRLabel;
    CT4: TQRLabel;
    MR4: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel41: TQRLabel;
    QRShape6: TQRShape;
    QRLabel2: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel26: TQRLabel;
    QRShape2: TQRShape;
    PageFooterBand2: TQRBand;
    QRShape3: TQRShape;
    QRLabel1: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText15: TQRDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRel0034: TfrmRel0034;

implementation

uses u_0034, u_dmPP;

{$R *.dfm}

procedure TfrmRel0034.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action     := cafree;
 frmRel0034 := nil;
end;

procedure TfrmRel0034.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 US1.Caption := FormatFloat('###,###,##0.00',frm0034.nTUS1);
 US3.Caption := FormatFloat('###,###,##0.00',frm0034.nTUS3);
 US4.Caption := FormatFloat('###,###,##0.00',frm0034.nTUS4);
 RX1.Caption := FormatFloat('###,###,##0.00',frm0034.nTRX1);
 RX3.Caption := FormatFloat('###,###,##0.00',frm0034.nTRX3);
 RX4.Caption := FormatFloat('###,###,##0.00',frm0034.nTRX4);
 CT1.Caption := FormatFloat('###,###,##0.00',frm0034.nTCT1);
 CT3.Caption := FormatFloat('###,###,##0.00',frm0034.nTCT3);
 CT4.Caption := FormatFloat('###,###,##0.00',frm0034.nTCT4);
 MR1.Caption := FormatFloat('###,###,##0.00',frm0034.nTMR1);
 MR3.Caption := FormatFloat('###,###,##0.00',frm0034.nTMR3);
 MR4.Caption := FormatFloat('###,###,##0.00',frm0034.nTMR4);
end;

end.



