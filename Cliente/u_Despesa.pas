unit u_Despesa;

interface

uses
  Windows, Dialogs, Forms, ImgList, Controls, Classes, ActnList, XPStyleActnCtrls,
  ActnMan, wwdbedit, Wwdotdot, StdCtrls, ExtCtrls, DBCtrls, Mask,
  wwdbdatetimepicker, Buttons, tmbToolEdicaoTop, ActnCtrls, ToolWin,
  ComCtrls, DB;

type
  TfrmDespesa = class(TForm)
    StatusBar1: TStatusBar;
    Panel3: TPanel;
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
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    wwDBComboDlg1: TwwDBComboDlg;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBEdit11: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    Label16: TLabel;
    wwDBComboDlg5: TwwDBComboDlg;
    DBEdit3: TDBEdit;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    DBEdit7: TDBEdit;
    Label11: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBRadioGroup2: TDBRadioGroup;
    DBEdit12: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit13: TDBEdit;
    Label7: TLabel;
    DBEdit14: TDBEdit;
    Label17: TLabel;
    DBEdit15: TDBEdit;
    actmngDespesa: TActionManager;
    actInserir: TAction;
    actGravar: TAction;
    actCancelar: TAction;
    actFechar: TAction;
    ImageList1: TImageList;
    CoolBar2: TCoolBar;
    ActionToolBar3: TActionToolBar;
    ActionToolBar4: TActionToolBar;
    SpeedButton1: TSpeedButton;
    DBRadioGroup3: TDBRadioGroup;
    Label18: TLabel;
    DBEdit16: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBComboDlg5CustomDlg(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure wwDBComboDlg1CustomDlg(Sender: TObject);
    procedure actInserirExecute(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDespesa : TfrmDespesa;
  Gravado    : Boolean;

implementation

uses u_dmRD, FuncoesCliente;

{$R *.dfm}

procedure TfrmDespesa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if not FinalFormulario(dmRD.cdsAdiantamento,' da Despesa  ') then
    Action := caNone
 else
    begin
     Action          := caFree;
     frmDespesa      := Nil;
    end;
    Application.OnHint := nil;
end;

procedure TfrmDespesa.wwDBComboDlg5CustomDlg(Sender: TObject);
begin
 dmRD.FiltroFuncionarioRDV( dmRD.cdsAdiantamentoFUNCIONARIOID );
end;

procedure TfrmDespesa.FormKeyPress(Sender: TObject; var Key: Char);
begin
 // Habilitar a propriedade KeyPreview do Form para funcionar o Enter como Tab
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;

procedure TfrmDespesa.wwDBComboDlg1CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa( dmRD.dsOperacao,'OPERACAOID',dmRD.cdsAdiantamentoOPERACAOID.AsString);
 ExecLoockupRetorno( dmRD.cdsAdiantamento,'OPERACAOID','OPERACAOID');
end;

procedure TfrmDespesa.actInserirExecute(Sender: TObject);
var OSId, TipoOsDesp : String;
    FuncId : Integer;
begin
 Gravado := True;
 if dmRD.cdsAdiantamento.State in [dsInsert,dsEdit] then
    dmRD.cdsAdiantamento.Post;

 TipoOsDesp := dmRD.cdsAdiantamentoTIPODESPESAOS.AsString;
 OSId       := dmRD.cdsAdiantamentoOSID.AsString;
 FuncId     := dmRD.cdsAdiantamentoFUNCIONARIOID.AsInteger;

 dmRD.cdsAdiantamento.Insert;
 dmRD.cdsAdiantamentoTIPODESPESAOS.AsString := TipoOsDesp;
 dmRD.cdsAdiantamentoOSID.AsString          := OSId;
 dmRD.cdsAdiantamentoFUNCIONARIOID.Value    := FuncId;
 dmRD.cdsAdiantamentoOPERACAOID.Clear;

// wwDBDateTimePicker4.SetFocus;
//    end;
end;

procedure TfrmDespesa.actGravarExecute(Sender: TObject);
begin
 if dmRD.cdsAdiantamento.State in [dsInsert,dsEdit] then
    dmRD.cdsAdiantamento.Post;
end;

procedure TfrmDespesa.actCancelarExecute(Sender: TObject);
begin
 if dmRD.cdsAdiantamento.State in [dsInsert,dsEdit] then
    dmRD.cdsAdiantamento.Cancel;
end;

procedure TfrmDespesa.actFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmDespesa.DBEdit10Exit(Sender: TObject);
begin
 if not Gravado then
    if MessageDlg('Deseja incluir nova despesa?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
       actInserirExecute( Sender );
 Gravado := False;
end;

procedure TfrmDespesa.SpeedButton1Click(Sender: TObject);
begin
 dmRD.cdsAdiantamentoOSID.Clear
end;

end.

