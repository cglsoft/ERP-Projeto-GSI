unit u_PrecoTransferencia;

interface

uses
  Windows, Messages, Forms, SysUtils, ImgList, Controls, Classes, ActnList,
  XPStyleActnCtrls, ActnMan, StdCtrls, Mask, DBCtrls, ExtCtrls, cDateTime,
  PnAjustaGrid, DB, DBClient, tmbToolEdicaoLista, Grids, DBGrids, Dialogs,
  wwdbdatetimepicker, ComCtrls, fcStatusBar, ActnCtrls, ToolWin, Buttons,Variants;


type
  TfrmPrecoTransferencia = class(TForm)
    CoolBar1: TCoolBar;
    ActionToolBar1: TActionToolBar;
    actmngPadrao: TActionManager;
    actNovoKDX: TAction;
    actAtualizarCustos: TAction;
    actPrecoTransf: TAction;
    actExcel: TAction;
    actFechar: TAction;
    imglstPadrao: TImageList;
    fcstbarStatus: TfcStatusBar;
    pgctrlPrecoTransf: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    wwdtpcktDtIni: TwwDBDateTimePicker;
    wwdtpcktDtFim: TwwDBDateTimePicker;
    Label7: TLabel;
    Label9: TLabel;
    actReprocessarKdx: TAction;
    mmLog: TMemo;
    Label10: TLabel;
    Splitter1: TSplitter;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Shape1: TShape;
    Label5: TLabel;
    Label8: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    DBEdit6: TDBEdit;
    mktProduto: TMaskEdit;
    cmbEmpresa: TComboBox;
    DBEdit10: TDBEdit;
    tmbEdtLstKardex: TtmbEdicaoLista;
    TabSheet4: TTabSheet;
    GroupBox2: TGroupBox;
    wwdtpcktDtIni2: TwwDBDateTimePicker;
    wwdtpcktDtFim2: TwwDBDateTimePicker;
    Label11: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    rgrpEmpresa: TRadioGroup;
    cdsDIPJ: TClientDataSet;
    dsDIPJ: TDataSource;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    dsRelDIPJ: TDataSource;
    rgpComparacao: TRadioGroup;
    TabSheet3: TTabSheet;
    DBGrid2: TDBGrid;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    cdsRelDIPJTmp: TClientDataSet;
    cdsRelDIPJTmpDESCRICAOPORTUGUES: TStringField;
    cdsRelDIPJTmpNCMID: TStringField;
    cdsRelDIPJTmpFORNECEDORID: TBCDField;
    cdsRelDIPJTmpNOMEFORNECEDOR: TStringField;
    cdsRelDIPJTmpUNIDADEID: TStringField;
    cdsRelDIPJTmpQUANTIDADE: TFMTBCDField;
    cdsRelDIPJTmpPERCENTUAL: TFMTBCDField;
    cdsRelDIPJTmpVLRTOTALFOB: TFMTBCDField;
    cdsRelDIPJTmpVLRACUMULADO: TFMTBCDField;
    cdsRelDIPJTmpVLRAJUSTE: TFMTBCDField;
    cdsRelDIPJTmpVLRPRECOTRANSF: TFMTBCDField;
    cdsRelDIPJTmpVLRPRECOPRATICADO: TFMTBCDField;
    cdsRelDIPJTmpVLRUNITPRATICADO: TFMTBCDField;
    cdsRelDIPJTmpVLRUNITPRECOTRANSF: TFMTBCDField;
    cdsRelDIPJ: TClientDataSet;
    cdsRelDIPJINDEXID: TIntegerField;
    cdsRelDIPJFORNECEDORID: TIntegerField;
    cdsRelDIPJNOMEFORNECEDOR: TStringField;
    cdsRelDIPJUNIDADEID: TStringField;
    cdsRelDIPJQUANTIDADE: TIntegerField;
    cdsRelDIPJPERCENTUAL: TCurrencyField;
    cdsRelDIPJVLRTOTALFOB: TCurrencyField;
    cdsRelDIPJVLRACUMULADO: TCurrencyField;
    cdsRelDIPJVLRAJUSTE: TCurrencyField;
    cdsRelDIPJVLRPRECOTRANSF: TCurrencyField;
    cdsRelDIPJVLRPRECOPRATICADO: TCurrencyField;
    cdsRelDIPJVLRUNITPRATICADO: TCurrencyField;
    cdsRelDIPJVLRUNITPRECOTRANSF: TCurrencyField;
    cdsRelDIPJDESCRICAOPORTUGUES: TStringField;
    cdsRelDIPJNCMID: TStringField;
    Action1: TAction;
    procedure actNovoKDXExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mktProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actFecharExecute(Sender: TObject);
    procedure actReprocessarKdxExecute(Sender: TObject);
    procedure actAtualizarCustosExecute(Sender: TObject);
    procedure pgctrlPrecoTransfChange(Sender: TObject);
    procedure actPrecoTransfExecute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure cdsRelDIPJBACKNewRecord(DataSet: TDataSet);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure cdsdiNewRecord(DataSet: TDataSet);
    procedure cdsRelDIPJNewRecord(DataSet: TDataSet);
    procedure cdsRelDIPJTmpNewRecord(DataSet: TDataSet);
    procedure Action1Execute(Sender: TObject);
  private
    { Private declarations }
    procedure AtualProdSimilar;
    procedure Exportar( cdsExport : TClientDataSet; dsExport : TDataSource );
    procedure CalcAcumulado( cds : TClientDataSet; NomeValor,NomePorc : String );
    procedure CalcAcumuladoSaidas( var cds : TClientDataSet; VlrTotalFOB : Currency  );

    procedure FormataCampos( var cds : TClientDataSet );
    function RetornarEmpresa : String;
  public
    { Public declarations }
  end;

  const SelectKardexTransf_Insert = 'INSERT INTO EF_KDXTRANSF' +
                                    '  (EMPRESAID,' +
                                    '   KARDEXID,' +
                                    '   DATAOCORRENCIA,' +
                                    '   NUMDOCUMENTO,' +
                                    '   TIPODOCUMENTO,' +
                                    '   TIPOESTOQUE,' +
                                    '   OSID,' +
                                    '   DIID,' +
                                    '   NATUREZAOPID,' +
                                    '   TIPOOPERACAO,' +
                                    '   PRODUTOID,' +
                                    '   QUANTIDADE,' +
                                    '   VLRCUSTOUNITARIO,' +
                                    '   VLRCUSTOTOTAL,' +
                                    '   QUANTIDADESALDO,' +
                                    '   VLRCUSTOMEDIO,' +
                                    '   VLRCUSTOMEDIOTOTAL,' +
                                    '   VLRCUSTOMEDIOANTERIOR,' +
                                    '   ESTOQUENOVO,' +
                                    '   ESTOQUEREVISADO,' +
                                    '   ESTOQUEFISICO,' +
                                    '   ESTOQUEPEDENTRADA,' +
                                    '   ESTOQUEPEDSAIDA,' +
                                    '   ESTOQUEEMTERCEIRO,' +
                                    '   ESTOQUEDETERCEIRO,' +
                                    '   ESTOQUEMINIMO,' +
                                    '   ESTOQUEEMPENHO,' +
                                    '   ESTOQUEVALE,' +
                                    '   ESTOQUEESTORNO,' +
                                    '   ESTOQUEQUARENTENA,' +
                                    '   ESTOQUETOTAL,' +
                                    '   USUARIO)' +
                                    '  (SELECT (CASE' +
                                    '            WHEN ( EF_KARDEX.EMPRESAID IN (12,15) AND EF_PRODUTO.EMPRESASIMILARID IS NOT NULL ) THEN' +
                                    '             EF_PRODUTO.EMPRESASIMILARID' +
                                    '            ELSE' +
                                    '             EF_PRODUTO.EMPRESAID' +
                                    '          END) AS EMP_SIMILARID,' +
                                    '          EF_KARDEX.KARDEXID,' +
                                    '          EF_KARDEX.DATAOCORRENCIA,' +
                                    '          EF_KARDEX.NUMDOCUMENTO,' +
                                    '          EF_KARDEX.TIPODOCUMENTO,' +
                                    '          EF_KARDEX.TIPOESTOQUE,' +
                                    '          EF_KARDEX.OSID,' +
                                    '          EF_KARDEX.DIID,' +
                                    '          EF_KARDEX.NATUREZAOPID,' +
                                    '          EF_KARDEX.TIPOOPERACAO,' +
                                    '          (CASE' +
                                    '            WHEN ( EF_KARDEX.EMPRESAID IN (12,15) AND EF_PRODUTO.PRODUTOSIMILARID IS NOT NULL ) THEN' +
                                    '             EF_PRODUTO.PRODUTOSIMILARID' +
                                    '            ELSE' +
                                    '             EF_PRODUTO.PRODUTOID' +
                                    '          END) AS PROD_SIMILARID,' +
                                    '          EF_KARDEX.QUANTIDADE,' +
                                    '          EF_KARDEX.VLRCUSTOUNITARIO,' +
                                    '          EF_KARDEX.VLRCUSTOTOTAL,' +
                                    '          EF_KARDEX.QUANTIDADESALDO,' +
                                    '          EF_KARDEX.VLRCUSTOMEDIO,' +
                                    '          EF_KARDEX.VLRCUSTOMEDIOTOTAL,' +
                                    '          EF_KARDEX.VLRCUSTOMEDIOANTERIOR,' +
                                    '          EF_KARDEX.ESTOQUENOVO,' +
                                    '          EF_KARDEX.ESTOQUEREVISADO,' +
                                    '          EF_KARDEX.ESTOQUEFISICO,' +
                                    '          EF_KARDEX.ESTOQUEPEDENTRADA,' +
                                    '          EF_KARDEX.ESTOQUEPEDSAIDA,' +
                                    '          EF_KARDEX.ESTOQUEEMTERCEIRO,' +
                                    '          EF_KARDEX.ESTOQUEDETERCEIRO,' +
                                    '          EF_KARDEX.ESTOQUEMINIMO,' +
                                    '          EF_KARDEX.ESTOQUEEMPENHO,' +
                                    '          EF_KARDEX.ESTOQUEVALE,' +
                                    '          EF_KARDEX.ESTOQUEESTORNO,' +
                                    '          EF_KARDEX.ESTOQUEQUARENTENA,' +
                                    '          EF_KARDEX.ESTOQUETOTAL,' +
                                    '          EF_KARDEX.USUARIO' +
                                    '     FROM EF_KARDEX, EF_PRODUTO EF_PRODUTO, EF_NATUREZAOP EF_NATUREZAOP' +
                                    '    WHERE EF_KARDEX.EMPRESAID IN (1,12,15) AND' +
                                    '          EF_KARDEX.PRODUTOID IS NOT NULL AND' +
                                    '          EF_KARDEX.DATAOCORRENCIA >= TO_DATE( ''01/01/1997'', ''dd/mm/yyyy'' ) AND ' +
                                    '          EF_PRODUTO.EMPRESAID(+) = EF_KARDEX.EMPRESAID AND' +
                                    '          EF_PRODUTO.PRODUTOID(+) = EF_KARDEX.PRODUTOID AND' +
                                    '          EF_KARDEX.NATUREZAOPID = EF_NATUREZAOP.NATUREZAOPID(+) AND' +
                                    '          (NVL(EF_NATUREZAOP.ENTRADAPRECOTRANSF, 0) = 1 OR' +
                                    '          NVL(EF_NATUREZAOP.VENDADEFINITIVA, 0) = 1 OR  ' +
                                    '          NVL(EF_NATUREZAOP.OUTRASSAIDA, 0) = 1 ) AND ' +
                                    '          EF_PRODUTO.ORIGEM = ''I'') ';

 // Preco de Transferência
 const Preco_Transf =        'SELECT NFS_MERCADORIAS.NFSID,'+
                             '       NFS_MERCADORIAS.DATAEMISSAOID,'+
                             '       NFS_MERCADORIAS.OSID,'+
                             '       NFS_MERCADORIAS.ENTIDADEID,'+
                             '       NFS_MERCADORIAS.NOME,'+
                             '       NFS_MERCADORIAS.CIDADE,'+
                             '       NFS_MERCADORIAS.SIGLAUFID,'+
                             '       NFS_MERCADORIAS.NATUREZAOPID,'+
                             '       NFS_MERCADORIAS.CFOP,'+
                             '       NFS_MERCADORIAS.DESCRICAOOPERACAONOTA,'+
                             '       NFS_MERCADORIAS.EMP_SIMILARID,'+
                             '       NFS_MERCADORIAS.PROD_SIMILARID,'+
                             '       NFS_MERCADORIAS.DESCRICAOPRODUTO,'+
                             '       NFS_MERCADORIAS.QUANTIDADE,'+
                             '       NFS_MERCADORIAS.VLRPRECOUNITARIO,'+
                             '       NFS_MERCADORIAS.VLRPRECOTOTAL,'+
                             '       NFS_MERCADORIAS.VLRPIS,'+
                             '       NFS_MERCADORIAS.VLRCOFINS,'+
                             '       NFS_MERCADORIAS.ALIQUOTAICMS,'+
                             '       NFS_MERCADORIAS.VLRICMS,'+
                             '       NFS_MERCADORIAS.PARTNUMBERID,'+
                             '       NFS_MERCADORIAS.NCMID,'+
                             '       NFS_MERCADORIAS.DESCRICAONCM,'+
                             '       PROD_MEDIA_VENDA.QUANTIDADE QTD_MOV_PERIODO,'+
                             '       PROD_MEDIA_VENDA.VLRUNITARIO VLR_MOV_UNITARIA,'+
                             '       PROD_MEDIA_VENDA.VLRTOTAL VLR_MOV_TOTAL,'+
                             '       ROUND( PROD_MEDIA_VENDA.VLRTOTAL/PROD_MEDIA_VENDA.QUANTIDADE,2 )  VLR_MEDIA_TOTAL,'+
                             '       PROD_MEDIA_VENDA.VLRMEDIAVENDA VLRMEDIATOTALVENDAAPURADA,'+
                             '       EF_KDXTRANSF.VLRCUSTOUNITARIO,'+
                             '       /* Preco Praticado */'+
                             '       (EFKDX.VLRCUSTOMEDIO * NFS_MERCADORIAS.QUANTIDADE) VLRCUSTOTOTAL, '+
                             '       /* Valor do Preço de transferência */'+
                             '       ROUND( ( PROD_MEDIA_VENDA.VLRMEDIAVENDA / PROD_MEDIA_VENDA.QUANTIDADE )'+
                             '         * NFS_MERCADORIAS.QUANTIDADE, 2 ) VLRPRECOTRANSF,'+
                             '       /* Valor apurado do ajuste */'+
                             '       (CASE'+
                             '         WHEN ROUND((PROD_MEDIA_VENDA.VLRMEDIAVENDA / PROD_MEDIA_VENDA.QUANTIDADE) *'+
                             '             NFS_MERCADORIAS.QUANTIDADE,'+
                             '             2) < (EFKDX.VLRCUSTOMEDIO * NFS_MERCADORIAS.QUANTIDADE) THEN'+
                             '          ( ROUND((PROD_MEDIA_VENDA.VLRMEDIAVENDA / PROD_MEDIA_VENDA.QUANTIDADE) *'+
                             '             NFS_MERCADORIAS.QUANTIDADE,'+
                             '             2)) - (EFKDX.VLRCUSTOMEDIO * NFS_MERCADORIAS.QUANTIDADE)'+
                             '         ELSE'+
                             '          0'+
                             '       END) VLR_AJUSTE';

 const Preco_Transf_2 =      '  FROM /* Todas as vendas de mercadorias no período ( com o cálculo do novo para de empresa / produto */'+
                             '       (SELECT EF_NFSITEM.EMPRESAID,'+
                             '               EF_NFSITEM.NFSID,'+
                             '               EF_NFSITEM.DATAEMISSAOID,'+
                             '               EF_NFS.OSID,'+
                             '               EF_NFS.ENTIDADEID,'+
                             '               EF_NFS.NOME,'+
                             '               EF_NFS.CIDADE,'+
                             '               EF_NFS.SIGLAUFID,'+
                             '               EF_NFS.NATUREZAOPID,'+
                             '               EF_NATUREZAOP.CFOP,'+
                             '               EF_NATUREZAOP.DESCRICAOOPERACAONOTA,'+
                             '               EF_PRODUTO.NCMID,'+
                             '               EF_PRODUTO.DESCRICAONCM,'+
                             '               EF_PRODUTO.PARTNUMBERID,'+
                             '               (CASE'+
                             '                 WHEN (EF_NFSITEM.EMPRESAID IN (12,15) AND'+
                             '                      EF_PRODUTO.EMPRESASIMILARID IS NOT NULL) THEN'+
                             '                  EF_PRODUTO.EMPRESASIMILARID'+
                             '                 ELSE'+
                             '                  EF_PRODUTO.EMPRESAID'+
                             '               END) AS EMP_SIMILARID,'+
                             '               (CASE'+
                             '                 WHEN (EF_NFSITEM.EMPRESAID IN (12,15) AND'+
                             '                      EF_PRODUTO.PRODUTOSIMILARID IS NOT NULL) THEN'+
                             '                  EF_PRODUTO.PRODUTOSIMILARID'+
                             '                 ELSE'+
                             '                  EF_PRODUTO.PRODUTOID'+
                             '               END) AS PROD_SIMILARID,'+
                             '               EF_NFSITEM.QUANTIDADE,'+
                             '               EF_NFSITEM.DESCRICAOPRODUTO,'+
                             '               EF_NFSITEM.VLRPRECOUNITARIO,'+
                             '               EF_NFSITEM.VLRPRECOTOTAL,'+
                             '               EF_NFSITEM.VLRPIS,'+
                             '               EF_NFSITEM.VLRCOFINS,'+
                             '               EF_NFSITEM.ALIQUOTAICMS,'+
                             '               EF_NFSITEM.VLRICMS'+
                             '          FROM EF_NFSITEM,'+
                             '               EF_NFS EF_NFS,'+
                             '               EF_NATUREZAOP EF_NATUREZAOP,'+
                             '               EF_PRODUTO EF_PRODUTO'+
                             '         WHERE EF_NFS.EMPRESAID = EF_NFSITEM.EMPRESAID AND'+
                             '               EF_NFS.NFSID = EF_NFSITEM.NFSID AND'+
                             '               EF_NFS.DATAEMISSAOID = EF_NFSITEM.DATAEMISSAOID AND';

const Preco_Transf_3 =       '               EF_NATUREZAOP.NATUREZAOPID(+) = EF_NFS.NATUREZAOPID AND'+
                             '               ( NVL(EF_NATUREZAOP.VENDADEFINITIVA, 0) = 1 OR ' +
                             '               NVL(EF_NATUREZAOP.OUTRASSAIDA, 0) = 1 ) AND'+
                             '               EF_PRODUTO.EMPRESAID = EF_NFSITEM.EMPRESAID AND'+
                             '               EF_PRODUTO.PRODUTOID = EF_NFSITEM.PRODUTOID AND'+
                             '               NVL( EF_NFS.CANCELADA, 0 ) = 0 AND'+
                             '               EF_PRODUTO.ORIGEM = ''I'' '+
                             '         ORDER BY 15, 16) NFS_MERCADORIAS,'+
                             '       /* Resumo da média de venda apurada do produto com as deduções */'+
                             '       (SELECT (CASE'+
                             '                 WHEN (EF_NFSITEM.EMPRESAID IN (12,15) AND'+
                             '                      EF_PRODUTO.EMPRESASIMILARID IS NOT NULL) THEN'+
                             '                  EF_PRODUTO.EMPRESASIMILARID'+
                             '                 ELSE'+
                             '                  EF_PRODUTO.EMPRESAID'+
                             '               END) AS EMP_SIMILARID,'+
                             '               (CASE'+
                             '                 WHEN (EF_NFSITEM.EMPRESAID IN (12,15) AND'+
                             '                      EF_PRODUTO.PRODUTOSIMILARID IS NOT NULL) THEN'+
                             '                  EF_PRODUTO.PRODUTOSIMILARID'+
                             '                 ELSE'+
                             '                  EF_PRODUTO.PRODUTOID'+
                             '               END) AS PROD_SIMILARID,'+
                             '               SUM(EF_NFSITEM.QUANTIDADE) QUANTIDADE,'+
                             '               SUM(EF_NFSITEM.VLRPRECOUNITARIO) VLRUNITARIO,'+
                             '               SUM(EF_NFSITEM.VLRPRECOTOTAL) VLRTOTAL,'+
                             '               /* Media de Venda apurada */'+
                             '               SUM(EF_NFSITEM.VLRPRECOTOTAL -'+
                             '                   ((20 * EF_NFSITEM.VLRPRECOTOTAL / 100)+ '+
                             '               (CASE EF_NFSITEM.EMPRESAID'+
                             '                     WHEN 1 THEN'+
                             '                      EF_NFSITEM.VLRICMS'+
                             '                     WHEN 15 THEN'+
                             '                      EF_NFSITEM.VLRBASEICMS * 0.03 '+
                             '                     WHEN 12 THEN'+
                             '                      DECODE(EF_NFS.SIGLAUFID, ''PE'' , '+
                             '                             EF_NFSITEM.VLRICMS,'+
//                             '                             (47.5 * EF_NFSITEM.VLRICMS / 100))'+
                             '                             (52.5 * EF_NFSITEM.VLRICMS / 100))'+
                             '                   END) + EF_NFSITEM.VLRPIS + EF_NFSITEM.VLRCOFINS +'+
                             '                   /* Comissão sobre representação */'+
                             '                   (CASE EF_PRODUTO.SUBGRUPOID'+
                             '                     WHEN 8 THEN'+
                             '                      (5 * EF_NFSITEM.VLRPRECOTOTAL / 100)'+
                             '                     ELSE'+
                             '                      0'+
                             '                   END))) VLRMEDIAVENDA';

const Preco_Transf_4    =    '          FROM EF_NFSITEM    EF_NFSITEM,'+
                             '               EF_NFS        EF_NFS,'+
                             '               EF_NATUREZAOP EF_NATUREZAOP,'+
                             '               EF_PRODUTO    EF_PRODUTO'+
                             '         WHERE EF_NFS.EMPRESAID = EF_NFSITEM.EMPRESAID AND'+
                             '               EF_NFS.NFSID = EF_NFSITEM.NFSID AND'+
                             '               EF_NFS.DATAEMISSAOID = EF_NFSITEM.DATAEMISSAOID AND';

const Preco_Transf_5 =       '               EF_NATUREZAOP.NATUREZAOPID(+) = EF_NFS.NATUREZAOPID AND'+
                             '               ( NVL(EF_NATUREZAOP.VENDADEFINITIVA, 0) = 1 OR ' +
                             '                 NVL(EF_NATUREZAOP.OUTRASSAIDA, 0) = 1 ) AND'+
                             '               EF_PRODUTO.EMPRESAID = EF_NFSITEM.EMPRESAID AND'+
                             '               EF_PRODUTO.PRODUTOID = EF_NFSITEM.PRODUTOID AND'+
                             '               NVL( EF_NFS.CANCELADA, 0 ) = 0 AND'+
                             '               EF_PRODUTO.ORIGEM = ''I'' '+
                             '         GROUP BY (CASE'+
                             '                    WHEN (EF_NFSITEM.EMPRESAID IN (12,15) AND'+
                             '                         EF_PRODUTO.EMPRESASIMILARID IS NOT NULL) THEN'+
                             '                     EF_PRODUTO.EMPRESASIMILARID'+
                             '                    ELSE'+
                             '                     EF_PRODUTO.EMPRESAID'+
                             '                  END),'+
                             '                 (CASE'+
                             '                    WHEN (EF_NFSITEM.EMPRESAID IN (12,15) AND'+
                             '                         EF_PRODUTO.PRODUTOSIMILARID IS NOT NULL) THEN'+
                             '                     EF_PRODUTO.PRODUTOSIMILARID'+
                             '                    ELSE'+
                             '                     EF_PRODUTO.PRODUTOID'+
                             '                  END) ) PROD_MEDIA_VENDA,'+
                             '      /* Custo das saídas */'+
                             '       EF_KDXTRANSF,'+
                             '      ( SELECT EF_KDX.EMPRESAID,'+
                             '        EF_KDX.VLRCUSTOMEDIO,'+
                             '        EF_KDX.PRODUTOID'+
                             '  FROM EF_KDXTRANSF EF_KDX,'+
                             '       (SELECT EF_KDXTRANSF.EMPRESAID,'+
                             '               MAX(EF_KDXTRANSF.KARDEXID) KARDEXID,'+
                             '               MAX(EF_KDXTRANSF.DATAOCORRENCIA) DATAOCORRENCIA,'+
                             '               EF_KDXTRANSF.PRODUTOID'+
                             '          FROM EF_KDXTRANSF';


const Preco_Transf_6 =       '  WHERE'+
                             '   EF_KDX2.EMPRESAID = EF_KDX.EMPRESAID'+
                             '   AND EF_KDX2.DATAOCORRENCIA = EF_KDX.DATAOCORRENCIA'+
                             '   AND EF_KDX2.KARDEXID = EF_KDX.KARDEXID ) EFKDX, '+
                             ' ' +
                             ' ( SELECT EMP_SIMILARID, PROD_SIMILARID, SUM(VLRPRECOTOTAL) VLRPRECOTOTAL' +
                             '  FROM (SELECT (CASE' +
                             '                 WHEN (EF_NFEITEM.EMPRESAID IN (12,15) AND' +
                             '                      EF_PRODUTO.EMPRESASIMILARID IS NOT NULL) THEN' +
                             '                  EF_PRODUTO.EMPRESASIMILARID' +
                             '                 ELSE' +
                             '                  EF_PRODUTO.EMPRESAID' +
                             '               END) AS EMP_SIMILARID,' +
                             '               (CASE' +
                             '                 WHEN (EF_NFEITEM.EMPRESAID IN (12,15) AND' +
                             '                      EF_PRODUTO.PRODUTOSIMILARID IS NOT NULL) THEN' +
                             '                  EF_PRODUTO.PRODUTOSIMILARID' +
                             '                 ELSE' +
                             '                  EF_PRODUTO.PRODUTOID' +
                             '               END) AS PROD_SIMILARID,' +
                             '               EF_NFEITEM.VLRPRECOTOTAL' +
                             '          FROM EF_NFE        EF_NFE,' +
                             '               EF_NFEITEM    EF_NFEITEM,' +
                             '               EF_PRODUTO    EF_PRODUTO,' +
                             '               EF_NATUREZAOP EF_NATUREZAOP' +
                             '         WHERE EF_NFE.EMPRESAID = EF_NFEITEM.EMPRESAID' +
                             '           AND EF_NFE.NFEID = EF_NFEITEM.NFEID' +
                             '           AND EF_NFE.DATAEMISSAOID = EF_NFEITEM.DATAEMISSAOID' +
                             '           AND EF_NFE.ENTIDADEID = EF_NFEITEM.ENTIDADEID' +
                             '           AND EF_NATUREZAOP.NATUREZAOPID = EF_NFE.NATUREZAOPID' +
                             '           AND EF_NFEITEM.EMPRESAID = EF_PRODUTO.EMPRESAID' +
                             '           AND EF_NFEITEM.PRODUTOID = EF_PRODUTO.PRODUTOID' +
                             '           AND NVL( EF_NFE.CANCELADA, 0 ) = 0 ' +
                             '           AND EF_NATUREZAOP.MOVIMENTOESTOQUE = ''V'' AND EF_NATUREZAOP.TIPOMOVIMENTO = ''E'' )' +
                             ' GROUP BY EMP_SIMILARID, PROD_SIMILARID' +
                             ' ORDER BY EMP_SIMILARID, PROD_SIMILARID ) NFE_DEVOLUCAO' +
                             '' +
                             ' WHERE PROD_MEDIA_VENDA.EMP_SIMILARID  = NFS_MERCADORIAS.EMP_SIMILARID AND'+
                             '       PROD_MEDIA_VENDA.PROD_SIMILARID = NFS_MERCADORIAS.PROD_SIMILARID AND'+
                             '       EF_KDXTRANSF.EMPRESAID(+) = NFS_MERCADORIAS.EMP_SIMILARID AND'+
                             '       EF_KDXTRANSF.PRODUTOID(+) = NFS_MERCADORIAS.PROD_SIMILARID AND'+
                             '       EF_KDXTRANSF.NUMDOCUMENTO(+) = NFS_MERCADORIAS.NFSID AND'+
                             '       EF_KDXTRANSF.DATAOCORRENCIA(+) = NFS_MERCADORIAS.DATAEMISSAOID AND'+
                             '       EFKDX.EMPRESAID = NFS_MERCADORIAS.EMP_SIMILARID AND'+
                             '       EFKDX.PRODUTOID = NFS_MERCADORIAS.PROD_SIMILARID ' +
                             '       AND NFE_DEVOLUCAO.EMP_SIMILARID(+) = NFS_MERCADORIAS.EMP_SIMILARID ' +
                             '       AND NFE_DEVOLUCAO.PROD_SIMILARID(+) = NFS_MERCADORIAS.PROD_SIMILARID ';

 // Preco de Transferencia com ajuste
 const Preco_Com_Ajuste = ' AND (CASE'+
                          '         WHEN ROUND((PROD_MEDIA_VENDA.VLRMEDIAVENDA /'+
                          '                    PROD_MEDIA_VENDA.QUANTIDADE) *'+
                          '                    NFS_MERCADORIAS.QUANTIDADE,'+
                          '                    2) < (EFKDX.VLRCUSTOMEDIO * NFS_MERCADORIAS.QUANTIDADE) THEN'+
                          '          (ROUND((PROD_MEDIA_VENDA.VLRMEDIAVENDA /'+
                          '                 PROD_MEDIA_VENDA.QUANTIDADE) * NFS_MERCADORIAS.QUANTIDADE,'+
                          '                 2)) - (EFKDX.VLRCUSTOMEDIO * NFS_MERCADORIAS.QUANTIDADE)'+
                          '         ELSE'+
                          '          0'+
                          '       END) < 0';

 // Preco de Transferencia sem ajuste
 const Preco_Sem_Ajuste = ' AND (CASE'+
                          '         WHEN ROUND((PROD_MEDIA_VENDA.VLRMEDIAVENDA /'+
                          '                    PROD_MEDIA_VENDA.QUANTIDADE) *'+
                          '                    NFS_MERCADORIAS.QUANTIDADE,'+
                          '                    2) < (EFKDX.VLRCUSTOMEDIO * NFS_MERCADORIAS.QUANTIDADE) THEN'+
                          '          (ROUND((PROD_MEDIA_VENDA.VLRMEDIAVENDA /'+
                          '                 PROD_MEDIA_VENDA.QUANTIDADE) * NFS_MERCADORIAS.QUANTIDADE,'+
                          '                 2)) - (EFKDX.VLRCUSTOMEDIO * NFS_MERCADORIAS.QUANTIDADE)'+
                          '         ELSE'+
                          '          0'+
                          '       END) = 0';

var
  frmPrecoTransferencia: TfrmPrecoTransferencia;
  RelatorioId : Integer;
  VlrTotal,
  VlrAcumulado,
  Percentual  : Currency;

implementation

uses u_dmEF, FuncoesCliente, FuncoesDSI,  u_dmGSI, u_PadraoEdicao,
  u_Exportar, u_RelPrecoTransf, u_RelSaidasDivisas, u_Rel0024, u_Rel0025,
  u_Rel0026, u_Rel0027, u_Rel0028, u_Rel0029, u_Rel0030, u_Rel0031,
  u_Rel0032;

{$R *.dfm}

procedure TfrmPrecoTransferencia.AtualProdSimilar;
var cds  : TClientDataSet;
    iSQL, ParamPesquisa : String;
begin
 cds := nil;
 Screen.Cursor := crHourGlass;
 try
  iSQL := 'SELECT EMPRESAID, PRODUTOID, PARTNUMBERID, EMPRESASIMILARID, PRODUTOSIMILARID '+
          '  FROM EF_PRODUTO '+
          ' WHERE EMPRESAID = 1 AND EF_PRODUTO.NOVOUSADO = ' + QuotedStr('N');
  ExecDynamicProvider( -1,iSQL,cds );

  cds.AddIndex( 'idx1','PARTNUMBERID',[ixCaseInsensitive],'','',0);
  cds.IndexName := 'idx1';

  ParamPesquisa := 'EF_PRODUTO.EMPRESAID = 12';
  GerarPesquisa( dmEF.cdsProduto,ParamPesquisa );

  dmEF.cdsProduto.First;
  while not dmEF.cdsProduto.Eof do
  begin
   if not cds.FindKey([dmEF.cdsProdutoPARTNUMBERID.AsString]) then
      begin
       dmEF.cdsProduto.Next;
       Continue;
      end;

   dmEF.cdsProduto.Edit;
   dmEF.cdsProdutoEMPRESASIMILARID.AsInteger := cds.FieldByName('EMPRESAID').AsInteger;
   dmEF.cdsProdutoPRODUTOSIMILARID.AsInteger := cds.FieldByName('PRODUTOID').AsInteger;
   dmEF.cdsProduto.Post;

   dmEF.cdsProduto.Next;
  end;

  cds.DeleteIndex('idx1');
  cds.Close;
 finally
  Screen.Cursor := crDefault;
  FreeAndNil( cds );
 end;
end;

function TfrmPrecoTransferencia.RetornarEmpresa : String;
var cds  : TClientDataSet;
    iSQL : String;
begin
 try
  try
   cds := nil;
   iSQL :='SELECT EF_EMPRESA.EMPRESAID'+
          '  FROM EF_EMPRESA '+
          ' WHERE EF_EMPRESA.NOMEFANTASIA = ' + QuotedStr( cmbEmpresa.Text );

   ExecDynamicProvider( -1,iSQL,cds );
   if not cds.IsEmpty then
      Result := cds.FieldByName('EMPRESAID').AsString;

   cds.Close;
  except
   on E: Exception do
      raise Exception.Create(E.message);
  end;

 finally
  FreeAndNil( cds );
 end;
end;

procedure TfrmPrecoTransferencia.actNovoKDXExecute(Sender: TObject);
begin
 if not CheckSenha( dmGsi.UsuarioAtivo, frmPrecoTransferencia.Caption,'Processar novo Kardex para preço de transferência', True ) then
    exit;

 if MessageDlg('Confirma o processamento geral do Kardex para o preço de transferência?',
    mtConfirmation, [mbYes, mbNo], 0 ) = mrNo then
   exit;

 AtualProdSimilar;
 ExecDML( 'TRUNCATE TABLE EF_KDXTRANSF' );
 ExecDML( SelectKardexTransf_Insert );

 MessageDlg('Processamento Realizado com sucesso!', mtInformation, [mbOK], 0 );

end;

procedure TfrmPrecoTransferencia.FormCreate(Sender: TObject);
var iSQL : String;
begin
 tmbEdtLstKardex.TtmbClassOwnerEspec := TFrmPadraoEdicao;
 tmbEdtLstKardex.TtmbFormOwnerEspec  := FrmPadraoEdicao;

 iSQL := ' SELECT EF_EMPRESA.NOMEFANTASIA'+
         '   FROM EF_EMPRESA';

 AdicionarCamposCombo( cmbEmpresa ,iSQL,'NOMEFANTASIA' );

 cmbEmpresa.ItemIndex := EmpresaAtualId - 1;
 wwdtpcktDtIni.Date  := FirstDayOfYear( Date );
 wwdtpcktDtFim.Date  := LastDayOfYear( Date );
 wwdtpcktDtIni2.Date := FirstDayOfYear( Date );
 wwdtpcktDtFim2.Date := LastDayOfYear( Date );

end;

procedure TfrmPrecoTransferencia.mktProdutoKeyPress(Sender: TObject;
  var Key: Char);
var ParamPesquisa, EmpresaId  : String;
begin
 EmpresaId := RetornarEmpresa;

 if ( key <> #13 ) or ( EmpresaId = '' ) then
    exit;

 ParamPesquisa := 'EF_PRODUTO.EMPRESAID = '+ EmpresaId +
                  ' AND EF_PRODUTO.PRODUTOID = '+ mktProduto.Text;
 GerarPesquisa( dmEF.cdsProduto,ParamPesquisa );

 if dmEF.cdsPRODUTO.Recordcount < 1 then
    begin
     MessageDlg('Produto não encontrado!',mtError,[mbOK],0 );
     Exit;
    end;

 ParamPesquisa := ' EF_KDXTRANSF.EMPRESAID = '+ EmpresaId + ' ' +
                  ' AND EF_KDXTRANSF.PRODUTOID = '+ mktProduto.Text +
                  ' ORDER BY EF_KDXTRANSF.EMPRESAID,EF_KDXTRANSF.DATAOCORRENCIA,EF_KDXTRANSF.KARDEXID';

 GerarPesquisa( dmEF.cdsKdxTransf,ParamPesquisa );
 if dmEF.cdsKdxTransf.IsEmpty then
    MessageDlg( 'Produto não encontrado!',mtError,[mbOK],0 );

 dmEF.cdsKdxTransf.Last;
end;

procedure TfrmPrecoTransferencia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 dmEF.cdsPrecoTransf.Close;

 Action := caFree;
 frmPrecoTransferencia := Nil;
end;

procedure TfrmPrecoTransferencia.actFecharExecute(Sender: TObject);
begin
 Close;
end;

procedure TfrmPrecoTransferencia.actReprocessarKdxExecute(Sender: TObject);
begin
 dmEF.shdcnnEF.AppServer.IReprocessarKardex( RetornarEmpresa, mktProduto.Text, 2, dmEF.cdsKdxTransfKARDEXID.AsInteger );
 dmEF.cdsKdxTransf.Refresh;

 MessageDlg('KARDEX - Custos atualizados com sucesso!',mtInformation,[mbOK],0);
end;

procedure TfrmPrecoTransferencia.actAtualizarCustosExecute(
  Sender: TObject);
var aStrList : TStrings;
begin
 if not CheckSenha( dmGsi.UsuarioAtivo, frmPrecoTransferencia.Caption,'Atualizar Custos do preço de transferência', True ) then
    exit;

 if MessageDlg('Confirma a atualização dos custo para o preço de transferência?', mtConfirmation, [mbYes, mbNo], 0 ) = mrNo then
    exit;

 Screen.Cursor := crHourGlass;
 aStrList := TStringList.Create;
 try
  VariantToStringlist( dmEF.shdcnnEF.AppServer.IAtualNovoCustoKdxTransf, aStrList );

  mmLog.Lines := aStrList;

 finally
  MessageDlg('Atualização dos custos de importação realizado com sucesso!', mtInformation, [mbOK], 0 );
  FreeAndNil( aStrList );
  Screen.Cursor := crDefault;
 end;
end;

procedure TfrmPrecoTransferencia.pgctrlPrecoTransfChange(Sender: TObject);
begin
 if pgctrlPrecoTransf.ActivePageIndex = 1 then
    mktProduto.SetFocus;
end;

procedure TfrmPrecoTransferencia.actPrecoTransfExecute(Sender: TObject);
var iSQL,iSQL2,iSQL3 : String;
begin
 RelatorioId := 1;
 iSQL      := Preco_Transf + Preco_Transf_2;

 iSQL := iSQL + '               EF_NFSITEM.DATAEMISSAOID >='+
                '               TO_DATE( '+ QuotedStr( wwdtpcktDtIni2.Text )+ ','+ QuotedStr('DD/MM/YYYY')+ ') AND'+
                '               EF_NFSITEM.DATAEMISSAOID <='+
                '               TO_DATE('+ QuotedStr( wwdtpcktDtFim2.Text )+ ',' + QuotedStr('DD/MM/YYYY')+') AND';

 iSQL2 := Preco_Transf_3 + Preco_Transf_4;

 iSQL2 := iSQL2 + '                EF_NFSITEM.DATAEMISSAOID >='+
                  '                TO_DATE( '+ QuotedStr( wwdtpcktDtIni2.Text )+ ','+ QuotedStr('DD/MM/YYYY')+ ') AND'+
                  '                EF_NFSITEM.DATAEMISSAOID <='+
                  '                TO_DATE('+ QuotedStr( wwdtpcktDtFim2.Text )+ ',' + QuotedStr('DD/MM/YYYY')+') AND';

 iSQL2 := iSQL2 + Preco_Transf_5;
 iSQL2 := iSQL2 + '         WHERE EF_KDXTRANSF.DATAOCORRENCIA <= TO_DATE('+ QuotedStr( wwdtpcktDtFim2.Text )+ ',' + QuotedStr('DD/MM/YYYY')+') '+
                  '         GROUP BY EF_KDXTRANSF.EMPRESAID, EF_KDXTRANSF.PRODUTOID) EF_KDX2';

 iSQL3 := Preco_Transf_6;

 if      rgpComparacao.ItemIndex = 0 then
         ExecDynamicProvider(-1, iSQL + iSQL2 + iSQL3 + Preco_Com_Ajuste, dmEF.cdsPrecoTransf )
 else if rgpComparacao.ItemIndex = 1 then
         ExecDynamicProvider(-1, iSQL + iSQL2 + iSQL3 + Preco_Sem_Ajuste,dmEF.cdsPrecoTransf )
 else ExecDynamicProvider(-1, iSQL + iSQL2 + iSQL3 , dmEF.cdsPrecoTransf );

 Application.CreateForm( TfrmRelPrecoTransf, frmRelPrecoTransf );
 try
  frmRelPrecoTransf.QuickRep1.Preview;
 finally
  FreeAndNil( frmRelPrecoTransf.QuickRep1 );
  FreeAndNil( frmRelPrecoTransf );
 end;
end;

procedure TfrmPrecoTransferencia.actExcelExecute(Sender: TObject);
begin
 if pgctrlPrecoTransf.ActivePageIndex = 1 then
    Exportar( dmEF.cdsKdxTransf,dmEF.dsKdxTransf )
 else if RelatorioId = 1 then
         Exportar( dmEF.cdsPrecoTransf, dmEF.dsPrecoTransf )
 else if RelatorioId = 10 then
         Exportar( cdsRelDIPJ,dsRelDIPJ )
      else
         Exportar( cdsDIPJ,dsDIPJ );
end;

procedure TfrmPrecoTransferencia.BitBtn2Click(Sender: TObject);
var iSQL,Empresa,Nome : String;
begin
 RelatorioId := 2;
 try
  if not cdsDIPJ.IsEmpty then
     cdsDIPJ.EmptyDataSet;

  Screen.Cursor := crHourGlass;
  frmPrecoTransferencia.Repaint;

  case rgrpEmpresa.ItemIndex of
  0 : begin
       Empresa := '(1)';
       Nome    := 'Empresa 1 - Matriz Estoque';
      end;
  1 : begin
       Empresa := '(12)';
       Nome    := 'Empresa 12 - Jaboatão';
      end;
  2 : begin
       Empresa := '(15)';
       Nome    := 'Empresa 15 - Blumenau';
      end;
  else
      begin
       Empresa := '(1,12,15)';
       Nome    := 'Todas as empresas';
      end;
  end;


  iSQL := 'SELECT EF_NFE.ENTIDADEID,'+
          '       EF_ENTIDADE.NOME,'+
          '       EF_ENTIDADE.CPFCNPJ,'+
          '       ROUND( SUM( CASE WHEN EF_NFEITEM.VLRBASEIPI < 1'+
          '         THEN EF_NFEITEM.VLRPRECOTOTAL'+
          '         ELSE EF_NFEITEM.VLRBASEIPI'+
          '        END  ),2) VLRTOTAL,'+
          '       ROUND( SUM ( (CASE WHEN EF_NFEITEM.VLRBASEIPI < 1 THEN'+
          '                   EF_NFEITEM.VLRPRECOTOTAL'+
          '               ELSE'+
          '                   EF_NFEITEM.VLRBASEIPI'+
          '              END) )   /  ( EFTOTAL.VLRTOTAL ) *(  100 ),10 )   PORC,'+
          '       0 AS ACUMULADO'+
          '  FROM '+
          '  EF_NFE,'+
          '  EF_NFEITEM,'+
          '  EF_NATUREZAOP,'+
          '  EF_PRODUTO,'+
          '  EF_ENTIDADE,'+
          '  (  SELECT SUM(CASE WHEN EF_NFEITEM.VLRBASEIPI < 1 THEN'+
          '                     EF_NFEITEM.VLRPRECOTOTAL'+
          '                 ELSE '+
          '                     EF_NFEITEM.VLRBASEIPI'+
          '                END) VLRTOTAL'+
          '       FROM '+
          '       EF_NFE,'+
          '       EF_NFEITEM,'+
          '       EF_NATUREZAOP'+
          '      WHERE'+
          '       EF_NFEITEM.EMPRESAID = EF_NFE.EMPRESAID AND'+
          '       EF_NFEITEM.NFEID = EF_NFE.NFEID AND'+
          '       EF_NFEITEM.DATAEMISSAOID = EF_NFE.DATAEMISSAOID AND'+
          '       EF_NFEITEM.ENTIDADEID = EF_NFE.ENTIDADEID AND'+
          '       EF_NATUREZAOP.NATUREZAOPID = EF_NFE.NATUREZAOPID AND'+
          '       EF_NATUREZAOP.ENTRADADIPJ = 1 AND'+

{          if Empresa = '12' then
             iSQL := iSQL + 'AND ( ( EF_NFE.EMPRESAID = 12 ) OR ( EF_NFE.EMPRESAID = 13 ) ) '
          else
             iSQL := iSQL + ' AND  ( EF_NFE.EMPRESAID = 1 ' +
                            '        OR EF_NFE.EMPRESAID = 2 '+
                            '        OR EF_NFE.EMPRESAID = 3 '+
                            '        OR EF_NFE.EMPRESAID = 4 '+
                            '        OR EF_NFE.EMPRESAID = 5 '+
                            '       )';
iSQL := iSQL +}
          '         EF_NFE.EMPRESAID = '+ Empresa +' AND'+
          '       EF_NFE.DATAENTRADA BETWEEN '+ QuotedStr( wwdtpcktDtIni2.Text )+' AND '+
                                                QuotedStr( wwdtpcktDtFim2.Text )+
          '  ) EFTOTAL '+
          ' WHERE'+
          '  EF_NFEITEM.EMPRESAID = EF_NFE.EMPRESAID AND'+
          '  EF_NFEITEM.NFEID = EF_NFE.NFEID AND'+
          '  EF_NFEITEM.DATAEMISSAOID = EF_NFE.DATAEMISSAOID AND'+
          '  EF_NFEITEM.ENTIDADEID = EF_NFE.ENTIDADEID AND'+
          '  EF_NATUREZAOP.NATUREZAOPID = EF_NFE.NATUREZAOPID AND'+
          '  EF_NATUREZAOP.ENTRADADIPJ = 1 AND'+
          '  EF_PRODUTO.EMPRESAID = EF_NFEITEM.EMPRESAID AND'+
          '  EF_PRODUTO.PRODUTOID = EF_NFEITEM.PRODUTOID  AND'+
          '  EF_ENTIDADE.ENTIDADEID = EF_NFE.ENTIDADEID AND'+
          '  EF_NFE.EMPRESAID in '+ Empresa +' AND'+
          '  EF_NFE.DATAENTRADA BETWEEN '+ QuotedStr( wwdtpcktDtIni2.Text )+' AND '+
              QuotedStr( wwdtpcktDtFim2.Text )+
          '  GROUP BY EF_NFE.ENTIDADEID,'+
          '           EF_ENTIDADE.NOME,'+
          '           EF_ENTIDADE.CPFCNPJ,'+
          '           EFTOTAL.VLRTOTAL'+
          ' ORDER BY VLRTOTAL DESC';

  ExecDynamicProvider(-1,iSQL,cdsDIPJ );
  FormataCampos(cdsDIPJ);
  frmRel0024 := TfrmRel0024.Create(nil);
  CalcAcumulado(cdsDIPJ, 'ACUMULADO','PORC');

  {*** Mostrando as Somas ***}
  frmRel0024.QrlTitulo.Caption := Nome + ' ' + TBitBtn( Sender ).Caption;
  frmRel0024.QrlSumVlrtotal.Caption   := FormatFloat('###,###,###,##0.00',VlrTotal );
  frmRel0024.QrlSumPercentual.Caption := FormatFloat('###,###,###,##0.00', Percentual );

  frmRel0024.QuickRep1.Preview;
 finally
  FreeAndNil(frmRel0024.QuickRep1);
  FreeAndNil( frmRel0024 );
  Screen.Cursor := crDefault;
 end;
end;

procedure TfrmPrecoTransferencia.Exportar(cdsExport: TClientDataSet; dsExport : TDataSource );
begin
 if not cdsExport.IsEmpty then
    begin
     frmExportar := TfrmExportar.Create(nil);
     frmExportar.DataSource := dsExport;
     frmExportar.Show;
    end
 else
    MessageDlg('É necessário Gerar o Relatório primeiro!',mtWarning, [mbok],0 );
end;

procedure TfrmPrecoTransferencia.BitBtn3Click(Sender: TObject);
var iSQL,Empresa : String;
begin
 RelatorioId := 4;
 try
  if not cdsDIPJ.IsEmpty then
     cdsDIPJ.EmptyDataSet;

  Screen.Cursor := crHourGlass;
  frmPrecoTransferencia.Repaint;

  case rgrpEmpresa.ItemIndex of
  0 : Empresa := '(1)';
  1 : Empresa := '(12)';
  2 : Empresa := '(15)';
  else
      Empresa := '(1,12,15)';
  end;

  iSQL := 'SELECT EF_NFE.ENTIDADEID,'+
          '  EF_NFE.NFEID,'+
          '  EF_NFE.EMPRESAID,'+
          '  EF_NFE.DATAENTRADA,'+
          '  EF_NFE.ENTIDADEID,'+
          '  EF_NFE.VLRTOTALNOTA,'+
          '  EF_PRODUTO.DESCRICAOPORTUGUES,'+
          '  EF_TECWIN.DESCRICAO,'+
          '  EF_ENTIDADE.CPFCNPJ,'+
          '  EF_ENTIDADE.NOME,'+
          '  (CASE WHEN EF_NFEITEM.VLRBASEIPI < 1'+
          '    THEN EF_NFEITEM.VLRPRECOTOTAL'+
          '    ELSE EF_NFEITEM.VLRBASEIPI'+
          '   END) VLRTOTAL'+
          '  FROM EF_NFE,'+
          '       EF_NFEITEM,'+
          '       EF_NATUREZAOP,'+
          '       EF_PRODUTO,'+
          '       EF_ENTIDADE,'+
          '       EF_TECWIN'+
          ' WHERE'+
          '  EF_NFEITEM.EMPRESAID = EF_NFE.EMPRESAID AND'+
          '  EF_NFEITEM.NFEID = EF_NFE.NFEID AND'+
          '  EF_NFEITEM.DATAEMISSAOID = EF_NFE.DATAEMISSAOID AND'+
          '  EF_NFEITEM.ENTIDADEID = EF_NFE.ENTIDADEID AND'+
          '  EF_NATUREZAOP.NATUREZAOPID = EF_NFE.NATUREZAOPID AND'+
          '  EF_NATUREZAOP.ENTRADADIPJ = 1 AND'+
          '  EF_PRODUTO.EMPRESAID = EF_NFEITEM.EMPRESAID AND'+
          '  EF_PRODUTO.PRODUTOID = EF_NFEITEM.PRODUTOID  AND'+
          '  EF_TECWIN.NCMID(+) = EF_PRODUTO.NCMID AND'+
          '  EF_ENTIDADE.ENTIDADEID = EF_NFE.ENTIDADEID AND'+
          '  EF_NFE.EMPRESAID IN '+ Empresa +' AND'+
          '  EF_NFE.DATAENTRADA BETWEEN '+ QuotedStr( wwdtpcktDtIni2.Text )+' AND '+
              QuotedStr( wwdtpcktDtFim2.Text )+
          '  ORDER BY VLRTOTAL DESC';

      ExecDynamicProvider(-1,iSQL,cdsDIPJ );
      Exportar( cdsDIPJ, dsDIPJ );

 finally
  Screen.Cursor := crDefault;
 end;
end;

procedure TfrmPrecoTransferencia.BitBtn4Click(Sender: TObject);
var iSQL,Empresa,Nome : String;
begin
 RelatorioId := 6;
 if not cdsDIPJ.IsEmpty then
     cdsDIPJ.EmptyDataSet;

  case rgrpEmpresa.ItemIndex of
  0 : begin
       Empresa := '(1)';
       Nome    := 'Empresa 1 - Matriz Estoque';
      end;
  1 : begin
       Empresa := '(12)';
       Nome    := 'Empresa 12 - Jaboatão';
      end;
  2 : begin
       Empresa := '(15)';
       Nome    := 'Empresa 15 - Blumenau';
      end;
  else
      begin
       Empresa := '(1,12,15)';
       Nome    := 'Todas as empresas';
      end;
  end;

 try
  iSQL := 'SELECT EF_PRODUTO.NCMID,'+
          '       EF_TECWIN.DESCRICAO,'+
          '       SUM((CASE'+
          '             WHEN EF_NFSITEM.VLRBASEIPI < 1 THEN'+
          '              EF_NFSITEM.VLRPRECOTOTAL'+
          '             ELSE'+
          '              EF_NFSITEM.VLRBASEIPI'+
          '           END)) VLRTOTAL,'+
          '       ROUND(SUM(CASE'+
          '                  WHEN EF_NFSITEM.VLRBASEIPI < 1 THEN'+
          '                   EF_NFSITEM.VLRPRECOTOTAL'+
          '                  ELSE'+
          '                   EF_NFSITEM.VLRBASEIPI'+
          '                 END) / (EFTOTAL.VLRTOTALNOTA) * (100),'+
          '             10) PORC,'+
          '       0 AS ACUMULADO'+
          '  FROM EF_NFS EF_NFS,'+
          '       EF_NFSITEM    EF_NFSITEM,'+
          '       EF_NATUREZAOP EF_NATUREZAOP,'+
          '       EF_PRODUTO    EF_PRODUTO,'+
          '       EF_ENTIDADE   EF_ENTIDADE,'+
          '       EF_TECWIN     EF_TECWIN,'+
          '       ( SELECT SUM((CASE'+
          '                      WHEN EF_NFSITEM.VLRBASEIPI < 1 THEN'+
          '                       EF_NFSITEM.VLRPRECOTOTAL'+
          '                      ELSE'+
          '                       EF_NFSITEM.VLRBASEIPI'+
          '                     END)) VLRTOTALNOTA'+
          '           FROM EF_NFS        EF_NFS,'+
          '                EF_NFSITEM    EF_NFSITEM,'+
          '                EF_NATUREZAOP EF_NATUREZAOP'+
          '          WHERE EF_NFSITEM.EMPRESAID = EF_NFS.EMPRESAID'+
          '                AND EF_NFSITEM.NFSID = EF_NFS.NFSID'+
          '                AND EF_NFSITEM.DATAEMISSAOID = EF_NFS.DATAEMISSAOID'+
          '                AND EF_NATUREZAOP.NATUREZAOPID = EF_NFS.NATUREZAOPID'+
          '                AND EF_NATUREZAOP.SAIDADIPJ = 1'+
          '                AND EF_NFS.EMPRESAID = '+ Empresa +
          '                AND EF_NFS.DATAEMISSAOID BETWEEN '+ QuotedStr( wwdtpcktDtIni2.Text )+ ' AND '+
                                                               QuotedStr( wwdtpcktDtFim2.Text )+
          '       ) EFTOTAL'+
          ' WHERE EF_NFSITEM.EMPRESAID = EF_NFS.EMPRESAID'+
          '   AND EF_NFSITEM.NFSID = EF_NFS.NFSID'+
          '   AND EF_NFSITEM.DATAEMISSAOID = EF_NFS.DATAEMISSAOID'+
          '   AND EF_NATUREZAOP.NATUREZAOPID = EF_NFS.NATUREZAOPID'+
          '   AND EF_NATUREZAOP.SAIDADIPJ = 1'+
          '   AND EF_PRODUTO.EMPRESAID = EF_NFSITEM.EMPRESAID'+
          '   AND EF_PRODUTO.PRODUTOID = EF_NFSITEM.PRODUTOID  '+
          '   AND EF_ENTIDADE.ENTIDADEID = EF_NFS.ENTIDADEID'+
          '   AND EF_TECWIN.NCMID(+) = EF_PRODUTO.NCMID'+
          '   AND EF_NFS.EMPRESAID IN ' + Empresa +
          '   AND EF_NFS.DATAEMISSAOID BETWEEN '+ QuotedStr( wwdtpcktDtIni2.Text )+ ' AND '+
               QuotedStr( wwdtpcktDtFim2.Text )+
          ' GROUP BY EF_PRODUTO.NCMID, EF_TECWIN.DESCRICAO,EFTOTAL.VLRTOTALNOTA'+
          ' ORDER BY VLRTOTAL DESC';

  ExecDynamicProvider(-1,iSQL, cdsDIPJ );
  CalcAcumulado(cdsDIPJ,'ACUMULADO','PORC');
  frmRel0027 := TfrmRel0027.Create(nil);

  {*** Mostrando as Somas ***}
  frmRel0027.QrlTitulo.Caption := Nome+' '+ TBitBtn( Sender ).Caption;
  frmRel0027.QrlSumVlrtotal.Caption   := FormatFloat('###,###,###,##0.00',VlrTotal );
  frmRel0027.QrlSumPercentual.Caption := FormatFloat('###,###,###,##0.00', Percentual );

  frmRel0027.QuickRep1.Preview;
 finally
  FreeAndNil(frmRel0027.QuickRep1);
  FreeAndNil( frmRel0027 );
  Screen.Cursor := crDefault;
 end;
end;

procedure TfrmPrecoTransferencia.BitBtn5Click(Sender: TObject);
var iSQL,Empresa,Nome : String;
begin
 RelatorioId := 5;
 if not cdsDIPJ.IsEmpty then
     cdsDIPJ.EmptyDataSet;

 case rgrpEmpresa.ItemIndex of
 0 : begin
      Empresa := '(1)';
      Nome    := 'Empresa 1 - Matriz Estoque';
     end;
 1 : begin
      Empresa := '(12)';
      Nome    := 'Empresa 12 - Jaboatão';
     end;
 2 : begin
      Empresa := '(15)';
      Nome    := 'Empresa 15 - Blumenau';
     end;
 else
     begin
      Empresa := '(1,12,15)';
      Nome    := 'Todas as empresas';
     end;
 end;

 try
  iSQL := 'SELECT '+
          '       EF_NFS.ENTIDADEID,'+
          '       EF_ENTIDADE.NOME,'+
          '       EF_ENTIDADE.CPFCNPJ,'+
          '       SUM((CASE'+
          '             WHEN EF_NFSITEM.VLRBASEIPI < 1 THEN'+
          '              EF_NFSITEM.VLRPRECOTOTAL'+
          '             ELSE'+
          '              EF_NFSITEM.VLRBASEIPI'+
          '           END)) VLRTOTAL,'+
          '       ROUND(SUM(CASE'+
          '                  WHEN EF_NFSITEM.VLRBASEIPI < 1 THEN'+
          '                   EF_NFSITEM.VLRPRECOTOTAL'+
          '                  ELSE'+
          '                   EF_NFSITEM.VLRBASEIPI'+
          '                 END) / (EFTOTAL.VLRTOTALNOTA) * (100),'+
          '             10) PORC,'+
          '       0 AS ACUMULADO'+
          '  FROM EF_NFS EF_NFS,'+
          '       EF_NFSITEM    EF_NFSITEM,'+
          '       EF_NATUREZAOP EF_NATUREZAOP,'+
          '       EF_PRODUTO    EF_PRODUTO,'+
          '       EF_ENTIDADE   EF_ENTIDADE,'+
          '       ( SELECT SUM((CASE'+
          '                      WHEN EF_NFSITEM.VLRBASEIPI < 1 THEN'+
          '                       EF_NFSITEM.VLRPRECOTOTAL'+
          '                      ELSE'+
          '                       EF_NFSITEM.VLRBASEIPI'+
          '                     END)) VLRTOTALNOTA'+
          '           FROM EF_NFS        EF_NFS,'+
          '                EF_NFSITEM    EF_NFSITEM,'+
          '                EF_NATUREZAOP EF_NATUREZAOP'+
          '          WHERE EF_NFSITEM.EMPRESAID = EF_NFS.EMPRESAID'+
          '                AND EF_NFSITEM.NFSID = EF_NFS.NFSID'+
          '                AND EF_NFSITEM.DATAEMISSAOID = EF_NFS.DATAEMISSAOID'+
          '                AND EF_NATUREZAOP.NATUREZAOPID = EF_NFS.NATUREZAOPID'+
          '                AND EF_NATUREZAOP.SAIDADIPJ = 1'+
          '                AND EF_NFS.EMPRESAID IN '+ Empresa +
          '                AND EF_NFS.DATAEMISSAOID BETWEEN '+ QuotedStr( wwdtpcktDtIni2.Text )+ ' AND '+
                                                               QuotedStr( wwdtpcktDtFim2.Text )+
          '       ) EFTOTAL'+
          ' WHERE EF_NFSITEM.EMPRESAID = EF_NFS.EMPRESAID'+
          '   AND EF_NFSITEM.NFSID = EF_NFS.NFSID'+
          '   AND EF_NFSITEM.DATAEMISSAOID = EF_NFS.DATAEMISSAOID'+
          '   AND EF_NATUREZAOP.NATUREZAOPID = EF_NFS.NATUREZAOPID'+
          '   AND EF_NATUREZAOP.SAIDADIPJ = 1'+
          '   AND EF_PRODUTO.EMPRESAID = EF_NFSITEM.EMPRESAID'+
          '   AND EF_PRODUTO.PRODUTOID = EF_NFSITEM.PRODUTOID  '+
          '   AND EF_ENTIDADE.ENTIDADEID = EF_NFS.ENTIDADEID'+
          '   AND EF_NFS.EMPRESAID = '+ Empresa +
          '   AND EF_NFS.DATAEMISSAOID BETWEEN '+ QuotedStr( wwdtpcktDtIni2.Text )+ ' AND '+
               QuotedStr( wwdtpcktDtFim2.Text )+
          ' GROUP BY EF_NFS.ENTIDADEID, EF_ENTIDADE.CPFCNPJ,'+
          '          EF_ENTIDADE.NOME,EFTOTAL.VLRTOTALNOTA'+
          ' ORDER BY VLRTOTAL DESC';

  ExecDynamicProvider(-1,iSQL, cdsDIPJ );
  CalcAcumulado(cdsDIPJ,'ACUMULADO','PORC');

  frmRel0026 := TfrmRel0026.Create(nil);

  {*** Mostrando as Somas ***}
  frmRel0026.QrlTitulo.Caption :=Nome + ' '+ TBitBtn( Sender ).Caption;
  frmRel0026.QrlSumVlrtotal.Caption   := FormatFloat('###,###,###,##0.00',VlrTotal );
  frmRel0026.QrlSumPercentual.Caption := FormatFloat('###,###,###,##0.00', Percentual );

  frmRel0026.QuickRep1.Preview;
 finally
  FreeAndNil(frmRel0026.QuickRep1);
  FreeAndNil( frmRel0026 );
  Screen.Cursor := crDefault;
 end;


end;

procedure TfrmPrecoTransferencia.BitBtn6Click(Sender: TObject);
var iSQL,Empresa : String;
begin
 RelatorioId := 7;
 if not cdsDIPJ.IsEmpty then
     cdsDIPJ.EmptyDataSet;

 case rgrpEmpresa.ItemIndex of
 0 : Empresa := '(1)';
 1 : Empresa := '(12)';
 2 : Empresa := '(15)';
 else
     Empresa := '(1,12,15)';
 end;

 if rgrpEmpresa.ItemIndex = 0 then
    Empresa := '1'
 else
    Empresa := '12';

 iSQL := 'SELECT '+
         '  IT_MERCADORIA.PRODUTOID,'+
         '  EF_PRODUTO.DESCRICAOPORTUGUES,'+
         '       IT_MERCADORIA.NCMID,'+
         '       IT_DECLARACAO.FORNECEDORID,'+
         '       IT_DECLARACAO.DIID,'+
         '       IT_MERCADORIA.QUANTIDADE,'+
         '       EF_PRODUTO.UNIDADEID,'+
         '       ROUND(SUM( IT_MERCADORIA.VLRFOB ),2)AS VLRTOTAL,'+
         '       ROUND( ( CASE WHEN SUM( IT_MERCADORIA.VLRFOB ) > 0'+
         '          THEN ( ( SUM ( IT_MERCADORIA.VLRFOB ) / ITPERC.PERCENTUAL ) * 100)'+
         '          ELSE 0'+
         '         END'+
         '       ),2)AS PORC,'+
         '       0 AS ACUMULADO'+
         '  FROM IT_DECLARACAO,'+
         '       IT_MERCADORIA,'+
         '       EF_NATUREZAOP,'+
         '       EF_PRODUTO,'+
         '       ( SELECT SUM( IT_MERCADORIA.VLRFOB )AS PERCENTUAL'+
         '           FROM IT_DECLARACAO,'+
         '            IT_MERCADORIA,'+
         '            EF_NATUREZAOP'+
         '         WHERE IT_MERCADORIA.DECLARACAOID = IT_DECLARACAO.DECLARACAOID AND'+
         '               EF_NATUREZAOP.NATUREZAOPID = IT_DECLARACAO.NATUREZAOPID AND'+
         '               EF_NATUREZAOP.ENTRADAPRECOTRANSF = 1 AND'+
         '                IT_DECLARACAO.EMPRESAID IN '+ Empresa +' AND'+
         '                IT_DECLARACAO.DATAENTRADANFEID BETWEEN '+ QuotedStr( wwdtpcktDtIni2.Text )+' AND '+
                                                                    QuotedStr( wwdtpcktDtFim2.Text )+
         '         ) ITPERC'+
         '  WHERE IT_MERCADORIA.DECLARACAOID = IT_DECLARACAO.DECLARACAOID AND'+
         '        EF_NATUREZAOP.NATUREZAOPID = IT_DECLARACAO.NATUREZAOPID AND'+
         '        EF_NATUREZAOP.ENTRADAPRECOTRANSF = 1 AND'+
         '        IT_DECLARACAO.EMPRESAID IN '+ Empresa + ' AND'+
         '        EF_PRODUTO.EMPRESAID = IT_MERCADORIA.EMPRESAID AND'+
         '        EF_PRODUTO.PRODUTOID = IT_MERCADORIA.PRODUTOID AND'+
         '                IT_DECLARACAO.DATAENTRADANFEID BETWEEN '+ QuotedStr( wwdtpcktDtIni2.Text )+' AND '+
                                                                    QuotedStr( wwdtpcktDtFim2.Text )+
         '  GROUP BY IT_MERCADORIA.PRODUTOID, EF_PRODUTO.DESCRICAOPORTUGUES, IT_MERCADORIA.NCMID,'+
         '           IT_DECLARACAO.FORNECEDORID, IT_DECLARACAO.DIID, IT_MERCADORIA.QUANTIDADE,'+
         '           IT_MERCADORIA.QUANTIDADE, EF_PRODUTO.UNIDADEID, ITPERC.PERCENTUAL'+
         '  ORDER BY VLRTOTAL DESC ';

 try
  Screen.Cursor := crHourGlass;
  ExecDynamicProvider(-1,iSQL, cdsDIPJ );
  CalcAcumulado(cdsDIPJ,'ACUMULADO','PORC');
  frmRel0032 := TfrmRel0032.Create(nil);

  {*** Mostrando as Somas ***}
  frmRel0032.QrlTitulo.Caption := TBitBtn( Sender ).Caption;
  frmRel0032.QrlSumVlrtotal.Caption   := FormatFloat('###,###,###,##0.00',VlrTotal );
  frmRel0032.QrlSumPercentual.Caption := FormatFloat('###,###,###,##0.00', Percentual );
  frmRel0032.QrlSumAcumulado.Caption  := FormatFloat('###,###,###,##0.00', VlrAcumulado );

  frmRel0032.QuickRep1.Preview;
 finally
  FreeAndNil(frmRel0032.QuickRep1);
  FreeAndNil( frmRel0032 );
  Screen.Cursor := crDefault;
 end;
end;

procedure TfrmPrecoTransferencia.BitBtn7Click(Sender: TObject);
var iSQL,Empresa : String;
begin
 RelatorioId := 8;
 if not cdsDIPJ.IsEmpty then
     cdsDIPJ.EmptyDataSet;

 case rgrpEmpresa.ItemIndex of
 0 : Empresa := '(1)';
 1 : Empresa := '(12)';
 2 : Empresa := '(15)';
 else
     Empresa := '(1,12,15)';
 end;


 iSQL := 'SELECT '+
         '  IT_MERCADORIA.NCMID,'+
         '  IT_DECLARACAO.FORNECEDORID,'+
         '  EF_ENTIDADE.NOME NOMEFORNECEDOR,'+
         '  IT_DECLARACAO.IMPORTADORID,'+
         '  EF_ENTIDADEIMPORT.NOME NOMEIMPORTADOR,'+
         '  SUM(IT_MERCADORIA.QUANTIDADE) QUANTIDADE,'+
         '  SUM(IT_MERCADORIA.VLRFOB) VLRTOTAL,'+
         '  ROUND( ( SUM(IT_MERCADORIA.VLRFOB)/EFTOTAL.VLRTOTAL )*(100),'+
         '       10) PORC,'+
         '       0 AS ACUMULADO'+
         '  FROM IT_DECLARACAO IT_DECLARACAO,'+
         '       IT_MERCADORIA IT_MERCADORIA,'+
         '       EF_NATUREZAOP EF_NATUREZAOP,'+
         '       EF_ENTIDADE EF_ENTIDADE,'+
         '       EF_ENTIDADE EF_ENTIDADEIMPORT,'+
         '  ( SELECT SUM( IT_MERCADORIA.VLRFOB ) VLRTOTAL'+
         '      FROM'+
         '      IT_DECLARACAO IT_DECLARACAO,'+
         '      IT_MERCADORIA IT_MERCADORIA,'+
         '      EF_NATUREZAOP EF_NATUREZAOP'+
         '     WHERE IT_MERCADORIA.DECLARACAOID = IT_DECLARACAO.DECLARACAOID AND'+
         '      EF_NATUREZAOP.NATUREZAOPID = IT_DECLARACAO.NATUREZAOPID AND'+
         '      EF_NATUREZAOP.ENTRADAPRECOTRANSF = 1 AND'+
         '      IT_DECLARACAO.EMPRESAID = '+ Empresa +' AND'+
         '      IT_DECLARACAO.DATAENTRADANFEID BETWEEN '+ QuotedStr( wwdtpcktDtIni2.Text )+' AND '+
                                                                    QuotedStr( wwdtpcktDtFim2.Text )+
         '  ) EFTOTAL'+
         ' WHERE IT_MERCADORIA.DECLARACAOID = IT_DECLARACAO.DECLARACAOID AND'+
         '       EF_ENTIDADEIMPORT.ENTIDADEID(+) = IT_DECLARACAO.IMPORTADORID AND'+
         '       EF_ENTIDADE.ENTIDADEID(+) = IT_DECLARACAO.FORNECEDORID AND '+
         '       EF_NATUREZAOP.NATUREZAOPID = IT_DECLARACAO.NATUREZAOPID AND'+
         '       EF_NATUREZAOP.ENTRADAPRECOTRANSF = 1 AND'+
         '       IT_DECLARACAO.EMPRESAID IN '+ Empresa +' AND'+
         '       IT_DECLARACAO.DATAENTRADANFEID BETWEEN '+ QuotedStr( wwdtpcktDtIni2.Text )+' AND '+
                                                                    QuotedStr( wwdtpcktDtFim2.Text )+
         ' GROUP BY IT_MERCADORIA.NCMID,'+
         '          IT_DECLARACAO.FORNECEDORID,'+
         '          EF_ENTIDADE.NOME,'+
         '          IT_DECLARACAO.IMPORTADORID,'+
         '          EF_ENTIDADEIMPORT.NOME,'+
         '          EFTOTAL.VLRTOTAL'+
         ' ORDER BY VLRTOTAL DESC';
 try
  Screen.Cursor := crHourGlass;

  ExecDynamicProvider(-1,iSQL, cdsDIPJ );
  CalcAcumulado(cdsDIPJ,'ACUMULADO','PORC');
  frmRel0031 := TfrmRel0031.Create(nil);

  {*** Mostrando as Somas ***}
  frmRel0031.QrlTitulo.Caption := TBitBtn( Sender ).Caption;
  frmRel0031.QrlSumVlrtotal.Caption   := FormatFloat('###,###,###,##0.00',VlrTotal );
  frmRel0031.QrlSumPercentual.Caption := FormatFloat('###,###,###,##0.00', Percentual );
  frmRel0031.QrlSumAcumulado.Caption  := FormatFloat('###,###,###,##0.00', VlrAcumulado );

  frmRel0031.QuickRep1.Preview;
 finally
  FreeAndNil(frmRel0031.QuickRep1);
  FreeAndNil( frmRel0031 );
  Screen.Cursor := crDefault;
 end;
end;

procedure TfrmPrecoTransferencia.BitBtn9Click(Sender: TObject);
var iSQL,Empresa,Nome : String;
begin
 RelatorioId := 3;
 if not cdsDIPJ.IsEmpty then
    cdsDIPJ.EmptyDataSet;

 case rgrpEmpresa.ItemIndex of
 0 : begin
      Empresa := '(1)';
      Nome    := 'Empresa 1 - Matriz Estoque';
     end;
 1 : begin
      Empresa := '(12)';
      Nome    := 'Empresa 12 - Jaboatão';
     end;
 2 : begin
      Empresa := '(15)';
      Nome    := 'Empresa 15 - Blumenau';
     end;
 else
     begin
      Empresa := '(1,12,15)';
      Nome    := 'Todas as empresas';
     end;
 end;

 iSQL := 'SELECT '+
         '  EF_PRODUTO.NCMID,'+
         '  EF_TECWIN.DESCRICAO,'+
         '  SUM( CASE WHEN EF_NFEITEM.VLRBASEIPI < 1'+
         '        THEN EF_NFEITEM.VLRPRECOTOTAL'+
         '        ELSE EF_NFEITEM.VLRBASEIPI'+
         '       END  ) VLRTOTAL,'+
         '  ROUND( SUM ( (CASE'+
         '                 WHEN EF_NFEITEM.VLRBASEIPI < 1 THEN'+
         '                  EF_NFEITEM.VLRPRECOTOTAL'+
         '                 ELSE'+
         '                  EF_NFEITEM.VLRBASEIPI'+
         '                END) )   / ( EFTOTAL.VLRTOTAL ) * ( 100 ), 10 )  PORC,'+
         '       0 AS ACUMULADO'+
         '  FROM '+
         '  EF_NFE,'+
         '  EF_NFEITEM,'+
         '  EF_NATUREZAOP,'+
         '  EF_PRODUTO,'+
         '  EF_ENTIDADE,'+
         '  EF_TECWIN,'+
         ' (SELECT SUM(CASE'+
         '              WHEN EF_NFEITEM.VLRBASEIPI < 1 THEN'+
         '               EF_NFEITEM.VLRPRECOTOTAL'+
         '              ELSE'+
         '               EF_NFEITEM.VLRBASEIPI'+
         '             END) VLRTOTAL'+
         '    FROM EF_NFE,'+
         '         EF_NFEITEM,'+
         '         EF_NATUREZAOP'+
         '   WHERE EF_NFEITEM.EMPRESAID = EF_NFE.EMPRESAID AND'+
         '         EF_NFEITEM.NFEID = EF_NFE.NFEID AND'+
         '         EF_NFEITEM.DATAEMISSAOID = EF_NFE.DATAEMISSAOID AND'+
         '         EF_NFEITEM.ENTIDADEID = EF_NFE.ENTIDADEID AND'+
         '         EF_NATUREZAOP.NATUREZAOPID = EF_NFE.NATUREZAOPID AND'+
         '         EF_NATUREZAOP.ENTRADADIPJ = 1 AND'+

{ alterar para este código para o ano q vem
  if Empresa = '12' then
    iSQL := iSQL + 'AND ( ( EF_NFE.EMPRESAID = 12 ) OR ( EF_NFE.EMPRESAID = 13 ) ) '
 else
    iSQL := iSQL + ' AND  ( EF_NFE.EMPRESAID = 1 ' +
                            '        OR EF_NFE.EMPRESAID = 2 '+
                            '        OR EF_NFE.EMPRESAID = 3 '+
                            '        OR EF_NFE.EMPRESAID = 4 '+
                            '        OR EF_NFE.EMPRESAID = 5 '+
                            '       )';
 iSQL := iSQL +}

         '         EF_NFE.EMPRESAID IN '+ Empresa +' AND'+
         '         EF_NFE.DATAENTRADA BETWEEN '+ QuotedStr( wwdtpcktDtIni2.Text )+' AND '+
                                                 QuotedStr( wwdtpcktDtFim2.Text )+
         ' ) EFTOTAL'+
         ' WHERE'+
         '  EF_NFEITEM.EMPRESAID = EF_NFE.EMPRESAID AND'+
         '  EF_NFEITEM.NFEID = EF_NFE.NFEID AND'+
         '  EF_NFEITEM.DATAEMISSAOID = EF_NFE.DATAEMISSAOID AND'+
         '  EF_NFEITEM.ENTIDADEID = EF_NFE.ENTIDADEID AND'+
         '  EF_NATUREZAOP.NATUREZAOPID = EF_NFE.NATUREZAOPID AND'+
         '  EF_NATUREZAOP.ENTRADADIPJ = 1 AND'+
         '  EF_PRODUTO.EMPRESAID = EF_NFEITEM.EMPRESAID AND'+
         '  EF_PRODUTO.PRODUTOID = EF_NFEITEM.PRODUTOID  AND'+
         '  EF_TECWIN.NCMID(+) = EF_PRODUTO.NCMID AND'+
         '  EF_ENTIDADE.ENTIDADEID = EF_NFE.ENTIDADEID AND'+
         '  EF_NFE.EMPRESAID = '+ Empresa +' AND'+
         '  EF_NFE.DATAENTRADA BETWEEN '+ QuotedStr( wwdtpcktDtIni2.Text )+' AND '+
              QuotedStr( wwdtpcktDtFim2.Text )+
         ' GROUP BY EF_PRODUTO.NCMID,'+
         '            EF_TECWIN.DESCRICAO,EFTOTAL.VLRTOTAL'+
         ' ORDER BY VLRTOTAL DESC';
 try
  Screen.Cursor := crHourGlass;

  ExecDynamicProvider(-1,iSQL,cdsDIPJ );
  CalcAcumulado(cdsDIPJ,'ACUMULADO','PORC');

  frmRel0025 := TfrmRel0025.Create(nil);

  {*** Mostrando as Somas ***}
  frmRel0025.QrlTitulo.Caption := Nome + ' ' +TBitBtn( Sender ).Caption;
  frmRel0025.QrlSumVlrtotal.Caption   := FormatFloat('###,###,###,##0.00',VlrTotal );
  frmRel0025.QrlSumPercentual.Caption := FormatFloat('###,###,###,##0.00', Percentual );

  frmRel0025.QuickRep1.Preview;
 finally
  FreeAndNil(frmRel0025.QuickRep1);
  FreeAndNil( frmRel0025 );
  Screen.Cursor := crDefault;
 end;
end;

procedure TfrmPrecoTransferencia.BitBtn8Click(Sender: TObject);
var iSQL,Empresa : String;
begin
 RelatorioId := 9;
 if not cdsDIPJ.IsEmpty then
    cdsDIPJ.EmptyDataSet;

 case rgrpEmpresa.ItemIndex of
 0 : Empresa := '(1)';
 1 : Empresa := '(12)';
 2 : Empresa := '(15)';
 else
     Empresa := '(1,12,15)';
 end;

 iSQL := ' SELECT IT_DECLARACAO.FORNECEDORID,'+
         '        EF_ENTIDADE.NOME,'+
         '        EF_ENTIDADE.PAIS,'+
         '        ROUND(SUM( IT_MERCADORIA.VLRFOB ),2) VLRTOTAL,'+
         '        ROUND( ( CASE WHEN SUM( IT_MERCADORIA.VLRFOB ) > 0'+
         '           THEN ( ( SUM ( IT_MERCADORIA.VLRFOB ) / ITPERC.PERCENTUAL ) * 100)'+
         '           ELSE 0'+
         '          END'+
         '        ),10) PORC,'+
         '        0 AS ACUMULADO'+
         '  FROM IT_DECLARACAO,'+
         '       IT_MERCADORIA,'+
         '       EF_NATUREZAOP,'+
         '       EF_PRODUTO,'+
         '       EF_ENTIDADE,'+
         '       (SELECT SUM( IT_MERCADORIA.VLRFOB ) PERCENTUAL'+
         '          FROM IT_DECLARACAO,'+
         '               IT_MERCADORIA,'+
         '               EF_NATUREZAOP'+
         '         WHERE IT_MERCADORIA.DECLARACAOID = IT_DECLARACAO.DECLARACAOID AND'+
         '               EF_NATUREZAOP.NATUREZAOPID = IT_DECLARACAO.NATUREZAOPID AND'+
         '               EF_NATUREZAOP.ENTRADAPRECOTRANSF = 1 AND'+
         '               IT_DECLARACAO.DATAENTRADANFEID BETWEEN '+ QuotedStr( wwdtpcktDtIni2.Text )+' AND '+
                                                                   QuotedStr( wwdtpcktDtFim2.Text )+
         '       ) ITPERC'+
         ' WHERE IT_MERCADORIA.DECLARACAOID = IT_DECLARACAO.DECLARACAOID AND'+
         '       EF_NATUREZAOP.NATUREZAOPID = IT_DECLARACAO.NATUREZAOPID AND'+
         '       EF_NATUREZAOP.ENTRADAPRECOTRANSF = 1 AND'+
         '       EF_ENTIDADE.ENTIDADEID(+) = IT_DECLARACAO.FORNECEDORID AND'+
         '       EF_PRODUTO.EMPRESAID = IT_MERCADORIA.EMPRESAID AND'+
         '       EF_PRODUTO.PRODUTOID = IT_MERCADORIA.PRODUTOID AND'+
         '       IT_DECLARACAO.DATAENTRADANFEID BETWEEN '+ QuotedStr( wwdtpcktDtIni2.Text )+' AND '+
                                                                    QuotedStr( wwdtpcktDtFim2.Text )+
         ' GROUP BY IT_DECLARACAO.FORNECEDORID,'+
         '          EF_ENTIDADE.NOME,'+
         '          EF_ENTIDADE.PAIS,'+
         '          ITPERC.PERCENTUAL';

 try
  Screen.Cursor := crHourGlass;

  ExecDynamicProvider(-1,iSQL,cdsDIPJ );

  CalcAcumulado(cdsDIPJ,'ACUMULADO','PORC');
  frmRel0030 := TfrmRel0030.Create(nil);

  {*** Mostrando as Somas ***}
  frmRel0030.QrlTitulo.Caption := TBitBtn( Sender ).Caption;
  frmRel0030.QrlSumVlrtotal.Caption   := FormatFloat('###,###,###,##0.00',VlrTotal );
  frmRel0030.QrlSumPercentual.Caption := FormatFloat('###,###,###,##0.00', Percentual );

  frmRel0030.QuickRep1.Preview;
 finally
  FreeAndNil( frmRel0030.QuickRep1 );
  FreeAndNil( frmRel0030 );
  Screen.Cursor := crDefault;
 end;
end;

procedure TfrmPrecoTransferencia.BitBtn10Click(Sender: TObject);
var iSQL,Empresa : String;
    i            : Integer;
    VlrTotalFob  : Currency;
    Ncm, Descr   : WideString;
begin
 RelatorioId := 10;
 VlrTotalFob := 0;
 if dmEF.cdsPrecoTransf.IsEmpty then
    raise Exception.Create('É necessário gerar o Preço de Transferência!');

 if not cdsRelDIPJ.IsEmpty then
    begin
     cdsRelDIPJ.DeleteIndex('idx1');
     cdsRelDIPJTmp.DeleteIndex('idx1');
     cdsRelDIPJTmp.DeleteIndex('idx2');
     cdsRelDIPJ.EmptyDataSet;
    end;

 case rgrpEmpresa.ItemIndex of
 0 : Empresa := '(1)';
 1 : Empresa := '(12)';
 2 : Empresa := '(15)';
 else
     Empresa := '(1,12,15)';
 end;

 iSQL := ' SELECT '+
         '   0 INDEXID,'+
         '   EF_PRODUTO.NCMID,'+
         '   TRIM( '' '' FROM EF_PRODUTO.DESCRICAONCM ) DESCRICAOPORTUGUES ,'+
         '        IT_DECLARACAO.FORNECEDORID,'+
         '        EF_ENTIDADE.NOME NOMEFORNECEDOR,'+
         '        EF_PRODUTO.UNIDADEID,'+
         '        NVL(SUM( IT_MERCADORIA.QUANTIDADE ),0) QUANTIDADE,'+
         '        ROUND(NVL(SUM( IT_MERCADORIA.VLRFOB ),0),2) VLRTOTALFOB,'+
         '        NVL(ROUND( ( CASE WHEN SUM( IT_MERCADORIA.VLRFOB ) > 0 THEN '+
         '                        ( ( SUM ( IT_MERCADORIA.VLRFOB ) / ITPERC.PERCENTUAL ) * 100)'+
         '           ELSE 0'+
         '          END'+
         '        ),10),0) PERCENTUAL,'+
         '        0 VLRACUMULADO,'+
         '        0 VLRAJUSTE,'+
         '        0 VLRPRECOTRANSF,'+
         '        0 VLRPRECOPRATICADO,'+
         '        0 VLRUNITPRATICADO,'+
         '        0 VLRUNITPRECOTRANSF'+
         '  FROM IT_DECLARACAO IT_DECLARACAO,'+
         '       IT_MERCADORIA IT_MERCADORIA,'+
         '       EF_NATUREZAOP EF_NATUREZAOP,'+
         '       EF_PRODUTO EF_PRODUTO,'+
         '       EF_PRODUTO EF_PRODSIMILAR,'+
         '       EF_ENTIDADE EF_ENTIDADE,'+
         '       (SELECT SUM( IT_MERCADORIA.VLRFOB ) PERCENTUAL'+
         '          FROM IT_DECLARACAO,'+
         '               IT_MERCADORIA,'+
         '               EF_NATUREZAOP'+
         '         WHERE IT_MERCADORIA.DECLARACAOID = IT_DECLARACAO.DECLARACAOID AND'+
         '               EF_NATUREZAOP.NATUREZAOPID = IT_DECLARACAO.NATUREZAOPID AND'+
         '               EF_NATUREZAOP.ENTRADAPRECOTRANSF = 1 AND'+
         '               IT_DECLARACAO.DATAENTRADANFEID BETWEEN '+ QuotedStr( wwdtpcktDtIni2.Text )+' AND '+
                                                                   QuotedStr( wwdtpcktDtFim2.Text )+
         '       ) ITPERC'+
         ' WHERE IT_MERCADORIA.DECLARACAOID = IT_DECLARACAO.DECLARACAOID AND'+
         '       EF_NATUREZAOP.NATUREZAOPID = IT_DECLARACAO.NATUREZAOPID AND'+
         '       EF_NATUREZAOP.ENTRADAPRECOTRANSF = 1 AND'+
         '       EF_ENTIDADE.ENTIDADEID(+) = IT_DECLARACAO.FORNECEDORID AND'+
         '       EF_PRODUTO.EMPRESAID = IT_MERCADORIA.EMPRESAID AND'+
         '       EF_PRODUTO.PRODUTOID = IT_MERCADORIA.PRODUTOID AND'+
         '       EF_PRODUTO.EMPRESASIMILARID = EF_PRODSIMILAR.EMPRESAID(+) AND'+
         '       EF_PRODUTO.PRODUTOSIMILARID = EF_PRODSIMILAR.PRODUTOID(+) AND'+
         '       IT_DECLARACAO.DATAENTRADANFEID BETWEEN '+ QuotedStr( wwdtpcktDtIni2.Text )+' AND '+
                                                                    QuotedStr( wwdtpcktDtFim2.Text )+
         ' GROUP BY '+
         '          EF_PRODUTO.NCMID,'+
         '          EF_PRODUTO.DESCRICAONCM,'+
         '          IT_DECLARACAO.FORNECEDORID,'+
         '          EF_ENTIDADE.NOME,'+
         '          EF_PRODUTO.UNIDADEID,'+
         '          ITPERC.PERCENTUAL'+
         ' ORDER BY VLRTOTALFOB DESC';
 try
  try
  Screen.Cursor := crHourGlass;
  ExecDynamicProvider( -1,iSQL,cdsRelDIPJTmp );

  cdsRelDIPJTmp.AddIndex('idx1','NCMID;DESCRICAOPORTUGUES',[ixPrimary]);
  cdsRelDIPJTmp.AddIndex('idx2','VLRTOTALFOB',[ixPrimary]);
  cdsRelDIPJTmp.IndexName := 'idx1';

  with dmEF do
  begin
   cdsPrecoTransf.First;
   while not cdsPrecoTransf.eof do
   begin
    Ncm   := cdsPrecoTransfNCMID.AsString;
    Descr := copy ( cdsPrecoTransfDESCRICAONCM.AsString,1,254 );

    if cdsRelDIPJTmp.Locate('NCMID;DESCRICAOPORTUGUES',VarArrayOf([ Ncm, Descr]),[loCaseInsensitive, loPartialKey]) then
       begin
        cdsRelDIPJTmp.Edit;
        cdsRelDIPJTmpVLRAJUSTE.AsCurrency          := cdsRelDIPJTmpVLRAJUSTE.AsCurrency + cdsPrecoTransfVLR_AJUSTE.AsCurrency;
        cdsRelDIPJTmpVLRPRECOPRATICADO.AsCurrency  := cdsRelDIPJTmpVLRPRECOPRATICADO.AsCurrency + cdsPrecoTransfVLRCUSTOTOTAL.AsCurrency;
        cdsRelDIPJTmpVLRPRECOTRANSF.AsCurrency     := cdsRelDIPJTmpVLRPRECOTRANSF.AsCurrency + cdsPrecoTransfVLRPRECOTRANSF.AsCurrency;
        cdsRelDIPJTmpVLRUNITPRATICADO.AsCurrency   := ( cdsRelDIPJTmpVLRPRECOPRATICADO.AsCurrency / cdsRelDIPJTmpQUANTIDADE.AsCurrency );
        cdsRelDIPJTmpVLRUNITPRECOTRANSF.AsCurrency := ( cdsRelDIPJTmpVLRUNITPRECOTRANSF.AsCurrency / cdsRelDIPJTmpQUANTIDADE.AsCurrency );
        cdsRelDIPJTmp.Post;
       end
    else
      begin
       cdsRelDIPJTmp.Insert;
//       cdsRelDIPJPRODUTOID.AsInteger           := cdsPrecoTransfPROD_SIMILARID.AsInteger;
       cdsRelDIPJTmpNCMID.AsString                := cdsPrecoTransfNCMID.AsString;
       cdsRelDIPJTmpDESCRICAOPORTUGUES.AsString   := cdsPrecoTransfDESCRICAONCM.AsString;
       cdsRelDIPJTmpQUANTIDADE.AsCurrency         := cdsPrecoTransfQUANTIDADE.AsCurrency;
       cdsRelDIPJTmpVLRAJUSTE.AsCurrency          := cdsPrecoTransfVLR_AJUSTE.AsCurrency;
       cdsRelDIPJTmpVLRPRECOPRATICADO.AsCurrency  := cdsPrecoTransfVLRCUSTOTOTAL.AsCurrency;
       cdsRelDIPJTmpVLRPRECOTRANSF.AsCurrency     := cdsPrecoTransfVLRPRECOTRANSF.AsCurrency;
       cdsRelDIPJTmpVLRUNITPRATICADO.AsCurrency   := ( cdsRelDIPJTmpVLRPRECOPRATICADO.AsCurrency / cdsRelDIPJTmpQUANTIDADE.AsCurrency );
       cdsRelDIPJTmpVLRUNITPRECOTRANSF.AsCurrency := ( cdsRelDIPJTmpVLRUNITPRECOTRANSF.AsCurrency / cdsRelDIPJTmpQUANTIDADE.AsCurrency );
       cdsRelDIPJTmp.Post;
      end;
    cdsPrecoTransf.Next;
   end;
  end;

  // Ordena do Crescente
  cdsRelDIPJTmp.IndexName := 'idx2';

  // Ordena do Descrescente
  cdsRelDIPJTmp.Last;
  for i := 1 to cdsRelDIPJTmp.RecordCount  do
  begin
   cdsRelDIPJ.Insert;
   cdsRelDIPJ.FieldByName('INDEXID').AsInteger :=  i+1;
   cdsRelDIPJ.FieldByName('NCMID').AsString                 := cdsRelDIPJTmpNCMID.AsString;
   cdsRelDIPJ.FieldByName('DESCRICAOPORTUGUES').AsString    := cdsRelDIPJTmpDESCRICAOPORTUGUES.AsString;
   cdsRelDIPJ.FieldByName('FORNECEDORID').AsInteger         := cdsRelDIPJTmpFORNECEDORID.AsInteger;
   cdsRelDIPJ.FieldByName('NOMEFORNECEDOR').AsString        := cdsRelDIPJTmpNOMEFORNECEDOR.AsString;
   cdsRelDIPJ.FieldByName('UNIDADEID').AsString             := cdsRelDIPJTmpUNIDADEID.AsString;
   cdsRelDIPJ.FieldByName('QUANTIDADE').AsCurrency          := cdsRelDIPJTmpQUANTIDADE.AsCurrency;
   cdsRelDIPJ.FieldByName('PERCENTUAL').AsCurrency          := cdsRelDIPJTmpPERCENTUAL.AsCurrency;
   cdsRelDIPJ.FieldByName('VLRTOTALFOB').AsCurrency         := cdsRelDIPJTmpVLRTOTALFOB.AsCurrency;
   cdsRelDIPJ.FieldByName('VLRACUMULADO').AsCurrency        := cdsRelDIPJTmpVLRACUMULADO.AsCurrency;
   cdsRelDIPJ.FieldByName('VLRAJUSTE').AsCurrency           := cdsRelDIPJTmpVLRAJUSTE.AsCurrency;
   cdsRelDIPJ.FieldByName('VLRPRECOTRANSF').AsCurrency      := cdsRelDIPJTmpVLRPRECOTRANSF.AsCurrency;
   cdsRelDIPJ.FieldByName('VLRPRECOPRATICADO').AsCurrency   := cdsRelDIPJTmpVLRPRECOPRATICADO.AsCurrency;
   cdsRelDIPJ.FieldByName('VLRUNITPRATICADO').AsCurrency    := cdsRelDIPJTmpVLRUNITPRATICADO.AsCurrency;
   cdsRelDIPJ.FieldByName('VLRUNITPRECOTRANSF').AsCurrency  := cdsRelDIPJTmpVLRUNITPRECOTRANSF.AsCurrency;
   cdsRelDIPJ.Post;
   VLRTOTALFOB := VLRTOTALFOB + cdsRelDIPJTmpVLRTOTALFOB.AsCurrency;
   cdsRelDIPJTmp.Prior;
   end;
   frmRelSaidasDivisas := TfrmRelSaidasDivisas.Create(nil);

   cdsRelDIPJ.AddIndex('idx1','INDEXID',[ixPrimary]);
   cdsRelDIPJ.IndexName := 'idx1';
   CalcAcumuladoSaidas( cdsRelDIPJ,VlrTotalFob );
   cdsRelDIPJ.First;

   frmRelSaidasDivisas.QuickRep1.Preview;

  except
   on E: Exception do MessageDlg( E.Message, mtInformation, [mbOK], 0 );
  end;
 finally
  FreeAndNil( frmRelSaidasDivisas.QuickRep1 );
  FreeAndNil( frmRelSaidasDivisas );
  Screen.Cursor := crDefault;
 end;
end;

procedure TfrmPrecoTransferencia.CalcAcumulado( cds : TClientDataSet; NomeValor,
  NomePorc: String);
var Acumulado : Currency;
begin
 {*** Cacula o Valor Acumulado
  E necessario CRIAR no Select um campo chamado ACUMULADO  EX: 0 as acumulado ***}

 VlrTotal   := 0;
 Percentual := 0;
 Acumulado  := 0;
 cds.First;
 while not cds.Eof do
 begin
  if ( RelatorioId <> 10 ) then
     begin
      VlrTotal   := VlrTotal   + cds.FieldByName('VLRTOTAL').AsCurrency;
      Percentual := Percentual + cds.FieldByName('PORC').AsCurrency;
      if ( RelatorioId = 7 ) OR (  RelatorioId = 8 ) then
         VlrAcumulado  := VlrAcumulado + cds.FieldByName('QUANTIDADE').AsCurrency;
     end;

  Acumulado := Acumulado + cds.FieldByName(NomePorc).AsCurrency;
  cds.Edit;
  cds.FieldByName(NomeValor).AsCurrency := Acumulado;
  cds.Post;
  cds.Next;
 end;
end;

procedure TfrmPrecoTransferencia.cdsRelDIPJBACKNewRecord(DataSet: TDataSet);
begin
 cdsRelDIPJ.FieldByName('VLRTOTALFOB').AsCurrency := 0;
 cdsRelDIPJ.FieldByName('VLRPRECOTRANSF').AsCurrency := 0;
 cdsRelDIPJ.FieldByName('VLRPRECOPRATICADO').AsCurrency := 0;
 cdsRelDIPJ.FieldByName('VLRAJUSTE').AsCurrency := 0;
 cdsRelDIPJ.FieldByName('PERCENTUAL').AsCurrency := 0;
end;

procedure TfrmPrecoTransferencia.BitBtn11Click(Sender: TObject);
var iSQL,iSQL2,Empresa,Nome : String;
begin
 RelatorioId := 11;
 if not cdsDIPJ.IsEmpty then
    cdsDIPJ.EmptyDataSet;

 case rgrpEmpresa.ItemIndex of
 0 : Empresa := '(1)';
 1 : Empresa := '(12)';
 2 : Empresa := '(15)';
 else
     Empresa := '(1,12,15)';
 end;

 iSQL := 'SELECT '+
         '(CASE WHEN ( EF_NATUREZAOP.CFOP = 1101 ) OR ( EF_NATUREZAOP.CFOP = 2101 )  THEN '+
         '       ''Insumo para Industrialização ''' +
         '      ELSE'+
         '      (CASE WHEN ( EF_NATUREZAOP.CFOP = 1102 ) OR ( EF_NATUREZAOP.CFOP = 2102 ) THEN'+
         '             ''Mercadorias de Comercialização'' '+
         '            ELSE'+
         '            (CASE WHEN ( EF_NATUREZAOP.CFOP = 1124 ) OR ( EF_NATUREZAOP.CFOP = 2124 )  THEN'+
         '                   ''Industrialização Efetuada para Outras Empresas'' '+
         '                  ELSE'+
         '                  (CASE WHEN ( EF_NATUREZAOP.CFOP = 1202 ) OR ( EF_NATUREZAOP.CFOP = 2202 )  THEN'+
         '                         ''Devoluções de Venda'' '+
         '                        ELSE'+
         '                         (CASE WHEN ( EF_NATUREZAOP.CFOP = 3101 )  THEN'+
         '                                ''Insumo para Industrialização (Externo)'' '+
         '                               ELSE'+
         '                               (CASE WHEN ( EF_NATUREZAOP.CFOP = 3102 )  THEN'+
         '                                      ''Mercadorias de Comercialização (Externo)'' '+
         '                                     ELSE'+
         '                                    (CASE WHEN ( EF_NATUREZAOP.CFOP = 3202 ) THEN'+
         '                                           ''Devoluções de Venda'' '+
         '                                          ELSE'+
         '                                          (CASE WHEN ( EF_NATUREZAOP.CFOP = 3949 ) THEN'+
         '                                                 ''Outras Entradas (Externo)'' '+
         '                                                ELSE'+
         '                                                 ''Outras Entradas'' '+
         '                                            END'+
         '                                           )'+
         '                                      END'+
         '                                      )'+
         '                                END'+
         '                               )'+
         '                          END'+
         '                         )'+
         '                   END'+
         '                  )'+
         '             END)'+
         '       END)'+
         ' END) Natureza,'+
         '       ROUND(SUM(CASE'+
         '             WHEN EF_NFEITEM.VLRBASEIPI > 0 THEN'+
         '              ( EF_NFEITEM.VLRPRECOTOTAL + EF_NFEITEM.VLRIPI )'+
         '             ELSE'+
         '                0'+
         '           END),2) VLRCOMCREDITO,'+
         '       ROUND(SUM(CASE'+
         '             WHEN EF_NFEITEM.VLRBASEIPI <= 0 THEN'+
         '              EF_NFEITEM.VLRPRECOTOTAL'+
         '             ELSE'+
         '              0'+
         '           END),2) VLRSEMCREDITO,'+
         '       ROUND(SUM(EF_NFEITEM.VLRIPI),2) VLRIPICREDITADO'+
         '  FROM EF_NFE,'+
         '  EF_NFEITEM,'+
         '  EF_NATUREZAOP'+
         ' WHERE EF_NFEITEM.EMPRESAID = EF_NFE.EMPRESAID'+
         '  AND EF_NFEITEM.NFEID = EF_NFE.NFEID'+
         '  AND EF_NFEITEM.DATAEMISSAOID = EF_NFE.DATAEMISSAOID'+
         '  AND EF_NFEITEM.ENTIDADEID = EF_NFE.ENTIDADEID'+
         '  AND EF_NATUREZAOP.NATUREZAOPID = EF_NFE.NATUREZAOPID'+
         '  AND EF_NATUREZAOP.ENTRADADIPJ = 1';

 if      Empresa = '(12)' then
         iSQL := iSQL + 'AND ( ( EF_NFE.EMPRESAID = 12 ) OR ( EF_NFE.EMPRESAID = 13 ) ) '
 else if Empresa = '(1)' then
         iSQL := iSQL + ' AND  ( EF_NFE.EMPRESAID = 1 ' +
                        '        OR EF_NFE.EMPRESAID = 2 '+
                        '        OR EF_NFE.EMPRESAID = 3 '+
                        '        OR EF_NFE.EMPRESAID = 4 '+
                        '        OR EF_NFE.EMPRESAID = 5 '+
                        '       )'
 else if Empresa = '(15)' then
         iSQL := iSQL + ' AND  ( EF_NFE.EMPRESAID = 15 ' +
                        '        OR EF_NFE.EMPRESAID = 17 )';

 iSQL := iSQL+
         '  AND EF_NFE.DATAENTRADA BETWEEN '+ QuotedStr( wwdtpcktDtIni2.Text )+' AND '+
              QuotedStr( wwdtpcktDtFim2.Text )+
         ' GROUP BY '+
         '(CASE WHEN ( EF_NATUREZAOP.CFOP = 1101 ) OR ( EF_NATUREZAOP.CFOP = 2101 )  THEN '+
         '       ''Insumo para Industrialização ''' +
         '      ELSE'+
         '      (CASE WHEN ( EF_NATUREZAOP.CFOP = 1102 ) OR ( EF_NATUREZAOP.CFOP = 2102 ) THEN'+
         '             ''Mercadorias de Comercialização'' '+
         '            ELSE'+
         '            (CASE WHEN ( EF_NATUREZAOP.CFOP = 1124 ) OR ( EF_NATUREZAOP.CFOP = 2124 )  THEN'+
         '                   ''Industrialização Efetuada para Outras Empresas'' '+
         '                  ELSE'+
         '                  (CASE WHEN ( EF_NATUREZAOP.CFOP = 1202 ) OR ( EF_NATUREZAOP.CFOP = 2202 )  THEN'+
         '                         ''Devoluções de Venda'' '+
         '                        ELSE'+
         '                         (CASE WHEN ( EF_NATUREZAOP.CFOP = 3101 )  THEN'+
         '                                ''Insumo para Industrialização (Externo)'' '+
         '                               ELSE'+
         '                               (CASE WHEN ( EF_NATUREZAOP.CFOP = 3102 )  THEN'+
         '                                      ''Mercadorias de Comercialização (Externo)'' '+
         '                                     ELSE'+
         '                                    (CASE WHEN ( EF_NATUREZAOP.CFOP = 3202 ) THEN'+
         '                                           ''Devoluções de Venda'' '+
         '                                          ELSE';
 iSQL2 := '                                          (CASE WHEN ( EF_NATUREZAOP.CFOP = 3949 ) THEN'+
          '                                                 ''Outras Entradas (Externo)'' '+
          '                                                ELSE'+
          '                                                 ''Outras Entradas'' '+
          '                                            END'+
          '                                           )'+
          '                                      END'+
          '                                      )'+
          '                                END'+
          '                               )'+
          '                          END'+
          '                         )'+
          '                   END'+
          '                  )'+
          '             END)'+
          '       END)'+
          ' END)';
 try
  Screen.Cursor := crHourGlass;

  ExecDynamicProvider(-1,iSQL + iSQL2,cdsDIPJ );
  frmRel0029 := TfrmRel0029.Create(nil);

  {*** Mostrando as Somas ***}
  frmRel0029.QrlTitulo.Caption := Nome+' '+TBitBtn( Sender ).Caption;
  frmRel0029.QuickRep1.Preview;
 finally
  FreeAndNil(frmRel0029.QuickRep1);
  FreeAndNil( frmRel0029 );
  Screen.Cursor := crDefault;
 end;
end;

procedure TfrmPrecoTransferencia.BitBtn12Click(Sender: TObject);
var iSQL,Empresa,Nome : String;
begin
 RelatorioId := 12;
 if not cdsDIPJ.IsEmpty then
    cdsDIPJ.EmptyDataSet;

 case rgrpEmpresa.ItemIndex of
 0 : Empresa := '(1)';
 1 : Empresa := '(12)';
 2 : Empresa := '(15)';
 else
     Empresa := '(1,12,15)';
 end;

 iSQL := 'SELECT '+
         ' (CASE WHEN ( EF_NATUREZAOP.CFOP = 5101 ) OR ( EF_NATUREZAOP.CFOP = 6101 )  THEN'+
         '        ''Produção do Estabelecimento '''+
         '       ELSE (CASE WHEN ( EF_NATUREZAOP.CFOP = 5102 ) OR ( EF_NATUREZAOP.CFOP = 6102 ) OR'+
         '                       ( EF_NATUREZAOP.CFOP = 6108 )   THEN'+
         '                   ''Mercadorias de Comercialização Brasil'''+
         '                  ELSE'+
         '                   (CASE WHEN ( EF_NATUREZAOP.CFOP = 5202 ) OR ( EF_NATUREZAOP.CFOP = 6202 )  THEN'+
         '                          ''Devoluções de Compras'''+
         '                         ELSE'+
         '                          (CASE WHEN ( EF_NATUREZAOP.CFOP = 7102 )  THEN'+
         '                                 ''Mercadorias de Comercialização (Externo)'''+
         '                                ELSE'+
         '                                 (CASE WHEN ( EF_NATUREZAOP.CFOP = 7949 )  THEN'+
         '                                        ''Outras Saídas para o Mercador (Externo)'''+
         '                                       ELSE'+
         '                                        ''Outras Saídas'''+
         '                                   END'+
         '                                  )'+
         '                           END'+
         '                          )'+
         '                    END)'+
         '             END)'+
         '  END) Natureza,'+
         '       ROUND ( SUM(CASE'+
         '             WHEN EF_NFSITEM.VLRBASEIPI > 0 THEN'+
         '             (EF_NFSITEM.VLRPRECOTOTAL + EF_NFSITEM.VLRIPI)'+
         '             ELSE'+
         '              0'+
         '           END),2) VLRCOMDEBITO,'+
         '       ROUND(SUM(CASE'+
         '             WHEN EF_NFSITEM.VLRBASEIPI <= 0 THEN'+
         '              EF_NFSITEM.VLRPRECOTOTAL'+
         '             ELSE'+
         '              0'+
         '           END),2) VLRSEMDEBITO,'+
         '       ROUND(SUM(EF_NFSITEM.VLRIPI),2) VLRIPIDEBITADO'+
         '  FROM EF_NFS        EF_NFS,'+
         '       EF_NFSITEM    EF_NFSITEM,'+
         '       EF_NATUREZAOP EF_NATUREZAOP'+
         ' WHERE EF_NFSITEM.EMPRESAID = EF_NFS.EMPRESAID'+
         '   AND EF_NFSITEM.NFSID = EF_NFS.NFSID'+
         '   AND EF_NFSITEM.DATAEMISSAOID = EF_NFS.DATAEMISSAOID'+
         '   AND EF_NATUREZAOP.NATUREZAOPID = EF_NFS.NATUREZAOPID'+
         '   AND EF_NATUREZAOP.SAIDADIPJ = 1';

 if      Empresa = '(12)' then
         iSQL := iSQL + 'AND ( ( EF_NFS.EMPRESAID = 12 ) OR ( EF_NFS.EMPRESAID = 13 ) ) '
 else if Empresa = '(1)' then
         iSQL := iSQL + ' AND  ( EF_NFS.EMPRESAID = 1 ' +
                        '        OR EF_NFS.EMPRESAID = 2 '+
                        '        OR EF_NFS.EMPRESAID = 3 '+
                        '        OR EF_NFS.EMPRESAID = 4 '+
                        '        OR EF_NFS.EMPRESAID = 5 '+
                        '       )'
 else if Empresa = '(15)' then
         iSQL := iSQL + ' AND  ( EF_NFS.EMPRESAID = 15 ' +
                        '        OR EF_NFS.EMPRESAID = 17 )';

 iSQL := iSQL+
         '   AND EF_NFS.DATAEMISSAOID BETWEEN '+ QuotedStr( wwdtpcktDtIni2.Text )+ ' AND '+
               QuotedStr( wwdtpcktDtFim2.Text )+
         ' GROUP BY '+
         ' (CASE WHEN ( EF_NATUREZAOP.CFOP = 5101 ) OR ( EF_NATUREZAOP.CFOP = 6101 )  THEN'+
         '        ''Produção do Estabelecimento '''+
         '       ELSE (CASE WHEN ( EF_NATUREZAOP.CFOP = 5102 ) OR ( EF_NATUREZAOP.CFOP = 6102 ) OR'+
         '                       ( EF_NATUREZAOP.CFOP = 6108 )   THEN'+
         '                   ''Mercadorias de Comercialização Brasil'''+
         '                  ELSE'+
         '                   (CASE WHEN ( EF_NATUREZAOP.CFOP = 5202 ) OR ( EF_NATUREZAOP.CFOP = 6202 )  THEN'+
         '                          ''Devoluções de Compras'''+
         '                         ELSE'+
         '                          (CASE WHEN ( EF_NATUREZAOP.CFOP = 7102 )  THEN'+
         '                                 ''Mercadorias de Comercialização (Externo)'''+
         '                                ELSE'+
         '                                 (CASE WHEN ( EF_NATUREZAOP.CFOP = 7949 )  THEN'+
         '                                        ''Outras Saídas para o Mercador (Externo)'''+
         '                                       ELSE'+
         '                                        ''Outras Saídas'''+
         '                                   END'+
         '                                  )'+
         '                           END'+
         '                          )'+
         '                    END)'+
         '             END)'+
         '  END)';

 try
  Screen.Cursor := crHourGlass;
  ExecDynamicProvider(-1,iSQL,cdsDIPJ );
  frmRel0028 := TfrmRel0028.Create(nil);

  {*** Mostrando as Somas ***}
  frmRel0028.QrlTitulo.Caption :=Nome+' '+TBitBtn( Sender ).Caption;
  frmRel0028.QuickRep1.Preview;
 finally
  FreeAndNil(frmRel0028.QuickRep1);
  FreeAndNil( frmRel0028 );
  Screen.Cursor := crDefault;
 end;

end;

procedure TfrmPrecoTransferencia.FormataCampos( var cds : TClientDataSet );
var i: Integer;
begin
 for i:= 0 to cds.Fields.Count -1 do
  begin
   if ( cds.Fields[i].DataType = ftFMTBcd ) or
      ( cds.Fields[i].DataType = ftCurrency )or
      ( cds.Fields[i].DataType = ftFloat ) then
      cds.Fields[i].EditMask := '###,###,###,##0.00';
  end;
end;

procedure TfrmPrecoTransferencia.cdsdiNewRecord(DataSet: TDataSet);
begin
 cdsRelDIPJ.FieldByName('VLRTOTALFOB').AsCurrency := 0;
 cdsRelDIPJ.FieldByName('VLRPRECOTRANSF').AsCurrency := 0;
 cdsRelDIPJ.FieldByName('VLRPRECOPRATICADO').AsCurrency := 0;
 cdsRelDIPJ.FieldByName('VLRAJUSTE').AsCurrency := 0;
 cdsRelDIPJ.FieldByName('PERCENTUAL').AsCurrency := 0;
end;

procedure TfrmPrecoTransferencia.CalcAcumuladoSaidas(var cds: TClientDataSet;
  VlrTotalFOB: Currency);
var Acumulado : Currency;
begin
 frmRelSaidasDivisas.VlrAjuste         := 0;
 frmRelSaidasDivisas.VlrPrecoTransf    := 0;
 frmRelSaidasDivisas.VlrPrecoPraticado := 0;
 frmRelSaidasDivisas.VlrTotalOperacao  := 0;

 VlrTotal   := 0;
 Percentual := 0;
 Acumulado  := 0;
 cds.First;
 while not cds.Eof do
 begin
  cds.Edit;
  Percentual :=cds.FieldByName('VLRTOTALFOB').AsCurrency / VlrTotalFOB * 100;
  cds.FieldByName('PERCENTUAL').AsCurrency := Percentual;
  Acumulado := Acumulado + cds.FieldByName('PERCENTUAL').AsCurrency;
  cds.FieldByName('VLRACUMULADO').AsCurrency := Acumulado;

  {*** Totalizadores das Saídas ***}
  frmRelSaidasDivisas.VlrAjuste         := frmRelSaidasDivisas.VlrAjuste + cds.FieldByName('VLRAJUSTE').AsCurrency;
  frmRelSaidasDivisas.VlrPrecoTransf    := frmRelSaidasDivisas.VlrPrecoTransf + cds.FieldByName('VLRPRECOTRANSF').AsCurrency;
  frmRelSaidasDivisas.VlrPrecoPraticado := frmRelSaidasDivisas.VlrPrecoPraticado + cds.FieldByName('VLRPRECOPRATICADO').AsCurrency;
  frmRelSaidasDivisas.VlrTotalOperacao  := frmRelSaidasDivisas.VlrTotalOperacao + cds.FieldByName('VLRTOTALFOB').AsCurrency;

  cds.Post;
  cds.Next;
 end;
end;

procedure TfrmPrecoTransferencia.cdsRelDIPJNewRecord(DataSet: TDataSet);
begin
 cdsRelDIPJ.FieldByName('VLRTOTALFOB').AsCurrency := 0;
 cdsRelDIPJ.FieldByName('VLRPRECOTRANSF').AsCurrency := 0;
 cdsRelDIPJ.FieldByName('VLRPRECOPRATICADO').AsCurrency := 0;
 cdsRelDIPJ.FieldByName('VLRAJUSTE').AsCurrency := 0;
 cdsRelDIPJ.FieldByName('PERCENTUAL').AsCurrency := 0;
end;

procedure TfrmPrecoTransferencia.cdsRelDIPJTmpNewRecord(DataSet: TDataSet);
begin
 cdsRelDIPJTmp.FieldByName('VLRTOTALFOB').AsCurrency := 0;
 cdsRelDIPJTmp.FieldByName('VLRPRECOTRANSF').AsCurrency := 0;
 cdsRelDIPJTmp.FieldByName('VLRPRECOPRATICADO').AsCurrency := 0;
 cdsRelDIPJTmp.FieldByName('VLRAJUSTE').AsCurrency := 0;
 cdsRelDIPJTmp.FieldByName('PERCENTUAL').AsCurrency := 0;
end;

procedure TfrmPrecoTransferencia.Action1Execute(Sender: TObject);
begin
 AtualProdSimilar;
end;

end.
