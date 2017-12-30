unit FuncoesServidor;

interface

uses SysUtils, SqlExpr, IniFiles, DBXpress, Variants;

  procedure CriaArqIni;
  procedure DestroiArqIni;
  procedure GravaConfig( Sistema, Parametro, Valor: String );
  function LeConfig( Sistema, Parametro: String; ValorDefault: String = '' ): String;
  function ExecSequencia( Value : WideString ; sqlCnn: TSQLConnection ): Integer;
  function TaxaDiaria(Data, Campo: String ;  sqlCnn: TSQLConnection): Currency;
  function AliquotaImposto( ImpostoID : String; sqlCnn: TSQLConnection ) : Real;
  function AliquotaICMS( TipoMovimento : String; EmpresaId : Integer; UFID : String; Contribuinte : Integer; sqlCnn: TSQLConnection ) : Real;
  procedure ReprocessarKardex( EmpresaID, ProdutoID : String; sqlKDX, sqlUpd : TSQLQuery; Tabela, Posicao : Integer );
  procedure SaldoKdxNaData( EmpresaID, ProdutoID, DtPosicao : String; sqlKDX : TSQLQuery; Tabela : Integer );  

var
  ConfigArqIni : TIniFile;

  TD: TTransactionDesc;

const
  NomeIni: String = 'F:\SISTEMAS\ConfigTMB\ConfigTmb.ini';

const SelectDeclaracaoCustoTransf = 'SELECT' +
                                    '  IT_DECLARACAO.DECLARACAOID,' +
                                    '  IT_DECLARACAO.DATAENTRADANFEID,' +
                                    '  IT_DECLARACAO.NFEID,' +
                                    '  IT_DECLARACAO.DIID,' +
                                    '  IT_MERCADORIA.EMPRESAID,' +
                                    '  IT_MERCADORIA.PRODUTOID,' +
                                    '  IT_MERCADORIA.QUANTIDADE,' +
                                    '  ( CASE ' +
                                    '    WHEN ( EF_PRODUTO.EMPRESAID = 12 AND EF_PRODUTO.EMPRESASIMILARID IS NOT NULL ) THEN ' +
                                    '     EF_PRODUTO.EMPRESASIMILARID ' +
                                    '    ELSE ' +
                                    '     EF_PRODUTO.EMPRESAID ' +
                                    '    END ) AS EMP_SIMILARID, ' +
                                    '  ( CASE ' +
                                    '     WHEN ( EF_PRODUTO.EMPRESAID = 12 AND EF_PRODUTO.PRODUTOSIMILARID IS NOT NULL ) THEN ' +
                                    '      EF_PRODUTO.PRODUTOSIMILARID ' +
                                    '     ELSE ' +
                                    '      EF_PRODUTO.PRODUTOID ' +
                                    '   END ) AS PROD_SIMILARID, ' +
                                    '  IT_MERCADORIA.ALIQUOTAII,' +
                                    '  IT_MERCADORIA.ALIQUOTAIPI,' +
                                    '  IT_MERCADORIA.VLRCIF,' +
                                    '  IT_DECLARACAO.DATALIBERACAO,' +
                                    '  IT_DECLARACAO.DATAREGISTRO,' +
                                    '  IT_MERCADORIA.VLRFOB,' +
                                    '  IT_MERCADORIA.PESOLIQUIDO,' +
                                    '  IT_MERCADORIA.PESOBRUTO,' +
                                    '  IT_MERCADORIA.QUANTIDADE,' +
                                    '  IT_MERCADORIA.VLRCUSTOMOVIMENTO,' +
                                    '  /* Cálculo do Custo preço de Transferência */' +
                                    '  ROUND(' +
                                    '  DECODE( IT_DECLARACAO.AGREGARVLRFOB, 0, 0,' +
                                    '                                       1, IT_MERCADORIA.VLRFOB ) +' +
                                    '  /* Parte do cálculo do Frete */' +
                                    '  DECODE( IT_DECLARACAO.FRETEPAGO,' +
                                    '   1, 0,' +
                                    '   0, ( ( NVL( IT_DECLARACAO.VLRFRETE, 0 ) / ( SELECT SUM( NVL( IT_MERCADORIA.PESOBRUTO, 0 ) )' +
                                    '                                               FROM IT_MERCADORIA' +
                                    '                                               WHERE' +
                                    '                                               IT_MERCADORIA.DECLARACAOID = IT_DECLARACAO.DECLARACAOID ) ) *' +
                                    '          IT_MERCADORIA.PESOBRUTO ) * DECODE( IT_DECLARACAO.TIPOMOEDAFRETE,' +
                                    '                                              ''D'', IT_INDICE.DOLARFISCALDIARIO,' +
                                    '                                              ''Y'', IT_INDICE.YENEFISCALDIARIO ) ) +' +
                                    '  /* Valor do II com base no rateio por adição */' +
                                    '  ( IT_ADICAO.VLRII / IT_ADICAO.VLRFOB ) * IT_MERCADORIA.VLRFOB +' +
                                    '  /* Valor do Seguro Internacional */' +
                                    '  DECODE( IT_DECLARACAO.FRETEPAGO, 1, 0,' +
                                    '                                   0, ( IT_DECLARACAO.VLRTOTALSEGUROTRANSP /' +
                                    '                                        ( SELECT SUM( NVL(IT_MERCADORIA.VLRFOB, 0 ) )' +
                                    '                                           FROM IT_MERCADORIA' +
                                    '                                          WHERE' +
                                    '                                          IT_MERCADORIA.DECLARACAOID = IT_DECLARACAO.DECLARACAOID ) )' +
                                    '   * IT_MERCADORIA.VLRFOB ) , 2 ) AS VLRCUSTOTRANSFERENCIA' +
                                    ' FROM IT_MERCADORIA IT_MERCADORIA,' +
                                    '      IT_DECLARACAO IT_DECLARACAO,' +
                                    '      IT_ADICAO IT_ADICAO,' +
                                    '      IT_INDICE,' +
                                    '      EF_PRODUTO' +
                                    ' WHERE' +
                                    '  IT_DECLARACAO.DATAREGISTRO IS NOT NULL' +
                                    '  AND IT_DECLARACAO.NFEID IS NOT NULL' +
                                    '  AND NVL( IT_MERCADORIA.PESOBRUTO, 0 ) > 0' +
                                    '  AND NVL( IT_MERCADORIA.VLRFOB,0 ) > 0' +
                                    '  AND NVL( IT_ADICAO.VLRFOB,0 ) > 0' +
                                    '  AND ( IT_DECLARACAO.EMPRESAID = 1 OR IT_DECLARACAO.EMPRESAID = 12 ) ' +
                                    '  AND IT_DECLARACAO.DATAREGISTRO = IT_INDICE.DATAID(+)' +
                                    '  AND IT_DECLARACAO.DECLARACAOID = IT_MERCADORIA.DECLARACAOID' +
                                    '  AND IT_MERCADORIA.DECLARACAOID = IT_ADICAO.DECLARACAOID' +
                                    '  AND IT_MERCADORIA.NCMID = IT_ADICAO.NCMID' +
                                    '  AND IT_MERCADORIA.EMPRESAID = EF_PRODUTO.EMPRESAID ' +
                                    '  AND IT_MERCADORIA.PRODUTOID = EF_PRODUTO.PRODUTOID ';

const SelectKdxTransfEntradas = 'SELECT EF_KDXTRANSF.KARDEXID,' +
                                '       EF_KDXTRANSF.DATAOCORRENCIA,' +
                                '       EF_KDXTRANSF.NUMDOCUMENTO,' +
                                '       EF_KDXTRANSF.TIPODOCUMENTO,' +
                                '       EF_KDXTRANSF.TIPOESTOQUE,' +
                                '       EF_KDXTRANSF.OSID,' +
                                '       EF_KDXTRANSF.DIID,' +
                                '       EF_KDXTRANSF.NATUREZAOPID,' +
                                '       EF_KDXTRANSF.TIPOOPERACAO,' +
                                '       EF_KDXTRANSF.EMPRESAID,' +
                                '       EF_KDXTRANSF.PRODUTOID,' +
                                '       EF_KDXTRANSF.QUANTIDADE,' +
                                '       EF_KDXTRANSF.VLRCUSTOUNITARIO,' +
                                '       EF_KDXTRANSF.VLRCUSTOTOTAL,' +
                                '       EF_KDXTRANSF.QUANTIDADESALDO,' +
                                '       EF_KDXTRANSF.VLRCUSTOMEDIO,' +
                                '       EF_KDXTRANSF.VLRCUSTOMEDIOTOTAL,' +
                                '       EF_KDXTRANSF.VLRCUSTOMEDIOANTERIOR,' +
                                '       EF_KDXTRANSF.ESTOQUENOVO,' +
                                '       EF_KDXTRANSF.ESTOQUEREVISADO,' +
                                '       EF_KDXTRANSF.ESTOQUEFISICO,' +
                                '       EF_KDXTRANSF.ESTOQUEPEDENTRADA,' +
                                '       EF_KDXTRANSF.ESTOQUEPEDSAIDA,' +
                                '       EF_KDXTRANSF.ESTOQUEEMTERCEIRO,' +
                                '       EF_KDXTRANSF.ESTOQUEDETERCEIRO,' +
                                '       EF_KDXTRANSF.ESTOQUEMINIMO,' +
                                '       EF_KDXTRANSF.ESTOQUEEMPENHO,' +
                                '       EF_KDXTRANSF.ESTOQUEVALE,' +
                                '       EF_KDXTRANSF.ESTOQUEESTORNO,' +
                                '       EF_KDXTRANSF.ESTOQUEQUARENTENA,' +
                                '       EF_KDXTRANSF.ESTOQUETOTAL,' +
                                '       EF_KDXTRANSF.USUARIO' +
                                '  FROM EF_KDXTRANSF,' +
                                '       EF_NATUREZAOP EF_NATUREZAOP' +
                                ' WHERE EF_KDXTRANSF.NATUREZAOPID = EF_NATUREZAOP.NATUREZAOPID AND' +
                                '       NVL(EF_NATUREZAOP.ENTRADAPRECOTRANSF, 0) = 1 AND' +
                                '       EF_NATUREZAOP.TIPOMOVIMENTO = ''E''';

const SelectKardexReprocessar = 'SELECT'+
                                '  EF_KARDEX.EMPRESAID,'+
                                '  EF_KARDEX.KARDEXID,'+
                                '  EF_KARDEX.DATAOCORRENCIA,'+
                                '  EF_KARDEX.NUMDOCUMENTO,'+
                                '  EF_KARDEX.TIPODOCUMENTO,'+
                                '  EF_KARDEX.TIPOESTOQUE,'+
                                '  EF_KARDEX.OSID,'+
                                '  EF_KARDEX.DIID,'+
                                '  EF_KARDEX.NATUREZAOPID,'+
                                '  EF_KARDEX.TIPOOPERACAO,'+
                                '  EF_KARDEX.PRODUTOID,'+
                                '  EF_KARDEX.QUANTIDADE,'+
                                '  EF_KARDEX.VLRCUSTOUNITARIO,'+
                                '  EF_KARDEX.VLRCUSTOTOTAL,'+
                                '  EF_KARDEX.QUANTIDADESALDO,'+
                                '  EF_KARDEX.VLRCUSTOMEDIO,'+
                                '  EF_KARDEX.VLRCUSTOMEDIOTOTAL,'+
                                '  EF_KARDEX.VLRCUSTOMEDIOANTERIOR,'+
                                '  EF_KARDEX.ESTOQUEFISICO,'+
                                '  EF_KARDEX.ESTOQUENOVO,'+
                                '  EF_KARDEX.ESTOQUEREVISADO,'+
                                '  EF_KARDEX.ESTOQUEFISICO,'+
                                '  EF_KARDEX.ESTOQUEPEDENTRADA,'+
                                '  EF_KARDEX.ESTOQUEPEDSAIDA,'+
                                '  EF_KARDEX.ESTOQUEEMTERCEIRO,'+
                                '  EF_KARDEX.ESTOQUEDETERCEIRO,'+
                                '  EF_KARDEX.ESTOQUEMINIMO,'+
                                '  EF_KARDEX.ESTOQUEEMPENHO,'+
                                '  EF_KARDEX.ESTOQUEVALE,'+
                                '  EF_KARDEX.ESTOQUEESTORNO,'+
                                '  EF_KARDEX.ESTOQUEQUARENTENA,'+
                                '  EF_KARDEX.ESTOQUETOTAL,'+
                                '  EF_NATUREZAOP.MOVIMENTOESTOQUE,'+
                                '  EF_NATUREZAOP.VENDAFATANTECIPADO'+
                                '  FROM'+
                                '  EF_KARDEX EF_KARDEX,'+
                                '  EF_NATUREZAOP EF_NATUREZAOP'+
                                ' WHERE'+
                                '  EF_KARDEX.NATUREZAOPID = EF_NATUREZAOP.NATUREZAOPID(+)';

const SelectKdxTransfReprocessar = 'SELECT'+
                                   '  EF_KDXTRANSF.EMPRESAID,'+
                                   '  EF_KDXTRANSF.KARDEXID,'+
                                   '  EF_KDXTRANSF.DATAOCORRENCIA,'+
                                   '  EF_KDXTRANSF.NUMDOCUMENTO,'+
                                   '  EF_KDXTRANSF.TIPODOCUMENTO,'+
                                   '  EF_KDXTRANSF.TIPOESTOQUE,'+
                                   '  EF_KDXTRANSF.OSID,'+
                                   '  EF_KDXTRANSF.DIID,'+
                                   '  EF_KDXTRANSF.NATUREZAOPID,'+
                                   '  EF_KDXTRANSF.TIPOOPERACAO,'+
                                   '  EF_KDXTRANSF.PRODUTOID,'+
                                   '  EF_KDXTRANSF.QUANTIDADE,'+
                                   '  EF_KDXTRANSF.VLRCUSTOUNITARIO,'+
                                   '  EF_KDXTRANSF.VLRCUSTOTOTAL,'+
                                   '  EF_KDXTRANSF.QUANTIDADESALDO,'+
                                   '  EF_KDXTRANSF.VLRCUSTOMEDIO,'+
                                   '  EF_KDXTRANSF.VLRCUSTOMEDIOTOTAL,'+
                                   '  EF_KDXTRANSF.VLRCUSTOMEDIOANTERIOR,'+
                                   '  EF_KDXTRANSF.ESTOQUEFISICO,'+
                                   '  EF_KDXTRANSF.ESTOQUENOVO,'+
                                   '  EF_KDXTRANSF.ESTOQUEREVISADO,'+
                                   '  EF_KDXTRANSF.ESTOQUEFISICO,'+
                                   '  EF_KDXTRANSF.ESTOQUEPEDENTRADA,'+
                                   '  EF_KDXTRANSF.ESTOQUEPEDSAIDA,'+
                                   '  EF_KDXTRANSF.ESTOQUEEMTERCEIRO,'+
                                   '  EF_KDXTRANSF.ESTOQUEDETERCEIRO,'+
                                   '  EF_KDXTRANSF.ESTOQUEMINIMO,'+
                                   '  EF_KDXTRANSF.ESTOQUEEMPENHO,'+
                                   '  EF_KDXTRANSF.ESTOQUEVALE,'+
                                   '  EF_KDXTRANSF.ESTOQUEESTORNO,'+
                                   '  EF_KDXTRANSF.ESTOQUEQUARENTENA,'+
                                   '  EF_KDXTRANSF.ESTOQUETOTAL,'+
                                   '  EF_NATUREZAOP.MOVIMENTOESTOQUE,'+
                                   '  EF_NATUREZAOP.VENDAFATANTECIPADO'+
                                   '  FROM'+
                                   '  EF_KDXTRANSF EF_KDXTRANSF,'+
                                   '  EF_NATUREZAOP EF_NATUREZAOP'+
                                   ' WHERE'+
                                   '  EF_KDXTRANSF.NATUREZAOPID = EF_NATUREZAOP.NATUREZAOPID(+)';

const SelectSaldoKdxNaData    =  'SELECT EF_KARDEX.EMPRESAID,' +
                                 '       EF_KARDEX.KARDEXID,' +
                                 '       EF_KARDEX.PRODUTOID,' +
                                 '       EF_KARDEX.NUMDOCUMENTO,' +
                                 '       EF_KARDEX.DATAOCORRENCIA,' +
                                 '       EF_KARDEX.QUANTIDADESALDO,' +
                                 '       EF_KARDEX.VLRCUSTOMEDIOTOTAL,' +
                                 '       EF_PRODUTO.SUBGRUPOID,' +
                                 '       EF_SUBGRUPO.SIGLAGRUPO,' +
                                 '       EF_SUBGRUPO.DESCRICAO' +
                                 '  FROM EF_KARDEX, EF_PRODUTO, EF_SUBGRUPO' +
                                 ' WHERE (EF_KARDEX.EMPRESAID, EF_KARDEX.PRODUTOID, EF_KARDEX.DATAOCORRENCIA,' +
                                 '        EF_KARDEX.KARDEXID) IN' +
                                 '       (SELECT EF_KARDEX.EMPRESAID,' +
                                 '               EF_KARDEX.PRODUTOID,' +
                                 '               MAX(EF_KARDEX.DATAOCORRENCIA),' +
                                 '               MAX(EF_KARDEX.KARDEXID)' +
                                 '          FROM EF_KARDEX, EF_PRODUTO' +
                                 '         WHERE ';
const SelectSaldoKdxNaData2    = '               AND EF_KARDEX.EMPRESAID = EF_PRODUTO.EMPRESAID' +
                                 '               AND EF_KARDEX.PRODUTOID = EF_PRODUTO.PRODUTOID' +
                                 '         GROUP BY EF_KARDEX.EMPRESAID, EF_KARDEX.PRODUTOID)' +
                                 '       AND EF_PRODUTO.EMPRESAID = EF_KARDEX.EMPRESAID' +
                                 '       AND EF_PRODUTO.PRODUTOID = EF_KARDEX.PRODUTOID' +
                                 '       AND EF_PRODUTO.SUBGRUPOID = EF_SUBGRUPO.SUBGRUPOID';


const SelectSaldoKdxTransfNaData =  'SELECT EF_KDXTRANSF.EMPRESAID,' +
                                 '       EF_KDXTRANSF.KARDEXID,' +
                                 '       EF_KDXTRANSF.PRODUTOID,' +
                                 '       EF_KDXTRANSF.NUMDOCUMENTO,' +
                                 '       EF_KDXTRANSF.DATAOCORRENCIA,' +
                                 '       EF_KDXTRANSF.QUANTIDADESALDO,' +
                                 '       EF_KDXTRANSF.VLRCUSTOMEDIOTOTAL,' +
                                 '       EF_PRODUTO.SUBGRUPOID,' +
                                 '       EF_SUBGRUPO.SIGLAGRUPO,' +
                                 '       EF_SUBGRUPO.DESCRICAO' +
                                 '  FROM EF_KDXTRANSF, EF_PRODUTO, EF_SUBGRUPO' +
                                 ' WHERE (EF_KDXTRANSF.EMPRESAID, EF_KDXTRANSF.PRODUTOID, EF_KDXTRANSF.DATAOCORRENCIA,' +
                                 '        EF_KDXTRANSF.KARDEXID) IN' +
                                 '       (SELECT EF_KDXTRANSF.EMPRESAID,' +
                                 '               EF_KDXTRANSF.PRODUTOID,' +
                                 '               MAX(EF_KDXTRANSF.DATAOCORRENCIA),' +
                                 '               MAX(EF_KDXTRANSF.KARDEXID)' +
                                 '          FROM EF_KDXTRANSF, EF_PRODUTO' +
                                 '         WHERE ';
const SelectSaldoKdxTransfNaData2 = '               AND EF_KDXTRANSF.EMPRESAID = EF_PRODUTO.EMPRESAID' +
                                 '               AND EF_KDXTRANSF.PRODUTOID = EF_PRODUTO.PRODUTOID' +
                                 '         GROUP BY EF_KDXTRANSF.EMPRESAID, EF_KDXTRANSF.PRODUTOID)' +
                                 '       AND EF_PRODUTO.EMPRESAID = EF_KDXTRANSF.EMPRESAID' +
                                 '       AND EF_PRODUTO.PRODUTOID = EF_KDXTRANSF.PRODUTOID' +
                                 '       AND EF_PRODUTO.SUBGRUPOID = EF_SUBGRUPO.SUBGRUPOID';


const SelectProdSimilarImport = 'SELECT (CASE'+
                                 '         WHEN (EMPRESAID = 12 AND EMPRESASIMILARID IS NOT NULL) THEN'+
                                 '          EMPRESASIMILARID'+
                                 '         ELSE'+
                                 '          EMPRESAID'+
                                 '       END) AS EMP_SIMILARID,'+
                                 '       (CASE'+
                                 '         WHEN (EMPRESAID = 12 AND PRODUTOSIMILARID IS NOT NULL) THEN'+
                                 '          PRODUTOSIMILARID'+
                                 '         ELSE'+
                                 '          PRODUTOID'+
                                 '       END) AS PROD_SIMILARID'+
                                 '  FROM EF_PRODUTO EF_PRODUTO'+
                                 ' WHERE EF_PRODUTO.ORIGEM = ''I'' AND (EMPRESAID = 1 OR EMPRESAID = 12)'+
                                 ' ORDER BY 1, 2';

implementation

uses FuncoesDSI;

procedure CriaArqIni;
begin
 ConfigArqIni := TIniFile.Create( NomeIni );
end;

procedure DestroiArqIni;
begin
 FreeAndNil( ConfigArqIni );
end;

procedure GravaConfig( Sistema, Parametro, Valor: String );
begin
 ConfigArqIni.WriteString( Sistema, Parametro, Valor );
end;

function LeConfig( Sistema, Parametro: String; ValorDefault: String = '' ): String;
begin
 Result := ConfigArqIni.ReadString( Sistema, Parametro, ValorDefault);
end;

function ExecSequencia( Value : WideString ; sqlCnn: TSQLConnection ): Integer;
var sqlQuery: TSQLQuery;
begin
 Result    := 0;
 try
  sqlQuery := TSQLQuery.Create(nil);
  sqlQuery.SQLConnection := sqlCnn;

  try
   sqlQuery.SQL.Add('SELECT ' + Value + '.NEXTVAL VALOR FROM DUAL');
   sqlQuery.Open;

   if sqlQuery.IsEmpty then
      raise Exception.Create( 'Sequencia não foi criado para o kardex' );

   Result := sqlQuery.FieldByName( 'VALOR' ).AsInteger;

   sqlQuery.Close;
  finally
   FreeAndNil(sqlQuery);
  end;
 except
  on E:Exception do
     Raise Exception.Create(E.Message);
 end;
end;

function TaxaDiaria( Data, Campo: String; sqlCnn: TSQLConnection): Currency;
var sqlQuery: TSQLQuery;
begin
 Result    := 0;
 try
  if Data = '' then
     exit;

  if ( StrToDate(Data) < StrToDate('04/01/1999') ) then
     exit;

  sqlQuery := TSQLQuery.Create(nil);
  sqlQuery.SQLConnection := sqlCnn;

  try
   sqlQuery.SQL.Add('SELECT ' + Campo );
   sqlQuery.SQL.Add('  FROM IT_INDICE');
   sqlQuery.SQL.Add(' WHERE DATAID = ' + QuotedStr(Data));
   sqlQuery.Open;

   if not sqlQuery.IsEmpty then
      Result := sqlQuery.FieldByName( Campo ).AsFloat;

  finally
   FreeAndNil(sqlQuery);
  end;
 except
  on E:Exception do
     Raise Exception.Create(E.Message);
 end;
end;

function AliquotaImposto( ImpostoID : String; sqlCnn: TSQLConnection ) : Real;
var sqlImposto : TSQLQuery;
begin
 sqlImposto := TSQLQuery.Create(nil);
 sqlImposto.SQLConnection := sqlCnn;
 try
  sqlImposto.SQL.Clear;
  sqlImposto.SQL.Add('SELECT IMPOSTOID, VLRALIQUOTA ' );
  sqlImposto.SQL.Add('  FROM EF_IMPOSTO ' );
  sqlImposto.SQL.Add(' WHERE IMPOSTOID = ' + QuotedStr( ImpostoID ) );
  sqlImposto.Prepared := True;
  sqlImposto.Open;

  Result := sqlImposto.FieldByName('VLRALIQUOTA').AsFloat;

  sqlImposto.Close;

 finally
  FreeAndNil( sqlImposto );
 end;
end;

function AliquotaICMS( TipoMovimento : String; EmpresaId : Integer; UFID : String; Contribuinte : Integer; sqlCnn: TSQLConnection ) : Real;
var sqlUF, sqlEmp : TSQLQuery;
begin
 sqlUF := TSQLQuery.Create(nil);
 sqlUF.SQLConnection := sqlCnn;

 sqlEmp := TSQLQuery.Create(nil);
 sqlEmp.SQLConnection := sqlCnn;

 try
  sqlEmp.SQL.Clear ;
  sqlEmp.SQL.Add('SELECT EMPRESAID, ALIQUOTAICMSNAOCONTRIB, SIGLAUFID ' );
  sqlEmp.SQL.Add('  FROM EF_EMPRESA ' );
  sqlEmp.SQL.Add(' WHERE EMPRESAID = ' + IntToStr( EmpresaID ) );
  sqlEmp.Prepared := True;
  sqlEmp.Open;


  sqlUF.SQL.Clear;
  sqlUF.SQL.Add('SELECT ORIGEMUFID, DESTINOUFID, ALIQUOTAICMSCONTRIB, ALIQUOTAICMSNAOCONTRIB ' );
  sqlUF.SQL.Add('  FROM EF_OPPRESTINTERESTADUAL ' );

  if TipoMovimento = 'S' then
     begin
      sqlUF.SQL.Add(' WHERE ORIGEMUFID = ' + QuotedStr(  sqlEmp.FieldByName('SIGLAUFID').AsString ) );
      sqlUF.SQL.Add(' AND DESTINOUFID  = ' + QuotedStr( UFID ) );
     end
  else
     begin
      sqlUF.SQL.Add(' WHERE ORIGEMUFID = ' + QuotedStr( UFID ) );
      sqlUF.SQL.Add(' AND DESTINOUFID  = ' + QuotedStr(  sqlEmp.FieldByName('SIGLAUFID').AsString ) );
     end;


  sqlUF.Prepared := True;
  sqlUF.Open;

  if Contribuinte = 1 then
     Result := sqlUF.FieldByName('ALIQUOTAICMSCONTRIB').AsFloat
  else
     Result := sqlEmp.FieldByName('ALIQUOTAICMSNAOCONTRIB').AsFloat;

  sqlUF.Close;
  sqlEmp.Close;

 finally
  FreeAndNil( sqlUF );
  FreeAndNil( sqlEmp );
 end;
end;

procedure ReprocessarKardex( EmpresaID, ProdutoID : String; sqlKDX, sqlUpd : TSQLQuery; Tabela, Posicao : Integer );
var QtdDeTerceiro, QtdEmTerceiro, QtdFisico, QtdSaldo,
    CustoUnitario, CustoTotal, CustoMedio, CustoMedioTotal, CustoMedioAnterior : Currency;

 procedure AtualKardex;
 begin
  sqlUpd.SQL.Clear;
  case Tabela of
  1 : sqlUpd.SQL.Add('UPDATE EF_KARDEX SET ');
  2 : sqlUpd.SQL.Add('UPDATE EF_KDXTRANSF SET ');
  end;

  sqlUpd.SQL.Add(' ESTOQUEDETERCEIRO     = ' + SubstituiString( FloatToStr( QtdDeTerceiro  ), ',', '.' ) + ',' );
  sqlUpd.SQL.Add(' ESTOQUEEMTERCEIRO     = ' + SubstituiString( FloatToStr( QtdEmTerceiro  ), ',', '.' ) + ',' );
  sqlUpd.SQL.Add(' ESTOQUEFISICO         = ' + SubstituiString( FloatToStr( QtdFisico  ), ',', '.' ) + ',' );
  sqlUpd.SQL.Add(' QUANTIDADE            = ' + SubstituiString( FloatToStr( QtdFisico  ), ',', '.' ) + ',' );
  sqlUpd.SQL.Add(' VLRCUSTOUNITARIO      = ' + SubstituiString( FloatToStr( CustoUnitario  ), ',', '.' ) + ',' );
  sqlUpd.SQL.Add(' VLRCUSTOTOTAL         = ' + SubstituiString( FloatToStr( CustoTotal  ), ',', '.' ) + ',' );
  sqlUpd.SQL.Add(' QUANTIDADESALDO       = ' + SubstituiString( FloatToStr( QtdSaldo  ), ',', '.' ) + ',' );
  sqlUpd.SQL.Add(' VLRCUSTOMEDIO         = ' + SubstituiString( FloatToStr( CustoMedio  ), ',', '.' ) + ',' );
  sqlUpd.SQL.Add(' VLRCUSTOMEDIOTOTAL    = ' + SubstituiString( FloatToStr( CustoMedioTotal  ), ',', '.' ) + ',' );
  sqlUpd.SQL.Add(' VLRCUSTOMEDIOANTERIOR = ' + SubstituiString( FloatToStr( CustoMedioAnterior  ), ',', '.' ) );
  sqlUpd.SQL.Add('WHERE ');
  sqlUpd.SQL.Add(' EMPRESAID          = ' + sqlKdx.FieldByName('EMPRESAID').AsString  );
  sqlUpd.SQL.Add(' AND KARDEXID       = ' + sqlKdx.FieldByName('KARDEXID').AsString );
  sqlUpd.SQL.Add(' AND DATAOCORRENCIA = ' + QuotedStr( sqlKdx.FieldByName('DATAOCORRENCIA').AsString ) );
  sqlUpd.ExecSQL( False );
 end;


begin
 sqlKdx.SQL.Clear;
 case Tabela of
 1  : begin
       sqlKdx.SQL.Add( SelectKardexReprocessar );
       sqlKdx.SQL.Add('  AND EF_KARDEX.EMPRESAID = ' + EmpresaID );
       sqlKdx.SQL.Add('  AND EF_KARDEX.PRODUTOID = ' + ProdutoID );

       if Posicao > 0 then
          sqlKdx.SQL.Add('  AND EF_KARDEX.KARDEXID >= ' + IntToStr( Posicao ) );

       sqlKdx.SQL.Add('  ORDER BY EF_KARDEX.EMPRESAID,EF_KARDEX.PRODUTOID, EF_KARDEX.DATAOCORRENCIA, EF_KARDEX.KARDEXID');
      end;

 2  : begin
       sqlKdx.SQL.Add( SelectKdxTransfReprocessar );
       sqlKdx.SQL.Add('  AND EF_KDXTRANSF.EMPRESAID = ' + EmpresaID );
       sqlKdx.SQL.Add('  AND EF_KDXTRANSF.PRODUTOID = ' + ProdutoID );

       if Posicao > 0 then
          sqlKdx.SQL.Add('  AND EF_KDXTRANSF.KARDEXID >= ' + IntToStr( Posicao ) );

       sqlKdx.SQL.Add('  ORDER BY EF_KDXTRANSF.EMPRESAID,EF_KDXTRANSF.PRODUTOID, EF_KDXTRANSF.DATAOCORRENCIA, EF_KDXTRANSF.KARDEXID');
      end;
 end;

 sqlKdx.Prepared := True;
 sqlKdx.Open;

 if sqlKDX.IsEmpty then
    exit;

 QtdDeTerceiro      := sqlKdx.FieldByName('ESTOQUEDETERCEIRO').AsCurrency;
 QtdEmTerceiro      := sqlKdx.FieldByName('ESTOQUEEMTERCEIRO').AsCurrency;
 QtdFisico          := sqlKdx.FieldByName('ESTOQUEFISICO').AsCurrency;
 QtdSaldo           := sqlKdx.FieldByName('QUANTIDADESALDO').AsCurrency;

 if Posicao = 0 then
    begin
     CustoUnitario   := sqlKdx.FieldByName('VLRCUSTOUNITARIO').AsCurrency;
     CustoTotal      := sqlKdx.FieldByName('VLRCUSTOTOTAL').AsCurrency;
     CustoMedio      := CustoUnitario;
     CustoMedioTotal := CustoUnitario * QtdSaldo;
     AtualKardex;
    end
 else
    begin
     CustoMedio      := sqlKdx.FieldByName('VLRCUSTOMEDIO').AsCurrency;
     CustoMedioTotal := sqlKdx.FieldByName('VLRCUSTOMEDIOTOTAL').AsCurrency;
    end;

 sqlKdx.Next;
 while not sqlKdx.Eof do
 begin
  CustoMedioAnterior := CustoMedio;
  CustoUnitario      := CustoMedio;

  if sqlKdx.FieldByName('TIPODOCUMENTO').AsString = 'DMC' then
     begin
      if sqlKdx.FieldByName('TIPOOPERACAO').AsString = 'S' then
         begin
          QtdFisico     := sqlKdx.FieldByName('QUANTIDADE').AsCurrency;
          CustoUnitario := sqlKdx.FieldByName('VLRCUSTOUNITARIO').AsCurrency;

          if sqlKdx.FieldByName('QUANTIDADESALDO').AsCurrency = 0 then
             CustoMedio := 0
          else
             CustoMedio    := ( CustoMedioTotal - ( CustoUnitario * QtdFisico ) ) / QtdSaldo;
         end
      else
         begin
          CustoMedio := ( ( CustoMedio * QtdSaldo ) + sqlKdx.FieldByName('VLRCUSTOTOTAL').AsCurrency ) / sqlKdx.FieldByName('QUANTIDADESALDO').AsCurrency;

          QtdSaldo   := QtdSaldo + sqlKdx.FieldByName('QUANTIDADE').AsCurrency;
          QtdFisico  := QtdFisico + sqlKdx.FieldByName('QUANTIDADE').AsCurrency;
         end
     end;

  if ( sqlKdx.FieldByName('TIPODOCUMENTO').AsString = 'NFS' ) or ( sqlKdx.FieldByName('TIPODOCUMENTO').AsString = 'NFF' ) or
     ( sqlKdx.FieldByName('TIPODOCUMENTO').AsString = 'TMC' )then
     begin
      case sqlKdx.FieldByName('MOVIMENTOESTOQUE').AsString[1] of
      'N' : begin
             if sqlKdx.FieldByName('VENDAFATANTECIPADO').AsInteger = 0 then
                begin
                 QtdSaldo  := QtdSaldo - sqlKdx.FieldByName('QUANTIDADE').AsCurrency;
                 QtdFisico := sqlKdx.FieldByName('QUANTIDADE').AsCurrency;
                end
            end;

      'Q' : begin
             QtdSaldo  := QtdSaldo - sqlKdx.FieldByName('QUANTIDADE').AsCurrency;
             QtdFisico := sqlKdx.FieldByName('QUANTIDADE').AsCurrency;
            end;

      'D' : QtdDeTerceiro  := QtdDeTerceiro - sqlKdx.FieldByName('QUANTIDADE').AsCurrency;

      'E' : begin
             if sqlKdx.FieldByName('TIPOESTOQUE').AsString = 'FIS' then
                QtdFisico := sqlKdx.FieldByName('QUANTIDADE').AsCurrency;

             if sqlKdx.FieldByName('TIPOESTOQUE').AsString = 'EMT' then
                QtdEmTerceiro := QtdEmTerceiro + sqlKdx.FieldByName('QUANTIDADE').AsCurrency;
            end;
      end;
     end;

  if ( sqlKdx.FieldByName('TIPODOCUMENTO').AsString = 'NFE' ) or ( sqlKdx.FieldByName('TIPODOCUMENTO').AsString = 'NF3' ) then
     begin
      if ( sqlKdx.FieldByName('MOVIMENTOESTOQUE').AsString = 'N' ) or
         ( sqlKdx.FieldByName('MOVIMENTOESTOQUE').AsString = 'V' ) or
         ( sqlKdx.FieldByName('MOVIMENTOESTOQUE').AsString = 'Q' ) then
         begin
          QtdSaldo      := QtdSaldo  + sqlKdx.FieldByName('QUANTIDADE').AsCurrency;
          QtdFisico     := sqlKdx.FieldByName('QUANTIDADE').AsCurrency;
          CustoUnitario := sqlKdx.FieldByName('VLRCUSTOUNITARIO').AsCurrency;
          CustoMedio    := ( CustoMedioTotal + ( CustoUnitario * sqlKdx.FieldByName('QUANTIDADE').AsCurrency ) ) / QtdSaldo;
         end;

      if sqlKdx.FieldByName('MOVIMENTOESTOQUE').AsString = 'D' then
         QtdDeTerceiro := QtdDeTerceiro + sqlKdx.FieldByName('QUANTIDADE').AsCurrency;

      if sqlKdx.FieldByName('MOVIMENTOESTOQUE').AsString = 'E' then
         begin
          if sqlKdx.FieldByName('TIPOESTOQUE').AsString = 'FIS' then
             QtdFisico := sqlKdx.FieldByName('QUANTIDADE').AsCurrency;

          if sqlKdx.FieldByName('TIPOESTOQUE').AsString = 'EMT' then
             begin
              QtdEmTerceiro  := QtdEmTerceiro - sqlKdx.FieldByName('QUANTIDADE').AsCurrency;
              QtdFisico      := sqlKdx.FieldByName('QUANTIDADE').AsCurrency;
             end;
         end;
     end;

  if QtdSaldo < 0 then
     QtdSaldo := 0;

  if QtdFisico < 0 then
     QtdFisico := 0;

  CustoTotal      := CustoUnitario * QtdFisico;
  CustoMedioTotal := CustoMedio * QtdSaldo;

  AtualKardex;

  sqlKdx.Next;
 end;

 // Não atualizar os custos quando for para recálculo de preço transferência
 if Tabela = 2 then
    exit;

 // Voltar o saldo pois houve mudança na quantidade pedida
 sqlUpd.SQL.Clear;
 sqlUpd.SQL.Add('UPDATE EF_PRODUTO SET ');
 sqlUpd.SQL.Add(' CUSTOMEDIO        = ' + SubstituiString( FloatToStr( CustoMedio ), ',', '.' ) + ',' );
 sqlUpd.SQL.Add(' CUSTOTOTAL        = ' + SubstituiString( FloatToStr( CustoMedioTotal ), ',', '.' ) );
 sqlUpd.SQL.Add('WHERE ');
 sqlUpd.SQL.Add(' EMPRESAID     = ' + EmpresaID );
 sqlUpd.SQL.Add(' AND PRODUTOID = ' + ProdutoID );
 sqlUpd.ExecSQL( False );
end;

procedure SaldoKdxNaData( EmpresaID, ProdutoID, DtPosicao : String; sqlKDX : TSQLQuery; Tabela : Integer );
begin
 sqlKdx.Close;
 sqlKdx.SQL.Clear;
 case Tabela of
 1  : begin
       sqlKdx.SQL.Add( SelectSaldoKdxNaData );
       sqlKdx.SQL.Add( '         DATAOCORRENCIA <= TO_DATE(' + QuotedStr( DtPosicao ) + ', ''DD/MM/YYYY'')' );
       sqlKdx.SQL.Add( SelectSaldoKdxNaData2 );
      end;

 2  : begin
       sqlKdx.SQL.Add( SelectSaldoKdxTransfNaData );
       sqlKdx.SQL.Add( '         DATAOCORRENCIA <= TO_DATE(' + QuotedStr( DtPosicao ) + ', ''DD/MM/YYYY'')' );
       sqlKdx.SQL.Add( SelectSaldoKdxTransfNaData2 );
      end;
 end;

 sqlKdx.Prepared := True;
 sqlKdx.Open;
end;

end.
