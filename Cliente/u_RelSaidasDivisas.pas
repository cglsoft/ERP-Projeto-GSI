unit u_RelSaidasDivisas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TfrmRelSaidasDivisas = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRShape5: TQRShape;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    PageFooterBand1: TQRBand;
    QRShape4: TQRShape;
    QRSysData2: TQRSysData;
    QRLabel12: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRShape2: TQRShape;
    QRShape1: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel19: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape3: TQRShape;
    QRLabel13: TQRLabel;
    QRBand1: TQRBand;
    QRSysData5: TQRSysData;
    QRShape39: TQRShape;
    QRSysData4: TQRSysData;
    QRLabel47: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRLabel1Print(sender: TObject; var Value: String);
    procedure QRLabel26Print(sender: TObject; var Value: String);
    procedure QRLabel27Print(sender: TObject; var Value: String);
    procedure QRLabel28Print(sender: TObject; var Value: String);
    procedure QRLabel29Print(sender: TObject; var Value: String);
    procedure QRLabel13Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  VlrAjuste,
  VlrPrecoTransf,
  VlrPrecoPraticado,
  VlrTotalOperacao :  Currency;
  end;

var
  frmRelSaidasDivisas: TfrmRelSaidasDivisas;

implementation

uses u_PrecoTransferencia;

{$R *.dfm}

procedure TfrmRelSaidasDivisas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 frmRelSaidasDivisas := nil;
end;

procedure TfrmRelSaidasDivisas.QRLabel1Print(sender: TObject;
  var Value: String);
begin
 Value := Value + frmPrecoTransferencia.wwdtpcktDtIni2.Text + ' a ' + frmPrecoTransferencia.wwdtpcktDtFim2.Text;
end;

procedure TfrmRelSaidasDivisas.QRLabel26Print(sender: TObject;
  var Value: String);
begin
 Value  := FormatFloat('###,###,###,##0.00',VlrAjuste );
end;

procedure TfrmRelSaidasDivisas.QRLabel27Print(sender: TObject;
  var Value: String);
begin
 Value := FormatFloat('###,###,###,##0.00',VlrPrecoPraticado );
end;

procedure TfrmRelSaidasDivisas.QRLabel28Print(sender: TObject;
  var Value: String);
begin
 Value := FormatFloat('###,###,###,##0.00',VlrPrecoTransf );
end;

procedure TfrmRelSaidasDivisas.QRLabel29Print(sender: TObject;
  var Value: String);
begin
 Value := FormatFloat('###,###,###,##0.00',VlrAjuste );
end;

procedure TfrmRelSaidasDivisas.QRLabel13Print(sender: TObject;
  var Value: String);
begin
 Value := FormatFloat('###,###,###,##0.00',VlrTotalOperacao );
end;

end.
