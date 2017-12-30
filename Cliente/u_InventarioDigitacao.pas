unit u_InventarioDigitacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ActnList, XPStyleActnCtrls, ActnMan, wwdbedit,
  Wwdotdot, StdCtrls, ExtCtrls, DBCtrls, Mask, wwdbdatetimepicker, Buttons,
  tmbToolEdicaoTop, ActnCtrls, ToolWin, ComCtrls, Grids, DBGrids, DB,
  DBClient;

type
  TfrmInventarioDigitacao = class(TForm)
    StatusBar1: TStatusBar;
    Panel3: TPanel;
    CoolBar2: TCoolBar;
    ActionToolBar3: TActionToolBar;
    ActionToolBar4: TActionToolBar;
    CoolBar1: TCoolBar;
    tmbEdicaoTop2: TtmbEdicaoTop;
    tmbEdicaoTop1: TtmbEdicaoTop;
    ActionToolBar2: TActionToolBar;
    GroupBox1: TGroupBox;
    actmngDespesa: TActionManager;
    actInserir: TAction;
    actGravar: TAction;
    actCancelar: TAction;
    actFechar: TAction;
    ImageList1: TImageList;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    wwDBComboDlg1: TwwDBComboDlg;
    DBEdit2: TDBEdit;
    wwDBComboDlg3: TwwDBComboDlg;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    wwDBComboDlg5: TwwDBComboDlg;
    DBEdit4: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actInserirExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure actGravarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure wwDBComboDlg1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    FEmpresaID       : Integer;
    FHistInvetID     : Integer;
    FTipoCtgInventID : Integer;
    { Public declarations }
    procedure ConsistirQtdInventariada;
    procedure GravarItemInventario;
    procedure InserirRegDigitacao;
  end;

var
  frmInventarioDigitacao: TfrmInventarioDigitacao;

implementation

uses u_dmEF, FuncoesCliente, u_dmGSI;

{$R *.dfm}

procedure TfrmInventarioDigitacao.ConsistirQtdInventariada;
var iSql : String;
    Cds  : TClientDataSet;
begin
 Cds  := nil;
 iSQL := 'SELECT ESTOQUEFISICO FROM EF_PRODUTO' +
         ' WHERE ' +
         ' EMPRESAID = ' + dmEF.cdsInventarioDigEMPRESAID.AsString +
         ' AND PRODUTOID = ' + dmEF.cdsInventarioDigPRODUTOID.AsString;

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      if dmEF.cdsInventarioDigQUANTIDADE.Value <> Cds.FieldByName('ESTOQUEFISICO').Value then
         begin
//          MessageDlg('Quantidade digitada é diferente da quantidade física', mtInformation, [mbOK], 0 );
          dmEF.cdsInventarioDigDIFERENCASALDO.Value := 1;
         end;
     end
  else
     raise Exception.Create( 'Produto não localizado para o inventário' );

  Cds.Close;

 finally
  FreeAndNil( Cds );
 end;
end;

procedure TfrmInventarioDigitacao.InserirRegDigitacao;
begin
 dmEF.cdsInventarioDig.Insert;
 dmEF.cdsInventarioDigEMPRESAID.Value := FEmpresaID;
end;

procedure TfrmInventarioDigitacao.GravarItemInventario;
var cdsItem : TClientDataSet;
    iInvent, iItem : String;
begin
 if MessageDlg('Deseja gravar o produto inventariado?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    begin
     dmEF.cdsInventarioDig.Cancel;
     InserirRegDigitacao;
     exit;
    end;

 cdsItem := Nil;

 try
  try
   iInvent := ' EF_INVENTARIO.HISTINVENTARIOID = ' + IntToStr( FHistInvetID ) +
              ' AND EF_INVENTARIO.EMPRESAID    = ' + IntToStr( FEmpresaID ) +
              ' AND EF_INVENTARIO.PRODUTOID    = ' + dmEF.cdsInventarioDigPRODUTOID.AsString;

   GerarPesquisa( dmEF.cdsInventario, iInvent );

   if dmEF.cdsInventario.RecordCount < 1 then
      raise Exception.Create('Produto não localizado para inventariado');

   iItem   := 'SELECT HISTINVENTARIOID, INVENTARIOID, TIPOCTGINVENTID ' +
              ' FROM EF_INVENTARIOITEM' +
              ' WHERE ' +
              ' HISTINVENTARIOID    = ' + IntToStr( FHistInvetID ) +
              ' AND INVENTARIOID    = ' + dmEF.cdsInventarioINVENTARIOID.AsString +
              ' AND TIPOCTGINVENTID = ' + IntToStr( FTipoCtgInventID );

   ExecDynamicProvider( -1, iItem, cdsItem );

   if not cdsItem.IsEmpty then
      raise Exception.Create('Produto já foi inventariado');

   { Atualizar Digitação }
   dmEF.cdsInventarioDigHISTINVENTARIOID.Value := dmEF.cdsInventarioHISTINVENTARIOID.Value;
   dmEF.cdsInventarioDigINVENTARIOID.Value     := dmEF.cdsInventarioINVENTARIOID.Value;
   dmEF.cdsInventarioDigEMPRESAID.Value        := FEmpresaID;
   dmEF.cdsInventarioDigTIPOCTGINVENTID.Value  := FTipoCtgInventID;

   { Atualizar o Item de inventário }
   dmEF.cdsInventarioItem.Insert;
   dmEF.cdsInventarioItemTIPOCTGINVENTID.Value  := FTipoCtgInventID;
   dmEF.cdsInventarioItemDATACFGFISICA.Value    := dmEF.cdsInventarioDigDATACFGFISICA.Value;
   dmEF.cdsInventarioItemQUANTIDADE.Value       := dmEF.cdsInventarioDigQUANTIDADE.Value;

   if ( not dmEF.cdsInventarioDigREALIZADORID.IsNull ) then
      dmEF.cdsInventarioItemREALIZADORID.Value  := dmEF.cdsInventarioDigREALIZADORID.Value;

   dmEF.cdsInventarioItemDIGITADORID.Value      := dmEF.cdsInventarioDigDIGITADORID.Value;
   dmEF.cdsInventarioItem.Post;

   // Gravar a digitação do inventariado para históricos futuros
   ConsistirQtdInventariada;

   dmEF.cdsInventarioDig.Post;

   InserirRegDigitacao;

  except
  on E: Exception do
   begin
    MessageDlg(E.Message, mtError, [mbOK], 0 );
    dmEF.cdsInventarioItem.Cancel;
    dmEF.cdsInventarioDig.Cancel;
    InserirRegDigitacao;

   end
  end;
  cdsItem.Close;

 finally
  FreeAndNil( cdsItem );
 end;
end;

procedure TfrmInventarioDigitacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 dmEF.cdsInventarioDig.Cancel;
 Action := caFree;
 frmInventarioDigitacao := Nil;
end;

procedure TfrmInventarioDigitacao.actInserirExecute(Sender: TObject);
begin
 GravarItemInventario;
end;

procedure TfrmInventarioDigitacao.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
 // Habilitar a propriedade KeyPreview do Form para funcionar o Enter como Tab
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;

procedure TfrmInventarioDigitacao.actGravarExecute(Sender: TObject);
begin
 GravarItemInventario;
end;

procedure TfrmInventarioDigitacao.actCancelarExecute(Sender: TObject);
begin
 dmEF.cdsInventarioDig.Cancel;
 InserirRegDigitacao;
end;

procedure TfrmInventarioDigitacao.wwDBComboDlg1Exit(Sender: TObject);
begin
 GravarItemInventario;
end;

end.
