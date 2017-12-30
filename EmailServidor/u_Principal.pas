unit u_Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, CoolTrayIcon, DBXpress, WideStrings, ImgList,
  ActnList, XPStyleActnCtrls, ActnMan, ActnCtrls, ToolWin, ComCtrls, DB,
  SqlExpr, fcStatusBar, StdCtrls, ExtCtrls, StrUtils,
  idMessage, idText, IdAttachment, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase,
  IdMessageClient, IdSMTPBase, IdSMTP, FMTBcd, DBClient, Provider;

type
  TfrmPrincipal = class(TForm)
    ctiTrayIcon: TCoolTrayIcon;
    PopupMenu1: TPopupMenu;
    Exibir1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    ledHost: TLabeledEdit;
    idSMTP1: TIdSMTP;
    pnlBottom: TPanel;
    ledSubject: TLabeledEdit;
    StatusMemo: TMemo;
    fcstbarStatus: TfcStatusBar;
    ledFrom: TLabeledEdit;
    sqlcnnTOSHIBA: TSQLConnection;
    lbledtUsuario: TLabeledEdit;
    lbledtSenha: TLabeledEdit;
    CoolBar1: TCoolBar;
    ActionToolBar1: TActionToolBar;
    actmngManutencao: TActionManager;
    actPDE: TAction;
    actExcluir: TAction;
    actFechar: TAction;
    ImageList1: TImageList;
    sqldtsNfEmail: TSQLDataSet;
    sqldtsNfEmailEMPRESAID: TBCDField;
    sqldtsNfEmailNOTA: TBCDField;
    sqldtsNfEmailDATAEMISSAOID: TSQLTimeStampField;
    sqldtsNfEmailDATAGERACAO: TSQLTimeStampField;
    sqldtsNfEmailEMAIL: TStringField;
    sqldtsNfEmailASSUNTO: TStringField;
    sqldtsNfEmailCORPO: TStringField;
    sqldtsNfEmailLOGPROCESSO: TStringField;
    sqldtsNfEmailDATAENVIO: TSQLTimeStampField;
    sqldtsNfEmailUSUARIO: TStringField;
    dsprvNfEmail: TDataSetProvider;
    cdsNfEmail: TClientDataSet;
    cdsNfEmailEMPRESAID: TBCDField;
    cdsNfEmailNOTA: TBCDField;
    cdsNfEmailDATAEMISSAOID: TSQLTimeStampField;
    cdsNfEmailDATAGERACAO: TSQLTimeStampField;
    cdsNfEmailEMAIL: TStringField;
    cdsNfEmailASSUNTO: TStringField;
    cdsNfEmailCORPO: TStringField;
    cdsNfEmailLOGPROCESSO: TStringField;
    cdsNfEmailDATAENVIO: TSQLTimeStampField;
    cdsNfEmailUSUARIO: TStringField;
    dsNfEmail: TDataSource;
    ledPort: TLabeledEdit;
    sqldtsNfEmailSTATUS: TStringField;
    cdsNfEmailSTATUS: TStringField;
    Timer1: TTimer;
    chkbxemailAut: TCheckBox;
    ImageList2: TImageList;
    procedure Exibir1Click(Sender: TObject);
    procedure ctiTrayIconStartup(Sender: TObject; var ShowMainForm: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Sair1Click(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure actPDEExecute(Sender: TObject);
    procedure cdsNfEmailAfterDelete(DataSet: TDataSet);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure SendEmail;
    procedure ProcessarEmail;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.actFecharExecute(Sender: TObject);
begin
 Close
end;

procedure TfrmPrincipal.SendEmail;
var txtpart: TIdText;
    email: TIdMessage;
    Address : String;
begin
 idSMTP1.Host := ledHost.Text;
 idSMTP1.Port := StrToInt( ledPort.Text );

 email := TIdMessage.Create(nil);
 email.From.Text := ledFrom.Text;
 Address := ReplaceText( cdsNfEmailEMAIL.AsString, '|',';' );

 email.Recipients.EMailAddresses := Address;

 email.Subject := ledSubject.Text;
 email.ContentType := 'multipart/mixed';

 txtpart := TIdText.Create(email.MessageParts);
 txtpart.ContentType := 'text/plain';
 txtpart.Body.Text   := cdsNfEmailCORPO.AsString;

 try
  idSMTP1.Connect();
  try
    idSMTP1.Send(email);
    StatusMemo.Lines.Add( 'Empresa : ' + cdsNfEmailEMPRESAID.AsString + 'Nota: ' + cdsNfEmailNOTA.AsString + ' Dt.Emissão: ' + cdsNfEmailDATAEMISSAOID.AsString + ' OK ' );

  except
    on E: Exception do
    begin
      StatusMemo.Lines.Add( 'ERROR: ' + E.Message);

      cdsNfEmail.Edit;
      cdsNfEmailSTATUS.Value := 'E';
      cdsNfEmail.Post;
    end;
  end;
 finally
   idSMTP1.Disconnect();
   email.Free();
 end;
end; 

procedure TfrmPrincipal.ProcessarEmail;
begin
 StatusMemo.Lines.Add( 'Inicio de processamento...' + DateTimeToStr( now ) );
 cdsNfEmail.First;
 while not cdsNfEmail.Eof do
 begin
  if ( cdsNfEmailSTATUS.Value = 'I' ) or ( cdsNfEmailSTATUS.Value = 'R' ) then
     begin
      SendEmail;

      cdsNfEmail.Edit;
      cdsNfEmailSTATUS.Value := 'P';
      cdsNfEmail.Post;
     end;

  cdsNfEmail.Next;
 end;
end;

procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
begin
 cdsNfEmail.Close;
 cdsNfEmail.Open;
 ProcessarEmail;
end;

procedure TfrmPrincipal.actPDEExecute(Sender: TObject);
var Log : String;
begin
 if Timer1.Enabled then
    begin
     actPDE.Caption := 'Ativar Servidor';
     Timer1.Enabled := False;
     Log := 'Inativo';
    end
 else
    begin
     actPDE.Caption := 'Desativar Servidor';
     Timer1.Enabled := True;
     Log := 'Ativo';
    end;

 chkbxemailAut.Enabled := Timer1.Enabled;

 StatusMemo.Lines.Add( 'Status e-mail automático: ' + Log );
end;

procedure TfrmPrincipal.cdsNfEmailAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TfrmPrincipal.ctiTrayIconStartup(Sender: TObject;
  var ShowMainForm: Boolean);
begin
  ShowMainForm := False;
end;

procedure TfrmPrincipal.Exibir1Click(Sender: TObject);
begin
  ctiTrayIcon.ShowMainForm;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if ModalResult = mrCancel then
    begin
     if MessageDlg( 'Deseja fechar todas as conexões ?', mtWarning, [mbOK, mbCancel], 0 ) = mrOk then
        Action := caFree
     else
        begin
         ModalResult := mrNone;
         Action := caNone;
        end;
    end
 else
    begin
     Action := caNone;
     ctiTrayIcon.HideMainForm;
    end;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
 cdsNfEmail.Open;

 if Timer1.Enabled then
    actPDE.Caption := 'Desativar Servidor'
 else
    actPDE.Caption := 'Ativar Servidor';
 StatusMemo.Lines.Clear;
end;

procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
 ModalResult := mrCancel;
 Close;
end;

end.
