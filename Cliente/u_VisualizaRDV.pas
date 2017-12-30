unit u_VisualizaRDV;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ActnList, XPStyleActnCtrls, ActnMan, ExtCtrls,
  PnAjustaGrid, ActnCtrls, ToolWin, ComCtrls, Grids, DBGrids;

type
  TfrmVisualizaRDV = class(TForm)
    CoolBar1: TCoolBar;
    ActionToolBar1: TActionToolBar;
    tmbajtGeral: tPanel1;
    actmngRDV: TActionManager;
    actAlterar: TAction;
    actFechar: TAction;
    imglstRDV: TImageList;
    pgctrlVisualizar: TPageControl;
    TabSheet1: TTabSheet;
    dbgrdRDV: TDBGrid;
    TabSheet2: TTabSheet;
    dbgrdHora: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actFecharExecute(Sender: TObject);
    procedure dbgrdRDVTitleClick(Column: TColumn);
    procedure dbgrdHoraTitleClick(Column: TColumn);
    procedure pgctrlVisualizarChange(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure AlterarDados;
  public
    { Public declarations }
  end;

var
  frmVisualizaRDV: TfrmVisualizaRDV;

implementation

uses u_dmRD, u_RDV, FuncoesCliente, u_Hora;

{$R *.dfm}

procedure TfrmVisualizaRDV.AlterarDados;
begin
 case pgctrlVisualizar.ActivePageIndex of
 0 : begin
      GerarPesquisa( dmRD.cdsRdv, 'RD_RDV.RDVID = ' + dmRD.cdsRDVVisualiza.FieldByName('RDVID').AsString );
      dmRD.cdsRdv.Edit;
      frmRdv := TfrmRdv.Create( Self );
      frmRdv.Show;
     end;
 1 : begin
      GerarPesquisa( dmRD.cdsHora, 'RD_HORA.HORAID = ' + dmRD.cdsHoraVisualiza.FieldByName('HORAID').AsString );
      dmRD.cdsHora.Edit;
      frmHora := TfrmHora.Create( Self );
      frmHora.Show;
     end;
 end;
end;

procedure TfrmVisualizaRDV.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 frmVisualizaRDV := Nil;
end;

procedure TfrmVisualizaRDV.actFecharExecute(Sender: TObject);
begin
 Close;
end;

procedure TfrmVisualizaRDV.dbgrdRDVTitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column,  dmRD.dsRDVVisualiza, dbgrdRDV );
end;

procedure TfrmVisualizaRDV.dbgrdHoraTitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column, dmRD.dsHoraVisualiza, dbgrdHora );
end;

procedure TfrmVisualizaRDV.pgctrlVisualizarChange(Sender: TObject);
begin
 case pgctrlVisualizar.ActivePageIndex of
 0 : tmbajtGeral.tmbDBGrid := dbgrdRDV;
 1 : tmbajtGeral.tmbDBGrid := dbgrdHora;
 end;
 tmbajtGeral.tmbAjusta := True;
end;

procedure TfrmVisualizaRDV.actAlterarExecute(Sender: TObject);
begin
 AlterarDados;
end;

procedure TfrmVisualizaRDV.FormShow(Sender: TObject);
begin
 pgctrlVisualizarChange(Sender);
end;

end.
