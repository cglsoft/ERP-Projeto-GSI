unit u_RelInventario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TfrmRelInventario = class(TForm)
    QuickRep1: TQuickRep;
    QRGroup1: TQRGroup;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRShape9: TQRShape;
    PageHeaderBand1: TQRBand;
    QRShape2: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRSysData1: TQRSysData;
    SummaryBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRShape3: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel32: TQRLabel;
    QRShape4: TQRShape;
    QRShape1: TQRShape;
    QRShape14: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape16: TQRShape;
    QRLabel19: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    QRShape8: TQRShape;
    QRLabel18: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRLabel22: TQRLabel;
    QRExpr2: TQRExpr;
    QRSysData4: TQRSysData;
    QRShape12: TQRShape;
    QRLabel26: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText11: TQRDBText;
    QRExpr1: TQRExpr;
    QRDBText12: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText9: TQRDBText;
    QRBand3: TQRBand;
    QRShape39: TQRShape;
    QRSysData2: TQRSysData;
    QRLabel47: TQRLabel;
    QRSysData3: TQRSysData;
    QRExpr3: TQRExpr;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure QRLabel12Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelInventario: TfrmRelInventario;

implementation

uses u_dmEF, FuncoesDSI, u_Inventario;

{$R *.dfm}

procedure TfrmRelInventario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 frmRelInventario :=  Nil;
end;

procedure TfrmRelInventario.QRDBText4Print(sender: TObject;
  var Value: String);
begin
 Value := StrZero( StrToInt( Value ), 5,0 );
end;

procedure TfrmRelInventario.QRLabel12Print(sender: TObject;
  var Value: String);
begin
 Value := Value + ' : ' + IntToStr( dmEF.cdsInventario.RecordCount );
end;

end.
