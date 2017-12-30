unit u_RelHoraCompensada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TfrmRelHoraCompensada = class(TForm)
    QuickRep1: TQuickRep;
    QRGroup1: TQRGroup;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    PageHeaderBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape12: TQRShape;
    QRDBText7: TQRDBText;
    QRDBText14: TQRDBText;
    QRShape17: TQRShape;
    QRLabel8: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLabel6: TQRLabel;
    QRShape2: TQRShape;
    QRLabel7: TQRLabel;
    QRShape8: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape10: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape14: TQRShape;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel20: TQRLabel;
    QRShape9: TQRShape;
    QRShape16: TQRShape;
    QRDBText6: TQRDBText;
    QRShape23: TQRShape;
    QRShape15: TQRShape;
    QRShape5: TQRShape;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRShape24: TQRShape;
    QRDBText13: TQRDBText;
    QRShape18: TQRShape;
    QRShape20: TQRShape;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRShape19: TQRShape;
    QRDBText11: TQRDBText;
    QRShape21: TQRShape;
    QRDBText12: TQRDBText;
    QRShape4: TQRShape;
    QRDBText3: TQRDBText;
    QRShape28: TQRShape;
    QRLabel19: TQRLabel;
    QRShape32: TQRShape;
    QRLabel23: TQRLabel;
    QrlSaldo: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel47: TQRLabel;
    QRSysData4: TQRSysData;
    QRShape39: TQRShape;
    QRSysData2: TQRSysData;
    QRLabel16: TQRLabel;
    QRShape3: TQRShape;
    QRDBText15: TQRDBText;
    QRShape11: TQRShape;
    QRLabel21: TQRLabel;
    ChildBand1: TQRChildBand;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelHoraCompensada: TfrmRelHoraCompensada;

implementation

uses u_dmRD, u_parImpHora;

{$R *.dfm}

procedure TfrmRelHoraCompensada.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := Cafree;
 frmRelHoraCompensada := nil;
end;

end.
