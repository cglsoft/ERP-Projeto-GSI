unit u_Rel0036;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  TfrmRel0036 = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel25: TQRLabel;
    SummaryBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel6: TQRLabel;
    QRBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel7: TQRLabel;
    QRBand2: TQRBand;
    QRShape2: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText8: TQRDBText;
    QRGroup1: TQRGroup;
    QRLabel3: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRDBText8Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRel0036: TfrmRel0036;

implementation

uses u_0036;

{$R *.dfm}

procedure TfrmRel0036.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action     := cafree;
 frmRel0036 := nil;
end;

procedure TfrmRel0036.QRDBText8Print(sender: TObject; var Value: String);
begin
 if StrToFloat( Value ) < 0 then
    QRDBText8.Font.Color := clRed
 else
    QRDBText8.Font.Color := clBlue;
end;

end.
