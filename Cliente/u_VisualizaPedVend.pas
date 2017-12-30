unit u_VisualizaPedVend;

interface

uses
  Windows, Forms, Menus, tmbToolManutencaoBottom, ComCtrls, ExtCtrls,
  PnAjustaGrid, ToolWin, tmbToolManutencaoTop, Controls, Grids, DBGrids,
  Classes, DB, Graphics;

type
  TfrmVisualizaPedVend = class(TForm)
    pgctrlPedido: TPageControl;
    tmbManutTop1: TtmbManutTop;
    TabSheet2: TTabSheet;
    dbGridS: TDBGrid;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    tmbManutBottom1: TtmbManutBottom;
    AjustaGrid: tPanel1;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dbGridSTitleClick(Column: TColumn);
    procedure dbGridSDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure dbGridSDblClick(Sender: TObject);
    procedure dbGridSDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    procedure AlternaTabela;
  public
    { Public declarations }
 end;

var
  frmVisualizaPedVend: TfrmVisualizaPedVend;

implementation

uses FuncoesCliente, u_PedVenda, u_dmPP;


{$R *.DFM}

procedure TfrmVisualizaPedVend.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 frmVisualizaPedVend := nil;
end;

procedure TfrmVisualizaPedVend.AlternaTabela;
begin
 tmbManutBottom1.TtmbFormOwnerEspec  := frmPedVenda;
 tmbManutBottom1.TtmbClassOwnerEspec := TfrmPedVenda;
 tmbManutBottom1.TtmbClientDataSet   := dmPP.cdsPedVend;
 tmbManutBottom1.TtmbDataSource      := dmPP.dsPedVend;
 tmbManutBottom1.TtmbFormulario      := frmVisualizaPedVend;
 tmbManutTop1.TtmbDataSource         := dmPP.dsPedVend;

 tmbManutTop1.TtmbPreencheCombos    := True;
 tmbManutTop1.cbxCampos.ItemIndex   := 0;
 tmbManutTop1.cbxCondicao.ItemIndex := 1;
 tmbManutTop1.cbxCampos.OnExit( Self );

 if Assigned( frmVisualizaPedVend ) then
    frmVisualizaPedVend.ActiveControl := tmbManutTop1.mktConteudo;

end;

procedure TfrmVisualizaPedVend.FormShow(Sender: TObject);
begin
 if not dmPP.cdsPedVend.Active then
    dmPP.cdsPedVend.Open;

 AlternaTabela;
end;

procedure TfrmVisualizaPedVend.dbGridSTitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column, dmPP.dsPedVend, dbGridS);
end;

procedure TfrmVisualizaPedVend.dbGridSDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var HoldColor : TColor;
begin
 holdColor := dbGridS.Canvas.Brush.Color;
 if ( Column.FieldName = 'LIBCHEFIA' ) or ( Column.FieldName = 'NOMELIBCHEFIA') or
    ( Column.FieldName = 'DATALIBCHEFIA')  then
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

procedure TfrmVisualizaPedVend.dbGridSDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
 dbGridS.Columns[0].Color      := clGray;
 dbGridS.Columns[0].Font.Color := clWhite;
end;

procedure TfrmVisualizaPedVend.dbGridSDblClick(Sender: TObject);
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
