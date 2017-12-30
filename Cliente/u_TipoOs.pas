unit u_TipoOs;

interface

uses Windows, Forms, Grids, DBGrids, tmbToolEdicaoLista,
  tmbToolEdicaoBottom, ComCtrls, fcStatusBar, StdCtrls, wwcheckbox, Mask,
  DBCtrls, Controls, ExtCtrls, Classes, ToolWin, tmbToolEdicaoTop;

type
  TfrmTipoOs = class(TForm)
    tmbEdicaoTop1: TtmbEdicaoTop;
    Panel2: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    GroupBox1: TGroupBox;
    fcStatusBar1: TfcStatusBar;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    tmbEdicaoBottom1: TtmbEdicaoBottom;
    tmbEdicaoLista1: TtmbEdicaoLista;
    Label2: TLabel;
    wwCheckBox1: TwwCheckBox;
    wwCheckBox2: TwwCheckBox;
    wwCheckBox4: TwwCheckBox;
    wwCheckBox5: TwwCheckBox;
    wwCheckBox3: TwwCheckBox;
    dbgrdPadraoPesquisa: TDBGrid;
    wwCheckBox6: TwwCheckBox;
    wwCheckBox7: TwwCheckBox;
    wwCheckBox8: TwwCheckBox;
    wwCheckBox9: TwwCheckBox;
    wwCheckBox10: TwwCheckBox;
    wwCheckBox11: TwwCheckBox;
    wwCheckBox12: TwwCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTipoOs: TfrmTipoOs;

implementation

uses u_dmOs,FuncoesCliente, u_PadraoEdicao;

{$R *.dfm}

procedure TfrmTipoOs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if not FinalFormulario(dmOs.cdsTipoOS,' da Ordem de Serviço') then
    Action := caNone
 else
    begin
     Action := caFree;
     frmTipoOs  := Nil;
    end;
end;

procedure TfrmTipoOs.FormShow(Sender: TObject);
begin
 tmbEdicaoLista1.TtmbClassOwnerEspec := TFrmPadraoEdicao;
 tmbEdicaoLista1.TtmbFormOwnerEspec  := FrmPadraoEdicao;
end;

end.
