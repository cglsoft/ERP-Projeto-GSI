unit u_PesquisaCampo;

interface

uses
  SysUtils, Forms, ImgList, Controls, CustomizeDlg, Classes, ActnList,
  XPStyleActnCtrls, ActnMan, ComCtrls, Grids, DBGrids, ExtCtrls,
  PnAjustaGrid, ActnCtrls, ToolWin, tmbToolManutencaoTop, DBClient, DB,
  StdCtrls, DBCtrls;

type
  TfrmPesquisaCampo = class(TForm)
    actmngManutencao: TActionManager;
    CustomizeDlg1: TCustomizeDlg;
    ImageList1: TImageList;
    tmbManutTop1: TtmbManutTop;
    ActionToolBar6: TActionToolBar;
    actRetornar: TAction;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    StatusBar1: TStatusBar;
    dbgrdLista: TDBGrid;
    tmbAjtgrdPesquisaCampo: tPanel1;
    dbrichtxtMM: TDBRichEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actFecharExecute(Sender: TObject);
    procedure tbRetornarClick(Sender: TObject);
    procedure dbgrdListaCellClick(Column: TColumn);
    procedure actRetornarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgrdListaTitleClick(Column: TColumn);
    procedure dbgrdListaDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    FDataSet: TClientDataSet;
    FDataSource: TDataSource;
    FSQLParam : WideString;
    { Public declarations }
  end;

var
  frmPesquisaCampo: TfrmPesquisaCampo;

implementation

uses FuncoesCliente, Math;

{$R *.dfm}

procedure TfrmPesquisaCampo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 frmPesquisaCampo := Nil;
end;

procedure TfrmPesquisaCampo.actFecharExecute(Sender: TObject);
begin
 Close;
end;

procedure TfrmPesquisaCampo.tbRetornarClick(Sender: TObject);
begin
 ModalResult := mrOk;
end;

procedure TfrmPesquisaCampo.dbgrdListaCellClick(Column: TColumn);
begin
 StatusBar1.Panels[0].Text  := 'Campo para Retorno: ' + FDataSet.Fields[0].AsString;
end;

procedure TfrmPesquisaCampo.actRetornarExecute(Sender: TObject);
begin
 ModalResult := mrOk;
end;

procedure TfrmPesquisaCampo.FormShow(Sender: TObject);
var i : Integer;
begin
 FDataSet.Open;
 dbgrdLista.DataSource              := FDataSource;
 tmbManutTop1.TtmbRetornoVisivel    := False;
 tmbManutTop1.TtmbDataSource        := FDataSource;
 tmbManutTop1.TtmbPreencheCombos    := True;
 tmbManutTop1.TtmbPesquisar         := True;

 tmbManutTop1.cbxCampos.ItemIndex   := 0;
 tmbManutTop1.cbxCondicao.ItemIndex := 3;
 tmbManutTop1.cbxCampos.OnExit( Sender );
 tmbManutTop1.FSQLParam             := FSQLParam;

 if Assigned( frmPesquisaCampo ) then
    frmPesquisaCampo.ActiveControl := tmbManutTop1.mktConteudo;

 tmbAjtgrdPesquisaCampo.tmbAjusta := True;
 dbrichtxtMM.DataSource           := FDataSource;

 for i := 0 to  FDataSet.FieldCount - 1 do
 begin
  if FDataSet.Fields[i].DataType  = ftOraClob then
     begin
      dbrichtxtMM.DataField := FDataSet.Fields[i].FieldName;
      exit;
     end;
 end;

end;

procedure TfrmPesquisaCampo.dbgrdListaTitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column, FDataSource, dbgrdLista);
end;

procedure TfrmPesquisaCampo.dbgrdListaDblClick(Sender: TObject);
begin
 actRetornarExecute( Sender );
end;

end.

