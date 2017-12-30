unit u_Rel0028;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TfrmRel0028 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QrlTitulo: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel2: TQRLabel;
    QRBand2: TQRBand;
    QRShape1: TQRShape;
    Qrl1: TQRLabel;
    Qrl4: TQRLabel;
    Qrl5: TQRLabel;
    Qrl6: TQRLabel;
    QRBand3: TQRBand;
    Qrdb1: TQRDBText;
    Qrdb4: TQRDBText;
    Qrdb5: TQRDBText;
    Qrdb6: TQRDBText;
    QRBand4: TQRBand;
    QRShape4: TQRShape;
    QRSysData2: TQRSysData;
    QRLabel12: TQRLabel;
    QRBand5: TQRBand;
    QRShape2: TQRShape;
    QrlSumVlrtotal: TQRLabel;
    QrlSumPercentual: TQRLabel;
    QrlSumAcumulado: TQRLabel;
    QRSysData5: TQRSysData;
    procedure QRLabel2Print(sender: TObject; var Value: String);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure Qrdb4Print(sender: TObject; var Value: String);
    procedure QrlSumVlrtotalPrint(sender: TObject; var Value: String);
    procedure Qrdb5Print(sender: TObject; var Value: String);
    procedure Qrdb6Print(sender: TObject; var Value: String);
    procedure QrlSumPercentualPrint(sender: TObject; var Value: String);
    procedure QrlSumAcumuladoPrint(sender: TObject; var Value: String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRel0028 : TfrmRel0028;
  VlrCDebito,
  VlrSDebito,
  VlrIPIDebitado : Currency;


implementation

uses u_PrecoTransferencia;

{$R *.dfm}

procedure TfrmRel0028.QRLabel2Print(sender: TObject; var Value: String);
begin
 Value := Value + frmPrecoTransferencia.wwdtpcktDtIni2.Text + ' a '+ frmPrecoTransferencia.wwdtpcktDtFim2.Text;
end;

procedure TfrmRel0028.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
 VlrCDebito     := 0;
 VlrSDebito     := 0;
 VlrIPIDebitado := 0;
end;

procedure TfrmRel0028.Qrdb4Print(sender: TObject; var Value: String);
begin
 VlrCDebito := VlrCDebito + StrToFloat( Value ); 
end;

procedure TfrmRel0028.QrlSumVlrtotalPrint(sender: TObject;
  var Value: String);
begin
 Value := FormatFloat('###,###,###,##0.00',VlrCDebito );
end;

procedure TfrmRel0028.Qrdb5Print(sender: TObject; var Value: String);
begin
 VlrSDebito := VlrSDebito + StrToFloat( Value );
end;

procedure TfrmRel0028.Qrdb6Print(sender: TObject; var Value: String);
begin
 VlrIPIDebitado := VlrIPIDebitado + StrToFloat( Value );
end;

procedure TfrmRel0028.QrlSumPercentualPrint(sender: TObject;
  var Value: String);
begin
 Value := FormatFloat('###,###,###,##0.00',VlrSDebito );
end;

procedure TfrmRel0028.QrlSumAcumuladoPrint(sender: TObject;
  var Value: String);
begin
 Value := FormatFloat('###,###,###,##0.00',VlrIPIDebitado );
end;

procedure TfrmRel0028.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := cafree;
 frmRel0028 := nil;
end;

end.
