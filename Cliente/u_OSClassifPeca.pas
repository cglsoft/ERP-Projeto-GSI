unit u_OSClassifPeca;

interface

uses Windows, Forms, Classes, ActnList, XPStyleActnCtrls, ActnMan, ImgList,
  Controls, ActnCtrls, ToolWin, ComCtrls, ExtCtrls, DB, SysUtils,
  tmbToolEdicaoLista, StdCtrls, DBCtrls, Grids, DBGrids, Buttons, Mask,
  Dialogs, tmbToolManutencaoTop, Graphics;

type
  TfrmOSClassifPeca = class(TForm)
    StatusBar1: TStatusBar;
    ImageList1: TImageList;
    pgctrClassifica: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox3: TGroupBox;
    DBMemo1: TDBMemo;
    dbgrdClassif: TDBGrid;
    tmbEdicaoLista1: TtmbEdicaoLista;
    Splitter3: TSplitter;
    actmngPeca: TActionManager;
    actClassifica: TAction;
    actAdicPecaAntiga: TAction;
    Action2: TAction;
    Action3: TAction;
    actImprCodBarras: TAction;
    Action5: TAction;
    tmbManutTop1: TtmbManutTop;
    ActionToolBar2: TActionToolBar;
    dbgrPecaClassif: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mktOSClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure actClassificaExecute(Sender: TObject);
    procedure Action5Execute(Sender: TObject);
    procedure actImprCodBarrasExecute(Sender: TObject);
    procedure actAdicPecaAntigaExecute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure MaskEdit1Click(Sender: TObject);
    procedure MaskEdit1Change(Sender: TObject);
    procedure pgctrClassificaChange(Sender: TObject);
    procedure dbgrPecaClassifTitleClick(Column: TColumn);
    procedure dbgrdClassifTitleClick(Column: TColumn);
    procedure dbgrPecaClassifDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
  private
    { Private declarations }
    procedure ClassificaPeca;
  public
    { Public declarations }
  end;

var
  frmOSClassifPeca: TfrmOSClassifPeca;

implementation

{$R *.dfm}

uses FuncoesCliente, FuncoesDSI, u_dmOs, u_DestinoPeca, u_RelOsClassifpeca,
  u_EtiquetaPeca, u_dmGSI, u_PadraoEdicao, u_Exportar, u_dmAS;

procedure TfrmOSClassifPeca.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 dmOS.cdsOsClassifPeca.Close;
 dmOS.cdsOSPecaClassif.Close;

 Action := caFree;
 frmOSClassifPeca := nil;
end;

procedure TfrmOSClassifPeca.mktOSClick(Sender: TObject);
begin
 TMaskEdit( Sender ).SelStart := 0;
end;

procedure TfrmOSClassifPeca.FormKeyPress(Sender: TObject; var Key: Char);
begin
// Habilitar a propriedade KeyPreview do Form para funcionar o Enter como Tab
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;

procedure TfrmOSClassifPeca.FormCreate(Sender: TObject);
begin
 dmOS.cdsOsClassifPeca.Open;
 dmOS.cdsOSPecaClassif.Open;

 tmbEdicaoLista1.TtmbClassOwnerEspec := TFrmPadraoEdicao;
 tmbEdicaoLista1.TtmbFormOwnerEspec  := FrmPadraoEdicao;
 tmbEdicaoLista1.TtmbCriar           := True;
 tmbEdicaoLista1.TtmbDesativaInserir := True;


 tmbManutTop1.TtmbDataSource      := dmOS.dsOSPecaClassif;
 tmbManutTop1.TtmbPreencheCombos  := True;
end;

procedure TfrmOSClassifPeca.ClassificaPeca;
begin
 try
  if pgctrClassifica.ActivePageIndex <> 0 then
     raise Exception.Create('Selecionar a Pasta de "Classificação", para realizar esta operação');

  if dmOS.cdsOSPecaClassif.IsEmpty then
     raise Exception.Create('Não há Peças a serem Classificadas');

  if dmOS.cdsOSPecaClassifUTILIZADO.AsInteger = 0 then
     raise Exception.Create('Peça está pendente de faturamento');

  if dmOS.cdsOSPecaClassifMATERIALAVALIADO.AsInteger = 1 then
     raise Exception.Create('Material já foi avaliado');

  if dmOS.cdsOsClassifPeca.State <> dsInsert then
     begin
      dmOS.cdsOsClassifPeca.Insert;
      frmDestinoPeca := TfrmDestinoPeca.Create(Self);
      frmDestinoPeca.ShowModal;
      dmOS.cdsOSPecaClassif.Refresh;
     end

 except
 on E: Exception do MessageDlg( E.Message, mtError, [mbOK],0 );
 end;
end;

procedure TfrmOSClassifPeca.actClassificaExecute(Sender: TObject);
begin
 ClassificaPeca;
end;

procedure TfrmOSClassifPeca.Action5Execute(Sender: TObject);
begin
 if pgctrClassifica.ActivePageIndex <> 1 then
    begin
     MessageDlg('Selecionar a Pasta de "Pesquisa", para realizar esta operação',mtWarning, [mbOK], 0 );
     exit;
    end;

 frmRelOsClassifpeca := TfrmRelOsClassifpeca.Create(nil);
 try
  frmRelOsClassifpeca.QuickRep1.PreviewModal;
 finally
  FreeAndNil( frmRelOSClassifPeca.QuickRep1 );
  FreeAndNil( frmRelOSClassifPeca );
 end;
end;

procedure TfrmOSClassifPeca.actImprCodBarrasExecute(Sender: TObject);
begin
 if pgctrClassifica.ActivePageIndex <> 1 then
    begin
     MessageDlg('Selecionar a Pasta de "Empenhos Classificados", para realizar esta operação',mtWarning, [mbOK], 0 );
     exit;
    end;

 frmEtiquetaPeca := TfrmEtiquetaPeca.Create(nil);
 try
  // Alterando os datasets para impressao da pesquisa
  frmEtiquetaPeca.QrDbTOsId1.DataSet := dmOS.cdsOsClassifPeca;
  frmEtiquetaPeca.QrDbTProdutoId1.DataSet := dmOS.cdsOsClassifPeca;
  frmEtiquetaPeca.QrDbTClassifPeca1.DataSet := dmOS.cdsOsClassifPeca;

  frmEtiquetaPeca.QrDbTOsId2.DataSet := dmOS.cdsOsClassifPeca;
  frmEtiquetaPeca.QrDbTProdutoId2.DataSet := dmOS.cdsOsClassifPeca;
  frmEtiquetaPeca.QrDbTClassifPeca2.DataSet := dmOS.cdsOsClassifPeca;

  frmEtiquetaPeca.QRBarcode1.Digits := dmOS.cdsOsClassifPecaCODIGOBARRASID.AsString;
  frmEtiquetaPeca.QRBarcode2.Digits := dmOS.cdsOsClassifPecaCODIGOBARRASID.AsString;

  frmEtiquetaPeca.QuickRep1.PreviewModal;
 finally
  FreeAndNil( frmEtiquetaPeca.QuickRep1 );
  FreeAndNil( frmEtiquetaPeca );
 end;
end;

procedure TfrmOSClassifPeca.actAdicPecaAntigaExecute(Sender: TObject);
begin
  if CheckSenha( dmGsi.UsuarioAtivo,'Classificacao de Pecas','Adicionar Pecas Antigas', True) then
     CriaEspecifico(TfrmPadraoEdicao, frmPadraoEdicao, dmOS.cdsOSPecaClassif, dmOS.dsOSPecaClassif,'Adicionar Peças Antigas');
end;

procedure TfrmOSClassifPeca.Action2Execute(Sender: TObject);
begin
 frmExportar := TfrmExportar.Create(nil);

 case pgctrClassifica.ActivePageIndex of
 0 : frmExportar.DataSource := dmOS.dsOSPecaClassif;
 1 : frmExportar.DataSource := dmOS.dsOsClassifPeca;
 end;

 frmExportar.Show;
end;

procedure TfrmOSClassifPeca.Action3Execute(Sender: TObject);
begin
 frmOSClassifPeca.Close;
end;

procedure TfrmOSClassifPeca.MaskEdit1Click(Sender: TObject);
begin
 TMaskEdit( Sender ).SelStart := 0;
end;

procedure TfrmOSClassifPeca.MaskEdit1Change(Sender: TObject);
begin
 dmOS.cdsOsClassifPeca.FindNearest([ TMaskEdit( Sender ).Text ]);
end;

procedure TfrmOSClassifPeca.pgctrClassificaChange(Sender: TObject);
begin
 case pgctrClassifica.ActivePageIndex  of
 0 : begin
      tmbManutTop1.TtmbDataSource      := dmOS.dsOSPecaClassif;
      tmbManutTop1.TtmbPreencheCombos  := True;
     end;
 1 : begin
      tmbManutTop1.TtmbDataSource      := dmOS.dsOsClassifPeca;
      tmbManutTop1.TtmbPreencheCombos  := True;
     end;
 end;

end;

procedure TfrmOSClassifPeca.dbgrPecaClassifTitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column, dmOS.dsOSPecaClassif, dbgrPecaClassif );
end;

procedure TfrmOSClassifPeca.dbgrdClassifTitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column, dmOS.dsOsClassifPeca, dbgrdClassif );
end;

procedure TfrmOSClassifPeca.dbgrPecaClassifDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var HoldColor : TColor;
begin
 holdColor := dbgrPecaClassif.Canvas.Brush.Color;
 if ( Column.FieldName = 'OSID' ) or ( Column.FieldName = 'PECAID' ) or ( Column.FieldName = 'EMPRESAID' ) or
    ( Column.FieldName = 'PRODUTOID' ) or ( Column.FieldName = 'MATERIALAVALIADO' ) then
    if dmOS.cdsOSPecaClassifMATERIALAVALIADO.AsInteger = 0 then
       begin
        TDBGrid( Sender ).Canvas.Brush.Color := clRed;
        TDBGrid( Sender ).DefaultDrawColumnCell(Rect, DataCol, Column, State);
        TDBGrid( Sender ).Canvas.Brush.Color := HoldColor;
       end;

end;

end.
