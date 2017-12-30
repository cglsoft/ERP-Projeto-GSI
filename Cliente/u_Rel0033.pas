unit u_Rel0033;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, ExtCtrls, QRCtrls,DB;

type
  TfrmRel0033 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand4: TQRBand;
    QRGroup1: TQRGroup;
    QRLabel1: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape1: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRBand3: TQRBand;
    QRLabel15: TQRLabel;
    QRExpr3: TQRExpr;
    QRLabel2: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel17: TQRLabel;
    QRExpr4: TQRExpr;
    QRLabel19: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel14: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel18: TQRLabel;
    QRLabel20: TQRLabel;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRLabel16: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel22: TQRLabel;
    QRSysData5: TQRSysData;
    QRShape4: TQRShape;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRExpr2Print(sender: TObject; var Value: String);
    procedure QRExpr3Print(sender: TObject; var Value: String);
    procedure QRLabel18Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRel0033: TfrmRel0033;
  VlrTotal,
  VlrSubTotal : Real;

implementation

uses u_0033;

{$R *.dfm}

procedure TfrmRel0033.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 frmRel0033 := nil;
end;

procedure TfrmRel0033.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
 QRLabel19.Caption := '';
 VlrTotal    := 0;
 VlrSubTotal := 0;
end;

procedure TfrmRel0033.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 QRLabel19.Caption := FormatFloat('###,###,###,##0.00',VlrTotal);
end;

procedure TfrmRel0033.QRExpr2Print(sender: TObject; var Value: String);
begin
 VlrSubTotal := 0;
end;

procedure TfrmRel0033.QRExpr3Print(sender: TObject; var Value: String);
begin
 QRLabel18.Caption := FormatFloat('###,###,###,##0.00', frm0033.cdsRelPedVend.FieldByName('VLRTOTALGERAL').AsFloat ) ;
end;

procedure TfrmRel0033.QRLabel18Print(sender: TObject;
  var Value: String);
begin
 VlrTotal := VlrTotal + frm0033.cdsRelPedVend.FieldByName('VLRTOTALGERAL').AsFloat;
end;

end.
