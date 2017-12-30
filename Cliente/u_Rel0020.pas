unit u_Rel0020;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TfrmRel0020 = class(TForm)
    QuickRep1: TQuickRep;
    QRGroup1: TQRGroup;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape2: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel9: TQRLabel;
    Tipo: TQRLabel;
    QRShape3: TQRShape;
    QRLabel15: TQRLabel;
    QRShape5: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel22: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRBand1: TQRBand;
    QRShape6: TQRShape;
    QRLabel21: TQRLabel;
    QRExpr2: TQRExpr;
    QRDBText3: TQRDBText;
    QRExpr4: TQRExpr;
    QRExpr6: TQRExpr;
    QRBand2: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRShape4: TQRShape;
    QRExpr7: TQRExpr;
    QRDBText7: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText17: TQRDBText;
    PageHeaderBand1: TQRBand;
    QRLabel6: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    SummaryBand1: TQRBand;
    QRShape7: TQRShape;
    QRExpr3: TQRExpr;
    QRLabel20: TQRLabel;
    QRExpr5: TQRExpr;
    QRExpr1: TQRExpr;
    QRBand3: TQRBand;
    QRShape8: TQRShape;
    QRSysData4: TQRSysData;
    QRLabel23: TQRLabel;
    QRSysData5: TQRSysData;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRSysData2Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRel0020: TfrmRel0020;

implementation

uses u_0020;

{$R *.dfm}

procedure TfrmRel0020.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action     := cafree;
 frmRel0020 := nil;
end;

procedure TfrmRel0020.QRSysData2Print(sender: TObject; var Value: String);
begin
 Value := frm0020.MaskEdit1.Text;
end;

end.
