unit u_Rel0032;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TfrmRel0032 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QrlTitulo: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel2: TQRLabel;
    QRBand2: TQRBand;
    QRShape1: TQRShape;
    Qrl1: TQRLabel;
    Qrl2: TQRLabel;
    Qrl3: TQRLabel;
    Qrl4: TQRLabel;
    Qrl5: TQRLabel;
    Qrl6: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRBand3: TQRBand;
    Qrdb1: TQRDBText;
    Qrdb2: TQRDBText;
    Qrdb3: TQRDBText;
    Qrdb4: TQRDBText;
    Qrdb5: TQRDBText;
    Qrdb6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRel0032: TfrmRel0032;

implementation

uses u_PrecoTransferencia;

{$R *.dfm}

procedure TfrmRel0032.QRLabel2Print(sender: TObject; var Value: String);
begin
 Value := Value + frmPrecoTransferencia.wwdtpcktDtIni2.Text + ' a '+ frmPrecoTransferencia.wwdtpcktDtFim2.Text;
end;

procedure TfrmRel0032.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action     := cafree;
 frmRel0032 := nil;                                            
end;

end.
