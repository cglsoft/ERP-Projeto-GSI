unit u_RelEtiquetaEquip;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TfrmRelEtiquetaEquip = class(TForm)
    QrpEtiqueta: TQuickRep;
    DetailBand1: TQRBand;
    qrdbtxtEndereco: TQRDBText;
    qrdbtxtCidade: TQRDBText;
    qrdbtxtUF: TQRDBText;
    qrdbtxtCEP: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qrdbtxtEnderecoPrint(sender: TObject; var Value: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelEtiquetaEquip: TfrmRelEtiquetaEquip;

implementation

uses u_dmOs;

{$R *.dfm}

procedure TfrmRelEtiquetaEquip.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := cafree;
 frmRelEtiquetaEquip := Nil;
end;

procedure TfrmRelEtiquetaEquip.qrdbtxtEnderecoPrint(sender: TObject;
  var Value: string);
begin
 Value := Trim( Value ) + ' ' + Trim( dmOS.cdsAparelhoNUMEROMD.Value ) +
          Trim( dmOS.cdsAparelhoCOMPLEMENTOMD.Value );
end;

end.
