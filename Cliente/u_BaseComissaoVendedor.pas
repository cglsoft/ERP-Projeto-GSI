unit u_BaseComissaoVendedor;

interface

uses
  Windows, Forms, Menus, ImgList, Controls, Classes, ActnList, Dialogs,
  XPStyleActnCtrls, ActnMan, Grids, DBGrids, ComCtrls, ActnMenus,
  ActnCtrls, ToolWin, tmbToolManutencaoTop, fcStatusBar, Graphics,
  wwDataInspector, tmbDataInspector, ExtCtrls, PnAjustaGrid;

type
  TfrmBaseComissaoVendedor = class(TForm)
    fcstbarStatus: TfcStatusBar;
    tmbManutTop1: TtmbManutTop;
    ActionToolBar1: TActionToolBar;
    ActionMainMenuBar1: TActionMainMenuBar;
    actmngAnalise: TActionManager;
    actPagtoComissao: TAction;
    actRelDemComissao: TAction;
    actAltBasePagto: TAction;
    actFechar: TAction;
    imglst1: TImageList;
    ppmnuAnalise: TPopupMenu;
    CopiarVendaparaGerente1: TMenuItem;
    VisualizarDuplicatas1: TMenuItem;
    AlterarBasePagto1: TMenuItem;
    pgctrlAnalise: TPageControl;
    TabSheet1: TTabSheet;
    dbgrdBasePagto: TDBGrid;
    actRelVendRepr: TAction;
    actRelRecRepres: TAction;
    actVisualDupl: TAction;
    ActionToolBar2: TActionToolBar;
    actExportar: TAction;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    tmbDataInspector1: TtmbDataInspector;
    Splitter1: TSplitter;
    tPanel11: tPanel1;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure actExportarExecute(Sender: TObject);
    procedure dbgrdBasePagtoTitleClick(Column: TColumn);
    procedure actVisualDuplExecute(Sender: TObject);
    procedure actAltBasePagtoExecute(Sender: TObject);
    procedure actRelDemComissaoExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgrdBasePagtoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure actPagtoComissaoExecute(Sender: TObject);
    procedure actRelVendReprExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBaseComissaoVendedor: TfrmBaseComissaoVendedor;

implementation

uses u_dmPP, u_Exportar, FuncoesCliente, u_AnaliseVenda, u_dmGSI,
  u_ParRelVendedor, u_PagtoComissao;

{$R *.dfm}

procedure TfrmBaseComissaoVendedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 frmBaseComissaoVendedor := Nil;
end;

procedure TfrmBaseComissaoVendedor.FormCreate(Sender: TObject);
begin
 tmbManutTop1.TtmbDataSource      := dmPP.dsBasePagto;
 tmbManutTop1.TtmbPreencheCombos  := True;
end;

procedure TfrmBaseComissaoVendedor.actFecharExecute(Sender: TObject);
begin
 Close;
end;

procedure TfrmBaseComissaoVendedor.actExportarExecute(Sender: TObject);
begin
 if not dmPP.cdsBasePagto.IsEmpty then
    begin
     frmExportar := TfrmExportar.Create(nil);
     frmExportar.DataSource := dmPP.dsBasePagto;
     frmExportar.Show;
    end
 else
    MessageDlg('É necessário Gerar o Relatório primeiro!',mtWarning, [mbok],0 );
end;

procedure TfrmBaseComissaoVendedor.dbgrdBasePagtoTitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column, Column.Grid.DataSource, TDBGrid( Column.Grid ) );
end;

procedure TfrmBaseComissaoVendedor.actVisualDuplExecute(Sender: TObject);
begin
 frmAnaliseVenda.VisualHistDupl( dmPP.cdsBasePagtoL_EMPRESAID.AsString,
                                 dmPP.cdsBasePagtoL_NFSID.AsString,
                                 dmPP.cdsBasePagtoL_DATAEMISSAOID.AsString );
end;

procedure TfrmBaseComissaoVendedor.actAltBasePagtoExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, 'Analise de Venda', 'Alterar Base Pagto', True ) then
    CriarEdicaoPadrao( dmPP.dsBasePagto, dmPP.cdsBasePagto );
end;

procedure TfrmBaseComissaoVendedor.actRelDemComissaoExecute(
  Sender: TObject);
begin
 if not Assigned( frmParRelVendedor ) then
    Application.CreateForm( TfrmParRelVendedor, frmParRelVendedor );

 frmParRelVendedor.lblFuncaoVenda.Visible := False;
 frmParRelVendedor.cmbFuncaoVenda.Visible := False;
 frmParRelVendedor.Relatorio := 1;

 frmParRelVendedor.ShowModal;
end;

procedure TfrmBaseComissaoVendedor.FormShow(Sender: TObject);
begin
 tmbManutTop1.TtmbPreencheCombos    := True;
 tmbManutTop1.cbxCampos.ItemIndex   := 1;
 tmbManutTop1.cbxCondicao.ItemIndex := 3;
 tmbManutTop1.cbxCampos.OnExit( Self );

 if Assigned( frmBaseComissaoVendedor ) then
    frmBaseComissaoVendedor.ActiveControl := tmbManutTop1.mktConteudo;
end;

procedure TfrmBaseComissaoVendedor.dbgrdBasePagtoDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var HoldColor : TColor;
begin
 HoldColor := TDBGrid( Sender ).Canvas.Brush.Color;
 if ( dmPP.cdsBasePagtoVLRLIQUIDO.AsCurrency > 0 ) then
    begin
     TDBGrid( Sender ).Canvas.Brush.Color := clGreen;
     TDBGrid( Sender ).DefaultDrawColumnCell(Rect, DataCol, Column, State);
     TDBGrid( Sender ).Canvas.Brush.Color := HoldColor;
    end;
end;

procedure TfrmBaseComissaoVendedor.actPagtoComissaoExecute(
  Sender: TObject);
begin
 with dmPP do
 begin
  if not cdsBasePagtoDATAPAGTOCOM.IsNull then
     begin
      if MessageDlg('Comissão já foi paga, deseja cancelar pagamento ?', mtConfirmation, mbOKCancel, 0 ) = mrOk then
         if CheckSenha( dmGsi.UsuarioAtivo, 'Analise de Venda', 'Cancelar Pagamento de Comissão' , True ) then
            begin
             cdsBasePagto.Edit;
             cdsBasePagtoPORCVENDA.Clear;
             cdsBasePagtoDATAPAGTOCOM.Clear;
             cdsBasePagtoVLRDSR.AsCurrency := 0;
             cdsBasePagtoVLRLIQUIDO.AsCurrency := 0;
             cdsBasePagtoVLRCOMISSAO.AsCurrency := 0;
             cdsBasePagto.Post;
            end;
     end
  else if CheckSenha( dmGsi.UsuarioAtivo, 'Analise de Venda', 'Pagamento de Comissão', True ) then
          begin
           if not Assigned( frmPagtoComissao ) then
              Application.CreateForm( TfrmPagtoComissao, frmPagtoComissao );
           cdsBasePagto.Edit;   
           frmPagtoComissao.ShowModal;
          end;
 end;
end;

procedure TfrmBaseComissaoVendedor.actRelVendReprExecute(Sender: TObject);
begin
 if not Assigned( frmParRelVendedor ) then
    Application.CreateForm( TfrmParRelVendedor, frmParRelVendedor );

 frmParRelVendedor.lblFuncaoVenda.Visible := False;
 frmParRelVendedor.cmbFuncaoVenda.Visible := False;
 frmParRelVendedor.Relatorio := 2;

 frmParRelVendedor.ShowModal;
end;

end.
