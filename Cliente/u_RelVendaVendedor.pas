unit u_RelVendaVendedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TfrmRelVendaVendedor = class(TForm)
    QuickRep1: TQuickRep;
    QRGroup1: TQRGroup;
    QRLabel15: TQRLabel;
    QRDBText24: TQRDBText;
    QRBand1: TQRBand;
    QRShape8: TQRShape;
    QRLabel12: TQRLabel;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText14: TQRDBText;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape2: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRDBText33: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape3: TQRShape;
    QRShape16: TQRShape;
    QRLabel3: TQRLabel;
    QRShape11: TQRShape;
    QRShape1: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    qrexLiquidoSum: TQRExpr;
    PageFooterBand1: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel11: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText18: TQRDBText;
    GroupHeaderBand1: TQRBand;
    QRShape17: TQRShape;
    QRLabel22: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRShape18: TQRShape;
    QRShape6: TQRShape;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText12: TQRDBText;
    qrexLiquido: TQRDBText;
    QRExpr6: TQRExpr;
    QRLabel16: TQRLabel;
    QRShape7: TQRShape;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRExpr10: TQRExpr;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel42: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText17: TQRDBText;
    QRSysData5: TQRSysData;
    QRShape39: TQRShape;
    QRSysData4: TQRSysData;
    QRLabel47: TQRLabel;
    procedure QRDBText25Print(sender: TObject; var Value: String);
    procedure QRDBText8Print(sender: TObject; var Value: String);
    procedure QRDBText3Print(sender: TObject; var Value: String);
    procedure QRDBText13Print(sender: TObject; var Value: String);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelVendaVendedor: TfrmRelVendaVendedor;

implementation

uses u_ParRelVendedor, u_dmPP;

{$R *.dfm}

procedure TfrmRelVendaVendedor.QRDBText25Print(sender: TObject;
  var Value: String);
begin
 if      Value = 'C' then
         Value := 'Coordenador'
 else if Value = 'R' then
         Value := 'Representante'
 else if Value = 'A' then
         Value := 'Acessor Jurídico'
 else if Value = 'S' then
         Value := 'Supervidor de Venda'
 else if Value = 'V' then
         Value := 'Vendedor'
 else
   Value := 'Error'
end;

procedure TfrmRelVendaVendedor.QRDBText8Print(sender: TObject;
  var Value: String);
begin
 if      Value = 'C' then
         Value := 'Concorrência'
 else if Value = 'V' then
         Value := 'Venda Direta'
 else
   Value := 'Error'
end;

procedure TfrmRelVendaVendedor.QRDBText3Print(sender: TObject;
  var Value: String);
begin
 if      Value = 'I' then
         Value := 'Importação'
 else if Value = 'R' then
         Value := 'Revenda'
 else
   Value := 'Error';
end;

procedure TfrmRelVendaVendedor.QRDBText13Print(sender: TObject;
  var Value: String);
begin
 if Value = 'P' then
    Value := 'Principal'
 else
    Value := 'Secundário';
end;

procedure TfrmRelVendaVendedor.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
{ if Pos( 'REPRESENT', dmqryImp.qryRelVendedoresFUNCAO_VENDEDOR.Value ) > 0 then
    begin}
     QRShape7.Enabled   := True;
     QRLabel17.Enabled  := True;
     QRLabel18.Enabled  := True;
     QRLabel21.Enabled  := True;
     QRLabel40.Enabled  := True;
     QRLabel41.Enabled  := True;
     QRExpr7.Enabled    := True;
     QRExpr8.Enabled    := True;
     QRExpr9.Enabled    := True;
     QRExpr10.Enabled   := True;
{    end;}

end;

procedure TfrmRelVendaVendedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := cafree;
 frmRelVendaVendedor := nil;
end;

end.
