unit u_Aparelho;

interface

uses
  SysUtils, Forms, DB, DBClient, ImgList, Controls, Classes, ActnList,
  XPStyleActnCtrls, ActnMan, tmbToolEdicaoTop, ActnCtrls, ToolWin, ComCtrls,
  tmbToolEdicaoBottom, fcStatusBar, Grids, DBGrids, ExtCtrls,
  tmbToolEdicaoLista, wwdbdatetimepicker, StdCtrls, DBCtrls, Mask, wwdbedit,
  Wwdotdot, QuickRpt, QRCtrls ;


type
  TfrmAparelho = class(TForm)
    PageControl1: TPageControl;
    fcStatusBar1: TfcStatusBar;
    Panel4: TPanel;
    Label14: TLabel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Panel1: TPanel;
    tmbEdicaoBottom1: TtmbEdicaoBottom;
    Label3: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label37: TLabel;
    DBEdit15: TDBEdit;
    DBEdit11: TDBEdit;
    wwDBComboDlg5: TwwDBComboDlg;
    wwDBComboDlg11: TwwDBComboDlg;
    DBEdit10: TDBEdit;
    Label10: TLabel;
    tbshtDadosInst: TTabSheet;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label20: TLabel;
    Label5: TLabel;
    wwDBComboDlg4: TwwDBComboDlg;
    DBEdit6: TDBEdit;
    DBEdit9: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit20: TDBEdit;
    GroupBox2: TGroupBox;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label24: TLabel;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    wwDBComboDlg1: TwwDBComboDlg;
    wwDBComboDlg2: TwwDBComboDlg;
    tbshtTubos: TTabSheet;
    tbshtTuboOff: TTabSheet;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    wwDBDateTimePicker3: TwwDBDateTimePicker;
    wwDBDateTimePicker4: TwwDBDateTimePicker;
    TmbEdtListTubo: TtmbEdicaoLista;
    TmbEdtListTuboInativo: TtmbEdicaoLista;
    DBGrid2: TDBGrid;
    DBGrid1: TDBGrid;
    Label25: TLabel;
    DBEdit2: TDBEdit;
    Label26: TLabel;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    CoolBar1: TCoolBar;
    ActionToolBar1: TActionToolBar;
    tmbEdicaoTop2: TtmbEdicaoTop;
    actmngManutencao: TActionManager;
    actImpEtiqueta: TAction;
    ImageList1: TImageList;
    TabSheet4: TTabSheet;
    GroupBox4: TGroupBox;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    wwDBComboDlg3: TwwDBComboDlg;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBMemo3: TDBMemo;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    GroupBox5: TGroupBox;
    Label36: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    Label40: TLabel;
    DBEdit31: TDBEdit;
    Label41: TLabel;
    DBEdit32: TDBEdit;
    TabSheet1: TTabSheet;
    GroupBox3: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    DBEdit12: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBMemo2: TDBMemo;
    DBCheckBox1: TDBCheckBox;
    procedure wwDBComboDlg4CustomDlg(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure wwDBComboDlg1CustomDlg(Sender: TObject);
    procedure wwDBComboDlg2CustomDlg(Sender: TObject);
    procedure wwDBComboDlg5CustomDlg(Sender: TObject);
    procedure wwDBComboDlg11CustomDlg(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure wwDBDateTimePicker1Click(Sender: TObject);
    procedure wwDBDateTimePicker3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure actImpEtiquetaExecute(Sender: TObject);
  private
    { Private declarations }
    procedure SetDataSetEdicaoLista;
  public
    { Public declarations }
  end;

var
  frmAparelho: TfrmAparelho;

implementation

uses FuncoesCliente, u_Cep, u_dmGSI, u_dmOs, u_dmPP, u_dmCP, u_dmEF, u_PadraoEdicao,
  u_RelEtiquetaEquip;

{$R *.dfm}

procedure TfrmAparelho.wwDBComboDlg4CustomDlg(Sender: TObject);
begin
 frmCEP := TfrmCEP.Create( Self );
 frmCEP.ShowModal;

 try
  if Assigned( frmCEP ) then
     if frmCEP.AtualizaCEP then
        if not dmCP.cdsPesquisa.IsEmpty then
           dmOS.cdsAparelhoCEPID.Value := dmCP.cdsPesquisaCEPID.Value;
 finally
  FreeAndNil( frmCEP );
 end;
end;

procedure TfrmAparelho.FormKeyPress(Sender: TObject; var Key: Char);
begin
 // Habilitar a propriedade KeyPreview do Form para funcionar o Enter como Tab
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;

procedure TfrmAparelho.wwDBComboDlg1CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa( dmPP.dsCatalogo,'MODELOID', wwDBComboDlg1.Text );
 ExecLoockupRetorno( dmOs.cdsAparelho,'MODELOID','MODELOID' );
end;

procedure TfrmAparelho.wwDBComboDlg2CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa( dmPP.dsCatalogo,'MODELOID', wwDBComboDlg2.Text );
 ExecLoockupRetorno( dmOs.cdsAparelho,'MODELOAPARELHOID','MODELOID' );
end;

procedure TfrmAparelho.wwDBComboDlg5CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa( dmEF.dsEntidade,'ENTIDADEID', dmOs.cdsAparelhoCLIENTEID.AsString );
 ExecLoockupRetorno( dmOs.cdsAparelho,'CLIENTEID','ENTIDADEID' );
end;

procedure TfrmAparelho.wwDBComboDlg11CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa( dmEF.dsEntidade,'ENTIDADEID', dmOs.cdsAparelhoCLIENTEANTERIORID.AsString );
 ExecLoockupRetorno( dmOs.cdsAparelho,'CLIENTEANTERIORID','ENTIDADEID' );
end;

procedure TfrmAparelho.actImpEtiquetaExecute(Sender: TObject);
begin
 dmOS.cdsAparelho.Last;
 Application.CreateForm( TfrmRelEtiquetaEquip, frmRelEtiquetaEquip );
 try
  frmRelEtiquetaEquip.QrpEtiqueta.PrinterSettings.Copies := 1;
  frmRelEtiquetaEquip.QrpEtiqueta.PreviewModal;
 finally
  FreeAndNil( frmRelEtiquetaEquip.QrpEtiqueta );
  FreeAndNil( frmRelEtiquetaEquip );
 end;
end;

procedure TfrmAparelho.BitBtn1Click(Sender: TObject);
begin
  dmOs.cdsTubo.Insert;
end;

procedure TfrmAparelho.wwDBDateTimePicker1Click(Sender: TObject);
begin
 dmOs.cdsAparelhoDATAGARANTIA.AsDateTime := dmOs.cdsAparelhoDATAINSTALACAO.AsDateTime + 365;
end;

procedure TfrmAparelho.wwDBDateTimePicker3Click(Sender: TObject);
begin
 dmOs.cdsAparelhoDATACONTGARANTIAFIM.AsDateTime := dmOs.cdsAparelhoDATACONTGARANTIAINI.AsDateTime + 365;
end;

procedure TfrmAparelho.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 if not FinalFormulario(dmOs.cdsAparelho,' do Aparelho?') then
    Action := caNone
 else
    begin
     Action := caFree;
     frmAparelho  := Nil;
    end;
end;

procedure TfrmAparelho.SetDataSetEdicaoLista;
begin
 TmbEdtListTubo.TtmbClassOwnerEspec := TfrmPadraoEdicao;
 TmbEdtListTubo.TtmbFormOwnerEspec  := frmPadraoEdicao;
 TmbEdtListTuboInativo.TtmbClassOwnerEspec := TfrmPadraoEdicao;
 TmbEdtListTuboInativo.TtmbFormOwnerEspec  := frmPadraoEdicao; 
end;

procedure TfrmAparelho.FormCreate(Sender: TObject);
begin
 SetDataSetEdicaoLista;

 if CheckSenha(dmGsi.UsuarioAtivo,'Aparelho','Edição dos dados de instalação do aparelho',False) then
    begin
     tbshtDadosInst.Enabled := True;
   // tbshtTubos.Enabled     := True;
   // tbshtTuboOff.Enabled   := True;
    end
 else
    begin
     tbshtDadosInst.Enabled := False;
   // tbshtTubos.Enabled     := False;
   // tbshtTuboOff.Enabled   := False;
    end;


 if dmOS.cdsAparelho.State <> dsInsert then
    begin
     if CheckSenha(dmGsi.UsuarioAtivo,'Aparelho','Edição dados de garantia',False) then
        wwDBDateTimePicker2.Enabled := True;
    end
 else
    wwDBDateTimePicker2.Enabled := True;
end;

end.
