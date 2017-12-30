unit u_ProcessoSerie;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Grids, DBGrids, Buttons, Mask, ExtCtrls,
  Menus, DB;

type
  TfrmProcessoSerie = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtCod: TDBEdit;
    edtDescr: TDBEdit;
    edtPart: TDBEdit;
    edtQtd: TDBEdit;
    grdSerie: TDBGrid;
    GroupBox1: TGroupBox;
    mmComposicao: TDBMemo;
    BitBtn1: TBitBtn;
    PopupMenu1: TPopupMenu;
    mnuExcluirItem: TMenuItem;
    mnuInserirItem: TMenuItem;
    Gravar1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure mnuExcluirItemClick(Sender: TObject);
    procedure mnuInserirItemClick(Sender: TObject);
    procedure Gravar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProcessoSerie: TfrmProcessoSerie;

implementation

uses u_dmIT;

{$R *.dfm}

procedure TfrmProcessoSerie.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := caFree;
 frmProcessoSerie := Nil;
end;

procedure TfrmProcessoSerie.BitBtn1Click(Sender: TObject);
begin
 if dmIT.cdsProcessoItemSerie.RecordCount <> dmIT.cdsProcessoItemQTDLIBERADA.Value then
    MessageDlg( 'Quantidade de Séries diferente da quantidade do Produto.', mtInformation, [mbOk], 0 )
 else
    Close;
end;

procedure TfrmProcessoSerie.mnuExcluirItemClick(Sender: TObject);
begin
  if MessageDlg('Confirma a exclusão do item?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     dmIT.cdsProcessoItemSerie.Delete;
end;

procedure TfrmProcessoSerie.mnuInserirItemClick(Sender: TObject);
begin
 dmIT.cdsProcessoItemSerie.Insert;
end;

procedure TfrmProcessoSerie.Gravar1Click(Sender: TObject);
begin
 if dmIT.cdsProcessoItem.State in  [dsInsert, dsEdit] then
    dmIT.cdsProcessoItem.Post
end;

end.
