unit u_Voto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, wwdbedit, Wwdotdot, ImgList, ActnList,
  XPStyleActnCtrls, ActnMan, wwdbdatetimepicker, tmbToolEdicaoTop,
  ActnCtrls, ToolWin, ComCtrls, ExtCtrls, DBClient, DB;

type
  TfrmVoto = class(TForm)
    StatusBar1: TStatusBar;
    Panel3: TPanel;
    CoolBar2: TCoolBar;
    ActionToolBar3: TActionToolBar;
    ActionToolBar4: TActionToolBar;
    CoolBar1: TCoolBar;
    tmbEdicaoTop2: TtmbEdicaoTop;
    tmbEdicaoTop1: TtmbEdicaoTop;
    ActionToolBar2: TActionToolBar;
    Panel2: TPanel;
    Label3: TLabel;
    wwDBDateTimePicker3: TwwDBDateTimePicker;
    actmngDespesa: TActionManager;
    actGravar: TAction;
    actCancelar: TAction;
    actFechar: TAction;
    ImageList1: TImageList;
    Label1: TLabel;
    wwDBComboDlg2: TwwDBComboDlg;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    Label12: TLabel;
    Label5: TLabel;
    Label16: TLabel;
    wwDBComboDlg1: TwwDBComboDlg;
    DBEdit1: TDBEdit;
    wwDBComboDlg5: TwwDBComboDlg;
    DBEdit3: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    actVotarBranco: TAction;
    DBEdit8: TDBEdit;
    wwDBComboDlg3: TwwDBComboDlg;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actFecharExecute(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure wwDBComboDlg1CustomDlg(Sender: TObject);
    procedure actVotarBrancoExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure wwDBComboDlg3CustomDlg(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVoto: TfrmVoto;

implementation

uses u_dmGR, FuncoesCliente;

{$R *.dfm}

procedure TfrmVoto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if dmGR.cdsVoto.State = dsInsert then
    dmGR.cdsVoto.Cancel;
 Action := caFree;
 frmVoto := Nil;
end;

procedure TfrmVoto.actFecharExecute(Sender: TObject);
begin
 Close;
end;

procedure TfrmVoto.actGravarExecute(Sender: TObject);
var iSql : String;
    Cds : TClientDataSet;
begin
 Cds  := nil;
 iSql := 'SELECT TIPOELEICAOID, ELEITORID ' +
         ' FROM GR_VOTO ' +
         ' WHERE TIPOELEICAOID = ' + dmGR.cdsConfigEleicaoTIPOELEICAOATUALD.AsString +
         ' AND ELEITORID = ' + dmGR.cdsVotoELEITORID.AsString;
 try
  ExecDynamicProvider( -1, iSQL, Cds );
  if not Cds.IsEmpty then
     MessageDlg('Eleitor já votou nesta eleição: ' + dmGR.cdsConfigEleicaoL_DESCRICAOTIPOELEICAO.Value, mtError, [mbOK], 0 )
  else
     begin
      if dmGR.cdsVoto.State = dsInsert then
         dmGR.cdsVoto.Post;
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;

 Close;
end;

procedure TfrmVoto.actCancelarExecute(Sender: TObject);
begin
 if dmGR.cdsVoto.State = dsInsert then
    dmGR.cdsVoto.Cancel;
 Close;
end;

procedure TfrmVoto.wwDBComboDlg1CustomDlg(Sender: TObject);
begin
 dmGR.FiltroCandidato( dmGR.cdsVotoCANDIDATOID );
end;

procedure TfrmVoto.wwDBComboDlg3CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa( dmGR.dsNomeProg ,'NOMEPROGID', dmGR.cdsVotoNOMEPROGID.AsString );
 ExecLoockupRetorno( dmGR.cdsVoto ,'NOMEPROGID','NOMEPROGID' );
end;

procedure TfrmVoto.actVotarBrancoExecute(Sender: TObject);
begin
 if dmGR.cdsVoto.State = dsInsert then
    dmGR.cdsVoto.Post;
 Close;
end;

procedure TfrmVoto.FormKeyPress(Sender: TObject; var Key: Char);
begin
 // Habilitar a propriedade KeyPreview do Form para funcionar o Enter como Tab
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;

end.
