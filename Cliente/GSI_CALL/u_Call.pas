unit u_Call;

interface

uses
  Windows, Messages, SysUtils, Forms, Classes, ActnList, XPStyleActnCtrls, ActnMan,
  ImgList, Controls, tmbToolEdicaoTop, ActnCtrls, ToolWin, ComCtrls, DB,
  tmbToolEdicaoBottom, StdCtrls, Buttons, DBCtrls, PnAjustaGrid,Graphics,
  tmbToolEdicaoLista, Grids, DBGrids, ExtCtrls, wwdbdatetimepicker, Mask,
  wwdbedit, Wwdotdot, DBClient, Dialogs;

type
  TfrmCall = class(TForm)
    Splitter1: TSplitter;
    aga: TPageControl;
    TabSheet1: TTabSheet;
    Panel8: TPanel;
    StatusBar: TStatusBar;
    Panel9: TPanel;
    tmbEdicaoBottom2: TtmbEdicaoBottom;
    Panel7: TPanel;
    Label9: TLabel;
    Label12: TLabel;
    Label34: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    wwDBDateTimePicker4: TwwDBDateTimePicker;
    CoolBar1: TCoolBar;
    ActionToolBar1: TActionToolBar;
    tmbEdicaoTop2: TtmbEdicaoTop;
    ImageList1: TImageList;
    actmngManutencao: TActionManager;
    Label55: TLabel;
    DBEdit47: TDBEdit;
    TabSheet3: TTabSheet;
    GroupBox12: TGroupBox;
    dbgrdItem: TDBGrid;
    tmbedtlstProduto: TtmbEdicaoLista;
    TabSheet2: TTabSheet;
    DBMemo2: TDBMemo;
    DBEdit4: TDBEdit;
    Label3: TLabel;
    Label10: TLabel;
    wwDBComboDlg3: TwwDBComboDlg;
    DBEdit9: TDBEdit;
    DBEdit1: TDBEdit;
    GroupBox2: TGroupBox;
    Label13: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label42: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBMemo1: TDBMemo;
    wwDBComboDlg4: TwwDBComboDlg;
    DBEdit5: TDBEdit;
    DBEdit8: TDBEdit;
    Label1: TLabel;
    wwDBComboDlg1: TwwDBComboDlg;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label2: TLabel;
    dbchkboxStatus: TDBCheckBox;
    actRecalcular: TAction;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure wwDBComboDlg3CustomDlg(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn4Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure wwDBComboDlg1CustomDlg(Sender: TObject);
    procedure wwDBComboDlg4CustomDlg(Sender: TObject);
    procedure actRecalcularExecute(Sender: TObject);
  private
    { Private declarations }
    procedure StatusHint(Sender : TObject);
  public
    { Public declarations }
  end;

var
  frmCall: TfrmCall;

implementation

uses u_dmEF, FuncoesCliente, u_PadraoEdicao, u_Cep, u_dmCP, u_OS,
  u_RelPreNota, u_ParPreNota, u_VisualEmpenho, u_PdsItem, u_DevolucaoNFE,
  u_dmGSI;

{$R *.dfm}

procedure TfrmCall.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if not FinalFormulario(dmEF.cdsPds,' do Pedido de Saída ') then
    Action := caNone
 else
    begin
     Action  := caFree;
     frmcall := Nil;
     Application.OnHint := nil;
    end;
end;

procedure TfrmCall.FormCreate(Sender: TObject);
begin
 Application.OnHint  := StatusHint;
end;

procedure TfrmCall.StatusHint(Sender: TObject);
begin
 if StatusBar <> nil then
    StatusBar.Panels.Items[2].text := GetLongHint(Application.Hint);
end;

procedure TfrmCall.FormShow(Sender: TObject);
begin
 StatusBar.Panels.Items[0].Text := 'Tabela: '+ Copy( dmEF.cdsCall.Name, (Pos('cds', dmEF.cdsCall.Name)+3), Length(dmEF.cdsCall.Name));
 case dmEF.dsCall.State of
  dsEdit  : StatusBar.Panels.Items[1].Text := 'Status: Alteração';
  dsInsert: StatusBar.Panels.Items[1].Text := 'Status: Inserção';
 end;
 //
 tmbedtlstProduto.TtmbClassOwnerEspec := TfrmPadraoEdicao;
 tmbedtlstProduto.TtmbFormOwnerEspec  := frmPadraoEdicao;
 tmbedtlstProduto.TtmbClientDataSet   := dmEF.cdsCallItem;
 tmbedtlstProduto.TtmbDataSource      := dmEF.dsCallItem;

 if CheckSenha(dmGsi.UsuarioAtivo,'Pedido Call','Visualizar dados do Pedidos',False) then
    begin
     dbchkboxStatus.Font.Color    := clBlack;
     dbchkboxStatus.Font.Color    := clBlack;
     dbchkboxStatus.Font.Color    := clBlack;
     dbchkboxStatus.ReadOnly      := False;
     wwDBDateTimePicker4.ReadOnly := False;
    end
 else
    begin
     dbchkboxStatus.Font.Color    := clWhite;
     dbchkboxStatus.Font.Color    := clWhite;
     dbchkboxStatus.Font.Color    := clWhite;
     dbchkboxStatus.ReadOnly      := True;
     wwDBDateTimePicker4.ReadOnly := True;
    end;


 wwDBComboDlg3.SetFocus;
end;

procedure TfrmCall.wwDBComboDlg1CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmEF.dsLocalEntr, 'LOCALENTRID', wwDBComboDlg1.Text, 'Destinatário' );
 ExecLoockupRetorno(dmEF.cdsCall, 'LOCALENTRID', 'LOCALENTRID');
end;

procedure TfrmCall.wwDBComboDlg3CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmEF.dsEntidade, 'ENTIDADEID', wwDBComboDlg3.Text, 'Destinatário' );
 ExecLoockupRetorno(dmEF.cdsCall, 'ENTIDADEID', 'ENTIDADEID');
end;

procedure TfrmCall.wwDBComboDlg4CustomDlg(Sender: TObject);
begin
 try
  frmCEP := TfrmCEP.Create( Self );
  frmCEP.ShowModal;

  if Assigned( frmCEP ) then
     if frmCEP.AtualizaCEP then
        if not dmCP.cdsPesquisa.IsEmpty then
           dmEF.cdsCallCEPID.Value := dmCP.cdsPesquisaCEPID.Value;
 finally
  FreeAndNil( frmCEP );
 end;
end;

procedure TfrmCall.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;

procedure TfrmCall.actRecalcularExecute(Sender: TObject);
var dsState : TDataSetState;
begin
 dsState := dmEF.cdsCall.State;

 if dmEF.cdsCall.State in [dsInsert,dsEdit] then
    dmEF.cdsCall.Post;

 if dmEF.cdsCall.ChangeCount > 0 then
    dmEF.cdsCall.ApplyUpdates(-1);

 dmEF.shdcnnEF.AppServer.ITotalCALL( dmEF.cdsCallEMPRESAID.AsString, dmEF.cdsCallCALLID.AsString );

 dmEF.cdsCall.RefreshRecord;

 if dsState in [dsEdit,dsInsert] then
    dmEF.cdsCall.Edit;

end;

procedure TfrmCall.BitBtn4Click(Sender: TObject);
begin
 dmEF.cdsPdsParcela.First;
 while not dmEF.cdsPdsParcela.Eof do  dmEF.cdsPdsParcela.Delete;
end;

procedure TfrmCall.Action1Execute(Sender: TObject);
begin
 if not Assigned( frmParPreNota ) then
    frmParPreNota := TfrmParPreNota.Create(nil);
 frmParPreNota.ShowModal;
end;

end.
