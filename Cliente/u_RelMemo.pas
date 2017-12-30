unit u_RelMemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, Extenso;

type
  TfrmRelMemo = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRShape6: TQRShape;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRShape2: TQRShape;
    QRLabel3: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRDBText1: TQRDBText;
    QRShape5: TQRShape;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRShape7: TQRShape;
    QRLabel7: TQRLabel;
    QRShape9: TQRShape;
    QRLabel9: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRShape10: TQRShape;
    QRLabel10: TQRLabel;
    QRDBText10: TQRDBText;
    QRShape15: TQRShape;
    QRLabel18: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel31: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText6: TQRDBText;
    QRShape8: TQRShape;
    QRLabel5: TQRLabel;
    QRDBText7: TQRDBText;
    QRShape11: TQRShape;
    QRLabel8: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel1: TQRLabel;
    Extenso1: TExtenso;
    QRBand1: TQRBand;
    QRSysData5: TQRSysData;
    QRShape39: TQRShape;
    QRSysData4: TQRSysData;
    QRLabel47: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel11: TQRLabel;
    QrlVlrDespesa: TQRLabel;
    procedure QRDBText3Print(sender: TObject; var Value: String);
    procedure QRDBText1Print(sender: TObject; var Value: String);
    procedure QRLabel14Print(sender: TObject; var Value: String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelMemo: TfrmRelMemo;

implementation

uses u_dmRD;

{$R *.dfm}

procedure TfrmRelMemo.QRDBText3Print(sender: TObject; var Value: String);
begin
 Extenso1.Numero := Value;
 Value := '( ' + UpperCase( Extenso1.Extenso ) + ' )';
end;

procedure TfrmRelMemo.QRDBText1Print(sender: TObject; var Value: String);
begin
// Value := 'Nº ' + StrZero( StrToInt( Value ), 5, 0 );
end;

procedure TfrmRelMemo.QRLabel14Print(sender: TObject; var Value: String);
begin
 if      dmRD.cdsMemoL_OPERACAO.AsString = 'D' then
         Value := 'pagar '
 else if dmRD.cdsMemoL_OPERACAO.AsString = 'C' then
         Value := 'receber ';
end;

procedure TfrmRelMemo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action     := caFree;
 frmRelMemo := Nil;
// FreeAndNil( frmRelMemo.QuickRep1 ); 
end;

end.
