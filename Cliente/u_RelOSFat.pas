unit u_RelOSFat;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, quickrpt, Qrctrls;

type
  TfrmRelOSFat = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    TitleBand1: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRShape3: TQRShape;
    QRLabel1: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel16: TQRLabel;
    QRShape4: TQRShape;
    QRLabel18: TQRLabel;
    QRDBText15: TQRDBText;
    QRShape5: TQRShape;
    QRDBText16: TQRDBText;
    QRLabel19: TQRLabel;
    QRShape6: TQRShape;
    QRLabel20: TQRLabel;
    QRDBText17: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel24: TQRLabel;
    QRDBText22: TQRDBText;
    QRShape7: TQRShape;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRShape9: TQRShape;
    QRLabel27: TQRLabel;
    QRShape8: TQRShape;
    QRLabel28: TQRLabel;
    QRDBText23: TQRDBText;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRShape10: TQRShape;
    QRLabel34: TQRLabel;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRLabel31: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRShape16: TQRShape;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel47: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel48: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel49: TQRLabel;
    QRDBText18: TQRDBText;
    QRDBText24: TQRDBText;
    QRLabel50: TQRLabel;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    procedure QRDBText15Print(sender: TObject; var Value: String);
    procedure QRDBText25Print(sender: TObject; var Value: String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelOSFat: TfrmRelOSFat;

implementation

uses u_dmOs, DB;

{$R *.DFM}

procedure TfrmRelOSFat.QRDBText15Print(sender: TObject; var Value: String);
begin
 with dmOS do
 Value := Value + ' ' + cdsOsCIDADE.Value + ' ' + cdsOsSIGLAUFID.Value + ' ' + cdsOsCEPID.AsString;
end;

procedure TfrmRelOSFat.QRDBText25Print(sender: TObject; var Value: String);
begin
 if dmOS.cdsOsVLRORCADO.Value <> 0 then
    Value := FormatFloat( '###,###,##0.00;(###,###,##0.00)', ( dmOS.cdsOsVLRORCADO.Value * 5 ) /100 );
end;

procedure TfrmRelOSFat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action      := caFree;
 frmRelOSFat := Nil;
end;

end.
