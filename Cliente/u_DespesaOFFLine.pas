unit u_DespesaOFFLine;

interface

uses
  Windows, Dialogs, Forms, SysUtils, Messages, ImgList, Controls, Classes,
  ActnList, XPStyleActnCtrls, ActnMan, ExtCtrls, DBCtrls, wwdbedit,
  Wwdotdot, StdCtrls, Mask, wwdbdatetimepicker, ActnCtrls, tmbToolEdicaoTop,
  ToolWin, ComCtrls, tmbToolEdicaoBottom, Buttons, fcStatusBar, DB;

type
  TfrmDespesaOFFLine = class(TForm)
    CoolBar1: TCoolBar;
    tmbEdicaoTop2: TtmbEdicaoTop;
    tmbEdicaoTop1: TtmbEdicaoTop;
    ActionToolBar2: TActionToolBar;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    wwDBDateTimePicker3: TwwDBDateTimePicker;
    wwDBDateTimePicker4: TwwDBDateTimePicker;
    DBEdit2: TDBEdit;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    DBEdit7: TDBEdit;
    Label11: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBRadioGroup2: TDBRadioGroup;
    DBEdit12: TDBEdit;
    Label1: TLabel;
    Panel1: TPanel;
    CoolBar2: TCoolBar;
    ActionToolBar3: TActionToolBar;
    ActionToolBar4: TActionToolBar;
    actmngDespOFF: TActionManager;
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
    Label7: TLabel;
    Label14: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DBEdit3: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit14: TDBEdit;
    DBRadioGroup3: TDBRadioGroup;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBLookupComboBox4: TDBLookupComboBox;
    SpeedButton1: TSpeedButton;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup4: TDBRadioGroup;
    Label8: TLabel;
    DBEdit1: TDBEdit;
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
  frmDespesaOFFLine: TfrmDespesaOFFLine;

implementation

uses u_dmOFFLine, FuncoesCliente;

{$R *.dfm}

procedure TfrmDespesaOFFLine.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 try
  if ( dmOFFLine.cdsAdiantamento.State in [dsInsert,dsEdit] ) then
     begin
      if MessageDlg('Gravar os dados da despesa (OFFLINE)?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
         dmOFFLine.cdsAdiantamento.Post
      else
         dmOFFLine.cdsAdiantamento.Cancel;
     end
  else
     dmOFFLine.cdsAdiantamento.Cancel;

  Action            := caFree;
  frmDespesaOFFLine := Nil;
 except
  On E:Exception do
  begin
   Action := caNone;
  end;
 end;

end;

procedure TfrmDespesaOFFLine.FormKeyPress(Sender: TObject; var Key: Char);
begin
 // Habilitar a propriedade KeyPreview do Form para funcionar o Enter como Tab
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;


procedure TfrmDespesaOFFLine.actGravarExecute(Sender: TObject);
begin
 if dmOFFLine.cdsAdiantamento.State in [dsInsert,dsEdit] then
    dmOFFLine.cdsAdiantamento.Post;
end;

procedure TfrmDespesaOFFLine.actCancelarExecute(Sender: TObject);
begin
 if dmOFFLine.cdsAdiantamento.State in [dsInsert,dsEdit] then
    dmOFFLine.cdsAdiantamento.Cancel;
end;

procedure TfrmDespesaOFFLine.actFecharExecute(Sender: TObject);
begin
 Close;
end;

procedure TfrmDespesaOFFLine.actInserirExecute(Sender: TObject);
var OSId, TipoOsDesp : String;
begin
 TipoOsDesp := dmOFFLine.cdsAdiantamentoTIPODESPESAOS.AsString;
 OSId       := dmOFFLine.cdsAdiantamentoOSID.AsString;

 dmOFFLine.cdsAdiantamento.Insert;
 dmOFFLine.cdsAdiantamentoTIPODESPESAOS.AsString := TipoOsDesp;
 dmOFFLine.cdsAdiantamentoOSID.AsString := OSId;

 DBEdit18.SetFocus;
end;

procedure TfrmDespesaOFFLine.FormShow(Sender: TObject);
begin
 if dmOFFLine.cdsAdiantamentoPROBLEMATRANSF.Value then
    pgctrlDesp.ActivePageIndex := 1
 else
    pgctrlDesp.ActivePageIndex := 0;
end;

procedure TfrmDespesaOFFLine.DBEdit16Exit(Sender: TObject);
begin
 if MessageDlg('Deseja incluir nova despesa?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    actInserirExecute( Sender );
end;

procedure TfrmDespesaOFFLine.SpeedButton1Click(Sender: TObject);
begin
 dmOFFLine.cdsAdiantamentoOSID.Clear
end;

end.
