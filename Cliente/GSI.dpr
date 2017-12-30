{ Sistema de Gestão Sistemas Integrados 1.00
  Autor : Claudio Gervasio de Lisboa                by CGLSOFT

  Inicio do Projeto
          Análise : 16/04/2003
  Desenvolvimento : xx/xx/xx - Data Implantação do Sistema

  frmRelPedidoVenda.quickrep1.ExportToFilter( TQRPDFDocumentFilter.Create('c:\report.pdf'));

  Data de migração do Módulo RDV : 01/Nov/2004
  Data de Implantação Módulo RDV : 03/Nov/2004
  Data de migração do Módulo OS  : 30/Nov/2004
  Data de Implantação Módulo OS  : 01/Dez/2004
  Data de migração FATURAMENTO / TECIMP / CONTRATO    : 05/Mar/2005
  Data de Implantação FATURAMENTO / TECIMP / CONTRATO : 07/Mar/2005

  Migração parcelas de duplicatas comissão 06/06/2005 TMB_06JUN2005.DMP - ORACLE

  Inicio de lançamento do Banco de Horas 03/04/2006 }

{$SetPEFlags $20}
{$define NeverUninstall}
{$define NoMessageBoxes}
{$define AssumeMultiThreaded}
{$define UseCustomFixedSizeMoveRoutines}

program GSI;

{$R *.res}

{%TogetherDiagram 'ModelSupport_GSI\default.txaPackage'}

uses
  FastMM4,
  madListHardware,
  madListProcesses,
  madListModules,
  madExcept,
  Midas,
  MidasLib,
  Forms,
  u_Principal in 'u_Principal.pas' {frmPrincipal},
  u_dmGSI in 'u_dmGSI.pas' {dmGsi: TDataModule},
  u_dmOs in 'u_dmOs.PAS' {dmOS: TDataModule},
  u_dmAS in 'u_dmAS.pas' {dmAS: TDataModule},
  u_dmEF in 'u_dmEF.pas' {dmEF: TDataModule},
  u_dmIT in 'u_dmIT.pas' {dmIT: TDataModule},
  u_dmRD in 'u_dmRD.PAS' {dmRD: TDataModule},
  u_dmCP in 'u_dmCP.pas' {dmCP: TDataModule},
  u_dmPP in 'u_dmPP.pas' {dmPP: TDataModule},
  u_dmGR in 'u_dmGR.pas' {dmGR: TDataModule},
  u_dmRS in 'u_dmRS.pas' {dmRS: TDataModule},
  u_dmFC in 'u_dmFC.pas' {dmFC: TDataModule},
  u_dmCM in 'u_dmCM.pas' {dmCM: TDataModule},
  u_Defeito in 'u_Defeito.pas' {frmDefeito},
  u_Login in 'u_Login.pas' {frmLogin},
  u_ReconcileError in 'u_ReconcileError.pas' {frmReconcileError},
  u_UserConectado in 'u_UserConectado.pas' {frmUserConectado},
  u_NaturezaOp in 'u_NaturezaOp.pas' {frmNaturezaOp},
  u_VisualizadorPadrao in 'u_VisualizadorPadrao.pas' {frmVisualizadorPadrao},
  u_VisualizaProcesso in 'u_VisualizaProcesso.pas' {frmVisualizaProcesso},
  u_Produto in 'u_Produto.pas' {frmProduto},
  u_Entidade in 'u_Entidade.pas' {frmEntidade},
  u_RelPedidoTmbj in 'u_RelPedidoTmbj.pas' {frmRelPedidoTmbj},
  u_RelPedidoPza in 'u_RelPedidoPza.pas' {frmRelPedidoPza},
  u_RelPedidoNx in 'u_RelPedidoNx.pas' {frmRelPedidoNx},
  u_RelFichaDI in 'u_RelFichaDI.pas' {frmRelFichaDI},
  u_ListaPreco in 'u_ListaPreco.pas' {frmListaPreco},
  u_TabelaPreco in 'u_TabelaPreco.pas' {frmTabelaPreco},
  u_Cep in 'u_Cep.pas' {frmCEP},
  u_VisualizaAcompPed in 'u_VisualizaAcompPed.pas' {frmVisualizaAcompPed},
  u_NovoProduto in 'u_NovoProduto.pas' {frmNovoProduto},
  u_RecalculaListaPreco in 'u_RecalculaListaPreco.pas' {frmRecalculaListaPreco},
  u_ProcessoItem in 'u_ProcessoItem.pas' {frmProcessoItem},
  u_RelLD in 'u_RelLD.pas' {frmRelLD},
  u_ParRelLD in 'u_ParRelLD.pas' {frmParRelLD},
  u_VisualComponente in 'u_VisualComponente.pas' {frmVisualComponente},
  u_DefinirSenha in 'u_DefinirSenha.pas' {frmDefinirSenha},
  u_Declaracao in 'u_Declaracao.pas' {frmDeclaracao},
  u_PadraoPesquisa in '..\Biblioteca\Modelo Cadastro\u_PadraoPesquisa.pas' {frmPadraoPesquisa},
  u_PesquisaCampo in '..\Biblioteca\Modelo Cadastro\u_PesquisaCampo.pas' {frmPesquisaCampo},
  u_PadraoEdicao in '..\Biblioteca\Modelo Cadastro\u_PadraoEdicao.PAS' {frmPadraoEdicao},
  u_PDE in 'u_PDE.pas' {frmPDE},
  u_PdeItem in 'u_PdeItem.pas' {frmPDEItem},
  u_PercComFunc in 'u_PercComFunc.pas' {frmPercComFunc},
  u_VisualTabelaPrecoPedVend in 'u_VisualTabelaPrecoPedVend.pas' {frmVisualTabelaPrecoPedVend},
  u_Usuario in 'u_Usuario.pas' {frmUsuario},
  u_Aparelho in 'u_Aparelho.pas' {frmAparelho},
  u_Exportar in '..\Biblioteca\Modelo Cadastro\u_Exportar.pas' {frmExportar},
  u_RelOS in 'u_RelOS.pas' {frmRelOS},
  u_RelEmpenho in 'u_RelEmpenho.pas' {frmRelEmpenho},
  u_Contrato in 'u_Contrato.pas' {frmContrato},
  u_ProcessoSerie in 'u_ProcessoSerie.pas' {frmProcessoSerie},
  u_PropostaConfig in 'u_PropostaConfig.pas' {frmPropostaConfig},
  u_NFE in 'u_NFE.pas' {frmNFE},
  u_NFS in 'u_NFS.pas' {frmNFS},
  u_Hora in 'u_Hora.pas' {frmHora},
  u_VisualizaNotaFiscal in 'u_VisualizaNotaFiscal.pas' {frmVisualizaNotaFiscal},
  u_RDV in 'u_RDV.pas' {frmRdv},
  u_Adiantamento in 'u_Adiantamento.pas' {frmAdiantamento},
  u_ParImpRdv in 'u_ParImpRdv.pas' {frmParImpRDV},
  u_ParDataMovimento in 'u_ParDataMovimento.pas' {frmParDataMovimento},
  u_RelRDV in 'u_RelRDV.pas' {frmRelRDV},
  u_Memo in 'u_Memo.pas' {frmMemo},
  u_RelMemo in 'u_RelMemo.pas' {frmRelMemo},
  u_DevolucaoNFE in 'u_DevolucaoNFE.pas' {frmDevolucaoNFE},
  u_DevolucaoNFEParcial in 'u_DevolucaoNFEParcial.pas' {frmDevolucaoNFEParcial},
  u_HoraSolicitacao in 'u_HoraSolicitacao.pas' {frmHoraSolicitacao},
  u_RelAdiantamento in 'u_RelAdiantamento.pas' {frmRelAdiantamento},
  u_RelAdiantEfetivo in 'u_RelAdiantEfetivo.pas' {frmRelAdiantEfetivo},
  u_ParamAdiantEfetivo in 'u_ParamAdiantEfetivo.pas' {frmParamAdiantEfetivos},
  u_VisualizaRDV in 'u_VisualizaRDV.pas' {frmVisualizaRDV},
  u_Integracao in 'u_Integracao.pas' {frmIntegracao},
  u_FichaEstoque in 'u_FichaEstoque.pas' {frmFichaEstoque},
  u_dmOFFLine in 'u_dmOFFLine.pas' {dmOFFLine: TDataModule},
  u_SincronismoOFFLine in 'u_SincronismoOFFLine.pas' {frmSincronismoOFFLine},
  u_BancoHorasMulti in 'u_BancoHorasMulti.pas' {frmBancoHoraMulti},
  u_RelPedidoDI in 'u_RelPedidoDI.pas' {frmRelPedidoDI},
  u_parDI in 'u_parDI.pas' {frmParDI},
  u_DeclaracaoDadosPDE in 'u_DeclaracaoDadosPDE.pas' {frmDeclaracaoDadosPDE},
  u_Processo in 'u_Processo.pas' {frmProcesso},
  u_Sobre in 'u_Sobre.pas' {frmSobre},
  u_SelecionarEmpresa in 'u_SelecionarEmpresa.pas' {frmSelecionarEmpresa},
  u_ParPreNota in 'u_ParPreNota.pas' {frmParPreNota},
  u_RelPreNota in 'u_RelPreNota.pas' {frmRelPreNota},
  u_VisualizaTerceiro in 'u_VisualizaTerceiro.pas' {frmVisualizaTerceiro},
  u_VisualEmpenho in 'u_VisualEmpenho.pas' {frmVisualEmpenho},
  u_RecebimentoEntrada in 'u_RecebimentoEntrada.pas' {frmRecebimentoEntrada},
  u_OSClassifPeca in 'u_OSClassifPeca.pas' {frmOSClassifPeca},
  u_DestinoPeca in 'u_DestinoPeca.pas' {frmDestinoPeca},
  u_EtiquetaPeca in 'u_EtiquetaPeca.pas' {frmEtiquetaPeca},
  u_RelOsClassifpeca in 'u_RelOsClassifpeca.pas' {frmRelOsClassifpeca},
  u_ParRdvDataMesAberto in 'u_ParRdvDataMesAberto.pas' {frmParRdvDataMesAberto},
  u_RDVLogExclusao in 'u_RDVLogExclusao.pas' {frmRDVLogExclusao},
  u_parImpHora in 'u_parImpHora.pas' {frmParImpHora},
  u_RelHoras in 'u_RelHoras.pas' {frmRelHoras},
  u_RelNotaMatrizEntrada in 'u_RelNotaMatrizEntrada.pas' {frmRelNotaMatrizEntrada},
  u_Prestador in 'u_Prestador.pas' {frmPrestador},
  u_Recibo in 'u_Recibo.pas' {frmRecibo},
  u_RelRPS in 'u_RelRPS.pas' {frmRelRPS},
  u_RelBaseINSS in 'u_RelBaseINSS.pas' {frmRelBaseINSS},
  u_ParRPS in 'u_ParRPS.pas' {frmParRPS},
  u_VisualPagtoComissao in 'u_VisualPagtoComissao.pas' {frmVisualPagtoComissao},
  u_RelInventario in 'u_RelInventario.pas' {frmRelInventario},
  u_ParFichaInventario in 'u_ParFichaInventario.pas' {frmParFichaInventario},
  u_InventarioDigitacao in 'u_InventarioDigitacao.pas' {frmInventarioDigitacao},
  u_RelInventarioSaldo in 'u_RelInventarioSaldo.pas' {frmRelInventarioSaldo},
  u_RelFichaInventarioII in 'u_RelFichaInventarioII.pas' {frmRelFichaInventarioII},
  u_RDVSolicitacao in 'u_RDVSolicitacao.pas' {frmRDVSolicitacao},
  u_PastaCliente in 'u_PastaCliente.pas' {frmPastaCliente},
  u_RelEtiqAnvisa in 'u_RelEtiqAnvisa.pas' {frmRelEtiqAnvisa},
  u_RelRotuloAnvisa in 'u_RelRotuloAnvisa.pas' {frmRelRotuloAnvisa},
  u_Pesquisa in 'u_Pesquisa.pas' {frmPesquisa},
  u_RelIntegracao in 'u_RelIntegracao.pas' {frmRelIntegracao},
  u_EmissaoEtiqueta in 'u_EmissaoEtiqueta.pas' {frmEmissaoEtiqueta},
  u_RelEtiquetaEquip in 'u_RelEtiquetaEquip.pas' {frmRelEtiquetaEquip},
  u_RelNotaServico in 'u_RelNotaServico.pas' {frmRelNotaServico},
  u_EmissaoDuplicata in 'u_EmissaoDuplicata.pas' {frmEmissaoDuplicata},
  u_RelEmissaoDuplicata in 'u_RelEmissaoDuplicata.pas' {frmRelEmissaoDuplicata},
  u_EmissaoDocInterno in 'u_EmissaoDocInterno.pas' {frmEmissaoDocInterno},
  u_Rel002 in 'u_Rel002.pas' {frmRel002},
  u_rel002A in 'u_rel002A.pas' {frmRel002A},
  u_RecebimentoImport in 'u_RecebimentoImport.pas' {frmRecebimentoImport},
  u_LocalizacaoProduto in 'u_LocalizacaoProduto.pas' {frmLocalizacaoProduto},
  u_PrecoTransferencia in 'u_PrecoTransferencia.pas' {frmPrecoTransferencia},
  u_0011 in 'u_0011.pas' {frm0011},
  u_Rel0037 in 'u_Rel0037.pas' {frmRel0037},
  u_Rel0011B in 'u_Rel0011B.pas' {frmRel0011B},
  u_Rel0011Dev in 'u_Rel0011Dev.pas' {frmRel0011Dev},
  u_Rel0011A in 'u_Rel0011A.pas' {frmRel0011A},
  u_Rel0011C in 'u_Rel0011C.pas' {frmRel0011C},
  u_0013 in 'u_0013.pas' {frm0013},
  u_Rel0013 in 'u_Rel0013.pas' {frmRel0013},
  u_0014 in 'u_0014.pas' {frm0014},
  u_Rel0014 in 'u_Rel0014.pas' {frmRel0014},
  u_Rel0017 in 'u_Rel0017.pas' {frmRel0017},
  u_0020 in 'u_0020.pas' {frm0020},
  u_Rel0020 in 'u_Rel0020.pas' {frmRel0020},
  u_0019 in 'u_0019.pas' {frm0019},
  u_Rel0023 in 'u_Rel0023.pas' {frmRel0023},
  u_0021 in 'u_0021.pas' {frm0021},
  u_PDS in 'u_PDS.pas' {frmPDS},
  u_PedVendaItemImp in 'u_PedVendaItemImp.pas' {frmPedVendaItemImp},
  u_Despesa in 'u_Despesa.pas' {frmDespesa},
  u_0002 in 'u_0002.pas' {frm0002},
  u_CategoriaEntidade in 'u_CategoriaEntidade.pas' {frmCategoriaEntidade},
  u_RetornoNFS in 'u_RetornoNFS.pas' {frmRetornoNFS},
  u_RetornoNFSParcial in 'u_RetornoNFSParcial.pas' {frmRetornoNFSParcial},
  u_ContratoPedido in 'u_ContratoPedido.pas' {frmContratoPedido},
  u_0006 in 'u_0006.pas' {frm0006},
  u_Rel006 in 'u_Rel006.pas' {frmRel006},
  u_rel002b in 'u_rel002b.pas' {frmRel002B},
  u_Rel0021 in 'u_Rel0021.pas' {frmRel0021},
  u_Rel006A in 'u_Rel006A.pas' {frmRel006A},
  u_SaldoProduto in 'u_SaldoProduto.pas' {frmSaldoProduto},
  u_0018 in 'u_0018.pas' {frm0018},
  u_Rel0018 in 'u_Rel0018.pas' {frmRel0018},
  u_RelNotaMatrizSaida in 'u_RelNotaMatrizSaida.pas' {frmRelNotaMatrizSaida},
  u_AcompPed in 'u_AcompPed.pas' {frmAcompPed},
  u_ProcessoImp in 'u_ProcessoImp.pas' {frmProcessoImp},
  u_Inventario in 'u_Inventario.pas' {frmInventario},
  u_ParAnaliseVenda in 'u_ParAnaliseVenda.pas' {frmParAnaliseVenda},
  u_OSMaterial in 'u_OSMaterial.pas' {frmOSMaterial},
  u_0022 in 'u_0022.pas' {frm0022},
  u_Rel0022 in 'u_Rel0022.pas' {frmRel0022},
  u_Voto in 'u_Voto.pas' {frmVoto},
  u_Rel0022a in 'u_Rel0022a.pas' {frmRel0022A},
  u_Rel0022B in 'u_Rel0022B.pas' {frmRel0022B},
  u_RelPedidovenda in 'u_RelPedidovenda.pas' {frmRelPedidoVenda},
  u_RelRevenda in 'u_RelRevenda.pas' {frmRelRevenda},
  u_ParPedVend in 'u_ParPedVend.pas' {frmParPedVend},
  u_RelPrecoTransf in 'u_RelPrecoTransf.pas' {frmRelPrecoTransf},
  u_PedVendaVendedor in 'u_PedVendaVendedor.pas' {frmPedVendVendedor},
  u_BaseComissaoVendedor in 'u_BaseComissaoVendedor.pas' {frmBaseComissaoVendedor},
  u_0023 in 'u_0023.pas' {frm0023},
  u_Rel0019 in 'u_Rel0019.pas' {frmRel0019},
  u_VisualHistDupl in 'u_VisualHistDupl.pas' {frmVisualHistDupl},
  u_AnaliseVenda in 'u_AnaliseVenda.pas' {frmAnaliseVenda},
  u_ParRelVendedor in 'u_ParRelVendedor.pas' {frmParRelVendedor},
  u_RelVendaVendedor in 'u_RelVendaVendedor.pas' {frmRelVendaVendedor},
  u_RelComissaoVendedor in 'u_RelComissaoVendedor.pas' {frmRelComissaoVendedor},
  u_PagtoComissao in 'u_PagtoComissao.pas' {frmPagtoComissao},
  u_LibPagtoComissao in 'u_LibPagtoComissao.pas' {frmLibPagtoComissao},
  u_DivisaoDuplicata in 'u_DivisaoDuplicata.pas' {frmDivisaoDuplicata},
  u_RelSaidasDivisas in 'u_RelSaidasDivisas.pas' {frmRelSaidasDivisas},
  u_Rel0024 in 'u_Rel0024.pas' {frmRel0024},
  u_Rel0025 in 'u_Rel0025.pas' {frmRel0025},
  u_Rel0026 in 'u_Rel0026.pas' {frmRel0026},
  u_Rel0027 in 'u_Rel0027.pas' {frmRel0027},
  u_Rel0028 in 'u_Rel0028.pas' {frmRel0028},
  u_Rel0029 in 'u_Rel0029.pas' {frmRel0029},
  u_Rel0030 in 'u_Rel0030.pas' {frmRel0030},
  u_Rel0031 in 'u_Rel0031.pas' {frmRel0031},
  u_Rel0032 in 'u_Rel0032.pas' {frmRel0032},
  u_RelHorasPendentes in 'u_RelHorasPendentes.pas' {frmRelHorasPendentes},
  u_VisualTabelaPreco in 'u_VisualTabelaPreco.pas' {frmVisualTabelaPreco},
  u_IntegracaoOnLine in 'u_IntegracaoOnLine.pas',
  u_Proposta in 'u_Proposta.pas' {frmProposta},
  u_Rel0033 in 'u_Rel0033.pas' {frmRel0033},
  u_0033 in 'u_0033.pas' {frm0033},
  u_PedVendaInterv in 'u_PedVendaInterv.pas' {frmPedVendaInterv},
  u_PrincipalOFFLine in 'u_PrincipalOFFLine.pas' {frmPrincipalOFFLine},
  u_OSDefeitoOFFLine in 'u_OSDefeitoOFFLine.pas' {frmOSDefeitoOFFLine},
  u_VisualizaContrato in 'u_VisualizaContrato.pas' {frmVisualizaContrato},
  u_HoraTecnicaOFFLine in 'u_HoraTecnicaOFFLine.pas' {frmHoraTecnicaOFFLine},
  u_BancoHorasOFFLine in 'u_BancoHorasOFFLine.pas' {frmBancoHorasOFFLine},
  u_DespesaOFFLine in 'u_DespesaOFFLine.pas' {frmDespesaOFFLine},
  u_EmissaoNotaFiscal in 'u_EmissaoNotaFiscal.pas' {frmEmissaoNotaFiscal},
  u_RelDocInterno in 'u_RelDocInterno.pas' {frmRelDocInterno},
  u_0034 in 'u_0034.pas' {frm0034},
  u_PedVendaItemRev in 'u_PedVendaItemRev.pas' {frmPedVendaItemRev},
  u_Rel0034 in 'u_Rel0034.pas' {frmRel0034},
  u_ClasseNivel in 'u_ClasseNivel.pas' {frmClasseNivel},
  u_0037 in 'u_0037.pas' {frm0037},
  u_Rel0036 in 'u_Rel0036.pas' {frmRel0036},
  u_VisualReservaPeca in 'u_VisualReservaPeca.pas' {frmVisualReservaPeca},
  u_PdsItem in 'u_PdsItem.pas' {frmPDSItem},
  u_RelProdutoSaldos in 'u_RelProdutoSaldos.pas' {frmRelProdutoSaldo},
  u_RelOSNovo in 'u_RelOSNovo.pas' {frmRelOSNovo},
  u_RelOSNovoB in 'u_RelOSNovoB.pas' {frmRelOSNovoB},
  u_OSDefeito in 'u_OSDefeito.pas' {frmOSDefeito},
  u_Rel0013B in 'u_Rel0013B.pas' {frmRel0013B},
  u_ParAnvisa in 'u_ParAnvisa.pas' {frmParAnvisa},
  u_RegistroGSI in 'u_RegistroGSI.pas' {frmRegistroGSI},
  Consts in 'C:\Arquivos de programas\Borland\BDS\4.0\source\Win32\vcl\Consts.pas',
  u_RelNotaServicoFilial in 'u_RelNotaServicoFilial.pas' {frmRelNotaServicoFilial},
  u_OSOFFLine in 'u_OSOFFLine.pas' {frmOSOFFLine},
  u_OSSincronismo in 'u_OSSincronismo.pas' {frmOSSincronismo},
  u_DemoCatalogo in 'u_DemoCatalogo.pas' {frmDemoCatalogo},
  u_RelHorasMensal in 'u_RelHorasMensal.pas' {frmRelHorasMensal},
  u_ProcessoUtil in 'u_ProcessoUtil.pas' {frmProcessoUtil},
  FuncoesDSI in '..\BIBLIOTECA\DLL\FuncoesDSI.pas',
  FuncoesCliente in '..\BIBLIOTECA\DLL\FuncoesCliente.pas',
  u_BancoHoras in 'u_BancoHoras.pas' {frmBancoHora},
  u_RelPecaTerceiro in 'u_RelPecaTerceiro.pas' {frmRelPecaTerceiro},
  u_0017 in 'u_0017.pas' {frm0017},
  u_ContratoAuto in 'u_ContratoAuto.pas' {frmContratoAuto},
  u_FI in 'u_FI.pas' {frmFI},
  u_TipoOs in 'u_TipoOs.pas' {frmTipoOs},
  u_RelHorasApuracao in 'u_RelHorasApuracao.pas' {frmRelHorasApuracao},
  u_RelHoraCompensada in 'u_RelHoraCompensada.pas' {frmRelHoraCompensada},
  u_OSDemo in 'u_OSDemo.pas' {frmOSDemo},
  u_PagtoComAuto in 'u_PagtoComAuto.pas' {frmPagtoComAuto},
  u_RelEmissaoEtiqueta in 'u_RelEmissaoEtiqueta.pas' {frmRelEmissaoEtiqueta},
  u_RelFichaInventario in 'u_RelFichaInventario.pas' {frmRelFichaInventario},
  u_VisualizaPedido in 'u_VisualizaPedido.pas' {frmVisualizaPedido},
  u_PedVenda in 'u_PedVenda.pas' {frmPedVenda},
  u_0036 in 'u_0036.pas' {frm0036},
  u_Rel0011 in 'u_Rel0011.pas' {frmRel0011},
  u_dmFI in 'u_dmFI.pas' {dmFI: TDataModule},
  u_OS in 'u_OS.pas' {frmOS},
  u_Formatacoes in 'u_Formatacoes.pas',
  u_BaseComissaoAutomat in 'u_BaseComissaoAutomat.pas' {frmBaseComissaoAutomat},
  u_PortalAtualizacao in 'u_PortalAtualizacao.pas' {frmPortalAtualizacao};

begin
  Application.Initialize;
  Application.Title := 'Gestão de Sistemas Integrados 2.00';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdmGsi, dmGsi);
  Application.CreateForm(TdmAS, dmAS);
  Application.CreateForm(TdmOS, dmOS);
  Application.CreateForm(TdmEF, dmEF);
  Application.CreateForm(TdmIT, dmIT);
  Application.CreateForm(TdmRD, dmRD);
  Application.CreateForm(TdmCP, dmCP);
  Application.CreateForm(TdmPP, dmPP);
  Application.CreateForm(TdmCM, dmCM);
  Application.CreateForm(TdmOFFLine, dmOFFLine);
  Application.CreateForm(TdmRS, dmRS);
  Application.CreateForm(TdmFC, dmFC);
  Application.CreateForm(TdmGR, dmGR);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TdmFI, dmFI);
  frmLogin.ShowModal;

  case frmLogin.FLogAcesso of
  1 : begin
       frmLogin.Free;
       frmLogin := Nil;
       Application.Run
      end;
  0 : begin
       frmPrincipal.Free;
       dmGsi.Free;
       dmAS.Free;
       dmOS.Free;
       dmEF.Free;
       dmIT.Free;
       dmRD.Free;
       dmCP.Free;
       dmPP.Free;
       dmCM.Free;
       dmOFFLine.Free;
       dmRS.Free;
       dmFC.Free;
       dmGR.Free;

       Application.Terminate;
      end;
  -1: begin
       frmPrincipal.Free;

       Application.CreateForm(TfrmPrincipalOFFLine, frmPrincipalOFFLine);
       frmPrincipalOFFLine.ShowModal;

       Application.Run
      end;
  end;

end.
