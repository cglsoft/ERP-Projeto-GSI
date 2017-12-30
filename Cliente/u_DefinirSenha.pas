unit u_DefinirSenha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfrmDefinirSenha = class(TForm)
    Label1: TLabel;
    edtSenha: TEdit;
    Label2: TLabel;
    edtNovaSenha: TEdit;
    btnCancel: TBitBtn;
    btnOK: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOKClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    MudarSenha : Boolean;
    Usuario : String;
  end;

var
  frmDefinirSenha: TfrmDefinirSenha;

implementation

uses Math, u_dmAS, FuncoesDsi, FuncoesCliente;

{$R *.dfm}

procedure TfrmDefinirSenha.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
end;

procedure TfrmDefinirSenha.btnOKClick(Sender: TObject);
var ParamPesquisa : String;
begin
 if Usuario = '' then
    begin
     MessageDlg('Problemas com a alteração de senha do Usuário, operação não concluída.', mtWarning,[mbOk], 0);
     Exit;
    end;

 if edtSenha.Text = edtNovaSenha.Text then
    with dmAS do
    begin
     ParamPesquisa := 'AS_USUARIO.USUARIOID = ' + QuotedStr( Usuario );
     GerarPesquisa( cdsUsuario,  ParamPesquisa );

     cdsUsuario.Edit;
     cdsUsuarioSENHA.Value      := EnDeCrypt( edtSenha.Text );
     cdsUsuarioPASSWORD.Value   := Hash5CryptyString( edtSenha.Text );

     cdsUsuarioMUDARSENHA.Value := 0;
     cdsUsuario.Post;

     GerarPesquisa( cdsUsuario, 'AS_USUARIO.USUARIOID <> ' + QuotedStr('A' ) );

     Close;
    end
 else
    begin
     MessageDlg('Senha não foi confirmada corretamente. Certifique-se de que ' +
                'a senha coincide com exatamente com a senha de confirmação.',
                 mtInformation, [mbOk], 0);
    end;
end;

procedure TfrmDefinirSenha.FormKeyPress(Sender: TObject; var Key: Char);
begin
 // Habilitar a propriedade KeyPreview do Form para funcionar o Enter como Tab
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;

procedure TfrmDefinirSenha.FormCreate(Sender: TObject);
begin
 dmAS.cdsUsuario.Open;
end;

end.
