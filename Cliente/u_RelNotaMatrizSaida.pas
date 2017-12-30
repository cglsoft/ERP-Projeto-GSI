unit u_RelNotaMatrizSaida;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, DBClient;

type
  TfrmRelNotaMatrizSaida = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText13: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRBand1: TQRBand;
    QRDBText28: TQRDBText;
    qrdbtxtVlrTotalISS: TQRDBText;
    qrdbtxtVlrTotalServico: TQRDBText;
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
    qrdbtxtNFSID: TQRDBText;
    qrdbtxtUF: TQRDBText;
    qrdbtxtCEP: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel50: TQRLabel;
    QRDBRichText6: TQRDBRichText;
    QRDBText54: TQRDBText;
    QRDBText51: TQRDBText;
    QRDBText23: TQRDBText;
    qrrichtxtDispensado: TQRRichText;
    QRDBText9: TQRDBText;
    QRDBRichText7: TQRDBRichText;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText52: TQRDBText;
    qrlblRet1: TQRLabel;
    QRDBText24: TQRDBText;
    QRDBText29: TQRDBText;
    qrdbtxtDT1: TQRDBText;
    qrdbtxtDT2: TQRDBText;
    qrlblTranspEndereco: TQRLabel;
    qrlblTranspCidade: TQRLabel;
    qrlblTranspUF: TQRLabel;
    qrlblTranspInscrEst: TQRLabel;
    qrlblTranspCGC: TQRLabel;
    qrlblTelefone: TQRLabel;
    qrlblCPFCNPJ: TQRLabel;
    qrlblInscrEstadual: TQRLabel;
    qrlblV1: TQRLabel;
    qrlblV2: TQRLabel;
    qrlblV3: TQRLabel;
    qrlblV4: TQRLabel;
    qrlblB1: TQRLabel;
    qrlblB2: TQRLabel;
    qrlblB3: TQRLabel;
    qrlblB4: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText25: TQRDBText;
    qrlblServ1: TQRLabel;
    qrlblServ2: TQRLabel;
    qrlblServ3: TQRLabel;
    qrlblServ4: TQRLabel;
    qrlblEndereco: TQRLabel;
    QRLabel1: TQRLabel;
    qrlblSerie: TQRLabel;
    qrdbtxtNCUID: TQRDBText;
    qrlblNSUID: TQRLabel;
    qrdbtxtDtNSU: TQRDBText;
    qrsysdtTime: TQRSysData;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText11Print(sender: TObject; var Value: String);
    procedure qrdbtxtNFSIDPrint(sender: TObject; var Value: String);
    procedure QRDBText28Print(sender: TObject; var Value: String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRDBText25Print(sender: TObject; var Value: String);
    procedure qrdbtxtDT2Print(sender: TObject; var Value: String);
  private
    { Private declarations }
    procedure ImprDadosTransportador;
    procedure ImprDadosDestinatario;
    function PesqEntidade( IdentID : String ) : OleVariant;
    procedure ImprDuplicNota;
    procedure ImprServico;
  public
    { Public declarations }
  end;

var
  frmRelNotaMatrizSaida: TfrmRelNotaMatrizSaida;

implementation

uses u_dmEF, FuncoesDSI, FuncoesCliente, DB;

{$R *.DFM}

procedure TfrmRelNotaMatrizSaida.ImprServico;
var Contador : Integer;
begin
 dmEF.cdsNfsServico.First;

 if dmEF.cdsNfsServicoITEMID.Value < 1 then
    begin
     qrdbtxtVlrTotalISS.Enabled := False;
     qrdbtxtVlrTotalServico.Enabled := False;
    end
 else
    begin
     qrdbtxtVlrTotalISS.Enabled := True;
     qrdbtxtVlrTotalServico.Enabled := True;
    end;

 Contador    := 1;
 while not dmEF.cdsNFSServico.Eof do
 begin
  case Contador of
  1 : begin
       qrlblServ1.Caption := dmEF.cdsNfsServicoDESCRICAOSERVICO.Value;
       qrlblV1.Caption    := FormatCurr('###,###,##0.00', dmEF.cdsNFSServicoVLRSERVICO.Value );
       qrlblB1.Caption    := FormatCurr('###,###,##0.00', dmEF.cdsNFSServicoVLRSERVICO.Value );
       qrlblServ1.Enabled := True;
       qrlblV1.Enabled    := True;
       qrlblB1.Enabled    := True;
      end;
  2 : begin
       qrlblServ2.Caption := dmEF.cdsNfsServicoDESCRICAOSERVICO.Value;
       qrlblV2.Caption    := FormatCurr('###,###,##0.00', dmEF.cdsNFSServicoVLRSERVICO.Value );
       qrlblB2.Caption    := FormatCurr('###,###,##0.00', dmEF.cdsNFSServicoVLRSERVICO.Value );
       qrlblServ2.Enabled := True;
       qrlblV2.Enabled    := True;
       qrlblB2.Enabled    := True;
      end;
  3 : begin
       qrlblServ3.Caption := dmEF.cdsNfsServicoDESCRICAOSERVICO.Value;
       qrlblV3.Caption    := FormatCurr('###,###,##0.00', dmEF.cdsNFSServicoVLRSERVICO.Value );
       qrlblB3.Caption    := FormatCurr('###,###,##0.00', dmEF.cdsNFSServicoVLRSERVICO.Value );
       qrlblServ3.Enabled := True;
       qrlblV3.Enabled    := True;
       qrlblB3.Enabled    := True;
      end;
  4 : begin
       qrlblServ4.Caption := dmEF.cdsNfsServicoDESCRICAOSERVICO.Value;
       qrlblV4.Caption    := FormatCurr('###,###,##0.00', dmEF.cdsNFSServicoVLRSERVICO.Value );
       qrlblB4.Caption    := FormatCurr('###,###,##0.00', dmEF.cdsNFSServicoVLRSERVICO.Value );
       qrlblServ4.Enabled := True;
       qrlblV4.Enabled    := True;
       qrlblB4.Enabled    := True;
      end;
  end;

  dmEF.cdsNFSServico.Next;
  Inc( Contador );
 end;

 // Imprimir Dizeres da Retenção N-CMP
 //if dmEF.cdsNfsServicoSERVICOID.AsInteger in [29..31] then
 //   qrlblRet1.Enabled   := True;
end;

function TfrmRelNotaMatrizSaida.PesqEntidade( IdentID : String ) : OleVariant;
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

procedure TfrmRelNotaMatrizSaida.ImprDadosTransportador;
var Cds : TClientDataSet;
begin
 cds := TClientDataSet.Create( Self );
 try
  if not dmEF.cdsNfsTRANSPORTADORID.IsNull then
     Cds.Data := PesqEntidade( dmEF.cdsNfsTRANSPORTADORID.AsString );

  if not Cds.IsEmpty then
     begin
      qrlblTranspEndereco.Caption := Cds.FieldByName('ENDERECO').AsString + ' ' +
                                     Cds.FieldByName('NUMERO').AsString + ' ' +
                                     Cds.FieldByName('COMPLEMENTO').AsString;
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

procedure TfrmRelNotaMatrizSaida.ImprDadosDestinatario;
var Cds : TClientDataSet;
begin
 cds := TClientDataSet.Create( Self );
 try
  if not dmEF.cdsNfsENTIDADEID.IsNull then
     Cds.Data := PesqEntidade( dmEF.cdsNfsENTIDADEID.AsString );

  if not Cds.IsEmpty then
     begin
      qrlblCPFCNPJ.Caption       := FormatCNPF_CNPJ_CCM( Cds.FieldByName('CPFCNPJ').AsString );
      if ( Cds.FieldByName('INSCRESTADUAL').IsNull ) then
         qrlblInscrEstadual.Caption := 'ISENTO'
      else
         qrlblInscrEstadual.Caption := Cds.FieldByName('INSCRESTADUAL').AsString;

      qrlblEndereco.Caption      := Trim( dmEF.cdsNfsENDERECO.Value ) + ',' +
                                    Trim( dmEF.cdsNfsNUMERO.Value ) + ' ' +
                                    Trim( dmEF.cdsNfsCOMPLEMENTO.Value ) + ' ' +
                                    Trim( dmEF.cdsNfsBAIRRO.Value );

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

procedure TfrmRelNotaMatrizSaida.ImprDuplicNota;
var cds : TClientDataSet;
    iSql : String;
begin
 if dmEF.cdsNfsCONDPAGTOID.AsInteger < 1 then
    exit;

 Cds  := nil;
 try
  iSql := 'SELECT  CONDPAGTOID, EMITEDUPLICATA, IMPRIMEDESCRICAO, DIAUNICO ' +
          '  FROM ' +
          '  EF_CONDPAGTO ' +
          ' WHERE ' +
          '  CONDPAGTOID = ' + dmEF.cdsNfsCONDPAGTOID.AsString;

  ExecDynamicProvider( -1, iSQL, Cds );

  if cds.IsEmpty then
     exit;

  if cds.FieldByName('IMPRIMEDESCRICAO').AsInteger = 1 then
     begin
      QRDBRichText6.Enabled := True;
      exit;
    end;

  dmEF.cdsNfsParcela.First;
  while not dmEF.cdsNFSParcela.Eof do
  begin
   case dmEF.cdsNfsParcelaPARCELAID.AsInteger of
   1 : begin
        QRLabel7.Caption := dmEF.cdsNfsParcelaDUPLICATAID.AsString + '/' + dmEF.cdsNfsParcelaPARCELAID.AsString;
        if cds.FieldByName('DIAUNICO').AsInteger = 1 then
          QRLabel11.Caption := 'A Vista'
        else
          QRLabel11.Caption := FormatDateTime( 'dd/mm/yyyy', dmEF.cdsNfsParcelaDATAVENCIMENTO.AsDateTime );

        QRLabel18.Caption := FormatCurr('###,###,##0.00',dmEF.cdsNfsParcelaVLRPARCELA.Value);
        QRLabel7.Enabled  := True;
        QRLabel11.Enabled := True;
        QRlabel18.Enabled := True;
       end;

   2 : begin
        QRLabel8.Caption  := dmEF.cdsNfsParcelaDUPLICATAID.AsString + '/' + dmEF.cdsNfsParcelaPARCELAID.AsString;
        QRLabel12.Caption := FormatDateTime( 'dd/mm/yyyy', dmEF.cdsNfsParcelaDATAVENCIMENTO.AsDateTime );
        QRLabel15.Caption := FormatCurr('###,###,##0.00', dmEF.cdsNFSParcelaVLRPARCELA.Value);
        QRLabel8.Enabled  := True;
        QRLabel12.Enabled := True;
        QRlabel15.Enabled := True;
       end;

   3 : begin
        QRLabel9.Caption  := dmEF.cdsNfsParcelaDUPLICATAID.AsString + '/' + dmEF.cdsNfsParcelaPARCELAID.AsString;
        QRLabel13.Caption := FormatDateTime( 'dd/mm/yyyy', dmEF.cdsNfsParcelaDATAVENCIMENTO.AsDateTime );
        QRLabel16.Caption := FormatCurr('###,###,##0.00', dmEF.cdsNFSParcelaVLRPARCELA.Value );
        QRLabel9.Enabled  := True;
        QRLabel13.Enabled := True;
        QRlabel16.Enabled := True;
       end;
   4 : begin
        QRLabel10.Caption := dmEF.cdsNfsParcelaDUPLICATAID.AsString + '/' + dmEF.cdsNfsParcelaPARCELAID.AsString;
        QRLabel14.Caption := FormatDateTime( 'dd/mm/yyyy', dmEF.cdsNfsParcelaDATAVENCIMENTO.AsDateTime );
        QRLabel17.Caption := FormatCurr('###,###,##0.00', dmEF.cdsNFSParcelaVLRPARCELA.Value );
        QRLabel10.Enabled := True;
        QRLabel14.Enabled := True;
        QRlabel17.Enabled := True;
       end;
   5 : begin
        QRLabel19.Caption := dmEF.cdsNfsParcelaDUPLICATAID.AsString + '/' + dmEF.cdsNfsParcelaPARCELAID.AsString;
        QRLabel26.Caption := FormatDateTime( 'dd/mm/yyyy', dmEF.cdsNFSParcelaDATAVENCIMENTO.AsDateTime );
        QRLabel27.Caption := FormatCurr('###,###,##0.00', dmEF.cdsNFSParcelaVLRPARCELA.Value );
        QRLabel19.Enabled := True;
        QRLabel26.Enabled := True;
        QRlabel27.Enabled := True;
       end;
   6 : begin
        QRLabel20.Caption := dmEF.cdsNfsParcelaDUPLICATAID.AsString + '/' + dmEF.cdsNfsParcelaPARCELAID.AsString;
        QRLabel25.Caption := FormatDateTime( 'dd/mm/yyyy', dmEF.cdsNfsParcelaDATAVENCIMENTO.AsDateTime );
        QRLabel28.Caption := FormatCurr('###,###,##0.00',dmEF.cdsNFSParcelaVLRPARCELA.Value);
        QRLabel20.Enabled := True;
        QRLabel25.Enabled := True;
        QRlabel28.Enabled := True;
       end;
   7 : begin
        QRLabel21.Caption := dmEF.cdsNfsParcelaDUPLICATAID.AsString + '/' + dmEF.cdsNfsParcelaPARCELAID.AsString;
        QRLabel24.Caption := FormatDateTime( 'dd/mm/yyyy', dmEF.cdsNfsParcelaDATAVENCIMENTO.AsDateTime );
        QRLabel29.Caption := FormatCurr('###,###,##0.00',dmEF.cdsNFSParcelaVLRPARCELA.Value);
        QRLabel21.Enabled := True;
        QRLabel24.Enabled := True;
        QRlabel29.Enabled := True;
       end;
   8 : begin
        QRLabel22.Caption := dmEF.cdsNfsParcelaDUPLICATAID.AsString + '/' + dmEF.cdsNfsParcelaPARCELAID.AsString;
        QRLabel23.Caption := FormatDateTime( 'dd/mm/yyyy', dmEF.cdsNfsParcelaDATAVENCIMENTO.AsDateTime );
        QRLabel30.Caption := FormatCurr('###,###,##0.00',dmEF.cdsNFSParcelaVLRPARCELA.Value);
        QRLabel22.Enabled := True;
        QRLabel23.Enabled := True;
        QRlabel30.Enabled := True;
       end;
   9 : begin
        QRLabel31.Caption := dmEF.cdsNfsParcelaDUPLICATAID.AsString + '/' + dmEF.cdsNfsParcelaPARCELAID.AsString;
        QRLabel38.Caption := FormatDateTime( 'dd/mm/yyyy', dmEF.cdsNfsParcelaDATAVENCIMENTO.AsDateTime );
        QRLabel39.Caption := FormatCurr('###,###,##0.00',dmEF.cdsNFSParcelaVLRPARCELA.Value);
        QRLabel31.Enabled := True;
        QRLabel38.Enabled := True;
        QRlabel39.Enabled := True;
       end;
   10: begin
        QRLabel32.Caption := dmEF.cdsNfsParcelaDUPLICATAID.AsString + '/' + dmEF.cdsNfsParcelaPARCELAID.AsString;
        QRLabel37.Caption := FormatDateTime( 'dd/mm/yyyy', dmEF.cdsNfsParcelaDATAVENCIMENTO.AsDateTime );
        QRLabel40.Caption := FormatCurr('###,###,##0.00',dmEF.cdsNFSParcelaVLRPARCELA.Value);
        QRLabel32.Enabled := True;
        QRLabel37.Enabled := True;
        QRlabel40.Enabled := True;
       end;
   11: begin
        QRLabel33.Caption := dmEF.cdsNfsParcelaDUPLICATAID.AsString + '/' + dmEF.cdsNfsParcelaPARCELAID.AsString;
        QRLabel36.Caption := FormatDateTime( 'dd/mm/yyyy', dmEF.cdsNfsParcelaDATAVENCIMENTO.AsDateTime );
        QRLabel41.Caption := FormatCurr('###,###,##0.00',dmEF.cdsNFSParcelaVLRPARCELA.Value);
        QRLabel33.Enabled := True;
        QRLabel36.Enabled := True;
        QRlabel41.Enabled := True;
       end;
   12: begin
        QRLabel34.Caption := dmEF.cdsNfsParcelaDUPLICATAID.AsString + '/' + dmEF.cdsNfsParcelaPARCELAID.AsString;
        QRLabel35.Caption := FormatDateTime( 'dd/mm/yyyy', dmEF.cdsNfsParcelaDATAVENCIMENTO.AsDateTime );
        QRLabel42.Caption := FormatCurr('###,###,##0.00',dmEF.cdsNFSParcelaVLRPARCELA.Value);
        QRLabel34.Enabled := True;
        QRLabel35.Enabled := True;
        QRlabel42.Enabled := True;
       end;
   13: begin
        QRLabel52.Caption := dmEF.cdsNfsParcelaDUPLICATAID.AsString + '/' + dmEF.cdsNfsParcelaPARCELAID.AsString;
        QRLabel53.Caption := FormatDateTime( 'dd/mm/yyyy', dmEF.cdsNfsParcelaDATAVENCIMENTO.AsDateTime );
        QRLabel55.Caption := FormatCurr('###,###,##0.00',dmEF.cdsNFSParcelaVLRPARCELA.Value);
        QRLabel52.Enabled := True;
        QRLabel53.Enabled := True;
        QRlabel55.Enabled := True;
       end;
   14: begin
        QRLabel58.Caption := dmEF.cdsNfsParcelaDUPLICATAID.AsString + '/' + dmEF.cdsNfsParcelaPARCELAID.AsString;
        QRLabel57.Caption := FormatDateTime( 'dd/mm/yyyy', dmEF.cdsNfsParcelaDATAVENCIMENTO.AsDateTime );
        QRLabel56.Caption := FormatCurr('###,###,##0.00',dmEF.cdsNFSParcelaVLRPARCELA.Value);
        QRLabel58.Enabled := True;
        QRLabel57.Enabled := True;
        QRlabel56.Enabled := True;
       end;
   15: begin
        QRLabel59.Caption := dmEF.cdsNfsParcelaDUPLICATAID.AsString + '/' + dmEF.cdsNfsParcelaPARCELAID.AsString;
        QRLabel60.Caption := FormatDateTime( 'dd/mm/yyyy', dmEF.cdsNfsParcelaDATAVENCIMENTO.AsDateTime );
        QRLabel61.Caption := FormatCurr('###,###,##0.00',dmEF.cdsNFSParcelaVLRPARCELA.Value);
        QRLabel59.Enabled := True;
        QRLabel60.Enabled := True;
        QRlabel61.Enabled := True;
       end;
   16: begin
       QRLabel64.Caption := dmEF.cdsNfsParcelaDUPLICATAID.AsString + '/' + dmEF.cdsNfsParcelaPARCELAID.AsString;
       QRLabel63.Caption := FormatDateTime( 'dd/mm/yyyy', dmEF.cdsNfsParcelaDATAVENCIMENTO.AsDateTime );
       QRLabel62.Caption := FormatCurr('###,###,##0.00',dmEF.cdsNFSParcelaVLRPARCELA.Value);
       QRLabel64.Enabled := True;
       QRLabel63.Enabled := True;
       QRlabel62.Enabled := True;
      end;
     end;
   dmEF.cdsNfsParcela.Next;
  end;

 finally
  FreeAndNil( cds );
 end;
end;

procedure TfrmRelNotaMatrizSaida.QuickRep1BeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
 QRDBRichText6.Enabled := False;
 QRLabel7.Enabled := False;
 QRLabel8.Enabled := False;
 QRLabel9.Enabled := False;
 QRLabel10.Enabled := False;
 QRLabel11.Enabled := False;
 QRLabel12.Enabled := False;
 QRLabel13.Enabled := False;
 QRLabel14.Enabled := False;
 QRLabel15.Enabled := False;
 QRLabel16.Enabled := False;
 QRLabel17.Enabled := False;
 QRLabel18.Enabled := False;
 QRLabel19.Enabled := False;
 QRLabel20.Enabled := False;
 QRLabel21.Enabled := False;
 QRLabel22.Enabled := False;
 QRLabel23.Enabled := False;
 QRLabel24.Enabled := False;
 QRLabel25.Enabled := False;
 QRLabel26.Enabled := False;
 QRLabel27.Enabled := False;
 QRLabel28.Enabled := False;
 QRLabel29.Enabled := False;
 QRLabel30.Enabled := False;
 QRLabel31.Enabled := False;
 QRLabel32.Enabled := False;
 QRLabel33.Enabled := False;
 QRLabel34.Enabled := False;
 QRLabel35.Enabled := False;
 QRLabel36.Enabled := False;
 QRLabel37.Enabled := False;
 QRLabel30.Enabled := False;
 QRLabel39.Enabled := False;
 QRLabel40.Enabled := False;
 QRLabel41.Enabled := False;
 QRLabel42.Enabled := False;
 QRLabel52.Enabled := False;
 QRLabel58.Enabled := False;
 QRLabel59.Enabled := False;
 QRLabel64.Enabled := False;
 QRLabel53.Enabled := False;
 QRLabel57.Enabled := False;
 QRLabel60.Enabled := False;
 QRLabel63.Enabled := False;
 QRLabel55.Enabled := False;
 QRLabel56.Enabled := False;
 QRLabel61.Enabled := False;
 QRLabel62.Enabled := False;

 if dmEF.cdsNfsEMPRESAID.AsInteger in [12..13]then
    qrlblSerie.Enabled := True;

 if dmEF.cdsNfsEMPRESAID.AsInteger in [15..17]then
    begin
     qrlblNSUID.Enabled   := True;
     qrdbtxtNCUID.Enabled := True;
     qrdbtxtDtNSU.Enabled := True;
     qrsysdtTime.Enabled  := True;
    end;

 if dmEF.cdsNfsServicoSERVICOID.AsInteger > 0 then
    qrrichtxtDispensado.Enabled := True
 else
    QRDBRichText7.Height := 95;

 ImprDuplicNota;

 ImprDadosTransportador;
 ImprDadosDestinatario;
 ImprServico;
end;

procedure TfrmRelNotaMatrizSaida.QRDBText11Print(sender: TObject;
  var Value: String);
begin
 Value := Copy( Value, 1,15 );
end;

procedure TfrmRelNotaMatrizSaida.qrdbtxtNFSIDPrint(sender: TObject;
  var Value: String);
begin
 Value := StrZero( dmEF.cdsNfsNFSID.Value, 6, 0 );
end;

procedure TfrmRelNotaMatrizSaida.QRDBText28Print(sender: TObject;
  var Value: String);
begin
 Value := StrZero( dmEF.cdsNfsNFSID.Value, 6, 0 );
end;

procedure TfrmRelNotaMatrizSaida.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 frmRelNotaMatrizSaida := Nil;
end;

procedure TfrmRelNotaMatrizSaida.QRDBText25Print(sender: TObject;
  var Value: String);
begin
 if Value = 'E' then
    Value := '1'
 else
    Value := '2';
end;

procedure TfrmRelNotaMatrizSaida.qrdbtxtDT2Print(sender: TObject;
  var Value: String);
begin
 if dmEF.cdsNfsItem.RecordCount > 0 then
    Value := '';
end;

end.
