unit u_RelEmpenho;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls,DbClient;

type
  TfrmRelEmpenho = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
    QRDBText2: TQRDBText;
    QRShape3: TQRShape;
    QRLabel4: TQRLabel;
    QRDBText3: TQRDBText;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRLabel6: TQRLabel;
    QRDBText5: TQRDBText;
    QRShape7: TQRShape;
    QRLabel10: TQRLabel;
    QRShape9: TQRShape;
    QRLabel11: TQRLabel;
    QRShape10: TQRShape;
    QRShape12: TQRShape;
    QRDBText11: TQRDBText;
    QRShape8: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel37: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel9: TQRLabel;
    QRShape15: TQRShape;
    QRDBText4: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel5: TQRLabel;
    QRShape18: TQRShape;
    QRLabel17: TQRLabel;
    QRDBText16: TQRDBText;
    QRShape19: TQRShape;
    QRLabel18: TQRLabel;
    QRDBText17: TQRDBText;
    QRShape2: TQRShape;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRShape11: TQRShape;
    QRLabel2: TQRLabel;
    QRDBText10: TQRDBText;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRLabel13: TQRLabel;
    QRDBText13: TQRDBText;
    QRShape16: TQRShape;
    QRLabel15: TQRLabel;
    QRShape17: TQRShape;
    QRLabel16: TQRLabel;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRDBText15: TQRDBText;
    QRShape23: TQRShape;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRDBText20: TQRDBText;
    QRLabel24: TQRLabel;
    QRShape24: TQRShape;
    QRLabel25: TQRLabel;
    QRShape25: TQRShape;
    QRLabel26: TQRLabel;
    QRDBText23: TQRDBText;
    QRShape26: TQRShape;
    QRLabel27: TQRLabel;
    QRDBText24: TQRDBText;
    QRShape27: TQRShape;
    QRLabel28: TQRLabel;
    QRDBText25: TQRDBText;
    QRShape28: TQRShape;
    QRLabel29: TQRLabel;
    QRDBText26: TQRDBText;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRShape6: TQRShape;
    QRLabel7: TQRLabel;
    QRDBText6: TQRDBText;
    QRShape22: TQRShape;
    QRLabel20: TQRLabel;
    QRDBText7: TQRDBText;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRLabel34: TQRLabel;
    QRDBText9: TQRDBText;
    QRShape31: TQRShape;
    QRLabel35: TQRLabel;
    QRShape32: TQRShape;
    QRLabel36: TQRLabel;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRDBText14: TQRDBText;
    QRShape35: TQRShape;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel42: TQRLabel;
    QRShape36: TQRShape;
    QRLabel43: TQRLabel;
    QRShape37: TQRShape;
    QRLabel44: TQRLabel;
    QRDBText30: TQRDBText;
    QRShape38: TQRShape;
    QRLabel45: TQRLabel;
    QRDBText31: TQRDBText;
    QRShape39: TQRShape;
    QRLabel46: TQRLabel;
    QRDBText32: TQRDBText;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRDBText33: TQRDBText;
    QRShape40: TQRShape;
    QRLabel51: TQRLabel;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRShape43: TQRShape;
    QRLabel54: TQRLabel;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRShape46: TQRShape;
    QRLabel57: TQRLabel;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRBand1: TQRBand;
    QRShape49: TQRShape;
    QRSysData4: TQRSysData;
    QRLabel12: TQRLabel;
    QRSysData2: TQRSysData;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    procedure QRDBText28Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelEmpenho: TfrmRelEmpenho;

implementation

uses u_dmOs, FuncoesCliente;

{$R *.DFM}

procedure TfrmRelEmpenho.QRDBText28Print(sender: TObject;
  var Value: String);
begin
 if Value = 'N' then
    Value := 'Peça Nova'
 else
    Value := 'Peça Revisada';
end;

end.
