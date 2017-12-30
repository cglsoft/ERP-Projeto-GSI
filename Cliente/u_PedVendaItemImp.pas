unit u_PedVendaItemImp;

interface

uses
  Windows, Forms, tmbToolEdicaoTop, ToolWin, ComCtrls, tmbToolEdicaoBottom,
  ExtCtrls, DBCtrls, StdCtrls, Mask, wwdbedit, Wwdotdot, Controls, Classes,
  wwdbdatetimepicker, ImgList, ActnList, XPStyleActnCtrls, ActnMan,
  ActnCtrls, ActnMenus;

type
  TfrmPedVendaItemImp = class(TForm)
    Panel8: TPanel;
    StatusBar: TStatusBar;
    Panel9: TPanel;
    tmbEdicaoBottom2: TtmbEdicaoBottom;
    CoolBar1: TCoolBar;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    wwdbcbdlgProd: TwwDBComboDlg;
    dbedtQTD: TDBEdit;
    DBEdit10: TDBEdit;
    Label27: TLabel;
    DBEdit27: TDBEdit;
    dbedtPDSID: TDBEdit;
    Label28: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox8: TGroupBox;
    Label25: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label14: TLabel;
    wwdbcbdlgTransp: TwwDBComboDlg;
    DBEdit23: TDBEdit;
    DBEdit1: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit12: TDBEdit;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    Label12: TLabel;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    Label13: TLabel;
    GroupBox2: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    wwDBComboDlg4: TwwDBComboDlg;
    DBEdit7: TDBEdit;
    DBEdit13: TDBEdit;
    DBMemo2: TDBMemo;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit20: TDBEdit;
    ActionManager1: TActionManager;
    actRelatTecnico: TAction;
    ImageList1: TImageList;
    ActionMainMenuBar1: TActionMainMenuBar;
    Label23: TLabel;
    DBEdit8: TDBEdit;
    Label24: TLabel;
    DBEdit14: TDBEdit;
    Label26: TLabel;
    DBEdit9: TDBEdit;
    Label29: TLabel;
    DBEdit15: TDBEdit;
    Label30: TLabel;
    DBEdit16: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure wwdbcbdlgProdCustomDlg(Sender: TObject);
    procedure wwdbcbdlgTranspCustomDlg(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPedVendaItemImp: TfrmPedVendaItemImp;

implementation

uses FuncoesCliente, u_dmPP, u_dmEF;

{$R *.dfm}

procedure TfrmPedVendaItemImp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if not FinalFormulario(dmPP.cdsPedVendItem,' Item do Pedido de Venda ') then
    Action := caNone
 else
    begin
     Action := caFree;
     frmPedVendaItemImp := Nil;
    end;
end;

procedure TfrmPedVendaItemImp.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;

procedure TfrmPedVendaItemImp.wwdbcbdlgProdCustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmPP.dsCatalogo, 'MODELOID', wwdbcbdlgProd.Text, 'Modelo' );
 ExecLoockupRetorno(dmPP.cdsPedVendItem, 'MODELOID', 'MODELOID');
end;

procedure TfrmPedVendaItemImp.wwdbcbdlgTranspCustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmEF.dsEntidade, 'ENTIDADEID', wwdbcbdlgTransp.Text, 'Transportador' );
 ExecLoockupRetorno(dmPP.cdsPedVendItem, 'RTTRANSPORTADORID', 'ENTIDADEID');
end;

end.
