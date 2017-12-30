unit u_RelPedidoTmbj;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, quickrpt, Qrctrls, jpeg;

type
  TfrmRelPedidoTmbj = class(TForm)
    QuickRep1: TQuickRep;
    Rodape: TQRBand;
    QRShape52: TQRShape;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRShape53: TQRShape;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRShape54: TQRShape;
    QRShape55: TQRShape;
    QRShape56: TQRShape;
    QRShape57: TQRShape;
    QRShape58: TQRShape;
    QRShape59: TQRShape;
    QRShape60: TQRShape;
    QRShape61: TQRShape;
    QRShape62: TQRShape;
    QRShape63: TQRShape;
    QRShape64: TQRShape;
    QRShape65: TQRShape;
    QRShape67: TQRShape;
    QRShape68: TQRShape;
    QRShape69: TQRShape;
    QRShape70: TQRShape;
    QRLabel67: TQRLabel;
    QRImage9: TQRImage;
    QRImage10: TQRImage;
    QRImage11: TQRImage;
    QRImage12: TQRImage;
    QRImage13: TQRImage;
    QRImage14: TQRImage;
    QRImage15: TQRImage;
    QRImage16: TQRImage;
    QRImage17: TQRImage;
    QRImage18: TQRImage;
    QRImage19: TQRImage;
    QRSubDetail1: TQRSubDetail;
    QRShape66: TQRShape;
    QRShape71: TQRShape;
    QRShape72: TQRShape;
    Detalhe: TQRBand;
    QRLabel2: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRImage2: TQRImage;
    QRShape8: TQRShape;
    QRImage1: TQRImage;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape12: TQRShape;
    QRShape11: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRImage3: TQRImage;
    QRImage4: TQRImage;
    QRImage5: TQRImage;
    QRShape18: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRImage6: TQRImage;
    QRLabel18: TQRLabel;
    QRImage7: TQRImage;
    QRLabel20: TQRLabel;
    QRImage8: TQRImage;
    QRShape29: TQRShape;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRShape19: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel44: TQRLabel;
    QRShape44: TQRShape;
    QRLabel45: TQRLabel;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRLabel46: TQRLabel;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel68: TQRLabel;
    QRLabel71: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel72: TQRLabel;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText25: TQRDBText;
    QRShape47: TQRShape;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRLabel73: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRShape43: TQRShape;
    QRLabel43: TQRLabel;
    QRImage20: TQRImage;
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRImage21: TQRImage;
    procedure DetalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure RodapeBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText1Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelPedidoTmbj: TfrmRelPedidoTmbj;

implementation

uses u_dmIT;

{$R *.DFM}

procedure TfrmRelPedidoTmbj.DetalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 with dmIT do
 begin
  if cdsProcessoTIPOSERVICO.Value = 'A' then
  begin
   QRLabel10.Caption := '( X )             PARTS REQUEST';
   QRLabel9.Caption  := '(     )             REPAIR ORDER';
  end
  else if cdsProcessoTIPOSERVICO.Value = 'B' then
  begin
   QRLabel10.Caption := '(     )             PARTS REQUEST';
   QRLabel9.Caption  := '( X )             REPAIR ORDER';
  end
  else if cdsProcessoTIPOSERVICO.Value = 'C' then
  begin
   QRLabel10.Caption := '(     )             PARTS REQUEST';
   QRLabel9.Caption  := '(     )             REPAIR ORDER';
  end;

  if cdsProcessoTIPOREQUISICAO.Value = 'A' then
     QRLabel43.Caption := '( X ) REPAIR         (    ) REPLACEMENT         (    ) CREDIT'
  else if cdsProcessoTIPOREQUISICAO.Value = 'B' then
     QRLabel43.Caption := '(    ) REPAIR         ( X ) REPLACEMENT         (    ) CREDIT'
  else if cdsProcessoTIPOREQUISICAO.Value = 'C' then
     QRLabel43.Caption := '(    ) REPAIR         (    ) REPLACEMENT         ( X ) CREDIT';

  if cdsProcessoItemPRIORIDADE.Value = 'S' then
     QRLabel44.Caption :=  '( X ) SOS           (    ) RANK A       (    ) RANK B            (    ) RANK C'
  else if cdsProcessoItemPRIORIDADE.Value = 'A' then
     QRLabel44.Caption :=  '(    ) SOS           ( X ) RANK A       (    ) RANK B            (    ) RANK C'
  else if cdsProcessoItemPRIORIDADE.Value = 'B' then
     QRLabel44.Caption :=  '(    ) SOS           (    ) RANK A       ( X ) RANK B            (    ) RANK C'
  else if cdsProcessoItemPRIORIDADE.Value = 'C' then
     QRLabel44.Caption :=  '(    ) SOS           (    ) RANK A       (    ) RANK B            ( X ) RANK C';

  QRLabel73.Caption := DateToStr( Date );
  QRLabel74.Caption := DateToStr( Date );
  QRLabel75.Caption := DateToStr( cdsProcessoItemDATAFALHAEQUIP.AsDateTime );
  QRLabel76.Caption := DateToStr( cdsProcessoItemDATAINSTALEQUIP.AsDateTime );

  if Copy(QRLabel73.Caption,4,3) = 'Fev' then
     QRLabel73.Caption := Copy(QRLabel73.Caption,1,3)+'Feb'+Copy(QRLabel73.Caption,7,3)
  else if Copy(QRLabel73.Caption,4,3) = 'Abr' then
     QRLabel73.Caption := Copy(QRLabel73.Caption,1,3)+'Apr'+Copy(QRLabel73.Caption,7,3)
  else if Copy(QRLabel73.Caption,4,3) = 'Mai' then
     QRLabel73.Caption := Copy(QRLabel73.Caption,1,3)+'May'+Copy(QRLabel73.Caption,7,3)
  else if Copy(QRLabel73.Caption,4,3) = 'Ago' then
     QRLabel73.Caption := Copy(QRLabel73.Caption,1,3)+'Aug'+Copy(QRLabel73.Caption,7,3)
  else if Copy(QRLabel73.Caption,4,3) = 'Set' then
     QRLabel73.Caption := Copy(QRLabel73.Caption,1,3)+'Sep'+Copy(QRLabel73.Caption,7,3)
  else if Copy(QRLabel73.Caption,4,3) = 'Out' then
     QRLabel73.Caption := Copy(QRLabel73.Caption,1,3)+'Oct'+Copy(QRLabel73.Caption,7,3)
  else if Copy(QRLabel73.Caption,4,3) = 'Dez' then
     QRLabel73.Caption := Copy(QRLabel73.Caption,1,3)+'Dec'+Copy(QRLabel73.Caption,7,3);

  QRLabel74.Caption := QRLabel73.Caption;

  if Copy(QRLabel75.Caption,4,3) = 'Fev' then
     QRLabel75.Caption := Copy(QRLabel75.Caption,1,3)+'Feb'+Copy(QRLabel75.Caption,7,3)
  else if Copy(QRLabel75.Caption,4,3) = 'Abr' then
     QRLabel75.Caption := Copy(QRLabel75.Caption,1,3)+'Apr'+Copy(QRLabel75.Caption,7,3)
  else if Copy(QRLabel75.Caption,4,3) = 'Mai' then
     QRLabel75.Caption := Copy(QRLabel75.Caption,1,3)+'May'+Copy(QRLabel75.Caption,7,3)
  else if Copy(QRLabel75.Caption,4,3) = 'Ago' then
     QRLabel75.Caption := Copy(QRLabel75.Caption,1,3)+'Aug'+Copy(QRLabel75.Caption,7,3)
  else if Copy(QRLabel75.Caption,4,3) = 'Set' then
     QRLabel75.Caption := Copy(QRLabel75.Caption,1,3)+'Sep'+Copy(QRLabel75.Caption,7,3)
  else if Copy(QRLabel75.Caption,4,3) = 'Out' then
     QRLabel75.Caption := Copy(QRLabel75.Caption,1,3)+'Oct'+Copy(QRLabel75.Caption,7,3)
  else if Copy(QRLabel75.Caption,4,3) = 'Dez' then
     QRLabel75.Caption := Copy(QRLabel75.Caption,1,3)+'Dec'+Copy(QRLabel75.Caption,7,3);

  if Copy(QRLabel76.Caption,4,3) = 'Fev' then
     QRLabel76.Caption := Copy(QRLabel76.Caption,1,3)+'Feb'+Copy(QRLabel76.Caption,7,3)
  else if Copy(QRLabel76.Caption,4,3) = 'Abr' then
     QRLabel76.Caption := Copy(QRLabel76.Caption,1,3)+'Apr'+Copy(QRLabel76.Caption,7,3)
  else if Copy(QRLabel76.Caption,4,3) = 'Mai' then
     QRLabel76.Caption := Copy(QRLabel76.Caption,1,3)+'May'+Copy(QRLabel76.Caption,7,3)
  else if Copy(QRLabel76.Caption,4,3) = 'Ago' then
     QRLabel76.Caption := Copy(QRLabel76.Caption,1,3)+'Aug'+Copy(QRLabel76.Caption,7,3)
  else if Copy(QRLabel76.Caption,4,3) = 'Set' then
     QRLabel76.Caption := Copy(QRLabel76.Caption,1,3)+'Sep'+Copy(QRLabel76.Caption,7,3)
  else if Copy(QRLabel76.Caption,4,3) = 'Out' then
     QRLabel76.Caption := Copy(QRLabel76.Caption,1,3)+'Oct'+Copy(QRLabel76.Caption,7,3)
  else if Copy(QRLabel76.Caption,4,3) = 'Dez' then
     QRLabel76.Caption := Copy(QRLabel76.Caption,1,3)+'Dec'+Copy(QRLabel76.Caption,7,3);
 end;
end;

procedure TfrmRelPedidoTmbj.RodapeBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 QRLabel59.Font.Style := [];
 QRLabel60.Font.Style := [];
 QRLabel61.Font.Style := [];
 QRLabel62.Font.Style := [];
 QRLabel63.Font.Style := [];
 QRLabel64.Font.Style := [];
 QRLabel65.Font.Style := [];
 QRLabel66.Font.Style := [];
 QRLabel69.Font.Style := [];
 QRLabel70.Font.Style := [];

 // 1
 with dmIT do
 begin
  if cdsProcessoPERGUNTA1.AsInteger = 1 then
     QRLabel62.Font.Style := [fsBold,fsUnderline]
  else
     QRLabel66.Font.Style := [fsBold,fsUnderline];

  // 2
  if cdsProcessoPERGUNTA2.AsInteger = 1 then
     QRLabel61.Font.Style := [fsBold,fsUnderline]
  else
     QRLabel65.Font.Style := [fsBold,fsUnderline];

  // 3
  if cdsProcessoPERGUNTA3.AsInteger = 1 then
     QRLabel60.Font.Style := [fsBold,fsUnderline]
  else
     QRLabel64.Font.Style := [fsBold,fsUnderline];

  // 4
  if cdsProcessoPERGUNTA4.AsInteger = 1 then
     QRLabel59.Font.Style := [fsBold,fsUnderline]
  else
     QRLabel63.Font.Style := [fsBold,fsUnderline];

  // 5
  if cdsProcessoPERGUNTA5.AsInteger = 1 then
     QRLabel70.Font.Style := [fsBold,fsUnderline]
  else
     QRLabel69.Font.Style := [fsBold,fsUnderline];
 end;
end;

procedure TfrmRelPedidoTmbj.QRDBText1Print(sender: TObject;
  var Value: String);
begin
 Value := Value + '/' + FormatDateTime( 'yy', dmIT.cdsProcessoDATAPROCESSOID.AsDateTime );
end;

end.
