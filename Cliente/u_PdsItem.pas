unit u_PdsItem;

interface

uses
  Windows, Forms, tmbToolEdicaoTop, ToolWin, ComCtrls, tmbToolEdicaoBottom,
  ExtCtrls, DBCtrls, StdCtrls, Mask, wwdbedit, Wwdotdot, Controls, Classes;

type
  TfrmPDSItem = class(TForm)
    Panel8: TPanel;
    StatusBar: TStatusBar;
    Panel9: TPanel;
    tmbEdicaoBottom2: TtmbEdicaoBottom;
    CoolBar1: TCoolBar;
    tmbEdicaoTop2: TtmbEdicaoTop;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label26: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    wwdbcbdlgProd: TwwDBComboDlg;
    DBEdit9: TDBEdit;
    dbedtQTD: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label27: TLabel;
    DBEdit27: TDBEdit;
    dbedtPDSID: TDBEdit;
    Label28: TLabel;
    Label29: TLabel;
    DBEdit4: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure wwdbcbdlgProdCustomDlg(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPDSItem: TfrmPDSItem;

implementation

uses u_dmEF, FuncoesCliente;

{$R *.dfm}

procedure TfrmPDSItem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if not FinalFormulario(dmEF.cdsPdsItem,' Item do Pedido de Saída ') then
    Action := caNone
 else
    begin
     Action := caFree;
     frmPDSItem := Nil;
    end;
end;

procedure TfrmPDSItem.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;

procedure TfrmPDSItem.wwdbcbdlgProdCustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmEF.dsProduto, 'EMPRESAID;PRODUTOID', wwdbcbdlgProd.Text, 'Produto' );
 ExecLoockupRetorno(dmEF.cdsPdsItem, 'EMPRESAID;PRODUTOID', 'EMPRESAID;PRODUTOID');
end;

procedure TfrmPDSItem.FormCreate(Sender: TObject);
begin
 { Não permitir alterar PRODUTO nem QUANTIDADE quando gravar o item, o mesmo deverá ser excluso }
 if dmEF.cdsPdsItemPRODUTOID.Tag =  1 then
    begin
     dbedtQTD.Enabled := False;
     dbedtQTD.Color   := dbedtPDSID.Color;
    end;

 if dmEF.cdsPdsItemQUANTIDADE.Tag =  1 then
    begin
     wwdbcbdlgProd.Enabled := False;
     wwdbcbdlgProd.Color   := dbedtPDSID.Color;
    end;
end;

end.
