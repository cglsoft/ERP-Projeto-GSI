unit u_Rel0013B;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  TfrmRel0013B = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRShape2: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel21: TQRLabel;
    PageFooterBand1: TQRBand;
    QRShape24: TQRShape;
    QRLabel11: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    SummaryBand1: TQRBand;
    QRShape4: TQRShape;
    QRLabel6: TQRLabel;
    QRGroup1: TQRGroup;
    QRShape3: TQRShape;
    QRDBText12: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel13: TQRLabel;
    PageFooterBand2: TQRBand;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel4: TQRLabel;
    frmRel0013B: TQRSysData;
    QRLabel19: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText5: TQRDBText;
    QRExpr4: TQRExpr;
    QRExpr1: TQRExpr;
    QRLabel5: TQRLabel;
    QRExpr5: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr6: TQRExpr;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRel0013B: TfrmRel0013B;

implementation

uses u_0013;

{$R *.dfm}

procedure TfrmRel0013B.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := caFree;
 frmRel0013B := nil;
end;

procedure TfrmRel0013B.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
 QRLabel19.Caption := 'Produtos sem movimentação no periodo de : ' + DateToStr( frm0013.wwdtpcktDtInicial.Date ) + ' a ' + DateToStr( frm0013.wwdtpcktDtFinal.Date )
end;

end.
