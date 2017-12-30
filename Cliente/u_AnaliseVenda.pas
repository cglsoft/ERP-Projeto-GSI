unit u_AnaliseVenda;

interface

uses
  Windows, Messages, Forms, Classes, ActnList, XPStyleActnCtrls, ActnMan,
  ImgList, Controls, Grids, DBGrids, ExtCtrls, ComCtrls, ActnMenus, SysUtils,
  ActnCtrls, ToolWin, tmbToolManutencaoTop, fcStatusBar, Dialogs, Graphics,
  PnAjustaGrid ;

type
  TfrmAnaliseVenda = class(TForm)
    fcstbarStatus: TfcStatusBar;
    imglst1: TImageList;
    actmngAnalise: TActionManager;
    actFechMensal: TAction;
    actExportar: TAction;
    actFechar: TAction;
    tmbManutTop1: TtmbManutTop;
    ActionToolBar1: TActionToolBar;
    actRecalcular: TAction;
    ActionMainMenuBar1: TActionMainMenuBar;
    pgctrlAnalise: TPageControl;
    TabSheet1: TTabSheet;
    actVendVendedores: TAction;
    dbgrdAnalise: TDBGrid;
    actVisualHist: TAction;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    TabSheet3: TTabSheet;
    DBGrid2: TDBGrid;
    Splitter1: TSplitter;
    actBaixaDupl: TAction;
    actVisualPedVend: TAction;
    tPanel12: tPanel1;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure dbgrdAnaliseTitleClick(Column: TColumn);
    procedure actFechMensalExecute(Sender: TObject);
    procedure actVendVendedoresExecute(Sender: TObject);
    procedure actExportarExecute(Sender: TObject);
    procedure actVisualHistExecute(Sender: TObject);
    procedure actBaixaDuplExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgrdAnaliseDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure actVisualPedVendExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    TipoRelat : Integer;
    procedure VisualHistDupl( EmpresaID, NFSID, DataEmissaoID : String );
  end;

  const Select_HistDupl = '  SELECT EF_NFSPARCELA.EMPRESAID,' +
                          '       EF_NFSPARCELA.NFSID,' +
                          '       EF_NFSPARCELA.DATAEMISSAOID,' +
                          '       EF_NFSPARCELA.PARCELAID,' +
                          '       EF_NFSPARCELA.DATAVENCIMENTO,' +
                          '       EF_NFSPARCELA.DATAPAGTO,' +
                          '       EF_NFSPARCELA.VLRPARCELA,' +
                          '       EF_NFSPARCELA.DUPLICATAID,' +
                          '       EF_NFSPARCELA.EXPORTADO,' +
                          '       EF_NFSPARCELA.VLRBASECOMISSAO,' +
                          '       EF_NFSPARCELA.PAGTOVENDEDOR,' +
                          '       EF_NFSPARCELA.USUARIO' +
                          '  FROM EF_NFSPARCELA EF_NFSPARCELA ';

var
  frmAnaliseVenda: TfrmAnaliseVenda;

implementation

uses u_dmPP, u_dmEF, u_dmGSI, FuncoesCliente, u_ParAnaliseVenda,
  u_BaseComissaoVendedor, u_Exportar, u_VisualHistDupl,
  u_VisualPagtoComissao, u_PedVenda;

{$R *.dfm}

procedure TfrmAnaliseVenda.VisualHistDupl( EmpresaID, NFSID, DataEmissaoID : String );
var iSQL : String;
begin
 if NFSID = '' then
    exit;

 iSQL := Select_HistDupl;

 iSQL := iSQL + ' WHERE ' +
                ' EMPRESAID = ' + EmpresaID +
                ' AND NFSID = ' + NFSID +
                ' AND DATAEMISSAOID = ' + QuotedStr( DataEmissaoID );

 if not Assigned( frmVisualHistDupl ) then
    Application.CreateForm( TfrmVisualHistDupl, frmVisualHistDupl );

 ExecDynamicProvider( -1, iSQL, frmVisualHistDupl.cdsHistDupl );

 frmVisualHistDupl.ShowModal;
end;


procedure TfrmAnaliseVenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 frmAnaliseVenda := Nil;
end;

procedure TfrmAnaliseVenda.FormCreate(Sender: TObject);
begin
 tmbManutTop1.TtmbPreencheCombos := True;
 tmbManutTop1.TtmbDataSource      := dmPP.dsAnaliseVenda;
 tmbManutTop1.TtmbPreencheCombos  := True;
end;

procedure TfrmAnaliseVenda.actFecharExecute(Sender: TObject);
begin
 Close;
end;

procedure TfrmAnaliseVenda.dbgrdAnaliseTitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column, Column.Grid.DataSource, TDBGrid( Column.Grid ) );
end;

procedure TfrmAnaliseVenda.actFechMensalExecute(Sender: TObject);
begin
 if not Assigned( frmParAnaliseVenda ) then
    Application.CreateForm(  TfrmParAnaliseVenda, frmParAnaliseVenda );

 frmParAnaliseVenda.ShowModal;
end;

procedure TfrmAnaliseVenda.actVendVendedoresExecute(Sender: TObject);
begin
 if not Assigned( frmBaseComissaoVendedor ) then
    Application.CreateForm( TfrmBaseComissaoVendedor, frmBaseComissaoVendedor );
 frmBaseComissaoVendedor.ShowModal;
end;

procedure TfrmAnaliseVenda.actExportarExecute(Sender: TObject);
begin
 if not dmPP.cdsAnaliseVenda.IsEmpty then
    begin
     frmExportar := TfrmExportar.Create(nil);
     frmExportar.DataSource := dmPP.dsAnaliseVenda;
     frmExportar.Show;
    end
 else
    MessageDlg('É necessário Gerar o Relatório primeiro!',mtWarning, [mbok],0 );

end;

procedure TfrmAnaliseVenda.actVisualHistExecute(Sender: TObject);
begin
 VisualHistDupl( dmPP.cdsAnaliseVendaEMPRESAID.AsString,
                 dmPP.cdsAnaliseVendaNFSID.AsString,
                 dmPP.cdsAnaliseVendaDATAEMISSAOID.AsString );
end;

procedure TfrmAnaliseVenda.actBaixaDuplExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, 'Analise de Venda', 'Baixar Duplicatas', True ) then
    begin
     if not Assigned( frmVisualPagtoComissao ) then
        Application.CreateForm( TfrmVisualPagtoComissao, frmVisualPagtoComissao );
     frmVisualPagtoComissao.ShowModal;
    end;
end;

procedure TfrmAnaliseVenda.FormShow(Sender: TObject);
begin
 tmbManutTop1.TtmbPreencheCombos    := True;
 tmbManutTop1.cbxCampos.ItemIndex   := 0;
 tmbManutTop1.cbxCondicao.ItemIndex := 1;
 tmbManutTop1.cbxCampos.OnExit( Self );

 if Assigned( frmAnaliseVenda ) then
    frmAnaliseVenda.ActiveControl := tmbManutTop1.mktConteudo;
end;

procedure TfrmAnaliseVenda.dbgrdAnaliseDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var HoldColor : TColor;
begin
 HoldColor := dbgrdAnalise.Canvas.Brush.Color;
 If ( Column.FieldName = 'PEDVENDID' ) or ( Column.FieldName = 'EMPRESAID' ) or
    ( Column.FieldName = 'L_DATAPEDIDO' ) or ( Column.FieldName = 'L_CLIENTEID' ) or
    ( Column.FieldName = 'L_DECRICAOORIGEMVENDA' ) or ( Column.FieldName = 'L_DESCRICAOTIPOVENDA' ) then
    begin
     if      ( dmPP.cdsAnaliseVendaLIBPAGTOFIN.AsInteger = 0 ) and
             ( dmPP.cdsAnaliseVendaSTATUS.AsInteger = 0 ) then
             begin
              dbgrdAnalise.Canvas.Brush.Color := clRed;
              dbgrdAnalise.DefaultDrawColumnCell(Rect, DataCol, Column, State);
              dbgrdAnalise.Canvas.Brush.Color := HoldColor;
             end
     else if dmPP.cdsAnaliseVendaSTATUS.AsInteger = 0 then
             begin
              dbgrdAnalise.Canvas.Brush.Color := clGreen;
              dbgrdAnalise.DefaultDrawColumnCell(Rect, DataCol, Column, State);
              dbgrdAnalise.Canvas.Brush.Color := HoldColor;
             end
    end;
end;

procedure TfrmAnaliseVenda.actVisualPedVendExecute(Sender: TObject);
begin
 GerarPesquisa( dmPP.cdsPedVend, 'PP_PEDVEND.PEDVENDID = ' +  QuotedStr( dmPP.cdsAnaliseVendaPEDVENDID.AsString ) );
 if not Assigned( frmPedVenda ) then
    Application.CreateForm( TfrmPedVenda, frmPedVenda );

 frmPedVenda.actGerarFat.Enabled       := False;
 frmPedVenda.actCancFat.Enabled        := False;
 frmPedVenda.actTransfProcesso.Enabled := False;
 frmPedVenda.actImpressao.Enabled      := False;

 frmPedVenda.ShowModal;
end;

end.
