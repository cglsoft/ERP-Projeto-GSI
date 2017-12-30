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
    actObservacao: TAction;
    actUnidades: TAction;
    actBancos: TAction;
    actCargo: TAction;
    actCondPagto: TAction;
    actContaContabil: TAction;
    actDepartamento: TAction;
    actFeriado: TAction;
    actFilial: TAction;
    actImposto: TAction;
    actReceita: TAction;
    actServico: TAction;
    actSiglaNatOperacao: TAction;
    actOpPrestInterestadual: TAction;
    actContatoJapao: TAction;
    actDespachante: TAction;
    actIndice: TAction;
    actIndiceMes: TAction;
    actTermoPagto: TAction;
    actTipoProcesso: TAction;
    actCustoHoras: TAction;
    actAparelho: TAction;
    actDefeito: TAction;
    actMemoRDV: TAction;
    actOperacaoRDV: TAction;
    actTipoOS: TAction;
    actTipoOSCFOP: TAction;
    actUsuariosAtivos: TAction;
    CoolBar1: TCoolBar;
    ActionMainMenuBar1: TActionMainMenuBar;
    ToolBar1: TToolBar;
    tbtnEmpresas: TToolButton;
    tbOS: TToolButton;
    tbImportacao: TToolButton;
    tbRDV: TToolButton;
    ToolButton2: TToolButton;
    ToolButton4: TToolButton;
    ppupmnuImportacao: TPopupMenu;
    tbEmpresas: TToolButton;
    actSelectEmpresa: TAction;
    imglstBarraFerramenta: TImageList;
    actNatOperacao: TAction;
    actProduto: TAction;
    actListaPrecos: TAction;
    actCEP: TAction;
    actTipoCategoria: TAction;
    actRazaoExigencia: TAction;
    actFrequenciaProcesso: TAction;
    actRecalculo: TAction;
    actListaPreco: TAction;
    tbProposta: TToolButton;
    actCartaApresent: TAction;
    actCatalog: TAction;
    actTabelaPreco: TAction;
    actBonificacao: TAction;
    actCondPagtoProp: TAction;
    actPrazo: TAction;
    actValidade: TAction;
    actObsProp: TAction;
    actGarantia: TAction;
    actAssistTec: TAction;
    actInstalacao: TAction;
    ppupmnuProposta: TPopupMenu;
    abeladePreos1: TMenuItem;
    Proposta1: TMenuItem;
    ppupmnuFaturamento: TPopupMenu;
    NotaFiscaldeEntrada1: TMenuItem;
    ppupmnuAssistTec: TPopupMenu;
    OrdemdeServio1: TMenuItem;
    ProcessodeImportao1: TMenuItem;
    DeclaraodeImportao1: TMenuItem;
    actProposta: TAction;
    actFichaEstoque: TAction;
    actPedido: TAction;
    actEmissaoNotaFiscal: TAction;
    actRecebimentoEntrada: TAction;
    actEmissaoDocInterno: TAction;
    actOrdemServico: TAction;
    actContratoManutencao: TAction;
    actProcesso: TAction;
    actDeclaracao: TAction;
    actRecebImport: TAction;
    actDicionario: TAction;
    actPDE: TAction;
    actPDS: TAction;
    N1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    VisualizaNotaFiscalEntradaeSada1: TMenuItem;
    actNotafiscal: TAction;
    ppumnuDespesa: TPopupMenu;
    actDespesa: TAction;
    actHoras: TAction;
    DespesadeViagem1: TMenuItem;
    actDespesaExtra: TAction;
    actAdiantamento: TAction;
    actConta: TAction;
    DespesaExtra1: TMenuItem;
    actSolicRequi: TAction;
    N5: TMenuItem;
    HistAdiantDespExtra1: TMenuItem;
    OperacaodeRDV1: TMenuItem;
    MemoRDV1: TMenuItem;
    actIntegracao: TAction;
    Action1: TAction;
    actLocalChegada: TAction;
    actViaEmbarque: TAction;
    actVisualizarPendentes: TAction;
    actEmissaoDuplic: TAction;
    actEmissaoEtiqueta: TAction;
    N6: TMenuItem;
    EmissoDuplicata1: TMenuItem;
    EmissoEtiqueta1: TMenuItem;
    actEmpresa: TAction;
    actPecasTerceiro: TAction;
    actClassifPeca: TAction;
    AnliseClassifdePeas1: TMenuItem;
    N8: TMenuItem;
    ContratodeManutencao1: TMenuItem;
    actLogRDV: TAction;
    N9: TMenuItem;
    LogRDV1: TMenuItem;
    actVisualDesenvolvimento: TAction;
    actPrestador: TAction;
    actImpostosServico: TAction;
    actLimiteContribuicao: TAction;
    actRecibo: TAction;
    Aparelho1: TMenuItem;
    actLocalizacaoOS: TAction;
    actSolicReqHora: TAction;
    actInventario: TAction;
    Catlogo1: TMenuItem;
    tbBancoHoras: TToolButton;
    ppmnuBancoHoras: TPopupMenu;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem16: TMenuItem;
    Action2: TAction;
    actHistBancoHoras: TAction;
    actPesquisa: TAction;
    N10: TMenuItem;
    actRelPosFinanc: TAction;
    actPrecoTransf: TAction;
    actRelReceitas: TAction;
    actRelProdMercadorias: TAction;
    actRelNotas: TAction;
    actRelPosTerceiros: TAction;
    actRelCustoEntrSaidas: TAction;
    actRelInventario: TAction;
    actRelCtrProdEstoque: TAction;
    actRelPosEstoque: TAction;
    actCtrFisico: TAction;
    actPastaCliente: TAction;
    tbEstoque: TToolButton;
    ppmnuEstoque: TPopupMenu;
    MenuItem7: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem18: TMenuItem;
    SubGrupodeProdutos1: TMenuItem;
    GrupoProdutos1: TMenuItem;
    RecebimentoMercadoriaImportada1: TMenuItem;
    actTransfEspelhos: TAction;
    ransfernciadosEspelhos1: TMenuItem;
    N7: TMenuItem;
    actCorrecaoListaPreco: TAction;
    actNatJuridica: TAction;
    actImpRecebPeriodo: TAction;
    actTecWin: TAction;
    ToolBar2: TToolBar;
    ToolBar3: TToolBar;
    tbSair: TToolButton;
    actOrigemVenda: TAction;
    actTipoVenda: TAction;
    actTabFinanceira: TAction;
    actPedidoVenda: TAction;
    actHistFechComissao: TAction;
    actAnaliseVenda: TAction;
    actBasePagtoComissao: TAction;
    actProcessoImport: TAction;
    ppmnuAnaliseVenda: TPopupMenu;
    AnalisedeVenda1: TMenuItem;
    HistFechComisso1: TMenuItem;
    actClasseVendedor: TAction;
    tbPesquisasGerais: TToolButton;
    actPecaPendente: TAction;
    N11: TMenuItem;
    PeasPendentes1: TMenuItem;
    actConfigEleicao: TAction;
    actGrupoEleicao: TAction;
    actEleitor: TAction;
    actTipoEleicao: TAction;
    actHistVotacao: TAction;
    ppmnuEleicao: TPopupMenu;
    ConfiguraoEleio1: TMenuItem;
    GrupoEleio1: TMenuItem;
    N13: TMenuItem;
    Eleitor1: TMenuItem;
    ipodeEleio1: TMenuItem;
    Votao1: TMenuItem;
    actRelTipoProcesso: TAction;
    actVoto: TAction;
    N14: TMenuItem;
    Voto1: TMenuItem;
    N15: TMenuItem;
    actRelPecaEmpenho: TAction;
    actRecComVenda: TAction;
    RecebComissoVenda1: TMenuItem;
    actPerComRepr: TAction;
    PedidodeVenda1: TMenuItem;
    AcompanhamentodeImportao1: TMenuItem;
    ToolButton1: TToolButton;
    Action3: TAction;
    QRPDFFilter1: TQRPDFFilter;
    actCorretiva: TAction;
    actPreventiva: TAction;
    actVisualContrato: TAction;
    N16: TMenuItem;
    VisualizaContrato1: TMenuItem;
    QRTextFilter1: TQRTextFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    actVendedorResponsavel: TAction;
    actEmbarque: TAction;
    actClasseNivel: TAction;
    actReservaPecas: TAction;
    ReservadePeas1: TMenuItem;
    EmissoDocumentoInterno1: TMenuItem;
    actOcOperacional: TAction;
    actBudget: TAction;
    actNotasDev: TAction;
    actRegistroGSI: TAction;
    actImpostoServico: TAction;
    actMunicipioIBGE: TAction;
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
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    actBancoItau: TAction;
    actHoraCFG: TAction;
    BancodeHorasConfigurao1: TMenuItem;
    actCfgPaginaImpressao: TAction;
    actImprimir: TAction;
    actVisualImpressao: TAction;
    actPercComFunc: TAction;
    actSkin: TAction;
    actTermoContrato: TAction;
    actCfgHorasTrab: TAction;
    ConfiguraoHorasTrabalhas1: TMenuItem;
    actContratoAuto: TAction;
    CondiodePagto1: TMenuItem;
    PeasemTerceiro1: TMenuItem;
    N2: TMenuItem;
    actDemoCatalogo: TAction;
    DemoCatlogo1: TMenuItem;
    actIndContrato: TAction;
    actMotivoRecusa: TAction;
    actDocPendente: TAction;
    actVisualAcompPed: TAction;
    VisualAcompanhamentodePedidos1: TMenuItem;
    N12: TMenuItem;
    actRel0037: TAction;
    actImpostoRetido: TAction;
    actAcao: TAction;
    actFormaPagto: TAction;
    actTipoCobranca: TAction;
    actProjeto: TAction;
    actFinanceiro: TAction;
    actPortalAtualizacao: TAction;
    actTipoItem: TAction;
    actGeneroItem: TAction;
    ipoItem1: TMenuItem;
    GneroItem1: TMenuItem;
    actNfeMail: TAction;
    NfeeMail1: TMenuItem;
    actNomeProg: TAction;
    procedure actImpostoServicoExecute(Sender: TObject);
    procedure actUsuarioExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actUsuariosAtivosExecute(Sender: TObject);
    procedure actBibliotecaExecute(Sender: TObject);
    procedure actCategoriaExecute(Sender: TObject);
    procedure actEntidadeExecute(Sender: TObject);
    procedure actGrupoProdutoExecute(Sender: TObject);
    procedure actSubGrupoExecute(Sender: TObject);
    procedure actObservacaoExecute(Sender: TObject);
    procedure actUnidadesExecute(Sender: TObject);
    procedure actBancosExecute(Sender: TObject);
    procedure actCargoExecute(Sender: TObject);
    procedure actCondPagtoExecute(Sender: TObject);
    procedure actContaContabilExecute(Sender: TObject);
    procedure actDepartamentoExecute(Sender: TObject);
    procedure actFeriadoExecute(Sender: TObject);
    procedure actFilialExecute(Sender: TObject);
    procedure actImpostoExecute(Sender: TObject);
    procedure actReceitaExecute(Sender: TObject);
    procedure actServicoExecute(Sender: TObject);
    procedure actSiglaNatOperacaoExecute(Sender: TObject);
    procedure actOpPrestInterestadualExecute(Sender: TObject);
    procedure actContatoJapaoExecute(Sender: TObject);
    procedure actDespachanteExecute(Sender: TObject);
    procedure actIndiceExecute(Sender: TObject);
    procedure actIndiceMesExecute(Sender: TObject);
    procedure actTermoPagtoExecute(Sender: TObject);
    procedure actTipoProcessoExecute(Sender: TObject);
    procedure actCustoHorasExecute(Sender: TObject);
    procedure actAparelhoExecute(Sender: TObject);
    procedure actDefeitoExecute(Sender: TObject);
    procedure actMemoRDVExecute(Sender: TObject);
    procedure actOperacaoRDVExecute(Sender: TObject);
    procedure actTipoOSExecute(Sender: TObject);
    procedure actTipoOSCFOPExecute(Sender: TObject);
    procedure actSelectEmpresaExecute(Sender: TObject);
    procedure actProdutoExecute(Sender: TObject);
    procedure actNatOperacaoExecute(Sender: TObject);
    procedure actListaPrecosExecute(Sender: TObject);
    procedure actCEPExecute(Sender: TObject);
    procedure actTipoCategoriaExecute(Sender: TObject);
    procedure actRazaoExigenciaExecute(Sender: TObject);
    procedure actFrequenciaProcessoExecute(Sender: TObject);
    procedure actRecalculoExecute(Sender: TObject);
    procedure actCatalogExecute(Sender: TObject);
    procedure actTabelaPrecoExecute(Sender: TObject);
    procedure actCartaApresentExecute(Sender: TObject);
    procedure actBonificacaoExecute(Sender: TObject);
    procedure actCondPagtoPropExecute(Sender: TObject);
    procedure actPrazoExecute(Sender: TObject);
    procedure actValidadeExecute(Sender: TObject);
    procedure actObsPropExecute(Sender: TObject);
    procedure actGarantiaExecute(Sender: TObject);
    procedure actInstalacaoExecute(Sender: TObject);
    procedure actAssistTecExecute(Sender: TObject);
    procedure actListaPrecoExecute(Sender: TObject);
    procedure actPropostaExecute(Sender: TObject);
    procedure actProcessoExecute(Sender: TObject);
    procedure actDeclaracaoExecute(Sender: TObject);
    procedure actOrdemServicoExecute(Sender: TObject);
    procedure actConfiguracaoExecute(Sender: TObject);
    procedure actDicionarioExecute(Sender: TObject);
    procedure actContratoManutencaoExecute(Sender: TObject);
    procedure actPDEExecute(Sender: TObject);
    procedure actPDSExecute(Sender: TObject);
    procedure actPedidoExecute(Sender: TObject);
    procedure actDespesaExecute(Sender: TObject);
    procedure actHorasExecute(Sender: TObject);
    procedure actDespesaExtraExecute(Sender: TObject);
    procedure actAdiantamentoExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actContaExecute(Sender: TObject);
    procedure actSolicRequiExecute(Sender: TObject);
    procedure actIntegracaoExecute(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure actNotafiscalExecute(Sender: TObject);
    procedure actLocalChegadaExecute(Sender: TObject);
    procedure actViaEmbarqueExecute(Sender: TObject);
    procedure actSobreExecute(Sender: TObject);
    procedure actVisualizarPendentesExecute(Sender: TObject);
    procedure actFichaEstoqueExecute(Sender: TObject);
    procedure actEmpresaExecute(Sender: TObject);
    procedure actPecasTerceiroExecute(Sender: TObject);
    procedure actEmissaoNotaFiscalExecute(Sender: TObject);
    procedure ContratodeManutencao1Click(Sender: TObject);
    procedure AnliseClassifdePeas1Click(Sender: TObject);
    procedure actClassifPecaExecute(Sender: TObject);
    procedure actLogRDVExecute(Sender: TObject);
    procedure actVisualDesenvolvimentoExecute(Sender: TObject);
    procedure actImpostosServicoExecute(Sender: TObject);
    procedure actLimiteContribuicaoExecute(Sender: TObject);
    procedure actPrestadorExecute(Sender: TObject);
    procedure actReciboExecute(Sender: TObject);
    procedure actLocalizacaoOSExecute(Sender: TObject);
    procedure actSolicReqHoraExecute(Sender: TObject);
    procedure actInventarioExecute(Sender: TObject);
    procedure actHistBancoHorasExecute(Sender: TObject);
    procedure actPesquisaExecute(Sender: TObject);
    procedure actRecebimentoEntradaExecute(Sender: TObject);
    procedure actEmissaoDuplicExecute(Sender: TObject);
    procedure actEmissaoEtiquetaExecute(Sender: TObject);
    procedure actRecebImportExecute(Sender: TObject);
    procedure actPrecoTransfExecute(Sender: TObject);
    procedure actRelReceitasExecute(Sender: TObject);
    procedure actRelNotasExecute(Sender: TObject);
    procedure actRelProdMercadoriasExecute(Sender: TObject);
    procedure actRelPosTerceirosExecute(Sender: TObject);
    procedure actRelCustoEntrSaidasExecute(Sender: TObject);
    procedure actRelPosEstoqueExecute(Sender: TObject);
    procedure actRelCtrProdEstoqueExecute(Sender: TObject);
    procedure actCtrFisicoExecute(Sender: TObject);
    procedure actPastaClienteExecute(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure actRelPosFinancExecute(Sender: TObject);
    procedure actRelInventarioExecute(Sender: TObject);
    procedure actTransfEspelhosExecute(Sender: TObject);
    procedure actCorrecaoListaPrecoExecute(Sender: TObject);
    procedure actNatJuridicaExecute(Sender: TObject);
    procedure actImpRecebPeriodoExecute(Sender: TObject);
    procedure actTecWinExecute(Sender: TObject);
    procedure actHistFechComissaoExecute(Sender: TObject);
    procedure actAnaliseVendaExecute(Sender: TObject);
    procedure actBasePagtoComissaoExecute(Sender: TObject);
    procedure actProcessoImportExecute(Sender: TObject);
    procedure actClasseVendedorExecute(Sender: TObject);
    procedure actOrigemVendaExecute(Sender: TObject);
    procedure actTipoVendaExecute(Sender: TObject);
    procedure actTabFinanceiraExecute(Sender: TObject);
    procedure actPedidoVendaExecute(Sender: TObject);
    procedure actPecaPendenteExecute(Sender: TObject);
    procedure actConfigEleicaoExecute(Sender: TObject);
    procedure actGrupoEleicaoExecute(Sender: TObject);
    procedure actEleitorExecute(Sender: TObject);
    procedure actTipoEleicaoExecute(Sender: TObject);
    procedure actHistVotacaoExecute(Sender: TObject);
    procedure actRelTipoProcessoExecute(Sender: TObject);
    procedure actVotoExecute(Sender: TObject);
    procedure actRelPecaEmpenhoExecute(Sender: TObject);
    procedure actRecComVendaExecute(Sender: TObject);
    procedure actPerComReprExecute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure actCorretivaExecute(Sender: TObject);
    procedure actPreventivaExecute(Sender: TObject);
    procedure actVisualContratoExecute(Sender: TObject);
    procedure actEmissaoDocInternoExecute(Sender: TObject);
    procedure actVendedorResponsavelExecute(Sender: TObject);
    procedure actEmbarqueExecute(Sender: TObject);
    procedure actClasseNivelExecute(Sender: TObject);
    procedure actReservaPecasExecute(Sender: TObject);
    procedure actOcOperacionalExecute(Sender: TObject);
    procedure actBudgetExecute(Sender: TObject);
    procedure actNotasDevExecute(Sender: TObject);
    procedure actRegistroGSIExecute(Sender: TObject);
    procedure actMunicipioIBGEExecute(Sender: TObject);
    procedure actRelLogisticaCubagemExecute(Sender: TObject);
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
    procedure actRelatoriosExecute(Sender: TObject);
    procedure actBancoItauExecute(Sender: TObject);
    procedure actHoraCFGExecute(Sender: TObject);
    procedure actCfgPaginaImpressaoExecute(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure actVisualImpressaoExecute(Sender: TObject);
    procedure actPercComFuncExecute(Sender: TObject);
    procedure actTermoContratoExecute(Sender: TObject);
    procedure actCfgHorasTrabExecute(Sender: TObject);
    procedure actContratoAutoExecute(Sender: TObject);
    procedure actDemoCatalogoExecute(Sender: TObject);
    procedure actIndContratoExecute(Sender: TObject);
    procedure actMotivoRecusaExecute(Sender: TObject);
    procedure actDocPendenteExecute(Sender: TObject);
    procedure actVisualAcompPedExecute(Sender: TObject);
    procedure actRel0037Execute(Sender: TObject);
    procedure actAcaoExecute(Sender: TObject);
    procedure actFormaPagtoExecute(Sender: TObject);
    procedure actTipoCobrancaExecute(Sender: TObject);
    procedure actProjetoExecute(Sender: TObject);
    procedure actImpostoRetidoExecute(Sender: TObject);
    procedure actFinanceiroExecute(Sender: TObject);
    procedure actPortalAtualizacaoExecute(Sender: TObject);
    procedure actTipoItemExecute(Sender: TObject);
    procedure actGeneroItemExecute(Sender: TObject);
    procedure actNfeMailExecute(Sender: TObject);
    procedure actNomeProgExecute(Sender: TObject);
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

uses u_dmAS, u_dmEF, u_dmIT, u_dmOs, u_dmRD, u_dmGR, FuncoesCliente, FuncoesDSI,
     u_SelecionarEmpresa, u_Declaracao, u_Processo, u_Produto, u_NaturezaOp,
     u_UserConectado, u_Cep,  u_RecalculaListaPreco,
     u_ListaPreco, u_dmPP, u_TabelaPreco, u_Usuario, u_Proposta,
     u_PadraoPesquisa, u_dmCM, u_TipoOs, u_Aparelho, u_Defeito,  u_OS,
     u_PadraoEdicao, u_Contrato, u_PDE, u_dmGSI, u_PDS,
     u_VisualizaPedido, u_VisualizaNotaFiscal, u_RDV, u_Hora, u_Adiantamento,
     u_Memo, u_RDVSolicitacao, u_Integracao, u_SincronismoOFFLine,
     u_Sobre, u_FichaEstoque,
     u_VisualizaTerceiro, u_EmissaoNotaFiscal, u_OSClassifPeca, u_dmRS,
     u_HoraSolicitacao, u_Inventario, u_Pesquisa, u_RecebimentoEntrada,
  u_EmissaoEtiqueta, u_EmissaoDuplicata, u_RecebimentoImport,
  u_PrecoTransferencia, u_0011, u_0013, u_0014, u_0017, u_0020, u_0019,
  u_0021, u_PastaCliente, u_0002, u_Entidade, u_0006, u_0018,
  u_ParRdvDataMesAberto, u_ParRelLD, u_PedVenda, u_AnaliseVenda,u_0022,
  u_Voto, u_0023, u_ProcessoImp, u_0033, u_VisualizaContrato,
  u_EmissaoDocInterno, u_0034, u_ClasseNivel, u_VisualReservaPeca,
  u_RegistroGSI, u_0036, u_PercComFunc, u_VisualizaPedVend,
  u_ContratoAuto, u_DemoCatalogo, u_VisualizaAcompPed, u_0037, u_dmFI, u_FI,
  u_PortalAtualizacao;

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


 case dmGSI.PortaoVisaoID of
 0 : WebBrowser1.Navigate( 'http://dsi', Flags, Flags, Flags, Flags);
 9 :
 else
    begin
     wHTML := SearchAndReplace( dmAS.cdsConfigHTMLPORTAL.AsWideString, 'cglsoft',Usuario );
     wHTML := SearchAndReplace( wHTML, 'claudio', Senha );

     StringToFile( wHTML, ExtractFilePath( Application.ExeName ) + 'EXPORT\GSI.HTML' );

     WebBrowser1.Navigate( WideString( ExtractFilePath( Application.ExeName ) + 'EXPORT\GSI.HTML' ), Flags, Flags, Flags, Flags);
    end
 end;

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

procedure TfrmPrincipal.actCategoriaExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actCategoria.Caption, actCategoria.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmEF.cdsCategoria, dmEF.dsCategoria, actCategoria.Caption);
end;

procedure TfrmPrincipal.actEntidadeExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actEntidade.Caption, actEntidade.Caption, True) then
    CriaEspecifico(TfrmEntidade, frmEntidade, dmEF.cdsEntidade, dmEF.dsEntidade, actEntidade.Caption );
end;

procedure TfrmPrincipal.actRelLogisticaCubagemExecute(Sender: TObject);
begin
 if not Assigned( frm0036 ) then
    Application.CreateForm( Tfrm0036,frm0036 );
 frm0036.Show;
end;

procedure TfrmPrincipal.actGrupoProdutoExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actGrupoProduto.Caption, actGrupoProduto.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmEF.cdsGrupo, dmEF.dsGrupo, actGrupoProduto.Caption);
end;

procedure TfrmPrincipal.actSubGrupoExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actSubGrupo.Caption, actSubGrupo.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmEF.cdsSubGrupo, dmEF.dsSubGrupo, actSubGrupo.Caption);
end;

procedure TfrmPrincipal.actObservacaoExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actObservacao.Caption, actObservacao.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, frmPadraoEdicao, dmEF.cdsObservacao , dmEF.dsObservacao, actObservacao.Caption );
end;

procedure TfrmPrincipal.actUnidadesExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actUnidades.Caption, actUnidades.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, frmPadraoEdicao, dmEF.cdsUnidade , dmEF.dsUnidade, actUnidades.Caption );
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

procedure TfrmPrincipal.actBancosExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actBancos.Caption, actBancos.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, frmPadraoEdicao, dmEF.cdsBanco , dmEF.dsBanco, actBancos.Caption );
end;

procedure TfrmPrincipal.actCargoExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actCargo.Caption, actCargo.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, frmPadraoEdicao, dmEF.cdsCargo , dmEF.dsCargo, actCargo.Caption );
end;

procedure TfrmPrincipal.actCondPagtoExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actCondPagto.Caption, actCondPagto.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmEF.cdsCondPagto , dmEF.dsCondPagto, actCondPagto.Caption );
end;

procedure TfrmPrincipal.actContaContabilExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actContaContabil.Caption, actContaContabil.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmEF.cdsContaContabil , dmEF.dsContaContabil, actContaContabil.Caption );
end;

procedure TfrmPrincipal.actDepartamentoExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actDepartamento.Caption, actDepartamento.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmEF.cdsDepartamento , dmEF.dsDepartamento, actDepartamento.Caption);
end;

procedure TfrmPrincipal.actFeriadoExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actFeriado.Caption, actFeriado.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmRD.cdsFeriado , dmRD.dsFeriado, actFeriado.Caption);
end;

procedure TfrmPrincipal.actFilialExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actFilial.Caption, actFilial.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmEF.cdsFilial , dmEF.dsFilial, actFilial.Caption);
end;

procedure TfrmPrincipal.actFinanceiroExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actFinanceiro.Caption, actFinanceiro.Caption, True ) then
    CriaEspecifico( TfrmFI, frmFI, dmFI.cdsFI, dmFI.dsFI , actFinanceiro.Caption);
end;

procedure TfrmPrincipal.actFormaPagtoExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actFormaPagto.Caption, actFormaPagto.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmFI.cdsFormaPagto , dmFI.dsFormaPagto, actFormaPagto.Caption);
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

procedure TfrmPrincipal.actImpostoExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actImposto.Caption, actImposto.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmEF.cdsImposto , dmEF.dsImposto, actImposto.Caption);
end;

procedure TfrmPrincipal.actImpostoRetidoExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actImpostoRetido.Caption, actImpostoRetido.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmFI.cdsImpostoRetido , dmFI.dsImpostoRetido, actImpostoRetido.Caption);
end;

procedure TfrmPrincipal.actImpostoServicoExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actImpostoServico.Caption, actImpostoServico.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmEF.cdsImpostoServico , dmEF.dsImpostoServico, actImpostoServico.Caption);
end;

procedure TfrmPrincipal.actReceitaExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actReceita.Caption, actReceita.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmEF.cdsReceita , dmEF.dsReceita, actReceita.Caption);
end;

procedure TfrmPrincipal.actServicoExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actServico.Caption, actServico.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmEF.cdsServico , dmEF.dsServico, actServico.Caption);
end;

procedure TfrmPrincipal.actSiglaNatOperacaoExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actSiglaNatOperacao.Caption, actSiglaNatOperacao.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmEF.cdsSiglaNatureza, dmEF.dsSiglaNatureza, actSiglaNatOperacao.Caption );
end;

procedure TfrmPrincipal.actOpPrestInterestadualExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actOpPrestInterestadual.Caption, actOpPrestInterestadual.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmEF.cdsOpPrestInterestadual , dmEF.dsOpPrestInterestadual, actOpPrestInterestadual.Caption );
end;

procedure TfrmPrincipal.actContatoJapaoExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actContatoJapao.Caption, actContatoJapao.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmIT.cdsContatoJapao , dmIT.dsContatoJapao, actContatoJapao.Caption);
end;

procedure TfrmPrincipal.actDespachanteExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actDespachante.Caption, actDespachante.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmIT.cdsDespachante , dmIT.dsDespachante, actDespachante.Caption);
end;

procedure TfrmPrincipal.actIndContratoExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actIndContrato.Caption, actIndContrato.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmCM.cdsIndContrato , dmCM.dsIndContrato, actIndContrato.Caption);
end;

procedure TfrmPrincipal.actIndiceExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actIndice.Caption, actIndice.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmIT.cdsIndice , dmIT.dsIndice, actIndice.Caption);
end;

procedure TfrmPrincipal.actIndiceMesExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actIndiceMes.Caption, actIndiceMes.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmIT.cdsIndiceMes , dmIT.dsIndiceMes, actIndiceMes.Caption);
end;

procedure TfrmPrincipal.actTermoContratoExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actTermoContrato.Caption, actTermoContrato.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmCM.cdsTermoContrato , dmCM.dsTermoContrato,  actTermoContrato.Caption);
end;

procedure TfrmPrincipal.actTermoPagtoExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actTermoPagto.Caption, actTermoPagto.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmIT.cdsTermoPagto , dmIT.dsTermoPagto,  actTermoPagto.Caption);
end;

procedure TfrmPrincipal.actTipoProcessoExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actTipoProcesso.Caption, actTipoProcesso.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmIT.cdsTipoProcesso , dmIT.dsTipoProcesso, actTipoProcesso.Caption);
end;

procedure TfrmPrincipal.actCustoHorasExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actCustoHoras.Caption, actCustoHoras.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmOS.cdsCustoHora, dmOS.dsCustoHora, actCustoHoras.Caption);
end;

procedure TfrmPrincipal.actAparelhoExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actAparelho.Caption, actAparelho.Caption, True) then
    CriaEspecifico(TfrmAparelho,frmAparelho,dmos.cdsAparelho,dmos.dsAparelho, actAparelho.Caption);
end;

procedure TfrmPrincipal.actDefeitoExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actDefeito.Caption, actDefeito.Caption, True) then
    CriaEspecifico(TfrmDefeito,frmDefeito,dmOs.cdsDefeito,dmOs.dsDefeito, 'Defeito');
end;

procedure TfrmPrincipal.actDemoCatalogoExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actDemoCatalogo.Caption, actDemoCatalogo.Caption, True) then
    CriaEspecifico(TfrmDemoCatalogo, frmDemoCatalogo, dmOS.cdsDemoCatalogo, dmOS.dsDemoCatalogo, actDemoCatalogo.Caption);
end;

procedure TfrmPrincipal.actMemoRDVExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actMemoRDV.Caption, actMemoRDV.Caption, True) then
    CriaEspecifico(TFrmMemo, FrmMemo, dmRD.cdsMemo , dmRD.dsMemo, actMemoRDV.Caption);
end;

procedure TfrmPrincipal.actMotivoRecusaExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actMotivoRecusa.Caption, actMotivoRecusa.Caption, True) then
    CriaEspecifico(TfrmPadraoEdicao, FrmPadraoEdicao, dmPP.cdsMotivoRecusa, dmPP.dsMotivoRecusa, actMotivoRecusa.Caption);
end;

procedure TfrmPrincipal.actMunicipioIBGEExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actMunicipioIBGE.Caption, actMunicipioIBGE.Caption, True) then
    CriaEspecifico(TfrmPadraoEdicao, FrmPadraoEdicao, dmEF.cdsMunicipioIBGE, dmEF.dsMunicipioIBGE, actMunicipioIBGE.Caption);
end;

procedure TfrmPrincipal.actOperacaoRDVExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actOperacaoRDV.Caption, actOperacaoRDV.Caption, True) then
    CriaEspecifico(TfrmPadraoEdicao, FrmPadraoEdicao, dmRD.cdsOperacao, dmRD.dsOperacao, actOperacaoRDV.Caption);
end;

procedure TfrmPrincipal.actTipoOSExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actTipoOS.Caption, actTipoOS.Caption, True) then
    CriaEspecifico(TfrmTipoOs,frmTipoOs,dmOs.cdsTipoOS,dmos.dsTipoOS, actTipoOS.Caption);
end;

procedure TfrmPrincipal.actTipoOSCFOPExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actTipoOSCFOP.Caption, actTipoOSCFOP.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmOS.cdsTipoOsCfop , dmOS.dsTipoOsCfop, actTipoOSCFOP.Caption);
end;

procedure TfrmPrincipal.actSelectEmpresaExecute(Sender: TObject);
begin
 if frmSelecionarEmpresa = nil then
    frmSelecionarEmpresa := TfrmSelecionarEmpresa.CreateForm(DataInspector, dmEF.dsEmpresa);
 frmSelecionarEmpresa.Show;
end;

procedure TfrmPrincipal.actProdutoExecute(Sender: TObject);
var ParamPesquisa : String;
begin
 ParamPesquisa := 'ROWNUM = 1 ';
 GerarPesquisa( dmEF.cdsProduto, ParamPesquisa );

 if CheckSenha( dmGsi.UsuarioAtivo, actProduto.Caption, actProduto.Caption, True) then
    CriaEspecifico(TfrmProduto, frmProduto, dmEF.cdsProduto, dmEF.dsProduto, actProduto.Caption);
end;

procedure TfrmPrincipal.actProjetoExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actProjeto.Caption, actProjeto.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmFI.cdsProjeto , dmFI.dsProjeto, actProjeto.Caption);
end;

procedure TfrmPrincipal.actNatOperacaoExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actNatOperacao.Caption, actNatOperacao.Caption, True) then
    CriaEspecifico(TfrmNaturezaOp, frmNaturezaOp, dmEF.cdsNaturezaOp , dmEF.dsNaturezaOp, actNatOperacao.Caption );
end;

procedure TfrmPrincipal.actNfeMailExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actNfeMail.Caption, actNfeMail.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmEF.cdsNfEmail , dmEF.dsNfEmail, actNfeMail.Caption);
end;

procedure TfrmPrincipal.actListaPrecosExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actListaPrecos.Caption, actListaPrecos.Caption, True) then
    CriaEspecifico(TfrmListaPreco, frmListaPreco, dmIT.cdsListaPreco , dmIT.dsListaPreco, actListaPrecos.Caption );
end;

procedure TfrmPrincipal.actCEPExecute(Sender: TObject);
begin
 if frmCEP = nil  then
    frmCEP := TfrmCEP.Create( Application );
 frmCEP.Show;
end;

procedure TfrmPrincipal.actCfgHorasTrabExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actCfgHorasTrab.Caption, actCfgHorasTrab.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmRD.cdsHorasCfgTrab , dmRD.dsHorasCfgTrab, actCfgHorasTrab.Caption);
end;

procedure TfrmPrincipal.actCfgPaginaImpressaoExecute(Sender: TObject);
begin
 WBPrintWithDialog( WebBrowser1 );
end;

procedure TfrmPrincipal.actTipoCategoriaExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actTipoCategoria.Caption, actTipoCategoria.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmIT.cdsTipoCategoria , dmIT.dsTipoCategoria, actTipoCategoria.Caption);
end;

procedure TfrmPrincipal.actTipoCobrancaExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actTipoCobranca.Caption, actTipoCobranca.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmFI.cdsTipoCobranca , dmFI.dsTipoCobranca, actTipoCobranca.Caption);
end;

procedure TfrmPrincipal.actRazaoExigenciaExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actRazaoExigencia.Caption, actRazaoExigencia.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmIT.cdsRazaoExigencia , dmIT.dsRazaoExigencia, actRazaoExigencia.Caption);
end;

procedure TfrmPrincipal.actFrequenciaProcessoExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actFrequenciaProcesso.Caption, actFrequenciaProcesso.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmIT.cdsFrequencia , dmIT.dsFrequencia, actFrequenciaProcesso.Caption);
end;

procedure TfrmPrincipal.actRecalculoExecute(Sender: TObject);
begin
 frmRecalculaListaPreco := TfrmRecalculaListaPreco.Create( Application );
 frmRecalculaListaPreco.ShowModal;
end;

procedure TfrmPrincipal.actCatalogExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actCatalog.Caption, actCatalog.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmPP.cdsCatalogo , dmPP.dsCatalogo, actCatalog.Caption );
end;

procedure TfrmPrincipal.actTabelaPrecoExecute(Sender: TObject);
var ParamPesquisa : String;
begin
 ParamPesquisa := 'ROWNUM = 1 ';
 GerarPesquisa( dmPP.cdsEquipamento, ParamPesquisa );

 if CheckSenha( dmGsi.UsuarioAtivo, actTabelaPreco.Caption, actTabelaPreco.Caption, true) then
    CriaEspecifico(TfrmTabelaPreco, frmTabelaPreco, dmPP.cdsEquipamento, dmPP.dsEquipamento, actTabelaPreco.Caption);
end;

procedure TfrmPrincipal.actCartaApresentExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actCartaApresent.Caption, actCartaApresent.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmPP.cdsCartaApresent, dmPP.dsCartaApresent, actCartaApresent.Caption);
end;

procedure TfrmPrincipal.actBonificacaoExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actBonificacao.Caption, actBonificacao.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmPP.cdsBonificacao, dmPP.dsBonificacao, actBonificacao.Caption );
end;

procedure TfrmPrincipal.actCondPagtoPropExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actCondPagtoProp.Caption, actCondPagtoProp.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmPP.cdsCondPagtoProp, dmPP.dsCondPagtoProp, actCondPagtoProp.Caption);
end;

procedure TfrmPrincipal.actPrazoExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actPrazo.Caption, actPrazo.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmPP.cdsPrazo, dmPP.dsPrazo, actPrazo.Caption);
end;

procedure TfrmPrincipal.actValidadeExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actValidade.Caption, actValidade.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmPP.cdsValidade, dmPP.dsValidade, actValidade.Caption);
end;

procedure TfrmPrincipal.actObsPropExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actObsProp.Caption, actObsProp.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmPP.cdsObsProp, dmPP.dsObsProp, actObsProp.Caption);
end;

procedure TfrmPrincipal.actGarantiaExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actGarantia.Caption, actGarantia.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmPP.cdsGarantia, dmPP.dsGarantia, actGarantia.Caption);
end;

procedure TfrmPrincipal.actInstalacaoExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actInstalacao.Caption, actInstalacao.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmPP.cdsInstalacao, dmPP.dsInstalacao, actInstalacao.Caption);
end;

procedure TfrmPrincipal.actAssistTecExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actAssistTec.Caption, actAssistTec.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmPP.cdsAssistTec, dmPP.dsAssistTec, actAssistTec.Caption);
end;

procedure TfrmPrincipal.actListaPrecoExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actListaPreco.Caption, actListaPreco.Caption, True) then
    CriaEspecifico(TfrmListaPreco, frmListaPreco, dmIT.cdsListaPreco, dmIT.dsListaPreco, actListaPreco.Caption );
end;

procedure TfrmPrincipal.actPropostaExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actProposta.Caption, actProposta.Caption, True) then
    CriaEspecifico(TfrmProposta, frmProposta, dmPP.cdsProposta, dmPP.dsProposta, actProposta.Caption );
end;

procedure TfrmPrincipal.actProcessoExecute(Sender: TObject);
var ParamPesquisa : String;
begin
 ParamPesquisa := ' IT_PROCESSO.DATAPROCESSOID >= ' +  QuotedStr( DateToStr( pCnnMain.AppServer.iServerDate - 30 ) );

 GerarPesquisa( dmIT.cdsProcesso, ParamPesquisa );

 if CheckSenha( dmGsi.UsuarioAtivo, actProcesso.Caption, actProcesso.Caption, True) then
    CriaEspecifico(TfrmProcesso, frmProcesso, dmIT.cdsProcesso, dmIT.dsProcesso, actProcesso.Caption );
end;

procedure TfrmPrincipal.actDeclaracaoExecute(Sender: TObject);
var ParamPesquisa : String;
begin
 ParamPesquisa := ' IT_DECLARACAO.DATAREGISTRO >= ' +  QuotedStr( DateToStr( pCnnMain.AppServer.iServerDate - 30 ) );

 GerarPesquisa( dmIT.cdsDeclaracao, ParamPesquisa );

 if CheckSenha( dmGsi.UsuarioAtivo, actDeclaracao.Caption, actDeclaracao.Caption, True) then
    CriaEspecifico(TfrmDeclaracao, frmDeclaracao, dmIT.cdsDeclaracao, dmIT.dsDeclaracao, actDeclaracao.Caption );
end;

procedure TfrmPrincipal.actOrdemServicoExecute(Sender: TObject);
var ParamPesquisa : String;

 procedure VerificaPecas;
 var
  iSQL : String;
  cds  : TClientDataSet;
 begin
  cds := nil;
  iSQL := 'SELECT OS_OSTERCEIRO.EMPRESAID'+
          '  FROM OS_OS,'+
          '       OS_OSTERCEIRO,'+
          '       EF_ENTIDADE'+
          ' WHERE OS_OS.OSID = OS_OSTERCEIRO.OSID AND'+
          '       EF_ENTIDADE.FILIALID = OS_OS.FILIALID AND'+
          '       EF_ENTIDADE.ENTIDADEID = '+ IntToStr( dmGsi.FuncionarioId );

  try
   ExecDynamicProvider(-1,iSQL,cds );

   if not cds.isEmpty then
      MessageDlg( 'Existem peças em poder da Matriz / Filial pendentes de retorno. ' + #13
                   + ' Normalize está situação ou justifique a demora na entrega das peças.',mtWarning,[mbOK], 0);
  finally
   FreeAndNil( cds );
  end;

end;

begin
 if not CheckSenha( dmGsi.UsuarioAtivo,actPecasTerceiro.Caption ,actPecasTerceiro.Caption, False ) then
    VerificaPecas;

 if CheckSenha( dmGsi.UsuarioAtivo, actOrdemServico.Caption, 'Filtro de OS Offline ', False ) then
    begin
     ParamPesquisa := ' OS_OS.STATUS <> ''F'' ' +
                      ' AND OS_OS.DATAABERTURA >= ' +  QuotedStr( '01/01/2007' );
    end
 else
    begin
     ParamPesquisa := ' OS_OS.FILIALID = ' + IntToStr( dmGsi.PadraoFilialId ) +
                      ' AND OS_OS.DATAABERTURA >= ' +  QuotedStr( DateToStr( pCnnMain.AppServer.iServerDate - 5 ) );
    end;

 GerarPesquisa( dmOS.cdsOs, ParamPesquisa );

 if CheckSenha( dmGsi.UsuarioAtivo, actOrdemServico.Caption, actOrdemServico.Caption, False ) then
    CriaEspecifico( TfrmOs, frmOs, dmOs.cdsOs, dmOs.dsOs , actOrdemServico.Caption);
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

procedure TfrmPrincipal.actDocPendenteExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actDocPendente.Caption, actDocPendente.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmPP.cdsDocPendente, dmPP.dsDocPendente, actDocPendente.Caption);
end;

procedure TfrmPrincipal.actContratoAutoExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actContratoAuto.Caption, actContratoAuto.Caption, True) then
    begin
     if not Assigned( frmContratoAuto ) then
        Application.CreateForm( TfrmContratoAuto, frmContratoAuto );
     frmContratoAuto.Show;
    end;
end;

procedure TfrmPrincipal.actContratoManutencaoExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actContratoManutencao.Caption, actContratoManutencao.Caption, true) then
    CriaEspecifico( TfrmContrato, frmContrato, dmCM.cdsContrato, dmCM.dsContrato , actContratoManutencao.Caption);
end;

procedure TfrmPrincipal.actPDEExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actPDE.Caption, actPDE.Caption, true) then
    CriaEspecifico(TFrmPDE, FrmPDE, dmEF.cdsPde, dmEF.dsPde, actPDE.Caption);
end;

procedure TfrmPrincipal.actPDSExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actPDS.Caption, actPDS.Caption, true) then
    CriaEspecifico(TFrmPDS, FrmPDS, dmEF.cdsPds, dmEF.dsPds, actPDS.Caption);
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

procedure TfrmPrincipal.actPedidoExecute(Sender: TObject);
begin
 if frmVisualizaPedido = nil  then
    frmVisualizaPedido := TfrmVisualizaPedido.Create( Application );
 frmVisualizaPedido.Show;
end;

procedure TfrmPrincipal.actDespesaExecute(Sender: TObject);
var ParamPesquisa : String;
begin
 ParamPesquisa := ' ROWNUM <= 10';

 GerarPesquisa( dmRD.cdsRdv, ParamPesquisa );

 if CheckSenha( dmGsi.UsuarioAtivo, actDespesa.Caption, actDespesa.Caption, true) then
    CriaEspecifico( TfrmRdv, frmRdv, dmRD.cdsRdv,dmRD.dsRdv,actDespesa.Caption );
end;

procedure TfrmPrincipal.actHoraCFGExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actHoraCFG.Caption, actHoraCFG.Caption, True) then
    CriaEspecifico( TfrmPadraoEdicao, frmPadraoEdicao , dmRD.cdsHoraCFG,dmRD.dsHoraCFG,actHoraCFG.Caption );
end;

procedure TfrmPrincipal.actHorasExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actHoras.Caption, actHoras.Caption, true) then
    CriaEspecifico( TfrmHora, frmHora , dmRD.cdsHora,dmRD.dsHora,actHoras.Caption );
end;

procedure TfrmPrincipal.actDespesaExtraExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actDespesaExtra.Caption, actDespesaExtra.Caption, true) then
    CriaEspecifico( TfrmHora, frmHora , dmRD.cdsHora,dmRD.dsHora,actHoras.Caption );
end;

procedure TfrmPrincipal.actAcaoExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actAcao.Caption, actAcao.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmFI.cdsAcao , dmFI.dsAcao, actAcao.Caption);
end;

procedure TfrmPrincipal.actAdiantamentoExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actAdiantamento.Caption, actAdiantamento.Caption, true) then
    CriaEspecifico( TfrmAdiantamento, frmAdiantamento , dmRD.cdsAdiantamento,dmRD.dsAdiantamento, actAdiantamento.Caption );
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
end;

procedure TfrmPrincipal.actContaExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actConta.Caption, actConta.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmIT.cdsConta , dmIT.dsConta, actConta.Caption);
end;

procedure TfrmPrincipal.actSolicRequiExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actSolicRequi.Caption, actSolicRequi.Caption, True) then
    begin
     if not Assigned( frmRDVSolicitacao ) then
        begin
         Application.CreateForm( TfrmRDVSolicitacao, frmRDVSolicitacao );

         frmRDVSolicitacao.FFiltroLiberado := True;
        end;
     frmRDVSolicitacao.Show;
    end;
end;

procedure TfrmPrincipal.actStopActionExecute(Sender: TObject);
begin
  WebBrowser1.Stop;
end;

procedure TfrmPrincipal.actIntegracaoExecute(Sender: TObject);
begin
 frmIntegracao := TfrmIntegracao.Create(self);
 frmIntegracao.Show;
end;

procedure TfrmPrincipal.Action1Execute(Sender: TObject);
begin
 frmSincronismoOFFLine := TfrmSincronismoOFFLine.Create( Self );
 frmSincronismoOFFLine.Show;
end;

procedure TfrmPrincipal.actNomeProgExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actNomeProg.Caption, actNomeProg.Caption, True) then
    CriaEspecifico(TfrmPadraoEdicao, frmPadraoEdicao, dmGR.cdsNomeProg, dmGR.dsNomeProg, actNomeProg.Caption);
end;

procedure TfrmPrincipal.actNotafiscalExecute(Sender: TObject);
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

procedure TfrmPrincipal.actLocalChegadaExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actLocalChegada.Caption, actLocalChegada.Caption, True) then
    CriaEspecifico(TfrmPadraoEdicao, frmPadraoEdicao, dmIT.cdsLocalChegada, dmIT.dsLocalChegada, actLocalChegada.Caption);
end;

procedure TfrmPrincipal.actViaEmbarqueExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actViaEmbarque.Caption, actViaEmbarque.Caption, True) then
    CriaEspecifico(TfrmPadraoEdicao, frmPadraoEdicao, dmIT.cdsViaEmbarque, dmIT.dsViaEmbarque, actViaEmbarque.Caption);
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

procedure TfrmPrincipal.actFichaEstoqueExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actFichaEstoque.Caption, actFichaEstoque.Caption, True) then
    begin
     if not Assigned( frmFichaEstoque ) then
        Application.CreateForm( TfrmFichaEstoque, frmFichaEstoque );
     frmFichaEstoque.show;
    end;
end;

procedure TfrmPrincipal.actEmpresaExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actEmpresa.Caption, actEmpresa.Caption, True) then
    CriaEspecifico(TfrmPadraoEdicao, frmPadraoEdicao, dmEF.cdsEmpresa, dmEF.dsEmpresa, actEmpresa.Caption);
end;

procedure TfrmPrincipal.actPecasTerceiroExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo,actPecasTerceiro.Caption,actPecasTerceiro.Caption,True ) then
    if frmVisualizaTerceiro = nil  then
       begin
        frmVisualizaTerceiro := TfrmVisualizaTerceiro.Create( Application );
        frmVisualizaTerceiro.Show;
       end;
end;

procedure TfrmPrincipal.actEmissaoNotaFiscalExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo,actEmissaoNotaFiscal.Caption,actEmissaoNotaFiscal.Caption,True ) then
    begin
     if not Assigned( frmEmissaoNotaFiscal ) then
        Application.CreateForm( TfrmEmissaoNotaFiscal, frmEmissaoNotaFiscal );

     frmEmissaoNotaFiscal.Show;
    end;
end;

procedure TfrmPrincipal.ContratodeManutencao1Click(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actContratoManutencao.Caption, actContratoManutencao.Caption, true) then
    CriaEspecifico( TfrmContrato, frmContrato, dmCM.cdsContrato, dmCM.dsContrato , actContratoManutencao.Caption);
end;

procedure TfrmPrincipal.AnliseClassifdePeas1Click(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actSolicRequi.Caption, actSolicRequi.Caption, True) then
    begin
     frmRDVSolicitacao := TfrmRDVSolicitacao.Create( Self );
     frmRDVSolicitacao.Show;
    end;
end;

procedure TfrmPrincipal.actClassifPecaExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actClassifPeca.Caption, actClassifPeca.Caption, True ) then
    begin
     frmOSClassifPeca  := TfrmOSClassifPeca.Create( Self );
     frmOSClassifPeca.Show;
    end;
end;

procedure TfrmPrincipal.actLogRDVExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actLogRDV.Caption, actLogRDV.Caption, True) then
    CriaEspecifico(TfrmPadraoEdicao, frmPadraoEdicao, dmRD.cdsLogRDV , dmRD.dsLogRDV, actLogRDV.Caption);
end;

procedure TfrmPrincipal.actVisualDesenvolvimentoExecute(Sender: TObject);
begin
 VisualTelasPendentes( True );
end;

procedure TfrmPrincipal.actVisualImpressaoExecute(Sender: TObject);
begin
 WBPrintPreview( WebBrowser1 ) ;
end;

procedure TfrmPrincipal.actImpostosServicoExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actImpostosServico.Caption, actImpostosServico.Caption, True) then
    CriaEspecifico(TfrmPadraoEdicao, frmPadraoEdicao, dmRS.cdsImpostoServico, dmRS.dsImpostoServico, actImpostosServico.Caption);
end;

procedure TfrmPrincipal.actLimiteContribuicaoExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actLimiteContribuicao.Caption, actLimiteContribuicao.Caption, True) then
    CriaEspecifico(TfrmPadraoEdicao, frmPadraoEdicao, dmRS.cdsLimiteContribuicao, dmRS.dsLimiteContribuicao, actLimiteContribuicao.Caption);
end;

procedure TfrmPrincipal.actPrestadorExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actPrestador.Caption, actPrestador.Caption, True) then
    CriaEspecifico(TfrmPadraoEdicao, frmPadraoEdicao, dmRS.cdsPrestador, dmRS.dsPrestador, actPrestador.Caption);
end;

procedure TfrmPrincipal.actReciboExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actRecibo.Caption, actRecibo.Caption, True) then
    CriaEspecifico(TfrmPadraoEdicao, frmPadraoEdicao, dmRS.cdsRecibo, dmRS.dsRecibo, actRecibo.Caption);
end;

procedure TfrmPrincipal.actRefreshActionExecute(Sender: TObject);
begin
  FindAddress;
end;

procedure TfrmPrincipal.actLocalizacaoOSExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actLocalizacaoOS.Caption, actLocalizacaoOS.Caption, True) then
    CriaEspecifico(TfrmPadraoEdicao, frmPadraoEdicao, dmOS.cdsLocalizacaoOS , dmOS.dsLocalizacaoOS, actLocalizacaoOS.Caption);
end;

procedure TfrmPrincipal.actSolicReqHoraExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actSolicReqHora.Caption, actSolicReqHora.Caption, True) then
    begin
     if not Assigned( frmHoraSolicitacao ) then
        begin
         Application.CreateForm( TfrmHoraSolicitacao, frmHoraSolicitacao );
         frmHoraSolicitacao.FFiltroLiberado := True;
        end;
     frmHoraSolicitacao.Show;
    end;
end;

procedure TfrmPrincipal.actInventarioExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actInventario.Caption, actInventario.Caption, True) then
    begin
     if not Assigned( frmInventario ) then
        Application.CreateForm( TfrmInventario, frmInventario );
     frmInventario.Show;
    end;
end;

procedure TfrmPrincipal.actHistBancoHorasExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actHistBancoHoras.Caption, actHistBancoHoras.Caption, true) then
    CriaEspecifico(TfrmPadraoEdicao, frmPadraoEdicao, dmRD.cdsBancoHora, dmRD.dsBancoHora, actHistBancoHoras.Caption);
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

procedure TfrmPrincipal.actRecebimentoEntradaExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo,actRecebimentoEntrada.Caption,actRecebimentoEntrada.Caption,True ) then
    begin
     if not Assigned( frmRecebimentoEntrada ) then
        Application.CreateForm( TfrmRecebimentoEntrada, frmRecebimentoEntrada );

     frmRecebimentoEntrada.Show;
    end;
end;

procedure TfrmPrincipal.actEmissaoDuplicExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo,actEmissaoDuplic.Caption, actEmissaoDuplic.Caption,True ) then
    begin
     if not Assigned( frmEmissaoDuplicata ) then
        Application.CreateForm( TfrmEmissaoDuplicata, frmEmissaoDuplicata );
     frmEmissaoDuplicata.Show;
    end;
end;

procedure TfrmPrincipal.actEmissaoEtiquetaExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo,actEmissaoEtiqueta.Caption, actEmissaoEtiqueta.Caption,True ) then
    begin
     if not Assigned( frmEmissaoEtiqueta ) then
        Application.CreateForm( TfrmEmissaoEtiqueta, frmEmissaoEtiqueta );
     frmEmissaoEtiqueta.Show;
    end;
end;

procedure TfrmPrincipal.actRecebImportExecute(Sender: TObject);
var ParamPesquisa : String;
begin
 ParamPesquisa := ' IT_DECLARACAO.DATAREGISTRO >= ' +  QuotedStr( DateToStr( pCnnMain.AppServer.iServerDate - 30 ) );

 if CheckSenha( dmGsi.UsuarioAtivo,actRecebImport.Caption, actRecebImport.Caption,True ) then
    begin
     GerarPesquisa( dmIT.cdsDeclaracao, ParamPesquisa );

     if not Assigned( frmRecebimentoImport ) then
        Application.CreateForm( TfrmRecebimentoImport, frmRecebimentoImport );
     frmRecebimentoImport.Show;
    end;
end;

procedure TfrmPrincipal.actPrecoTransfExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo,actPrecoTransf.Caption, actPrecoTransf.Caption, True ) then
    begin
     if not Assigned( frmPrecoTransferencia ) then
        Application.CreateForm( TfrmPrecoTransferencia, frmPrecoTransferencia );
     frmPrecoTransferencia.Show;
    end;
end;

procedure TfrmPrincipal.actRelReceitasExecute(Sender: TObject);
begin
 if not Assigned( frm0011 ) then
    frm0011 := Tfrm0011.Create(nil);
 frm0011.Show;
end;

procedure TfrmPrincipal.actRelNotasExecute(Sender: TObject);
begin
 if not Assigned( frm0002 ) then
    frm0002 := Tfrm0002.Create(nil);
 frm0002.Show;
end;

procedure TfrmPrincipal.actRelProdMercadoriasExecute(Sender: TObject);
begin
 if not Assigned( frm0013 ) then
    frm0013 := Tfrm0013.Create( nil );
 frm0013.show;
end;

procedure TfrmPrincipal.actRelPosTerceirosExecute(Sender: TObject);
begin
 if not Assigned( frm0014 ) then
    frm0014 := Tfrm0014.Create(nil);
 frm0014.Show;
end;

procedure TfrmPrincipal.actRelCustoEntrSaidasExecute(Sender: TObject);
begin
 if not Assigned( frm0017 ) then
    frm0017 := Tfrm0017.Create(nil);
 frm0017.show;
end;

procedure TfrmPrincipal.actRelPosEstoqueExecute(Sender: TObject);
begin
 if not Assigned( frm0020 ) then
    frm0020 := Tfrm0020.Create( nil );
 frm0020.show;
end;

procedure TfrmPrincipal.actRel0037Execute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, 'Relatório Interveniência Pedido Venda', 'Relatório Interveniência Pedido Venda', true) then
    begin
     if not Assigned( frm0037 ) then
        frm0037 := Tfrm0037.Create( nil );
     frm0037.Show;
    end;
end;

procedure TfrmPrincipal.actRelatoriosExecute(Sender: TObject);
begin
 URLs.Text := 'http://tmbbd1.toshibamedical.com.br:7778/portal/page?_pageid=33,16673,33_16677&_dad=portal&_schema=PORTAL';
 FindAddress;
end;

procedure TfrmPrincipal.actRelCtrProdEstoqueExecute(Sender: TObject);
begin
 if not Assigned( frm0019 ) then
    frm0019 := Tfrm0019.Create( nil );
 frm0019.Show;
end;

procedure TfrmPrincipal.actCtrFisicoExecute(Sender: TObject);
begin
 if not Assigned( frm0021 ) then
    frm0021 := Tfrm0021.Create(nil);
 frm0021.show;
end;

procedure TfrmPrincipal.actPastaClienteExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actPastaCliente.Caption, actPastaCliente.Caption, true) then
    CriaEspecifico(TfrmPastaCliente, frmPastaCliente, dmEF.cdsEntidade, dmEF.dsEntidade, actPastaCliente.Caption);
end;

procedure TfrmPrincipal.actSairExecute(Sender: TObject);
begin
 Close;
end;

procedure TfrmPrincipal.actRelPosFinancExecute(Sender: TObject);
begin
 if not assigned( frm0006 ) then
    frm0006 := Tfrm0006.Create(nil);
 frm0006.Show;
end;

procedure TfrmPrincipal.actRelInventarioExecute(Sender: TObject);
begin
 if not Assigned( frm0018 ) then
    frm0018 := Tfrm0018.Create(nil);
 frm0018.Show;   
end;

procedure TfrmPrincipal.actTransfEspelhosExecute(Sender: TObject);
begin
  if not CheckSenha(dmGsi.UsuarioAtivo,'Despesas de Viagem','Transferência do espelho do RDV',True) then
    exit;

 if CheckSenha( dmGsi.UsuarioAtivo,'Despesas de Viagem','Transferência do espelho do RDV',True ) then
    if frmParRdvDataMesAberto = nil then
       begin
        frmParRdvDataMesAberto := TfrmParRdvDataMesAberto.Create(self);
        frmParRdvDataMesAberto.Show;
       end;
end;

procedure TfrmPrincipal.actCorrecaoListaPrecoExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actCorrecaoListaPreco.Caption, actCorrecaoListaPreco.Caption, True) then
    CriaEspecifico(TfrmPadraoEdicao, frmPadraoEdicao, dmIT.cdsCorListaPreco, dmIT.dsCorListaPreco, actCorrecaoListaPreco.Caption);
end;

procedure TfrmPrincipal.actNatJuridicaExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actNatJuridica.Caption, actNatJuridica.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmEF.cdsNaturezaJuridica, dmEF.dsNaturezaJuridica,actNatJuridica.Caption );
end;

procedure TfrmPrincipal.actImpRecebPeriodoExecute(Sender: TObject);
begin
 if not Assigned( frmParRelLD ) then
    Application.CreateForm( TfrmParRelLD, frmParRelLD );
 frmParRelLD.Show;
end;

procedure TfrmPrincipal.actImprimirExecute(Sender: TObject);
begin
 WBPrintNoDialog( WebBrowser1 ) ;
end;

procedure TfrmPrincipal.actTecWinExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actTecWin.Caption, actTecWin.Caption, True) then
    CriaEspecifico(TfrmPadraoEdicao, frmPadraoEdicao, dmEF.cdsTecWin, dmEF.dsTecWin,actTecWin.Caption );
end;

procedure TfrmPrincipal.actHistFechComissaoExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo,actHistFechComissao.Caption, actHistFechComissao.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmPP.cdsHistFechComissao, dmPP.dsHistFechComissao, actHistFechComissao.Caption);
end;

procedure TfrmPrincipal.actAnaliseVendaExecute(Sender: TObject);
var ParamPesquisa : String;
begin
 if CheckSenha( dmGsi.UsuarioAtivo,actAnaliseVenda.Caption, actAnaliseVenda.Caption, True ) then
    begin
     ParamPesquisa := 'PP_ANALISEVENDA.DATAFECHAMENTO >= ' + QuotedStr( DateToStr( pCnnMain.AppServer.iServerDate - 31 ) );
     GerarPesquisa( dmPP.cdsAnaliseVenda, ParamPesquisa );

     if not Assigned( frmAnaliseVenda ) then
        Application.CreateForm( TfrmAnaliseVenda, frmAnaliseVenda );
     frmAnaliseVenda.Show;
    end;
end;

procedure TfrmPrincipal.actBasePagtoComissaoExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo,actBasePagtoComissao.Caption, actBasePagtoComissao.Caption, True) then
   CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmPP.cdsBasePagto, dmPP.dsBasePagto, actBasePagtoComissao.Caption);
end;

procedure TfrmPrincipal.actProcessoImportExecute(Sender: TObject);
var ParamPesquisa : String;
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actProcessoImport.Caption, actProcessoImport.Caption, True) then
    begin
      ParamPesquisa := 'PP_PROCESSOIMP.DATAPROCESSO >= ' + QuotedStr( DateToStr( pCnnMain.AppServer.iServerDate - 60 ) );
      GerarPesquisa( dmPP.cdsProcessoImp, ParamPesquisa );
      CriaEspecifico(TfrmProcessoImp, frmProcessoImp, dmPP.cdsProcessoImp, dmPP.dsProcessoImp, actProcessoImport.Caption);
    end;
end;

procedure TfrmPrincipal.actClasseVendedorExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo,actClasseVendedor.Caption, actClasseVendedor.Caption, True) then
   CriaEspecifico(TfrmPadraoEdicao, frmPadraoEdicao, dmPP.cdsClasseVendedor, dmPP.dsClasseVendedor, actClasseVendedor.Caption);
end;

procedure TfrmPrincipal.actOrigemVendaExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actOrigemVenda.Caption, actOrigemVenda.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmPP.cdsOrigemVenda, dmPP.dsOrigemVenda, actOrigemVenda.Caption);
end;

procedure TfrmPrincipal.actTipoVendaExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actTipoVenda.Caption, actTipoVenda.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmPP.cdsTipoVenda, dmPP.dsTipoVenda, actTipoVenda.Caption);
end;

procedure TfrmPrincipal.actTabFinanceiraExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actTabFinanceira.Caption, actTabFinanceira.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmPP.cdsTabFinanceira, dmPP.dsTabFinanceira, actTabFinanceira.Caption);
end;

procedure TfrmPrincipal.actPedidoVendaExecute(Sender: TObject);
var ParamPesquisa : String;
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actPedidoVenda.Caption, actPedidoVenda.Caption, True) then
    begin
     ParamPesquisa := 'PP_PEDVEND.DATAPEDIDO >= ' + QuotedStr( DateToStr( pCnnMain.AppServer.iServerDate - 6 ) );
     GerarPesquisa( dmPP.cdsPedVend, ParamPesquisa );

     if frmVisualizaPedVend = nil  then
        frmVisualizaPedVend := TfrmVisualizaPedVend.Create( Application );
     frmVisualizaPedVend.Show;
    end;
end;

procedure TfrmPrincipal.actPecaPendenteExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actPecaPendente.Caption, actPecaPendente.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmOS.cdsPecaPendente, dmOS.dsPecaPendente, actPecaPendente.Caption);
end;

procedure TfrmPrincipal.actConfigEleicaoExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actConfigEleicao.Caption, actConfigEleicao.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmGR.cdsConfigEleicao, dmGR.dsConfigEleicao, actConfigEleicao.Caption);
end;

procedure TfrmPrincipal.actGrupoEleicaoExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actGrupoEleicao.Caption, actGrupoEleicao.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmGR.cdsGrupoEleicao, dmGR.dsGrupoEleicao, actGrupoEleicao.Caption);
end;

procedure TfrmPrincipal.actEleitorExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actEleitor.Caption, actEleitor.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmGR.cdsEleitor, dmGR.dsEleitor, actEleitor.Caption);
end;

procedure TfrmPrincipal.actTipoEleicaoExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actTipoEleicao.Caption, actTipoEleicao.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmGR.cdsTipoEleicao, dmGR.dsTipoEleicao, actTipoEleicao.Caption);
end;

procedure TfrmPrincipal.actTipoItemExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actTipoItem.Caption, actTipoItem.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmEF.cdsTipoItem, dmEF.dsTipoItem, actTipoItem.Caption);
end;

procedure TfrmPrincipal.actHistVotacaoExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actHistVotacao.Caption, actHistVotacao.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmGR.cdsVoto, dmGR.dsVoto, actHistVotacao.Caption);
end;

procedure TfrmPrincipal.actRelTipoProcessoExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo,actRelTipoProcesso.Caption,actRelTipoProcesso.Caption,True ) then
    begin
     if not Assigned( frm0022 ) then
        Application.CreateForm(Tfrm0022,frm0022);
     frm0022.Show;
    end;
end;

procedure TfrmPrincipal.actVotoExecute(Sender: TObject);
begin
 try
  dmGR.cdsConfigEleicao.Open;
  dmGR.cdsVoto.Open;
  dmGR.cdsConfigEleicao.Last;

  if dmGR.cdsConfigEleicaoTIPOELEICAOATUALD.AsInteger < 1 then
     raise Exception.Create('Tipo de eleição não preenchido na configuração');

  if dmGR.cdsConfigEleicaoBLOQUEARVOTACAO.AsInteger = 1 then
     raise Exception.Create('Votação encerrada');

  if pCnnMain.AppServer.IServerDate < dmGR.cdsConfigEleicaoDTINICIOVIGENCIA.AsDateTime then
     raise Exception.Create('Data de inicio da votação expirado');

  if pCnnMain.AppServer.IServerDate > dmGR.cdsConfigEleicaoDTFINALVIGENCIA.AsDateTime then
     raise Exception.Create('Data final da votação expirado');

  dmGR.cdsVoto.Insert;
  if not Assigned( frmVoto ) then
     Application.CreateForm( TfrmVoto, frmVoto );

  frmVoto.Show;
 except
 on E: Exception do MessageDlg( E.Message, mtInformation, [mbOK], 0 );
 end;
end;

procedure TfrmPrincipal.actRelPecaEmpenhoExecute(Sender: TObject);
begin
 if not Assigned( frm0023 ) then
    frm0023 := Tfrm0023.Create( nil );
 frm0023.show;
end;

procedure TfrmPrincipal.actRecComVendaExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actRecComVenda.Caption, actRecComVenda.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmPP.cdsRecebComVenda, dmPP.dsRecebComVenda, actRecComVenda.Caption);
end;

procedure TfrmPrincipal.actPercComFuncExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actPercComFunc.Caption, actPercComFunc.Caption, True) then
    CriaEspecifico(TfrmPercComFunc, frmPercComFunc, dmPP.cdsPercComFunc, dmPP.dsPercComFunc, actPerComRepr.Caption);
end;

procedure TfrmPrincipal.actPerComReprExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actPerComRepr.Caption, actPerComRepr.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmPP.cdsPerComRepr, dmPP.dsPerComRepr, actPerComRepr.Caption);
end;

procedure TfrmPrincipal.Action3Execute(Sender: TObject);
begin
 if not Assigned( frm0033 ) then
    frm0033 := Tfrm0033.Create(nil);
 frm0033.ShowModal;
end;

procedure TfrmPrincipal.actGeneroItemExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actGeneroItem.Caption, actGeneroItem.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmEF.cdsGeneroItem, dmEF.dsGeneroItem, actGeneroItem.Caption);
end;

procedure TfrmPrincipal.actPortalAtualizacaoExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actPortalAtualizacao.Caption, actPortalAtualizacao.Caption, True) then
    begin
     if not Assigned( frmPortalAtualizacao ) then
        Application.CreateForm( TfrmPortalAtualizacao, frmPortalAtualizacao );
     frmPortalAtualizacao.Show;
    end;
end;

procedure TfrmPrincipal.actCorretivaExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actCorretiva.Caption, actCorretiva.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmCM.cdsCorretiva, dmCM.dsCorretiva, actCorretiva.Caption);
end;

procedure TfrmPrincipal.actPreventivaExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actPreventiva.Caption, actPreventiva.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmCM.cdsPreventiva, dmCM.dsPreventiva, actPreventiva.Caption);
end;

procedure TfrmPrincipal.actVisualAcompPedExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actVisualAcompPed.Caption, actVisualAcompPed.Caption, True) then
    begin
     if not Assigned( frmVisualizaAcompPed ) then
        Application.CreateForm( TfrmVisualizaAcompPed, frmVisualizaAcompPed );
     frmVisualizaAcompPed.Show;
    end;
end;

procedure TfrmPrincipal.actVisualContratoExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actVisualContrato.Caption, actVisualContrato.Caption, True) then
    begin
     if not Assigned( frmVisualizaContrato ) then
        Application.CreateForm( TfrmVisualizaContrato, frmVisualizaContrato );
     frmVisualizaContrato.Show;
    end;
end;

procedure TfrmPrincipal.actEmissaoDocInternoExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo,actEmissaoDocInterno.Caption,actEmissaoDocInterno.Caption,True ) then
    begin
     if not Assigned( frmEmissaoDocInterno ) then
        Application.CreateForm( TfrmEmissaoDocInterno, frmEmissaoDocInterno );

     frmEmissaoDocInterno.Show;
    end;
end;

procedure TfrmPrincipal.actVendedorResponsavelExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actVendedorResponsavel.Caption, actVendedorResponsavel.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmPP.cdsVendedorResponsavel, dmPP.dsVendedorResponsavel, actVendedorResponsavel.Caption);
end;

procedure TfrmPrincipal.actEmbarqueExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actEmbarque.Caption, actEmbarque.Caption, True) then
    begin
     if not Assigned( frm0034 ) then
        Application.CreateForm( Tfrm0034,frm0034 );
     frm0034.Show;
   end;
end;

procedure TfrmPrincipal.actClasseNivelExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actClasseNivel.Caption, actClasseNivel.Caption, True) then
    CriaEspecifico(TfrmClasseNivel, frmClasseNivel, dmPP.cdsClasseNivel, dmPP.dsClasseNivel, actClasseNivel.Caption);
end;

procedure TfrmPrincipal.actReservaPecasExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actReservaPecas.Caption, actReservaPecas.Caption, True) then
    begin
     if not Assigned( frmVisualReservaPeca ) then
        Application.CreateForm( TfrmVisualReservaPeca, frmVisualReservaPeca );
     frmVisualReservaPeca.Show;
    end;
end;

procedure TfrmPrincipal.actOcOperacionalExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actOcOperacional.Caption, actOcOperacional.Caption, True) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmOS.cdsOcOperacional, dmOS.dsOcOperacional, actOcOperacional.Caption);
end;

procedure TfrmPrincipal.actBudgetExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actBudget.Caption, actBudget.Caption, True ) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmEF.cdsBudget, dmEF.dsBudget, actBudget.Caption);
end;

procedure TfrmPrincipal.actNotasDevExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, actNotasDev.Caption, actNotasDev.Caption, True ) then
    CriaEspecifico(TFrmPadraoEdicao, FrmPadraoEdicao, dmEF.cdsNotas_Dev, dmEF.dsNotas_Dev, actNotasDev.Caption);
end;

procedure TfrmPrincipal.actRegistroGSIExecute(Sender: TObject);
begin
 if not Assigned( frmRegistroGSI ) then
    frmRegistroGSI := TfrmRegistroGSI.Create(nil);
 frmRegistroGSI.Show;
end;



end.



