unit u_DevolucaoNFE;

interface

uses
  Windows, Forms, Messages, SysUtils, Variants, Classes, DB, DBClient, Grids,
  DBGrids, ComCtrls, StdCtrls, Buttons, Mask, Controls, ExtCtrls, wwdbedit,
  Wwdotdot, wwdbdatetimepicker, DBCtrls, Dialogs;

type
  TfrmDevolucaoNFE = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    mktNota: TMaskEdit;
    mktOS: TMaskEdit;
    Label12: TLabel;
    btnDevolucaoParcial: TBitBtn;
    btnPesquisa: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    dsDevolucaoNFE: TDataSource;
    cdsDevolucaoNFE: TClientDataSet;
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
    btnDevolucaoTotal: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPesquisaClick(Sender: TObject);
    procedure actRelatorioExecute(Sender: TObject);
    procedure btnDevolucaoParcialClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnDevolucaoTotalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function DevolucaoNFE : Boolean;
    procedure RetornoParcialNormal( QtdInformada : Real );
    procedure BaixaItemNFSRetornada( QtdInformada : Real; Sigla : String );
    function DevolucaoNFEItem( QtdInformada : Currency ) : Boolean;
  end;

var
  frmDevolucaoNFE: TfrmDevolucaoNFE;

implementation

uses u_dmEF, FuncoesCliente, FuncoesDSI, u_DevolucaoNFEParcial;

{$R *.dfm}

function TfrmDevolucaoNFE.DevolucaoNFE : Boolean;
begin
 if dmEF.cdsPds.UpdateStatus <> usInserted	 then
    begin
     Result := True;
     exit
    end;

 try
  // Criar Pedido
  dmEF.cdsPdsENTIDADEID.Value          := cdsDevolucaoNFE.FieldByName('ENTIDADEID').Value;
  dmEF.cdsPdsNOME.Value                := cdsDevolucaoNFE.FieldByName('NOME').Value;
  dmEF.cdsPdsENDERECO.Value            := cdsDevolucaoNFE.FieldByName('ENDERECO').Value;
  dmEF.cdsPdsBAIRRO.Value              := cdsDevolucaoNFE.FieldByName('BAIRRO').AsString;
  dmEF.cdsPdsCIDADE.Value              := cdsDevolucaoNFE.FieldByName('CIDADE').AsString;
  dmEF.cdsPdsSIGLAUFID.Value           := cdsDevolucaoNFE.FieldByName('SIGLAUFID').AsString;
  dmEF.cdsPdsCEPID.Value               := cdsDevolucaoNFE.FieldByName('CEPID').Value;
  dmEF.cdsPdsNUMERO.Value              := cdsDevolucaoNFE.FieldByName('NUMERO').AsString;
  dmEF.cdsPdsPAIS.Value                := cdsDevolucaoNFE.FieldByName('PAIS').AsString;
  dmEF.cdsPdsCOMPLEMENTO.Value         := cdsDevolucaoNFE.FieldByName('COMPLEMENTO').AsString;
  dmEF.cdsPdsCONTRIBUINTEICMS.Value    := cdsDevolucaoNFE.FieldByName('CONTRIBUINTEICMS').AsCurrency;
  dmEF.cdsPdsNFEID.Value               := cdsDevolucaoNFE.FieldByName('NFEID').Value;
  dmEF.cdsPdsDATAEMISSAONFEID.AsDateTime:= cdsDevolucaoNFE.FieldByName('DATAEMISSAOID').AsDateTime;
  dmEF.cdsPdsTIPONOTAENTRADA.Value     := 'D';
  dmEF.cdsPdsEMBQTDVOLUMES.Value       := cdsDevolucaoNFE.FieldByName('EMBQTDVOLUMES').AsInteger;
  dmEF.cdsPdsEMBESPECIE.Value          := cdsDevolucaoNFE.FieldByName('EMBESPECIE').AsString;
  dmEF.cdsPdsEMBMARCA.Value            := cdsDevolucaoNFE.FieldByName('EMBMARCA').AsString;
  dmEF.cdsPdsEMBNUMERO.Value           := cdsDevolucaoNFE.FieldByName('EMBNUMERO').AsInteger;
  dmEF.cdsPdsEMBPESOLIQUIDO.Value      := cdsDevolucaoNFE.FieldByName('EMBPESOLIQUIDO').AsCurrency;
  dmEF.cdsPdsEMBPESOBRUTO.Value        := cdsDevolucaoNFE.FieldByName('EMBPESOBRUTO').AsCurrency;  
  dmEF.cdsPdsOSID.Value                := cdsDevolucaoNFE.FieldByName('OSID').AsString;

  if cdsDevolucaoNFE.FieldByName('OBSERVACAOID').AsInteger > 0 then
     dmEF.cdsPdsOBSERVACAOID.Value        := cdsDevolucaoNFE.FieldByName('OBSERVACAOID').AsInteger;

  dmEF.cdsPdsNATUREZAOPID.Value        := cdsDevolucaoNFE.FieldByName('NATUREZAOPRETORNOID').AsInteger;

  if not dmEF.cdsPdsOBSERVACAOID.IsNull then
     dmEF.cdsPdsDESCRICAOOBSERVACAO.Value   := Trim( dmEF.cdsPdsDESCRICAOOBSERVACAO.Value ) + ' ' +
                                               cdsDevolucaoNFE.FieldByName('NFEID').AsString +
                                               ' De: ' + cdsDevolucaoNFE.FieldByName('DATAEMISSAOID').AsString;

  if not cdsDevolucaoNFE.FieldByName('TRANSPORTADORID').IsNull then
     dmEF.cdsPdsTRANSPORTADORID.Value     := cdsDevolucaoNFE.FieldByName('TRANSPORTADORID').Value
  else
     raise Exception.Create('Transportador não preenchido na Nota Fiscal '+ cdsDevolucaoNFE.FieldByName('NFEID').AsString );

  Result := True;
 except
  on E: Exception do
  begin
   ShowMessage( E.Message );
   Result := False;
  end;
 end;
end;

procedure TfrmDevolucaoNFE.RetornoParcialNormal( QtdInformada : Real );
begin
 with dmEF, frmDevolucaoNFE do
 begin
  cdsPdsItem.Insert;
  cdsPdsItemPRODUTOID.Value        := cdsDevolucaoNFE.FieldByName('PRODUTOID').Value;
  cdsPdsItemNFEID.Value            := cdsDevolucaoNFE.FieldByName('NFEID').Value;
  cdsPdsItemDATAEMISSAONFEID.Value := cdsDevolucaoNFE.FieldByName('DATAEMISSAOID').AsSQLTimeStamp;

  if cdsDevolucaoNFE.FieldByName('QUANTIDADE').Value = QtdInformada then
     cdsPdsItemQUANTIDADE.Value := cdsDevolucaoNFE.FieldByName('QUANTIDADE').Value
  else
     cdsPdsItemQUANTIDADE.Value := QtdInformada;

  cdsPdsItemVLRPRECOUNITARIO.Value := cdsDevolucaoNFE.FieldByName('VLRPRECOUNITARIO').AsFloat;

  cdsPdsItemQTDRETORNA.Value := QtdInformada;
  if cdsPdsItemQTDRETORNA.Value = cdsDevolucaoNFE.FieldByName('QUANTIDADE').Value then
     cdsPdsItemRETORNO.Value := 'JR'
  else
     cdsPdsItemRETORNO.Value := 'RP';

  // Baixar a Nota Fiscal de Saída que está sendo retornada
  BaixaItemNFSRetornada( QtdInformada, cdsPdsItemRETORNO.Value );

  cdsPdsItem.Post;
 end;

end;

procedure TfrmDevolucaoNFE.BaixaItemNFSRetornada( QtdInformada : Real; Sigla : String );
var isql : String;
begin
 isql := 'UPDATE EF_NFEITEM' +
         ' SET' +
         '  EF_NFEITEM.QTDRETORNA     = EF_NFEITEM.QTDRETORNA + ' + SubstituiString( FormatFloat( '#,##0.000000', QtdInformada) , ',', '.' )  + ',' +
         '  EF_NFEITEM.RETORNO        = ' +  QuotedStr( Sigla ) +
         ' WHERE' +
         '  EF_NFEITEM.EMPRESAID          = ' + dmEF.cdsPdsItemEMPRESAID.AsString +
         '  AND EF_NFEITEM.NFEID          = ' + dmEF.cdsPdsItemNFEID.AsString +
         '  AND EF_NFEITEM.DATAEMISSAOID  = ' + QuotedStr( dmEF.cdsPdsItemDATAEMISSAONFEID.AsString ) +
         '  AND EF_NFEITEM.PRODUTOID      = ' + dmEF.cdsPdsItemPRODUTOID.AsString;
  ExecDML(  isql );
end;

function TfrmDevolucaoNFE.DevolucaoNFEItem( QtdInformada : Currency ) : Boolean;
begin
 Result := True;
 try
  if QtdInformada < 1 then
     raise Exception.Create( 'Informar pelo menos um campo para dar seqüência no processo.');

  if ( QtdInformada > ( cdsDevolucaoNFE.FieldByName('QUANTIDADE').AsCurrency -
                        cdsDevolucaoNFE.FieldByName('QTDRETORNA').AsCurrency ) ) then
      raise Exception.Create( 'Quantidade total informada maior que a quantidade disponível para retorno.');

  if cdsDevolucaoNFE.FieldByName('NATUREZAOPRETORNOID').AsInteger < 1 then
     raise Exception.Create( 'Natureza de operação retorno não informada na natureza da venda do produto!');

  if ( cdsDevolucaoNFE.FieldByName('RETORNO').Value = 'JR' ) or
     ( cdsDevolucaoNFE.FieldByName('RETORNO').Value = 'DV' ) then
     raise Exception.Create( 'Item da NF já devolvida em outra nota fiscal');

  // Retorno parcial normal
  if QtdInformada > 0 then
     RetornoParcialNormal( QtdInformada );

 except
  on E: Exception do
  begin
   Result := False;
   MessageDlg( E.Message, mtError, [mbOk], 0);
  end;
 end;

end;

procedure TfrmDevolucaoNFE.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 if dmEF.cdsPds.State <> dsEdit then
    dmEF.cdsPds.Edit;

 Action := caFree;
 frmDevolucaoNFE := Nil;
end;

procedure TfrmDevolucaoNFE.btnPesquisaClick(Sender: TObject);
var iSQL, iParam : String;
begin
 iParam := ' AND EF_NFE.EMPRESAID = ' + dmEF.cdsPdsEMPRESAID.AsString;

 if mktNota.Text <> '' then
    iParam := iParam + ' AND EF_NFE.NFEID = ' + mktNota.Text;

 if wwdtpcktDtEmissao.Date > 0 then
    iParam := iParam + ' AND EF_NFE.DATAEMISSAOID = ' + QuotedStr( FormatDateTime( 'dd/mm/yyyy', wwdtpcktDtEmissao.Date ) );

 if mktOS.Text <> '' then
    iParam := iParam + ' AND EF_NFE.OSID LIKE ' + QuotedStr( mktOS.Text );

 if mktCodDestin.Text <> '' then
    iParam := iParam + ' AND EF_NFE.ENTIDADEID =  ' + mktCodDestin.Text;

 iSQL := 'SELECT' +
         '  EF_NFEITEM.EMPRESAID,' +
         '  EF_NFEITEM.NFEID,' +
         '  EF_NFEITEM.DATAEMISSAOID,' +
         '  EF_NFE.TIPONOTA,' +
         '  EF_NFE.CATEGORIAID,' +
         '  EF_NFE.ENTIDADEID,' +
         '  EF_NFE.NOME,' +
         '  EF_NFE.ENDERECO,' +
         '  EF_NFE.BAIRRO,' +
         '  EF_NFE.CIDADE,' +
         '  EF_NFE.SIGLAUFID,' +
         '  EF_NFE.CEPID,' +
         '  EF_NFE.NUMERO,' +
         '  EF_NFE.PAIS,' +
         '  EF_NFE.COMPLEMENTO,' +
         '  EF_NFE.NUMERO,' +
         '  EF_NFE.CONTRIBUINTEICMS,' +
         '  EF_NFE.EMBQTDVOLUMES,' +
         '  EF_NFE.EMBESPECIE,' +
         '  EF_NFE.EMBMARCA,' +
         '  EF_NFE.EMBNUMERO,' +
         '  EF_NFE.EMBPESOBRUTO,' +
         '  EF_NFE.EMBPESOLIQUIDO,' +
         '  EF_NFE.EMBMARCA,' +
         '  EF_NFE.EMBNUMERO,' +
         '  EF_NFE.OBSERVACAOID,' +
         '  EF_NFE.TRANSPORTADORID,' +
         '  EF_NFE.OSID,' +
         '  EF_NFE.PDEID,' +
         '  EF_NFE.DATAPEDIDO,' +
         '  EF_NFE.REQUISITANTE,' +
         '  EF_NFEITEM.PRODUTOID,' +
         '  EF_NFEITEM.DESCRICAOPRODUTO,' +
         '  EF_NFEITEM.QUANTIDADE,' +
         '  EF_NFEITEM.VLRPRECOUNITARIO,' +
         '  EF_NFEITEM.VLRPRECOTOTAL,' +
         '  EF_NFEITEM.RETORNO,' +
         '  EF_NFEITEM.QTDRETORNA,' +
         '  EF_NFE.NATUREZAOPID NaturezaOpID,' +
         '  EF_NATUREZAOP.CFOP ,' +
         '  EF_NATUREZAOP.DESCRICAOOPERACAOUSUARIO, ' +
         '  EF_NATUREZAOP.MOVIMENTOESTOQUE, ' +
         '  EF_NATUREZAOP.NATUREZAOPRETORNOID ' +
         '  FROM' +
         '  EF_NFEITEM EF_NFEITEM,' +
         '  EF_NFE EF_NFE,' +
         '  EF_NATUREZAOP EF_NATUREZAOP' +
         ' WHERE' +
         '  EF_NFE.EMPRESAID = EF_NFEITEM.EMPRESAID' +
         '  AND EF_NFE.NFEID = EF_NFEITEM.NFEID' +
         '  AND EF_NFE.DATAEMISSAOID = EF_NFEITEM.DATAEMISSAOID' +
         '  AND EF_NATUREZAOP.NATUREZAOPID(+) = EF_NFE.NATUREZAOPID' +
         ' ' + iParam;

 cdsDevolucaoNFE.Close;
 ExecDynamicProvider( -1, iSQL, cdsDevolucaoNFE );

 cdsDevolucaoNFE.FieldDefs.AddFieldDef;

 DBEdit1.DataSource := dsDevolucaoNFE;
end;

procedure TfrmDevolucaoNFE.actRelatorioExecute(Sender: TObject);
begin
 Close
end;

procedure TfrmDevolucaoNFE.btnDevolucaoParcialClick(Sender: TObject);
begin
 if not DevolucaoNFE then
    exit;
 frmDevolucaoNFEParcial := TfrmDevolucaoNFEParcial.Create( Application );
 frmDevolucaoNFEParcial.ShowModal;

 // Atualizar a pesquisa após o retorno
 btnPesquisaClick(Sender);
end;

procedure TfrmDevolucaoNFE.btnFecharClick(Sender: TObject);
begin
 Close
end;

procedure TfrmDevolucaoNFE.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;

procedure TfrmDevolucaoNFE.btnDevolucaoTotalClick(Sender: TObject);
begin
 if not DevolucaoNFE then
    exit;

 cdsDevolucaoNFE.First;
 while not cdsDevolucaoNFE.Eof do
 begin
  if not DevolucaoNFEItem(  cdsDevolucaoNFE.FieldByName('QUANTIDADE').AsCurrency ) then
     begin
      MessageDlg('Problemas na Devolução total de mercadorias.',mtInformation, [mbOK], 0 );
      exit;
     end;
  cdsDevolucaoNFE.Next;
 end;

 // Atualizar a pesquisa após o retorno
 btnPesquisaClick(Sender);

end;

end.
