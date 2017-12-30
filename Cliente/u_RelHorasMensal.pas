unit u_RelHorasMensal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TfrmRelHorasMensal = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel25: TQRLabel;
    QRBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel14: TQRLabel;
    qrlblSaldoAnt: TQRLabel;
    qrlblHComp: TQRLabel;
    QRBand2: TQRBand;
    QRShape2: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    qrdbtxtSaldoA: TQRDBText;
    QRDBText4: TQRDBText;
    qrlblHaComp: TQRLabel;
    qrlblSaldoAtual: TQRLabel;
    QRDBText5: TQRDBText;
    qrdbtxtSaldoAtual: TQRDBText;
    SummaryBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRShape3: TQRShape;
    QRLabel6: TQRLabel;
    QRShape39: TQRShape;
    QRSysData4: TQRSysData;
    QRLabel47: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qrdbtxtSaldoAtualPrint(sender: TObject; var Value: String);
    procedure qrdbtxtSaldoAPrint(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelHorasMensal: TfrmRelHorasMensal;

implementation

{$R *.dfm}

procedure TfrmRelHorasMensal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := Cafree;
 frmRelHorasMensal := nil;
end;

procedure TfrmRelHorasMensal.qrdbtxtSaldoAtualPrint(sender: TObject;
  var Value: String);
begin
 if StrToFloat( Value ) < 0 then
    TQRDBText( sender ).Font.Color := clRed
 else
    TQRDBText( sender ).Font.Color := clBlue;
end;

procedure TfrmRelHorasMensal.qrdbtxtSaldoAPrint(sender: TObject;
  var Value: String);
begin
 if StrToFloat( Value ) < 0 then
    TQRDBText( sender ).Font.Color := clRed
 else
    TQRDBText( sender ).Font.Color := clBlue;
end;

end.
