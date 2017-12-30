unit u_Rel0021;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  TfrmRel0021 = class(TForm)
    QuickRep1: TQuickRep;
    QRGroup1: TQRGroup;
    QRShape5: TQRShape;
    QRDBText34: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText25: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText24: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel25: TQRLabel;
    QRBand1: TQRBand;
    QRShape8: TQRShape;
    QRBand2: TQRBand;
    QRShape12: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRShape14: TQRShape;
    QRDBText5: TQRDBText;
    QRDBText9: TQRDBText;
    QRShape6: TQRShape;
    QRShape11: TQRShape;
    QRDBText3: TQRDBText;
    PageHeaderBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape2: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel11: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape10: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel18: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText8: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRBand3: TQRBand;
    QRShape7: TQRShape;
    QRSysData2: TQRSysData;
    QRLabel23: TQRLabel;
    QRSysData5: TQRSysData;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRLabel20Print(sender: TObject; var Value: String);
    procedure QRLabel16Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRel0021: TfrmRel0021;

implementation

uses u_0021,FuncoesDSI;

{$R *.dfm}

procedure TfrmRel0021.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action     := cafree;
 frmRel0021 := nil;
end;

procedure TfrmRel0021.QRLabel20Print(sender: TObject; var Value: String);
begin
 Value := frm0021.MaskEdit1.Text +  '  a  ' + frm0021.MaskEdit2.Text;
end;

procedure TfrmRel0021.QRLabel16Print(sender: TObject; var Value: String);
begin
 Value := StrZero( StrToInt( frm0021.MaskEdit3.Text ), 5, 0 ) + ' ao Nº ' + StrZero( StrToInt( frm0021.MaskEdit4.Text ), 5, 0 );
end;

end.
