unit u_RelEmissaoDuplicata;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, QRCtrls, QuickRpt, ExtCtrls, Extenso, grimgctrl, DB, DBClient;

type
  TfrmRelEmissaoDuplicata = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRShape8: TQRShape;
    QRShape14: TQRShape;
    QRShape12: TQRShape;
    QRShape36: TQRShape;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRShape2: TQRShape;
    qrlblEnd: TQRLabel;
    QRShape5: TQRShape;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    QRShape6: TQRShape;
    QRLabel6: TQRLabel;
    QRShape7: TQRShape;
    QRLabel7: TQRLabel;
    QRRichText20: TQRRichText;
    QRShape13: TQRShape;
    QRLabel16: TQRLabel;
    QRShape17: TQRShape;
    qrlblFone: TQRLabel;
    qrlblEnd2: TQRLabel;
    qrlblCNPJ: TQRLabel;
    qrlblInscrEst: TQRLabel;
    qrlblInscrMun: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape3: TQRShape;
    QRLabel5: TQRLabel;
    QRShape4: TQRShape;
    QRLabel12: TQRLabel;
    QRShape11: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape16: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel23: TQRLabel;
    Extenso1: TExtenso;
    QRGrImage1: TQRGrImage;
    QRShape9: TQRShape;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRDBText11Print(sender: TObject; var Value: String);
    procedure QRDBText4Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelEmissaoDuplicata: TfrmRelEmissaoDuplicata;

implementation

uses u_EmissaoDuplicata,FuncoesCliente, u_dmGSI, u_dmAS, funcoesDSI;

{$R *.dfm}

procedure TfrmRelEmissaoDuplicata.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 action := cafree;
 frmRelEmissaoDuplicata := nil;
end;

procedure TfrmRelEmissaoDuplicata.QRDBText11Print(sender: TObject;
  var Value: String);
begin
 Extenso1.Numero := Value;
 Value := UpperCase( Extenso1.Extenso );
end;

procedure TfrmRelEmissaoDuplicata.QRDBText4Print(sender: TObject;
  var Value: String);
begin
 Value := Value + '/' +  StrZero( frmEmissaoDuplicata.cdsDuplicata.FieldByName('PARCELAID').Value, 2, 0 );
end;

end.
