unit u_RelNotaServicoFilial;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, jpeg, Extenso, DBClient;

type
  TfrmRelNotaServicoFilial = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRSubDetail1: TQRSubDetail;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    qrdbtxtNFSID: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText28: TQRDBText;
    qrdbtxtVlrTotalISS: TQRDBText;
    qrdbtxtVlrTotalServico: TQRDBText;
    qrrichtxtDispensado: TQRRichText;
    Extenso1: TExtenso;
    QRRichText2: TQRRichText;
    QRLabel42: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBRichText6: TQRDBRichText;
    QRLabel43: TQRLabel;
    QRDBText54: TQRDBText;
    QRDBText53: TQRDBText;
    QRLabel18: TQRLabel;
    qrlblCPFCNPJ: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    qrlblTelefone: TQRLabel;
    qrlblInscrEstadual: TQRLabel;
    qrlblServ1: TQRLabel;
    qrlblServ2: TQRLabel;
    qrlblServ3: TQRLabel;
    qrlblServ4: TQRLabel;
    qrlblV1: TQRLabel;
    qrlblV2: TQRLabel;
    qrlblV3: TQRLabel;
    qrlblV4: TQRLabel;
    qrlblRet1: TQRLabel;
    qrlblEndereco: TQRLabel;
    QRDBRichText7: TQRDBRichText;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText11Print(sender: TObject; var Value: String);
    procedure qrdbtxtNFSIDPrint(sender: TObject; var Value: String);
    procedure QRDBText53Print(sender: TObject; var Value: String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure ImprDadosDestinatario;
    procedure ImprDuplicNota;
    procedure ImprServico;
    function PesqEntidade(IdentID: String): OleVariant;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelNotaServicoFilial: TfrmRelNotaServicoFilial;

implementation

uses u_dmEF, FuncoesDSI, FuncoesCliente;

{$R *.DFM}
procedure TfrmRelNotaServicoFilial.ImprServico;
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
       qrlblServ1.Enabled := True;
       qrlblV1.Enabled    := True;
      end;
  2 : begin
       qrlblServ2.Caption := dmEF.cdsNfsServicoDESCRICAOSERVICO.Value;
       qrlblV2.Caption    := FormatCurr('###,###,##0.00', dmEF.cdsNFSServicoVLRSERVICO.Value );
       qrlblServ2.Enabled := True;
       qrlblV2.Enabled    := True;
      end;
  3 : begin
       qrlblServ3.Caption := dmEF.cdsNfsServicoDESCRICAOSERVICO.Value;
       qrlblV3.Caption    := FormatCurr('###,###,##0.00', dmEF.cdsNFSServicoVLRSERVICO.Value );
       qrlblServ3.Enabled := True;
       qrlblV3.Enabled    := True;
      end;
  4 : begin
       qrlblServ4.Caption := dmEF.cdsNfsServicoDESCRICAOSERVICO.Value;
       qrlblV4.Caption    := FormatCurr('###,###,##0.00', dmEF.cdsNFSServicoVLRSERVICO.Value );
       qrlblServ4.Enabled := True;
       qrlblV4.Enabled    := True;
      end;
  end;

  dmEF.cdsNFSServico.Next;
  Inc( Contador );
 end;
end;

function TfrmRelNotaServicoFilial.PesqEntidade( IdentID : String ) : OleVariant;
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

procedure TfrmRelNotaServicoFilial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 frmRelNotaServicoFilial := Nil;
end;

procedure TfrmRelNotaServicoFilial.ImprDadosDestinatario;
var Cds : TClientDataSet;
begin
 cds := TClientDataSet.Create( Self );
 try
  if not dmEF.cdsNfsENTIDADEID.IsNull then
     Cds.Data := PesqEntidade( dmEF.cdsNfsENTIDADEID.AsString );

  if not Cds.IsEmpty then
     begin
      qrlblCPFCNPJ.Caption       := FormatCNPF_CNPJ_CCM( Cds.FieldByName('CPFCNPJ').AsString );
      if ( Cds.FieldByName('INSCRESTADUAL').IsNull ) then // ALTERA WELES POR SOLICITACAO JOEL or ( dmEF.cdsNfsCONTRIBUINTEICMS.AsInteger = 0 ) then
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

procedure TfrmRelNotaServicoFilial.ImprDuplicNota;
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
           // Joel pediu que fosse essa descrição 22/08/2003
          QRLabel11.Caption := 'A Vista' //Trim( tb_Cond_PagtoDESCRICAO.Value )
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
     end;
   dmEF.cdsNfsParcela.Next;
  end;

 finally
  FreeAndNil( cds );
 end;
end;



procedure TfrmRelNotaServicoFilial.QuickRep1BeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
 QRDBRichText6.Enabled := False;
 QRLabel7.Enabled  := False;
 QRLabel8.Enabled  := False;
 QRLabel9.Enabled  := False;
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

 Extenso1.Numero := FormatCurr('0.00', dmEF.cdsNfsVLRTOTALNOTA.Value );
 QRRichText2.Lines.Clear;
 QRRichText2.Lines.Add( UpperCase( Extenso1.Extenso ) );

 if dmEF.cdsNfsServicoSERVICOID.AsInteger > 0 then
    qrrichtxtDispensado.Enabled := True;

 ImprDuplicNota;

 ImprDadosDestinatario;
 ImprServico;
end;

procedure TfrmRelNotaServicoFilial.QRDBText11Print(sender: TObject;
  var Value: String);
begin
 Value := Copy( Value, 1,13 );
end;

procedure TfrmRelNotaServicoFilial.qrdbtxtNFSIDPrint(sender: TObject;
  var Value: String);
begin
 Value := StrZero( dmEF.cdsNfsNFSID.Value, 6, 0 );
end;

procedure TfrmRelNotaServicoFilial.QRDBText53Print(sender: TObject;
  var Value: String);
begin
 Value := StrZero( dmEF.cdsNfsPDSID.Value, 6, 0 );
end;

end.
