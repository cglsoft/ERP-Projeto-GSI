unit u_VisualizadorPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, Wwdbigrd, Wwdbgrid, DBGrids, ComCtrls, ExtCtrls,
  PnAjustaGrid, ToolWin, ImgList, ActnList, XPStyleActnCtrls, ActnMan, ActnCtrls;

type
  TfrmVisualizadorPadrao = class(TForm)
    dsVisualizar: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dbgrdPadrao1: TDBGrid;
    dbgrdPadrao2: TDBGrid;
    dsVisualizar2: TDataSource;
    CoolBar2: TCoolBar;
    ActionToolBar1: TActionToolBar;
    tmbajtgrdPadrao: tPanel1;
    actmngRDV: TActionManager;
    actExportar: TAction;
    actFechar: TAction;
    imglstRDV: TImageList;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dbgrdPadrao1TitleClick(Column: TColumn);
    procedure dbgrdPadrao2TitleClick(Column: TColumn);
    procedure actExportarExecute(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVisualizadorPadrao: TfrmVisualizadorPadrao;

implementation

uses FuncoesCliente, u_Exportar;

{$R *.dfm}

procedure TfrmVisualizadorPadrao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
end;

procedure TfrmVisualizadorPadrao.FormShow(Sender: TObject);
begin
 tmbajtgrdPadrao.tmbAjusta := True;
end;

procedure TfrmVisualizadorPadrao.actExportarExecute(Sender: TObject);
begin
  if not dsVisualizar.DataSet.IsEmpty then
    begin
     frmExportar := TfrmExportar.Create(nil);
     frmExportar.DataSource := dsVisualizar ;
     frmExportar.Show;
    end
 else
    MessageDlg('Não há dados à serem Exportados!',mtWarning, [mbok],0 );
end;

procedure TfrmVisualizadorPadrao.actFecharExecute(Sender: TObject);
begin
 Close;
end;

procedure TfrmVisualizadorPadrao.dbgrdPadrao1TitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column, dsVisualizar, dbgrdPadrao1);
end;

procedure TfrmVisualizadorPadrao.dbgrdPadrao2TitleClick(Column: TColumn);
begin
  OrdenaFieldDBGrid(Column, dsVisualizar2, dbgrdPadrao2);
end;

end.
