unit u_RelPedidoPza;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, quickrpt, Qrctrls, jpeg;

type
  TfrmRelPedidoPza = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    TitleBand1: TQRBand;
    QRLabel6: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRImage1: TQRImage;
    DetailBand1: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel19: TQRLabel;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRExpr1: TQRExpr;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText15: TQRDBText;
    QRBand1: TQRBand;
    QRLabel29: TQRLabel;
    QRExpr2: TQRExpr;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRSysData1: TQRSysData;
    QRLabel43: TQRLabel;
    QRShape26: TQRShape;
    QRLabel44: TQRLabel;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRExpr3: TQRExpr;
    QRDBText9: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRBand2: TQRBand;
    QRSysData5: TQRSysData;
    QRShape39: TQRShape;
    QRSysData4: TQRSysData;
    QRLabel47: TQRLabel;
    QRDBText25: TQRDBText;
    QRDBRichText1: TQRDBRichText;
    qrlblEnd: TQRLabel;
    qrlblEnd2: TQRLabel;
    qrlblFone: TQRLabel;
    QRDBText26: TQRDBText;
    QRImage2: TQRImage;
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelPedidoPza: TfrmRelPedidoPza;

implementation

uses u_dmIT;

{$R *.DFM}

procedure TfrmRelPedidoPza.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 PrintBand := ( QuickRep1.PageNumber <> 1 );
end;

procedure TfrmRelPedidoPza.TitleBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 dmIT.cdsProcessoItem.First;
// DM_TCI.TB_FORNECEDOR.FindKey([DM_TCI.TB_PZACODIGO_FORNECEDOR]);
end;

end.
