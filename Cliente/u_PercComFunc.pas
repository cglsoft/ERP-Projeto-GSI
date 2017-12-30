unit u_PercComFunc;

interface

uses Windows, Forms, Grids, DBGrids, tmbToolEdicaoLista, tmbToolEdicaoBottom,
  ComCtrls, fcStatusBar, DBCtrls, StdCtrls, Mask, wwdbedit, Wwdotdot, Controls,
  ExtCtrls, Classes, ToolWin, tmbToolEdicaoTop;


type
  TfrmPercComFunc = class(TForm)
    tmbEdicaoTop1: TtmbEdicaoTop;
    Panel2: TPanel;
    fcStatusBar1: TfcStatusBar;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    tmbEdicaoBottom1: TtmbEdicaoBottom;
    tmbEdicaoLista1: TtmbEdicaoLista;
    dbgrdPadraoPesquisa: TDBGrid;
    Label8: TLabel;
    wwDBComboDlg3: TwwDBComboDlg;
    DBEdit8: TDBEdit;
    Label1: TLabel;
    wwDBComboDlg1: TwwDBComboDlg;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure wwDBComboDlg3CustomDlg(Sender: TObject);
    procedure wwDBComboDlg1CustomDlg(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPercComFunc: TfrmPercComFunc;

implementation

uses u_dmPP,FuncoesCliente, u_PadraoEdicao;

{$R *.dfm}

procedure TfrmPercComFunc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if not FinalFormulario(dmPP.cdsPercComFunc,' do Percentual de Comissão') then
    Action := caNone
 else
    begin
     Action := caFree;
     frmPercComFunc  := Nil;
    end;
end;

procedure TfrmPercComFunc.FormShow(Sender: TObject);
begin
 tmbEdicaoLista1.TtmbClassOwnerEspec := TFrmPadraoEdicao;
 tmbEdicaoLista1.TtmbFormOwnerEspec  := FrmPadraoEdicao;
end;

procedure TfrmPercComFunc.wwDBComboDlg1CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmPP.dsClasseVendedor,'CLASSEVENDEDORID', dmPP.cdsPedVendVendCLASSEVENDEDORID.AsString);
 ExecLoockupRetorno(dmPP.cdsPercComFunc,'CLASSEVENDEDORID','CLASSEVENDEDORID');
end;

procedure TfrmPercComFunc.wwDBComboDlg3CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmPP.dsTipoVenda,'TIPOVENDAID',dmPP.cdsPedVendTIPOVENDAID.AsString);
 ExecLoockupRetorno(dmPP.cdsPercComFunc,'TIPOVENDAID','TIPOVENDAID');
end;

end.
