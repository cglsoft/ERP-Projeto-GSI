unit u_RelOSNovo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, jpeg, QuickRpt, ExtCtrls, DBClient;

type
  TfrmRelOSNovo = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    qrsubdetalOSDefeito: TQRSubDetail;
    qrsubdetalOSMaterial: TQRSubDetail;
    QRBand2: TQRBand;
    PageHeaderBand1: TQRBand;
    QRShape27: TQRShape;
    QRImage1: TQRImage;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText16: TQRDBText;
    QRDBText25: TQRDBText;
    QrlEndereco: TQRLabel;
    QrlBairro: TQRLabel;
    QrlEmail: TQRLabel;
    QrlTelefone: TQRLabel;
    QrlFax: TQRLabel;
    QRSysData1: TQRSysData;
    QRDBText2: TQRDBText;
    QRBand3: TQRBand;
    QRGroup1: TQRGroup;
    QRShape59: TQRShape;
    V: TQRShape;
    QRShape125: TQRShape;
    QRShape123: TQRShape;
    QRShape121: TQRShape;
    QRShape119: TQRShape;
    QRShape120: TQRShape;
    QRShape122: TQRShape;
    QRShape89: TQRShape;
    QRShape91: TQRShape;
    QRShape95: TQRShape;
    QRShape100: TQRShape;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRShape90: TQRShape;
    QRShape92: TQRShape;
    QRLabel40: TQRLabel;
    QRShape93: TQRShape;
    QRShape94: TQRShape;
    QRLabel41: TQRLabel;
    QRShape96: TQRShape;
    QRShape97: TQRShape;
    QRLabel42: TQRLabel;
    QRShape98: TQRShape;
    QRShape99: TQRShape;
    QRLabel44: TQRLabel;
    QRShape101: TQRShape;
    QRShape102: TQRShape;
    QRLabel45: TQRLabel;
    QRShape103: TQRShape;
    QRShape104: TQRShape;
    QRShape106: TQRShape;
    QRShape107: TQRShape;
    QRShape108: TQRShape;
    QRShape109: TQRShape;
    QRShape110: TQRShape;
    QRShape111: TQRShape;
    QRShape112: TQRShape;
    QRShape113: TQRShape;
    QRShape114: TQRShape;
    QRShape115: TQRShape;
    QRShape116: TQRShape;
    QRLabel43: TQRLabel;
    QRShape105: TQRShape;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRShape118: TQRShape;
    QRShape124: TQRShape;
    QRShape126: TQRShape;
    QRShape127: TQRShape;
    QRShape128: TQRShape;
    QRShape130: TQRShape;
    QRShape131: TQRShape;
    QRShape132: TQRShape;
    QRShape134: TQRShape;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel64: TQRLabel;
    QRShape135: TQRShape;
    QRShape136: TQRShape;
    QRLabel65: TQRLabel;
    QRShape141: TQRShape;
    QRShape142: TQRShape;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRDBText28: TQRDBText;
    qrdbTMaoObra: TQRDBText;
    QRDBText30: TQRDBText;
    qrdbTDesloc: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    qrdbTPagar: TQRDBText;
    qrdbTPecas: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRShape87: TQRShape;
    QRLabel37: TQRLabel;
    QRDBText49: TQRDBText;
    QRShape58: TQRShape;
    QRDBText51: TQRDBText;
    QRLabel71: TQRLabel;
    QRDBText45: TQRDBText;
    QRShape4: TQRShape;
    QRShape15: TQRShape;
    QRShape11: TQRShape;
    QRShape14: TQRShape;
    QRShape13: TQRShape;
    QRShape5: TQRShape;
    QRDBText3: TQRDBText;
    QRLabel8: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText4: TQRDBText;
    QRShape8: TQRShape;
    QRLabel2: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText24: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText17: TQRDBText;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRLabel17: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText13: TQRDBText;
    QRShape18: TQRShape;
    QRDBText14: TQRDBText;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText18: TQRDBText;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRLabel21: TQRLabel;
    QRDBText19: TQRDBText;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRDBText21: TQRDBText;
    QRShape22: TQRShape;
    QRLabel24: TQRLabel;
    QRDBText20: TQRDBText;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRLabel25: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel26: TQRLabel;
    QRDBText11: TQRDBText;
    QRShape25: TQRShape;
    QRDBText10: TQRDBText;
    QRLabel27: TQRLabel;
    QRShape26: TQRShape;
    QRLabel28: TQRLabel;
    QRDBText22: TQRDBText;
    QRShape145: TQRShape;
    QRLabel72: TQRLabel;
    QRDBText26: TQRDBText;
    QRLabel7: TQRLabel;
    qrlblContratoID: TQRLabel;
    QRShape28: TQRShape;
    QRDBText41: TQRDBText;
    QRShape31: TQRShape;
    QRDBText40: TQRDBText;
    QRShape12: TQRShape;
    QRShape30: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRDBText44: TQRDBText;
    QRShape34: TQRShape;
    QRLabel31: TQRLabel;
    QRShape35: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRLabel32: TQRLabel;
    QRShape48: TQRShape;
    qrlblDescrProduto: TQRLabel;
    QRShape49: TQRShape;
    QRLabel33: TQRLabel;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRShape60: TQRShape;
    QRShape56: TQRShape;
    QRShape57: TQRShape;
    QRShape36: TQRShape;
    QRShape52: TQRShape;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    QRShape55: TQRShape;
    QRDBText1: TQRDBText;
    qrdbtxtProduto: TQRDBText;
    QRDBText48: TQRDBText;
    QRDBText50: TQRDBText;
    qrdbtxtServ: TQRDBText;
    QRDBText47: TQRDBText;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRLabel30: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel73: TQRLabel;
    QRLabel74: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel29: TQRLabel;
    QRLabel75: TQRLabel;
    QRDBText27: TQRDBText;
    QRDBText52: TQRDBText;
    QRDBRichText1: TQRDBRichText;
    QRDBText46: TQRDBText;
    QRDBText53: TQRDBText;
    QRSysData2: TQRSysData;
    QRShape137: TQRShape;
    QRImage2: TQRImage;
    QRLabel1: TQRLabel;
    QRDBText31: TQRDBText;
    QRLabel3: TQRLabel;
    QRShape29: TQRShape;
    QRLDescTermo: TQRLabel;
    QRDBText29: TQRDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRSysData2Print(sender: TObject; var Value: string);
    procedure qrdbTMaoObraPrint(sender: TObject; var Value: string);
    procedure qrdbTPagarPrint(sender: TObject; var Value: string);
  private
    procedure PesquisaDadosFilial;
    procedure PesquisaDadosFilialOFF;
    procedure AtualizaReport;
    { Private declarations }
  public
    { Public declarations }
    TipoRelat : Integer;
  end;

var
  frmRelOSNovo: TfrmRelOSNovo;

implementation

uses u_dmOs, FuncoesCliente, u_dmOFFLine;

{$R *.dfm}

procedure TfrmRelOSNovo.AtualizaReport;
var i : Integer;
begin
 for i := 0 to ComponentCount - 1 do
 begin
  if ( Components[i] is TQRDBText ) then
     begin
      case TQRDBText( Components[i] ).Tag  of
      2 : TQRDBText( Components[i] ).DataSet  := dmOFFLine.cdsOSDefeito;
      3 : TQRDBText( Components[i] ).DataSet  := dmOFFLine.cdsOSMaterial;
      else
          TQRDBText( Components[i] ).DataSet  := dmOFFLine.cdsOS;
      end;
     end;

  if ( Components[i] is TQRDBRichText ) then
     TQRDBRichText( Components[i] ).DataSet  := dmOFFLine.cdsOSDefeito;

  if ( Components[i] is TQuickRep ) then
     TQuickRep( Components[i] ).DataSet  := dmOFFLine.cdsOS;
 end;

 qrsubdetalOSDefeito.DataSet  := dmOFFLine.cdsOsDefeito;
 qrsubdetalOSMaterial.DataSet := dmOFFLine.cdsOSMaterial;
end;

procedure TfrmRelOSNovo.PesquisaDadosFilial;
var cdsPesq  : TClientDataSet;
    iSQL : String;
begin
 cdsPesq  := nil;
 iSQL := 'SELECT ENDERECO, CEPID, CIDADE, NUMERO, SIGLAUFID, ' +
         ' BAIRRO,EMAIL, '+
         ' EF_FILIAL.FAX,EF_FILIAL.TELEFONE '+
         'FROM '+
          'EF_FILIAL '+
         'WHERE '+
          'EF_FILIAL.FILIALID = '+ dmOS.cdsOsFILIALID.AsString;
 try
  ExecDynamicProvider( -1,iSQL,cdsPesq );

  if not cdsPesq.IsEmpty then
     begin
      QrlEndereco.Caption := Trim( cdsPesq.FieldByName('ENDERECO').AsString ) + ' ' +
                             Trim( cdsPesq.FieldByName('NUMERO').AsString ) + ' ' +
                             Trim( cdsPesq.FieldByName('BAIRRO').AsString );
      QrlBairro.Caption   := FormatFloat( '00000-000;1;',cdsPesq.FieldByName( 'CEPID' ).AsInteger ) + ' - ' +
                             trim( cdsPesq.FieldByName('CIDADE').AsString ) + ' ' +
                             trim( cdsPesq.FieldByName('SIGLAUFID').AsString ) + ' ';

      QrlEmail.Caption    := 'Email: '+cdsPesq.FieldByName('EMAIL').AsString;
      QrlFax.Caption      := 'Fax: '+cdsPesq.FieldByName('FAX').AsString;
      QrlTelefone.Caption := 'Fone: '+cdsPesq.FieldByName('TELEFONE').AsString;
      cdsPesq.Close;
     end
  else
     begin
      QrlEndereco.Caption := '';
      QrlBairro.Caption   := '';
      QrlEmail.Caption    := '';
      QrlFax.Caption      := '';
      QrlTelefone.Caption := '';
     end;
 finally
  FreeAndNil( cdsPesq );
 end;
end;


procedure TfrmRelOSNovo.PesquisaDadosFilialOFF;
begin
 if dmOFFLine.cdsFilial.FindKey([dmOFFLine.cdsOsFILIALID.Value]) then
    begin
     QrlEndereco.Caption := dmOFFLine.cdsFilialENDERECO.AsString + '  ' +
                            Trim( dmOFFLine.cdsFilialNUMERO.AsString ) + ' ' +
                            Trim( dmOFFLine.cdsFilialBAIRRO.AsString );
     QrlBairro.Caption   := FormatFloat( '00000-000;1;',dmOFFLine.cdsFilialCEPID.AsInteger ) + ' - ' +
                            trim( dmOFFLine.cdsFilialCIDADE.AsString ) + ' ' +
                            trim( dmOFFLine.cdsFilialSIGLAUFID.AsString ) + ' ';
     QrlEmail.Caption    := 'Email: ' + dmOFFLine.cdsFilialEMAIL.AsString;
     QrlFax.Caption      := 'Fax: '   + dmOFFLine.cdsFilialFAX.AsString;
     QrlTelefone.Caption := 'Fone: '  + dmOFFLine.cdsFilialTELEFONE.AsString;
    end
 else
    begin
     QrlEndereco.Caption := '';
     QrlBairro.Caption   := '';
     QrlEmail.Caption    := '';
     QrlFax.Caption      := '';
     QrlTelefone.Caption := '';
    end;
end;


procedure TfrmRelOSNovo.qrdbTMaoObraPrint(sender: TObject; var Value: string);
begin
 if QuickRep1.DataSet.FieldByName('TIPOOSID').AsString[1] in ['A','B','G'] then
    Value := '0,00';
 if ( QuickRep1.DataSet.FieldByName('VLRORCADO').AsFloat > 0 ) and
    ( QuickRep1.DataSet.FieldByName('TIPOOSID').AsString = 'C' )then
     Value := '0,00';    
end;

procedure TfrmRelOSNovo.qrdbTPagarPrint(sender: TObject; var Value: string);
begin
 if QuickRep1.DataSet.FieldByName('TIPOOSID').AsString[1] in ['A','B','G'] then
    Value := '0,00';

end;

procedure TfrmRelOSNovo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 frmRelOSNovo  := Nil;
end;

procedure TfrmRelOSNovo.QRSysData2Print(sender: TObject; var Value: string);
begin
 Value := ' '+ RetornaData('D') + ' de '+
               RetornaData('M') + ' de '+
               RetornaData('A');
end;

procedure TfrmRelOSNovo.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
 case TipoRelat of
 1 : PesquisaDadosFilial;
 2 : begin
      AtualizaReport;
      PesquisaDadosFilialOFF;
     end;
 end;
end;

end.
