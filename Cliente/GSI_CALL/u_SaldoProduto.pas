unit u_SaldoProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, DBClient, DB;

type
  TfrmSaldoProduto = class(TForm)
    GroupBox3: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label6: TLabel;
    Label39: TLabel;
    Label44: TLabel;
    Label23: TLabel;
    dbedtFisicoTotal: TDBEdit;
    dbedtPDE: TDBEdit;
    dbedtPDS: TDBEdit;
    dbedtEmTerc: TDBEdit;
    dbedtDeTerc: TDBEdit;
    dbedtTotal: TDBEdit;
    dbedtEmpenho: TDBEdit;
    dbedtVale: TDBEdit;
    dbedtFisicoNovo: TDBEdit;
    dbedtFisicoRev: TDBEdit;
    dbedtQuarentena: TDBEdit;
    DBEdit22: TDBEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label1: TLabel;
    dbedtReserva: TDBEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Panel6: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbedtPDEDblClick(Sender: TObject);
    procedure dbedtPDSDblClick(Sender: TObject);
    procedure dbedtEmTercDblClick(Sender: TObject);
    procedure dbedtEmpenhoDblClick(Sender: TObject);
    procedure dbedtValeDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbedtReservaDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSaldoProduto: TfrmSaldoProduto;

implementation

uses u_dmEF, u_VisualizadorPadrao, FuncoesCliente, u_dmGSI;

{$R *.dfm}

procedure PendenciaReserva;
var cds : TClientDataSet;
    iSQL : String;
begin
 cds  := nil;

 iSQL := 'SELECT PP_PEDVEND.PEDVENDID "Ped Vend Id",' +
         '       PP_PEDVEND.DATAPEDIDO "Data Pedido",' +
         '       PP_PEDVEND.ORIGEMVENDAID "Origem Venda Id",' +
         '       PP_ORIGEMVENDA.DESCRICAO "Descr.Origem Venda",' +
         '       PP_PEDVEND.CLIENTEID "Cliente ID",' +
         '       EF_ENTIDADE.NOME "Nome Cliente",' +
         '       EF_ENTIDADE.CPFCNPJ "CPF / CNPJ",' +
         '       EF_ENTIDADE.INSCRESTADUAL "Inscr. Estadual",' +
         '       PP_PEDVEND.CIDADEORIG "Cidade Origem",' +
         '       PP_PEDVEND.SIGLAUFORIGID "UF Origem",' +
         '       EF_NATUREZAOP.CFOP "CFOP",' +
         '       EF_NATUREZAOP.DESCRICAOOPERACAOUSUARIO "Descr. CFOP",' +
         '       PP_PEDVENDITEM.QUANTIDADE "Qtd",' +
         '       PP_PEDVENDITEM.EMPRESAID "Empresa ID",' +
         '       PP_PEDVENDITEM.PRODUTOID "Produto ID",' +
         '       EF_PRODUTO.DESCRICAOPORTUGUES "Descr. Produto"' +
         '  FROM PP_PEDVEND PP_PEDVEND,' +
         '       PP_ORIGEMVENDA PP_ORIGEMVENDA,' +
         '       PP_TIPOVENDA PP_TIPOVENDA,' +
         '       EF_ENTIDADE EF_ENTIDADE,' +
         '       EF_NATUREZAOP,' +
         '       PP_PEDVENDITEM PP_PEDVENDITEM,' +
         '       EF_PRODUTO EF_PRODUTO' +
         ' WHERE PP_ORIGEMVENDA.ORIGEMVENDAID(+) = PP_PEDVEND.ORIGEMVENDAID' +
         '       AND PP_TIPOVENDA.TIPOVENDAID(+) = PP_PEDVEND.TIPOVENDAID' +
         '       AND EF_ENTIDADE.ENTIDADEID(+) = PP_PEDVEND.CLIENTEID' +
         '       AND EF_NATUREZAOP.NATUREZAOPID(+) = PP_PEDVEND.NATUREZAOPID' +
         '       AND PP_PEDVEND.PEDVENDID = PP_PEDVENDITEM.PEDVENDID' +
         '       AND PP_PEDVEND.PDSID IS NULL' +         
         '       AND EF_PRODUTO.EMPRESAID(+) = PP_PEDVENDITEM.EMPRESAID' +
         '       AND EF_PRODUTO.PRODUTOID(+) = PP_PEDVENDITEM.PRODUTOID' +
         '       AND PP_PEDVENDITEM.EMPRESAID = ' + dmEF.cdsProdutoEMPRESAID.AsString +
         '       AND PP_PEDVENDITEM.PRODUTOID = ' + dmEF.cdsProdutoPRODUTOID.AsString;


 Screen.Cursor := crHourGlass;
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if ( not Cds.IsEmpty )  then
     begin
      frmVisualizadorPadrao := TfrmVisualizadorPadrao.Create( frmSaldoProduto );
      frmVisualizadorPadrao.TabSheet1.Caption     := 'Peças em Reserva';
      frmVisualizadorPadrao.dsVisualizar.DataSet  := Cds;
      frmVisualizadorPadrao.ShowModal;
     end
  else
     MessageDlg('Não há peças em vale', mtInformation, [mbOK], 0 );

  cds.Close;
 finally
  Screen.Cursor := crDefault;
  FreeAndNil( Cds );
 end;
end;


procedure PendenciaVale;
var cds : TClientDataSet;
    iSQL : String;
begin
 cds  := nil;
 iSQL := 'SELECT' +
         ' OS_OSPECA.OSID "O.S. ID",' +
         ' OS_OSPECA.PECAID "Peça ID",' +
         ' OS_OSPECA.EMPRESAID "Empresa ID",' +
         ' OS_OSPECA.PRODUTOID "Produto ID",' +
         ' EF_PRODUTO.DESCRICAOPORTUGUES "Descrição Português",' +
         ' EF_PRODUTO.PARTNUMBERID PartNumber,' +
         ' OS_OSPECA.NFSID "Nº Nota Fiscal Saída",' +
         ' OS_OSPECA.DATAEMISSAOID "Data Emissão",' +
         ' OS_OSPECA.DATAPECA "Data Util. Peça",' +
         ' OS_OSPECA.QUANTIDADE "Quantidade",' +
         ' OS_OSPECA.UTILIZADO "Utilizado",' +
         ' OS_OSPECA.IMPRESSO "Impresso",' +
         ' OS_OSPECA.ESTOQUEUTILIZADO "Estoque Utilizado",' +
         ' OS_OSPECA.USUARIO "Usuário"' +
         ' FROM' +
         ' OS_OSPECA OS_OSPECA,' +
         ' EF_PRODUTO EF_PRODUTO ' +
         'WHERE' +
         ' EF_PRODUTO.EMPRESAID(+) = OS_OSPECA.EMPRESAID' +
         ' AND EF_PRODUTO.PRODUTOID(+) = OS_OSPECA.PRODUTOID' +
         ' AND OS_OSPECA.ESTOQUEUTILIZADO = ' + QuotedStr( 'V') +
         ' AND OS_OSPECA.PRODUTOID = ' + dmEF.cdsProdutoPRODUTOID.AsString;

 Screen.Cursor := crHourGlass;
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if ( not Cds.IsEmpty )  then
     begin
      frmVisualizadorPadrao := TfrmVisualizadorPadrao.Create( frmSaldoProduto );
      frmVisualizadorPadrao.TabSheet1.Caption     := 'Peças em Vale';
      frmVisualizadorPadrao.dsVisualizar.DataSet  := Cds;
      frmVisualizadorPadrao.ShowModal;
     end
  else
     MessageDlg('Não há peças em vale', mtInformation, [mbOK], 0 );

  cds.Close;
 finally
  Screen.Cursor := crDefault;
  FreeAndNil( Cds );
 end;
end;


procedure PendenciaEmpenho;
var cds : TClientDataSet;
    iSQL : String;
begin
 cds  := nil;
 iSQL := 'SELECT' +
         ' OS_OSPECA.OSID "O.S. ID",' +
         ' OS_OSPECA.PECAID "Peça ID",' +
         ' OS_OSPECA.EMPRESAID "Empresa ID",' +
         ' OS_OSPECA.PRODUTOID "Produto ID",' +
         ' EF_PRODUTO.DESCRICAOPORTUGUES "Descrição Português",' +
         ' EF_PRODUTO.PARTNUMBERID PartNumber,' +
         ' OS_OSPECA.NFSID "Nº Nota Fiscal Saída",' +
         ' OS_OSPECA.DATAEMISSAOID "Data Emissão",' +
         ' OS_OSPECA.DATAPECA "Data Util. Peça",' +
         ' OS_OSPECA.QUANTIDADE "Quantidade",' +
         ' OS_OSPECA.UTILIZADO "Utilizado",' +
         ' OS_OSPECA.IMPRESSO "Impresso",' +
         ' OS_OSPECA.ESTOQUEUTILIZADO "Estoque Utilizado",' +
         ' OS_OSPECA.USUARIO "Usuário"' +
         ' FROM' +
         ' OS_OSPECA OS_OSPECA,' +
         ' EF_PRODUTO EF_PRODUTO ' +
         'WHERE' +
         ' EF_PRODUTO.EMPRESAID(+) = OS_OSPECA.EMPRESAID' +
         ' AND EF_PRODUTO.PRODUTOID(+) = OS_OSPECA.PRODUTOID' +
         ' AND OS_OSPECA.UTILIZADO <> 1 ' +
         ' AND (  OS_OSPECA.ESTOQUEUTILIZADO <> ' + QuotedStr('V') + ' OR OS_OSPECA.ESTOQUEUTILIZADO IS NULL ) ' +
         ' AND OS_OSPECA.PRODUTOID = ' + dmEF.cdsProdutoPRODUTOID.AsString;

 Screen.Cursor := crHourGlass;
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if ( not Cds.IsEmpty )  then
     begin
      frmVisualizadorPadrao := TfrmVisualizadorPadrao.Create( frmSaldoProduto );
      frmVisualizadorPadrao.TabSheet1.Caption     := 'Peças em Empenho';
      frmVisualizadorPadrao.dsVisualizar.DataSet  := Cds;
      frmVisualizadorPadrao.ShowModal;
     end
  else
     MessageDlg('Não há peças em empenho', mtInformation, [mbOK], 0 );

  cds.Close;
 finally
  Screen.Cursor := crDefault;
  FreeAndNil( Cds );
 end;
end;

procedure PendenciaTerceiro;
var cds : TClientDataSet;
    iSQL : String;
begin
 cds  := nil;
 iSQL := 'SELECT' +
         '  EF_NFS.EMPRESAID "Empresa ID",' +
         '  EF_NFS.NFSID "NFS ID",' +
         '  EF_NFS.DATAEMISSAOID "Dt.Emissao",' +
         '  EF_NFS.ENTIDADEID "Entidade ID",' +
         '  EF_NFS.NOME "Nome Nota",' +
         '  EF_NATUREZAOP.CFOP "CFOP",' +
         '  EF_NATUREZAOP.DESCRICAOOPERACAOUSUARIO "Descr. Nat.Op.",' +
         '  EF_NFSITEM.QUANTIDADE "Qtd Enviada",' +
         '  EF_NFSITEM.EMPENHO "Empenho",' +
         '  EF_NFSITEM.QUANTIDADEEMPENHO "Qtd.Empenhada",' +
         '  EF_NFSITEM.RETORNO "Retorno Empenho",' +
         '  EF_NFSITEM.QTDRETORNA "Qtd. Retorn. Empenho",' +
         '  EF_NFS.OSID "OSID",' +
         '  EF_NFS.CIDADE "Cidade",' +
         '  EF_NFS.SIGLAUFID "Sigla UF",' +
         '  EF_NFS.VLRTOTALNOTA "Vlr.Total Nota",' +
         '  EF_NFS.NATUREZAOPID "Nat.Op ID"' +
         '  FROM' +
         '  EF_NFS EF_NFS,' +
         '  EF_NFSITEM EF_NFSITEM,' +
         '  EF_NATUREZAOP EF_NATUREZAOP' +
         ' WHERE' +
         '  EF_NFS.EMPRESAID = EF_NFSITEM.EMPRESAID' +
         '  AND EF_NFS.NFSID = EF_NFSITEM.NFSID' +
         '  AND EF_NFS.DATAEMISSAOID = EF_NFSITEM.DATAEMISSAOID' +
         '  AND EF_NATUREZAOP.NATUREZAOPID(+) = EF_NFS.NATUREZAOPID' +
         '  AND EF_NFSITEM.EMPRESAID = ' + dmEF.cdsProdutoEMPRESAID.AsString  +
         '  AND EF_NFSITEM.PRODUTOID = ' + dmEF.cdsProdutoPRODUTOID.AsString  +
         ' AND ( EF_NFSITEM.RETORNO = ''CR'' OR EF_NFSITEM.RETORNO =  ''RP'')';

 Screen.Cursor := crHourGlass;
 try
  ExecDynamicProvider( -1, iSQL, Cds );
  TNumericField( Cds.FieldByName( 'Vlr.Total Nota' ) ).DisplayFormat := '###,###,###,##0.00';

  if ( not Cds.IsEmpty )  then
     begin
      frmVisualizadorPadrao := TfrmVisualizadorPadrao.Create( frmSaldoProduto );
      frmVisualizadorPadrao.TabSheet1.Caption     := 'Peças em poder de terceiros';
      frmVisualizadorPadrao.dsVisualizar.DataSet  := Cds;
      frmVisualizadorPadrao.ShowModal;
     end
  else
     MessageDlg('Não há peças em poder de terceiros', mtInformation, [mbOK], 0 );

  cds.Close;
 finally
  Screen.Cursor := crDefault;
  FreeAndNil( Cds );
 end;
end;

procedure PendenciaPDS;
var cds : TClientDataSet;
    iSQL : String;
begin
 cds  := nil;

 iSQL := 'SELECT' +
         '  EF_PDS.PDSID "PDS ID",' +
         '  EF_PDS.DATAPEDIDO "Data Pedido",' +
         '  EF_PDS.OSID "O.S. ID",' +
         '  EF_PDS.ENTIDADEID "Destinatário ID",' +
         '  EF_PDS.NOME "Nome Destinatário",' +
         '  EF_PDS.CIDADE "Cidade",' +
         '  EF_PDS.SIGLAUFID "UF",' +
         '  EF_NATUREZAOP.CFOP,' +
         '  EF_NATUREZAOP.DESCRICAOOPERACAOUSUARIO "Descr. Nat.Operação",' +
         '  EF_PDSITEM.PRODUTOID "Produto ID",' +
         '  EF_PDSITEM.DESCRICAOPRODUTO "Descrição Produto",' +
         '  EF_PDSITEM.QUANTIDADE "Quantidade",' +
         '  EF_PDSITEM.VLRPRECOUNITARIO "Vlr. Preço Unitário",' +
         '  EF_PDSITEM.VLRPRECOTOTAL "Vlr. Preço Total"' +
         '  FROM' +
         '  EF_PDS EF_PDS,' +
         '  EF_NATUREZAOP EF_NATUREZAOP,' +
         '  EF_PDSITEM EF_PDSITEM ' +
         ' WHERE' +
         '  EF_PDS.NATUREZAOPID = EF_NATUREZAOP.NATUREZAOPID' +
         '  AND EF_PDS.EMPRESAID = EF_PDSITEM.EMPRESAID' +
         '  AND EF_PDS.PDSID = EF_PDSITEM.PDSID ' +
         '  AND EF_PDSITEM.EMPRESAID = ' + dmEF.cdsProdutoEMPRESAID.AsString  +
         '  AND EF_PDSITEM.PRODUTOID = ' + dmEF.cdsProdutoPRODUTOID.AsString;

 Screen.Cursor := crHourGlass;
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if ( not Cds.IsEmpty )  then
     begin
      frmVisualizadorPadrao := TfrmVisualizadorPadrao.Create( frmSaldoProduto );
      frmVisualizadorPadrao.TabSheet1.Caption     := 'Peças em Pedido de Saída';
      frmVisualizadorPadrao.dsVisualizar.DataSet  := Cds;
      frmVisualizadorPadrao.ShowModal;
     end
  else
     MessageDlg('Não há peças em pedido de saída', mtInformation, [mbOK], 0 );

  cds.Close;
 finally
  Screen.Cursor := crDefault;
  FreeAndNil( Cds );
 end;
end;

procedure PendenciaPDE;
var cds : TClientDataSet;
    iSQL : String;
begin
 cds  := nil;

 iSQL := 'SELECT' +
         '  EF_PDE.PDEID "PDE ID",' +
         '  EF_PDE.DATAPEDIDO "Data Pedido",' +
         '  EF_PDE.DIID "Declaração ID",' +
         '  EF_PDE.OSID "O.S. ID",' +
         '  EF_PDE.ENTIDADEID "Destinatário ID",' +
         '  EF_PDE.NOME "Nome Destinatário",' +
         '  EF_PDE.CIDADE "Cidade",' +
         '  EF_PDE.SIGLAUFID "UF",' +
         '  EF_NATUREZAOP.CFOP,' +
         '  EF_NATUREZAOP.DESCRICAOOPERACAOUSUARIO "Descr. Nat.Operação",' +
         '  EF_PDEITEM.PRODUTOID "Produto ID",' +
         '  EF_PDEITEM.DESCRICAOPRODUTO "Descrição Produto",' +
         '  EF_PDEITEM.QUANTIDADE "Quantidade",' +
         '  EF_PDEITEM.VLRPRECOUNITARIO "Vlr. Preço Unitário",' +
         '  EF_PDEITEM.VLRPRECOTOTAL "Vlr. Preço Total"' +
         '  FROM' +
         '  EF_PDE EF_PDE,' +
         '  EF_NATUREZAOP EF_NATUREZAOP,' +
         '  EF_PDEITEM EF_PDEITEM ' +
         ' WHERE' +
         '  EF_PDE.NATUREZAOPID = EF_NATUREZAOP.NATUREZAOPID' +
         '  AND EF_PDE.EMPRESAID = EF_PDEITEM.EMPRESAID' +
         '  AND EF_PDE.PDEID = EF_PDEITEM.PDEID ' +
         '  AND EF_PDEITEM.EMPRESAID = ' + dmEF.cdsProdutoEMPRESAID.AsString  +
         '  AND EF_PDEITEM.PRODUTOID = ' + dmEF.cdsProdutoPRODUTOID.AsString;

 Screen.Cursor := crHourGlass;
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if ( not Cds.IsEmpty )  then
     begin
      frmVisualizadorPadrao := TfrmVisualizadorPadrao.Create( frmSaldoProduto );
      frmVisualizadorPadrao.TabSheet1.Caption     := 'Peças em Pedido de Saída';
      frmVisualizadorPadrao.dsVisualizar.DataSet  := Cds;
      frmVisualizadorPadrao.ShowModal;
     end
  else
     MessageDlg('Não há peças em pedido de entrada', mtInformation, [mbOK], 0 );

  cds.Close;
 finally
  Screen.Cursor := crDefault;
  FreeAndNil( Cds );
 end;
end;

procedure PendenciaCALL;
var cds : TClientDataSet;
    iSQL : String;
begin
 cds  := nil;

 iSQL := 'SELECT' +
         '  EF_CALL.CALLID "Pedido ID",' +
         '  EF_CALL.DATAPEDIDO "Data Pedido",' +
         '  EF_CALL.ENTIDADEID "Matricula ID",' +
         '  EF_CALLITEM.QUANTIDADE "Quantidade",' +
         '  EF_CALLITEM.VLRPRECOUNITARIO "Vlr. Preço Unitário",' +
         '  EF_CALLITEM.VLRPRECOTOTAL "Vlr. Preço Total",' +
         '  EF_ENTIDADE.NOME, ' +
         '  EF_CALL.VLRTOTALPRODUTO "VALOR TOTAL",' +
         '  EF_CALL.USUARIO "REQUISITANTE"' +
         '  FROM' +
         '  EF_CALL EF_CALL,' +
         '  EF_ENTIDADE, ' +
         '  EF_CALLITEM EF_CALLITEM ' +
         ' WHERE' +
         '  EF_CALL.EMPRESAID = EF_CALLITEM.EMPRESAID' +
         '  AND EF_CALL.CALLID = EF_CALLITEM.CALLID ' +
         '  AND EF_CALL.ENTIDADEID = EF_ENTIDADE.ENTIDADEID(+) ' +
         '  AND EF_CALLITEM.EMPRESAID = ' + dmEF.cdsProdutoEMPRESAID.AsString  +
         '  AND EF_CALLITEM.PRODUTOID = ' + dmEF.cdsProdutoPRODUTOID.AsString;

 Screen.Cursor := crHourGlass;
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if ( not Cds.IsEmpty )  then
     begin
      frmVisualizadorPadrao := TfrmVisualizadorPadrao.Create( frmSaldoProduto );
      frmVisualizadorPadrao.TabSheet1.Caption     := 'Peças em Pedido de Saída';
      frmVisualizadorPadrao.dsVisualizar.DataSet  := Cds;
      frmVisualizadorPadrao.ShowModal;
     end
  else
     MessageDlg('Não há peças em pedido de saída', mtInformation, [mbOK], 0 );

  cds.Close;
 finally
  Screen.Cursor := crDefault;
  FreeAndNil( Cds );
 end;
end;



procedure TfrmSaldoProduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 frmSaldoProduto := Nil;
end;

procedure TfrmSaldoProduto.dbedtPDEDblClick(Sender: TObject);
begin
 PendenciaPDE;
end;

procedure TfrmSaldoProduto.dbedtPDSDblClick(Sender: TObject);
begin
 PendenciaCALL;
// PendenciaPDS;
end;

procedure TfrmSaldoProduto.dbedtEmTercDblClick(Sender: TObject);
begin
 PendenciaTerceiro;
end;

procedure TfrmSaldoProduto.dbedtEmpenhoDblClick(Sender: TObject);
begin
 PendenciaEmpenho;
end;

procedure TfrmSaldoProduto.dbedtValeDblClick(Sender: TObject);
begin
 PendenciaVale;
end;

procedure TfrmSaldoProduto.FormCreate(Sender: TObject);
begin
 if CheckSenha(dmGsi.UsuarioAtivo,'Produto','Alterar Saldo do cadastro de Produtos',False) then
    begin
     dbedtFisicoTotal.ReadOnly := False;
     dbedtPDE.ReadOnly        := False;
     dbedtPDS.ReadOnly        := False;
     dbedtEmTerc.ReadOnly     := False;
     dbedtDeTerc.ReadOnly     := False;
     dbedtTotal.ReadOnly      := False;
     dbedtEmpenho.ReadOnly    := False;
     dbedtVale.ReadOnly       := False;
     dbedtQuarentena.ReadOnly := False;
     dbedtFisicoNovo.ReadOnly := False;
     dbedtFisicoRev.ReadOnly  := False;
     dbedtReserva.ReadOnly    := False;
    end
 else
    begin
     dbedtPDE.ReadOnly        := True;
     dbedtPDS.ReadOnly        := True;
     dbedtEmTerc.ReadOnly     := True;
     dbedtDeTerc.ReadOnly     := True;
     dbedtTotal.ReadOnly      := True;
     dbedtEmpenho.ReadOnly    := True;
     dbedtVale.ReadOnly       := True;
     dbedtQuarentena.ReadOnly := True;
     dbedtFisicoNovo.ReadOnly := True;
     dbedtFisicoRev.ReadOnly  := True;
     dbedtReserva.ReadOnly    := True;
    end;
end;

procedure TfrmSaldoProduto.dbedtReservaDblClick(Sender: TObject);
begin
 PendenciaReserva;
end;

end.
