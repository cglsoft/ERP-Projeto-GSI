unit u_PastaCliente;

interface

uses
  Windows, Dialogs, Forms, StdCtrls, ExtCtrls, DBCtrls, Mask, Controls,
  tmbToolEdicaoBottom, ActnMan, ActnCtrls, tmbToolEdicaoTop, ToolWin,
  ComCtrls, Classes;

type
  TfrmPastaCliente = class(TForm)
    StatusBar1: TStatusBar;
    Panel3: TPanel;
    CoolBar1: TCoolBar;
    tmbEdicaoTop2: TtmbEdicaoTop;
    tmbEdicaoTop1: TtmbEdicaoTop;
    ActionToolBar2: TActionToolBar;
    Panel2: TPanel;
    tmbEdicaoBottom2: TtmbEdicaoBottom;
    Label14: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    Label16: TLabel;
    DBEdit4: TDBEdit;
    Label1: TLabel;
    Label3: TLabel;
    DBEdit10: TDBEdit;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    DBRadioGroup2: TDBRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPastaCliente: TfrmPastaCliente;

implementation

uses u_dmEF, FuncoesCliente;

{$R *.dfm}

procedure TfrmPastaCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if not FinalFormulario(dmEF.cdsEntidade,' da Despesa  ') then
    Action := caNone
 else
    begin
     Action     := caFree;
     frmPastaCliente := Nil;
    end;
end;

procedure TfrmPastaCliente.FormKeyPress(Sender: TObject; var Key: Char);
begin
 // Habilitar a propriedade KeyPreview do Form para funcionar o Enter como Tab
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;

end.

