unit u_RelHoras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls,DB;

type
  TfrmRelHoras = class(TForm)
    QuickRep1: TQuickRep;
    QRBand2: TQRBand;
    QRShape17: TQRShape;
    QRLabel8: TQRLabel;
    QRShape3: TQRShape;
    QRLabel2: TQRLabel;
    QRShape6: TQRShape;
    QRLabel5: TQRLabel;
    QRShape7: TQRShape;
    QRLabel6: TQRLabel;
    QRShape10: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape14: TQRShape;
    QRLabel13: TQRLabel;
    QRShape25: TQRShape;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QrlSaldoAnterior: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape2: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel20: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRShape24: TQRShape;
    QRDBText13: TQRDBText;
    QRShape16: TQRShape;
    QRDBText6: TQRDBText;
    QRShape23: TQRShape;
    QRShape18: TQRShape;
    QRShape20: TQRShape;
    QRShape15: TQRShape;
    QRShape5: TQRShape;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRShape19: TQRShape;
    QRDBText11: TQRDBText;
    QRShape21: TQRShape;
    QRDBText12: TQRDBText;
    QRShape4: TQRShape;
    QRDBText3: TQRDBText;
    PageHeaderBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel25: TQRLabel;
    SummaryBand1: TQRBand;
    QRShape28: TQRShape;
    QRLabel19: TQRLabel;
    QRShape32: TQRShape;
    QRLabel23: TQRLabel;
    QrlHoraid: TQRLabel;
    QrlNome: TQRLabel;
    QrlSaldo: TQRLabel;
    QRDBText1: TQRDBText;
    QRBand1: TQRBand;
    QRShape39: TQRShape;
    QRSysData4: TQRSysData;
    QRLabel47: TQRLabel;
    QRSysData2: TQRSysData;
    QRShape8: TQRShape;
    QRLabel14: TQRLabel;
    QRDBText2: TQRDBText;
    QRShape9: TQRShape;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRDBText16Print(sender: TObject; var Value: String);
    procedure QrlSaldoAnteriorPrint(sender: TObject; var Value: String);
    procedure QrlSaldoPrint(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelHoras: TfrmRelHoras;

implementation

uses u_dmRD;

{$R *.dfm}

procedure TfrmRelHoras.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 frmRelHoras := nil;
end;

procedure TfrmRelHoras.QRDBText16Print(sender: TObject; var Value: String);
begin
 if dmRD.cdsHoraVLRSALDO.Value < 1 then
    QrlSaldo.Font.Color := clRed;
end;

procedure TfrmRelHoras.QrlSaldoAnteriorPrint(sender: TObject;
  var Value: String);
begin
 Value := Formatfloat( '#,##0.00', StrToFloat( TQRLabel( sender ).Caption ) );

 if StrToInt( TQRLabel( sender ).Caption ) < 1 then
    TQRLabel( sender ).Font.Color := clRed;
end;

procedure TfrmRelHoras.QrlSaldoPrint(sender: TObject; var Value: String);
begin
 if dmRD.cdsRelHoraItemVLRSALDO.Value < 1 then
    TQRLabel( sender ).Font.Color := clRed;
end;

end.
