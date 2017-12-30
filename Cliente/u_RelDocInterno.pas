unit u_RelDocInterno;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, DBClient;

type
  TfrmRelDocInterno = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    qrdbtxtProd: TQRDBText;
    qrdbtxtDescr: TQRDBText;
    qrdbtxtQTD: TQRDBText;
    qrdbtxtVLRPRECOUNITARIO: TQRDBText;
    qrdbtxtVLRPRECOTOTAL: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    TitleBand1: TQRBand;
    DetailBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    qrdbtxtPD: TQRDBText;
    QRLabel8: TQRLabel;
    qrdbtxtNF: TQRDBText;
    QRLabel9: TQRLabel;
    qrdbtxtDtEmissao: TQRDBText;
    QRShape1: TQRShape;
    QRLabel10: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRShape3: TQRShape;
    QRLabel13: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel14: TQRLabel;
    QRShape2: TQRShape;
    QRLabel11: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    PageFooterBand2: TQRBand;
    QRShape4: TQRShape;
    QRLabel15: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel16: TQRLabel;
    QRSysData4: TQRSysData;
    QRDBText7: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel18: TQRLabel;
    qrlblCPFCNPJ: TQRLabel;
    qrlblInscrEstadual: TQRLabel;
    QRLabel19: TQRLabel;
    qrdbtxtCliente: TQRDBText;
    procedure QuickRep1GetPrinterSettings(Sender: TObject;
      var Cancel: Boolean; DevMode: Pointer);
  private
    procedure ImprDadosDestinatario;
    function PesqEntidade(IdentID: String): OleVariant;
    { Private declarations }
  public
    { Public declarations }
    Relat : Integer;
  end;

var
  frmRelDocInterno: TfrmRelDocInterno;

implementation

uses u_dmEF, FuncoesCliente, FuncoesDSI;

{$R *.DFM}

function TfrmRelDocInterno.PesqEntidade( IdentID : String ) : OleVariant;
var cds : TClientDataSet;
    iSql : String;
begin
 Cds  := nil;
 try
  iSql := 'SELECT  ENTIDADEID,  CPFCNPJ,  INSCRESTADUAL ' +
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

procedure TfrmRelDocInterno.ImprDadosDestinatario;
var Cds : TClientDataSet;
begin
 cds := TClientDataSet.Create( Self );
 try
  if not dmEF.cdsNfsENTIDADEID.IsNull then
     Cds.Data := PesqEntidade( qrdbtxtCliente.DataSet.FieldByName('ENTIDADEID').AsString );

  if not Cds.IsEmpty then
     begin
      qrlblCPFCNPJ.Caption       := FormatCNPF_CNPJ_CCM( Cds.FieldByName('CPFCNPJ').AsString );
      if ( Cds.FieldByName('INSCRESTADUAL').IsNull ) then
         qrlblInscrEstadual.Caption := 'ISENTO'
      else
         qrlblInscrEstadual.Caption := Cds.FieldByName('INSCRESTADUAL').AsString;
     end
  else
     begin
      qrlblCPFCNPJ.Caption       := '';
      qrlblInscrEstadual.Caption := 'ISENTO';
     end;
  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TfrmRelDocInterno.QuickRep1GetPrinterSettings(Sender: TObject;
  var Cancel: Boolean; DevMode: Pointer);
var  i : Integer;
begin
 if Relat = 1 then
    begin
     ImprDadosDestinatario;
     exit;
    end;

 for i := 0 to ComponentCount - 1 do
 begin
  if ( Components[i] is TQRDBText ) then
     TQRDBText( Components[i] ).DataSet  := dmEF.cdsNfe;
 end;

 QuickRep1.DataSet               := dmEF.cdsNfe;
 QRSubDetail1.DataSet            := dmEF.cdsNfeItem;
 qrdbtxtCliente.DataSet          := dmEF.cdsNfe;
 qrdbtxtPD.DataField             := 'PDEID';
 qrdbtxtNF.DataField             := 'NFEID';
 qrdbtxtProd.DataSet             := dmEF.cdsNfeItem;
 qrdbtxtDescr.DataSet            := dmEF.cdsNfeItem;
 qrdbtxtQTD.DataSet              := dmEF.cdsNfeItem;
 qrdbtxtVLRPRECOUNITARIO.DataSet := dmEF.cdsNfeItem;
 qrdbtxtVLRPRECOTOTAL.DataSet    := dmEF.cdsNfeItem;

 ImprDadosDestinatario;
end;

end.
