unit u_Rel0023;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TfrmRel0023 = class(TForm)
    QuickRep1: TQuickRep;
    QRGroup1: TQRGroup;
    QRShape24: TQRShape;
    QRLabel17: TQRLabel;
    QRDBText24: TQRDBText;
    QRLabel46: TQRLabel;
    QRDBText25: TQRDBText;
    QRBand3: TQRBand;
    QRShape5: TQRShape;
    QRLabel22: TQRLabel;
    QRDBText10: TQRDBText;
    QRBand4: TQRBand;
    QRShape6: TQRShape;
    QRShape13: TQRShape;
    QRBand5: TQRBand;
    QRShape25: TQRShape;
    QRLabel34: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRShape3: TQRShape;
    QRShape7: TQRShape;
    QRLabel28: TQRLabel;
    QRShape4: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText3: TQRDBText;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText1: TQRDBText;
    QRBand1: TQRBand;
    QRShape2: TQRShape;
    QRSysData1: TQRSysData;
    QRLabel21: TQRLabel;
    QRSysData3: TQRSysData;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRDBText19Print(sender: TObject; var Value: String);
    procedure QRDBText8Print(sender: TObject; var Value: String);
    procedure QRDBText1Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRel0023: TfrmRel0023;

implementation

uses u_0023;

{$R *.dfm}

procedure TfrmRel0023.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action     := cafree;
 frmRel0023 := nil;
end;

procedure TfrmRel0023.QRDBText19Print(sender: TObject; var Value: String);
begin
 if Value = '1' then
    Value := 'Faturado'
 else
    Value := 'Há Faturar';
end;

procedure TfrmRel0023.QRDBText8Print(sender: TObject; var Value: String);
begin
 if Value = '0' then
    Value := 'Pendente'
 else
    Value := 'Avaliado';
end;

procedure TfrmRel0023.QRDBText1Print(sender: TObject; var Value: String);
begin
 if Value = '0' then
    Value := 'Sem Carta'
 else
    Value := 'Com Carta';

end;

end.
