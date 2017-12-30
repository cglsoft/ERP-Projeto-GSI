unit u_Prestador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ComCtrls, tmbToolEdicaoTop, ExtCtrls, ActnList,
  XPStyleActnCtrls, ActnMan, ImgList, ActnCtrls, ActnMenus, StdCtrls, Mask,
  DBCtrls, wwdbedit, Wwdotdot, Grids, DBGrids, tmbToolEdicaoLista,
  tmbToolEdicaoBottom;

type
  TfrmPrestador = class(TForm)
    Panel1: TPanel;
    CoolBar1: TCoolBar;
    actmngPrestador: TActionManager;
    Action1: TAction;
    Action2: TAction;
    ImageList1: TImageList;
    Fechar: TAction;
    ActionMainMenuBar1: TActionMainMenuBar;
    Label1: TLabel;
    Label11: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBMemo3: TDBMemo;
    wwDBComboDlg4: TwwDBComboDlg;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    DBEdit1: TDBEdit;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    tmbEdtLstPrestador: TtmbEdicaoLista;
    GroupBox4: TGroupBox;
    Label9: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    Panel2: TPanel;
    tmbEdicaoBottom1: TtmbEdicaoBottom;
    StatusBar1: TStatusBar;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure SetDataSetEdicaoLista;
  public
    { Public declarations }
  end;

var
  frmPrestador: TfrmPrestador;

implementation

uses u_dmRS,FuncoesCliente, u_PadraoEdicao;

{$R *.dfm}

procedure TfrmPrestador.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 if not FinalFormulario( dmRS.cdsPrestador,'do Prestador') then
    Action := caNone
 else
    begin
     Action    := cafree;
     frmPrestador := nil;
    end;
end;

procedure TfrmPrestador.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
    SelectNext( Screen.ActiveControl,True,True );
end;

procedure TfrmPrestador.SetDataSetEdicaoLista;
begin
 TmbEdtLstPrestador.TtmbClassOwnerEspec := TfrmPadraoEdicao;
 tmbEdtLstPrestador.TtmbFormOwnerEspec  := frmPadraoEdicao
end;

procedure TfrmPrestador.FormCreate(Sender: TObject);
begin
 SetDataSetEdicaoLista;
end;

end.
