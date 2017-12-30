unit u_Rel006;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TfrmRel006 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    qrdbtxtDado1: TQRDBText;
    qrdbtxtDado2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    PageFooterBand1: TQRBand;
    QRLabel11: TQRLabel;
    qrexprTotSaldoAtual: TQRExpr;
    qrexprTotSaldoAnt: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    qrexprTotSaldo: TQRExpr;
    QRExpr7: TQRExpr;
    QRGroup1: TQRGroup;
    QRLabel10: TQRLabel;
    QRLabel15: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRShape2: TQRShape;
    QRShape1: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel18: TQRLabel;
    QRSysData1: TQRSysData;
    qrlblTit2: TQRLabel;
    qrlblTit1: TQRLabel;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape10: TQRShape;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel4: TQRLabel;
    Entradas: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    PageFooterBand2: TQRBand;
    QRLabel33: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText12: TQRDBText;
    QRSysData2: TQRSysData;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape9: TQRShape;
    QRShape11: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape23: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRExpr8: TQRExpr;
    QRLabel12: TQRLabel;
    QRLabel22: TQRLabel;
    QRDBText13: TQRDBText;
    QRExpr10: TQRExpr;
    QRShape3: TQRShape;
    QRShape41: TQRShape;
    QRDBText10: TQRDBText;
    QRShape42: TQRShape;
    QRExpr11: TQRExpr;
    QRShape13: TQRShape;
    QRShape26: TQRShape;
    QRShape38: TQRShape;
    QRLabel23: TQRLabel;
    QRDBText14: TQRDBText;
    qrexprTotQtdAnterior: TQRExpr;
    QRLabel25: TQRLabel;
    QRShape43: TQRShape;
    QRSysData5: TQRSysData;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRel006: TfrmRel006;

implementation

uses u_0006;

{$R *.dfm}

procedure TfrmRel006.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action    := caFree;
 frmRel006 := nil;
end;

procedure TfrmRel006.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
 case frm0006.rgrpOrigem.ItemIndex  of
 0  : QRLabel13.Caption := 'Composição : Nacionais';
 1  : QRLabel13.Caption := 'Composição : Importados';
 2  : QRLabel13.Caption := 'Composição : Importados e Nacionais';
 end;

 QRLabel14.Caption := 'Posição em: '+ DateToStr( frm0006.wwdtpcktPosicao.Date );
end;

end.
