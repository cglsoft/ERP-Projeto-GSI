unit u_HoraTecnicaOFFLine;

interface

uses
  Windows, Dialogs, Forms, SysUtils, Messages, ImgList, Controls, Classes,
  ActnList, XPStyleActnCtrls, ActnMan, ExtCtrls, DBCtrls, wwdbedit,
  Wwdotdot, StdCtrls, Mask, wwdbdatetimepicker, ActnCtrls, tmbToolEdicaoTop,
  ToolWin, ComCtrls, tmbToolEdicaoBottom, Buttons, fcStatusBar, DB;

type
  TfrmHoraTecnicaOFFLine = class(TForm)
    CoolBar1: TCoolBar;
    tmbEdicaoTop2: TtmbEdicaoTop;
    tmbEdicaoTop1: TtmbEdicaoTop;
    ActionToolBar2: TActionToolBar;
    Panel2: TPanel;
    Label3: TLabel;
    wwDBDateTimePicker3: TwwDBDateTimePicker;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBEdit12: TDBEdit;
    Label1: TLabel;
    Panel1: TPanel;
    CoolBar2: TCoolBar;
    ActionToolBar3: TActionToolBar;
    ActionToolBar4: TActionToolBar;
    actmngOSHora: TActionManager;
    actGravar: TAction;
    actCancelar: TAction;
    actFechar: TAction;
    imglstOSHora: TImageList;
    fcStatusBar1: TfcStatusBar;
    actInserir: TAction;
    pgctrlDesp: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label5: TLabel;
    DBMemo1: TDBMemo;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    DBEdit18: TDBEdit;
    SpeedButton1: TSpeedButton;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure actGravarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure actInserirExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit16Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHoraTecnicaOFFLine: TfrmHoraTecnicaOFFLine;

implementation

uses u_dmOFFLine, FuncoesCliente;

{$R *.dfm}

procedure TfrmHoraTecnicaOFFLine.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 try
  if ( dmOFFLine.cdsOSHoraOFF.State in [dsInsert,dsEdit] ) then
     begin
      if MessageDlg('Gravar os dados da despesa (OFFLINE)?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
         dmOFFLine.cdsOSHoraOFF.Post
      else
         dmOFFLine.cdsOSHoraOFF.Cancel;
     end
  else
     dmOFFLine.cdsOSHoraOFF.Cancel;

  Action               := caFree;
  frmHoraTecnicaOFFLine := Nil;
 except
  On E:Exception do
  begin
   Action := caNone;
  end;
 end;

end;

procedure TfrmHoraTecnicaOFFLine.FormKeyPress(Sender: TObject; var Key: Char);
begin
 // Habilitar a propriedade KeyPreview do Form para funcionar o Enter como Tab
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;


procedure TfrmHoraTecnicaOFFLine.actGravarExecute(Sender: TObject);
begin
 if dmOFFLine.cdsOSHoraOFF.State in [dsInsert,dsEdit] then
    dmOFFLine.cdsOSHoraOFF.Post;
end;

procedure TfrmHoraTecnicaOFFLine.actCancelarExecute(Sender: TObject);
begin
 if dmOFFLine.cdsOSHoraOFF.State in [dsInsert,dsEdit] then
    dmOFFLine.cdsOSHoraOFF.Cancel;
end;

procedure TfrmHoraTecnicaOFFLine.actFecharExecute(Sender: TObject);
begin
 Close;
end;

procedure TfrmHoraTecnicaOFFLine.actInserirExecute(Sender: TObject);
var OSId : String;
begin
 OSId       := dmOFFLine.cdsOSHoraOFFOSID.AsString;

 dmOFFLine.cdsOSHoraOFF.Insert;
 dmOFFLine.cdsOSHoraOFFOSID.AsString := OSId;

 DBEdit18.SetFocus;
end;

procedure TfrmHoraTecnicaOFFLine.FormShow(Sender: TObject);
begin
 if dmOFFLine.cdsOSHoraOFFPROBLEMATRANSF.Value then
    pgctrlDesp.ActivePageIndex := 1
 else
    pgctrlDesp.ActivePageIndex := 0;
end;

procedure TfrmHoraTecnicaOFFLine.DBEdit16Exit(Sender: TObject);
begin
 if MessageDlg('Deseja incluir nova despesa?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    actInserirExecute( Sender );
end;

procedure TfrmHoraTecnicaOFFLine.SpeedButton1Click(Sender: TObject);
begin
 dmOFFLine.cdsOSHoraOFFOSID.Clear
end;

end.
