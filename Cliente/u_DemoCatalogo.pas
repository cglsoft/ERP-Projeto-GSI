unit u_DemoCatalogo;

interface

uses Windows, Forms, Grids, DBGrids, tmbToolEdicaoLista,
  tmbToolEdicaoBottom, ComCtrls, fcStatusBar, StdCtrls, wwcheckbox, Mask,
  DBCtrls, Controls, ExtCtrls, Classes, ToolWin, tmbToolEdicaoTop, wwdbedit,
  Wwdotdot ;


type
  TfrmDemoCatalogo = class(TForm)
    tmbEdicaoTop1: TtmbEdicaoTop;
    Panel2: TPanel;
    fcStatusBar1: TfcStatusBar;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    tmbEdicaoBottom1: TtmbEdicaoBottom;
    tmbEdicaoLista1: TtmbEdicaoLista;
    dbgrdPadraoPesquisa: TDBGrid;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label45: TLabel;
    wwDBComboDlg6: TwwDBComboDlg;
    Label55: TLabel;
    DBEdit4: TDBEdit;
    Label54: TLabel;
    DBEdit15: TDBEdit;
    DBMemo1: TDBMemo;
    Label14: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDemoCatalogo: TfrmDemoCatalogo;

implementation

uses u_dmOs,FuncoesCliente, u_PadraoEdicao;

{$R *.dfm}

procedure TfrmDemoCatalogo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if not FinalFormulario(dmOs.cdsDemoCatalogo,' da Demo Catálogo') then
    Action := caNone
 else
    begin
     Action := caFree;
     frmDemoCatalogo := Nil;
    end;
end;

procedure TfrmDemoCatalogo.FormShow(Sender: TObject);
begin
 tmbEdicaoLista1.TtmbClassOwnerEspec := TFrmPadraoEdicao;
 tmbEdicaoLista1.TtmbFormOwnerEspec  := FrmPadraoEdicao;
end;

end.
