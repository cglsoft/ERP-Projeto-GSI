unit u_0018;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, ComCtrls, Buttons, DB, DBClient;

type
  Tfrm0018 = class(TForm)
    StatusBar1: TStatusBar;
    RadioGroup2: TRadioGroup;
    Panel20: TPanel;
    Panel23: TPanel;
    Label59: TLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    ComboBox1: TComboBox;
    mktInicio: TMaskEdit;
    Label5: TLabel;
    RadioButton1: TCheckBox;
    mktFim: TMaskEdit;
    Label2: TLabel;
    MaskEdit1: TMaskEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Panel11: TPanel;
    lblContador: TLabel;
    Label4: TLabel;
    dsInventario: TDataSource;
    cdsInventario: TClientDataSet;
    rgrpDtUltima: TRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;
  const Sel_Invent =
                     '   AND (EF_PRODUTO.ORIGEM = ''N'' OR EF_PRODUTO.ORIGEM = ''I'' OR' + #13#10 +
                     '       EF_PRODUTO.ORIGEM = ''B'')' + #13#10 +
                     '   AND EF_PRODUTO.PRODUTOID = 3281' + #13#10 +
                     ' ORDER BY EF_PRODUTO.NCMID';



var
  frm0018: Tfrm0018;

implementation

uses FuncoesCliente, u_Rel0018, u_Exportar;
{$R *.dfm}

procedure Tfrm0018.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action  := cafree;
 frm0018 := nil;
end;

procedure Tfrm0018.BitBtn1Click(Sender: TObject);
var iSQL    : String;
begin
 if not cdsInventario.IsEmpty then
    begin
     cdsInventario.DeleteIndex('idx1');
     cdsInventario.Close;
    end;

 iSQL  := 'SELECT EF_PRODUTO.EMPRESAID,' + #13#10 +
                     '       EF_PRODUTO.PRODUTOID,' + #13#10 +
                     '       EF_PRODUTO.DESCRICAOPORTUGUES,' + #13#10 +
                     '       EF_PRODUTO.SUBGRUPOID,' + #13#10 +
                     '       EF_EMPRESA.CPF_CNPJ, ' +
                     '       EF_EMPRESA.INSCRESTADUAL, ' +
                     '       EF_SUBGRUPO.DESCRICAO,' + #13#10 +
                     '       EF_PRODUTO.UNIDADEID,' + #13#10 +
                     '       EF_PRODUTO.LOCALIZACAO,' + #13#10 +
                     '       EF_PRODUTO.PARTNUMBERID,' + #13#10 +
                     '       EF_PRODUTO.APLICACAO,' + #13#10 +
                     '       EF_GRUPO.SIGLAGRUPO,' + #13#10 +
                     '       EF_PRODUTO.NCMID,' + #13#10 +
                     '       EF_PRODUTO.ORIGEM,' + #13#10 +
                     '       EF_KDX_POSICAO.NUMDOCUMENTO,' + #13#10 +
                     '       EF_KDX_POSICAO.DATAOCORRENCIA,' + #13#10 +
                     '       KDX_ULT_ENTRADA.DT_ULT_ENTRADA,' + #13#10 +
                     '       KDX_ULT_SAIDA.DT_ULT_SAIDA,' + #13#10 +
                     '       KDX_ULT_SAIDA_NORMAL.DT_ULT_SAIDA_NORMAL,' + #13#10 +
                     '       EF_KDX_POSICAO.QUANTIDADESALDO,' + #13#10 +
                     '       EF_KDX_POSICAO.VLRCUSTOMEDIO,' + #13#10 +
                     '       EF_KDX_POSICAO.VLRCUSTOMEDIOTOTAL' + #13#10 +
                     '  FROM EF_PRODUTO,' + #13#10 +
                     '       EF_SUBGRUPO,' + #13#10 +
                     '       EF_EMPRESA, ' +
                     '       EF_GRUPO,' + #13#10 +
                     '       (SELECT EMPRESAID,' + #13#10 +
                     '               PRODUTOID,' + #13#10 +
                     '               NUMDOCUMENTO,' + #13#10 +
                     '               DATAOCORRENCIA,' + #13#10 +
                     '               QUANTIDADESALDO,' + #13#10 +
                     '               NVL(VLRCUSTOMEDIO, 0) VLRCUSTOMEDIO,' + #13#10 +
                     '               NVL(VLRCUSTOMEDIOTOTAL, 0) VLRCUSTOMEDIOTOTAL' + #13#10 +
                     '          FROM EF_KARDEX' + #13#10 +
                     '         WHERE (EMPRESAID, PRODUTOID, DATAOCORRENCIA, KARDEXID) IN' + #13#10 +
                     '               (SELECT EMPRESAID,' + #13#10 +
                     '                       PRODUTOID,' + #13#10 +
                     '                       MAX(DATAOCORRENCIA),' + #13#10 +
                     '                       MAX(KARDEXID)' + #13#10 +
                     '                  FROM EF_KARDEX' + #13#10 +
                     '                 WHERE DATAOCORRENCIA <= TO_DATE( '+ QuotedStr( MaskEdit1.Text )+','+ QuotedStr('DD/MM/YYYY')+ ')' + #13#10 +
                     '                 GROUP BY EMPRESAID, PRODUTOID)' + #13#10 +
                     '         ORDER BY 1, 2) EF_KDX_POSICAO,' + #13#10 +
                     '/* Ultima data de Entrada */' + #13#10 +
                     '( SELECT EMPRESAID, PRODUTOID, MAX(DATAOCORRENCIA) AS DT_ULT_ENTRADA' + #13#10 +
                     '  FROM EF_KARDEX, EF_NATUREZAOP EF_NATUREZAOP' + #13#10 +
                     ' WHERE EF_NATUREZAOP.NATUREZAOPID(+) = EF_KARDEX.NATUREZAOPID' + #13#10 +
                     '   AND EF_NATUREZAOP.MOVIMENTOESTOQUE NOT IN (''D'', ''E'')' + #13#10 +
                     '   AND EF_KARDEX.TIPOOPERACAO = ''E''' + #13#10 +
                     '   GROUP BY EMPRESAID, PRODUTOID  ) KDX_ULT_ENTRADA,' + #13#10 +
                     '/* Ultima da de Saída */' + #13#10 +
                     '( SELECT EMPRESAID, PRODUTOID, MAX(DATAOCORRENCIA) AS DT_ULT_SAIDA' + #13#10 +
                     '  FROM EF_KARDEX, EF_NATUREZAOP EF_NATUREZAOP' + #13#10 +
                     ' WHERE EF_NATUREZAOP.NATUREZAOPID(+) = EF_KARDEX.NATUREZAOPID' + #13#10 +
                     '   AND EF_NATUREZAOP.VENDADEFINITIVA = 1' + #13#10 +
                     '   AND EF_KARDEX.TIPOOPERACAO = ''S''' + #13#10 +
                     '   GROUP BY EMPRESAID, PRODUTOID  ) KDX_ULT_SAIDA, ' + #13#10 +
                     '/* Ultima da de Saída Movimento Normal */' + #13#10 +
                     '( SELECT EMPRESAID, PRODUTOID, MAX(DATAOCORRENCIA) AS DT_ULT_SAIDA_NORMAL ' + #13#10 +
                     '  FROM EF_KARDEX, EF_NATUREZAOP EF_NATUREZAOP' + #13#10 +
                     ' WHERE EF_NATUREZAOP.NATUREZAOPID(+) = EF_KARDEX.NATUREZAOPID' + #13#10 +
                     '   AND EF_NATUREZAOP.MOVIMENTOESTOQUE = ''N''' + #13#10 +
                     '   AND EF_KARDEX.TIPOOPERACAO = ''S''' + #13#10 +
                     '   GROUP BY EMPRESAID, PRODUTOID  ) KDX_ULT_SAIDA_NORMAL ' + #13#10 +
                     ' WHERE EF_PRODUTO.EMPRESAID = EF_KDX_POSICAO.EMPRESAID' + #13#10 +
                     '   AND EF_PRODUTO.PRODUTOID = EF_KDX_POSICAO.PRODUTOID' + #13#10 +
                     '   AND EF_PRODUTO.SUBGRUPOID = EF_SUBGRUPO.SUBGRUPOID(+)' + #13#10 +
                     '   AND EF_PRODUTO.EMPRESAID = EF_EMPRESA.EMPRESAID ' +
                     '   AND EF_PRODUTO.EMPRESAID = KDX_ULT_ENTRADA.EMPRESAID(+)' + #13#10 +
                     '   AND EF_PRODUTO.PRODUTOID = KDX_ULT_ENTRADA.PRODUTOID(+)' + #13#10 +
                     '   AND EF_PRODUTO.EMPRESAID = KDX_ULT_SAIDA.EMPRESAID(+)' + #13#10 +
                     '   AND EF_PRODUTO.PRODUTOID = KDX_ULT_SAIDA.PRODUTOID(+)' + #13#10 +
                     '   AND EF_PRODUTO.EMPRESAID = KDX_ULT_SAIDA_NORMAL.EMPRESAID(+)' + #13#10 +
                     '   AND EF_PRODUTO.PRODUTOID = KDX_ULT_SAIDA_NORMAL.PRODUTOID(+)' + #13#10 +
                     '   AND EF_PRODUTO.GRUPOID = EF_GRUPO.GRUPOID(+)' + #13#10 +
                     //                     '   AND NVL(EF_KDX_POSICAO.VLRCUSTOMEDIOTOTAL, 0) > 0' + #13#10 +
                     '   AND NVL(EF_KDX_POSICAO.QUANTIDADESALDO, 0) > 0' + #13#10 +
                     '   AND ( EF_PRODUTO.EMPRESAID = '+ IntToStr( EmpresaAtualId )+') AND' + #13#10;

 if      RadioGroup2.ItemIndex = 0 then
         iSQL := iSQL + ' ( EF_PRODUTO.ORIGEM = '+ QuotedStr('N') +' OR '+
                        '   EF_PRODUTO.ORIGEM = '+ QuotedStr('B') +
                        ' )'
 else if RadioGroup2.ItemIndex = 1 then
         iSQL := iSQL + ' EF_PRODUTO.ORIGEM = '+ QuotedStr('I')
      else
         iSQL := iSQL + ' ( EF_PRODUTO.ORIGEM = '+ QuotedStr('N')+ ' OR '+
                        '   EF_PRODUTO.ORIGEM = '+ QuotedStr('I')+ ' OR '+
                        '   EF_PRODUTO.ORIGEM = '+ QuotedStr('B')+
                        ' )';

 iSQL := iSQL + ' AND EF_PRODUTO.PRODUTOID BETWEEN ' + mktInicio.Text + ' AND ' + mktFim.Text + ' ';

 if ( ComboBox1.Text <> '' ) then
    iSQL := iSQL + ' AND EF_SUBGRUPO.SIGLAGRUPO = '+ QuotedStr( ComboBox1.Text );

 iSQL := iSQL + 'ORDER BY EF_PRODUTO.NCMID';

 try
  ExecDynamicProvider( -1,iSQL,cdsInventario );

  cdsInventario.FieldByName('NCMID' ).EditMask             := '>9999.99.99;0;';
  cdsInventario.FieldByName('QUANTIDADESALDO').EditMask    := '###,###,###,##0.00';
  cdsInventario.FieldByName('VLRCUSTOMEDIO').EditMask      := '###,###,###,##0.00';
  cdsInventario.FieldByName('VLRCUSTOMEDIOTOTAL').EditMask := '###,###,###,##0.00';

  cdsInventario.AddIndex('idx1','NCMID;PRODUTOID',[ixCaseInsensitive],'','',0);
  cdsInventario.IndexName := 'idx1';

  frmRel0018 := TfrmRel0018.Create(nil);

{  case EmpresaAtualId of
  1 : begin
       frmRel0018.QRLabel13.Caption  := frmRel0018.QRLabel13.Caption + ' 46.563.938/0001.10';
       frmRel0018.QRLabel20.Caption  := frmRel0018.QRLabel20.Caption + ' 206.235.020.114';
      end;
  12: begin
       frmRel0018.QRLabel13.Caption  := frmRel0018.QRLabel13.Caption + ' 46.563.938/0002-00';
       frmRel0018.QRLabel20.Caption  := frmRel0018.QRLabel20.Caption + ' 18.1.580.0297190.6';
      end;
  end; }

  case frm0018.rgrpDtUltima.ItemIndex of
  0 : frmRel0018.qrdbtxtDtUlt.DataField := 'DT_ULT_ENTRADA';
  1 : frmRel0018.qrdbtxtDtUlt.DataField := 'DT_ULT_SAIDA';
  2 : frmRel0018.qrdbtxtDtUlt.DataField := 'DT_ULT_SAIDA_NORMAL';
  3 : frmRel0018.qrdbtxtDtUlt.DataField := 'DATAOCORRENCIA';
  else
      frmRel0018.qrdbtxtDtUlt.DataField := '';
  end;

  frmRel0018.QuickRep1.Preview;
 finally
  FreeAndNil( frmRel0018.QuickRep1 );
  FreeAndNil( frmRel0018);
 end;
end;

procedure Tfrm0018.FormCreate(Sender: TObject);
var iSQL : String;
begin
 iSQL := ' SELECT'+
         '   EF_SUBGRUPO.SIGLAGRUPO'+
         '   FROM '+
         '   EF_SUBGRUPO';
 AdicionarCamposCombo( ComboBox1,iSQL,'SIGLAGRUPO' );
end;

procedure Tfrm0018.BitBtn2Click(Sender: TObject);
begin
 frmExportar := TfrmExportar.Create(nil);
 frmExportar.DataSource := dsInventario;
 frmExportar.Show;
end;

procedure Tfrm0018.BitBtn3Click(Sender: TObject);
begin
 frm0018.Close;
end;

procedure Tfrm0018.RadioButton1Click(Sender: TObject);
begin
 if TRadioButton( sender ).Checked then
    ComboBox1.ItemIndex := -1
end;

procedure Tfrm0018.ComboBox1Click(Sender: TObject);
begin
 RadioButton1.Checked := False;
end;

end.
