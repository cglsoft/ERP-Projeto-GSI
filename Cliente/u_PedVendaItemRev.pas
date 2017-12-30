unit u_PedVendaItemRev;

interface

uses
  Windows, Forms, tmbToolEdicaoTop, ToolWin, ComCtrls, tmbToolEdicaoBottom,
  ExtCtrls, DBCtrls, StdCtrls, Mask, wwdbedit, Wwdotdot, Controls, Classes,
  wwdbdatetimepicker, ImgList, ActnList, XPStyleActnCtrls, ActnMan,
  ActnCtrls, ActnMenus;

type
  TfrmPedVendaItemRev = class(TForm)
    Panel8: TPanel;
    StatusBar: TStatusBar;
    Panel9: TPanel;
    tmbEdicaoBottom2: TtmbEdicaoBottom;
    CoolBar1: TCoolBar;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    wwdbcbdlgProd: TwwDBComboDlg;
    DBEdit9: TDBEdit;
    dbedtQTD: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
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
    Label26: TLabel;
    DBEdit14: TDBEdit;
    Label29: TLabel;
    DBEdit15: TDBEdit;
    Label24: TLabel;
    DBEdit16: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure wwdbcbdlgProdCustomDlg(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure wwdbcbdlgTranspCustomDlg(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPedVendaItemRev: TfrmPedVendaItemRev;

implementation

uses FuncoesCliente, u_dmPP, u_dmEF;

{$R *.dfm}

procedure TfrmPedVendaItemRev.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if not FinalFormulario(dmPP.cdsPedVendItem,' Item do Pedido de Venda ') then
    Action := caNone
 else
    begin
     Action := caFree;
     frmPedVendaItemRev := Nil;
    end;
end;

procedure TfrmPedVendaItemRev.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;

procedure TfrmPedVendaItemRev.wwdbcbdlgProdCustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmEF.dsProduto, 'EMPRESAID;PRODUTOID', wwdbcbdlgProd.Text, 'Produto' );
 ExecLoockupRetorno(dmPP.cdsPedVendItem, 'EMPRESAID;PRODUTOID', 'EMPRESAID;PRODUTOID');
end;

procedure TfrmPedVendaItemRev.FormCreate(Sender: TObject);
begin
 { Não permitir alterar PRODUTO nem QUANTIDADE quando gravar o item, o mesmo deverá ser excluso }

 if dmPP.cdsPedVendPDSID.AsInteger > 0 then
// if dmPP.cdsPedVendItemPRODUTOID.Tag =  1 then
    begin
     dbedtQTD.Enabled := False;
     dbedtQTD.Color   := dbedtPDSID.Color;
    end;

 if dmPP.cdsPedVendPDSID.AsInteger > 0 then
// if dmPP.cdsPedVendItemQUANTIDADE.Tag =  1 then
    begin
     wwdbcbdlgProd.Enabled := False;
     wwdbcbdlgProd.Color   := dbedtPDSID.Color;
    end;
end;

procedure TfrmPedVendaItemRev.wwdbcbdlgTranspCustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmEF.dsEntidade, 'ENTIDADEID', wwdbcbdlgTransp.Text, 'Transportador' );
 ExecLoockupRetorno(dmPP.cdsPedVendItem, 'RTTRANSPORTADORID', 'ENTIDADEID');
end;

end.
