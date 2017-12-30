unit u_ParRelVendedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, Mask, DBCtrls,
  wwdbdatetimepicker, DB, DBClient, Grids, DBGrids;

type
  TfrmParRelVendedor = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cmbFuncaoVenda: TComboBox;
    lblFuncaoVenda: TLabel;
    chkTodoVendedor: TCheckBox;
    DateTimePicker1: TwwDBDateTimePicker;
    DateTimePicker2: TwwDBDateTimePicker;
    cdsRelVendedor: TClientDataSet;
    dsRelVendedor: TDataSource;
    Edit1: TEdit;
    Label3: TLabel;
    CheckBox1: TCheckBox;
    StatusBar1: TStatusBar;
    Label4: TLabel;
    edtCliente: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure cmbFuncaoVendaEnter(Sender: TObject);
    procedure cmbFuncaoVendaExit(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure chkTodoVendedorClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
    CdFuncao : Integer;
    procedure FormataCampos;
  public
    { Public declarations }
    Relatorio : Integer;
    Tipo : String;
  end;

  const Select_RelVendedor = 'SELECT PP_BASEPAGTO.VENDEDORID,' +
                             '       EF_ENT_VEND.NOME L_NOMEVENDEDOR,' +
                             '       PP_BASEPAGTO.PEDVENDID,' +
                             '       PP_BASEPAGTO.ITEMID,' +
                             '       PP_BASEPAGTO.CLASSEVENDEDORID,' +
                             '       PP_CLASSEVENDEDOR.DESCRICAO L_CLASSEVENDEDOR,' +
                             '       PP_BASEPAGTO.DATALIBPAGTOFIN, ' +
                             '       PP_BASEPAGTO.NIVELVENDA,' +
                             '       PP_BASEPAGTO.VLRCOMISSAO,' +
                             '       PP_BASEPAGTO.PORCVENDA,' +
                             '       PP_BASEPAGTO.VLRBASECOMISSAO,' +
                             '       PP_BASEPAGTO.VLRBASECOMISSAOUS,' +
                             '       PP_BASEPAGTO.VLRDSR,' +
                             '       PP_BASEPAGTO.VLRLIQUIDO,' +
                             '       PP_ANALISEVENDA.EMPRESAID,' +
                             '       PP_ANALISEVENDA.NFSID,' +
                             '       PP_ANALISEVENDA.DATAEMISSAOID,' +
                             '       PP_ANALISEVENDA.DATAFECHAMENTO,' +
                             '       PP_BASEPAGTO.VLRFOB,' +
                             '       PP_ANALISEVENDA.VLRVENDA,' +
                             '       PP_ANALISEVENDA.VLRINTERVENIENCIA,' +
                             '       PP_ANALISEVENDA.VLRIPI,' +
                             '       PP_ANALISEVENDA.VLRCOMISSAO,' +
                             '       PP_ANALISEVENDA.VLRCOMISSAOUS,' +
                             '       PP_PEDVEND.ORIGEMVENDAID,' +
                             '       PP_ORIGEMVENDA.DESCRICAO L_ORIGEMVENDA,' +
                             '       PP_PEDVEND.TIPOVENDAID,' +
                             '       PP_TIPOVENDA.DESCRICAO L_TIPOVENDA,' +
                             '       PP_PEDVEND.CLIENTEID,' +
                             '       EF_ENT_PED.NOME L_NOMECLIENTE,' +
                             '       PP_PEDVEND.DATAPEDIDO, '+
                             '       PP_PEDVEND.NUMPEDVENDEDORID, ' +
                             '       PP_PEDVEND.CIDADEORIG,' +
                             '       PP_PEDVEND.SIGLAUFORIGID' +
                             '  FROM PP_BASEPAGTO PP_BASEPAGTO,' +
                             '       EF_ENTIDADE EF_ENT_VEND,' +
                             '       PP_CLASSEVENDEDOR PP_CLASSEVENDEDOR,' +
                             '       PP_ANALISEVENDA PP_ANALISEVENDA,' +
                             '       PP_PEDVEND PP_PEDVEND,' +
                             '       PP_ORIGEMVENDA PP_ORIGEMVENDA,' +
                             '       PP_TIPOVENDA PP_TIPOVENDA,' +
                             '       EF_ENTIDADE EF_ENT_PED' +
                             ' WHERE EF_ENT_VEND.ENTIDADEID(+) = PP_BASEPAGTO.VENDEDORID' +
                             '       AND PP_CLASSEVENDEDOR.CLASSEVENDEDORID(+) = PP_BASEPAGTO.CLASSEVENDEDORID' +
                             '       AND PP_BASEPAGTO.PEDVENDID = PP_ANALISEVENDA.PEDVENDID(+)' +
                             '       AND PP_PEDVEND.PEDVENDID = PP_BASEPAGTO.PEDVENDID' +
                             '       AND PP_ORIGEMVENDA.ORIGEMVENDAID(+) = PP_PEDVEND.ORIGEMVENDAID' +
                             '       AND PP_TIPOVENDA.TIPOVENDAID(+) = PP_PEDVEND.TIPOVENDAID' +
                             '       AND PP_PEDVEND.CLIENTEID = EF_ENT_PED.ENTIDADEID';

  const Select_PedMercadoria='SELECT PP_PEDVENDITEM.PEDVENDID,' +
                             '       PP_PEDVENDITEM.ITEMID,' +
                             '       EF_PRODUTO.PARTNUMBERID,' +
                             '       EF_GRUPO.SIGLAGRUPO,' +
                             '       EF_SUBGRUPO.TIPO,' +
                             '       PP_PEDVENDITEM.MODELOID'+
                             '  FROM PP_PEDVENDITEM PP_PEDVENDITEM,' +
                             '       EF_PRODUTO EF_PRODUTO,' +
                             '       EF_GRUPO EF_GRUPO,'+
                             '       EF_SUBGRUPO EF_SUBGRUPO' +
                             ' WHERE EF_PRODUTO.EMPRESAID(+) = PP_PEDVENDITEM.EMPRESAID' +
                             '       AND EF_PRODUTO.PRODUTOID(+) = PP_PEDVENDITEM.PRODUTOID' +
                             '       AND EF_PRODUTO.GRUPOID = EF_GRUPO.GRUPOID(+)'+
                             '       AND EF_SUBGRUPO.SUBGRUPOID(+) = EF_PRODUTO.SUBGRUPOID';

var
  frmParRelVendedor: TfrmParRelVendedor;

implementation

uses u_RelVendaVendedor, u_RelComissaoVendedor, u_AnaliseVenda, FuncoesCliente,
  u_dmGSI, u_dmPP;

{$R *.dfm}

procedure TfrmParRelVendedor.BitBtn1Click(Sender: TObject);
var iSQL : String;
begin
 if not chkTodoVendedor.Checked  then
    if dmPP.cdsBasePagtoVENDEDORID.IsNull then
       begin
        MessageDlg('Não há registro para impressão do relatório', mtError, [mbOK], 0 );
        exit;
       end; 

 iSQL := Select_RelVendedor;

 // Excluir esta linha quando todas as parcelas forem pagas
  
 iSQL := iSQL + ' AND PP_BASEPAGTO.PEDVENDID <> ''05/0210''';
 iSQL := iSQL + ' AND PP_BASEPAGTO.PEDVENDID <> ''05/0154''';
 iSQL := iSQL + ' AND PP_BASEPAGTO.DATALIBPAGTOFIN BETWEEN '  + QuotedStr( DateToStr( DateTimePicker1.Date ) ) +
                ' AND ' + QuotedStr( DateToStr( DateTimePicker2.Date ) );

 if not chkTodoVendedor.Checked  then
    begin
     iSQL := iSQL + ' AND PP_BASEPAGTO.VENDEDORID = ' + dmPP.cdsBasePagtoVENDEDORID.AsString;

     if CheckBox1.Checked then
        iSQL := iSQL + ' AND PP_BASEPAGTO.PEDVENDID = ' + QuotedStr( Edit1.Text  );

     if edtCliente.Text <> '' then
        iSQL := iSQL + ' AND PP_PEDVEND.CLIENTEID = ' +  edtCliente.Text;
    end;

 ExecDynamicProvider( -1, iSQL, cdsRelVendedor );

 cdsRelVendedor.AddIndex('idx1','VENDEDORID;PEDVENDID;DATALIBPAGTOFIN;ITEMID',[ixCaseInsensitive],'','',0 );
 cdsRelVendedor.IndexName := 'idx1';

 iSQL := Select_PedMercadoria;

 ExecDynamicProvider( -1, iSQL, dmPP.cdsAnaliseItem );

 dmPP.cdsAnaliseItem.AddIndex('idx1','PEDVENDID;ITEMID',[ixCaseInsensitive],'','',0 );
 dmPP.cdsAnaliseItem.IndexName := 'idx1';
 dmPP.cdsAnaliseItem.MasterSource    := dsRelVendedor;
 dmPP.cdsAnaliseItem.MasterFields    := 'PEDVENDID';
 dmPP.cdsAnaliseItem.IndexFieldNames := 'PEDVENDID;ITEMID';//'PEDVENDID';

 // Formata os campos do RelVendedores
 FormataCampos;

 case Relatorio of
 1 : begin
       // DuplicatasProdutos da Analise de venda
      iSQL := Select_HistDupl;

      ExecDynamicProvider( -1, iSQL, dmPP.cdsAnaliseParc );

      dmPP.cdsAnaliseParc.AddIndex('idx1','EMPRESAID;NFSID;DATAEMISSAOID',[ixCaseInsensitive],'','',0 );
      dmPP.cdsAnaliseParc.IndexName       := 'idx1';
      dmPP.cdsAnaliseParc.MasterSource    := dsRelVendedor;
      dmPP.cdsAnaliseParc.MasterFields    := 'EMPRESAID;NFSID;DATAEMISSAOID';
      dmPP.cdsAnaliseParc.IndexFieldNames := 'EMPRESAID;NFSID;DATAEMISSAOID;PARCELAID';

      Application.CreateForm( TfrmRelComissaoVendedor, frmRelComissaoVendedor );
      try
       frmRelComissaoVendedor.qrlblPeriodo.Caption := DateToStr( DateTimePicker1.Date ) + ' a ' +
                                                      DateToStr( DateTimePicker2.Date );
       frmRelComissaoVendedor.qrlblPeriodo2.Caption :=DateToStr( DateTimePicker1.Date ) + ' a ' +
                                                      DateToStr( DateTimePicker2.Date );

       frmRelComissaoVendedor.QuickRep1.Preview;
      finally
       FreeAndNil( frmRelComissaoVendedor.QuickRep1);
       FreeAndNil( frmRelComissaoVendedor);
      end;
     end;

 2 : begin
      Application.CreateForm( TfrmRelVendaVendedor, frmRelVendaVendedor );
      try
       if not CheckSenha( dmGsi.UsuarioAtivo, 'Análise de Venda','Relatório Vendedor', False ) then
          begin
           frmRelVendaVendedor.qrexLiquido.Visible := False;
           frmRelVendaVendedor.qrexLiquidoSum.Visible := False;
          end;
       frmRelVendaVendedor.QRLabel20.Caption := DateToStr( DateTimePicker1.Date ) + ' a ' + DateToStr( DateTimePicker2.Date );
       frmRelVendaVendedor.QuickRep1.Preview;
      finally
       FreeAndNil( frmRelVendaVendedor.QuickRep1);
       FreeAndNil( frmRelVendaVendedor);
      end;
     end;
  end;
end;

procedure TfrmParRelVendedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 frmParRelVendedor := Nil;
end;

procedure TfrmParRelVendedor.FormCreate(Sender: TObject);
begin
 DateTimePicker1.Date := Date;
 DateTimePicker2.Date := Date;
 CdFuncao := -1;
end;

procedure TfrmParRelVendedor.BitBtn2Click(Sender: TObject);
begin
 Close;
end;

procedure TfrmParRelVendedor.cmbFuncaoVendaEnter(Sender: TObject);
begin
// AdicCombo( dm_IMP, dm_IMP.tbFuncao, dm_IMP.tbFuncaoDESCRICAO, Sender );
end;

procedure TfrmParRelVendedor.cmbFuncaoVendaExit(Sender: TObject);
begin
{ if dm_IMP.tbFuncao.Locate( 'DESCRICAO', TComboBox( Sender ).Text, [] ) then
    CdFuncao := dm_IMP.tbFuncaoCD_FUNCAO.Value
 else
    CdFuncao := -1;}
end;

procedure TfrmParRelVendedor.FormataCampos;
begin
 cdsRelVendedor.FieldByName('VLRCOMISSAO').EditMask       := '###,###,###,##0.00';
 cdsRelVendedor.FieldByName('VLRFOB').EditMask            := '###,###,###,##0.00';
 cdsRelVendedor.FieldByName('VLRVENDA').EditMask          := '###,###,###,##0.00';
 cdsRelVendedor.FieldByName('VLRINTERVENIENCIA').EditMask := '###,###,###,##0.00';
 cdsRelVendedor.FieldByName('VLRIPI').EditMask            := '###,###,###,##0.00';
 cdsRelVendedor.FieldByName('VLRBASECOMISSAO').EditMask   := '###,###,###,##0.00';
 cdsRelVendedor.FieldByName('VLRLIQUIDO').EditMask        := '###,###,###,##0.00';
end;

procedure TfrmParRelVendedor.Edit1Change(Sender: TObject);
begin
 if ( Edit1.Text <> ' ' ) and  ( chkTodoVendedor.Checked ) then
    chkTodoVendedor.Checked := False;
end;

procedure TfrmParRelVendedor.chkTodoVendedorClick(Sender: TObject);
begin
 if chkTodoVendedor.Checked then
    Edit1.Clear;
end;

procedure TfrmParRelVendedor.CheckBox1Click(Sender: TObject);
begin
 if CheckBox1.Checked then
    Edit1.Enabled := True
 else
    Edit1.Enabled := False;
end;

end.
