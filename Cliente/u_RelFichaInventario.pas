unit u_RelFichaInventario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TfrmRelFichaInventario = class(TForm)
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
    QRShape13: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRLabel10: TQRLabel;
    QRShape21: TQRShape;
    QRLabel14: TQRLabel;
    QRDBText5: TQRDBText;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRLabel19: TQRLabel;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRDBText6: TQRDBText;
    QRShape27: TQRShape;
    QRLabel20: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel25: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel26: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel27: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel28: TQRLabel;
    QRDBText17: TQRDBText;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel33: TQRLabel;
    QRSysData4: TQRSysData;
    QRLabel34: TQRLabel;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRLabel35: TQRLabel;
    QRShape36: TQRShape;
    QRLabel36: TQRLabel;
    QRDBText19: TQRDBText;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRLabel38: TQRLabel;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRDBText20: TQRDBText;
    QRShape42: TQRShape;
    QRLabel39: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel40: TQRLabel;
    QRDBText22: TQRDBText;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRSysData5: TQRSysData;
    QRLabel44: TQRLabel;
    QRDBText23: TQRDBText;
    QRLabel45: TQRLabel;
    QRDBText24: TQRDBText;
    QRLabel46: TQRLabel;
    QRDBText25: TQRDBText;
    QRLabel47: TQRLabel;
    QRDBText26: TQRDBText;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRShape45: TQRShape;
    QRDBText27: TQRDBText;
    QRLabel52: TQRLabel;
    QRSysData6: TQRSysData;
    QRLabel53: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelFichaInventario: TfrmRelFichaInventario;

implementation

uses u_dmEF, FuncoesDSI, u_Inventario;

{$R *.dfm}

procedure TfrmRelFichaInventario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 frmRelFichaInventario :=  Nil;
end;

procedure TfrmRelFichaInventario.QRDBText4Print(sender: TObject;
  var Value: String);
begin
 Value := StrZero( StrToInt( Value ), 5,0 );
end;

procedure TfrmRelFichaInventario.FormCreate(Sender: TObject);
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
