unit u_Rel006A;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TfrmRel006A = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRShape17: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
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
    QRDBText13: TQRDBText;
    QRShape41: TQRShape;
    QRDBText10: TQRDBText;
    PageFooterBand1: TQRBand;
    QRShape34: TQRShape;
    QRShape37: TQRShape;
    QRShape36: TQRShape;
    QRShape35: TQRShape;
    QRShape33: TQRShape;
    QRShape32: TQRShape;
    QRShape31: TQRShape;
    QRShape30: TQRShape;
    QRShape23: TQRShape;
    QRLabel11: TQRLabel;
    QRExpr9: TQRExpr;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRExpr8: TQRExpr;
    QRExpr10: TQRExpr;
    QRShape42: TQRShape;
    QRExpr11: TQRExpr;
    QRGroup1: TQRGroup;
    QRShape11: TQRShape;
    QRLabel10: TQRLabel;
    QRShape16: TQRShape;
    PageHeaderBand1: TQRBand;
    QRShape2: TQRShape;
    QRShape1: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel18: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel3: TQRLabel;
    Produto: TQRLabel;
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
    QRShape12: TQRShape;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape9: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel22: TQRLabel;
    QRShape3: TQRShape;
    PageFooterBand2: TQRBand;
    QRSysData2: TQRSysData;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRShape13: TQRShape;
    QRLabel15: TQRLabel;
    QRShape26: TQRShape;
    QRDBText16: TQRDBText;
    QRShape38: TQRShape;
    QRExpr12: TQRExpr;
    QRLabel23: TQRLabel;
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
  frmRel006A: TfrmRel006A;

implementation

uses u_0006;

{$R *.dfm}

procedure TfrmRel006A.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action     := cafree;
 frmRel006A := nil;
end;

procedure TfrmRel006A.QuickRep1BeforePrint(Sender: TCustomQuickRep;
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
