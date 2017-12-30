unit u_RelRevenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  TfrmRelRevenda = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRShape2: TQRShape;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText8: TQRDBText;
    QRSysData1: TQRSysData;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel18: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRShape8: TQRShape;
    QRDBText36: TQRDBText;
    QRLabel42: TQRLabel;
    QRDBText37: TQRDBText;
    QRShape9: TQRShape;
    QRLabel43: TQRLabel;
    QRLabel37: TQRLabel;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRDBText47: TQRDBText;
    SummaryBand1: TQRBand;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel19: TQRLabel;
    QRDBRichText2: TQRDBRichText;
    QRSubDetail1: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRLabel29: TQRLabel;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRLabel31: TQRLabel;
    QRDBText30: TQRDBText;
    QRLabel32: TQRLabel;
    QRDBText31: TQRDBText;
    QRLabel33: TQRLabel;
    QRDBText32: TQRDBText;
    QRLabel34: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel38: TQRLabel;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRLabel39: TQRLabel;
    QRShape7: TQRShape;
    QRDBText35: TQRDBText;
    QRLabel40: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    QRShape5: TQRShape;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRSubDetail3: TQRSubDetail;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    PageFooterBand1: TQRBand;
    QrlVia: TQRLabel;
    QRSubDetail4: TQRSubDetail;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QRStringsBand1: TQRStringsBand;
    QRShape14: TQRShape;
    QRShape12: TQRShape;
    QRShape11: TQRShape;
    QRShape10: TQRShape;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRShape13: TQRShape;
    QRLabel52: TQRLabel;
    QRDBText48: TQRDBText;
    QRDBText49: TQRDBText;
    QRLabel35: TQRLabel;
    QRDBText52: TQRDBText;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRDBText59: TQRDBText;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRDBText60: TQRDBText;
    QRLabel68: TQRLabel;
    QRDBText61: TQRDBText;
    QRDBText62: TQRDBText;
    QRLabel69: TQRLabel;
    QRSysData5: TQRSysData;
    QRShape39: TQRShape;
    QRSysData4: TQRSysData;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    QRDBText63: TQRDBText;
    QRLabel72: TQRLabel;
    QRDBText64: TQRDBText;
    QRLabel73: TQRLabel;
    QRDBText65: TQRDBText;
    QRLabel74: TQRLabel;
    QRDBText66: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText50: TQRDBText;
    QRShape21: TQRShape;
    QRLabel61: TQRLabel;
    QRLabel41: TQRLabel;
    QRRichText1: TQRRichText;
    QRLabel55: TQRLabel;
    Brinde1: TQRLabel;
    Brinde2: TQRLabel;
    Brinde3: TQRLabel;
    Brinde4: TQRLabel;
    Brinde5: TQRLabel;
    Brinde6: TQRLabel;
    Vlr1: TQRLabel;
    Vlr2: TQRLabel;
    Vlr3: TQRLabel;
    Vlr4: TQRLabel;
    Vlr5: TQRLabel;
    Vlr6: TQRLabel;
    QRDBText51: TQRDBText;
    QRLabel56: TQRLabel;
    QRDBText53: TQRDBText;
    QRDBText54: TQRDBText;
    QRDBText55: TQRDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRDBText38Print(sender: TObject; var Value: String);
    procedure QRDBText25Print(sender: TObject; var Value: String);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText11Print(sender: TObject; var Value: String);
    procedure QRDBText50Print(sender: TObject; var Value: String);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    Mostrar : Boolean;
  end;

var
  frmRelRevenda: TfrmRelRevenda;

implementation

uses u_dmPP, DB;

{$R *.dfm}

procedure TfrmRelRevenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action        := Cafree;
 frmRelRevenda := nil;
end;

procedure TfrmRelRevenda.QRDBText38Print(sender: TObject;
  var Value: String);
begin
 if not Mostrar then
    Value := '0,00'
end;

procedure TfrmRelRevenda.QRDBText25Print(sender: TObject;
  var Value: String);
begin
 Value := Value + ' - ' + dmPP.cdsPedVendItemNUMEROINST.AsString + '   - ' +
          dmPP.cdsPedVendItemCOMPLEMENTOINST.AsString;
end;

procedure TfrmRelRevenda.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 if dmPP.cdsPedVendItemENDERECOINST.AsString = '' then
    begin
     Sender.Size.Height := 42;
     QRShape21.Top      := 17;
     QRLabel61.Top      := 17;
     QRDBText1.Top      := 0;
     QRDBText2.Top      := 0;
     QRDBText3.Top      := 0;
     QRDBText4.Top      := 0;
     QRDBText26.Top     := 0;
     QRDBText62.Top     := 0;
     QRDBText27.Top     := 0;
     QRDBText5.Top      := 0;
     QRDBText23.Top     := 0;
    end
 else
    begin
     Sender.Size.Height := 508;
     QRShape21.Top      := 0;
     QRLabel61.Top      := 0;
     QRDBText1.Top      := 176;
     QRDBText2.Top      := 176;
     QRDBText3.Top      := 176;
     QRDBText4.Top      := 176;
     QRDBText26.Top     := 176;
     QRDBText62.Top     := 176;
     QRDBText27.Top     := 176;
     QRDBText5.Top      := 176;
     QRDBText23.Top     := 176;
    end;
end;

procedure TfrmRelRevenda.QRDBText11Print(sender: TObject;
  var Value: String);
begin
 Value := Value + ' - ' + dmPP.cdsPedVendSIGLAUFORIGID.AsString + '   - ' + dmPP.cdsPedVendCEPORIGID.AsString;
end;

procedure TfrmRelRevenda.QRDBText50Print(sender: TObject;
  var Value: String);
begin
   Value := Value + ' - ' + dmPP.cdsPedVendItemSIGLAUFINSTID.AsString + ' - ' +
            FormatFloat( '00000-000;1;', dmPP.cdsPedVendItemCEPINSTID.AsInteger );
end;

procedure TfrmRelRevenda.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var i : Integer;

begin
 dmPP.cdsPedVendItem.First;
 QRRichText1.Lines.Clear;
 QRRichText1.Lines.Add( dmPP.cdsPedVendItemRTOBSERVACAO.AsString );

 Brinde1.Enabled := False;
 Brinde2.Enabled := False;
 Brinde3.Enabled := False;
 Brinde4.Enabled := False;
 Brinde5.Enabled := False;
 Brinde6.Enabled := False;

 Vlr1.Enabled := False;
 Vlr2.Enabled := False;
 Vlr3.Enabled := False;
 Vlr4.Enabled := False;
 Vlr5.Enabled := False;
 Vlr6.Enabled := False;

 dmPP.cdsPedVendBonif.First;
 i := 1;
 while not dmPP.cdsPedVendBonif.Eof do
  begin
   if i = 1 then
      begin
       Brinde1.Enabled := True;
       Vlr1.Enabled    := True;
       Brinde1.Caption := '-' + dmPP.cdsPedVendBonifL_DESCR_BONIFICACAO.AsString + ' - ' + dmPP.cdsPedVendBonifDESCRICAO.AsString;
       Vlr1.Caption    := FormatFloat( '###,###.00' ,dmPP.cdsPedVendBonifVLRBONIFICACAO.AsFloat );
      end;
   if i = 2 then
      begin
       Brinde2.Enabled := True;
       Vlr2.Enabled    := True;
       Brinde2.Caption := '-' + dmPP.cdsPedVendBonifL_DESCR_BONIFICACAO.AsString + ' - ' + dmPP.cdsPedVendBonifDESCRICAO.AsString ;
       Vlr2.Caption    := FormatFloat( '###,###.00' ,dmPP.cdsPedVendBonifVLRBONIFICACAO.AsFloat );
      end;
   if i = 3 then
      begin
       Brinde3.Enabled := True;
       Vlr3.Enabled    := True;
       Brinde3.Caption := '-' + dmPP.cdsPedVendBonifL_DESCR_BONIFICACAO.AsString + ' - ' + dmPP.cdsPedVendBonifDESCRICAO.AsString ;
       Vlr3.Caption    := FormatFloat( '###,###.00' ,dmPP.cdsPedVendBonifVLRBONIFICACAO.AsFloat );
      end;
   if i = 4 then
      begin
       Brinde4.Enabled := True;
       Vlr4.Enabled    := True;
       Brinde4.Caption := '-' + dmPP.cdsPedVendBonifL_DESCR_BONIFICACAO.AsString + ' - ' + dmPP.cdsPedVendBonifDESCRICAO.AsString ;
       Vlr4.Caption    := FormatFloat( '###,###.00' ,dmPP.cdsPedVendBonifVLRBONIFICACAO.AsFloat );
      end;
   if i = 5 then
      begin
       Brinde5.Enabled := True;
       Vlr5.Enabled    := True;
       Brinde5.Caption := '-' + dmPP.cdsPedVendBonifL_DESCR_BONIFICACAO.AsString + ' - ' + dmPP.cdsPedVendBonifDESCRICAO.AsString;
       Vlr5.Caption    := FormatFloat( '###,###.00' ,dmPP.cdsPedVendBonifVLRBONIFICACAO.AsFloat );
      end;
   if i = 6 then
      begin
       Brinde6.Enabled := True;
       Vlr6.Enabled    := True;
       Brinde6.Caption := '-' + dmPP.cdsPedVendBonifL_DESCR_BONIFICACAO.AsString + ' - ' + dmPP.cdsPedVendBonifDESCRICAO.AsString;;
       Vlr6.Caption    := FormatFloat( '###,###.00' ,dmPP.cdsPedVendBonifVLRBONIFICACAO.AsFloat );
       Break;
      end;
   Inc( i  );
   dmPP.cdsPedVendBonif.Next;
  end;

end;

end.
