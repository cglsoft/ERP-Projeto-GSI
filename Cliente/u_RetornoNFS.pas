unit u_RetornoNFS;

interface

uses
  Windows, Forms, Messages, SysUtils, Variants, Classes, DB, DBClient, Grids,
  DBGrids, ComCtrls, StdCtrls, Buttons, Mask, Controls, ExtCtrls, wwdbedit,
  Wwdotdot, wwdbdatetimepicker, DBCtrls, Dialogs;

type
  TfrmRetornoNFS = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    mktNota: TMaskEdit;
    mktOS: TMaskEdit;
    Label12: TLabel;
    btnRetornoParcial: TBitBtn;
    btnPesquisa: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    dsRetornoNFS: TDataSource;
    cdsRetornoNFS: TClientDataSet;
    DBGrid1: TDBGrid;
    PageControl2: TPageControl;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Label9: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    DBEdit1: TDBEdit;
    wwDBDateTimePicker4: TwwDBDateTimePicker;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    DBEdit5: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit53: TDBEdit;
    Label10: TLabel;
    wwDBComboDlg3: TwwDBComboDlg;
    DBEdit9: TDBEdit;
    DBEdit14: TDBEdit;
    Label49: TLabel;
    DBEdit13: TDBEdit;
    Label48: TLabel;
    Splitter1: TSplitter;
    mktCodDestin: TMaskEdit;
    Label6: TLabel;
    Label11: TLabel;
    Label24: TLabel;
    wwDBComboDlg2: TwwDBComboDlg;
    DBEdit12: TDBEdit;
    DBEdit30: TDBEdit;
    Label5: TLabel;
    btnFechar: TBitBtn;
    wwdtpcktDtEmissao: TwwDBDateTimePicker;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPesquisaClick(Sender: TObject);
    procedure actRelatorioExecute(Sender: TObject);
    procedure btnRetornoParcialClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    function RetornoTercNFS : Boolean;
  public
    { Public declarations }
  end;

var
  frmRetornoNFS: TfrmRetornoNFS;

implementation

uses u_dmEF, FuncoesCliente, u_RetornoNFSParcial;

{$R *.dfm}

function TfrmRetornoNFS.RetornoTercNFS : Boolean;
begin
 if dmEF.cdsPde.UpdateStatus <> usInserted	 then
    begin
     Result := True;
     exit
    end;

 try
  with dmEF do
  begin
   // Criar Pedido
   cdsPdeENTIDADEID.Value          := cdsRetornoNFS.FieldByName('ENTIDADEID').Value;
   cdsPdeNOME.Value                := cdsRetornoNFS.FieldByName('NOME').Value;
   cdsPdeENDERECO.Value            := cdsRetornoNFS.FieldByName('ENDERECO').Value;
   cdsPdeBAIRRO.Value              := cdsRetornoNFS.FieldByName('BAIRRO').AsString;
   cdsPdeCIDADE.Value              := cdsRetornoNFS.FieldByName('CIDADE').AsString;
   cdsPdeSIGLAUFID.Value           := cdsRetornoNFS.FieldByName('SIGLAUFID').AsString;
   cdsPdeCEPID.Value               := cdsRetornoNFS.FieldByName('CEPID').Value;
   cdsPdeNUMERO.Value              := cdsRetornoNFS.FieldByName('NUMERO').AsString;
   cdsPdePAIS.Value                := cdsRetornoNFS.FieldByName('PAIS').AsString;
   cdsPdeCOMPLEMENTO.Value         := cdsRetornoNFS.FieldByName('COMPLEMENTO').AsString;
   cdsPdeCONTRIBUINTEICMS.Value    := cdsRetornoNFS.FieldByName('CONTRIBUINTEICMS').AsCurrency;
   cdsPdeNFSID.Value               := cdsRetornoNFS.FieldByName('NFSID').Value;
   cdsPdeDATAEMISSAONFSID.AsDateTime:= cdsRetornoNFS.FieldByName('DATAEMISSAOID').AsDateTime;
   cdsPdeEMBQTDVOLUMES.Value       := cdsRetornoNFS.FieldByName('EMBQTDVOLUMES').AsInteger;
   cdsPdeEMBESPECIE.Value          := cdsRetornoNFS.FieldByName('EMBESPECIE').AsString;
   cdsPdeEMBMARCA.Value            := cdsRetornoNFS.FieldByName('EMBMARCA').AsString;
   cdsPdeEMBNUMERO.Value           := cdsRetornoNFS.FieldByName('EMBNUMERO').AsInteger;
   cdsPdeEMBPESOBRUTO.Value        := cdsRetornoNFS.FieldByName('EMBPESOBRUTO').AsCurrency;
   cdsPdeEMBPESOLIQUIDO.Value      := cdsRetornoNFS.FieldByName('EMBPESOLIQUIDO').AsCurrency;
   cdsPdeOSID.Value                := cdsRetornoNFS.FieldByName('OSID').AsString;

   if ( not cdsRetornoNFS.FieldByName('OBSERVACAOID').IsNull ) and
      ( cdsRetornoNFS.FieldByName('OBSERVACAOID').AsInteger <> 0 ) then
      cdsPdeOBSERVACAOID.Value        := cdsRetornoNFS.FieldByName('OBSERVACAOID').AsInteger;

   cdsPdeNATUREZAOPID.Value        := cdsRetornoNFS.FieldByName('NATUREZAOPRETORNOID').AsInteger;

   if ( not cdsPdeOBSERVACAOID.IsNull ) then
      cdsPdeDESCRICAOOBSERVACAO.Value   := Trim( cdsPdeDESCRICAOOBSERVACAO.Value ) + ' ' +
                                                 cdsRetornoNFS.FieldByName('NFSID').AsString +
                                                 ' De : ' + FormatDateTime( 'DD/MM/YYYY', cdsRetornoNFS.FieldByName('DATAEMISSAOID').AsDateTime ) + '.';

   if not cdsRetornoNFS.FieldByName('TRANSPORTADORID').IsNull then
      cdsPdeTRANSPORTADORID.Value     := cdsRetornoNFS.FieldByName('TRANSPORTADORID').AsInteger;

   Result := True;
  end;
 except
  on E: Exception do
  begin
   ShowMessage( E.Message );
   Result := False;
  end;
 end;
end;

procedure TfrmRetornoNFS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 if dmEF.cdsPde.State <> dsEdit then
    dmEF.cdsPde.Edit;
    
 Action := caFree;
 frmRetornoNFS := Nil;
end;

procedure TfrmRetornoNFS.btnPesquisaClick(Sender: TObject);
var iSQL, iParam : String;
begin
 iParam := ' AND EF_NFSITEM.EMPRESAID = ' + dmEF.cdsPdeEMPRESAID.AsString;

 if mktNota.Text <> '' then
    iParam := iParam + ' AND EF_NFSITEM.NFSID = ' + mktNota.Text;

 if wwdtpcktDtEmissao.Date > 0 then
    iParam := iParam + ' AND EF_NFSITEM.DATAEMISSAOID = ' + QuotedStr( FormatDateTime( 'dd/mm/yyyy', wwdtpcktDtEmissao.Date ) );

 if mktOS.Text <> '' then
    iParam := iParam + ' AND EF_NFS.OSID LIKE ' + QuotedStr( mktOS.Text );

 if mktCodDestin.Text <> '' then
    iParam := iParam + ' AND EF_NFS.ENTIDADEID =  ' + mktCodDestin.Text;

 iSQL := 'SELECT' +
         '  EF_NFSITEM.EMPRESAID,' +
         '  EF_NFSITEM.NFSID,' +
         '  EF_NFSITEM.DATAEMISSAOID,' +
         '  EF_NFSITEM.ITEMID,'+
         '  EF_NFS.TIPONOTAENTRADA,' +
         '  EF_NFS.CATEGORIAID,' +
         '  EF_NFS.ENTIDADEID,' +
         '  EF_NFS.NOME,' +
         '  EF_NFS.ENDERECO,' +
         '  EF_NFS.BAIRRO,' +
         '  EF_NFS.CIDADE,' +
         '  EF_NFS.SIGLAUFID,' +
         '  EF_NFS.CEPID,' +
         '  EF_NFS.NUMERO,' +
         '  EF_NFS.PAIS,' +
         '  EF_NFS.COMPLEMENTO,' +
         '  EF_NFS.NUMERO,' +
         '  EF_NFS.CONTRIBUINTEICMS,' +
         '  EF_NFS.EMBQTDVOLUMES,' +
         '  EF_NFS.EMBESPECIE,' +
         '  EF_NFS.EMBMARCA,' +
         '  EF_NFS.EMBNUMERO,' +
         '  EF_NFS.EMBPESOBRUTO,' +
         '  EF_NFS.EMBPESOLIQUIDO,' +
         '  EF_NFS.EMBMARCA,' +
         '  EF_NFS.EMBNUMERO,' +
         '  EF_NFS.OBSERVACAOID,' +
         '  EF_NFS.TRANSPORTADORID,' +
         '  EF_NFS.OSID,' +
         '  EF_NFS.PDSID,' +
         '  EF_NFS.DATAPEDIDO,' +
         '  EF_NFS.REQUISITANTE,' +
         '  EF_NFSITEM.PRODUTOID,' +
         '  EF_NFSITEM.DESCRICAOPRODUTO,' +
         '  EF_NFSITEM.QUANTIDADE,' +
         '  EF_NFSITEM.VLRPRECOUNITARIO,' +
         '  EF_NFSITEM.ALIQUOTAICMS,' +
         '  EF_NFSITEM.VLRPRECOTOTAL,' +
         '  EF_NFSITEM.RETORNO,' +
         '  EF_NFSITEM.QTDRETORNA,' +
         '  EF_NFS.NATUREZAOPID NaturezaOpID,' +
         '  EF_NATUREZAOP.CFOP ,' +
         '  EF_NATUREZAOP.DESCRICAOOPERACAOUSUARIO, ' +
         '  EF_NATUREZAOP.MOVIMENTOESTOQUE, ' +
         '  EF_NATUREZAOP.NATUREZAOPRETORNOID ' +
         '  FROM' +
         '  EF_NFSITEM EF_NFSITEM,' +
         '  EF_NFS EF_NFS,' +
         '  EF_NATUREZAOP EF_NATUREZAOP' +
         ' WHERE' +
         '  EF_NFS.EMPRESAID = EF_NFSITEM.EMPRESAID' +
         '  AND EF_NFS.NFSID = EF_NFSITEM.NFSID' +
         '  AND EF_NFS.DATAEMISSAOID = EF_NFSITEM.DATAEMISSAOID' +
         '  AND EF_NATUREZAOP.NATUREZAOPID(+) = EF_NFS.NATUREZAOPID' +
         ' ' + iParam;

 if cdsRetornoNFS <> nil then
    if cdsRetornoNFS.IndexName <> '' then
       cdsRetornoNFS.DeleteIndex('idx1');

 cdsRetornoNFS.Close;
 ExecDynamicProvider( -1, iSQL, cdsRetornoNFS );

 cdsRetornoNFS.AddIndex('idx1','EMPRESAID;NFSID;DATAEMISSAOID;ITEMID',[ixPrimary] );
 cdsRetornoNFS.IndexName := 'idx1';

 cdsRetornoNFS.FieldDefs.AddFieldDef;

 DBEdit1.DataSource := dsRetornoNFS
end;

procedure TfrmRetornoNFS.actRelatorioExecute(Sender: TObject);
begin
 Close
end;

procedure TfrmRetornoNFS.btnRetornoParcialClick(Sender: TObject);
begin
 if not RetornoTercNFS then
    exit;
 frmRetornoNFSParcial := TfrmRetornoNFSParcial.Create( Application );
 frmRetornoNFSParcial.ShowModal;

 // Atualizar a pesquisa após o retorno
 btnPesquisaClick(Sender);
end;

procedure TfrmRetornoNFS.btnFecharClick(Sender: TObject);
begin
 Close
end;

procedure TfrmRetornoNFS.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;

end.
