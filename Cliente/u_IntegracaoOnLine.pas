unit u_IntegracaoOnLine;

interface

 uses SysUtils,DBClient,DB,NativeXml,Dialogs,MaskUtils,SqlExpr;

 var CCusto : array [1..4,1..2] of String;

 // Gerais
 procedure PreencheCCusto;
 function  GetCCusto(GrupoId: String): String;
 function  CGC(cTexto: String): String;
 function  FormatCNPF_CNPJ_CCM(Text: String): String;

 // Rateio
// procedure CalcRateio( cdsTitRecAgrupa,cdsTitRecAgrupa2 : TClientDataSet; VlrTotalNota,VlrParcela : Currency;
//                       EmpresaId : Integer; Registro : String; var CCustoContabil : String; var VlrRateio : Currency; var Porcentagem : Currency );

 // Export
 procedure ExportEntradas( EmpresaId,NfeId,DataEmissaoId, EntidadeId  : String );
 procedure ExportSaidas( EmpresaId,NfsId,DataEmissaoId : String );
 procedure ExportEntidade( Entidadeid : String );
 procedure ExportItem( EmpresaId,ItemId : Integer; Tipo : String = 'P' );
 procedure CriaXMLItem( var ARoot : TNativeXml; var AItem : TXmlNode; cdsiItem : TClientDataSet; CFOP_IDE_ST_CODIGO, CFOP_IN_CODIGO : String );

 //Insere Transação no Mega2000
 procedure InsereTransacao(pID: Integer; pXML : TNativeXml );

 // Gera XML Riex - Sistema Registro de Informações de Exportação
 procedure GeraRiex( EmpresaId,NfsId : Integer; DataEmissaoId : String; SisComex, SisRegistro,SisTipo : String; QtdAdicoes : Integer = 0  );


 Const  EntidadeSelect         = 'SELECT '+
                                 '  EF_ENTIDADE.ENTIDADEID AGN_ST_CODIGOALT,'+
                                 '  EF_ENTIDADE.NOMEFANTASIA AGN_ST_FANTASIA,'+
                                 '  EF_ENTIDADE.NOME AGN_ST_NOME,'+
                                 '  EF_ENTIDADE.FISICAJURIDICA AGN_CH_TIPOPESSOAFJ,'+
                                 '  EF_ENTIDADE.NATUREZAJURIDICAID AGN_IN_NATJURID,'+
                                 '  EF_ENTIDADE.INSCRMUNICIPAL AGN_ST_INSCRMUNIC,'+
                                 '  EF_ENTIDADE.SIGLAUFID UF_ST_SIGLA,'+
                                 '  EF_ENTIDADE.CIDADE AGN_ST_MUNICIPIO,'+
                                 '  SUBSTR( EF_ENTIDADE.ENDERECO,1,20 ) AGN_ST_LOGRADOURO,'+
                                 '  EF_ENTIDADE.NUMERO AGN_ST_NUMERO,'+
                                 '  EF_ENTIDADE.BAIRRO AGN_ST_BAIRRO,'+
                                 '  EF_ENTIDADE.CEPID AGN_ST_CEP,'+
                                 '  EF_ENTIDADE.COMPLEMENTO AGN_ST_COMPLEMENTO,'+
                                 '  DECODE( EF_ENTIDADE.CONTRIBUINTEICMS,1,''S'',''N'') AGN_ST_ENQUADRAICMS,'+
                                 '  ''S'' AGN_ST_ENQUADRAIPI,'+
                                 '  ''S'' AGN_ST_ENQUADRAISS,'+
                                 '(CASE WHEN FISICAJURIDICA = ''F'' THEN'+
                                 '       CPFCNPJ'+
                                 '      ELSE'+
                                 '       NULL '+
                                 ' END) AGN_ST_CPF,'+
                                 '  (CASE WHEN FISICAJURIDICA = ''J'' THEN'+
                                 '       CPFCNPJ'+
                                 '      ELSE'+
                                 '      NULL '+
                                 ' END) AGN_ST_CGC,'+
                                 '  EF_ENTIDADE.INSCRESTADUAL AGN_ST_INSCRESTADUAL,'+
                                 '  EF_ENTIDADE.EMAIL AGN_ST_EMAIL,'+
                                 '  SUBSTR( EF_ENTIDADE.TELEFONE,1,20 ) AGN_ST_TELEFONECOML,'+
                                 '  EF_ENTIDADE.FAX AGN_ST_FAX,'+
                                 '  EF_ENTIDADE.RG AGN_ST_RG,'+
                                 '  EF_ENTIDADE.OBSERVACAO AGN_BL_OBSERVACAO,'+
                                 '  ''S'' AGN_BO_FLUXO,'+
                                 '  ''N'' AGN_BO_PUBLICO,'+
                                 '  ''99.00-7'' CNAE_ST_CODIGO,'+
                                 '  ''S'' AGN_BO_ATIVADOSALDO,'+
                                 '  ''S'' AGN_BO_EXCECAOFISCAL,'+
                                 '  ''N'' CLI_BO_PREDIOPROPRIO,'+
                                 '  1 FIL_IN_CODIGO,'+
                                 '  EF_ENTIDADE.CEPCOBID ENA_ST_CEP2,'+
                                 '  SUBSTR( EF_ENTIDADE.ENDERECOCOB,1,20 ) ENA_ST_LOGRADOURO2,'+
                                 '  EF_ENTIDADE.COMPLEMENTOCOB AGN_ST_COMPLEMENTO2,'+
                                 '  EF_ENTIDADE.CIDADECOB ENA_ST_MUNICIPIO2,'+
                                 '  EF_ENTIDADE.NUMEROCOB ENA_ST_NUMERO2,'+
                                 '  EF_ENTIDADE.BAIRROCOB ENA_ST_BAIRRO2,'+
                                 '  EF_ENTIDADE.SIGLAUFCOBID UF_ST_SIGLA2,'+
                                 '  EF_ENTIDADE.PAISCOB PA_ST_SIGLA2,'+
                                 '  SUBSTR( EF_ENTIDADE.TELEFONE2,1,20 ) ENA_ST_TELEFONE2,'+
                                 '  EF_ENTIDADE.CEPCOBID ENA_ST_CEP3,'+
                                 '  SUBSTR( EF_ENTIDADE.ENDERECOINST,1,20 ) ENA_ST_LOGRADOURO3,'+
                                 '  EF_ENTIDADE.COMPLEMENTOINST AGN_ST_COMPLEMENTO3,'+
                                 '  EF_ENTIDADE.NUMEROINST ENA_ST_NUMERO3,'+
                                 '  EF_ENTIDADE.BAIRROINST ENA_ST_BAIRRO3,'+
                                 '  EF_ENTIDADE.CIDADEINST ENA_ST_MUNICIPIO3,'+
                                 '  EF_ENTIDADE.SIGLAUFINSTID UF_ST_SIGLA3,'+
                                 '  EF_ENTIDADE.PAISINST PA_ST_SIGLA3,'+
                                 '  SUBSTR( EF_ENTIDADE.TELEFONE3,1,20 ) ENA_ST_TELEFONE3'+
                                 '  FROM '+
                                 '  EF_ENTIDADE';

        EntidadeCategoria      = 'SELECT '+
                                 '  EF_ENTIDADEGRUPO.ENTIDADEID,'+
                                 '  (CASE       WHEN EF_ENTIDADEGRUPO.CATEGORIAID = 5 THEN'+
                                 '             ''U'''+
                                 '   ELSE CASE WHEN EF_ENTIDADEGRUPO.CATEGORIAID = 2 THEN'+
                                 '             ''F'''+
                                 '   ELSE CASE WHEN EF_ENTIDADEGRUPO.CATEGORIAID = 4 THEN'+
                                 '              ''T'''+
                                 '             ELSE'+
                                 '              ''C'''+
                                 '   END'+
                                 '   END'+
                                 '  END) AGN_TAU_ST_CODIGO'+
                                 '  FROM EF_ENTIDADEGRUPO';

        SaidaSelectNfs         = ' SELECT '+
                        //         '   EF_EMPRESA.NUMEMPRESAEXP FIL_IN_CODIGO,'+
                                 '   2 FIL_IN_CODIGO,'+
                                 '   ''UN'' SER_ST_CODIGO,'+
                                 '   2 TDF_IN_CODIGO /* 2 - NFS */,'+
                                 '   EF_NFS.NFSID NOT_IN_NUMERO,'+
                                 '   EF_NFS.DATAEMISSAOID NOT_DT_EMISSAO,'+
                                 '   EF_NFS.DATAEMISSAOID NOT_DT_SAIDA,'+
                                 '   EF_CONDPAGTO.CONDPAGTOID COND_ST_CODIGO,'+
                                 '   EF_NFS.TIPONOTA,'+
                                 '   EF_ENTIDADE.FISICAJURIDICA,'+
                                 '   EF_NFS.VLRTOTALNOTA NOT_RE_VALORTOTAL,'+
                                 '  (CASE WHEN NVL( EF_NFS.CATEGORIAID,0 ) = 2 THEN'+
                                 '         ''F'''+
                                 '        ELSE'+
                                 '         ''C'''+
                                 '   END) AGN_TAU_ST_CODIGO,'+
                                 '   ( CASE WHEN EF_NFS.CANCELADA = 1 THEN'+
                                 '           ''C'' '+
                                 '          ELSE'+
                                 '           ''L'' /* L - LISTADA  N - NORMAL */ '+
                                 '     END'+
                                 '   ) NOT_CH_SITUACAO,'+
                                 '   1 TPD_IN_CODIGO,'+
                                 '   EF_NATUREZAOP.NUMPADRAO ACAO_IN_CODIGO,'+
                                 '   EF_NATUREZAOP.CFOP,'+
                                 '   EF_NFS.TRANSPORTADORID TRA_IN_CODIGO,'+
                                 '   EF_NFS.PLACAVEICULO NOT_ST_PLACA1TRA,'+
                                 '   EF_NFS.VLRTOTALBASEICMS NOT_RE_BASEICMS,'+
                                 '   EF_NFS.VLRTOTALISENTASICMS NOT_RE_ISENTOICMS,'+
                                 '   EF_NFS.VLRTOTALOUTRASICMS NOT_RE_OUTROSICMS,'+
                                 '   EF_NFS.VLRTOTALICMS NOT_RE_VALORICMS,'+
                                 '   0 NOT_RE_BASESUBTRIB,'+
                                 '   0 NOT_RE_ICMSRETIDO,'+
                                 '   EF_NFS.VLRTOTALPRODUTO NOT_RE_VALORMERCADORIA,'+
                                 '   EF_NFS.VLRFRETE NOT_RE_VALORFRETE,'+
                                 '   EF_NFS.VLRSEGURO NOT_RE_VALORSEGURO,'+
                                 '   EF_NFS.VLRDESPESAACESSORIA NOT_RE_VALORDESPACES,'+
                                 '   EF_NFS.VLRTOTALBASEIPI NOT_RE_BASEIPI,'+
                                 '   EF_NFS.VLRTOTALISENTASIPI NOT_RE_ISENTOIPI,'+
                                 '   EF_NFS.VLRTOTALOUTRASIPI NOT_RE_OUTROSIPI,'+
                                 '   EF_NFS.VLRTOTALIPI NOT_RE_VALORIPI,'+
                                 '   0 NOT_RE_VALORMERCEMPREG,'+
                                 '   0 NOT_RE_VALORMAOOBRA,'+
                                 '   0 NOT_RE_VALORDESCONTO,'+
                                 '   0 NOT_RE_VALORACRESCIMO,'+
                                 '   0 NOT_RE_VALORIRRF,'+
                                 '   EF_NFS.VLRTOTALISS NOT_RE_VALORISS,'+
                                 '   0 NOT_RE_VALORINSS,'+
                                 '   EF_NATUREZAOP.DESCRICAOOPERACAOUSUARIO CFOP_ST_DESCRICAO,'+
                                 '   EF_NFS.EMBMARCA VOL_ST_MARCA,'+
                                 '   EF_NFS.EMBNUMERO VOL_IN_NUMERO,'+
                                 '   EF_NFS.EMBQTDVOLUMES VOL_IN_QUANTIDADE,'+
                                 '   EF_NFS.EMBESPECIE VOL_ST_ESPECIE,'+
                                 '   EF_NFS.EMBPESOBRUTO  VOL_RE_PESOBRUTO,'+
                                 '   EF_NFS.EMBPESOLIQUIDO VOL_RE_PESOLIQUIDO,'+
                                 '   EF_NFS.DESCRICAOOBSERVACAO NOB_ST_OBSERVACAO,'+
                                 '   ''N'' NOB_CH_TIPOOBSERVACAO,'+
                                 '   0 NOT_RE_VLBASECOFINS,'+
                                 '   0 NOT_RE_VLBASEPIS,'+
                                 '   0 NOT_RE_VLDESADUANEIRA,'+
                                 '   EF_NFS.ENTIDADEID CALC_AGN_ST_CODIGO,'+
                                 '   ''ALT'' CALC_AGN_ST_TIPOCODIGO,'+
                                 '   EF_NATUREZAOP.CFOP CFOP_ST_EXTENSO,'+
                                 '   EF_ENTIDADE.CPFCNPJ'+
                                 '   FROM '+
                                 '   EF_NFS, '+
                                 '   EF_ENTIDADE,'+
                                 '   EF_NATUREZAOP,'+
                                 '   EF_EMPRESA,'+
                                 '   EF_CONDPAGTO'+
                                 '  WHERE EF_NATUREZAOP.NATUREZAOPID(+) = EF_NFS.NATUREZAOPID'+
                                 '   AND EF_EMPRESA.EMPRESAID = EF_NFS.EMPRESAID'+
                                 '   AND EF_ENTIDADE.ENTIDADEID = EF_NFS.ENTIDADEID'+
                                 '   AND EF_CONDPAGTO.CONDPAGTOID(+) = EF_NFS.CONDPAGTOID'+
                                 '   AND EF_NFS.CANCELADA = 0'+
                               //  '   AND EF_NFS.VLRTOTALPRODUTO >= 1'+
                                 '   AND EF_NATUREZAOP.DOCINTERNO = 0';

        SaidaSelectNfsItem =     ' SELECT EF_NFSITEM.EMPRESAID,'+
                                 '        CONCAT( EF_NFSITEM.PRODUTOID,''P'' ) PRO_IN_CODIGO,'+
                                 '        EF_PRODUTO.UNIDADEID UNI_ST_UNIDADE,'+
                                 '        EF_NFSITEM.QUANTIDADE ITN_RE_QUANTIDADE,'+
                                 '        EF_NFSITEM.VLRPRECOUNITARIO ITN_RE_VALORUNITARIO,'+
                                 '        ( EF_NFSITEM.VLRPRECOUNITARIO * EF_NFSITEM.QUANTIDADE ) ITN_RE_VALORMERCADORIA,'+
                                 '        0 ITN_RE_VALORMERCEMPREG,'+
                                 '        0 ITN_RE_VALORMAOOBRA,'+
                                 '        EF_NFSITEM.PORCDESCONTO ITN_RE_PERCDESCONTO,'+
                                 '        EF_NFSITEM.VLRDESCONTO ITN_RE_VALORDESCONTO,'+
                                 '        0 ITN_RE_PERCACRESCIMO,'+
                                 '        EF_NFSITEM.ALIQUOTAICMS ITN_RE_ALIQICMS,'+
                                 '        EF_NFSITEM.VLRICMS ITN_RE_VALORICMS,'+
                                 '        EF_NFSITEM.ALIQUOTAIPI ITN_RE_ALIQIPI,'+
                                 '        EF_NFSITEM.VLRIPI ITN_RE_VALORIPI,'+
                                 '        EF_NFS.PDSID ITN_ST_PEDIDOCLIENTE,'+
                                 '        SUBSTR( EF_PRODUTO.DESCRICAOPORTUGUES,1,100) ITN_ST_DESCRICAO,'+
                                 '        0 ITN_RE_SEGURO,'+
                                 '        0 ITN_RE_DESPACESSORIA,'+
                                 '        EF_NFSITEM.VLRBASEICMS ITN_RE_BASEICMS,'+
                                 '        EF_NFSITEM.VLRISENTASICMS ITN_RE_ISENTOICMS,'+
                                 '        EF_NFSITEM.VLROUTRASICMS ITN_RE_OUTROSICMS,'+
                                 '        EF_NFSITEM.VLRBASEIPI ITN_RE_BASEIPI,'+
                                 '        EF_NFSITEM.VLRISENTASIPI ITN_RE_ISENTOIPI,'+
                                 '        EF_NFSITEM.VLROUTRASIPI ITN_RE_OUTROSIPI,'+
                                 '        0 ITN_RE_BASESUBTRIB,'+
                                 '        0 ITN_RE_ICMSRETIDO,'+
                                 '        0 ITN_RE_ALIQISS,'+
                                 '        0 ITN_RE_VALORISS,'+
                                 '        0 ITN_RE_ALIQIRRF,'+
                                 '        0 ITN_RE_VALORIRRF,'+
                                 '        0 ITN_RE_ALIQINSS,'+
                                 '        0 ITN_RE_VALORINSS,'+
                                 '        SUBSTR( EF_NFSITEM.SITTRIBUTARIAESTADUAL,1,1) ITN_CH_STICMS_A,'+
                                 '        SUBSTR( EF_NFSITEM.SITTRIBUTARIAESTADUAL,2,1) ITN_CH_STICMS_B,'+
                                 '        ( EF_NFSITEM.VLRPRECOTOTAL + EF_NFSITEM.VLRIPI )ITN_RE_VALORTOTAL,'+
                                 '        EF_GRUPO.SIGLAGRUPO,'+
                                 '        EF_PRODUTO.CONTACTBRECEITA,'+
                                 '        EF_PRODUTO.CONTACTBDESPESA,'+
                                 '        EF_PRODUTO.NCMID ITN_ST_NCM_EXTENSO,'+
                                 '        5 APL_IN_CODIGO,'+ // SERCA CRIADO UM CAMPO NA NATUREZA DE OPERACAO APL_IN_CODIGO
                                 '        EF_NFSITEM.ALIQUOTAPIS ITN_RE_ALIQPIS,'+
                                 '        EF_NFSITEM.ALIQUOTACOFINS ITN_RE_ALIQCOFINS,'+
                                 '        0 ITN_RE_VLBASECOFINS,'+
                                 '        0 ITN_RE_VLBASECSLL,'+
                                 '        0 ITN_RE_VLBASEPIS,'+
                                 '        0 ITN_RE_VLCSLL,'+
                                 '        EF_NFSITEM.VLRPIS ITN_RE_VLCOFINSRETIDO,'+
                                 '        EF_NFSITEM.VLRCOFINS ITN_RE_VLPISRETIDO'+
                                 '   FROM EF_NFS,'+
                                 '        EF_NFSITEM,'+
                                 '        EF_PRODUTO,'+
                                 '        EF_GRUPO'+
                                 '  WHERE EF_PRODUTO.EMPRESAID = EF_NFSITEM.EMPRESAID'+
                                 '    AND EF_PRODUTO.PRODUTOID = EF_NFSITEM.PRODUTOID'+
                                 '    AND EF_PRODUTO.GRUPOID = EF_GRUPO.GRUPOID(+)'+
                                 '    AND EF_NFS.EMPRESAID = EF_NFSITEM.EMPRESAID'+
                                 '    AND EF_NFS.NFSID     = EF_NFSITEM.NFSID'+
                                 '    AND EF_NFS.DATAEMISSAOID = EF_NFSITEM.DATAEMISSAOID';

        SaidaSelectNfsServico =  'SELECT '+
                                 '  EF_NFSSERVICO.EMPRESAID,'+
                                 '  CONCAT( EF_NFSSERVICO.SERVICOID,''S'' ) PRO_IN_CODIGO,'+
                                 '  ''UN'' UNI_ST_UNIDADE,'+
                                 '  1 ITN_RE_QUANTIDADE,'+
                                 '  EF_NFSSERVICO.VLRSERVICO ITN_RE_VALORUNITARIO,'+
                                 '  EF_NFSSERVICO.VLRSERVICO ITN_RE_VALORMERCADORIA,'+
                                 '  0 ITN_RE_VALORMERCEMPREG,'+
                                 '  0 ITN_RE_VALORMAOOBRA,'+
                                 '  0 ITN_RE_PERCDESCONTO,'+
                                 '  0 ITN_RE_VALORDESCONTO,'+
                                 '  0 ITN_RE_PERCACRESCIMO,'+
                                 '  0 ITN_RE_ALIQICMS,'+
                                 '  0 ITN_RE_VALORICMS,'+
                                 '  0 ITN_RE_ALIQIPI,'+
                                 '  0 ITN_RE_VALORIPI,'+
                                 '  EF_NFS.PDSID ITN_ST_PEDIDOCLIENTE,'+
                                 '  SUBSTR( EF_NFSSERVICO.DESCRICAOSERVICO,1,100) ITN_ST_DESCRICAO ,'+
                                 '  0 ITN_RE_SEGURO,'+
                                 '  0 ITN_RE_DESPACESSORIA,'+
                                 '  0 ITN_RE_BASEICMS,'+
                                 '  0 ITN_RE_ISENTOICMS,'+
                                 '  0 ITN_RE_OUTROSICMS,'+
                                 '  0 ITN_RE_BASEIPI,'+
                                 '  0 ITN_RE_ISENTOIPI,'+
                                 '  0 ITN_RE_OUTROSIPI,'+
                                 '  0 ITN_RE_BASESUBTRIB,'+
                                 '  0 ITN_RE_ICMSRETIDO,'+
                                 '  EF_SERVICO.ALIQUOTAISS ITN_RE_ALIQISS,'+
                                 '  EF_NFSSERVICO.VLRISS ITN_RE_VALORISS,'+
                                 '  0 ITN_RE_ALIQIRRF,'+
                                 '  0 ITN_RE_VALORIRRF,'+
                                 '  0 ITN_RE_ALIQINSS,'+
                                 '  0 ITN_RE_VALORINSS,'+
                                 '  ''0'' ITN_CH_STICMS_A,'+
                                 '  ''0''ITN_CH_STICMS_B,'+
                                 '  EF_NFS.VLRTOTALSERVICO ITN_RE_VALORTOTAL,'+
                                 '  EF_RECEITA.CONTACONTABILID,'+
                                 '  EF_RECEITA.CENTROCUSTOID,'+
                                 '  5 APL_IN_CODIGO,'+
                                 '  999999999 ITN_ST_NCM_EXTENSO,'+
                                 '  EF_NFSSERVICO.ALIQUOTAPIS ITN_RE_ALIQPIS,'+
                                 '  EF_NFSSERVICO.ALIQUOTACOFINS ITN_RE_ALIQCOFINS,'+
                                 '  0 ITN_RE_VLBASECOFINS,'+
                                 '  0 ITN_RE_VLBASECSLL,'+
                                 '  0 ITN_RE_VLBASEPIS,'+
                                 '  EF_NFSSERVICO.VLRRETCSLL ITN_RE_VLCSLL,'+
                                 '  EF_NFSSERVICO.VLRRETPIS ITN_RE_VLCOFINSRETIDO,'+
                                 '  EF_NFSSERVICO.VLRRETCOFINS ITN_RE_VLPISRETIDO'+
                                 '  FROM EF_NFS,'+
                                 '  EF_NFSSERVICO,'+
                                 '  EF_SERVICO,'+
                                 '  EF_RECEITA'+
                                 ' WHERE EF_NFSSERVICO.EMPRESAID = EF_NFS.EMPRESAID'+
                                 '  AND EF_NFSSERVICO.NFSID = EF_NFS.NFSID'+
                                 '  AND EF_NFSSERVICO.DATAEMISSAOID = EF_NFS.DATAEMISSAOID'+
                                 '  AND EF_SERVICO.EMPRESAID = EF_NFSSERVICO.EMPRESAID'+
                                 '  AND EF_SERVICO.SERVICOID = EF_NFSSERVICO.SERVICOID'+
                                 '  AND EF_RECEITA.RECEITAID = EF_SERVICO.RECEITAID';

        SaidaSelectNfsParcela =  'SELECT EF_NFSPARCELA.EMPRESAID,'+
                                 '       EF_NFSPARCELA.NFSID,'+
                                 '       EF_NFSPARCELA.DATAEMISSAOID,'+
                                 '       EF_NFSPARCELA.PARCELAID MOV_ST_PARCELA,'+
                                 '       EF_NFSPARCELA.DATAPAGTO,'+
                                 '       EF_NFSPARCELA.DATAVENCIMENTO MOV_DT_VENCTO,'+
                                 '       EF_NFSPARCELA.VLRPARCELA MOV_RE_VALORMOE,'+
                                 '       EF_NFSPARCELA.EXPORTADO,'+
                                 '       2 MOV_RE_DIFDIAS'+
{                                 '       NULL FORP_IN_CODIGO,'+
                                 '       NULL TCOB_ST_CODIGO,'+
                                 '       NULL BAN_IN_NUMERO,'+
                                 '       NULL CAID_BAN_IN_NUMERO,'+
                                 '       NULL CAID_ST_CONTACORR'+}
                                 '  FROM EF_NFSPARCELA';

       ProdutoSelect          =  'SELECT'+
                                 '   EF_PRODUTO.EMPRESAID,'+
                                 '   EF_SUBGRUPO.SIGLAGRUPO,'+
                                 '   EF_GRUPO.SIGLAGRUPO GRU_IN_CODIGO,'+
                                 '   SUBSTR( EF_PRODUTO.DESCRICAOPORTUGUES,1,70 ) PRO_ST_DESCRICAO, '+
                                 '   EF_PRODUTO.DESCRICAOINGLES PRO_ST_NARRATIVA,'+
                                 '   5 APL_IN_CODIGO,'+
                                 //  '   0 CTR_IN_CODIGO,'+
                                 '   EF_PRODUTO.NCMID NCM_IN_CODIGO,'+
                                 //  '   ''?'' PCD_ST_CODIGO,'+
                                 //  '   ''?'' GRU_IDE_ST_CODIGO,'+
                                 '   EF_PRODUTO.UNIDADEID UNI_ST_UNIDADE,'+
                                 '   ''C'' PRO_ST_ORIGEM,'+
                                 '   ''S'' PRO_ST_CESTOQUE,'+
                                 '   ''I'' PRO_ST_SINSPECAO,'+
                                 '   1 PRO_ST_TIPODADOS,'+
                                 '   1 PRO_ST_TIPOTRIBUTA,'+
                                 '   ''N'' PRO_ST_COMISSIONADO,'+
                                 '   EF_PRODUTO.PESO PRO_RE_PESPECIFICO,'+
                                 '   EF_PRODUTO.PESO PRO_RE_PELIQUIDO,'+
                                 '   ( EF_PRODUTO.PESO*EF_PRODUTO.ESTOQUEFISICO ) PRO_RE_PEBRUTO,'+
                                 //  '   ''?'' PRO_ST_UTILIZACAO'+
                                 //  '   ''?'' FPD_IN_CODIGO,'+
                                 '/* ''VERPADRAOJOEL'' PRO_ST_ESPECIE, */'+
                                 //  '   ''?'' FMT_ST_CODIGO,'+
                                 '   EF_ENTIDADE.NOMEFANTASIA PRO_ST_MARCA,'+
                                 '   0 PRO_IN_VOLUME,'+
                                 '   0 PRO_RE_ALIQIRRF,'+
                                 '   3 PRO_IN_GERASOLICITACAO,'+
                                 '   3 PRO_IN_QTDECOMPRAR,'+
                                 '   ''PA'' PRO_ST_DEFITEM,'+
                                 '   1 PRO_IN_CRITERIOBUSCA,'+
                                 '   CONCAT( EF_PRODUTO.PRODUTOID, ''P'' ) PRO_ST_ALTERNATIVO,'+
                                 '   ''I'' PRO_CH_DEFICMS,'+
                                 '   ''S'' PRO_CH_ESTATISTICA,'+
                                 //  '   ''?'' PRO_IN_PESQDEM,'+
                                 //  '   ''?'' CLS_IDE_ST_CODIGO,'+
                                 //  '   ''?'' CLS_IN_REDUZIDO,'+
                                 '   EF_PRODUTO.PRECOVENDA PRO_RE_VLOBJETIVO,'+
                                 '   0 IND_IN_CODIGO,'+
                                 '   EF_PRODUTO.ESTOQUEMINIMO PRO_RE_QMINCOMPRA,'+
                                 '   ''S'' PRO_BO_TODOSALMOX,'+
                                 //  '   ''?'' TRI_GRU_IDE_ST_CODIGO,'+
                                 //  '   ''?'' CLA_GRU_IDE_ST_CODIGO,'+
                                 //  '   ''?'' COS_IN_CODIGO,'+
                                 //  '   ''Nao'' PRO_BO_CAT95,'+
                                 //  '   ''?'' TPCO_IN_CODIGO,'+
                                 '   ''N'' PRO_BO_SCANC,'+
                                 '   2 FIL_IN_CODIGO,'+
                                 '   EF_GRUPO.SIGLAGRUPO GRU_ST_EXTENSO,'+
                                 '   ''02'' TPC_ST_CLASSE,'+
                                 '   5 APL_IN_CODIGO,'+
                                 '   EF_PRODUTO.CONTACTBRECEITA CLA_ST_EXTENSO'+
                                 '   FROM'+
                                 '   EF_PRODUTO,'+
                                 '   EF_SUBGRUPO,'+
                                 '   EF_ENTIDADE,'+
                                 '   EF_GRUPO'+
                                 '  WHERE'+
                                 '   EF_ENTIDADE.ENTIDADEID(+) = EF_PRODUTO.FORNECEDORID AND'+
                                 '   EF_SUBGRUPO.SUBGRUPOID = EF_PRODUTO.SUBGRUPOID '+
                                 '   EF_GRUPO.GRUPOID(+) = EF_PRODUTO.GRUPOID';

        ServicoSelect          = 'SELECT EF_SERVICO.EMPRESAID,'+
                                 '   EF_SUBGRUPO.SIGLAGRUPO,'+
                                 '   EF_GRUPO.SIGLAGRUPO GRU_IN_CODIGO,'+
                                 '   SUBSTR( EF_SERVICO.DESCRICAOCOMPLETA,1,70 ) PRO_ST_DESCRICAO, '+
                                 '   EF_SERVICO.DESCRICAOCOMPLETA PRO_ST_NARRATIVA,'+
                                 '   '''' NCM_IN_CODIGO,'+
                                 '   5 APL_IN_CODIGO,'+
                                 '   ''UN'' UNI_ST_UNIDADE,'+
                                 '   ''C'' PRO_ST_ORIGEM,'+
                                 '   ''S'' PRO_ST_CESTOQUE,'+
                                 '   ''I'' PRO_ST_SINSPECAO,'+
                                 '   1 PRO_ST_TIPODADOS,'+
                                 '   1 PRO_ST_TIPOTRIBUTA,'+
                                 '   ''N'' PRO_ST_COMISSIONADO,'+
                                 '   0 PRO_RE_PESPECIFICO,'+
                                 '   0 PRO_RE_PELIQUIDO,'+
                                 '   0 PRO_RE_PEBRUTO,'+
                                 '   0 PRO_IN_VOLUME,'+
                                 '   0 PRO_RE_ALIQIRRF,'+
                                 '   3 PRO_IN_GERASOLICITACAO,'+
                                 '   3 PRO_IN_QTDECOMPRAR,'+
                                 '   ''SE'' PRO_ST_DEFITEM,'+
                                 '   '' '' PRO_ST_MARCA,'+
                                 '   1 PRO_IN_CRITERIOBUSCA,'+
                                 '   CONCAT( EF_SERVICO.SERVICOID,''S'' ) PRO_ST_ALTERNATIVO,'+
                                 '   ''I'' PRO_CH_DEFICMS,'+
                                 '   ''S'' PRO_CH_ESTATISTICA,'+
                                 '   0 PRO_RE_VLOBJETIVO,'+
                                 '   0 IND_IN_CODIGO,'+
                                 '   0 PRO_RE_QMINCOMPRA,'+
                                 '   ''S'' PRO_BO_TODOSALMOX,'+
                                 '   ''N'' PRO_BO_SCANC,'+
                                 '   2 FIL_IN_CODIGO,'+
                                 '   EF_GRUPO.SIGLAGRUPO GRU_ST_EXTENSO,'+
                                 '   ''02'' TPC_ST_CLASSE,'+
                                 '   5 APL_IN_CODIGO,'+
                                 '   EF_RECEITA.CONTACONTABILID CLA_ST_EXTENSO'+
                                 '   FROM EF_SERVICO,'+
                                 '   EF_SUBGRUPO,'+
                                 '   EF_GRUPO,'+
                                 '   EF_RECEITA'+
                                 '  WHERE'+
                                 '   EF_SUBGRUPO.SUBGRUPOID(+) = EF_SERVICO.SUBGRUPOID'+
                                 '   AND EF_RECEITA.RECEITAID(+) = EF_SERVICO.RECEITAID'+
                                 '   AND EF_SERVICO.GRUPOID = EF_GRUPO.GRUPOID(+)';


        Path                   = 'Mega2000\XML\';
        Unidade                = 'C:\';

implementation

uses FuncoesCliente,FuncoesDSI,u_Formatacoes, DateUtils, Classes;

procedure PreencheCCusto;
begin
 CCusto[1,1] := 'RX';
 CCusto[1,2] := '1104003';
 CCusto[2,1] := 'US';
 CCusto[2,2] := '1104004';
 CCusto[3,1] := 'CT';
 CCusto[3,2] := '1104008';
 CCusto[4,1] := 'MRI';
 CCusto[4,2] := '1104006';
end;

function GetCCusto(GrupoId: String): String;
var i : Integer;
begin
 Result :='';
 for i := 1 to 4 do
   if GrupoId = CCusto[i,1] then
      Result := CCusto[i,2];
end;

// Export  
procedure ExportEntradas( EmpresaId,NfeId,DataEmissaoId, EntidadeId  : String );
var iSQL    : String;
    cdsiNfe : TClientDataSet;
    F       : TextFile;
begin
 iSQL := ' SELECT '+
         '  EF_NFE.NFEID MDE_ST_NDOCINI,'+
         '  EF_EMPRESA.NUMEMPRESAAEXPORT,'+
         '  EF_NFE.ENTIDADEID AGN_IN_CODIGO,'+
         '  EF_NFE.SERIE ,'+
         '  EF_NFE.DATAENTRADA,'+
         '  EF_NFE.ENTIDADEID,'+
         '  EF_ENTIDADE.FISICAJURIDICA,'+
         '  EF_ENTIDADE.CPFCNPJ,'+
         '  EF_NFE.NATUREZAOPID,'+
         '  EF_NFE.CANCELADA,'+
         '  EF_NFE.NFSID,'+
         '  EF_NFE.DATAEMISSAOID,'+
         '  EF_NFE.EMPRESAID,'+
         '  EF_NFE.OBSERVACAOID,'+
         '  EF_NFE.DESCRICAOOBSERVACAO,'+
         '  EF_NFE.VLRTOTALBASEICMS,'+
         '  EF_NFE.VLRTOTALICMS,'+
         '  EF_NFE.VLRTOTALNOTA,'+
         '  EF_NFE.VLRTOTALISENTASICMS,'+
         '  EF_NFE.VLRTOTALOUTRASICMS,'+
         '  EF_NFE.VLRTOTALBASEIPI,'+
         '  EF_NFE.VLRTOTALIPI,'+
         '  EF_NFE.VLRTOTALISENTASIPI,'+
         '  EF_NFE.VLRTOTALOUTRASIPI,'+
         '  EF_NATUREZAOP.NATUREZAOPID,'+
         '  EF_NATUREZAOP.CFOP,'+
         '  EF_NATUREZAOP.NUMPADRAO'+
         '  FROM '+
         '  EF_NFE, '+
         '  EF_ENTIDADE,'+
         '  EF_NATUREZAOP'+
         ' WHERE '+
         '  EF_ENTIDADE.ENTIDADEID = EF_NFE.ENTIDADEID'+
         '  AND EF_NATUREZAOP.NATUREZAOPID(+) = EF_NFE.NATUREZAOPID'+
         '  AND EF_NFE.CANCELADA = 0'+
         '  AND EF_NATUREZAOP.DOCINTERNO = 0'+
         '  AND EF_NFE.EMPRESAID ='+ EmpresaId+
         '  AND EF_NFE.NFEID = '+ NfeId+
         '  AND EF_NFE.DATAEMISSAOID = '+ QuotedStr( DataEmissaoId )+
         '  AND EF_NFE.ENTIDADEID = '+ EntidadeId;

  try
   ExecDynamicProvider(-1,iSQL, cdsiNfe );

   cdsiNfe.Next;
  finally
   FreeAndNil( cdsiNfe );
  end;
  CloseFile( F );
end;

procedure ExportSaidas( EmpresaId,NfsId,DataEmissaoId : String );
var iSQL,CFOP,XMLPath : String;

    cdsTitRecAgrupa,
    cdsTitRecAgrupa2,
    cdsiNfs,
    cdsiNfsItem,
    cdsiNfsServico,
    cdsiNfsParcela,
    cdsiCFOP,
    cdsiCNPJ : TClientDataSet;

    ARoot        : TNativeXml;
    ANFSItem,
    ANFSObs,
    ANFSVolume,
    ANFSParc : TXmlNode;
//    ANFSClasse,
//    ANFSCCusto,
//    ANFSProjeto  : TXmlNode;

//    Frete : Currency;

  procedure CriaCdsRateio;
  begin
   cdsTitRecAgrupa := TClientDataSet.Create(nil);
   cdsTitRecAgrupa.FieldDefs.Add('CONTACONTABILID', ftString,25,True );
   cdsTitRecAgrupa.FieldDefs.Add('VLRCONTACONTABIL', ftFloat,0,True );
   cdsTitRecAgrupa.FieldDefs.Add('TIPO',ftString,1,False );
   cdsTitRecAgrupa.CreateDataSet;
   cdsTitRecAgrupa.IndexFieldNames := 'CONTACONTABILID';
   {}
   cdsTitRecAgrupa2 := TClientDataSet.Create(nil);
   cdsTitRecAgrupa2.FieldDefs.Add('CONTACONTABILID',ftString,25,True );
   cdsTitRecAgrupa2.FieldDefs.Add('CENTROCUSTO',ftString,25,True );
   cdsTitRecAgrupa2.FieldDefs.Add('VLRCONTACONTABIL',ftFloat,0,True );
   cdsTitRecAgrupa2.CreateDataSet;
   cdsTitRecAgrupa2.IndexFieldNames := 'CONTACONTABILID;CENTROCUSTO';
  end;

begin
 PreencheCCusto;
 CriaCdsRateio;

 //Carregando os os dados da Nota Fiscal de Saída
 cdsiNfs := nil;
 iSQL := SaidaSelectNfs +
         '   AND EF_NFS.EMPRESAID ='+ EmpresaId+
         '   AND EF_NFS.NFSID = '+ NfsId+
         '   AND EF_NFS.DATAEMISSAOID = '+ QuotedStr( DataEmissaoId );
 try
  ExecDynamicProvider( -1,iSQL,cdsiNfs );
  if cdsiNfs.IsEmpty then
     begin
      MessageDlg(' Nota Fiscal não encontrada!', mtError,[mbok],0 );
      Exit;
     end;

  // Carregando os Itens da Nota Fiscal
  cdsiNfsItem := nil;
  iSQL := SaidaSelectNfsItem +
          ' AND EF_NFSITEM.EMPRESAID ='+ EmpresaId+
          ' AND EF_NFSITEM.NFSID = '+ NfsId+
          ' AND EF_NFSITEM.DATAEMISSAOID = '+ QuotedStr( DataEmissaoId );

  ExecDynamicProvider( -1,iSQL,cdsiNfsItem );
  cdsiNfsItem.First;


  // Carregando os Servicos da Nota Fiscal
  cdsiNfsServico := nil;
  iSQL := SaidaSelectNfsServico +
          '  AND EF_NFSSERVICO.EMPRESAID = '+ EmpresaId +
          '  AND EF_NFSSERVICO.NFSID = '+ NfsId +
          '  AND EF_NFSSERVICO.DATAEMISSAOID = '+ QuotedStr( DataEmissaoId );

  ExecDynamicProvider(-1,iSQL, cdsiNfsServico );
  if not cdsiNfs.IsEmpty then
     begin
      cdsiCFOP := nil;
      iSQL := 'SELECT CFOP_IDE_ST_CODIGO,'+
              '       CFOP_IN_CODIGO,CFOP_ST_EXTENSO'+
              '  FROM MGTRF.TRF_CFOP@MEGA_CFOP '+
              ' WHERE CFOP_ST_EXTENSO = '+ QuotedStr( cdsiNfs.FieldByName('CFOP').AsString + '001' )+
              '    OR CFOP_ST_EXTENSO = '+ QuotedStr( cdsiNfs.FieldByName('CFOP').AsString + '01' );

      ExecDynamicProvider( -1,iSQL,cdsiCFOP );
      CFOP := Trim( cdsiCFOP.FieldByName('CFOP_ST_EXTENSO').AsString );
     end;

  if not cdsiNfs.IsEmpty then
     begin
      cdsiCNPJ := nil;
      iSQL := 'SELECT AGN_ST_CPF,'+
              '       AGN_ST_CGC,'+
              '       AGN_IN_CODIGO'+
              '  FROM MGGLO.GLO_VW_CLIENTE@MEGA_MUNICIPIO ';

      if ( Length( cdsiNfs.FieldByName('CPFCNPJ').AsString ) < 15 ) then
         iSQL  := iSQL + ' WHERE AGN_ST_CPF = ' + QuotedStr( cdsiNfs.FieldByName('CPFCNPJ').AsString )
      else
         iSQL  := iSQL + ' WHERE AGN_ST_CGC = ' + QuotedStr( cdsiNfs.FieldByName('CPFCNPJ').AsString );

      ExecDynamicProvider( -1,iSQL,cdsiCNPJ );
     end;

  cdsiNfsParcela := nil;
  iSQL := SaidaSelectNfsParcela +
          ' WHERE EF_NFSPARCELA.EMPRESAID = '+ EmpresaId +
          '       AND EF_NFSPARCELA.DATAEMISSAOID = '+ QuotedStr( DataEmissaoId )+
          '       AND EF_NFSPARCELA.NFSID = '+ NfsId;

  ExecDynamicProvider( -1, iSQL, cdsiNfsParcela );
//  Frete := cdsiNfs.FieldByName('NOT_RE_VALORFRETE').AsFloat;

  //Criando XML
  ARoot := TNativeXml.CreateName('NotaFiscal');
  ARoot.Root.AttributeAdd( 'OPERACAO','I');

  ARoot.Root.WriteString('FIL_IN_CODIGO',          cdsiNfs.FieldByName('FIL_IN_CODIGO').AsString,'' );
  ARoot.Root.WriteString('SER_ST_CODIGO',          cdsiNfs.FieldByName('SER_ST_CODIGO').AsString,'' );
  ARoot.Root.WriteString('TDF_IN_CODIGO',          cdsiNfs.FieldByName('TDF_IN_CODIGO').AsString,'' );
  ARoot.Root.WriteString('NOT_IN_NUMERO',          cdsiNfs.FieldByName('NOT_IN_NUMERO').AsString,'' );
  ARoot.Root.WriteString('NOT_DT_EMISSAO',         cdsiNfs.FieldByName('NOT_DT_EMISSAO').AsString,'' );
  ARoot.Root.WriteString('NOT_DT_SAIDA',           cdsiNfs.FieldByName('NOT_DT_SAIDA').AsString,'' );
  ARoot.Root.WriteString('COND_ST_CODIGO',         cdsiNfs.FieldByName('COND_ST_CODIGO').AsString,'' );
  ARoot.Root.WriteString('NOT_RE_VALORTOTAL',      cdsiNfs.FieldByName('NOT_RE_VALORTOTAL').AsString,'' );
  ARoot.Root.WriteString('NOT_CH_SITUACAO',        cdsiNfs.FieldByName('NOT_CH_SITUACAO').AsString,'' );
  ARoot.Root.WriteString('TPD_IN_CODIGO',          cdsiNfs.FieldByName('TPD_IN_CODIGO').AsString,'' );
  ARoot.Root.WriteString('ACAO_IN_CODIGO',         cdsiNfs.FieldByName('ACAO_IN_CODIGO').AsString,'' );
  ARoot.Root.WriteString('AGN_TAU_ST_CODIGO',      cdsiNfs.FieldByName('AGN_TAU_ST_CODIGO').AsString,'' );
  ARoot.Root.WriteString('NOT_ST_PLACA1TRA',       cdsiNfs.FieldByName('NOT_ST_PLACA1TRA').AsString,'' );
  ARoot.Root.WriteString('NOT_RE_BASEICMS',        cdsiNfs.FieldByName('NOT_RE_BASEICMS').AsString,'' );
  ARoot.Root.WriteString('NOT_RE_ISENTOICMS',      cdsiNfs.FieldByName('NOT_RE_ISENTOICMS').AsString,'' );
  ARoot.Root.WriteString('NOT_RE_OUTROSICMS',      cdsiNfs.FieldByName('NOT_RE_OUTROSICMS').AsString,'' );
  ARoot.Root.WriteString('NOT_RE_VALORICMS',       cdsiNfs.FieldByName('NOT_RE_VALORICMS').AsString,'' );
  ARoot.Root.WriteString('NOT_RE_BASESUBTRIB',     cdsiNfs.FieldByName('NOT_RE_BASESUBTRIB').AsString,'' );
  ARoot.Root.WriteString('NOT_RE_ICMSRETIDO',      cdsiNfs.FieldByName('NOT_RE_ICMSRETIDO').AsString,'' );
  ARoot.Root.WriteString('NOT_RE_VALORMERCADORIA', cdsiNfs.FieldByName('NOT_RE_VALORMERCADORIA').AsString,'' );
  ARoot.Root.WriteString('NOT_RE_VALORFRETE',      cdsiNfs.FieldByName('NOT_RE_VALORFRETE').AsString,'' );
  ARoot.Root.WriteString('NOT_RE_VALORSEGURO',     cdsiNfs.FieldByName('NOT_RE_VALORSEGURO').AsString,'' );
  ARoot.Root.WriteString('NOT_RE_VALORDESPACES',   cdsiNfs.FieldByName('NOT_RE_VALORDESPACES').AsString,'' );
  ARoot.Root.WriteString('NOT_RE_BASEIPI',         cdsiNfs.FieldByName('NOT_RE_BASEIPI').AsString,'' );
  ARoot.Root.WriteString('NOT_RE_ISENTOIPI',       cdsiNfs.FieldByName('NOT_RE_ISENTOIPI').AsString,'' );
  ARoot.Root.WriteString('NOT_RE_OUTROSIPI',       cdsiNfs.FieldByName('NOT_RE_OUTROSIPI').AsString,'' );
  ARoot.Root.WriteString('NOT_RE_VALORIPI',        cdsiNfs.FieldByName('NOT_RE_VALORIPI').AsString,'' );
  ARoot.Root.WriteString('NOT_RE_VALORMERCEMPREG', cdsiNfs.FieldByName('NOT_RE_VALORMERCEMPREG').AsString,'' );
  ARoot.Root.WriteString('NOT_RE_VALORMAOOBRA',    cdsiNfs.FieldByName('NOT_RE_VALORMAOOBRA').AsString,'' );
  ARoot.Root.WriteString('NOT_RE_VALORDESCONTO',   cdsiNfs.FieldByName('NOT_RE_VALORDESCONTO').AsString,'' );
  ARoot.Root.WriteString('NOT_RE_VALORACRESCIMO',  cdsiNfs.FieldByName('NOT_RE_VALORACRESCIMO').AsString,'' );
  ARoot.Root.WriteString('NOT_RE_VALORIRRF',       cdsiNfs.FieldByName('NOT_RE_VALORIRRF').AsString,'' );
  ARoot.Root.WriteString('NOT_RE_VALORISS',        cdsiNfs.FieldByName('NOT_RE_VALORISS').AsString,'' );
  ARoot.Root.WriteString('NOT_RE_VALORINSS',       cdsiNfs.FieldByName('NOT_RE_VALORINSS').AsString,'' );
  ARoot.Root.WriteString('CFOP_ST_DESCRICAO',      cdsiNfs.FieldByName('CFOP_ST_DESCRICAO').AsString,'' );
  ARoot.Root.WriteString('CALC_AGN_ST_CODIGO',     cdsiNfs.FieldByName('CALC_AGN_ST_CODIGO').AsString,'' );
  ARoot.Root.WriteString('CALC_AGN_ST_TIPOCODIGO', cdsiNfs.FieldByName('CALC_AGN_ST_TIPOCODIGO').AsString,'' );
  ARoot.Root.WriteString('NOT_RE_VLBASECOFINS',    cdsiNfs.FieldByName('NOT_RE_VLBASECOFINS').AsString,'' );
  ARoot.Root.WriteString('NOT_RE_VLBASEPIS',       cdsiNfs.FieldByName('NOT_RE_VLBASEPIS').AsString,'' );
  ARoot.Root.WriteString('CALC_AGN_ST_CODIGO',     cdsiNfs.FieldByName('CALC_AGN_ST_CODIGO').AsString,'' );
  ARoot.Root.WriteString('CALC_AGN_ST_TIPOCODIGO', cdsiNfs.FieldByName('CALC_AGN_ST_TIPOCODIGO').AsString,'' );
  ARoot.Root.WriteString('CFOP_ST_EXTENSO',        cdsiNfs.FieldByName('CFOP_ST_EXTENSO').AsString,'' );
  // ARoot.Root.WriteString('NOT_RE_VLDESADUANEIRA',  cdsiNfs.FieldByName('NOT_RE_VLDESADUANEIRA').AsString,'' );

  // Itens da Nota de Saida
  if not cdsiNfsItem.IsEmpty then
     CriaXMLItem( ARoot,ANFSItem,cdsiNfsItem, cdsiCFOP.FieldByName('CFOP_IDE_ST_CODIGO').AsString, cdsiCFOP.FieldByName('CFOP_IN_CODIGO').AsString )
  else
     CriaXMLItem( ARoot, ANFSItem,cdsiNfsServico,cdsiCFOP.FieldByName('CFOP_IDE_ST_CODIGO').AsString, cdsiCFOP.FieldByName('CFOP_IN_CODIGO').AsString );

  // Observacao
  ANFSObs := ARoot.Root.NodeNew('ObservacaoNF');
  ANFSObs.AttributeAdd('OPERACAO','I');
  ANFSObs.WriteString('NOB_CH_TIPOOBSERVACAO', cdsiNfs.FieldByName('NOB_CH_TIPOOBSERVACAO').AsString,'' );
  ANFSObs.WriteString('NOB_ST_OBSERVACAO', cdsiNfs.FieldByName('NOB_ST_OBSERVACAO').AsString,'' );

  // Volume
  ANFSVolume := ARoot.Root.NodeNew('VolumeNF');
  ANFSVolume.AttributeAdd('OPERACAO','I');
  ANFSVolume.WriteString('VOL_ST_MARCA',       cdsiNfs.FieldByName('VOL_ST_MARCA').AsString,'' );
  ANFSVolume.WriteString('VOL_IN_NUMERO',      cdsiNfs.FieldByName('VOL_IN_NUMERO').AsString,'' );
  ANFSVolume.WriteString('VOL_IN_QUANTIDADE',  cdsiNfs.FieldByName('VOL_IN_QUANTIDADE').AsString,'' );
  ANFSVolume.WriteString('VOL_ST_ESPECIE',     cdsiNfs.FieldByName('VOL_ST_ESPECIE').AsString,'' );
  ANFSVolume.WriteString('VOL_RE_PESOBRUTO',   cdsiNfs.FieldByName('VOL_RE_PESOBRUTO').AsString,'' );
  ANFSVolume.WriteString('VOL_RE_PESOLIQUIDO', cdsiNfs.FieldByName('VOL_RE_PESOLIQUIDO').AsString,'' );

  // Parcelas a Receber
  cdsiNfsParcela.First;
  while not cdsiNfsParcela.Eof do
  begin
   ANFSParc := ARoot.Root.NodeNew('Parcelas');
   ANFSParc.AttributeAdd('OPERACAO','I');
   ANFSParc.WriteString('MOV_ST_DOCUMENTO',   cdsiNfsParcela.FieldByName('NFSID').AsString,'' );
   ANFSParc.WriteString('MOV_ST_PARCELA',     cdsiNfsParcela.FieldByName('MOV_ST_PARCELA').AsString,'' );
   ANFSParc.WriteString('MOV_DT_VENCTO',      cdsiNfsParcela.FieldByName('MOV_DT_VENCTO').AsString,'' );
   ANFSParc.WriteString('MOV_RE_VALORMOE',    cdsiNfsParcela.FieldByName('MOV_RE_VALORMOE').AsString,'' );
   ANFSParc.WriteString('MOV_RE_DIFDIAS',     cdsiNfsParcela.FieldByName('MOV_RE_DIFDIAS').AsString,'' );
{   ANFSParc.WriteString('FORP_IN_CODIGO',     cdsiNfsParcela.FieldByName('FORP_IN_CODIGO').AsString,'' );
   ANFSParc.WriteString('TCOB_ST_CODIGO',     cdsiNfsParcela.FieldByName('TCOB_ST_CODIGO').AsString,'' );
   ANFSParc.WriteString('BAN_IN_NUMERO',      cdsiNfsParcela.FieldByName('BAN_IN_NUMERO').AsString,'' );
   ANFSParc.WriteString('CAID_BAN_IN_NUMERO', cdsiNfsParcela.FieldByName('CAID_BAN_IN_NUMERO').AsString,'' );
   ANFSParc.WriteString('CAID_ST_CONTACORR',  cdsiNfsParcela.FieldByName('CAID_ST_CONTACORR').AsString,'' );}

   cdsiNfsParcela.Next;
  end;

  InsereTransacao( 501, ARoot );
  XMLPath := Unidade + Path +'NotaEmitida'+ cdsiNfs.FieldByName('NOT_IN_NUMERO').AsString +'.XML';
  ARoot.SaveToFile( XMLPath );
//  ShowMessage('XML Gerado!');

 finally
  FreeAndNil( cdsiNfs );
  FreeAndNil( cdsiNfsItem );
  FreeAndNil( cdsTitRecAgrupa );
  FreeAndNil( cdsTitRecAgrupa2 );
  FreeAndNil( cdsiCNPJ );
 end;
end;

procedure ExportEntidade( Entidadeid : String );
var iSQL,XMLPath : String;
    cdsiEntidade,
    cdsiMunicipio,
    cdsiCategoria : TClientDataSet;
    ARoot      : TNativeXml;
    AEntidade : TXmlNode;
begin
 cdsiEntidade := nil;
 iSQL := EntidadeSelect +
         ' WHERE EF_ENTIDADE.ENTIDADEID = '+ Entidadeid;

 try
  ExecDynamicProvider(-1,iSQL,cdsiEntidade);

  if cdsiEntidade.FieldByName('AGN_ST_FANTASIA').IsNull then
     begin
      Showmessage('Nome Fantasia não Preenchido para o Agente: '+ cdsiEntidade.FieldByName('AGN_ST_CODIGOALT').AsString );
      Exit;
     end;

  cdsiMunicipio := nil;
  iSQL := ' SELECT COUNT(*), MUN_IN_CODIGO, AGN_ST_MUNICIPIO,PA_ST_SIGLA'+
          '   FROM MGGLO.GLO_VW_CLIENTE@MEGA_MUNICIPIO'+
          '  WHERE MUN_IN_CODIGO IS NOT NULL'+
          '   AND AGN_ST_MUNICIPIO = '+ QuotedStr( cdsiEntidade.FieldByName('AGN_ST_MUNICIPIO').AsString )+
          '   GROUP BY MUN_IN_CODIGO, AGN_ST_MUNICIPIO,PA_ST_SIGLA'+
          '   ORDER BY MUN_IN_CODIGO';

  ExecDynamicProvider( -1,iSQL, cdsiMunicipio );
  cdsiMunicipio.First;

  cdsiMunicipio.AddIndex('idx1','AGN_ST_MUNICIPIO',[ixPrimary] );
  cdsiMunicipio.IndexName := 'idx1';
  cdsiMunicipio.FindKey([ cdsiEntidade.FieldByName('AGN_ST_MUNICIPIO').AsString ]);

  iSQL := EntidadeCategoria +
          ' WHERE EF_ENTIDADEGRUPO.ENTIDADEID = '+ Entidadeid;

  ExecDynamicProvider( -1,iSQL,cdsiCategoria );

  {*** Criando Arquivo XML ***}
  ARoot := TNativeXml.CreateName('Cliente');
  ARoot.Root.AttributeAdd( 'OPERACAO','I');

  while not cdsiCategoria.Eof do
  begin
   {*** Dados da Entidade ***}
   ARoot.Root.WriteString('AGN_ST_CODIGOALT',       cdsiEntidade.FieldByName('AGN_ST_CODIGOALT').AsString,'' );
   ARoot.Root.WriteString('AGN_ST_FANTASIA',        cdsiEntidade.FieldByName('AGN_ST_FANTASIA').AsString,'' );
   ARoot.Root.WriteString('AGN_ST_NOME',            cdsiEntidade.FieldByName('AGN_ST_NOME').AsString,'' );
   ARoot.Root.WriteString('AGN_CH_TIPOPESSOAFJ',    cdsiEntidade.FieldByName('AGN_CH_TIPOPESSOAFJ').AsString,'' );
   ARoot.Root.WriteString('CNAE_ST_CODIGO',         cdsiEntidade.FieldByName('CNAE_ST_CODIGO').AsString,'' );
   ARoot.Root.WriteString('AGN_BO_PUBLICO',         cdsiEntidade.FieldByName('AGN_BO_PUBLICO').AsString,'' );
   ARoot.Root.WriteString('AGN_BO_ATIVADOSALDO',    cdsiEntidade.FieldByName('AGN_BO_ATIVADOSALDO').AsString,'' );
   ARoot.Root.WriteString('AGN_BO_EXCECAOFISCAL',   cdsiEntidade.FieldByName('AGN_BO_EXCECAOFISCAL').AsString,'' );
   ARoot.Root.WriteString('CLI_BO_PREDIOPROPRIO',   cdsiEntidade.FieldByName('CLI_BO_PREDIOPROPRIO').AsString,'' );
   ARoot.Root.WriteString('AGN_TAU_ST_CODIGO',      cdsiCategoria.FieldByName('AGN_TAU_ST_CODIGO').AsString,'' );

   ARoot.Root.WriteString('AGN_IN_NATJURID',        cdsiEntidade.FieldByName('AGN_IN_NATJURID').AsString,'' );
   ARoot.Root.WriteString('AGN_ST_INSCRMUNIC',      cdsiEntidade.FieldByName('AGN_ST_INSCRMUNIC').AsString,'' );
   ARoot.Root.WriteString('UF_ST_SIGLA',            cdsiEntidade.FieldByName('UF_ST_SIGLA').AsString,'' );
   ARoot.Root.WriteString('PA_ST_SIGLA',            cdsiMunicipio.FieldByName('PA_ST_SIGLA').AsString,'' );

   ARoot.Root.WriteString('AGN_ST_LOGRADOURO',      cdsiEntidade.FieldByName('AGN_ST_LOGRADOURO').AsString,'' );
   ARoot.Root.WriteString('AGN_ST_NUMERO',          cdsiEntidade.FieldByName('AGN_ST_NUMERO').AsString,'' );
   ARoot.Root.WriteString('MUN_IN_CODIGO',          cdsiMunicipio.FieldByName('MUN_IN_CODIGO').AsString,'' );
   ARoot.Root.WriteString('AGN_ST_MUNICIPIO',       cdsiEntidade.FieldByName('AGN_ST_MUNICIPIO').AsString,'' );
   ARoot.Root.WriteString('AGN_ST_BAIRRO',          cdsiEntidade.FieldByName('AGN_ST_BAIRRO').AsString,'' );
   ARoot.Root.WriteString('AGN_ST_CEP',             cdsiEntidade.FieldByName('AGN_ST_CEP').AsString,'' );
   ARoot.Root.WriteString('AGN_ST_COMPLEMENTO',     cdsiEntidade.FieldByName('AGN_ST_COMPLEMENTO').AsString,'' );
   ARoot.Root.WriteString('AGN_ST_ENQUADRAICMS',    cdsiEntidade.FieldByName('AGN_ST_ENQUADRAICMS').AsString,'' );

   ARoot.Root.WriteString('AGN_ST_CGC',             cdsiEntidade.FieldByName('AGN_ST_CGC').AsString,'' );
   ARoot.Root.WriteString('AGN_ST_CPF',             cdsiEntidade.FieldByName('AGN_ST_CPF').AsString,'' );
   ARoot.Root.WriteString('AGN_ST_INSCRESTADUAL',   cdsiEntidade.FieldByName('AGN_ST_INSCRESTADUAL').AsString,'' );
   ARoot.Root.WriteString('AGN_ST_EMAIL',           cdsiEntidade.FieldByName('AGN_ST_EMAIL').AsString,'' );
   ARoot.Root.WriteString('AGN_ST_TELEFONECOML',    cdsiEntidade.FieldByName('AGN_ST_TELEFONECOML').AsString,'' );

   ARoot.Root.WriteString('AGN_ST_RG',              cdsiEntidade.FieldByName('AGN_ST_RG').AsString,'' );
   ARoot.Root.WriteString('AGN_BL_OBSERVACAO',      cdsiEntidade.FieldByName('AGN_BL_OBSERVACAO').AsString,'' );
   ARoot.Root.WriteString('FIL_IN_CODIGO',          cdsiEntidade.FieldByName('FIL_IN_CODIGO').AsString,'' );
   ARoot.Root.WriteString('AGN_BO_FLUXO',           cdsiEntidade.FieldByName('AGN_BO_FLUXO').AsString,'' );

   {*** Dados de Cobranca ***}
   cdsiMunicipio.FindKey([ cdsiEntidade.FieldByName('ENA_ST_MUNICIPIO2').AsString ]);

   AEntidade := ARoot.Root.NodeNew('Cliente_Endereco');
   if cdsiEntidade.FieldByName('ENA_ST_MUNICIPIO2').AsString <> '' then
      begin
       AEntidade.AttributeAdd('OPERACAO','I');
       AEntidade.WriteString('TEA_ST_CODIGO','COB','');
       AEntidade.WriteString('ENA_ST_CEP',        cdsiEntidade.FieldByName('ENA_ST_CEP2').AsString,'' );
       AEntidade.WriteString('MUN_IN_CODIGO',     cdsiMunicipio.FieldByName('MUN_IN_CODIGO').AsString,'' );
       AEntidade.WriteString('ENA_ST_LOGRADOURO', cdsiEntidade.FieldByName('ENA_ST_LOGRADOURO2').AsString,'' );
       AEntidade.WriteString('ENA_ST_NUMERO',     cdsiEntidade.FieldByName('ENA_ST_NUMERO2').AsString,'' );
       AEntidade.WriteString('ENA_ST_BAIRRO',     cdsiEntidade.FieldByName('ENA_ST_BAIRRO2').AsString,'' );
       AEntidade.WriteString('ENA_ST_MUNICIPIO',  cdsiEntidade.FieldByName('ENA_ST_MUNICIPIO2').AsString,'' );
       AEntidade.WriteString('AGN_ST_COMPLEMENTO',cdsiEntidade.FieldByName('AGN_ST_COMPLEMENTO2').AsString,'' );
       AEntidade.WriteString('ENA_ST_TELEFONE',   cdsiEntidade.FieldByName('ENA_ST_TELEFONE2').AsString,'' );
       AEntidade.WriteString('UF_ST_SIGLA',       cdsiEntidade.FieldByName('UF_ST_SIGLA2').AsString,'' );
       AEntidade.WriteString('PA_ST_SIGLA',       cdsiMunicipio.FieldByName('PA_ST_SIGLA').AsString,'' );
      end;

   {*** Dados de Instalacao ***}
   cdsiMunicipio.FindKey([ cdsiEntidade.FieldByName('ENA_ST_MUNICIPIO3').AsString ]);

   AEntidade := ARoot.Root.NodeNew('Cliente_Endereco');
   if cdsiEntidade.FieldByName('ENA_ST_MUNICIPIO3').AsString <> '' then
      begin
       AEntidade.AttributeAdd('OPERACAO','I');
       AEntidade.WriteString('TEA_ST_CODIGO','INS','');
       AEntidade.WriteString('ENA_ST_CEP',        cdsiEntidade.FieldByName('ENA_ST_CEP3').AsString,'' );
       AEntidade.WriteString('MUN_IN_CODIGO',     cdsiMunicipio.FieldByName('MUN_IN_CODIGO').AsString,'' );
       AEntidade.WriteString('ENA_ST_LOGRADOURO', cdsiEntidade.FieldByName('ENA_ST_LOGRADOURO3').AsString,'' );
       AEntidade.WriteString('ENA_ST_NUMERO',     cdsiEntidade.FieldByName('ENA_ST_NUMERO3').AsString,'' );
       AEntidade.WriteString('ENA_ST_BAIRRO',     cdsiEntidade.FieldByName('ENA_ST_BAIRRO3').AsString,'' );
       AEntidade.WriteString('ENA_ST_MUNICIPIO',  cdsiEntidade.FieldByName('ENA_ST_MUNICIPIO3').AsString,'' );
       AEntidade.WriteString('AGN_ST_COMPLEMENTO',cdsiEntidade.FieldByName('AGN_ST_COMPLEMENTO3').AsString,'' );
       AEntidade.WriteString('ENA_ST_TELEFONE',   cdsiEntidade.FieldByName('ENA_ST_TELEFONE3').AsString,'' );
       AEntidade.WriteString('UF_ST_SIGLA',       cdsiEntidade.FieldByName('UF_ST_SIGLA3').AsString,'' );
       AEntidade.WriteString('PA_ST_SIGLA',       cdsiMunicipio.FieldByName('PA_ST_SIGLA').AsString,'' );
      end;

   InsereTransacao( 202, ARoot );
   XMLPath := Unidade + Path +'Agentes'+ cdsiEntidade.FieldByName('AGN_ST_CODIGOALT').AsString + '.XML';
   ARoot.SaveToFile( XMLPath );
   cdsiCategoria.Next;
  end;

//  ShowMessage('XML Gerado!');
 finally
  FreeAndNil( cdsiEntidade );
  FreeAndNil( cdsiMunicipio );
  FreeAndNil( cdsiCategoria );
 end;
end;

procedure ExportItem( EmpresaId,ItemId : Integer; Tipo : String = 'P' );
var iSQL,AlternativoId, XMLPath : String;
    cdsiItem,
    cdsGrupo : TClientDataSet;
    ARoot    : TNativeXml;
    AClasse  : TXmlNode;
    //AProduto,
    //  ALocalizacao : TXmlNode;
begin
 cdsiItem := nil;

 try
  //Carregando Produtos
  iSQL := ProdutoSelect +
         '   AND EF_PRODUTO.EMPRESAID = '+ IntToStr( EmpresaId ) +
         '   AND EF_PRODUTO.PRODUTOID = '+ IntToStr( ItemId );

  ExecDynamicProvider( -1,iSQL, cdsiItem );

  //Carregando Servicos
  if Tipo = 'S' then
     begin
      iSQL := ServicoSelect +
              '   AND EF_SERVICO.EMPRESAID = '+ IntToStr( EmpresaId )+
              '   AND EF_SERVICO.SERVICOID = '+ IntToStr( ItemId );
      ExecDynamicProvider( -1,iSQL,cdsiItem );
     end; 

  iSQL := 'SELECT'+
          '  T.GRU_IDE_ST_CODIGO,T.GRU_ST_EXTENSO,T.GRU_ST_NOME,T.GRU_IN_CODIGO'+
          '  FROM'+
          '  MGADM.EST_GRUPOS@DBLMGADM T'+
          ' WHERE'+
          '  T.GRU_IN_CODIGO <> T.PAI_GRU_IN_CODIGO'+
          '  AND T.GRU_ST_NOME = '+ QuotedStr( cdsiItem.FieldByName( 'GRU_IN_CODIGO' ).AsString +' '+
                                               cdsiItem.FieldByName( 'SIGLAGRUPO' ).AsString )+
          ' AND T.GRU_IDE_ST_CODIGO = '+ FormatFloat( '00',EmpresaId );

  ExecDynamicProvider( -1,iSQL,cdsGrupo );

  if cdsGrupo.IsEmpty then
     begin
      ShowMessage( 'Grupo Não encontrado para o Item: '+ IntToStr( ItemId ) );
      Exit;
     end;

  //Construindo a nova Chave para o Item
  AlternativoId := FormatFloat( '000', cdsiItem.FieldByName('EMPRESAID').AsFloat ) +
                   cdsiItem.FieldByName('PRO_ST_ALTERNATIVO').AsString;

  ARoot := TNativeXml.CreateName('Produtos');
  ARoot.Root.AttributeAdd( 'OPERACAO','I');

  ARoot.Root.WriteString('GRU_IN_CODIGO',       cdsGrupo.FieldByName('GRU_ST_EXTENSO').AsString,'' );
  ARoot.Root.WriteString('GRU_IDE_ST_CODIGO',   cdsGrupo.FieldByName('GRU_IDE_ST_CODIGO').AsString,'' );
  ARoot.Root.WriteString('PRO_ST_DESCRICAO',    cdsiItem.FieldByName('PRO_ST_DESCRICAO').AsString,'' );
  ARoot.Root.WriteString('PRO_ST_NARRATIVA',    cdsiItem.FieldByName('PRO_ST_NARRATIVA').AsString,'' );
  ARoot.Root.WriteString('APL_IN_CODIGO',       cdsiItem.FieldByName('APL_IN_CODIGO').AsString,'' );
//  ARoot.Root.WriteString('CTR_IN_CODIGO',       cdsiItem.FieldByName('CTR_IN_CODIGO').AsString,'' );

  if cdsiItem.FieldByName('PRO_ST_DEFITEM').AsString = 'PA' then
     ARoot.Root.WriteString('NCM_IN_CODIGO',       cdsiItem.FieldByName('NCM_IN_CODIGO').AsString,'' );

//  ARoot.Root.WriteString('PCD_ST_CODIGO',       cdsiItem.FieldByName('PCD_ST_CODIGO').AsString,'' );
  ARoot.Root.WriteString('UNI_ST_UNIDADE',      cdsiItem.FieldByName('UNI_ST_UNIDADE').AsString,'' );
  ARoot.Root.WriteString('PRO_ST_ORIGEM',       cdsiItem.FieldByName('PRO_ST_ORIGEM').AsString,'' );
//  ARoot.Root.WriteString('PRO_ST_CESTOQUE',     cdsiItem.FieldByName('PRO_ST_CESTOQUE').AsString,'' );
//  ARoot.Root.WriteString('PRO_ST_SINSPECAO',    cdsiItem.FieldByName('PRO_ST_SINSPECAO').AsString,'' );
  ARoot.Root.WriteString('PRO_ST_TIPODADOS',    cdsiItem.FieldByName('PRO_ST_TIPODADOS').AsString,'' );
  ARoot.Root.WriteString('PRO_ST_TIPOTRIBUTA',    cdsiItem.FieldByName('PRO_ST_TIPOTRIBUTA').AsString,'' );
  ARoot.Root.WriteString('PRO_ST_COMISSIONADO',    cdsiItem.FieldByName('PRO_ST_COMISSIONADO').AsString,'' );
  ARoot.Root.WriteString('PRO_RE_PESPECIFICO',    cdsiItem.FieldByName('PRO_RE_PESPECIFICO').AsString,'' );
  ARoot.Root.WriteString('PRO_RE_PELIQUIDO',    cdsiItem.FieldByName('PRO_RE_PELIQUIDO').AsString,'' );
  ARoot.Root.WriteString('PRO_RE_PEBRUTO',    cdsiItem.FieldByName('PRO_RE_PEBRUTO').AsString,'' );
//  ARoot.Root.WriteString('PRO_ST_UTILIZACAO',    cdsiItem.FieldByName('PRO_ST_UTILIZACAO').AsString,'' );
//  ARoot.Root.WriteString('FPD_IN_CODIGO',    cdsiItem.FieldByName('FPD_IN_CODIGO').AsString,'' );
// VER JOEL  ARoot.Root.WriteString('PRO_ST_ESPECIE',    cdsiItem.FieldByName('PRO_ST_ESPECIE').AsString,'' );
//  ARoot.Root.WriteString('FMT_ST_CODIGO',    cdsiItem.FieldByName('FMT_ST_CODIGO').AsString,'' );
  ARoot.Root.WriteString('PRO_ST_MARCA',    cdsiItem.FieldByName('PRO_ST_MARCA').AsString,'' );
  ARoot.Root.WriteString('PRO_IN_VOLUME',    cdsiItem.FieldByName('PRO_IN_VOLUME').AsString,'' );
  ARoot.Root.WriteString('PRO_RE_ALIQIRRF',    cdsiItem.FieldByName('PRO_RE_ALIQIRRF').AsString,'' );
  ARoot.Root.WriteString('PRO_IN_GERASOLICITACAO',    cdsiItem.FieldByName('PRO_IN_GERASOLICITACAO').AsString,'' );
  ARoot.Root.WriteString('PRO_IN_QTDECOMPRAR',    cdsiItem.FieldByName('PRO_IN_QTDECOMPRAR').AsString,'' );
  ARoot.Root.WriteString('PRO_ST_DEFITEM',    cdsiItem.FieldByName('PRO_ST_DEFITEM').AsString,'' );
  ARoot.Root.WriteString('PRO_IN_CRITERIOBUSCA',    cdsiItem.FieldByName('PRO_IN_CRITERIOBUSCA').AsString,'' );
  ARoot.Root.WriteString('PRO_ST_ALTERNATIVO',    AlternativoId,'' );
  ARoot.Root.WriteString('PRO_CH_DEFICMS',    cdsiItem.FieldByName('PRO_CH_DEFICMS').AsString,'' );
  ARoot.Root.WriteString('PRO_CH_ESTATISTICA',    cdsiItem.FieldByName('PRO_CH_ESTATISTICA').AsString,'' );
//  ARoot.Root.WriteString('PRO_IN_PESQDEM',    cdsiItem.FieldByName('PRO_IN_PESQDEM').AsString,'' );
//  ARoot.Root.WriteString('CLS_IDE_ST_CODIGO',    cdsiItem.FieldByName('CLS_IDE_ST_CODIGO').AsString,'' );
//  ARoot.Root.WriteString('CLS_IN_REDUZIDO',    cdsiItem.FieldByName('CLS_IN_REDUZIDO').AsString,'' );
  ARoot.Root.WriteString('PRO_RE_VLOBJETIVO',    cdsiItem.FieldByName('PRO_RE_VLOBJETIVO').AsString,'' );
  ARoot.Root.WriteString('IND_IN_CODIGO',    cdsiItem.FieldByName('IND_IN_CODIGO').AsString,'' );
  ARoot.Root.WriteString('PRO_RE_QMINCOMPRA',    cdsiItem.FieldByName('PRO_RE_QMINCOMPRA').AsString,'' );
  ARoot.Root.WriteString('PRO_BO_TODOSALMOX',    cdsiItem.FieldByName('PRO_BO_TODOSALMOX').AsString,'' );
//  ARoot.Root.WriteString('TRI_GRU_IDE_ST_CODIGO',    cdsiItem.FieldByName('TRI_GRU_IDE_ST_CODIGO').AsString,'' );
//  ARoot.Root.WriteString('CLA_GRU_IDE_ST_CODIGO',    cdsiItem.FieldByName('CLA_GRU_IDE_ST_CODIGO').AsString,'' );
// NO CASO DE SERVICO  ARoot.Root.WriteString('COS_IN_CODIGO',    cdsiItem.FieldByName('COS_IN_CODIGO').AsString,'' );
//  ARoot.Root.WriteString('PRO_BO_CAT95',    cdsiItem.FieldByName('PRO_BO_CAT95').AsString,'' );
//  ARoot.Root.WriteString('TPCO_IN_CODIGO',    cdsiItem.FieldByName('TPCO_IN_CODIGO').AsString,'' );
  ARoot.Root.WriteString('PRO_BO_SCANC',    cdsiItem.FieldByName('PRO_BO_SCANC').AsString,'' );
  ARoot.Root.WriteString('FIL_IN_CODIGO',    cdsiItem.FieldByName('FIL_IN_CODIGO').AsString,'' );
  ARoot.Root.WriteString('GRU_ST_EXTENSO',    cdsiItem.FieldByName('GRU_ST_EXTENSO').AsString,'' );

  // Equivalencia do Produto
{  AProduto := ARoot.Root.NodeNew('Equivalencia' );
  AProduto.AttributeAdd('OPERACAO','I' );
  AProduto.WriteString('EQU_ST_EQUIVALENTE',  cdsiItem.FieldByName('EQU_ST_EQUIVALENTE').AsString,'' );
  AProduto.WriteString('MAR_IN_CODIGO',       cdsiItem.FieldByName('MAR_IN_CODIGO').AsString,'' );
  AProduto.WriteString('FAB_IN_CODIGO',       cdsiItem.FieldByName('FAB_IN_CODIGO').AsString,'' );}

  // Classe do Produto
  AClasse := ARoot.Root.NodeNew('Prod_Classe');
  AClasse.AttributeAdd('OPERACAO','I');
  AClasse.WriteString('TPC_ST_CLASSE',    cdsiItem.FieldByName('TPC_ST_CLASSE').AsString,'');
  AClasse.WriteString('APL_IN_CODIGO',    cdsiItem.FieldByName('APL_IN_CODIGO').AsString,'');
  AClasse.WriteString('CLA_ST_EXTENSO',   cdsiItem.FieldByName('CLA_ST_EXTENSO').AsString,'');

  // Localizacao do Produto
{  ALocalizacao := ARoot.Root.NodeNew('Classe');
  ALocalizacao.AttributeAdd('OPERACAO','I');
  ALocalizacao.WriteString('ALM_IN_CODIGO',   cdsiItem.FieldByName('ALM_IN_CODIGO').AsString);
  ALocalizacao.WriteString('LOC_IN_CODIGO',   cdsiItem.FieldByName('LOC_IN_CODIGO').AsString);
  ALocalizacao.WriteString('PRL_RE_MINIMO',   cdsiItem.FieldByName('PRL_RE_MINIMO').AsString);
  ALocalizacao.WriteString('PRL_RE_MAXIMO',   cdsiItem.FieldByName('PRL_RE_MAXIMO').AsString);}

  InsereTransacao( 701, ARoot );
  XMLPath := Unidade + Path +'\Produto'+ AlternativoId + '.xml';
  ARoot.SaveToFile( XMLPath );
//  MessageDlg('XML Gerado para o Item:'+ cdsiItem.FieldByName('PRO_ST_ALTERNATIVO').AsString, mtInformation,[MBOK],0 );

 finally
  FreeAndNil( cdsiItem );
 end;
end;


{/*** Export ***}

function FormatCNPF_CNPJ_CCM(Text: String): String;
var CpoFormat, TextCnv : String;
begin
 CpoFormat := '';
 TextCnv   := TransfNum( Text );
 if LengTh( Trim( TextCnv ) ) > 13 then
    CpoFormat := FormatMaskText( '##\.###\.###\/####\-##;0;', TextCnv )
 else
    CpoFormat := FormatMaskText( '###\.###\.###\-##;0;', TextCnv );

 Result := CpoFormat;
end;

function CGC(cTexto: String): String;
begin
 if COPY( cTEXTO , 3,1 ) = '.' then
    CGC := COPY(cTEXTO,1,2)+COPY(cTEXTO,4,3)+COPY(cTEXTO,8,3)+COPY(cTEXTO,12,4)+COPY(cTEXTO,17,2)
 else
    CGC := cTEXTO;
end;

procedure CriaXMLItem
( var ARoot : TNativeXml; var AItem : TXmlNode; cdsiItem : TClientDataSet; CFOP_IDE_ST_CODIGO, CFOP_IN_CODIGO : String );
var ItemId : String;
begin
  cdsiItem.First;
  while not cdsiItem.Eof do
  begin
   ItemId := FormatFloat( '000', cdsiItem.FieldByName('EMPRESAID').AsFloat )+
                cdsiItem.FieldByName('PRO_IN_CODIGO').AsString;

   AItem := ARoot.Root.NodeNew('ItemNotaFiscal');
   AItem.AttributeAdd('OPERACAO','I');
   AItem.WriteString('PRO_ST_ALTERNATIVO',     ItemId,'');
   AItem.WriteString('UNI_ST_UNIDADE',         cdsiItem.FieldByName('UNI_ST_UNIDADE').AsString,'' );
   AItem.WriteString('ITN_RE_QUANTIDADE',      cdsiItem.FieldByName('ITN_RE_QUANTIDADE').AsString,'' );
   AItem.WriteString('ITN_RE_VALORUNITARIO',   cdsiItem.FieldByName('ITN_RE_VALORUNITARIO').AsString,'' );
   AItem.WriteString('ITN_RE_VALORMERCADORIA', cdsiItem.FieldByName('ITN_RE_VALORMERCADORIA').AsString,'' );
   AItem.WriteString('ITN_RE_VALORMERCEMPREG', cdsiItem.FieldByName('ITN_RE_VALORMERCEMPREG').AsString,'' );
   AItem.WriteString('ITN_RE_VALORMAOOBRA',    cdsiItem.FieldByName('ITN_RE_VALORMAOOBRA').AsString,'' );
   AItem.WriteString('ITN_RE_PERCDESCONTO',    cdsiItem.FieldByName('ITN_RE_PERCDESCONTO').AsString,'' );
   AItem.WriteString('ITN_RE_VALORDESCONTO',   cdsiItem.FieldByName('ITN_RE_VALORDESCONTO').AsString,'' );
   AItem.WriteString('ITN_RE_PERCACRESCIMO',   cdsiItem.FieldByName('ITN_RE_PERCACRESCIMO').AsString,'' );
   AItem.WriteString('ITN_RE_ALIQICMS',        cdsiItem.FieldByName('ITN_RE_ALIQICMS').AsString,'' );
   AItem.WriteString('ITN_RE_VALORICMS',       cdsiItem.FieldByName('ITN_RE_VALORICMS').AsString,'' );
   AItem.WriteString('ITN_RE_ALIQIPI',         cdsiItem.FieldByName('ITN_RE_ALIQIPI').AsString,'' );
   AItem.WriteString('ITN_RE_VALORIPI',        cdsiItem.FieldByName('ITN_RE_VALORIPI').AsString,'' );
   AItem.WriteString('APL_IN_CODIGO',          cdsiItem.FieldByName('APL_IN_CODIGO').AsString,'' );
   AItem.WriteString('ITN_ST_DESCRICAO',       cdsiItem.FieldByName('ITN_ST_DESCRICAO').AsString,'' );
   AItem.WriteString('ITN_RE_SEGURO',          cdsiItem.FieldByName('ITN_RE_SEGURO').AsString,'' );
   AItem.WriteString('ITN_RE_DESPACESSORIA',   cdsiItem.FieldByName('ITN_RE_DESPACESSORIA').AsString,'' );
   AItem.WriteString('ITN_RE_BASEICMS',        cdsiItem.FieldByName('ITN_RE_BASEICMS').AsString,'' );
   AItem.WriteString('ITN_RE_ISENTOICMS',      cdsiItem.FieldByName('ITN_RE_ISENTOICMS').AsString,'' );
   AItem.WriteString('ITN_RE_OUTROSICMS',      cdsiItem.FieldByName('ITN_RE_OUTROSICMS').AsString,'' );
   AItem.WriteString('ITN_RE_BASEIPI',         cdsiItem.FieldByName('ITN_RE_BASEIPI').AsString,'' );
   AItem.WriteString('ITN_RE_ISENTOIPI',       cdsiItem.FieldByName('ITN_RE_ISENTOIPI').AsString,'' );
   AItem.WriteString('ITN_RE_OUTROSIPI',       cdsiItem.FieldByName('ITN_RE_OUTROSIPI').AsString,'' );
   AItem.WriteString('ITN_RE_BASESUBTRIB',     cdsiItem.FieldByName('ITN_RE_BASESUBTRIB').AsString,'' );
   AItem.WriteString('ITN_RE_ICMSRETIDO',      cdsiItem.FieldByName('ITN_RE_ICMSRETIDO').AsString,'' );
   AItem.WriteString('ITN_RE_ALIQISS',         cdsiItem.FieldByName('ITN_RE_ALIQISS').AsString,'' );
   AItem.WriteString('ITN_RE_VALORISS',        cdsiItem.FieldByName('ITN_RE_VALORISS').AsString,'' );
   AItem.WriteString('ITN_RE_ALIQIRRF',        cdsiItem.FieldByName('ITN_RE_ALIQIRRF').AsString,'' );
   AItem.WriteString('ITN_RE_VALORIRRF',       cdsiItem.FieldByName('ITN_RE_VALORIRRF').AsString,'' );
   AItem.WriteString('ITN_RE_ALIQINSS',        cdsiItem.FieldByName('ITN_RE_ALIQINSS').AsString,'' );
   AItem.WriteString('ITN_RE_VALORINSS',       cdsiItem.FieldByName('ITN_RE_VALORINSS').AsString,'' );
   AItem.WriteString('ITN_CH_STICMS_A',        cdsiItem.FieldByName('ITN_CH_STICMS_A').AsString,'' );
   AItem.WriteString('ITN_CH_STICMS_B',        cdsiItem.FieldByName('ITN_CH_STICMS_B').AsString,'' );
   AItem.WriteString('ITN_RE_VALORTOTAL',      cdsiItem.FieldByName('ITN_RE_VALORTOTAL').AsString,'' );
   AItem.WriteString('CFOP_IDE_ST_CODIGO',     CFOP_IDE_ST_CODIGO,'' );
   AItem.WriteString('CFOP_IN_CODIGO',         CFOP_IN_CODIGO,'' );
   AItem.WriteString('ITN_ST_NCM_EXTENSO',     cdsiItem.FieldByName('ITN_ST_NCM_EXTENSO').AsString,'' );
   AItem.WriteString('ITN_RE_ALIQPIS',         cdsiItem.FieldByName('ITN_RE_ALIQPIS').AsString,'' );
   AItem.WriteString('ITN_RE_ALIQCOFINS',      cdsiItem.FieldByName('ITN_RE_ALIQCOFINS').AsString,'' );
   AItem.WriteString('ITN_RE_VLBASECOFINS',    cdsiItem.FieldByName('ITN_RE_VLBASECOFINS').AsString,'' );
   AItem.WriteString('ITN_RE_VLBASECSLL',      cdsiItem.FieldByName('ITN_RE_VLBASECSLL').AsString,'' );
   AItem.WriteString('ITN_RE_VLBASEPIS',       cdsiItem.FieldByName('ITN_RE_VLBASEPIS').AsString,'' );
   AItem.WriteString('ITN_RE_VLCSLL',          cdsiItem.FieldByName('ITN_RE_VLCSLL').AsString,'' );
   AItem.WriteString('ITN_RE_VLCOFINSRETIDO',  cdsiItem.FieldByName('ITN_RE_VLCOFINSRETIDO').AsString,'' );
   AItem.WriteString('ITN_RE_VLPISRETIDO',     cdsiItem.FieldByName('ITN_RE_VLPISRETIDO').AsString,'' );
   cdsiItem.Next;
  end;
end;

// Insere Transacao no Mega2000
procedure InsereTransacao(pID: Integer; pXML : TNativeXml );
var cds, cdsParams : TClientDataSet;
    TRN_IN_ID  : Integer;
    iSQL       : String;
begin
 try
  iSQL := 'SELECT'+
          '  MAX( MGINT.INT_TRANSACAO.TRN_IN_ID ) TRN_IN_ID'+
          '  FROM'+
          '  MGINT.INT_TRANSACAO@DBLMGGLO';

  ExecDynamicProvider( -1,iSQL,cds );

  TRN_IN_ID := cds.FieldByName('TRN_IN_ID').AsInteger+1;

  iSQL := 'INSERT INTO MGINT.INT_TRANSACAO@DBLMGGLO'+
          '       (TRN_IN_ID, PRO_IN_ID, TRN_DT_DATATRANSCAO, USU_IN_CODIGO, TRN_CH_ENTRADASAIDA, TRN_ST_STATUS)'+
          'VALUES ('+ IntToStr( TRN_IN_ID )+
          '       ,'+ IntToStr( pID )+
          '       ,'+ QuotedStr( DateToStr( pCnnMain.AppServer.iServerDate ) )+
          '       ,1'+
          '       ,''E'' '+
          '       ,''P'' '+
          '       )';
  ExecDML( iSQL );

  iSQL := 'INSERT INTO MGINT.INT_XML@DBLMGGLO'+
          '      (TRN_IN_ID, XML_BL_XML)'+
          'VALUES ( ' + IntToStr( TRN_IN_ID ) +  ',' + ':p1 )';

  cdsParams := TClientDataSet.Create( Nil );

  ExecDMLAddParams( cdsParams, pXML.WriteToString, 'ftMemo', 'p1', 'ptInput' );

  ExecDML( iSQL, cdsParams );

 finally
  FreeAndNil( cds );
 end;
end;


procedure GeraRiex( EmpresaId,NfsId : Integer; DataEmissaoId : String; SisComex, SisRegistro,SisTipo : String; QtdAdicoes : Integer = 0  );
var iSQL,XMLPath  : String;
    cdsrNfs  : TClientDataSet;
    ARoot    : TNativeXml;
    ANfs,
    ANfsRe,
    ANfsItem : TXmlNode;
    i        : Integer;
begin
 iSQL := 'SELECT'+
         '  EF_NATUREZAOP.CFOP,'+
         '  EF_NFS.EMPRESAID,'+
         '  EF_NFS.NFSID,'+
         '  ''SEM'' SERIE,'+
         '  EF_NFS.DATAEMISSAOID,'+
         '  EF_NFS.VLRTOTALNOTA,'+
         '  EF_NFS.EMBPESOLIQUIDO,'+
         '  EF_NFS.PAIS,'+
         '  EF_NFS.SIGLAUFID,/* ESTADO PRODUTOR OU FABRICANTE */'+
         '  EF_PRODUTO.NCMID,'+
         '  ''UNIDADE'' UNIDADEID,'+
         '  EF_NFS.EMBESPECIE,'+
         '  EF_NFSITEM.QUANTIDADE,'+
         '  EF_NFSITEM.VLRPRECOTOTAL,'+
         '  EF_EMPRESA.CPF_CNPJ CPFCNPJREMETENTE,'+
         '  EF_ENTIDADE.CPFCNPJ CPFCNPJEXPORTADOR,'+
         '  EF_ENTIDADE.NOMEFANTASIA,'+
         '  EF_ENTIDADE.INSCRESTADUAL,'+
         '  EF_ENTIDADE.ENDERECO,'+
         '  EF_ENTIDADE.CIDADE,'+
         '  EF_ENTIDADE.SIGLAUFID,'+
         '  EF_ENTIDADE.CEPID'+
         '  FROM'+
         '  EF_NFS,'+
         '  EF_NATUREZAOP,'+
         '  EF_NFSITEM,'+
         '  EF_PRODUTO,'+
         '  EF_ENTIDADE,'+
         '  EF_EMPRESA'+
         ' WHERE'+
         '  EF_EMPRESA.EMPRESAID = EF_NFS.EMPRESAID AND'+
         '  EF_NATUREZAOP.NATUREZAOPID(+) = EF_NFS.NATUREZAOPID AND'+
         '  EF_NFSITEM.EMPRESAID = EF_NFS.EMPRESAID AND'+
         '  EF_NFSITEM.DATAEMISSAOID = EF_NFS.DATAEMISSAOID AND'+
         '  EF_NFSITEM.NFSID = EF_NFS.NFSID AND'+
         '  EF_PRODUTO.EMPRESAID = EF_NFSITEM.EMPRESAID AND'+
         '  EF_PRODUTO.PRODUTOID = EF_NFSITEM.PRODUTOID AND'+
         '  EF_ENTIDADE.ENTIDADEID = EF_NFS.ENTIDADEID AND'+
         '  EF_NFS.EMPRESAID = '+ IntToStr( EmpresaId )+ ' AND'+
         '  EF_NFS.NFSID = '+ IntToStr( NfsId )+' AND'+
         '  EF_NFS.DATAEMISSAOID = '+ QuotedStr( DataEmissaoId );
 try
  ExecDynamicProvider( -1,iSQL,cdsrNfs );


  ARoot    := TNativeXml.CreateName('RegistroExportacao');

  ANfs     := ARoot.Root.NodeNew('NfExportacao');
  ANfs.AttributeAdd('CFOP', cdsrNfs.FieldByName('CFOP').AsString );
  ANfs.AttributeAdd('SequenciaTipoSiscomex', SisComex );
  ANfs.AttributeAdd('NF', FormatFloat( '000000',cdsrNfs.FieldByName('NFSID').AsInteger ) );
  ANfs.AttributeAdd('Serie', cdsrNfs.FieldByName('SERIE').AsString );
  ANfs.AttributeAdd('DataEmissao', cdsrNfs.FieldByName('DATAEMISSAOID').AsString );
  ANfs.AttributeAdd('ValorTotal', cdsrNfs.FieldByName('VLRTOTALNOTA').AsString );
  ANfs.AttributeAdd('PesoLiquido', FormatFloat( '##,###,##0.0000', cdsrNfs.FieldByName('EMBPESOLIQUIDO').AsFloat ) );
  ANfs.AttributeAdd('Pais', cdsrNfs.FieldByName('PAIS').AsString );

  for i := 1 to QtdAdicoes do
  begin
   ANfsRe := ANfs.NodeNew( 'RE' );
   ANfsRe.AttributeAdd( 'RE', SisRegistro + FormatFloat('000', i ) );
   ANfsRe.AttributeAdd( 'TipoSiscomex', SisTipo );
   ANfsRe.AttributeAdd( 'UFProdutor', 'SP' );
  end;

  cdsrNfs.First;
  while not ( cdsrNfs.Eof ) do
  begin
   ANfsItem := ANfs.NodeNew('ItemNfExportacao');
   ANfsItem.AttributeAdd('NCM',cdsrNfs.FieldByName('NCMID').AsString );
   ANfsItem.AttributeAdd('Unidade',cdsrNfs.FieldByName('UNIDADEID').AsString );
   ANfsItem.AttributeAdd('Quantidade',cdsrNfs.FieldByName('QUANTIDADE').AsString );
   ANfsItem.AttributeAdd('ValorTotalItem',cdsrNfs.FieldByName('VLRPRECOTOTAL').AsString );
   cdsrNfs.Next;
  end;

  XMLPath := 'S:\'+'GSI\RIEX\'+ cdsrNfs.FieldByName('NFSID').AsString +'.XML';
  ARoot.SaveToFile( XMLPath );
  MessageDlg('XML (Riex) Gerado com Sucesso! ', mtInformation,[MBOK],0 );

 finally
  FreeAndNil( cdsrNfs );
 end;
end;

end.
