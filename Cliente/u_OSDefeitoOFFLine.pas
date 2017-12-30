unit u_OSDefeitoOFFLine;

interface

uses
  Windows, Dialogs, Forms, SysUtils, Messages, ImgList, Controls, Classes,
  ActnList, XPStyleActnCtrls, ActnMan, ExtCtrls, DBCtrls, wwdbedit,
  Wwdotdot, StdCtrls, Mask, wwdbdatetimepicker, ActnCtrls, tmbToolEdicaoTop,
  ToolWin, ComCtrls, tmbToolEdicaoBottom, Buttons, fcStatusBar, DB;

type
  TfrmOSDefeitoOFFLine = class(TForm)
    CoolBar1: TCoolBar;
    tmbEdicaoTop2: TtmbEdicaoTop;
    tmbEdicaoTop1: TtmbEdicaoTop;
    ActionToolBar2: TActionToolBar;
    Panel2: TPanel;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBEdit12: TDBEdit;
    Label1: TLabel;
    Panel1: TPanel;
    CoolBar2: TCoolBar;
    ActionToolBar3: TActionToolBar;
    ActionToolBar4: TActionToolBar;
    actmngDefeitoOFF: TActionManager;
    actGravar: TAction;
    actCancelar: TAction;
    actFechar: TAction;
    ImageList1: TImageList;
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
    DBLookupComboBox3: TDBLookupComboBox;
    DBEdit17: TDBEdit;
    SpeedButton1: TSpeedButton;
    DBRichEdit1: TDBRichEdit;
    DBRichEdit2: TDBRichEdit;
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
  frmOSDefeitoOFFLine: TfrmOSDefeitoOFFLine;

implementation

uses u_dmOFFLine, FuncoesCliente;

{$R *.dfm}

procedure TfrmOSDefeitoOFFLine.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 try
  if ( dmOFFLine.cdsOSDefeitoOFF.State in [dsInsert,dsEdit] ) then
     begin
      if MessageDlg('Gravar os dados da despesa (OFFLINE)?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
         dmOFFLine.cdsOSDefeitoOFF.Post
      else
         dmOFFLine.cdsOSDefeitoOFF.Cancel;
     end
  else
     dmOFFLine.cdsOSDefeitoOFF.Cancel;

  Action              := caFree;
  frmOSDefeitoOFFLine := Nil;
 except
  On E:Exception do
  begin
   Action := caNone;
  end;
 end;

end;

procedure TfrmOSDefeitoOFFLine.FormKeyPress(Sender: TObject; var Key: Char);
begin
 // Habilitar a propriedade KeyPreview do Form para funcionar o Enter como Tab
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;


procedure TfrmOSDefeitoOFFLine.actGravarExecute(Sender: TObject);
begin
 if dmOFFLine.cdsOSDefeitoOFF.State in [dsInsert,dsEdit] then
    dmOFFLine.cdsOSDefeitoOFF.Post;
end;

procedure TfrmOSDefeitoOFFLine.actCancelarExecute(Sender: TObject);
begin
 if dmOFFLine.cdsOSDefeitoOFF.State in [dsInsert,dsEdit] then
    dmOFFLine.cdsOSDefeitoOFF.Cancel;
end;

procedure TfrmOSDefeitoOFFLine.actFecharExecute(Sender: TObject);
begin
 Close;
end;

procedure TfrmOSDefeitoOFFLine.actInserirExecute(Sender: TObject);
var OSId : String;
begin
 OSId       := dmOFFLine.cdsOSDefeitoOFFOSID.AsString;

 dmOFFLine.cdsOSDefeitoOFF.Insert;
 dmOFFLine.cdsOSDefeitoOFFOSID.AsString := OSId;
end;

procedure TfrmOSDefeitoOFFLine.FormShow(Sender: TObject);
begin
 if dmOFFLine.cdsOSDefeitoOFFPROBLEMATRANSF.Value then
    pgctrlDesp.ActivePageIndex := 1
 else
    pgctrlDesp.ActivePageIndex := 0;
end;

procedure TfrmOSDefeitoOFFLine.DBEdit16Exit(Sender: TObject);
begin
 if MessageDlg('Deseja incluir nova despesa?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    actInserirExecute( Sender );
end;

procedure TfrmOSDefeitoOFFLine.SpeedButton1Click(Sender: TObject);
begin
 dmOFFLine.cdsOSDefeitoOFFOSID.Clear
end;

end.
