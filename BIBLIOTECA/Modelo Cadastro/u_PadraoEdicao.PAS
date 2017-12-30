unit u_PadraoEdicao;

interface

uses
  SysUtils, Forms, Classes, Graphics, tmbToolEdicaoBottom, ExtCtrls,
  ComCtrls,  ToolWin, tmbToolEdicaoTop, Controls, Grids, wwDataInspector,
  tmbDataInspector, Db, DBClient;

type
  TfrmPadraoEdicao = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    tmbdtinspCadastro: TtmbDataInspector;
    tmbEdicaoTop1: TtmbEdicaoTop;
    Panel1: TPanel;
    tmbEdicaoBottom1: TtmbEdicaoBottom;
    StatusBar: TStatusBar;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure tmbdtinspCadastrButtonClick(Sender: TtmbDataInspector;
      Item: TwwInspectorItem; TableNameReference: String);
    procedure tmbdtinspCadastroItemChanged(Sender: TwwDataInspector;
      Item: TwwInspectorItem; NewValue: String);
  private
    { Private declarations }
    FDataSource: TDataSource;
    procedure SetDataSource(const Value: TDataSource);
  public
    { Public declarations }
    FDataSet: TClientDataSet;
    property DataSource: TDataSource read FDataSource write SetDataSource;
  end;

var
  frmPadraoEdicao: TfrmPadraoEdicao;

implementation

uses FuncoesCliente, u_PesquisaCampo;

{$R *.dfm}

{ TFrmEdicao }

procedure TfrmPadraoEdicao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if FDataSet.State in [dsEdit, dsInsert]  then
    FinalFormulario( FDataSet, 'do Tabela ' );
 Action := caFree;
 FrmPadraoEdicao := nil;
end;

procedure TfrmPadraoEdicao.SetDataSource(const Value: TDataSource);
begin
 FDataSource := Value;
 FDataSet := ( FDataSource.DataSet as TClientDataSet );
 tmbdtinspCadastro.DataSource := FDataSource;
end;

procedure TfrmPadraoEdicao.FormShow(Sender: TObject);
begin
 with tmbdtinspCadastro do
 begin
  DataSource            := FDataSource;
  Toshiba.ClientDataSet := DataInspector;
  Toshiba.TableName     := IdentificarNomeTabela( FDataSet.Name );
  Toshiba.Active        := True;
 end;
end;

procedure TfrmPadraoEdicao.tmbdtinspCadastrButtonClick(
  Sender: TtmbDataInspector; Item: TwwInspectorItem;
  TableNameReference: String);
var i, j: Integer;
begin
 for i := 0 to Screen.DataModuleCount - 1 do
     begin
      if Screen.DataModules[i].Tag <> 1 then
         for j := 0 to Screen.DataModules[i].ComponentCount-1 do
             if Screen.DataModules[i].Components[j] is TDataSource then
                if StrComp( PChar( UpperCase( Screen.DataModules[i].Components[j].Name ) ), PChar( UpperCase( 'ds' + TableNameReference ) ) ) = 0 then
                   begin
                    CriaFormLookUp( (Screen.DataModules[i].Components[j] as TDataSource), Item.Field, '' );
                    Break;
                   end;
     end;
end;

procedure TfrmPadraoEdicao.tmbdtinspCadastroItemChanged(
  Sender: TwwDataInspector; Item: TwwInspectorItem; NewValue: String);
begin
 if Item.Field.Tag <> 5 then
    case Item.Field.DataType of
    ftString,
    ftMemo,
    ftOraClob : Item.Field.Value := AnsiUpperCase( NewValue );
    end;
end;

end.
