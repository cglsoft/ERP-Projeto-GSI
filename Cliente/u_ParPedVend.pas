unit u_ParPedVend;

interface

uses
  Windows, Forms, StdCtrls, Buttons, Classes, Controls, ExtCtrls ;

type TTipoRelatorio = ( Importacao, Revenda );
type
  TfrmParPedVend = class(TForm)
    rgrpTipoRelat: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ImpVias( Inicio, Fim : Integer );
    procedure ImpViasProcesso( Inicio, Fim : Integer );
  public
    { Public declarations }
    TipoRelatorio : TTipoRelatorio;
  end;

var
  frmParPedVend: TfrmParPedVend;

implementation

uses u_dmPP, u_RelRevenda, u_RelPedidoVenda;

{$R *.dfm}

procedure TfrmParPedVend.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action        := Cafree;
 frmParPedVend := nil;
end;

procedure TfrmParPedVend.BitBtn2Click(Sender: TObject);
begin
 frmParPedVend.Close;
end;

procedure TfrmParPedVend.ImpVias( Inicio, Fim : Integer );
var i : Integer;
begin
 for i := Inicio to Fim do
 begin
  Application.CreateForm( TfrmRelRevenda, frmRelRevenda );

  frmRelRevenda.QrlVia.Caption := rgrpTipoRelat.Items[i];
  try
   if i = 2 then
       // Via Assistêcia Técnica
       frmRelRevenda.Mostrar := False
   else
      frmRelRevenda.Mostrar := True;

    if rgrpTipoRelat.ItemIndex = 3 then
       frmRelRevenda.QuickRep1.Preview
    else
       frmRelRevenda.QuickRep1.Preview;

   finally
    frmRelRevenda.Free;
   end;
 end
end;

procedure TfrmParPedVend.ImpViasProcesso( Inicio, Fim : Integer );
var i : Integer;
begin
 for i := Inicio to Fim do
 begin
  Application.CreateForm( TfrmRelPedidoVenda, frmRelPedidoVenda );

  frmRelPedidoVenda.QrlVia.Caption   := rgrpTipoRelat.Items[i];
  frmRelPedidoVenda.QRLabel2.Caption := 'Processo de Importação';

  if i = 2 then
     begin
      // Via Assistencia Tecnica
      frmRelPedidoVenda.Mostrar := True;

      frmRelPedidoVenda.QRDBText11.Enabled := False;
      frmRelPedidoVenda.QRDBText35.Enabled := False;
      frmRelPedidoVenda.QRDBText23.Enabled := False;
      frmRelPedidoVenda.QRDBText20.Enabled := False;
      frmRelPedidoVenda.QRExpr1.Enabled    := False;
      frmRelPedidoVenda.QRDBText32.Enabled := False;
      frmRelPedidoVenda.QRDBText19.Enabled := False;
      frmRelPedidoVenda.QRDBText42.Enabled := False;
      frmRelPedidoVenda.QRLabel51.Enabled  := False;
     end
  else
     frmRelPedidoVenda.Mostrar := False;

  try
    if rgrpTipoRelat.ItemIndex = 3 then
       frmRelPedidoVenda.QuickRep1.Print
    else
       frmRelPedidoVenda.QuickRep1.Preview;

   finally
    frmRelPedidoVenda.Free;
   end;
 end
end;

procedure TfrmParPedVend.BitBtn1Click(Sender: TObject);
begin
 case TipoRelatorio of
 Importacao : if rgrpTipoRelat.ItemIndex = 3 then
                 ImpViasProcesso( 0, 2 )
              else
                 ImpViasProcesso( rgrpTipoRelat.ItemIndex, rgrpTipoRelat.ItemIndex );
 else
              if rgrpTipoRelat.ItemIndex = 3 then
                  ImpVias( 0, 2 )
               else
                  ImpVias( rgrpTipoRelat.ItemIndex, rgrpTipoRelat.ItemIndex );
 end;


end;

end.
