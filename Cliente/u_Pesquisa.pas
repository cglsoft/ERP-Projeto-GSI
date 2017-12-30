unit u_Pesquisa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, fcdbtreeview, fcStatusBar, ImgList, ActnList,
  XPStyleActnCtrls, ActnMan, PnAjustaGrid, ActnCtrls, ToolWin, ComCtrls,
  ExtCtrls, StdCtrls, DBClient, DB, tmbToolManutencaoTop, Mask, DBCtrls;

type
  TfrmPesquisa = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Splitter1: TSplitter;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    CoolBar1: TCoolBar;
    ActionToolBar1: TActionToolBar;
    tmbajtGeral: tPanel1;
    actmngPesquisa: TActionManager;
    actConfiguracao: TAction;
    actExportar: TAction;
    actFechar: TAction;
    actImprAnalitica: TAction;
    imglstPesquisa: TImageList;
    fcstbarStatus: TfcStatusBar;
    fcDBTreeView1: TfcDBTreeView;
    dbgrdPadraoPesquisa: TDBGrid;
    actDicionario: TAction;
    tmbManutTop1: TtmbManutTop;
    Label1: TLabel;
    procedure actConfiguracaoExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actImprAnaliticaExecute(Sender: TObject);
    procedure actExportarExecute(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actDicionarioExecute(Sender: TObject);
    procedure fcDBTreeView1Change(TreeView: TfcDBCustomTreeView;
      Node: TfcDBTreeNode);
    procedure FormDestroy(Sender: TObject);
    procedure dbgrdPadraoPesquisaTitleClick(Column: TColumn);
  private
    { Private declarations }
    procedure AtualizarPesquisa;
    procedure AtualDicPesquisa;
  public
    { Public declarations }
    cdsPesqGenerica : TClientDataSet;
    dsPesqGenerica : TDataSource;
  end;

var
  frmPesquisa: TfrmPesquisa;

implementation

uses u_dmAS, FuncoesCliente, FuncoesDSI, u_PadraoEdicao, u_dmGSI, u_Rel002,
  u_ParOrderSQL, u_Exportar;

{$R *.dfm}

procedure TfrmPesquisa.AtualDicPesquisa;
var i, PosPonto, PosSelect : Integer;
    Conteudo, NomeCampo, NomeTabela, NomeDicionario : String;
    mmSQL : TMemo;
begin
 mmSQL := TMemo.Create( Self );
 mmSQL.Parent  := Self;
 mmSQL.Width   := 760;
 mmSQL.Visible := False;
 try
  try
   mmSQL.Lines.Add( dmAS.cdsPesquisaISQL.AsString );

   for i := 0 to mmSQL.Lines.Count - 1 do
   begin
    Conteudo  := Alltrim( mmSQL.Lines[i] );

    if Conteudo = 'FROM' then
       exit;

    // Verificar se a primeira linha é do SELECT
    if ( i = 0 ) then
       if ( Length( Conteudo ) > 6 ) then
          raise Exception.Create('Verifique o modelo padrão');

    if ( Conteudo = 'SELECT' ) or ( Conteudo = '' ) then
       continue;

    PosPonto  := Pos( '.', Conteudo );

    if ( i > 1 ) and ( PosPonto = 0 ) then
       raise Exception.Create('Alias da tabela não informado');

    PosSelect := Pos( 'SELECT ', Conteudo ) + 7;

    if Pos( 'SELECT ', Conteudo ) > 0 then
       begin
        NomeTabela := Trim( Copy( Conteudo, PosSelect, ( PosPonto - PosSelect ) ) );
        NomeCampo  := SubstituiString( Trim( Copy( Conteudo, PosPonto + 1, 50 ) ), ',','' );
       end
    else
       begin
        NomeTabela := Trim( Copy( Conteudo, 1, PosPonto - 1 ) );
        NomeCampo  :=  SubstituiString( Trim( Copy( Conteudo, PosPonto + 1, 50 ) ), ',','' );
       end;

    NomeDicionario := 'AS_' + dmAS.cdsPesquisaTABELADICIONARIOID.Value;
    if dmAS.cdsDicionario.Locate('NOMETABELA;NOMECAMPO',
                             VarArrayOf([NomeDicionario, NomeCampo]), []) then
       dmAS.cdsDicionario.Edit
    else
       dmAS.cdsDicionario.Insert;

    dmAS.cdsDicionarioNOMETABELA.Value          := NomeDicionario;
    dmAS.cdsDicionarioNOMECAMPO.Value           := NomeCampo;
    dmAS.cdsDicionarioNOMETABELAPESQ.Value      := NomeTabela;
    dmAS.cdsDicionarioNOMECAMPOTABELAPESQ.Value := NomeCampo;
    dmAS.cdsDicionario.Post;
   end;

  except
  on E: Exception do
   MessageDlg( 'Falha no padrão de criação do arquivo SQL.' + #13 +
                E.Message, mtError, [mbOk] , 0  )
  end;

 finally
  FreeAndNil( mmSQL );
 end;
end;


procedure TfrmPesquisa.AtualizarPesquisa;
var SqlPadrao : String;
 procedure CriarCDSPesq;
 begin
  if Assigned( cdsPesqGenerica ) then
     begin
      SqlPadrao := '';
      cdsPesqGenerica.Close;
      FreeAndNil( cdsPesqGenerica );
      FreeAndNil( dsPesqGenerica );
     end
  else
     SqlPadrao := 'ROWNUM = 0';

  cdsPesqGenerica := TClientDataSet.Create( dmAS );
  cdsPesqGenerica.ProviderName  := 'dsprvPesqGenerica';
  cdsPesqGenerica.PacketRecords := 1;
  cdsPesqGenerica.RemoteServer  := dmAS.shdcnnAS;
  cdsPesqGenerica.Name          := 'cds' + dmAS.cdsPesquisaTABELADICIONARIOID.Value;

  dsPesqGenerica := TDataSource.Create( dmAS );
  dsPesqGenerica.AutoEdit := False;
  dsPesqGenerica.DataSet  := cdsPesqGenerica;
 end;

 procedure AtualcdsSQL( Tipo : Byte );
 var ConteudoSQL : String;
 begin
  if Tipo = 1 then
     ConteudoSQL := ''
  else
     ConteudoSQL := dmAS.cdsPesquisaISQL.Value;

  if dmGsi.cdsSQL.FindKey(['DSPRVPESQGENERICA']) then
     begin
     dmGsi.cdsSQL.Edit;
     dmGsi.cdsSQLSQL.Value := ConteudoSQL;
     dmGsi.cdsSQL.Post;
    end;
 end;

begin
 if dmAS.cdsPesquisa.RecordCount = 0 then
    exit;

 CriarCDSPesq;

 dbgrdPadraoPesquisa.DataSource := dsPesqGenerica;

 AtualcdsSQL( 1 );

 GerarPesquisa( cdsPesqGenerica, dmAS.cdsPesquisaISQL.AsString  );

 tmbajtGeral.tmbAjusta := True;

 AtualcdsSQL( 2 );

 tmbManutTop1.TtmbDataSource     := dsPesqGenerica;
 tmbManutTop1.TtmbPreencheCombos := True;
end;

procedure TfrmPesquisa.actConfiguracaoExecute(Sender: TObject);
begin
 if not CheckSenha(dmGsi.UsuarioAtivo, frmPesquisa.Caption, 'Configuração de Pesquisas' , True) then
    exit;

 CriaEspecifico( TFrmPadraoEdicao, frmPadraoEdicao, dmAS.cdsPesquisa,dmAS.dsPesquisa, frmPesquisa.Caption );
end;

procedure TfrmPesquisa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 dmAS.cdsPesquisa.Close;
 dmAS.cdsDicionario.Close;

 cdsPesqGenerica.Close;

 Action := caFree;
 frmPesquisa := Nil;
end;

procedure TfrmPesquisa.actImprAnaliticaExecute(Sender: TObject);
begin
 if     ( dmAS.cdsPesquisa.FieldByName('NOMEPESQUISA').Value = 'Nota Fiscal de Entrada' ) then
         begin
          frmParOrderSQL := TfrmParOrderSQL.Create(nil);
          frmParOrderSQL.RelatorioId := 1;
          frmParOrderSQL.Show;
         end
 else if ( dmAS.cdsPesquisa.FieldByName('NOMEPESQUISA').Value = 'Nota Fiscal de Saída' ) then
         begin
          frmParOrderSQL := TfrmParOrderSQL.Create(nil);
          frmParOrderSQL.RelatorioId := 2;
          frmParOrderSQL.Show;
         end;
end;

procedure TfrmPesquisa.actExportarExecute(Sender: TObject);
begin
  if not cdsPesqGenerica.IsEmpty then
    begin
     frmExportar := TfrmExportar.Create(nil);
     frmExportar.DataSource := dsPesqGenerica;
     frmExportar.Show;
    end
 else
    MessageDlg('É necessário Gerar um Relatório!',mtWarning, [mbok],0 );
end;

procedure TfrmPesquisa.actFecharExecute(Sender: TObject);
begin
 Close;
end;

procedure TfrmPesquisa.FormCreate(Sender: TObject);
begin
 dmAS.cdsPesquisa.Open;
 dmAS.cdsDicionario.Open;
end;

procedure TfrmPesquisa.actDicionarioExecute(Sender: TObject);
begin
 if not CheckSenha(dmGsi.UsuarioAtivo, frmPesquisa.Caption, 'Atualizar Dicionário' , True) then
    exit;

 AtualDicPesquisa;
end;

procedure TfrmPesquisa.fcDBTreeView1Change(TreeView: TfcDBCustomTreeView;
  Node: TfcDBTreeNode);
begin
 AtualizarPesquisa;
end;

procedure TfrmPesquisa.FormDestroy(Sender: TObject);
begin
 FreeAndNil( cdsPesqGenerica );
 FreeAndNil( dsPesqGenerica );
end;

procedure TfrmPesquisa.dbgrdPadraoPesquisaTitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column, dsPesqGenerica, dbgrdPadraoPesquisa);
end;

end.
