unit u_Defeito;

interface

uses
  SysUtils, Forms, Variants, ImgList, Controls, StdCtrls, Mask, DBCtrls,
  tmbToolEdicaoBottom, ActnMan, ActnCtrls, ToolWin, ComCtrls,
  tmbToolEdicaoTop, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, Classes,
  fcStatusBar, Dialogs;


type
  TfrmDefeito = class(TForm)
    ActionToolBar4: TActionToolBar;
    PageControl1: TPageControl;
    ImageList1: TImageList;
    TabSheet5: TTabSheet;
    PageControl2: TPageControl;
    TabSheet4: TTabSheet;
    PageControl3: TPageControl;
    TabSheet3: TTabSheet;
    Splitter3: TSplitter;
    Panel3: TPanel;
    sbTodos: TSpeedButton;
    sbUm: TSpeedButton;
    sbRetUm: TSpeedButton;
    sbRetTodos: TSpeedButton;
    tmbEdicaoTop1: TtmbEdicaoTop;
    Panel1: TPanel;
    tmbEdicaoBottom1: TtmbEdicaoBottom;
    Panel4: TPanel;
    Label14: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit5: TDBEdit;
    wwDBGrid2: TwwDBGrid;
    wwDBGrid3: TwwDBGrid;
    fcStatusBar1: TfcStatusBar;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure sbTodosClick(Sender: TObject);
    procedure sbRetUmClick(Sender: TObject);
    procedure sbRetTodosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbUmClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDefeito: TfrmDefeito;

implementation

uses FuncoesCliente, u_DefinirSenha, FuncoesDsi, u_dmOs, u_dmEF;

{$R *.dfm}

procedure TfrmDefeito.FormKeyPress(Sender: TObject; var Key: Char);
begin
 // Habilitar a propriedade KeyPreview do Form para funcionar o Enter como Tab
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;

procedure TfrmDefeito.sbTodosClick(Sender: TObject);
begin
 with dmEF do
 begin
  cdsGrupo.First;
  while not cdsGrupo.Eof do
  begin
   if not dmOs.cdsDefeitoGrupo.Locate('DEFEITOID;GRUPOID',VarArrayOf( [ dmOS.cdsDefeitoDEFEITOID.Value
                                                                       ,dmEF.cdsGrupoGRUPOID.Value ] ),[] ) then
      begin
       dmOs.cdsDefeitoGrupo.Insert;
       dmOs.cdsDefeitoGrupo.FieldByName('DEFEITOID').Value := dmOS.cdsDefeito.FieldByName('DEFEITOID').Value;
       dmOs.cdsDefeitoGrupo.FieldByName('GRUPOID').Value   := dmEF.cdsGrupo.FieldByName('GRUPOID').Value;
       dmOs.cdsDefeitoGrupo.Post;
      end;
   cdsGrupo.Next;
  end;
 end;
end;

procedure TfrmDefeito.sbRetUmClick(Sender: TObject);
begin
 dmOs.cdsDefeitoGrupo.Delete;
end;

procedure TfrmDefeito.sbRetTodosClick(Sender: TObject);
begin
 with dmOs do
 begin
  cdsDefeitoGrupo.First;
  while not cdsDefeitoGrupo.Eof do
  begin
   cdsDefeitoGrupo.delete;
  end;
 end;
end;

procedure TfrmDefeito.FormCreate(Sender: TObject);
begin
 dmEF.cdsGrupo.Open;
 dmos.cdsDefeitoGrupo.Open;
end;

procedure TfrmDefeito.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if not FinalFormulario(dmOs.cdsTipoOS,' da Ordem de Serviço') then
    Action := caNone
 else
    begin
     Action := caFree;
     frmDefeito  := Nil;
    end;
end;

procedure TfrmDefeito.sbUmClick(Sender: TObject);
begin
 if dmOs.cdsDefeitoGrupo.Locate('DEFEITOID;GRUPOID',VarArrayOf( [ dmOS.cdsDefeitoDEFEITOID.Value
                                                         ,dmEF.cdsGrupoGRUPOID.Value ] ),[] ) then
    MessageDlg ('Grupo já Cadastrado',mtConfirmation,[mbOk],0)
 else
   begin
    with dmOs do
    begin
     cdsDefeitoGrupo.Insert;
     cdsDefeitoGrupo.FieldByName('DEFEITOID').Value := dmOS.cdsDefeito.FieldByName('DEFEITOID').Value;
     cdsDefeitoGrupo.FieldByName('GRUPOID').Value   := dmEF.cdsGrupo.FieldByName('GRUPOID').Value;
     cdsDefeitoGrupo.Post;
    end;
   end;
end;

end.
