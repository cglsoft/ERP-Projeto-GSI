unit u_RelRPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, Extenso;

type
  TfrmRelRPS = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape2: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRShape3: TQRShape;
    QRLabel10: TQRLabel;
    QRShape4: TQRShape;
    QRDBText8: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel19: TQRLabel;
    QRShape5: TQRShape;
    QRLabel20: TQRLabel;
    QRShape6: TQRShape;
    QRLabel21: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel22: TQRLabel;
    QRShape7: TQRShape;
    QRLabel24: TQRLabel;
    QRShape8: TQRShape;
    QRLabel23: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRDBText17: TQRDBText;
    QRLabel29: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel30: TQRLabel;
    QRDBText19: TQRDBText;
    QRLabel31: TQRLabel;
    QRDBRichText1: TQRDBRichText;
    QRLabel32: TQRLabel;
    QRDBRichText2: TQRDBRichText;
    QRLabel33: TQRLabel;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRShape11: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText10: TQRDBText;
    QRShape12: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText9: TQRDBText;
    QRShape13: TQRShape;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText16: TQRDBText;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRLabel48: TQRLabel;
    QRDBText24: TQRDBText;
    QRShape18: TQRShape;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRShape19: TQRShape;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRDBText27: TQRDBText;
    QRRichText1: TQRRichText;
    QRDBText28: TQRDBText;
    QRLabel56: TQRLabel;
    QRDBText29: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText30: TQRDBText;
    Extenso1: TExtenso;
    procedure QRDBText8Print(sender: TObject; var Value: String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelRPS: TfrmRelRPS;

implementation

uses u_dmRS;

{$R *.dfm}

procedure TfrmRelRPS.QRDBText8Print(sender: TObject; var Value: String);
begin
 Extenso1.Numero := Value ;
 Value := UpperCase( Extenso1.Extenso )
end;

procedure TfrmRelRPS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action    := cafree;
 frmRelRPS := nil;
end;

procedure TfrmRelRPS.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
 QRRichText1.Lines.Clear;
// QRRichText1.Lines.Add( dmRS.cdsReciboL_DESCR_IMPOSTO.Value );
end;

end.
