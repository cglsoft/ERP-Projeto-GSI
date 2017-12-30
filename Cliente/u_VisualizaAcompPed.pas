unit u_VisualizaAcompPed;

interface

uses
  Windows, Forms, Menus, tmbToolManutencaoBottom, ComCtrls, ExtCtrls,
  PnAjustaGrid, ToolWin, tmbToolManutencaoTop, Controls, Grids, DBGrids,
  Classes, DB, Graphics;

type
  TfrmVisualizaAcompPed = class(TForm)
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
  frmVisualizaAcompPed: TfrmVisualizaAcompPed;

implementation

uses FuncoesCliente, u_AcompPed, u_dmPP, u_PedVenda;


{$R *.DFM}

procedure TfrmVisualizaAcompPed.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 frmVisualizaAcompPed := nil;
end;

procedure TfrmVisualizaAcompPed.AlternaTabela;
begin
 tmbManutBottom1.TtmbFormOwnerEspec  := frmAcompPed;
 tmbManutBottom1.TtmbClassOwnerEspec := TfrmAcompPed;
 tmbManutBottom1.TtmbClientDataSet   := dmPP.cdsAcompPed;
 tmbManutBottom1.TtmbDataSource      := dmPP.dsAcompPed;
 tmbManutBottom1.TtmbFormulario      := frmVisualizaAcompPed;
 tmbManutTop1.TtmbDataSource         := dmPP.dsAcompPed;

 tmbManutTop1.TtmbPreencheCombos    := True;
 tmbManutTop1.cbxCampos.ItemIndex   := 0;
 tmbManutTop1.cbxCondicao.ItemIndex := 1;
 tmbManutTop1.cbxCampos.OnExit( Self );

 if Assigned( frmVisualizaAcompPed ) then
    frmVisualizaAcompPed.ActiveControl := tmbManutTop1.mktConteudo;

end;

procedure TfrmVisualizaAcompPed.FormShow(Sender: TObject);
begin
 if not dmPP.cdsAcompPed.Active then
    dmPP.cdsAcompPed.Open;

 AlternaTabela;
end;

procedure TfrmVisualizaAcompPed.dbGridSTitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column, dmPP.dsPedVend, dbGridS);
end;

procedure TfrmVisualizaAcompPed.dbGridSDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var HoldColor : TColor;
begin
 holdColor := dbGridS.Canvas.Brush.Color;
 if ( Column.FieldName = 'DOCPENDENTE' ) or ( Column.FieldName = 'NUMPEDVENDEDORID') or
    ( Column.FieldName = 'DATAASSINATURA')  then
    if dmPP.cdsAcompPedDOCPENDENTE.AsInteger = 1 then
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

procedure TfrmVisualizaAcompPed.dbGridSDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
 dbGridS.Columns[0].Color      := clGray;
 dbGridS.Columns[0].Font.Color := clWhite;
end;

procedure TfrmVisualizaAcompPed.dbGridSDblClick(Sender: TObject);
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
