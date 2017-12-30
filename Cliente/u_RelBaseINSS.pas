unit u_RelBaseINSS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  TfrmRelBaseINSS = class(TForm)
    QuickRep1: TQuickRep;
    v: TQRGroup;
    QRShape11: TQRShape;
    QRShape9: TQRShape;
    QRShape8: TQRShape;
    QRShape7: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape16: TQRShape;
    QRShape2: TQRShape;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape3: TQRShape;
    QRLabel5: TQRLabel;
    QRShape10: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRBand1: TQRBand;
    QRLabel15: TQRLabel;
    QRShape12: TQRShape;
    QRLabel23: TQRLabel;
    DetailBand1: TQRBand;
    QRShape20: TQRShape;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    PageHeaderBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel12: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel14: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel16: TQRLabel;
    QRGroup1: TQRGroup;
    QRShape6: TQRShape;
    QRDBText2: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRBand2: TQRBand;
    ChildBand1: TQRChildBand;
    QRShape19: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRShape21: TQRShape;
    QRLabel24: TQRLabel;
    QRBand3: TQRBand;
    QRShape13: TQRShape;
    QRSysData4: TQRSysData;
    QRLabel17: TQRLabel;
    QRSysData3: TQRSysData;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelBaseINSS: TfrmRelBaseINSS;

implementation

uses u_dmRS;

{$R *.dfm}

procedure TfrmRelBaseINSS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 action         := cafree;
 frmRelBaseINSS := nil;
end;

procedure TfrmRelBaseINSS.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 ChildBand1.Enabled  := not dmRS.cdsRelBaseINSSDATAEXECUCAO.IsNull;
 DetailBand1.Enabled := not dmRS.cdsRelBaseINSSDATAEXECUCAO.IsNull;
end;

end.
