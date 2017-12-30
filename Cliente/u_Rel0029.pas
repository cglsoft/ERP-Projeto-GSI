unit u_Rel0029;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TfrmRel0029 = class(TForm)
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
    procedure QrlSumVlrtotalPrint(sender: TObject; var Value: String);
    procedure QrlSumPercentualPrint(sender: TObject; var Value: String);
    procedure QrlSumAcumuladoPrint(sender: TObject; var Value: String);
    procedure Qrdb4Print(sender: TObject; var Value: String);
    procedure Qrdb5Print(sender: TObject; var Value: String);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure Qrdb6Print(sender: TObject; var Value: String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRLabel2Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRel0029: TfrmRel0029;
  VlrCCredito,
  VlrSCredito,
  VlrIPICreditado : Currency;

implementation

uses u_PrecoTransferencia;

{$R *.dfm}


procedure TfrmRel0029.QrlSumVlrtotalPrint(sender: TObject;
  var Value: String);
begin
 Value := FormatFloat('###,###,###,##0.00',VlrCCredito );
end;

procedure TfrmRel0029.QrlSumPercentualPrint(sender: TObject;
  var Value: String);
begin
 Value := FormatFloat('###,###,###,##0.00',VlrSCredito );
end;

procedure TfrmRel0029.QrlSumAcumuladoPrint(sender: TObject;
  var Value: String);
begin
 Value := FormatFloat('###,###,###,##0.00',VlrIPICreditado );
end;

procedure TfrmRel0029.Qrdb4Print(sender: TObject; var Value: String);
begin
 VlrCCredito := VlrCCredito + StrToFloat( Value );
end;

procedure TfrmRel0029.Qrdb5Print(sender: TObject; var Value: String);
begin
 VlrSCredito := VlrSCredito + StrToFloat( Value );
end;

procedure TfrmRel0029.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
 VlrCCredito     := 0;
 VlrSCredito     := 0;
 VlrIPICreditado := 0;
end;

procedure TfrmRel0029.Qrdb6Print(sender: TObject; var Value: String);
begin
 VlrIPICreditado := VlrIPICreditado + StrToFloat( Value );
end;

procedure TfrmRel0029.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := cafree;
 frmRel0029 := nil;
end;

procedure TfrmRel0029.QRLabel2Print(sender: TObject; var Value: String);
begin
 Value := Value + frmPrecoTransferencia.wwdtpcktDtIni2.Text + ' a '+ frmPrecoTransferencia.wwdtpcktDtFim2.Text;
end;

end.
