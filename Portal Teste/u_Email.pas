unit u_eMail;

interface

uses
  SysUtils, Forms, ToolWin, ActnMan, ActnCtrls, ExtCtrls, Classes, ActnList,
  XPStyleActnCtrls, ImgList, Controls, Dialogs, IdComponent, IdTCPConnection,
  IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase,
  IdSMTP, IdBaseComponent, IdMessage, Grids, DBGrids, StdCtrls, Graphics,
  fcImager, Buttons, OleCtrls, SHDocVw, ComCtrls, DBXpress, WideStrings, FMTBcd,
  DB, DBClient, Provider, SqlExpr, OleServer, ActiveX;

type
  TfrmEmail = class(TForm)
    MailMessage: TIdMessage;
    SMTP: TIdSMTP;
    opdlgAttachFile: TOpenDialog;
    pgctrlSolic: TPageControl;
    TabSheet1: TTabSheet;
    imglstBarraFerramenta: TImageList;
    actmngPrincipal: TActionManager;
    actSair: TAction;
    actEnviar: TAction;
    actPadronizar: TAction;
    actConfigurar: TAction;
    pnlBottom: TPanel;
    ledSubject: TLabeledEdit;
    pnlTop: TPanel;
    ledTo: TLabeledEdit;
    ledCC: TLabeledEdit;
    StatusMemo: TMemo;
    ledFrom: TLabeledEdit;
    fcImager1: TfcImager;
    fcImager2: TfcImager;
    fcImager3: TfcImager;
    actVisualContato: TAction;
    lbledtContext: TLabeledEdit;
    WebBrowser1: TWebBrowser;
    Label1: TLabel;
    mmAnexo: TMemo;
    btnAttachment: TBitBtn;
    btnAttachCorpo: TBitBtn;
    Label2: TLabel;
    ledAttachment: TLabeledEdit;
    opdlgCorpoMSG: TOpenDialog;
    ControlBar1: TControlBar;
    ActionToolBar1: TActionToolBar;
    BitBtn1: TBitBtn;
    sqlcnnTOSHIBA: TSQLConnection;
    sqldtsConfig: TSQLDataSet;
    sqldtsConfigEMPRESAID: TBCDField;
    sqldtsConfigTIPOOSID: TStringField;
    sqldtsConfigFILIALID: TBCDField;
    sqldtsConfigTIPOOSGARANTIAID: TStringField;
    sqldtsConfigSTATUS: TBCDField;
    sqldtsConfigDIRETORIOEXPORT: TStringField;
    sqldtsConfigDIASVALIDADEOS: TBCDField;
    sqldtsConfigMESATUAL: TBCDField;
    sqldtsConfigVLRDIARIA: TBCDField;
    sqldtsConfigVLRREFEICOES: TBCDField;
    sqldtsConfigVLRKM: TBCDField;
    sqldtsConfigKMID: TBCDField;
    sqldtsConfigADIANTAMENTOID: TBCDField;
    sqldtsConfigMEMOPAGARID: TBCDField;
    sqldtsConfigMEMORECEBERID: TBCDField;
    sqldtsConfigHORASCREDID: TBCDField;
    sqldtsConfigPP_MARGEMCABECALHO: TBCDField;
    sqldtsConfigPP_MARGEMPARAGRAFO: TBCDField;
    sqldtsConfigPP_ESTILOFONTE: TStringField;
    sqldtsConfigPP_TAMANHOFONTE: TBCDField;
    sqldtsConfigPP_IMPRIMIR: TBCDField;
    sqldtsConfigPP_VISUALIZAR: TBCDField;
    sqldtsConfigPP_DIRETORIODESTINO: TStringField;
    sqldtsConfigPP_NOMEGERENTE: TStringField;
    sqldtsConfigPP_CARGO: TStringField;
    sqldtsConfigRS_DATAFECHAMENTO: TSQLTimeStampField;
    sqldtsConfigHTMLPORTAL: TMemoField;
    dsprvConfig: TDataSetProvider;
    cdsConfig: TClientDataSet;
    cdsConfigEMPRESAID: TBCDField;
    cdsConfigTIPOOSID: TStringField;
    cdsConfigFILIALID: TBCDField;
    cdsConfigTIPOOSGARANTIAID: TStringField;
    cdsConfigSTATUS: TBCDField;
    cdsConfigDIRETORIOEXPORT: TStringField;
    cdsConfigDIASVALIDADEOS: TBCDField;
    cdsConfigMESATUAL: TBCDField;
    cdsConfigVLRDIARIA: TBCDField;
    cdsConfigVLRREFEICOES: TBCDField;
    cdsConfigVLRKM: TBCDField;
    cdsConfigKMID: TBCDField;
    cdsConfigADIANTAMENTOID: TBCDField;
    cdsConfigMEMOPAGARID: TBCDField;
    cdsConfigMEMORECEBERID: TBCDField;
    cdsConfigHORASCREDID: TBCDField;
    cdsConfigPP_MARGEMCABECALHO: TBCDField;
    cdsConfigPP_MARGEMPARAGRAFO: TBCDField;
    cdsConfigPP_ESTILOFONTE: TStringField;
    cdsConfigPP_TAMANHOFONTE: TBCDField;
    cdsConfigPP_IMPRIMIR: TBCDField;
    cdsConfigPP_VISUALIZAR: TBCDField;
    cdsConfigPP_DIRETORIODESTINO: TStringField;
    cdsConfigPP_NOMEGERENTE: TStringField;
    cdsConfigPP_CARGO: TStringField;
    cdsConfigRS_DATAFECHAMENTO: TSQLTimeStampField;
    cdsConfigHTMLPORTAL: TMemoField;
    dsConfig: TDataSource;
    BitBtn2: TBitBtn;
    SQLDataSet1: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    DBGrid1: TDBGrid;
    Button1: TButton;
    SQLDataSet1ADIANTAMENTOID: TBCDField;
    SQLDataSet1DATASOLICITACAO: TSQLTimeStampField;
    SQLDataSet1DATADEPOSITO: TSQLTimeStampField;
    SQLDataSet1FUNCIONARIOID: TBCDField;
    SQLDataSet1L_NOMEFUNCIONARIO: TStringField;
    SQLDataSet1TIPOMOEDA: TStringField;
    SQLDataSet1TIPODESPESAOS: TStringField;
    SQLDataSet1OSID: TStringField;
    SQLDataSet1OPERACAOID: TBCDField;
    SQLDataSet1L_DESCRICAOOPERACAO: TStringField;
    SQLDataSet1L_OPERACAO: TStringField;
    SQLDataSet1L_VLRSALDO: TBCDField;
    SQLDataSet1L_DATAFECHAMENTO: TSQLTimeStampField;
    SQLDataSet1VLROPERACAO: TBCDField;
    SQLDataSet1HORASOLICITADA: TStringField;
    SQLDataSet1HISTORICO: TStringField;
    SQLDataSet1LIBCHEFIA: TBCDField;
    SQLDataSet1NOMELIBCHEFIA: TStringField;
    SQLDataSet1DATALIBCHEFIA: TSQLTimeStampField;
    SQLDataSet1LIBERADO: TBCDField;
    SQLDataSet1KMSAIDA: TBCDField;
    SQLDataSet1KMCHEGADA: TBCDField;
    SQLDataSet1IMPRESSO: TBCDField;
    SQLDataSet1USUARIO: TStringField;
    ClientDataSet1ADIANTAMENTOID: TBCDField;
    ClientDataSet1DATASOLICITACAO: TSQLTimeStampField;
    ClientDataSet1DATADEPOSITO: TSQLTimeStampField;
    ClientDataSet1FUNCIONARIOID: TBCDField;
    ClientDataSet1L_NOMEFUNCIONARIO: TStringField;
    ClientDataSet1TIPOMOEDA: TStringField;
    ClientDataSet1TIPODESPESAOS: TStringField;
    ClientDataSet1OSID: TStringField;
    ClientDataSet1OPERACAOID: TBCDField;
    ClientDataSet1L_DESCRICAOOPERACAO: TStringField;
    ClientDataSet1L_OPERACAO: TStringField;
    ClientDataSet1L_VLRSALDO: TBCDField;
    ClientDataSet1L_DATAFECHAMENTO: TSQLTimeStampField;
    ClientDataSet1VLROPERACAO: TBCDField;
    ClientDataSet1HORASOLICITADA: TStringField;
    ClientDataSet1HISTORICO: TStringField;
    ClientDataSet1LIBCHEFIA: TBCDField;
    ClientDataSet1NOMELIBCHEFIA: TStringField;
    ClientDataSet1DATALIBCHEFIA: TSQLTimeStampField;
    ClientDataSet1LIBERADO: TBCDField;
    ClientDataSet1KMSAIDA: TBCDField;
    ClientDataSet1KMCHEGADA: TBCDField;
    ClientDataSet1IMPRESSO: TBCDField;
    ClientDataSet1USUARIO: TStringField;
    procedure SMTPStatus(ASender: TObject; const AStatus: TIdStatus;
      const AStatusText: String);
    procedure btnAttachmentClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actEnviarExecute(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure actVisualContatoExecute(Sender: TObject);
    procedure btnAttachCorpoClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure EnviareMail;
  end;

var
  frmEmail: TfrmEmail;

implementation

uses FuncoesDSI;

{$R *.dfm}

procedure TfrmEmail.EnviareMail;
begin
 StatusMemo.Clear;

 cdsConfig.Open;
 //setup SMTP
{ SMTP.Host     := cdsConfigSMTP.Value;
 SMTP.Username := cdsConfigUSUARIO.Value;
 SMTP.Password := cdsConfigSENHA.Value;
 SMTP.Port     := cdsConfigPORTA.Value;}

 //setup mail message
 MailMessage.From.Address := ledFrom.Text;
 MailMessage.Recipients.EMailAddresses := ledTo.Text;
 MailMessage.Subject     := ledSubject.Text;
 MailMessage.Body.Clear;
 MailMessage.ContentType := lbledtContext.Text;

 MailMessage.Body.LoadFromFile(  'c:\portal.html' );

{ MailMessage.ContentType := 'lbledtContext.Text;
 if FileExists(ledAttachment.Text) then
    TIdAttachmentFile.Create(MailMessage.MessageParts, ledAttachment.Text);}

 //send mail
 try
   try
     SMTP.Connect;
     SMTP.Send(MailMessage);
   except on E:Exception do
     StatusMemo.Lines.Insert(0, 'ERROR: ' + E.Message);
   end;
 finally
   if SMTP.Connected then SMTP.Disconnect;
 end;
end;

procedure TfrmEmail.SMTPStatus(ASender: TObject; const AStatus: TIdStatus;
  const AStatusText: String);
begin
  StatusMemo.Lines.Insert(0,'Status: ' + AStatusText);
end; (* SMTP Status *)

procedure TfrmEmail.btnAttachmentClick(Sender: TObject);
begin
  if opdlgAttachFile.Execute then
    ledAttachment.Text := opdlgAttachFile.FileName;

  mmAnexo.Lines.Add( ledAttachment.Text );
end;

procedure TfrmEmail.Button1Click(Sender: TObject);
begin
 ClientDataSet1.Open;
end;

procedure TfrmEmail.FormCreate(Sender: TObject);
begin
 cdsConfig.Open;
 ledFrom.Text := 'cglsoft@uol.com.br';
end;

procedure TfrmEmail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := caFree;
 frmEmail := Nil;
end;

procedure TfrmEmail.actEnviarExecute(Sender: TObject);
begin
 EnviareMail;
end;

procedure TfrmEmail.actSairExecute(Sender: TObject);
begin
 Close;
end;

procedure TfrmEmail.actVisualContatoExecute(Sender: TObject);
begin
 pgctrlSolic.ActivePageIndex := 1;
end;

procedure StringToSQLFile( Text : String );
var SalvaSQL : TStringList;
begin
 SalvaSQL := TStringList.Create;
 try
  SalvaSQL.Add( Text );
  SalvaSQL.SaveToFile(  'c:\teste.txt' );

 finally
  FreeAndNil( SalvaSQL );
 end;
end;

procedure TfrmEmail.BitBtn1Click(Sender: TObject);
var Flags : OleVariant;
    wHTML : WideString;
begin
 cdsConfig.Open;

 wHTML := SearchAndReplace( cdsConfigHTMLPORTAL.AsWideString, 'cglsoft','presidente');
 wHTML := SearchAndReplace( wHTML, 'claudio','presidente1');
 StringToSQLFile( wHTML );

 cdsConfigHTMLPORTAL.SaveToFile( 'C:\PORTAL.HTML' );
 WebBrowser1.Navigate( WideString('C:\PORTAL.HTML'), Flags, Flags, Flags, Flags);

end;

procedure TfrmEmail.BitBtn2Click(Sender: TObject);
begin
 WB_SaveAs_HTML( WebBrowser1, 'c:\portal.html');
end;

procedure TfrmEmail.btnAttachCorpoClick(Sender: TObject);
var Flags : OleVariant;
begin
 if opdlgCorpoMSG.Execute then
    ledAttachment.Text := opdlgCorpoMSG.FileName;

 if FileExists(ledAttachment.Text) then
    WebBrowser1.Navigate(WideString(opdlgCorpoMSG.FileName), Flags, Flags, Flags, Flags);

end;

end.
