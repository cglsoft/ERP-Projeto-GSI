unit u_VisualizaNotaFiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls,
  tmbToolManutencaoBottom, DB, PnAjustaGrid, ToolWin, tmbToolManutencaoTop, DBClient;

type
  TfrmVisualizaNotaFiscal = class(TForm)
    tmbManutTop1: TtmbManutTop;
    Panel2: TPanel;
    StatusBar1: TStatusBar;
    PagePedidos: TPageControl;
    TabSheet1: TTabSheet;
    dbGridE: TDBGrid;
    TabSheet2: TTabSheet;
    dbGridS: TDBGrid;
    PopupMenu1: TPopupMenu;
    PopupMenu2: TPopupMenu;
    Panel1: TPanel;
    tmbManutBottom1: TtmbManutBottom;
    AjustaGrid: tPanel1;
    Pesquisaincremental1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure PagePedidosChange(Sender: TObject);
    procedure dbGridEDblClick(Sender: TObject);
    procedure dbGridEDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure dbGridETitleClick(Column: TColumn);
    procedure dbGridSTitleClick(Column: TColumn);
    procedure dbGridSDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
  private
    { Private declarations }
   procedure AlternaTabela( TblAtivar : Char);
  public
    { Public declarations }
  end;

var
  frmVisualizaNotaFiscal: TfrmVisualizaNotaFiscal;

implementation

uses FuncoesCliente, u_dmEF, u_NFE, u_NFS;

{$R *.dfm}

procedure TfrmVisualizaNotaFiscal.AlternaTabela(TblAtivar: Char);
begin
 case TblAtivar of
 'E': begin
        AjustaGrid.tmbDBGrid                := dbGridE;
        dbGridE.DataSource                  := dmEF.dsNfe;
        tmbManutBottom1.TtmbFormOwnerEspec  := FrmNfe;
        tmbManutBottom1.TtmbClassOwnerEspec := TFrmNfe;
//        dmEF.cdsNfe.Close;
        tmbManutBottom1.TtmbClientDataSet   := dmEF.cdsNfe;
        tmbManutBottom1.TtmbDataSource      := dmEF.dsNfe;
        tmbManutBottom1.TtmbFormulario      := frmVisualizaNotaFiscal;
//        dmEF.cdsNfe.Open;
        tmbManutTop1.TtmbDataSource         := dmEF.dsNfe;
        tmbManutTop1.TtmbPreencheCombos     := true;
       end;
  'S': begin
        AjustaGrid.tmbDBGrid                := dbGridS;
        dbGridS.DataSource                  := dmEF.dsNfs;
        tmbManutBottom1.TtmbFormOwnerEspec  := FrmNfs;
        tmbManutBottom1.TtmbClassOwnerEspec := TFrmNfs;
//        dmEF.cdsNfs.Close;
        tmbManutBottom1.TtmbClientDataSet   := dmEF.cdsNfs;
        tmbManutBottom1.TtmbDataSource      := dmEF.dsNfs;
        tmbManutBottom1.TtmbFormulario      := frmVisualizaNotaFiscal;
//        dmEF.cdsNfs.Open;
        tmbManutTop1.TtmbDataSource         := dmEF.dsNfs;
        tmbManutTop1.TtmbPreencheCombos     := true;
       end;
 end;

 tmbManutTop1.cbxCampos.ItemIndex   := 1;
 tmbManutTop1.cbxCondicao.ItemIndex := 1;
 tmbManutTop1.cbxCampos.OnExit( Self );
 AjustaGrid.tmbAjusta := True;

 if Assigned( frmVisualizaNotaFiscal ) then
    frmVisualizaNotaFiscal.ActiveControl := tmbManutTop1.mktConteudo;
end;

procedure TfrmVisualizaNotaFiscal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Case PagePedidos.TabIndex of
  0: begin
      if not FinalFormulario(dmEF.cdsNfe,' da Nota Fiscal de Entrada ') then
         Action := caNone
      else
       begin
        Action  := caFree;
        frmVisualizaNotaFiscal  := Nil;
       end;
    end;
 1: begin
     if not FinalFormulario(dmEF.cdsNfs,' da Nota Fiscal de Saída ') then
        Action := caNone
     else
      begin
       Action  := caFree;
       frmVisualizaNotaFiscal  := Nil;
      end;
    end;
 end;
end;

procedure TfrmVisualizaNotaFiscal.FormShow(Sender: TObject);
begin
 PagePedidos.TabIndex := 0;
 AlternaTabela('E');
end;

procedure TfrmVisualizaNotaFiscal.PagePedidosChange(Sender: TObject);
begin
 case PagePedidos.TabIndex of
 0: AlternaTabela('E');
 1: AlternaTabela('S');
 end;
end;

procedure TfrmVisualizaNotaFiscal.dbGridEDblClick(Sender: TObject);
begin
 if tmbManutTop1.sbRetornar.Visible then
    tmbManutTop1.sbRetornar.OnClick( Sender )
 else
    begin
     if not TDBGrid( Sender ).DataSource.DataSet.IsEmpty then
        tmbManutBottom1.SpEditar.OnClick( Sender );
    end;
end;

procedure TfrmVisualizaNotaFiscal.dbGridEDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
 dbGridE.Columns[0].Color      := clGray;
 dbGridE.Columns[0].Font.Color := clWhite;
end;

procedure TfrmVisualizaNotaFiscal.dbGridETitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column, dmEF.dsNfe, dbGridE);
end;

procedure TfrmVisualizaNotaFiscal.dbGridSTitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column, dmEF.dsNfs, dbGridS);
end;

procedure TfrmVisualizaNotaFiscal.dbGridSDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
 dbGridE.Columns[0].Color      := clGray;
 dbGridE.Columns[0].Font.Color := clWhite;
end;

end.
