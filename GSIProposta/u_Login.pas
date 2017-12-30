unit u_Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, ComCtrls, fcimageform, fcImage,
  DB, DBClient;

type
  TfrmLogin = class(TForm)
    GroupBox1: TGroupBox;
    btnCancelar: TBitBtn;
    mktSenha: TMaskEdit;
    Label2: TLabel;
    Label1: TLabel;
    mktUsuario: TMaskEdit;
    fcImageForm1: TfcImageForm;
    btnOFFLine: TBitBtn;
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnOFFLineClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FLogAcesso : Integer;
  end;

var
  frmLogin: TfrmLogin;

implementation

uses u_Principal, FuncoesDSI, u_dmPPOFFLine;

{$R *.dfm}

procedure TfrmLogin.btnCancelarClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action   := caFree;
end;

procedure TfrmLogin.FormCreate(Sender: TObject);
begin
 mktUsuario.Text := LogUser;
end;

procedure TfrmLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
 // Habilitar a propriedade KeyPreview do Form para funcionar o Enter como Tab
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;

procedure TfrmLogin.btnOFFLineClick(Sender: TObject);
var Arq : String;
begin
 try
  if not FileExists( 'OFFLINE\USUARIO.XML') then
     raise Exception.Create( 'Acesso n�o permitido. ' +
                              #13 + 'N�o existe o arquivo de autentica��o para acesso ao sistema')
  else
     begin
      Arq := 'OFFLINE\USUARIO.XML';
      if FileExists( Arq ) then
         begin
          dmPPOffLine.cdsUsuario.LoadFromFile( Arq );
          dmPPOffLine.cdsUsuario.AddIndex( 'idx1','USUARIOID',[ixPrimary],'','',0);
          dmPPOffLine.cdsUsuario.IndexName := 'idx1';
         end
      else
         raise Exception.Create( 'Problemas na leitura da Tabela (USUARIO.XML)');

      if dmPPOffLine.cdsUsuario.FindKey([mktUsuario.Text]) then
         begin

         { N�o validar senha do usu�rio }
         if dmPPOffLine.cdsUsuarioBLOQUEADO.AsInteger = 0 then
            begin
             if dmPPOffLine.cdsUsuarioREQUERSENHA.AsInteger = 1 then
                if EnDeCrypt( dmPPOffLine.cdsUsuarioSENHA.AsString ) <> mktSenha.Text then
                   raise Exception.Create( 'Senha n�o confere');
            end
         else
            raise Exception.Create( 'Usu�rio est� bloqueado para utilizar o sistema');

          dmPPOffLine.UsuarioOFFLine     := mktUsuario.Text;
          dmPPOffLine.FuncionarioOFFLine := dmPPOffLine.cdsUsuarioENTIDADEID.AsInteger;
          FLogAcesso := -1;
         end
      else
         raise Exception.Create('Usuario / Senha inv�lido. Acesso n�o permitido');
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

end.
