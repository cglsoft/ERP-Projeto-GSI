unit u_Entidade;

interface

uses
  SysUtils, Graphics, Forms, ComCtrls, tmbToolEdicaoTop, ToolWin,
  tmbToolEdicaoBottom, StdCtrls, DBCtrls, ExtCtrls, wwdbdatetimepicker,
  Buttons, Grids, Mask, Controls, Classes, DBClient, DB, ImgList, ActnList,
  XPStyleActnCtrls, ActnMan,  QRCtrls, ActnCtrls, DBGrids, wwdbedit, Wwdotdot;

type
  TfrmEntidade = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel4: TPanel;
    Label14: TLabel;
    DBEdit1: TDBEdit;
    Label16: TLabel;
    DBEdit3: TDBEdit;
    DBRadioGroup2: TDBRadioGroup;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    Label1: TLabel;
    DBEdit4: TDBEdit;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBMemo3: TDBMemo;
    TabSheet3: TTabSheet;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBMemo1: TDBMemo;
    GroupBox4: TGroupBox;
    Label22: TLabel;
    DBEdit8: TDBEdit;
    Label24: TLabel;
    DBEdit22: TDBEdit;
    Label26: TLabel;
    DBEdit24: TDBEdit;
    Label28: TLabel;
    DBEdit26: TDBEdit;
    Label29: TLabel;
    DBEdit27: TDBEdit;
    Label30: TLabel;
    DBEdit28: TDBEdit;
    Label31: TLabel;
    GroupBox5: TGroupBox;
    Label23: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    DBEdit13: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit25: TDBEdit;
    TabSheet5: TTabSheet;
    GroupBox7: TGroupBox;
    wwDBComboDlg1: TwwDBComboDlg;
    DBEdit32: TDBEdit;
    Label38: TLabel;
    Label39: TLabel;
    wwDBComboDlg2: TwwDBComboDlg;
    DBEdit35: TDBEdit;
    Label40: TLabel;
    wwDBComboDlg3: TwwDBComboDlg;
    DBEdit36: TDBEdit;
    GroupBox9: TGroupBox;
    DBMemo2: TDBMemo;
    wwDBComboDlg4: TwwDBComboDlg;
    wwDBComboDlg5: TwwDBComboDlg;
    TabSheet6: TTabSheet;
    PageControl3: TPageControl;
    TabSheet7: TTabSheet;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    PageControl2: TPageControl;
    TabSheet8: TTabSheet;
    GroupBox3: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    tmbEdicaoBottom1: TtmbEdicaoBottom;
    DBEdit2: TDBEdit;
    Label41: TLabel;
    Label42: TLabel;
    wwDBComboDlg6: TwwDBComboDlg;
    DBEdit9: TDBEdit;
    DBEdit37: TDBEdit;
    GroupBox6: TGroupBox;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    tbshtVisoesDepto: TTabSheet;
    PageControl4: TPageControl;
    TabSheet4: TTabSheet;
    Panel2: TPanel;
    sbTodosDepto: TSpeedButton;
    sbUmDepto: TSpeedButton;
    sbRetornaUmDepto: TSpeedButton;
    sbRetornarTodosDepto: TSpeedButton;
    PageControl5: TPageControl;
    TabSheet9: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox8: TGroupBox;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBMemo4: TDBMemo;
    wwDBComboDlg7: TwwDBComboDlg;
    GroupBox10: TGroupBox;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    Label43: TLabel;
    DBEdit38: TDBEdit;
    Label44: TLabel;
    DBEdit39: TDBEdit;
    Label3: TLabel;
    DBEdit10: TDBEdit;
    DBCheckBox3: TDBCheckBox;
    CoolBar1: TCoolBar;
    ActionToolBar1: TActionToolBar;
    tmbEdicaoTop2: TtmbEdicaoTop;
    actmngManutencao: TActionManager;
    actImpEtiqueta: TAction;
    ImageList1: TImageList;
    cdsEtiqueta: TClientDataSet;
    dsEtiqueta: TDataSource;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    Label56: TLabel;
    wwDBComboDlg8: TwwDBComboDlg;
    DBEdit49: TDBEdit;
    Label57: TLabel;
    DBEdit50: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure wwDBComboDlg4CustomDlg(Sender: TObject);
    procedure wwDBComboDlg5CustomDlg(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure wwDBComboDlg1CustomDlg(Sender: TObject);
    procedure wwDBComboDlg3CustomDlg(Sender: TObject);
    procedure wwDBComboDlg2CustomDlg(Sender: TObject);
    procedure wwDBComboDlg6CustomDlg(Sender: TObject);
    procedure sbTodosDeptoClick(Sender: TObject);
    procedure sbUmDeptoClick(Sender: TObject);
    procedure sbRetornaUmDeptoClick(Sender: TObject);
    procedure sbRetornarTodosDeptoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure wwDBComboDlg7CustomDlg(Sender: TObject);
    procedure actImpEtiquetaExecute(Sender: TObject);
    procedure wwDBComboDlg8CustomDlg(Sender: TObject);
  private
    { Private declarations }
    function ProcurarCategoria( Entidade, Categoria : String ) : Boolean;
    function ProcurarDepto( Entidade, Departamento : String ) : Boolean;
  public
    { Public declarations }
  end;
  const Sel_Etiqueta = ' SELECT' +
                       '  EF_ENTIDADE.NOME,' +
                       '  EF_ENTIDADE.ENDERECOCOB || '' - '' || TO_CHAR( EF_ENTIDADE.NUMEROCOB ) || '' - '' || EF_ENTIDADE.COMPLEMENTOCOB   AS ENDERECOCOB,' +
                       '  EF_ENTIDADE.CEPCOBID,' +
                       '  EF_ENTIDADE.CIDADECOB,' +
                       '  EF_ENTIDADE.SIGLAUFCOBID,' +
                       '  EF_ENTIDADE.INSCRESTADUAL,' +
                       '  EF_ENTIDADE.CPFCNPJ,' +
                       '  EF_ENTIDADE.ENTIDADEID AS NFSID,' +
                       '  EF_ENTIDADE.CONTATOCOB' +
                       '  FROM' +
                       '  EF_ENTIDADE ' +
                       ' WHERE' +
                       '  EF_ENTIDADE.ENTIDADEID = ';

var
  frmEntidade: TfrmEntidade;

implementation

uses FuncoesCliente, u_dmEF, DateUtils, u_Cep, u_dmCP, u_dmGSI, Math,
  u_CategoriaEntidade, u_RelEmissaoEtiqueta, u_dmRD;

{$R *.dfm}

function TfrmEntidade.ProcurarCategoria( Entidade, Categoria : String ) : Boolean;
var iSql : String;
    Cds  : TClientDataSet;
begin
 Cds    := nil;
 iSql   := 'SELECT * FROM EF_ENTIDADEGRUPO WHERE ENTIDADEID =' + Entidade + ' AND CATEGORIAID =' + Categoria;
 try
  ExecDynamicProvider( -1, iSQL, Cds );
  Result :=  Cds.IsEmpty;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

function TfrmEntidade.ProcurarDepto( Entidade, Departamento : String ) : Boolean;
var iSql : String;
    Cds  : TClientDataSet;
begin
 Cds  := nil;
 iSql := 'SELECT * FROM EF_ENTIDADEDEPTO WHERE ENTIDADEID =' + Entidade + ' AND DEPARTAMENTOID =' + Departamento;
 try
  ExecDynamicProvider( -1, iSQL, Cds );
  Result :=  Cds.IsEmpty;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TfrmEntidade.FormCreate(Sender: TObject);
begin
 if dmEF.cdsEntidade.State = dsInsert then
    begin
     Application.CreateForm( TfrmCategoriaEntidade, frmCategoriaEntidade );
     frmCategoriaEntidade.ShowModal;
    end;

 dmEF.cdsCategoria.Open;
 dmEF.cdsDepartamento.Open;
end;

procedure TfrmEntidade.actImpEtiquetaExecute(Sender: TObject);
var iSql : String;
 i : Integer;
begin
 cdsEtiqueta.Close;
 Application.CreateForm( TfrmRelEmissaoEtiqueta, frmRelEmissaoEtiqueta );
 try
  iSql := Sel_Etiqueta + dmEF.cdsEntidadeENTIDADEID.AsString;

  ExecDynamicProvider( -1, iSql, cdsEtiqueta );

  TNumericField(cdsEtiqueta.FieldByName('CEPCOBID')).DisplayFormat := '00000-000;1;';

  for i := 0 to frmRelEmissaoEtiqueta.ComponentCount - 1 do
  begin
   if ( frmRelEmissaoEtiqueta.Components[i] is TQRDBText ) then
      TQRDBText( frmRelEmissaoEtiqueta.Components[i] ).DataSet  := cdsEtiqueta;
  end;

  frmRelEmissaoEtiqueta.QrpEtiqueta.PrinterSettings.Copies := 1;

  frmRelEmissaoEtiqueta.QrpEtiqueta.DataSet := cdsEtiqueta;
  frmRelEmissaoEtiqueta.QrpEtiqueta.PreviewModal;
 finally
  FreeAndNil( frmRelEmissaoEtiqueta.QrpEtiqueta );
  FreeAndNil( frmRelEmissaoEtiqueta );
 end;
end;

procedure TfrmEntidade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 if not FinalFormulario(dmEF.cdsEntidade,' da Entidade ') then
    Action := caNone
 else
    begin
     Action := caFree;
     frmEntidade := NIL;
    end;
end;

procedure TfrmEntidade.FormKeyPress(Sender: TObject; var Key: Char);
begin
 // Habilitar a propriedade KeyPreview do Form para funcionar o Enter como Tab
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;

procedure TfrmEntidade.wwDBComboDlg4CustomDlg(Sender: TObject);
begin
 try
  frmCEP := TfrmCEP.Create( Self );
  frmCEP.ShowModal;

  if Assigned( frmCEP ) then
     if frmCEP.AtualizaCEP then
        if not dmCP.cdsPesquisa.IsEmpty then
           dmEF.cdsEntidadeCEPID.Value     := dmCP.cdsPesquisaCEPID.Value;
 finally
  FreeAndNil( frmCEP );
 end;
end;

procedure TfrmEntidade.wwDBComboDlg5CustomDlg(Sender: TObject);
begin
 try
  frmCEP := TfrmCEP.Create( Self );
  frmCEP.ShowModal;

  if Assigned( frmCEP ) then
     if frmCEP.AtualizaCEP then
        if not dmCP.cdsPesquisa.IsEmpty then
           dmEF.cdsEntidadeCEPCOBID.Value := dmCP.cdsPesquisaCEPID.Value;
 finally
  FreeAndNil( frmCEP );
 end;
end;

procedure TfrmEntidade.SpeedButton1Click(Sender: TObject);
begin
 with dmEF do
 begin
  cdsCategoria.First;
  while not cdsCategoria.Eof do
  begin
   if not ProcurarCategoria( cdsEntidadeENTIDADEID.AsString, cdsCategoriaCATEGORIAID.AsString ) then
      begin
       cdsEntidadeGrupo.Insert;
       cdsEntidadeGrupo.Post;
      end;
   cdsCategoria.Next;
  end;
 end;
end;

procedure TfrmEntidade.SpeedButton2Click(Sender: TObject);
begin
 with dmEF do
 begin
  if ProcurarCategoria( cdsEntidadeENTIDADEID.AsString, cdsCategoriaCATEGORIAID.AsString ) then
     begin
      cdsEntidadeGrupo.Insert;
      cdsEntidadeGrupo.Post;
     end;
 end;
end;

procedure TfrmEntidade.SpeedButton3Click(Sender: TObject);
begin
 dmEF.cdsEntidadeGrupo.Delete
end;

procedure TfrmEntidade.SpeedButton4Click(Sender: TObject);
begin
 with dmEF do
 begin
  cdsEntidadeGrupo.First;
  while not cdsEntidadeGrupo.Eof do
   cdsEntidadeGrupo.Delete;
 end;
end;

procedure TfrmEntidade.wwDBComboDlg1CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa( dmEF.dsCargo ,'CARGOID', dmEF.cdsEntidadeCARGOID.AsString );
 ExecLoockupRetorno( dmEF.cdsEntidade ,'CARGOID','CARGOID' );
end;

procedure TfrmEntidade.wwDBComboDlg3CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa( dmEF.dsDepartamento ,'DEPARTAMENTOID', dmEF.cdsEntidadeDEPARTAMENTOID.AsString );
 ExecLoockupRetorno( dmEF.cdsEntidade ,'DEPARTAMENTOID','DEPARTAMENTOID' );
end;

procedure TfrmEntidade.wwDBComboDlg2CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa( dmEF.dsFilial ,'FILIALID', dmEF.cdsEntidadeFILIALID.AsString );
 ExecLoockupRetorno( dmEF.cdsEntidade ,'FILIALID','FILIALID' );
end;

procedure TfrmEntidade.wwDBComboDlg6CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa( dmEF.dsNaturezaJuridica ,'NATUREZAJURIDICAID', dmEF.cdsEntidadeNATUREZAJURIDICAID.AsString );
 ExecLoockupRetorno( dmEF.cdsEntidade ,'NATUREZAJURIDICAID','NATUREZAJURIDICAID' );
end;

procedure TfrmEntidade.sbTodosDeptoClick(Sender: TObject);
begin
 with dmEF do
 begin
  cdsDepartamento.First;
  while not cdsDepartamento.Eof do
  begin
   if ProcurarDepto( cdsEntidadeENTIDADEID.AsString, cdsDepartamentoDEPARTAMENTOID.AsString ) then
      begin
       cdsEntidadeDepto.Insert;
       cdsEntidadeDepto.Post;
      end;
   cdsDepartamento.Next;
  end;
 end;

end;

procedure TfrmEntidade.sbUmDeptoClick(Sender: TObject);
begin
 with dmEF do
 begin
  if ProcurarDepto( cdsEntidadeENTIDADEID.AsString, cdsDepartamentoDEPARTAMENTOID.AsString ) then
     begin
      cdsEntidadeDepto.Insert;
      cdsEntidadeDepto.Post;
     end;
 end;
end;

procedure TfrmEntidade.sbRetornaUmDeptoClick(Sender: TObject);
begin
 dmEF.cdsEntidadeDepto.Delete
end;

procedure TfrmEntidade.sbRetornarTodosDeptoClick(Sender: TObject);
begin
 with dmEF do
 begin
  cdsEntidadeDepto.First;
  while not cdsEntidadeDepto.Eof do
   cdsEntidadeDepto.Delete;
 end;
end;

procedure TfrmEntidade.FormShow(Sender: TObject);
begin
 if CheckSenha(dmGsi.UsuarioAtivo,'Entidade','Visões dos Departamentos',False) then
    tbshtVisoesDepto.TabVisible := True
 else
    tbshtVisoesDepto.TabVisible := False;

end;

procedure TfrmEntidade.wwDBComboDlg7CustomDlg(Sender: TObject);
begin
 try
  frmCEP := TfrmCEP.Create( Self );
  frmCEP.ShowModal;

  if Assigned( frmCEP ) then
     if frmCEP.AtualizaCEP then
        if not dmCP.cdsPesquisa.IsEmpty then
           dmEF.cdsEntidadeCEPINSTID.Value := dmCP.cdsPesquisaCEPID.Value;
 finally
  FreeAndNil( frmCEP );
 end;

end;

procedure TfrmEntidade.wwDBComboDlg8CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa( dmRD.dsHorasCfgTrab,'HORASCFGTRABID', dmEF.cdsEntidadeHORASCFGTRABID.AsString );
 ExecLoockupRetorno( dmEF.cdsEntidade ,'HORASCFGTRABID','HORASCFGTRABID' );
end;


end.
