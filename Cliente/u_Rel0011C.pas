unit u_Rel0011C;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  TfrmRel0011C = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRShape2: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel19: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel22: TQRLabel;
    PageFooterBand1: TQRBand;
    QRShape24: TQRShape;
    QRLabel11: TQRLabel;
    QRExpr5: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRExpr1: TQRExpr;
    DetailBand1: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    SummaryBand1: TQRBand;
    QRGroup1: TQRGroup;
    QRShape3: TQRShape;
    QRDBText12: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel21: TQRLabel;
    PageFooterBand2: TQRBand;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel4: TQRLabel;
    QRSysData2: TQRSysData;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRLabel6Print(sender: TObject; var Value: String);
    procedure QRLabel19Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRel0011C: TfrmRel0011C;

implementation

uses u_0011,FuncoesCliente;

{$R *.dfm}

procedure TfrmRel0011C.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := cafree;
 frmRel0011C := nil;
end;

procedure TfrmRel0011C.QRLabel6Print(sender: TObject; var Value: String);
begin
 if frm0011.rgpEmpresa.ItemIndex = 0 then
    Value := 'Todas as empresas'
 else
    Value := Value +' '+IntToStr( EmpresaAtualId );
end;

procedure TfrmRel0011C.QRLabel19Print(sender: TObject; var Value: String);
begin
  Value := frm0011.Titulo + FRM0011.MaskEdit1.EditText + ' a '+ FRM0011.MaskEdit2.EditText;
end;

end.
