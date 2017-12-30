unit u_BancoHorasOFFLine;

interface

uses
  Windows, Dialogs, Forms, SysUtils, Messages, ImgList, Controls, Classes,
  ActnList, XPStyleActnCtrls, ActnMan, ExtCtrls, DBCtrls, wwdbedit,
  Wwdotdot, StdCtrls, Mask, wwdbdatetimepicker, ActnCtrls, tmbToolEdicaoTop,
  ToolWin, ComCtrls, tmbToolEdicaoBottom, Buttons, fcStatusBar, DB;

type
  TfrmBancoHorasOFFLine = class(TForm)
    CoolBar1: TCoolBar;
    tmbEdicaoTop2: TtmbEdicaoTop;
    tmbEdicaoTop1: TtmbEdicaoTop;
    ActionToolBar2: TActionToolBar;
    Panel2: TPanel;
    Label3: TLabel;
    Label6: TLabel;
    wwDBDateTimePicker3: TwwDBDateTimePicker;
    DBEdit2: TDBEdit;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBRadioGroup2: TDBRadioGroup;
    DBEdit12: TDBEdit;
    Label1: TLabel;
    Panel1: TPanel;
    CoolBar2: TCoolBar;
    ActionToolBar3: TActionToolBar;
    ActionToolBar4: TActionToolBar;
    actmngBancoHoras: TActionManager;
    actGravar: TAction;
    actCancelar: TAction;
    actFechar: TAction;
    imglstBancoHoras: TImageList;
    fcStatusBar1: TfcStatusBar;
    actInserir: TAction;
    pgctrlDesp: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label5: TLabel;
    DBMemo1: TDBMemo;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    DBRadioGroup3: TDBRadioGroup;
    DBEdit15: TDBEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBLookupComboBox4: TDBLookupComboBox;
    SpeedButton1: TSpeedButton;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    Label10: TLabel;
    DBEdit6: TDBEdit;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    MaskEdit1: TMaskEdit;
    Label14: TLabel;
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
  frmBancoHorasOFFLine: TfrmBancoHorasOFFLine;

implementation

uses u_dmOFFLine, FuncoesCliente;

{$R *.dfm}

procedure TfrmBancoHorasOFFLine.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 try
  if ( dmOFFLine.cdsBancoHora.State in [dsInsert,dsEdit] ) then
     begin
      if MessageDlg('Gravar os dados da despesa (OFFLINE)?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
         dmOFFLine.cdsBancoHora.Post
      else
         dmOFFLine.cdsBancoHora.Cancel;
     end
  else
     dmOFFLine.cdsBancoHora.Cancel;

  Action               := caFree;
  frmBancoHorasOFFLine := Nil;
 except
  On E:Exception do
  begin
   Action := caNone;
  end;
 end;

end;

procedure TfrmBancoHorasOFFLine.FormKeyPress(Sender: TObject; var Key: Char);
begin
 // Habilitar a propriedade KeyPreview do Form para funcionar o Enter como Tab
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;


procedure TfrmBancoHorasOFFLine.actGravarExecute(Sender: TObject);
begin
 if dmOFFLine.cdsBancoHora.State in [dsInsert,dsEdit] then
    dmOFFLine.cdsBancoHora.Post;
end;

procedure TfrmBancoHorasOFFLine.actCancelarExecute(Sender: TObject);
begin
 if dmOFFLine.cdsBancoHora.State in [dsInsert,dsEdit] then
    dmOFFLine.cdsBancoHora.Cancel;
end;

procedure TfrmBancoHorasOFFLine.actFecharExecute(Sender: TObject);
begin
 Close;
end;

procedure TfrmBancoHorasOFFLine.actInserirExecute(Sender: TObject);
var OSId, TipoOsDesp : String;
begin
 TipoOsDesp := dmOFFLine.cdsBancoHoraTIPODESPESAOS.AsString;
 OSId       := dmOFFLine.cdsBancoHoraOSID.AsString;

 dmOFFLine.cdsBancoHora.Insert;
 dmOFFLine.cdsBancoHoraTIPODESPESAOS.AsString := TipoOsDesp;
 dmOFFLine.cdsBancoHoraOSID.AsString := OSId;

 DBEdit18.SetFocus;
end;

procedure TfrmBancoHorasOFFLine.FormShow(Sender: TObject);
begin
 if dmOFFLine.cdsBancoHoraPROBLEMATRANSF.Value then
    pgctrlDesp.ActivePageIndex := 1
 else
    pgctrlDesp.ActivePageIndex := 0;
end;

procedure TfrmBancoHorasOFFLine.DBEdit16Exit(Sender: TObject);
begin
 if MessageDlg('Deseja incluir nova despesa?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    actInserirExecute( Sender );
end;

procedure TfrmBancoHorasOFFLine.SpeedButton1Click(Sender: TObject);
begin
 dmOFFLine.cdsBancoHoraOSID.Clear
end;

end.
