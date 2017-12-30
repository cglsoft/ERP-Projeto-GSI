unit u_Inventario;

interface

uses
  Windows, Messages, Forms, SysUtils, Classes, ActnList, XPStyleActnCtrls, ActnMan,
  ImgList, Controls, ExtCtrls, PnAjustaGrid, ActnCtrls, ToolWin,
  ComCtrls, tmbToolManutencaoTop, fcStatusBar, Grids, DBGrids, Dialogs,
  wwDataInspector, tmbDataInspector, DB, DBClient, StdCtrls, Mask,
  wwdbedit, Wwdotdot, ActnMenus, Buttons, wwcheckbox, tmbToolEdicaoLista,
  DBCtrls;

type
  TfrmInventario = class(TForm)
    pgctrlInventario: TPageControl;
    TabSheet1: TTabSheet;
    fcstbarStatus: TfcStatusBar;
    imglstInventario: TImageList;
    actmngInventario: TActionManager;
    actGerarInventario: TAction;
    actDigitacao: TAction;
    actExportar: TAction;
    actFechar: TAction;
    actRelFichaInventario: TAction;
    tmbManutTop1: TtmbManutTop;
    ActionToolBar1: TActionToolBar;
    tmbajtgrdInventario: tPanel1;
    actHistInventario: TAction;
    actTipoContInventario: TAction;
    actConfiguracao: TAction;
    pgctrlConfiguracao: TPageControl;
    TabSheet2: TTabSheet;
    Splitter1: TSplitter;
    tmbdtinspCadastro: TtmbDataInspector;
    cdsCfgInvent: TClientDataSet;
    cdsCfgInventEMPRESAID: TBCDField;
    cdsCfgInventL_NOMEFANTASIA: TStringField;
    CfgInvent: TDataSource;
    cdsCfgInventHISTINVENTARIOID: TBCDField;
    cdsCfgInventL_DATAINVENTARIO: TSQLTimeStampField;
    cdsCfgInventL_DESCR_INVENTARIO: TStringField;
    cdsCfgInventTIPOCTGINVENTID: TBCDField;
    cdsCfgInventL_TIPOCTGINVENT: TStringField;
    wwDBComboDlg1: TwwDBComboDlg;
    wwDBComboDlg3: TwwDBComboDlg;
    TabSheet3: TTabSheet;
    actRelProdutoSaldos: TAction;
    ActionMainMenuBar1: TActionMainMenuBar;
    BitBtn1: TBitBtn;
    cdsCfgInventBLOQUEARDIGITACAO: TBooleanField;
    wwCheckBox1: TwwCheckBox;
    pgctrlItens: TPageControl;
    TabSheet4: TTabSheet;
    dbgrdInventarioItem: TDBGrid;
    Splitter2: TSplitter;
    tmbEdtListItensInvent: TtmbEdicaoLista;
    tPanel13: tPanel1;
    dbgrdInventarioDIG: TDBGrid;
    TabSheet5: TTabSheet;
    dbgrdProduto: TDBGrid;
    tmbEdtListDigitacao: TtmbEdicaoLista;
    actRelRegCtrInvent: TAction;
    actAuditSim: TAction;
    actAuditNao: TAction;
    actAuditDigitacao: TAction;
    actApuracao: TAction;
    PageControl1: TPageControl;
    TabSheet6: TTabSheet;
    dbgrdInventario: TDBGrid;
    tmbEdtLstInventario: TtmbEdicaoLista;
    tPanel11: tPanel1;
    actDifDigitacao: TAction;
    actAtualSaldos: TAction;
    actRelInventSaldoProd: TAction;
    actRelFichaInventarioII: TAction;
    actGerarInvent: TAction;
    actAtualInvent: TAction;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure actRelFichaInventarioExecute(Sender: TObject);
    procedure dbgrdInventarioItemTitleClick(Column: TColumn);
    procedure actFecharExecute(Sender: TObject);
    procedure actExportarExecute(Sender: TObject);
    procedure actDigitacaoExecute(Sender: TObject);
    procedure actHistInventarioExecute(Sender: TObject);
    procedure actTipoContInventarioExecute(Sender: TObject);
    procedure actConfiguracaoExecute(Sender: TObject);
    procedure cdsCfgInventHISTINVENTARIOIDValidate(Sender: TField);
    procedure cdsCfgInventTIPOCTGINVENTIDValidate(Sender: TField);
    procedure wwDBComboDlg3CustomDlg(Sender: TObject);
    procedure wwDBComboDlg1CustomDlg(Sender: TObject);
    procedure actRelProdutoSaldosExecute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgrdInventarioDblClick(Sender: TObject);
    procedure pgctrlInventarioChange(Sender: TObject);
    procedure dbgrdProdutoDblClick(Sender: TObject);
    procedure actRelRegCtrInventExecute(Sender: TObject);
    procedure dbgrdInventarioDIGDblClick(Sender: TObject);
    procedure actAuditSimExecute(Sender: TObject);
    procedure actAuditNaoExecute(Sender: TObject);
    procedure actAuditDigitacaoExecute(Sender: TObject);
    procedure actApuracaoExecute(Sender: TObject);
    procedure actDifDigitacaoExecute(Sender: TObject);
    procedure actAtualSaldosExecute(Sender: TObject);
    procedure actRelInventSaldoProdExecute(Sender: TObject);
    procedure actRelFichaInventarioIIExecute(Sender: TObject);
    procedure actGerarInventExecute(Sender: TObject);
    procedure actAtualInventExecute(Sender: TObject);
  private
    { Private declarations }
    procedure ChangePgctrInvent( Index : Integer );
    procedure VisualizarDetalhesProd;
    function AuditSQLParamAdd( Tipo : Integer ) : String;
  public
    { Public declarations }
    TipoRelat : Integer;
    procedure CriarCfgInventario;
  end;

var
  frmInventario: TfrmInventario;

implementation

uses u_dmEF, u_dmGSI, FuncoesCliente, FuncoesDSI,
  u_ParFichaInventario, u_PadraoEdicao, u_InventarioDigitacao,
  u_RelProdutoSaldos, u_Produto, u_RelFichaInventario, u_RelInventario,
  StrUtils, Math, u_RelInventarioSaldo, u_Exportar, u_RelFichaInventarioII;

{$R *.dfm}

procedure TfrmInventario.VisualizarDetalhesProd;
begin
 Application.CreateForm( TfrmProduto, frmProduto );
 frmProduto.ShowModal;
end;

procedure TfrmInventario.ChangePgctrInvent( Index : Integer );
begin
 case Index of
 0 : begin
      tmbajtgrdInventario.tmbDBGrid    := dbgrdInventario;
      tmbManutTop1.TtmbDataSource      := dmEF.dsInventario;
      tmbManutTop1.TtmbPreencheCombos  := True;
     end;
 1 : begin
      tmbajtgrdInventario.tmbDBGrid    := dbgrdInventarioDIG;
      tmbManutTop1.TtmbDataSource      := dmEF.dsInventarioDig;
      tmbManutTop1.TtmbPreencheCombos  := True;
     end;
 2 : begin
      tmbajtgrdInventario.tmbDBGrid    := dbgrdProduto;
      tmbManutTop1.TtmbDataSource      := dmEF.dsProduto;
      tmbManutTop1.TtmbPreencheCombos  := True;
     end;
 end;
end;



procedure TfrmInventario.CriarCfgInventario;
var Arq, iSql : String;
    Cds : TClientDataSet;
begin
 Arq := 'CONFIG\' +  StrZero( EmpresaAtualId,4, 0 ) + 'CFGINVENT.XML';

 Cds  := nil;
 iSql := 'SELECT EMPRESAID, NOMEFANTASIA FROM EF_EMPRESA WHERE EMPRESAID = ' + IntToStr( EmpresaAtualId );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if Cds.IsEmpty then
     Raise Exception.Create( 'O Campo EmpresaID  : ' + IntToStr( EmpresaAtualId ) + ', está inválido!' );

  if FileExists( Arq ) then
     cdsCfgInvent.LoadFromFile( Arq )
  else
     begin
      cdsCfgInvent.CreateDataSet;
      cdsCfgInvent.Insert;
      cdsCfgInventEMPRESAID.Value         := EmpresaAtualId;
      cdsCfgInventL_NOMEFANTASIA.Value    := cds.FieldByName('NOMEFANTASIA').Value;
      cdsCfgInventBLOQUEARDIGITACAO.Value := True;
      cdsCfgInvent.Post;
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TfrmInventario.FormClose(Sender: TObject;
  var Action: TCloseAction);
var Arq : String;
begin
 Arq := 'CONFIG\' +  StrZero( EmpresaAtualId,4, 0 ) + 'CFGINVENT.XML';

 cdsCfgInvent.SaveToFile( Arq );

 Action := caFree;
 frmInventario := Nil;
end;

procedure TfrmInventario.FormCreate(Sender: TObject);
begin
 dmEF.cdsInventario.Open;
 dmEF.cdsInventarioDig.Open;

 tmbManutTop1.TtmbPreencheCombos := True;
 tmbajtgrdInventario.tmbAjusta   := True;

 tmbEdtListItensInvent.TtmbClassOwnerEspec := TFrmPadraoEdicao;
 tmbEdtListItensInvent.TtmbFormOwnerEspec  := FrmPadraoEdicao;

 tmbEdtListDigitacao.TtmbClassOwnerEspec   := TFrmPadraoEdicao;
 tmbEdtListDigitacao.TtmbFormOwnerEspec    := FrmPadraoEdicao;

 tmbEdtLstInventario.TtmbClassOwnerEspec   := TFrmPadraoEdicao;
 tmbEdtLstInventario.TtmbFormOwnerEspec    := FrmPadraoEdicao;
end;

procedure TfrmInventario.actRelFichaInventarioExecute(Sender: TObject);
begin

 case pgctrlInventario.ActivePageIndex  of
 0 : begin
      dmEF.cdsInventario.Last;
      frmInventario.TipoRelat := 1;
      Application.CreateForm( TfrmParFichaInventario, frmParFichaInventario );
      frmParFichaInventario.TipoRelat := 1;
      frmParFichaInventario.ShowModal;
     end;
 1 : begin
      TipoRelat := 2;
      dmEF.cdsInventarioDig.Last;
      frmRelFichaInventario := TfrmRelFichaInventario.Create( nil );
      try
//       frmRelFichaInventario.qrlblTipoContagem.Caption := cdsCfgInventL_TIPOCTGINVENT.Value;
       frmRelFichaInventario.QuickRep1.PreviewModal;
      finally
       FreeAndNil( frmRelFichaInventario.QuickRep1 );
       FreeAndNil( frmRelFichaInventario );
      end;
     end;
 end;

end;

procedure TfrmInventario.actRelFichaInventarioIIExecute(Sender: TObject);
begin
 case pgctrlInventario.ActivePageIndex  of
 0 : begin
      dmEF.cdsInventario.Last;
      frmInventario.TipoRelat := 1;
      Application.CreateForm( TfrmParFichaInventario, frmParFichaInventario );
      frmParFichaInventario.TipoRelat := 2;
      frmParFichaInventario.ShowModal;
     end;
 1 : begin
      TipoRelat := 2;
      dmEF.cdsInventarioDig.Last;
      frmRelFichaInventarioII := TfrmRelFichaInventarioII.Create( nil );
      try
//       frmRelFichaInventario.qrlblTipoContagem.Caption := cdsCfgInventL_TIPOCTGINVENT.Value;
       frmRelFichaInventarioII.QuickRep1.PreviewModal;
      finally
       FreeAndNil( frmRelFichaInventarioII.QuickRep1 );
       FreeAndNil( frmRelFichaInventarioII );
      end;
 end;
 end;

end;

procedure TfrmInventario.dbgrdInventarioItemTitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column, Column.Grid.DataSource, TDBGrid( Column.Grid ) );
end;

procedure TfrmInventario.actFecharExecute(Sender: TObject);
begin
 Close;
end;

procedure TfrmInventario.actExportarExecute(Sender: TObject);

 procedure ExportarExcel( var ds : TDataSource );
 begin
  if not ds.DataSet.IsEmpty then
    begin
     frmExportar := TfrmExportar.Create(nil);
     frmExportar.DataSource := ds;
     frmExportar.Show;
    end
 else
    MessageDlg('Não há dados à serem Exportados!',mtWarning, [mbok],0 );
 end;
begin
 case pgctrlInventario.ActivePageIndex of
 0 : ExportarExcel( dmEF.dsInventario );
 1 : ExportarExcel( dmEF.dsInventarioDig );
 2 : ExportarExcel( dmEF.dsProduto );
 end;
end;

procedure TfrmInventario.actDigitacaoExecute(Sender: TObject);
begin
 try
  if cdsCfgInventBLOQUEARDIGITACAO.Value then
     raise Exception.Create('Digitação não está disponível, contacte o Coordenador do inventário para normalização!');

  if cdsCfgInventEMPRESAID.IsNull then
     raise Exception.Create('Arquivo de configuração de empresa para o inventário não preenchido');

  if cdsCfgInventHISTINVENTARIOID.IsNull then
     raise Exception.Create('Arquivo de configuração não selecionado o tipo de Histórico do inventário');

  if cdsCfgInventTIPOCTGINVENTID.IsNull then
     raise Exception.Create('Arquivo de configuração, (TIPO DE CONTAGEM) não definido para o inventariado');

  Application.CreateForm( TfrmInventarioDigitacao, frmInventarioDigitacao );

  frmInventarioDigitacao.FEmpresaID       := cdsCfgInventEMPRESAID.AsInteger;
  frmInventarioDigitacao.FHistInvetID     := cdsCfgInventHISTINVENTARIOID.AsInteger;
  frmInventarioDigitacao.FTipoCtgInventID := cdsCfgInventTIPOCTGINVENTID.AsInteger;
  frmInventarioDigitacao.InserirRegDigitacao;

  frmInventarioDigitacao.ShowModal;

 except
  on E: Exception do
  MessageDlg( E.Message, mtWarning, [mbOK], 0 );
 end;

end;

procedure TfrmInventario.actHistInventarioExecute(Sender: TObject);
begin
 CriaEspecifico( TFrmPadraoEdicao, frmPadraoEdicao, dmEF.cdsHistInventario,dmEF.dsHistInventario,'Histórico de Inventário');
end;

procedure TfrmInventario.actGerarInventExecute(Sender: TObject);
var cds       :  TClientDataSet;
    sqlUpdInv, sqlInvent: String;

begin
 if not CheckSenha( dmGsi.UsuarioAtivo,'Inventário','Gerar registro de inventário', True ) then
    exit;

 Cds     := Nil;
 sqlUpdInv := 'INSERT INTO EF_INVENTARIO ' +
              ' ( HISTINVENTARIOID, INVENTARIOID,  EMPRESAID, PRODUTOID, DATAINVENTARIO, ESTOQUEFISICO, ESTOQUEQUARENTENA, USUARIO) ' +
              ' (SELECT   ' + cdsCfgInventHISTINVENTARIOID.AsString + ', ROWNUM, EMPRESAID, PRODUTOID, ' + QuotedStr( cdsCfgInventL_DATAINVENTARIO.AsString ) +' , ESTOQUEFISICO, ESTOQUEQUARENTENA, ' +
              '        ' + QuotedStr( dmGsi.UsuarioAtivo ) +
              '   FROM EF_PRODUTO ' +
              '  WHERE EMPRESAID = ' + cdsCfgInventEMPRESAID.AsString + ')';

 sqlInvent := 'SELECT HISTINVENTARIOID, EMPRESAID, PRODUTOID, DATAINVENTARIO FROM EF_INVENTARIO' +
              ' WHERE HISTINVENTARIOID = ' + cdsCfgInventHISTINVENTARIOID.AsString +
              ' AND EMPRESAID = ' + cdsCfgInventEMPRESAID.AsString;

 try
  try
   ExecDynamicProvider( -1, sqlInvent, cds );

   if not cds.IsEmpty then
      raise Exception.Create('Este período já foi inventariado');

   ExecDML( sqlUpdInv );

   Cds.close;

   MessageDlg( 'Registro de produtos para inventário ocorrido com sucesso!',mtInformation, [mbOK], 0 );
  except
   on E: Exception do
      MessageDlg( E.Message, mtError, [mbOK], 0 );
  end;

 finally
  FreeAndNil(cds);
  Close;
 end;
end;

procedure TfrmInventario.actAtualInventExecute(Sender: TObject);
var cds, cdsProd, cdsInvent :  TClientDataSet;
    InventID, sSQL, sSqlUltProd, sSQLUltInvent, sqlProd : String;
    iUltInvent : Integer;

begin
 if not CheckSenha( dmGsi.UsuarioAtivo,'Inventário','Gerar registro de inventário', True ) then
    exit;

 InventID      := cdsCfgInventHISTINVENTARIOID.AsString;
 cds           := Nil;
 cdsProd       := Nil;
 cdsInvent     := Nil;
 sSqlUltProd   := ' SELECT HISTINVENTARIOID, EMPRESAID, MAX(PRODUTOID) AS ULT';
 sSQLUltInvent := ' SELECT HISTINVENTARIOID, EMPRESAID, MAX(INVENTARIOID) AS ULT';
 sSQL          := '  FROM EF_INVENTARIO' +
                  ' WHERE PRODUTOID <> 9000' +
                  '   AND PRODUTOID <> 9001' +
                  '   AND HISTINVENTARIOID = ' + cdsCfgInventHISTINVENTARIOID.AsString +
                  '   AND EMPRESAID = ' + cdsCfgInventEMPRESAID.AsString +
                  ' GROUP BY HISTINVENTARIOID, EMPRESAID';

 try
  try
   ExecDynamicProvider( -1, (sSqlUltProd + sSQL), cdsProd );

   if cdsProd.IsEmpty then
      raise Exception.Create('Não há registro para validar o último produto inventariado');

   ExecDynamicProvider( -1, (sSQLUltInvent + sSQL), cdsInvent );

   if cdsInvent.IsEmpty then
      raise Exception.Create('Não há registro para validar o último histório inventariado');

   sqlProd := ' SELECT   ' + InventID + ', EMPRESAID, PRODUTOID, ' + QuotedStr( cdsCfgInventL_DATAINVENTARIO.AsString ) +'AS DT, ESTOQUEFISICO ' +
              '  FROM EF_PRODUTO ' +
              ' WHERE EMPRESAID = ' + cdsCfgInventEMPRESAID.AsString +
              '   AND PRODUTOID <> 9000' +
              '   AND PRODUTOID <> 9001' +
              '   AND PRODUTOID > ' + cdsProd.FieldByName('ULT').AsString;

   ExecDynamicProvider( -1, sqlProd, cds );

   if cds.IsEmpty then
      raise Exception.Create('Não há registro para inserir no inventário');

   iUltInvent := cdsInvent.FieldByName('ULT').AsInteger + 1;

   cds.First;
   while not cds.Eof do
   begin
    dmEF.cdsInventario.Insert;
    dmEF.cdsInventarioHISTINVENTARIOID.Value    := StrToInt( InventID );
    dmEF.cdsInventarioINVENTARIOID.Value        := iUltInvent;
    dmEF.cdsInventarioEMPRESAID.Value           := cds.FieldByName('EMPRESAID').AsCurrency;
    dmEF.cdsInventarioPRODUTOID.Value           := cds.FieldByName('PRODUTOID').AsCurrency;
    dmEF.cdsInventarioDATAINVENTARIO.AsDateTime := cds.FieldByName('DT').AsDateTime;
    dmEF.cdsInventarioESTOQUEFISICO.Value       := cds.FieldByName('ESTOQUEFISICO').AsCurrency;
    dmEF.cdsInventario.Post;

    inc( iUltInvent );

    cds.Next;
   end;

  except
   on E: Exception do
      MessageDlg( E.Message, mtError, [mbOK], 0 );
  end;

  cds.Close;
  cdsProd.Close;
  cdsInvent.Close;

 finally
  FreeAndNil( cds );
  FreeAndNil( cdsProd );
  FreeAndNil( cdsInvent );
 end;

end;

procedure TfrmInventario.actTipoContInventarioExecute(Sender: TObject);
begin
 CriaEspecifico( TFrmPadraoEdicao, frmPadraoEdicao, dmEF.cdsTipoCtgInvent,dmEF.dsTipoCtgInvent,'Tipo Contagem de Inventário');
end;

procedure TfrmInventario.actConfiguracaoExecute(Sender: TObject);
begin
 if not CheckSenha( dmGsi.UsuarioAtivo,'Inventário','Inventário Configuração', True ) then
    exit;

 cdsCfgInvent.Edit;

end;

procedure TfrmInventario.cdsCfgInventHISTINVENTARIOIDValidate(
  Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( dmEF.cdsHistInventario.ProviderName ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cdsCfgInventL_DESCR_INVENTARIO.Value    := Cds.FieldByName('DESCRICAO').AsString;
      cdsCfgInventL_DATAINVENTARIO.AsDateTime := Cds.FieldByName('DATAINVENTARIO').Value;
     end
  else
     begin
      cdsCfgInventL_DESCR_INVENTARIO.Clear;
      cdsCfgInventL_DATAINVENTARIO.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TfrmInventario.cdsCfgInventTIPOCTGINVENTIDValidate(
  Sender: TField);
var InstSQL, iSql : String;
    Cds : TClientDataSet;
begin
 Cds     := nil;
 InstSQL := TField( Sender ).FieldName + '=' + TField( Sender ).AsString;
 iSQL    := AnalisarAddSQL( LocateSQL( dmEF.cdsTipoCtgInvent.ProviderName ),
                            InstSQL );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     cdsCfgInventL_TIPOCTGINVENT.Value    := Cds.FieldByName('DESCRICAO').AsString
  else
     begin
      cdsCfgInventL_TIPOCTGINVENT.Clear;
      raise Exception.Create( 'Valor do campo ' + Sender.DisplayName + ' é Inválido.' );
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TfrmInventario.wwDBComboDlg3CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa( dmEF.dsHistInventario ,'HISTINVENTARIOID', dmEF.cdsHistInventarioHISTINVENTARIOID.AsString );
 ExecLoockupRetorno( cdsCfgInvent ,'HISTINVENTARIOID','HISTINVENTARIOID' );
end;

procedure TfrmInventario.wwDBComboDlg1CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa( dmEF.dsTipoCtgInvent ,'TIPOCTGINVENTID', dmEF.cdsTipoCtgInventTIPOCTGINVENTID.AsString );
 ExecLoockupRetorno( cdsCfgInvent ,'TIPOCTGINVENTID','TIPOCTGINVENTID' );
end;

procedure TfrmInventario.actRelProdutoSaldosExecute(Sender: TObject);
begin
 if pgctrlInventario.ActivePageIndex <> 2 then
    begin
     MessageDlg( 'Ativar a pasta (PRODUTO) para tirar este relatório', mtWarning, [mbOK], 0 );
     exit;
    end;

 Screen.Cursor := crHourGlass;
 if not dmEF.cdsProduto.Active then
    dmEF.cdsProduto.Open;

 dmEF.cdsProduto.Last;
 Screen.Cursor := crDefault;
 Application.CreateForm( TfrmRelProdutoSaldo, frmRelProdutoSaldo );
 try
  frmRelProdutoSaldo.QuickRep1.PreviewModal;
 finally
  FreeAndNil( frmRelProdutoSaldo.QuickRep1 );
  FreeAndNil( frmRelProdutoSaldo );
  Screen.Cursor := crDefault;
 end;
end;

procedure TfrmInventario.BitBtn1Click(Sender: TObject);
begin
 if cdsCfgInvent.State in [dsEdit, dsInsert] then
    cdsCfgInvent.Post;
end;

procedure TfrmInventario.FormShow(Sender: TObject);
var ParamPesquisa, EmpresaID : String;

begin
 CriarCfgInventario;

 // ParamPesquisa := 'EF_INVENTARIO.HISTINVENTARIOID = ' + cdsCfgInventHISTINVENTARIOID.AsString;

 if cdsCfgInventHISTINVENTARIOID.AsInteger = 0 then
    EmpresaID := IntToStr( EmpresaAtualID )
 else
    EmpresaID := cdsCfgInventHISTINVENTARIOID.AsString;

 ParamPesquisa := 'EF_INVENTARIO.HISTINVENTARIOID = ' +  EmpresaID;
 GerarPesquisa( dmEF.cdsInventario, ParamPesquisa );
end;

procedure TfrmInventario.dbgrdInventarioDblClick(Sender: TObject);
begin
 GerarPesquisa( dmEF.cdsProduto, 'EF_PRODUTO.EMPRESAID     = ' + dmEF.cdsInventarioEMPRESAID.AsString +
                                 'AND EF_PRODUTO.PRODUTOID = ' + dmEF.cdsInventarioPRODUTOID.AsString  );
 VisualizarDetalhesProd;
end;

procedure TfrmInventario.pgctrlInventarioChange(Sender: TObject);
begin
 ChangePgctrInvent( pgctrlInventario.ActivePageIndex )
end;

procedure TfrmInventario.dbgrdProdutoDblClick(Sender: TObject);
begin
 VisualizarDetalhesProd
end;

procedure TfrmInventario.actRelRegCtrInventExecute(Sender: TObject);
begin
 dmEF.cdsInventario.AggregatesActive := True;
 frmRelInventario := TfrmRelInventario.Create( nil );
 try
  frmRelInventario.QuickRep1.Preview;
 finally
  dmEF.cdsInventario.AggregatesActive := False;
  FreeAndNil( frmRelInventario.QuickRep1 );
  FreeAndNil( frmRelInventario );
 end;
end;

procedure TfrmInventario.dbgrdInventarioDIGDblClick(Sender: TObject);
begin
 GerarPesquisa( dmEF.cdsProduto, 'EF_PRODUTO.EMPRESAID     = ' + dmEF.cdsInventarioDigEMPRESAID.AsString +
                                 'AND EF_PRODUTO.PRODUTOID = ' + dmEF.cdsInventarioDigPRODUTOID.AsString  );

 VisualizarDetalhesProd;
end;

function TfrmInventario.AuditSQLParamAdd( Tipo : Integer ) : String;
begin
 Result :=  'EF_INVENTARIO.HISTINVENTARIOID = ' + cdsCfgInventHISTINVENTARIOID.AsString +
            'AND NVL( EF_PRODUTO.ATIVO,0 )  = 1 ' +
            'AND EF_INVENTARIO.EMPRESAID = ' + cdsCfgInventEMPRESAID.AsString +
            IfThen( Tipo = 1, 'AND 0 <', 'AND 1 > ' ) +
            '(SELECT COUNT(*) ' +
            ' FROM EF_INVENTARIOITEM B' +
            ' WHERE B.HISTINVENTARIOID = EF_INVENTARIO.HISTINVENTARIOID ' +
            '   AND B.INVENTARIOID     = EF_INVENTARIO.INVENTARIOID ' +
            '   AND B.EMPRESAID        = EF_INVENTARIO.EMPRESAID ' +
            '   AND B.TIPOCTGINVENTID  = ' + cdsCfgInventTIPOCTGINVENTID.AsString + ')';            ;
end;


procedure TfrmInventario.actAuditSimExecute(Sender: TObject);
begin
 if pgctrlInventario.ActivePageIndex <> 0 then
    begin
     MessageDlg( 'Ativar a pasta (INVENTÁRIO) realizar está operação', mtWarning, [mbOK], 0 );
     exit;
    end;

 GerarPesquisa( dmEF.cdsInventario, AuditSQLParamAdd( 1 ) );
 dmEF.cdsInventario.Last;
 fcstbarStatus.Panels[0].Text := 'Total de Registro :' + IntToStr( dmEF.cdsInventario.Recno ) + '/' + IntToStr( dmEF.cdsInventario.RecordCount );
end;

procedure TfrmInventario.actAuditNaoExecute(Sender: TObject);
begin
 if pgctrlInventario.ActivePageIndex <> 0 then
    begin
     MessageDlg( 'Ativar a pasta (INVENTÁRIO) para tirar este relatório', mtWarning, [mbOK], 0 );
     exit;
    end;

 GerarPesquisa( dmEF.cdsInventario, AuditSQLParamAdd( 2 ) );
 dmEF.cdsInventario.Last;
 fcstbarStatus.Panels[0].Text := 'Total de Registro :' + IntToStr( dmEF.cdsInventario.Recno ) + '/' + IntToStr( dmEF.cdsInventario.RecordCount );

end;

procedure TfrmInventario.actAuditDigitacaoExecute(Sender: TObject);
begin
 if not CheckSenha( dmGsi.UsuarioAtivo,'Inventário','Auditoria da Digitação', True ) then
    exit;

 if pgctrlInventario.ActivePageIndex <> 1 then
    begin
     MessageDlg( 'Ativar a pasta (DIGITAÇÃO INVENTÁRIO)para realizar está operação', mtWarning, [mbOK], 0 );
     exit;
    end;

 with dmEF do
 begin
  cdsInventarioDig.First;
  while not cdsInventarioDig.Eof do
  begin
   if cdsInventarioDigL_ESTOQUEFISICO.Value <> cdsInventarioDigQUANTIDADE.Value then
      begin
       if cdsInventarioDigDIFERENCASALDO.Value <> 1 then
          begin
           cdsInventarioDig.Edit;
           cdsInventarioDigDIFERENCASALDO.Value := 1;
           cdsInventarioDig.Post;
          end;
      end
   else
      begin
       cdsInventarioDig.Edit;
       cdsInventarioDigDIFERENCASALDO.Value := 0;
       cdsInventarioDig.Post;
      end;

   cdsInventarioDig.Next;
  end;
 end;

end;

procedure TfrmInventario.actApuracaoExecute(Sender: TObject);

 function ApurarItem : Integer;
 begin
  Result := 0;
  dmEF.cdsInventarioItem.Last;
  if ( dmEF.cdsInventarioESTOQUEFISICO.AsCurrency +
       dmEF.cdsInventarioESTOQUEQUARENTENA.AsCurrency ) <> dmEF.cdsInventarioItemQUANTIDADE.AsCurrency then
     Result := 1;
 end;

begin
 if not CheckSenha( dmGsi.UsuarioAtivo,'Inventário','Auditoria da apuração do inventário', True ) then
    exit;

 if pgctrlInventario.ActivePageIndex <> 0 then
    begin
     MessageDlg( 'Ativar a pasta (INVENTÁRIO) realizar está operação', mtWarning, [mbOK], 0 );
     exit;
    end;

  Screen.Cursor := crHourGlass;
  dmEF.cdsInventario.DisableControls;
  dmEF.cdsInventarioItem.DisableControls;
  dmEF.cdsInventarioDig.DisableControls;
  try
   dmEF.cdsInventario.First;
   while not dmEF.cdsInventario.Eof do
   begin
    if ( dmEF.cdsInventarioHISTINVENTARIOID.Value <> cdsCfgInventHISTINVENTARIOID.Value ) and
       ( dmEF.cdsInventarioEMPRESAID.Value <> cdsCfgInventEMPRESAID.Value ) then
       begin
        MessageDlg('Auditoria de inventário cancelado, devido aos itens não se referirem ao inventário atual', mtInformation, [mbOK], 0 );
        exit;
       end;

    dmEF.cdsInventario.Edit;
    dmEF.cdsInventarioDIFERENCASALDO.Value   := ApurarItem;
    dmEF.cdsInventarioESTOQUEDIFERENCA.Value := dmEF.cdsInventarioItemQUANTIDADE.Value - ( dmEF.cdsInventarioESTOQUEFISICO.Value + dmEF.cdsInventarioESTOQUEQUARENTENA.Value );
    dmEF.cdsInventario.Post;
    dmEF.cdsInventario.Next;
   end;
  finally
   fcstbarStatus.Panels[0].Text := 'Total de Registro :' + IntToStr( dmEF.cdsInventario.Recno ) + '/' + IntToStr( dmEF.cdsInventario.RecordCount );
   Screen.Cursor := crDefault;
   dmEF.cdsInventario.EnableControls;
   dmEF.cdsInventarioItem.EnableControls;
   dmEF.cdsInventarioDig.EnableControls;
  end;

end;

procedure TfrmInventario.actDifDigitacaoExecute(Sender: TObject);

 function ApurarItem : Integer;
 var QtdItem : Currency;
 begin
  with dmEF do
  begin
   Result  := 0;
   QtdItem := cdsInventarioItemQUANTIDADE.Value;
   cdsInventarioItem.Next;
   while not cdsInventarioItem.Eof do
   begin
    if QtdItem <> cdsInventarioItemQUANTIDADE.Value then
       begin
        Result := 1;
        exit;
       end;
    cdsInventarioItem.Next;
   end;
  end;
 end;

begin
 if not CheckSenha( dmGsi.UsuarioAtivo,'Inventário','Auditoria da Diferença entre digitação', True ) then
    exit;

 if pgctrlInventario.ActivePageIndex <> 0 then
    begin
     MessageDlg( 'Ativar a pasta (INVENTÁRIO) realizar está operação', mtWarning, [mbOK], 0 );
     exit;
    end;

  Screen.Cursor := crHourGlass;
  try
   dmEF.cdsInventario.First;
   while not dmEF.cdsInventario.Eof do
   begin
    dmEF.cdsInventario.Edit;
    if dmEF.cdsInventarioItem.RecordCount > 0 then
       dmEF.cdsInventarioDIFERENCASALDO.Value := ApurarItem
    else
       dmEF.cdsInventarioDIFERENCASALDO.Value := 1;
    dmEF.cdsInventario.Next;
   end;

  finally
   fcstbarStatus.Panels[0].Text := 'Total de Registro :' + IntToStr( dmEF.cdsInventario.Recno ) + '/' + IntToStr( dmEF.cdsInventario.RecordCount );
   Screen.Cursor := crDefault;
  end;

end;

procedure TfrmInventario.actAtualSaldosExecute(Sender: TObject);
begin
 if not CheckSenha( dmGsi.UsuarioAtivo,'Inventário','Atualizar Saldos de Produtos', True ) then
    exit;

 Screen.Cursor := crHourGlass;

 dmEF.cdsInventario.DisableControls;
 dmEF.cdsInventarioItem.DisableControls;
 dmEF.cdsInventarioDig.DisableControls;
 try
  dmEF.cdsInventario.First;
  while not dmEF.cdsInventario.Eof do
  begin
   dmEF.cdsInventario.Edit;
   dmEF.cdsInventarioESTOQUEFISICO.Value := dmEF.cdsInventarioL_ESTOQUEFISICO.Value;
   dmEF.cdsInventarioESTOQUEQUARENTENA.Value := dmEF.cdsInventarioL_ESTOQUEQUARENTENA.Value;
   dmEF.cdsInventario.Post;

   dmEF.cdsInventario.Next;
  end;
 finally
  fcstbarStatus.Panels[0].Text := 'Total de Registro :' + IntToStr( dmEF.cdsInventario.Recno ) + '/' + IntToStr( dmEF.cdsInventario.RecordCount );
  Screen.Cursor := crDefault;
  dmEF.cdsInventario.EnableControls;
  dmEF.cdsInventarioItem.EnableControls;
  dmEF.cdsInventarioDig.EnableControls;
 end;
end;

procedure TfrmInventario.actRelInventSaldoProdExecute(Sender: TObject);
begin
 if pgctrlInventario.ActivePageIndex <> 0 then
    begin
     MessageDlg( 'Ativar a pasta (INVENTARIO) para tirar este relatório', mtWarning, [mbOK], 0 );
     exit;
    end;

 Screen.Cursor := crHourGlass;
 if not dmEF.cdsInventario.Active then
    dmEF.cdsInventario.Open;

 dmEF.cdsInventario.Last;
 Screen.Cursor := crDefault;
 Application.CreateForm( TfrmRelInventarioSaldo, frmRelInventarioSaldo );
 try
  frmRelInventarioSaldo.QuickRep1.PreviewModal;
 finally
  FreeAndNil( frmRelInventarioSaldo.QuickRep1 );
  FreeAndNil( frmRelInventarioSaldo );
  Screen.Cursor := crDefault;
 end;
end;

end.
