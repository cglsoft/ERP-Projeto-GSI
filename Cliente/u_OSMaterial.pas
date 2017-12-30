unit u_OSMaterial;

interface

uses
  Windows, Forms, tmbToolEdicaoTop, ToolWin, ComCtrls, tmbToolEdicaoBottom,
  ExtCtrls, DBCtrls, StdCtrls, Mask, wwdbedit, Wwdotdot, Controls, Classes;

type
  TfrmOSMaterial = class(TForm)
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
    wwdbcbdlgProd: TwwDBComboDlg;
    DBEdit9: TDBEdit;
    dbedtQTD: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Label27: TLabel;
    DBEdit27: TDBEdit;
    dbedtPDSID: TDBEdit;
    Label28: TLabel;
    Label29: TLabel;
    DBEdit4: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
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
  frmOSMaterial: TfrmOSMaterial;

implementation

uses u_dmEF, u_dmOS, FuncoesCliente, u_dmGSI;

{$R *.dfm}

procedure TfrmOSMaterial.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if not FinalFormulario(dmEF.cdsPdsItem,' Item do Pedido de Saída ') then
    Action := caNone
 else
    begin
     Action := caFree;
     frmOSMaterial := Nil;
    end;
end;

procedure TfrmOSMaterial.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;

procedure TfrmOSMaterial.wwdbcbdlgProdCustomDlg(Sender: TObject);
begin
 if CheckSenha(dmGsi.UsuarioAtivo,'Ordem de Servico','Pesquisar O.S. Material.',False) then
    begin
     ExecLoockupPesquisa(dmEF.dsProduto, 'EMPRESAID;PRODUTOID', wwdbcbdlgProd.Text, 'Produto' );
     ExecLoockupRetorno(dmOS.cdsOSMaterial, 'EMPRESAID;PRODUTOID', 'EMPRESAID;PRODUTOID');
    end;
end;

procedure TfrmOSMaterial.FormCreate(Sender: TObject);
begin
 // Não permitir alterar PRODUTO nem QUANTIDADE quando gravar o item, o mesmo deverá ser excluso 
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
