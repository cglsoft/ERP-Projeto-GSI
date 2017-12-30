unit u_SelecionarEmpresa;

interface

uses
  SysUtils, Forms, Dialogs, fcStatusBar, ImgList, Controls, CustomizeDlg,
  BandActn, DBActns, StdActns, Classes, ActnList, XPStyleActnCtrls,
  ActnMan, ToolWin,  ComCtrls, tmbToolManutencaoTop, Wwdbigrd, Wwdbgrid,
  Grids,  wwDataInspector, tmbDataInspector, fcdbtreeview, DbClient, DB;


type
  TfrmSelecionarEmpresa = class(TForm)
    actmngManutencao: TActionManager;
    CustomizeDlg1: TCustomizeDlg;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    EditSelectAll1: TEditSelectAll;
    EditUndo1: TEditUndo;
    EditDelete1: TEditDelete;
    DataSetFirst1: TDataSetFirst;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetLast1: TDataSetLast;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    DataSetRefresh1: TDataSetRefresh;
    CustomizeActionBars1: TCustomizeActionBars;
    actFechar: TAction;
    Action2: TAction;
    Action3: TAction;
    PageControl1: TPageControl;
    TabSheet3: TTabSheet;
    fcDBTreeView1: TfcDBTreeView;
    ImageList3: TImageList;
    actPesquisar: TAction;
    tmbManutTop1: TtmbManutTop;
    fcStatusBar4: TfcStatusBar;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actFecharExecute(Sender: TObject);
    procedure tmbdtinspCadastroButtonClick(Sender: TtmbDataInspector;
      Item: TwwInspectorItem; TableNameReference: String);
    procedure tbRetornarClick(Sender: TObject);
    procedure fcDBTreeView1DblClick(TreeView: TfcDBCustomTreeView;
      Node: TfcDBTreeNode; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure tmbdtinspCadastroItemChanged(Sender: TwwDataInspector;
      Item: TwwInspectorItem; NewValue: String);
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
  frmSelecionarEmpresa: TfrmSelecionarEmpresa;

implementation

uses FuncoesCliente, u_dmEF, u_Principal, FuncoesDsi, u_dmGSI;

{$R *.dfm}

constructor TfrmSelecionarEmpresa.CreateForm(ClientDataSet : TClientDataSet;
  DataSource : TDataSource; CampoPesquisa: TField );
var OldSQL,AddSQL : String;
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

   if not CampoPesquisa.IsNull then
      begin
       if CampoPesquisa.DataType = ftString then
          AddSQL := CampoPesquisa.FieldName + ' = ' + QuotedStr( CampoPesquisa.AsString )
       else
          AddSQL := CampoPesquisa.FieldName + ' = ' + CampoPesquisa.AsString;
      end
   else
      AddSQL := 'ROWNUM > 10';

   CommandText := AnalisarAddSQL( OldSQL, AddSQL);
  end;
 end;

 inherited Create(Application);
end;

constructor TfrmSelecionarEmpresa.CreateForm(ClientDataSet : TClientDataSet;
  DataSource : TDataSource );
begin
 FDataSet        := ( DataSource.DataSet as TClientDataSet );
 FDataSource     := DataSource;
 FClienteDataSet := ClientDataSet;
 inherited Create(Application);

 { Gerar pesquisa inicial para não trazer nenhum registro }
 GerarPesquisa( FDataSet, 'ROWNUM > 0' );

 Refresh;
end;

procedure TfrmSelecionarEmpresa.FormCreate(Sender: TObject);
begin
 if ModalResult <> mrCancel then
    begin
     { Abrir Tabela para manutenção cadastral }
     FDataSet.Open;
     tmbManutTop1.TtmbPreencheCombos := true;
     AtualizaComponentes;
    end;
end;

procedure TfrmSelecionarEmpresa.AtualizaComponentes;
begin
end;

procedure TfrmSelecionarEmpresa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 if EmpresaAtualId < 1 then
    begin
     MessageDlg('Selecionar a empresa antes de fechar esta janela.', mtInformation, [mbOk], 0);
     Abort;
    end
 else
    begin
     if ( ModalResult <> mrOk ) and not FDataSetOpen then
        FDataSet.Close;

     Action      := caFree;
     frmSelecionarEmpresa := Nil;
    end;
end;

destructor TfrmSelecionarEmpresa.Destroy;
begin
 FDataSet        := nil;
 FDataSource     := nil;
 FClienteDataSet := nil;
 inherited;
end;

procedure TfrmSelecionarEmpresa.actFecharExecute(Sender: TObject);
begin
 Close;
end;

procedure TfrmSelecionarEmpresa.tmbdtinspCadastroButtonClick(
  Sender: TtmbDataInspector; Item: TwwInspectorItem;
  TableNameReference: String);
var i, j: Integer;
begin
 for i := 0 to Screen.DataModuleCount - 1 do
     for j := 0 to Screen.DataModules[i].ComponentCount-1 do
         if Screen.DataModules[i].Components[j] is TDataSource then
            if StrComp( PChar( UpperCase( Screen.DataModules[i].Components[j].Name ) ), PChar( UpperCase( 'ds' + TableNameReference ) ) ) = 0 then
               begin
                CriaFormLookUp( (Screen.DataModules[i].Components[j] as TDataSource), Item.Field,'' );
                Break;
               end;
end;

procedure TfrmSelecionarEmpresa.tbRetornarClick(Sender: TObject);
begin
 ModalResult := mrOk;
end;

procedure TfrmSelecionarEmpresa.fcDBTreeView1DblClick(TreeView: TfcDBCustomTreeView;
  Node: TfcDBTreeNode; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
 EmpresaAtualId                            := dmEF.cdsEmpresaEMPRESAID.AsInteger;
 frmPrincipal.fcstbarStatus.Panels[0].Text := dmEF.cdsEmpresaNOMEFANTASIA.Value;

 Close;
end;

procedure TfrmSelecionarEmpresa.tmbdtinspCadastroItemChanged(
  Sender: TwwDataInspector; Item: TwwInspectorItem; NewValue: String);
begin
 Item.Field.Value := UpperCase( NewValue );
end;

end.
