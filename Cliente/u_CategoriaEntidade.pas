unit u_CategoriaEntidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ActnList, XPStyleActnCtrls, ActnMan, ExtCtrls,
  ActnCtrls, ToolWin, ComCtrls, StdCtrls, DBClient;

type
  TfrmCategoriaEntidade = class(TForm)
    rggrpCategoria: TRadioGroup;
    CoolBar1: TCoolBar;
    ActionToolBar1: TActionToolBar;
    actmngRDV: TActionManager;
    actAlterar: TAction;
    actFechar: TAction;
    imglstRDV: TImageList;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCategoriaEntidade: TfrmCategoriaEntidade;

implementation

uses u_dmEF, FuncoesDSI, FuncoesCliente;

{$R *.dfm}

procedure TfrmCategoriaEntidade.FormClose(Sender: TObject;
  var Action: TCloseAction);
var Cds  : TClientDataSet;
    iSql, sComplSql : String;
begin

 case rggrpCategoria.ItemIndex of
 0 : sComplSql := 'WHERE ENTIDADEID >= 1 AND ENTIDADEID <= 19999';
 1 : sComplSql := 'WHERE ENTIDADEID >= 20000 AND ENTIDADEID <= 29999';
 2 : sComplSql := 'WHERE ENTIDADEID >= 30000 AND ENTIDADEID <= 39999';
 3 : sComplSql := 'WHERE ENTIDADEID >= 40000 AND ENTIDADEID <= 49999';
 4 : sComplSql := 'WHERE ENTIDADEID >= 50000 AND ENTIDADEID <= 59999';
 end;

 iSQL := 'SELECT NVL( MAX( ENTIDADEID ), 0 ) ' +
          ' FROM EF_ENTIDADE ' + sComplSql;
 Cds := TClientDataSet.Create( nil );
 try
  ExecDynamicProvider( -1, iSQL, Cds );
  if not Cds.IsEmpty then
     dmEF.cdsEntidadeENTIDADEID.Value := Cds.Fields[0].Value + 1;
 finally
  Cds.Close;
  FreeAndNil( Cds );
 end;

 Action := caFree;
 frmCategoriaEntidade := Nil;
end;

procedure TfrmCategoriaEntidade.FormCreate(Sender: TObject);
begin
 dmEF.cdsCategoria.Open;
 dmEF.cdsCategoria.First;
 while not dmEF.cdsCategoria.Eof do
 begin
  rggrpCategoria.Items.Add( StrZero( dmEF.cdsCategoriaCATEGORIAID.AsInteger, 2, 0 ) + '-' + dmEF.cdsCategoriaDESCRICAO.AsString );
  dmEF.cdsCategoria.Next;
 end;
end;

procedure TfrmCategoriaEntidade.actAlterarExecute(Sender: TObject);
begin
 Close;
end;

procedure TfrmCategoriaEntidade.actFecharExecute(Sender: TObject);
begin
 Close;
end;

end.
