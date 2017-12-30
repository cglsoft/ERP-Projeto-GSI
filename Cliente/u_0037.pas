unit u_0037;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, fcLabel, DB, DBClient,cDateTime,
  ExtCtrls, Mask;

type
  Tfrm0037 = class(TForm)
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
    cds0037: TClientDataSet;
    ds0037: TDataSource;
    chkComEspecif: TCheckBox;
    mktDescCom: TMaskEdit;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm0037: Tfrm0037;

const Sel_INTER = 'SELECT PP_PEDVEND.PEDVENDID,' +
                  '       PP_PEDVEND.DATAPEDIDO,' +
                  '       PP_PEDVEND.NUMPEDVENDEDORID,' +
                  '       PP_PEDVEND.ORIGEMVENDAID,' +
                  '       PP_ORIGEMVENDA.DESCRICAO L_DESCR_ORIGEMVENDA,' +
                  '       PP_PEDVEND.TIPOVENDAID,' +
                  '       PP_TIPOVENDA.DESCRICAO L_DESCRICAOTIPOVENDA,' +
                  '       PP_PEDVEND.EMPRESAID,' +
                  '       PP_PEDVEND.PAGAMENTOCOMISSAO,' +
                  '       PP_PEDVEND.CLIENTEID,' +
                  '       EF_ENTIDADE.NOME,' +
                  '       EF_ENTIDADE.CPFCNPJ L_CPFCNPJ,' +
                  '       PP_PEDVEND.DESTINATARIOID,' +
                  '       EF_ENT_DEST.NOME L_NOMEDESTINATARIO,' +
                  '       EF_ENT_DEST.CPFCNPJ L_CPFCNPJDESTINATARIO,' +
                  '       PP_PEDVEND.CIDADEORIG,' +
                  '       PP_PEDVEND.SIGLAUFORIGID,' +
                  '       PP_PEDVEND.PAISORIG,' +
                  '       EF_NATUREZAOP.CFOP L_CFOP,' +
                  '       EF_NATUREZAOP.DESCRICAOOPERACAOUSUARIO L_DESCRICAOUSUARIO,' +
                  '       EF_NFS.NFSID L_NFSID,' +
                  '       EF_NFS.DATAEMISSAOID L_DATAEMISSAOID,' +
                  '       PP_PEDVENDINTERV.CONDINTERVID,' +
                  '       PP_CONDPAGTOPROP.DESCRICAOPAGTO L_DESCRICAOPAGTO,' +
                  '       PP_CONDPAGTOPROP.DEDUZIRCOMISSAO L_DEDUZIRCOMISSAO,' +
                  '       PP_PEDVENDINTERV.DESCRICAO AS DESCRICAOINTERV,' +
                  '       PP_PEDVENDINTERV.VLRINTERVENIENCIA,' +
                  '       PP_PEDVEND.USUARIO' +
                  '  FROM PP_PEDVEND PP_PEDVEND,' +
                  '       PP_ORIGEMVENDA PP_ORIGEMVENDA,' +
                  '       PP_TIPOVENDA PP_TIPOVENDA,' +
                  '       EF_ENTIDADE EF_ENTIDADE,' +
                  '       EF_ENTIDADE EF_ENT_DEST,' +
                  '       EF_NATUREZAOP,' +
                  '       EF_NFS EF_NFS,' +
                  '       PP_PEDVENDINTERV PP_PEDVENDINTERV,' +
                  '       PP_CONDPAGTOPROP PP_CONDPAGTOPROP' +
                  ' where PP_ORIGEMVENDA.ORIGEMVENDAID(+) = PP_PEDVEND.ORIGEMVENDAID' +
                  '   AND PP_TIPOVENDA.TIPOVENDAID(+) = PP_PEDVEND.TIPOVENDAID' +
                  '   AND EF_ENTIDADE.ENTIDADEID(+) = PP_PEDVEND.CLIENTEID' +
                  '   AND EF_ENT_DEST.ENTIDADEID(+) = PP_PEDVEND.DESTINATARIOID' +
                  '   AND EF_NATUREZAOP.NATUREZAOPID(+) = PP_PEDVEND.NATUREZAOPID' +
                  '   AND PP_PEDVEND.EMPRESAID = EF_NFS.EMPRESAID(+)' +
                  '   AND PP_PEDVEND.PDSID = EF_NFS.PDSID(+)' +
                  '   AND PP_PEDVEND.DATAPEDIDOPDSID = EF_NFS.DATAPEDIDO(+)' +
                  '   AND PP_PEDVEND.PEDVENDID = PP_PEDVENDINTERV.PEDVENDID' +
                  '   AND PP_CONDPAGTOPROP.CONDPAGTOPROPID(+) = PP_PEDVENDINTERV.CONDINTERVID' +
                  '   AND NVL(PP_PEDVEND.CANCELADO, 0) = 0';

implementation

uses FuncoesCliente, u_Exportar, u_Rel0037;

{$R *.dfm}

procedure Tfrm0037.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action  := caFree;
 frm0037 := nil;
end;

procedure Tfrm0037.BitBtn2Click(Sender: TObject);
begin
 frm0037.Close;
end;

procedure Tfrm0037.BitBtn3Click(Sender: TObject);
begin
 if not cds0037.IsEmpty then
    begin
     frmExportar := TfrmExportar.Create(nil);
     frmExportar.DataSource := ds0037;
     frmExportar.Show;
    end
 else
    MessageDlg('É necessário Gerar o Relatório primeiro!',mtWarning, [mbok],0 );
end;

procedure Tfrm0037.BitBtn1Click(Sender: TObject);
var cds  : TClientDataSet;
    iSQL : String;
begin
 iSQL := Sel_INTER;
 cds  := Nil;

 iSQL := iSQL +
         '           AND EF_NFS.DATAEMISSAOID BETWEEN '+
         QuotedStr( DateToStr( DateTimePicker1.date ) )+ 'AND '+
         QuotedStr( DateToStr( DateTimePicker2.date ) );


 if chkComEspecif.Checked then
    iSQL := iSQL + '  AND NVL( PP_CONDPAGTOPROP.DEDUZIRCOMISSAO,0 ) =  1 ';


 try
  ExecDynamicProvider( -1,  iSQL, cds );

  cds0037.AppendData( cds.Data, True );

  frmRel0037 := TfrmRel0037.Create(nil);
  frmRel0037.QRLabel19.Caption := frmRel0037.QRLabel19.Caption  +'  '+ DateToStr( DateTimePicker1.date )+' a '+ DateToStr( DateTimePicker2.date );
  frmRel0037.QuickRep1.Preview;

  cds0037.EmptyDataSet;

 finally
  FreeAndNil( frmRel0037.QuickRep1 );
  FreeAndNil( frmRel0037 );
  FreeAndNil( cds );
 end;
end;

procedure Tfrm0037.FormCreate(Sender: TObject);
begin
 DateTimePicker1.Date := FirstDayOfYear( pCnnMain.AppServer.iServerDate );
 DateTimePicker2.Date := pCnnMain.AppServer.iServerDate;
end;

end.
