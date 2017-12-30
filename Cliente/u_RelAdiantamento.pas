unit u_RelAdiantamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TfrmRelAdiantamento = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRShape36: TQRShape;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRShape2: TQRShape;
    QRLabel3: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel5: TQRLabel;
    QRDBText1: TQRDBText;
    QRShape5: TQRShape;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRShape6: TQRShape;
    QRLabel6: TQRLabel;
    QRDBText3: TQRDBText;
    QRShape7: TQRShape;
    QRLabel7: TQRLabel;
    QRShape8: TQRShape;
    QRLabel8: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRShape9: TQRShape;
    QRLabel9: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRShape10: TQRShape;
    QRLabel10: TQRLabel;
    QRDBText10: TQRDBText;
    QRShape11: TQRShape;
    QRRichText20: TQRRichText;
    QRShape12: TQRShape;
    QRLabel11: TQRLabel;
    QRShape14: TQRShape;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape15: TQRShape;
    QRLabel18: TQRLabel;
    QRDBText11: TQRDBText;
    QRShape16: TQRShape;
    QRLabel19: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape13: TQRShape;
    QRLabel16: TQRLabel;
    QRDBText12: TQRDBText;
    QRShape17: TQRShape;
    QRLabel17: TQRLabel;
    QRDBText13: TQRDBText;
    QRShape35: TQRShape;
    QRLabel41: TQRLabel;
    QRRichText1: TQRRichText;
    QRLabel39: TQRLabel;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRLabel20: TQRLabel;
    QRShape20: TQRShape;
    QRLabel21: TQRLabel;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRLabel22: TQRLabel;
    QRDBText14: TQRDBText;
    QRShape23: TQRShape;
    QRLabel23: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRShape24: TQRShape;
    QRLabel24: TQRLabel;
    QRDBText18: TQRDBText;
    QRShape25: TQRShape;
    QRLabel25: TQRLabel;
    QRShape26: TQRShape;
    QRLabel26: TQRLabel;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRShape27: TQRShape;
    QRLabel27: TQRLabel;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRShape28: TQRShape;
    QRLabel28: TQRLabel;
    QRDBText23: TQRDBText;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRLabel29: TQRLabel;
    QRShape31: TQRShape;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRShape32: TQRShape;
    QRLabel32: TQRLabel;
    QRDBText24: TQRDBText;
    QRShape33: TQRShape;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRShape34: TQRShape;
    QRLabel36: TQRLabel;
    QRDBText25: TQRDBText;
    QRShape37: TQRShape;
    QRLabel37: TQRLabel;
    QRDBText26: TQRDBText;
    QRShape38: TQRShape;
    QRLabel40: TQRLabel;
    QRDBText28: TQRDBText;
    QRLabel38: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel44: TQRLabel;
    QRRichText2: TQRRichText;
    QRLabel45: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel46: TQRLabel;
    QRRichText4: TQRRichText;
    QRRichText3: TQRRichText;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel1: TQRLabel;
    QRDBText27: TQRDBText;
    QRDBText30: TQRDBText;
    QRLabel35: TQRLabel;
    QRDBText29: TQRDBText;
    QRRichText5: TQRRichText;
    QRBand1: TQRBand;
    QRShape39: TQRShape;
    QRSysData4: TQRSysData;
    QRLabel47: TQRLabel;
    QRSysData3: TQRSysData;
    procedure QRDBText1Print(sender: TObject; var Value: String);
    procedure QRDBText5Print(sender: TObject; var Value: String);
    procedure QRDBText13Print(sender: TObject; var Value: String);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText26Print(sender: TObject; var Value: String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelAdiantamento: TfrmRelAdiantamento;

implementation

uses u_dmRD,FuncoesDSI;


{$R *.dfm}

procedure TfrmRelAdiantamento.QRDBText1Print(sender: TObject;
  var Value: String);
begin
 Value := 'Nº ' + StrZero( StrToInt( Value ), 5, 0 );
end;

procedure TfrmRelAdiantamento.QRDBText5Print(sender: TObject;
  var Value: String);
begin
 Value := StrZero( StrToInt( Value ), 5, 0 );
end;

procedure TfrmRelAdiantamento.QRDBText13Print(sender: TObject;
  var Value: String);
begin
 if      Value = 'C' then
         Value := 'CRÉDITO'
 else if Value = 'D' then
         Value := 'DÉBITO'
 else if Value = 'N' then
         Value := 'NENHUMA';
end;

procedure TfrmRelAdiantamento.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 with dmRD do
 begin
  QRRichText1.Lines.Clear;
  QRRichText2.Lines.Clear;
  QRRichText3.Lines.Clear;
  QRRichText4.Lines.Clear;

  cdsAdiantamentoItem.First;
  while not cdsAdiantamentoItem.Eof do
  begin
   QRRichText1.Lines.Add( DateToStr( cdsAdiantamentoItemDATASOLICITACAO.AsDateTime  ) + ' - ' + cdsAdiantamentoItemL_DESCRICAOOPERACAO.Value  );
   QRRichText2.Lines.Add( FormatFloat( '#,##0.00', cdsAdiantamentoItemVLROPERACAO.Value ) );
   QRRichText3.Lines.Add( DateToStr( cdsAdiantamentoItemDATASOLICITACAO.AsDateTime ) + ' - ' + cdsAdiantamentoItemL_DESCRICAOOPERACAO.Value  );
   QRRichText4.Lines.Add( FormatFloat( '#,##0.00', cdsAdiantamentoItemVLROPERACAO.Value ) );
   cdsAdiantamentoItem.Next;
  end;
 end;
end; 

procedure TfrmRelAdiantamento.QRDBText26Print(sender: TObject;
  var Value: String);
begin
 if      Value = 'C' then
         Value := 'CRÉDITO'
 else if Value = 'D' then
         Value := 'DÉBITO'
 else if Value = 'N' then
         Value := 'NENHUMA';
end;

procedure TfrmRelAdiantamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 frmRelAdiantamento := Nil;
end;

end.
