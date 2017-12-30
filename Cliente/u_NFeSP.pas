unit u_NFeSP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, cDateTime,
  Dialogs, ImgList, ActnList, XPStyleActnCtrls, ActnMan, ExtCtrls, PnAjustaGrid,
  ActnCtrls, ToolWin, ComCtrls, Mask, StdCtrls, DB, DBClient, wwdbdatetimepicker,
  wwriched, wwrichedspellxp;

type
  TfrmNFeSP = class(TForm)
    GroupBox14: TGroupBox;
    Label44: TLabel;
    Label45: TLabel;
    Edit3: TEdit;
    chkbxGerarUmaNota: TCheckBox;
    chkbxNFS: TCheckBox;
    chkbxNFE: TCheckBox;
    CoolBar1: TCoolBar;
    ActionToolBar1: TActionToolBar;
    actmngNFe: TActionManager;
    actRecebimento: TAction;
    actFechar: TAction;
    cdsNF: TClientDataSet;
    dsNF: TDataSource;
    cdsNFItem: TClientDataSet;
    actVisualArquivo: TAction;
    ImageList1: TImageList;
    Label46: TLabel;
    Label1: TLabel;
    wwdtpcktDtIni: TwwDBDateTimePicker;
    wwdtpcktDtFim: TwwDBDateTimePicker;
    wwdtpcktDt: TwwDBDateTimePicker;
    cdsNFServ: TClientDataSet;
    GroupBox1: TGroupBox;
    wwDBRichEditMSWord1: TwwDBRichEditMSWord;
    procedure actFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actRecebimentoExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    F : TextFile;
    procedure ExportREDFTipo10;
    procedure ExportREDFTipo20( TipoNota : String );
    procedure ExportREDFTipo30( ProdServId : String; Descr : WideString; VlrUnit, VlrTotal : Currency;
                                TipoReg : String = 'P' )  ;
    procedure ExportREDFTipo40( AliquotaISS : Currency );
    procedure ExportREDFTipo50( TipoReg : String = 'P' )  ;
    procedure ExportREDFTipo60;
    procedure ExportREDFTipo90( Total20, Total30, Total40_60 : Integer );
    procedure GerarPesqNFS;
    procedure GerarPesqNFE;
    procedure LogHist( Text : String; Limpar : Boolean = False );
  public
    { Public declarations }
    procedure ProcessarNFS;
  end;

  const

  Select_NFS =      'SELECT EF_NFS.EMPRESAID,' +
                    '       EF_NFS.NFSID NFSID,' +
                    '       EF_NFS.DATAEMISSAOID DATAEMISSAOID,' +
                    '       EF_NFS.DATAEMISSAONFEID DATAEMISSAONFEID,' +
                    '       EF_NFS.NATUREZAOPID NATUREZAOPID,' +
                    '       EF_NATUREZAOP.CFOP,' +
                    '       EF_NATUREZAOP.DESCRICAOOPERACAONOTA, ' +
                    '       EF_ENTIDADE.EMAILNFE,' +
                    '       EF_NFS.VLRTOTALPRODUTO VLRTOTALPRODUTO,' +
                    '       EF_NFS.VLRTOTALSERVICO, ' +
                    '       EF_NFS.VLRTOTALIPI,'  +
                    '       EF_NFS.VLRTOTALISS, ' +
                    '       EF_NFS.VLRSEGURO VLRSEGURO,' +
                    '       EF_NFS.VLRFRETE VLRFRETE,' +
                    '       EF_NFS.VLRDESPESAACESSORIA VLRDESPESAACESSORIA,' +
                    '       EF_NFS.VLRTOTALNOTA VLRTOTALNOTA,' +
                    '       EF_NFS.VLRTOTALICMS VLRTOTALICMS,' +
                    '       EF_NFS.EMBQTDVOLUMES EMBQTDVOLUMES,' +
                    '       EF_NFS.EMBESPECIE EMBESPECIE,' +
                    '       EF_NFS.EMBPESOBRUTO EMBPESOBRUTO,' +
                    '       EF_NFS.EMBPESOLIQUIDO EMBPESOLIQUIDO,' +
                    '       EF_NFS.PLACAVEICULO PLACAVEICULO,' +
                    '       EF_NFS.EMBMARCA, ' +
                    '       EF_NFS.EMBNUMERO, ' +
                    '       EF_NFS.VLRTOTALBASEICMS, ' +
                    '       TO_CHAR(EF_NFS.DESCRICAOOBSERVACAO) OBS,' +
                    '       EF_NFS.ENTIDADEID ENTIDADEID,' +
                    '       EF_ENTIDADE.CPFCNPJ CPFCNPJ_DESTINATARIO, ' +
                    '       EF_EMPRESA.CPF_CNPJ CPFCNPJEMPRESA, ' +
                    '       EF_EMPRESA.INSCRMUNICIPAL, ' +
                    '       EF_EMPRESA.INSCRESTADUAL, ' +
                    '       EF_ENTIDADE.TELEFONE TELEFONEENT,' +
                    '       EF_CONDPAGTO.NUMPARCELA,' +
                    '       EF_NFS.NOME,' +
                    '       EF_NFS.CEPID,' +
                    '       EF_NFS.NUMERO,' +
                    '       EF_NFS.COMPLEMENTO,' +
                    '       EF_NFS.ENDERECO,' +
                    '       EF_NFS.BAIRRO,' +
                    '       EF_NFS.CIDADE,' +
                    '       EF_NFS.SIGLAUFID,' +
                    '       DECODE( EF_NFS.MODALIDADEFRETE, ''E'', 0, 1 ) MODFRETE,  ' +
                    '       EF_NFS.PAIS,' +
                    '       EF_ENTIDADE_TRANSP.NOME NOMETRANSP, ' +
                    '       EF_ENTIDADE_TRANSP.CPFCNPJ CPFCNPJTRANSP, ' +
                    '       EF_ENTIDADE_TRANSP.CEPID CEPIDTRANSP,' +
                    '       EF_ENTIDADE_TRANSP.NUMERO NUMEROTRANSP,' +
                    '       EF_ENTIDADE_TRANSP.COMPLEMENTO COMPLEMENTOTRANSP,' +
                    '       EF_ENTIDADE_TRANSP.ENDERECO ENDERECOTRANSP,' +
                    '       EF_ENTIDADE_TRANSP.BAIRRO BAIRROTRANSP,' +
                    '       EF_ENTIDADE_TRANSP.CIDADE CIDADETRANSP,' +
                    '       EF_ENTIDADE_TRANSP.SIGLAUFID SIGLAUFIDTRANSP,' +
                    '       EF_ENTIDADE_TRANSP.INSCRESTADUAL INSCRESTADUALTRANSP ' +
                    '  FROM EF_NFS EF_NFS,' +
                    '       EF_ENTIDADE EF_ENTIDADE,' +
                    '       EF_EMPRESA EF_EMPRESA,' +
                    '       EF_CONDPAGTO EF_CONDPAGTO,' +
                    '       EF_NATUREZAOP EF_NATUREZAOP,' +
                    '       EF_ENTIDADE EF_ENTIDADE_TRANSP' +
                    ' WHERE EF_NATUREZAOP.NATUREZAOPID = EF_NFS.NATUREZAOPID' +
                    '       AND EF_ENTIDADE.ENTIDADEID = EF_NFS.ENTIDADEID' +
                    '       AND EF_ENTIDADE_TRANSP.ENTIDADEID = EF_NFS.TRANSPORTADORID' +
                    '       AND EF_EMPRESA.EMPRESAID = EF_NFS.EMPRESAID' +
                    '       AND EF_CONDPAGTO.CONDPAGTOID(+) = EF_NFS.CONDPAGTOID'  +
                    '       AND NVL( EF_NFS.VLRTOTALSERVICO, 0 ) = 0';

  Select_NFSItem =  'SELECT EF_NFSITEM.EMPRESAID,' +
                    '       EF_NFSITEM.NFSID,' +
                    '       EF_NFSITEM.DATAEMISSAOID,' +
                    '       EF_NFSITEM.ITEMID,' +
                    '       EF_NFSITEM.PRODUTOID,' +
                    '       EF_NFSITEM.DESCRICAOPRODUTO,' +
                    '       EF_NFSITEM.QUANTIDADE,' +
                    '       EF_NFSITEM.VLRPRECOUNITARIO,' +
                    '       EF_NFSITEM.VLRPRECOTOTAL,' +
                    '       EF_NFSITEM.SITTRIBUTARIAESTADUAL,' +
                    '       EF_NFSITEM.ALIQUOTAICMS,' +
                    '       EF_PRODUTO.NCMID,' +
                    '       EF_NFSITEM.ALIQUOTAIPI,' +
                    '       EF_NFSITEM.VLRIPI,' +
                    '       EF_NFSITEM.VLRBASEICMS, ' +
                    '       EF_NFSITEM.ALIQUOTAICMS, ' +
                    '       EF_NFSITEM.VLRICMS, ' +
                    '       EF_NFSITEM.VLRISENTASICMS, ' +
                    '       EF_NFSITEM.VLROUTRASICMS, ' +
                    '       EF_PRODUTO.UNIDADEID' +
                    '  FROM EF_NFSITEM,' +
                    '       EF_PRODUTO EF_PRODUTO' +
                    ' WHERE EF_PRODUTO.EMPRESAID(+) = EF_NFSITEM.EMPRESAID' +
                    '       AND EF_PRODUTO.PRODUTOID(+) = EF_NFSITEM.PRODUTOID ';

  Select_NFSServ =  ' SELECT EMPRESAID,' +
                    '      NFSID,' +
                    '      DATAEMISSAOID,' +
                    '      ITEMID,' +
                    '      SERVICOID,' +
                    '      TO_CHAR( DESCRICAOSERVICO ) DESCRICAOSERV,' +
                    '      VLRISS,' +
                    '      VLRSERVICO,' +
                    '      ALIQUOTACOFINS,' +
                    '      VLRCOFINS,' +
                    '      ALIQUOTAPIS,' +
                    '      VLRPIS,' +
                    '      VLRRETCOFINS,' +
                    '      VLRRETPIS,' +
                    '      VLRRETCSLL,' +
                    '      USUARIO,' +
                    '      VLRRETIRPJ,' +
                    '      VLRRETIRPF' +
                    ' FROM EF_NFSSERVICO ' +
                    ' WHERE ';

 Select_NFE =      'SELECT EF_NFE.EMPRESAID,' +
                    '       EF_NFE.NFEID NFEID,' +
                    '       EF_NFE.DATAEMISSAOID DATAEMISSAOID,' +
                    '       EF_NFE.DATAEMISSAONFEID DATAEMISSAONFEID,' +
                    '       EF_NFE.NATUREZAOPID NATUREZAOPID,' +
                    '       EF_NATUREZAOP.CFOP,' +
                    '       EF_NATUREZAOP.DESCRICAOOPERACAONOTA, ' +
                    '       EF_ENTIDADE.EMAILNFE,' +
                    '       EF_NFE.VLRTOTALPRODUTO VLRTOTALPRODUTO,' +
                    '       EF_NFE.VLRTOTALSERVICO, ' +
                    '       EF_NFE.VLRTOTALIPI,'  +
                    '       EF_NFE.VLRTOTALISS, ' +
                    '       EF_NFE.VLRSEGURO VLRSEGURO,' +
                    '       EF_NFE.VLRFRETE VLRFRETE,' +
                    '       EF_NFE.VLRDESPESAACESSORIA VLRDESPESAACESSORIA,' +
                    '       EF_NFE.VLRTOTALNOTA VLRTOTALNOTA,' +
                    '       EF_NFE.VLRTOTALICMS VLRTOTALICMS,' +
                    '       EF_NFE.EMBQTDVOLUMES EMBQTDVOLUMES,' +
                    '       EF_NFE.EMBESPECIE EMBESPECIE,' +
                    '       EF_NFE.EMBPESOBRUTO EMBPESOBRUTO,' +
                    '       EF_NFE.EMBPESOLIQUIDO EMBPESOLIQUIDO,' +
                    '       EF_NFE.PLACAVEICULO PLACAVEICULO,' +
                    '       EF_NFE.EMBMARCA, ' +
                    '       EF_NFE.EMBNUMERO, ' +
                    '       EF_NFE.VLRTOTALBASEICMS, ' +
                    '       TO_CHAR(EF_NFE.DESCRICAOOBSERVACAO) OBS,' +
                    '       EF_NFE.ENTIDADEID ENTIDADEID,' +
                    '       EF_ENTIDADE.CPFCNPJ CPFCNPJ_DESTINATARIO, ' +
                    '       EF_EMPRESA.CPF_CNPJ CPFCNPJEMPRESA, ' +
                    '       EF_EMPRESA.INSCRMUNICIPAL, ' +
                    '       EF_EMPRESA.INSCRESTADUAL, ' +
                    '       EF_ENTIDADE.TELEFONE TELEFONEENT,' +
                    '       EF_CONDPAGTO.NUMPARCELA,' +
                    '       EF_NFE.NOME,' +
                    '       EF_NFE.CEPID,' +
                    '       EF_NFE.NUMERO,' +
                    '       EF_NFE.COMPLEMENTO,' +
                    '       EF_NFE.ENDERECO,' +
                    '       EF_NFE.BAIRRO,' +
                    '       EF_NFE.CIDADE,' +
                    '       EF_NFE.SIGLAUFID,' +
                    '       DECODE( EF_NFE.MODALIDADEFRETE, ''E'', 0, 1 ) MODFRETE,  ' +
                    '       EF_NFE.PAIS,' +
                    '       EF_ENTIDADE_TRANSP.NOME NOMETRANSP, ' +
                    '       EF_ENTIDADE_TRANSP.CPFCNPJ CPFCNPJTRANSP, ' +
                    '       EF_ENTIDADE_TRANSP.CEPID CEPIDTRANSP,' +
                    '       EF_ENTIDADE_TRANSP.NUMERO NUMEROTRANSP,' +
                    '       EF_ENTIDADE_TRANSP.COMPLEMENTO COMPLEMENTOTRANSP,' +
                    '       EF_ENTIDADE_TRANSP.ENDERECO ENDERECOTRANSP,' +
                    '       EF_ENTIDADE_TRANSP.BAIRRO BAIRROTRANSP,' +
                    '       EF_ENTIDADE_TRANSP.CIDADE CIDADETRANSP,' +
                    '       EF_ENTIDADE_TRANSP.SIGLAUFID SIGLAUFIDTRANSP,' +
                    '       EF_ENTIDADE_TRANSP.INSCRESTADUAL INSCRESTADUALTRANSP ' +
                    '  FROM EF_NFE EF_NFE,' +
                    '       EF_ENTIDADE EF_ENTIDADE,' +
                    '       EF_EMPRESA EF_EMPRESA,' +
                    '       EF_CONDPAGTO EF_CONDPAGTO,' +
                    '       EF_NATUREZAOP EF_NATUREZAOP,' +
                    '       EF_ENTIDADE EF_ENTIDADE_TRANSP' +
                    ' WHERE EF_NATUREZAOP.NATUREZAOPID = EF_NFE.NATUREZAOPID' +
                    '       AND EF_ENTIDADE.ENTIDADEID = EF_NFE.ENTIDADEID' +
                    '       AND EF_ENTIDADE_TRANSP.ENTIDADEID = EF_NFE.TRANSPORTADORID' +
                    '       AND EF_EMPRESA.EMPRESAID = EF_NFE.EMPRESAID' +
                    '       AND EF_CONDPAGTO.CONDPAGTOID(+) = EF_NFE.CONDPAGTOID';

  Select_NFEItem =  'SELECT EF_NFEITEM.EMPRESAID,' +
                    '       EF_NFEITEM.NFEID,' +
                    '       EF_NFEITEM.DATAEMISSAOID,' +
                    '       EF_NFEITEM.ITEMID,' +
                    '       EF_NFEITEM.PRODUTOID,' +
                    '       EF_NFEITEM.DESCRICAOPRODUTO,' +
                    '       EF_NFEITEM.QUANTIDADE,' +
                    '       EF_NFEITEM.VLRPRECOUNITARIO,' +
                    '       EF_NFEITEM.VLRPRECOTOTAL,' +
                    '       EF_NFEITEM.SITTRIBUTARIAESTADUAL,' +
                    '       EF_NFEITEM.ALIQUOTAICMS,' +
                    '       EF_PRODUTO.NCMID,' +
                    '       EF_NFEITEM.ALIQUOTAIPI,' +
                    '       EF_NFEITEM.VLRIPI,' +
                    '       EF_NFEITEM.VLRBASEICMS, ' +
                    '       EF_NFEITEM.ALIQUOTAICMS, ' +
                    '       EF_NFEITEM.VLRICMS, ' +
                    '       EF_NFEITEM.VLRISENTASICMS, ' +
                    '       EF_NFEITEM.VLROUTRASICMS, ' +
                    '       EF_PRODUTO.UNIDADEID' +
                    '  FROM EF_NFEITEM,' +
                    '       EF_PRODUTO EF_PRODUTO' +
                    ' WHERE EF_PRODUTO.EMPRESAID(+) = EF_NFEITEM.EMPRESAID' +
                    '       AND EF_PRODUTO.PRODUTOID(+) = EF_NFEITEM.PRODUTOID ';

var
  frmNFeSP: TfrmNFeSP;

implementation

uses FuncoesCliente, FuncoesDSI, u_Formatacoes;

{$R *.dfm}

procedure TfrmNFeSP.ExportREDFTipo10;
var DtIni, DtFim : String;
begin
 Write( F, AddDel('10'));
 Write( F, AddDel('1,00'));
 Write( F, AddDel( cdsNF.FieldByName( 'CPFCNPJEMPRESA' ).AsString));

 if chkbxGerarUmaNota.Checked then
    begin
     DtIni := wwdtpcktDt.Text;
     DtFim := wwdtpcktDt.Text;
    end
 else
    begin
     DtIni := wwdtpcktDtIni.Text;
     DtFim := wwdtpcktDtFim.Text;
    end;

 Write( F, AddDel( DtIni ) );
 Writeln( F, DtFim );
end;

procedure TfrmNFeSP.ExportREDFTipo20( TipoNota : String );
begin
 Write( F, AddDel('20') );
 Write( F, AddDel('I') );
 Write( F, AddDel('') );
 Write( F, AddDel( cdsNF.FieldByName('DESCRICAOOPERACAONOTA').AsString ) );
 Write( F, AddDel('0') );
 Write( F, AddDel( StrZero( cdsNF.FieldByName('NFSID').AsInteger, 9, 0 ) ) );
 Write( F, AddDel( FormatDateTime( 'DD/MM/YYYYY hh:nn:ss', cdsNF.FieldByName('DATAEMISSAOID').AsDateTime ) ) );
 //
 if cdsNF.FieldByName('DATAEMISSAOID').IsNull then
    Write( F, AddDel( FormatDateTime( 'DD/MM/YYYYY hh:nn:ss', cdsNF.FieldByName('DATAENTRADA').AsDateTime ) ) )
 else
    Write( F, AddDel('') );

 Write( F, AddDel( TipoNota ) );
 Write( F, AddDel( cdsNF.FieldByName('CFOP').AsString ) );

 // James: Não é necessário 08/07/2009 14:04
 Write( F, AddDel('') );
 Write( F, AddDel( TransfNum( cdsNF.FieldByName('INSCRMUNICIPAL').AsString ) ) );

 if cdsNF.FieldByName('SIGLAUFID').AsString <> 'EX' then
    Write( F, AddDel( TransfNum( cdsNF.FieldByName('CPFCNPJ_DESTINATARIO').AsString ) ) )
 else
    Write( F, AddDel('') );



 Write( F, AddDel( Copy( cdsNF.FieldByName( 'NOME' ).AsString, 1, 60 ) ) );
 Write( F, AddDel( Copy(cdsNF.FieldByName('ENDERECO').AsString, 1, 60 ) ) );

 if cdsNF.FieldByName('SIGLAUFID').AsString <> 'EX' then
    Write( F, AddDel( Copy( cdsNF.FieldByName('NUMERO').AsString, 1, 60 ) ) )
 else
   Write( F, AddDel('EXTERIOR') );

 Write( F, AddDel( Copy( cdsNF.FieldByName('COMPLEMENTO').AsString, 1, 60 ) ) );

 if cdsNF.FieldByName('SIGLAUFID').AsString <> 'EX' then
    Write( F, AddDel( Copy( cdsNF.FieldByName('BAIRRO').AsString, 1, 60 ) ) )
 else
    Write( F, AddDel('EXTERIOR') );

 Write( F, AddDel( Copy( cdsNF.FieldByName('CIDADE').AsString, 1, 60 ) ) );
 Write( F, AddDel( Copy( cdsNF.FieldByName('SIGLAUFID').AsString, 1, 2 ) ) );
 Write( F, AddDel( FormatFloat( '00000000;1;',cdsNF.FieldByName( 'CEPID' ).AsInteger ) ) );
 Write( F, AddDel( Copy( cdsNF.FieldByName('PAIS').AsString, 1, 60 ) ) );
 Write( F, AddDel('') );
 Writeln( F, TransfNum( cdsNF.FieldByName('INSCRESTADUAL').AsString ) );
end;

procedure TfrmNFeSP.ExportREDFTipo30( ProdServId : String; Descr : WideString; VlrUnit, VlrTotal : Currency;
  TipoReg : String = 'P' )  ;
begin
 Write( F, AddDel('30') );
 Write( F, AddDel( ProdServId ) );
 Write( F, AddDel( Descr ) );

 if TipoReg = 'P' then
    begin
     Write( F, AddDel( cdsNFItem.FieldByName('NCMID').AsString ) );
     Write( F, AddDel( cdsNFItem.FieldByName('UNIDADEID').AsString ) );
     Write( F, AddDel( ( FormatFloat(Mask_PtFlut4, cdsNFItem.FieldByName('QUANTIDADE').AsCurrency ) ) ) );
    end
 else
    begin
     Write( F, AddDel('') );
     Write( F, AddDel('') );
     Write( F, AddDel( ( FormatFloat(Mask_PtFlut4, 1 ) ) ) );
    end;

 Write( F, AddDel( ( FormatFloat(Mask_PtFlut4, VlrUnit ) ) ) );
 Write( F, AddDel( FormatFloat(Mask_PtFlut, VlrTotal ) ) );

 if TipoReg = 'P' then
    begin
     Write( F, AddDel( cdsNFItem.FieldByName('SITTRIBUTARIAESTADUAL').AsString ) );
     Write( F, AddDel( FormatFloat(Mask_PtFlut, cdsNFItem.FieldByName('ALIQUOTAICMS').AsCurrency ) ) );
     Write( F, AddDel( FormatFloat(Mask_PtFlut, cdsNFItem.FieldByName('ALIQUOTAIPI').AsCurrency ) ) );
     WriteLN( F, FormatFloat(Mask_PtFlut, cdsNFItem.FieldByName('VLRIPI').AsCurrency ) );
    end
 else
    begin
     Write( F, AddDel('') );
     Write( F, AddDel('') );
     Write( F, AddDel('') );
     WriteLN( F, AddDel('') );
    end;
end;

procedure TfrmNFeSP.ExportREDFTipo40( AliquotaISS : Currency );
begin
 Write( F, AddDel('40') );
 Write( F, AddDel( FormatFloat(Mask_PtFlut, cdsNF.FieldByName('VLRTOTALBASEICMS').AsCurrency ) ) );
 Write( F, AddDel( FormatFloat(Mask_PtFlut, cdsNF.FieldByName('VLRTOTALICMS').AsCurrency ) ) );
 Write( F, AddDel('0,00') );
 Write( F, AddDel('0,00') );
 Write( F, AddDel( FormatFloat(Mask_PtFlut, cdsNF.FieldByName('VLRTOTALPRODUTO').AsCurrency + cdsNF.FieldByName('VLRTOTALSERVICO').AsCurrency ) ) );
 Write( F, AddDel( FormatFloat(Mask_PtFlut, cdsNF.FieldByName('VLRFRETE').AsCurrency ) ) );
 Write( F, AddDel( FormatFloat(Mask_PtFlut, cdsNF.FieldByName('VLRSEGURO').AsCurrency ) ) );
 Write( F, AddDel('0,00') );
 Write( F, AddDel( FormatFloat(Mask_PtFlut, cdsNF.FieldByName('VLRTOTALIPI').AsCurrency ) ) );
 Write( F, AddDel( FormatFloat(Mask_PtFlut, cdsNF.FieldByName('VLRDESPESAACESSORIA').AsCurrency ) ) );
 Write( F, AddDel( FormatFloat(Mask_PtFlut, cdsNF.FieldByName('VLRTOTALNOTA').AsCurrency ) ) );
 Write( F, AddDel( FormatFloat(Mask_PtFlut, cdsNF.FieldByName('VLRTOTALSERVICO').AsCurrency ) ) );
 Write( F, AddDel( FormatFloat(Mask_PtFlut, AliquotaISS ) ) );
 Writeln( F, FormatFloat(Mask_PtFlut, cdsNF.FieldByName('VLRTOTALISS').AsCurrency ) );
end;

procedure TfrmNFeSP.ExportREDFTipo50( TipoReg : String = 'P' )  ;
begin
 Write( F, AddDel('50') );
 Write( F, AddDel( cdsNF.FieldByName('MODFRETE').Value ) );
 Write( F, AddDel( TransfNum( cdsNF.FieldByName('CPFCNPJTRANSP').AsString ) ) );
 Write( F, AddDel( Copy( cdsNF.FieldByName( 'NOMETRANSP' ).AsString, 1, 60 ) ) );
 Write( F, AddDel( TransfNum( cdsNF.FieldByName('INSCRESTADUALTRANSP').AsString ) ) );
 Write( F, AddDel( Copy( trim( cdsNF.FieldByName('ENDERECOTRANSP').AsString ) + ' ' + trim( cdsNF.FieldByName('NUMEROTRANSP').AsString ), 1, 60 ) ) );
 Write( F, AddDel( Copy( cdsNF.FieldByName('CIDADETRANSP').AsString, 1, 60 ) ) );
 Write( F, AddDel( Copy( cdsNF.FieldByName('SIGLAUFIDTRANSP').AsString, 1, 2 ) ) );
 Write( F, AddDel( '' ) );
 Write( F, AddDel( '' ) );

 if TipoReg = 'P' then
    begin
     Write( F, AddDel( StrZero( cdsNF.FieldByName('EMBQTDVOLUMES').AsInteger, 15, 0 ) ) );
     Write( F, AddDel( Copy( cdsNF.FieldByName('EMBESPECIE').AsString, 1, 60 ) ) );
     Write( F, AddDel( Copy( cdsNF.FieldByName('EMBMARCA').AsString, 1, 60 ) ) );
     Write( F, AddDel( Copy( cdsNF.FieldByName('EMBNUMERO').AsString, 1, 60 ) ) );
     Write( F, AddDel( FormatFloat(Mask_PtFlut3, cdsNF.FieldByName('EMBPESOLIQUIDO').AsCurrency ) ) );
     Writeln( F, FormatFloat(Mask_PtFlut3, cdsNF.FieldByName('EMBPESOBRUTO').AsCurrency ) );
    end
 else
    begin
     Write( F, AddDel( '' ) );
     Write( F, AddDel( '' ) );
     Write( F, AddDel( '' ) );
     Write( F, AddDel( '' ) );
     Write( F, AddDel( '' ) );
     Writeln( F, AddDel( '' ) );
    end;
end;

procedure TfrmNFeSP.ExportREDFTipo60;
var DescrServ : String;
begin
 DescrServ := '';
 if cdsNF.FieldByName('VLRTOTALSERVICO').AsCurrency > 0 then
    DescrServ := 'DISPENSADO DA RETENÇÃO DO INSS CONF. CONF. IN/MPS/SRP 3/2005,POR NÃO SE TRATAR DE SERV POR "CESSÃO DE M.O".';

 Write( F, AddDel('60') );
 Write( F, AddDel( Copy( cdsNF.FieldByName('OBS').AsString, 1, 60 ) + DescrServ ) );
 Write( F, AddDel( DescrServ ) );
 Writeln( F, '|');
end;

procedure TfrmNFeSP.ExportREDFTipo90( Total20, Total30, Total40_60 : Integer );
begin
 Write( F, AddDel('90') );
 Write( F, AddDel( StrZero( Total20, 5, 0 ) ) );
 Write( F, AddDel( StrZero( Total30, 5, 0 ) ) );
 Write( F, AddDel( StrZero( Total40_60, 5, 0 ) ) );
 Write( F, AddDel( StrZero( Total40_60, 5, 0 ) ) );
 Writeln( F, StrZero( Total40_60, 5, 0 ) );
end;


procedure TfrmNFeSP.LogHist( Text : String; Limpar : Boolean = False );
begin
 if Limpar then
    wwDBRichEditMSWord1.Lines.Clear;

 wwDBRichEditMSWord1.Lines.Add( Text)
end;

procedure TfrmNFeSP.ProcessarNFS;
var  Processados, Total20, Total30, Total40_60 : Integer;
     NomeArq : String;
     VlrTotalNotas : Currency;
begin
 // Site REDF Registro eletrônica de nota fiscal
 Processados   := 1;
 Total20       := 0;
 Total30       := 0;
 Total40_60    := 0;
 VlrTotalNotas := 0;
 NomeArq       := ExtractFilePath( Application.ExeName ) + 'REDF\' +
                  'REDF' + FormatDateTime( 'yyyymmdd', Date ) + '.TXT';
 LogHist( 'Inicio de processamento...', True );
 LogHist( NomeArq );

 AtivarArquivoTxt( F, NomeArq );

 try
  try
   ExportREDFTipo10;

   // Carregando dados da Nota de Mercadorias
   cdsNF.First;
   while not cdsNF.Eof do
   begin
    LogHist( 'Nota processada: ' + cdsNF.FieldByName('NFSID').AsString + '-' + cdsNF.FieldByName('DATAEMISSAOID').AsString );

    // Processar itens de nota
    if cdsNFItem.FindKey([cdsNF.FieldByName('EMPRESAID').AsInteger,cdsNF.FieldByName('NFSID').AsInteger, cdsNF.FieldByName('DATAEMISSAOID').AsDateTime]) then
       begin
        Inc( Total20 );
        ExportREDFTipo20('1');

        while not cdsNFItem.Eof do
        begin
         if ( cdsNF.FieldByName('EMPRESAID').AsInteger <> cdsNFItem.FieldByName('EMPRESAID').AsInteger ) or
            ( cdsNF.FieldByName('NFSID').AsInteger <> cdsNFItem.FieldByName('NFSID').AsInteger ) or
            ( cdsNF.FieldByName('DATAEMISSAOID').AsDateTime <> cdsNFItem.FieldByName('DATAEMISSAOID').AsDateTime ) then
            break;

         Inc( Total30 );
         ExportREDFTipo30( cdsNFItem.FieldByName('PRODUTOID').AsString, cdsNFItem.FieldByName('DESCRICAOPRODUTO').AsString,
                           cdsNFItem.FieldByName('VLRPRECOUNITARIO').AsCurrency, cdsNFItem.FieldByName('VLRPRECOTOTAL').AsCurrency );

         VlrTotalNotas := VlrTotalNotas +  cdsNFItem.FieldByName('VLRPRECOTOTAL').AsCurrency;
         cdsNFItem.Next;
        end;
       end;

    // Processar Serviços
    if cdsNFServ.FindKey([cdsNF.FieldByName('EMPRESAID').AsInteger,cdsNF.FieldByName('NFSID').AsInteger, cdsNF.FieldByName('DATAEMISSAOID').AsDateTime]) then
       begin
        Inc( Total20 );
        ExportREDFTipo20('1');

        while not cdsNFServ.Eof do
        begin
         if ( cdsNF.FieldByName('EMPRESAID').AsInteger <> cdsNFItem.FieldByName('EMPRESAID').AsInteger ) or
            ( cdsNF.FieldByName('NFSID').AsInteger <> cdsNFItem.FieldByName('NFSID').AsInteger ) or
            ( cdsNF.FieldByName('DATAEMISSAOID').AsDateTime <> cdsNFItem.FieldByName('DATAEMISSAOID').AsDateTime ) then
            break;

         Inc( Total30 );
         ExportREDFTipo30( cdsNFServ.FieldByName('SERVICOID').AsString, cdsNFServ.FieldByName('DESCRICAOSERV').AsString,
                           cdsNFItem.FieldByName('VLRSERVICO').AsCurrency, cdsNFItem.FieldByName('VLRSERVICO').AsCurrency );

         VlrTotalNotas := VlrTotalNotas +  cdsNFItem.FieldByName('VLRPRECOTOTAL').AsCurrency;
         cdsNFServ.Next;
        end;
       end;

    Inc( Total40_60 );

    ExportREDFTipo40( 0 );
    ExportREDFTipo50;
    ExportREDFTipo60;

    Inc( Processados );
    cdsNF.Next;
   end;

   ExportREDFTipo90( Total20, Total30, Total40_60 );

   if Processados > 1 then
      begin
       LogHist('Arquivo Gerado com sucesso ' );
       Messagedlg('Arquivo Gerado com sucesso ',mtConfirmation,[mbok],0)
      end
   else
      begin
       LogHist('Nenhuma Nota foi Gerada !' );
       Messagedlg('Nenhuma Nota foi Gerada !',mtInformation,[mbOK],0);
      end;

  except on
   E : Exception do
   begin
    LogHist( E.Message );
    raise Exception.Create(E.Message);
   end;
  end;

 finally
  CloseFile( F );
 end;

end;

procedure TfrmNFeSP.actFecharExecute(Sender: TObject);
begin
 Close;
end;

procedure TfrmNFeSP.GerarPesqNFS;
var iSQL : String;
begin
 // Carregando dados da Nota Fiscal de Saída
 if cdsNF.IndexFieldCount >= 1 then
    begin
     cdsNF.DeleteIndex('idx1');
     cdsNFItem.DeleteIndex('idx1');
    end;

 iSQL := Select_NFS + ' AND EF_NFS.EMPRESAID = ' + IntToStr( EmpresaAtualId );

 if chkbxGerarUmaNota.Checked then
    iSQL := iSQL + ' AND EF_NFS.NFSID = ' + Edit3.Text +
                   ' AND EF_NFS.DATAEMISSAOID = '+ QuotedStr( wwdtpcktDt.Text )
 else
    iSQL := iSQL + ' AND EF_NFS.DATAEMISSAOID >= '+ QuotedStr( wwdtpcktDtIni.Text )+
                   ' AND EF_NFS.DATAEMISSAOID <= '+ QuotedStr( wwdtpcktDtFim.Text );

 try
  ExecDynamicProvider(-1,iSQL,cdsNF);

  cdsNF.AddIndex('idx1','EMPRESAID;NFSID;DATAEMISSAOID',[ixPrimary]);
  cdsNF.IndexName := 'idx1';

  // Carregando os Ítens da Nota Fiscal de Saída
  cdsNFItem := nil;
  iSQL :=  Select_NFSItem + ' AND EF_NFSITEM.EMPRESAID = ' + IntToStr( EmpresaAtualId );

  if chkbxGerarUmaNota.Checked then
     iSQL := iSQL + ' AND EF_NFSITEM.NFSID = ' + Edit3.Text +
                    ' AND EF_NFSITEM.DATAEMISSAOID = '+ QuotedStr( wwdtpcktDt.Text )
  else
     iSQL := iSQL + '  AND EF_NFSITEM.DATAEMISSAOID >= '+ QuotedStr( wwdtpcktDtIni.Text )+
                    '  AND EF_NFSITEM.DATAEMISSAOID <= '+ QuotedStr( wwdtpcktDtFim.Text );

  if not cdsNF.IsEmpty then
     begin
      ExecDynamicProvider(-1,iSQL,cdsNFItem );
      cdsNFItem.AddIndex('idx1','EMPRESAID;NFSID;DATAEMISSAOID;ITEMID',[ixPrimary]);
      cdsNFItem.IndexName := 'idx1';
     end;

  // Carregar nota fiscal de Serviços
  cdsNFServ := nil;
  iSQL :=  Select_NFSServ + ' EF_NFSSERVICO.EMPRESAID = ' + IntToStr( EmpresaAtualId );

  if chkbxGerarUmaNota.Checked then
     iSQL := iSQL + ' AND EF_NFSSERVICO.NFSID = ' + Edit3.Text +
                    ' AND EF_NFSSERVICO.DATAEMISSAOID = '+ QuotedStr( wwdtpcktDt.Text )
  else
     iSQL := iSQL + '  AND EF_NFSSERVICO.DATAEMISSAOID >= '+ QuotedStr( wwdtpcktDtIni.Text )+
                    '  AND EF_NFSSERVICO.DATAEMISSAOID <= '+ QuotedStr( wwdtpcktDtFim.Text );

  if not cdsNF.IsEmpty then
     begin
      ExecDynamicProvider(-1,iSQL,cdsNFServ );
      cdsNFServ.AddIndex('idx1','EMPRESAID;NFSID;DATAEMISSAOID;ITEMID',[ixPrimary]);
      cdsNFServ.IndexName := 'idx1';
     end;

 except on
  E : Exception do
  raise Exception.Create(E.Message);
 end;
end;

procedure TfrmNFeSP.GerarPesqNFE;
var iSQL : String;
begin
 // Carregando dados da Nota Fiscal de Saída
 if cdsNF.IndexFieldCount >= 1 then
    begin
     cdsNF.DeleteIndex('idx1');
     cdsNFItem.DeleteIndex('idx1');
    end;

 iSQL := Select_NFS + ' AND EF_NFE.EMPRESAID = ' + IntToStr( EmpresaAtualId );

 if chkbxGerarUmaNota.Checked then
    iSQL := iSQL + ' AND EF_NFE.NFEID = ' + Edit3.Text +
                   ' AND EF_NFE.DATAEMISSAOID = '+ QuotedStr( wwdtpcktDt.Text )
 else
    iSQL := iSQL + ' AND EF_NFE.DATAEMISSAOID >= '+ QuotedStr( wwdtpcktDtIni.Text )+
                   ' AND EF_NFE.DATAEMISSAOID <= '+ QuotedStr( wwdtpcktDtFim.Text );

 try
  ExecDynamicProvider(-1,iSQL,cdsNF);

  cdsNF.AddIndex('idx1','EMPRESAID;NFEID;DATAEMISSAOID',[ixPrimary]);
  cdsNF.IndexName := 'idx1';

  // Carregando os Ítens da Nota Fiscal de Entrada
  cdsNFItem := nil;
  iSQL :=  Select_NFSItem + ' AND EF_NFEITEM.EMPRESAID = ' + IntToStr( EmpresaAtualId );

  if chkbxGerarUmaNota.Checked then
     iSQL := iSQL + ' AND EF_NFEITEM.NFEID = ' + Edit3.Text +
                    ' AND EF_NFEITEM.DATAEMISSAOID = '+ QuotedStr( wwdtpcktDt.Text )
  else
     iSQL := iSQL + '  AND EF_NFEITEM.DATAEMISSAOID >= '+ QuotedStr( wwdtpcktDtIni.Text )+
                    '  AND EF_NFEITEM.DATAEMISSAOID <= '+ QuotedStr( wwdtpcktDtFim.Text );

  if not cdsNF.IsEmpty then
     begin
      ExecDynamicProvider(-1,iSQL,cdsNFItem );
      cdsNFItem.AddIndex('idx1','EMPRESAID;NFEID;DATAEMISSAOID;ITEMID',[ixPrimary]);
      cdsNFItem.IndexName := 'idx1';
     end;

 except on
  E : Exception do
  raise Exception.Create(E.Message);
 end;
end;

procedure TfrmNFeSP.actRecebimentoExecute(Sender: TObject);
begin
 { Dados para validação no site:
   Usuário = TOSHIBAMEDICAL
   Senha   = TOSHI1974 }
 if chkbxNFS.Checked then
    begin
     GerarPesqNFS;
     ProcessarNFS;
    end;

 if chkbxNFE.Checked then
    begin
     GerarPesqNFE;
     ProcessarNFS;
    end;
end;

procedure TfrmNFeSP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action   := caFree;
 frmNFeSP := Nil;
end;

procedure TfrmNFeSP.FormCreate(Sender: TObject);
begin
 wwdtpcktDtIni.Date := FirstDayOfMonth( pCnnMain.AppServer.iServerDate );
 wwdtpcktDtFim.Date := LastDayOfMonth( pCnnMain.AppServer.iServerDate );
end;

end.
