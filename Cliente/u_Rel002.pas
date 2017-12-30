unit u_Rel002;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TfrmRel002 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRShape4: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    PageHeaderBand1: TQRBand;
    QRShape2: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel19: TQRLabel;
    QRLabel22: TQRLabel;
    QRShape1: TQRShape;
    Data: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel12: TQRLabel;
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
    QRShape3: TQRShape;
    QRLabel20: TQRLabel;
    QRSysData2: TQRSysData;
    SummaryBand1: TQRBand;
    QRShape5: TQRShape;
    QRLabel21: TQRLabel;
    QRExpr9: TQRExpr;
    QRExpr10: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr1: TQRExpr;
    QRExpr8: TQRExpr;
    QRDBText17: TQRDBText;
    QRLabel23: TQRLabel;
    QRSysData3: TQRSysData;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRDBText17Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRel002: TfrmRel002;
  

implementation

uses u_0002;

{$R *.dfm}

procedure TfrmRel002.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
 QRLabel19.Caption := 'Relatorio de NFs de Entrada no Período de '+ frm0002.MaskEdit1.Text + ' a '+ frm0002.MaskEdit2.Text;
 QRLabel22.Caption := 'Sigla:  '+ frm0002.MaskEdit3.Text;
 QRExpr9.Expression := 'SUM(VLRTOTALNOTA)';

 if frm0002.RelatorioId = 2 then
    begin
     QRLabel19.Caption := 'Relatorio de NFs de Saída no Período de '+ frm0002.MaskEdit1.Text + ' a '+ frm0002.MaskEdit2.Text;
     QRLabel22.Caption := 'Sigla:  '+ frm0002.MaskEdit3.Text;
     QRExpr9.Expression := 'SUM(VLRTOTALNOTA - VLRTOTALSERVICO)';
     QRDBText1.DataField := 'DATAEMISSAOID';
     QRDBText2.DataField := 'NFSID';
     QRDBText17.DataField := 'VLRTOTALNOTA';
    end;

 QuickRep1.DataSet := frm0002.cds002;
 QRDBText1.DataSet := frm0002.cds002;
 QRDBText2.DataSet := frm0002.cds002;
 QRDBText3.DataSet := frm0002.cds002;
 QRDBText4.DataSet := frm0002.cds002;
 QRDBText5.DataSet := frm0002.cds002;
 QRDBText17.DataSet := frm0002.cds002;
 QRDBText7.DataSet := frm0002.cds002;
 QRDBText8.DataSet := frm0002.cds002;
 QRDBText9.DataSet := frm0002.cds002;
 QRDBText10.DataSet := frm0002.cds002;
 QRDBText11.DataSet := frm0002.cds002;
 QRDBText12.DataSet := frm0002.cds002;
 QRDBText13.DataSet := frm0002.cds002;
 QRDBText14.DataSet := frm0002.cds002;
 QRDBText15.DataSet := frm0002.cds002;
 QRDBText16.DataSet := frm0002.cds002;
end;

procedure TfrmRel002.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action    := cafree;
 frmRel002 := nil;
end;

procedure TfrmRel002.QRDBText17Print(sender: TObject; var Value: String);
begin
 if frm0002.RelatorioId = 2 then
    Value := FormatFloat('##,###,##0.00',( frm0002.cds002.FieldByName('VLRTOTALNOTA').AsFloat - frm0002.cds002.FieldByName('VLRTOTALSERVICO').AsFloat ) );
end;

end.
