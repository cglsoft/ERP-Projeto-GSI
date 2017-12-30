unit u_EmissaoDocInterno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fcStatusBar, ComCtrls, ImgList, ActnList, XPStyleActnCtrls,
  ActnMan, ExtCtrls, PnAjustaGrid, ActnCtrls, ToolWin, StdCtrls, Mask,
  Grids, DBGrids, DBClient, DB, Buttons;

type
  TfrmEmissaoDocInterno = class(TForm)
    CoolBar1: TCoolBar;
    ActionToolBar1: TActionToolBar;
    tmbajtGeral: tPanel1;
    actmngTransfConsumo: TActionManager;
    actImprimirNota: TAction;
    actFechar: TAction;
    imglstTransfConsumo: TImageList;
    pgctrlNota: TPageControl;
    TabSheet1: TTabSheet;
    fcstbarStatus: TfcStatusBar;
    Splitter1: TSplitter;
    dbgrdE: TDBGrid;
    DBGrid1: TDBGrid;
    Splitter3: TSplitter;
    actAtualizarNrNota: TAction;
    TabSheet2: TTabSheet;
    dbgrdS: TDBGrid;
    Splitter2: TSplitter;
    dbgrdSItem: TDBGrid;
    Panel4: TPanel;
    Label1: TLabel;
    dtpckDtEmissao: TDateTimePicker;
    dtpckDtEntrada: TDateTimePicker;
    Label3: TLabel;
    mktNrNF: TMaskEdit;
    Label4: TLabel;
    chkImpDtEntrada: TCheckBox;
    actAlterarPedido: TAction;
    Label5: TLabel;
    shpComum: TShape;
    shpFornecedor: TShape;
    Label8: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actImprimirNotaExecute(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure actAtualizarNrNotaExecute(Sender: TObject);
    procedure pgctrlNotaChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dbgrdETitleClick(Column: TColumn);
    procedure dbgrdSTitleClick(Column: TColumn);
    procedure dbgrdEDblClick(Sender: TObject);
    procedure actAlterarPedidoExecute(Sender: TObject);
    procedure dbgrdEDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure chkImpDtEntradaClick(Sender: TObject);
  private
    { Private declarations }
    procedure AtualNrNotaFiscal( Empresa : String );
    procedure ImprimirNFE;
    procedure ImprimirNFS;
    procedure AtualPDE_Emissao;
    procedure AtualPDS_Emissao;
    procedure VisualUltNrNota( cdsPD : TClientDataSet );
  public
    { Public declarations }
    procedure EditarPedido;
  end;

var
  frmEmissaoDocInterno: TfrmEmissaoDocInterno;

implementation

uses u_dmEF, FuncoesCliente, FuncoesDSI, u_dmGSI, u_RelNotaMatrizEntrada,
  u_RelDocInterno, u_PDE, u_PDS;

{$R *.dfm}

procedure TfrmEmissaoDocInterno.AtualNrNotaFiscal( Empresa : String );
var iUpd : String;
begin
 iUpd := 'UPDATE EF_EMPRESA SET NUMTRANSFCONSUMO = ' + mktNrNF.Text +
         ' WHERE EMPRESAID = ' + Empresa;

 ExecDML( iUpd );
end;

procedure TfrmEmissaoDocInterno.EditarPedido;
begin
 case pgctrlNota.ActivePageIndex of
 0 : begin
      dmEF.cdsPde.Edit;
      Application.CreateForm(  TfrmPDE, frmPDE );
      frmPDE.Show;
     end;
 1 : begin
      dmEF.cdsPds.Edit;
      Application.CreateForm(  TfrmPDS, frmPDS );
      frmPDS.Show;
     end;
 end;
end;

procedure TfrmEmissaoDocInterno.ImprimirNFE;
var iSQL, NFEID, TipoNota : String;

  procedure AtualQuickRep;
  begin
   frmRelDocInterno.qrdbtxtPD.DataSet          :=  dmEF.cdsNfe;
   frmRelDocInterno.qrdbtxtPD.DataField        :=  'PDEID';
   frmRelDocInterno.qrdbtxtNF.DataSet          :=  dmEF.cdsNfe;
   frmRelDocInterno.qrdbtxtNF.DataField        :=  'NFEID';
  end;

begin
 Application.CreateForm( TfrmRelDocInterno, frmRelDocInterno );
 frmRelDocInterno.Relat := frmEmissaoDocInterno.pgctrlNota.ActivePageIndex;

 try
  try
   if dmEF.cdsPde.RecordCount < 1 then
      raise Exception.Create('Não há pedidos pendentes para emissão de documento interno');

   iSQL := 'LIBCONTABIL = 1 AND EMPRESAID = ' + dmEF.cdsPdeEMPRESAID.AsString +
           ' AND PDEID = ' + dmEF.cdsPdePDEID.AsString;

   GerarPesquisa( dmEF.cdsPde, iSQL );

   TipoNota := dmEF.cdsPdeTIPONOTA.Value;

   if MessageDlg( 'Confirma a impressão do Documento Interno de Entrada? ', mtConfirmation, [mbYes,mbNo],0) = mrNo then
      exit;

   NFEID := dmEF.shdcnnEF.AppServer.IEmissaoNFE( dmEF.cdsPDE.Data,
                                                 dmEF.cdsPdeItem.Data,
                                                 dmEF.cdsPdeItemBar.Data,
                                                 DateToStr( dtpckDtEmissao.Date ),
                                                 DateToStr( dtpckDtEntrada.Date ),
                                                 chkImpDtEntrada.Checked,
                                                 dmGSI.UsuarioAtivo,
                                                 True );
   // Nota Fiscal de Fornecedor
   if TipoNota = 'F' then
      begin
       MessageDlg('Documento Interno é do tipo fornecedor, movimentação do estoque efetuada com sucesso!', mtInformation, [mbNo], 0 );
       exit
      end;

   // Posicionar na Nota fiscal expecífica;
   iSQL := 'EF_NFE.EMPRESAID = ' + dmEF.cdsPDEEMPRESAID.AsString +
           ' AND EF_NFE.NFEID = ' + NFEID +
           ' AND EF_NFE.DATAEMISSAOID = TO_DATE(' +  QuotedStr( FormatDateTime( 'dd/mm/yyyy', dtpckDtEmissao.Date ) ) + ',' + QuotedStr('dd/mm/yyyy') + ')';
   GerarPesquisa( dmEF.cdsNfe, iSQL );

   if dmEF.cdsNfe.IsEmpty then
      raise Exception.Create('Documento Interno :' + mktNrNF.Text +',não localizada ');

   case dmEF.cdsNfeEMPRESAID.AsInteger of
   1..6 : frmRelDocInterno.QuickRep1.PrinterSettings.PrinterIndex := Impressora( 'MULT_ADM_01_BLACK' );
   end;

   frmRelDocInterno.QuickRep1.Preview;

   MessageDlg('Documento Interno nº ' + NFEID + ' foi impressa com sucesso ! ', mtInformation, [mbOk], 0);

  except
  on E: Exception do
  MessageDlg( 'Problemas na emissão de Documento Interno. ' +
               #13 + ' O processo será cancelado com a seguinte mensagem de erro : ' +
               #13 + E.Message, mtError, [mbOK], 0 );
  end;

 finally
  pgctrlNotaChange( frmEmissaoDocInterno );

  FreeAndNil( frmRelDocInterno.QuickRep1 );
  FreeAndNil( frmRelDocInterno );
 end;
end;

procedure TfrmEmissaoDocInterno.ImprimirNFS;
var iSQL, NFSID : String;
begin
 Application.CreateForm( TfrmRelDocInterno, frmRelDocInterno );
 frmRelDocInterno.Relat := frmEmissaoDocInterno.pgctrlNota.ActivePageIndex;
 try
  try
   if dmEF.cdsPds.RecordCount < 1 then
      raise Exception.Create('Não há pedidos pendentes para emissão de documento interno');

   iSQL := 'LIBCONTABIL = 1 AND EMPRESAID = ' + dmEF.cdsPdsEMPRESAID.AsString +
           ' AND PDSID = ' + dmEF.cdsPdsPDSID.AsString;
   GerarPesquisa( dmEF.cdsPds, iSQL );

   if MessageDlg( 'Confirma a impressão do Documento Interno de Saída? ', mtConfirmation, [mbYes,mbNo], 0 ) = mrNo then
      exit;

   NFSID := dmEF.shdcnnEF.AppServer.IEmissaoNFS( dmEF.cdsPDS.Data,
                                                 dmEF.cdsPDSItem.Data,
                                                 DateToStr( dtpckDtEmissao.Date ),
                                                 dmGSI.UsuarioAtivo,
                                                 True );

   // Posicionar na Nota fiscal expecífica;
   iSQL := 'EF_NFS.EMPRESAID = ' + dmEF.cdsPDSEMPRESAID.AsString +
           ' AND EF_NFS.NFSID = ' + NFSID  +
           ' AND EF_NFS.DATAEMISSAOID = TO_DATE(' +  QuotedStr( FormatDateTime( 'dd/mm/yyyy', dtpckDtEmissao.Date ) ) + ',' + QuotedStr('dd/mm/yyyy') + ')';

   GerarPesquisa( dmEF.cdsNFS, iSQL );

   if dmEF.cdsNfs.IsEmpty then
      raise Exception.Create('Documento interno :' + mktNrNF.Text +',não localizada ');

   case dmEF.cdsNfsEMPRESAID.AsInteger of
   1..6 : frmRelDocInterno.QuickRep1.PrinterSettings.PrinterIndex := Impressora( 'MULT_ADM_01_BLACK' );
   end;

   frmRelDocInterno.QuickRep1.Preview;

   MessageDlg('Documento interno nº ' + NFSID + ' foi impressa com sucesso ! ', mtInformation, [mbOk], 0);

  except
  on E: Exception do
  MessageDlg( 'Problemas na emissão de Documento Interno. ' +
               #13 + 'O processo será cancelado com a seguinte mensagem de erro : ' +
               #13 + E.Message, mtError, [mbOK], 0 );
  end;

 finally
  FreeAndNil( frmRelDocInterno.QuickRep1 );
  FreeAndNil( frmRelDocInterno );
 end;
end;


procedure TfrmEmissaoDocInterno.AtualPDE_Emissao;
var iSql : String;
begin
 // Filtro por empresa caso funcionário esteja associado a alguma empresa
 if dmGsi.EmpresaFuncId > 0 then
    iSQL := 'EF_PDE.EMPRESAID = ' + IntToStr( dmGsi.EmpresaFuncId ) + ' AND ';

 iSql := iSql + ' LIBCONTABIL = 1 AND NVL( MOVIMENTAESTOQUE, 0 ) = 1';
 GerarPesquisa( dmEF.cdsPde, iSql );
end;

procedure TfrmEmissaoDocInterno.AtualPDS_Emissao;
var iSql : String;
begin
 // Filtro por empresa caso funcionário esteja associado a alguma empresa
 if dmGsi.EmpresaFuncId > 0 then
    iSQL := 'EF_PDS.EMPRESAID = ' + IntToStr( dmGsi.EmpresaFuncId ) + ' AND ';

 iSql := iSql + 'LIBCONTABIL = 1';
 GerarPesquisa( dmEF.cdsPds, iSql );
end;

procedure TfrmEmissaoDocInterno.VisualUltNrNota( cdsPD : TClientDataSet );
var InstSQL, iSql, EmpresaID : String;
    cds : TClientDataSet;
begin
 if cdsPD.RecordCount < 1 then
    exit;

 // Número de Nota Fiscal conforme a empresa
 case cdsPD.FieldByName('EMPRESAID').AsInteger of
 1..5   : EmpresaID := '1';
 12..13 : EmpresaID := '12';
 else ;
  EmpresaID := cdsPD.FieldByName('EMPRESAID').AsString
 end;

 Cds     := nil;
 InstSQL := 'EMPRESAID = ' + EmpresaID;
 iSQL    := AnalisarAddSQL( LocateSQL( dmEF.cdsEmpresa.ProviderName ),
                             InstSQL );
 try
  try
   ExecDynamicProvider( -1, iSQL, Cds );

   if not cds.IsEmpty then
      mktNrNF.Text := StrZero( cds.FieldByName('NUMTRANSFCONSUMO').Value, 6, 0 )
   else
      raise Exception.Create('Número de impressão de Documento Interno inválido' );

   cds.Close;

  except
  on E:Exception do
  begin
   mktNrNF.Text := '';
   MessageDlg( E.Message, mtError, [mbOK], 0 )
  end;

  end;
 finally
  FreeAndNil( cds );
 end;
end;

procedure TfrmEmissaoDocInterno.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 dmEF.cdsPde.Close;
 Action := caFree;
 frmEmissaoDocInterno := Nil;
end;

procedure TfrmEmissaoDocInterno.actImprimirNotaExecute(Sender: TObject);
begin
 case pgctrlNota.ActivePageIndex of
 0 : ImprimirNFE;
 1 : ImprimirNFS;
 end;
end;

procedure TfrmEmissaoDocInterno.actFecharExecute(Sender: TObject);
begin
 Close
end;

procedure TfrmEmissaoDocInterno.actAtualizarNrNotaExecute(Sender: TObject);
begin
 case pgctrlNota.ActivePageIndex of
 0 : AtualNrNotaFiscal( dmEF.cdsPdeEMPRESAID.AsString );
 1 : AtualNrNotaFiscal( dmEF.cdsPdsEMPRESAID.AsString );
 end;
end;

procedure TfrmEmissaoDocInterno.pgctrlNotaChange(Sender: TObject);
begin
 case pgctrlNota.ActivePageIndex of
 0 : begin
      AtualPDE_Emissao;
      VisualUltNrNota( dmEF.cdsPde );

      dtpckDtEmissao.Date    := Date;
      dtpckDtEntrada.Date    := Date;
      dtpckDtEntrada.Visible := True;
      tmbajtGeral.tmbDBGrid  := dbgrdE;
      tmbajtGeral.tmbAjusta  := True;
     end;
 1 : begin
      AtualPDS_Emissao;
      VisualUltNrNota( dmEF.cdsPds );

      dtpckDtEmissao.Date    := Date;
      dtpckDtEntrada.Visible := False;
      tmbajtGeral.tmbDBGrid  := dbgrdS;
      tmbajtGeral.tmbAjusta  := True;

     end;
 end;
end;

procedure TfrmEmissaoDocInterno.FormActivate(Sender: TObject);
begin
 pgctrlNotaChange( Sender );
end;

procedure TfrmEmissaoDocInterno.dbgrdETitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column, dmEF.dsPde, dbgrdE);
end;

procedure TfrmEmissaoDocInterno.dbgrdSTitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column, dmEF.dsPds, dbgrdS);
end;

procedure TfrmEmissaoDocInterno.dbgrdEDblClick(Sender: TObject);
begin
 EditarPedido;
end;

procedure TfrmEmissaoDocInterno.actAlterarPedidoExecute(Sender: TObject);
begin
 EditarPedido;
end;

procedure TfrmEmissaoDocInterno.dbgrdEDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var HoldColor : TColor;
begin
 HoldColor := TDBGrid( Sender ).Canvas.Brush.Color;
 if ( Column.FieldName = 'EMPRESAID' ) or ( Column.FieldName = 'PDEID' ) or ( Column.FieldName = 'DATAPEDIDO' ) then
    if dmEF.cdsPdeTIPONOTA.Value = 'F' then
       begin
        TDBGrid( Sender ).Canvas.Brush.Color := shpFornecedor.Brush.Color;
        TDBGrid( Sender ).DefaultDrawColumnCell(Rect, DataCol, Column, State);
        TDBGrid( Sender ).Canvas.Brush.Color := HoldColor;
      end
    else
       begin
        TDBGrid( Sender ).Canvas.Brush.Color := shpComum.Brush.Color;
        TDBGrid( Sender ).DefaultDrawColumnCell(Rect, DataCol, Column, State);
        TDBGrid( Sender ).Canvas.Brush.Color := HoldColor;
       end;
end;

procedure TfrmEmissaoDocInterno.chkImpDtEntradaClick(Sender: TObject);
begin
 if chkImpDtEntrada.Checked then
    dtpckDtEntrada.Enabled := False
 else
    dtpckDtEntrada.Enabled := True;
end;

end.
