unit u_Rel0014;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TfrmRel0014 = class(TForm)
    QuickRep1: TQuickRep;
    PageFooterBand1: TQRBand;
    QRShape3: TQRShape;
    QRSysData2: TQRSysData;
    QRLabel14: TQRLabel;
    QRLabel5: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRSysData1: TQRSysData;
    Produto: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel13: TQRLabel;
    SummaryBand1: TQRBand;
    QRShape4: TQRShape;
    QRExpr1: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText4: TQRDBText;
    QRGroup1: TQRGroup;
    QRDBText17: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText15: TQRDBText;
    QRExpr2: TQRExpr;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel20: TQRLabel;
    QRBand2: TQRBand;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr5: TQRExpr;
    QRSysData3: TQRSysData;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRLabel19Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRel0014: TfrmRel0014;

implementation

uses u_0014;

{$R *.dfm}

procedure TfrmRel0014.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action     := cafree;
 frmRel0014 := nil;
end;

procedure TfrmRel0014.QRLabel19Print(sender: TObject; var Value: String);
begin
 Value := 'Produtos em poder de terceiros, posição em '+ DateToStr( frm0014.wwdtpcktPosicao.Date );
end;

end.
