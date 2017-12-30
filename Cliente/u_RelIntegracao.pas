unit u_RelIntegracao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TfrmRelIntegracao = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    QRLabel20: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel26: TQRLabel;
    QRShape6: TQRShape;
    QRShape5: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRLabel27: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRShape2: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel19: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    PageFooterBand1: TQRBand;
    SummaryBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRShape3: TQRShape;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape9: TQRShape;
    QRShape4: TQRShape;
    QRLabel4: TQRLabel;
    QRShape39: TQRShape;
    QRSysData4: TQRSysData;
    QRLabel47: TQRLabel;
    QRSysData2: TQRSysData;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRLabel17Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    Deb : Currency;
    Cre : Currency;
  end;

var
  frmRelIntegracao: TfrmRelIntegracao;

implementation

uses u_Integracao;

{$R *.dfm}

procedure TfrmRelIntegracao.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 with frmIntegracao do
 begin
  if not cdsAux.IsEmpty then
     if cdsAux.FieldByName('DEBITO_CREDITO').Value = 'D' then
        begin
         Deb := Deb + cdsAux.FieldByName('VALOR').Value;
         QRDBText1.Enabled := True;
         QRDBText2.Enabled := True;
         QRDBText3.Enabled := False;
         QRDBText4.Enabled := False;
         QRDBText5.Enabled := True;
         QRDBText6.Enabled := False;
        end
     else
        begin
            Cre := Cre + cdsAux.FieldByName('VALOR').Value;
            QRDBText3.Enabled := True;
            QRDBText4.Enabled := True;
            QRDBText1.Enabled := False;
            QRDBText2.Enabled := False;
            QRDBText6.Enabled := True;
            QRDBText5.Enabled := False;
        end;
 end;
end;

procedure TfrmRelIntegracao.FormCreate(Sender: TObject);
begin
 Cre := 0;
 Deb := 0;
end;

procedure TfrmRelIntegracao.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 QRLabel3.Caption := FormatCurr( '##,###,##0.00', Deb );
 QRLabel4.Caption := FormatCurr( '##,###,##0.00', Cre );
end;

procedure TfrmRelIntegracao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 frmRelIntegracao := Nil;
end;

procedure TfrmRelIntegracao.QRLabel17Print(sender: TObject;
  var Value: String);
begin
 Deb := 0;
 Cre := 0;
end;

end.
