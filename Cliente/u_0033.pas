unit u_0033;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdbdatetimepicker, Buttons,cDateTime, DB, DBClient,
  ExtCtrls;

type
  Tfrm0033 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    cdsRelPedVend: TClientDataSet;
    dsRelPedVend: TDataSource;
    Panel20: TPanel;
    Panel23: TPanel;
    Label59: TLabel;
    rgrpEmpresa: TRadioGroup;
    cmbbxOrigemVenda: TComboBox;
    Label3: TLabel;
    cmbbxTipoVenda: TComboBox;
    Label4: TLabel;
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    function RetornoOrigemVenda: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm0033: Tfrm0033;

implementation

uses FuncoesCliente, u_Rel0033, u_Exportar;

{$R *.dfm}

function Tfrm0033.RetornoOrigemVenda : String;
var cds : TClientDataSet;
var iSQL : String;
begin
 iSQL := ' SELECT ORIGEMVENDAID, DESCRICAO '+
         '   FROM '+
         '   PP_ORIGEMVENDA WHERE DESCRICAO = ' + QuotedStr( cmbbxOrigemVenda.Text );
 try
  ExecDynamicProvider( -1, iSQL, cds );

  if cds.RecordCount < 1 then
     Result := '1'
  else
     Result := cds.FieldByName('ORIGEMVENDAID').AsString;
  cds.Close;
 finally
  FreeAndNil( cds );
 end;
end;

procedure Tfrm0033.FormShow(Sender: TObject);
begin
 wwDBDateTimePicker1.Date :=  FirstDayOfMonth(  pCnnMain.AppServer.IServerDate );
 wwDBDateTimePicker2.Date :=  LastDayOfMonth(  pCnnMain.AppServer.IServerDate );
end;

procedure Tfrm0033.BitBtn3Click(Sender: TObject);
begin
 frm0033.Close;
end;

procedure Tfrm0033.BitBtn1Click(Sender: TObject);
var iSQL : String;
begin
 iSQL := 'SELECT'+
         '  PP_PEDVEND.EMPRESAID,'+
         '  PP_PEDVEND.PEDVENDID,'+
         '  PP_PEDVEND.DATAPEDIDO,'+
         '  PP_PEDVEND.ORIGEMVENDAID, ' +
         '  PP_ORIGEMVENDA.DESCRICAO L_DESCRICAOORIGEMVENDA, ' +
         '  PP_PEDVEND.TIPOVENDAID, ' +
         '  PP_TIPOVENDA.DESCRICAO L_DESCRICAOTIPOVENDA, ' +
         '  PP_PEDVEND.CLIENTEID,'+
         '  EF_ENTIDADE.NOME,'+
         '  PP_PEDVEND.DESTINATARIOID,'+
         '  EF_ENTIDADEDEST.NOME NOMEDESTINATARIO,'+
         '  PP_PEDVEND.CIDADEORIG,'+
         '  PP_PEDVEND.SIGLAUFORIGID,'+
         '  PP_PEDVEND.CONDPAGTOID,'+
         '  EF_CONDPAGTO.DESCRICAO,'+
         '  PP_PEDVENDITEM.PRODUTOID,'+
         '  EF_PRODUTO.DESCRICAOPORTUGUES,'+
         '  PP_PEDVENDITEM.QUANTIDADE,'+
         '  PP_PEDVENDITEM.VLRPRECOUNITARIO,'+
         '  PP_PEDVENDITEM.VLRPRECOTOTAL,'+

         '  (CASE WHEN PP_PEDVEND.ORIGEMVENDAID = 1 THEN'+
         '       PP_PEDVEND.VLRTOTALGERAL'+
         '      ELSE'+
         '       PP_PEDVEND.VLRTOTALVENDA'+
         '  END) VLRTOTALGERAL'+
         '  FROM'+
         '  PP_PEDVEND PP_PEDVEND,'+
         '  EF_ENTIDADE EF_ENTIDADE,'+
         '  EF_ENTIDADE EF_ENTIDADEDEST,'+
         '  PP_PEDVENDITEM PP_PEDVENDITEM,'+
         '  EF_PRODUTO EF_PRODUTO,'+
         '  EF_CONDPAGTO EF_CONDPAGTO,'+
         '  PP_ORIGEMVENDA,'+
         '  PP_TIPOVENDA ' +
         ' WHERE'+
         '  EF_ENTIDADE.ENTIDADEID = PP_PEDVEND.CLIENTEID'+
         '  AND EF_ENTIDADEDEST.ENTIDADEID(+) = PP_PEDVEND.DESTINATARIOID'+
         '  AND PP_PEDVENDITEM.PEDVENDID = PP_PEDVEND.PEDVENDID'+
         '  AND EF_CONDPAGTO.CONDPAGTOID(+) = PP_PEDVEND.CONDPAGTOID'+
         '  AND EF_PRODUTO.EMPRESAID = PP_PEDVENDITEM.EMPRESAID'+
         '  AND EF_PRODUTO.PRODUTOID = PP_PEDVENDITEM.PRODUTOID'+
         '  AND PP_PEDVEND.ORIGEMVENDAID = PP_ORIGEMVENDA.ORIGEMVENDAID(+) ' +
         '  AND PP_PEDVEND.TIPOVENDAID = PP_TIPOVENDA.TIPOVENDAID(+) ' +
         '  AND PP_PEDVEND.DATAPEDIDO BETWEEN'+ QuotedStr( wwDBDateTimePicker1.Text )+ ' AND'+
         '                                   '+ QuotedStr( wwDBDateTimePicker2.Text );

  if cmbbxOrigemVenda.Text <> '' then
     iSQL := iSQL + ' AND PP_PEDVEND.ORIGEMVENDAID = ' + RetornoOrigemVenda;

  iSQL := iSQL + '  ORDER BY PP_PEDVEND.PEDVENDID';

 try
  ExecDynamicProvider(-1, iSQL, cdsRelPedVend );

  frmRel0033  := TfrmRel0033.Create(nil);
  frmRel0033.QRLabel11.Caption := frmRel0033.QRLabel11.Caption +' '+ wwDBDateTimePicker1.Text+ ' à '+ wwDBDateTimePicker2.Text;
  frmRel0033.QuickRep1.PreviewModal;
 finally
  FreeAndNil( frmRel0033.QuickRep1 );
  FreeAndNil( frmRel0033 );
 end;

end;

procedure Tfrm0033.BitBtn2Click(Sender: TObject);
begin
 if not cdsRelPedVend.IsEmpty then
    begin
     frmExportar := TfrmExportar.Create(nil);
     frmExportar.DataSource := dsRelPedVend;
     frmExportar.Show;
    end
 else
    MessageDlg('É necessário Gerar o Relatório primeiro!',mtWarning, [mbok],0 );
end;

procedure Tfrm0033.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := Cafree;
 frm0033 := nil;
end;

procedure Tfrm0033.FormCreate(Sender: TObject);
var sSQL,sSQL2 : String;
begin
 sSQL := ' SELECT DESCRICAO FROM PP_ORIGEMVENDA';
 sSQL2 := ' SELECT DESCRICAO FROM PP_TIPOVENDA';

 AdicionarCamposCombo( cmbbxOrigemVenda, sSQL, 'DESCRICAO' );
 AdicionarCamposCombo( cmbbxTipoVenda, sSQL2, 'DESCRICAO' );
end;

end.
