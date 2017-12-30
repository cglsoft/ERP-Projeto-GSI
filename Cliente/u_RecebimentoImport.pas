unit u_RecebimentoImport;

interface

uses
  Windows, Messages, Forms, SysUtils, Controls, ExtCtrls, Classes, ActnList,
  XPStyleActnCtrls, ActnMan, ImgList, fcStatusBar, PnAjustaGrid, ActnCtrls,
  ToolWin, ComCtrls, Grids, DBGrids, Dialogs, tmbToolManutencaoTop;

type
  TfrmRecebimentoImport = class(TForm)
    pgctrlSolic: TPageControl;
    TabSheet1: TTabSheet;
    dbgrdDI: TDBGrid;
    CoolBar1: TCoolBar;
    ActionToolBar1: TActionToolBar;
    fcstbarStatus: TfcStatusBar;
    imglstPadrao: TImageList;
    actmngPadrao: TActionManager;
    actLiberarPeca: TAction;
    actLiberarProcesso: TAction;
    actImprRotulo: TAction;
    actImprEtiqueta: TAction;
    actCancelarEntrada: TAction;
    actAltDtLiberacao: TAction;
    actFechar: TAction;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    dbgrdMercadoria: TDBGrid;
    Splitter1: TSplitter;
    tmbManutTop1: TtmbManutTop;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actLiberarPecaExecute(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure dbgrdMercadoriaDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actLiberarProcessoExecute(Sender: TObject);
    procedure actImprRotuloExecute(Sender: TObject);
    procedure actImprEtiquetaExecute(Sender: TObject);
    procedure actCancelarEntradaExecute(Sender: TObject);
  private
    { Private declarations }
    procedure LiberarPeca;
    procedure LiberarProcesso;
  public
    { Public declarations }
  end;

var
  frmRecebimentoImport: TfrmRecebimentoImport;

implementation

uses u_dmIT, u_dmGSI, FuncoesCliente, u_dmEF, u_LocalizacaoProduto,
  u_Produto;

{$R *.dfm}

procedure TfrmRecebimentoImport.LiberarPeca;
var ParamPesquisa : String;
begin
 if not CheckSenha( dmGsi.UsuarioAtivo, frmRecebimentoImport.Caption, 'Liberar entrada de peça de importação no estoque', True ) then
    exit;

 try
{  if dmIT.cdsDeclaracaoLIBERARESTOQUE.AsInteger = 1 then
     raise Exception.Create('Declaração de importação já liberada');}

  if dmIT.cdsDeclaracaoDIID.IsNull then
     raise Exception.Create('Declaração de importação não preenchido');

  if dmIT.cdsMercadoriaLIBERAESTOQUE.AsInteger = 1 then
     raise Exception.Create('Mercadoria já está liberada');

  dmIT.cdsMercadoria.Edit;
  dmIT.cdsMercadoriaLIBERAESTOQUE.Value := 1;
  dmIT.cdsMercadoria.Post;

  ParamPesquisa := ' EF_PRODUTO.EMPRESAID = '+ dmIT.cdsMercadoriaEMPRESAID.AsString +
                   ' AND EF_PRODUTO.PRODUTOID = '+ dmIT.cdsMercadoriaPRODUTOID.AsString;

  GerarPesquisa( dmEF.cdsProduto,ParamPesquisa );

  if dmEF.cdsPRODUTO.IsEmpty then
     raise Exception.Create('Produto não encontrado');

  dmEF.cdsProduto.Edit;

  Application.CreateForm( TfrmLocalizacaoProduto, frmLocalizacaoProduto );
  frmLocalizacaoProduto.ShowModal;

 except
 on E: Exception do
  MessageDlg( E.Message, mtError, [mbOK], 0);
 end;
end;

procedure TfrmRecebimentoImport.LiberarProcesso;
var ParamPesquisa : String;
begin
 try
  if not CheckSenha( dmGsi.UsuarioAtivo, frmRecebimentoImport.Caption, 'Liberar entrada de peça de importação no estoque', False ) then
     exit;

  ParamPesquisa := ' IT_DECLARACAO.DECLARACAOID = '+ dmIT.cdsDeclaracaoDECLARACAOID.AsString;
  GerarPesquisa( dmIT.cdsDeclaracao, ParamPesquisa );

  if dmIT.cdsDeclaracao.RecordCount > 0 then
     begin
      dmEF.shdcnnEF.AppServer.IRecebimentoImportacao( dmIT.cdsDeclaracao.Data,
                                                      dmIT.cdsMercadoria.Data,
                                                      DateToStr( Date ),
                                                      dmGSI.UsuarioAtivo );
      MessageDlg('Recebimento de importação realizado com sucesso!',mtInformation, [mbOK], 0 );
     end;
 except
 on E: Exception do
  MessageDlg( E.Message, mtError, [mbOK], 0);
 end;
end;

procedure TfrmRecebimentoImport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 dmIT.cdsDeclaracao.Close;

 Action := caFree;
 frmRecebimentoImport := Nil;
end;

procedure TfrmRecebimentoImport.actLiberarPecaExecute(Sender: TObject);
begin
 LiberarPeca;
end;

procedure TfrmRecebimentoImport.actFecharExecute(Sender: TObject);
begin
 Close;
end;

procedure TfrmRecebimentoImport.dbgrdMercadoriaDblClick(Sender: TObject);
begin
 LiberarPeca
end;

procedure TfrmRecebimentoImport.FormShow(Sender: TObject);
begin
 tmbManutTop1.TtmbDataSource        := dmIT.dsDeclaracao;
 tmbManutTop1.TtmbPreencheCombos    := true;
 tmbManutTop1.cbxCampos.ItemIndex   := 3;
 tmbManutTop1.cbxCondicao.ItemIndex := 1;
 tmbManutTop1.cbxCampos.OnExit( Self );

 frmRecebimentoImport.ActiveControl := tmbManutTop1.mktConteudo;
end;

procedure TfrmRecebimentoImport.actLiberarProcessoExecute(Sender: TObject);
begin
 LiberarProcesso
end;

procedure TfrmRecebimentoImport.actImprRotuloExecute(Sender: TObject);
begin
 GerarPesquisa( dmEF.cdsProduto, 'EF_PRODUTO.EMPRESAID     = ' + dmIT.cdsMercadoriaEMPRESAID.AsString +
                                 'AND EF_PRODUTO.PRODUTOID = ' + dmIT.cdsMercadoriaPRODUTOID.AsString  );
 frmProduto.ParamImpressaoRotulo( 'R' );
end;

procedure TfrmRecebimentoImport.actImprEtiquetaExecute(Sender: TObject);
begin
 GerarPesquisa( dmEF.cdsProduto, 'EF_PRODUTO.EMPRESAID     = ' + dmIT.cdsMercadoriaEMPRESAID.AsString +
                                 'AND EF_PRODUTO.PRODUTOID = ' + dmIT.cdsMercadoriaPRODUTOID.AsString  );
 frmProduto.ParamImpressaoRotulo( 'E' );
end;

procedure TfrmRecebimentoImport.actCancelarEntradaExecute(Sender: TObject);
begin
 beep;
end;

end.
