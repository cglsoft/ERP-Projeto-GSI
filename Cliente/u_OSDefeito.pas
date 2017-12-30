unit u_OSDefeito;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, tmbToolEdicaoBottom, ComCtrls, ToolWin, tmbToolEdicaoTop,
  StdCtrls, ExtCtrls, Mask, DBCtrls, wwdbedit, Wwdotdot;

type
  TfrmOSDefeito = class(TForm)
    tmbEdicaoTop1: TtmbEdicaoTop;
    Panel1: TPanel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label15: TLabel;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    StatusBar1: TStatusBar;
    Panel2: TPanel;
    tmbEdicaoBottom1: TtmbEdicaoBottom;
    wwDBComboDlg2: TwwDBComboDlg;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure wwDBComboDlg2CustomDlg(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOSDefeito: TfrmOSDefeito;

implementation

uses u_dmOs,FuncoesCliente;

{$R *.dfm}

procedure TfrmOSDefeito.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 if not FinalFormulario(dmOs.cdsOsDefeito,' dos Defeitos da Ordem de Serviço') then
    Action := caNone
 else
    begin
     Action := caFree;
     frmOSDefeito := nil;
    end;
end;

procedure TfrmOSDefeito.FormKeyPress(Sender: TObject; var Key: Char);
begin
 {Habilitar a propriedade KeyPreview do Form para funcionar o Enter como Tab}
 {ENTER}
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;

procedure TfrmOSDefeito.wwDBComboDlg2CustomDlg(Sender: TObject);
begin
 dmOS.FiltroDefeitoGrupo( dmOS.cdsOsDefeitoDEFEITOID );
end;

end.
