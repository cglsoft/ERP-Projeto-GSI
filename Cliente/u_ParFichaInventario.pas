unit u_ParFichaInventario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons;

type
  TfrmParFichaInventario = class(TForm)
    BitBtn6: TBitBtn;
    BitBtn3: TBitBtn;
    rgrpFichaInventario: TRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    procedure ImpressaoFicha;
    procedure ImpressaoFichaII;
    { Private declarations }
  public
    { Public declarations }
    TipoRelat : Integer;
  end;

var
  frmParFichaInventario: TfrmParFichaInventario;

implementation

uses u_RelFichaInventario, u_dmEF, u_RelFichaInventarioII;

{$R *.dfm}

procedure TfrmParFichaInventario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 frmParFichaInventario := Nil;
end;

procedure TfrmParFichaInventario.BitBtn3Click(Sender: TObject);
begin
 if TipoRelat = 1 then
    ImpressaoFicha
 else
    ImpressaoFichaII;
end;

procedure TfrmParFichaInventario.BitBtn6Click(Sender: TObject);
begin
 Close;
end;


procedure TfrmParFichaInventario.ImpressaoFicha;
begin
 frmRelFichaInventario := TfrmRelFichaInventario.Create( nil );
 try
//  frmRelFichaInventario.qrlblTipoContagem.Caption := rgrpFichaInventario.Items[rgrpFichaInventario.ItemIndex];
  frmRelFichaInventario.QuickRep1.Preview;
 finally
  FreeAndNil( frmRelFichaInventario.QuickRep1 );
  FreeAndNil( frmRelFichaInventario );
 end;
end;

procedure TfrmParFichaInventario.ImpressaoFichaII;
begin
 frmRelFichaInventarioII := TfrmRelFichaInventarioII.Create( nil );
 try
  frmRelFichaInventarioII.QuickRep1.Preview;
 finally
  FreeAndNil( frmRelFichaInventarioII.QuickRep1 );
  FreeAndNil( frmRelFichaInventarioII );
 end;
end;


procedure TfrmParFichaInventario.FormCreate(Sender: TObject);
begin
 with dmEF do
 begin
  cdsTipoCtgInvent.Open;
  cdsTipoCtgInvent.First;
  rgrpFichaInventario.Items.Clear;
  while not cdsTipoCtgInvent.Eof do
  begin
   rgrpFichaInventario.Items.Add(  cdsTipoCtgInventTIPOCTGINVENTID.AsString + '-' +
                                   Copy( cdsTipoCtgInventDESCRICAO.AsString, 1, 100 ) );

   cdsTipoCtgInvent.Next;
  end;
  cdsTipoCtgInvent.Close;
  rgrpFichaInventario.ItemIndex := 0;
 end;
end;

end.
