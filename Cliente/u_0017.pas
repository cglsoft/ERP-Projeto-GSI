unit u_0017;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, Buttons, ComCtrls, DBClient, DB;

type
  Tfrm0017 = class(TForm)
    Panel23: TPanel;
    Label59: TLabel;
    GroupBox1: TGroupBox;
    Periodo: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    MaskEdit4: TMaskEdit;
    MaskEdit3: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    MaskEdit5: TMaskEdit;
    Panel11: TPanel;
    lblContador: TLabel;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    StatusBar1: TStatusBar;
    ds0017: TDataSource;
    BitBtn4: TBitBtn;
    cds0017: TClientDataSet;
    cds0017EMPRESAID: TBCDField;
    cds0017NOTAID: TBCDField;
    cds0017TIPO: TStringField;
    cds0017DATANOTA: TSQLTimeStampField;
    cds0017NOME: TStringField;
    cds0017CODIGONOTA: TBCDField;
    cds0017CFOP: TStringField;
    cds0017DESCRICAOOPERACAO: TStringField;
    cds0017CUSTO: TFMTBCDField;
    cds0017CUSTOUNITARIO: TFMTBCDField;
    cds0017QUANTIDADE: TFMTBCDField;
    cds0017VLRICMS: TBCDField;
    cds0017VLRIPI: TBCDField;
    cds0017PRODUTOID: TBCDField;
    cds0017DESCRICAOPRODUTO: TStringField;
    cds0017OSID: TStringField;
    cds0017SUBGRUPO: TStringField;
    cds0017GRUPOID: TStringField;
    cds0017PAIS: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure AbreNFe( var cds : TClientDataSet );
    procedure AbreNfeItem( var cds : TClientDataSet );
    procedure AbreNFs;
    procedure RetornaKardex( var cds : TClientDataSet; TipoDoc,NumDoc,ProdutoId,TipoOperacao,TipoEstoque, Qtd : String; ItemID : Integer );
    procedure InsereNota( cdsPai,cdsFilho,cdsAuxKardex : TClientDataSet );
  public
    { Public declarations }
  end;

var
  frm0017: Tfrm0017;

implementation

uses FuncoesCliente, u_Rel0017, u_Exportar;
{$R *.dfm}

procedure Tfrm0017.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 cds0017.Close;
 action  := cafree;
 frm0017 := nil;
end;

procedure Tfrm0017.BitBtn3Click(Sender: TObject);
begin
 frm0017.Close;
end;

procedure Tfrm0017.AbreNFe(var cds: TClientDataSet);
var iSQL : String;
begin
 cds := nil;
 iSQL := 'SELECT'+
         '  EF_NFE.EMPRESAID,'+
         '  EF_NFE.NFEID,'+
         '  EF_NFE.DATAEMISSAOID,'+
         '  EF_NFE.DATAENTRADA,'+
         '  EF_NFE.NOME,'+
         '  EF_NFE.ENTIDADEID,'+
         '  EF_NFE.OSID,'+
         '  EF_ENTIDADE.PAIS,'+
         '  EF_NATUREZAOP.CFOP,'+
         '  EF_NATUREZAOP.DESCRICAOOPERACAONOTA,'+
         '  EF_NATUREZAOP.NATUREZAOPID,'+
         '  EF_NATUREZAOP.MOVIMENTOESTOQUE'+
         '  FROM'+
         '  EF_NFE,'+
         '  EF_ENTIDADE,' +
         '  EF_NATUREZAOP,'+
         '  EF_SIGLANATUREZA'+
         ' WHERE'+
         '  EF_NFE.NATUREZAOPID = EF_NATUREZAOP.NATUREZAOPID'+
         '  AND EF_NFE.ENTIDADEID =  EF_ENTIDADE.ENTIDADEID' +  
         '  AND EF_SIGLANATUREZA.SIGLANATUREZAID(+) = EF_NATUREZAOP.SIGLANATUREZAID'+
         '  AND EF_NATUREZAOP.MOVIMENTOESTOQUE <> '+ QuotedStr('E')+
         '  AND EF_NFE.EMPRESAID = '+ IntToStr( EmpresaAtualId )+
         '  AND EF_NFE.DATAENTRADA BETWEEN '+ QuotedStr( MaskEdit1.Text ) +
         '  AND '+ QuotedStr( MaskEdit2.Text );

 if MaskEdit5.Text <> '' then
    iSQL := iSQL + ' AND EF_SIGLANATUREZA.DESCRICAORESUMIDA = '+ QuotedStr( MaskEdit5.Text );

 try
  ExecDynamicProvider( -1,iSQL,cds );

 except on
  E : Exception do
  raise Exception.Create(E.Message);
 end;

 cds.AddIndex('idx1','EMPRESAID;NFEID;DATAEMISSAOID',[ixPrimary],'','',0 );
 cds.IndexName := 'idx1';
end;

procedure Tfrm0017.BitBtn1Click(Sender: TObject);
var cdsAuxNfe,cdsAuxNfeItem,cdsAuxKardex : TClientDataSet;
    Contador : Integer;

begin
 cds0017.EmptyDataSet;
 Contador := 1;
 lblContador.Caption := IntToStr( Contador );

 AbreNFe( cdsAuxNfe );
 AbreNfeItem( cdsAuxNfeItem );

 cdsAuxNfe.First;
 while not cdsAuxNfe.Eof do
 begin
  cdsAuxNfeitem.Filter   := 'EMPRESAID = '+ cdsAuxNfe.FieldByName('EMPRESAID').AsString +
                            ' AND NFEID = '+ cdsAuxNfe.FieldByName('NFEID').AsString +
                            ' AND DATAEMISSAOID = '+ QuotedStr( cdsAuxNfe.FieldByName('DATAEMISSAOID').AsString );
  cdsAuxNfeItem.Filtered := True;

  cdsAuxNfeItem.First;
  while not cdsAuxNfeItem.Eof do
  begin
   RetornaKardex( cdsAuxKardex,'NFE',cdsAuxNfe.FieldByName('NFEID').Value,
                               cdsAuxNfeItem.FieldByName('PRODUTOID').Value,'E','FIS',
                               cdsAuxNfeItem.FieldByName('QUANTIDADE').Value,
                               cdsAuxNfeItem.FieldByName('ITEMID').AsInteger );


   if not cdsAuxKardex.IsEmpty then
      InsereNota( cdsAuxNfe,cdsAuxNfeItem,cdsAuxKardex );

   // Pesquisando por Notas de Terceiros
   RetornaKardex( cdsAuxKardex,'NF3',cdsAuxNfe.FieldByName('NFEID').Value,
                               cdsAuxNfeItem.FieldByName('PRODUTOID').Value,'E','FIS',
                               cdsAuxNfeItem.FieldByName('QUANTIDADE').Value,
                               cdsAuxNfeItem.FieldByName('ITEMID').AsInteger );
   if not cdsAuxKardex.IsEmpty then
      InsereNota( cdsAuxNfe,cdsAuxNfeItem,cdsAuxKardex );

   cdsAuxNfeItem.Next;
   Inc( Contador );
   lblContador.Caption := IntToStr( Contador );
  end;
  cdsAuxNfe.Next;
 end;
 cdsAuxNfe.Close;
 cdsAuxNfeItem.Close;

 try
  cds0017.IndexFieldNames := 'NOTAID;DATANOTA';
  cdsAuxNfe.Close;
  cdsAuxNfeItem.Close;

  frmRel0017 := TfrmRel0017.Create(nil);
  frmRel0017.QuickRep1.Preview;
 finally
  FreeAndNil( frmRel0017.QuickRep1 );
  FreeAndNil( frmRel0017 );
 end;

end;

procedure Tfrm0017.AbreNfeItem( var cds : TClientDataSet );
var iSQL : String;
begin
 cds := nil;
 iSQL := 'SELECT'+
         '  EF_NFEITEM.EMPRESAID,'+
         '  EF_NFEITEM.NFEID,'+
         '  EF_NFEITEM.DATAEMISSAOID,'+
         '  EF_NFEITEM.ITEMID,'+
         '  EF_NFEITEM.QUANTIDADE,'+
         '  EF_NATUREZAOP.NATUREZAOPID,'+
         '  EF_NATUREZAOP.MOVIMENTOESTOQUE,'+
         '  EF_NFEITEM.VLRICMS,'+
         '  EF_NFEITEM.VLRIPI,'+
         '  EF_NFEITEM.PRODUTOID,'+
         '  EF_PRODUTO.DESCRICAOPORTUGUES,'+
         '  EF_GRUPO.SIGLAGRUPO SIGLAGRUPOGRUPO,'+
         '  EF_SUBGRUPO.SIGLAGRUPO'+
         '  FROM'+
         '  EF_NFE,'+
         '  EF_NFEITEM,'+
         '  EF_NATUREZAOP,'+
         '  EF_SIGLANATUREZA,'+
         '  EF_SUBGRUPO,'+
         '  EF_PRODUTO,'+
         '  EF_GRUPO'+
         ' WHERE'+
         '  EF_NFE.NATUREZAOPID = EF_NATUREZAOP.NATUREZAOPID'+
         '  AND EF_SIGLANATUREZA.SIGLANATUREZAID(+) = EF_NATUREZAOP.SIGLANATUREZAID'+
         '  AND EF_NFEITEM.EMPRESAID = EF_NFE.EMPRESAID'+
         '  AND EF_NFEITEM.NFEID = EF_NFE.NFEID'+
         '  AND EF_NFEITEM.DATAEMISSAOID = EF_NFE.DATAEMISSAOID'+
         '  AND EF_PRODUTO.EMPRESAID = EF_NFEITEM.EMPRESAID '+
         '  AND EF_PRODUTO.PRODUTOID = EF_NFEITEM.PRODUTOID '+
         '  AND EF_PRODUTO.GRUPOID = EF_GRUPO.GRUPOID(+)'+
         '  AND EF_SUBGRUPO.SUBGRUPOID = EF_PRODUTO.SUBGRUPOID '+
         '  AND EF_NATUREZAOP.MOVIMENTOESTOQUE <> '+ QuotedStr('E')+
         '  AND EF_NFE.EMPRESAID = '+ IntToStr( EmpresaAtualId )+
         '  AND EF_NFEITEM.PRODUTOID >= '+ MaskEdit3.Text +
         '  AND EF_NFEITEM.PRODUTOID <= '+ MaskEdit4.Text +
         '  AND EF_NFE.DATAENTRADA BETWEEN '+ QuotedStr( MaskEdit1.Text ) +
         '  AND '+ QuotedStr( MaskEdit2.Text );

 if MaskEdit5.Text <> '' then
    iSQL := iSQL + ' AND EF_SIGLANATUREZA.DESCRICAORESUMIDA = '+ QuotedStr( MaskEdit5.Text );

 try
  ExecDynamicProvider( -1,iSQL,cds );
 except on
  E : Exception do
  raise Exception.Create(E.Message);
 end;

 cds.AddIndex('idx1','EMPRESAID;NFEID;DATAEMISSAOID',[ixPrimary],'','',0 );
 cds.IndexName := 'idx1';
end;

procedure Tfrm0017.RetornaKardex( var cds : TClientDataSet; TipoDoc,NumDoc,ProdutoId,TipoOperacao,TipoEstoque, Qtd : String; ItemID : Integer );
var iSQL : String;
begin
 cds := nil;
 iSQL := 'SELECT'+
         '  EF_KARDEX.EMPRESAID,'+
         '  EF_KARDEX.KARDEXID,'+
         '  EF_KARDEX.NUMDOCUMENTO,'+
         '  EF_KARDEX.DATAOCORRENCIA,'+
         '  EF_KARDEX.TIPODOCUMENTO,'+
         '  EF_KARDEX.PRODUTOID,'+
         '  EF_KARDEX.TIPOOPERACAO,'+
         '  EF_KARDEX.TIPOESTOQUE,'+
         '  EF_KARDEX.VLRCUSTOUNITARIO,'+
         '  EF_KARDEX.VLRCUSTOTOTAL, '+
         '  EF_KARDEX.QUANTIDADE '+
         '  FROM '+
         '  EF_KARDEX'+
         ' WHERE EF_KARDEX.EMPRESAID = '+  IntToStr( EmpresaAtualId )+
         '  AND EF_KARDEX.TIPODOCUMENTO = '+ QuotedStr( TipoDoc )+
         '  AND EF_KARDEX.NUMDOCUMENTO = '+ QuotedStr( NumDoc )+
         '  AND EF_KARDEX.PRODUTOID = '+ QuotedStr( ProdutoId )+
         '  AND EF_KARDEX.QUANTIDADE = '+ QuotedStr( Qtd )+
         '  AND EF_KARDEX.TIPOOPERACAO = '+ QuotedStr( TipoOperacao )+
         '  AND EF_KARDEX.TIPOESTOQUE = '+ QuotedStr( TipoEstoque );

         if ( NumDoc = '2217' ) or ( NumDoc = '196' ) then
            iSQL := iSQL + ' AND EF_KARDEX.ITEMID = ' + IntToStr( ItemID );


          iSQL := iSQL + ' ORDER BY EF_KARDEX.EMPRESAID, EF_KARDEX.KARDEXID';

 try
  ExecDynamicProvider( -1,iSQL,cds );
 except on
  E : Exception do
  raise Exception.Create(E.Message);
 end;
end;

procedure Tfrm0017.AbreNFs;
var iSQL : String;
begin
 iSQL :=  'SELECT EF_NFS.EMPRESAID,' +
          '       EF_NFS.NFSID NOTAID,' +
          '       EF_KARDEX.TIPOOPERACAO TIPO,' +
          '       EF_NFS.DATAEMISSAOID DATANOTA,' +
          '       EF_NFS.NOME,' +
          '       EF_NFS.ENTIDADEID CODIGONOTA,' +
          '       EF_NATUREZAOP.CFOP,' +
          '       EF_ENTIDADE.PAIS,' +
          '       EF_NATUREZAOP.DESCRICAOOPERACAONOTA DESCRICAOOPERACAO,' +
          '       EF_KARDEX.VLRCUSTOTOTAL CUSTO,' +
          '       EF_KARDEX.VLRCUSTOUNITARIO CUSTOUNITARIO,' +
          '       EF_NFSITEM.QUANTIDADE,' +
          '       EF_NFSITEM.VLRICMS,' +
          '       EF_NFSITEM.VLRIPI,' +
          '       EF_NFSITEM.PRODUTOID,' +
          '       EF_PRODUTO.DESCRICAOPORTUGUES DESCRICAOPRODUTO,' +
          '       EF_NFS.OSID,' +
          '       EF_SUBGRUPO.SIGLAGRUPO SUBGRUPO,' +
          '       EF_GRUPO.SIGLAGRUPO GRUPOID' +
          '  FROM EF_NFS,' +
          '       EF_NFSITEM,' +
          '       EF_NATUREZAOP,' +
          '       EF_PRODUTO,' +
          '       EF_GRUPO,' +
          '       EF_SIGLANATUREZA,' +
          '       EF_SUBGRUPO,' +
          '       EF_KARDEX,' +
          '       EF_ENTIDADE' +
          ' WHERE EF_NFS.NATUREZAOPID = EF_NATUREZAOP.NATUREZAOPID' +
          '   AND EF_SIGLANATUREZA.SIGLANATUREZAID(+) = EF_NATUREZAOP.SIGLANATUREZAID' +
          '   AND EF_NFSITEM.EMPRESAID = EF_NFS.EMPRESAID' +
          '   AND EF_NFSITEM.NFSID = EF_NFS.NFSID' +
          '   AND EF_NFSITEM.DATAEMISSAOID = EF_NFS.DATAEMISSAOID' +
          '   AND EF_PRODUTO.EMPRESAID = EF_NFSITEM.EMPRESAID' +
          '   AND EF_PRODUTO.PRODUTOID = EF_NFSITEM.PRODUTOID' +
          '   AND EF_PRODUTO.GRUPOID = EF_GRUPO.GRUPOID(+)' +
          '   AND EF_SUBGRUPO.SUBGRUPOID = EF_PRODUTO.SUBGRUPOID' +
          '   AND EF_NFS.ENTIDADEID =  EF_ENTIDADE.ENTIDADEID ' + 
          '  AND EF_NATUREZAOP.MOVIMENTOESTOQUE <> '+ QuotedStr('E')+
          '  AND EF_NATUREZAOP.MOVIMENTOESTOQUE <> '+ QuotedStr('D')+
          '  AND EF_NFS.EMPRESAID = '+ IntToStr( EmpresaAtualId )+
          '  AND EF_NFS.DATAEMISSAOID BETWEEN '+ QuotedStr( MaskEdit1.Text ) +
          '  AND '+ QuotedStr( MaskEdit2.Text ) +
          '  AND EF_NFSITEM.PRODUTOID BETWEEN ' + MaskEdit3.Text +
          '  AND '+ MaskEdit4.Text;

  if MaskEdit5.Text <> '' then
    iSQL := iSQL + ' AND EF_SIGLANATUREZA.DESCRICAORESUMIDA = '+ QuotedStr( MaskEdit5.Text );

  iSQL := iSQL + '   /* Kardex */' +
                 '   AND EF_KARDEX.EMPRESAID(+) = EF_NFSITEM.EMPRESAID' +
                 '   AND EF_KARDEX.TIPODOCUMENTO(+) = ''NFS''' +
                 '   AND EF_KARDEX.NUMDOCUMENTO(+) = EF_NFSITEM.NFSID' +
                 '   AND EF_KARDEX.PRODUTOID(+) = EF_NFSITEM.PRODUTOID' +
                 '   AND EF_KARDEX.QUANTIDADE(+) = EF_NFSITEM.QUANTIDADE' +
                 '   AND EF_NFSITEM.ITEMID = DECODE( NVL(EF_KARDEX.ITEMID,0), 0, EF_NFSITEM.ITEMID, EF_KARDEX.ITEMID )'+
                 '   AND EF_KARDEX.TIPOOPERACAO(+) = ''S''' +
                 '   AND EF_KARDEX.TIPOESTOQUE(+) = ''FIS''';
 try
  ExecDynamicProvider( -1,iSQL,cds0017 );
 except on
  E : Exception do
  raise Exception.Create(E.Message);
 end;
end;

procedure Tfrm0017.BitBtn2Click(Sender: TObject);
begin
 if not cds0017.IsEmpty then
    begin
     frmExportar := TfrmExportar.Create(nil);
     frmExportar.DataSource := ds0017;
     frmExportar.Show;
    end
 else
    MessageDlg('É necessário Gerar o Relatório primeiro!',mtWarning, [mbok],0 );
end;

procedure Tfrm0017.InsereNota( cdsPai,cdsFilho,cdsAuxKardex : TClientDataSet );
begin
 cdsAuxKardex.Last;
 cds0017.Insert;
 cds0017EMPRESAID.Value            := cdsPai.FieldByName('EMPRESAID').Value;
 cds0017NOTAID.Value               := cdsPai.FieldByName('NFEID').Value;
 cds0017TIPO.Value                 := 'E';
 cds0017DATANOTA.Value             := cdsPai.FieldByName('DATAENTRADA').AsSQLTimeStamp;
 cds0017NOME.AsString              := cdsPai.FieldByName('NOME').AsString;
 cds0017PAIS.AsString              := cdsPai.FieldByName('PAIS').AsString;
 cds0017CODIGONOTA.Value           := cdsPai.FieldByName('ENTIDADEID').Value;
 cds0017CFOP.Value                 := cdsPai.FieldByName('CFOP').Value;
 cds0017DESCRICAOOPERACAO.AsString := cdsPai.FieldByName('DESCRICAOOPERACAONOTA').AsString;
 cds0017CUSTO.AsFloat                := cdsAuxKardex.FieldByName('VLRCUSTOUNITARIO').AsFloat * cdsAuxKardex.FieldByName('QUANTIDADE').AsFloat;
 cds0017CUSTOUNITARIO.Value        := cdsAuxKardex.FieldByName('VLRCUSTOUNITARIO').AsBCD;
 cds0017QUANTIDADE.AsFloat           := cdsAuxKardex.FieldByName('QUANTIDADE').AsFloat;
 cds0017VLRICMS.Value              := cdsFilho.FieldByName('VLRICMS').AsFloat;
 cds0017VLRIPI.Value               := cdsFilho.FieldByName('VLRIPI').AsFloat;
 cds0017PRODUTOID.Value            := cdsFilho.FieldByName('PRODUTOID').Value;
 cds0017DESCRICAOPRODUTO.AsString  := cdsFilho.FieldByName('DESCRICAOPORTUGUES').AsString;
 cds0017OSID.AsString              := cdsPai.FieldByName('OSID').AsString;
 cds0017SUBGRUPO.AsString          := cdsFilho.FieldByName('SIGLAGRUPO').AsString;
 cds0017GRUPOID.AsString           := cdsFilho.FieldByName('SIGLAGRUPOGRUPO').AsString;
 cds0017.Post;
end;

procedure Tfrm0017.BitBtn4Click(Sender: TObject);
begin
 try
  AbreNFs;
  cds0017.IndexFieldNames :=  'TIPO;PRODUTOID';

  frmRel0017 := TfrmRel0017.Create(nil);
  frmRel0017.QuickRep1.Preview;
 finally
  FreeAndNil( frmRel0017 );
 end;
end;

procedure Tfrm0017.FormCreate(Sender: TObject);
begin
 cds0017.CreateDataSet;
end;

end.
