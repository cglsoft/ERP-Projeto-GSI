unit u_RelComissaoVendedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  TfrmRelComissaoVendedor = class(TForm)
    QuickRep1: TQuickRep;
    qrgrGrupo: TQRGroup;
    QRBand1: TQRBand;
    QRShape8: TQRShape;
    QRLabel12: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr6: TQRExpr;
    QRBand2: TQRBand;
    QRShape6: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRDBText13: TQRDBText;
    PageHeaderBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    GroupHeaderBand1: TQRBand;
    QRShape18: TQRShape;
    QRShape17: TQRShape;
    QRLabel22: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRShape2: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape25: TQRShape;
    QRShape14: TQRShape;
    QRShape16: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRLabel13: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel40: TQRLabel;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRExpr3: TQRExpr;
    QRDBText7: TQRDBText;
    qrlbPag: TQRLabel;
    QRShape11: TQRShape;
    QRLabel15: TQRLabel;
    QRDBText24: TQRDBText;
    QRDBText33: TQRDBText;
    QRLabel19: TQRLabel;
    qrlblPeriodo: TQRLabel;
    QRShape23: TQRShape;
    QRLabel29: TQRLabel;
    QRRichText1: TQRRichText;
    QRDBText4: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRStringsBand1: TQRStringsBand;
    QRLabel17: TQRLabel;
    QRShape5: TQRShape;
    QRLabel21: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRShape7: TQRShape;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRDBText22: TQRDBText;
    QRShape1: TQRShape;
    QRLabel23: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel35: TQRLabel;
    QRShape4: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape3: TQRShape;
    QRLabel11: TQRLabel;
    QRShape24: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText23: TQRDBText;
    QRLabel49: TQRLabel;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRLabel50: TQRLabel;
    qrlblPeriodo2: TQRLabel;
    QRShape9: TQRShape;
    QRSysData4: TQRSysData;
    QRLabel20: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRDBText27: TQRDBText;
    procedure QRDBText13Print(sender: TObject; var Value: String);
    procedure qrlbPagPrint(sender: TObject; var Value: String);
    procedure FormCreate(Sender: TObject);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure qrgrGrupoAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRDBText21Print(sender: TObject; var Value: String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    Pag : Integer;
  public
    { Public declarations }
  end;

var
  frmRelComissaoVendedor: TfrmRelComissaoVendedor;

implementation

uses u_ParRelVendedor, u_dmPP;


{$R *.dfm}

procedure TfrmRelComissaoVendedor.QRDBText13Print(sender: TObject;
  var Value: String);
begin
 if Value = 'P' then
    Value := 'Principal'
 else
    Value := 'Secundário';

end;

procedure TfrmRelComissaoVendedor.qrlbPagPrint(sender: TObject;
  var Value: String);
begin
 Value := IntToStr( Pag );
 Inc( Pag );
end;

procedure TfrmRelComissaoVendedor.FormCreate(Sender: TObject);
begin
 Pag := 1;
end;

procedure TfrmRelComissaoVendedor.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
 Pag := 1;
 qrgrGrupo.ForceNewPage := True;
 qrgrGrupo.ReprintOnNewPage := False;
end;

procedure TfrmRelComissaoVendedor.qrgrGrupoAfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
 qrgrGrupo.ForceNewPage     := False;
 qrgrGrupo.ReprintOnNewPage := True;
end;

procedure TfrmRelComissaoVendedor.QRDBText21Print(sender: TObject;
  var Value: String);
begin
 if Value = '1' then
    Value := 'Pago'
 else
    Value := 'Pendente';
end;

procedure TfrmRelComissaoVendedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 frmRelComissaoVendedor := nil;
 Action := cafree;
end;

end.
