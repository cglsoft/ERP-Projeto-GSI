unit u_Login;

interface

uses
  Windows, Messages, fcImager, StdCtrls, Mask, Buttons, Controls, Classes,
  SysUtils, Dialogs, Forms, jpeg, DBClient, DB;

type
  TfrmLogin = class(TForm)
    GroupBox1: TGroupBox;
    btnCancelar: TBitBtn;
    mktSenha: TMaskEdit;
    Label2: TLabel;
    Label1: TLabel;
    mktUsuario: TMaskEdit;
    btnConectar: TBitBtn;
    btnOFFLine: TBitBtn;
    fcImager1: TfcImager;
    BitBtn1: TBitBtn;
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConectarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnOFFLineClick(Sender: TObject);
    procedure mktSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FLogAcesso : Integer;
  end;

var
  frmLogin: TfrmLogin;

implementation

uses u_dmGSI, u_Principal, u_dmIT, u_dmAS, u_DefinirSenha, u_dmEF, u_dmOs,
  u_dmRD, u_dmCP, u_dmPP, FuncoesCliente, FuncoesDSI, u_dmOFFLine, 
  u_dmCM, u_dmGR, u_RegistroGSI, u_dmFI;

{$R *.dfm}

procedure TfrmLogin.BitBtn1Click(Sender: TObject);
begin
 if not Assigned( frmRegistroGSI ) then
    frmRegistroGSI := TfrmRegistroGSI.Create(nil);
 frmRegistroGSI.Show;
end;

procedure TfrmLogin.btnCancelarClick(Sender: TObject);
begin
 if pCnnMain.Connected then
    pCnnMain.Connected := False;

 Close;
end;

procedure TfrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action   := caFree;
end;

procedure TfrmLogin.btnConectarClick(Sender: TObject);
var AcaoExecutar : Integer;
    ParamPesquisa : String;
 procedure AtLogin;
 begin
  dmGsi.cdsSQL.Data := dmIT.shdcnnIT.AppServer.ISQL_IT;
  dmGsi.cdsSQL.AppendData(dmAS.shdcnnAS.AppServer.ISQL_AS, True);
  dmGsi.cdsSQL.AppendData(dmEF.shdcnnEF.AppServer.ISQL_EF, True);
  dmGsi.cdsSQL.AppendData(dmOs.shdcnnOS.AppServer.ISQL_OS, True);
  dmGsi.cdsSQL.AppendData(dmRD.shdcnnRD.AppServer.ISQL_RD, True);
  dmGsi.cdsSQL.AppendData(dmCP.shdcnnCP.AppServer.ISQL_CP, True);
  dmGsi.cdsSQL.AppendData(dmPP.shdcnnPP.AppServer.ISQL_PP, True);
  dmGsi.cdsSQL.AppendData(dmCM.shdcnnCM.AppServer.ISQL_CM, True);
  dmGsi.cdsSQL.AppendData(dmGR.shdcnnGR.AppServer.ISQL_GR, True);
  dmGsi.cdsSQL.AppendData(dmFI.shdcnnFI.AppServer.ISQL_FI, True);


  FLogAcesso := 1;
  LogAcesso  := AcaoExecutar;
  AlterarTituloCampo; // Rotina Temporariamente descontinuada
 end;

 procedure AtualizaParamSistema;
 var cds : TClientDataSet;
     sqlFunc : String;
 begin
  // Relacionar o Funcionário para Associar ao RDV
  ParamPesquisa := 'AS_USUARIO.USUARIOID = ' + QuotedStr( mktUsuario.Text );
  GerarPesquisa( dmAS.cdsUsuario,  ParamPesquisa );

  dmGsi.UsuarioAtivo  := mktUsuario.Text;
  dmGsi.Password      := mktSenha.Text;
  dmGsi.PortaoVisaoID := dmAS.cdsUsuarioPORTALVISAOID.AsInteger;
  dmGsi.FuncionarioId := dmAS.cdsUsuarioENTIDADEID.AsInteger;
  dmGsi.EmpresaFuncId := dmAS.cdsUsuarioEMPRESAID.AsInteger;

  sqlFunc := 'SELECT ENTIDADEID, FILIALID FROM EF_ENTIDADE ' +
            ' WHERE ENTIDADEID = ' +  IntToStr( dmGsi.FuncionarioId );

  cds := Nil;
  try
   ExecDynamicProvider( -1, sqlFunc, cds );
   if not cds.IsEmpty then
      dmGsi.PadraoFilialId := cds.FieldByName('FILIALID').AsInteger;
   cds.Close;
  finally
   FreeAndNil( cds );
  end;
 end;

begin
  Screen.Cursor := crHourGlass;
  try
   try
    if not pCnnMain.Connected then
       pCnnMain.Connected := True;

    AcaoExecutar := pCnnMain.AppServer.ILoginGSI( mktUsuario.Text,
                                                  mktSenha.Text,
                                                  GetMachineIP,
                                                  GetMachineHost,
                                                  88);
    case AcaoExecutar of
    -1 : begin
          MessageDlg('Servidor de Banco de Dados não está disponível para conexão.', mtInformation,
                     [mbOk], 0 );
          FLogAcesso := 0;
          mktUsuario.SetFocus;
         end;
     0 : begin
          MessageDlg('Usuario / Senha inválido. Acesso não permitido', mtInformation,
                     [mbOk], 0 );

          FLogAcesso := 0;
          mktUsuario.SetFocus;
         end;
     1 : begin
          AtLogin;
          AtualizaParamSistema;
          Close;
         end;

     2 : begin
          AtLogin;

          frmDefinirSenha := TfrmDefinirSenha.Create( Self );
          frmDefinirSenha.MudarSenha := True;
          frmDefinirSenha.Usuario    := mktUsuario.Text;
          frmDefinirSenha.ShowModal;
          AtualizaParamSistema;
          Close;
         end;
     3 : begin
          MessageDlg('Usuário está bloqueado no sistema.', mtInformation,
                     [mbOk], 0 );
          FLogAcesso := 0;

          Close;
         end;
    end;

   except
    on E: Exception do
    begin
      MessageDlg( E.Message, mtWarning, [mbOk], 0 );
      if FileExists('c:\gsi\gsiupgrade.exe') then
         WinExec('C:\GSI\GSIUPGRADE.EXE', SW_SHOWNORMAL);
      FLogAcesso := 0;
      Close;
    end;
   end;

  finally
   Screen.Cursor := crDefault;
  end;
end;

procedure TfrmLogin.FormCreate(Sender: TObject);
var Usuario : string;
begin
 if DirectoryExists('M:\GSI') then
    Usuario := LogUser
 else
    Usuario := LoadStringFromRegistry( Registro_Principal, 'USUARIO_PADRÃO',  LogUser );

 mktUsuario.Text := Usuario;
end;

procedure TfrmLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
 // Habilitar a propriedade KeyPreview do Form para funcionar o Enter como Tab
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
// mktSenha.Text   := LoadStringFromRegistry( Registro_Principal, 'USUARIO_PSW',  '' );

// if mktSenha.Text <> '' then
//    btnConectarClick( Sender );
end;

procedure TfrmLogin.btnOFFLineClick(Sender: TObject);
var Arq : String;
begin
 try
  if not FileExists( 'OFFLINE\USUARIO.XML') then
     raise Exception.Create( 'Acesso não permitido. ' +
                              #13 + 'Não existe o arquivo de autenticação para acesso ao sistema')
  else
     begin
      Arq := 'OFFLINE\USUARIO.XML';
      if FileExists( Arq ) then
         begin
          dmOFFLine.cdsUsuario.LoadFromFile( Arq );
          dmOFFLine.cdsUsuario.AddIndex( 'idx1','USUARIOID',[ixPrimary],'','',0);
          dmOFFLine.cdsUsuario.IndexName := 'idx1';
         end
      else
         raise Exception.Create( 'Problemas na leitura da Tabela (USUARIO.XML)');

      if dmOFFLine.cdsUsuario.FindKey([mktUsuario.Text]) then
         begin

         { Não validar senha do usuário }
         if dmOFFLine.cdsUsuarioBLOQUEADO.AsInteger = 0 then
            begin
             if dmOFFLine.cdsUsuarioREQUERSENHA.AsInteger = 1 then
                if EnDeCrypt( dmOFFLine.cdsUsuarioSENHA.AsString ) <> mktSenha.Text then
                   raise Exception.Create( 'Senha não confere');
            end
         else
            raise Exception.Create( 'Usuário está bloqueado para utilizar o sistema');

          dmOFFLine.UsuarioOFFLine     := mktUsuario.Text;
          dmOFFLine.FuncionarioOFFLine := dmOFFLine.cdsUsuarioENTIDADEID.AsInteger;
          FLogAcesso := -1;
         end
      else
         raise Exception.Create('Usuario / Senha inválido. Acesso não permitido');
     end;
 except
  on E: Exception do
  begin
   FLogAcesso := 0;
   MessageDlg( E.Message, mtWarning, [mbOK], 0 );
  end;
 end;

 Close;
end;

procedure TfrmLogin.mktSenhaKeyPress(Sender: TObject; var Key: Char);
begin
 // Habilitar a propriedade KeyPreview do Form para funcionar o Enter como Tab
 if Key = #13 then
    btnConectarClick( Sender );
end;

end.
