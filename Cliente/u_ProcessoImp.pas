unit u_ProcessoImp;

interface

uses
  Windows, Messages, Forms, DB, DBClient, ImgList, Controls, Classes, ActnList,
  XPStyleActnCtrls, ActnMan, ActnCtrls, ToolWin, ComCtrls, SysUtils, Dialogs,
  tmbToolEdicaoBottom, wwdbdatetimepicker, fcStatusBar, DBCtrls, Variants,
  PnAjustaGrid, tmbToolEdicaoLista, ExtCtrls, Buttons, Grids, DBGrids,
  StdCtrls, wwdbedit, Wwdotdot, Mask;

type
  TfrmProcessoImp = class(TForm)
    pgctrlDI: TPageControl;
    TabSheet1: TTabSheet;
    fcStatusBar1: TfcStatusBar;
    Panel4: TPanel;
    Label14: TLabel;
    Label16: TLabel;
    DBEdit1: TDBEdit;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    Panel1: TPanel;
    tmbEdicaoBottom1: TtmbEdicaoBottom;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit2: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBMemo3: TDBMemo;
    wwDBComboDlg4: TwwDBComboDlg;
    PageControl1: TPageControl;
    tbshtImpCondPagto: TTabSheet;
    tbshtRevCondPagto: TTabSheet;
    Label23: TLabel;
    Label22: TLabel;
    DBEdit4: TDBEdit;
    wwDBComboDlg6: TwwDBComboDlg;
    DBEdit13: TDBEdit;
    DBEdit22: TDBEdit;
    Label24: TLabel;
    Splitter1: TSplitter;
    tbshtAparelhoImp: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    GroupBox7: TGroupBox;
    dbgrdPDEItem: TDBGrid;
    tmbedtlstInterv: TtmbEdicaoLista;
    actmngManutencao: TActionManager;
    ImageList1: TImageList;
    CoolBar1: TCoolBar;
    ActionToolBar1: TActionToolBar;
    actCancFat: TAction;
    actImpressao: TAction;
    TabSheet2: TTabSheet;
    GroupBox9: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox8: TGroupBox;
    dbgrdPDEItemBar: TDBGrid;
    tmbedtlstBonif: TtmbEdicaoLista;
    tmbedtlstVend: TtmbEdicaoLista;
    DBRichEdit1: TDBRichEdit;
    Label51: TLabel;
    cdsRelPedVend: TClientDataSet;
    dsRelPedVend: TDataSource;
    Label18: TLabel;
    wwDBDateTimePicker4: TwwDBDateTimePicker;
    Label4: TLabel;
    wwDBDateTimePicker5: TwwDBDateTimePicker;
    GroupBox1: TGroupBox;
    Label73: TLabel;
    Label69: TLabel;
    Label6: TLabel;
    Label68: TLabel;
    Label7: TLabel;
    Label135: TLabel;
    Label136: TLabel;
    DBMemo5: TDBMemo;
    DBEdit49: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit113: TDBEdit;
    DBEdit114: TDBEdit;
    GroupBox3: TGroupBox;
    Label77: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    DBMemo6: TDBMemo;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet9: TTabSheet;
    TabSheet10: TTabSheet;
    GroupBox6: TGroupBox;
    Label8: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label90: TLabel;
    DBCheckBox5: TDBCheckBox;
    DBEdit60: TDBEdit;
    DBEdit61: TDBEdit;
    DBEdit62: TDBEdit;
    DBEdit66: TDBEdit;
    DBEdit67: TDBEdit;
    GroupBox11: TGroupBox;
    Label91: TLabel;
    Label109: TLabel;
    Label61: TLabel;
    Label82: TLabel;
    DBCheckBox6: TDBCheckBox;
    DBEdit81: TDBEdit;
    DBEdit94: TDBEdit;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    GroupBox13: TGroupBox;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    DBRadioGroup2: TDBRadioGroup;
    DBCheckBox1: TDBCheckBox;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    DBMemo4: TDBMemo;
    GroupBox14: TGroupBox;
    Label92: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    DBGrid5: TDBGrid;
    DBRadioGroup5: TDBRadioGroup;
    DBMemo9: TDBMemo;
    DBCheckBox3: TDBCheckBox;
    DBEdit68: TDBEdit;
    DBEdit69: TDBEdit;
    DBEdit70: TDBEdit;
    DBEdit71: TDBEdit;
    DBEdit72: TDBEdit;
    DBEdit73: TDBEdit;
    DBEdit74: TDBEdit;
    DBEdit75: TDBEdit;
    DBEdit76: TDBEdit;
    DBEdit77: TDBEdit;
    DBEdit78: TDBEdit;
    DBEdit79: TDBEdit;
    DBEdit80: TDBEdit;
    GroupBox18: TGroupBox;
    Label31: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    SpeedButton2: TSpeedButton;
    Label40: TLabel;
    Label131: TLabel;
    Label134: TLabel;
    DBEdit17: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBMemo2: TDBMemo;
    DBEdit112: TDBEdit;
    GroupBox19: TGroupBox;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    DBEdit15: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit41: TDBEdit;
    GroupBox20: TGroupBox;
    Label41: TLabel;
    Label42: TLabel;
    DBEdit27: TDBEdit;
    DBEdit16: TDBEdit;
    GroupBox21: TGroupBox;
    Label47: TLabel;
    Label48: TLabel;
    DBEdit26: TDBEdit;
    DBEdit34: TDBEdit;
    TabSheet11: TTabSheet;
    TabSheet12: TTabSheet;
    TabSheet13: TTabSheet;
    GroupBox22: TGroupBox;
    Label49: TLabel;
    Label50: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit59: TDBEdit;
    GroupBox23: TGroupBox;
    Label54: TLabel;
    Label55: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    DBEdit63: TDBEdit;
    DBEdit64: TDBEdit;
    DBEdit82: TDBEdit;
    DBEdit83: TDBEdit;
    GroupBox24: TGroupBox;
    Label88: TLabel;
    Label89: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    DBEdit65: TDBEdit;
    DBEdit84: TDBEdit;
    DBEdit86: TDBEdit;
    DBEdit87: TDBEdit;
    GroupBox25: TGroupBox;
    Label108: TLabel;
    Label110: TLabel;
    DBEdit88: TDBEdit;
    DBEdit89: TDBEdit;
    GroupBox26: TGroupBox;
    Label111: TLabel;
    Label112: TLabel;
    Label114: TLabel;
    Label115: TLabel;
    DBRadioGroup4: TDBRadioGroup;
    DBCheckBox2: TDBCheckBox;
    DBEdit90: TDBEdit;
    DBEdit91: TDBEdit;
    DBEdit92: TDBEdit;
    DBMemo8: TDBMemo;
    GroupBox27: TGroupBox;
    Label116: TLabel;
    Label117: TLabel;
    Label118: TLabel;
    Label119: TLabel;
    DBEdit99: TDBEdit;
    DBEdit100: TDBEdit;
    DBMemo10: TDBMemo;
    TabSheet8: TTabSheet;
    GroupBox29: TGroupBox;
    Label123: TLabel;
    Label121: TLabel;
    DBMemo12: TDBMemo;
    DBEdit104: TDBEdit;
    GroupBox30: TGroupBox;
    Label122: TLabel;
    DBMemo11: TDBMemo;
    GroupBox5: TGroupBox;
    Label15: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label43: TLabel;
    Label32: TLabel;
    Label17: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label11: TLabel;
    DBEdit12: TDBEdit;
    wwDBComboDlg5: TwwDBComboDlg;
    wwDBComboDlg2: TwwDBComboDlg;
    DBEdit5: TDBEdit;
    DBEdit10: TDBEdit;
    wwDBComboDlg10: TwwDBComboDlg;
    DBEdit11: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBEdit25: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    GroupBox4: TGroupBox;
    Label29: TLabel;
    Label28: TLabel;
    Label30: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label59: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit44: TDBEdit;
    GroupBox15: TGroupBox;
    Label81: TLabel;
    Label60: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label25: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label137: TLabel;
    Label144: TLabel;
    Label145: TLabel;
    DBEdit58: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit52: TDBEdit;
    DBEdit115: TDBEdit;
    DBEdit117: TDBEdit;
    DBEdit118: TDBEdit;
    GroupBox16: TGroupBox;
    Label113: TLabel;
    Label129: TLabel;
    DBEdit85: TDBEdit;
    DBEdit95: TDBEdit;
    GroupBox17: TGroupBox;
    SpeedButton1: TSpeedButton;
    Panel2: TPanel;
    GroupBox12: TGroupBox;
    dbgrdItem: TDBGrid;
    tmbedtlstApImp: TtmbEdicaoLista;
    tmbAjtgrdPDSItem: tPanel1;
    Splitter2: TSplitter;
    GroupBox10: TGroupBox;
    dbgrdItemBar: TDBGrid;
    tmbedtlstApImpComp: TtmbEdicaoLista;
    actAddAparelho: TAction;
    dbgComissao: TDBGrid;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBComboDlg6CustomDlg(Sender: TObject);
    procedure wwDBComboDlg5CustomDlg(Sender: TObject);
    procedure wwDBComboDlg2CustomDlg(Sender: TObject);
    procedure wwDBComboDlg10CustomDlg(Sender: TObject);
    procedure wwDBComboDlg4CustomDlg(Sender: TObject);
    procedure wwDBComboDlg8CustomDlg(Sender: TObject);
    procedure wwDBComboDlg7CustomDlg(Sender: TObject);
    procedure wwDBComboDlg9CustomDlg(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actCancFatExecute(Sender: TObject);
    procedure actImpressaoExecute(Sender: TObject);
    procedure actAddAparelhoExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProcessoImp: TfrmProcessoImp;

implementation

uses u_dmPP, FuncoesCliente, u_VisualTabelaPrecoPedVend, u_dmEF, u_Cep,
  u_dmCP, u_PadraoEdicao, u_PedVendaVendedor, u_RelPedidoVenda,
  u_ParPedVend;

{$R *.dfm}

procedure TfrmProcessoImp.FormKeyPress(Sender: TObject; var Key: Char);
begin
 // Habilitar a propriedade KeyPreview do Form para funcionar o Enter como Tab
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;

procedure TfrmProcessoImp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 if not FinalFormulario(dmPP.cdsProcessoImp,' da Processo de Importação?') then
    Action := caNone
 else
    begin
     Action        := caFree;
     frmProcessoImp := Nil;
    end;
end;

procedure TfrmProcessoImp.wwDBComboDlg6CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmEF.dsEntidade,'ENTIDADEID', dmPP.cdsPedVendCLIENTEID.AsString);
 ExecLoockupRetorno(dmPP.cdsPedVend,'CLIENTEID','ENTIDADEID' );
end;

procedure TfrmProcessoImp.wwDBComboDlg5CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmPP.dsCondPagtoProp,'CONDPAGTOPROPID', dmPP.cdsPedVendCONDPAGTOPROPID.AsString);
 ExecLoockupRetorno(dmPP.cdsPedVend,'CONDPAGTOPROPID','CONDPAGTOPROPID');
end;

procedure TfrmProcessoImp.wwDBComboDlg2CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmPP.dsCondPagtoProp,'CONDPAGTOPROPID', dmPP.cdsPedVendCONDINTERVID.AsString);
 ExecLoockupRetorno(dmPP.cdsPedVend,'CONDINTERVID','CONDPAGTOPROPID');
end;

procedure TfrmProcessoImp.wwDBComboDlg10CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmPP.dsCondPagtoProp,'CONDPAGTOPROPID', dmPP.cdsPedVendCONDEMPRSUPLID.AsString);
 ExecLoockupRetorno(dmPP.cdsPedVend,'CONDEMPRSUPLID','CONDPAGTOPROPID' );
end;

procedure TfrmProcessoImp.wwDBComboDlg4CustomDlg(Sender: TObject);
begin
 try
  frmCEP := TfrmCEP.Create( Self );
  frmCEP.ShowModal;

  if Assigned( frmCEP ) then
     if frmCEP.AtualizaCEP then
        if not dmCP.cdsPesquisa.IsEmpty then
           dmEF.cdsEntidadeCEPID.Value     := dmCP.cdsPesquisaCEPID.Value;
 finally
  FreeAndNil( frmCEP );
 end;
end;

procedure TfrmProcessoImp.wwDBComboDlg8CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmEF.dsCondPagto,'CONDPAGTOID',dmPP.cdsPedVendCONDPAGTOID.AsString);
 ExecLoockupRetorno(dmPP.cdsPedVend,'CONDPAGTOID','CONDPAGTOID');
end;

procedure TfrmProcessoImp.wwDBComboDlg7CustomDlg(Sender: TObject);
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
 if not dmEF.cdsEmpresa.Locate('EMPRESAID', VarArrayOf([ dmPP.cdsPedVendEMPRESAID.AsString]), [loPartialKey]) then
    begin
     MessageDlg('Problemas com o cadatro de empresas, favor comunidar o departamento de Informática.', mtInformation,[mbOk], 0);
     exit
    end;

 if ( trim( dmPP.cdsPedVendPAISORIG.Value ) = 'BRASIL' ) or ( trim( dmPP.cdsPedVendPAISORIG.Value ) = 'BRAZIL' ) then
    begin
     // Para dentro do Estado = 1 para fora = 2 Ex. Origem ->TABOÃO Destino->Recife = 1;
     if dmPP.cdsPedVendSIGLAUFORIGID.Value = dmEF.cdsEmpresaSIGLAUFID.Value then
        CfopInicial := '5'
     else
        CfopInicial := '6';
    end
 else
    CfopInicial := '7';  // Exterior;

 iSql := iSql + '  AND SUBSTR( EF_NATUREZAOP.CFOP, 1, 1 ) =  ' + CfopInicial +
                '  AND EF_NATUREZAEMPRESA.EMPRESAID = ' + dmPP.cdsPedVendEMPRESAID.AsString;

 CriaFormLookUp( dmEF.cdsNaturezaOp.Name, iSql, dmPP.cdsPedVendNATUREZAOPID,'NATUREZAOPID', 'NATUREZAOPID' );
 dmEF.cdsEmpresa.Close;
end;

procedure TfrmProcessoImp.wwDBComboDlg9CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmEF.dsEmpresa,'EMPRESAID',dmPP.cdsPedVendEMPRESAID.AsString);
 ExecLoockupRetorno(dmPP.cdsPedVend,'EMPRESAID','EMPRESAID');
end;

procedure TfrmProcessoImp.FormShow(Sender: TObject);
begin
 tmbedtlstApImp.TtmbClassOwnerEspec     := TfrmPadraoEdicao;
 tmbedtlstApImp.TtmbFormOwnerEspec      := frmPadraoEdicao;
 tmbedtlstApImpComp.TtmbClassOwnerEspec := TfrmPadraoEdicao;
 tmbedtlstApImpComp.TtmbFormOwnerEspec  := frmPadraoEdicao;
 tmbedtlstInterv.TtmbClassOwnerEspec    := TfrmPadraoEdicao;
 tmbedtlstInterv.TtmbFormOwnerEspec     := frmPadraoEdicao;

 tmbedtlstVend.TtmbClassOwnerEspec      := TfrmPedVendVendedor;
 tmbedtlstVend.TtmbFormOwnerEspec       := frmPedVendVendedor;
 tmbedtlstBonif.TtmbClassOwnerEspec     := TfrmPadraoEdicao;
 tmbedtlstBonif.TtmbFormOwnerEspec      := frmPadraoEdicao;
end;

procedure TfrmProcessoImp.actCancFatExecute(Sender: TObject);
begin
 beep;
end;

procedure TfrmProcessoImp.actImpressaoExecute(Sender: TObject);
begin
 if not Assigned( frmParPedVend ) then
    frmParPedVend := TfrmParPedVend.Create(nil);
 frmParPedVend.TipoRelatorio := Importacao;
 frmParPedVend.Show;
end;

procedure TfrmProcessoImp.actAddAparelhoExecute(Sender: TObject);
begin
 frmVisualTabelaPrecoPedVend := TfrmVisualTabelaPrecoPedVend.Create( Self );
 frmVisualTabelaPrecoPedVend.ShowModal;
end;

procedure TfrmProcessoImp.FormCreate(Sender: TObject);
begin
 if dmPP.cdsProcessoImp.State in [dsEdit,dsInsert] then
    begin
     dmPP.cdsPedVendItem.Edit;
    end;
end;

procedure TfrmProcessoImp.SpeedButton1Click(Sender: TObject);
begin
 dmPP.cdsPedVendItem.Edit;
 if dbgComissao.Visible = False then
    dbgComissao.Visible := True
 else
    dbgComissao.Visible := False;
end;

end.
