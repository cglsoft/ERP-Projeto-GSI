unit u_VisualizaTerceiro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ComCtrls, tmbToolEdicaoTop, ActnMan, ActnCtrls,
  ActnMenus, StdCtrls, Grids, DBGrids, PnAjustaGrid, ExtCtrls,
  tmbToolEdicaoLista, Mask, DBCtrls, ActnList, XPStyleActnCtrls, ImgList,DBClient,
  tmbToolcdsExportar, DB, tmbToolManutencaoTop;

type
  TfrmVisualizaTerceiro = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox2: TGroupBox;
    DBMemo1: TDBMemo;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    ImageList1: TImageList;
    Splitter1: TSplitter;
    StatusBar1: TStatusBar;
    GroupBox1: TGroupBox;
    dbgrdItem: TDBGrid;
    tmbEdtListTerceiro: TtmbEdicaoLista;
    tPanel11: tPanel1;
    actmngPecas: TActionManager;
    actAdiconarNFS: TAction;
    actEliminarNFS: TAction;
    actExportar: TAction;
    actFechar: TAction;
    actTerceiro: TAction;
    tmbManutTop1: TtmbManutTop;
    ActionToolBar1: TActionToolBar;
    DBGrid1: TDBGrid;
    rgrpPadraoFiltro: TRadioGroup;
    chkbxOS: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure actAdiconarNFSExecute(Sender: TObject);
    procedure actEliminarNFSExecute(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure actExportarExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure dbgrdItemTitleClick(Column: TColumn);
    procedure actTerceiroExecute(Sender: TObject);
  private
    { Private declarations }
    procedure SetDataSetEdicaoLista;
    procedure EliminaNotaTereceiro;
    procedure AdicionarNotas;
    function  NaturezaOperacaoValida( NaturezaopId : Integer ):Boolean;
    function NatDemoEmprestimo(NaturezaopId, Cfop : Integer): Boolean;
    procedure FiltroTipoControle;
  public
    { Public declarations }
  end;

var
  frmVisualizaTerceiro: TfrmVisualizaTerceiro;

implementation

uses u_dmOs, u_PadraoEdicao, FuncoesCliente, u_Exportar,
  u_dmGSI, u_RelPecaTerceiro;

{$R *.dfm}

procedure TfrmVisualizaTerceiro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 dmOS.cdsOsTerceiro.close;
 Action := caFree;
 frmVisualizaTerceiro := nil;
end;


procedure TfrmVisualizaTerceiro.FiltroTipoControle;
var ParamPesquisa : String;
begin
 if chkbxOS.Checked then
     ParamPesquisa := ParamPesquisa + ' OS_OSTERCEIRO.OSID IS NOT NULL ';

 GerarPesquisa( dmOS.cdsOsTerceiro, ParamPesquisa );
end;

procedure TfrmVisualizaTerceiro.FormCreate(Sender: TObject);
begin
 dmOS.cdsOsTerceiro.Open;
 SetDataSetEdicaoLista;
 tmbManutTop1.TtmbPreencheCombos := True;
 tmbEdtListTerceiro.ParentFont := False;
 tmbEdtListTerceiro.Font.Style := [];
end;

procedure TfrmVisualizaTerceiro.SetDataSetEdicaoLista;
begin
 tmbEdtListTerceiro.TtmbClassOwnerEspec    := TFrmPadraoEdicao;
 tmbEdtListTerceiro.TtmbFormOwnerEspec     := FrmPadraoEdicao;
end;


procedure TfrmVisualizaTerceiro.actAdiconarNFSExecute(Sender: TObject);
begin
 EliminaNotaTereceiro;
 AdicionarNotas;
end;

procedure TfrmVisualizaTerceiro.EliminaNotaTereceiro;
var cds  : TClientDataSet;
    iSQL : String;
begin
 cds  := nil;

 iSQL := 'SELECT EF_NFSITEM.EMPRESAID, EF_NFSITEM.NFSID, EF_NFSITEM.DATAEMISSAOID' +
         '  FROM OS_OSTERCEIRO, EF_NFSITEM' +
         ' WHERE OS_OSTERCEIRO.EMPRESAID = EF_NFSITEM.EMPRESAID AND' +
         '       OS_OSTERCEIRO.NFSID = EF_NFSITEM.NFSID AND' +
         '       OS_OSTERCEIRO.DATAEMISSAOID = EF_NFSITEM.DATAEMISSAOID' +
         '       AND  EF_NFSITEM.RETORNO = ''JR''';

 Screen.Cursor := crHourGlass;
 try
  ExecDynamicProvider( -1,iSQL,cds );
  iSQL := '';

  cds.First;
  while not ( cds.Eof ) do
  begin
   iSQL := 'DELETE FROM '+
           '       OS_OSTERCEIRO'+
           ' WHERE ' +
           '  OS_OSTERCEIRO.EMPRESAID = ' + cds.FieldByName('EMPRESAID').AsString +
           '  AND OS_OSTERCEIRO.NFSID = ' + cds.FieldByName('NFSID').AsString +
           '  AND OS_OSTERCEIRO.DATAEMISSAOID = '+ QuotedStr( cds.FieldByName('DATAEMISSAOID').AsString );
   ExecDML( iSQL );
   cds.Next;
  end;
 finally
  FreeAndNil( cds );
  Screen.Cursor := crDefault;
 end;
end;

procedure TfrmVisualizaTerceiro.AdicionarNotas;
var cds  : TClientDataSet;
    iSQL : String;
    R, D : Boolean;
    data : TDateTime;
begin
 data := pCnnMain.AppServer.iServerDate - 15;
 cds  := nil;
 iSQL := 'SELECT EF_NFS.EMPRESAID,EF_NFS.NFSID,EF_NFS.DATAEMISSAOID,EF_NATUREZAOP.NATUREZAOPID,'+
         '       EF_NATUREZAOP.CFOP, EF_NFS.OSID,EF_NFS.ENTIDADEID,EF_NFS.NOME'+
         '  FROM EF_NFS,'+
         '       EF_NFSITEM,'+
         '       EF_NATUREZAOP'+
         ' WHERE EF_NFS.EMPRESAID = EF_NFSITEM.EMPRESAID ' +
         '       AND EF_NFS.NFSID = EF_NFSITEM.NFSID '+
         '       AND EF_NFS.DATAEMISSAOID = EF_NFSITEM.DATAEMISSAOID'+
         '       AND EF_NFSITEM.RETORNO = '+ QuotedStr('CR')+
         '       AND EF_NATUREZAOP.NATUREZAOPID = EF_NFS.NATUREZAOPID'+
         '       AND EF_NATUREZAOP.MOVIMENTOESTOQUE = '+ QuotedStr('E')+
         '       AND EF_NFS.DATAEMISSAOID <= '+QuotedStr( DateToStr( data ) ) +
         '       AND (EF_NFS.EMPRESAID, EF_NFS.NFSID, EF_NFS.DATAEMISSAOID)  NOT IN ( ' +
         '            SELECT EMPRESAID, NFSID, DATAEMISSAOID FROM OS_OSTERCEIRO ) ';

 Screen.Cursor := crHourGlass;
 try
  ExecDynamicProvider(-1,iSQL,cds );

  cds.First;
  while not ( cds.Eof ) do
  begin
   R := NaturezaOperacaoValida(cds.FieldByName('NATUREZAOPID').AsInteger );
   D := NatDemoEmprestimo( cds.FieldByName('NATUREZAOPID').AsInteger, cds.FieldByName('CFOP').AsInteger );

   if ( R or D ) then
      if not ( dmOS.cdsOsTerceiro.Locate('EMPRESAID;NFSID;DATAEMISSAOID',VarArrayOf([
                                                                         cds.FieldByName('EMPRESAID').AsString,
                                                                         cds.FieldByName('NFSID').AsString,
                                                                         cds.FieldByName('DATAEMISSAOID').AsString]),[]) ) then
         begin
          dmOS.cdsOsTerceiro.Insert;
          dmOS.cdsOsTerceiroEMPRESAID.AsInteger      := cds.FieldByName('EMPRESAID').AsInteger;
          dmOS.cdsOsTerceiroNFSID.AsInteger          := cds.FieldByName('NFSID').AsInteger;
          dmOS.cdsOsTerceiroDATAEMISSAOID.AsDateTime := cds.FieldByName('DATAEMISSAOID').AsDateTime;
          dmOS.cdsOsTerceiroOSID.AsString            := cds.FieldByName('OSID').AsString;
          dmOS.cdsOsTerceiroDESTINATARIOID.AsInteger := cds.FieldByName('ENTIDADEID').AsInteger;
          dmOS.cdsOsTerceiroNOMENOTA.AsString        := cds.FieldByName('NOME').AsString;

          // Remessa para testes
          if R then
             dmOS.cdsOsTerceiroTIPOCONTROLE.Value    := 'R';

          //
          if D then
             dmOS.cdsOsTerceiroTIPOCONTROLE.Value    := 'D';

          dmOS.cdsOsTerceiro.Post;
         end;
   cds.Next;
  end;
  dmOS.cdsOsTerceiro.Refresh;
 finally
   FreeAndNil(cds);
   Screen.Cursor := crDefault;
 end;
 MessageDlg('Operação Realizada com Sucesso!',mtInformation,[mbok],0);
end;

procedure TfrmVisualizaTerceiro.actEliminarNFSExecute(Sender: TObject);
begin
 EliminaNotaTereceiro;
end;

procedure TfrmVisualizaTerceiro.actFecharExecute(Sender: TObject);
begin
 frmVisualizaTerceiro.Close;
end;

procedure TfrmVisualizaTerceiro.actTerceiroExecute(Sender: TObject);
begin       
 FiltroTipoControle;
 
 dmOS.cdsOsTerceiro.Last;
 Application.CreateForm( TfrmRelPecaTerceiro, frmRelPecaTerceiro );
 try
  frmRelPecaTerceiro.QuickRep1.PreviewModal;
 finally
  FreeAndNil( frmRelPecaTerceiro.QuickRep1 );
  FreeAndNil( frmRelPecaTerceiro );
 end;
end;

procedure TfrmVisualizaTerceiro.actExportarExecute(Sender: TObject);
begin

  if not dmOS.cdsOsTerceiro.IsEmpty then
     begin
      FiltroTipoControle;

      frmExportar := TfrmExportar.Create(nil);
      frmExportar.DataSource := dmOS.dsOsTerceiro;
      frmExportar.Show;
     end
 else
    MessageDlg('É necessário Gerar um Relatório!',mtWarning, [mbok],0 );
end;

function TfrmVisualizaTerceiro.NaturezaOperacaoValida(
  NaturezaopId: Integer): Boolean;
begin
 Result := False;

 case NaturezaopId of
 1070,
 1061,
 65,
 52 : Result := True;
 end;
 
end;

function TfrmVisualizaTerceiro.NatDemoEmprestimo(
  NaturezaopId, Cfop : Integer ): Boolean;
begin
 Result := False;

 case NaturezaopId of
 1197,
 1179,
 1083,
 1082,
 1084,
 1175,
 1187 : Result := True;
 end;

 case Cfop of
 5912,
 6912 : Result := True;
 end;
end;

procedure TfrmVisualizaTerceiro.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
 // Habilitar a propriedade KeyPreview do Form para funcionar o Enter como Tab
 if Key = #13 then
    SelectNext( Screen.ActiveControl,True,True );
end;

procedure TfrmVisualizaTerceiro.Button1Click(Sender: TObject);
begin
 tmbEdtListTerceiro.Font.Style := [];
end;

procedure TfrmVisualizaTerceiro.Button2Click(Sender: TObject);
begin
 tmbEdtListTerceiro.Font.Style := [fsBold];
end;

procedure TfrmVisualizaTerceiro.Button3Click(Sender: TObject);
begin
 tmbEdtListTerceiro.Font.Style := [fsItalic];
end;

procedure TfrmVisualizaTerceiro.dbgrdItemTitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column, dmOS.dsOsTerceiro, dbgrdItem);
end;

end.
