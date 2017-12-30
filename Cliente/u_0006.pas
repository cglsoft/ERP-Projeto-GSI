unit u_0006;

interface

uses
  Windows, Forms, Messages, DBTables, Classes, ActnList, XPStyleActnCtrls,
  ActnMan, ImgList, Controls, DB, DBClient, wwdbdatetimepicker, StdCtrls,
  ExtCtrls, fcStatusBar, PnAjustaGrid, ActnCtrls, ToolWin, ComCtrls, Grids,
  DBGrids, Sysutils, cDateTime, Dialogs, Mask, wwdbedit, Wwdbspin;

type
  Tfrm0006 = class(TForm)
    cdsPosFin: TClientDataSet;
    cdsPosFinSUBGRUPO: TStringField;
    cdsPosFinPRODUTOID: TIntegerField;
    cdsPosFinDESCRICAO: TStringField;
    cdsPosFinEMPRESAID: TIntegerField;
    cdsPosFinSALDOANTERIOR: TFloatField;
    cdsPosFinE_DMC_ADC: TFloatField;
    cdsPosFinE_DEVOLUCAO: TFloatField;
    cdsPosFinE_DEFINITIVA: TFloatField;
    cdsPosFinS_DMC_ADC: TFloatField;
    cdsPosFinS_DEVOLUCAO: TFloatField;
    cdsPosFinS_DEFINITIVA: TFloatField;
    cdsPosFinQTDSALDO: TFloatField;
    cdsPosFinSALDOATUAL: TFloatField;
    dsPosFin: TDataSource;
    cdsPosFinDIF: TBooleanField;
    cdsPosFinVLRDIFSALDO: TFloatField;
    cdsPosFinSUBGRUPOID: TIntegerField;
    pgctrlSolic: TPageControl;
    TabSheet1: TTabSheet;
    dbgrdPosicao: TDBGrid;
    CoolBar1: TCoolBar;
    ActionToolBar1: TActionToolBar;
    tmbajtGeral: tPanel1;
    fcstbarStatus: TfcStatusBar;
    imglstPosicao: TImageList;
    actmngPosicao: TActionManager;
    actLiberacao: TAction;
    actExportar: TAction;
    actFechar: TAction;
    actImprAnalitica: TAction;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    rgrpTipo: TRadioGroup;
    rgrpOrigem: TRadioGroup;
    Label1: TLabel;
    cmbbxSubGrupo: TComboBox;
    ckbxTodosSubGrupos: TCheckBox;
    wwdtpcktPosicao: TwwDBDateTimePicker;
    Label2: TLabel;
    Splitter1: TSplitter;
    rgrpEmpresa: TRadioGroup;
    cdsPosFinE_AJUSTE: TFloatField;
    cdsPosFinS_AJUSTE: TFloatField;
    ckbxTodosSaldos: TCheckBox;
    cdsPosFinDESCRICAOPRODUTO: TStringField;
    wwdbspedtProduto: TwwDBSpinEdit;
    Label3: TLabel;
    cdsPosFinQTDSALDOANTERIOR: TFloatField;
    cdsPosFinQTD_ENTRADA: TFloatField;
    cdsPosFinQTD_SAIDA: TFloatField;
    cdsPosFinDATAOCORRENCIA: TDateField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure actExportarExecute(Sender: TObject);
    procedure actLiberacaoExecute(Sender: TObject);
    procedure dbgrdPosicaoTitleClick(Column: TColumn);
    procedure actFecharExecute(Sender: TObject);
    procedure actImprAnaliticaExecute(Sender: TObject);
  private
    { Private declarations }
    procedure AtualizaUltSaldoProduto( var cdsUltSaldo : TClientDataSet );
    procedure PosicaoFinanceiraDiaria;
  public
    { Public declarations }
    procedure NaoProcessarSaldoZero;
    function RetornoSubGrupoPesquisa : String;
    procedure NovaPosicaoCompleta;
  end;

  const Sel_Resumo_Movimento = '  SELECT' +
                               '    EF_KARDEX.EMPRESAID,';

  const Sel_Resumo_Movimento1 ='    EF_KARDEX.DATAOCORRENCIA,';

  const Sel_Resumo_Movimento2= '    EF_KARDEX.PRODUTOID,' +
                               '    EF_KDX_PRODUTO.DESCRICAOPORTUGUES,';

  const Sel_Resumo_Movimento3= '    EF_KDX_SUBGRUPO.SUBGRUPOID,' +
                               '    EF_KDX_SUBGRUPO.SIGLAGRUPO,' +
                               '    EF_KDX_SUBGRUPO.DESCRICAO,';

  const Sel_Resumo_Movimento31='    /* Entradas DMC e ADC */' +
                               '    SUM( ( CASE EF_KARDEX.TIPODOCUMENTO' +
                               '           WHEN ''DMC'' THEN ( DECODE( EF_KARDEX.TIPOOPERACAO, ''E'', EF_KARDEX.VLRCUSTOTOTAL, 0 ) )' +
                               '           WHEN ''ADC'' THEN ( DECODE( EF_KARDEX.TIPOOPERACAO, ''E'', EF_KARDEX.VLRCUSTOTOTAL, 0 ) )' +
                               '           ELSE 0' +
                               '           END ) ) AS E_DMC_ADC,' +
                               '' +
                               '    /* Entradas Definitiva */' +
                               '    SUM( ( CASE EF_NATUREZAOP.TIPOMOVIMENTO'+
                               '           WHEN ''E''  THEN ( DECODE( EF_NATUREZAOP.MOVIMENTOESTOQUE, ''N'','+
                               '                                                                   /* Não processar desmembramento de custo */'+
                               '                                                                  ( CASE EF_KARDEX.TIPODOCUMENTO'+
                               '                                                                    WHEN ''DMC'' THEN 0'+
                               '                                                                    WHEN ''ADC'' THEN 0'+
                               '                                                                    ELSE'+
                               '                                                                    DECODE( EF_NATUREZAOP.NATUREZAOPID, 1272, 0,'+
                               '                                                                                                        1273, 0,'+
                               '                                                                                         EF_KARDEX.VLRCUSTOTOTAL )'+
                               '                                                                    END ),'+
                               '                                                                   ''Q'', ' +
                               '                                                                   /* Não processar desmembramento de custo */'+
                               '                                                                  ( CASE EF_KARDEX.TIPODOCUMENTO'+
                               '                                                                    WHEN ''DMC'' THEN 0'+
                               '                                                                    WHEN ''ADC'' THEN 0'+
                               '                                                                    ELSE'+
                               '                                                                    DECODE( EF_NATUREZAOP.NATUREZAOPID, 1272, 0,'+
                               '                                                                                                        1273, 0,'+
                               '                                                                                         EF_KARDEX.VLRCUSTOTOTAL )'+
                               '                                                                    END )'+
                               '                                    , 0 ) )'+
                               '           ELSE 0'+
                               '           END ) ) AS E_Definitiva,'+
                               '' +
                               '    /* Entradas por Devolução */' +
                               '    SUM( ( CASE EF_NATUREZAOP.TIPOMOVIMENTO' +
                               '           WHEN ''E'' THEN ( DECODE( EF_NATUREZAOP.MOVIMENTOESTOQUE, ''V'', EF_KARDEX.VLRCUSTOTOTAL, 0 ) )' +
                               '           ELSE 0' +
                               '           END ) ) AS E_Devolucao,' +
                               '' +
                               '    /* Entradas Ajuste Inventário */' +
                               '    SUM( ( CASE EF_NATUREZAOP.TIPOMOVIMENTO' +
                               '           WHEN ''E''  THEN ( DECODE( EF_NATUREZAOP.NATUREZAOPID, 1273, EF_KARDEX.VLRCUSTOTOTAL, 0 ) )' +
                               '           ELSE 0' +
                               '           END ) ) AS E_AJUSTE,' +
                               '' +
                               '    /* Saidas DMC e ADC  */' +
                               '    SUM( ( CASE EF_KARDEX.TIPODOCUMENTO' +
                               '           WHEN ''DMC'' THEN ( DECODE( EF_KARDEX.TIPOOPERACAO, ''S'', EF_KARDEX.VLRCUSTOTOTAL, 0 ) )' +
                               '           WHEN ''ADC'' THEN ( DECODE( EF_KARDEX.TIPOOPERACAO, ''S'', EF_KARDEX.VLRCUSTOTOTAL, 0 ) )' +
                               '           ELSE 0' +
                               '           END ) ) AS S_DMC_ADC,' +
                               '' +
                               '    /* Saídas Definitiva */' +
                               '    SUM( ( CASE EF_NATUREZAOP.TIPOMOVIMENTO' +
                               '           WHEN ''S''  THEN ( DECODE( EF_NATUREZAOP.MOVIMENTOESTOQUE, ''N'',' +
                               '                                                                   /* Não processar desmembramento de custo */' +
                               '                                                                  ( CASE EF_KARDEX.TIPODOCUMENTO' +
                               '                                                                    WHEN ''DMC'' THEN 0' +
                               '                                                                    WHEN ''ADC'' THEN 0' +
                               '                                                                    ELSE' +
                               '                                                                    DECODE( EF_NATUREZAOP.NATUREZAOPID, 1272, 0,' +
                               '                                                                                                        1273, 0,' +
                               '                                                                                         EF_KARDEX.VLRCUSTOTOTAL )' +
                               '                                                                    END ),' +
                               '                                                                   ''Q'', ' +
                               '                                                                   /* Não processar desmembramento de custo */' +
                               '                                                                  ( CASE EF_KARDEX.TIPODOCUMENTO' +
                               '                                                                    WHEN ''DMC'' THEN 0' +
                               '                                                                    WHEN ''ADC'' THEN 0' +
                               '                                                                    ELSE' +
                               '                                                                    DECODE( EF_NATUREZAOP.NATUREZAOPID, 1272, 0,' +
                               '                                                                                                        1273, 0,' +
                               '                                                                                         EF_KARDEX.VLRCUSTOTOTAL )' +
                               '                                                                    END )' +
                               '                                    , 0 ) )' +
                               '           ELSE 0' +
                               '           END ) ) AS S_Definitiva,' +
                               '' +
                               '    /* Saídas por Devolução */' +
                               '    SUM( ( CASE EF_NATUREZAOP.TIPOMOVIMENTO' +
                               '           WHEN ''S'' THEN ( DECODE( EF_NATUREZAOP.MOVIMENTOESTOQUE, ''V'', EF_KARDEX.VLRCUSTOTOTAL, 0 ) )' +
                               '           ELSE 0' +
                               '           END ) ) AS S_Devolucao, ' +
                               '' +
                               '    /* Saídas Ajuste Inventário */' +
                               '    SUM( ( CASE EF_NATUREZAOP.TIPOMOVIMENTO' +
                               '           WHEN ''S''  THEN ( DECODE( EF_NATUREZAOP.NATUREZAOPID, 1272, EF_KARDEX.VLRCUSTOTOTAL, 0 ) )' +
                               '           ELSE 0' +
                               '           END ) ) AS S_AJUSTE,' +
                               '' +
                               '    /* Quantidades movimentadas */' +
                               '    SUM( NVL( EF_KARDEX.QUANTIDADESALDO, 0 ) ) AS QTDSALDO, ' +
                               '' +
                               '    /* Qtd Entrada */' +
                               '    SUM( ( CASE EF_KARDEX.TIPODOCUMENTO' +
                               '           WHEN ''DMC'' THEN 0' +
                               '           WHEN ''ADC'' THEN 0' +
                               '           ELSE DECODE( EF_KARDEX.TIPOOPERACAO, ''E'', EF_KARDEX.QUANTIDADE, 0 )' +
                               '           END ) ) AS QTD_ENTRADA,' +
                               '' +
                               '    /* Qtd Saida */' +
                               '    SUM( ( CASE EF_KARDEX.TIPODOCUMENTO' +
                               '           WHEN ''DMC'' THEN 0' +
                               '           WHEN ''ADC'' THEN 0' +
                               '           ELSE DECODE( EF_KARDEX.TIPOOPERACAO, ''S'', EF_KARDEX.QUANTIDADE, 0 )' +
                               '           END ) ) AS QTD_SAIDA' +
                               '' +
                               '    FROM' +
                               '    EF_KARDEX EF_KARDEX,' +
                               '    EF_NATUREZAOP EF_NATUREZAOP,' +
                               '    EF_PRODUTO EF_KDX_PRODUTO,' +
                               '    EF_SUBGRUPO EF_KDX_SUBGRUPO' +
                               '   WHERE' +
                               '    EF_NATUREZAOP.NATUREZAOPID(+) = EF_KARDEX.NATUREZAOPID' +
                               '    AND EF_KDX_PRODUTO.EMPRESAID = EF_KARDEX.EMPRESAID' +
                               '    AND EF_KDX_PRODUTO.PRODUTOID = EF_KARDEX.PRODUTOID' +
                               '    AND EF_KDX_SUBGRUPO.SUBGRUPOID(+) = EF_KDX_PRODUTO.SUBGRUPOID';

  const Sel_Resumo_Movimento4 ='    AND NVL( EF_NATUREZAOP.VENDAFATANTECIPADO, 0 ) = 0' +
                               '    AND ( EF_NATUREZAOP.MOVIMENTOESTOQUE <> ''E''  OR EF_NATUREZAOP.MOVIMENTOESTOQUE IS NULL )' +
                               '    AND ( EF_NATUREZAOP.MOVIMENTOESTOQUE <> ''D'' OR EF_NATUREZAOP.MOVIMENTOESTOQUE IS NULL )' +
                               '  GROUP BY' +
                               '    EF_KARDEX.EMPRESAID,';

  const Sel_Resumo_Movimento41='    EF_KARDEX.DATAOCORRENCIA';

  const Sel_Resumo_Movimento5 ='    EF_KARDEX.PRODUTOID,' +
                               '    EF_KDX_PRODUTO.DESCRICAOPORTUGUES,';

  const Sel_Resumo_Movimento6 ='    EF_KDX_SUBGRUPO.SUBGRUPOID, ' +
                               '    EF_KDX_SUBGRUPO.SIGLAGRUPO,' +
                               '    EF_KDX_SUBGRUPO.DESCRICAO';

  const Sel_Ult_MovProd =      'SELECT EF_KARDEX.EMPRESAID,' +
                               '       EF_KARDEX.KARDEXID,' +
                               '       EF_KARDEX.PRODUTOID,' +
                               '       EF_KARDEX.NUMDOCUMENTO,' +
                               '       EF_KARDEX.DATAOCORRENCIA,' +
                               '       EF_KARDEX.QUANTIDADESALDO,' +
                               '       EF_KARDEX.VLRCUSTOMEDIOTOTAL,' +
                               '       EF_PRODUTO.SUBGRUPOID,' +
                               '       EF_PRODUTO.DESCRICAOPORTUGUES,' +
                               '       EF_SUBGRUPO.SIGLAGRUPO,' +
                               '       EF_SUBGRUPO.DESCRICAO ' +
                               '  FROM EF_KARDEX, EF_PRODUTO, EF_SUBGRUPO' +
                               ' WHERE (EF_KARDEX.EMPRESAID, EF_KARDEX.PRODUTOID, EF_KARDEX.DATAOCORRENCIA,' +
                               '        EF_KARDEX.KARDEXID) IN' +
                               '       (SELECT EF_KARDEX.EMPRESAID,' +
                               '               EF_KARDEX.PRODUTOID,' +
                               '               MAX(EF_KARDEX.DATAOCORRENCIA),' +
                               '               MAX(EF_KARDEX.KARDEXID)' +
                               '          FROM EF_KARDEX, EF_PRODUTO' +
                               '         WHERE ';
const Sel_Ult_MovProd2 =       '               AND EF_KARDEX.EMPRESAID = EF_PRODUTO.EMPRESAID' +
                               '               AND EF_KARDEX.PRODUTOID = EF_PRODUTO.PRODUTOID' +
                               '         GROUP BY EF_KARDEX.EMPRESAID, EF_KARDEX.PRODUTOID)' +
                               '       AND EF_PRODUTO.EMPRESAID = EF_KARDEX.EMPRESAID' +
                               '       AND EF_PRODUTO.PRODUTOID = EF_KARDEX.PRODUTOID' +
                               '       AND EF_PRODUTO.SUBGRUPOID = EF_SUBGRUPO.SUBGRUPOID ';


const Sel_Ult_Kdx_Diario  =    'SELECT EF_KARDEX.EMPRESAID,';
const Sel_Ult_Kdx_Diario2 =    '       SUM( EF_KARDEX.QUANTIDADESALDO ) QUANTIDADESALDO,'+
                               '       SUM( EF_KARDEX.VLRCUSTOMEDIOTOTAL ) VLRCUSTOMEDIOTOTAL'+
                               '  FROM EF_KARDEX, EF_PRODUTO, EF_SUBGRUPO'+
                               ' WHERE (EF_KARDEX.EMPRESAID, EF_KARDEX.PRODUTOID, EF_KARDEX.DATAOCORRENCIA,'+
                               '        EF_KARDEX.KARDEXID) IN'+
                               '       (SELECT EF_KARDEX.EMPRESAID,'+
                               '               EF_KARDEX.PRODUTOID,'+
                               '               MAX(EF_KARDEX.DATAOCORRENCIA),'+
                               '               MAX(EF_KARDEX.KARDEXID)'+
                               '          FROM EF_KARDEX, EF_PRODUTO'+
                               '         WHERE ';
const Sel_Ult_Kdx_Diario3 =    '           AND EF_KARDEX.EMPRESAID = EF_PRODUTO.EMPRESAID'+
                               '           AND EF_KARDEX.PRODUTOID = EF_PRODUTO.PRODUTOID'+
                               '         GROUP BY EF_KARDEX.EMPRESAID, EF_KARDEX.PRODUTOID)'+
                               '   AND EF_PRODUTO.EMPRESAID = EF_KARDEX.EMPRESAID'+
                               '   AND EF_PRODUTO.PRODUTOID = EF_KARDEX.PRODUTOID'+
                               '   AND EF_PRODUTO.SUBGRUPOID = EF_SUBGRUPO.SUBGRUPOID'+
                               ' GROUP BY EF_KARDEX.EMPRESAID' +
                               ' ORDER BY 1,2 ';

var
  frm0006: Tfrm0006;

implementation

uses FuncoesCliente, u_Rel006, u_Rel006A, u_Exportar, Math;
{$R *.dfm}

procedure Tfrm0006.NaoProcessarSaldoZero;
begin
 cdsPosFin.First;
 while not cdsPosFin.Eof do
 begin
   if ( cdsPosFinSALDOANTERIOR.Value < 1 ) and
      ( cdsPosFinE_DMC_ADC.Value < 1 ) and
      ( cdsPosFinE_DEVOLUCAO.Value < 1 ) and
      ( cdsPosFinE_DEFINITIVA.Value < 1 ) and
      ( cdsPosFinE_AJUSTE.Value < 1 ) and
      ( cdsPosFinS_DMC_ADC.Value < 1 ) and
      ( cdsPosFinS_DEVOLUCAO.Value < 1 ) and
      ( cdsPosFinS_DEFINITIVA.Value < 1 ) and
      ( cdsPosFinS_AJUSTE.Value < 1 ) and
      ( cdsPosFinQTDSALDO.Value < 1 ) and
      ( cdsPosFinQTDSALDOANTERIOR.Value < 1 ) and
      ( cdsPosFinQTD_ENTRADA.Value < 1 ) and
      ( cdsPosFinQTD_SAIDA.Value < 1 ) and
      ( cdsPosFinSALDOATUAL.Value < 0.01 ) then
      begin
       cdsPosFin.Delete;
       Continue;
      end;

   cdsPosFin.Next;
  end;
end;

function Tfrm0006.RetornoSubGrupoPesquisa : String;
var cdsSub : TClientDataSet;
var iSQL : String;
begin
 iSQL := ' SELECT SUBGRUPOID, SIGLAGRUPO '+
         '   FROM '+
         '   EF_SUBGRUPO WHERE SIGLAGRUPO = ' + QuotedStr( cmbbxSubGrupo.Text );
 try
  ExecDynamicProvider( -1, iSQL, cdsSub );

  if cdsSub.RecordCount < 1 then
     Result := '1'
  else
     Result := cdsSub.FieldByName('SUBGRUPOID').AsString;

 finally
  FreeAndNil( cdsSub );
 end;
end;

procedure Tfrm0006.AtualizaUltSaldoProduto( var cdsUltSaldo : TClientDataSet );
var SaldoAnterior, QtdSaldoAnterior : Currency;

 procedure Analitica;
 begin
  // Apurar Saldo Analítico
  if cdsPosFin.FindKey([ cdsUltSaldo.FieldByName('EMPRESAID').Value,cdsUltSaldo.FieldByName('PRODUTOID').Value ]) then
     begin
      SaldoAnterior    := cdsUltSaldo.FieldByName('VLRCUSTOMEDIOTOTAL').AsCurrency;
      QtdSaldoAnterior := cdsUltSaldo.FieldByName('QUANTIDADESALDO').AsCurrency;

      cdsPosFin.Edit;
      cdsPosFinQTDSALDOANTERIOR.Value := cdsPosFinQTDSALDOANTERIOR.Value + QtdSaldoAnterior;
      cdsPosFinSALDOANTERIOR.Value    := cdsPosFinSALDOANTERIOR.Value + SaldoAnterior;
      cdsPosFinSALDOATUAL.Value       := ( SaldoAnterior +
                                         cdsPosFinE_DMC_ADC.Value +
                                         cdsPosFinE_DEVOLUCAO.Value +
                                         cdsPosFinE_DEFINITIVA.Value +
                                         cdsPosFinE_AJUSTE.Value -
                                         cdsPosFinS_DMC_ADC.Value -
                                         cdsPosFinS_DEVOLUCAO.Value -
                                         cdsPosFinS_DEFINITIVA.Value -
                                         cdsPosFinS_AJUSTE.Value );
      cdsPosFinQTDSALDO.Value        := ( QtdSaldoAnterior +
                                         cdsPosFinQTD_ENTRADA.Value -
                                         cdsPosFinQTD_SAIDA.Value );

      cdsPosFin.Post;
     end
  else
     begin
      cdsPosFin.Insert;
      cdsPosFinSUBGRUPOID.Value       := cdsUltSaldo.FieldByName('SUBGRUPOID').AsInteger;
      cdsPosFinEMPRESAID.Value        := cdsUltSaldo.FieldByName('EMPRESAID').AsInteger;
      cdsPosFinPRODUTOID.Value        := cdsUltSaldo.FieldByName('PRODUTOID').AsInteger;
      cdsPosFinDESCRICAOPRODUTO.Value := cdsUltSaldo.FieldByName('DESCRICAOPORTUGUES').AsString;
      cdsPosFinSUBGRUPO.Value         := cdsUltSaldo.FieldByName('SIGLAGRUPO').AsString;
      cdsPosFinDESCRICAO.Value        := cdsUltSaldo.FieldByName('DESCRICAO').AsString;
      cdsPosFinQTDSALDOANTERIOR.Value := cdsUltSaldo.FieldByName('QUANTIDADESALDO').AsCurrency;
      cdsPosFinSALDOANTERIOR.Value    := cdsUltSaldo.FieldByName('VLRCUSTOMEDIOTOTAL').AsCurrency;
      cdsPosFinSALDOATUAL.Value       := cdsUltSaldo.FieldByName('VLRCUSTOMEDIOTOTAL').AsCurrency;
      cdsPosFinQTDSALDO.Value         := cdsUltSaldo.FieldByName('QUANTIDADESALDO').AsCurrency;
      cdsPosFinE_DMC_ADC.Value        := 0;
      cdsPosFinE_DEVOLUCAO.Value      := 0;
      cdsPosFinE_DEFINITIVA.Value     := 0;
      cdsPosFinE_AJUSTE.Value         := 0;
      cdsPosFinS_DMC_ADC.Value        := 0;
      cdsPosFinS_DEVOLUCAO.Value      := 0;
      cdsPosFinS_DEFINITIVA.Value     := 0;
      cdsPosFinS_AJUSTE.Value         := 0;
      cdsPosFinQTD_ENTRADA.Value      := 0;
      cdsPosFinQTD_SAIDA.Value        := 0;
      cdsPosFin.Post;
     end;
 end;

 procedure Sintetica;
 begin
  if cdsPosFin.FindKey([ cdsUltSaldo.FieldByName('EMPRESAID').Value,cdsUltSaldo.FieldByName('SUBGRUPOID').Value ]) then
     begin
      SaldoAnterior    := cdsUltSaldo.FieldByName('VLRCUSTOMEDIOTOTAL').AsCurrency;
      QtdSaldoAnterior := cdsUltSaldo.FieldByName('QUANTIDADESALDO').AsCurrency;
      cdsPosFin.Edit;
      cdsPosFinQTDSALDOANTERIOR.Value := cdsPosFinQTDSALDOANTERIOR.Value + QtdSaldoAnterior;
      cdsPosFinSALDOANTERIOR.Value    := cdsPosFinSALDOANTERIOR.Value + SaldoAnterior;

      cdsPosFinSALDOATUAL.Value       := cdsPosFinSALDOANTERIOR.Value +
                                         cdsPosFinE_DMC_ADC.Value +
                                         cdsPosFinE_DEVOLUCAO.Value +
                                         cdsPosFinE_DEFINITIVA.Value +
                                         cdsPosFinE_AJUSTE.Value -
                                         cdsPosFinS_DMC_ADC.Value -
                                         cdsPosFinS_DEVOLUCAO.Value -
                                         cdsPosFinS_DEFINITIVA.Value -
                                         cdsPosFinS_AJUSTE.Value;

      cdsPosFinQTDSALDO.Value         := cdsPosFinQTDSALDOANTERIOR.Value +
                                         cdsPosFinQTD_ENTRADA.Value -
                                         cdsPosFinQTD_SAIDA.Value;
      cdsPosFin.Post;
     end
  else
     begin
      cdsPosFin.Insert;
      cdsPosFinEMPRESAID.Value        := cdsUltSaldo.FieldByName('EMPRESAID').AsInteger;
      cdsPosFinSUBGRUPOID.Value       := cdsUltSaldo.FieldByName('SUBGRUPOID').AsInteger;
      cdsPosFinSUBGRUPO.Value         := cdsUltSaldo.FieldByName('SIGLAGRUPO').AsString;
      cdsPosFinDESCRICAO.Value        := cdsUltSaldo.FieldByName('DESCRICAO').AsString;
      cdsPosFinQTDSALDOANTERIOR.Value := cdsUltSaldo.FieldByName('QUANTIDADESALDO').AsCurrency;
      cdsPosFinSALDOANTERIOR.Value    := cdsUltSaldo.FieldByName('VLRCUSTOMEDIOTOTAL').AsCurrency;

      cdsPosFinQTDSALDO.Value         := cdsUltSaldo.FieldByName('QUANTIDADESALDO').AsCurrency;
      cdsPosFinSALDOATUAL.Value       := cdsUltSaldo.FieldByName('VLRCUSTOMEDIOTOTAL').AsCurrency;
      cdsPosFinE_DMC_ADC.Value        := 0;
      cdsPosFinE_DEVOLUCAO.Value      := 0;
      cdsPosFinE_DEFINITIVA.Value     := 0;
      cdsPosFinE_AJUSTE.Value         := 0;
      cdsPosFinS_DMC_ADC.Value        := 0;
      cdsPosFinS_DEVOLUCAO.Value      := 0;
      cdsPosFinS_DEFINITIVA.Value     := 0;
      cdsPosFinS_AJUSTE.Value         := 0;
      cdsPosFinQTD_ENTRADA.Value      := 0;
      cdsPosFinQTD_SAIDA.Value        := 0;
      cdsPosFin.Post;
     end;
 end;

 procedure Diaria;
 begin
  if cdsPosFin.FindKey([ cdsUltSaldo.FieldByName('EMPRESAID').Value,cdsUltSaldo.FieldByName('DATA').Value ]) then
     begin
      SaldoAnterior    := cdsUltSaldo.FieldByName('VLRCUSTOMEDIOTOTAL').AsCurrency;
      QtdSaldoAnterior := cdsUltSaldo.FieldByName('QUANTIDADESALDO').AsCurrency;
      cdsPosFin.Edit;
      cdsPosFinQTDSALDOANTERIOR.Value := cdsPosFinQTDSALDOANTERIOR.Value + QtdSaldoAnterior;
      cdsPosFinSALDOANTERIOR.Value    := cdsPosFinSALDOANTERIOR.Value + SaldoAnterior;

      cdsPosFinSALDOATUAL.Value       := cdsPosFinSALDOANTERIOR.Value +
                                         cdsPosFinE_DMC_ADC.Value +
                                         cdsPosFinE_DEVOLUCAO.Value +
                                         cdsPosFinE_DEFINITIVA.Value +
                                         cdsPosFinE_AJUSTE.Value -
                                         cdsPosFinS_DMC_ADC.Value -
                                         cdsPosFinS_DEVOLUCAO.Value -
                                         cdsPosFinS_DEFINITIVA.Value -
                                         cdsPosFinS_AJUSTE.Value;

      cdsPosFinQTDSALDO.Value         := cdsPosFinQTDSALDOANTERIOR.Value +
                                         cdsPosFinQTD_ENTRADA.Value -
                                         cdsPosFinQTD_SAIDA.Value;
      cdsPosFin.Post;
     end
  else
     begin
      cdsPosFin.Insert;
      cdsPosFinEMPRESAID.Value        := cdsUltSaldo.FieldByName('EMPRESAID').AsInteger;
      cdsPosFinDATAOCORRENCIA.Value   := cdsUltSaldo.FieldByName('DATA').AsDateTime;
      cdsPosFinQTDSALDOANTERIOR.Value := cdsUltSaldo.FieldByName('QUANTIDADESALDO').AsCurrency;
      cdsPosFinSALDOANTERIOR.Value    := cdsUltSaldo.FieldByName('VLRCUSTOMEDIOTOTAL').AsCurrency;

      cdsPosFinQTDSALDO.Value         := cdsUltSaldo.FieldByName('QUANTIDADESALDO').AsCurrency;
      cdsPosFinSALDOATUAL.Value       := cdsUltSaldo.FieldByName('VLRCUSTOMEDIOTOTAL').AsCurrency;
      cdsPosFinE_DMC_ADC.Value        := 0;
      cdsPosFinE_DEVOLUCAO.Value      := 0;
      cdsPosFinE_DEFINITIVA.Value     := 0;
      cdsPosFinE_AJUSTE.Value         := 0;
      cdsPosFinS_DMC_ADC.Value        := 0;
      cdsPosFinS_DEVOLUCAO.Value      := 0;
      cdsPosFinS_DEFINITIVA.Value     := 0;
      cdsPosFinS_AJUSTE.Value         := 0;
      cdsPosFinQTD_ENTRADA.Value      := 0;
      cdsPosFinQTD_SAIDA.Value        := 0;
      cdsPosFin.Post;
     end;
 end;

begin
 cdsUltSaldo.First;
 while not cdsUltSaldo.Eof do
 begin
  case rgrpTipo.ItemIndex of
  0   : Analitica;
  1,2 : Sintetica;
  3   : Diaria;
  end;

  cdsUltSaldo.Next;
 end;
end;

procedure Tfrm0006.NovaPosicaoCompleta;
var cdsResumoMov, cdsUltSaldo : TClientDataSet;
    iSQLResumoMov, iSQLUltSaldo : String;

 procedure AtualPosFinanceira;
 begin
   cdsPosFin.Insert;
   cdsPosFinSUBGRUPOID.Value    := cdsResumoMov.FieldByName('SUBGRUPOID').AsInteger;
   cdsPosFinSUBGRUPO.Value      := cdsResumoMov.FieldByName('SIGLAGRUPO').AsString;
   cdsPosFinEMPRESAID.Value     := cdsResumoMov.FieldByName('EMPRESAID').AsInteger;

   if rgrpTipo.ItemIndex = 0 then
      begin
       cdsPosFinPRODUTOID.Value        := cdsResumoMov.FieldByName('PRODUTOID').AsInteger;
       cdsPosFinDESCRICAOPRODUTO.Value := cdsResumoMov.FieldByName('DESCRICAOPORTUGUES').AsString;
      end;

   cdsPosFinDESCRICAO.Value         := cdsResumoMov.FieldByName('DESCRICAO').AsString;
   cdsPosFinSALDOANTERIOR.Value     := 0;
   cdsPosFinQTDSALDOANTERIOR.Value  := 0;
   cdsPosFinE_DMC_ADC.Value         := cdsResumoMov.FieldByName('E_DMC_ADC').AsCurrency;
   cdsPosFinE_DEVOLUCAO.Value       := cdsResumoMov.FieldByName('E_Devolucao').AsCurrency;
   cdsPosFinE_DEFINITIVA.Value      := cdsResumoMov.FieldByName('E_Definitiva').AsCurrency;
   cdsPosFinE_AJUSTE.Value          := cdsResumoMov.FieldByName('E_AJUSTE').AsCurrency;
   cdsPosFinS_DMC_ADC.Value         := cdsResumoMov.FieldByName('S_DMC_ADC').AsCurrency;
   cdsPosFinS_DEVOLUCAO.Value       := cdsResumoMov.FieldByName('S_Devolucao').AsCurrency;
   cdsPosFinS_DEFINITIVA.Value      := cdsResumoMov.FieldByName('S_Definitiva').AsCurrency;
   cdsPosFinS_AJUSTE.Value          := cdsResumoMov.FieldByName('S_AJUSTE').AsCurrency;

   cdsPosFinQTD_ENTRADA.Value       := cdsResumoMov.FieldByName('QTD_ENTRADA').AsCurrency;
   cdsPosFinQTD_SAIDA.Value         := cdsResumoMov.FieldByName('QTD_SAIDA').AsCurrency;

   cdsPosFinQTDSALDO.Value          := cdsResumoMov.FieldByName('QTD_ENTRADA').AsCurrency -
                                       cdsResumoMov.FieldByName('QTD_SAIDA').AsCurrency;

   cdsPosFinSALDOATUAL.Value        := ( cdsPosFinSALDOANTERIOR.Value +
                                         cdsPosFinE_DMC_ADC.Value +
                                         cdsPosFinE_DEVOLUCAO.Value +
                                         cdsPosFinE_DEFINITIVA.Value +
                                         cdsPosFinE_AJUSTE.Value -
                                         cdsPosFinS_DMC_ADC.Value -
                                         cdsPosFinS_DEVOLUCAO.Value -
                                         cdsPosFinS_DEFINITIVA.Value -
                                         cdsPosFinS_AJUSTE.Value );


//   cdsPosFinSALDOATUAL.Value    := 0;
   cdsPosFin.Post;
  end;

begin
 cdsResumoMov := nil;

 try
  cdsPosFin.Close;
  cdsPosFin.CreateDataSet;
  cdsPosFin.EmptyDataSet;

  if rgrpTipo.ItemIndex = 0 then
     cdsPosFin.AddIndex('idx1','EMPRESAID;PRODUTOID',[ixCaseInsensitive],'','',0 )
  else
     cdsPosFin.AddIndex('idx1','EMPRESAID;SUBGRUPOID',[ixCaseInsensitive],'','',0 );

  cdsPosFin.IndexName := 'idx1';

  iSQLResumoMov := Sel_Resumo_Movimento;

  case rgrpTipo.ItemIndex of
  0 : iSQLResumoMov := iSQLResumoMov + Sel_Resumo_Movimento2;
  end;

  iSQLResumoMov := iSQLResumoMov + Sel_Resumo_Movimento3 + Sel_Resumo_Movimento31;

  iSQLResumoMov := iSQLResumoMov + ' AND EF_KARDEX.DATAOCORRENCIA >= TO_DATE(' + QuotedStr( DateToStr( FirstDayOfMonth( wwdtpcktPosicao.Date ) ) ) + ',' + QuotedStr('DD/MM/YYYY') +')' +
                                   ' AND EF_KARDEX.DATAOCORRENCIA <= TO_DATE(' + QuotedStr( DateToStr( wwdtpcktPosicao.Date ) ) + ',' + QuotedStr('DD/MM/YYYY') +')';

  if wwdbspedtProduto.Value > 0 then
     iSQLResumoMov := iSQLResumoMov + ' AND EF_KARDEX.PRODUTOID = ' + FloatToStr( wwdbspedtProduto.Value );

  if ( ckbxTodosSubGrupos.Checked = False ) and ( cmbbxSubGrupo.Text <> '' ) then
     iSQLResumoMov := iSQLResumoMov + ' AND EF_KDX_SUBGRUPO.SUBGRUPOID = ' + RetornoSubGrupoPesquisa;

  case rgrpEmpresa.ItemIndex of
  0 : iSQLResumoMov := iSQLResumoMov + 'AND EF_KARDEX.EMPRESAID = 1 ';
  1 : iSQLResumoMov := iSQLResumoMov + 'AND EF_KARDEX.EMPRESAID = 12';
  2 : iSQLResumoMov := iSQLResumoMov + 'AND EF_KARDEX.EMPRESAID = 15';
  3 : iSQLResumoMov := iSQLResumoMov + 'AND ( EF_KARDEX.EMPRESAID = 1 OR EF_KARDEX.EMPRESAID = 12 OR EF_KARDEX.EMPRESAID = 15 )';
  end;

  case rgrpOrigem.ItemIndex of
  1  : iSQLResumoMov := iSQLResumoMov + ' AND EF_KDX_PRODUTO.ORIGEM = ' + QuotedStr('N');
  2  : iSQLResumoMov := iSQLResumoMov + ' AND EF_KDX_PRODUTO.ORIGEM = ' + QuotedStr('I');
  3  : iSQLResumoMov := iSQLResumoMov + ' AND EF_KDX_PRODUTO.ORIGEM = ' + QuotedStr('B');
  end;

  iSQLResumoMov := iSQLResumoMov + Sel_Resumo_Movimento4;

  case rgrpTipo.ItemIndex of
  0 : iSQLResumoMov := iSQLResumoMov + Sel_Resumo_Movimento5;
  end;

  iSQLResumoMov := iSQLResumoMov + Sel_Resumo_Movimento6;

  ExecDynamicProvider( -1, iSQLResumoMov, cdsResumoMov );

  iSQLUltSaldo := Sel_Ult_MovProd +
                  ' DATAOCORRENCIA <= TO_DATE(' + QuotedStr( DateToStr( FirstDayOfMonth( wwdtpcktPosicao.Date ) - 1 ) ) + ',' + QuotedStr('DD/MM/YYYY') +')';

  case rgrpEmpresa.ItemIndex of
  0 : iSQLUltSaldo := iSQLUltSaldo + 'AND EF_KARDEX.EMPRESAID = 1 ';
  1 : iSQLUltSaldo := iSQLUltSaldo + 'AND EF_KARDEX.EMPRESAID = 12';
  2 : iSQLUltSaldo := iSQLUltSaldo + 'AND EF_KARDEX.EMPRESAID = 15';
  3 : iSQLUltSaldo := iSQLUltSaldo + 'AND ( EF_KARDEX.EMPRESAID = 1 OR EF_KARDEX.EMPRESAID = 12 OR EF_KARDEX.EMPRESAID = 15)';
  end;

  if wwdbspedtProduto.Value > 0 then
     iSQLUltSaldo := iSQLUltSaldo + ' AND EF_PRODUTO.PRODUTOID = ' +  FloatToStr( wwdbspedtProduto.Value );

  if ( ckbxTodosSubGrupos.Checked = False ) and ( cmbbxSubGrupo.Text <> '' ) then
     iSQLUltSaldo := iSQLUltSaldo + ' AND EF_PRODUTO.SUBGRUPOID = ' + RetornoSubGrupoPesquisa;

  case rgrpOrigem.ItemIndex of
  1  : iSQLUltSaldo := iSQLUltSaldo + ' AND EF_PRODUTO.ORIGEM = ' + QuotedStr('N');
  2  : iSQLUltSaldo := iSQLUltSaldo + ' AND EF_PRODUTO.ORIGEM = ' + QuotedStr('I');
  3  : iSQLUltSaldo := iSQLUltSaldo + ' AND EF_PRODUTO.ORIGEM = ' + QuotedStr('B');
  end;

  iSQLUltSaldo := iSQLUltSaldo + Sel_Ult_MovProd2;

  ExecDynamicProvider( -1, iSQLUltSaldo, cdsUltSaldo );

  cdsResumoMov.First;
  while not cdsResumoMov.Eof do
  begin
   AtualPosFinanceira;

   cdsResumoMov.Next;
  end;

  AtualizaUltSaldoProduto( cdsUltSaldo );

  cdsPosFin.DeleteIndex('idx1');
  cdsResumoMov.Close;
  cdsUltSaldo.Close;
 finally
  FreeAndNil( cdsResumoMov );
  FreeAndNil( cdsUltSaldo );
 end;
end;

procedure Tfrm0006.PosicaoFinanceiraDiaria;
var cdsResumoMov, cdsUltSaldo : TClientDataSet;
    iSQLResumoMov, iSQLUltSaldo : String;
    DtInicial : TDateTime;
    i : Integer;

 procedure AtualPosFinanceira;
 begin
   cdsPosFin.Insert;

   cdsPosFinEMPRESAID.Value         := cdsResumoMov.FieldByName('EMPRESAID').AsInteger;
   cdsPosFinDATAOCORRENCIA.Value    := cdsResumoMov.FieldByName('DATAOCORRENCIA').AsDateTime;

   cdsPosFinSALDOANTERIOR.Value     := 0;
   cdsPosFinQTDSALDOANTERIOR.Value  := 0;
   cdsPosFinE_DMC_ADC.Value         := cdsResumoMov.FieldByName('E_DMC_ADC').AsCurrency;
   cdsPosFinE_DEVOLUCAO.Value       := cdsResumoMov.FieldByName('E_Devolucao').AsCurrency;
   cdsPosFinE_DEFINITIVA.Value      := cdsResumoMov.FieldByName('E_Definitiva').AsCurrency;
   cdsPosFinE_AJUSTE.Value          := cdsResumoMov.FieldByName('E_AJUSTE').AsCurrency;
   cdsPosFinS_DMC_ADC.Value         := cdsResumoMov.FieldByName('S_DMC_ADC').AsCurrency;
   cdsPosFinS_DEVOLUCAO.Value       := cdsResumoMov.FieldByName('S_Devolucao').AsCurrency;
   cdsPosFinS_DEFINITIVA.Value      := cdsResumoMov.FieldByName('S_Definitiva').AsCurrency;
   cdsPosFinS_AJUSTE.Value          := cdsResumoMov.FieldByName('S_AJUSTE').AsCurrency;

   cdsPosFinQTD_ENTRADA.Value       := cdsResumoMov.FieldByName('QTD_ENTRADA').AsCurrency;
   cdsPosFinQTD_SAIDA.Value         := cdsResumoMov.FieldByName('QTD_SAIDA').AsCurrency;

   cdsPosFinQTDSALDO.Value          := cdsResumoMov.FieldByName('QTD_ENTRADA').AsCurrency -
                                       cdsResumoMov.FieldByName('QTD_SAIDA').AsCurrency;

   cdsPosFinSALDOATUAL.Value        := ( cdsPosFinSALDOANTERIOR.Value +
                                         cdsPosFinE_DMC_ADC.Value +
                                         cdsPosFinE_DEVOLUCAO.Value +
                                         cdsPosFinE_DEFINITIVA.Value +
                                         cdsPosFinE_AJUSTE.Value -
                                         cdsPosFinS_DMC_ADC.Value -
                                         cdsPosFinS_DEVOLUCAO.Value -
                                         cdsPosFinS_DEFINITIVA.Value -
                                         cdsPosFinS_AJUSTE.Value );

//   cdsPosFinSALDOATUAL.Value    := 0;
   cdsPosFin.Post;
  end;

begin
 cdsResumoMov := nil;

 try
  cdsPosFin.Close;
  cdsPosFin.CreateDataSet;
  cdsPosFin.EmptyDataSet;

  cdsPosFin.AddIndex('idx1','EMPRESAID;DATAOCORRENCIA',[ixCaseInsensitive],'','',0 );

  cdsPosFin.IndexName := 'idx1';

  iSQLResumoMov := Sel_Resumo_Movimento + Sel_Resumo_Movimento1;

  iSQLResumoMov := iSQLResumoMov + Sel_Resumo_Movimento31;

  iSQLResumoMov := iSQLResumoMov + ' AND EF_KARDEX.DATAOCORRENCIA >= TO_DATE(' + QuotedStr( DateToStr( FirstDayOfMonth( wwdtpcktPosicao.Date ) ) ) + ',' + QuotedStr('DD/MM/YYYY') +')' +
                                   ' AND EF_KARDEX.DATAOCORRENCIA <= TO_DATE(' + QuotedStr( DateToStr( wwdtpcktPosicao.Date ) ) + ',' + QuotedStr('DD/MM/YYYY') +')';

  if wwdbspedtProduto.Value > 0 then
     iSQLResumoMov := iSQLResumoMov + ' AND EF_KARDEX.PRODUTOID = ' + FloatToStr( wwdbspedtProduto.Value );

  if ( ckbxTodosSubGrupos.Checked = False ) and ( cmbbxSubGrupo.Text <> '' ) then
     iSQLResumoMov := iSQLResumoMov + ' AND EF_KDX_SUBGRUPO.SUBGRUPOID = ' + RetornoSubGrupoPesquisa;

  case rgrpEmpresa.ItemIndex of
  0 : iSQLResumoMov := iSQLResumoMov + 'AND EF_KARDEX.EMPRESAID = 1 ';
  1 : iSQLResumoMov := iSQLResumoMov + 'AND EF_KARDEX.EMPRESAID = 12';
  2 : iSQLResumoMov := iSQLResumoMov + 'AND EF_KARDEX.EMPRESAID = 15';
  3 : iSQLResumoMov := iSQLResumoMov + 'AND ( EF_KARDEX.EMPRESAID = 1 OR EF_KARDEX.EMPRESAID = 12 OR EF_KARDEX.EMPRESAID = 15)';
  end;

  iSQLResumoMov := iSQLResumoMov + Sel_Resumo_Movimento4 + Sel_Resumo_Movimento41;

  ExecDynamicProvider( -1, iSQLResumoMov, cdsResumoMov );

  cdsResumoMov.First;
  while not cdsResumoMov.Eof do
  begin
   AtualPosFinanceira;

   cdsResumoMov.Next;
  end;

  // Processar todos os dias do Mês
  DtInicial := FirstDayOfMonth( wwdtpcktPosicao.Date );

  for i := 1 to  Day( LastDayOfMonth( wwdtpcktPosicao.Date ) ) do
  begin
   iSQLUltSaldo := Sel_Ult_Kdx_Diario +
                   'TO_DATE(' + QuotedStr( DateToStr( DtInicial ) ) + ',' + QuotedStr('DD/MM/YYYY') +') DATA,' +
                   Sel_Ult_Kdx_Diario2 +
                   ' DATAOCORRENCIA <= TO_DATE(' + QuotedStr( DateToStr( DtInicial - 1 ) ) + ',' + QuotedStr('DD/MM/YYYY') +')';

   case rgrpEmpresa.ItemIndex of
   0 : iSQLUltSaldo := iSQLUltSaldo + 'AND EF_KARDEX.EMPRESAID = 1 ';
   1 : iSQLUltSaldo := iSQLUltSaldo + 'AND EF_KARDEX.EMPRESAID = 12';
   2 : iSQLUltSaldo := iSQLUltSaldo + 'AND EF_KARDEX.EMPRESAID = 15';
   3 : iSQLUltSaldo := iSQLUltSaldo + 'AND ( EF_KARDEX.EMPRESAID = 1 OR EF_KARDEX.EMPRESAID = 12 OR EF_KARDEX.EMPRESAID = 15 )';
   end;

   if wwdbspedtProduto.Value > 0 then
      iSQLUltSaldo := iSQLUltSaldo + ' AND EF_PRODUTO.PRODUTOID = ' + FloatToStr( wwdbspedtProduto.Value );

   case rgrpOrigem.ItemIndex of
   1  : iSQLUltSaldo := iSQLUltSaldo + ' AND EF_PRODUTO.ORIGEM = ' + QuotedStr('N');
   2  : iSQLUltSaldo := iSQLUltSaldo + ' AND EF_PRODUTO.ORIGEM = ' + QuotedStr('I');
   3  : iSQLUltSaldo := iSQLUltSaldo + ' AND EF_PRODUTO.ORIGEM = ' + QuotedStr('B');
   end;

   if ( ckbxTodosSubGrupos.Checked = False ) and ( cmbbxSubGrupo.Text <> '' ) then
      iSQLUltSaldo := iSQLUltSaldo + ' AND EF_PRODUTO.SUBGRUPOID = ' + RetornoSubGrupoPesquisa;

   iSQLUltSaldo := iSQLUltSaldo + Sel_Ult_Kdx_Diario3;

   ExecDynamicProvider( -1, iSQLUltSaldo, cdsUltSaldo );

   AtualizaUltSaldoProduto( cdsUltSaldo );

   DtInicial  :=  DtInicial + 1;
  end;

  cdsPosFin.DeleteIndex('idx1');
  cdsResumoMov.Close;
  cdsUltSaldo.Close;
 finally
  FreeAndNil( cdsResumoMov );
  FreeAndNil( cdsUltSaldo );
 end;
end;

procedure Tfrm0006.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action  := caFree;
 frm0006 := nil;
end;

procedure Tfrm0006.FormCreate(Sender: TObject);
var iSQL : String;
begin
 iSQL := ' SELECT'+
         '   EF_SUBGRUPO.SIGLAGRUPO'+
         '   FROM '+
         '   EF_SUBGRUPO';
 AdicionarCamposCombo( cmbbxSubGrupo,iSQL,'SIGLAGRUPO' );
 wwdtpcktPosicao.Date := pCnnMain.AppServer.iServerdate;
end;

procedure Tfrm0006.actExportarExecute(Sender: TObject);
begin
 if not cdsPosFin.IsEmpty then
    begin
     frmExportar := TfrmExportar.Create(nil);
     frmExportar.DataSource := dsPosFin;
     frmExportar.Show;
    end
 else
    MessageDlg('É necessário Gerar o Relatório primeiro!',mtWarning, [mbok],0 );

end;

procedure Tfrm0006.actLiberacaoExecute(Sender: TObject);

 procedure PosicaoFinanceiraMensal;
 begin
  NovaPosicaoCompleta;
  if rgrpTipo.ItemIndex = 0 then
     if not ckbxTodosSaldos.Checked then
        NaoProcessarSaldoZero;
 end;

begin
 Screen.Cursor := crHourGlass;
 cdsPosFin.DisableControls;
 try

  case rgrpTipo.ItemIndex of
  0,1,2 : PosicaoFinanceiraMensal;
  3     : PosicaoFinanceiraDiaria;
  end;

 finally
  Screen.Cursor := crDefault;
  cdsPosFin.EnableControls;
 end;
end;

procedure Tfrm0006.dbgrdPosicaoTitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column, dsPosFin, dbgrdPosicao);
end;

procedure Tfrm0006.actFecharExecute(Sender: TObject);
begin
 Close;
end;

procedure Tfrm0006.actImprAnaliticaExecute(Sender: TObject);
begin
 case rgrpTipo.ItemIndex of
 1,3: begin
      try
       Application.CreateForm( TfrmRel006, frmRel006 );

       if rgrpTipo.ItemIndex = 3 then
          begin
           cdsPosFin.AddIndex('idx1','EMPRESAID;DATAOCORRENCIA',[ixCaseInsensitive],'','',0 );
           cdsPosFin.IndexName := 'idx1';

           frmRel006.qrdbtxtDado1.DataField       := 'EMPRESAID';
           frmRel006.qrdbtxtDado2.DataField       := 'DATAOCORRENCIA';
           frmRel006.qrdbtxtDado1.Left            := 19;
           frmRel006.qrdbtxtDado2.Left            := 75;

           frmRel006.qrlblTit1.Caption            := 'Empresa ID';
           frmRel006.qrlblTit2.Caption            := 'Dt.Ocorrencia';

           frmRel006.qrexprTotQtdAnterior.Enabled := False;
           frmRel006.qrexprTotSaldoAnt.Enabled    := False;
           frmRel006.qrexprTotSaldoAtual.Enabled  := False;
           frmRel006.qrexprTotSaldo.Enabled       := False;
          end;

       frmRel006.QuickRep1.PreviewModal;
      finally
       if rgrpTipo.ItemIndex = 3 then
          cdsPosFin.DeleteIndex('idx1');

       FreeAndNil( frmRel006.QuickRep1 );
       FreeAndNil( frmRel006 );
      end;
     end
 else
     begin
      try
       Application.CreateForm( TfrmRel006A, frmRel006A );
       frmRel006A.QuickRep1.PreviewModal;
      finally
       FreeAndNil( frmRel006A.QuickRep1 );
       FreeAndNil( frmRel006A );
      end;
     end;
 end;
end;

end.
