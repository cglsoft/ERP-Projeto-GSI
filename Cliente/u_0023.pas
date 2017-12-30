unit u_0023;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit, Wwdbspin, ExtCtrls, DB, DBClient,
  Buttons, ComCtrls, Grids, DBGrids;

type
  Tfrm0023 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    rgrpMatAvaliado: TRadioGroup;
    rgrpPecaUtiliz: TRadioGroup;
    BitBtn3: TBitBtn;
    Panel23: TPanel;
    Label59: TLabel;
    Panel20: TPanel;
    wwdbspedtProduto: TwwDBSpinEdit;
    Label3: TLabel;
    StatusBar1: TStatusBar;
    cds0023: TClientDataSet;
    ds0023: TDataSource;
    cmbbxTipoOS: TComboBox;
    Label1: TLabel;
    rgrpDocEntra: TRadioGroup;
    Label2: TLabel;
    cmbGrupo: TComboBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  const Select_PecaClassif = 'SELECT OS_OSPECA.OSID,' +
                             '       OS_OSPECA.PECAID,' +
                             '       OS_OSPECA.EMPRESAID,' +
                             '       OS_OSPECA.PRODUTOID,' +
                             '       EF_PRODUTO.DESCRICAOPORTUGUES,' +
                             '       EF_PRODUTO.LOCALIZACAO,' +
                             '       OS_OSPECA.NFSID,' +
                             '       OS_OSPECA.DATAEMISSAOID,' +
                             '       OS_OSPECA.DATAPECA,' +
                             '       OS_OSPECA.QUANTIDADE,' +
                             '       OS_OSPECA.UTILIZADO,' +
                             '       OS_OSPECA.IMPRESSO,' +
                             '       OS_OSPECA.ESTOQUEUTILIZADO,' +
                             '       OS_OSPECA.DOCUMENTOENTRADA,' +
                             '       NVL(OS_OSPECA.MATERIALAVALIADO, 0) MATERIALAVALIADO,' +
                             '       OS_OSPECA.AVALIADOR,' +
                             '       OS_OSPECA.JUSTIFICATIVA,' +
                             '       OS_OSPECA.USUARIO,' +
                             '       OS_OS.STATUS,' +
                             '       EF_GRUPO.SIGLAGRUPO,' +
                             '       OS_OSCLASSIFPECA.ITEMID,' +
                             '       OS_OSCLASSIFPECA.SERIEID,' +
                             '       OS_OSCLASSIFPECA.MODELOID,' +
                             '       OS_OSCLASSIFPECA.CLASSIFPECAID,' +
                             '       OS_CLASSIFPECA.DESCRICAO,' +
                             '       OS_OSCLASSIFPECA.DATACLASSIFICACAO,' +
                             '       OS_OSCLASSIFPECA.QUANTIDADE AS QTD_CLASSIF,' +
                             '       OS_OSCLASSIFPECA.VLRFOB,' +
                             '       OS_OSCLASSIFPECA.OBSERVACAO' +
                             '  FROM OS_OSPECA OS_OSPECA,' +
                             '       OS_OS OS_OS,' +
                             '       EF_PRODUTO EF_PRODUTO,' +
                             '       EF_GRUPO EF_GRUPO,' +
                             '       OS_OSCLASSIFPECA OS_OSCLASSIFPECA,' +
                             '       OS_CLASSIFPECA OS_CLASSIFPECA' +
                             ' WHERE OS_OS.OSID = OS_OSPECA.OSID' +
                             '       AND EF_PRODUTO.EMPRESAID(+) = OS_OSPECA.EMPRESAID' +
                             '       AND EF_PRODUTO.PRODUTOID(+) = OS_OSPECA.PRODUTOID' +
                             '       AND EF_PRODUTO.GRUPOID = EF_GRUPO.GRUPOID(+)' +
                             '       AND OS_OSPECA.OSID = OS_OSCLASSIFPECA.OSID(+)' +
                             '       AND OS_OSPECA.PECAID = OS_OSCLASSIFPECA.PECAID(+)' +
                             '       AND OS_CLASSIFPECA.CLASSIFPECAID(+) = OS_OSCLASSIFPECA.CLASSIFPECAID';

var
  frm0023: Tfrm0023;

implementation

uses FuncoesCliente, u_Rel0023, u_Exportar;

{$R *.dfm}

procedure Tfrm0023.BitBtn2Click(Sender: TObject);
var iSQL : String;

 function RetornoPesqTipoOS : String;
 var cdsSub : TClientDataSet;
 var iSQL : String;
 begin
  iSQL := ' SELECT TIPOOSID '+
          '   FROM '+
          '   OS_TIPOOS WHERE DESCRICAO = ' + QuotedStr( cmbbxTipoOS.Text );
  try
   ExecDynamicProvider( -1, iSQL, cdsSub );

   if cdsSub.RecordCount < 1 then
      Result := '1'
   else
      Result := cdsSub.FieldByName('TIPOOSID').AsString;

  finally
   FreeAndNil( cdsSub );
  end;
 end;

begin
 iSQL := Select_PecaClassif;

 case rgrpPecaUtiliz.ItemIndex of
 0 : iSQL := iSQL + '  AND NVL( OS_OSPECA.UTILIZADO, 0 ) = 0';
 1 : iSQL := iSQL + '  AND NVL( OS_OSPECA.UTILIZADO, 0 ) = 1';
 end;

 case rgrpMatAvaliado.ItemIndex of
 0 : iSQL := iSQL +  ' AND NVL( OS_OSPECA.MATERIALAVALIADO, 0 ) = 0 ';
 1 : iSQL := iSQL +  ' AND NVL( OS_OSPECA.MATERIALAVALIADO, 0 ) = 1 ';
 end;

 case rgrpDocEntra.ItemIndex of
 1 : iSQL := iSQL +  ' AND NVL( OS_OSPECA.DOCUMENTOENTRADA, 0 ) = 0 ';
 0 : iSQL := iSQL +  ' AND NVL( OS_OSPECA.DOCUMENTOENTRADA, 0 ) = 1 ';
 end;

 if ( cmbbxTipoOS.Text <> '' ) then
    iSQL := iSQL + ' AND OS_OS.TIPOOSID = ' + QuotedStr( RetornoPesqTipoOS );

 if ( cmbGrupo.Text <> '' ) then
    iSQL := iSQL + ' AND EF_GRUPO.SIGLAGRUPO = ' + QuotedStr( cmbGrupo.Text );

 if wwdbspedtProduto.Value <> 0 then
    iSQL := iSQL + ' AND OS_OSPECA.PRODUTOID = ' + wwdbspedtProduto.Text;

 try
  ExecDynamicProvider(-1, iSQL, cds0023 );

  cds0023.AddIndex('idx1','OSID;PECAID',[ixCaseInsensitive],'','',0 );
  cds0023.IndexName := 'idx1';

  Application.CreateForm( TfrmRel0023, frmRel0023 );
  frmRel0023.QuickRep1.PreviewModal;
  cds0023.DeleteIndex('idx1');
 finally
  FreeAndNil( frmRel0023.QuickRep1 );
  FreeAndNil( frmRel0023 );
 end;
end;

procedure Tfrm0023.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action  := cafree;
 frm0023 := nil;
end;

procedure Tfrm0023.BitBtn1Click(Sender: TObject);
begin
 frm0023.Close;
end;

procedure Tfrm0023.FormCreate(Sender: TObject);
var iSQL : String;
begin
 iSQL := ' SELECT'+
         '   DESCRICAO'+
         '   FROM '+
         '   OS_TIPOOS';
 AdicionarCamposCombo( cmbbxTipoOS,iSQL,'DESCRICAO' );


 iSQL := ' SELECT'+
         '   SIGLAGRUPO'+
         '   FROM '+
         '   EF_GRUPO';
 AdicionarCamposCombo( cmbGrupo, iSQL, 'SIGLAGRUPO' );
end;

procedure Tfrm0023.BitBtn3Click(Sender: TObject);
begin
 if not cds0023.IsEmpty then
    begin
     frmExportar := TfrmExportar.Create(nil);
     frmExportar.DataSource := ds0023;
     frmExportar.Show;
    end
 else
    MessageDlg('É necessário Gerar o Relatório primeiro!',mtWarning, [mbok],0 );
end;

end.
