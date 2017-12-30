unit u_ListaPreco;

interface

uses
  SysUtils, Forms, ImgList, Controls, Classes, ActnList, XPStyleActnCtrls,
  ActnMan, tmbToolEdicaoTop, ActnCtrls, ToolWin, ComCtrls, DB, 
  tmbToolEdicaoBottom, ExtCtrls, fcStatusBar, Grids, wwDataInspector,
  tmbDataInspector;

type
  TfrmListaPreco = class(TForm)
    actmngManutencao: TActionManager;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    tmbdtinspCadastro: TtmbDataInspector;
    ImageList1: TImageList;
    fcStatusBar1: TfcStatusBar;
    actRecalculo: TAction;
    Panel1: TPanel;
    tmbEdicaoBottom2: TtmbEdicaoBottom;
    CoolBar1: TCoolBar;
    ActionToolBar1: TActionToolBar;
    tmbEdicaoTop2: TtmbEdicaoTop;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tmbdtinspCadastroButtonClick(Sender: TtmbDataInspector;
      Item: TwwInspectorItem; TableNameReference: String);
    procedure FormDestroy(Sender: TObject);
    procedure actRecalculoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmListaPreco: TfrmListaPreco;

implementation

uses FuncoesCliente, u_dmIT, u_RecalculaListaPreco, FuncoesDsi;

{$R *.dfm}

procedure TfrmListaPreco.FormCreate(Sender: TObject);
begin
 with tmbdtinspCadastro.Toshiba do
 begin
  TableName := UpperCase( IdentificarNomeTabela( dmIT.cdsListaPreco.Name ) );
  ClientDataSet := DataInspector;
  Active := True;
 end;
 dmIT.cdsListaPreco.Open;
end;

procedure TfrmListaPreco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 frmListaPreco := Nil;
end;

procedure TfrmListaPreco.tmbdtinspCadastroButtonClick( Sender: TtmbDataInspector;
  Item: TwwInspectorItem; TableNameReference: String);
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

procedure TfrmListaPreco.FormDestroy(Sender: TObject);
begin
 {frmListaPreco := nil;}
end;

procedure TfrmListaPreco.actRecalculoExecute(Sender: TObject);
begin
 frmRecalculaListaPreco := TfrmRecalculaListaPreco.Create( Application );
 frmRecalculaListaPreco.PartNumber := dmIT.cdsListaPrecoPARTNUMBERID.Value;
 frmRecalculaListaPreco.ShowModal;
 dmIT.cdsListaPreco.Refresh;
end;

end.
