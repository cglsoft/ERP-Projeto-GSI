unit u_0014;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, Mask, DB, DBTables, ExtCtrls,
  DBClient, Grids, DBGrids, wwdbedit, Wwdbspin, wwdbdatetimepicker;

type
  Tfrm0014 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    MaskEdit2: TMaskEdit;
    MaskEdit3: TMaskEdit;
    RadioButton1: TRadioButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    StatusBar1: TStatusBar;
    cds0014: TClientDataSet;
    ds0014: TDataSource;
    wwdbspedtDest: TwwDBSpinEdit;
    rgrpStatusOS: TRadioGroup;
    wwdtpcktPosicao: TwwDBDateTimePicker;
    ClientDataSet1: TClientDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  const Select_ProdTerceiro = 'SELECT DISTINCT EF_NFS.EMPRESAID,' +
                              '       EF_NFS.NFSID,' +
                              '       EF_NFS.DATAEMISSAOID,' +
                              '       EF_NFS.OSID,' +
                              '       OS_OS.STATUS,' +
                              '       EF_NFS.REQUISITANTE,' +
                              '       EF_NFS.ENTIDADEID,' +
                              '       EF_NFS.NOME,' +
                              '       EF_NATUREZAOP.DESCRICAOOPERACAOUSUARIO,' +
                              '       EF_NFSITEM.PRODUTOID,' +
                              '       EF_GRUPO.SIGLAGRUPO,'+
                              '       EF_PRODUTO.DESCRICAOPORTUGUES,'+
                              '       EF_NFSITEM.DESCRICAOPRODUTO,' +
                              '       (EF_NFSITEM.QUANTIDADE - EF_NFSITEM.QTDRETORNA) QUANTIDADE,'+
                              '       DECODE( NVL( EF_NFEITEM.VLRPRECOUNITARIO, 0 ), 0,EF_NFSITEM.VLRPRECOUNITARIO,  EF_NFEITEM.VLRPRECOUNITARIO ) VLRPRECOUNITARIO,' +
                              '       DECODE( NVL( EF_NFEITEM.VLRPRECOTOTAL, 0 ), 0,EF_NFSITEM.VLRPRECOTOTAL,  EF_NFEITEM.VLRPRECOTOTAL ) VLRPRECOTOTAL,' +
//                              '       EF_NFSITEM.VLRPRECOUNITARIO,' +
//                              '       EF_NFSITEM.VLRPRECOTOTAL,' +
                              '       ( DECODE( NVL( EF_NFEITEM.VLRPRECOTOTAL, 0 ), 0,EF_NFSITEM.VLRPRECOTOTAL,  EF_NFEITEM.VLRPRECOTOTAL ) + EF_NFSITEM.VLRIPI ) VLRCONTABIL,' +
                              '       DECODE( NVL( EF_NFEITEM.VLRICMS, 0 ), 0,EF_NFSITEM.VLRICMS,  EF_NFEITEM.VLRICMS ) VLRICMS,' +
                              '       DECODE( NVL( EF_NFEITEM.VLRIPI, 0 ), 0,EF_NFSITEM.VLRIPI,  EF_NFEITEM.VLRIPI ) VLRIPI,' +
                              '       EF_NFSITEM.VLRICMS VLRICMS2,' +
                              '       EF_NFSITEM.VLRIPI VLRIPI2,' +
                              '       EF_NFSITEM.RETORNO,' +
                              '       EF_NFE.NFEID, ' +
                              '       EF_NFE.DATAENTRADA,  ' +
                              '       EF_PDEITEM.NFSID PD_NFSID, ' +
                              '       EF_PDEITEM.DATAEMISSAONFSID PD_DTID ' +
                              '  FROM EF_NFS EF_NFS,' +
                              '       EF_NFSITEM EF_NFSITEM,' +
                              '       EF_NATUREZAOP EF_NATUREZAOP,' +
                              '       EF_PRODUTO,'+
                              '       EF_GRUPO,'+
                              '       OS_OS, ' +
                              '       EF_NFE,' +
                              '       EF_NFEITEM,'+
                              '       EF_PDEITEM ' +
                              ' WHERE EF_NFS.EMPRESAID = EF_NFSITEM.EMPRESAID' +
                              '       AND EF_NFS.NFSID = EF_NFSITEM.NFSID' +
                              '       AND EF_NFS.DATAEMISSAOID = EF_NFSITEM.DATAEMISSAOID' +
                              '       AND EF_PRODUTO.EMPRESAID = EF_NFSITEM.EMPRESAID'+
                              '       AND EF_PRODUTO.PRODUTOID = EF_NFSITEM.PRODUTOID'+
                              '       AND EF_PRODUTO.GRUPOID = EF_GRUPO.GRUPOID(+)'+
                              '       AND EF_NATUREZAOP.NATUREZAOPID(+) = EF_NFS.NATUREZAOPID' +
                              '       AND NVL( EF_NFS.CANCELADA, 0 ) = 0' +
                              '       AND EF_NATUREZAOP.MOVIMENTOESTOQUE = ''E''' +
                              '       AND OS_OS.OSID(+) = EF_NFS.OSID ' +
                              '       AND EF_NFEITEM.EMPRESAID = EF_NFE.EMPRESAID(+)'+
                              '       AND EF_NFEITEM.NFEID = EF_NFE.NFEID(+)'+
                              '       AND EF_NFEITEM.DATAEMISSAOID = EF_NFE.DATAEMISSAOID(+)'+
                              '       AND EF_NFSITEM.EMPRESAID = EF_NFEITEM.EMPRESAID(+)'+
                              '       AND EF_NFSITEM.NFSID = EF_NFEITEM.NFSID(+)'+
                              '       AND EF_NFSITEM.DATAEMISSAOID = EF_NFEITEM.DATAEMISSAONFSID(+)'+
                              '       AND EF_NFSITEM.PRODUTOID = EF_NFEITEM.PRODUTOID(+)'+
                              '       AND EF_NFSITEM.EMPRESAID = EF_PDEITEM.EMPRESAID(+) ' +
                              '       AND EF_NFSITEM.NFSID = EF_PDEITEM.NFSID(+) ' +
                              '       AND EF_NFSITEM.DATAEMISSAOID = EF_PDEITEM.DATAEMISSAONFSID(+) ' +
                              '       AND NVL( EF_NFE.CANCELADA, 0 ) = 0 ';

  const Select_ProdTerceiro1 ='SELECT  EF_NFS.EMPRESAID,' +
                              '        EF_NFS.NFSID,' +
                              '                EF_NFS.DATAEMISSAOID,' +
                              '                EF_NFS.OSID,' +
                              '                OS_OS.STATUS,' +
                              '                EF_NFS.REQUISITANTE,' +
                              '                EF_NFS.ENTIDADEID,' +
                              '                EF_NFS.NOME,' +
                              '                EF_NATUREZAOP.DESCRICAOOPERACAOUSUARIO,' +
                              '                EF_GRUPO.SIGLAGRUPO,' +
                              '                EF_PRODUTO.DESCRICAOPORTUGUES,' +
                              '                EF_NFSITEM.DESCRICAOPRODUTO,' +
                              '                EF_NFSITEM.PRODUTOID,' +
                              '                EF_NFSITEM.QUANTIDADE,' +
                              '                EF_NFSITEM.VLRPRECOUNITARIO,' +
                              '                EF_NFSITEM.VLRPRECOTOTAL,' +
                              '                (EF_NFSITEM.VLRPRECOTOTAL + EF_NFSITEM.VLRIPI) VLRCONTABIL,' +
                              '                EF_NFSITEM.VLRICMS,' +
                              '                EF_NFSITEM.VLRIPI,' +
                              '                EF_NFSITEM.RETORNO ' +
                              '  FROM EF_NFS EF_NFS,' +
                              '       EF_NFSITEM EF_NFSITEM,' +
                              '       EF_NATUREZAOP EF_NATUREZAOP,' +
                              '       EF_PRODUTO,' +
                              '       EF_GRUPO,' +
                              '       OS_OS' +
                              ' WHERE EF_NFS.EMPRESAID = EF_NFSITEM.EMPRESAID' +
                              '   AND EF_NFS.NFSID = EF_NFSITEM.NFSID' +
                              '   AND EF_NFS.DATAEMISSAOID = EF_NFSITEM.DATAEMISSAOID' +
                              '   AND EF_PRODUTO.EMPRESAID = EF_NFSITEM.EMPRESAID' +
                              '   AND EF_PRODUTO.PRODUTOID = EF_NFSITEM.PRODUTOID' +
                              '   AND EF_PRODUTO.GRUPOID = EF_GRUPO.GRUPOID(+)' +
                              '   AND EF_NATUREZAOP.NATUREZAOPID(+) = EF_NFS.NATUREZAOPID' +
                              '   AND NVL(EF_NFS.CANCELADA, 0) = 0' +
                              '   AND EF_NATUREZAOP.MOVIMENTOESTOQUE = ''E''' +
                              '   AND OS_OS.OSID(+) = EF_NFS.OSID ';

 const Select_ProdTerceiro2 = 'SELECT EF_NFE.EMPRESAID,' +
                              '       EF_NFE.DATAEMISSAOID,' +
                              '       EF_NFEITEM.NFSID,' +
                              '       EF_NFEITEM.DATAEMISSAONFSID,' +
                              '       EF_NFE.DATAENTRADA,' +
                              '       EF_NFEITEM.PRODUTOID,' +
                              '       EF_NFEITEM.QUANTIDADE' +
                              '  FROM EF_NFE, EF_NFEITEM' +
                              ' WHERE EF_NFEITEM.EMPRESAID = EF_NFE.EMPRESAID' +
                              '   AND EF_NFEITEM.NFEID = EF_NFE.NFEID' +
                              '   AND EF_NFEITEM.DATAEMISSAOID = EF_NFE.DATAEMISSAOID' +
                              '   AND NVL(EF_NFE.CANCELADA, 0) = 0';

 const Select_Plus =          'SELECT EF_NFS.EMPRESAID,' +
                              '       EF_NFS.NFSID,' +
                              '       EF_NFS.DATAEMISSAOID,' +
                              '       EF_NFS.OSID,' +
                              '       OS_OS.STATUS,' +
                              '       EF_NFS.REQUISITANTE,' +
                              '       EF_NFS.ENTIDADEID,' +
                              '       EF_NFS.NOME,' +
                              '       EF_NATUREZAOP.DESCRICAOOPERACAOUSUARIO,' +
                              '       EF_NFSITEM.PRODUTOID,' +
                              '       EF_GRUPO.SIGLAGRUPO,' +
                              '       EF_PRODUTO.DESCRICAOPORTUGUES,' +
                              '       EF_NFSITEM.DESCRICAOPRODUTO,' +
                              '       (EF_NFSITEM.QUANTIDADE - EF_NFSITEM.QTDRETORNA) QUANTIDADE,' +
                              '       EF_NFSITEM.VLRPRECOUNITARIO,' +
                              '       EF_NFSITEM.VLRPRECOTOTAL,' +
                              '       (DECODE(NVL(EF_NFEITEM.VLRPRECOTOTAL, 0),' +
                              '               0,' +
                              '               EF_NFSITEM.VLRPRECOTOTAL,' +
                              '               EF_NFEITEM.VLRPRECOTOTAL) + EF_NFSITEM.VLRIPI) VLRCONTABIL,' +
                              '       EF_NFSITEM.VLRICMS,' +
                              '       EF_NFSITEM.VLRIPI,' +
                              '       EF_NFSITEM.RETORNO,' +
                              '       EF_NFE.NFEID,' +
                              '       EF_NFE.DATAENTRADA,' +
                              '       EF_PDEITEM.NFSID PD_NFSID,' +
                              '       EF_PDEITEM.DATAEMISSAONFSID PD_DTID' +
                              '  FROM EF_NFS EF_NFS,' +
                              '       EF_NFSITEM EF_NFSITEM,' +
                              '       EF_NATUREZAOP EF_NATUREZAOP,' +
                              '       EF_PRODUTO,' +
                              '       EF_GRUPO,' +
                              '       OS_OS,' +
                              '       EF_NFE,' +
                              '       EF_NFEITEM,' +
                              '       EF_PDEITEM' +
                              ' WHERE EF_NFS.EMPRESAID = EF_NFSITEM.EMPRESAID' +
                              '   AND EF_NFS.NFSID = EF_NFSITEM.NFSID' +
                              '   AND EF_NFS.DATAEMISSAOID = EF_NFSITEM.DATAEMISSAOID' +
                              '   AND EF_PRODUTO.EMPRESAID = EF_NFSITEM.EMPRESAID' +
                              '   AND EF_PRODUTO.PRODUTOID = EF_NFSITEM.PRODUTOID' +
                              '   AND EF_PRODUTO.GRUPOID = EF_GRUPO.GRUPOID(+)' +
                              '   AND EF_NATUREZAOP.NATUREZAOPID(+) = EF_NFS.NATUREZAOPID' +
                              '   AND NVL(EF_NFS.CANCELADA, 0) = 0' +
                              '   AND EF_NATUREZAOP.MOVIMENTOESTOQUE = ''E''' +
                              '   AND OS_OS.OSID(+) = EF_NFS.OSID' +
                              '   AND EF_NFEITEM.EMPRESAID = EF_NFE.EMPRESAID(+)' +
                              '   AND EF_NFEITEM.NFEID = EF_NFE.NFEID(+)' +
                              '   AND EF_NFEITEM.DATAEMISSAOID = EF_NFE.DATAEMISSAOID(+)' +
                              '   AND EF_NFSITEM.EMPRESAID = EF_NFEITEM.EMPRESAID(+)' +
                              '   AND EF_NFSITEM.NFSID = EF_NFEITEM.NFSID(+)' +
                              '   AND EF_NFSITEM.DATAEMISSAOID = EF_NFEITEM.DATAEMISSAONFSID(+)' +
                              '   AND EF_NFSITEM.PRODUTOID = EF_NFEITEM.PRODUTOID(+)' +
                              '   AND EF_NFSITEM.EMPRESAID = EF_PDEITEM.EMPRESAID(+)' +
                              '   AND EF_NFSITEM.NFSID = EF_PDEITEM.NFSID(+)' +
                              '   AND EF_NFSITEM.DATAEMISSAOID = EF_PDEITEM.DATAEMISSAONFSID(+)' +
                              '   AND NVL(EF_NFE.CANCELADA, 0) = 0' +
                              '   AND EF_NFS.EMPRESAID = 12' +
                              '   AND EF_NFS.NFSID IN (3930)';


 const Select_Plus2 =         ' SELECT distinct EF_NFS.EMPRESAID,' + 
                              '       EF_NFS.NFSID,' + 
                              '       EF_NFS.DATAEMISSAOID,' + 
                              '       EF_NFS.OSID,' + 
                              '       OS_OS.STATUS,' + 
                              '       EF_NFS.REQUISITANTE,' + 
                              '       EF_NFS.ENTIDADEID,' + 
                              '       EF_NFS.NOME,' + 
                              '       EF_NATUREZAOP.DESCRICAOOPERACAOUSUARIO,' + 
                              '       EF_NFSITEM.PRODUTOID,' + 
                              '       EF_GRUPO.SIGLAGRUPO,' + 
                              '       EF_PRODUTO.DESCRICAOPORTUGUES,' + 
                              '       EF_NFSITEM.DESCRICAOPRODUTO,' + 
                              '       (EF_NFSITEM.QUANTIDADE - EF_NFSITEM.QTDRETORNA) QUANTIDADE,' + 
                              '       EF_NFSITEM.VLRPRECOUNITARIO,' + 
                              '       EF_NFSITEM.VLRPRECOTOTAL,' + 
                              '       ( EF_NFSITEM.VLRPRECOTOTAL + EF_NFSITEM.VLRIPI) VLRCONTABIL,' + 
                              '       EF_NFSITEM.VLRICMS,' + 
                              '       EF_NFSITEM.VLRIPI,' + 
                              '       EF_NFSITEM.RETORNO,' + 
                              '       NULL AS NFEID,' + 
                              '       NULL AS DATAENTRADA,' + 
                              '       NULL AS PD_NFSID,' +
                              '       NULL AS PD_DTID ' +
                              '  FROM EF_NFS EF_NFS,' +
                              '       EF_NFSITEM EF_NFSITEM,' + 
                              '       EF_NATUREZAOP EF_NATUREZAOP,' + 
                              '       EF_PRODUTO,' + 
                              '       EF_GRUPO,' + 
                              '       OS_OS' + 
                              ' WHERE EF_NFS.EMPRESAID = EF_NFSITEM.EMPRESAID' + 
                              '   AND EF_NFS.NFSID = EF_NFSITEM.NFSID' + 
                              '   AND EF_NFS.DATAEMISSAOID = EF_NFSITEM.DATAEMISSAOID' + 
                              '   AND EF_PRODUTO.EMPRESAID = EF_NFSITEM.EMPRESAID' + 
                              '   AND EF_PRODUTO.PRODUTOID = EF_NFSITEM.PRODUTOID' + 
                              '   AND EF_PRODUTO.GRUPOID = EF_GRUPO.GRUPOID(+)' + 
                              '   AND EF_NATUREZAOP.NATUREZAOPID(+) = EF_NFS.NATUREZAOPID' + 
                              '   AND NVL(EF_NFS.CANCELADA, 0) = 0' + 
                              '   AND EF_NATUREZAOP.MOVIMENTOESTOQUE = ''E''' + 
                              '   AND OS_OS.OSID(+) = EF_NFS.OSID' + 
                              '   AND EF_NFS.EMPRESAID = 12' + 
                              '   AND EF_NFS.NFSID IN (3745)' +
                              '   AND EF_NFSITEM.PRODUTOID NOT IN ( 505,504) ';



var
  frm0014: Tfrm0014;

implementation

uses FuncoesCliente, u_Rel0014, u_Exportar;

{$R *.dfm}

procedure Tfrm0014.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action  := cafree;
 frm0014 := nil;
end;

procedure Tfrm0014.BitBtn3Click(Sender: TObject);
begin
 frm0014.Close;
end;

procedure Tfrm0014.BitBtn1Click(Sender: TObject);
var iSQL : String;
begin
 if cds0014.IndexName <> '' then
    cds0014.DeleteIndex('idx1');

 cds0014.Close;

 try
  iSQL := Select_ProdTerceiro + 'AND EF_NFS.EMPRESAID = ' + IntToStr( EmpresaAtualId );

  if wwdbspedtDest.Value > 0 then
     iSQL := iSQL + ' AND EF_NFS.ENTIDADEID = ' + FloatToStr( wwdbspedtDest.Value );

  iSQL := iSQL + ' AND EF_NFS.DATAEMISSAOID > ' + QuotedStr( '01/01/1997' );
  iSQL := iSQL + ' AND EF_NFS.DATAEMISSAOID <= ' + QuotedStr( DateToStr( wwdtpcktPosicao.Date ) );
//  iSQL := iSQL + ' AND ( ef_nfsitem.produtoid = 269 AND EF_NFE.NFEID <> 59143 ) ';

  if rgrpStatusOS.ItemIndex < 4 then
     iSQL := iSQL + ' AND OS_OS.STATUS = ' + QuotedStr( Copy( rgrpStatusOS.Items[rgrpStatusOS.ItemIndex],1,1 ) );

  ExecDynamicProvider( -1, iSQL, cds0014 );

  cds0014.AddIndex('idx1','DATAEMISSAOID;NFSID',[ixExpression],'','',0);
  cds0014.IndexName := 'idx1';

  cds0014.First;
  while not cds0014.Eof do
  begin
   if wwdtpcktPosicao.Date >  StrToDate('31/05/2009') then
      begin
       if cds0014.FieldByName('NFEID').AsInteger = 59143 then
          begin
           cds0014.Delete;
           Continue;
          end;

       if cds0014.FieldByName('NFSID').AsInteger = 3930 then
          begin
           cds0014.Edit;
           cds0014.FieldByName('VLRICMS').AsFloat := cds0014.FieldByName('VLRICMS2').AsFloat - cds0014.FieldByName('VLRICMS').AsFloat;
           cds0014.FieldByName('VLRIPI').AsFloat  := cds0014.FieldByName('VLRIPI2').AsFloat - cds0014.FieldByName('VLRIPI').AsFloat;
           cds0014.Post;
          end;
       if cds0014.FieldByName('NFSID').AsInteger = 487 then
          begin
           cds0014.Edit;
           cds0014.FieldByName('VLRICMS').AsFloat := cds0014.FieldByName('VLRICMS').AsFloat / 2;
           cds0014.FieldByName('VLRIPI').AsFloat  := cds0014.FieldByName('VLRIPI').AsFloat / 2;
           cds0014.Post;
          end;
      end;

   if cds0014.FieldByName('NFEID').AsInteger > 0  then
      begin
       if cds0014.FieldByName('RETORNO').Value = 'JR' then
          if cds0014.FieldByName('DATAENTRADA').AsDateTime <= wwdtpcktPosicao.Date then
             begin
              cds0014.Delete;
              Continue;
             end;
      end
   else
      if cds0014.FieldByName('RETORNO').Value = 'JR' then
         begin
          if cds0014.FieldByName('PD_NFSID').AsInteger > 0 then
             begin
              if Date < wwdtpcktPosicao.Date then
                 begin
                  cds0014.Delete;
                  Continue;
                 end;
             end
           else
             begin
              cds0014.Delete;
              Continue;
             end;
         end;

   cds0014.Next;
  end;

  TNumericField( cds0014.FieldByName( 'VLRCONTABIL' ) ).DisplayFormat := '###,###,###,##0.00';
  TNumericField( cds0014.FieldByName( 'VLRPRECOTOTAL' ) ).DisplayFormat := '###,###,###,##0.00';
  TNumericField( cds0014.FieldByName( 'VLRICMS' ) ).DisplayFormat := '###,###,###,##0.00';
  TNumericField( cds0014.FieldByName( 'VLRIPI' ) ).DisplayFormat := '###,###,###,##0.00';

  frmRel0014 := TfrmRel0014.Create(nil);
  frmRel0014.QuickRep1.Preview;
 finally
  FreeAndNil( frmRel0014.QuickRep1 );
  FreeAndNil( frmRel0014 );
 end;
end;


procedure Tfrm0014.BitBtn2Click(Sender: TObject);
begin
 if not cds0014.IsEmpty then
    begin
     frmExportar := TfrmExportar.Create(nil);
     frmExportar.DataSource := ds0014;
     frmExportar.Show;
    end
 else
    MessageDlg('É necessário Gerar o Relatório primeiro!',mtWarning, [mbok],0 );
end;

end.
