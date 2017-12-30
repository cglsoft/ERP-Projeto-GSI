unit u_BancoHoras;

interface

uses
  Windows, Dialogs, Forms, ImgList, Controls, Classes, ActnList, XPStyleActnCtrls,
  ActnMan, wwdbedit, Wwdotdot, StdCtrls, ExtCtrls, DBCtrls, Mask,
  wwdbdatetimepicker, Buttons, tmbToolEdicaoTop, ActnCtrls, ToolWin,
  ComCtrls, DB, SysUtils;

type
  TfrmBancoHora = class(TForm)
    StatusBar1: TStatusBar;
    Panel3: TPanel;
    CoolBar1: TCoolBar;
    tmbEdicaoTop2: TtmbEdicaoTop;
    tmbEdicaoTop1: TtmbEdicaoTop;
    ActionToolBar2: TActionToolBar;
    Panel2: TPanel;
    Label3: TLabel;
    Label6: TLabel;
    wwDBDateTimePicker3: TwwDBDateTimePicker;
    DBEdit2: TDBEdit;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    wwDBComboDlg1: TwwDBComboDlg;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBEdit11: TDBEdit;
    Label16: TLabel;
    wwDBComboDlg5: TwwDBComboDlg;
    DBEdit3: TDBEdit;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    DBRadioGroup2: TDBRadioGroup;
    DBEdit12: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit13: TDBEdit;
    Label7: TLabel;
    DBEdit14: TDBEdit;
    Label17: TLabel;
    DBEdit15: TDBEdit;
    actmngBancoHoras: TActionManager;
    actInserir: TAction;
    actGravar: TAction;
    actCancelar: TAction;
    actFechar: TAction;
    ImageList1: TImageList;
    CoolBar2: TCoolBar;
    ActionToolBar3: TActionToolBar;
    ActionToolBar4: TActionToolBar;
    SpeedButton1: TSpeedButton;
    Label4: TLabel;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    Label13: TLabel;
    DBCheckBox1: TDBCheckBox;
    Label14: TLabel;
    mktLancHorasRH: TMaskEdit;
    DBCheckBox2: TDBCheckBox;
    Label18: TLabel;
    DBEdit16: TDBEdit;
    Label19: TLabel;
    Label20: TLabel;
    DBEdit17: TDBEdit;
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
    procedure mktLancHorasRHExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBancoHora: TfrmBancoHora;

implementation

uses u_dmRD, FuncoesCliente, FuncoesDSI, u_dmGSI;

{$R *.dfm}

procedure TfrmBancoHora.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if not FinalFormulario(dmRD.cdsBancoHora,' do Banco de Horas') then
    Action := caNone
 else
    begin
     Action          := caFree;
     frmBancoHora      := Nil;
    end;
    Application.OnHint := nil;
end;

procedure TfrmBancoHora.wwDBComboDlg5CustomDlg(Sender: TObject);
begin
 dmRD.FiltroFuncionarioRDV( dmRD.cdsBancoHoraFUNCIONARIOID );
end;

procedure TfrmBancoHora.FormKeyPress(Sender: TObject; var Key: Char);
begin
 // Habilitar a propriedade KeyPreview do Form para funcionar o Enter como Tab
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;

procedure TfrmBancoHora.wwDBComboDlg1CustomDlg(Sender: TObject);
var iSql : String;
begin
 iSQL    := ' SELECT OPERACAOID, DESCRICAO,  FINALIDADE, OPERACAO' +
            '  FROM' +
            '  RD_OPERACAO' +
            ' WHERE' +
            '  FINALIDADE = ' + QuotedStr('H');

 CriaFormLookUp( dmRD.cdsOperacao.Name, iSql, dmRD.cdsBancoHoraOPERACAOID,'OPERACAOID','OPERACAOID' );
end;

procedure TfrmBancoHora.actInserirExecute(Sender: TObject);
var OSId, TipoOsDesp : String;
    FuncId : Integer;
begin
 mktLancHorasRH.Clear;
 TipoOsDesp := dmRD.cdsBancoHoraTIPODESPESAOS.AsString;
 OSId       := dmRD.cdsBancoHoraOSID.AsString;
 FuncId     := dmRD.cdsBancoHoraFUNCIONARIOID.AsInteger;

 dmRD.cdsBancoHora.Insert;
 dmRD.cdsBancoHoraTIPODESPESAOS.AsString := TipoOsDesp;
 dmRD.cdsBancoHoraOSID.AsString          := OSId;
 dmRD.cdsBancoHoraFUNCIONARIOID.Value    := FuncId;
 dmRD.cdsBancoHoraOPERACAOID.Clear;

 wwDBComboDlg1.SetFocus;
end;

procedure TfrmBancoHora.actGravarExecute(Sender: TObject);
begin
 if dmRD.cdsBancoHora.State in [dsInsert,dsEdit] then
    dmRD.cdsBancoHora.Post;
end;

procedure TfrmBancoHora.actCancelarExecute(Sender: TObject);
begin
 if dmRD.cdsBancoHora.State in [dsInsert,dsEdit] then
    dmRD.cdsBancoHora.Cancel;
end;

procedure TfrmBancoHora.actFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmBancoHora.DBEdit10Exit(Sender: TObject);
begin
 if MessageDlg('Deseja incluir novo Banco de Horas?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    actInserirExecute( Sender );
end;

procedure TfrmBancoHora.SpeedButton1Click(Sender: TObject);
begin
 dmRD.cdsBancoHoraOSID.Clear
end;

procedure TfrmBancoHora.mktLancHorasRHExit(Sender: TObject);
var Horas : Real;
begin
 Horas := StrToFloat( mktLancHorasRH.Text );
 if Frac( Horas ) > 0 then
    begin              
     dmRD.cdsBancoHoraDIFERENCAHORATRAB.AsString := FormatTime( HourToMinute( Horas ) );
     dmRD.cdsBancoHoraDIFERENCAMINTRAB.AsFloat   := HourToMinute( Horas ) ;
    end
 else
    begin
     dmRD.cdsBancoHoraDIFERENCAHORATRAB.AsFloat := FloatToTime( Horas/24 );
     dmRD.cdsBancoHoraDIFERENCAMINTRAB.AsFloat  := Horas/24;
    end;
end;

end.

