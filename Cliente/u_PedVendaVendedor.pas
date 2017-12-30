unit u_PedVendaVendedor;

interface

uses
  Windows, Forms, tmbToolEdicaoTop, ToolWin, ComCtrls, tmbToolEdicaoBottom,
  ExtCtrls, DBCtrls, StdCtrls, Mask, wwdbedit, Wwdotdot, Controls, Classes,
  wwdbdatetimepicker;

type
  TfrmPedVendVendedor = class(TForm)
    Panel8: TPanel;
    StatusBar: TStatusBar;
    Panel9: TPanel;
    tmbEdicaoBottom2: TtmbEdicaoBottom;
    CoolBar1: TCoolBar;
    tmbEdicaoTop2: TtmbEdicaoTop;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    wwdbcbdlgProd: TwwDBComboDlg;
    DBEdit9: TDBEdit;
    dbedtPDSID: TDBEdit;
    Label28: TLabel;
    Label1: TLabel;
    wwDBComboDlg1: TwwDBComboDlg;
    DBEdit1: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure wwdbcbdlgProdCustomDlg(Sender: TObject);
    procedure wwDBComboDlg1CustomDlg(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPedVendVendedor: TfrmPedVendVendedor;

implementation

uses FuncoesCliente, u_dmPP, u_dmEF;

{$R *.dfm}

procedure TfrmPedVendVendedor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if not FinalFormulario(dmPP.cdsPedVendVend,' Vendedores do Pedido de Venda ') then
    Action := caNone
 else
    begin
     Action := caFree;
     frmPedVendVendedor := Nil;
    end;
end;

procedure TfrmPedVendVendedor.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;

procedure TfrmPedVendVendedor.wwdbcbdlgProdCustomDlg(Sender: TObject);
var iSql : String;
begin
 iSQL    := 'SELECT EF_ENTIDADE.ENTIDADEID,' +
            '       EF_ENTIDADE.CPFCNPJ,' +
            '       EF_ENTIDADE.NOME,' +
            '       EF_ENTIDADEGRUPO.CATEGORIAID,' +
            '       EF_CATEGORIA.DESCRICAO,' +
            '       EF_CATEGORIA.FUNCAOVENDA' +
            '  FROM EF_ENTIDADE EF_ENTIDADE,' +
            '       EF_ENTIDADEGRUPO EF_ENTIDADEGRUPO,' +
            '       EF_CATEGORIA EF_CATEGORIA' +
            ' WHERE EF_ENTIDADEGRUPO.CATEGORIAID = 6' +
            '       AND EF_ENTIDADE.ENTIDADEID = EF_ENTIDADEGRUPO.ENTIDADEID' +
            '       AND EF_CATEGORIA.CATEGORIAID(+) = EF_ENTIDADEGRUPO.CATEGORIAID';

 CriaFormLookUp( dmEF.cdsEntidade.Name, iSql, dmPP.cdsPedVendVendVENDEDORID,'ENTIDADEID', 'ENTIDADEID' );
end;

procedure TfrmPedVendVendedor.wwDBComboDlg1CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmPP.dsClasseVendedor,'CLASSEVENDEDORID', dmPP.cdsPedVendVendCLASSEVENDEDORID.AsString);
 ExecLoockupRetorno(dmPP.cdsPedVendVend,'CLASSEVENDEDORID','CLASSEVENDEDORID');
end;

end.
