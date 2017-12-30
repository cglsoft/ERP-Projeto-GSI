unit u_ParPeca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, Mask, ActnMan, ActnCtrls,
  ActnMenus, ToolWin, tmbToolEdicaoTop, ActnList, XPStyleActnCtrls, ImgList;

type
  TfrmParPeca = class(TForm)
    tmbEdicaoTop1: TtmbEdicaoTop;
    ActionMainMenuBar1: TActionMainMenuBar;
    GroupBox19: TGroupBox;
    Label190: TLabel;
    Label191: TLabel;
    Label192: TLabel;
    Label195: TLabel;
    Label199: TLabel;
    Label200: TLabel;
    Label201: TLabel;
    Label194: TLabel;
    Label193: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit5: TMaskEdit;
    MaskEdit4: TMaskEdit;
    MaskEdit3: TMaskEdit;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    MaskEdit2: TMaskEdit;
    ComboBox1: TComboBox;
    BitBtn1: TBitBtn;
    StatusBar1: TStatusBar;
    MaskEdit6: TMaskEdit;
    MaskEdit7: TMaskEdit;
    MaskEdit8: TMaskEdit;
    Label1: TLabel;
    actmngParPeca: TActionManager;
    Action1: TAction;
    Action2: TAction;
    ImageList1: TImageList;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Action2Execute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure PesquisaPeca;
  public
    { Public declarations }
  end;

var
  frmParPeca: TfrmParPeca;

implementation

uses FuncoesCliente, u_dmOs;

{$R *.dfm}

procedure TfrmParPeca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action := cafree;
 frmParPeca := nil;
end;

procedure TfrmParPeca.Action2Execute(Sender: TObject);
begin
 Close;
end;

procedure TfrmParPeca.PesquisaPeca;
var iSQL : String;
begin
 with dmOS  do
 begin
  iSQL := 'SELECT OS_OSCLASSIFPECA.DATACLASSIFICACAO,'+
          '       OS_OSCLASSIFPECA.OSID,'+
          '       OS_OSCLASSIFPECA.PECAID,'+
          '       OS_OSCLASSIFPECA.CODIGOBARRASID,'+
          '       OS_OSCLASSIFPECA.PRODUTOID,'+
          '       OS_OSPECA.NFSID,'+
          '       OS_OSPECA.DATAPECA,'+
          '       OS_OSCLASSIFPECA.QUANTIDADE,'+
          '       EF_PRODUTO.DESCRICAOPORTUGUES,'+
          '       EF_PRODUTO.DESCRICAOINGLES,'+
          '       EF_PRODUTO.GRUPOID,'+
          '       OS_OSCLASSIFPECA.SERIEID,'+
          '       OS_OSCLASSIFPECA.MODELOID,'+
          '       OS_OSCLASSIFPECA.CLASSIFPECAID,'+
          '       OS_CLASSIFPECA.DESCRICAO,'+
          '       OS_OSCLASSIFPECA.VLRFOB,'+
          '       OS_OSCLASSIFPECA.USUARIO'+
          '  FROM OS_OSCLASSIFPECA,'+
          '       OS_CLASSIFPECA,'+
          '       OS_OSPECA,'+
          '       EF_PRODUTO'+
          ' WHERE OS_CLASSIFPECA.CLASSIFPECAID = OS_OSCLASSIFPECA.CLASSIFPECAID'+
          '       AND OS_OSPECA.OSID   = OS_OSCLASSIFPECA.OSID'+
          '       AND OS_OSPECA.PECAID = OS_OSCLASSIFPECA.PECAID'+
          '       AND EF_PRODUTO.PRODUTOID(+) = OS_OSCLASSIFPECA.PRODUTOID';

     { Numero da OSID }
  if ( MaskEdit1.Text <> '' ) then
     iSQL := iSQL +' AND OS_OSCLASSIFPECA.OSID like '+ QuotedStr(MaskEdit1.Text+'%');

    { Data da Classificação - Período Inicial }
  if DateTimePicker1.Checked then
     iSQL := iSQL +' AND OS_OSCLASSIFPECA.DATACLASSIFICACAO >= '+ QuotedStr( DateToStr( DateTimePicker1.Date ) );

    { Data da Classificação - Período Inicial }
  if DateTimePicker2.Checked then
     iSQL := iSQL +' AND OS_OSCLASSIFPECA.DATACLASSIFICACAO <= '+QuotedStr( DateToStr( DateTimePicker2.Date ) );

    { Grupo }
  if ( ComboBox1.Text <> '' ) and ( ComboBox1.Text <> ' ' ) then
     iSQL := iSQL +' AND EF_PRODUTO.GRUPOID LIKE '+ QuotedStr(ComboBox1.Text+'%' );

   { ProdutoId }
  if ( MaskEdit2.Text <> '' ) then
     iSQL := iSQL +' AND EF_PRODUTO.PRODUTOID = '+ MaskEdit2.Text;

     { SerieId }
  if MaskEdit3.Text <> '' then
     iSQL := iSQL +' AND OS_OSCLASSIFPECA.SERIEID like '+ QuotedStr(MaskEdit3.Text+'%');

     { ModeloId }
  if ( MaskEdit4.Text <> '' ) then
     iSQL := iSQL +' AND OS_OSCLASSIFPECA.MODELOID like '+ QuotedStr(MaskEdit4.Text+'%');

     { PecaId }
  if ( MaskEdit5.Text <> '' ) then
     iSQL := iSQL +' AND OS_OSCLASSIFPECA.PECAID = '+ MaskEdit5.Text;

     { ClassifPecaId }
  if ( MaskEdit6.Text <> '' ) then
     iSQL := iSQL +' AND OS_OSCLASSIFPECA.CLASSIFPECAID = '+ MaskEdit6.Text;

     { Codigo de BarrasId }
  if ( MaskEdit7.Text <> '' ) then
     iSQL := iSQL +' AND OS_OSCLASSIFPECA.CODIGOBARRASID = '+ MaskEdit7.Text;

     { Usuário  }
  if ( MaskEdit4.Text <> '' ) then
     iSQL := iSQL +' AND OS_OSCLASSIFPECA.USUARIO LIKE '+QuotedStr( MaskEdit8.Text+'%');

  iSQL := iSQL + ' ORDER BY DATACLASSIFICACAO, OSID';

  try
   ExecDynamicProvider(-1,iSQL, cdsParPeca );
  except on
   E: Exception do
   raise Exception.Create(E.Message);
  end;
  frmParPeca.Close;
 end;
end;

procedure TfrmParPeca.BitBtn1Click(Sender: TObject);
begin
 PesquisaPeca;
end;

procedure TfrmParPeca.FormCreate(Sender: TObject);
var iSQL : String;
begin
 iSQL := 'SELECT EF_GRUPO.GRUPOID FROM EF_GRUPO';
 AdicionarCamposCombo( ComboBox1,iSQL,'GRUPOID');
 DateTimePicker1.DateTime := pCnnMain.AppServer.iServerDate;
 DateTimePicker2.DateTime := pCnnMain.AppServer.iServerDate;
 DateTimePicker1.Checked := False;
 DateTimePicker2.Checked := False;
end;

end.
