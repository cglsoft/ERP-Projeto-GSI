unit u_PedidoProposta;

interface

uses
  SysUtils, Forms, ImgList, Controls, Classes, ActnList, XPStyleActnCtrls, DB,
  ActnMan, StdCtrls, tmbToolEdicaoTop, ActnCtrls, ComCtrls, ToolWin, Dialogs,
  tmbToolEdicaoBottom, ExtCtrls, DBCtrls, wwdbdatetimepicker, Grids,
  PnAjustaGrid, Variants, DBGrids, tmbToolEdicaoLista, Buttons, wwdbedit,
  Wwdotdot, Mask, DBClient, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxGridBandedTableView, cxGridDBBandedTableView,
  cxGridCardView, cxGridDBCardView, cxTextEdit;

type
  TfrmPedidoProposta = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet5: TTabSheet;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    Label10: TLabel;
    DBMemo3: TDBMemo;
    PageControl2: TPageControl;
    TabSheet4: TTabSheet;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit6: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBMemo1: TDBMemo;
    wwDBComboDlg4: TwwDBComboDlg;
    GroupBox4: TGroupBox;
    Label22: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label31: TLabel;
    DBEdit8: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    TabSheet11: TTabSheet;
    GroupBox5: TGroupBox;
    TabSheet10: TTabSheet;
    GroupBox6: TGroupBox;
    TabSheet12: TTabSheet;
    GroupBox7: TGroupBox;
    TabSheet13: TTabSheet;
    GroupBox8: TGroupBox;
    TabSheet14: TTabSheet;
    GroupBox10: TGroupBox;
    TabSheet15: TTabSheet;
    GroupBox11: TGroupBox;
    wwDBComboDlg9: TwwDBComboDlg;
    TabSheet16: TTabSheet;
    GroupBox12: TGroupBox;
    Panel1: TPanel;
    Label37: TLabel;
    Panel7: TPanel;
    sbAdicionar: TSpeedButton;
    Panel3: TPanel;
    Panel6: TPanel;
    wwDBComboDlg10: TwwDBComboDlg;
    Label36: TLabel;
    Panel8: TPanel;
    Panel9: TPanel;
    Splitter2: TSplitter;
    Panel10: TPanel;
    wwDBComboDlg1: TwwDBComboDlg;
    Label16: TLabel;
    Label32: TLabel;
    Label27: TLabel;
    DBEdit12: TDBEdit;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Splitter3: TSplitter;
    Panel14: TPanel;
    wwDBComboDlg2: TwwDBComboDlg;
    Label17: TLabel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    wwDBComboDlg3: TwwDBComboDlg;
    Label23: TLabel;
    Panel18: TPanel;
    Panel19: TPanel;
    wwDBComboDlg7: TwwDBComboDlg;
    Label34: TLabel;
    Panel20: TPanel;
    wwDBComboDlg8: TwwDBComboDlg;
    Label35: TLabel;
    DBGrid4: TDBGrid;
    DBGrid5: TDBGrid;
    DBGrid6: TDBGrid;
    Panel21: TPanel;
    Panel2: TPanel;
    tmbEdicaoLista1: TtmbEdicaoLista;
    Panel5: TPanel;
    Label40: TLabel;
    tmbEdicaoLista2: TtmbEdicaoLista;
    Splitter4: TSplitter;
    Label39: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    tmbEdicaoLista5: TtmbEdicaoLista;
    tmbEdicaoLista6: TtmbEdicaoLista;
    tmbEdicaoLista7: TtmbEdicaoLista;
    TabSheet2: TTabSheet;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Panel24: TPanel;
    Panel26: TPanel;
    sbUmUP: TSpeedButton;
    sbRetUmUP: TSpeedButton;
    sbRetTodosUP: TSpeedButton;
    Panel27: TPanel;
    tmbEdicaoLista3: TtmbEdicaoLista;
    TabControl4: TTabControl;
    DBGrid7: TDBGrid;
    uu: TTabControl;
    DBGrid8: TDBGrid;
    StatusBar: TStatusBar;
    Splitter5: TSplitter;
    Label30: TLabel;
    Label33: TLabel;
    Label38: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Panel28: TPanel;
    Label25: TLabel;
    wwDBComboDlg6: TwwDBComboDlg;
    Label55: TLabel;
    Panel25: TPanel;
    Label56: TLabel;
    Panel29: TPanel;
    Label57: TLabel;
    Splitter6: TSplitter;
    TabControl5: TTabControl;
    DBGrid9: TDBGrid;
    tmbEdicaoLista4: TtmbEdicaoLista;
    CoolBar1: TCoolBar;
    ActionToolBar1: TActionToolBar;
    tmbEdicaoTop1: TtmbEdicaoTop;
    actmngManutencao: TActionManager;
    actImpressao: TAction;
    tmbEdicaoBottom1: TtmbEdicaoBottom;
    ImageList1: TImageList;
    TabSheet6: TTabSheet;
    GroupBox13: TGroupBox;
    Panel22: TPanel;
    Label41: TLabel;
    wwDBComboDlg11: TwwDBComboDlg;
    Panel23: TPanel;
    Label47: TLabel;
    actConfig: TAction;
    Panel30: TPanel;
    cbCartasGeradas: TComboBox;
    Label66: TLabel;
    SpeedButton1: TSpeedButton;
    GroupBox14: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox15: TGroupBox;
    DBGrid2: TDBGrid;
    DBMemo2: TDBMemo;
    DBRhCartaApresentacao: TDBMemo;
    wwDBRichEdit3: TDBMemo;
    DBRhCodPagtoProp: TDBMemo;
    DBRhObsProp: TDBMemo;
    DBRhGarantia: TDBMemo;
    DBRhAssistTec: TDBMemo;
    DBRhPrazo: TDBMemo;
    DBRhValidade: TDBMemo;
    wwDBRichEdit2: TDBMemo;
    PnEquipamento: TPanel;
    cdsAux: TClientDataSet;
    dsAux: TDataSource;
    Label14: TLabel;
    DBEdit1: TDBEdit;
    wwDBComboDlg5: TwwDBComboDlg;
    Label1: TLabel;
    DBEdit3: TDBEdit;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    Label3: TLabel;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    Label6: TLabel;
    Label63: TLabel;
    wwDBComboDlg12: TwwDBComboDlg;
    DBEdit2: TDBEdit;
    wwDBComboDlg13: TwwDBComboDlg;
    Label65: TLabel;
    DBEdit10: TDBEdit;
    GroupBox3: TGroupBox;
    Label13: TLabel;
    Label15: TLabel;
    DBEdit7: TDBEdit;
    wwDBDateTimePicker3: TwwDBDateTimePicker;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBRadioGroup1: TDBRadioGroup;
    TabSheet17: TTabSheet;
    GroupBox9: TGroupBox;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label64: TLabel;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit52: TDBEdit;
    TabSheet3: TTabSheet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1PROPOSTAID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1MODELOEQUIPAMENTOID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ITEMID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1MODELOCOMPONENTEID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L_DESCRPORTUGUES: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L_DESCRINGLES: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L_GRUPOID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L_DESCR_GRUPO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1QUANTIDADE: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1VLRUNITARIOREVENDA: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1VLRUNITARIOFOB: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1VLRUNITARIONET: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1VLRTOTALREVENDA: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1VLRTOTALFOB: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1VLRTOTALNET: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1USUARIO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView2MODELOCOMPONENTEID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2L_DESCRPORTUGUES: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2L_DESCRINGLES: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2L_GRUPOID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2L_DESCR_GRUPO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2QUANTIDADE: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2VLRUNITARIOREVENDA: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2VLRUNITARIOFOB: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2VLRUNITARIONET: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2VLRTOTALREVENDA: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2VLRTOTALFOB: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2VLRTOTALNET: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2USUARIO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView3: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView3MODELODEPENDENCIAID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView3ITEMID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView3L_DESCRPORTUGUES: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView3L_DESCRINGLES: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView3L_GRUPOID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView3L_DESCR_GRUPO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView3QUANTIDADE: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView3VLRUNITARIOREVENDA: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView3VLRUNITARIOFOB: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView3VLRUNITARIONET: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView3VLRTOTALREVENDA: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView3VLRTOTALFOB: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView3VLRTOTALNET: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView3USUARIO: TcxGridDBBandedColumn;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridDBBandedColumn1: TcxGridDBBandedColumn;
    cxGridDBBandedColumn2: TcxGridDBBandedColumn;
    cxGridDBBandedColumn3: TcxGridDBBandedColumn;
    cxGridDBBandedColumn4: TcxGridDBBandedColumn;
    cxGridDBBandedColumn5: TcxGridDBBandedColumn;
    cxGridDBBandedColumn6: TcxGridDBBandedColumn;
    cxGridDBBandedColumn7: TcxGridDBBandedColumn;
    cxGridDBBandedColumn8: TcxGridDBBandedColumn;
    cxGridDBBandedColumn9: TcxGridDBBandedColumn;
    cxGridDBBandedColumn10: TcxGridDBBandedColumn;
    cxGridDBBandedColumn11: TcxGridDBBandedColumn;
    cxGridDBBandedColumn12: TcxGridDBBandedColumn;
    cxGridDBBandedColumn13: TcxGridDBBandedColumn;
    cxGridDBBandedColumn14: TcxGridDBBandedColumn;
    cxGridDBBandedColumn15: TcxGridDBBandedColumn;
    cxGridDBBandedColumn16: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2: TcxGridDBBandedTableView;
    cxGridDBBandedColumn17: TcxGridDBBandedColumn;
    cxGridDBBandedColumn18: TcxGridDBBandedColumn;
    cxGridDBBandedColumn19: TcxGridDBBandedColumn;
    cxGridDBBandedColumn20: TcxGridDBBandedColumn;
    cxGridDBBandedColumn21: TcxGridDBBandedColumn;
    cxGridDBBandedColumn22: TcxGridDBBandedColumn;
    cxGridDBBandedColumn23: TcxGridDBBandedColumn;
    cxGridDBBandedColumn24: TcxGridDBBandedColumn;
    cxGridDBBandedColumn25: TcxGridDBBandedColumn;
    cxGridDBBandedColumn26: TcxGridDBBandedColumn;
    cxGridDBBandedColumn27: TcxGridDBBandedColumn;
    cxGridDBBandedColumn28: TcxGridDBBandedColumn;
    cxGridDBBandedColumn29: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3: TcxGridDBBandedTableView;
    cxGridDBBandedColumn30: TcxGridDBBandedColumn;
    cxGridDBBandedColumn31: TcxGridDBBandedColumn;
    cxGridDBBandedColumn32: TcxGridDBBandedColumn;
    cxGridDBBandedColumn33: TcxGridDBBandedColumn;
    cxGridDBBandedColumn34: TcxGridDBBandedColumn;
    cxGridDBBandedColumn35: TcxGridDBBandedColumn;
    cxGridDBBandedColumn36: TcxGridDBBandedColumn;
    cxGridDBBandedColumn37: TcxGridDBBandedColumn;
    cxGridDBBandedColumn38: TcxGridDBBandedColumn;
    cxGridDBBandedColumn39: TcxGridDBBandedColumn;
    cxGridDBBandedColumn40: TcxGridDBBandedColumn;
    cxGridDBBandedColumn41: TcxGridDBBandedColumn;
    cxGridDBBandedColumn42: TcxGridDBBandedColumn;
    cxGridDBBandedColumn43: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1MODELOEQUIPAMENTOID: TcxGridDBColumn;
    cxGridDBTableView1ITEMID: TcxGridDBColumn;
    cxGridDBTableView1L_DESCR_PORT: TcxGridDBColumn;
    cxGridDBTableView1L_DESCR_INGLES: TcxGridDBColumn;
    cxGridDBTableView1L_GRUPOID: TcxGridDBColumn;
    cxGridDBTableView1L_DESCRICAO_EQUIPAMENTO: TcxGridDBColumn;
    cxGridDBTableView1QUANTIDADE: TcxGridDBColumn;
    cxGridDBTableView1VLRUNITARIOREVENDA: TcxGridDBColumn;
    cxGridDBTableView1VLRUNITARIOFOB: TcxGridDBColumn;
    cxGridDBTableView1VLRUNITARIONET: TcxGridDBColumn;
    cxGridDBTableView1VLRTOTALREVENDA: TcxGridDBColumn;
    cxGridDBTableView1VLRTOTALFOB: TcxGridDBColumn;
    cxGridDBTableView1VLRTOTALNET: TcxGridDBColumn;
    cxGridDBTableView1VLRLIQUIDOREVENDA: TcxGridDBColumn;
    cxGridDBTableView1VLRDESCONTO: TcxGridDBColumn;
    cxGridDBTableView1PORCDESCONTO: TcxGridDBColumn;
    cxGridDBTableView1OBSERVACAO: TcxGridDBColumn;
    cxGridDBTableView1REVISAOID: TcxGridDBColumn;
    cxGridDBTableView1USUARIO: TcxGridDBColumn;
    cxGrid3: TcxGrid;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3DBTableView1MODELOCOMPONENTEID: TcxGridDBColumn;
    cxGrid3DBTableView1L_DESCRPORTUGUES: TcxGridDBColumn;
    cxGrid3DBTableView1L_DESCRINGLES: TcxGridDBColumn;
    cxGrid3DBTableView1L_GRUPOID: TcxGridDBColumn;
    cxGrid3DBTableView1L_DESCR_GRUPO: TcxGridDBColumn;
    cxGrid3DBTableView1QUANTIDADE: TcxGridDBColumn;
    cxGrid3DBTableView1VLRUNITARIOREVENDA: TcxGridDBColumn;
    cxGrid3DBTableView1VLRUNITARIOFOB: TcxGridDBColumn;
    cxGrid3DBTableView1VLRUNITARIONET: TcxGridDBColumn;
    cxGrid3DBTableView1VLRTOTALREVENDA: TcxGridDBColumn;
    cxGrid3DBTableView1VLRTOTALFOB: TcxGridDBColumn;
    cxGrid3DBTableView1VLRTOTALNET: TcxGridDBColumn;
    cxGrid3DBTableView1USUARIO: TcxGridDBColumn;
    cxGrid3DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid3DBBandedTableView1MODELODEPENDENCIAID: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1ITEMID: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1L_DESCRPORTUGUES: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1QUANTIDADE: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1VLRUNITARIOREVENDA: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1VLRUNITARIOFOB: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1VLRUNITARIONET: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1VLRTOTALREVENDA: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1VLRTOTALFOB: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1VLRTOTALNET: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1USUARIO: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView2MODELOCOMPONENTEID1: TcxGridDBColumn;
    cxGrid1DBTableView2QUANTIDADE1: TcxGridDBColumn;
    cxGrid1DBTableView2VLRUNITARIOREVENDA1: TcxGridDBColumn;
    cxGrid1DBTableView2VLRTOTALREVENDA1: TcxGridDBColumn;
    cxGrid1DBTableView2VLRUNITARIOFOB1: TcxGridDBColumn;
    cxGrid1DBTableView2VLRTOTALFOB1: TcxGridDBColumn;
    cxGrid1DBTableView2VLRUNITARIONET1: TcxGridDBColumn;
    cxGrid1DBTableView2VLRTOTALNET1: TcxGridDBColumn;
    cxGrid1DBTableView2L_GRUPOID1: TcxGridDBColumn;
    cxGrid1DBTableView2L_DESCR_GRUPO1: TcxGridDBColumn;
    cxGrid1DBTableView2L_DESCRPORTUGUES1: TcxGridDBColumn;
    cxGrid1DBTableView2L_DESCRINGLES1: TcxGridDBColumn;
    cxGrid1DBTableView2USUARIO1: TcxGridDBColumn;
    cxGrid3Level2: TcxGridLevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBComboDlg2CustomDlg(Sender: TObject);
    procedure wwDBComboDlg3CustomDlg(Sender: TObject);
    procedure wwDBComboDlg4CustomDlg(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure wwDBComboDlg9CustomDlg(Sender: TObject);
    procedure wwDBComboDlg5CustomDlg(Sender: TObject);
    procedure wwDBComboDlg1CustomDlg(Sender: TObject);
    procedure wwDBComboDlg6CustomDlg(Sender: TObject);
    procedure wwDBComboDlg7CustomDlg(Sender: TObject);
    procedure wwDBComboDlg8CustomDlg(Sender: TObject);
    procedure wwDBComboDlg10CustomDlg(Sender: TObject);
    procedure sbAdicionarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sbUmUPClick(Sender: TObject);
    procedure sbRetUmUPClick(Sender: TObject);
    procedure sbRetTodosUPClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid2TitleClick(Column: TColumn);
    procedure DBGrid7TitleClick(Column: TColumn);
    procedure DBGrid8TitleClick(Column: TColumn);
    procedure DBGrid4TitleClick(Column: TColumn);
    procedure DBGrid5TitleClick(Column: TColumn);
    procedure DBGrid6TitleClick(Column: TColumn);
    procedure DBMemo1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure wwDBComboDlg5Exit(Sender: TObject);
    procedure DBMemo3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure wwDBComboDlg10Exit(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid7DblClick(Sender: TObject);
    procedure DBGrid8DblClick(Sender: TObject);
    procedure DBGrid4DblClick(Sender: TObject);
    procedure DBGrid5DblClick(Sender: TObject);
    procedure DBGrid6DblClick(Sender: TObject);
    procedure DBGrid9TitleClick(Column: TColumn);
    procedure DBGrid9DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure wwDBComboDlg11CustomDlg(Sender: TObject);
    procedure actConfigExecute(Sender: TObject);
    procedure wwDBComboDlg12CustomDlg(Sender: TObject);
    procedure wwDBComboDlg13CustomDlg(Sender: TObject);
  private
    { Private declarations }
    procedure MostraHint(Sender : TObject);
    procedure AjustarGrade(Grade : TDBGrid);
    procedure AtualizaDependencia(Equipamento, Modelo: String);
    procedure FechaBancoDeDados;
    procedure StatusHint(Sender : TObject);
    function  VerificaRegistroExiste(Campo, Conteudo, Tabela : String):boolean;
  public
    { Public declarations }
    function  VerificaIdAparelho(msg : boolean = true) : boolean;
    function  ConsisteCampo(Sender : TObject):boolean;
  end;


var
  frmPedidoProposta: TfrmPedidoProposta;

const
 {Constantes para saida nos documentos Word}
  PathCadastroDoc   = 'Tabela de Preços - Dados do Aparelho - Atalho DOC';
  HeaderComposicao   = '     COMPOSIÇÃO DO APARELHO OFERTADO';
  Moeda              = 'US$';
  WordCaption        = 'Proposta Comercial - Cartas de Apresentação';
  AssinaturaTrailler = 'Estando V.Sas. de acordo com nossa proposta, solicitamos devolver-nos a '+
                        'cópia devidamente assinada, carimbada e datada, permanecendo a original '+
                        'para seu conhecimento e posterior arquivo.';


implementation

uses u_dmPP, FuncoesCliente, FuncoesDsi, u_Cep, u_VisualTabelaPreco, u_PadraoPesquisa,
   u_PadraoEdicao, u_dmEF, u_dmCP, u_PropostaConfig, u_dmAS;

{$R *.dfm}

procedure TfrmPedidoProposta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 if not FinalFormulario(dmPP.cdsProposta,' da Proposta ') then
    Action := caNone
 else
    begin
     Action       := caFree;
     frmPedidoProposta  := Nil;
    end;
    Application.OnHint := nil;
 FechaBancoDeDados;
end;

procedure TfrmPedidoProposta.wwDBComboDlg2CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmPP.dsObsProp, 'OBSPROPID', wwDBComboDlg2.Text, 'Observação da Proposta' );
 ExecLoockupRetorno(dmPP.cdsProposta, 'OBSPROPID', 'OBSPROPID');
end;

procedure TfrmPedidoProposta.wwDBComboDlg3CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmPP.dsGarantia, 'GARANTIAID', wwDBComboDlg3.Text, 'Garantia' );
 ExecLoockupRetorno(dmPP.cdsProposta, 'GARANTIAID', 'GARANTIAID');
end;

procedure TfrmPedidoProposta.wwDBComboDlg4CustomDlg(Sender: TObject);
begin
 try
  frmCEP := TfrmCEP.Create( Self );
  frmCEP.ShowModal;

  if Assigned( frmCEP ) then
     if frmCEP.AtualizaCEP then
        if not dmCP.cdsPesquisa.IsEmpty then
           dmPP.cdsPropostaCEPID.Value := dmCP.cdsPesquisaCEPID.Value;
 finally
  FreeAndNil( frmCEP );
 end;
end;

procedure TfrmPedidoProposta.FormKeyPress(Sender: TObject; var Key: Char);
begin
 {Habilitar a propriedade KeyPreview do Form para funcionar o Enter como Tab}
 {ENTER}
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;

procedure TfrmPedidoProposta.wwDBComboDlg9CustomDlg(Sender: TObject);
begin
 try
  ExecLoockupPesquisa(dmEF.dsEntidade, 'CPFCNPJ', wwDBComboDlg9.Text, 'Entidade' );
  ExecLoockupRetorno(dmPP.cdsProposta, 'CPFCNPJ', 'CPFCNPJ');
 finally
  Application.ProcessMessages;
 end;
end;

procedure TfrmPedidoProposta.wwDBComboDlg5CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmEF.dsFilial, 'FILIALID', wwDBComboDlg5.Text, 'Filial' );
 ExecLoockupRetorno(dmPP.cdsProposta, 'FILIALID', 'FILIALID');
end;

procedure TfrmPedidoProposta.wwDBComboDlg1CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmPP.dsCondPagtoProp, 'CONDPAGTOPROPID', wwDBComboDlg1.Text, 'Condição de Pagto'  );
 ExecLoockupRetorno(dmPP.cdsProposta, 'CONDPAGTOPROPID', 'CONDPAGTOPROPID');
end;

procedure TfrmPedidoProposta.wwDBComboDlg6CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmPP.dsAssistTec, 'ASSISTTECID', wwDBComboDlg6.Text, 'Assistencia Técnica' );
 ExecLoockupRetorno(dmPP.cdsProposta, 'ASSISTTECID', 'ASSISTTECID');
end;

procedure TfrmPedidoProposta.wwDBComboDlg7CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmPP.dsPrazo, 'PRAZOID', wwDBComboDlg7.Text, 'Prazo' );
 ExecLoockupRetorno(dmPP.cdsProposta, 'PRAZOID', 'PRAZOID');
end;

procedure TfrmPedidoProposta.wwDBComboDlg8CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmPP.dsValidade, 'VALIDADEID', wwDBComboDlg8.Text, 'Validade' );
 ExecLoockupRetorno(dmPP.cdsProposta, 'VALIDADEID', 'VALIDADEID');
end;

procedure TfrmPedidoProposta.wwDBComboDlg10CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmPP.dsCartaApresent, 'CARTAAPRESENTID', wwDBComboDlg10.Text, 'Carta de Apresentação' );
 ExecLoockupRetorno(dmPP.cdsProposta, 'CARTAAPRESENTID', 'CARTAAPRESENTID');
end;

procedure TfrmPedidoProposta.sbAdicionarClick(Sender: TObject);
begin
 frmVisualTabelaPreco := TfrmVisualTabelaPreco.Create( Self );
 frmVisualTabelaPreco.ShowModal;
end;

procedure TfrmPedidoProposta.FormShow(Sender: TObject);
var y : integer;
begin
 cbCartasGeradas.enabled := false;
 dmAS.cdsConfig.Open;
 dmAS.cdsConfig.First;
 tmbEdicaoLista1.TtmbClientDataSet := dmPP.cdsPropEquipamento;
 tmbEdicaoLista1.TtmbDataSource    := dmPP.dsPropEquipamento;
 tmbEdicaoLista2.TtmbClientDataSet := dmPP.cdsPropComposicao;
 tmbEdicaoLista2.TtmbDataSource    := dmPP.dsPropComposicao;
 tmbEdicaoLista3.TtmbClientDataSet := dmPP.cdsPropOpcional;
 tmbEdicaoLista3.TtmbDataSource    := dmPP.dsPropOpcional;
 tmbEdicaoLista4.TtmbClientDataSet := dmPP.cdsPropDependencia;
 tmbEdicaoLista4.TtmbDataSource    := dmPP.dsPropDependencia;
 tmbEdicaoLista5.TtmbClientDataSet := dmPP.cdsPropBonificacao;
 tmbEdicaoLista5.TtmbDataSource    := dmPP.dsPropBonificacao;
 tmbEdicaoLista6.TtmbClientDataSet := dmPP.cdsPropVendedor;
 tmbEdicaoLista6.TtmbDataSource    := dmPP.dsPropVendedor;
 tmbEdicaoLista7.TtmbClientDataSet := dmPP.cdsPropTradeIn;
 tmbEdicaoLista7.TtmbDataSource    := dmPP.dsPropTradeIn;
 for y := 1 to 7 do
 begin
  TtmbEdicaoLista( FindComponent('tmbEdicaoLista'+ intToStr(y))).TtmbClassOwnerEspec := TFrmPadraoEdicao;
  TtmbEdicaoLista( FindComponent('tmbEdicaoLista'+ intToStr(y))).TtmbFormOwnerEspec  := FrmPadraoEdicao;
  TtmbEdicaoLista( FindComponent('tmbEdicaoLista'+ intToStr(y))).TtmbCriar           := true;
  if y >=5 then
     TtmbEdicaoLista( FindComponent('tmbEdicaoLista'+ intToStr(y))).TtmbDesativaInserir := false;
 end;
 wwDBComboDlg5.SetFocus;
 tmbEdicaoTop1.TtmbFormulario := frmPedidoProposta;

 StatusBar.Panels.Items[0].Text := 'Tabela: '+ Copy( dmPP.cdsProposta.Name, (Pos('cds', dmPP.cdsProposta.Name)+3), Length(dmPP.cdsProposta.Name));

 Case dmPP.dsProposta.State of
  dsEdit  : StatusBar.Panels.Items[1].Text := 'Status: Alteração';
  dsInsert: StatusBar.Panels.Items[1].Text := 'Status: Inserção';
 end;

end;

function TfrmPedidoProposta.VerificaIdAparelho(msg: boolean): boolean;
begin
 Result := true;
end;

procedure TfrmPedidoProposta.sbUmUPClick(Sender: TObject);
begin
 with dmPP do
  begin
   if dsPropOpcional.State = dsInactive then
      cdsPropOpcional.Open;
   if cdsPropDependencia.State = dsInactive then
      cdsPropDependencia.Open;
   if cdsDependencia.State = dsInactive then
      cdsDependencia.Open;
   if cdsOpcional.State = dsInactive then
      cdsOpcional.Open;

      if (cdsAux.State <> dsInactive) and (not cdsAux.IsEmpty ) then
         begin
          if not VerificaRegistroExiste( 'MODELOCOMPONENTEID', cdsAux.FieldByName('MODELOCOMPONENTEID').AsString , 'PP_PROPOPCIONAL') then
          //if not cdsPropOpcional.Locate('MODELOCOMPONENTEID', cdsAux.FieldByName('MODELOCOMPONENTEID').AsString, []) then
             begin
              cdsPropOpcional.Insert;
              cdsPropOpcional.FieldByName('MODELOCOMPONENTEID').Value  := cdsAux.FieldValues['MODELOCOMPONENTEID'];
              cdsPropOpcional.Post;
              AtualizaDependencia(cdsAux.FieldValues['MODELOEQUIPAMENTOID'], cdsAux.FieldValues['MODELOCOMPONENTEID']);
             end
          else
           Application.MessageBox('Modelo já incluso.','Mensagem', 0);
         end;
  end;
end;

procedure TfrmPedidoProposta.sbRetUmUPClick(Sender: TObject);
begin
 if not dmPP.cdsPropOpcional.IsEmpty then
    dmPP.cdsPropOpcional.Delete;
end;

procedure TfrmPedidoProposta.sbRetTodosUPClick(Sender: TObject);
begin
 dmPP.cdsPropOpcional.First;
 while not dmPP.cdsPropOpcional.Eof do
  dmPP.cdsPropOpcional.Delete;
end;

procedure TfrmPedidoProposta.PageControl1Change(Sender: TObject);
var iSQL : String;
begin
 Case PageControl1.TabIndex of
  2 : begin
       iSQL := 'SELECT * FROM PP_OPCIONAL ' +
               'WHERE MODELOEQUIPAMENTOID = ' + QuotedStr( dmPP.CdsPropEquipamentoMODELOEQUIPAMENTOID.AsString );
       ExecDynamicProvider( -1, iSQL, cdsAux );
       cdsAux.Open;
       {}
       if cdsAux.IsEmpty then
          begin
           PnEquipamento.Caption := 'NÃO HÁ OPCIONAIS CADASTRADOS.';
          end
       else
          begin
           PnEquipamento.Caption := 'MODELO DO EQUIPAMENTO: '+ dmPP.CdsPropEquipamentoMODELOEQUIPAMENTOID.AsString;
          end;
      end;
    3: dmPP.cdsPropBonificacao.Open;
    4: dmPP.cdsPropVendedor.Open;
    5: dmPP.cdsPropTradeIn.Open;
 end;
end;

procedure TfrmPedidoProposta.DBGrid1TitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column, dmPP.dsPropEquipamento, DBGrid1);
end;

procedure TfrmPedidoProposta.DBGrid2TitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column, dmPP.dsPropComposicao, DBGrid2);
end;

procedure TfrmPedidoProposta.DBGrid7TitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column, dsAux, DBGrid7);
end;

procedure TfrmPedidoProposta.DBGrid8TitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column, dmPP.dsPropOpcional, DBGrid8);
end;

procedure TfrmPedidoProposta.DBGrid4TitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column, dmPP.dsPropBonificacao, DBGrid4);
end;

procedure TfrmPedidoProposta.DBGrid5TitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column, dmPP.dsPropVendedor, DBGrid5);
end;

procedure TfrmPedidoProposta.DBGrid6TitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column, dmPP.dsPropTradeIn, DBGrid6);
end;

procedure TfrmPedidoProposta.DBMemo1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 MostraHint(DBMemo1);
end;

function TfrmPedidoProposta.ConsisteCampo(Sender: TObject): boolean;
begin
 Result := true;
 if (Sender is TDBEdit) then
    if ( ( Sender as TDBEdit).Text = '' ) then
       begin
        if (MessageDlg('Campo ' + TDBEdit(Sender).Field.FieldName + ' é de preenchimento obrigatório.' , mtInformation, [mbOk, mbCancel], 0) = mrOk) then
           begin
            Result := false;
            (Sender as TDBEdit).SetFocus;
           end;
       end
 else
 if (Sender is  TwwDBComboDlg) then
    if ((Sender as TwwDBComboDlg).Text = '') then
       begin
        if (MessageDlg('Campo ' + TwwDBComboDlg(Sender).Field.FieldName + ' é de preenchimento obrigatório.' , mtInformation, [mbOk, mbCancel], 0) = mrOk) then
           begin
            Result := false;
           (Sender as TwwDBComboDlg).SetFocus;
           end;
       end;
end;

procedure TfrmPedidoProposta.wwDBComboDlg5Exit(Sender: TObject);
begin
 ConsisteCampo(Sender);
end;

procedure TfrmPedidoProposta.DBMemo3MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 MostraHint(DBMemo3);
end;

procedure TfrmPedidoProposta.MostraHint(Sender: TObject);
begin
 TDBMemo(Sender).Hint := TDBMemo(Sender).Text;
end;


procedure TfrmPedidoProposta.wwDBComboDlg10Exit(Sender: TObject);
begin
 if Trim(wwDBComboDlg10.Text) = '' then
    exit;
end;

procedure TfrmPedidoProposta.AjustarGrade(Grade : TDBGrid);
var PnAjusta : TPanel1;
begin
 PnAjusta := TPanel1.Create(self);
 try
  PnAjusta.Parent    := self;
  PnAjusta.tmbCria   := true;
  PnAjusta.visible   := false;
  PnAjusta.tmbDBGrid := Grade;
  PnAjusta.tmbAjusta := true;
 finally
  FreeAndNil(PnAjusta);
 end;
end;

procedure TfrmPedidoProposta.DBGrid1DblClick(Sender: TObject);
begin
 AjustarGrade( TDBGrid(Sender) );
end;

procedure TfrmPedidoProposta.DBGrid2DblClick(Sender: TObject);
begin
 AjustarGrade( TDBGrid(Sender) );
end;

procedure TfrmPedidoProposta.DBGrid7DblClick(Sender: TObject);
begin
 AjustarGrade( TDBGrid(Sender) );
end;

procedure TfrmPedidoProposta.DBGrid8DblClick(Sender: TObject);
begin
 AjustarGrade( TDBGrid(Sender) );
end;

procedure TfrmPedidoProposta.DBGrid4DblClick(Sender: TObject);
begin
 AjustarGrade( TDBGrid(Sender) );
end;

procedure TfrmPedidoProposta.DBGrid5DblClick(Sender: TObject);
begin
 AjustarGrade( TDBGrid(Sender) );
end;

procedure TfrmPedidoProposta.DBGrid6DblClick(Sender: TObject);
begin
 AjustarGrade( TDBGrid(Sender) );
end;

procedure TfrmPedidoProposta.DBGrid9TitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column, dmPP.dsPropDependencia, DBGrid9);
end;

procedure TfrmPedidoProposta.DBGrid9DblClick(Sender: TObject);
begin
 AjustarGrade( TDBGrid(Sender) );
end;

procedure TfrmPedidoProposta.AtualizaDependencia(Equipamento, Modelo: String);
begin
 with dmPP do
 begin
  if cdsOpcional.Locate('MODELOEQUIPAMENTOID;MODELOCOMPONENTEID', VarArrayOf([Equipamento, Modelo]), []) then
  begin
   cdsDependencia.First;
   while not cdsDependencia.Eof do
   begin
    cdsPropDependencia.Insert;
    cdsPropDependenciaMODELODEPENDENCIAID.Value  := cdsDependenciaMODELODEPENDENCIAID.Value;
    cdsPropDependenciaQUANTIDADE.Value           := cdsDependenciaQUANTIDADE.Value;
    cdsPropDependenciaVLRUNITARIOREVENDA.Value   := cdsDependenciaVLRUNITARIOREVENDA.Value;
    cdsPropDependenciaVLRTOTALREVENDA.Value      := cdsDependenciaVLRTOTALREVENDA.Value;
    cdsPropDependenciaVLRUNITARIOFOB.Value       := cdsDependenciaVLRUNITARIOFOB.Value;
    cdsPropDependenciaVLRTOTALFOB.Value          := cdsDependenciaVLRTOTALFOB.Value;
    cdsPropDependenciaVLRUNITARIONET.Value       := cdsDependenciaVLRUNITARIONET.Value;
    cdsPropDependenciaVLRTOTALNET.Value          := cdsDependenciaVLRTOTALNET.Value;
    cdsPropDependencia.Post;
    cdsDependencia.Next;
   end;
  end;
 end;
end;

procedure TfrmPedidoProposta.FechaBancoDeDados;
begin
 dmPP.cdsPropBonificacao.Close;
 dmPP.cdsPropVendedor.Close;
 dmPP.cdsPropTradeIn.Close;
 dmAS.cdsConfig.Close;
end;

procedure TfrmPedidoProposta.FormCreate(Sender: TObject);
begin
 Application.OnHint := StatusHint;
end;


procedure TfrmPedidoProposta.StatusHint(Sender: TObject);
begin
 if StatusBar <> nil then
    StatusBar.Panels.Items[2].text := GetLongHint(Application.Hint);
end;

function TfrmPedidoProposta.VerificaRegistroExiste(Campo, Conteudo, Tabela: String): boolean;
var iSql : String;
    CdsSql : TClientDataSet;
begin
 CdsSql     := nil;
 iSQL    := 'SELECT  '+ Campo + ' FROM  '+ Tabela +
            ' WHERE '+
            Campo + '= '+QuotedStr( Conteudo);
 try
  ExecDynamicProvider( -1, iSQL, CdsSql );

  Result := (not CdsSql.IsEmpty);

 finally
  CdsSql.Close;
  FreeAndNil( CdsSql );
 end;
end;

procedure TfrmPedidoProposta.wwDBComboDlg11CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmPP.dsInstalacao, 'INSTALACAOID', wwDBComboDlg11.Text, 'Instalação' );
 ExecLoockupRetorno(dmPP.cdsProposta, 'INSTALACAOID', 'INSTALACAOID');
end;

procedure TfrmPedidoProposta.actConfigExecute(Sender: TObject);
begin
 Application.CreateForm(TFrmPropostaConfig, FrmPropostaConfig);
 try
  FrmPropostaConfig.ShowModal;
 finally
  FrmPropostaConfig.Free;
 end;
end;


procedure TfrmPedidoProposta.wwDBComboDlg12CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmPP.dsOrigemVenda,'ORIGEMVENDAID',dmPP.cdsPropostaORIGEMVENDAID.AsString);
 ExecLoockupRetorno(dmPP.cdsProposta,'ORIGEMVENDAID','ORIGEMVENDAID');
end;

procedure TfrmPedidoProposta.wwDBComboDlg13CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmPP.dsTipoVenda,'TIPOVENDAID',dmPP.cdsPropostaTIPOVENDAID.AsString);
 ExecLoockupRetorno(dmPP.cdsProposta,'TIPOVENDAID','TIPOVENDAID');
end;

end.
