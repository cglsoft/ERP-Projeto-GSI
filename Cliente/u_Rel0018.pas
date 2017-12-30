unit u_Rel0018;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TfrmRel0018 = class(TForm)
    QuickRep1: TQuickRep;
    QRGroup1: TQRGroup;
    QRBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRBand2: TQRBand;
    QRDB1: TQRDBText;
    QRDB3: TQRDBText;
    QRDB4: TQRDBText;
    QRDB5: TQRDBText;
    QRDB6: TQRDBText;
    QRDB7: TQRDBText;
    qrdbtxtDtUlt: TQRDBText;
    PageFooterBand1: TQRBand;
    QRExpr2: TQRExpr;
    QRLabel14: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel15: TQRLabel;
    QRExpr4: TQRExpr;
    PageHeaderBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape2: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    qrlblDtUlt: TQRLabel;
    QRLabel20: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel21: TQRLabel;
    QRShape3: TQRShape;
    QRDBText1: TQRDBText;
    QrlCustoMedio: TQRLabel;
    QrlVlrCustoMedioTotalPagina: TQRLabel;
    QrlVlrCustoMedioTotalGeral: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData1: TQRSysData;
    QRLabel10: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRSysData1Print(sender: TObject; var Value: String);
    procedure qrlblDtUltPrint(sender: TObject; var Value: String);
    procedure QRLabel16Print(sender: TObject; var Value: String);
    procedure QRDBText1Print(sender: TObject; var Value: String);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRLabel12Print(sender: TObject; var Value: String);
    procedure QRLabel14Print(sender: TObject; var Value: String);
    procedure QRLabel15Print(sender: TObject; var Value: String);
    procedure QRDB7Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRel0018: TfrmRel0018;
    TotalVlrCustoMtotal,
    VlrCustoMedioTotal : Currency;

implementation

uses u_0018, FuncoesCliente, DB;

{$R *.dfm}

procedure TfrmRel0018.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action     := cafree;
 frmRel0018 := nil;
end;

procedure TfrmRel0018.QRSysData1Print(sender: TObject; var Value: String);
begin
 Value := IntToStr( ( StrToInt( Value ) + 1 ) );
end;

procedure TfrmRel0018.qrlblDtUltPrint(sender: TObject; var Value: String);
begin
 case frm0018.rgrpDtUltima.ItemIndex of
 0 : Value := 'Dt.Ult.Entr.';
 1 : Value := 'Dt.Ult.Saída';
 2 : Value := 'Dt.Ocorrência';
 else
     Value := '';
 end;
end;

procedure TfrmRel0018.QRLabel16Print(sender: TObject; var Value: String);
begin
 Value := frm0018.MaskEdit1.Text;
end;

procedure TfrmRel0018.QRDBText1Print(sender: TObject; var Value: String);
begin
 Value := FormatFloat('##,###,###,##0.00', StrToFloat( value ) );
 VlrCustoMedioTotal := VlrCustoMedioTotal + frm0018.cdsInventario.FieldByName('VLRCUSTOMEDIOTOTAL').AsCurrency;
end;

procedure TfrmRel0018.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
 VlrCustoMedioTotal  := 0;
 TotalVlrCustoMtotal := 0;
end;

procedure TfrmRel0018.QRLabel12Print(sender: TObject; var Value: String);
begin
 QrlCustoMedio.Caption := FormatFloat( '##,###,###,##0.00', VlrCustoMedioTotal );
 TotalVlrCustoMtotal := TotalVlrCustoMtotal + VlrCustoMedioTotal;
 VlrCustoMedioTotal  := 0;
end;

procedure TfrmRel0018.QRLabel14Print(sender: TObject; var Value: String);
begin
 QrlVlrCustoMedioTotalGeral.Caption := FormatFloat( '##,###,###,##0.00', TotalVlrCustoMtotal );
end;

procedure TfrmRel0018.QRLabel15Print(sender: TObject; var Value: String);
begin
 QrlVlrCustoMedioTotalPagina.Caption := FormatFloat( '##,###,###,##0.00', TotalVlrCustoMtotal );
end;

procedure TfrmRel0018.QRDB7Print(sender: TObject; var Value: String);
begin
 Value := FormatFloat('##,###,###,##0.00', StrToFloat( value ) );
end;

end.
