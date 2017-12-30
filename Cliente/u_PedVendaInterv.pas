unit u_PedVendaInterv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, tmbToolEdicaoBottom, ComCtrls, DBCtrls, StdCtrls, Mask,
  wwdbedit, Wwdotdot, ToolWin, tmbToolEdicaoTop, wwcheckbox;

type
  TfrmPedVendaInterv = class(TForm)
    tmbEdicaoTop2: TtmbEdicaoTop;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label28: TLabel;
    wwdbcbdlgProd: TwwDBComboDlg;
    DBEdit9: TDBEdit;
    dbedtPDSID: TDBEdit;
    StatusBar1: TStatusBar;
    tmbEdicaoBottom2: TtmbEdicaoBottom;
    wwCheckBox1: TwwCheckBox;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwdbcbdlgProdCustomDlg(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPedVendaInterv: TfrmPedVendaInterv;

implementation

uses u_dmPP,FuncoesCliente;

{$R *.dfm}

procedure TfrmPedVendaInterv.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 if not FinalFormulario(dmPP.cdsPedVendInterv,' Interveniência do Pedido de Venda ') then
    Action := caNone
 else
    begin
     Action := caFree;
     frmPedVendaInterv := Nil;
    end;
end;

procedure TfrmPedVendaInterv.wwdbcbdlgProdCustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa( dmPP.dsCondPagtoProp,'CONDPAGTOPROPID', dmPP.cdsPedVendIntervCONDINTERVID.AsString );
 ExecLoockupRetorno( dmPP.cdsPedVendInterv,'CONDINTERVID','CONDPAGTOPROPID' );
end;

procedure TfrmPedVendaInterv.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;

end.
