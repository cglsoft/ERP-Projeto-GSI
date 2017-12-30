unit u_RelHorasPendentes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TfrmRelHorasPendentes = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel25: TQRLabel;
    SummaryBand1: TQRBand;
    QRBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRShape2: TQRShape;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel5: TQRLabel;
    QRDBText6: TQRDBText;
    QRGroup1: TQRGroup;
    QRDBText5: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText8: TQRDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRDBText8Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelHorasPendentes: TfrmRelHorasPendentes;

implementation

uses u_HoraSolicitacao, u_parImpHora;

{$R *.dfm}

procedure TfrmRelHorasPendentes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := cafree;
 frmRelHorasPendentes := nil;
end;

procedure TfrmRelHorasPendentes.QRDBText8Print(sender: TObject;
  var Value: String);
begin
 if StrToFloat( Value ) < 0 then
    QRDBText8.Font.Color := clRed;
end;

end.
