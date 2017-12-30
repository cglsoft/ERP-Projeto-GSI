unit u_Rel0011A;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  TfrmRel0011A = class(TForm)
    Quickrep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRShape2: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    PageFooterBand1: TQRBand;
    QRShape24: TQRShape;
    QRLabel11: TQRLabel;
    QRExpr5: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr9: TQRExpr;
    DetailBand1: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText18: TQRDBText;
    SummaryBand1: TQRBand;
    QRShape4: TQRShape;
    QRLabel6: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRGroup1: TQRGroup;
    QRShape3: TQRShape;
    QRLabel10: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel25: TQRLabel;
    PageFooterBand2: TQRBand;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel2: TQRLabel;
    QRExpr6: TQRExpr;
    QRSysData3: TQRSysData;
    QRLabel26: TQRLabel;
    QRDBText19: TQRDBText;
    QRExpr10: TQRExpr;
    procedure QRLabel21Print(sender: TObject; var Value: String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRLabel19Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRel0011A: TfrmRel0011A;

implementation

uses u_0011,FuncoesCliente;

{$R *.dfm}

procedure TfrmRel0011A.QRLabel21Print(sender: TObject; var Value: String);
begin
 Value := Value + ' ' + IntToStr( EmpresaAtualId );
end;

procedure TfrmRel0011A.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action      := caFree;
 frmRel0011A := nil;
end;

procedure TfrmRel0011A.QRLabel19Print(sender: TObject; var Value: String);
begin
 Value := frm0011.Titulo + FRM0011.MaskEdit1.EditText + ' a '+ FRM0011.MaskEdit2.EditText;
end;

end.
