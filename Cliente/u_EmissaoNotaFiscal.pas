unit u_EmissaoNotaFiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fcStatusBar, ComCtrls, ImgList, ActnList, XPStyleActnCtrls,
  ActnMan, ExtCtrls, PnAjustaGrid, ActnCtrls, ToolWin, StdCtrls, Mask,
  Grids, DBGrids, DBClient, DB, Buttons;

type
  TfrmEmissaoNotaFiscal = class(TForm)
    CoolBar1: TCoolBar;
    ActionToolBar1: TActionToolBar;
    tmbajtGeral: tPanel1;
    actmngRDV: TActionManager;
    actImprimirNota: TAction;
    actFechar: TAction;
    imglstRDV: TImageList;
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
    chkbxPreviewNota: TCheckBox;
    Action1: TAction;
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
    procedure Action1Execute(Sender: TObject);
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
  frmEmissaoNotaFiscal: TfrmEmissaoNotaFiscal;

implementation

uses u_dmEF, FuncoesCliente, FuncoesDSI, u_dmGSI, u_RelNotaMatrizEntrada,
  u_RelNotaMatrizSaida, u_EmissaoDuplicata, u_EmissaoEtiqueta, u_PDE, u_PDS,
  Math, u_RelNotaServicoFilial;

{$R *.dfm}

procedure TfrmEmissaoNotaFiscal.AtualNrNotaFiscal( Empresa : String );
var iUpd : String;
begin
 iUpd := 'UPDATE EF_EMPRESA SET NUMNF = ' + mktNrNF.Text +
         ' WHERE EMPRESAID = ' + Empresa;

 ExecDML( iUpd );
end;

procedure TfrmEmissaoNotaFiscal.EditarPedido;
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

procedure TfrmEmissaoNotaFiscal.ImprimirNFE;
var iSQL, NFEID, TipoNota : String;
begin
 Application.CreateForm( TfrmRelNotaMatrizEntrada, frmRelNotaMatrizEntrada );
 try
  try
   if dmEF.cdsPde.RecordCount < 1 then
      raise Exception.Create('Não há pedidos pendentes para emissão de nota fiscal');

   iSQL := 'LIBCONTABIL = 1 AND EMPRESAID = ' + dmEF.cdsPdeEMPRESAID.AsString +
           ' AND PDEID = ' + dmEF.cdsPdePDEID.AsString;

   GerarPesquisa( dmEF.cdsPde, iSQL );

   TipoNota := dmEF.cdsPdeTIPONOTA.Value;

   if MessageDlg( 'Confirma a impressão da Nota Fiscal de Entrada? ', mtConfirmation, [mbYes,mbNo],0) = mrNo then
      exit;

   NFEID := dmEF.shdcnnEF.AppServer.IEmissaoNFE( dmEF.cdsPDE.Data,
                                                 dmEF.cdsPdeItem.Data,
                                                 dmEF.cdsPdeItemBar.Data,
                                                 DateToStr( dtpckDtEmissao.Date ),
                                                 DateToStr( dtpckDtEntrada.Date ),
                                                 chkImpDtEntrada.Checked,
                                                 dmGSI.UsuarioAtivo,
                                                 False );
   // Nota Fiscal de Fornecedor
   if TipoNota = 'F' then
      begin
       MessageDlg('Nota Fiscal é do tipo fornecedor, movimentação do estoque efetuada com sucesso!', mtInformation, [mbNo], 0 );
       exit
      end;

   // Posicionar na Nota fiscal expecífica;
   iSQL := 'EF_NFE.EMPRESAID = ' + dmEF.cdsPDEEMPRESAID.AsString +
           ' AND EF_NFE.NFEID = ' + NFEID +
           ' AND EF_NFE.DATAEMISSAOID = TO_DATE(' +  QuotedStr( FormatDateTime( 'dd/mm/yyyy', dtpckDtEmissao.Date ) ) + ',' + QuotedStr('dd/mm/yyyy') + ')';
   GerarPesquisa( dmEF.cdsNfe, iSQL );

   if dmEF.cdsNfe.IsEmpty then
      raise Exception.Create('Nota fiscal :' + mktNrNF.Text +',não localizada ');

   case dmEF.cdsNfeEMPRESAID.AsInteger of
   1..6 : frmRelNotaMatrizEntrada.QuickRep1.PrinterSettings.PrinterIndex := Impressora( 'EPSON-13' );
   end;

   if ( dmEF.cdsNfeEMPRESAID.Value < 12 ) then
      begin
       if chkbxPreviewNota.Checked then
          frmRelNotaMatrizEntrada.QuickRep1.Preview
       else
          frmRelNotaMatrizEntrada.QuickRep1.Print;
      end
   else
      frmRelNotaMatrizEntrada.QuickRep1.Preview;

   MessageDlg('Nota Fiscal nº ' + NFEID + ' foi impressa com sucesso ! ', mtInformation, [mbOk], 0);

  except
  on E: Exception do
  MessageDlg( 'Problemas na emissão de Nota Fiscal. ' +
               #13 + ' O processo será cancelado com a seguinte mensagem de erro : ' +
               #13 + E.Message, mtError, [mbOK], 0 );
  end;

 finally
  FreeAndNil( frmRelNotaMatrizEntrada.QuickRep1 );
  FreeAndNil( frmRelNotaMatrizEntrada );
 end;
end;

procedure TfrmEmissaoNotaFiscal.ImprimirNFS;
var iSQL, NFSID : String;
    cds : TClientDataSet;
    bImprimirServico : Boolean;
begin
 Application.CreateForm( TfrmEmissaoDuplicata, frmEmissaoDuplicata );
 Application.CreateForm( TfrmEmissaoEtiqueta, frmEmissaoEtiqueta );
 Application.CreateForm( TfrmRelNotaMatrizSaida, frmRelNotaMatrizSaida );
 Application.CreateForm( TfrmRelNotaServicoFilial, frmRelNotaServicoFilial );

 bImprimirServico := True;
 cds := Nil;
 try
  try
   if dmEF.cdsPds.RecordCount < 1 then
      raise Exception.Create('Não há pedidos pendentes para emissão de nota fiscal');

   iSQL := 'LIBCONTABIL = 1 AND EMPRESAID = ' + dmEF.cdsPdsEMPRESAID.AsString +
           ' AND PDSID = ' + dmEF.cdsPdsPDSID.AsString;
   GerarPesquisa( dmEF.cdsPds, iSQL );

   if MessageDlg( 'Confirma a impressão da Nota Fiscal de Saída? ', mtConfirmation, [mbYes,mbNo], 0 ) = mrNo then
      exit;

   NFSID := dmEF.shdcnnEF.AppServer.IEmissaoNFS( dmEF.cdsPDS.Data,
                                                 dmEF.cdsPDSItem.Data,
                                                 DateToStr( dtpckDtEmissao.Date ),
                                                 dmGSI.UsuarioAtivo,
                                                 False );

   // Posicionar na Nota fiscal expecífica;
   iSQL := 'EF_NFS.EMPRESAID = ' + dmEF.cdsPDSEMPRESAID.AsString +
           ' AND EF_NFS.NFSID = ' + NFSID  +
           ' AND EF_NFS.DATAEMISSAOID = TO_DATE(' +  QuotedStr( FormatDateTime( 'dd/mm/yyyy', dtpckDtEmissao.Date ) ) + ',' + QuotedStr('dd/mm/yyyy') + ')';

   GerarPesquisa( dmEF.cdsNFS, iSQL );

   if dmEF.cdsNfs.IsEmpty then
      raise Exception.Create('Nota fiscal :' + mktNrNF.Text +',não localizada ');

   // tratar nota fiscal de serviços para não imprimir
   iSQL := 'SELECT NATUREZAOPID, CFOP,  NATUREZASERVICO FROM EF_NATUREZAOP ' +
           'WHERE NATUREZAOPID = ' + dmEF.cdsNfsNATUREZAOPID.AsString;

   ExecDynamicProvider( -0, iSQL, cds );

   case dmEF.cdsNfsEMPRESAID.AsInteger of
   1..6 : frmRelNotaMatrizSaida.QuickRep1.PrinterSettings.PrinterIndex := Impressora( 'EPSON-13' );
   end;

   if ( ( cds.FieldByName('NATUREZASERVICO').AsInteger = 1 )  and ( dmEF.cdsNfsEMPRESAID.AsInteger = 1 ) ) then
      bImprimirServico := False;

   if bImprimirServico then
      begin
       if      dmEF.cdsNfsEMPRESAID.AsInteger <= 10 then
               begin
                if chkbxPreviewNota.Checked then
                   frmRelNotaMatrizSaida.QuickRep1.Preview
                else
                   frmRelNotaMatrizSaida.QuickRep1.Print;
               end
       else if ( dmEF.cdsNFSEMPRESAID.Value = 11 ) then
               frmRelNotaServicoFilial.QuickRep1.Preview
       else
          frmRelNotaMatrizSaida.QuickRep1.Preview;

       // Impressão de duplicata
       // frmEmissaoDuplicata.ImpressaoDuplicata( dmEF.cdsNfsEMPRESAID.AsString, dmEF.cdsNfsNFSID.AsString, dmEF.cdsNfsDATAEMISSAOID.AsString );

       // Impressão de etiqueta
       frmEmissaoEtiqueta.ImpressaoEtiqueta( dmEF.cdsNfsEMPRESAID.AsString, dmEF.cdsNfsNFSID.AsString, dmEF.cdsNfsDATAEMISSAOID.AsString );
      end;

   MessageDlg('Nota Fiscal nº ' + NFSID + ' foi impressa com sucesso ! ', mtInformation, [mbOk], 0);

  except
  on E: Exception do
  MessageDlg( 'Problemas na emissão de Nota Fiscal. ' +
               #13 + 'O processo será cancelado com a seguinte mensagem de erro : ' +
               #13 + E.Message, mtError, [mbOK], 0 );
  end;

 finally
  FreeAndNil( frmRelNotaMatrizSaida.QuickRep1 );
  FreeAndNil( frmRelNotaMatrizSaida );
  FreeAndNil( frmEmissaoDuplicata );
  FreeAndNil( frmEmissaoEtiqueta );
  FreeAndNil( frmRelNotaServicoFilial );
 end;
end;


procedure TfrmEmissaoNotaFiscal.AtualPDE_Emissao;
var iSql : String;
begin
 // Filtro por empresa caso funcionário esteja associado a alguma empresa
 if dmGsi.EmpresaFuncId > 0 then
    iSQL := 'EF_PDE.EMPRESAID = ' + IntToStr( dmGsi.EmpresaFuncId ) + ' AND ';

 iSql := iSql + ' LIBCONTABIL = 1 AND NVL( MOVIMENTAESTOQUE, 0 ) = 1';
 GerarPesquisa( dmEF.cdsPde, iSql );
end;

procedure TfrmEmissaoNotaFiscal.AtualPDS_Emissao;
var iSql : String;
begin
 // Filtro por empresa caso funcionário esteja associado a alguma empresa
 if dmGsi.EmpresaFuncId > 0 then
    iSQL := 'EF_PDS.EMPRESAID = ' + IntToStr( dmGsi.EmpresaFuncId ) + ' AND ';

 iSql := iSql + 'LIBCONTABIL = 1';
 GerarPesquisa( dmEF.cdsPds, iSql );
end;


procedure TfrmEmissaoNotaFiscal.VisualUltNrNota( cdsPD : TClientDataSet );
var InstSQL, iSql, EmpresaID : String;
    cds : TClientDataSet;
begin
 if cdsPD.RecordCount < 1 then
    exit;

 // Número de Nota Fiscal conforme a empresa
 case cdsPD.FieldByName('EMPRESAID').AsInteger of
 1..5   : EmpresaID := '1';
 12..13 : EmpresaID := '12';
 15,17  : EmpresaID := '15';
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
      mktNrNF.Text := StrZero( cds.FieldByName('NUMNF').Value, 6, 0 )
   else
      raise Exception.Create('Número de impressão de Nota Fiscal inválido' );

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

procedure TfrmEmissaoNotaFiscal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 dmEF.cdsPde.Close;
 Action := caFree;
 frmEmissaoNotaFiscal := Nil;
end;

procedure TfrmEmissaoNotaFiscal.actImprimirNotaExecute(Sender: TObject);
begin
 case pgctrlNota.ActivePageIndex of
 0 : ImprimirNFE;
 1 : ImprimirNFS;
 end;
 pgctrlNotaChange( frmEmissaoNotaFiscal ); 
end;

procedure TfrmEmissaoNotaFiscal.actFecharExecute(Sender: TObject);
begin
 Close
end;

procedure TfrmEmissaoNotaFiscal.actAtualizarNrNotaExecute(Sender: TObject);
begin
 case pgctrlNota.ActivePageIndex of
 0 : AtualNrNotaFiscal( dmEF.cdsPdeEMPRESAID.AsString );
 1 : AtualNrNotaFiscal( dmEF.cdsPdsEMPRESAID.AsString );
 end;
end;

procedure TfrmEmissaoNotaFiscal.pgctrlNotaChange(Sender: TObject);
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

procedure TfrmEmissaoNotaFiscal.FormActivate(Sender: TObject);
begin
 pgctrlNotaChange( Sender );
end;

procedure TfrmEmissaoNotaFiscal.dbgrdETitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column, dmEF.dsPde, dbgrdE);
end;

procedure TfrmEmissaoNotaFiscal.dbgrdSTitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column, dmEF.dsPds, dbgrdS);
end;

procedure TfrmEmissaoNotaFiscal.dbgrdEDblClick(Sender: TObject);
begin
 EditarPedido;
end;

procedure TfrmEmissaoNotaFiscal.actAlterarPedidoExecute(Sender: TObject);
begin
 EditarPedido;
end;

procedure TfrmEmissaoNotaFiscal.dbgrdEDrawColumnCell(Sender: TObject;
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

procedure TfrmEmissaoNotaFiscal.chkImpDtEntradaClick(Sender: TObject);
begin
 if chkImpDtEntrada.Checked then
    dtpckDtEntrada.Enabled := False
 else
    dtpckDtEntrada.Enabled := True;
end;

procedure TfrmEmissaoNotaFiscal.Action1Execute(Sender: TObject);
begin
 case pgctrlNota.ActivePageIndex of
 0 : VisualUltNrNota( dmEF.cdsPde );
 1 : VisualUltNrNota( dmEF.cdsPds );
 end;
end;

end.
