unit u_RelFichaDI;

interface

uses
  Windows, Forms, QRCtrls, QuickRpt, Classes, Controls, ExtCtrls;

type
  TfrmRelFichaDI = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel51: TQRLabel;
    QRBand2: TQRBand;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText1: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText33: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText8: TQRDBText;
    QRShape2: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape3: TQRShape;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape4: TQRShape;
    QRLabel13: TQRLabel;
    QRLabel17: TQRLabel;
    QRShape5: TQRShape;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape6: TQRShape;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRShape7: TQRShape;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRLabel26: TQRLabel;
    QRDBText14: TQRDBText;
    QRLAliqIcms: TQRLabel;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRBand3: TQRBand;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRLabel27: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText31: TQRDBText;
    QRLabel46: TQRLabel;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRLabel48: TQRLabel;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRLabel50: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel47: TQRLabel;
    QRDBText41: TQRDBText;
    QRLabel52: TQRLabel;
    QRDBText44: TQRDBText;
    QRLabel53: TQRLabel;
    QRDBText45: TQRDBText;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRDBText46: TQRDBText;
    QRExpr19: TQRExpr;
    QRDBText47: TQRDBText;
    QRDBText48: TQRDBText;
    QRLabel60: TQRLabel;
    QRDBText49: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRDBText50: TQRDBText;
    QRDBText51: TQRDBText;
    QRDBText52: TQRDBText;
    QRDBText53: TQRDBText;
    QRDBText54: TQRDBText;
    QRDBText55: TQRDBText;
    QRDBText56: TQRDBText;
    QRDBText57: TQRDBText;
    QRDBText58: TQRDBText;
    QRExpr8: TQRExpr;
    QRLabel9: TQRLabel;
    QRLabel49: TQRLabel;
    QRDBText59: TQRDBText;
    QRDBText60: TQRDBText;
    QRLabel58: TQRLabel;
    QRDBText61: TQRDBText;
    QRLabel59: TQRLabel;
    QRDBText7: TQRDBText;
    QRExpr9: TQRExpr;
    QRDBText62: TQRDBText;
    QRShape39: TQRShape;
    QRSysData4: TQRSysData;
    QRLabel12: TQRLabel;
    QRSysData3: TQRSysData;
    QRLVLRTOTALICMS: TQRLabel;
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelFichaDI: TfrmRelFichaDI;

implementation

uses u_dmIT;

{$R *.DFM}

procedure TfrmRelFichaDI.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 { Solicitado pelo Joel, que ao Imprimir esta DI o Valor do Icms fosse alterado para o abaixo apresentado
   Isto aconteceu pois eles cometeram algum erro ao importar produtos com prodepe junto com outros. Sendo
   assim não consiguiram encontrar uma forma de resolver o problema e optaram por alterar manualmente.
  QELVlRTOTALICMS atrás do QEDBText34 }

 if dmIT.cdsDeclaracaoDIID.AsString = '05/1378518-8' then
    begin
     QRDBText34.Enabled := False;
     QRDBText34.Caption := '';
     QRLVLRTOTALICMS.Caption := '2020,04';
     QRLVLRTOTALICMS.BringToFront;
    end;
end;

procedure TfrmRelFichaDI.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
 if dmIT.cdsDeclaracaoEMPRESAID.Value = 12 then
    QRLAliqIcms.Caption := '17.00%';
end;

end.

