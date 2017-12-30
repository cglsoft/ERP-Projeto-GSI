unit u_0019;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, Buttons, wwdbdatetimepicker, Mask,
  ExtCtrls, ComCtrls, Grids, DBGrids;

type
  Tfrm0019 = class(TForm)
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    dsCtrlEstoque: TDataSource;
    Panel20: TPanel;
    Panel23: TPanel;
    Label59: TLabel;
    StatusBar1: TStatusBar;
    cdsCtrlEstoque: TClientDataSet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    mktProdFim: TMaskEdit;
    mktProdIni: TMaskEdit;
    wwdtpcktCtrlEstoqueIni: TwwDBDateTimePicker;
    wwdtpcktCtrlEstoqueFim: TwwDBDateTimePicker;
    rgrpMov: TRadioGroup;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm0019: Tfrm0019;


const
 Sel_RegCtrlProd =  'SELECT EMPRESAID, PRODUTOID, DATAOCORRENCIA, KARDEXID, NUMDOCUMENTO, NOMEFANTASIA, CPF_CNPJ,' +
                    '       INSCRESTADUAL, TIPODOCUMENTO, TIPOESTOQUE, CFOP, DESCRICAOPORTUGUES,' +
                    '       PARTNUMBERID, NCMID, CONTACTBATIVO, UNIDADEID, QUANTIDADESALDOANT, VLRCUSTOMEDIOANT,' +
                    '       VLRCUSTOMEDIOTOTALANT, QTD_ENTRADA, VLRCUSTOUNITARIO_ENTRADA,  VLRCUSTOTOTAL_ENTRADA,' +
                    '       QTD_SAIDA, VLRCUSTOUNITARIO_SAIDA, VLRCUSTOTOTAL_SAIDA, QUANTIDADESALDO,' +
                    '       VLRCUSTOMEDIO, VLRCUSTOMEDIOTOTAL, VLRBASEICMS, ALIQUOTAICMS, VLRICMS,   VLRBASEIPI,' +
                    '       ALIQUOTAIPI, VLRIPI ' +
                    ' FROM ( ' +
                    ' SELECT EF_PRODUTO.EMPRESAID,' +
                    '       EF_PRODUTO.PRODUTOID,' +
                    '       DECODE(EF_KDX_CTRLPROD.DATAOCORRENCIA, NULL, EF_KDX_POSICAO.DATAOCORRENCIA, EF_KDX_CTRLPROD.DATAOCORRENCIA) DATAOCORRENCIA,' +
                    '       DECODE(EF_KDX_CTRLPROD.NUMDOCUMENTO, NULL, EF_KDX_POSICAO.NUMDOCUMENTO, EF_KDX_CTRLPROD.NUMDOCUMENTO) NUMDOCUMENTO,' +
                    '       EF_EMPRESA.NOMEFANTASIA,' +
                    '       EF_EMPRESA.CPF_CNPJ,' +
                    '       EF_EMPRESA.INSCRESTADUAL,' +
                    '       EF_KDX_CTRLPROD.KARDEXID, ' +
                    '       EF_KDX_CTRLPROD.TIPODOCUMENTO,' +
                    '       EF_KDX_CTRLPROD.TIPOESTOQUE,' +
                    '       EF_KDX_CTRLPROD.CFOP,' +
                    '       EF_PRODUTO.DESCRICAOPORTUGUES,' +
                    '       EF_PRODUTO.PARTNUMBERID,' +
                    '       EF_PRODUTO.NCMID,' +
                    '       EF_PRODUTO.CONTACTBATIVO,' +
                    '       EF_PRODUTO.UNIDADEID,' +
                    '       /* Saldo anterior do produto */' +
                    '       DECODE(EF_KDX_SALDOANT.QUANTIDADESALDO,NULL,0, EF_KDX_SALDOANT.QUANTIDADESALDO) QUANTIDADESALDOANT, ' +
                    '       DECODE(EF_KDX_SALDOANT.VLRCUSTOMEDIO,NULL, 0, EF_KDX_SALDOANT.VLRCUSTOMEDIO) VLRCUSTOMEDIOANT, ' +
                    '       DECODE(EF_KDX_SALDOANT.VLRCUSTOMEDIOTOTAL, NULL, 0, EF_KDX_SALDOANT.VLRCUSTOMEDIOTOTAL) VLRCUSTOMEDIOTOTALANT, ' +
                    '       /* Movimento de Entrada */' +
                    '       EF_KDX_CTRLPROD.QTD_ENTRADA,' +
                    '       EF_KDX_CTRLPROD.VLRCUSTOUNITARIO_ENTRADA,' +
                    '       EF_KDX_CTRLPROD.VLRCUSTOTOTAL_ENTRADA,' +
                    '       /* Movimento de Saida */' +
                    '       EF_KDX_CTRLPROD.QTD_SAIDA,' +
                    '       EF_KDX_CTRLPROD.VLRCUSTOUNITARIO_SAIDA,' +
                    '       EF_KDX_CTRLPROD.VLRCUSTOTOTAL_SAIDA,' +
                    '       /* Movimento de Custo */' +
                    '       DECODE(EF_KDX_CTRLPROD.QUANTIDADESALDO, NULL, EF_KDX_POSICAO.QUANTIDADESALDO, EF_KDX_CTRLPROD.QUANTIDADESALDO) QUANTIDADESALDO,' +
                    '       DECODE(EF_KDX_CTRLPROD.VLRCUSTOMEDIO, NULL, EF_KDX_POSICAO.VLRCUSTOMEDIO, EF_KDX_CTRLPROD.VLRCUSTOMEDIO) VLRCUSTOMEDIO,' +
                    '       DECODE(EF_KDX_CTRLPROD.VLRCUSTOMEDIOTOTAL, NULL, EF_KDX_POSICAO.VLRCUSTOMEDIOTOTAL, EF_KDX_CTRLPROD.VLRCUSTOMEDIOTOTAL) VLRCUSTOMEDIOTOTAL,' +
                    '       /* Base do ICMS */' +
                    '       EF_KDX_CTRLPROD.VLRBASEICMS,' +
                    '       EF_KDX_CTRLPROD.ALIQUOTAICMS,' +
                    '       EF_KDX_CTRLPROD.VLRICMS,' +
                    '       /* Base do IPI */' +
                    '       EF_KDX_CTRLPROD.VLRBASEIPI,' +
                    '       EF_KDX_CTRLPROD.ALIQUOTAIPI,' +
                    '       EF_KDX_CTRLPROD.VLRIPI' +
                    '  FROM EF_PRODUTO,' +
                    '       EF_EMPRESA,' +
                    '       (SELECT EMPRESAID,' +
                    '               PRODUTOID,' +
                    '               NUMDOCUMENTO,' +
                    '               DATAOCORRENCIA,' +
                    '               QUANTIDADESALDO,' +
                    '               NVL(VLRCUSTOMEDIO, 0) VLRCUSTOMEDIO,' +
                    '               NVL(VLRCUSTOMEDIOTOTAL, 0) VLRCUSTOMEDIOTOTAL' +
                    '          FROM EF_KARDEX' +
                    '         WHERE (EMPRESAID, PRODUTOID, DATAOCORRENCIA, KARDEXID) IN' +
                    '               (SELECT EMPRESAID,' +
                    '                       PRODUTOID,' +
                    '                       MAX(DATAOCORRENCIA),' +
                    '                       MAX(KARDEXID)' +
                    '                  FROM EF_KARDEX';

 Sel_RegCtrlProd1 = '                 GROUP BY EMPRESAID, PRODUTOID)' +
                    '         ORDER BY 1, 2) EF_KDX_POSICAO,' +
                    '' +
                    '       /* Saldo Anterior do Produto */' +
                    '       (SELECT EMPRESAID,' +
                    '               PRODUTOID,' +
                    '               NUMDOCUMENTO,' +
                    '               DATAOCORRENCIA,' +
                    '               QUANTIDADESALDO,' +
                    '               NVL(VLRCUSTOMEDIO, 0) VLRCUSTOMEDIO,' +
                    '               NVL(VLRCUSTOMEDIOTOTAL, 0) VLRCUSTOMEDIOTOTAL' +
                    '          FROM EF_KARDEX' +
                    '         WHERE (EMPRESAID, PRODUTOID, DATAOCORRENCIA, KARDEXID) IN' +
                    '               (SELECT EMPRESAID,' +
                    '                       PRODUTOID,' +
                    '                       MAX(DATAOCORRENCIA),' +
                    '                       MAX(KARDEXID)' +
                    '                  FROM EF_KARDEX';

 Sel_RegCtrlProd2 = '                 GROUP BY EMPRESAID, PRODUTOID)' +
                    '         ORDER BY 1, 2) EF_KDX_SALDOANT,' +
                    '' +
                    '       /* Controle de Produtoção do Estoque */' +
                    '       (SELECT DISTINCT EF_KARDEX.EMPRESAID,' +
                    '                        EF_KARDEX.DATAOCORRENCIA,' +
                    '                        EF_KARDEX.NUMDOCUMENTO,' +
                    '                        EF_KARDEX.KARDEXID, ' +
                    '                        EF_KARDEX.TIPODOCUMENTO,' +
                    '                        EF_KARDEX.TIPOESTOQUE,' +
                    '                        EF_NATUREZAOP.CFOP,' +
                    '                        EF_KARDEX.PRODUTOID,' +
                    '                        EF_PRODUTO.DESCRICAOPORTUGUES,' +
                    '                        EF_PRODUTO.PARTNUMBERID,' +
                    '                        EF_PRODUTO.NCMID,' +
                    '                        EF_PRODUTO.CONTACTBATIVO, /* Movimento de Entrada */' +
                    '                        (CASE EF_KARDEX.TIPOOPERACAO' +
                    '                          WHEN ''E'' THEN' +
                    '                           EF_KARDEX.QUANTIDADE' +
                    '                          ELSE' +
                    '                           0' +
                    '                        END) QTD_ENTRADA,' +
                    '                        (CASE EF_KARDEX.TIPOOPERACAO' +
                    '                          WHEN ''E'' THEN' +
                    '                           EF_KARDEX.VLRCUSTOUNITARIO' +
                    '                          ELSE' +
                    '                           0' +
                    '                        END) VLRCUSTOUNITARIO_ENTRADA,' +
                    '                        (CASE EF_KARDEX.TIPOOPERACAO' +
                    '                          WHEN ''E'' THEN' +
                    '                           EF_KARDEX.VLRCUSTOTOTAL' +
                    '                          ELSE' +
                    '                           0' +
                    '                        END) VLRCUSTOTOTAL_ENTRADA, /* Movimento de Saida */' +
                    '                        (CASE EF_KARDEX.TIPOOPERACAO' +
                    '                          WHEN ''S'' THEN' +
                    '                           EF_KARDEX.QUANTIDADE' +
                    '                          ELSE' +
                    '                           0' +
                    '                        END) QTD_SAIDA,' +
                    '                        (CASE EF_KARDEX.TIPOOPERACAO' +
                    '                          WHEN ''S'' THEN' +
                    '                           EF_KARDEX.VLRCUSTOUNITARIO' +
                    '                          ELSE' +
                    '                           0' +
                    '                        END) VLRCUSTOUNITARIO_SAIDA,' +
                    '                        (CASE EF_KARDEX.TIPOOPERACAO' +
                    '                          WHEN ''S'' THEN' +
                    '                           EF_KARDEX.VLRCUSTOTOTAL' +
                    '                          ELSE' +
                    '                           0' +
                    '                        END) VLRCUSTOTOTAL_SAIDA,' +
                    '                        EF_KARDEX.QUANTIDADESALDO,' +
                    '                        EF_KARDEX.VLRCUSTOMEDIO,' +
                    '                        EF_KARDEX.VLRCUSTOMEDIOTOTAL, /* Base do ICMS */' +
                    '                        (CASE EF_KARDEX.TIPOOPERACAO' +
                    '                          WHEN ''E'' THEN' +
                    '                           EF_NF_ENTRADA.VLRBASEICMS' +
                    '                          WHEN ''S'' THEN' +
                    '                           EF_NF_SAIDA.VLRBASEICMS' +
                    '                        END) VLRBASEICMS,' +
                    '                        (CASE EF_KARDEX.TIPOOPERACAO' +
                    '                          WHEN ''E'' THEN' +
                    '                           EF_NF_ENTRADA.ALIQUOTAICMS' +
                    '                          WHEN ''S'' THEN' +
                    '                           EF_NF_SAIDA.ALIQUOTAICMS' +
                    '                        END) ALIQUOTAICMS,' +
                    '                        (CASE EF_KARDEX.TIPOOPERACAO' +
                    '                          WHEN ''E'' THEN' +
                    '                           EF_NF_ENTRADA.VLRICMS' +
                    '                          WHEN ''S'' THEN' +
                    '                           EF_NF_SAIDA.VLRICMS' +
                    '                        END) VLRICMS, /* Base do IPI */' +
                    '                        (CASE EF_KARDEX.TIPOOPERACAO' +
                    '                          WHEN ''E'' THEN' +
                    '                           EF_NF_ENTRADA.VLRBASEIPI' +
                    '                          WHEN ''S'' THEN' +
                    '                           EF_NF_SAIDA.VLRBASEIPI' +
                    '                        END) VLRBASEIPI,' +
                    '                        (CASE EF_KARDEX.TIPOOPERACAO' +
                    '                          WHEN ''E'' THEN' +
                    '                           EF_NF_ENTRADA.ALIQUOTAIPI' +
                    '                          WHEN ''S'' THEN' +
                    '                           EF_NF_SAIDA.ALIQUOTAIPI' +
                    '                        END) ALIQUOTAIPI,' +
                    '                        (CASE EF_KARDEX.TIPOOPERACAO' +
                    '                          WHEN ''E'' THEN' +
                    '                           EF_NF_ENTRADA.VLRIPI' +
                    '                          WHEN ''S'' THEN' +
                    '                           EF_NF_SAIDA.VLRIPI' +
                    '                        END) VLRIPI' +
                    '          FROM EF_KARDEX     EF_KARDEX,' +
                    '               EF_NATUREZAOP EF_NATUREZAOP,' +
                    '               EF_PRODUTO    EF_PRODUTO,' +
                    '               /* Bases das Notas Fiscais de Entrada */' +
                    '               (SELECT EF_NFE.EMPRESAID,' +
                    '                       EF_NFE.NFEID,' +
                    '                       EF_NFE.DATAEMISSAOID,' +
                    '                       EF_NFE.ENTIDADEID,' +
                    '                       EF_NFE.DATAENTRADA,' +
                    '                       EF_NFE.NATUREZAOPID,' +
                    '                       EF_NFEITEM.ITEMID,' +
                    '                       EF_NFEITEM.PRODUTOID,' +
                    '                       EF_NFEITEM.QUANTIDADE,' +
                    '                       EF_NFEITEM.VLRBASEIPI,' +
                    '                       EF_NFEITEM.ALIQUOTAIPI,' +
                    '                       EF_NFEITEM.VLRIPI,' +
                    '                       EF_NFEITEM.VLRBASEICMS,' +
                    '                       EF_NFEITEM.ALIQUOTAICMS,' +
                    '                       EF_NFEITEM.VLRICMS' +
                    '                  FROM EF_NFE EF_NFE, EF_NFEITEM EF_NFEITEM' +
                    '                 WHERE EF_NFE.EMPRESAID(+) = EF_NFEITEM.EMPRESAID' +
                    '                   AND EF_NFE.NFEID(+) = EF_NFEITEM.NFEID' +
                    '                   AND EF_NFE.DATAEMISSAOID(+) = EF_NFEITEM.DATAEMISSAOID' +
                    '                   AND EF_NFE.ENTIDADEID(+) = EF_NFEITEM.ENTIDADEID' +
                    '                 ORDER BY EF_NFE.EMPRESAID,' +
                    '                          EF_NFE.NFEID,' +
                    '                          EF_NFE.DATAEMISSAOID,' +
                    '                          EF_NFE.ENTIDADEID,' +
                    '                          EF_NFE.DATAENTRADA) EF_NF_ENTRADA, /* Bases das Notas Fiscais de Saida */' +
                    '               (SELECT EF_NFS.EMPRESAID,' +
                    '                       EF_NFS.NFSID,' +
                    '                       EF_NFS.DATAEMISSAOID,' +
                    '                       EF_NFSITEM.PRODUTOID,' +
                    '                       EF_NFSITEM.ITEMID,' +
                    '                       EF_NFSITEM.QUANTIDADE,' +
                    '                       EF_NFSITEM.VLRBASEICMS,' +
                    '                       EF_NFSITEM.ALIQUOTAICMS,' +
                    '                       EF_NFSITEM.VLRICMS,' +
                    '                       EF_NFSITEM.VLRBASEIPI,' +
                    '                       EF_NFSITEM.ALIQUOTAIPI,' +
                    '                       EF_NFSITEM.VLRIPI' +
                    '                  FROM EF_NFS EF_NFS, EF_NFSITEM EF_NFSITEM' +
                    '                 WHERE EF_NFS.EMPRESAID(+) = EF_NFSITEM.EMPRESAID' +
                    '                   AND EF_NFS.NFSID(+) = EF_NFSITEM.NFSID' +
                    '                   AND EF_NFS.DATAEMISSAOID(+) = EF_NFSITEM.DATAEMISSAOID' +
                    '                 ORDER BY EF_NFS.EMPRESAID,' +
                    '                          EF_NFS.NFSID,' +
                    '                          EF_NFS.DATAEMISSAOID) EF_NF_SAIDA' +
                    '         WHERE EF_NATUREZAOP.NATUREZAOPID(+) = EF_KARDEX.NATUREZAOPID' +
                    '           AND EF_PRODUTO.EMPRESAID(+) = EF_KARDEX.EMPRESAID' +
                    '           AND EF_PRODUTO.PRODUTOID(+) = EF_KARDEX.PRODUTOID' +
                    '           AND /* Notas de Entrada */' +
                    '               EF_NF_ENTRADA.EMPRESAID(+) = EF_KARDEX.EMPRESAID' +
                    '           AND EF_NF_ENTRADA.NFEID(+) = EF_KARDEX.NUMDOCUMENTO' +
                    '           AND EF_NF_ENTRADA.DATAENTRADA(+) = EF_KARDEX.DATAOCORRENCIA' +
                    '           AND EF_NF_ENTRADA.PRODUTOID(+) = EF_KARDEX.PRODUTOID' +
                    '           AND EF_NF_ENTRADA.QUANTIDADE(+) = EF_KARDEX.QUANTIDADE' +
                    '           AND DECODE( NVL( EF_KARDEX.ITEMID, 0 ), 0, 0, EF_KARDEX.ITEMID ) = ' +
                    '               DECODE( NVL( EF_KARDEX.ITEMID, 0 ), 0, 0, EF_NF_ENTRADA.ITEMID(+) ) ' +
                    '           AND /* Notas de Saida */' +
                    '               EF_NF_SAIDA.EMPRESAID(+) = EF_KARDEX.EMPRESAID' +
                    '           AND EF_NF_SAIDA.NFSID(+) = EF_KARDEX.NUMDOCUMENTO' +
                    '           AND EF_NF_SAIDA.DATAEMISSAOID(+) = EF_KARDEX.DATAOCORRENCIA' +
                    '           AND EF_NF_SAIDA.PRODUTOID(+) = EF_KARDEX.PRODUTOID' +
                    '           AND EF_NF_SAIDA.QUANTIDADE(+) = EF_KARDEX.QUANTIDADE' +
                    '           AND DECODE( NVL( EF_KARDEX.ITEMID, 0 ), 0, 0, EF_KARDEX.ITEMID ) = ' +
                    '               DECODE( NVL( EF_KARDEX.ITEMID, 0 ), 0, 0, EF_NF_SAIDA.ITEMID(+) ) ';
 Sel_RegCtrlProd4 = '         ORDER BY EF_KARDEX.EMPRESAID,' +
                    '                  EF_KARDEX.PRODUTOID,' +
                    '                  EF_KARDEX.DATAOCORRENCIA,' +
                    '                  EF_KARDEX.NUMDOCUMENTO) EF_KDX_CTRLPROD' +
                    ' WHERE EF_PRODUTO.EMPRESAID = EF_KDX_POSICAO.EMPRESAID(+)' +
                    '   AND EF_PRODUTO.PRODUTOID = EF_KDX_POSICAO.PRODUTOID(+)' +
                    '   AND EF_PRODUTO.EMPRESAID = EF_EMPRESA.EMPRESAID(+)' +
                    '   AND EF_PRODUTO.EMPRESAID = EF_KDX_CTRLPROD.EMPRESAID(+)' +
                    '   AND EF_PRODUTO.PRODUTOID = EF_KDX_CTRLPROD.PRODUTOID(+)' +
                    '   AND EF_PRODUTO.EMPRESAID = EF_KDX_SALDOANT.EMPRESAID(+)' +
                    '   AND EF_PRODUTO.PRODUTOID = EF_KDX_SALDOANT.PRODUTOID(+)';


implementation

uses u_Rel0019,FuncoesCliente, u_Exportar, u_dmGSI, FuncoesDSI;

{$R *.dfm}

procedure Tfrm0019.BitBtn1Click(Sender: TObject);
var iSQL : String;
begin
 iSQL :=  Sel_RegCtrlProd;

 iSQL := iSQL + ' WHERE DATAOCORRENCIA < TO_DATE(' + QuotedStr(wwdtpcktCtrlEstoqueIni.Text ) +
                ', ''DD/MM/YYYY'') ';

 iSQL := iSQL + Sel_RegCtrlProd1;

 iSQL := iSQL + ' WHERE DATAOCORRENCIA < TO_DATE(' + QuotedStr(wwdtpcktCtrlEstoqueIni.Text ) + ', ''DD/MM/YYYY'')';

 iSQL := iSQL + Sel_RegCtrlProd2;

 if rgrpMov.ItemIndex = 1 then
    iSQL := iSQL + ' AND EF_NATUREZAOP.MOVIMENTOESTOQUE <> ''D'' ' +
                   ' AND EF_NATUREZAOP.MOVIMENTOESTOQUE <> ''E'' ' +
                   ' AND EF_KARDEX.DATAOCORRENCIA BETWEEN '+ QuotedStr(wwdtpcktCtrlEstoqueIni.Text) +
                   ' AND '+ QuotedStr(wwdtpcktCtrlEstoqueFim.Text);

 iSQL := iSQL + Sel_RegCtrlProd4 +
                   ' AND EF_PRODUTO.EMPRESAID = ' + IntToStr( EmpresaAtualId ) +
                   ' AND EF_PRODUTO.PRODUTOID BETWEEN  ' + mktProdIni.Text +
                   ' AND ' + mktProdFim.Text;
 iSQL := iSQL + '  ORDER BY 1, 2, 3, 4 ) CTRL_PRODUCAO ' +
                ' WHERE NOT ( DATAOCORRENCIA < TO_DATE(' + QuotedStr(wwdtpcktCtrlEstoqueIni.Text ) +
                ', ''DD/MM/YYYY'')  AND QUANTIDADESALDOANT < 1) ' +
                ' ORDER BY 1, 2, 3, 4';

 try
  ExecDynamicProvider(-1, iSQL, cdsCtrlEstoque );

  TNumericField( cdsCtrlEstoque.FieldByName( 'CONTACTBATIVO' ) ).EditMask := '9.9.9.99.999;0;';
  TNumericField( cdsCtrlEstoque.FieldByName( 'QUANTIDADESALDOANT' ) ).DisplayFormat := '###,###,###,##0.000';
  TNumericField( cdsCtrlEstoque.FieldByName( 'VLRCUSTOMEDIOANT' ) ).DisplayFormat := '###,###,###,##0.00';
  TNumericField( cdsCtrlEstoque.FieldByName( 'VLRCUSTOMEDIOTOTALANT' ) ).DisplayFormat := '###,###,###,##0.00';
  TNumericField( cdsCtrlEstoque.FieldByName( 'NCMID' ) ).EditMask := '>9999.99.99;0;';
  TNumericField( cdsCtrlEstoque.FieldByName( 'QTD_ENTRADA' ) ).DisplayFormat := '###,###,###,##0.000';
  TNumericField( cdsCtrlEstoque.FieldByName( 'VLRCUSTOUNITARIO_ENTRADA' ) ).DisplayFormat := '###,###,###,##0.00';
  TNumericField( cdsCtrlEstoque.FieldByName( 'VLRCUSTOTOTAL_ENTRADA' ) ).DisplayFormat := '###,###,###,##0.00';
  TNumericField( cdsCtrlEstoque.FieldByName( 'QTD_SAIDA' ) ).DisplayFormat := '###,###,###,##0.000';
  TNumericField( cdsCtrlEstoque.FieldByName( 'VLRCUSTOUNITARIO_SAIDA' ) ).DisplayFormat := '###,###,###,##0.00';
  TNumericField( cdsCtrlEstoque.FieldByName( 'VLRCUSTOTOTAL_SAIDA' ) ).DisplayFormat := '###,###,###,##0.00';
  TNumericField( cdsCtrlEstoque.FieldByName( 'QUANTIDADESALDO' ) ).DisplayFormat := '###,###,###,##0.000';
  TNumericField( cdsCtrlEstoque.FieldByName( 'VLRCUSTOMEDIO' ) ).DisplayFormat := '###,###,###,##0.00';
  TNumericField( cdsCtrlEstoque.FieldByName( 'VLRCUSTOMEDIOTOTAL' ) ).DisplayFormat := '###,###,###,##0.00';
  TNumericField( cdsCtrlEstoque.FieldByName( 'VLRBASEICMS' ) ).DisplayFormat := '###,###,###,##0.00';
  TNumericField( cdsCtrlEstoque.FieldByName( 'VLRICMS' ) ).DisplayFormat := '###,###,###,##0.00';
  TNumericField( cdsCtrlEstoque.FieldByName( 'VLRBASEIPI' ) ).DisplayFormat := '###,###,###,##0.00';
  TNumericField( cdsCtrlEstoque.FieldByName( 'VLRIPI' ) ).DisplayFormat := '###,###,###,##0.00';

  if not cdsCtrlEstoque.FieldByName( 'CPF_CNPJ').IsNull then
     if LengTh( Trim( TransfNum( cdsCtrlEstoque.FieldByName( 'CPF_CNPJ').Value ) ) ) > 13 then
        cdsCtrlEstoque.FieldByName( 'CPF_CNPJ').EditMask  := '##\.###\.###\/####\-##;0;'
     else
        cdsCtrlEstoque.FieldByName( 'CPF_CNPJ').EditMask := '##\.###\.###\/####\-##;0;';

  frmRel0019 := TfrmRel0019.Create(nil);
  frmRel0019.QuickRep1.PreviewModal;
 finally
  FreeAndNil( frmRel0019.QuickRep1 );
  FreeAndNil( frmRel0019);
 end;

end;

procedure Tfrm0019.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := cafree;
 frm0019 := nil;
end;

procedure Tfrm0019.BitBtn4Click(Sender: TObject);
begin
 frm0019.Close;
end;

procedure Tfrm0019.BitBtn3Click(Sender: TObject);
begin
 if not cdsCtrlEstoque.IsEmpty then
    begin
     frmExportar := TfrmExportar.Create(nil);
     frmExportar.DataSource := dsCtrlEstoque;
     frmExportar.Show;
    end
 else
    MessageDlg('É necessário Gerar o Relatório primeiro!',mtWarning, [mbok],0 );
end;

end.
