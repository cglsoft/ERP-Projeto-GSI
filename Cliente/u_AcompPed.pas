unit u_AcompPed;

interface

uses
  Windows, Messages, Forms, SysUtils, DB, DBClient, ImgList, Controls, Classes,
  ActnList, XPStyleActnCtrls, ActnMan, ActnCtrls, ToolWin, ComCtrls, Dialogs,
  tmbToolEdicaoBottom, StdCtrls, DBCtrls, fcStatusBar, PnAjustaGrid, Variants,
  tmbToolEdicaoLista, Grids, DBGrids, ExtCtrls, wwdbdatetimepicker,
  wwdbedit, Wwdotdot, Mask;

type
  TfrmAcompPed = class(TForm)
    pgctrlDI: TPageControl;
    TabSheet1: TTabSheet;
    fcStatusBar1: TfcStatusBar;
    pnTopPedVend: TPanel;
    Label14: TLabel;
    Label16: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    Panel1: TPanel;
    tmbEdicaoBottom1: TtmbEdicaoBottom;
    DBEdit61: TDBEdit;
    Label7: TLabel;
    wwDBComboDlg1: TwwDBComboDlg;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    wwDBComboDlg3: TwwDBComboDlg;
    DBEdit8: TDBEdit;
    grpbxDadosCliente: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    Label23: TLabel;
    wwDBComboDlg6: TwwDBComboDlg;
    DBEdit13: TDBEdit;
    tbshtAparelhoRev: TTabSheet;
    tbshtObsGerais: TTabSheet;
    tmbedtlstDocPend: TtmbEdicaoLista;
    GroupBox6: TGroupBox;
    dbgrdDocPend: TDBGrid;
    DBMemo1: TDBMemo;
    actmngManutencao: TActionManager;
    ImageList1: TImageList;
    actVisualPedVenda: TAction;
    CoolBar1: TCoolBar;
    ActionToolBar1: TActionToolBar;
    actImpressao: TAction;
    DBEdit36: TDBEdit;
    Label54: TLabel;
    wwDBDateTimePicker4: TwwDBDateTimePicker;
    Label51: TLabel;
    DBRadioGroup2: TDBRadioGroup;
    DBCheckBox1: TDBCheckBox;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    grpbxResumoRev: TGroupBox;
    grpbxCondPagtoRev: TGroupBox;
    Label25: TLabel;
    Label31: TLabel;
    Label41: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    DBEdit14: TDBEdit;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    DBEdit26: TDBEdit;
    wwDBComboDlg8: TwwDBComboDlg;
    DBEdit35: TDBEdit;
    wwDBDateTimePicker3: TwwDBDateTimePicker;
    wwDBDateTimePicker5: TwwDBDateTimePicker;
    wwDBDateTimePicker6: TwwDBDateTimePicker;
    wwDBComboDlg2: TwwDBComboDlg;
    DBEdit2: TDBEdit;
    DBMemo2: TDBMemo;
    Label9: TLabel;
    wwDBDateTimePicker7: TwwDBDateTimePicker;
    Label10: TLabel;
    wwDBDateTimePicker8: TwwDBDateTimePicker;
    DBCheckBox2: TDBCheckBox;
    DBRadioGroup1: TDBRadioGroup;
    Label11: TLabel;
    wwDBDateTimePicker9: TwwDBDateTimePicker;
    Label12: TLabel;
    wwDBDateTimePicker10: TwwDBDateTimePicker;
    Label13: TLabel;
    wwDBDateTimePicker11: TwwDBDateTimePicker;
    DBEdit4: TDBEdit;
    Label15: TLabel;
    DBEdit7: TDBEdit;
    actVisualNF: TAction;
    TabSheet2: TTabSheet;
    GroupBox9: TGroupBox;
    DBGrid1: TDBGrid;
    tmbedtlstVend: TtmbEdicaoLista;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBComboDlg2CustomDlg(Sender: TObject);
    procedure wwDBComboDlg8CustomDlg(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actVisualPedVendaExecute(Sender: TObject);
    procedure actVisualNFExecute(Sender: TObject);
    procedure wwDBComboDlg6CustomDlg(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAcompPed: TfrmAcompPed;

implementation

uses u_dmPP, funcoescliente, u_PadraoEdicao, u_dmGSI, u_RelPedidoVenda, u_ParPedVend,
  u_PedVenda, u_dmEF;


{$R *.dfm}

procedure TfrmAcompPed.FormKeyPress(Sender: TObject; var Key: Char);
begin
 // Habilitar a propriedade KeyPreview do Form para funcionar o Enter como Tab
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;

procedure TfrmAcompPed.actVisualNFExecute(Sender: TObject);
begin
 GerarPesquisa( dmPP.cdsPedVend, 'PP_PEDVEND.PEDVENDID = ' +  QuotedStr( dmPP.cdsAcompPedL_PEDVENDID.AsString ) );
 if not Assigned( frmPedVenda ) then
    Application.CreateForm( TfrmPedVenda, frmPedVenda );

 frmPedVenda.actGerarFat.Enabled       := False;
 frmPedVenda.actCancFat.Enabled        := False;
 frmPedVenda.actTransfProcesso.Enabled := False;
 frmPedVenda.actImpressao.Enabled      := False;

 frmPedVenda.ShowModal;
end;

procedure TfrmAcompPed.actVisualPedVendaExecute(Sender: TObject);
begin
 GerarPesquisa( dmPP.cdsPedVend, 'PP_PEDVEND.PEDVENDID = ' +  QuotedStr( dmPP.cdsAcompPedL_PEDVENDID.AsString ) );
 if not Assigned( frmPedVenda ) then
    Application.CreateForm( TfrmPedVenda, frmPedVenda );

 frmPedVenda.actGerarFat.Enabled       := False;
 frmPedVenda.actCancFat.Enabled        := False;
 frmPedVenda.actTransfProcesso.Enabled := False;
 frmPedVenda.actImpressao.Enabled      := False;

 frmPedVenda.ShowModal;
end;

procedure TfrmAcompPed.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 if not FinalFormulario(dmPP.cdsPedVend,' da Acompanhamento de Pedido?') then
    Action := caNone
 else
    begin
     Action      := caFree;
     frmAcompPed := Nil;
    end;
end;

procedure TfrmAcompPed.wwDBComboDlg2CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmPP.dsMotivoRecusa,'MOTIVORECUSAID',dmPP.cdsAcompPedMOTIVORECUSAID.AsString);
 ExecLoockupRetorno(dmPP.cdsAcompPed,'MOTIVORECUSA2ID','MOTIVORECUSAID');
end;

procedure TfrmAcompPed.wwDBComboDlg6CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmEF.dsEntidade,'ENTIDADEID', dmPP.cdsAcompPedCLIENTEID.AsString);
 ExecLoockupRetorno(dmPP.cdsAcompPed,'CLIENTEID','ENTIDADEID' );
end;

procedure TfrmAcompPed.wwDBComboDlg8CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmPP.dsMotivoRecusa,'MOTIVORECUSAID',dmPP.cdsAcompPedMOTIVORECUSAID.AsString);
 ExecLoockupRetorno(dmPP.cdsAcompPed,'MOTIVORECUSAID','MOTIVORECUSAID');
end;

procedure TfrmAcompPed.FormShow(Sender: TObject);
begin
 tmbedtlstDocPend.TtmbClassOwnerEspec := TfrmPadraoEdicao;
 tmbedtlstDocPend.TtmbFormOwnerEspec  := frmPadraoEdicao;

 tmbedtlstVend.TtmbClassOwnerEspec    := TfrmPadraoEdicao;
 tmbedtlstVend.TtmbFormOwnerEspec     := frmPadraoEdicao;

end;

end.
