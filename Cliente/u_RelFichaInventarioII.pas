unit u_RelFichaInventarioII;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TfrmRelFichaInventarioII = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
    QRShape3: TQRShape;
    QRLabel4: TQRLabel;
    QRDBText3: TQRDBText;
    QRShape4: TQRShape;
    QRShape7: TQRShape;
    QRShape9: TQRShape;
    QRLabel11: TQRLabel;
    QRShape10: TQRShape;
    QRShape12: TQRShape;
    QRDBText9: TQRDBText;
    QRShape8: TQRShape;
    QRLabel8: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel37: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel9: TQRLabel;
    qrlblTipoContagem: TQRLabel;
    QRLabel15: TQRLabel;
    QRSysData1: TQRSysData;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText2: TQRDBText;
    QRShape14: TQRShape;
    QRLabel17: TQRLabel;
    QRDBText13: TQRDBText;
    QRShape16: TQRShape;
    QRLabel18: TQRLabel;
    QRDBText14: TQRDBText;
    QRShape6: TQRShape;
    QRLabel6: TQRLabel;
    QRShape11: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText4: TQRDBText;
    QRShape15: TQRShape;
    QRLabel1: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel13: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelFichaInventarioII: TfrmRelFichaInventarioII;

implementation

uses u_dmEF, FuncoesDSI, u_Inventario;

{$R *.dfm}

procedure TfrmRelFichaInventarioII.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 frmRelFichaInventarioII  := Nil;
end;

procedure TfrmRelFichaInventarioII.QRDBText4Print(sender: TObject;
  var Value: String);
begin
 Value := StrZero( StrToInt( Value ), 5,0 );
end;

procedure TfrmRelFichaInventarioII.FormCreate(Sender: TObject);
var  i : Integer;
begin
 for i := 0 to ComponentCount - 1 do
 begin
  if ( Components[i] is TQRDBText ) then
     begin
      if      frmInventario.TipoRelat = 1 then
              TQRDBText( Components[i] ).DataSet  := dmEF.cdsInventario
      else if frmInventario.TipoRelat = 2 then
              TQRDBText( Components[i] ).DataSet  := dmEF.cdsInventarioDig;
     end;

  if ( Components[i] is TQuickRep ) then
     begin
      if      frmInventario.TipoRelat = 1 then
              TQuickRep( Components[i] ).DataSet  := dmEF.cdsInventario
      else if frmInventario.TipoRelat = 2 then
              TQuickRep( Components[i] ).DataSet  := dmEF.cdsInventarioDig;
     end;
 end;

end;

end.
