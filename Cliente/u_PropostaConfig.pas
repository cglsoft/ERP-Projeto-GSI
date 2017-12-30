unit u_PropostaConfig;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, ActnMan, ActnCtrls, ToolWin, ComCtrls,
  XPStyleActnCtrls, ImgList, StdCtrls, Buttons, ExtCtrls, fcCombo,
  fctreecombo, fcFontCombo, ShellApi, DBCtrls, Mask, db;

type
  TfrmPropostaConfig = class(TForm)
    CoolBar1: TCoolBar;
    ActionToolBar1: TActionToolBar;
    ActionManager1: TActionManager;
    ImageList1: TImageList;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label63: TLabel;
    Label65: TLabel;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    fcFontCombo: TfcFontCombo;
    Panel2: TPanel;
    Panel3: TPanel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    GroupBox3: TGroupBox;
    DBEdit6: TDBEdit;
    Label5: TLabel;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    cbPrint: TCheckBox;
    cbVisualizar: TCheckBox;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    actPadrao: TAction;
    StatusBar: TStatusBar;
    procedure Action6Execute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbVisualizarClick(Sender: TObject);
    procedure cbPrintClick(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure Action1Execute(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Action3Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure actPadraoExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure ConfigDefault;
    procedure StatusHint(Sender : TObject);
  public
    { Public declarations }
  end;

var
  frmPropostaConfig: TfrmPropostaConfig;

implementation

uses u_Proposta, u_dmAS;

{$R *.dfm}

procedure TfrmPropostaConfig.Action6Execute(Sender: TObject);
begin
 Close;
end;

procedure TfrmPropostaConfig.FormShow(Sender: TObject);
begin
 dmAS.cdsConfig.Open;
 dmAS.cdsConfig.First;
 dmAS.cdsConfig.Edit;
 fcFontCombo.text := dmAS.cdsConfigPP_ESTILOFONTE.AsString;
 if Trim(DBEdit4.text) = '' then
    dmAS.cdsConfigPP_DIRETORIODESTINO.AsString := 'C:\';
end;

procedure TfrmPropostaConfig.cbVisualizarClick(Sender: TObject);
begin
 if cbVisualizar.Checked then
    dmAS.cdsConfigPP_VISUALIZAR.AsInteger := 1
 else
  dmAS.cdsConfigPP_VISUALIZAR.AsInteger := 0;
end;

procedure TfrmPropostaConfig.cbPrintClick(Sender: TObject);
begin
 if cbVisualizar.Checked then
    dmAS.cdsConfigPP_IMPRIMIR.AsInteger := 1
 else
  dmAS.cdsConfigPP_IMPRIMIR.AsInteger := 0;
end;

procedure TfrmPropostaConfig.DBEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (Key in ['0'..'9', #8]) then
    Key := #0;
end;

procedure TfrmPropostaConfig.Action1Execute(Sender: TObject);
begin
 Close;
end;

procedure TfrmPropostaConfig.ConfigDefault;
begin
 dmAS.cdsConfigPP_DIRETORIODESTINO.AsString := 'S:\GSI\Doc\';
 dmAS.cdsConfigPP_MARGEMCABECALHO.AsInteger := 120;
 dmAS.cdsConfigPP_MARGEMPARAGRAFO.AsInteger := 10;
 fcFontCombo.Text                           := 'Tahoma';
 dmAS.cdsConfigPP_TAMANHOFONTE.AsInteger    := 9;
 dmAS.cdsConfigPP_IMPRIMIR.AsInteger        := 0;
 cbPrint.checked := false;
 dmAS.cdsConfigPP_NOMEGERENTE.AsString      := 'FLÁVIO MARTINS';
 dmAS.cdsConfigPP_CARGO.AsString            := 'GERENTE NACIONAL DE VENDAS';
end;

procedure TfrmPropostaConfig.DBEdit4Exit(Sender: TObject);
begin
 if not DirectoryExists(DBEdit4.text) then
 begin
    Application.MessageBox('Diretório inválido.','Mensagem', 0);
    DBEdit4.SetFocus;
 end;
end;

procedure TfrmPropostaConfig.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;

procedure TfrmPropostaConfig.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 frmPropostaConfig := Nil;
 Application.OnHint := nil;
end;

procedure TfrmPropostaConfig.Action3Execute(Sender: TObject);
begin
 if dmAS.cdsConfig.State = dsEdit then
    dmAS.cdsConfig.Cancel;
    Close;
end;

procedure TfrmPropostaConfig.Action2Execute(Sender: TObject);
begin
 if dmAS.cdsConfig.State = dsEdit then
    begin
     dmAS.cdsConfigPP_ESTILOFONTE.AsString :=  fcFontCombo.text;
     dmAS.cdsConfig.Post;
    end;
 Close;
end;

procedure TfrmPropostaConfig.actPadraoExecute(Sender: TObject);
begin
 ConfigDefault;
end;

procedure TfrmPropostaConfig.FormCreate(Sender: TObject);
begin
 Application.OnHint := StatusHint;
end;

procedure TfrmPropostaConfig.StatusHint(Sender: TObject);
begin
 if StatusBar <> nil then
    StatusBar.Panels.Items[0].text := GetLongHint(Application.Hint);
end;

end.
