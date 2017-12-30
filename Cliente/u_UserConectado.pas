unit u_UserConectado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Sockets, Menus, Grids, Wwdbigrd,  Wwdbgrid, ComCtrls,
  StdCtrls, Buttons;

type
  TfrmUserConectado = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    grdUserAtivo: TwwDBGrid;
    PopupMenu2: TPopupMenu;
    Mensagem1: TMenuItem;
    EnviarmensagemTodos1: TMenuItem;
    TcpClient: TTcpClient;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure EnviarmensagemTodos1Click(Sender: TObject);
    procedure Exibir1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Mensagem1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
  private
    procedure EnviarMensagem(Mensagem, IP: String);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUserConectado: TfrmUserConectado;

implementation

uses u_dmAS, FuncoesDsi;

{$R *.dfm}

procedure TfrmUserConectado.FormCreate(Sender: TObject);
begin
 dmAS.cdsUserAtivo.Open;
end;

procedure TfrmUserConectado.Sair1Click(Sender: TObject);
begin
 ModalResult := mrCancel;
 Close;
end;

procedure TfrmUserConectado.Exibir1Click(Sender: TObject);
begin
 dmAS.cdsUserAtivo.Refresh;
end;

procedure TfrmUserConectado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 dmAS.cdsUserAtivo.Close;
 Action := caFree;
end;

procedure TfrmUserConectado.BitBtn1Click(Sender: TObject);
begin
 Close;
end;

procedure TfrmUserConectado.BitBtn2Click(Sender: TObject);
begin
 dmAS.cdsUserAtivo.Refresh;
end;

procedure TfrmUserConectado.Mensagem1Click(Sender: TObject);
begin
 EnviarMensagem( 'De: ' + LogUser + ' - ' + GetMachineIP + #13 +
                 InputBox( 'Enviar mensagem para: ' +
                            dmAS.cdsUserAtivoIP.Value + ' - ' +
                            dmAS.cdsUserAtivoUSUARIOID.Value,
                           'Mensagem', '' ), dmAS.cdsUserAtivoIP.Value );
end;

procedure TfrmUserConectado.EnviarmensagemTodos1Click(Sender: TObject);
var Texto : String;
begin
 Texto := InputBox( 'Enviar mensagem para: ' +
                     dmAS.cdsUserAtivoIP.Value + ' - ' +
                     dmAS.cdsUserAtivoUSUARIOID.Value,
                    'Mensagem', '' );
 with dmAS do
 begin
  cdsUserAtivo.First;
  while not cdsUserAtivo.Eof do
  begin
   EnviarMensagem( 'De: ' + LogUser + ' - ' + GetMachineIP + #13 +
                   Texto, cdsUserAtivoIP.Value );
   cdsUserAtivo.Next;
  end;
 end;
end;

procedure TfrmUserConectado.EnviarMensagem(Mensagem, IP: String);
begin
 TcpClient.RemoteHost := IP; 
 TcpClient.RemotePort := '8001';
 if TcpClient.Connect then
    TcpClient.Sendln( Mensagem );
 TcpClient.Disconnect;
end;

end.
