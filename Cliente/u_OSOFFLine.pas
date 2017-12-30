unit u_OSOFFLine;

interface

uses
  Windows, Messages, Forms, SysUtils, wwclearbuttongroup, wwradiogroup,
  QuickRpt, Classes, ActnList, XPStyleActnCtrls, ActnMan, ImgList, Controls,
  ActnMenus, ActnCtrls, ComCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids,
  wwdbdatetimepicker, wwdbedit, Wwdotdot, Mask, ToolWin, tmbToolEdicaoBottom, DB,
  ExtCtrls, Dialogs, DBClient, Graphics, tmbToolEdicaoLista ;

type TAtivar = ( On, Off);
type
  TfrmOSOFFLine = class(TForm)
    Splitter1: TSplitter;
    StatusBar1: TStatusBar;
    Panel3: TPanel;
    tmbEdicaoBottom2: TtmbEdicaoBottom;
    pgctrlOSPastas: TPageControl;
    tbshtCliente: TTabSheet;
    grpbxDadosCliente: TGroupBox;
    Label30: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label44: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit9: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    wwDBComboDlg9: TwwDBComboDlg;
    DBEdit13: TDBEdit;
    DBEdit18: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit14: TDBEdit;
    GroupBox3: TGroupBox;
    Label47: TLabel;
    Label52: TLabel;
    wwDBDateTimePicker5: TwwDBDateTimePicker;
    wwDBDateTimePicker6: TwwDBDateTimePicker;
    tbshtHoras: TTabSheet;
    dbgrdHoras: TDBGrid;
    tbshtServico: TTabSheet;
    Label33: TLabel;
    DBEdit25: TDBEdit;
    tbshtMaterial: TTabSheet;
    dbgrdOSMaterial: TDBGrid;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    Label45: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label24: TLabel;
    DBEdit24: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit23: TDBEdit;
    GroupBox2: TGroupBox;
    Label31: TLabel;
    Label32: TLabel;
    Label53: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit35: TDBEdit;
    BitBtn2: TBitBtn;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    TabSheet5: TTabSheet;
    GroupBox4: TGroupBox;
    Splitter2: TSplitter;
    dbgrdOcOperacional: TDBGrid;
    CoolBar1: TCoolBar;
    ActionMainMenuBar1: TActionMainMenuBar;
    ActionToolBar2: TActionToolBar;
    ImageList1: TImageList;
    actmngManutencao: TActionManager;
    actImpOS: TAction;
    QRCompositeReport1: TQRCompositeReport;
    DBEdit12: TDBEdit;
    DBEdit37: TDBEdit;
    Label43: TLabel;
    Panel2: TPanel;
    Panel4: TPanel;
    Label10: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label1: TLabel;
    DBEdit10: TDBEdit;
    dbedtDtAbertura: TDBEdit;
    dbedtDtValidade: TDBEdit;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit28: TDBEdit;
    actDespesasRDV: TAction;
    actBancoHoras: TAction;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    TabSheet4: TTabSheet;
    DBGrid2: TDBGrid;
    Label28: TLabel;
    Label54: TLabel;
    DBEdit42: TDBEdit;
    DBEdit46: TDBEdit;
    PageControl1: TPageControl;
    TabSheet6: TTabSheet;
    grpbxDadosOS: TGroupBox;
    Label35: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label11: TLabel;
    Label34: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label22: TLabel;
    DBComboBox2: TDBComboBox;
    wwdbcdlgSerie: TwwDBComboDlg;
    wwdbcdlgModelo: TwwDBComboDlg;
    wwDBComboDlg6: TwwDBComboDlg;
    DBEdit6: TDBEdit;
    wwRadioGroup1: TwwRadioGroup;
    DBEdit3: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit38: TDBEdit;
    TabSheet7: TTabSheet;
    DBMemo2: TDBMemo;
    DBCheckBox1: TDBCheckBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label46: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    ControlBar1: TControlBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ControlBar3: TControlBar;
    ToolBar3: TToolBar;
    ToolButton3: TToolButton;
    ControlBar4: TControlBar;
    ToolBar4: TToolBar;
    ToolButton4: TToolButton;
    ControlBar5: TControlBar;
    ToolBar5: TToolBar;
    ToolButton5: TToolButton;
    ControlBar6: TControlBar;
    ToolBar6: TToolBar;
    ToolButton6: TToolButton;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    DBMemo3: TDBMemo;
    ScrollBox1: TScrollBox;
    DBEdit22: TDBEdit;
    Label3: TLabel;
    dbgrdServico: TDBGrid;
    Label58: TLabel;
    DBMemo4: TDBMemo;
    ControlBar2: TControlBar;
    ToolBar2: TToolBar;
    ToolButton2: TToolButton;
    DBEdit7: TDBEdit;
    DBCheckBox2: TDBCheckBox;
    DBEdit8: TDBEdit;
    Label59: TLabel;
    DBEdit16: TDBEdit;
    Label8: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure actImpOSExecute(Sender: TObject);
    procedure QRCompositeReport1AddReports(Sender: TObject);
    procedure actDespesasRDVExecute(Sender: TObject);
    procedure actBancoHorasExecute(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure dbgrdHorasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
  private
    procedure OSControlsDisable;
    procedure FiltroOS( Ativar : TAtivar);
    procedure ShowFormBancoHoras;
    procedure ShowFormRDV;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOSOFFLine: TfrmOSOFFLine;

implementation

uses FuncoesCliente, u_dmOFFLine, u_RelOSNovo, u_RelOSNovoB,
  u_BancoHorasOFFLine, u_DespesaOFFLine;

{$R *.dfm}

procedure TfrmOSOFFLine.FiltroOS( Ativar : TAtivar);
begin
 case Ativar of
 &On : begin
        dmOFFLine.FiltroOSImpressao( dmOFFLine.cdsOSOSID.AsString, dmOFFLine.cdsAdiantamento );
        dmOFFLine.FiltroOSImpressao( dmOFFLine.cdsOSOSID.AsString, dmOFFLine.cdsBancoHora );
       end;

 &Off: begin
        dmOFFLine.cdsAdiantamento.CancelRange;
        dmOFFLine.cdsBancoHora.CancelRange;
       end;
 end;
end;

procedure TfrmOSOFFLine.OSControlsDisable;
begin
 dmOFFLine.cdsOS.CancelRange;
 dmOFFLine.cdsAdiantamento.CancelRange;
 dmOFFLine.cdsBancoHora.CancelRange;
end;

procedure TfrmOSOFFLine.actImpOSExecute(Sender: TObject);
var dsState : TDataSetState;
begin
 dsState := dmOFFLINE.cdsOs.State;
 if dsState in [dsInsert,dsEdit] then
    dmOFFLINE.cdsOs.Post;

 frmRelOSNovo  := TfrmRelOSNovo.Create( Nil );
 frmRelOSNovoB := TfrmRelOSNovoB.Create( Nil );
 frmRelOSNovo.TipoRelat  := 2;
 frmRelOSNovoB.TipoRelat := 2;
 try
  dmOFFLine.FiltroOSImpressao( dmOFFLine.cdsOSOSID.AsString, dmOFFLine.cdsOS );
  dmOFFLine.FiltroOSImpressao( dmOFFLine.cdsAdiantamentoOSID.AsString, dmOFFLine.cdsAdiantamento );
  dmOFFLine.FiltroOSImpressao( dmOFFLine.cdsBancoHoraOSID.AsString, dmOFFLine.cdsBancoHora );

  frmRelOSNovo.qrlblContratoID.Caption := dmOFFLine.cdsOSL_CONTRATOID.Value;
  frmRelOSNovo.QRLDescTermo.Caption    := dmOFFLine.cdsOSL_TERMOCONTRATO.Value;

  QRCompositeReport1.Preview;

  if MessageDlg('Impressão final da Ordem de Serviço ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
      dmOFFLine.cdsOS.Tag := 1; // Não processar os cálculos
      dmOFFLine.cdsOS.Edit;
      dmOFFLINE.cdsOsOSIMPRESSA.Value := 1;
      dmOFFLINE.cdsOs.Post;
     end;

 finally
  OSControlsDisable;

  dmOFFLINE.cdsOs.Edit;

  FreeAndNil( frmRelOSNovo.QuickRep1 );
  FreeAndNil( frmRelOSNovo );
  FreeAndNil( frmRelOSNovoB.QuickRep1 );
  FreeAndNil( frmRelOSNovoB );
 end;
end;

procedure TfrmOSOFFLine.BitBtn2Click(Sender: TObject);
begin
 dmOFFLine.TotalOSItens;
end;

procedure TfrmOSOFFLine.dbgrdHorasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var HoldColor : TColor;
begin
 HoldColor :=  TDBGrid( Sender ).Canvas.Brush.Color;

 if TDBGrid( Sender ).DataSource.DataSet.FieldByName('BLOQUEADO').AsInteger = 1 then
    begin
     TDBGrid( Sender ).Canvas.Brush.Color := clRed;
     TDBGrid( Sender ).DefaultDrawColumnCell(Rect, DataCol, Column, State);
     TDBGrid( Sender ).Canvas.Brush.Color := HoldColor;
    end
 else
    begin
     TDBGrid( Sender ).Canvas.Brush.Color := clGreen;
     TDBGrid( Sender ).DefaultDrawColumnCell(Rect, DataCol, Column, State);
     TDBGrid( Sender ).Canvas.Brush.Color := HoldColor;
    end;

end;

procedure TfrmOSOFFLine.ShowFormBancoHoras;
begin
 if not Assigned( frmBancoHorasOFFLine ) then
    Application.CreateForm( TfrmBancoHorasOFFLine, frmBancoHorasOFFLine );
 frmBancoHorasOFFLine.Show;
end;

procedure TfrmOSOFFLine.ShowFormRDV;
begin
if not Assigned( frmDespesaOFFLine ) then
    Application.CreateForm( TfrmDespesaOFFLine, frmDespesaOFFLine );
 frmDespesaOFFLine.Show;
end;

procedure TfrmOSOFFLine.SpeedButton1Click(Sender: TObject);
begin
 dmOFFLine.cdsOSDATAHORACHEGADA.Clear;
end;

procedure TfrmOSOFFLine.SpeedButton2Click(Sender: TObject);
begin
 dmOFFLine.cdsOSDATAHORASAIDA.Clear;
end;

procedure TfrmOSOFFLine.ToolButton1Click(Sender: TObject);
begin
 dmOFFLine.cdsOSHora.Delete;
end;

procedure TfrmOSOFFLine.ToolButton2Click(Sender: TObject);
begin
 dmOFFLine.cdsOSDefeito.Delete;
end;

procedure TfrmOSOFFLine.ToolButton3Click(Sender: TObject);
begin
 dmOFFLine.cdsOSMaterial.Delete;
end;

procedure TfrmOSOFFLine.ToolButton4Click(Sender: TObject);
begin
 dmOFFLine.cdsOSOCOperacional.Delete;
end;

procedure TfrmOSOFFLine.ToolButton5Click(Sender: TObject);
begin
 dmOFFLine.cdsAdiantamento.Delete;
end;

procedure TfrmOSOFFLine.ToolButton6Click(Sender: TObject);
begin
 dmOFFLine.cdsBancoHora.Delete;
end;

procedure TfrmOSOFFLine.DBGrid1DblClick(Sender: TObject);
begin
  ShowFormRDV;
end;

procedure TfrmOSOFFLine.DBGrid2DblClick(Sender: TObject);
begin
 ShowFormBancoHoras;
end;

procedure TfrmOSOFFLine.actBancoHorasExecute(Sender: TObject);
begin
 ShowFormBancoHoras;

 dmOFFLine.cdsBancoHora.Insert;
 dmOFFLine.cdsBancoHoraOSID.Value := dmOFFLine.cdsOSOSID.Value;
end;


procedure TfrmOSOFFLine.actDespesasRDVExecute(Sender: TObject);
begin
 ShowFormRDV;
 
 dmOFFLine.cdsAdiantamento.Insert;
 dmOFFLine.cdsAdiantamentoOSID.Value := dmOFFLine.cdsOSOSID.Value;
end;

procedure TfrmOSOFFLine.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if not FinalFormulario( dmOFFLine.cdsOs,' da Ordem de Serviço') then
    Action := caNone
 else
    begin
     FiltroOS( Off );
     Action := caFree;
     frmOSOFFLine  := Nil;
    end;
end;

procedure TfrmOSOFFLine.FormCreate(Sender: TObject);
begin
 FiltroOS( On );
end;

procedure TfrmOSOFFLine.FormKeyPress(Sender: TObject; var Key: Char);
begin
 {Habilitar a propriedade KeyPreview do Form para funcionar o Enter como Tab}
 {ENTER}
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;

procedure TfrmOSOFFLine.FormShow(Sender: TObject);
begin
 FiltroOS( On );
end;

procedure TfrmOSOFFLine.QRCompositeReport1AddReports(Sender: TObject);
begin
  // The OnAddReports event is called by the CompositeReport
  // to add the reports to list of reports
  with QRCompositeReport1.Reports do
  begin
    Add(frmRelOSNovo.QuickRep1);
    Add(frmRelOSNovoB.QuickRep1);
  end;
end;

end.
