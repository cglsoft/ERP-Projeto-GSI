unit u_Principal;

interface

uses
  Forms, Dialogs, Menus, Classes, ActnList, XPStyleActnCtrls,
  ActnMan, ImgList, Controls, ComCtrls, ActnCtrls, ActnMenus, ToolWin,
  fcStatusBar,QRExport, QRPDFFilt, DBClient, OleCtrls, Messages,
  Windows, StdCtrls, SHDocVw, SysUtils;

type
  TfrmPrincipal = class(TForm)
    imglstMenu: TImageList;
    actmngPrincipal: TActionManager;
    actUsuario: TAction;
    actBiblioteca: TAction;
    actConfiguracao: TAction;
    actSair: TAction;
    actSobre: TAction;
    fcstbarStatus: TfcStatusBar;
    actCategoria: TAction;
    actEntidade: TAction;
    actGrupoProduto: TAction;
    actSubGrupo: TAction;
    actUsuariosAtivos: TAction;
    CoolBar1: TCoolBar;
    ActionMainMenuBar1: TActionMainMenuBar;
    ToolBar1: TToolBar;
    tbOS: TToolButton;
    ToolButton4: TToolButton;
    actSelectEmpresa: TAction;
    imglstBarraFerramenta: TImageList;
    actProduto: TAction;
    actCEP: TAction;
    actRecalculo: TAction;
    actFichaEstoque: TAction;
    actPedido: TAction;
    actEmissaoNotaFiscal: TAction;
    actRecebimentoEntrada: TAction;
    actEmissaoDocInterno: TAction;
    actDicionario: TAction;
    actPDE: TAction;
    actPDS: TAction;
    actIntegracao: TAction;
    actVisualizarPendentes: TAction;
    actEmpresa: TAction;
    actVisualDesenvolvimento: TAction;
    actPrestador: TAction;
    actImpostosServico: TAction;
    actLimiteContribuicao: TAction;
    actRecibo: TAction;
    actPesquisa: TAction;
    tbEstoque: TToolButton;
    ppmnuEstoque: TPopupMenu;
    MenuItem7: TMenuItem;
    SubGrupodeProdutos1: TMenuItem;
    GrupoProdutos1: TMenuItem;
    ToolBar2: TToolBar;
    ToolBar3: TToolBar;
    tbSair: TToolButton;
    tbPesquisasGerais: TToolButton;
    QRPDFFilter1: TQRPDFFilter;
    QRTextFilter1: TQRTextFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    actRegistroGSI: TAction;
    actRelLogisticaCubagem: TAction;
    NavigatorImages: TImageList;
    NavigatorHotImages: TImageList;
    WebBrowser1: TWebBrowser;
    URLs: TComboBox;
    actBackAction: TAction;
    actForwardAction: TAction;
    actStopAction: TAction;
    actRefreshAction: TAction;
    ToolButton3: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton8: TToolButton;
    actRelatorios: TAction;
    actBancoItau: TAction;
    actCfgPaginaImpressao: TAction;
    actImprimir: TAction;
    actVisualImpressao: TAction;
    actSkin: TAction;
    actRel0037: TAction;
    actPdsCall: TAction;
    actLocalEntr: TAction;
    procedure actUsuarioExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actUsuariosAtivosExecute(Sender: TObject);
    procedure actBibliotecaExecute(Sender: TObject);
    procedure actProdutoExecute(Sender: TObject);
    procedure actConfiguracaoExecute(Sender: TObject);
    procedure actDicionarioExecute(Sender: TObject);
    procedure actPedidoExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actSobreExecute(Sender: TObject);
    procedure actVisualizarPendentesExecute(Sender: TObject);
    procedure actVisualDesenvolvimentoExecute(Sender: TObject);
    procedure actPesquisaExecute(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure actRegistroGSIExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure WebBrowser1BeforeNavigate2(ASender: TObject;
      const pDisp: IDispatch; var URL, Flags, TargetFrameName, PostData,
      Headers: OleVariant; var Cancel: WordBool);
    procedure actBackActionExecute(Sender: TObject);
    procedure URLsClick(Sender: TObject);
    procedure URLsKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actForwardActionUpdate(Sender: TObject);
    procedure actForwardActionExecute(Sender: TObject);
    procedure actStopActionExecute(Sender: TObject);
    procedure actRefreshActionExecute(Sender: TObject);
    procedure actBackActionUpdate(Sender: TObject);
    procedure WebBrowser1StatusBar(ASender: TObject; StatusBar: WordBool);
    procedure actBancoItauExecute(Sender: TObject);
    procedure actCfgPaginaImpressaoExecute(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure actVisualImpressaoExecute(Sender: TObject);
    procedure actGrupoProdutoExecute(Sender: TObject);
    procedure actSubGrupoExecute(Sender: TObject);
    procedure actEntidadeExecute(Sender: TObject);
    procedure actCategoriaExecute(Sender: TObject);
    procedure actEmpresaExecute(Sender: TObject);
    procedure VisualizaNotaFiscalEntradaeSada1Click(Sender: TObject);
    procedure actPdsCallExecute(Sender: TObject);
    procedure actLocalEntrExecute(Sender: TObject);
    procedure tbOSClick(Sender: TObject);
  private
    { Private declarations }
    HistoryIndex: Integer;
    HistoryList: TStringList;
    UpdateCombo: Boolean;
    procedure FindAddress;
    procedure LoginPortal;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;
  root : string;
  path : string;


implementation

uses u_dmAS, FuncoesCliente, FuncoesDSI,u_PadraoPesquisa, u_PadraoEdicao,
  u_dmGSI, u_Usuario, u_UserConectado, u_Sobre, u_Pesquisa, u_RegistroGSI,
  u_dmEF, u_Produto, u_Entidade, u_VisualizaPedido, u_VisualizaNotaFiscal,
  u_VisualizaCall;
{$R *.dfm}

procedure TfrmPrincipal.LoginPortal;
var
  Flags : OleVariant;
  Usuario, Senha : String;
  wHTML : WideString;

begin
  UpdateCombo := True;
  case dmGSI.PortaoVisaoID of
  1 : begin
       Usuario := 'portal';
       Senha   := 'oracle10g'
      end;
  4 : begin
       Usuario := dmGsi.UsuarioAtivo;
       Senha   := dmGsi.Password;
      end;
  end;

 // WebBrowser1.Navigate( 'http://www.ativacompany.com.br', Flags, Flags, Flags, Flags);

end;

procedure TfrmPrincipal.tbOSClick(Sender: TObject);
begin
 if frmVisualizaCall = nil  then
   frmVisualizaCall := TfrmVisualizaCall.Create( Application );
 frmVisualizaCall.Show;
end;

procedure TfrmPrincipal.FindAddress;
var
  Flags: OLEVariant;
begin
  Flags := 0;
  UpdateCombo := True;
  WebBrowser1.Navigate( URLs.Text , Flags, Flags, Flags, Flags);
end;

procedure TfrmPrincipal.actUsuarioExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, Copy(actUsuario.Caption, 1, Pos('.',actUsuario.Caption)-1), Copy(actUsuario.Caption, 1, Pos('.',actUsuario.Caption)-1), True) then
    begin
     frmUsuario := TfrmUsuario.Create( Self );
     frmUsuario.ShowModal;
    end;
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

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
 HistoryIndex := -1;
 HistoryList := TStringList.Create;
end;

procedure TfrmPrincipal.FormDestroy(Sender: TObject);
var sFile : String;
begin
  HistoryList.Free;
  sFile := ExtractFilePath( Application.ExeName ) + 'EXPORT\GSI.HTML';

  if FileExists( sFile ) then
     DeleteFile( sFile );
end;

procedure TfrmPrincipal.actUsuariosAtivosExecute(Sender: TObject);
begin
 frmUserConectado := tfrmUserConectado.Create( Application );
 frmUserConectado.Show;
end;

procedure TfrmPrincipal.actBibliotecaExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, Copy(actBiblioteca.Caption, 1, Pos('.',actBiblioteca.Caption)-1), Copy(actBiblioteca.Caption, 1, Pos('.',actBiblioteca.Caption)-1), True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmAS.cdsDicionario, dmAS.dsDicionario, actBiblioteca.Caption);
end;

procedure TfrmPrincipal.actBackActionExecute(Sender: TObject);
begin
  URLs.Text := HistoryList[HistoryIndex - 1];
  FindAddress;
end;

procedure TfrmPrincipal.actBackActionUpdate(Sender: TObject);
begin
 if HistoryList.Count > 0 then
    actBackAction.Enabled := HistoryIndex > 0
 else
    actBackAction.Enabled := False;
end;

procedure TfrmPrincipal.actBancoItauExecute(Sender: TObject);
begin
 WebBrowser1.Navigate('www.itau.com.br');
end;

procedure TfrmPrincipal.actForwardActionExecute(Sender: TObject);
begin
  URLs.Text := HistoryList[HistoryIndex + 1];
  FindAddress;
end;

procedure TfrmPrincipal.actForwardActionUpdate(Sender: TObject);
begin
  if HistoryList.Count > 0 then
    actForwardAction.Enabled := HistoryIndex < HistoryList.Count - 1
  else
    actForwardAction.Enabled := False;
end;

procedure TfrmPrincipal.actGrupoProdutoExecute(Sender: TObject);
begin
  if CheckSenha( dmGsi.UsuarioAtivo, actGrupoProduto.Caption, actGrupoProduto.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmEF.cdsGrupo, dmEF.dsGrupo, actGrupoProduto.Caption);
end;

procedure TfrmPrincipal.actProdutoExecute(Sender: TObject);
var ParamPesquisa : string;
begin
 ParamPesquisa := 'ROWNUM = 1 ';
 GerarPesquisa( dmEF.cdsProduto, ParamPesquisa );

 if CheckSenha( dmGsi.UsuarioAtivo, actProduto.Caption, actProduto.Caption, True) then
    CriaEspecifico(TfrmProduto, frmProduto, dmEF.cdsProduto, dmEF.dsProduto, actProduto.Caption);
end;

procedure TfrmPrincipal.actCategoriaExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actCategoria.Caption, actCategoria.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmEF.cdsCategoria, dmEF.dsCategoria, actCategoria.Caption);
end;

procedure TfrmPrincipal.actCfgPaginaImpressaoExecute(Sender: TObject);
begin
 WBPrintWithDialog( WebBrowser1 );
end;

procedure TfrmPrincipal.actConfiguracaoExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, Copy(actConfiguracao.Caption, 1, Pos('.',actConfiguracao.Caption)-1), Copy(actConfiguracao.Caption, 1, Pos('.',actConfiguracao.Caption)-1), True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmAS.cdsConfig , dmAS.dsConfig, actConfiguracao.Caption);
end;

procedure TfrmPrincipal.actDicionarioExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actDicionario.Caption, actDicionario.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmAS.cdsDicionario, dmAS.dsDicionario, actDicionario.Caption);
end;

procedure TfrmPrincipal.actEmpresaExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actEmpresa.Caption, actEmpresa.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmEF.cdsEmpresa, dmEF.dsEmpresa, actEmpresa.Caption);
end;

procedure TfrmPrincipal.actEntidadeExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actEntidade.Caption, actEntidade.Caption, True) then
    CriaEspecifico(TfrmEntidade, frmEntidade, dmEF.cdsEntidade, dmEF.dsEntidade, actEntidade.Caption );
end;

procedure TfrmPrincipal.URLsClick(Sender: TObject);
begin
  FindAddress;
end;

procedure TfrmPrincipal.URLsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_Return then
     FindAddress;
 end;

procedure TfrmPrincipal.VisualizaNotaFiscalEntradaeSada1Click(Sender: TObject);
var ParamPesquisa : String;
begin
 // Filtro por empresa caso funcionário esteja associado a alguma empresa
 if dmGsi.EmpresaFuncId > 0 then
    ParamPesquisa := 'EF_NFE.EMPRESAID = ' + IntToStr( dmGsi.EmpresaFuncId ) + ' AND ';

 ParamPesquisa := ParamPesquisa + ' EF_NFE.DATAEMISSAOID >= ' +
                  QuotedStr( DateToStr( pCnnMain.AppServer.iServerDate ) );

 GerarPesquisa( dmEF.cdsNFE, ParamPesquisa );

 ParamPesquisa := '';

 // Filtro por empresa caso funcionário esteja associado a alguma empresa
 if dmGsi.EmpresaFuncId > 0 then
    ParamPesquisa := 'EF_NFS.EMPRESAID = ' + IntToStr( dmGsi.EmpresaFuncId ) + ' AND ';

 ParamPesquisa :=  ParamPesquisa + ' EF_NFS.DATAEMISSAOID >= ' +
                   QuotedStr( DateToStr( pCnnMain.AppServer.iServerDate ) );
 GerarPesquisa( dmEF.cdsNFS, ParamPesquisa );

 if frmVisualizaNotaFiscal = Nil  then
    frmVisualizaNotaFiscal := TfrmVisualizaNotaFiscal.Create( Application );
 frmVisualizaNotaFiscal.Show;

end;

procedure TfrmPrincipal.WebBrowser1BeforeNavigate2(ASender: TObject;
  const pDisp: IDispatch; var URL, Flags, TargetFrameName, PostData,
  Headers: OleVariant; var Cancel: WordBool);
var
  NewIndex: Integer;
begin
  NewIndex := HistoryList.IndexOf(URL);
  if NewIndex = -1 then
  begin
    { Remove entries in HistoryList between last address and current address }
    if (HistoryIndex >= 0) and (HistoryIndex < HistoryList.Count - 1) then
      while HistoryList.Count > HistoryIndex do
        HistoryList.Delete(HistoryIndex);
    HistoryIndex := HistoryList.Add(URL);
  end
  else
    HistoryIndex := NewIndex;
  if UpdateCombo then
  begin
    UpdateCombo := False;
    NewIndex := URLs.Items.IndexOf(URL);
    if NewIndex = -1 then
      URLs.Items.Insert(0, URL)
    else
      URLs.Items.Move(NewIndex, 0);
  end;
  URLs.Text := URL;
  fcstbarStatus.Panels[4].Text := URL;
end;

procedure TfrmPrincipal.WebBrowser1StatusBar(ASender: TObject;
  StatusBar: WordBool);
begin
 fcstbarStatus.Panels[4].Text :=  WebBrowser1.StatusText;
end;

procedure TfrmPrincipal.actPdsCallExecute(Sender: TObject);
var ParamPesquisa : string;
begin
 ParamPesquisa := 'ROWNUM = 0 ';
 GerarPesquisa( dmEF.cdsCall, ParamPesquisa );

 if frmVisualizaCall = nil  then
   frmVisualizaCall := TfrmVisualizaCall.Create( Application );
 frmVisualizaCall.Show;
end;

procedure TfrmPrincipal.actPedidoExecute(Sender: TObject);
begin
 if frmVisualizaPedido = nil  then
   frmVisualizaPedido := TfrmVisualizaPedido.Create( Application );
 frmVisualizaPedido.Show;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
 dmAS.cdsConfig.Open;
 EmpresaAtualId               := dmAS.cdsConfigEMPRESAID.AsInteger;
 fcstbarStatus.Panels[0].Text := dmAS.cdsConfigL_NOMEFANTASIA.Value;
 fcstbarStatus.Panels[2].Text := dmGsi.UsuarioAtivo;

 LoginPortal;

 if not CheckSenha( dmGsi.UsuarioAtivo, 'Internet', 'Atualizar URLs de navegação', False ) then
    URLs.Visible := False;

 actPdsCallExecute( Sender )  
end;

procedure TfrmPrincipal.actStopActionExecute(Sender: TObject);
begin
  WebBrowser1.Stop;
end;

procedure TfrmPrincipal.actSubGrupoExecute(Sender: TObject);
begin
  if CheckSenha( dmGsi.UsuarioAtivo, actSubGrupo.Caption, actSubGrupo.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmEF.cdsSubGrupo, dmEF.dsSubGrupo, actSubGrupo.Caption);
end;

procedure TfrmPrincipal.actSobreExecute(Sender: TObject);
begin
 frmSobre := TfrmSobre.Create( Self );
 frmSobre.ShowModal;
end;

procedure TfrmPrincipal.actVisualizarPendentesExecute(Sender: TObject);
begin
 VisualTelasPendentes( False );
end;

procedure TfrmPrincipal.actVisualDesenvolvimentoExecute(Sender: TObject);
begin
 VisualTelasPendentes( True );
end;

procedure TfrmPrincipal.actVisualImpressaoExecute(Sender: TObject);
begin
 WBPrintPreview( WebBrowser1 ) ;
end;

procedure TfrmPrincipal.actRefreshActionExecute(Sender: TObject);
begin
  FindAddress;
end;

procedure TfrmPrincipal.actPesquisaExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actPesquisa.Caption, actPesquisa.Caption, True) then
    begin
     if not Assigned( frmPesquisa ) then
        Application.CreateForm( TfrmPesquisa, frmPesquisa );
     frmPesquisa.Show;
    end;
end;

procedure TfrmPrincipal.actSairExecute(Sender: TObject);
begin
 Close;
end;

procedure TfrmPrincipal.actImprimirExecute(Sender: TObject);
begin
 WBPrintNoDialog( WebBrowser1 ) ;
end;

procedure TfrmPrincipal.actLocalEntrExecute(Sender: TObject);
begin
  if CheckSenha( dmGsi.UsuarioAtivo, actLocalEntr.Caption, actLocalEntr.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmEF.cdsLocalEntr, dmEF.dsLocalEntr, actLocalEntr.Caption);
end;

procedure TfrmPrincipal.actRegistroGSIExecute(Sender: TObject);
begin
 if not Assigned( frmRegistroGSI ) then
    frmRegistroGSI := TfrmRegistroGSI.Create(nil);
 frmRegistroGSI.Show;
end;



end.



