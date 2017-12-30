unit u_Rel002A;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TfrmRel002A = class(TForm)
    Quickrep1: TQuickRep;
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
    QRGroup1: TQRGroup;
    QRShape6: TQRShape;
    QRDBText17: TQRDBText;
    QRBand1: TQRBand;
    QRShape7: TQRShape;
    QRLabel23: TQRLabel;
    QRDBText18: TQRDBText;
    DetailBand1: TQRBand;
    QRShape4: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText16: TQRDBText;
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
    QRDBText15: TQRDBText;
    QRDBText33: TQRDBText;
    QRExpr9: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr1: TQRExpr;
    QRExpr8: TQRExpr;
    QRShape8: TQRShape;
    QRExpr10: TQRExpr;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QRExpr13: TQRExpr;
    QRExpr14: TQRExpr;
    QRExpr15: TQRExpr;
    QRExpr16: TQRExpr;
    QRExpr17: TQRExpr;
    QRExpr18: TQRExpr;
    QRDBText7: TQRDBText;
    QRLabel22: TQRLabel;
    QRExpr19: TQRExpr;
    QRExpr20: TQRExpr;
    procedure Quickrep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure AtribuiDataSet;
  public
    { Public declarations }
  end;

var
  frmRel002A: TfrmRel002A;

implementation

uses u_Pesquisa, u_0002;

{$R *.dfm}

procedure TfrmRel002A.Quickrep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
 QRLabel19.Caption := 'Relatorio de NFs de Entrada no Período de '+ frm0002.MaskEdit1.Text + ' a '+ frm0002.MaskEdit2.Text;
 QRLabel12.Caption := 'Sigla:  '+ frm0002.MaskEdit3.Text;
 AtribuiDataSet;
end;

procedure TfrmRel002A.AtribuiDataSet;
begin
 if frm0002.RelatorioId = 2 then
    begin
     QRLabel19.Caption := 'Relatorio de NFs de Saída no Período de '+ frm0002.MaskEdit1.Text + ' a '+ frm0002.MaskEdit2.Text;
     QRLabel12.Caption := 'Sigla:  '+ frm0002.MaskEdit3.Text;
     QRExpr10.Expression := 'SUM(VLRTOTALNOTA-VLRTOTALSERVICO)';
     QRExpr9.Expression :=  'SUM(VLRTOTALNOTA-VLRTOTALSERVICO)';
    end;

 Quickrep1.DataSet  := frm0002.cds002;
 QRDBText1.DataSet  := frm0002.cds002;
 QRDBText2.DataSet  := frm0002.cds002;
 QRDBText3.DataSet  := frm0002.cds002;
 QRDBText4.DataSet  := frm0002.cds002;
 QRDBText5.DataSet  := frm0002.cds002;
 QRDBText6.DataSet  := frm0002.cds002;
 QRDBText7.DataSet  := frm0002.cds002;

 QRDBText33.DataSet := frm0002.cds002;
 QRDBText8.DataSet  := frm0002.cds002;
 QRDBText9.DataSet  := frm0002.cds002;
 QRDBText10.DataSet := frm0002.cds002;
 QRDBText11.DataSet := frm0002.cds002;
 QRDBText12.DataSet := frm0002.cds002;
 QRDBText13.DataSet := frm0002.cds002;
 QRDBText14.DataSet := frm0002.cds002;
 QRDBText15.DataSet := frm0002.cds002;
 QRDBText16.DataSet := frm0002.cds002;
 QRDBText17.DataSet := frm0002.cds002;
 QRDBText18.DataSet := frm0002.cds002;
end;



procedure TfrmRel002A.FormCreate(Sender: TObject);
begin
 if frm0002.RelatorioId = 2 then
    begin
     QRDBText1.DataField := 'DATAEMISSAOID';
     QRDBText2.DataField := 'NFSID';
    end;
end;

procedure TfrmRel002A.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action     := cafree;
 frmRel002A := nil;
end;

end.
