unit u_RelPrecoTransf;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls;

type
  TfrmRelPrecoTransf = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    SummaryBand1: TQRBand;
    QRShape2: TQRShape;
    QRShape1: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel19: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape3: TQRShape;
    QRLabel11: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRShape4: TQRShape;
    QRSysData2: TQRSysData;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape5: TQRShape;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel24: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel8: TQRLabel;
    QRExpr5: TQRExpr;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel25: TQRLabel;
    QRSysData3: TQRSysData;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRLabel25Print(sender: TObject; var Value: String);
    procedure QRDBText11Print(sender: TObject; var Value: String);
    procedure QRDBText9Print(sender: TObject; var Value: String);
    procedure QRDBText15Print(sender: TObject; var Value: String);
    procedure QRDBText8Print(sender: TObject; var Value: String);
    procedure QRLabel26Print(sender: TObject; var Value: String);
    procedure QRLabel27Print(sender: TObject; var Value: String);
    procedure QRLabel28Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelPrecoTransf: TfrmRelPrecoTransf;
  VlrPrecoTotal,
  VlrPrecoPraticado,
  VlrPrecoTransf,
  VlrAjuste : Extended;

implementation

uses u_dmEF, u_PrecoTransferencia;

{$R *.DFM}

procedure TfrmRelPrecoTransf.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
 VlrAjuste         := 0;
 VlrPrecoTransf    := 0;
 VlrPrecoPraticado := 0;
 VlrPrecoTotal     := 0;

 QRLabel1.Caption := 'Vendas efetuadas no periodo de ' + DateToStr( frmPrecoTransferencia.wwdtpcktDtIni2.date ) +  ' a ' +
                                                         DateToStr( frmPrecoTransferencia.wwdtpcktDtFim2.date );
end;

procedure TfrmRelPrecoTransf.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
end;

procedure TfrmRelPrecoTransf.QRLabel25Print(sender: TObject;
  var Value: String);
begin
 Value := FormatFloat('###,###,###,##0.00',VlrPrecoTotal );
end;

procedure TfrmRelPrecoTransf.QRDBText11Print(sender: TObject;
  var Value: String);
begin
 VlrAjuste := VlrAjuste + dmEF.cdsPrecoTransfVLR_AJUSTE.AsCurrency;
end;

procedure TfrmRelPrecoTransf.QRDBText9Print(sender: TObject;
  var Value: String);
begin
 VlrPrecoPraticado := VlrPrecoPraticado + dmEF.cdsPrecoTransfVLRCUSTOTOTAL.AsCurrency;
end;

procedure TfrmRelPrecoTransf.QRDBText15Print(sender: TObject;
  var Value: String);
begin
 VlrPrecoTransf := VlrPrecoTransf + dmEF.cdsPrecoTransfVLRPRECOTRANSF.AsCurrency;
end;

procedure TfrmRelPrecoTransf.QRDBText8Print(sender: TObject;
  var Value: String);
begin
 VlrPrecoTotal := VlrPrecoTotal + dmEF.cdsPrecoTransfVLRPRECOTOTAL.AsCurrency;
end;

procedure TfrmRelPrecoTransf.QRLabel26Print(sender: TObject;
  var Value: String);
begin
 Value := FormatFloat('###,###,###,##0.00',VlrAjuste );
end;

procedure TfrmRelPrecoTransf.QRLabel27Print(sender: TObject;
  var Value: String);
begin
 Value := FormatFloat('###,###,###,##0.00',VlrPrecoPraticado );
end;

procedure TfrmRelPrecoTransf.QRLabel28Print(sender: TObject;
  var Value: String);
begin
 Value := FormatFloat('###,###,###,##0.00',VlrPrecoTransf );
end;

end.
