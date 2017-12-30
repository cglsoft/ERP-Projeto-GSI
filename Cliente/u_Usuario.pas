unit u_Usuario;

interface

uses
  SysUtils, Forms, ComCtrls, DBActns, Classes, ActnList,
  XPStyleActnCtrls, ActnMan, ImgList, Controls, Menus, CustomizeDlg,
  ActnCtrls, StdCtrls, Mask, DBCtrls, ToolWin, tmbToolManutencaoTop,
  Buttons, ExtCtrls, DBGrids, Grids, wwDataInspector, tmbDataInspector,
  fcdbtreeview, DB, DBClient, fcStatusBar;

type
  TfrmUsuario = class(TForm)
    CustomizeDlg1: TCustomizeDlg;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Splitter1: TSplitter;
    PopupMenu3: TPopupMenu;
    Selecionartodos1: TMenuItem;
    Desmarcartodososselecionados1: TMenuItem;
    PopupMenu2: TPopupMenu;
    mnuCopiarUsuario: TMenuItem;
    mnuColarUsuario: TMenuItem;
    fcDBTreeView1: TfcDBTreeView;
    ImageList1: TImageList;
    TabSheet5: TTabSheet;
    PageControl2: TPageControl;
    TabSheet4: TTabSheet;
    Splitter2: TSplitter;
    ppmnDefinirSenha: TMenuItem;
    N1: TMenuItem;
    tmbdtinspCadastro: TtmbDataInspector;
    PageControl3: TPageControl;
    TabSheet3: TTabSheet;
    Splitter3: TSplitter;
    Panel3: TPanel;
    sbTodos: TSpeedButton;
    sbUm: TSpeedButton;
    sbRetUm: TSpeedButton;
    sbRetTodos: TSpeedButton;
    tmbManutTop1: TtmbManutTop;
    actmngManutencao: TActionManager;
    actPrimeiro: TDataSetFirst;
    actAnterior: TDataSetPrior;
    actProximo: TDataSetNext;
    actUltimo: TDataSetLast;
    actInserir: TDataSetInsert;
    actDeletar: TDataSetDelete;
    actEditar: TDataSetEdit;
    actGravar: TDataSetPost;
    actCancelar: TDataSetCancel;
    actAtualizar: TDataSetRefresh;
    actPesquisar: TAction;
    Action1: TAction;
    Panel2: TPanel;
    Panel1: TPanel;
    CoolBar2: TCoolBar;
    ActionToolBar2: TActionToolBar;
    ActionToolBar7: TActionToolBar;
    ActionToolBar8: TActionToolBar;
    ActionToolBar9: TActionToolBar;
    dbgrdDireitos: TDBGrid;
    dbgrdUsuarioDireitos: TDBGrid;
    fcStatusBar4: TfcStatusBar;
    Panel4: TPanel;
    Label14: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit5: TDBEdit;
    Atualizar1: TMenuItem;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actFecharExecute(Sender: TObject);
    procedure Selecionartodos1Click(Sender: TObject);
    procedure Desmarcartodososselecionados1Click(Sender: TObject);
    procedure mnuCopiarUsuarioClick(Sender: TObject);
    procedure mnuColarUsuarioClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ppmnDefinirSenhaClick(Sender: TObject);
    procedure sbTodosClick(Sender: TObject);
    procedure sbUmClick(Sender: TObject);
    procedure sbRetUmClick(Sender: TObject);
    procedure sbRetTodosClick(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure dbgrdDireitosTitleClick(Column: TColumn);
    procedure dbgrdUsuarioDireitosTitleClick(Column: TColumn);
    procedure tmbdtinspCadastroButtonClick(Sender: TtmbDataInspector;
      Item: TwwInspectorItem; TableNameReference: String);
    procedure tmbdtinspCadastroItemChanged(Sender: TwwDataInspector;
      Item: TwwInspectorItem; NewValue: String);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Atualizar1Click(Sender: TObject);
  private
    { Private declarations }
    function ProcurarDireito( Usuario, Direito, DireitoSecundario : String ) : Boolean;
    procedure AtualizaComponentes;
  public
    { Public declarations }
  end;

var
  frmUsuario: TfrmUsuario;

implementation

uses FuncoesCliente, u_dmAS, u_PesquisaCampo, u_DefinirSenha,
  FuncoesDsi, u_dmGSI, u_PadraoPesquisa, u_dmEF;

{$R *.dfm}

function TfrmUsuario.ProcurarDireito( Usuario, Direito, DireitoSecundario : String ) : Boolean;
var iSql : String;
    Cds  : TClientDataSet;
begin
 Cds  := nil;
 iSql := 'SELECT * ' +
         ' FROM AS_USUARIODIREITO ' +
         'WHERE ' +
         ' USUARIOID = ' + QuotedStr( Usuario ) +
         ' AND DIREITOID = ' + QuotedStr( Direito ) +
         ' AND DIREITOSECUNDARIOID = ' + QuotedStr( DireitoSecundario );
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     Result := True
  else
     Result := False;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TfrmUsuario.FormCreate(Sender: TObject);
begin
 tmbManutTop1.TtmbPreencheCombos := TRUE;

 with dmAS do
 begin
  cdsUsuario.Open;
  cdsUsuarioDireito.Open;
  cdsDireito.Open;
  cdsSimilar.CreateDataSet;
 end;

 AtualizaComponentes;
end;

procedure TfrmUsuario.AtualizaComponentes;
begin
 with tmbdtinspCadastro do
 begin
  DataSource            := dmAS.dsUsuario;
  Toshiba.ClientDataSet := DataInspector;
  Toshiba.TableName     := IdentificarNomeTabela( dmAS.cdsUsuario.Name );
  Toshiba.Active        := True;
 end;
end;

procedure TfrmUsuario.Atualizar1Click(Sender: TObject);
begin
 dmAS.cdsUsuario.First;
 while not dmAS.cdsUsuario.Eof do
 begin
  dmAS.cdsUsuario.Edit;
  dmAS.cdsUsuarioPASSWORD.Value := Encrypt( dmAS.cdsUsuarioSENHA.Value );
  dmAS.cdsUsuario.Next;
 end;
end;

procedure TfrmUsuario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 if not FinalFormulario(dmAS.cdsUsuario,' do Usuário ') then
    Action := caNone
 else
    begin
     dmAS.cdsSimilar.Close;
     Action     := caFree;
     frmUsuario := Nil;
    end;
end;

procedure TfrmUsuario.actFecharExecute(Sender: TObject);
begin
 Close;
end;

procedure TfrmUsuario.Selecionartodos1Click(Sender: TObject);
begin
 fcDBTreeView1.SelectAll( dmAS.cdsUsuario )
end;

procedure TfrmUsuario.Desmarcartodososselecionados1Click(Sender: TObject);
begin
 fcDBTreeView1.UnselectAll;
end;

procedure TfrmUsuario.mnuCopiarUsuarioClick(Sender: TObject);
begin
 with dmAS do
 begin
  cdsSimilar.Open;
  cdsSimilar.EmptyDataSet;

  cdsUsuarioDireito.First;
  while not cdsUsuarioDireito.Eof do
  begin
   cdsSimilar.Insert;
   cdsSimilarUSUARIOID.Value           := cdsUsuarioDireitoUSUARIOID.Value;
   cdsSimilarDIREITOID.Value           := cdsUsuarioDireitoDIREITOID.Value;
   cdsSimilarDIREITOSECUNDARIOID.Value := cdsUsuarioDireitoDIREITOSECUNDARIOID.Value;
   cdsUsuarioDireito.Next;
  end;
 end;
end;

procedure TfrmUsuario.mnuColarUsuarioClick(Sender: TObject);
begin
 with dmAS do
 begin
  cdsSimilar.First;
  while not cdsSimilar.Eof do
  begin
   if not ProcurarDireito( cdsUsuarioUSUARIOID.Value, cdsSimilarDIREITOID.Value, cdsSimilarDIREITOSECUNDARIOID.Value ) then
      begin
       cdsUsuarioDireito.Insert;
       cdsUsuarioDireitoDIREITOID.Value           := cdsSimilarDIREITOID.Value;
       cdsUsuarioDireitoDIREITOSECUNDARIOID.Value := cdsSimilarDIREITOSECUNDARIOID.Value;
       cdsUsuarioDireito.Post;
      end;
   cdsSimilar.Next;
  end;
 end;
end;

procedure TfrmUsuario.FormKeyPress(Sender: TObject; var Key: Char);
begin
 // Habilitar a propriedade KeyPreview do Form para funcionar o Enter como Tab
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;

procedure TfrmUsuario.ppmnDefinirSenhaClick(Sender: TObject);
begin
 frmDefinirSenha := TfrmDefinirSenha.Create( Self );
 frmDefinirSenha.MudarSenha := False;
 frmDefinirSenha.Usuario    := dmAS.cdsUsuarioUSUARIOID.Value;
 frmDefinirSenha.ShowModal;
end;

procedure TfrmUsuario.sbTodosClick(Sender: TObject);
begin
 with dmAS do
 begin
  cdsDireito.First;
  while not cdsDireito.Eof do
  begin
   if not ProcurarDireito( cdsUsuarioUSUARIOID.Value, cdsDireitoDIREITOID.Value, cdsDireitoDIREITOSECUNDARIOID.Value ) then
      begin
       cdsUsuarioDireito.Insert;
       cdsUsuarioDireitoUSUARIOID.Value           := cdsUsuarioUSUARIOID.Value;
       cdsUsuarioDireitoDIREITOID.Value           := cdsDireitoDIREITOID.Value;
       cdsUsuarioDireitoDIREITOSECUNDARIOID.Value := cdsDireitoDIREITOSECUNDARIOID.Value;
       cdsUsuarioDireito.Post;
      end;
   cdsDireito.Next;
  end;
 end;
end;

procedure TfrmUsuario.sbUmClick(Sender: TObject);
begin
 with dmAS do
 begin
  if not ProcurarDireito( cdsUsuarioUSUARIOID.Value, cdsDireitoDIREITOID.Value, cdsDireitoDIREITOSECUNDARIOID.Value ) then
     begin
      cdsUsuarioDireito.Insert;
      cdsUsuarioDireitoDIREITOID.Value           := cdsDireitoDIREITOID.Value;
      cdsUsuarioDireitoDIREITOSECUNDARIOID.Value := cdsDireitoDIREITOSECUNDARIOID.Value;
      cdsUsuarioDireito.Post;
     end;
 end;
end;

procedure TfrmUsuario.sbRetUmClick(Sender: TObject);
begin
 dmAS.cdsUsuarioDireito.Delete;
end;

procedure TfrmUsuario.sbRetTodosClick(Sender: TObject);
begin
 with dmAS do
 begin
  cdsUsuarioDireito.First;
  while not cdsUsuarioDireito.Eof do
   cdsUsuarioDireito.Delete;
 end;
end;

procedure TfrmUsuario.Action1Execute(Sender: TObject);
begin
 Close;
end;

procedure TfrmUsuario.dbgrdDireitosTitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column, dmAS.dsDireito, dbgrdDireitos);
end;

procedure TfrmUsuario.dbgrdUsuarioDireitosTitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column, dmAS.dsUsuarioDireito, dbgrdUsuarioDireitos);
end;

procedure TfrmUsuario.tmbdtinspCadastroButtonClick(
  Sender: TtmbDataInspector; Item: TwwInspectorItem;
  TableNameReference: String);
var i, j: Integer;
begin
 for i := 0 to Screen.DataModuleCount - 1 do
     for j := 0 to Screen.DataModules[i].ComponentCount-1 do
         if Screen.DataModules[i].Components[j] is TDataSource then
            if StrComp( PChar( UpperCase( Screen.DataModules[i].Components[j].Name ) ), PChar( UpperCase( 'ds' + TableNameReference ) ) ) = 0 then
               begin
                CriaFormLookUp( (Screen.DataModules[i].Components[j] as TDataSource), Item.Field, '' );
                Break;
               end;   
end;

procedure TfrmUsuario.tmbdtinspCadastroItemChanged(
  Sender: TwwDataInspector; Item: TwwInspectorItem; NewValue: String);
begin
 if  Sender.DataSource.Name <> 'dsDicionario' then
     case Item.Field.DataType of
     ftString : Item.Field.Value := UpperCase( NewValue );
     end;
end;

procedure TfrmUsuario.FormShow(Sender: TObject);
begin
 tmbManutTop1.cbxCampos.ItemIndex   := 0;
 tmbManutTop1.cbxCondicao.ItemIndex := 3; 
 tmbManutTop1.cbxCampos.OnExit( Self );

 if Assigned( frmUsuario ) then
    frmUsuario.ActiveControl := tmbManutTop1.mktConteudo;
end;

procedure TfrmUsuario.BitBtn1Click(Sender: TObject);
begin

 with dmAS do
 begin
  cdsUsuario.First;
  while not cdsUsuario.Eof do
  begin
   if cdsUsuarioSENHA.IsNull then
      begin
       cdsUsuario.Next;
       Continue;
      end;

   cdsUsuario.Edit;
   cdsUsuarioPASSWORD.Value := Hash5CryptyString(  EnDeCrypt( cdsUsuarioSENHA.Value ) );
   cdsUsuario.Post;
   cdsUsuario.Next;
  end;

 end;
end;

end.
