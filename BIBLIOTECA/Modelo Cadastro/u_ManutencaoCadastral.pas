
unit u_ManutencaoCadastral;

interface

uses
  SysUtils, Graphics, ImgList, Controls, CustomizeDlg, BandActn, DBActns,
  Classes, ActnList, XPStyleActnCtrls, ActnMan, ComCtrls, DBStatusBar,
  Wwdbigrd, Wwdbgrid, Grids, wwDataInspector, tmbDataInspector, ExtCtrls,
  StdCtrls, Mask, StdActns, ActnMenus, ActnCtrls, ToolWin, Forms, DbClient, DB,
  DBStatus, fcStatusBar, tmbToolManutencaoTop, tmbToolEdicaoTop;

type
  TfrmManutencaoCadastral = class(TForm)
    actmngManutencao: TActionManager;
    CustomizeDlg1: TCustomizeDlg;
    actRecortar: TEditCut;
    actCopiar: TEditCopy;
    actColar: TEditPaste;
    actSelecionarTudo: TEditSelectAll;
    actDesfazer: TEditUndo;
    actApagar: TEditDelete;
    actPrimeiro: TDataSetFirst;
    actAnterior: TDataSetPrior;
    actProximo: TDataSetNext;
    actUltimo: TDataSetLast;
    actInserir: TDataSetInsert;
    actDeletar: TDataSetDelete;
    actEditar: TDataSetEdit;
    actGravar: TDataSetPost;
    actCancelar: TDataSetCancel;
    actRefresh: TDataSetRefresh;
    CustomizeActionBars1: TCustomizeActionBars;
    actFechar: TAction;
    CoolBar1: TCoolBar;
    CoolBar2: TCoolBar;
    Action2: TAction;
    actExportar: TAction;
    ImageList1: TImageList;
    actPesquisar: TAction;
    tmbManutTop1: TtmbManutTop;
    ActionToolBar1: TActionToolBar;
    ActionToolBar4: TActionToolBar;
    ActionToolBar6: TActionToolBar;
    Action1: TAction;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    tmbdtinspCadastro: TtmbDataInspector;
    TabSheet2: TTabSheet;
    wwgrdCadastro: TwwDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actFecharExecute(Sender: TObject);
    procedure tmbdtinspCadastroButtonClick(Sender: TtmbDataInspector;
      Item: TwwInspectorItem; TableNameReference: String);
    procedure tbRetornarClick(Sender: TObject);
    procedure actExportarExecute(Sender: TObject);
    procedure frmManutencaoCadastraPesquisalAction2Execute(
      Sender: TObject);
    procedure Action1Execute(Sender: TObject);
  private
    { Private declarations }
    FDataSetOpen: Boolean;
    FDataSet: TClientDataSet;
    FDataSource: TDataSource;
    FClienteDataSet: TClientDataSet;
    procedure AtualizaComponentes;
  public
    { Public declarations }
    constructor CreateForm(ClientDataSet : TClientDataSet; DataSource : TDataSource; CampoPesquisa: TField ); overload;
    constructor CreateForm(ClientDataSet : TClientDataSet; DataSource : TDataSource ); overload;
    destructor Destroy; override;
  end;

var
  frmManutencaoCadastral: TfrmManutencaoCadastral;

implementation

uses FuncoesCliente, u_Export, FuncoesDsi, u_dmEF, u_dmGSI;

{$R *.dfm}

constructor TfrmManutencaoCadastral.CreateForm(ClientDataSet : TClientDataSet;
  DataSource : TDataSource; CampoPesquisa: TField );
var OldSQL,AddSQL, NovoNmCpPesq : String;
begin
 FDataSet        := ( DataSource.DataSet as TClientDataSet );
 FDataSource     := DataSource;
 FDataSetOpen    := FDataSet.Active;
 FClienteDataSet := ClientDataSet;

 if CampoPesquisa <> nil then
    begin
     with FDataSet do
     begin
      OldSQL := LocateSQL( FDataSet.ProviderName );

      NovoNmCpPesq := UpperCase( FDataSet.Fields[0].FieldName );
      { Analisar o Nome do Campo e verificar se é o mesmo nome da Tabela
        Ex.: ENTIDADE->ENTIDADEID eIMPORTADORID }
      if NovoNmCpPesq <> CampoPesquisa.FieldName then
         NovoNmCpPesq := NovoNmCpPesq
      else
         NovoNmCpPesq := CampoPesquisa.FieldName;

      if not CampoPesquisa.IsNull then
         begin
          if CampoPesquisa.DataType = ftString then
             AddSQL := NovoNmCpPesq + ' = ' + QuotedStr( CampoPesquisa.AsString )
          else
             AddSQL := NovoNmCpPesq + ' = ' + CampoPesquisa.AsString;
         end
      else
         AddSQL := 'ROWNUM > 10';

      CommandText := AnalisarAddSQL( OldSQL, AddSQL);
     end;
    end;

 inherited Create(Application);
 //tbRetornar.Visible := True;

end;

constructor TfrmManutencaoCadastral.CreateForm(ClientDataSet : TClientDataSet;
  DataSource : TDataSource );
begin
 FDataSet        := ( DataSource.DataSet as TClientDataSet );
 FDataSource     := DataSource;
 FDataSetOpen    := FDataSet.Active;
 FClienteDataSet := ClientDataSet;
 inherited Create(Application);

 { Gerar pesquisa inicial para não trazer nenhum registro }
 GerarPesquisa( FDataSet, 'ROWNUM < 1' );

 Show;
 Refresh;
end;

procedure TfrmManutencaoCadastral.FormCreate(Sender: TObject);
begin
 BloquearNavegacao( FDataSet.Name, actmngManutencao );

 if ModalResult <> mrCancel then
    begin
     { Abrir Tabela para manutenção cadastral }
     FDataSet.Open;
     AtualizaComponentes;
     tmbManutTop1.TtmbPreencheCombos := true;
    end;
end;

procedure TfrmManutencaoCadastral.AtualizaComponentes;
begin
 with tmbdtinspCadastro do
 begin
  DataSource                  := FDataSource;
  {}
  tmbManutTop1.TtmbDataSource := FDataSource;
  {}
  Toshiba.ClientDataSet := FClienteDataSet;
  Toshiba.TableName     := IdentificarNomeTabela( FDataSet.Name );
  Toshiba.Active        := True;
 end;
  //DBStatusBar1.DataSource  := FDataSource;
  wwgrdCadastro.DataSource := FDataSource;
end;

procedure TfrmManutencaoCadastral.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 FinalFormulario( FDataSet, 'do Tabela? ' );

 if ( ModalResult <> mrOk ) and not FDataSetOpen then
    FDataSet.Close;
end;

destructor TfrmManutencaoCadastral.Destroy;
begin
 FDataSet        := nil;
 FDataSource     := nil;
 FClienteDataSet := nil;
 inherited;
end;

procedure TfrmManutencaoCadastral.actFecharExecute(Sender: TObject);
begin
 Close;
end;

procedure TfrmManutencaoCadastral.tmbdtinspCadastroButtonClick(
  Sender: TtmbDataInspector; Item: TwwInspectorItem;
  TableNameReference: String);
var i, j: Integer;
begin
 for i := 0 to Screen.DataModuleCount - 1 do
     for j := 0 to Screen.DataModules[i].ComponentCount-1 do
         if Screen.DataModules[i].Components[j] is TDataSource then
            if StrComp( PChar( UpperCase( Screen.DataModules[i].Components[j].Name ) ), PChar( UpperCase( 'ds' + TableNameReference ) ) ) = 0 then
               begin
                CriaFormLookUp( (Screen.DataModules[i].Components[j] as TDataSource), Item.Field );
                Break;
               end;
end;

procedure TfrmManutencaoCadastral.tbRetornarClick(Sender: TObject);
begin
 ModalResult := mrOk;
end;

procedure TfrmManutencaoCadastral.actExportarExecute(Sender: TObject);
begin
 frmExport := TfrmExport.CreateForm( wwgrdCadastro );
end;

procedure TfrmManutencaoCadastral.frmManutencaoCadastraPesquisalAction2Execute(
  Sender: TObject);
begin
 ModalResult := mrOk;
end;

procedure TfrmManutencaoCadastral.Action1Execute(Sender: TObject);
begin
 ModalResult := mrOk;
end;

end.

