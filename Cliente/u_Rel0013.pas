unit u_Rel0013;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TfrmRel0013 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    PageFooterBand1: TQRBand;
    QRShape3: TQRShape;
    QRSysData2: TQRSysData;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRShape2: TQRShape;
    QRShape1: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel19: TQRLabel;
    Produto: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel2: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRExpr2: TQRExpr;
    QRSysData3: TQRSysData;
    QRExpr1: TQRExpr;
    QRExpr3: TQRExpr;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRel0013: TfrmRel0013;

implementation

uses u_0013, u_dmGSI,FuncoesCliente;

{$R *.dfm}

procedure TfrmRel0013.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := caFree;
 frmRel0013 := nil;
end;

procedure TfrmRel0013.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
 QRLabel19.Caption := 'Produtos sem movimentação no periodo de : ' + DateToStr( frm0013.wwdtpcktDtInicial.Date ) + ' a ' + DateToStr( frm0013.wwdtpcktDtFinal.Date )
end;

end.
