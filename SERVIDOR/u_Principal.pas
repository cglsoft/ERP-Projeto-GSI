unit u_Principal;

interface

uses
  Windows, Messages, Forms, SysUtils, CoolTrayIcon, Menus, Grids, Wwdbigrd,
  Wwdbgrid, ComCtrls, StdCtrls, Buttons, Controls, Classes, ExtCtrls,
  Dialogs;

type
  TfrmPrincipal = class(TForm)
    ctiTrayIcon: TCoolTrayIcon;
    Panel1: TPanel;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    Sair1: TMenuItem;
    Exibir1: TMenuItem;
    grdUserAtivo: TwwDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure Sair1Click(Sender: TObject);
    procedure Exibir1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ctiTrayIconStartup(Sender: TObject;
      var ShowMainForm: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses u_dmServidor;

{$R *.dfm}

procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
 ModalResult := mrCancel;
 Close;
end;

procedure TfrmPrincipal.Exibir1Click(Sender: TObject);
begin
// cdsUserAtivo.Refresh;
 ctiTrayIcon.ShowMainForm;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
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

procedure TfrmPrincipal.BitBtn1Click(Sender: TObject);
begin
 Close;
end;

procedure TfrmPrincipal.BitBtn2Click(Sender: TObject);
begin
 // dmServidor.cdsUserAtivo.Open;
 if not Assigned( dmServidor ) then
    begin
     dmServidor := TdmServidor.Create( Self );
     dmServidor.cdsUserAtivo.Open;
    end;

 dmServidor.cdsUserAtivo.Refresh;
end;

procedure TfrmPrincipal.ctiTrayIconStartup(Sender: TObject;
  var ShowMainForm: Boolean);
begin
  ShowMainForm := False;
end;

end.

