unit u_ParAnvisa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, DBClient, Grids, Wwdbigrd,
  Wwdbgrid, Mask;

type
  TfrmParAnvisa = class(TForm)
    GroupBox1: TGroupBox;
    grpRegAnvisa: TGroupBox;
    edtRegAnvisa: TEdit;
    chkRegAnvisa: TCheckBox;
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    wwDBGrid1: TwwDBGrid;
    dsSerie: TDataSource;
    cdsSerie: TClientDataSet;
    cdsSerieSerie: TStringField;
    cdsSerieConteudo: TMemoField;
    cdsSerieQtd: TIntegerField;
    cdsSerieNX: TStringField;
    procedure btnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure chkRegAnvisaClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure cdsSerieNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure GeraRotulo;
    procedure GeraEtiqueta;
  public
    { Public declarations }
    Tipo : String;
  end;

var
  frmParAnvisa: TfrmParAnvisa;

implementation

uses u_RelEtiqAnvisa, FuncoesDSI, FuncoesCliente, u_dmEF, Math,
  u_RelRotuloAnvisa;


{$R *.dfm}

procedure TfrmParAnvisa.btnFecharClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmParAnvisa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 frmParAnvisa := Nil;
end;

procedure TfrmParAnvisa.chkRegAnvisaClick(Sender: TObject);
begin
 grpRegAnvisa.Enabled := chkRegAnvisa.Checked;
end;

procedure TfrmParAnvisa.btnImprimirClick(Sender: TObject);
begin
 if Tipo = 'R' then
    GeraRotulo
 else
    GeraEtiqueta;
end;

procedure TfrmParAnvisa.GeraEtiqueta;
var iSQL,RegAnvisa, Serie, NX, RegistroGSI : String;
begin
 if chkRegAnvisa.Checked then
    RegAnvisa := QuotedStr( edtRegAnvisa.Text ) + 'AS REGANVISAID, '
 else
    RegAnvisa := 'PP_CATALOGO.REGANVISAID, ';

 Serie := QuotedStr( PreencheString( cdsSerieSerie.Value, 40 ) ) + ' AS SERIE ';
 NX    := QuotedStr( PreencheString( cdsSerieConteudo.AsString, 40 ) ) + ' AS NX ';


 iSql  := 'SELECT EF_PRODUTO.EMPRESAID,' +
         '       EF_PRODUTO.PRODUTOID,' +
         '       EF_PRODUTO.PARTNUMBERID,' +
         '       PP_CATALOGO.MODELOID,' +
         RegAnvisa + Serie + ',' + NX +
         '  FROM EF_PRODUTO,' +
         '       PP_CATALOGO' +
         ' WHERE EF_PRODUTO.PARTNUMBERID = PP_CATALOGO.MODELOID(+)' +
         ' AND PP_CATALOGO.REGANVISAID IS NOT NULL' +
         ' AND EF_PRODUTO.EMPRESAID = ' + dmEF.cdsProdutoEMPRESAID.AsString +
         ' AND EF_PRODUTO.PRODUTOID = ' + dmEF.cdsProdutoPRODUTOID.AsString;

 Application.CreateForm( TfrmRelEtiqAnvisa, frmRelEtiqAnvisa );
 try
  if cdsSerie.State in [dsInsert, dsEdit] then
     begin
      if cdsSerieSerie.IsNull then
         cdsSerie.Cancel
      else
         cdsSerie.Post;
     end;

  frmRelEtiqAnvisa.QuickRep1.DataSet   := cdsSerie;
  frmRelEtiqAnvisa.qrdbSerie.DataSet   := cdsSerie;
  frmRelEtiqAnvisa.qrdbSerie.DataField := 'Serie';

  frmRelEtiqAnvisa.qrdbNX.DataSet   := cdsSerie;
  frmRelEtiqAnvisa.qrdbNX.DataField := 'NX';

  ExecDynamicProvider( -1, iSQL,  frmRelEtiqAnvisa.cdsEtiqueta );

  RegistroGSI := LoadStringFromRegistry( Registro_Principal, 'IMPRESSORA_ZEBRA_ETIQANVISA', '' );

//  frmRelEtiqAnvisa.QuickRep1.PrinterSettings.PrinterIndex := Impressora( RegistroGSI );
  frmRelEtiqAnvisa.QuickRep1.PreviewModal;

  frmRelEtiqAnvisa.cdsEtiqueta.Close;
 finally
  FreeAndNil( frmRelEtiqAnvisa.QuickRep1 );
  FreeAndNil( frmRelEtiqAnvisa );
 end;

 Close;
end;

procedure TfrmParAnvisa.GeraRotulo;
var iSQL,RegAnvisa, Serie, RegistroGSI : String;
    Paper : Integer;
begin
 if chkRegAnvisa.Checked then
    RegAnvisa := QuotedStr( edtRegAnvisa.Text ) + 'AS REGANVISAID, '
 else
    RegAnvisa := 'PP_CATALOGO.REGANVISAID, ';

 Application.CreateForm( TfrmRelRotuloAnvisa, frmRelRotuloAnvisa );
 try
  cdsSerie.First;
  while not cdsSerie.Eof do
  begin
   Serie := QuotedStr( PreencheString( cdsSerieSerie.Value, 40 ) ) + ' AS SERIE, ';
   iSql  := ' SELECT EF_PRODUTO.EMPRESAID,' +
            '       EF_PRODUTO.PRODUTOID,' +
            '       EF_PRODUTO.PARTNUMBERID,' +
            '       EF_PRODUTO.DESCRICAOPORTUGUES,' +
            '       PP_CATALOGO.MODELOID,' +
            RegAnvisa + Serie +
            '       PP_CATALOGO.DESCRICAOANVISA DESCRICAOANVISA,' +
            '       EF_TECWIN.DESCRICAO DESCRICAONCM,' +
            '       EF_PRODUTO.NCMID' +
            '  FROM EF_PRODUTO,' +
            '       PP_CATALOGO,' +
            '       GSI.EF_TECWIN' +
            ' WHERE EF_PRODUTO.PARTNUMBERID = PP_CATALOGO.MODELOID(+) AND' +
            '       PP_CATALOGO.REGANVISAID IS NOT NULL ' +
            '       AND EF_PRODUTO.EMPRESAID = ' + dmEF.cdsProdutoEMPRESAID.AsString +
            '       AND EF_PRODUTO.PRODUTOID = ' + dmEF.cdsProdutoPRODUTOID.AsString +
            '       AND EF_PRODUTO.NCMID = EF_TECWIN.NCMID(+)';

   ExecDynamicProvider( -1, iSQL, frmRelRotuloAnvisa.cdsRotulo );

   frmRelRotuloAnvisa.qrlblConteudo.Caption := frmRelRotuloAnvisa.cdsRotulo.FieldByName('DESCRICAOPORTUGUES').AsString +
                                              #13 + cdsSerieConteudo.Value;

   RegistroGSI := LoadStringFromRegistry( Registro_Principal, 'IMPRESSORA_ZEBRA_ROTULOANVISA', '' );

   frmRelRotuloAnvisa.QuickRep1.PrinterSettings.PrinterIndex := Impressora( RegistroGSI );

   Paper := PaperZebra;

   frmRelRotuloAnvisa.QuickRep1.PrinterSettings.CustomBinCode   := Paper;
   frmRelRotuloAnvisa.QuickRep1.PrinterSettings.CustomPaperCode := Paper;
   frmRelRotuloAnvisa.QuickRep1.PrinterSettings.Copies          := cdsSerieQtd.AsInteger;

   frmRelRotuloAnvisa.QuickRep1.Preview;  // Print
   frmRelRotuloAnvisa.cdsRotulo.Close;

   cdsSerie.Next;
  end;

  cdsSerie.Close;

 finally
  FreeAndNil( frmRelRotuloAnvisa.QuickRep1 );
  FreeAndNil( frmRelRotuloAnvisa );
 end;
 Close;
end;

procedure TfrmParAnvisa.cdsSerieNewRecord(DataSet: TDataSet);
begin
 cdsSerieQtd.Value := 1;
end;

end.
