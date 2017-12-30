unit u_VisualizaPedido;

interface

uses
  Windows, Forms, Menus, tmbToolManutencaoBottom, ComCtrls, ExtCtrls,
  PnAjustaGrid, ToolWin, tmbToolManutencaoTop, Controls, Grids, DBGrids,
  Classes, DB, Graphics;

type
  TfrmVisualizaPedido = class(TForm)
    pgctrlPedido: TPageControl;
    tmbManutTop1: TtmbManutTop;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dbGridE: TDBGrid;
    dbGridS: TDBGrid;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    tmbManutBottom1: TtmbManutBottom;
    AjustaGrid: tPanel1;
    procedure pgctrlPedidoChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dbGridETitleClick(Column: TColumn);
    procedure dbGridSTitleClick(Column: TColumn);
    procedure dbGridSDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure dbGridEDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure dbGridEDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbGridSDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbGridEDblClick(Sender: TObject);
    procedure dbGridSDblClick(Sender: TObject);
  private
    { Private declarations }
    procedure AlternaTabela( TblAtivar : Char);
  public
    { Public declarations }
 end;

var
  frmVisualizaPedido: TfrmVisualizaPedido;

implementation

uses FuncoesCliente, u_dmEF, u_PDE, u_PDS;

{$R *.DFM}

procedure TfrmVisualizaPedido.pgctrlPedidoChange(Sender: TObject);
begin
 case pgctrlPedido.TabIndex of
 0: AlternaTabela('E');
 1: AlternaTabela('S');
 end;
end;

procedure TfrmVisualizaPedido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 frmVisualizaPedido := nil;
end;

procedure TfrmVisualizaPedido.AlternaTabela(TblAtivar: Char);
begin
 case TblAtivar of
  'E': begin
        AjustaGrid.tmbDBGrid                := dbGridE;
        tmbManutBottom1.TtmbFormOwnerEspec  := frmPDE;
        tmbManutBottom1.TtmbClassOwnerEspec := TfrmPDE;
        tmbManutBottom1.TtmbClientDataSet   := dmEF.cdsPde;
        tmbManutBottom1.TtmbDataSource      := dmEF.dsPde;
        tmbManutBottom1.TtmbFormulario      := frmVisualizaPedido;
        tmbManutTop1.TtmbDataSource         := dmEF.dsPde;
       end;
  'S': begin
        AjustaGrid.tmbDBGrid                := dbGridS;
        tmbManutBottom1.TtmbFormOwnerEspec  := FrmPDS;
        tmbManutBottom1.TtmbClassOwnerEspec := TFrmPDS;
        tmbManutBottom1.TtmbClientDataSet   := dmEF.cdsPds;
        tmbManutBottom1.TtmbDataSource      := dmEF.dsPds;
        tmbManutBottom1.TtmbFormulario      := frmVisualizaPedido;
        dmEF.cdsPds.Open;
        tmbManutTop1.TtmbDataSource         := dmEF.dsPds;
       end;
 end;

 tmbManutTop1.TtmbPreencheCombos    := True;
 tmbManutTop1.cbxCampos.ItemIndex   := 1;
 tmbManutTop1.cbxCondicao.ItemIndex := 1;
 tmbManutTop1.cbxCampos.OnExit( Self );

 if Assigned( frmVisualizaPedido ) then
    frmVisualizaPedido.ActiveControl := tmbManutTop1.mktConteudo;

end;

procedure TfrmVisualizaPedido.FormShow(Sender: TObject);
begin
 if not dmEF.cdsPde.Active then
    dmEF.cdsPde.Open;

 if not dmEF.cdsPds.Active then
    dmEF.cdsPds.Open;

 AlternaTabela('S');
end;

procedure TfrmVisualizaPedido.dbGridETitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column, dmEF.dsPde, dbGridE);
end;

procedure TfrmVisualizaPedido.dbGridSTitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column, dmEF.dsPds, dbGridS);
end;

procedure TfrmVisualizaPedido.dbGridSDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
 dbGridS.Columns[0].Color      := clGray;
 dbGridS.Columns[0].Font.Color := clWhite;
end;

procedure TfrmVisualizaPedido.dbGridEDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
 dbGridE.Columns[0].Color      := clGray;
 dbGridE.Columns[0].Font.Color := clWhite;
end;

procedure TfrmVisualizaPedido.dbGridEDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var HoldColor : TColor;
begin
 holdColor := dbGridE.Canvas.Brush.Color;
 if ( Column.FieldName = 'LIBCHEFIA' ) or ( Column.FieldName = 'LIBFINANCEIRO' ) or ( Column.FieldName = 'LIBCONTABIL' ) then
    if Column.Field.AsInteger = 0 then
       begin
        TDBGrid( Sender ).Canvas.Brush.Color := clRed;
        TDBGrid( Sender ).DefaultDrawColumnCell(Rect, DataCol, Column, State);
        TDBGrid( Sender ).Canvas.Brush.Color := HoldColor;
       end
    else
       begin
        TDBGrid( Sender ).Canvas.Brush.Color := clGreen;
        TDBGrid( Sender ).DefaultDrawColumnCell(Rect, DataCol, Column, State);
        TDBGrid( Sender ).Canvas.Brush.Color := HoldColor;
       end;
end;

procedure TfrmVisualizaPedido.dbGridSDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var HoldColor : TColor;
begin
 holdColor := dbGridE.Canvas.Brush.Color;
 if ( Column.FieldName = 'LIBCHEFIA' ) or ( Column.FieldName = 'LIBFINANCEIRO' ) or ( Column.FieldName = 'LIBCONTABIL' ) then
    if Column.Field.AsInteger = 0 then
       begin
        TDBGrid( Sender ).Canvas.Brush.Color := clRed;
        TDBGrid( Sender ).DefaultDrawColumnCell(Rect, DataCol, Column, State);
        TDBGrid( Sender ).Canvas.Brush.Color := HoldColor;
       end
    else
       begin
        TDBGrid( Sender ).Canvas.Brush.Color := clGreen;
        TDBGrid( Sender ).DefaultDrawColumnCell(Rect, DataCol, Column, State);
        TDBGrid( Sender ).Canvas.Brush.Color := HoldColor;
       end;
end;

procedure TfrmVisualizaPedido.dbGridEDblClick(Sender: TObject);
begin
 if tmbManutTop1.sbRetornar.Visible then
    tmbManutTop1.sbRetornar.OnClick( Sender )
 else
    begin
     if not dbGridE.DataSource.DataSet.IsEmpty then
        tmbManutBottom1.SpEditar.OnClick( Sender );
    end;
end;

procedure TfrmVisualizaPedido.dbGridSDblClick(Sender: TObject);
begin
 if tmbManutTop1.sbRetornar.Visible then
    tmbManutTop1.sbRetornar.OnClick( Sender )
 else
    begin
     if not dbGridS.DataSource.DataSet.IsEmpty then
        tmbManutBottom1.SpEditar.OnClick( Sender );
    end;
end;

end.
