unit u_VisualPagtoComissao;

interface

uses
  Windows, Messages, Dialogs, Forms, ImgList, Controls, Classes, ActnList,
  XPStyleActnCtrls, ActnMan, wwDataInspector, tmbDataInspector, Grids, DBGrids,
  ComCtrls, ActnMenus, ActnCtrls, ToolWin, tmbToolManutencaoTop, fcStatusBar,
  ExtCtrls, Graphics, DB, DBClient, SysUtils;

type
  TfrmVisualPagtoComissao = class(TForm)
    fcstbarStatus: TfcStatusBar;
    actmngPagto: TActionManager;
    actFechMensal: TAction;
    actExportar: TAction;
    actFechar: TAction;
    tmbManutTop1: TtmbManutTop;
    ActionToolBar1: TActionToolBar;
    ActionMainMenuBar1: TActionMainMenuBar;
    pgctrlAnalise: TPageControl;
    TabSheet5: TTabSheet;
    actLibPagto: TAction;
    ImageList1: TImageList;
    dbgrdAnalise: TDBGrid;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    tmbDataInspector1: TtmbDataInspector;
    Splitter1: TSplitter;
    actVisualPagtoPend: TAction;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure dbgrdAnaliseTitleClick(Column: TColumn);
    procedure actExportarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgrdAnaliseDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure actFechMensalExecute(Sender: TObject);
    procedure actLibPagtoExecute(Sender: TObject);
    procedure actVisualPagtoPendExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVisualPagtoComissao: TfrmVisualPagtoComissao;

implementation

uses FuncoesCliente, u_dmPP, u_Exportar, u_LibPagtoComissao, u_dmGSI,
  u_DivisaoDuplicata, u_PagtoComAuto;

{$R *.dfm}


procedure TfrmVisualPagtoComissao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 frmVisualPagtoComissao := Nil;
end;

procedure TfrmVisualPagtoComissao.FormCreate(Sender: TObject);
begin
 tmbManutTop1.TtmbPreencheCombos  := True;
 tmbManutTop1.TtmbDataSource      := dmPP.dsNfsParcela;
 tmbManutTop1.TtmbPreencheCombos  := True;
end;

procedure TfrmVisualPagtoComissao.actFecharExecute(Sender: TObject);
begin
 Close;
end;

procedure TfrmVisualPagtoComissao.dbgrdAnaliseTitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column, Column.Grid.DataSource, TDBGrid( Column.Grid ) );
end;

procedure TfrmVisualPagtoComissao.actExportarExecute(Sender: TObject);
begin
 if not dmPP.cdsAnaliseVenda.IsEmpty then
    begin
     frmExportar := TfrmExportar.Create(nil);
     frmExportar.DataSource := dmPP.dsNfsParcela;
     frmExportar.Show;
    end
 else
    MessageDlg('É necessário Gerar o Relatório primeiro!',mtWarning, [mbok],0 );

end;

procedure TfrmVisualPagtoComissao.FormShow(Sender: TObject);
begin
 tmbManutTop1.TtmbPreencheCombos    := True;
 tmbManutTop1.cbxCampos.ItemIndex   := 1;
 tmbManutTop1.cbxCondicao.ItemIndex := 1;
 tmbManutTop1.cbxCampos.OnExit( Self );

 if Assigned( frmVisualPagtoComissao ) then
    frmVisualPagtoComissao.ActiveControl := tmbManutTop1.mktConteudo;
end;

procedure TfrmVisualPagtoComissao.dbgrdAnaliseDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var HoldColor : TColor;
begin
 HoldColor := TDBGrid( Sender ).Canvas.Brush.Color;
 if ( Column.FieldName = 'L_PEDVENDID' ) or ( Column.FieldName = 'EMPRESAID' ) or
    ( Column.FieldName = 'NFSID' ) or ( Column.FieldName = 'DATAEMISSAOID' ) or
    ( Column.FieldName = 'DATAPAGTO' ) or ( Column.FieldName = 'VLRPARCELA' ) or
    ( Column.FieldName = 'PAGTOVENDEDOR' ) then
    begin
     if dmPP.cdsNfsParcelaPAGTOVENDEDOR.AsInteger = 0 then
        begin
         TDBGrid( Sender ).Canvas.Brush.Color := clRed;
         TDBGrid( Sender ).DefaultDrawColumnCell(Rect, DataCol, Column, State);
         TDBGrid( Sender ).Canvas.Brush.Color := HoldColor;
        end
    else
        begin
         TDBGrid( Sender ).DefaultDrawColumnCell(Rect, DataCol, Column, State);
         TDBGrid( Sender ).Canvas.Brush.Color := HoldColor;
        end;


     if dmPP.cdsNfsParcelaCANCELADA.AsInteger = 1 then
        begin
         TDBGrid( Sender ).Canvas.Brush.Color := clMedGray;
         TDBGrid( Sender ).DefaultDrawColumnCell(Rect, DataCol, Column, State);
         TDBGrid( Sender ).Canvas.Brush.Color := HoldColor;
        end;

    end;
end;

procedure TfrmVisualPagtoComissao.actFechMensalExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, 'Analise de Venda', 'Liberação Pagto de Comissão', True ) then
    begin
     if not Assigned( frmLibPagtoComissao ) then
        Application.CreateForm( TfrmLibPagtoComissao, frmLibPagtoComissao );
     frmLibPagtoComissao.ShowModal;
    end;
end;

procedure TfrmVisualPagtoComissao.actLibPagtoExecute(Sender: TObject);
begin
 if dmPP.cdsNfsParcelaPAGTOVENDEDOR.AsInteger = 1 then
    begin
     MessageDlg('Pagamento de comissão já efetuado para esta parcela, reparcelamento não é permitido.',mtError, [mbOK], 0 );
     Exit;
    end;

 if CheckSenha( dmGsi.UsuarioAtivo, 'Analise de Venda', 'Reparcelar Duplicata', True ) then
    begin
     if not Assigned( frmDivisaoDuplicata ) then
        Application.CreateForm( TfrmDivisaoDuplicata, frmDivisaoDuplicata );
     frmDivisaoDuplicata.ShowModal;
    end;
end;

procedure TfrmVisualPagtoComissao.actVisualPagtoPendExecute(Sender: TObject);
begin
  frmPagtoComAuto := TfrmPagtoComAuto.Create( Self );
  frmPagtoComAuto.ShowModal;
end;

end.
