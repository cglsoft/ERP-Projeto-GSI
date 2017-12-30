unit u_DeclaracaoDadosPDE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, wwriched, ExtCtrls, DBCtrls, wwdbedit,
  Wwdotdot, Mask, ActnList, XPStyleActnCtrls, ActnMan, ImgList,
  tmbToolEdicaoTop, ActnCtrls, ToolWin, fcStatusBar, wwdbdatetimepicker;

type
  TfrmDeclaracaoDadosPDE = class(TForm)
    GroupBox7: TGroupBox;
    Label30: TLabel;
    Label29: TLabel;
    Label28: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label27: TLabel;
    DBEdit31: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit32: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBEdit36: TDBEdit;
    DBEdit35: TDBEdit;
    GroupBox8: TGroupBox;
    Label25: TLabel;
    Label35: TLabel;
    DBEdit42: TDBEdit;
    wwDBComboDlg5: TwwDBComboDlg;
    DBEdit23: TDBEdit;
    DBRadioGroup4: TDBRadioGroup;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    wwDBRichEdit2: TwwDBRichEdit;
    wwDBComboDlg1: TwwDBComboDlg;
    ImageList1: TImageList;
    actmngManutencao: TActionManager;
    actPDE: TAction;
    actFechar: TAction;
    fcStatusBar1: TfcStatusBar;
    CoolBar1: TCoolBar;
    ActionToolBar1: TActionToolBar;
    Panel7: TPanel;
    Label9: TLabel;
    Label12: TLabel;
    Label34: TLabel;
    Label36: TLabel;
    Label2: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    wwDBDateTimePicker4: TwwDBDateTimePicker;
    wwDBDateTimePicker5: TwwDBDateTimePicker;
    DBEdit8: TDBEdit;
    DBRadioGroup5: TDBRadioGroup;
    GroupBox5: TGroupBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    actExcluir: TAction;
    procedure actFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actExcluirExecute(Sender: TObject);
    procedure actPDEExecute(Sender: TObject);
    procedure wwDBComboDlg1CustomDlg(Sender: TObject);
    procedure wwDBComboDlg5CustomDlg(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDeclaracaoDadosPDE: TfrmDeclaracaoDadosPDE;

implementation

uses u_dmEF, FuncoesCliente;

{$R *.dfm}

procedure TfrmDeclaracaoDadosPDE.actFecharExecute(Sender: TObject);
begin
 Close;
end;

procedure TfrmDeclaracaoDadosPDE.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 frmDeclaracaoDadosPDE := Nil;
end;

procedure TfrmDeclaracaoDadosPDE.actExcluirExecute(Sender: TObject);
begin
 MessageDlg( 'Opção temporariamente desabilitada', mtInformation, [mbOK], 0 );
 // dmEF.cdsPde.Delete;
end;

procedure TfrmDeclaracaoDadosPDE.actPDEExecute(Sender: TObject);
begin
 Close
end;

procedure TfrmDeclaracaoDadosPDE.wwDBComboDlg1CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmEF.dsObservacao, 'OBSERVACAOID', dmEF.cdsPdeOBSERVACAOID.AsString, 'Observação ID' );
 ExecLoockupRetorno(dmEF.cdsPde, 'OBSERVACAOID', 'OBSERVACAOID');
end;

procedure TfrmDeclaracaoDadosPDE.wwDBComboDlg5CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmEF.dsEntidade, 'ENTIDADEID', dmEF.cdsPdeTRANSPORTADORID.AsString, 'Transportador' );
 ExecLoockupRetorno(dmEF.cdsPde, 'TRANSPORTADORID', 'ENTIDADEID');
end;

procedure TfrmDeclaracaoDadosPDE.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;

end.
