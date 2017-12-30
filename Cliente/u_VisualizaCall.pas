unit u_VisualizaCall;

interface

uses
  Windows, Forms, Menus, tmbToolManutencaoBottom, ComCtrls, ExtCtrls,
  PnAjustaGrid, ToolWin, tmbToolManutencaoTop, Controls, Grids, DBGrids,
  Classes, DB, Graphics;

type
  TfrmVisualizaCall = class(TForm)
    pgctrlPedido: TPageControl;
    tmbManutTop1: TtmbManutTop;
    TabSheet2: TTabSheet;
    dbGridS: TDBGrid;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    tmbManutBottom1: TtmbManutBottom;
    AjustaGrid: tPanel1;
    procedure pgctrlPedidoChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dbGridSTitleClick(Column: TColumn);
    procedure dbGridSDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure dbGridSDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbGridSDblClick(Sender: TObject);
  private
    { Private declarations }
    procedure AlternaTabela( TblAtivar : Char);
  public
    { Public declarations }
 end;

var
  frmVisualizaCall: TfrmVisualizaCall;

implementation

uses FuncoesCliente, u_dmEF,  u_Call;

{$R *.DFM}

procedure TfrmVisualizaCall.pgctrlPedidoChange(Sender: TObject);
begin
 case pgctrlPedido.TabIndex of
 0: AlternaTabela('E');
 1: AlternaTabela('S');
 end;
end;

procedure TfrmVisualizaCall.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 frmVisualizaCall := nil;
end;

procedure TfrmVisualizaCall.AlternaTabela(TblAtivar: Char);
begin
 case TblAtivar of
  'S': begin
        AjustaGrid.tmbDBGrid                := dbGridS;
        tmbManutBottom1.TtmbFormOwnerEspec  := frmCall;
        tmbManutBottom1.TtmbClassOwnerEspec := TfrmCall;
        tmbManutBottom1.TtmbClientDataSet   := dmEF.cdsCall;
        tmbManutBottom1.TtmbDataSource      := dmEF.dsCall;
        tmbManutBottom1.TtmbFormulario      := frmVisualizaCall;
        dmEF.cdsCall.Open;
        tmbManutTop1.TtmbDataSource         := dmEF.dsCall;
       end;
 end;

 tmbManutTop1.TtmbPreencheCombos    := True;
 tmbManutTop1.cbxCampos.ItemIndex   := 1;
 tmbManutTop1.cbxCondicao.ItemIndex := 1;
 tmbManutTop1.cbxCampos.OnExit( Self );

 if Assigned( frmVisualizaCall ) then
    frmVisualizaCall.ActiveControl := tmbManutTop1.mktConteudo;

end;

procedure TfrmVisualizaCall.FormShow(Sender: TObject);
begin
 if not dmEF.cdsCall.Active then
    dmEF.cdsCall.Open;

 AlternaTabela('S');
end;

procedure TfrmVisualizaCall.dbGridSTitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column, dmEF.dsCall, dbGridS);
end;

procedure TfrmVisualizaCall.dbGridSDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
 dbGridS.Columns[0].Color      := clGray;
 dbGridS.Columns[0].Font.Color := clWhite;
end;

procedure TfrmVisualizaCall.dbGridSDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var HoldColor : TColor;
begin
 holdColor := dbGridS.Canvas.Brush.Color;
 if ( Column.FieldName = 'STATUS' ) or ( Column.FieldName = 'PRENOTA' ) then
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

procedure TfrmVisualizaCall.dbGridSDblClick(Sender: TObject);
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
