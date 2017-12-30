unit u_VisualizaContrato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, tmbToolEdicaoBottom, ComCtrls, ToolWin, tmbToolManutencaoTop,
  Grids, DBGrids, StdCtrls, Mask, DBCtrls, ExtCtrls, PnAjustaGrid, Buttons,
  ActnMan, ActnCtrls, ImgList, ActnList, XPStyleActnCtrls;

type
  TfrmVisualizaContrato = class(TForm)
    StatusBar1: TStatusBar;
    GroupBox1: TGroupBox;
    dbGridVContrato: TDBGrid;
    tmbManutTop1: TtmbManutTop;
    ActionToolBar1: TActionToolBar;
    Splitter1: TSplitter;
    ActionManager1: TActionManager;
    Action1: TAction;
    ImageList1: TImageList;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox4: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label16: TLabel;
    Label15: TLabel;
    Label14: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit5: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBEdit2: TDBEdit;
    DBMemo1: TDBMemo;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label17: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    actExportar: TAction;
    Label18: TLabel;
    DBEdit17: TDBEdit;
    Label19: TLabel;
    DBEdit18: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dbGridVContratoTitleClick(Column: TColumn);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure actExportarExecute(Sender: TObject);
  private
    { Private declarations }
   procedure SetTmbManutencaoTop; 
  public
    { Public declarations }
  end;

var
  frmVisualizaContrato: TfrmVisualizaContrato;

implementation

uses u_dmCM,FuncoesCliente, u_Exportar;

{$R *.dfm}

procedure TfrmVisualizaContrato.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 frmVisualizaContrato := nil;
end;

procedure TfrmVisualizaContrato.SetTmbManutencaoTop;
begin
 tmbManutTop1.TtmbDataSource            := dmCM.dsVisualContrato;
 tmbManutTop1.TtmbPreencheCombos        := True;
 tmbManutTop1.cbxCampos.ItemIndex       := 4;
 tmbManutTop1.cbxCondicao.ItemIndex     := 3;
 tmbManutTop1.cbxCampos.OnExit( Self );

 if Assigned( frmVisualizaContrato ) then
    frmVisualizaContrato.ActiveControl := tmbManutTop1.mktConteudo;
end;

procedure TfrmVisualizaContrato.FormShow(Sender: TObject);
begin
 SetTmbManutencaoTop;
 dmCM.cdsVisualContrato.Open;
end;

procedure TfrmVisualizaContrato.dbGridVContratoTitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column, dmCM.dsVisualContrato, dbGridVContrato);
end;

procedure TfrmVisualizaContrato.SpeedButton1Click(Sender: TObject);
begin
 frmVisualizaContrato.Close;
end;

procedure TfrmVisualizaContrato.actExportarExecute(Sender: TObject);
begin

  if not dmCM.cdsVisualContrato.IsEmpty then
    begin
     frmExportar := TfrmExportar.Create(nil);
     frmExportar.DataSource := dmCM.dsVisualContrato;
     frmExportar.Show;
    end
 else
    MessageDlg('Não há dados à serem Exportados!',mtWarning, [mbok],0 );
end;

procedure TfrmVisualizaContrato.Action1Execute(Sender: TObject);
begin
 frmVisualizaContrato.Close;
end;

end.
