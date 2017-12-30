unit u_Rel0022;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TfrmRel0022 = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRSysData1: TQRSysData;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
    QrlTitulo: TQRLabel;
    QRLabel26: TQRLabel;
    QRShape29: TQRShape;
    QRShape32: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape44: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel29: TQRLabel;
    DetailBand1: TQRBand;
    QRShape14: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel4: TQRLabel;
    QRShape30: TQRShape;
    QRShape13: TQRShape;
    QRShape11: TQRShape;
    C: TQRShape;
    QRShape10: TQRShape;
    QRShape9: TQRShape;
    QRShape8: TQRShape;
    QRShape7: TQRShape;
    QRShape6: TQRShape;
    QRShape5: TQRShape;
    QRShape4: TQRShape;
    QRShape15: TQRShape;
    QRDBText12: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText4: TQRDBText;
    PageFooterBand1: TQRBand;
    QRLabel25: TQRLabel;
    QRShape2: TQRShape;
    QRLabel17: TQRLabel;
    QRShape3: TQRShape;
    QRDBText13: TQRDBText;
    QRShape12: TQRShape;
    QRSysData3: TQRSysData;
    QRLabel21: TQRLabel;
    QRSysData5: TQRSysData;
    QRLabel6: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape16: TQRShape;
    QRLabel23: TQRLabel;
    QRDBText15: TQRDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRLabel26Print(sender: TObject; var Value: String);
    procedure QRDBText13Print(sender: TObject; var Value: String);
    procedure QRDBText10Print(sender: TObject; var Value: String);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRel0022: TfrmRel0022;

implementation

uses u_0022;

{$R *.dfm}

procedure TfrmRel0022.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := cafree;
 frmRel0022 := nil;
end;

procedure TfrmRel0022.QRLabel26Print(sender: TObject; var Value: String);
begin
 Value := frm0022.wwDpcktInicial.Text+ ' a ' + frm0022.wwDpcktFinal.Text;

 if frm0022.cmbGrupo.Text  <> '' Then
    Value := Value + ' / ' + frm0022.cmbGrupo.Text;
 if frm0022.cmbStatus.Text  <> '' Then
    Value := Value + ' / ' + frm0022.cmbStatus.Text;

end;

procedure TfrmRel0022.QRDBText13Print(sender: TObject; var Value: String);
begin
 Value := FormatFloat('##,###,##0.00', StrToFloat( Value ) );
end;

procedure TfrmRel0022.QRDBText10Print(sender: TObject; var Value: String);
begin
 Value := FormatFloat('##,###,##0.00', StrToFloat( Value ) );
end;

procedure TfrmRel0022.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
 if      UpperCase( frm0022.cmbTipoProcesso.Text ) = 'NX' then
         QrlTitulo.Caption := ' NX CONTROL (X-RAY TUBES - ACCESSORIES AND UNITS) '
 else if UpperCase( frm0022.cmbTipoProcesso.Text ) = 'PZA' then
         QrlTitulo.Caption := ' SPARE PARTS IMPORT CONTROL (PZA) '
 else QrlTitulo.Caption := ' INFORMAÇÕES DO ' + frm0022.cmbTipoProcesso.Text;        
end;

end.
