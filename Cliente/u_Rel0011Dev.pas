unit u_Rel0011Dev;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  TfrmRel0011Dev = class(TForm)
    Quickrep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRShape2: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    qrlblProdete: TQRLabel;
    PageFooterBand1: TQRBand;
    DetailBand1: TQRBand;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText13: TQRDBText;
    SummaryBand1: TQRBand;
    QRShape4: TQRShape;
    QRLabel6: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr10: TQRExpr;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QRGroup1: TQRGroup;
    QRShape3: TQRShape;
    QRDBText12: TQRDBText;
    PageFooterBand2: TQRBand;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel4: TQRLabel;
    QRGroup2: TQRGroup;
    QRShape6: TQRShape;
    QRShape5: TQRShape;
    QRDBText3: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    qrdbTotalReceita: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    qrlblTotalReceita: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRBand1: TQRBand;
    procedure Quickrep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRLabel21Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRel0011Dev: TfrmRel0011Dev;

implementation

uses u_0011, FuncoesCliente;

{$R *.dfm}

procedure TfrmRel0011Dev.Quickrep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
 if Frm0011.Devolucao = 1 Then
    begin
     QRLabel17.Left    := 263;
     QRLabel17.Caption := 'DEVOLUÇÃO DE FATURAMENTO';
     QRLabel19.Caption := 'Relatorio das devoluções de vendas no periodo de ' + Frm0011.MaskEdit1.EditText + ' a '+ Frm0011.MaskEdit2.EditText;
    end
 else
    begin
     QRLabel17.Left    := 319;
     QRLabel17.Caption := 'FATURAMENTO';
     QRLabel19.Caption := Frm0011.Titulo + Frm0011.MaskEdit1.EditText + ' a '+ Frm0011.MaskEdit2.EditText;
    end;
end;

procedure TfrmRel0011Dev.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action        := cafree;
 frmRel0011Dev := nil;
end;

procedure TfrmRel0011Dev.QRLabel21Print(sender: TObject;
  var Value: String);
begin
  Value := Value + ' '+intToStr( EmpresaAtualId );
end;

end.
