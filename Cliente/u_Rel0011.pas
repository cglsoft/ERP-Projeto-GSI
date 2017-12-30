unit u_Rel0011;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  TfrmRel0011 = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRShape2: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    PageFooterBand1: TQRBand;
    QRShape24: TQRShape;
    QRLabel11: TQRLabel;
    QRExpr5: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    DetailBand1: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
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
    QRLabel9: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    PageFooterBand2: TQRBand;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel4: TQRLabel;
    QRSysData2: TQRSysData;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRLabel21Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRel0011 : TfrmRel0011;


implementation

uses u_0011,FuncoesCliente;

{$R *.dfm}



procedure TfrmRel0011.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action     := caFree;
 frmRel0011 := nil;
end;

procedure TfrmRel0011.QuickRep1BeforePrint(Sender: TCustomQuickRep;
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

procedure TfrmRel0011.QRLabel21Print(sender: TObject; var Value: String);
begin
 Value := Value +' '+intToStr( EmpresaAtualId );
end;

end.
