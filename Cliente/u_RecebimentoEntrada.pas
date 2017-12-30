unit u_RecebimentoEntrada;

interface

uses
  Windows, Messages, Forms, SysUtils, ImgList, Controls, Classes, ActnList,
  XPStyleActnCtrls, ActnMan, StdCtrls, Mask, ComCtrls, ExtCtrls, Dialogs,
  fcStatusBar, Grids, DBGrids, PnAjustaGrid, ActnCtrls, ToolWin, Graphics;

type
  TfrmRecebimentoEntrada = class(TForm)
    CoolBar1: TCoolBar;
    ActionToolBar1: TActionToolBar;
    tmbajtGeral: tPanel1;
    actmngRecebimento: TActionManager;
    actRecebimento: TAction;
    actFechar: TAction;
    imglstRDV: TImageList;
    pgctrlNota: TPageControl;
    TabSheet1: TTabSheet;
    fcstbarStatus: TfcStatusBar;
    Splitter1: TSplitter;
    dbgrdE: TDBGrid;
    DBGrid1: TDBGrid;
    Splitter3: TSplitter;
    Panel4: TPanel;
    dtpckDtEntrada: TDateTimePicker;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actRecebimentoExecute(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure pgctrlNotaChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dbgrdETitleClick(Column: TColumn);
  private
    { Private declarations }
    procedure RecebimentoNFE;
    procedure AtualPDE_Emissao;
  public
    { Public declarations }
  end;

var
  frmRecebimentoEntrada: TfrmRecebimentoEntrada;

implementation

uses u_dmEF, FuncoesCliente, FuncoesDSI, u_dmGSI;

{$R *.dfm}

procedure TfrmRecebimentoEntrada.RecebimentoNFE;
var iSQL, TipoNota : String;
begin
 try
  try
   iSQL := 'LIBCONTABIL = 1 AND EMPRESAID = ' + dmEF.cdsPdeEMPRESAID.AsString +
           ' AND PDEID = ' + dmEF.cdsPdePDEID.AsString;
   GerarPesquisa( dmEF.cdsPde, iSQL );

   TipoNota := dmEF.cdsPdeTIPONOTA.Value;

   if MessageDlg( 'Confirma o Estoque / Recebimento de Entrada ? ', mtConfirmation, [mbYes,mbNo],0) = mrNo then
      exit;

   dmEF.shdcnnEF.AppServer.IRecebimentoEntrada( dmEF.cdsPDE.Data,
                                                dmEF.cdsPdeItem.Data,
                                                dmEF.cdsPdeItemBar.Data,
                                                dmEF.cdsPdeDATAEMISSAONFEID.AsString,
                                                DateToStr( dtpckDtEntrada.Date ),
                                                dmGSI.UsuarioAtivo );

   MessageDlg('Recebimento de entrada realizado com sucesso!' ,mtInformation, [mbOK], 0 );

  except
  on E: Exception do
  MessageDlg( 'Problemas no recebimento da Nota Fiscal. ' +
               #13 + ' O processo será cancelado com a seguinte mensagem de erro : ' +
               #13 + E.Message, mtError, [mbOK], 0 );
  end;

 finally
  pgctrlNotaChange( frmRecebimentoEntrada );
 end;
end;

procedure TfrmRecebimentoEntrada.AtualPDE_Emissao;
var iSql : String;
begin
 iSql := 'LIBCONTABIL = 1 AND NVL( MOVIMENTAESTOQUE, 0 ) = 0';
 GerarPesquisa( dmEF.cdsPde, iSql );
end;

procedure TfrmRecebimentoEntrada.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 dmEF.cdsPde.Close;
 Action := caFree;
 frmRecebimentoEntrada := Nil;
end;

procedure TfrmRecebimentoEntrada.actRecebimentoExecute(Sender: TObject);
begin
 case pgctrlNota.ActivePageIndex of
 0 : RecebimentoNFE;
 end;
end;

procedure TfrmRecebimentoEntrada.actFecharExecute(Sender: TObject);
begin
 Close
end;

procedure TfrmRecebimentoEntrada.pgctrlNotaChange(Sender: TObject);
begin
 case pgctrlNota.ActivePageIndex of
 0 : begin
      AtualPDE_Emissao;

      dtpckDtEntrada.Date    := Date;
      dtpckDtEntrada.Visible := True;
      tmbajtGeral.tmbDBGrid  := dbgrdE;
      tmbajtGeral.tmbAjusta  := True;
     end;
 end;
end;

procedure TfrmRecebimentoEntrada.FormActivate(Sender: TObject);
begin
 pgctrlNotaChange( Sender );
end;

procedure TfrmRecebimentoEntrada.dbgrdETitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column, dmEF.dsPde, dbgrdE);
end;

end.
