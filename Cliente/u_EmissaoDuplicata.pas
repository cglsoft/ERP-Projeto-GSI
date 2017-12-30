unit u_EmissaoDuplicata;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ActnMan, ActnCtrls, ActnMenus, ImgList, ActnList,
  XPStyleActnCtrls, ToolWin, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids,
  DB, DBClient, PnAjustaGrid;

type
  TfrmEmissaoDuplicata = class(TForm)
    PageControl3: TPageControl;
    TabSheet3: TTabSheet;
    dbgrdNotas: TDBGrid;
    PageControl2: TPageControl;
    TabSheet4: TTabSheet;
    dbgrdAuxNotas: TDBGrid;
    Panel3: TPanel;
    sbTodos: TSpeedButton;
    sbUm: TSpeedButton;
    sbRetUm: TSpeedButton;
    sbRetTodos: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    GroupBox1: TGroupBox;
    Label15: TLabel;
    Label13: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    actmngDuplicata: TActionManager;
    actAdicionar: TAction;
    ActRemover: TAction;
    ActAdicionaAll: TAction;
    ActRemoveAll: TAction;
    ActImprimir: TAction;
    ActVisualizar: TAction;
    ImageList1: TImageList;
    StatusBar1: TStatusBar;
    cdsAuxNotas: TClientDataSet;
    cdsAuxNotasNFSID: TIntegerField;
    cdsAuxNotasDATAEMISSAOID: TDateField;
    dsAuxNotas: TDataSource;
    cdsAuxNotasEMPRESAID: TIntegerField;
    cdsDuplicata: TClientDataSet;
    dsDuplicata: TDataSource;
    btnFiltro: TBitBtn;
    CoolBar1: TCoolBar;
    ActionToolBar1: TActionToolBar;
    tmbajtGeral: tPanel1;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actAdicionarExecute(Sender: TObject);
    procedure ActRemoverExecute(Sender: TObject);
    procedure ActAdicionaAllExecute(Sender: TObject);
    procedure ActRemoveAllExecute(Sender: TObject);
    procedure ActImprimirExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActVisualizarExecute(Sender: TObject);
    procedure dbgrdNotasTitleClick(Column: TColumn);
    procedure dbgrdAuxNotasTitleClick(Column: TColumn);
    procedure btnFiltroClick(Sender: TObject);
  private
    procedure ImpDados;
    { Private declarations }
  public
    procedure InsereNota( EmpresaId,NfsId : Integer;DataEmissaoId : TDateTime );
    procedure ImpressaoDuplicata( EmpresaID, NFSID, DataEmissaoID : String );
    procedure AtualizaMascaras;
    { Public declarations }
  end;

  const Sel_Duplicata = ' SELECT' +
                        '  EF_NFS.EMPRESAID,' +
                        '  EF_NFS.DATAEMISSAOID,' +
                        '  EF_NFS.NFSID,' +
                        '  EF_NFSPARCELA.DUPLICATAID,' +
                        '  EF_NFS.NOME,' +
                        '  EF_NFSPARCELA.PARCELAID,' +
                        '  EF_NFSPARCELA.DATAVENCIMENTO,' +
                        '  EF_NFSPARCELA.VLRPARCELA,' +
                        '  EF_NFS.VLRTOTALNOTA,' +
                        '  EF_ENTIDADE.ENDERECOCOB || ''  '' || TO_CHAR( EF_ENTIDADE.NUMEROCOB ) || '' - '' || EF_ENTIDADE.COMPLEMENTOCOB AS ENDERECO,' +
                        '  EF_ENTIDADE.CEPCOBID AS CEPID,' +
                        '  EF_ENTIDADE.CIDADECOB AS CIDADE,' +
                        '  EF_ENTIDADE.SIGLAUFCOBID AS SIGLAUFID,' +
                        '  EF_ENTIDADE.INSCRESTADUAL,' +
                        '  EF_ENTIDADE.CPFCNPJ' +
                        '  FROM' +
                        '  EF_NFS,' +
                        '  EF_NFSPARCELA,' +
                        '  EF_ENTIDADE,' +
                        '  EF_NATUREZAJURIDICA EF_NATUREZAJURIDICA,' +
                        '  EF_NATUREZAOP EF_NATUREZAOP' +
                        ' WHERE' +
                        '  EF_NFS.EMPRESAID = EF_NFSPARCELA.EMPRESAID AND' +
                        '  EF_NFS.NFSID = EF_NFSPARCELA.NFSID AND' +
                        '  EF_NFS.DATAEMISSAOID = EF_NFSPARCELA.DATAEMISSAOID AND' +
                        '  EF_ENTIDADE.ENTIDADEID = EF_NFS.ENTIDADEID' +
                        '  AND EF_NATUREZAJURIDICA.NATUREZAJURIDICAID(+) = EF_ENTIDADE.NATUREZAJURIDICAID' +
                        '  AND NVL( EF_NFS.CANCELADA, 0 ) = 0' +
                        '  AND EF_NFS.EMPRESAID <> 12 ' +
                        '  AND NVL( EF_NATUREZAJURIDICA.IMPRIMIRDUPLICATA, 0 ) = 1' +
                        '  AND EF_NATUREZAOP.NATUREZAOPID(+) = EF_NFS.NATUREZAOPID' +
                        '  AND ( NVL( EF_NATUREZAOP.VENDADEFINITIVA, 0 ) =  1  OR' +
                        '        NVL( EF_NATUREZAOP.VENDAFATANTECIPADO, 0 ) = 1 )';
        Sel_Duplicata2= 'ORDER BY' +
                        '  EF_NFS.EMPRESAID,' +
                        '  EF_NFS.NFSID,' +
                        '  EF_NFS.DATAEMISSAOID,' +
                        '  EF_NFSPARCELA.PARCELAID';

var
  frmEmissaoDuplicata: TfrmEmissaoDuplicata;

implementation

{$R *.dfm}

uses FuncoesCliente,FuncoesDSI,u_RelEmissaoDuplicata, u_Exportar, u_dmGSI,
  u_dmAS;


procedure TfrmEmissaoDuplicata.ImpDados;
var cdsD : TClientDataSet;
begin
 cdsD := TClientDataSet.Create( Self );
 try
  dmGSI.DadosPadraoEmpresa( cdsD, dmAS.cdsConfigFILIALID.AsString );

  with frmRelEmissaoDuplicata do
  begin
   qrlblEnd.Caption      := cdsD.FieldByName('ENDERECO').AsString + ' ' +
                            cdsD.FieldByName('NUMERO').AsString + ' ' +
                            cdsD.FieldByName('COMPLEMENTO').AsString + ' ' +
                            cdsD.FieldByName('BAIRRO').AsString;

   qrlblEnd2.Caption     := FormatFloat( '00000-000;1;',cdsD.FieldByName( 'CEPID' ).AsInteger ) + ' - ' +
                            cdsD.FieldByName('CIDADE').AsString + ' - ' +
                            cdsD.FieldByName('SIGLAUFID').AsString;
   qrlblFone.Caption     := 'TELEFONE: ' + cdsD.FieldByName('TELEFONE').AsString;
   qrlblCNPJ.Caption     := 'CNPJ: ' + FormatCNPF_CNPJ_CCM( cdsD.FieldByName('CPF_CNPJ').AsString );
   qrlblInscrEst.Caption := 'INSCR. ESTADUAL:' + cdsD.FieldByName('INSCRESTADUAL').AsString;
   qrlblInscrMun.Caption := 'INSCR. MUNICIPAL:' + cdsD.FieldByName('INSCRMUNICIPAL').AsString;
  end;
 finally
  FreeAndNil( cdsD );
 end;
end;

procedure TfrmEmissaoDuplicata.AtualizaMascaras;
begin
 TNumericField( cdsDuplicata.FieldByName( 'VLRTOTALNOTA' ) ).DisplayFormat := '###,###,###,##0.00';
 TNumericField( cdsDuplicata.FieldByName( 'VLRPARCELA' ) ).DisplayFormat   := '###,###,###,##0.00';
 TNumericField( cdsDuplicata.FieldByName( 'CEPID' ) ).DisplayFormat        := '00000-000;1;';

 if LengTh( Trim( TransfNum( cdsDuplicata.FieldByName( 'CPFCNPJ').Value ) ) ) > 13 then
    cdsDuplicata.FieldByName( 'CPFCNPJ').EditMask  := '##\.###\.###\/####\-##;0;'
 else
    cdsDuplicata.FieldByName( 'CPFCNPJ').EditMask := '##\.###\.###\/####\-##;0;';
end;

procedure TfrmEmissaoDuplicata.ImpressaoDuplicata( EmpresaID, NFSID, DataEmissaoID : String );
var iSQL : String;
begin
 Application.CreateForm( TfrmRelEmissaoDuplicata, frmRelEmissaoDuplicata );
 try
  if EmpresaID <> '12' then
     frmRelEmissaoDuplicata.QuickRep1.PrinterSettings.PrinterIndex := Impressora( 'MULT_ALM_01' );

  iSql := Sel_Duplicata + 'AND ( ' +
          ' ( EF_NFS.EMPRESAID         = ' + EmpresaID +
          '   AND EF_NFS.NFSID         = ' + NFSID +
          '   AND EF_NFS.DATAEMISSAOID = ' + QuotedStr( DataEmissaoID ) +
          '  ) ';

  iSql := iSql +  ' ) ' + Sel_Duplicata2;

  ExecDynamicProvider( -1, iSql, cdsDuplicata );

  if cdsDuplicata.RecordCount = 0 then
     exit;

  AtualizaMascaras;

  ImpDados;

  if EmpresaID <> '12' then
     frmRelEmissaoDuplicata.QuickRep1.Print
  else
     frmRelEmissaoDuplicata.QuickRep1.PreviewModal;

  cdsDuplicata.Close;
 finally
  FreeAndNil( frmRelEmissaoDuplicata.QuickRep1 );
  FreeAndNil( frmRelEmissaoDuplicata );
 end;
end;

procedure TfrmEmissaoDuplicata.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 cdsAuxNotas.Close;
 cdsDuplicata.Close;
 Action := caFree;
 frmEmissaoDuplicata := nil;
end;

procedure TfrmEmissaoDuplicata.actAdicionarExecute(Sender: TObject);
begin
 InsereNota( cdsDuplicata.FieldByName('EMPRESAID').Value, cdsDuplicata.FieldByName('NFSID').Value,
             cdsDuplicata.FieldByName('DATAEMISSAOID').AsDateTime );
end;

procedure TfrmEmissaoDuplicata.InsereNota(EmpresaId, NfsId: Integer;
  DataEmissaoId: TDateTime);
begin
 if not cdsAuxNotas.Locate('EMPRESAID;NFSID;DATAEMISSAOID',VarArrayOf([EmpresaId,NfsId, DataEmissaoId ]),[]) then
    begin
     cdsAuxNotas.Append;
     cdsAuxNotas.FieldByName('EMPRESAID').Value     := cdsDuplicata.FieldByName('EMPRESAID').Value;
     cdsAuxNotas.FieldByName('NFSID').Value         := cdsDuplicata.FieldByName('NFSID').Value;
     cdsAuxNotas.FieldByName('DATAEMISSAOID').Value := cdsDuplicata.FieldByName('DATAEMISSAOID').Value;
     cdsAuxNotas.Post;
    end;
end;

procedure TfrmEmissaoDuplicata.ActRemoverExecute(Sender: TObject);
begin
 cdsAuxNotas.Delete;
end;

procedure TfrmEmissaoDuplicata.ActAdicionaAllExecute(Sender: TObject);
begin
 if not cdsDuplicata.IsEmpty then
    begin
     cdsDuplicata.First;
     while not cdsDuplicata.Eof do
     begin
      InsereNota( cdsDuplicata.FieldByName('EMPRESAID').Value, cdsDuplicata.FieldByName('NFSID').Value,
                  cdsDuplicata.FieldByName('DATAEMISSAOID').Value );
      cdsDuplicata.Next;
     end;
    end;
end;

procedure TfrmEmissaoDuplicata.ActRemoveAllExecute(Sender: TObject);
begin
 if not cdsAuxNotas.IsEmpty then
    begin
     cdsAuxNotas.First;
     while not cdsAuxNotas.Eof do
     cdsAuxNotas.Delete;
    end;
end;

procedure TfrmEmissaoDuplicata.ActImprimirExecute(Sender: TObject);
var iSql : String;
begin
 cdsDuplicata.Close;
 Application.CreateForm( TfrmRelEmissaoDuplicata, frmRelEmissaoDuplicata );
 try
  iSql := Sel_Duplicata + 'AND ( ';

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

  iSql := iSql +  ' ) ' + Sel_Duplicata2;

  ExecDynamicProvider( -1, iSql, cdsDuplicata );

  AtualizaMascaras;
  ImpDados;

  frmRelEmissaoDuplicata.QuickRep1.PreviewModal;
 finally
  FreeAndNil( frmRelEmissaoDuplicata.QuickRep1 );
  FreeAndNil( frmRelEmissaoDuplicata );
 end;
end;

procedure TfrmEmissaoDuplicata.FormCreate(Sender: TObject);
begin
 cdsAuxNotas.Open;
 DateTimePicker1.Date := pCnnMain.AppServer.iServerDate -30;
 DateTimePicker2.Date := pCnnMain.AppServer.iServerDate;
end;


procedure TfrmEmissaoDuplicata.ActVisualizarExecute(Sender: TObject);
begin
 if not cdsDuplicata.IsEmpty then
    begin
     frmExportar := TfrmExportar.Create(nil);
     frmExportar.DataSource := dsDuplicata;
     frmExportar.Show;
    end
 else
    MessageDlg('Não há Notas à serem Exportadas!',mtWarning, [mbok],0 );
end;

procedure TfrmEmissaoDuplicata.dbgrdNotasTitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column,  dsDuplicata, dbgrdNotas );
end;

procedure TfrmEmissaoDuplicata.dbgrdAuxNotasTitleClick(
  Column: TColumn);
begin
 OrdenaFieldDBGrid(Column,  dsAuxNotas, dbgrdNotas );
end;

procedure TfrmEmissaoDuplicata.btnFiltroClick(Sender: TObject);
var iSQL : String;
begin
 cdsDuplicata.Close;
 iSQL := Sel_Duplicata +
         '   AND EF_NFS.DATAEMISSAOID >='+ QuotedStr( DateToStr( DateTimePicker1.date ) ) +
         '   AND EF_NFS.DATAEMISSAOID <='+ QuotedStr( DateToStr( DateTimePicker2.date ) ) +
         Sel_Duplicata2;

 try
  ExecDynamicProvider( -1,iSQL, cdsDuplicata );
  tmbajtGeral.tmbAjusta := True;
 except on
  E : Exception do
  raise Exception.Create( E.Message );
 end;
end;

end.
