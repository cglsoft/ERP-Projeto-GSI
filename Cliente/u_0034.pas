unit u_0034;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, ComCtrls, Buttons, DB, DBClient,
  DBCtrls, Grids, DBGrids, wwdbdatetimepicker,cDatetime;

type
  Tfrm0034 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    RadioGroup1: TRadioGroup;
    Panel23: TPanel;
    Label4: TLabel;
    Label2: TLabel;
    StatusBar1: TStatusBar;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    cds0034: TClientDataSet;
    ds0034: TDataSource;
    cds0034SEQUENCIAID: TIntegerField;
    cds0034EMBDATA: TDateField;
    cds0034CLIENTEID: TIntegerField;
    cds0034PRACA: TStringField;
    cds0034NOMECLIENTE: TStringField;
    cds0034QUANTIDADE: TIntegerField;
    cds0034MODELOID: TStringField;
    cds0034VLRFOBREVENDA: TFloatField;
    cds0034VLRCOMISSAO: TFloatField;
    cds0034VLRINTERVDEBITO: TFloatField;
    cds0034VLRTOTALINTERVCRED: TFloatField;
    cds0034VLRTOTALINTERVDEB: TFloatField;
    cds0034DESCRICAOPAGTO: TStringField;
    cds0034VLRDESPESA: TFloatField;
    cds0034VLRFRETEINTERNACIONAL: TFloatField;
    cds0034LIVLRCOMISSAO: TFloatField;
    cds0034PONXID: TStringField;
    cds0034VENDEDORID: TStringField;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    cds0034PEDVENDID: TStringField;
    cds0034ITEMID: TIntegerField;
    GroupBox2: TGroupBox;
    cmbVendedor: TComboBox;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    cdsApar: TClientDataSet;
    dsApar: TDataSource;
    Edit1: TEdit;
    ListBox1: TListBox;
    cmbTipo: TComboBox;
    Label3: TLabel;
    Label5: TLabel;
    BitBtn4: TBitBtn;
    cds0034SIGLAGRUPO: TStringField;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure cmbTipoClick(Sender: TObject);
  private
    { Private declarations }
    procedure GeraSQLAparelho( var iSQLApar : String );
    procedure ImprimeEmbarque( var cdsProcesso,cdsProcessoApar, cdsProcessoVend,cdsProcessoComp : TClientDataSet );
    procedure ImprimeEmbarqueVend( var cdsProcesso,cdsProcessoApar, cdsProcessoVend : TClientDataSet );
    procedure ImprimeEmbarqueApar( var cdsProcesso,cdsProcessoApar, cdsProcessoVend : TClientDataSet );

    procedure Totais;

  public
    { Public declarations }

    nTUS1,nTUS2,nTUS3,nTUS4 : Currency;
    nTCT1,nTCT2,nTCT3,nTCT4 : Currency;
    nTRX1,nTRX2,nTRX3,nTRX4 : Currency;
    nTMR1,nTMR2,nTMR3,nTMR4 : Currency;

  end;

const Select_Processo     =          'SELECT PP_PROCESSOIMP.PEDVENDID PEDVENDID,'+
                                     '       PP_PROCESSOIMP.EMBDATA EMBDATA,'+
                                     '       PP_PROCESSOIMP.PONXID PONXID,'+
                                     '       PP_PROCESSOIMP.CANCELADO,'+
                                     '       PP_PROCESSOIMP.PONXID PONXIDINDICE,'+
                                     '       PP_PROCESSOIMP.CLIENTEID CLIENTEID,'+
                                     '       PP_PROCESSOIMP.CANCELADO,'+
                                     '       EF_ENTIDADE.NOME NOMECLIENTE,'+
                                     '       TO_CHAR( CONCAT( CONCAT( EF_ENTIDADE.CIDADE, ''-'' ),  EF_ENTIDADE.SIGLAUFID ) ) PRACA,'+
                                     '       ( CASE WHEN PP_PEDVEND.DATAPEDIDO <= TO_DATE( ''31/08/2001'', ''DD/MM/YYYY'' ) THEN'+
                                     '             PP_PEDVEND.VLRINTERVENIENCIA'+
                                     '            ELSE'+
                                     '             PP_PEDVEND.VLRAPARELHOINTERV + PP_PEDVEND.VLRINTERVENIENCIA'+
                                     '         END'+
                                     '       ) VLRINTERVDEBITO,'+
                                     '       PP_PEDVEND.VLRTOTALINTERVCRED VLRTOTALINTERVCRED,'+
                                     '       PP_PEDVEND.VLRTOTALINTERVDEB VLRTOTALINTERVDEB,'+
                                     '       PP_CONDPAGTOPROP.DESCRICAOPAGTO DESCRICAOPAGTO,'+
                                     '       PP_PEDVEND.VLRDESPESA VLRDESPESA,'+
                                     '       PP_PEDVEND.VLRFRETEINTERNACIONAL VLRFRETEINTERNACIONAL'+
                                     '  FROM PP_PROCESSOIMP PP_PROCESSOIMP,'+
                                     '       EF_ENTIDADE EF_ENTIDADE,'+
                                     '       PP_PEDVEND PP_PEDVEND,'+
                                     '       PP_CONDPAGTOPROP PP_CONDPAGTOPROP'+
                                     ' WHERE EF_ENTIDADE.ENTIDADEID = PP_PROCESSOIMP.CLIENTEID'+
                                     '   AND PP_PEDVEND.PEDVENDID = PP_PROCESSOIMP.PEDVENDID'+
                                     '   AND PP_CONDPAGTOPROP.CONDPAGTOPROPID = PP_PEDVEND.CONDPAGTOPROPID';

      Select_Aparelho    =           'SELECT PP_PROCESSOIMP.PEDVENDID PEDVENDID,'+
                                     '       PP_PROCESSOIMP.EMBDATA EMBDATA,'+
                                     '       PP_PROCESSOIMP.PONXID PONXID,'+
                                     '       PP_PROCESSOIMP.PONXID PONXIDINDICE,'+
                                     '       PP_PROCESSOIMP.CLIENTEID CLIENTEID,'+
                                     '       EF_ENTIDADE.NOME NOMECLIENTE,'+
                                     '       TO_CHAR( CONCAT( CONCAT( EF_ENTIDADE.CIDADE, ''-'' ),  EF_ENTIDADE.SIGLAUFID ) ) PRACA,'+
                                     '       PP_PEDVENDITEM.ITEMID,'+
                                     '       PP_PEDVENDITEM.QUANTIDADE QUANTIDADE,'+
                                     '       PP_PEDVENDITEM.MODELOID MODELOID,'+
                                     '       PP_PEDVENDITEM.VLRFOBREVENDA VLRFOBREVENDA,'+
                                     '       PP_PEDVENDITEM.LIVLRCOMISSAO LIVLRCOMISSAO,'+
                                     '       PP_PEDVENDITEM.VLRCOMISSAO VLRCOMISSAO,'+
                                     '       ( CASE WHEN PP_PEDVEND.DATAPEDIDO <= TO_DATE( ''31/08/2001'', ''DD/MM/YYYY'' ) THEN'+
                                     '             PP_PEDVEND.VLRINTERVENIENCIA'+
                                     '            ELSE'+
                                     '             PP_PEDVEND.VLRAPARELHOINTERV + PP_PEDVEND.VLRINTERVENIENCIA'+
                                     '         END'+
                                     '       ) VLRINTERVDEBITO,'+
                                     '       PP_PEDVEND.VLRTOTALINTERVCRED VLRTOTALINTERVCRED,'+
                                     '       PP_PEDVEND.VLRTOTALINTERVDEB VLRTOTALINTERVDEB,'+
                                     '       PP_CONDPAGTOPROP.DESCRICAOPAGTO DESCRICAOPAGTO,'+
                                     '       PP_PEDVEND.VLRDESPESA VLRDESPESA,'+
                                     '       PP_PEDVEND.VLRFRETEINTERNACIONAL VLRFRETEINTERNACIONAL,'+
                                     '       EF_GRUPO.SIGLAGRUPO'+
                                     '  FROM PP_PROCESSOIMP PP_PROCESSOIMP,'+
                                     '       EF_ENTIDADE EF_ENTIDADE,'+
                                     '       PP_PEDVEND PP_PEDVEND,'+
                                     '       PP_PEDVENDITEM PP_PEDVENDITEM,'+
                                     '       PP_CONDPAGTOPROP PP_CONDPAGTOPROP,'+
                                     '       PP_CATALOGO,'+
                                     '       EF_GRUPO'+
                                     ' WHERE EF_ENTIDADE.ENTIDADEID = PP_PROCESSOIMP.CLIENTEID'+
                                     '   AND PP_PEDVEND.PEDVENDID = PP_PROCESSOIMP.PEDVENDID'+
                                     '   AND PP_PEDVENDITEM.PEDVENDID(+) = PP_PEDVEND.PEDVENDID'+
                                     '   AND PP_CATALOGO.MODELOID(+) = PP_PEDVENDITEM.MODELOID'+
                                     '   AND PP_CATALOGO.GRUPOID = EF_GRUPO.GRUPOID(+)'+
                                     '   AND PP_CONDPAGTOPROP.CONDPAGTOPROPID = PP_PEDVEND.CONDPAGTOPROPID';

      Select_Vendedor    =           'SELECT PP_PROCESSOIMP.PEDVENDID PEDVENDID,'+
                                     '       PP_PEDVENDVEND.ITEMID ITEMID,'+
                                     '       PP_PROCESSOIMP.PONXID PONXID,'+
                                     '       PP_PEDVEND.VLRFRETEINTERNACIONAL VLRFRETEINTERNACIONAL,'+
                                     '       EF_VENDEDOR.NOMEFANTASIA NOMEVENDEDOR'+
                                     '  FROM PP_PROCESSOIMP PP_PROCESSOIMP,'+
                                     '       EF_ENTIDADE EF_VENDEDOR,'+
                                     '       PP_PEDVEND PP_PEDVEND,'+
                                     '       PP_PEDVENDVEND PP_PEDVENDVEND'+
                                     ' WHERE EF_VENDEDOR.ENTIDADEID(+) = PP_PEDVENDVEND.VENDEDORID'+
                                     '   AND PP_PEDVEND.PEDVENDID = PP_PROCESSOIMP.PEDVENDID'+
                                     '   AND PP_PEDVENDVEND.PEDVENDID(+) = PP_PEDVEND.PEDVENDID';

      Select_Comp        =           'SELECT PP_PROCESSOIMP.PEDVENDID PEDVENDID,'+
                                     '       PP_PEDVENDCOMP.ITEMID,'+
                                     '       PP_PEDVENDCOMP.ITEMCOMPID,'+
                                     '       PP_PEDVENDCOMP.MODELOID,'+
                                     '       EF_GRUPO.SIGLAGRUPO'+
                                     '  FROM PP_PROCESSOIMP PP_PROCESSOIMP,'+
                                     '       PP_PEDVENDCOMP PP_PEDVENDCOMP,'+
                                     '       PP_CATALOGO PP_CATALOGO,'+
                                     '       EF_GRUPO EF_GRUPO'+
                                     ' WHERE PP_PEDVENDCOMP.PEDVENDID = PP_PROCESSOIMP.PEDVENDID'+
                                     '   AND PP_CATALOGO.MODELOID(+) = PP_PEDVENDCOMP.MODELOID'+
                                     '   AND PP_CATALOGO.GRUPOID = EF_GRUPO.GRUPOID(+)';

      Select_Modelo      =           'SELECT OS_APARELHO.MODELOID'+
                                     '  FROM OS_APARELHO,'+
                                     '       PP_CATALOGO'+
                                     ' WHERE PP_CATALOGO.MODELOID(+) = OS_APARELHO.MODELOID';


var
  frm0034: Tfrm0034;

implementation

uses u_Exportar,FuncoesCliente, u_Rel0034, u_dmPP;

{$R *.dfm}

procedure Tfrm0034.BitBtn3Click(Sender: TObject);
begin
 frm0034.Close;
end;

procedure Tfrm0034.BitBtn2Click(Sender: TObject);
begin
 if not cds0034.IsEmpty then
    begin
     frmExportar := TfrmExportar.Create(nil);
     frmExportar.DataSource := ds0034;
     frmExportar.Show;
    end
 else
    MessageDlg('É necessário Gerar o Relatório primeiro!',mtWarning, [mbok],0 );
end;

procedure Tfrm0034.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := cafree;
 frm0034 := nil;
end;

procedure Tfrm0034.BitBtn1Click(Sender  : TObject);
var iSQL, iSQLAparelho,iSQLVend,iSQLComp : String;
    cdsProcesso,cdsProcessoApar,
    cdsProcessoVend,cdsProcessoComp : TClientDataSet;
    dsProcesso,dsProcessoApar, dsProcessoVend, dsProcessoComp : TDataSource;
begin
 if cds0034.IndexName <> '' then
    cds0034.DeleteIndex('idx1');

 cds0034.EmptyDataSet;

 iSQLAparelho := Select_Aparelho +
                 ' AND PP_PROCESSOIMP.EMBDATA BETWEEN TO_DATE( '+ QuotedStr( wwDBDateTimePicker1.Text ) + ', ''DD/MM/YYYY'' ) '+
                 ' AND TO_DATE( '+ QuotedStr( wwDBDateTimePicker2.Text ) + ', ''DD/MM/YYYY'' ) ';

 iSQL := Select_processo +
         ' AND PP_PROCESSOIMP.EMBDATA BETWEEN TO_DATE( '+ QuotedStr( wwDBDateTimePicker1.Text ) + ', ''DD/MM/YYYY'' ) '+
         ' AND TO_DATE( '+ QuotedStr( wwDBDateTimePicker2.Text ) + ', ''DD/MM/YYYY'' ) ';

 iSQLVend := Select_Vendedor +
             ' AND PP_PROCESSOIMP.EMBDATA BETWEEN TO_DATE( '+ QuotedStr( wwDBDateTimePicker1.Text ) + ', ''DD/MM/YYYY'' ) '+
             ' AND TO_DATE( '+ QuotedStr( wwDBDateTimePicker2.Text ) + ', ''DD/MM/YYYY'' ) ';

 iSQLComp := Select_Comp +
             ' AND PP_PROCESSOIMP.EMBDATA BETWEEN TO_DATE( '+ QuotedStr( wwDBDateTimePicker1.Text ) + ', ''DD/MM/YYYY'' ) '+
             ' AND TO_DATE( '+ QuotedStr( wwDBDateTimePicker2.Text ) + ', ''DD/MM/YYYY'' ) ';

 if RadioGroup1.ItemIndex = 4 then
    iSQLVend := iSQLVend + ' AND EF_VENDEDOR.NOMEFANTASIA LIKE '+ QuotedStr('%'+ cmbVendedor.Text );

 if RadioGroup1.ItemIndex = 3 then
    GeraSQLAparelho( iSQLAparelho );

 try
  ExecDynamicProvider( -1,iSQL,cdsProcesso );

  dsProcesso := TDataSource.Create(nil);
  dsProcesso.DataSet := cdsProcesso;
  cdsProcesso.AddIndex( 'idx1','PEDVENDID',[ixPrimary] );
  cdsProcesso.IndexName := 'idx1';

  dsProcessoApar := TDataSource.Create(nil);
  dsProcessoApar.DataSet := cdsProcessoApar;
  ExecDynamicProvider( -1,iSQLAparelho,cdsProcessoApar );
  cdsProcessoApar.AddIndex( 'idx1','PEDVENDID;ITEMID',[ixPrimary] );
  cdsProcessoApar.IndexName := 'idx1';

  dsProcessoVend := TDataSource.Create(nil);
  dsProcessoVend.DataSet := cdsProcessoVend;
  ExecDynamicProvider( -1,iSQLVend,cdsProcessoVend );
  cdsProcessoVend.AddIndex( 'idx1','PEDVENDID',[ixPrimary] );
  cdsProcessoVend.IndexName := 'idx1';

  dsProcessoComp := TDataSource.Create(nil);
  dsProcessoComp.DataSet := cdsProcessoComp;
  ExecDynamicProvider( -1,iSQLComp,cdsProcessoComp );
  cdsProcessoComp.AddIndex( 'idx1','PEDVENDID;ITEMID',[ixPrimary] );
  cdsProcessoComp.IndexName := 'idx1';

  cdsProcessoApar.MasterSource := dsProcesso;
  cdsProcessoApar.MasterFields := 'PEDVENDID';
  cdsProcessoApar.IndexFieldNames := 'PEDVENDID';

  cdsProcessoVend.MasterSource := dsProcesso;
  cdsProcessoVend.MasterFields := 'PEDVENDID';
  cdsProcessoVend.IndexFieldNames := 'PEDVENDID;ITEMID';

  cdsProcessoComp.MasterSource := dsProcessoApar;
  cdsProcessoComp.MasterFields := 'PEDVENDID;ITEMID';
  cdsProcessoComp.IndexFieldNames := 'PEDVENDID;ITEMID';

  frmRel0034 := TfrmRel0034.Create( nil );
  if      RadioGroup1.ItemIndex = 3 then
          begin
           ImprimeEmbarqueApar( cdsProcesso,cdsProcessoApar, cdsProcessoVend );
           frmRel0034.QRLabel41.Enabled    := False;
           frmRel0034.QRLabel40.Enabled    := False;
           frmRel0034.QRLabel37.Enabled    := False;
           frmRel0034.QRDBText9.Enabled    := False;
           frmRel0034.QRDBText10.Enabled   := False;
           frmRel0034.SummaryBand1.Enabled := False;
           frmRel0034.QRLabel15.Caption    := frmRel0034.QRLabel15.Caption+ ' by equipament ';
          end
  else if RadioGroup1.ItemIndex = 4 then
          begin
           ImprimeEmbarqueVend( cdsProcesso,cdsProcessoApar, cdsProcessoVend );
           frmRel0034.QRLabel41.Enabled    := False;
           frmRel0034.QRLabel40.Enabled    := False;
           frmRel0034.QRLabel37.Enabled    := False;
           frmRel0034.QRDBText9.Enabled    := False;
           frmRel0034.QRDBText10.Enabled   := False;
           frmRel0034.SummaryBand1.Enabled := False;
           frmRel0034.QRLabel15.Caption    := frmRel0034.QRLabel15.Caption+ ' by salesman ';
          end
  else ImprimeEmbarque( cdsProcesso,cdsProcessoApar, cdsProcessoVend,cdsProcessoComp );

  cds0034.IndexFieldNames := 'PEDVENDID;SEQUENCIAID';
  frmRel0034.QRLabel3.Caption := 'Period: '+ wwDBDateTimePicker1.Text +' a '+ wwDBDateTimePicker2.Text;
  frmRel0034.QuickRep1.PreviewModal;

  cds0034.Close;
 finally
  FreeAndNil( frmRel0034.QuickRep1 );
  FreeAndNil( frmRel0034 );
 end;

end;

procedure Tfrm0034.ImprimeEmbarque(var cdsProcesso,cdsProcessoApar, cdsProcessoVend,cdsProcessoComp : TClientDataSet);
var SequenciaId  : Integer;
begin
 SequenciaId := 1;
 cdsProcesso.First;
 cdsProcessoApar.First;
 cdsProcessoComp.First;

 while not cdsProcesso.Eof do
 begin
  if cdsProcesso.FieldByName('CANCELADO').AsInteger = 1 then
     begin
      cdsProcesso.Next;
      Continue;
     end;

  cds0034.Insert;
  cds0034PEDVENDID.AsString            := cdsProcesso.FieldByName('PEDVENDID').AsString;
  cds0034SEQUENCIAID.AsInteger         := SequenciaId;
  cds0034EMBDATA.AsDateTime            := cdsProcesso.FieldByName('EMBDATA').AsDateTime;
  cds0034PONXID.AsString               := cdsProcesso.FieldByName('PONXID').AsString;
  cds0034CLIENTEID.AsInteger           := cdsProcesso.FieldByName('CLIENTEID').AsInteger;
  cds0034NOMECLIENTE.AsString          := cdsProcesso.FieldByName('NOMECLIENTE').AsString;
  cds0034PRACA.AsString                := cdsProcesso.FieldByName('PRACA').AsString ;
  cds0034MODELOID.AsString             := cdsProcessoApar.FieldByName('MODELOID').AsString;
  cds0034VLRFOBREVENDA.AsFloat         := cdsProcessoApar.FieldByName('VLRFOBREVENDA').AsFloat;
  cds0034VLRCOMISSAO.AsFloat           := cdsProcessoApar.FieldByName('VLRCOMISSAO').AsFloat;
  cds0034VLRTOTALINTERVDEB.AsFloat     := cdsProcesso.FieldByName('VLRTOTALINTERVDEB').AsFloat;
  cds0034VLRTOTALINTERVCRED.AsFloat    := cdsProcesso.FieldByName('VLRTOTALINTERVCRED').AsFloat;
  cds0034VLRTOTALINTERVDEB.AsFloat     := cdsProcessoApar.FieldByName('VLRTOTALINTERVDEB').AsFloat;
  cds0034DESCRICAOPAGTO.AsString       := cdsProcessoApar.FieldByName('DESCRICAOPAGTO').AsString;
  cds0034VLRDESPESA.AsFloat            := cdsProcessoApar.FieldByName('VLRDESPESA').AsFloat;
  cds0034VLRFRETEINTERNACIONAL.AsFloat := cdsProcessoApar.FieldByName('VLRFRETEINTERNACIONAL').AsFloat;
  cds0034VLRTOTALINTERVDEB.AsFloat     := cdsProcessoApar.FieldByName('VLRTOTALINTERVDEB').AsFloat;
  cds0034SIGLAGRUPO.AsString           := cdsProcessoComp.FieldByName('SIGLAGRUPO').AsString;
  cds0034VENDEDORID.AsString           := cdsProcessoVend.FieldByName('NOMEVENDEDOR').AsString;
  cds0034.Post;

  Totais;

  inc( SequenciaId );
  cdsProcessoApar.Next;
  cdsProcessoVend.Next;

  while not cdsProcessoApar.Eof do
  begin
   cds0034.Insert;
   cds0034PEDVENDID.AsString            := cdsProcesso.FieldByName('PEDVENDID').AsString;
   cds0034SEQUENCIAID.AsInteger         := SequenciaId;
   cds0034MODELOID.AsString             := cdsProcessoApar.FieldByName('MODELOID').AsString;
   cds0034VLRFOBREVENDA.AsFloat         := cdsProcessoApar.FieldByName('VLRFOBREVENDA').AsFloat;
   cds0034VLRCOMISSAO.AsFloat           := cdsProcessoApar.FieldByName('VLRCOMISSAO').AsFloat;
   cds0034VLRDESPESA.AsFloat            := cdsProcessoApar.FieldByName('VLRDESPESA').AsFloat;
   cds0034VLRFRETEINTERNACIONAL.AsFloat := cdsProcessoApar.FieldByName('VLRFRETEINTERNACIONAL').AsFloat;

   Totais;

   if not cdsProcessoVend.Eof then
      cds0034VENDEDORID.AsString := cdsProcessoVend.FieldByName('NOMEVENDEDOR').AsString;

   cds0034.Post;
   inc( SequenciaId );
   cdsProcessoVend.Next;
   cdsProcessoApar.Next;
  end;

  while not cdsProcessoVend.Eof do
  begin
   cds0034.Insert;
   cds0034PEDVENDID.AsString            := cdsProcesso.FieldByName('PEDVENDID').AsString;
   cds0034SEQUENCIAID.AsInteger         := SequenciaId;
   cds0034VLRDESPESA.AsFloat            := cdsProcesso.FieldByName('VLRDESPESA').AsFloat;
   cds0034VENDEDORID.AsString           := cdsProcessoVend.FieldByName('NOMEVENDEDOR').AsString;
   cds0034VLRFRETEINTERNACIONAL.AsFloat := cdsProcesso.FieldByName('VLRFRETEINTERNACIONAL').AsFloat;
   cds0034.Post;

   inc( SequenciaId );
   cdsProcessoVend.Next;
  end;
  cdsProcesso.Next;
 end;
end;

procedure Tfrm0034.Totais;
begin
 if Trim( cds0034SIGLAGRUPO.AsString ) = 'XR' then
     begin
      nTRX1 := nTRX1 + cds0034VLRFOBREVENDA.AsFloat;
      nTRX3 := nTRX3 + cds0034VLRCOMISSAO.AsFloat;
      nTRX4 := nTRX4 + cds0034VLRTOTALINTERVDEB.AsFloat + cds0034VLRTOTALINTERVCRED.AsFloat;
     end;

 if Trim( cds0034SIGLAGRUPO.AsString ) = 'UL' then
    begin
      nTUS1 := nTUS1 + cds0034VLRFOBREVENDA.AsFloat;
      nTUS3 := nTUS3 + cds0034VLRCOMISSAO.AsFloat;
      nTUS4 := nTUS4 + cds0034VLRTOTALINTERVDEB.AsFloat + cds0034VLRTOTALINTERVCRED.AsFloat;
    end;

 if Trim( cds0034SIGLAGRUPO.AsString ) = 'CT' then
    begin
     nTCT1 := nTCT1 + cds0034VLRFOBREVENDA.AsFloat;
     nTCT3 := nTCT3 + cds0034VLRCOMISSAO.AsFloat;
     nTCT4 := nTCT4 + cds0034VLRTOTALINTERVDEB.AsFloat + cds0034VLRTOTALINTERVCRED.AsFloat;
    end;

 if Trim( cds0034SIGLAGRUPO.AsString ) = 'MR' then
    begin
     nTMR1 := nTMR1 + cds0034VLRFOBREVENDA.AsFloat;
     nTMR3 := nTMR3 + cds0034VLRCOMISSAO.AsFloat;
     nTMR4 := nTMR4 + cds0034VLRTOTALINTERVDEB.AsFloat + cds0034VLRTOTALINTERVCRED.AsFloat;
    end;
end;

procedure Tfrm0034.FormCreate(Sender: TObject);
var ParamSQL : String;
begin
 wwDBDateTimePicker1.Date := FirstDayOfMonth(  pCnnMain.AppServer.iServerDate );
 wwDBDateTimePicker2.Date := LastDayOfMonth( pCnnMain.AppServer.iServerDate ) ;

 ParamSQL := 'SELECT EF_ENTIDADE.ENTIDADEID,EF_ENTIDADE.NOMEFANTASIA NOMEVENDEDOR, EF_ENTIDADEGRUPO.CATEGORIAID'+
             '  FROM EF_ENTIDADE,'+
             '       EF_ENTIDADEGRUPO'+
             ' WHERE EF_ENTIDADEGRUPO.ENTIDADEID = EF_ENTIDADE.ENTIDADEID'+
             '   AND EF_ENTIDADEGRUPO.CATEGORIAID = 6';

 AdicionarCamposCombo( cmbVendedor, ParamSQL,'NOMEVENDEDOR' );

 ParamSQL := Select_Modelo +
             '   AND PP_CATALOGO.TIPO = ''A''';

 try
  ExecDynamicProvider(-1, ParamSQL, cdsApar );

 except on
  E : Exception do
  raise Exception.Create( e.Message );
 end;
end;



procedure Tfrm0034.RadioGroup1Click(Sender: TObject);
begin
 //Vendedor
 if RadioGroup1.ItemIndex = 4 then
    begin
     GroupBox2.Enabled := True;
     cmbVendedor.Color := clWhite;
    end
 else
   begin
    GroupBox2.Enabled := False;
    cmbVendedor.Color := clInactiveBorder;
    cmbVendedor.ItemIndex := -1
   end;

 //Aparelho
 if RadioGroup1.ItemIndex = 3 then
    begin
     GroupBox3.Enabled := True;
     cmbTipo.Color := clWhite;
     Edit1.Color   := clWhite;
     DBGrid1.Color     := clWhite;
     ListBox1.Color    := clWhite;
    end
 else
    begin
     GroupBox3.Enabled := False;
     cmbTipo.Color     := clInactiveBorder;
     Edit1.Color       := clInactiveBorder;
     DBGrid1.Color     := clInactiveBorder;
     ListBox1.Color    := clInactiveBorder;
    end;
end;

procedure Tfrm0034.ImprimeEmbarqueVend( var cdsProcesso,cdsProcessoApar, cdsProcessoVend : TClientDataSet );
var SequenciaId  : Integer;
    Mostrar      : Boolean;
begin
 SequenciaId := 1;
 Mostrar     := False;

 cdsProcesso.First;
 cdsProcessoApar.First;

 while not cdsProcesso.Eof do
 begin
  if cdsProcesso.FieldByName('CANCELADO').AsInteger = 1 then
     begin
      cdsProcesso.Next;
      Continue;
     end;

  cdsProcessoVend.First;
  while not cdsProcessoVend.Eof do
  begin
   Mostrar := True;
   break;
  end;

  if not Mostrar then
     begin
      cdsProcesso.Next;
      Continue;
     end;

  cds0034.Insert;
  cds0034PEDVENDID.AsString            := cdsProcesso.FieldByName('PEDVENDID').AsString;
  cds0034SEQUENCIAID.AsInteger         := SequenciaId;
  cds0034EMBDATA.AsDateTime            := cdsProcesso.FieldByName('EMBDATA').AsDateTime;
  cds0034PONXID.AsString               := cdsProcesso.FieldByName('PONXID').AsString;
  cds0034CLIENTEID.AsInteger           := cdsProcesso.FieldByName('CLIENTEID').AsInteger;
  cds0034NOMECLIENTE.AsString          := cdsProcesso.FieldByName('NOMECLIENTE').AsString;
  cds0034PRACA.AsString                := cdsProcesso.FieldByName('PRACA').AsString ;
  cds0034MODELOID.AsString             := cdsProcessoApar.FieldByName('MODELOID').AsString;
  cds0034VLRFOBREVENDA.AsFloat         := cdsProcessoApar.FieldByName('VLRFOBREVENDA').AsFloat;
  cds0034VLRCOMISSAO.AsFloat           := cdsProcessoApar.FieldByName('VLRCOMISSAO').AsFloat;
  cds0034VLRTOTALINTERVDEB.AsFloat     := cdsProcesso.FieldByName('VLRTOTALINTERVDEB').AsFloat;
  cds0034VLRTOTALINTERVCRED.AsFloat    := cdsProcesso.FieldByName('VLRTOTALINTERVCRED').AsFloat;
  cds0034VLRTOTALINTERVDEB.AsFloat     := cdsProcessoApar.FieldByName('VLRTOTALINTERVDEB').AsFloat;
  cds0034DESCRICAOPAGTO.AsString       := cdsProcessoApar.FieldByName('DESCRICAOPAGTO').AsString;
  cds0034VLRDESPESA.AsFloat            := cdsProcessoApar.FieldByName('VLRDESPESA').AsFloat;
  cds0034VLRFRETEINTERNACIONAL.AsFloat := cdsProcessoApar.FieldByName('VLRFRETEINTERNACIONAL').AsFloat;
  cds0034VLRTOTALINTERVDEB.AsFloat     := cdsProcessoApar.FieldByName('VLRTOTALINTERVDEB').AsFloat;
  cds0034VENDEDORID.AsString           := cdsProcessoVend.FieldByName('NOMEVENDEDOR').AsString;
  cds0034.Post;

  inc( SequenciaId );
  cdsProcessoApar.Next;
  cdsProcessoVend.Next;

  while not cdsProcessoApar.Eof do
  begin
   cds0034.Insert;
   cds0034PEDVENDID.AsString            := cdsProcesso.FieldByName('PEDVENDID').AsString;
   cds0034SEQUENCIAID.AsInteger         := SequenciaId;
   cds0034MODELOID.AsString             := cdsProcessoApar.FieldByName('MODELOID').AsString;
   cds0034VLRFOBREVENDA.AsFloat         := cdsProcessoApar.FieldByName('VLRFOBREVENDA').AsFloat;
   cds0034VLRCOMISSAO.AsFloat           := cdsProcessoApar.FieldByName('VLRCOMISSAO').AsFloat;
   cds0034VLRDESPESA.AsFloat            := cdsProcessoApar.FieldByName('VLRDESPESA').AsFloat;
   cds0034VLRFRETEINTERNACIONAL.AsFloat := cdsProcessoApar.FieldByName('VLRFRETEINTERNACIONAL').AsFloat;

   if not cdsProcessoVend.Eof then
      cds0034VENDEDORID.AsString := cdsProcessoVend.FieldByName('NOMEVENDEDOR').AsString;

   cds0034.Post;
   inc( SequenciaId );
   cdsProcessoApar.Next;
  end;

  while not cdsProcessoVend.Eof do
  begin
   cds0034.Insert;
   cds0034PEDVENDID.AsString            := cdsProcesso.FieldByName('PEDVENDID').AsString;
   cds0034SEQUENCIAID.AsInteger         := SequenciaId;
   cds0034VLRDESPESA.AsFloat            := cdsProcesso.FieldByName('VLRDESPESA').AsFloat;
   cds0034VENDEDORID.AsString           := cdsProcessoVend.FieldByName('NOMEVENDEDOR').AsString;
   cds0034VLRFRETEINTERNACIONAL.AsFloat := cdsProcesso.FieldByName('VLRFRETEINTERNACIONAL').AsFloat;
   cds0034.Post;

   inc( SequenciaId );
   cdsProcessoVend.Next;
  end;
  Mostrar := False;

  cdsProcessoVend.Next;
  cdsProcesso.Next;
 end;

end;

procedure Tfrm0034.DBGrid1DblClick(Sender: TObject);
begin
 ListBox1.Items.Add( cdsApar.FieldByName('MODELOID').AsString );
end;

procedure Tfrm0034.Edit1Change(Sender: TObject);
begin
 cdsApar.Locate( cdsApar.Fields[0].FieldName , TEdit( Sender ).Text, [loPartialKey,loCaseInsensitive] );
end;

procedure Tfrm0034.GeraSQLAparelho( var iSQLApar: String );
var i : Integer;
begin
 if ListBox1.Count > 0 then
    begin
     iSQLApar := iSQLApar + ' AND ( PP_PEDVENDITEM.MODELOID = '+ QuotedStr( ListBox1.Items.Strings[0] );
     for i := 1 to ListBox1.Count -1 do
       iSQLApar := iSQLApar + ' OR PP_PEDVENDITEM.MODELOID = '+ QuotedStr(  ListBox1.Items.Strings[i] );

     iSQLApar := iSQLApar+       ' )';
    end
 else
    raise Exception.Create('Não há Aparelhos Selecionados!');
end;

procedure Tfrm0034.BitBtn4Click(Sender: TObject);
begin
 ListBox1.Clear;
end;

procedure Tfrm0034.ImprimeEmbarqueApar(var cdsProcesso, cdsProcessoApar,
  cdsProcessoVend : TClientDataSet);
var SequenciaId  : Integer;
    Mostrar      : Boolean;
begin
 SequenciaId := 1;
 Mostrar     := False;

 cdsProcesso.First;

 while not cdsProcesso.Eof do
 begin
  if cdsProcesso.FieldByName('CANCELADO').AsInteger = 1 then
     begin
      cdsProcesso.Next;
      Continue;
     end;

 cdsProcessoVend.First;
 cdsProcessoApar.First;
 if not cdsProcessoApar.IsEmpty  then
    Mostrar := True;

 if not Mostrar then
    begin
     cdsProcesso.Next;
     Continue;
    end;

  cds0034.Insert;
  cds0034PEDVENDID.AsString            := cdsProcesso.FieldByName('PEDVENDID').AsString;
  cds0034SEQUENCIAID.AsInteger         := SequenciaId;
  cds0034EMBDATA.AsDateTime            := cdsProcesso.FieldByName('EMBDATA').AsDateTime;
  cds0034PONXID.AsString               := cdsProcesso.FieldByName('PONXID').AsString;
  cds0034CLIENTEID.AsInteger           := cdsProcesso.FieldByName('CLIENTEID').AsInteger;
  cds0034NOMECLIENTE.AsString          := cdsProcesso.FieldByName('NOMECLIENTE').AsString;
  cds0034PRACA.AsString                := cdsProcesso.FieldByName('PRACA').AsString ;
  cds0034DESCRICAOPAGTO.AsString       := cdsProcessoApar.FieldByName('DESCRICAOPAGTO').AsString;
  cds0034VENDEDORID.AsString           := cdsProcessoVend.FieldByName('NOMEVENDEDOR').AsString;
  cds0034VLRDESPESA.AsFloat            := cdsProcessoApar.FieldByName('VLRDESPESA').AsFloat;

  while not cdsProcessoApar.Eof do
  begin
   if cds0034.State <> dsInsert then
      begin
       cds0034.Insert;
       cds0034PEDVENDID.AsString            := cdsProcesso.FieldByName('PEDVENDID').AsString;
       cds0034SEQUENCIAID.AsInteger         := SequenciaId;
      end;

   cds0034MODELOID.AsString             := cdsProcessoApar.FieldByName('MODELOID').AsString;
   cds0034VLRFOBREVENDA.AsFloat         := cdsProcessoApar.FieldByName('VLRFOBREVENDA').AsFloat;
   cds0034VLRCOMISSAO.AsFloat           := cdsProcessoApar.FieldByName('VLRCOMISSAO').AsFloat;
   cds0034VLRDESPESA.AsFloat            := cdsProcessoApar.FieldByName('VLRDESPESA').AsFloat;

   if not cdsProcessoVend.Eof then
      cds0034VENDEDORID.AsString := cdsProcessoVend.FieldByName('NOMEVENDEDOR').AsString;

   cds0034.Post;
   inc( SequenciaId );
   cdsProcessoVend.Next;
   cdsProcessoApar.Next;
  end;

  while not cdsProcessoVend.Eof do
  begin
   cds0034.Insert;
   cds0034PEDVENDID.AsString            := cdsProcesso.FieldByName('PEDVENDID').AsString;
   cds0034SEQUENCIAID.AsInteger         := SequenciaId;
   cds0034VLRDESPESA.AsFloat            := cdsProcesso.FieldByName('VLRDESPESA').AsFloat;
   cds0034VENDEDORID.AsString           := cdsProcessoVend.FieldByName('NOMEVENDEDOR').AsString;
   cds0034.Post;

   inc( SequenciaId );
   cdsProcessoVend.Next;
  end;

  Mostrar := False;
  cdsProcesso.Next;
 end;
end;

procedure Tfrm0034.cmbTipoClick(Sender: TObject);
var iSQL : String;
begin
 if TCombobox( sender ).Text = 'Aparelho' then
    iSQL := Select_Modelo+
         '   AND PP_CATALOGO.TIPO = ''A'''
 else
    iSQL := Select_Modelo+
         '   AND PP_CATALOGO.TIPO = ''C''';
 try
  ExecDynamicProvider( -1,iSQL,cdsApar );
  
 except on
  E : Exception do
  raise Exception.Create( E.Message );
 end;
end;

end.
