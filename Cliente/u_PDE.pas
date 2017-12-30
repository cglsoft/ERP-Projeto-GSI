unit u_PDE;

interface

uses
  Windows, Messages, Forms, SysUtils, Classes, ActnList, XPStyleActnCtrls,
  ActnMan, ImgList, Controls, tmbToolEdicaoTop, ActnCtrls, ToolWin, ComCtrls,
  tmbToolEdicaoBottom, fcStatusBar, ExtCtrls, DBCtrls, StdCtrls, PnAjustaGrid,
  tmbToolEdicaoLista, Grids, DBGrids, wwdbdatetimepicker, wwdbedit, Wwdotdot,
  Mask, Variants, DBClient, DB, Dialogs;

type
  TfrmPDE = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    Splitter1: TSplitter;
    Panel8: TPanel;
    Panel9: TPanel;
    tmbEdicaoBottom2: TtmbEdicaoBottom;
    GroupBox4: TGroupBox;
    GroupBox11: TGroupBox;
    TabSheet3: TTabSheet;
    TabSheet7: TTabSheet;
    GroupBox7: TGroupBox;
    Label30: TLabel;
    Label29: TLabel;
    Label28: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label27: TLabel;
    DBEdit31: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit32: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBEdit36: TDBEdit;
    DBEdit35: TDBEdit;
    GroupBox8: TGroupBox;
    Label25: TLabel;
    Label35: TLabel;
    DBEdit42: TDBEdit;
    DBRadioGroup4: TDBRadioGroup;
    wwDBComboDlg5: TwwDBComboDlg;
    Panel7: TPanel;
    Label9: TLabel;
    Label12: TLabel;
    Label34: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    wwDBDateTimePicker4: TwwDBDateTimePicker;
    CoolBar1: TCoolBar;
    ActionToolBar1: TActionToolBar;
    tmbEdicaoTop2: TtmbEdicaoTop;
    ImageList1: TImageList;
    actmngManutencao: TActionManager;
    actRetornoPecas: TAction;
    DBEdit8: TDBEdit;
    Label2: TLabel;
    Label10: TLabel;
    wwDBComboDlg3: TwwDBComboDlg;
    DBEdit9: TDBEdit;
    Label13: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label42: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBMemo1: TDBMemo;
    wwDBComboDlg4: TwwDBComboDlg;
    DBRadioGroup5: TDBRadioGroup;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    Label26: TLabel;
    Label37: TLabel;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit23: TDBEdit;
    GroupBox5: TGroupBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    GroupBox9: TGroupBox;
    Label1: TLabel;
    DBEdit5: TDBEdit;
    Label4: TLabel;
    DBEdit24: TDBEdit;
    Label5: TLabel;
    DBEdit25: TDBEdit;
    Label14: TLabel;
    DBEdit26: TDBEdit;
    Label15: TLabel;
    DBEdit27: TDBEdit;
    Label16: TLabel;
    DBEdit28: TDBEdit;
    Label17: TLabel;
    DBEdit29: TDBEdit;
    Label18: TLabel;
    DBEdit33: TDBEdit;
    Label19: TLabel;
    DBEdit37: TDBEdit;
    Label20: TLabel;
    DBEdit38: TDBEdit;
    Label21: TLabel;
    DBEdit39: TDBEdit;
    Label22: TLabel;
    DBEdit40: TDBEdit;
    Label23: TLabel;
    DBEdit41: TDBEdit;
    Label51: TLabel;
    DBEdit43: TDBEdit;
    Label52: TLabel;
    DBEdit44: TDBEdit;
    Label53: TLabel;
    DBEdit45: TDBEdit;
    Label54: TLabel;
    DBEdit46: TDBEdit;
    Splitter2: TSplitter;
    Panel1: TPanel;
    GroupBox12: TGroupBox;
    dbgrdPDEItem: TDBGrid;
    GroupBox10: TGroupBox;
    dbgrdPDEItemBar: TDBGrid;
    tmbEdicaoLista1: TtmbEdicaoLista;
    tmbedtlstProduto: TtmbEdicaoLista;
    fcStatusBar1: TfcStatusBar;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    tmbAjtgrdPDEItem: tPanel1;
    tmbAjtgrdPDEItemBar: tPanel1;
    PageControl2: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet4: TTabSheet;
    GroupBox3: TGroupBox;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label41: TLabel;
    Label56: TLabel;
    DBEdit20: TDBEdit;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    DBEdit19: TDBEdit;
    wwDBComboDlg1: TwwDBComboDlg;
    DBEdit21: TDBEdit;
    wwDBDateTimePicker3: TwwDBDateTimePicker;
    GroupBox2: TGroupBox;
    Label11: TLabel;
    Label24: TLabel;
    wwDBComboDlg2: TwwDBComboDlg;
    DBEdit12: TDBEdit;
    DBEdit30: TDBEdit;
    GroupBox6: TGroupBox;
    Label46: TLabel;
    Label47: TLabel;
    Label36: TLabel;
    DBEdit22: TDBEdit;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    wwDBDateTimePicker5: TwwDBDateTimePicker;
    DBEdit47: TDBEdit;
    Label55: TLabel;
    TabSheet5: TTabSheet;
    GroupBox13: TGroupBox;
    Label33: TLabel;
    wwDBComboDlg6: TwwDBComboDlg;
    DBMemo3: TDBMemo;
    DBMemo2: TDBMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure wwDBComboDlg1CustomDlg(Sender: TObject);
    procedure edtPedidoCustomDlg(Sender: TObject);
    procedure wwDBComboDlg5CustomDlg(Sender: TObject);
    procedure wwDBComboDlg3CustomDlg(Sender: TObject);
    procedure wwDBComboDlg4CustomDlg(Sender: TObject);
    procedure wwDBComboDlg2CustomDlg(Sender: TObject);
    procedure wwDBComboDlg6CustomDlg(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure PageControl1Change(Sender: TObject);
    procedure actRetornoPecasExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPDE: TfrmPDE;

implementation

uses u_dmEF,  u_dmGSI, u_PadraoEdicao, FuncoesCliente, u_RetornoNFS, u_Cep, u_dmCP,
  u_OS, u_PdeItem;


{$R *.dfm}

procedure TfrmPDE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if not FinalFormulario(dmEF.cdsPde,' do Pedido de Entrada ') then
    Action := caNone
 else
    begin
     Action := caFree;
     frmPDE := Nil;
    end;
end;

procedure TfrmPDE.FormShow(Sender: TObject);
begin
 if dmEF.cdsPdeEMPRESAID.AsInteger in [1,12] then
    wwDBDateTimePicker3.ReadOnly := True
 else
    wwDBDateTimePicker3.ReadOnly := False;

 tmbedtlstProduto.TtmbClassOwnerEspec := TfrmPDEItem;
 tmbedtlstProduto.TtmbFormOwnerEspec  := frmPDEItem;
 tmbedtlstProduto.TtmbClientDataSet   := dmEF.cdsPdeItem;
 tmbedtlstProduto.TtmbDataSource      := dmEF.dsPdeItem;
 tmbEdicaoLista1.TtmbClassOwnerEspec  := TFrmPadraoEdicao;
 tmbEdicaoLista1.TtmbFormOwnerEspec   := FrmPadraoEdicao;
 tmbEdicaoLista1.TtmbClientDataSet    := dmEF.cdsPdeItemBar;
 tmbEdicaoLista1.TtmbDataSource       := dmEF.dsPdeItemBar;
end;

procedure TfrmPDE.wwDBComboDlg1CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmEF.dsModeloDocFiscal, 'MODELODOCFISCALID', wwDBComboDlg1.text, 'Modelo do Doc. Fiscal' );
 ExecLoockupRetorno(dmEF.cdsPde, 'MODELODOCFISCALID', 'MODELODOCFISCALID');
end;

procedure TfrmPDE.edtPedidoCustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmEF.dsEntidade, 'NUMERO', dmEF.cdsPdeENTIDADEID.AsString, 'Dados do Destinatário' );
 ExecLoockupRetorno(dmEF.cdsPde, 'NUMERO', 'NUMERO');
end;

procedure TfrmPDE.wwDBComboDlg5CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmEF.dsEntidade, 'ENTIDADEID', dmEF.cdsPdeTRANSPORTADORID.AsString, 'Transportador' );
 ExecLoockupRetorno(dmEF.cdsPde, 'TRANSPORTADORID', 'ENTIDADEID');
end;

procedure TfrmPDE.wwDBComboDlg3CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmEF.dsEntidade, 'ENTIDADEID', wwDBComboDlg3.Text, 'Destinatário' );
 ExecLoockupRetorno(dmEF.cdsPde, 'ENTIDADEID', 'ENTIDADEID');
end;

procedure TfrmPDE.wwDBComboDlg4CustomDlg(Sender: TObject);
begin
 try
  frmCEP := TfrmCEP.Create( Self );
  frmCEP.ShowModal;
  if Assigned( frmCEP ) then
     if frmCEP.AtualizaCEP then
        if not dmCP.cdsPesquisa.IsEmpty then
           dmEF.cdsPDECEPID.Value := dmCP.cdsPesquisaCEPID.Value;
 finally
  FreeAndNil( frmCEP );
 end;
end;

procedure TfrmPDE.wwDBComboDlg2CustomDlg(Sender: TObject);
var iSql, CfopInicial : String;
begin
 iSQL    := ' SELECT' +
            '  EF_NATUREZAOP.NATUREZAOPID,' +
            '  EF_NATUREZAOP.CFOP,' +
            '  EF_NATUREZAOP.TIPOMOVIMENTO,' +
            '  EF_NATUREZAOP.DESCRICAOOPERACAOUSUARIO' +
            '  FROM' +
            '  EF_NATUREZAOP EF_NATUREZAOP,' +
            '  EF_NATUREZAEMPRESA EF_NATUREZAEMPRESA' +
            ' WHERE' +
            '  EF_NATUREZAOP.NATUREZAOPID = EF_NATUREZAEMPRESA.NATUREZAOPID(+)';

 dmEF.cdsEmpresa.Open;
 if not dmEF.cdsEmpresa.Locate('EMPRESAID', VarArrayOf([ dmEF.cdsPdeEMPRESAID.AsString]), [loPartialKey]) then
    begin
     MessageDlg('Problemas com o cadatro de empresas, favor comunidar o departamento de Informática.', mtInformation,[mbOk], 0);
     exit
    end;

 if ( trim( dmEF.cdsPdePAIS.Value ) = 'BRASIL' ) or ( trim( dmEF.cdsPdePAIS.Value ) = 'BRAZIL' ) then
    begin
     // Para dentro do Estado = 1 para fora = 2 Ex. Origem ->TABOÃO Destino->Recife = 1;
     if dmEF.cdsPdeSIGLAUFID.Value = dmEF.cdsEmpresaSIGLAUFID.Value then
        CfopInicial := '1'
     else
        CfopInicial := '2';
    end
 else
    CfopInicial := '3';  // Exterior;

 iSql := iSql + '  AND SUBSTR( EF_NATUREZAOP.CFOP, 1, 1 ) =  ' + CfopInicial +
                '  AND EF_NATUREZAEMPRESA.EMPRESAID = ' + dmEF.cdsPdeEMPRESAID.AsString;

 CriaFormLookUp( dmEF.cdsNaturezaOp.Name, iSql, dmEF.cdsPdeNATUREZAOPID,'NATUREZAOPID','NATUREZAOPID' );
 dmEF.cdsEmpresa.Close;
end;

procedure TfrmPDE.wwDBComboDlg6CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmEF.dsObservacao, 'OBSERVACAOID', wwDBComboDlg6.Text, 'Observação ID' );
 ExecLoockupRetorno(dmEF.cdsPde, 'OBSERVACAOID', 'OBSERVACAOID');
end;


procedure TfrmPDE.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;

procedure TfrmPDE.PageControl1Change(Sender: TObject);
begin
 if PageControl1.ActivePageIndex = 1 then
    begin
     tmbAjtgrdPDEItem.tmbAjusta    := True;
     tmbAjtgrdPDEItemBar.tmbAjusta := True;
    end;
end;

procedure TfrmPDE.actRetornoPecasExecute(Sender: TObject);
begin
 Application.CreateForm( TfrmRetornoNFS, frmRetornoNFS );
 frmRetornoNFS.ShowModal;
end;

end.
