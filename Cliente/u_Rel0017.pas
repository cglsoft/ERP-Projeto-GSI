unit u_Rel0017;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TfrmRel0017 = class(TForm)
    QuickRep1: TQuickRep;
    QRGroup1: TQRGroup;
    QRShape1: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel9: TQRLabel;
    QRBand1: TQRBand;
    QRShape4: TQRShape;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRLabel4: TQRLabel;
    QRExpr1: TQRExpr;
    QRBand2: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRBand3: TQRBand;
    QRShape3: TQRShape;
    QRExpr2: TQRExpr;
    QRExpr5: TQRExpr;
    QRLabel2: TQRLabel;
    QRExpr6: TQRExpr;
    PageFooterBand1: TQRBand;
    QRShape5: TQRShape;
    QRSysData2: TQRSysData;
    QRLabel14: TQRLabel;
    QRLabel5: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRShape2: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRSysData1: TQRSysData;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRSysData3: TQRSysData;
    QRDBText17: TQRDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRLabel19Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRel0017: TfrmRel0017;

implementation

uses u_0017;

{$R *.dfm}

procedure TfrmRel0017.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action     := cafree;
 frmRel0017 := nil;
end;

procedure TfrmRel0017.QRLabel19Print(sender: TObject; var Value: String);
begin
 QRLabel19.Caption := 'Custo de Entradas e Saídas no perido de : '+ frm0017.MaskEdit1.EditText+ ' a '+ frm0017.MaskEdit2.EditText;
end;

end.
