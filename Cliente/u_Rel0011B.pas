unit u_Rel0011B;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  TfrmRel0011B = class(TForm)
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
    DetailBand1: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText14: TQRDBText;
    SummaryBand1: TQRBand;
    QRShape4: TQRShape;
    QRLabel6: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr6: TQRExpr;
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
    QRLabel20: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    PageFooterBand2: TQRBand;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel2: TQRLabel;
    QRSysData3: TQRSysData;
    QRDBText13: TQRDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRLabel21Print(sender: TObject; var Value: String);
    procedure QRLabel19Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRel0011B: TfrmRel0011B;

implementation

uses u_0011,FuncoesCliente;

{$R *.dfm}

procedure TfrmRel0011B.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action      := cafree;
 frmRel0011B := nil;
end;

procedure TfrmRel0011B.QRLabel21Print(sender: TObject; var Value: String);
begin
 Value := Value + ' ' + IntToStr( EmpresaAtualId ); 
end;

procedure TfrmRel0011B.QRLabel19Print(sender: TObject; var Value: String);
begin
 Value := frm0011.Titulo + FRM0011.MaskEdit1.EditText + ' a '+ FRM0011.MaskEdit2.EditText;
end;

end.
