unit u_PdeItem;

interface

uses
  Windows, Forms, tmbToolEdicaoTop, ToolWin, ComCtrls, tmbToolEdicaoBottom,
  ExtCtrls, DBCtrls, StdCtrls, Mask, wwdbedit, Wwdotdot, Controls, Classes,
  Graphics;

type
  TfrmPDEItem = class(TForm)
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
    wwDBComboDlg3: TwwDBComboDlg;
    DBEdit9: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    dbedtSTE: TDBEdit;
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
    DBEdit28: TDBEdit;
    Label28: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure wwDBComboDlg3CustomDlg(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPDEItem: TfrmPDEItem;

implementation

uses u_dmEF, u_dmGSI, FuncoesCliente;

{$R *.dfm}

procedure TfrmPDEItem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if not FinalFormulario(dmEF.cdsPdeItem,' Item do Pedido de Entrada ') then
    Action := caNone
 else
    begin
     Action := caFree;
     frmPDEItem := Nil;
    end;
end;

procedure TfrmPDEItem.FormCreate(Sender: TObject);
begin
 if CheckSenha(dmGsi.UsuarioAtivo,'Pedido de Entrada','Alterar dados bloqueados do pedido',False) then
    begin
     dbedtSTE.ReadOnly := False;
     dbedtSTE.Color    := clWindow;
    end
 else
    begin
     dbedtSTE.ReadOnly := True;
     dbedtSTE.Color    := clWindow;
    end;
end;

procedure TfrmPDEItem.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;

procedure TfrmPDEItem.wwDBComboDlg3CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmEF.dsProduto, 'EMPRESAID;PRODUTOID', wwDBComboDlg3.Text, 'Produto' );
 ExecLoockupRetorno(dmEF.cdsPdeItem, 'EMPRESAID;PRODUTOID', 'EMPRESAID;PRODUTOID');
end;

end.
