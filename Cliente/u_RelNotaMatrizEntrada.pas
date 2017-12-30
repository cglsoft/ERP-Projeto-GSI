unit u_RelNotaMatrizEntrada;

interface

uses                                                       
  Windows, Forms, QRCtrls, QuickRpt, Classes, Controls, ExtCtrls, DBClient,
  DB, SysUtils, Dialogs;

type
  TfrmRelNotaMatrizEntrada = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRSubDetail1: TQRSubDetail;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRBand1: TQRBand;
    QRDBText28: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QRDBText47: TQRDBText;
    QRDBText48: TQRDBText;
    QRDBText49: TQRDBText;
    QRBand2: TQRBand;
    QRLabel2: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBRichText1: TQRDBRichText;
    QRDBText1: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBRichText5: TQRDBRichText;
    QRDBText30: TQRDBText;
    qrlblCPFCNPJ: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText35: TQRDBText;
    qrlblTranspEndereco: TQRLabel;
    qrlblTranspCidade: TQRLabel;
    qrlblTranspUF: TQRLabel;
    qrlblTranspInscrEst: TQRLabel;
    qrlblTranspCGC: TQRLabel;
    qrdbModalidadeFrete: TQRDBText;
    qrlblInscrEstadual: TQRLabel;
    QRDBText25: TQRDBText;
    qrlblTelefone: TQRLabel;
    qrlblEndereco: TQRLabel;
    qrlblSerie: TQRLabel;
    qrdbtxtNCUID: TQRDBText;
    qrlblNSUID: TQRLabel;
    qrdbtxtDtNSU: TQRDBText;
    qrsysdtTime: TQRSysData;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText11Print(sender: TObject; var Value: String);
    procedure QRDBText6Print(sender: TObject; var Value: String);
    procedure QRDBText28Print(sender: TObject; var Value: String);
    procedure QRLabel51Print(sender: TObject; var Value: String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qrdbModalidadeFretePrint(sender: TObject; var Value: String);
  private
    { Private declarations }
    procedure ImprDadosTransportador;
    procedure ImprDadosDestinatario;
    function PesqEntidade( IdentID : String ) : OleVariant;
  public
    { Public declarations }
  end;

var
  frmRelNotaMatrizEntrada: TfrmRelNotaMatrizEntrada;

implementation

uses u_dmEF, FuncoesCliente, FuncoesDSI, Variants, Math;

{$R *.DFM}

function TfrmRelNotaMatrizEntrada.PesqEntidade( IdentID : String ) : OleVariant;
var cds : TClientDataSet;
    iSql : String;
begin
 Cds  := nil;
 try
  iSql := 'SELECT  ENTIDADEID,  CPFCNPJ,  INSCRESTADUAL,  INSCRMUNICIPAL,  NOME, ' +
          '  CEPID,  NUMERO,  COMPLEMENTO,  ENDERECO,  BAIRRO,  CIDADE,  SIGLAUFID, ' +
          '  TELEFONE ' +
          '  FROM ' +
          '  EF_ENTIDADE ' +
          ' WHERE ' +
          '  ENTIDADEID = ' + IdentID;

  ExecDynamicProvider( -1, iSQL, Cds );
  Result := Cds.Data;
 finally
  FreeAndNil( cds );
 end;

end;

procedure TfrmRelNotaMatrizEntrada.ImprDadosTransportador;
var Cds : TClientDataSet;
begin
 cds := TClientDataSet.Create( Self );
 try
  if not dmEF.cdsNfeTRANSPORTADORID.IsNull then
     Cds.Data := PesqEntidade( dmEF.cdsNfeTRANSPORTADORID.AsString );

  if not Cds.IsEmpty then
     begin
      qrlblTranspEndereco.Caption := Trim( Cds.FieldByName('ENDERECO').AsString ) + ' ' +
                                     Trim( Cds.FieldByName('NUMERO').AsString ) + ' ' +
                                     Trim( Cds.FieldByName('COMPLEMENTO').AsString );
      qrlblTranspCidade.Caption   := Cds.FieldByName('CIDADE').AsString;
      qrlblTranspUF.Caption       := Cds.FieldByName('SIGLAUFID').AsString;
      qrlblTranspInscrEst.Caption := Cds.FieldByName('INSCRESTADUAL').AsString;
      qrlblTranspCGC.Caption      := FormatCNPF_CNPJ_CCM( Cds.FieldByName('CPFCNPJ').AsString );
     end
  else
     begin
      qrlblTranspEndereco.Caption := '';
      qrlblTranspCidade.Caption   := '';
      qrlblTranspUF.Caption       := '';
      qrlblTranspInscrEst.Caption := '';
      qrlblTranspCGC.Caption      := '';
     end;
  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TfrmRelNotaMatrizEntrada.ImprDadosDestinatario;
var Cds : TClientDataSet;
begin
 cds := TClientDataSet.Create( Self );
 try
  if not dmEF.cdsNfeENTIDADEID.IsNull then
     Cds.Data := PesqEntidade( dmEF.cdsNfeENTIDADEID.AsString );

  if not Cds.IsEmpty then
     begin
      qrlblEndereco.Caption      := Trim( dmEF.cdsNfeENDERECO.Value ) + ',' +
                                    Trim( dmEF.cdsNfeNUMERO.Value ) + ' ' +
                                    Trim( dmEF.cdsNfeCOMPLEMENTO.Value ) + ' ' +
                                    Trim( dmEF.cdsNfeBAIRRO.Value );

      qrlblCPFCNPJ.Caption       := FormatCNPF_CNPJ_CCM( Cds.FieldByName('CPFCNPJ').AsString );

      if cds.FieldByName('INSCRESTADUAL').IsNull then      // alterado weles por pedido Joel ( dmEF.cdsNfeCONTRIBUINTEICMS.AsInteger = 0 ) then
         qrlblInscrEstadual.Caption := 'ISENTO'
      else
         qrlblInscrEstadual.Caption := Cds.FieldByName('INSCRESTADUAL').AsString;

      qrlblTelefone.Caption      := Cds.FieldByName('TELEFONE').AsString;
     end
  else
     begin
      qrlblCPFCNPJ.Caption       := '';
      qrlblInscrEstadual.Caption := 'ISENTO';
      qrlblTelefone.Caption      := '';
     end;
  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TfrmRelNotaMatrizEntrada.QuickRep1BeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
 if dmEF.cdsNfeTIPONOTA.Value = 'I' then
    begin
     QRSubDetail1.Enabled  := False;
     QRDBRichText1.Enabled := True;
     QRDBText1.Enabled     := True;
     QRDBText5.Enabled     := True;
     QRDBText9.Enabled     := True;
    end
 else
    begin
     QRSubDetail1.Enabled  := True;
     QRDBRichText1.Enabled := False;
     QRDBText1.Enabled     := False;
     QRDBText5.Enabled     := False;
     QRDBText9.Enabled     := False;
    end;

 if dmEF.cdsNfeEMPRESAID.AsInteger in [12..13]then
    qrlblSerie.Enabled := True;

 if dmEF.cdsNfeEMPRESAID.AsInteger in [15..17]then
    begin
     qrlblNSUID.Enabled   := True;
     qrdbtxtNCUID.Enabled := True;
     qrdbtxtDtNSU.Enabled := True;
     qrsysdtTime.Enabled  := True;
    end;

 ImprDadosTransportador;
 ImprDadosDestinatario;
end;

procedure TfrmRelNotaMatrizEntrada.QRDBText11Print(sender: TObject;
  var Value: String);
begin
 Value := Copy( Value, 1,15 );
end;

procedure TfrmRelNotaMatrizEntrada.QRDBText6Print(sender: TObject;
  var Value: String);
begin
 Value := StrZero( dmEF.cdsNfeNFEID.Value, 6, 0 )
end;

procedure TfrmRelNotaMatrizEntrada.QRDBText28Print(sender: TObject;
  var Value: String);
begin
 Value := StrZero( dmEF.cdsNfeNFEID.Value, 6, 0 )
end;

procedure TfrmRelNotaMatrizEntrada.QRLabel51Print(sender: TObject;
  var Value: String);
begin
 If Value = 'E' Then
    Value := '1'
 else
    Value := '2';

end;

procedure TfrmRelNotaMatrizEntrada.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 frmRelNotaMatrizEntrada := Nil;
end;

procedure TfrmRelNotaMatrizEntrada.qrdbModalidadeFretePrint(
  sender: TObject; var Value: String);
begin
 if Value = 'E' then
    Value := '1'
 else
    Value := '2';
end;

end.
