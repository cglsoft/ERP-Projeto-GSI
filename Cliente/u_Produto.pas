unit u_Produto;

interface

uses
  Windows, Forms, Classes, ActnList, XPStyleActnCtrls, ActnMan, ImgList,
  Controls, tmbToolEdicaoTop, ActnCtrls, ComCtrls, ToolWin, Graphics,
  tmbToolEdicaoBottom, wwdbedit, Wwdotdot, ExtCtrls, DBCtrls, StdCtrls,
  wwdbdatetimepicker, Mask, DBClient, Dialogs, Buttons, PnAjustaGrid,
  tmbToolEdicaoLista, Grids, DBGrids;

type
  TfrmProduto = class(TForm)
    PageControl1: TPageControl;
    tbshtSaldoProduto: TTabSheet;
    Panel2: TPanel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit10: TDBEdit;
    Label10: TLabel;
    DBRadioGroup4: TDBRadioGroup;
    TabSheet3: TTabSheet;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    DBEdit31: TDBEdit;
    Label34: TLabel;
    DBEdit32: TDBEdit;
    Label35: TLabel;
    DBEdit33: TDBEdit;
    Label36: TLabel;
    Label37: TLabel;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    Label38: TLabel;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    wwDBDateTimePicker3: TwwDBDateTimePicker;
    GroupBox7: TGroupBox;
    Label27: TLabel;
    Label29: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    wwDBDateTimePicker4: TwwDBDateTimePicker;
    wwDBDateTimePicker5: TwwDBDateTimePicker;
    DBMemo2: TDBMemo;
    GroupBox8: TGroupBox;
    Label30: TLabel;
    Label31: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    wwDBDateTimePicker6: TwwDBDateTimePicker;
    wwDBDateTimePicker7: TwwDBDateTimePicker;
    GroupBox9: TGroupBox;
    Label47: TLabel;
    DBEdit42: TDBEdit;
    Label48: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    Panel1: TPanel;
    tmbEdicaoBottom1: TtmbEdicaoBottom;
    StatusBar1: TStatusBar;
    Label11: TLabel;
    wwDBComboDlg3: TwwDBComboDlg;
    DBEdit2: TDBEdit;
    Label43: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    DBEdit11: TDBEdit;
    GroupBox10: TGroupBox;
    Label40: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit7: TDBEdit;
    wwDBComboDlg5: TwwDBComboDlg;
    Label8: TLabel;
    Label5: TLabel;
    wwDBComboDlg2: TwwDBComboDlg;
    DBEdit6: TDBEdit;
    Label2: TLabel;
    wwDBComboDlg1: TwwDBComboDlg;
    DBEdit8: TDBEdit;
    Label4: TLabel;
    wwDBComboDlg4: TwwDBComboDlg;
    DBEdit3: TDBEdit;
    GroupBox4: TGroupBox;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label28: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    dbedtCustoMedioUS: TDBEdit;
    dbedtCustoMedioRS: TDBEdit;
    dbedtCustoMedioTotal: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    CoolBar1: TCoolBar;
    ActionToolBar1: TActionToolBar;
    tmbEdicaoTop2: TtmbEdicaoTop;
    ImageList1: TImageList;
    actmngManutencao: TActionManager;
    actImpRotulo: TAction;
    actImpEtiqueta: TAction;
    TabSheet2: TTabSheet;
    Label45: TLabel;
    wwDBComboDlg6: TwwDBComboDlg;
    DBEdit4: TDBEdit;
    DBEdit14: TDBEdit;
    Label46: TLabel;
    DBEdit15: TDBEdit;
    Label54: TLabel;
    Label55: TLabel;
    DBCheckBox1: TDBCheckBox;
    Button1: TButton;
    DBCheckBox4: TDBCheckBox;
    TabSheet1: TTabSheet;
    BitBtn4: TBitBtn;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBCheckBox5: TDBCheckBox;
    GroupBox3: TGroupBox;
    Label77: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    mktCustoDesmemb: TMaskEdit;
    mktQtdDesmemb: TMaskEdit;
    mktProdReceptorID: TMaskEdit;
    btnDesmembrar: TBitBtn;
    Label21: TLabel;
    Label22: TLabel;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    TabSheet4: TTabSheet;
    GroupBox12: TGroupBox;
    dbgrdItem: TDBGrid;
    tmbedtlstProduto: TtmbEdicaoLista;
    tmbAjtgrdPDSItem: tPanel1;
    Label44: TLabel;
    wwDBComboDlg8: TwwDBComboDlg;
    DBEdit35: TDBEdit;
    Label56: TLabel;
    wwDBComboDlg9: TwwDBComboDlg;
    DBEdit36: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    DBEdit34: TDBEdit;
    Label23: TLabel;
    DBEdit12: TDBEdit;
    Label12: TLabel;
    Label39: TLabel;
    wwDBComboDlg7: TwwDBComboDlg;
    DBMemo1: TDBMemo;
    Label14: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure wwDBComboDlg2CustomDlg(Sender: TObject);
    procedure wwDBComboDlg1CustomDlg(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure wwDBComboDlg4CustomDlg(Sender: TObject);
    procedure wwDBComboDlg5CustomDlg(Sender: TObject);
    procedure wwDBComboDlg3CustomDlg(Sender: TObject);
    procedure actImpEtiquetaExecute(Sender: TObject);
    procedure actImpRotuloExecute(Sender: TObject);
    procedure wwDBComboDlg6CustomDlg(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnDesmembrarClick(Sender: TObject);
    procedure mktProdReceptorIDEnter(Sender: TObject);
    procedure wwDBComboDlg7CustomDlg(Sender: TObject);
    procedure wwDBComboDlg8CustomDlg(Sender: TObject);
    procedure wwDBComboDlg9CustomDlg(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ParamImpressaoRotulo( Tipo : String );
  end;

var
  frmProduto: TfrmProduto;

implementation

uses FuncoesCliente, u_dmEF,  FuncoesDsi, u_dmGSI, u_ParAnvisa, SysUtils,
  u_VisualizadorPadrao, DB, u_SaldoProduto, u_dmPP, u_PadraoEdicao;

{$R *.dfm}


procedure RegravarProduto;
begin
 dmEF.cdsProduto.DisableControls;
 while not dmEF.cdsProduto.Eof do
 begin
  dmEF.cdsProduto.Edit;
  dmEF.cdsProduto.Post;
  dmEF.cdsProduto.Next;
 end;
 dmEF.cdsProduto.EnableConstraints;
end;

procedure TfrmProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 dmEF.dsProduto.DataSet.Cancel;
 Action := caFree;
 frmProduto := nil;
end;

procedure TfrmProduto.FormKeyPress(Sender: TObject; var Key: Char);
begin
 // Habilitar a propriedade KeyPreview do Form para funcionar o Enter como Tab
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;


procedure TfrmProduto.wwDBComboDlg2CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmEF.dsGrupo, 'GRUPOID', dmEF.cdsProdutoGRUPOID.AsString );
 ExecLoockupRetorno(dmEF.cdsProduto, 'GRUPOID', 'GRUPOID');
end;

procedure TfrmProduto.wwDBComboDlg1CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmEF.dsSubGrupo, 'SUBGRUPOID', dmEF.cdsProdutoSUBGRUPOID.AsString );
 ExecLoockupRetorno(dmEF.cdsProduto, 'SUBGRUPOID', 'SUBGRUPOID');
end;

procedure TfrmProduto.FormShow(Sender: TObject);
begin
 if CheckSenha(dmGsi.UsuarioAtivo,'Produto','Visualizar custos na tabela de produtos',False) then
    begin
     dbedtCustoMedioUS.Font.Color    := clBlack;
     dbedtCustoMedioRS.Font.Color    := clBlack;
     dbedtCustoMedioTotal.Font.Color := clBlack;
    end
 else
    begin
     dbedtCustoMedioUS.Font.Color    := clWhite;
     dbedtCustoMedioRS.Font.Color    := clWhite;
     dbedtCustoMedioTotal.Font.Color := clWhite;
    end;

 tmbedtlstProduto.TtmbClassOwnerEspec := TFrmPadraoEdicao;
 tmbedtlstProduto.TtmbFormOwnerEspec  := FrmPadraoEdicao;
 tmbedtlstProduto.TtmbClientDataSet   := dmEF.cdsProdutoItem;
 tmbedtlstProduto.TtmbDataSource      := dmEF.dsProdutoItem;

end;

procedure TfrmProduto.wwDBComboDlg4CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmEF.dsEntidade, 'ENTIDADEID', dmEF.cdsProdutoFORNECEDORID.AsString );
 ExecLoockupRetorno(dmEF.cdsProduto, 'FORNECEDORID', 'ENTIDADEID');
end;

procedure TfrmProduto.wwDBComboDlg5CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmEF.dsUnidade, 'UNIDADEID', dmEF.cdsProdutoUNIDADEID.Value );
 ExecLoockupRetorno(dmEF.cdsProduto, 'UNIDADEID', 'UNIDADEID');

end;

procedure TfrmProduto.wwDBComboDlg3CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmEF.dsEmpresa, 'EMPRESAID', dmEF.cdsProdutoEMPRESAID.AsString );
 ExecLoockupRetorno(dmEF.cdsProduto, 'EMPRESAID', 'EMPRESAID');
end;

procedure TfrmProduto.ParamImpressaoRotulo( Tipo : String );
var iSQL : String;
     cds : TClientDataSet;
begin
 iSQL := 'SELECT MODELOID, REGANVISAID FROM PP_CATALOGO ' +
         'WHERE ' +
         ' MODELOID = ' + QuotedStr( dmEF.cdsProdutoPARTNUMBERID.Value );
 try
  try
   ExecDynamicProvider( -1, iSQL, Cds );

   if cds.IsEmpty then
      raise Exception.Create('Registro ANVISA não localizado na tabela de CATALOGO'  );

   if Tipo = 'E' then
      if dmEF.cdsProdutoSUBGRUPOID.Value <> 8 then
         raise Exception.Create( 'Produto não cadastrado no Sub Grupo de Aparelhos');

   // Impressão da Etiqueta
   Application.CreateForm( TfrmParAnvisa, frmParAnvisa );
   frmParAnvisa.Tipo := Tipo;
   frmParAnvisa.edtRegAnvisa.Text := cds.FieldByName('REGANVISAID').AsString;
   frmParAnvisa.ShowModal;

   cds.Close;
  except
   on E: Exception do MessageDlg( E.Message, mtWarning, [mbOK], 0 );
  end;

 finally
  FreeAndNil( cds );
 end;
end;

procedure TfrmProduto.actImpEtiquetaExecute(Sender: TObject);
begin
 ParamImpressaoRotulo( 'E' );
end;

procedure TfrmProduto.actImpRotuloExecute(Sender: TObject);
begin
 ParamImpressaoRotulo( 'R' );
end;

procedure TfrmProduto.wwDBComboDlg6CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmEF.dsEmpresa, 'EMPRESAID', dmEF.cdsProdutoEMPRESASIMILARID.AsString );
 ExecLoockupRetorno(dmEF.cdsProduto, 'EMPRESASIMILARID', 'EMPRESASIMILARID');
end;

procedure TfrmProduto.wwDBComboDlg7CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmPP.dsCatalogo, 'MODELOID', dmEF.cdsProdutoMODELOID.AsString );
 ExecLoockupRetorno(dmEF.cdsProduto, 'MODELOID', 'MODELOID');
end;

procedure TfrmProduto.wwDBComboDlg8CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmEF.dsTipoItem, 'TIPOITEMID', dmEF.cdsProdutoTIPOITEMID.AsString );
 ExecLoockupRetorno(dmEF.cdsProduto, 'TIPOITEMID', 'TIPOITEMID');
end;

procedure TfrmProduto.wwDBComboDlg9CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmEF.dsGeneroItem, 'GENEROTEMID', dmEF.cdsProdutoGENEROITEMID.AsString );
 ExecLoockupRetorno(dmEF.cdsProduto, 'GENEROITEMID', 'GENEROITEMID');
end;

procedure TfrmProduto.FormCreate(Sender: TObject);
begin
 frmSaldoProduto := TfrmSaldoProduto.Create( Self );
 frmSaldoProduto.Parent := tbshtSaldoProduto;
 frmSaldoProduto.Show;
end;

procedure TfrmProduto.Button1Click(Sender: TObject);
begin
 dmEF.cdsProduto.DisableControls;
 RegravarProduto;
 dmEF.cdsProduto.EnableConstraints;
end;

procedure TfrmProduto.btnDesmembrarClick(Sender: TObject);
var dsState : TDataSetState;
begin
 dsState := dmEF.cdsProduto.State;

 if not CheckSenha(dmGsi.UsuarioAtivo,'Produto','Desmembramento de Custo',True ) then
    Exit;

 if MessageDlg('Confirma o desmembramento de custo?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    Exit;

 dmEF.shdcnnEF.AppServer.IDesmembCusto( dmEF.cdsProdutoEMPRESAID.AsString, dmEF.cdsProdutoPRODUTOID.AsString,
                                        mktProdReceptorID.Text, StrToCurr( mktQtdDesmemb.Text ),
                                        StrToCurr( mktCustoDesmemb.Text ),
                                        dmGsi.UsuarioAtivo );

 dmEF.cdsProduto.RefreshRecord;

 if dsState in [dsEdit, dsInsert] then
    dmEF.cdsProduto.Edit;

 MessageDlg('Desmembramento de custo ocorrido com sucesso',mtInformation, [mbOK], 0 );
end;

procedure TfrmProduto.mktProdReceptorIDEnter(Sender: TObject);
begin
 TMaskEdit( Sender ).SelStart := 0;
end;

end.
