unit u_RelHorasApuracao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TfrmRelHorasApuracao = class(TForm)
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
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    qrdbtxtSaldoA: TQRDBText;
    QRDBText4: TQRDBText;
    qrlblSaldoAtual: TQRLabel;
    QRDBText5: TQRDBText;
    qrdbtxtSaldoAtualM: TQRDBText;
    SummaryBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRShape39: TQRShape;
    QRSysData4: TQRSysData;
    QRLabel47: TQRLabel;
    qrlblSaldoAtualMinutos: TQRLabel;
    qrdbtxtSaldoAtual: TQRDBText;
    qrlblDataSaldo: TQRLabel;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape8: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    qrlblDataSaldoAtual: TQRLabel;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRDBText3: TQRDBText;
    qrlblFxData: TQRLabel;
    QRGroup1: TQRGroup;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRLabel10: TQRLabel;
    QRShape2: TQRShape;
    QRDBText6: TQRDBText;
    QRShape19: TQRShape;
    QRLabel11: TQRLabel;
    SummaryBand2: TQRBand;
    QRShape20: TQRShape;
    QRDBText7: TQRDBText;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape3: TQRShape;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qrdbtxtSaldoAtualMPrint(sender: TObject; var Value: String);
    procedure qrdbtxtSaldoAPrint(sender: TObject; var Value: String);
    procedure qrdbtxtSaldoAtualPrint(sender: TObject; var Value: string);
    procedure QRDBText7Print(sender: TObject; var Value: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelHorasApuracao: TfrmRelHorasApuracao;

implementation

{$R *.dfm}

procedure TfrmRelHorasApuracao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := Cafree;
 frmRelHorasApuracao := nil;
end;

procedure TfrmRelHorasApuracao.qrdbtxtSaldoAtualPrint(sender: TObject;
  var Value: string);
begin
 if StrToFloat( Value ) < 0 then
    begin
     TQRDBText( sender ).Font.Color := clRed;
     Value := '0'
    end
 else
    TQRDBText( sender ).Font.Color := clBlue;
end;

procedure TfrmRelHorasApuracao.qrdbtxtSaldoAtualMPrint(sender: TObject;
  var Value: String);
begin
 if StrToFloat( Value ) < 0 then
    begin
     TQRDBText( sender ).Font.Color := clRed;
    end
 else
    begin
     TQRDBText( sender ).Font.Color := clBlue;
     Value := '0'
    end;
end;

procedure TfrmRelHorasApuracao.QRDBText7Print(sender: TObject;
  var Value: string);
begin
 if StrToFloat( Value ) < 0 then
    TQRDBText( sender ).Font.Color := clRed
 else
    TQRDBText( sender ).Font.Color := clBlue;
end;

procedure TfrmRelHorasApuracao.qrdbtxtSaldoAPrint(sender: TObject;
  var Value: String);
begin
 if StrToFloat( Value ) < 0 then
    TQRDBText( sender ).Font.Color := clRed
 else
    TQRDBText( sender ).Font.Color := clBlue;
end;

end.
