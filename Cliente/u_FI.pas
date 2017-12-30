unit u_FI;

interface

uses
  Windows, SysUtils, Forms, Dialogs, Classes, ActnList, XPStyleActnCtrls,
  ActnMan, ImgList, Controls, ExtCtrls, DBCtrls, StdCtrls, wwdbdatetimepicker,
  Mask, wwdbedit, Wwdotdot, ActnCtrls, ActnMenus, Grids, DBGrids, PnAjustaGrid,
  tmbToolEdicaoLista, ComCtrls, ToolWin, tmbToolEdicaoBottom;

type
  TfrmFI = class(TForm)
    ImageList1: TImageList;
    actmngManutencao: TActionManager;
    StatusBar1: TStatusBar;
    actDerivaOS: TAction;
    actAbreOS: TAction;
    Panel3: TPanel;
    tmbEdicaoBottom2: TtmbEdicaoBottom;
    Splitter1: TSplitter;
    pgctrlOSPastas: TPageControl;
    tbshtCliente: TTabSheet;
    grpbxDadosCliente: TGroupBox;
    tbshtHoras: TTabSheet;
    tmbedtListParcela: TtmbEdicaoLista;
    tPanel11: tPanel1;
    dbgrdHoras: TDBGrid;
    tbshtMaterial: TTabSheet;
    dbgrdOSMaterial: TDBGrid;
    tmbEdtListRetensao: TtmbEdicaoLista;
    tPanel13: tPanel1;
    CoolBar1: TCoolBar;
    ActionMainMenuBar1: TActionMainMenuBar;
    Label2: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label8: TLabel;
    Label1: TLabel;
    wwDBComboDlg1: TwwDBComboDlg;
    DBEdit12: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit10: TDBEdit;
    dbedtDtAbertura: TDBEdit;
    wwDBComboDlg2: TwwDBComboDlg;
    DBEdit17: TDBEdit;
    wwDBComboDlg4: TwwDBComboDlg;
    DBEdit5: TDBEdit;
    DBEdit8: TDBEdit;
    wwDBComboDlg5: TwwDBComboDlg;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    Label6: TLabel;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label9: TLabel;
    Label30: TLabel;
    wwDBComboDlg8: TwwDBComboDlg;
    DBEdit38: TDBEdit;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    Label16: TLabel;
    DBMemo1: TDBMemo;
    DBCheckBox1: TDBCheckBox;
    Label11: TLabel;
    DBEdit2: TDBEdit;
    Label14: TLabel;
    DBEdit9: TDBEdit;
    GroupBox3: TGroupBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBRadioGroup1: TDBRadioGroup;
    procedure wwDBComboDlg5CustomDlg(Sender: TObject);
    procedure wwDBComboDlg1CustomDlg(Sender: TObject);
    procedure wwDBComboDlg8CustomDlg(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure wwDBComboDlg4CustomDlg(Sender: TObject);
    procedure wwDBComboDlg2CustomDlg(Sender: TObject);
  private
     procedure SetDataSetEdicaoLista;
   public
   end;

var
  frmFI      : TfrmFI;
  StatusChek : Boolean;

implementation

uses u_dmFI, u_PadraoEdicao, u_dmEF, u_dmOs, u_dmPP, FuncoesCliente;

{$R *.dfm}


procedure TfrmFI.SetDataSetEdicaoLista;
begin
 tmbedtListParcela.TtmbClassOwnerEspec  := TFrmPadraoEdicao;
 tmbedtListParcela.TtmbFormOwnerEspec   := FrmPadraoEdicao;
 tmbEdtListRetensao.TtmbClassOwnerEspec := TfrmPadraoEdicao;
 tmbEdtListRetensao.TtmbFormOwnerEspec  := frmPadraoEdicao;
end;


procedure TfrmFI.wwDBComboDlg5CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa( dmFI.dsAcao,'ACAOID',dmFI.cdsFIACAOID.AsString ) ;
 ExecLoockupRetorno( dmFI.cdsFI,'ACAOID','ACAOID' );
end;

procedure TfrmFI.wwDBComboDlg1CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmEF.dsEntidade,'ENTIDADEID', dmFI.cdsFIEMPRESAID.AsString);
 ExecLoockupRetorno(dmPP.cdsPedVend,'CLIENTEID','ENTIDADEID' );
end;

procedure TfrmFI.wwDBComboDlg2CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmEF.dsFilial,'FILIALID', dmFI.cdsFIFILIALID.AsString);
 ExecLoockupRetorno(dmFI.cdsFI,'FILIALID','FILIALID' );
end;

procedure TfrmFI.wwDBComboDlg8CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmEF.dsCondPagto,'CONDPAGTOID',dmFI.cdsFICONDPAGTOID.AsString);
 ExecLoockupRetorno(dmFI.cdsFI,'CONDPAGTOID','CONDPAGTOID' );
end;

procedure TfrmFI.FormCreate(Sender: TObject);
begin
 SetDatasetEdicaoLista;
end;

procedure TfrmFI.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if not FinalFormulario(dmFI.cdsFI,' do Financeiro') then
    Action := caNone
 else
    begin
     Action := caFree;
     frmFI  := Nil;
    end;
end;

procedure TfrmFI.FormKeyPress(Sender: TObject; var Key: Char);
begin
 {Habilitar a propriedade KeyPreview do Form para funcionar o Enter como Tab}
 {ENTER}
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;

procedure TfrmFI.wwDBComboDlg4CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmEF.dsEmpresa,'EMPRESAID', dmFI.cdsFIEMPRESAID.AsString);
 ExecLoockupRetorno(dmFI.cdsFI,'EMPRESAID','EMPRESAID' );
end;

end.
