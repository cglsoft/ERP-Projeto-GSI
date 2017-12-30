unit u_RelPedidoVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, StdCtrls, DB, DBClient;

type
  TfrmRelPedidoVenda = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText2: TQRDBText;
    QRSysData1: TQRSysData;
    QRShape1: TQRShape;
    QRLabel7: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel30: TQRLabel;
    QRDBText7: TQRDBText;
    QRBand2: TQRBand;
    QRShape18: TQRShape;
    QRShape10: TQRShape;
    QRShape20: TQRShape;
    QRLabel26: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRDBText27: TQRDBText;
    QRShape24: TQRShape;
    QRShape11: TQRShape;
    QRLabel31: TQRLabel;
    Vend1: TQRLabel;
    Porc1: TQRLabel;
    Si1: TQRLabel;
    Vend2: TQRLabel;
    Porc2: TQRLabel;
    Si2: TQRLabel;
    Vend3: TQRLabel;
    Porc3: TQRLabel;
    Si3: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText33: TQRDBText;
    Vend4: TQRLabel;
    Porc4: TQRLabel;
    Si4: TQRLabel;
    QRShape9: TQRShape;
    Brinde1: TQRLabel;
    Brinde2: TQRLabel;
    Brinde3: TQRLabel;
    Brinde4: TQRLabel;
    Brinde5: TQRLabel;
    Brinde6: TQRLabel;
    QRLabel35: TQRLabel;
    QRDBText32: TQRDBText;
    QRLabel42: TQRLabel;
    QRDBText37: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText19: TQRDBText;
    QRLabel21: TQRLabel;
    QRShape6: TQRShape;
    QRLabel22: TQRLabel;
    QRDBRichText1: TQRDBRichText;
    QRShape13: TQRShape;
    QRLabel24: TQRLabel;
    QRDBText23: TQRDBText;
    QRShape15: TQRShape;
    QRLabel32: TQRLabel;
    QRDBRichText2: TQRDBRichText;
    Vlr1: TQRLabel;
    Vlr2: TQRLabel;
    Vlr3: TQRLabel;
    Vlr4: TQRLabel;
    Vlr5: TQRLabel;
    Vlr6: TQRLabel;
    QRShape23: TQRShape;
    QRDBText20: TQRDBText;
    QRLabel40: TQRLabel;
    QRBand3: TQRBand;
    QRShape2: TQRShape;
    QRLabel13: TQRLabel;
    QRDBText14: TQRDBText;
    QRShape3: TQRShape;
    QRDBText15: TQRDBText;
    QRLabel14: TQRLabel;
    QRShape4: TQRShape;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape17: TQRShape;
    QRLabel38: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel36: TQRLabel;
    QRShape5: TQRShape;
    QRLabel17: TQRLabel;
    QRDBText18: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRDBText10: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRSubDetail3: TQRSubDetail;
    QRDBText17: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText8: TQRDBText;
    GroupHeaderBand1: TQRBand;
    QRShape19: TQRShape;
    QRShape7: TQRShape;
    QRLabel19: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRLabel39: TQRLabel;
    QRDBText31: TQRDBText;
    ChildBand1: TQRChildBand;
    QRShape29: TQRShape;
    QRShape22: TQRShape;
    QRShape28: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape27: TQRShape;
    QRLabel41: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRShape12: TQRShape;
    QRLabel23: TQRLabel;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRLabel20: TQRLabel;
    QRDBText24: TQRDBText;
    QrlVia: TQRLabel;
    QRLabel25: TQRLabel;
    QRDBText26: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText38: TQRDBText;
    QRLabel28: TQRLabel;
    QRDBText39: TQRDBText;
    QRShape8: TQRShape;
    QRShape14: TQRShape;
    QRLabel45: TQRLabel;
    QRDBText43: TQRDBText;
    QRBand1: TQRBand;
    QRSysData5: TQRSysData;
    QRShape39: TQRShape;
    QRSysData4: TQRSysData;
    QRLabel27: TQRLabel;
    QRDBText35: TQRDBText;
    QRLabel37: TQRLabel;
    QRDBText36: TQRDBText;
    QRLabel49: TQRLabel;
    QRDBText46: TQRDBText;
    QRLabel50: TQRLabel;
    QRDBText47: TQRDBText;
    QRLabel51: TQRLabel;
    QRDBText28: TQRDBText;
    QRDBText48: TQRDBText;
    QRShape21: TQRShape;
    QRLabel52: TQRLabel;
    QRDBText49: TQRDBText;
    QRDBText50: TQRDBText;
    QRLabel53: TQRLabel;
    QRDBText51: TQRDBText;
    QRLabel54: TQRLabel;
    QRDBText52: TQRDBText;
    QRLabel55: TQRLabel;
    QRDBText53: TQRDBText;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRDBText55: TQRDBText;
    QRLabel59: TQRLabel;
    QRShape32: TQRShape;
    QRDBText56: TQRDBText;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel73: TQRLabel;
    QRDBText65: TQRDBText;
    Brinde7: TQRLabel;
    Brinde8: TQRLabel;
    Vlr7: TQRLabel;
    Vlr8: TQRLabel;
    QRDBText25: TQRDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRDBText31Print(sender: TObject; var Value: String);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText30Print(sender: TObject; var Value: String);
    procedure QRDBText6Print(sender: TObject; var Value: String);
    procedure QRDBText34Print(sender: TObject; var Value: String);
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel51Print(sender: TObject; var Value: String);
    procedure QRDBText48Print(sender: TObject; var Value: String);
    procedure GroupHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
   Imprime : Boolean;
  public
    { Public declarations }
    Mostrar : Boolean;
  end;

var
  frmRelPedidoVenda: TfrmRelPedidoVenda;

implementation

uses u_PedVenda, u_dmPP,FuncoesDSI;

{$R *.dfm}

procedure TfrmRelPedidoVenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := cafree;
 frmRelPedidoVenda := nil;
end;

procedure TfrmRelPedidoVenda.QRDBText31Print(sender: TObject;
  var Value: String);
begin
 Value := 'Contato: ' + Value  + ' - Telef.: ';
end;

procedure TfrmRelPedidoVenda.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var i : Integer;
begin
 Imprime := False;
 
 Brinde1.Enabled := False;
 Brinde2.Enabled := False;
 Brinde3.Enabled := False;
 Brinde4.Enabled := False;
 Brinde5.Enabled := False;
 Brinde6.Enabled := False;
 Brinde7.Enabled := False;
 Brinde8.Enabled := False;


 Vlr1.Enabled := False;
 Vlr2.Enabled := False;
 Vlr3.Enabled := False;
 Vlr4.Enabled := False;
 Vlr5.Enabled := False;
 Vlr6.Enabled := False;
 Vlr7.Enabled := False;
 Vlr8.Enabled := False;

 with dmPP do
  begin
   cdsPedVendBonif.First;
   i := 1;
   while not cdsPedVendBonif.Eof do
    begin
     if i = 1 then
        begin
         Brinde1.Enabled := True;
         Vlr1.Enabled    := True;
         Brinde1.Caption := '-' + cdsPedVendBonifL_DESCR_BONIFICACAO.AsString + ' - ' + cdsPedVendBonifDESCRICAO.AsString;
         Vlr1.Caption    := FormatFloat( '###,###.00' ,cdsPedVendBonifVLRBONIFICACAO.AsFloat );
        end;
     if i = 2 then
        begin
         Brinde2.Enabled := True;
         Vlr2.Enabled    := True;
         Brinde2.Caption := '-' + cdsPedVendBonifL_DESCR_BONIFICACAO.AsString + ' - ' + cdsPedVendBonifDESCRICAO.AsString ;
         Vlr2.Caption    := FormatFloat( '###,###.00' ,cdsPedVendBonifVLRBONIFICACAO.AsFloat );
        end;
     if i = 3 then
        begin
         Brinde3.Enabled := True;
         Vlr3.Enabled    := True;
         Brinde3.Caption := '-' + cdsPedVendBonifL_DESCR_BONIFICACAO.AsString + ' - ' + cdsPedVendBonifDESCRICAO.AsString ;
         Vlr3.Caption    := FormatFloat( '###,###.00' ,cdsPedVendBonifVLRBONIFICACAO.AsFloat );
        end;
     if i = 4 then
        begin
         Brinde4.Enabled := True;
         Vlr4.Enabled    := True;
         Brinde4.Caption := '-' + cdsPedVendBonifL_DESCR_BONIFICACAO.AsString + ' - ' + cdsPedVendBonifDESCRICAO.AsString ;
         Vlr4.Caption    := FormatFloat( '###,###.00' ,cdsPedVendBonifVLRBONIFICACAO.AsFloat );
        end;
     if i = 5 then
        begin
         Brinde5.Enabled := True;
         Vlr5.Enabled    := True;
         Brinde5.Caption := '-' + cdsPedVendBonifL_DESCR_BONIFICACAO.AsString + ' - ' + cdsPedVendBonifDESCRICAO.AsString;
         Vlr5.Caption    := FormatFloat( '###,###.00' ,cdsPedVendBonifVLRBONIFICACAO.AsFloat );
        end;
     if i = 6 then
        begin
         Brinde6.Enabled := True;
         Vlr6.Enabled    := True;
         Brinde6.Caption := '-' + cdsPedVendBonifL_DESCR_BONIFICACAO.AsString + ' - ' + cdsPedVendBonifDESCRICAO.AsString;;
         Vlr6.Caption    := FormatFloat( '###,###.00' ,cdsPedVendBonifVLRBONIFICACAO.AsFloat );
        end;

     if i = 7 then
        begin
         Brinde7.Enabled := True;
         Vlr7.Enabled    := True;
         Brinde7.Caption := '-' + cdsPedVendBonifL_DESCR_BONIFICACAO.AsString + ' - ' + cdsPedVendBonifDESCRICAO.AsString;;
         Vlr7.Caption    := FormatFloat( '###,###.00' ,cdsPedVendBonifVLRBONIFICACAO.AsFloat );
        end;

     if i = 8 then
        begin
         Brinde8.Enabled := True;
         Vlr8.Enabled    := True;
         Brinde8.Caption := '-' + cdsPedVendBonifL_DESCR_BONIFICACAO.AsString + ' - ' + cdsPedVendBonifDESCRICAO.AsString;;
         Vlr8.Caption    := FormatFloat( '###,###.00' ,cdsPedVendBonifVLRBONIFICACAO.AsFloat );
        end;


     Inc( i  );
     cdsPedVendBonif.Next;
    end;

   Vend1.Enabled := False;
   Vend2.Enabled := False;
   Vend3.Enabled := False;
   Vend4.Enabled := False;
   Porc1.Enabled := False;
   Porc2.Enabled := False;
   Porc3.Enabled := False;
   Porc4.Enabled := False;
   Si1.Enabled   := False;
   Si2.Enabled   := False;
   Si3.Enabled   := False;
   Si4.Enabled   := False;

   cdsPedVendVend.First;
   i := 1;
   while not cdsPedVendVend.Eof do
    begin
     if i = 1 then
        begin
         Vend1.Enabled := True;
         Porc1.Enabled := True;
         Vend1.Caption := cdsPedVendVendL_NOMEVENDEDOR.AsString;
         Porc1.Caption := FormatFloat( '###,##' ,cdsPedVendVendPORCENTAGEM.AsFloat);
         Si1.Enabled   := True;
        end;
     if i = 2 then
        begin
         Vend2.Enabled := True;
         Porc2.Enabled := True;
         Vend2.Caption := cdsPedVendVendL_NOMEVENDEDOR.AsString;
         Porc2.Caption := FormatFloat( '###,##' ,cdsPedVendVendPORCENTAGEM.AsFloat);
         Si2.Enabled   := True;
        end;
     if i = 3 then
        begin
         Vend3.Enabled := True;
         Porc3.Enabled := True;
         Vend3.Caption := cdsPedVendVendL_NOMEVENDEDOR.AsString;
         Porc3.Caption := FormatFloat( '###,##' ,cdsPedVendVendPORCENTAGEM.AsFloat);
         Si3.Enabled   := True;
        end;
     if i = 4 then
        begin
         Vend4.Enabled := True;
         Porc4.Enabled := True;
         Vend4.Caption := cdsPedVendVendL_NOMEVENDEDOR.AsString;
         Porc4.Caption := FormatFloat( '###,##' ,cdsPedVendVendPORCENTAGEM.AsFloat);
         Si4.Enabled   := True;
         Break;
        end;
     Inc( i );
     cdsPedVendVend.Next;
    end;
 end;
end;

procedure TfrmRelPedidoVenda.QRDBText30Print(sender: TObject;
  var Value: String);
begin
 Value := 'CEP: ' + Value + ' -  ' + dmPP.cdsPedVendItemCIDADEINST.AsString + ' - ' + dmPP.cdsPedVendItemSIGLAUFINSTID.AsString;
end;

procedure TfrmRelPedidoVenda.QRDBText6Print(sender: TObject;
  var Value: String);
begin
 Value := Value + ' - ' + dmPP.cdsPedVendSIGLAUFORIGID.AsString + '   - ' + dmPP.cdsPedVendCEPORIGID.AsString;
end;

procedure TfrmRelPedidoVenda.QRDBText34Print(sender: TObject;
  var Value: String);
begin
 if Value = '' then
    Value := '0';

 Value := StrZero( StrToInt( Value ), 3, 0 ) + '-' + dmPP.cdsPedVendIntervL_DESCRICAOPAGTO.AsString;
end;

procedure TfrmRelPedidoVenda.ChildBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 Imprime := ( dmPp.cdsPedVendItem.RecordCount = dmPP.cdsPedVendItem.RecNo );
 PrintBand := Imprime;
end;

procedure TfrmRelPedidoVenda.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 PrintBand := Imprime;
end;

procedure TfrmRelPedidoVenda.QRLabel51Print(sender: TObject;
  var Value: String);
begin
 Value := FormatFloat('###,###,###,##0.00', dmPP.cdsPedVendVLRTOTALINTERVCRED.AsFloat + dmPP.cdsPedVendVLRTOTALINTERVDEB.AsFloat );
end;

procedure TfrmRelPedidoVenda.QRDBText48Print(sender: TObject;
  var Value: String);
begin
 Value := Value + ' - ' + dmPP.cdsPedVendItemSIGLAUFINSTID.AsString + '   - ' + dmPP.cdsPedVendItemCEPINSTID.AsString;
end;

procedure TfrmRelPedidoVenda.GroupHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
 if Mostrar then
    begin
     if dmPP.cdsPedVendItemENDERECOINST.AsString = '' then
       Sender.Size.Height := 74
     else
       Sender.Size.Height := 492;
    end
 else
    Sender.Size.Height := 74;
end;

end.
