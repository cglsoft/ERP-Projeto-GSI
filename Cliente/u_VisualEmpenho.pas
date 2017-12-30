unit u_VisualEmpenho;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ActnList, XPStyleActnCtrls, ActnMan, ExtCtrls,
  PnAjustaGrid, ActnCtrls, ToolWin, ComCtrls, DB, DBClient, Grids, DBGrids;

type
  TfrmVisualEmpenho = class(TForm)
    CoolBar1: TCoolBar;
    ActionToolBar1: TActionToolBar;
    tmbajtGeral: tPanel1;
    actmngRDV: TActionManager;
    actSelecionar: TAction;
    actFechar: TAction;
    imglstRDV: TImageList;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    dbgrdVisualEmpenho: TDBGrid;
    dsVisualEmpenho: TDataSource;
    cdsVisualEmpenho: TClientDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure actSelecionarExecute(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure dbgrdVisualEmpenhoDblClick(Sender: TObject);
  private
    { Private declarations }
    procedure SelecionarPecaEmpenho;
  public
    { Public declarations }
  end;

var
  frmVisualEmpenho: TfrmVisualEmpenho;

implementation

uses u_dmEF, FuncoesCliente;

{$R *.dfm}

procedure TfrmVisualEmpenho.SelecionarPecaEmpenho;
var iSql : String;
begin
 iSql := 'SELECT'+
         '  OS_OSPECA.OSID,'+
         '  OS_OSPECA.PECAID,'+
         '  OS_OSPECA.EMPRESAID,'+
         '  OS_OSPECA.PRODUTOID,'+
         '  OS_OSPECA.NFSID,'+
         '  OS_OSPECA.DATAEMISSAOID,'+
         '  OS_OSPECA.DATAPECA,'+
         '  OS_OSPECA.QUANTIDADE,'+
         '  OS_OSPECA.UTILIZADO,'+
         '  OS_OSPECA.ESTOQUEUTILIZADO,'+
         '  OS_OSPECA.USUARIO'+
         '  FROM'+
         '  OS_OSPECA OS_OSPECA'+
         ' WHERE'+
         '  OS_OSPECA.OSID = ' +  QuotedStr( dmEF.cdsPdsOSID.AsString ) +
         '  AND NVL( OS_OSPECA.UTILIZADO, 0 ) = 0';

 ExecDynamicProvider( -1, iSql, cdsVisualEmpenho );
end;


procedure TfrmVisualEmpenho.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action           := caFree;
 frmVisualEmpenho := Nil;
end;

procedure TfrmVisualEmpenho.FormCreate(Sender: TObject);
begin
 SelecionarPecaEmpenho;
end;

procedure TfrmVisualEmpenho.actSelecionarExecute(Sender: TObject);
var iUpdEmpenho : String;
begin
 try
  with dmEF do
  begin
   if cdsVisualEmpenho.IsEmpty then
      raise  Exception.Create('Não à peças em empenho a serem utilizadas');

   cdsPdsItem.Insert;
   cdsPdsItemEMPENHO.Value          := 1;
   cdsPdsItemEMPENHOITEMID.Value    := cdsVisualEmpenho.FieldByName('PECAID').Value;
   cdsPdsItemESTOQUEUTILIZADO.Value := 'E';

   cdsPdsItemPRODUTOID.Value        := cdsVisualEmpenho.FieldByName('PRODUTOID').Value;
   cdsPdsItemQUANTIDADE.Value       := cdsVisualEmpenho.FieldByName('QUANTIDADE').Value;
   cdsPdsItem.Post;

   iUpdEmpenho := 'UPDATE OS_OSPECA SET UTILIZADO = 1 ' +
                  ' WHERE ' +
                  ' OSID = ' + QuotedStr( cdsVisualEmpenho.FieldByName('OSID').AsString ) +
                  ' AND PECAID = ' + cdsVisualEmpenho.FieldByName('PECAID').AsString;

   ExecDML( iUpdEmpenho );
  end;

  SelecionarPecaEmpenho;

 except
  on E: Exception do
  begin
   MessageDlg( E.Message  , mtInformation,[mbOk], 0);
   dmEF.cdsPdsItem.Cancel;
  end;
 end;
end;

procedure TfrmVisualEmpenho.actFecharExecute(Sender: TObject);
begin
 Close
end;

procedure TfrmVisualEmpenho.dbgrdVisualEmpenhoDblClick(Sender: TObject);
begin
 actSelecionarExecute(Sender);
end;

end.
