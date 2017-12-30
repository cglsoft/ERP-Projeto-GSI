unit u_principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CoolTrayIcon, Menus, ImgList, StdCtrls, Buttons, ExtCtrls,
  ComCtrls, ScktComp, MidasLib;

type
  TfrmPrincipal = class(TForm)
    ImageList1: TImageList;
    PopupMenu1: TPopupMenu;
    ShowWindow1: TMenuItem;
    HideWindow1: TMenuItem;
    N1: TMenuItem;
    BalloonHint1: TMenuItem;
    N2: TMenuItem;
    Exit1: TMenuItem;
    TrayIcon1: TCoolTrayIcon;
    Timer1: TTimer;
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ShowWindow1Click(Sender: TObject);
    procedure HideWindow1Click(Sender: TObject);
    procedure BalloonHint1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.FormActivate(Sender: TObject);
begin
 TrayIcon1.Enabled       := True;
 TrayIcon1.IconVisible   := True;

 TrayIcon1.CycleInterval := 500;
 TrayIcon1.CycleIcons    := True;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
{ Application.Minimize;      // Will hide dialogs and popup windows as well (this demo has none)
 TrayIcon1.HideMainForm;}
end;

procedure TfrmPrincipal.ShowWindow1Click(Sender: TObject);
begin
 TrayIcon1.ShowMainForm;    // ALWAYS use this method!!!
end;

procedure TfrmPrincipal.HideWindow1Click(Sender: TObject);
begin
 Application.Minimize;      // Will hide dialogs and popup windows as well (this demo has none)
 TrayIcon1.HideMainForm;
end;

procedure TfrmPrincipal.BalloonHint1Click(Sender: TObject);
begin
 TrayIcon1.ShowBalloonHint('Servidor de Aplicação CEP',
        'Demonstração de utilização de balloon hint para mostrar informações importantes.' + #13 +
        'O Texto pode ter o tamanho máximo de 255 e o título pode ter no máximo 64 chars.',
        bitInfo, 10);
end;

procedure TfrmPrincipal.Exit1Click(Sender: TObject);
begin
 Close
end;

procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
begin
 HideWindow1Click( Self );

 TrayIcon1.ShowBalloonHint('Servidor de Aplicação CEP',
        'Aplicação servidora sendo Executada.',
        bitInfo, 10);

 Timer1.Enabled := False;
end;

end.
