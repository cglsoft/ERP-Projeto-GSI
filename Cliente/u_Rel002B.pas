unit u_Rel002B;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  TfrmRel002B = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRShape4: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    PageHeaderBand1: TQRBand;
    QRShape2: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel12: TQRLabel;
    QRSysData1: TQRSysData;
    QRShape1: TQRShape;
    Data: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel8: TQRLabel;
    PageFooterBand1: TQRBand;
    QRShape5: TQRShape;
    QRLabel20: TQRLabel;
    QRSysData2: TQRSysData;
    SummaryBand1: TQRBand;
    QRShape3: TQRShape;
    QRLabel21: TQRLabel;
    QRExpr9: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr1: TQRExpr;
    QRLabel22: TQRLabel;
    QRLabel24: TQRLabel;
    QrlVlrTotalNota: TQRLabel;
    QrlVlrTotalBaseICMS: TQRLabel;
    QrlVlrTotalICMS: TQRLabel;
    QrlVlrTotalIsentasICMS: TQRLabel;
    QrlVlrTotalOutrasICMS: TQRLabel;
    QrlVlrTotalBaseIPI: TQRLabel;
    QrlVlrTotalIPI: TQRLabel;
    QrlVlrTotalIsentasIPI: TQRLabel;
    QrlVlrTotalOutrasIPI: TQRLabel;
    QrlSVlrTotalNota: TQRLabel;
    QrlSVlrTotalBaseICMS: TQRLabel;
    QrlSVlrTotalICMS: TQRLabel;
    QrlSVlrTotalIsentasICMS: TQRLabel;
    QrlSVlrTotalOutrasICMS: TQRLabel;
    QrlSVlrTotalBaseIPI: TQRLabel;
    QrlSVlrTotalIPI: TQRLabel;
    QrlSVlrTotalIsentasIPI: TQRLabel;
    QrlSVlrTotalOutrasIPI: TQRLabel;
    QRGroup1: TQRGroup;
    QRShape6: TQRShape;
    QRDBText17: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText19: TQRDBText;
    QRBand1: TQRBand;
    QRShape7: TQRShape;
    QRExpr10: TQRExpr;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QRExpr13: TQRExpr;
    QRExpr14: TQRExpr;
    QRExpr15: TQRExpr;
    QRExpr16: TQRExpr;
    QRExpr17: TQRExpr;
    QRExpr18: TQRExpr;
    QRLabel23: TQRLabel;
    QRDBText18: TQRDBText;
    QRDBText20: TQRDBText;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRel002B    : TfrmRel002B;

implementation

uses u_0002;

{$R *.dfm}

procedure TfrmRel002B.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
 QRLabel19.Caption := 'Relatorio de NFs por movimentação de CFOP´s no Periodo de '+frm0002.MaskEdit1.EditText +' a '+ frm0002.MaskEdit2.EditText;
 QRLabel12.Caption := 'Sigla:  '+ frm0002.MaskEdit3.EditText;

 if frm0002.CheckBox1.Checked then
    DetailBand1.Enabled := True
 else
    DetailBand1.Enabled := False;    

 QuickRep1.DataSet  := frm0002.cds002B;
 QRDBText1.DataSet  := frm0002.cds002B;
 QRDBText2.DataSet  := frm0002.cds002B;
 QRDBText3.DataSet  := frm0002.cds002B;
 QRDBText4.DataSet  := frm0002.cds002B;
 QRDBText5.DataSet  := frm0002.cds002B;
 QRDBText6.DataSet  := frm0002.cds002B;
 QRDBText17.DataSet := frm0002.cds002B;
 QRDBText7.DataSet  := frm0002.cds002B;
 QRDBText8.DataSet  := frm0002.cds002B;
 QRDBText9.DataSet  := frm0002.cds002B;
 QRDBText10.DataSet := frm0002.cds002B;
 QRDBText11.DataSet := frm0002.cds002B;
 QRDBText20.DataSet := frm0002.cds002B;
 QRDBText13.DataSet := frm0002.cds002B;
 QRDBText14.DataSet := frm0002.cds002B;
 QRDBText15.DataSet := frm0002.cds002B;
 QRDBText16.DataSet := frm0002.cds002B;
 QRDBText18.DataSet := frm0002.cds002B;
 QRDBText19.DataSet := frm0002.cds002B;
end;

procedure TfrmRel002B.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action     := cafree;
 frmRel002B := nil;
end;

end.
