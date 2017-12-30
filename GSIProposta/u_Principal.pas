unit u_Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, ToolWin, ActnList, ImgList, XPStyleActnCtrls,
  ActnMan, ActnCtrls, ActnMenus, XPMan, fcStatusBar;

type
  TfrmPrincipal = class(TForm)
    fcstbarStatus: TfcStatusBar;
    CoolBar1: TCoolBar;
    ActionMainMenuBar1: TActionMainMenuBar;
    ToolBar1: TToolBar;
    tbProposta: TToolButton;
    tbOS: TToolButton;
    ToolButton4: TToolButton;
    ToolButton1: TToolButton;
    ToolBar2: TToolBar;
    ToolBar3: TToolBar;
    tbSair: TToolButton;
    imglstMenu: TImageList;
    XPManifest1: TXPManifest;
    actmngPrincipal: TActionManager;
    actUsuario: TAction;
    actBiblioteca: TAction;
    actConfiguracao: TAction;
    actPesquisa: TAction;
    actIntegracao: TAction;
    Action1: TAction;
    actSair: TAction;
    actSobre: TAction;
    actGrupoProduto: TAction;
    actSubGrupo: TAction;
    actProduto: TAction;
    actUsuariosAtivos: TAction;
    actCEP: TAction;
    actRecalculo: TAction;
    actVisualizarPendentes: TAction;
    actVisualDesenvolvimento: TAction;
    actImpostosServico: TAction;
    actLimiteContribuicao: TAction;
    actPrestador: TAction;
    actRecibo: TAction;
    actRelPecaEmpenho: TAction;
    imglstBarraFerramenta: TImageList;
    actPedidoProposta: TAction;
    ToolButton2: TToolButton;
    procedure actSairExecute(Sender: TObject);
    procedure tbPropostaClick(Sender: TObject);
    procedure tbOSClick(Sender: TObject);
    procedure actPedidoPropostaExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses u_PedidoProposta, FuncoesCliente, FuncoesDSI, u_dmGSI, u_dmPP;

{$R *.dfm}

procedure TfrmPrincipal.actSairExecute(Sender: TObject);
begin
 close;
end;

procedure TfrmPrincipal.tbPropostaClick(Sender: TObject);
begin
 beep;
end;

procedure TfrmPrincipal.tbOSClick(Sender: TObject);
begin
 Beep
end;

procedure TfrmPrincipal.actPedidoPropostaExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actPedidoProposta.Caption, actPedidoProposta.Caption, True) then
    CriaEspecifico(TfrmPedidoProposta, frmPedidoProposta, dmPP.cdsProposta, dmPP.dsProposta, actPedidoProposta.Caption );
end;

procedure TfrmPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 // Tecla especial para sair quando o programa travar
 if CtrlDown then
    Halt(0);

 if ( Screen.FormCount > 1 ) then
    begin
     MessageDlg('Sistema não pode ser Finalizado, ainda há janelas abertas.', mtInformation,[mbOk], 0);
     Action := caNone;
    end
 else
    if MessageDlg('Confirma a saída do sistema ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
       begin
        pCnnMain.AppServer.ILogoutGSI( LogAcesso );
        Action := caFree;
       end
    else
       Action := caNone;
end;

procedure TfrmPrincipal.FormDestroy(Sender: TObject);
begin
 Halt(0);
end;

end.
