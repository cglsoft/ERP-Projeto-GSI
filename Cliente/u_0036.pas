unit u_0036;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, fcLabel, DB, DBClient,cDateTime,
  ExtCtrls;

type
  Tfrm0036 = class(TForm)
    fcLabel1: TfcLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    StatusBar1: TStatusBar;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    cmbTransp: TComboBox;
    cds0036: TClientDataSet;
    ds0036: TDataSource;
    chkDepto: TCheckBox;
    rgrpTipoRelat: TRadioGroup;
    rgrpEmpresa: TRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure chkDeptoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm0036: Tfrm0036;

const Sel_CUBA =    'SELECT TO_CHAR(EF_NFE.DATAENTRADA,''YYYY/MONTH'') MESANO,' +
                    '       EF_NFE.TRANSPORTADORID,' +
                    '       EF_ENT_TRANSP.NOME,';

const Sel_CUBA2 =   '       EF_NFE.NFSID, ' +
                    '       EF_NFE.DATAENTRADA, ';

const Sel_CUBA3 =   '       SUM( NVL( EF_NFEITEM.QUANTIDADE, 0  ) ) QUANTIDADE_ENTRADA,' +
                    '       SUM( ( NVL( EF_PRODUTO.CUBAGEM, 0 )  * NVL( EF_NFEITEM.QUANTIDADE, 0 ) ) ) M3ENTRADA,' +
                    '       SUM( 0 ) QUANTIDADE_SAIDA, ' +
                    '       SUM( 0 ) M3SAIDA ' +
                    '  FROM EF_NFE EF_NFE,' +
                    '       EF_NFEITEM EF_NFEITEM,' +
                    '       EF_ENTIDADE EF_ENT_TRANSP,' +
                    '       EF_PRODUTO EF_PRODUTO' +
                    ' WHERE ' +
                    '       EF_NFE.EMPRESAID = EF_NFEITEM.EMPRESAID' +
                    '       AND EF_NFE.NFEID = EF_NFEITEM.NFEID' +
                    '       AND EF_NFE.DATAEMISSAOID = EF_NFEITEM.DATAEMISSAOID' +
                    '       AND EF_NFE.ENTIDADEID = EF_NFEITEM.ENTIDADEID' +
                    '       AND EF_ENT_TRANSP.ENTIDADEID(+) = EF_NFE.TRANSPORTADORID' +
                    '       AND EF_PRODUTO.EMPRESAID(+) = EF_NFEITEM.EMPRESAID' +
                    '       AND EF_PRODUTO.PRODUTOID(+) = EF_NFEITEM.PRODUTOID';


const Sel_CUBA4 =   ' GROUP BY TO_CHAR(EF_NFE.DATAENTRADA, ''YYYY/MONTH''),' +
                    '       EF_NFE.TRANSPORTADORID,' +
                    '       EF_ENT_TRANSP.NOME';



const Sel_S_CUBA =  'SELECT TO_CHAR(EF_NFS.DATAEMISSAOID, ''YYYY/MONTH'') MESANO,' +
                    '       EF_NFS.TRANSPORTADORID,' +
                    '       EF_ENT_TRANSP.NOME,';

const Sel_S_CUBA2 = '       EF_NFS.NFSID,' +
                    '       EF_NFS.DATAEMISSAOID,';

const Sel_S_CUBA3 = '       SUM( 0 ) QUANTIDADE_ENTRADA, ' +
                    '       SUM( 0 ) M3ENTRADA, ' +
                    '       SUM( NVL( EF_NFSITEM.QUANTIDADE, 0  ) ) QUANTIDADE_SAIDA,' +
                    '       SUM( ( NVL( EF_PRODUTO.CUBAGEM, 0 )  * NVL( EF_NFSITEM.QUANTIDADE, 0 ) ) ) M3SAIDA' +
                    '  FROM EF_NFS EF_NFS,' +
                    '       EF_NFSITEM EF_NFSITEM,' +
                    '       EF_ENTIDADE EF_ENT_TRANSP,' +
                    '       EF_PRODUTO EF_PRODUTO' +
                    ' WHERE ' +
                    '       EF_NFS.EMPRESAID = EF_NFSITEM.EMPRESAID' +
                    '       AND EF_NFS.NFSID = EF_NFSITEM.NFSID' +
                    '       AND EF_NFS.DATAEMISSAOID = EF_NFSITEM.DATAEMISSAOID' +
                    '       AND EF_ENT_TRANSP.ENTIDADEID(+) = EF_NFS.TRANSPORTADORID' +
                    '       AND EF_PRODUTO.EMPRESAID(+) = EF_NFSITEM.EMPRESAID' +
                    '       AND EF_PRODUTO.PRODUTOID(+) = EF_NFSITEM.PRODUTOID';

const Sel_S_CUBA4 = ' GROUP BY TO_CHAR(EF_NFS.DATAEMISSAOID, ''YYYY/MONTH''),' +
                    '       EF_NFS.TRANSPORTADORID,' +
                    '       EF_ENT_TRANSP.NOME';


implementation

uses FuncoesCliente, u_Exportar, u_Rel0036;

{$R *.dfm}

procedure Tfrm0036.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action  := caFree;
 frm0036 := nil;
end;

procedure Tfrm0036.BitBtn2Click(Sender: TObject);
begin
 frm0036.Close;
end;

procedure Tfrm0036.BitBtn3Click(Sender: TObject);
begin
 if not cds0036.IsEmpty then
    begin
     frmExportar := TfrmExportar.Create(nil);
     frmExportar.DataSource := ds0036;
     frmExportar.Show;
    end
 else
    MessageDlg('É necessário Gerar o Relatório primeiro!',mtWarning, [mbok],0 );
end;

procedure Tfrm0036.BitBtn1Click(Sender: TObject);
var cdsE, cdsS : TClientDataSet;
    iSQLE, iSQLS : String;
begin
 iSQLE := Sel_CUBA;
 iSQLS := Sel_S_CUBA;
 cdsE  := Nil;
 cdsS  := Nil;

 if rgrpTipoRelat.ItemIndex = 0 then
    begin
     iSQLE := iSQLE + Sel_CUBA2;
     iSQLS := iSQLS + Sel_S_CUBA2;
    end;


 iSQLE := iSQLE + Sel_CUBA3 +
         '           AND TO_DATE(TO_CHAR(EF_NFE.DATAENTRADA, ''DD/MM/YYYY''),'+
         '                       ''DD/MM/YYYY'') BETWEEN '+
         QuotedStr( DateToStr( DateTimePicker1.date ) )+ 'AND '+
         QuotedStr( DateToStr( DateTimePicker2.date ) );

 iSQLS := iSQLS + Sel_S_CUBA3 +
         '           AND TO_DATE(TO_CHAR(EF_NFS.DATAEMISSAOID, ''DD/MM/YYYY''),'+
         '                       ''DD/MM/YYYY'') BETWEEN '+
         QuotedStr( DateToStr( DateTimePicker1.date ) )+ 'AND '+
         QuotedStr( DateToStr( DateTimePicker2.date ) );

 if rgrpEmpresa.ItemIndex = 0 then
    begin
     iSQLE := iSQLE + ' AND EF_NFE.EMPRESAID  IN ( 12,13 ) ';
     iSQLS := iSQLS + ' AND EF_NFS.EMPRESAID  IN ( 12,13 ) ';
    end
 else
    begin
     iSQLE := iSQLE + ' AND EF_NFE.EMPRESAID  IN ( 15,17 ) ';
     iSQLS := iSQLS + ' AND EF_NFS.EMPRESAID  IN ( 15,17 ) ';
    end;

 if chkDepto.Checked then
    begin
     iSQLE := iSQLE + '  AND EF_ENT_TRANSP.NOMEFANTASIA LIKE  '+ QuotedStr( '%' + cmbTransp.Text + '%' );
     iSQLS := iSQLS + '  AND EF_ENT_TRANSP.NOMEFANTASIA LIKE  '+ QuotedStr( '%' + cmbTransp.Text + '%' );
    end;


 iSQLE := iSQLE + ' ' + Sel_CUBA4;
 iSQLS := iSQLS + ' ' + Sel_S_CUBA4;

 try
  ExecDynamicProvider( -1,  iSQLE, cdsE );
  ExecDynamicProvider( -1,  iSQLS, cdsS );

  cds0036.AppendData( cdsE.Data, True );
  cds0036.AppendData( cdsS.Data, True );

  frmRel0036 := TfrmRel0036.Create(nil);
  frmRel0036.QRLabel25.Caption := frmRel0036.QRLabel25.Caption  +'  '+ DateToStr( DateTimePicker1.date )+' a '+ DateToStr( DateTimePicker2.date );
  frmRel0036.QuickRep1.Preview;

  cds0036.EmptyDataSet;

 finally
  FreeAndNil( frmRel0036.QuickRep1 );
  FreeAndNil( frmRel0036 );
  FreeAndNil( cdsE );
  FreeAndNil( cdsS );
 end;
end;

procedure Tfrm0036.chkDeptoClick(Sender: TObject);
begin
 if cmbTransp.Enabled = False then
    cmbTransp.Enabled := True
 else
    cmbTransp.Enabled := False;
end;

procedure Tfrm0036.FormCreate(Sender: TObject);
var iSQL : String;
begin
 // Preenche combo com o campo Descrição do Departamento
 iSQL :=  'SELECT EF_ENTIDADE.ENTIDADEID, ' +
          '       EF_ENTIDADE.NOMEFANTASIA ' +
          '  FROM EF_ENTIDADE, ' +
          '       EF_ENTIDADEGRUPO ' +
          ' WHERE EF_ENTIDADE.ENTIDADEID = EF_ENTIDADEGRUPO.ENTIDADEID ' +
          ' AND EF_ENTIDADEGRUPO.CATEGORIAID = 4 ';

 AdicionarCamposCombo( cmbTransp, iSQL, 'NOMEFANTASIA' );

 DateTimePicker1.Date := FirstDayOfYear( pCnnMain.AppServer.iServerDate );
 DateTimePicker2.Date := pCnnMain.AppServer.iServerDate;
end;

end.
