unit u_FichaEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, Grids, DBGrids, ComCtrls, ToolWin,
  tmbToolEdicaoBottom, tmbToolEdicaoLista, DBCtrls, Buttons, ActnList,
  XPStyleActnCtrls, ActnMan, ActnCtrls, ActnMenus, ImgList, wwdbedit,
  Wwdotdot, DBClient, PnAjustaGrid;

type
  TfrmFichaEstoque = class(TForm)
    StatusBar1: TStatusBar;
    actmngKardex: TActionManager;
    actReprocessarKdx: TAction;
    actAnalisarExcel: TAction;
    actFechar: TAction;
    ImageList1: TImageList;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Shape1: TShape;
    Label5: TLabel;
    Label8: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    DBEdit6: TDBEdit;
    mktProduto: TMaskEdit;
    cmbEmpresa: TComboBox;
    DBEdit10: TDBEdit;
    tmbEdtLstKardex: TtmbEdicaoLista;
    CoolBar1: TCoolBar;
    ActionToolBar1: TActionToolBar;
    pgctrlFicha: TPageControl;
    TabSheet2: TTabSheet;
    tbshtSaldoProduto: TTabSheet;
    DBGrid1: TDBGrid;
    Splitter1: TSplitter;
    actKardexID: TAction;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure actReprocessarKdxExecute(Sender: TObject);
    procedure mktProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure actFecharExecute(Sender: TObject);
    procedure actAnalisarExcelExecute(Sender: TObject);
    procedure actKardexIDExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure SetDataSetEdicaoLista;
    function  GetEmpresa : String;
  public
    { Public declarations }
  end;

var
  frmFichaEstoque: TfrmFichaEstoque;

implementation

uses u_dmEF,FuncoesCliente, u_PadraoEdicao, u_dmGSI, DB, u_SaldoProduto,
  u_Exportar, u_NFS, u_NFE;

{$R *.dfm}

procedure TfrmFichaEstoque.SetDataSetEdicaoLista;
begin
 tmbEdtLstKardex.TtmbClassOwnerEspec := TFrmPadraoEdicao;
 tmbEdtLstKardex.TtmbFormOwnerEspec  := FrmPadraoEdicao;
end;

procedure TfrmFichaEstoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 if not FinalFormulario( dmEF.cdsKardex,'da Ficha de Estoque') then
    Action := caNone
 else
    begin
     cmbEmpresa.Clear;
     dmEF.cdsKardex.Close;
     Action := cafree;
     frmFichaEstoque := nil;
    end;
end;

procedure TfrmFichaEstoque.FormKeyPress(Sender: TObject; var Key: Char);
begin
 // Habilitar a propriedade KeyPreview do Form para funcionar o Enter como Tab
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;

procedure TfrmFichaEstoque.FormCreate(Sender: TObject);
var iSQL : String;
begin
 SetDataSetEdicaoLista;
 iSQL := ' SELECT EF_EMPRESA.NOMEFANTASIA'+
         '   FROM EF_EMPRESA';
 AdicionarCamposCombo( cmbEmpresa ,iSQL,'NOMEFANTASIA' );
 cmbEmpresa.ItemIndex := EmpresaAtualId - 1;

 frmSaldoProduto := TfrmSaldoProduto.Create( Self );
 frmSaldoProduto.Align  := alLeft;
 frmSaldoProduto.Parent := tbshtSaldoProduto;
 frmSaldoProduto.Show;
end;

procedure TfrmFichaEstoque.actReprocessarKdxExecute(Sender: TObject);
begin
 if not CheckSenha(dmGsi.UsuarioAtivo,'Ficha de Estoque','Reprocessar Kardex' , True) then
    exit;

 MessageDlg('Atenção o Reprocessamento se dará, para o próximo registro, logo o registro anterior precisa estar correto.', mtInformation, [mbOk], 0);

 if MessageDlg('Confirma o Reprocessamento deste produto no Kardex. ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;

 dmEF.shdcnnEF.AppServer.IReprocessarKardex( GetEmpresa, mktProduto.Text, 1, dmEF.cdsKardexKARDEXID.AsInteger );
 dmEF.cdsKardex.Refresh;

 MessageDlg('KARDEX - Custos atualizados com sucesso!',mtInformation,[mbOK],0);
end;


procedure TfrmFichaEstoque.DBGrid1DblClick(Sender: TObject);
var iSQL : String;
begin
 if dmEF.cdsKardexTIPODOCUMENTO.AsString = 'NFS' then
    begin
     // Posicionar na Nota fiscal expecífica;
     iSQL := 'EF_NFS.EMPRESAID = ' + dmEF.cdsKardexEMPRESAID.AsString +
             ' AND EF_NFS.NFSID = ' + dmEF.cdsKardexNUMDOCUMENTO.AsString +
             ' AND EF_NFS.DATAEMISSAOID = ' + QuotedStr( FormatDateTime( 'dd/mm/yyyy', dmEF.cdsKardexDATAOCORRENCIA.AsDateTime ));
     GerarPesquisa( dmEF.cdsNfs, iSQL );

     if not Assigned( frmNfs ) then
        Application.CreateForm( TfrmNfs, frmNfs );
     frmNfs.Show;
    end
 else
    begin
     // Posicionar na Nota fiscal expecífica;
     iSQL := 'EF_NFE.EMPRESAID = ' + dmEF.cdsKardexEMPRESAID.AsString +
             ' AND EF_NFE.NFEID = ' + dmEF.cdsKardexNUMDOCUMENTO.AsString +
             ' AND EF_NFE.DATAENTRADA = ' + QuotedStr( FormatDateTime( 'dd/mm/yyyy', dmEF.cdsKardexDATAOCORRENCIA.AsDateTime ));
     GerarPesquisa( dmEF.cdsNfe, iSQL );

     if not Assigned( frmNfe ) then
        Application.CreateForm( TfrmNfe, frmNfe );
     frmNfe.Show;
    end;
end;

procedure TfrmFichaEstoque.mktProdutoKeyPress(Sender: TObject;
  var Key: Char);
var ParamPesquisa : String;
    EmpresaId     : String;
begin
 EmpresaId := '';
 if key = #13 then
    with dmEF do
    begin
     EmpresaId := GetEmpresa;
     if ( EmpresaId <> '' ) then
        begin
         ParamPesquisa := 'EF_PRODUTO.EMPRESAID = '+ EmpresaId +
                          ' AND EF_PRODUTO.PRODUTOID = '+ mktProduto.Text;
         GerarPesquisa( cdsProduto,ParamPesquisa );
         if cdsPRODUTO.IsEmpty then
            begin
             MessageDlg('Produto não encontrado!',mtError,[mbOK],0 );
             Exit;
            end
         else
            begin
             ParamPesquisa :=  ' EF_KARDEX.EMPRESAID = '+ EmpresaId + ' ' +
                               ' AND EF_KARDEX.PRODUTOID = '+ mktProduto.Text +
                               ' ORDER BY EF_KARDEX.EMPRESAID,EF_KARDEX.DATAOCORRENCIA,EF_KARDEX.KARDEXID';
             GerarPesquisa( cdsKardex,ParamPesquisa );
             cdsKardex.Last;
             if cdsKardex.IsEmpty then
                MessageDlg( 'Produto não encontrado!',mtError,[mbOK],0 );
            end;
        end{if EmpresaId}
     else
        MessageDlg( 'Selecione uma Empresa!',mtInformation,[mbOK],0 );
    end;{with}
end;

procedure TfrmFichaEstoque.actFecharExecute(Sender: TObject);
begin
 frmFichaEstoque.Close;
end;

procedure TfrmFichaEstoque.actKardexIDExecute(Sender: TObject);
begin
 if not CheckSenha(dmGsi.UsuarioAtivo,'Ficha de Estoque','Reprocessar (KARDEX ID) fora da sequência' , True) then
    exit;

  while not dmEF.cdsKardex.Eof do
  begin
   dmEF.cdsKardex.Edit;
   dmEF.cdsKardexKARDEXID.Value := ExecSequencia( 'SQ_EF_KARDEX_KARDEXID');
   dmEF.cdsKardex.Post;
   dmEF.cdsKardex.Next;
  end;

end;

function TfrmFichaEstoque.GetEmpresa : String;
var cds  : TClientDataSet;
    iSQL : String;
begin
 try
  try
   cds := nil;
   iSQL :='SELECT EF_EMPRESA.EMPRESAID'+
          '  FROM EF_EMPRESA '+
          ' WHERE EF_EMPRESA.NOMEFANTASIA = ' + QuotedStr( cmbEmpresa.Text );

   ExecDynamicProvider( -1,iSQL,cds );
   if not cds.IsEmpty then
      Result := cds.FieldByName('EMPRESAID').AsString;

   cds.Close;
  except
   on E: Exception do
      raise Exception.Create(E.message);
  end;
 finally
  FreeAndNil( cds );
 end;
end;

procedure TfrmFichaEstoque.actAnalisarExcelExecute(Sender: TObject);
begin
 with dmEF do
 begin
  if not cdsKardex.IsEmpty then
     begin
      frmExportar := TfrmExportar.Create(nil);
      frmExportar.DataSource := dsKardex;
      frmExportar.Show;
     end
  else
    MessageDlg('É necessário Gerar o Relatório primeiro!',mtWarning, [mbok],0 );
 end;
end;

end.
