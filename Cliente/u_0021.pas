unit u_0021;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, ComCtrls, Buttons, DB, DBClient,
  Grids, DBGrids;

type
  Tfrm0021 = class(TForm)
    Panel20: TPanel;
    Panel23: TPanel;
    Label59: TLabel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    Label7: TLabel;
    MaskEdit3: TMaskEdit;
    MaskEdit4: TMaskEdit;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    MaskEdit6: TMaskEdit;
    Label6: TLabel;
    MaskEdit5: TMaskEdit;
    RadioGroup1: TRadioGroup;
    StatusBar1: TStatusBar;
    Panel11: TPanel;
    lblContador: TLabel;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    ds0021: TDataSource;
    cds0021: TClientDataSet;
    cds0021REGISTROID: TIntegerField;
    cds0021NOTAID: TIntegerField;
    cds0021DATAEMISSAOID: TDateField;
    cds0021ITEMID: TIntegerField;
    cds0021PRODUTOID: TIntegerField;
    cds0021ENTIDADEID: TIntegerField;
    cds0021NOME: TStringField;
    cds0021CFOP: TStringField;
    cds0021DESCRICAO: TStringField;
    cds0021QUANTIDADE: TIntegerField;
    cds0021VLRTOTAL: TFloatField;
    cds0021VLRUNITARIO: TFloatField;
    cds0021RETORNO: TStringField;
    cds0021NOTAENTRADA: TIntegerField;
    cds0021DATANOTAENTRADA: TDateField;
    cds0021QTDRETORNAR: TIntegerField;
    cds0021TIPODESTINO: TStringField;
    cds0021F: TClientDataSet;
    cds0021FREGISTROID: TIntegerField;
    cds0021FPRODUTOID: TIntegerField;
    cds0021FNFEID: TIntegerField;
    cds0021FDATAEMISSAONFEID: TDateField;
    cds0021FNFSID: TIntegerField;
    cds0021FDATAEMISSAONFSID: TDateField;
    cds0021FQUANTIDADE: TIntegerField;
    ds0021F: TDataSource;
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
   procedure AbreNFS( var cds : TClientDataSet );
   procedure AbreNFSItem( var cds : TClientDataSet );
   procedure AbreNfe( var cds : TClientDataSet );
   procedure AbreKardex( var cds : TClientDataSet ); 
   procedure InicializaCds0021;
  public
    { Public declarations }
  end;

var
  frm0021: Tfrm0021;

implementation

uses FuncoesCliente, u_Rel0021, u_Exportar;

{$R *.dfm}

procedure Tfrm0021.BitBtn3Click(Sender: TObject);
begin
 frm0021.Close;
end;

procedure Tfrm0021.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action  := cafree;
 frm0021 := nil;
end;

procedure Tfrm0021.BitBtn1Click(Sender: TObject);
var x, x1            : Integer;
    cdsAuxNfs,cdsAuxNfsItem : TClientDataSet;
    cdsAuxKardex,cdsAuxNfe : TClientDataSet;
begin
  InicializaCds0021;
  x       := 1;
  x1      := 1;
  AbreNFS( cdsAuxNfs );
  AbreNFSItem( cdsAuxNfsItem );
  AbreNfe( cdsAuxNfe );
  AbreKardex( cdsAuxKardex );
  cdsAuxNfs.First;
  while not cdsAuxNfs.Eof do
  begin
   cdsAuxNfsItem.Filter := ' EMPRESAID = '+ cdsAuxNfs.FieldByName('EMPRESAID').AsString +
                           ' AND NFSID = '+ cdsAuxNfs.FieldByName('NFSID').AsString +
                           ' AND DATAEMISSAOID = '+ QuotedStr( cdsAuxNfs.FieldByName('DATAEMISSAOID').AsString ) ;
   cdsAuxNfsItem.Filtered := True;

   cdsAuxNfsItem.First;
   while not ( cdsAuxNfsItem.Eof ) do
   begin
    cds0021.Insert;
    inc( x );
    cds0021REGISTROID.Value           := x;
    cds0021NOTAID.AsInteger           := cdsAuxNfs.FieldByName('NFSID').AsInteger;
    cds0021DATAEMISSAOID.AsDateTime   := cdsAuxNfs.FieldByName('DATAEMISSAOID').AsDateTime;
    cds0021ITEMID.AsInteger           := cdsAuxNfsItem.FieldByName('ITEMID').AsInteger;
    cds0021PRODUTOID.AsInteger        := cdsAuxNfsItem.FieldByName('PRODUTOID').AsInteger;
    cds0021ENTIDADEID.AsInteger       := cdsAuxNfs.FieldByName('ENTIDADEID').AsInteger;
    cds0021NOME.AsString              := cdsAuxNfs.FieldByName('NOME').AsString;
    cds0021CFOP.Value                 := cdsAuxNfs.FieldByName('NATUREZAOPID').AsString;
    cds0021DESCRICAO.AsString         := cdsAuxNfsItem.FieldByName('DESCRICAOPORTUGUES').AsString;
    cds0021QUANTIDADE.AsString        := cdsAuxNfsItem.FieldByName('QUANTIDADE').AsString;
    cds0021VLRUNITARIO.AsFloat        := cdsAuxNfsItem.FieldByName('VLRPRECOUNITARIO').AsFloat;
    cds0021VLRTOTAL.AsFloat           := cdsAuxNfsItem.FieldByName('VLRPRECOTOTAL').Value;
    cds0021RETORNO.Value              := cdsAuxNfsItem.FieldByName('RETORNO').Value;
    cds0021NOTAENTRADA.Value          := cdsAuxNfsItem.FieldByName('NFEID').Value;
    cds0021DATANOTAENTRADA.AsDateTime := cdsAuxNfsItem.FieldByName('DATAEMISSAONFEID').Value;
    cds0021QTDRETORNAR.AsFloat        := cdsAuxNfsItem.FieldByName('QTDRETORNA').Value;
    cds0021.Post;
    lblContador.Caption := IntToStr( x1 );

    cdsAuxKardex.Filter   := ' EMPRESAID = '+ cdsAuxNfsItem.FieldByName('EMPRESAID').AsString +
                             ' AND PRODUTOID = '+ cdsAuxNfsItem.FieldByName('PRODUTOID').AsString +
                             ' AND TIPOOPERACAO <> '+ QuotedStr('E');
    cdsAuxKardex.Filtered := True;

    cdsAuxKardex.First;
    while not ( cdsAuxKardex.Eof ) do
    begin
     if ( not cdsAuxKardex.FieldByName('DATAOCORRENCIA').IsNull ) and
        ( not cdsAuxKardex.FieldByName('NUMDOCUMENTO').IsNull ) then
        begin
         cdsAuxNfe.Filter := ' EMPRESAID = '+ cdsAuxKardex.FieldByName('EMPRESAID').AsString +
                             ' AND NFEID = '+  cdsAuxKardex.FieldByName('NUMDOCUMENTO').AsString +
                             ' AND DATAEMISSAOID = '+ QuotedStr( cdsAuxKardex.FieldByName('DATAOCORRENCIA').AsString );
         cdsAuxNfe.Filtered := True;

         if not cdsAuxNfe.IsEmpty then
            if cdsAuxNfs.FieldByName('NFSID').AsString = cdsAuxNfe.FieldByName('NFSID').AsString then
               begin
                Inc( x1 );
                cds0021F.Insert;
                cds0021FREGISTROID.Value := x1;
                cds0021FNFSID.AsInteger             := cdsAuxNfe.FieldByName('NFSID').AsInteger;
                cds0021FDATAEMISSAONFSID.AsDateTime := cdsAuxNfe.FieldByName('DATAEMISSAONFSID').AsDateTime;
                cds0021FPRODUTOID.AsInteger         := cdsAuxKardex.FieldByName('PRODUTOID').AsInteger;
                cds0021FNFEID.AsInteger             := cdsAuxNfe.FieldByName('NFEID').AsInteger;
                cds0021FDATAEMISSAONFEID.AsDateTime := cdsAuxNfe.FieldByName('DATAEMISSAOID').AsDateTime;
                cds0021FQUANTIDADE.AsInteger        := cdsAuxKardex.FieldByName('QUANTIDADE').AsInteger;
                cds0021F.Post;
               end;
        end;         
     cdsAuxKardex.Next;
    end;
    cdsAuxNfsItem.Next;
   end;
   cdsAuxNfs.Next;
  end;

  try
   cds0021.IndexFieldNames := 'NOTAID;PRODUTOID';
   cds0021.First;
   cds0021F.First;
   frmRel0021 := TfrmRel0021.Create( nil );
   frmRel0021.QuickRep1.Preview;
  finally
   FreeAndNil( frmRel0021.QuickRep1 );
   FreeAndNil( frmRel0021 );
  end;
end;

procedure Tfrm0021.AbreNFS(var cds: TClientDataSet);
var iSQL : String;
begin
 cds := nil;
 iSQL := 'SELECT'+
         '  EF_NFS.EMPRESAID,'+
         '  EF_NFS.NFSID,'+
         '  EF_NFS.DATAEMISSAOID,'+
         '  EF_NFS.ENTIDADEID,'+
         '  EF_NFS.NOME,'+
         '  EF_NFS.OSID,'+
         '  EF_NFS.REQUISITANTE,'+
         '  EF_NFS.NATUREZAOPID,'+
         '  EF_NATUREZAOP.NATUREZAOPID,'+
         '  EF_NATUREZAOP.MOVIMENTOESTOQUE,'+
         '  EF_NFS.TIPONOTAENTRADA,'+
         '  EF_NFS.NFEID,'+
         '  EF_NFS.DATAEMISSAONFEID'+
         '  FROM'+
         '  EF_NFS,'+
         '  EF_NATUREZAOP'+
         ' WHERE'+
         '  EF_NFS.NATUREZAOPID = EF_NATUREZAOP.NATUREZAOPID'+
         '  AND EF_NFS.EMPRESAID = '+ IntToStr( EmpresaAtualId )+
         '  AND EF_NFS.DATAEMISSAOID >= '+ QuotedStr( MaskEdit1.Text )+
         '  AND EF_NFS.DATAEMISSAOID <= '+ QuotedStr( MaskEdit2.Text );

 if RadioGroup1.itemIndex = 0 then
    iSQL := iSQL + '  AND EF_NATUREZAOP.MOVIMENTOESTOQUE = '+ QuotedStr('E');

 if StrToInt( MaskEdit5.Text ) > 0 then
    iSQL := iSQL + '  AND EF_NFS.ENTIDADEID = '+ MaskEdit5.Text;


 if StrToInt( MaskEdit5.Text ) > 0 then
    iSQL := iSQL + ' AND EF_NFS.ENTIDADEID = '+ QuotedStr( MaskEdit5.Text );

 try
  ExecDynamicProvider( -1,iSQL,cds );
 except on
  E : Exception do
  raise Exception.Create(E.Message);
 end;

 cds.AddIndex('idx1','EMPRESAID;NFSID;DATAEMISSAOID',[ixPrimary],'','',0 );
 cds.IndexName := 'idx1';
end;

procedure Tfrm0021.AbreNFSItem(var cds: TClientDataSet );
var iSQL : String;
begin
 cds := nil;
 iSQL := 'SELECT'+
         '  EF_NFSITEM.EMPRESAID,'+
         '  EF_NFSITEM.NFSID,'+
         '  EF_NFSITEM.DATAEMISSAOID,'+
         '  EF_NFSITEM.ITEMID,'+
         '  EF_NFSITEM.VLRPRECOUNITARIO,'+
         '  EF_NFSITEM.VLRPRECOTOTAL,'+
         '  EF_NFSITEM.QUANTIDADE,'+
         '  EF_NFSITEM.RETORNO,'+
         '  EF_NFSITEM.NFEID,'+
         '  EF_NFSITEM.DATAEMISSAONFEID,'+
         '  EF_NFSITEM.QTDRETORNA,'+
         '  EF_NFSITEM.VLRBASEIPI,'+
         '  EF_NFSITEM.VLRIPI,'+
         '  EF_NFSITEM.ALIQUOTAIPI,'+
         '  EF_NFSITEM.VLRBASEICMS,'+
         '  EF_NFSITEM.VLRICMS,'+
         '  EF_NFSITEM.ALIQUOTAICMS,'+
         '  EF_NFSITEM.PRODUTOID,'+
         '  EF_PRODUTO.DESCRICAOPORTUGUES'+
         '  FROM '+
         '  EF_NFS,'+
         '  EF_NFSITEM, '+
         '  EF_PRODUTO,'+
         '  EF_NATUREZAOP'+
         ' WHERE'+
         '  EF_NFS.NATUREZAOPID = EF_NATUREZAOP.NATUREZAOPID'+
         '  AND EF_NFS.EMPRESAID = '+ IntToStr( EmpresaAtualId )+
         '  AND EF_NFS.DATAEMISSAOID >= '+ QuotedStr( MaskEdit1.Text )+
         '  AND EF_NFS.DATAEMISSAOID <= '+ QuotedStr( MaskEdit2.Text )+
         '  AND EF_NFSITEM.EMPRESAID = EF_NFS.EMPRESAID'+
         '  AND EF_NFSITEM.NFSID = EF_NFS.NFSID'+
         '  AND EF_NFSITEM.DATAEMISSAOID = EF_NFS.DATAEMISSAOID'+
         '  AND EF_PRODUTO.EMPRESAID = EF_NFSITEM.EMPRESAID'+
         '  AND EF_PRODUTO.PRODUTOID = EF_NFSITEM.PRODUTOID'+
         '  AND EF_NFSITEM.PRODUTOID >= '+ MaskEdit3.Text +
         '  AND EF_NFSITEM.PRODUTOID <= '+ MaskEdit4.Text;

 if RadioGroup1.itemIndex = 0 then
    iSQL := iSQL + '  AND EF_NATUREZAOP.MOVIMENTOESTOQUE = '+ QuotedStr('E');

 if StrToInt( MaskEdit5.Text ) > 0 then
    iSQL := iSQL + '  AND EF_NFS.ENTIDADEID = '+ MaskEdit5.Text;


 if StrToInt( MaskEdit5.Text ) > 0 then
    iSQL := iSQL + ' AND EF_NFS.ENTIDADEID = '+ QuotedStr( MaskEdit5.Text );

 try
  ExecDynamicProvider( -1,iSQL,cds );
 except on
  E : Exception do
  raise Exception.Create(E.Message);
 end;

 cds.AddIndex('idx1','EMPRESAID;NFSID;DATAEMISSAOID',[ixPrimary],'','',0 );
 cds.IndexName := 'idx1';
end;

procedure Tfrm0021.AbreKardex(var cds: TClientDataSet );
var iSQL : String;
begin
 cds  := nil;
 iSQL := 'SELECT'+
         '  EF_KARDEX.EMPRESAID,'+
         '  EF_KARDEX.KARDEXID,'+
         '  EF_KARDEX.PRODUTOID,'+
         '  EF_KARDEX.NUMDOCUMENTO,'+
         '  EF_KARDEX.DATAOCORRENCIA,'+
         '  EF_KARDEX.TIPOOPERACAO,'+
         '  EF_KARDEX.QUANTIDADE'+
         '  FROM'+
         '  EF_KARDEX'+
         ' WHERE '+
         '  EF_KARDEX.EMPRESAID = '+ IntToStr( EmpresaAtualId );

 iSQL := iSQL +'  ORDER BY EF_KARDEX.KARDEXID';

 try
  ExecDynamicProvider( -1,iSQL,cds );
 except on
  E : Exception do
  raise Exception.Create(E.Message);
 end;

 cds.AddIndex('idx1','EMPRESAID;PRODUTOID',[ixPrimary],'','',0 );
 cds.IndexName := 'idx1';
 cds.IndexFieldNames := 'KARDEXID';
end;

procedure Tfrm0021.AbreNfe( var cds: TClientDataSet );
var iSQL : String;
begin
 cds  := nil;
 iSQL := 'SELECT '+
         '  EF_NFE.EMPRESAID,'+
         '  EF_NFE.NFEID,'+
         '  EF_NFE.DATAEMISSAOID,'+
         '  EF_NFE.NFSID,'+
         '  EF_NFE.DATAEMISSAONFSID'+
         '  FROM'+
         '  EF_NFE'+
         '  WHERE '+
         '  EF_NFE.EMPRESAID = '+ IntToStr( EmpresaAtualId );

 try
  ExecDynamicProvider( -1,iSQL,cds );
 except on
  E : Exception do
  raise Exception.Create(E.Message);
 end;

 cds.AddIndex('idx1','EMPRESAID;NFEID;DATAEMISSAOID',[ixPrimary],'','',0 );
 cds.IndexName := 'idx1';
end;

procedure Tfrm0021.InicializaCds0021;
begin
 with cds0021 do
 begin
  EmptyDataSet;
  Close;
  Open;
 end;

 with cds0021F do
 begin
  EmptyDataSet;
  Close;
  Open;
 end;
end;

procedure Tfrm0021.BitBtn2Click(Sender: TObject);
begin
 if not cds0021.IsEmpty then
    begin
     frmExportar := TfrmExportar.Create(nil);
     frmExportar.DataSource := ds0021;
     frmExportar.Show;
    end
 else
    MessageDlg('É necessário Gerar o Relatório primeiro!',mtWarning, [mbok],0 );
end;

end.
