unit u_RelPreNota;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, DB;

type
  TfrmRelPreNota = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRSubDetail1: TQRSubDetail;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRSysData1: TQRSysData;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel18: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText16: TQRDBText;
    QRDBRichText1: TQRDBRichText;
    procedure QRDBText15Print(sender: TObject; var Value: String);
    procedure QRLabel20Print(sender: TObject; var Value: String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QuickRep1AfterPrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Via : String;
  end;

var
  frmRelPreNota: TfrmRelPreNota;

implementation

uses u_dmEF;

{$R *.DFM}

procedure TfrmRelPreNota.QRDBText15Print(sender: TObject;
  var Value: String);
begin
 if Value = 'True' then
    Value := 'E'
 else
    Value := ' ';
end;

procedure TfrmRelPreNota.QRLabel20Print(sender: TObject;
  var Value: String);
begin
 Value := Via
end;

procedure TfrmRelPreNota.QuickRep1AfterPrint(Sender: TObject);
begin
 if dmEF.cdsPds.State <> dsEdit then
    begin
     dmEF.cdsPds.Edit;
     dmEF.cdsPdsPRENOTA.Value := 1;
     dmEF.cdsPds.Post;
    end;
end;

procedure TfrmRelPreNota.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := cafree;
 frmRelPreNota := nil;
end;

end.
