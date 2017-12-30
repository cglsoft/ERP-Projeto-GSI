unit u_PDS;

interface

uses
  Windows, Messages, SysUtils, Forms, Classes, ActnList, XPStyleActnCtrls, ActnMan,
  ImgList, Controls, tmbToolEdicaoTop, ActnCtrls, ToolWin, ComCtrls,
  tmbToolEdicaoBottom, StdCtrls, Buttons, DBCtrls, PnAjustaGrid,
  tmbToolEdicaoLista, Grids, DBGrids, ExtCtrls, wwdbdatetimepicker, Mask,
  wwdbedit, Wwdotdot, DB, DBClient, Dialogs;

type
  TfrmPDS = class(TForm)
    Splitter1: TSplitter;
    pgctrlPDS: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    Label13: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label42: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    wwDBComboDlg3: TwwDBComboDlg;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBMemo1: TDBMemo;
    wwDBComboDlg4: TwwDBComboDlg;
    GroupBox2: TGroupBox;
    Label11: TLabel;
    Label24: TLabel;
    Label33: TLabel;
    wwDBComboDlg2: TwwDBComboDlg;
    DBEdit12: TDBEdit;
    DBEdit30: TDBEdit;
    wwDBComboDlg6: TwwDBComboDlg;
    GroupBox3: TGroupBox;
    Label43: TLabel;
    Label44: TLabel;
    DBEdit20: TDBEdit;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    TabSheet3: TTabSheet;
    Splitter2: TSplitter;
    Panel1: TPanel;
    GroupBox12: TGroupBox;
    dbgrdItem: TDBGrid;
    GroupBox10: TGroupBox;
    dbgrdItemBar: TDBGrid;
    tmbEdicaoLista1: TtmbEdicaoLista;
    TabSheet7: TTabSheet;
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
    GroupBox9: TGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    DBEdit5: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    Panel8: TPanel;
    StatusBar: TStatusBar;
    Panel9: TPanel;
    tmbEdicaoBottom2: TtmbEdicaoBottom;
    Panel7: TPanel;
    Label9: TLabel;
    Label12: TLabel;
    Label34: TLabel;
    Label2: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    wwDBDateTimePicker4: TwwDBDateTimePicker;
    DBEdit8: TDBEdit;
    CoolBar1: TCoolBar;
    ActionToolBar1: TActionToolBar;
    tmbEdicaoTop2: TtmbEdicaoTop;
    ImageList1: TImageList;
    actmngManutencao: TActionManager;
    actExportar: TAction;
    Action1: TAction;
    Action2: TAction;
    DBRadioGroup1: TDBRadioGroup;
    Label55: TLabel;
    DBEdit47: TDBEdit;
    Label45: TLabel;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    Label46: TLabel;
    DBRadioGroup5: TDBRadioGroup;
    DBEdit19: TDBEdit;
    Label5: TLabel;
    DBEdit25: TDBEdit;
    Label14: TLabel;
    Label36: TLabel;
    Label41: TLabel;
    GroupBox4: TGroupBox;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label26: TLabel;
    Label37: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    GroupBox5: TGroupBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    tmbAjtgrdPDSItemBar: tPanel1;
    TabSheet2: TTabSheet;
    GroupBox6: TGroupBox;
    dbgrdServico: TDBGrid;
    tmbEdicaoLista3: TtmbEdicaoLista;
    GroupBox11: TGroupBox;
    TabSheet4: TTabSheet;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    DBEdit26: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    GroupBox13: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox14: TGroupBox;
    Label63: TLabel;
    wwDBComboDlg1: TwwDBComboDlg;
    DBEdit55: TDBEdit;
    Label47: TLabel;
    Label60: TLabel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    mktDtDuplicata: TDateTimePicker;
    tmbEdicaoLista4: TtmbEdicaoLista;
    tmbedtlstProduto: TtmbEdicaoLista;
    tmbAjtgrdPDSItem: tPanel1;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    DBMemo5: TDBMemo;
    Label61: TLabel;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    Label62: TLabel;
    Label64: TLabel;
    DBEdit53: TDBEdit;
    Label65: TLabel;
    DBEdit54: TDBEdit;
    Label66: TLabel;
    DBEdit56: TDBEdit;
    Label67: TLabel;
    DBEdit57: TDBEdit;
    DBEdit58: TDBEdit;
    Label68: TLabel;
    Label69: TLabel;
    DBEdit59: TDBEdit;
    TabSheet5: TTabSheet;
    GroupBox16: TGroupBox;
    DBMemo6: TDBMemo;
    Label70: TLabel;
    DBEdit60: TDBEdit;
    DBEdit61: TDBEdit;
    Label71: TLabel;
    Label72: TLabel;
    DBEdit62: TDBEdit;
    Label73: TLabel;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    DBEdit63: TDBEdit;
    Label74: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure wwDBComboDlg3CustomDlg(Sender: TObject);
    procedure wwDBComboDlg4CustomDlg(Sender: TObject);
    procedure wwDBComboDlg2CustomDlg(Sender: TObject);
    procedure wwDBComboDlg6CustomDlg(Sender: TObject);
    procedure wwDBComboDlg5CustomDlg(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure pgctrlPDSChange(Sender: TObject);
    procedure wwDBComboDlg1CustomDlg(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure actExportarExecute(Sender: TObject);
    procedure wwDBComboDlg2Exit(Sender: TObject);
  private
    { Private declarations }
    procedure StatusHint(Sender : TObject);
  public
    { Public declarations }
  end;

var
  frmPDS: TfrmPDS;

implementation

uses u_dmEF, FuncoesCliente, u_PadraoEdicao, u_Cep, u_dmCP, u_OS,
  u_RelPreNota, u_ParPreNota, u_VisualEmpenho, u_PdsItem, u_DevolucaoNFE;

{$R *.dfm}

procedure TfrmPDS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if not FinalFormulario(dmEF.cdsPds,' do Pedido de Saída ') then
    Action := caNone
 else
    begin
     Action := caFree;
     frmPDS := Nil;
     Application.OnHint := nil;
    end;
end;

procedure TfrmPDS.FormCreate(Sender: TObject);
begin
 Application.OnHint  := StatusHint;
 mktDtDuplicata.Date := Date
end;

procedure TfrmPDS.StatusHint(Sender: TObject);
begin
 if StatusBar <> nil then
    StatusBar.Panels.Items[2].text := GetLongHint(Application.Hint);
end;

procedure TfrmPDS.FormShow(Sender: TObject);
begin
 StatusBar.Panels.Items[0].Text := 'Tabela: '+ Copy( dmEF.cdsPds.Name, (Pos('cds', dmEF.cdsPds.Name)+3), Length(dmEF.cdsPds.Name));
 Case dmEF.dsPds.State of
  dsEdit  : StatusBar.Panels.Items[1].Text := 'Status: Alteração';
  dsInsert: StatusBar.Panels.Items[1].Text := 'Status: Inserção';
 end;
 tmbedtlstProduto.TtmbClassOwnerEspec := TfrmPDSItem;
 tmbedtlstProduto.TtmbFormOwnerEspec  := frmPDSItem;
 tmbedtlstProduto.TtmbClientDataSet   := dmEF.cdsPdsItem;
 tmbedtlstProduto.TtmbDataSource      := dmEF.dsPdsItem;
 {}
 tmbEdicaoLista3.TtmbClassOwnerEspec := TFrmPadraoEdicao;
 tmbEdicaoLista3.TtmbFormOwnerEspec  := FrmPadraoEdicao;
 tmbEdicaoLista3.TtmbClientDataSet   := dmEF.cdsPdsServico;
 tmbEdicaoLista3.TtmbDataSource      := dmEF.dsPdsServico;
 {}
 tmbEdicaoLista4.TtmbClassOwnerEspec := TFrmPadraoEdicao;
 tmbEdicaoLista4.TtmbFormOwnerEspec  := FrmPadraoEdicao;
 tmbEdicaoLista4.TtmbClientDataSet   := dmEF.cdsPdsParcela;
 tmbEdicaoLista4.TtmbDataSource      := dmEF.dsPdsParcela;
 {}
 tmbEdicaoLista1.TtmbClassOwnerEspec := TFrmPadraoEdicao;
 tmbEdicaoLista1.TtmbFormOwnerEspec  := FrmPadraoEdicao;
 tmbEdicaoLista1.TtmbClientDataSet   := dmEF.cdsPdsItemBar;
 tmbEdicaoLista1.TtmbDataSource      := dmEF.dsPdsItemBar;

 GroupBox1.SetFocus;
end;

procedure TfrmPDS.wwDBComboDlg3CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmEF.dsEntidade, 'ENTIDADEID', wwDBComboDlg3.Text, 'Destinatário' );
 ExecLoockupRetorno(dmEF.cdsPds, 'ENTIDADEID', 'ENTIDADEID');
end;

procedure TfrmPDS.wwDBComboDlg4CustomDlg(Sender: TObject);
begin
 try
  frmCEP := TfrmCEP.Create( Self );
  frmCEP.ShowModal;

  if Assigned( frmCEP ) then
     if frmCEP.AtualizaCEP then
        if not dmCP.cdsPesquisa.IsEmpty then
           dmEF.cdsPDSCEPID.Value := dmCP.cdsPesquisaCEPID.Value;
 finally
  FreeAndNil( frmCEP );
 end;
end;

procedure TfrmPDS.wwDBComboDlg2CustomDlg(Sender: TObject);
begin
 CriaFormLookUp( dmEF.cdsNaturezaOp.Name, dmEF.ValidaCFOP, dmEF.cdsPdsNATUREZAOPID,'NATUREZAOPID', 'NATUREZAOPID' );
 dmEF.cdsEmpresa.Close;
end;

procedure TfrmPDS.wwDBComboDlg6CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmEF.dsObservacao, 'OBSERVACAOID', wwDBComboDlg6.Text, 'Observação ID' );
 ExecLoockupRetorno(dmEF.cdsPds, 'OBSERVACAOID', 'OBSERVACAOID');
end;

procedure TfrmPDS.wwDBComboDlg5CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmEF.dsEntidade, 'ENTIDADEID', wwDBComboDlg5.text, 'Dados do Destinatário' );
 ExecLoockupRetorno(dmEF.cdsPds, 'TRANSPORTADORID', 'ENTIDADEID');
end;

procedure TfrmPDS.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;

procedure TfrmPDS.pgctrlPDSChange(Sender: TObject);
begin
 if pgctrlPDS.ActivePageIndex = 1 then
    begin
     tmbAjtgrdPDSItem.tmbAjusta    := True;
     tmbAjtgrdPDSItemBar.tmbAjusta := True;
    end;
end;

procedure TfrmPDS.wwDBComboDlg1CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmEF.dsCondPagto, 'CONDPAGTOID', dmEF.cdsPdsCONDPAGTOID.AsString, dmEF.cdsPdsCONDPAGTOID.AsString );
 ExecLoockupRetorno(dmEF.cdsPds, 'CONDPAGTOID', 'CONDPAGTOID');
end;

procedure TfrmPDS.BitBtn4Click(Sender: TObject);
begin
 dmEF.cdsPdsParcela.First;
 while not dmEF.cdsPdsParcela.Eof do  dmEF.cdsPdsParcela.Delete;
end;

procedure TfrmPDS.BitBtn3Click(Sender: TObject);
begin
 dmEF.GerarDuplicata( mktDtDuplicata.Date );
end;

procedure TfrmPDS.Action1Execute(Sender: TObject);
begin
 if not Assigned( frmParPreNota ) then
    frmParPreNota := TfrmParPreNota.Create(nil);
 frmParPreNota.ShowModal;
end;

procedure TfrmPDS.Action2Execute(Sender: TObject);
var cdsNat : TClientDataSet;
    iSql : String;
begin
 cdsNat := Nil;
 try
  try // Except
   iSql   := 'SELECT NATUREZAOPID,  UTILIZAEMPENHO ' +
             ' FROM EF_NATUREZAOP ' +
             ' WHERE NATUREZAOPID = ' + dmEF.cdsPdsNATUREZAOPID.AsString;

   ExecDynamicProvider( -1, iSql, cdsNat );

   if cdsNat.IsEmpty then
      raise Exception.Create('Natureza de operação não localizada');

   if cdsNat.FieldByName('UTILIZAEMPENHO').AsInteger = 0 then
      raise Exception.Create( 'Natureza de Operação não permite a utilização de peças em empenho. Rotina de empenho cancelada' );

   if not Assigned( frmVisualEmpenho ) then
      frmVisualEmpenho := TfrmVisualEmpenho.Create( Self );

   frmVisualEmpenho.ShowModal;

  except
  on E: Exception do
  MessageDlg( E.Message  , mtInformation,[mbOk], 0);
  end;

  cdsNat.Close;
 finally
  FreeAndNil( cdsNat );
 end;
end;

procedure TfrmPDS.actExportarExecute(Sender: TObject);
begin
 Application.CreateForm( TfrmDevolucaoNFE, frmDevolucaoNFE );
 frmDevolucaoNFE.ShowModal;
end;

procedure TfrmPDS.wwDBComboDlg2Exit(Sender: TObject);
var cdsNat  : TClientDataSet;
    iSQLNat : String;
begin
 if ( TwwDBComboDlg( Sender ).Text <> '' ) and ( TwwDBComboDlg( Sender ).Text <> ' ' ) then
    begin
     CdsNat  := nil;
     iSQLNat := dmEF.ValidaCFOP +
                ' AND EF_NATUREZAOP.NATUREZAOPID = '+ dmEF.cdsPdsNATUREZAOPID.AsString;

     try
      ExecDynamicProvider( -1,iSQLNat,cdsNat );

      if ( CdsNat.IsEmpty ) and ( dmEF.cdsPdsTIPONOTA.Value = 'A' ) then
         begin
          dmEF.cdsPdsNATUREZAOPID.Clear;
          raise exception.Create('CFOP Inválido para o Estado: '+ dmEF.cdsPdsSIGLAUFID.AsString );
         end;

      cdsNat.Close;
     finally
       FreeAndNil( cdsNat );
     end;
    end;
end;

end.
