unit u_VisualReservaPeca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ActnList, XPStyleActnCtrls, ActnMan, StdCtrls, DBCtrls,
  Mask, ComCtrls, ActnCtrls, ToolWin, tmbToolManutencaoTop, Grids, DBGrids,
  ExtCtrls, ActnMenus, PnAjustaGrid;

type
  TfrmVisualReservaPeca = class(TForm)
    Splitter1: TSplitter;
    StatusBar1: TStatusBar;
    GroupBox1: TGroupBox;
    dbgrdPdsLogReserva: TDBGrid;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    tmbManutTop1: TtmbManutTop;
    tmbajtgrdInventario: tPanel1;
    ActionToolBar1: TActionToolBar;
    ActionMainMenuBar1: TActionMainMenuBar;
    actmngReserva: TActionManager;
    actVisualPedido: TAction;
    actEditarLog: TAction;
    actExportar: TAction;
    actFechar: TAction;
    imglstReserva: TImageList;
    Label4: TLabel;
    DBMemo1: TDBMemo;
    actLiberarPedido: TAction;
    actBloqPedido: TAction;
    GroupBox4: TGroupBox;
    dbgrdPdsLogReservaItem: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure actEditarLogExecute(Sender: TObject);
    procedure actVisualPedidoExecute(Sender: TObject);
    procedure actLiberarPedidoExecute(Sender: TObject);
    procedure actBloqPedidoExecute(Sender: TObject);
    procedure actExportarExecute(Sender: TObject);
    procedure dbgrdPdsLogReservaDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
  private
    procedure SetTmbManutencaoTop;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVisualReservaPeca: TfrmVisualReservaPeca;

implementation

uses u_dmCM, u_dmEF, u_PadraoEdicao, u_PDS, FuncoesCliente, u_Exportar,
  u_dmGSI;

{$R *.dfm}

procedure TfrmVisualReservaPeca.SetTmbManutencaoTop;
begin
 tmbManutTop1.TtmbDataSource        := dmEF.dsPdsLogReserva;
 tmbManutTop1.TtmbPreencheCombos    := True;
 tmbManutTop1.cbxCampos.ItemIndex   := 1;
 tmbManutTop1.cbxCondicao.ItemIndex := 3;
 tmbManutTop1.cbxCampos.OnExit( Self );

 if Assigned( frmVisualReservaPeca ) then
    frmVisualReservaPeca.ActiveControl := tmbManutTop1.mktConteudo;
end;

procedure TfrmVisualReservaPeca.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 frmVisualReservaPeca := Nil;
end;

procedure TfrmVisualReservaPeca.FormShow(Sender: TObject);
begin
 SetTmbManutencaoTop;
 dmEF.cdsPdsLogReserva.Open;
end;

procedure TfrmVisualReservaPeca.actFecharExecute(Sender: TObject);
begin
 Close;
end;

procedure TfrmVisualReservaPeca.actEditarLogExecute(Sender: TObject);
begin
 CriaEspecifico( TFrmPadraoEdicao, frmPadraoEdicao, dmEF.cdsPdsLogReserva,dmEF.dsPdsLogReserva,'Pds Log Reserva');
end;

procedure TfrmVisualReservaPeca.actVisualPedidoExecute(Sender: TObject);
begin
 if not dmEF.cdsPdsLogReserva.IsEmpty then
    begin
     if not Assigned( frmPds ) then
        Application.CreateForm(  TfrmPDS, frmPDS );

     frmPDS.Show;
    end
 else
    MessageDlg('Não há dados a serem editados!',mtWarning, [mbok],0 );
end;

procedure TfrmVisualReservaPeca.actLiberarPedidoExecute(Sender: TObject);
var sUpd : String;
begin
 if not CheckSenha( dmGsi.UsuarioAtivo, frmVisualReservaPeca.Caption,'Liberar Pedido', True ) then
    exit;

 if Application.MessageBox( 'Confirma Operação ?','Confirmação', MB_YESNO + MB_ICONQUESTION ) = IDNO then
    exit;

 try
  sUpd := 'UPDATE EF_PDS SET ' +
          '  LIBCHEFIA     = 1' +
          ' ,LIBCHEFIANOME = ' +  QuotedStr( dmEF.cdsPdsLogReservaUSUARIO.Value ) +
          ' ,LIBCHEFIADATA = TO_DATE(''' +  DateTimeToStr( Date ) + ''', ''dd/mm/yyyy HH24:MI:SS'' )' +
          ' WHERE ' +
          '  EF_PDS.EMPRESAID      = ' +  dmEF.cdsPdsLogReservaEMPRESAID.AsString +
          '  AND EF_PDS.PDSID      = ' +  dmEF.cdsPdsLogReservaPDSID.AsString +
          '  AND NVL( LIBCHEFIA, 0 ) = 0 ';

  ExecDML( sUpd );

  dmEF.cdsPdsLogReserva.Edit;
  dmEF.cdsPdsLogReservaLIBERADO.Value := 1;
  dmEF.cdsPdsLogReserva.Post;

  MessageDlg('Pedido de saída liberado com sucesso!', mtInformation, [mbOK], 0 );

 except
 on E: Exception do MessageDlg( E.Message, mtError, [mbOK], 0 );
 end;

end;

procedure TfrmVisualReservaPeca.actBloqPedidoExecute(Sender: TObject);
var sUpd : String;
begin
 if not CheckSenha( dmGsi.UsuarioAtivo, frmVisualReservaPeca.Caption,'Bloquear Pedido', True ) then
    exit;

 if Application.MessageBox( 'Confirma Operação ?','Confirmação', MB_YESNO + MB_ICONQUESTION ) = IDNO then
    exit;

 try
  sUpd := 'UPDATE EF_PDS SET ' +
          '  LIBCHEFIA         = 0' +
          ' ,LIBCHEFIANOME     = NULL ' +
          ' ,LIBCHEFIADATA     = NULL ' +
          ' ,LIBFINANCEIRO     = 0' +
          ' ,LIBFINANCEIRONOME = NULL ' +
          ' ,LIBFINANCEIRODATA = NULL ' +
          ' ,LIBCONTABIL       = 0' +
          ' ,LIBCONTABILNOME   = NULL ' +
          ' ,LIBCONTABILDATA   = NULL ' +
          ' WHERE ' +
          '  EF_PDS.EMPRESAID      = ' +  dmEF.cdsPdsLogReservaEMPRESAID.AsString +
          '  AND EF_PDS.PDSID      = ' +  dmEF.cdsPdsLogReservaPDSID.AsString +
          '  AND NVL( LIBCHEFIA, 0 ) = 1 ';

  ExecDML( sUpd );

  dmEF.cdsPdsLogReserva.Edit;
  dmEF.cdsPdsLogReservaLIBERADO.Value := 0;
  dmEF.cdsPdsLogReserva.Post;

  MessageDlg('Pedido Bloqueado com sucesso e todas as liberações estão canceladas!', mtInformation, [mbOK], 0 );

 except
 on E: Exception do MessageDlg( E.Message, mtError, [mbOK], 0 );
 end;
end;

procedure TfrmVisualReservaPeca.actExportarExecute(Sender: TObject);
begin
 if not dmEF.cdsPdsLogReserva.IsEmpty then
    begin
     frmExportar := TfrmExportar.Create(nil);
     frmExportar.DataSource := dmEF.dsPdsLogReserva;
     frmExportar.Show;
    end
 else
    MessageDlg('Não há dados a serem Exportados!',mtWarning, [mbok],0 );
end;

procedure TfrmVisualReservaPeca.dbgrdPdsLogReservaDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var HoldColor : TColor;
begin
 holdColor := dbgrdPdsLogReserva.Canvas.Brush.Color;
 if ( Column.FieldName = 'LIBERADO' ) or ( Column.FieldName = 'LIBUSUARIO' ) or
    ( Column.FieldName = 'PDSID' ) OR ( Column.FieldName = 'EMPRESAID' )  then
    if dmEF.cdsPdsLogReservaLIBERADO.AsInteger = 0 then
       begin
        TDBGrid( Sender ).Canvas.Brush.Color := clRed;
        TDBGrid( Sender ).DefaultDrawColumnCell(Rect, DataCol, Column, State);
        TDBGrid( Sender ).Canvas.Brush.Color := HoldColor;
       end
    else
       begin
        TDBGrid( Sender ).Canvas.Brush.Color := clGreen;
        TDBGrid( Sender ).DefaultDrawColumnCell(Rect, DataCol, Column, State);
        TDBGrid( Sender ).Canvas.Brush.Color := HoldColor;
       end;

end;

end.
