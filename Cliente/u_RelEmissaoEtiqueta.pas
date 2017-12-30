unit u_RelEmissaoEtiqueta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TfrmRelEmissaoEtiqueta = class(TForm)
    QrpEtiqueta: TQuickRep;
    DetailBand1: TQRBand;
    qrdbtxtNome: TQRDBText;
    qrdbtxtContatoCOB: TQRDBText;
    QRLabel1: TQRLabel;
    qrdbtxtEndereco: TQRDBText;
    qrdbtxtCidade: TQRDBText;
    qrdbtxtUF: TQRDBText;
    qrdbtxtCEP: TQRDBText;
    QRDBText1: TQRDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelEmissaoEtiqueta: TfrmRelEmissaoEtiqueta;

implementation

uses u_EmissaoEtiqueta;

{$R *.dfm}

procedure TfrmRelEmissaoEtiqueta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := cafree;
 frmRelEmissaoEtiqueta := Nil;
end;

end.
