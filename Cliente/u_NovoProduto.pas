unit u_NovoProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, ExtCtrls, Buttons, wwdbedit, Wwdotdot, DB;

type
  TfrmNovoProduto = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    GroupBox1: TGroupBox;
    Panel2: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    edtNcm: TDBEdit;
    BitBtn1: TBitBtn;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    wwDBComboDlg1: TwwDBComboDlg;
    DBEdit8: TDBEdit;
    wwDBComboDlg3: TwwDBComboDlg;
    DBEdit1: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    DBEdit34: TDBEdit;
    Label23: TLabel;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBComboDlg1CustomDlg(Sender: TObject);
    procedure wwDBComboDlg3CustomDlg(Sender: TObject);
    procedure wwDBComboDlg3Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNovoProduto: TfrmNovoProduto;

implementation

uses u_dmEF, u_dmIT, FuncoesCliente;

{$R *.dfm}

procedure TfrmNovoProduto.BitBtn1Click(Sender: TObject);
begin
 Close;
end;

procedure TfrmNovoProduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 frmNovoProduto := nil;
end;

procedure TfrmNovoProduto.wwDBComboDlg1CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmEF.dsSubGrupo, 'SUBGRUPOID', dmEF.cdsProdutoSUBGRUPOID.AsString );
 ExecLoockupRetorno(dmEF.cdsProduto, 'SUBGRUPOID', 'SUBGRUPOID');
end;

procedure TfrmNovoProduto.wwDBComboDlg3CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmEF.dsProduto, 'EMPRESAID;PRODUTOID',  dmEF.cdsProdutoPRODUTOID.AsString );
 ExecLoockupRetorno(dmIT.cdsProcessoItem, 'EMPRESAID;PRODUTOID', 'EMPRESAID;PRODUTOID');
end;

procedure TfrmNovoProduto.wwDBComboDlg3Exit(Sender: TObject);
begin
 if dmEF.cdsProduto.State <> dsEdit then
    dmEF.cdsProduto.Edit;
end;

end.
