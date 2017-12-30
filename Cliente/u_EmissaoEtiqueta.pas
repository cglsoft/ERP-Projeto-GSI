unit u_EmissaoEtiqueta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Grids, DBGrids, ComCtrls, DB,
  DBClient, ActnList, XPStyleActnCtrls, ActnMan, ImgList, ActnCtrls,
  ActnMenus, ToolWin, PnAjustaGrid;

type
  TfrmEmissaoEtiqueta = class(TForm)
    GroupBox1: TGroupBox;
    PageControl3: TPageControl;
    TabSheet3: TTabSheet;
    dbgrdEtiqueta: TDBGrid;
    PageControl2: TPageControl;
    TabSheet4: TTabSheet;
    dbgrdNotas: TDBGrid;
    Panel3: TPanel;
    sbTodos: TSpeedButton;
    sbUm: TSpeedButton;
    sbRetUm: TSpeedButton;
    sbRetTodos: TSpeedButton;
    DateTimePicker1: TDateTimePicker;
    Label15: TLabel;
    DateTimePicker2: TDateTimePicker;
    Label13: TLabel;
    btnFiltro: TBitBtn;
    actmngEtiqueta: TActionManager;
    actAdicionar: TAction;
    ActRemover: TAction;
    ActAdicionaAll: TAction;
    ActRemoveAll: TAction;
    imglstEtiqueta: TImageList;
    actImprimir: TAction;
    actExcel: TAction;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    StatusBar1: TStatusBar;
    cdsEtiqueta: TClientDataSet;
    dsEtiqueta: TDataSource;
    CoolBar1: TCoolBar;
    ActionToolBar1: TActionToolBar;
    tmbajtGeral: tPanel1;
    cdsAuxNotas: TClientDataSet;
    dsAuxNotas: TDataSource;
    cdsAuxNotasEMPRESAID: TIntegerField;
    cdsAuxNotasNFSID: TIntegerField;
    cdsAuxNotasDATAEMISSAOID: TDateField;
    cdsAuxNotasNOME: TStringField;
    cdsAuxNotasENDERECOCOB: TStringField;
    cdsAuxNotasCONTATOCOB: TStringField;
    cdsAuxNotasCIDADECOB: TStringField;
    cdsAuxNotasSIGLAUFCOBID: TStringField;
    cdsAuxNotasCEPCOBID: TIntegerField;
    procedure actAdicionarExecute(Sender: TObject);
    procedure ActAdicionaAllExecute(Sender: TObject);
    procedure ActRemoverExecute(Sender: TObject);
    procedure ActRemoveAllExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgrdEtiquetaTitleClick(Column: TColumn);
    procedure dbgrdNotasTitleClick(Column: TColumn);
    procedure btnFiltroClick(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
  private
    { Private declarations }
    procedure InsereNota( EmpresaId, NfsId : Integer; DataEmissaoId : TDateTime );
  public
    { Public declarations }
    procedure AtualizaMascaras;
    procedure ImpressaoEtiqueta( EmpresaID, NFSID, DataEmissaoID : String );
  end;

  const Sel_Etiqueta = ' SELECT' +
                       '  EF_NFS.EMPRESAID,' +
                       '  EF_NFS.DATAEMISSAOID,' +
                       '  EF_NFS.NFSID,' +
                       '  EF_NFS.NOME,' +
                       '  EF_ENTIDADE.ENDERECOCOB || ''  '' || TO_CHAR( EF_ENTIDADE.NUMEROCOB ) || ''  '' || EF_ENTIDADE.COMPLEMENTOCOB AS ENDERECOCOB,' +
                       '  EF_ENTIDADE.CEPCOBID,' +
                       '  EF_ENTIDADE.CIDADECOB,' +
                       '  EF_ENTIDADE.SIGLAUFCOBID,' +
                       '  EF_ENTIDADE.INSCRESTADUAL,' +
                       '  EF_ENTIDADE.CPFCNPJ,' +
                       '  EF_ENTIDADE.CONTATOCOB' +
                       '  FROM' +
                       '  EF_NFS,' +
                       '  EF_ENTIDADE,' +
                       '  EF_NATUREZAOP EF_NATUREZAOP' +
                       ' WHERE' +
                       '  EF_ENTIDADE.ENTIDADEID = EF_NFS.ENTIDADEID' +
                       '  AND NVL( EF_NFS.CANCELADA, 0 ) = 0' +
                       '  AND EF_NATUREZAOP.NATUREZAOPID(+) = EF_NFS.NATUREZAOPID' +
                       '  AND ( NVL( EF_NATUREZAOP.VENDADEFINITIVA, 0 ) =  1  OR' +
                       '        NVL( EF_NATUREZAOP.VENDAFATANTECIPADO, 0 ) = 1 )';
       Sel_Etiqueta2 = 'ORDER BY' +
                       '  EF_NFS.EMPRESAID,' +
                       '  EF_NFS.NFSID,' +
                       '  EF_NFS.DATAEMISSAOID';

var
  frmEmissaoEtiqueta: TfrmEmissaoEtiqueta;

implementation

uses FuncoesCliente, FuncoesDSI, u_dmEF, u_RelEmissaoEtiqueta, u_Exportar;

{$R *.dfm}

procedure TfrmEmissaoEtiqueta.AtualizaMascaras;
begin
 TNumericField( cdsEtiqueta.FieldByName( 'CEPCOBID' ) ).DisplayFormat := '00000-000;1;';
end;

procedure TfrmEmissaoEtiqueta.ImpressaoEtiqueta( EmpresaID, NFSID, DataEmissaoID : String );
var iSQL : String;
begin
 Application.CreateForm( TfrmRelEmissaoEtiqueta, frmRelEmissaoEtiqueta );
 try
  if EmpresaID <> '12' then
     frmRelEmissaoEtiqueta.QrpEtiqueta.PrinterSettings.PrinterIndex := Impressora( 'EPSON-14' );

  iSql := Sel_Etiqueta + 'AND ( ' +
          ' ( EF_NFS.EMPRESAID         = ' + EmpresaID +
          '   AND EF_NFS.NFSID         = ' + NFSID +
          '   AND EF_NFS.DATAEMISSAOID = ' + QuotedStr( DataEmissaoID ) +
          '  ) ';

  iSql := iSql +  ' ) ' + Sel_Etiqueta2;

  ExecDynamicProvider( -1, iSql, cdsEtiqueta );

  if cdsEtiqueta.RecordCount = 0 then
     exit;

  AtualizaMascaras;

  if EmpresaID <> '12' then
     frmRelEmissaoEtiqueta.QrpEtiqueta.Print
  else
     frmRelEmissaoEtiqueta.QrpEtiqueta.PreviewModal;

  cdsEtiqueta.Close;
 finally
  FreeAndNil( frmRelEmissaoEtiqueta.QrpEtiqueta );
  FreeAndNil( frmRelEmissaoEtiqueta );
 end;
end;

procedure TfrmEmissaoEtiqueta.InsereNota( EmpresaId, NfsId : Integer;DataEmissaoId : TDateTime );
begin
 if not cdsAuxNotas.Locate('NFSID;DATAEMISSAOID',VarArrayOf([ NfsId, DataEmissaoId ]),[]) then
    begin
     cdsAuxNotas.Insert;
     cdsAuxNotas.FieldByName('EMPRESAID').Value     := cdsEtiqueta.FieldByName('EMPRESAID').Value;
     cdsAuxNotas.FieldByName('NFSID').Value         := cdsEtiqueta.FieldByName('NFSID').Value;
     cdsAuxNotas.FieldByName('DATAEMISSAOID').Value := cdsEtiqueta.FieldByName('DATAEMISSAOID').Value;
     cdsAuxNotas.FieldByName('NOME').Value          := cdsEtiqueta.FieldByName('NOME').Value;
     cdsAuxNotas.FieldByName('ENDERECOCOB').Value   := cdsEtiqueta.FieldByName('ENDERECOCOB').Value;
     cdsAuxNotas.FieldByName('CONTATOCOB').Value    := cdsEtiqueta.FieldByName('CONTATOCOB').Value;
     cdsAuxNotas.FieldByName('CIDADECOB').Value     := cdsEtiqueta.FieldByName('CIDADECOB').Value;
     cdsAuxNotas.FieldByName('SIGLAUFCOBID').Value  := cdsEtiqueta.FieldByName('SIGLAUFCOBID').Value;
     cdsAuxNotas.FieldByName('CEPCOBID').Value      := cdsEtiqueta.FieldByName('CEPCOBID').Value;
     cdsAuxNotas.Post;
    end;
end;

procedure TfrmEmissaoEtiqueta.actAdicionarExecute(Sender: TObject);
begin
 InsereNota( cdsEtiqueta.FieldByName('NFSID').Value, cdsEtiqueta.FieldByName('NFSID').Value,
             cdsEtiqueta.FieldByName('DATAEMISSAOID').AsDateTime );
end;

procedure TfrmEmissaoEtiqueta.ActAdicionaAllExecute(Sender: TObject);
begin
 if not cdsEtiqueta.IsEmpty then
    begin
     cdsEtiqueta.First;
     while not cdsEtiqueta.Eof do
     begin
      InsereNota( cdsEtiqueta.FieldByName('EMPRESAID').Value, cdsEtiqueta.FieldByName('NFSID').Value,
                  cdsEtiqueta.FieldByName('DATAEMISSAOID').Value );
      cdsEtiqueta.Next;
     end;
    end;
end;

procedure TfrmEmissaoEtiqueta.ActRemoverExecute(Sender: TObject);
begin
 cdsAuxNotas.Delete;
end;

procedure TfrmEmissaoEtiqueta.ActRemoveAllExecute(Sender: TObject);
begin
 cdsAuxNotas.First;
 while not cdsAuxNotas.Eof do
 begin
  cdsAuxNotas.Delete;
 end;
end;

procedure TfrmEmissaoEtiqueta.FormCreate(Sender: TObject);
begin
 DateTimePicker1.Date := pCnnMain.AppServer.iServerDate-30;
 DateTimePicker2.Date := pCnnMain.AppServer.iServerDate;
 cdsAuxNotas.Open;
end;

procedure TfrmEmissaoEtiqueta.actImprimirExecute(Sender: TObject);
var iSql : String;
begin
 cdsEtiqueta.Close;
 Application.CreateForm( TfrmRelEmissaoEtiqueta, frmRelEmissaoEtiqueta );
 try
  iSql := Sel_Etiqueta + 'AND ( ';

  cdsAuxNotas.First;
  while not cdsAuxNotas.Eof do
  begin
   iSql := iSql + ' ( EF_NFS.EMPRESAID         = ' + cdsAuxNotas.FieldByName('EMPRESAID').AsString +
                  '   AND EF_NFS.NFSID         = ' + cdsAuxNotas.FieldByName('NFSID').AsString +
                  '   AND EF_NFS.DATAEMISSAOID = ' + QuotedStr( cdsAuxNotas.FieldByName('DATAEMISSAOID').AsString ) +
                  '  ) ';

   cdsAuxNotas.Next;

   if not cdsAuxNotas.Eof then
      iSql := iSql + ' OR '
  end;

  iSql := iSql +  ' ) ' + Sel_Etiqueta2;

  ExecDynamicProvider( -1, iSql, cdsEtiqueta );

  AtualizaMascaras;

  frmRelEmissaoEtiqueta.QrpEtiqueta.PreviewModal;
 finally
  FreeAndNil( frmRelEmissaoEtiqueta.QrpEtiqueta );
  FreeAndNil( frmRelEmissaoEtiqueta );
 end;
end;

procedure TfrmEmissaoEtiqueta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 cdsEtiqueta.Close;
 cdsAuxNotas.Close;
 Action             := caFree;
 frmEmissaoEtiqueta := Nil;
end;


procedure TfrmEmissaoEtiqueta.dbgrdEtiquetaTitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid( Column, dsEtiqueta, dbgrdEtiqueta );
end;

procedure TfrmEmissaoEtiqueta.dbgrdNotasTitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid( Column, dsAuxNotas, dbgrdNotas );
end;

procedure TfrmEmissaoEtiqueta.btnFiltroClick(Sender: TObject);
var iSQL : String;
begin
 cdsEtiqueta.Close;
 iSQL := Sel_Etiqueta +
         '   AND EF_NFS.DATAEMISSAOID >='+ QuotedStr( DateToStr( DateTimePicker1.date ) ) +
         '   AND EF_NFS.DATAEMISSAOID <='+ QuotedStr( DateToStr( DateTimePicker2.date ) ) +
         Sel_Etiqueta2;

 try
  ExecDynamicProvider( -1, iSQL, cdsEtiqueta );
  tmbajtGeral.tmbAjusta := True;
 except on
  E : Exception do
  raise Exception.Create( E.Message );
 end;

end;

procedure TfrmEmissaoEtiqueta.actExcelExecute(Sender: TObject);
begin
 if not cdsEtiqueta.IsEmpty then
    begin
     frmExportar := TfrmExportar.Create(nil);
     frmExportar.DataSource := dsEtiqueta;
     frmExportar.Show;
    end
 else
    MessageDlg('Não há Notas à serem Exportadas!',mtWarning, [mbok],0 );
end;

end.
