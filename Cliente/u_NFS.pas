unit u_NFS;

interface

uses
  Windows, Messages, Forms, Classes, ActnList, XPStyleActnCtrls, ActnMan,
  ImgList, Controls, tmbToolEdicaoTop, ActnCtrls, ToolWin, ComCtrls,
  tmbToolEdicaoBottom, StdCtrls, DBCtrls, PnAjustaGrid, tmbToolEdicaoLista,
  Grids, DBGrids, ExtCtrls, wwdbedit, Wwdotdot, wwdbdatetimepicker, Mask,
  DBClient, SysUtils, DB, Dialogs, Variants;

type
  TfrmNFS = class(TForm)
    Panel1: TPanel;
    Label9: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    pgctrlNFS: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    Label40: TLabel;
    Label42: TLabel;
    Label48: TLabel;
    Label50: TLabel;
    Label49: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label39: TLabel;
    wwDBComboDlg3: TwwDBComboDlg;
    DBEdit9: TDBEdit;
    wwDBComboDlg4: TwwDBComboDlg;
    DBMemo1: TDBMemo;
    DBEdit18: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit11: TDBEdit;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    GroupBox12: TGroupBox;
    dbgrdNFSItem: TDBGrid;
    tmbEdicaoLista2: TtmbEdicaoLista;
    TabSheet3: TTabSheet;
    GroupBox9: TGroupBox;
    Label2: TLabel;
    Label17: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    DBEdit19: TDBEdit;
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
    StatusBar: TStatusBar;
    TabSheet4: TTabSheet;
    Panel6: TPanel;
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
    Label41: TLabel;
    Label43: TLabel;
    DBEdit42: TDBEdit;
    wwDBComboDlg5: TwwDBComboDlg;
    DBEdit23: TDBEdit;
    DBRadioGroup4: TDBRadioGroup;
    Panel7: TPanel;
    tmbEdicaoBottom1: TtmbEdicaoBottom;
    Button1: TButton;
    TabSheet5: TTabSheet;
    ckCancelada: TDBCheckBox;
    GroupBox6: TGroupBox;
    Label6: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    DBEdit16: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    wwDBDateTimePicker4: TwwDBDateTimePicker;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    Label60: TLabel;
    DBEdit2: TDBEdit;
    Label61: TLabel;
    DBEdit3: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBEdit53: TDBEdit;
    Label62: TLabel;
    DBCheckBox2: TDBCheckBox;
    tmbajtgrdNfsItem: tPanel1;
    GroupBox14: TGroupBox;
    Label63: TLabel;
    Label15: TLabel;
    DBMemo3: TDBMemo;
    wwDBComboDlg7: TwwDBComboDlg;
    DBEdit55: TDBEdit;
    GroupBox13: TGroupBox;
    DBGrid1: TDBGrid;
    tmbEdicaoLista4: TtmbEdicaoLista;
    GroupBox4: TGroupBox;
    dbgrdServico: TDBGrid;
    tmbEdicaoLista3: TtmbEdicaoLista;
    GroupBox11: TGroupBox;
    Label56: TLabel;
    Label13: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBMemo2: TDBMemo;
    DBEdit7: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit8: TDBEdit;
    CoolBar1: TCoolBar;
    ActionToolBar1: TActionToolBar;
    tmbEdicaoTop2: TtmbEdicaoTop;
    tmbEdicaoTop1: TtmbEdicaoTop;
    ActionToolBar2: TActionToolBar;
    ImageList1: TImageList;
    actmngManutencao: TActionManager;
    actRelatorio: TAction;
    PageControl1: TPageControl;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    GroupBox2: TGroupBox;
    Label8: TLabel;
    Label16: TLabel;
    DBEdit6: TDBEdit;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    DBRadioGroup2: TDBRadioGroup;
    GroupBox3: TGroupBox;
    Label11: TLabel;
    Label24: TLabel;
    wwDBComboDlg2: TwwDBComboDlg;
    DBEdit12: TDBEdit;
    DBEdit30: TDBEdit;
    GroupBox5: TGroupBox;
    Label33: TLabel;
    wwDBComboDlg6: TwwDBComboDlg;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit10: TDBEdit;
    DBEdit25: TDBEdit;
    Label44: TLabel;
    Label45: TLabel;
    DBMemo4: TDBMemo;
    Action1: TAction;
    Label46: TLabel;
    DBEdit17: TDBEdit;
    Label47: TLabel;
    DBEdit22: TDBEdit;
    Label55: TLabel;
    DBEdit26: TDBEdit;
    Label64: TLabel;
    DBEdit47: TDBEdit;
    DBEdit54: TDBEdit;
    Label65: TLabel;
    Label66: TLabel;
    DBEdit56: TDBEdit;
    Label67: TLabel;
    DBEdit57: TDBEdit;
    Label68: TLabel;
    DBEdit58: TDBEdit;
    TabSheet81: TTabSheet;
    GroupBox15: TGroupBox;
    DBMemo5: TDBMemo;
    Label69: TLabel;
    DBEdit59: TDBEdit;
    DBEdit60: TDBEdit;
    Label70: TLabel;
    Label71: TLabel;
    DBEdit61: TDBEdit;
    Label72: TLabel;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    Label73: TLabel;
    Label74: TLabel;
    DBEdit64: TDBEdit;
    Label75: TLabel;
    DBEdit65: TDBEdit;
    Label76: TLabel;
    wwDBDateTimePicker3: TwwDBDateTimePicker;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBComboDlg3CustomDlg(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure wwDBComboDlg4CustomDlg(Sender: TObject);
    procedure wwDBComboDlg6CustomDlg(Sender: TObject);
    procedure pgctrlNFSChange(Sender: TObject);
    procedure actRelatorioExecute(Sender: TObject);
    procedure wwDBComboDlg2CustomDlg(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
  private
    { Private declarations }
    procedure StatusHint(Sender : TObject);
  public
    { Public declarations }
  end;

var
  frmNFS: TfrmNFS;

implementation

uses u_dmEF, u_PadraoEdicao, FuncoesCliente, FuncoesDSI, u_RelNotaMatrizSaida,
  u_Cep, u_dmCP, QRCtrls, u_RelNotaServico, u_RelNotaServicoFilial, u_RelDocInterno;

{$R *.dfm}

procedure TfrmNFS.FormCreate(Sender: TObject);
begin
 Application.OnHint := StatusHint;
end;

procedure TfrmNFS.FormShow(Sender: TObject);
begin
 StatusBar.Panels.Items[0].Text                        := 'Tabela: '+ Copy( dmEF.cdsNFS.Name, (Pos('cds', dmEF.cdsNFS.Name)+3), Length(dmEF.cdsNFS.Name));
 TtmbEdicaoLista( tmbEdicaoLista2).TtmbClassOwnerEspec := TFrmPadraoEdicao;
 TtmbEdicaoLista( tmbEdicaoLista2).TtmbFormOwnerEspec  := FrmPadraoEdicao;
 TmbEdicaoLista2.TtmbClientDataSet                     := dmEF.cdsNfsItem;
 TmbEdicaoLista2.TtmbDataSource                        := dmEF.dsNfsItem;
 TtmbEdicaoLista( tmbEdicaoLista3).TtmbClassOwnerEspec := TFrmPadraoEdicao;
 TtmbEdicaoLista( tmbEdicaoLista3).TtmbFormOwnerEspec  := FrmPadraoEdicao;
 TmbEdicaoLista3.TtmbClientDataSet                     := dmEF.cdsNfsServico;
 TmbEdicaoLista3.TtmbDataSource                        := dmEF.dsNfsServico;
 TtmbEdicaoLista( tmbEdicaoLista4).TtmbClassOwnerEspec := TFrmPadraoEdicao;
 TtmbEdicaoLista( tmbEdicaoLista4).TtmbFormOwnerEspec  := FrmPadraoEdicao;
 TmbEdicaoLista4.TtmbClientDataSet                     := dmEF.cdsNfsParcela;
 TmbEdicaoLista4.TtmbDataSource                        := dmEF.dsNfsParcela;
 dmEF.cdsPdsItem.Open;
 dmEF.cdsPdsServico.Open;

 Case dmEF.dsNFS.State of
  dsEdit  : StatusBar.Panels.Items[1].Text := 'Status: Alteração';
  dsInsert: StatusBar.Panels.Items[1].Text := 'Status: Inserção';
 end;
end;

procedure TfrmNFS.StatusHint(Sender: TObject);
begin
 if StatusBar <> nil then
    StatusBar.Panels.Items[2].text := GetLongHint(Application.Hint);
end;

procedure TfrmNFS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if not FinalFormulario(dmEF.cdsNFS, ' Nota Fiscal de Saída ') then
    Action := caNone
 else
    begin
     Action   := caFree;
     frmNFS   := Nil;
    end;
    Application.OnHint := nil;
end;

procedure TfrmNFS.wwDBComboDlg3CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmEF.dsEntidade, 'ENTIDADEID', wwDBComboDlg3.Text, 'Destinatário' );
 ExecLoockupRetorno(dmEF.cdsNfs, 'ENTIDADEID', 'ENTIDADEID');
end;

procedure TfrmNFS.FormKeyPress(Sender: TObject; var Key: Char);
begin
{ENTER}
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;

procedure TfrmNFS.wwDBComboDlg4CustomDlg(Sender: TObject);
begin
 try
  frmCEP := TfrmCEP.Create( Self );
  frmCEP.ShowModal;
  if Assigned( frmCEP ) then
     if frmCEP.AtualizaCEP then
        if not dmCP.cdsPesquisa.IsEmpty then
           dmEF.cdsNFSCEPID.Value := dmCP.cdsPesquisaCEPID.Value;
 finally
  FreeAndNil( frmCEP );
 end;
end;

procedure TfrmNFS.wwDBComboDlg6CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmEF.dsObservacao, 'OBSERVACAOID', wwDBComboDlg6.Text, 'Observação ID' );
 ExecLoockupRetorno(dmEF.cdsNfs, 'OBSERVACAOID', 'OBSERVACAOID');
end;

procedure TfrmNFS.pgctrlNFSChange(Sender: TObject);
begin
 case pgctrlNFS.ActivePageIndex of
 1 : tmbajtgrdNfsItem.tmbAjusta := True;
 end;
end;

procedure TfrmNFS.Action1Execute(Sender: TObject);
begin
//  cancelar nota
end;

procedure TfrmNFS.actRelatorioExecute(Sender: TObject);
var  iSql : String;
     cds  : TClientDataSet;
begin
 if MessageDlg( 'Confirma a impressão da Nota Fiscal de Saída? ', mtConfirmation, [mbYes,mbNo],0) = mrNo then
    exit;

 try
  iSql := 'SELECT EF_NATUREZAOP.DOCINTERNO '+
          '  FROM EF_NATUREZAOP'+
          ' WHERE EF_NATUREZAOP.NATUREZAOPID = '+ dmEF.cdsNfsNATUREZAOPID.AsString;

  ExecDynamicProvider( -1,iSql,cds );

  if cds.FieldByName('DOCINTERNO').AsInteger = 0 then
     begin
      if      dmEF.cdsNfsEMPRESAID.AsInteger = 11 then
              Application.CreateForm( TfrmRelNotaServicoFilial, frmRelNotaServicoFilial )
      else if ( dmEF.cdsNfsEMPRESAID.AsInteger in [6..10] ) or ( ( dmEF.cdsNfsEMPRESAID.AsInteger = 12 ) and  ( dmEF.cdsNfsVLRTOTALSERVICO.Value > 0 ) ) then
              Application.CreateForm( TfrmRelNotaServico, frmRelNotaServico )
      else
              Application.CreateForm( TfrmRelNotaMatrizSaida, frmRelNotaMatrizSaida );
     end
  else
     begin
      Application.CreateForm( TfrmRelDocInterno, frmRelDocInterno );
      frmRelDocInterno.Relat := 1; // Documento de entrada
     end;


  // Posicionar na Nota fiscal expecífica;
  iSQL := 'EF_NFS.EMPRESAID = ' + dmEF.cdsNfsEMPRESAID.AsString +
          ' AND EF_NFS.NFSID = ' + dmEF.cdsNfsNFSID.AsString +
          ' AND EF_NFS.DATAEMISSAOID = ' + QuotedStr( FormatDateTime( 'dd/mm/yyyy', dmEF.cdsNfsDATAEMISSAOID.AsDateTime ));
  GerarPesquisa( dmEF.cdsNfs, iSQL );

  case dmEF.cdsNfsEMPRESAID.AsInteger of
  1..6 : if cds.FieldByName('DOCINTERNO').AsInteger = 0 then
            frmRelNotaMatrizSaida.QuickRep1.PrinterSettings.PrinterIndex := Impressora( 'EPSON-13' );
  end;

  if cds.FieldByName('DOCINTERNO').AsInteger = 0 then
     begin
      if      dmEF.cdsNfsEMPRESAID.AsInteger = 11 then
              frmRelNotaServicoFilial.QuickRep1.Preview
      else if ( dmEF.cdsNfsEMPRESAID.AsInteger in [6..10] ) or ( ( dmEF.cdsNfsEMPRESAID.AsInteger = 12 ) and  ( dmEF.cdsNfsVLRTOTALSERVICO.Value > 0 ) ) then
              frmRelNotaServico.QuickRep1.Preview
      else
              frmRelNotaMatrizSaida.QuickRep1.Preview
     end
  else
     begin
      frmRelDocInterno.QuickRep1.PrinterSettings.PrinterIndex := Impressora('MULT_ADM_01_BLACK');
      frmRelDocInterno.QuickRep1.Preview;
     end;


 finally
  if cds.FieldByName('DOCINTERNO').AsInteger = 0 then
     begin
      if      dmEF.cdsNfsEMPRESAID.AsInteger = 11 then
              begin
               FreeAndNil( frmRelNotaServicoFilial.QuickRep1 );
               FreeAndNil( frmRelNotaServicoFilial );
              end
      else if ( dmEF.cdsNfsEMPRESAID.AsInteger in [6..10] ) or ( ( dmEF.cdsNfsEMPRESAID.AsInteger = 12 ) and  ( dmEF.cdsNfsVLRTOTALSERVICO.Value > 0 ) ) then
              begin
               FreeAndNil( frmRelNotaServico.QuickRep1 );
               FreeAndNil( frmRelNotaServico );
              end
      else
              begin
               FreeAndNil( frmRelNotaMatrizSaida.QuickRep1 );
               FreeAndNil( frmRelNotaMatrizSaida );
              end;
     end
  else
     begin
      FreeAndNil( frmRelDocInterno.QuickRep1 );
      FreeAndNil( frmRelDocInterno );
     end;

  FreeAndNil( cds );
 end;
end;

procedure TfrmNFS.wwDBComboDlg2CustomDlg(Sender: TObject);
var iSql, CfopInicial : String;
begin
 iSQL    := ' SELECT' +
            '  EF_NATUREZAOP.NATUREZAOPID,' +
            '  EF_NATUREZAOP.CFOP,' +
            '  EF_NATUREZAOP.TIPOMOVIMENTO,' +
            '  EF_NATUREZAOP.DESCRICAOOPERACAOUSUARIO' +
            '  FROM' +
            '  EF_NATUREZAOP EF_NATUREZAOP,' +
            '  EF_NATUREZAEMPRESA EF_NATUREZAEMPRESA' +
            ' WHERE' +
            '  EF_NATUREZAOP.NATUREZAOPID = EF_NATUREZAEMPRESA.NATUREZAOPID(+)';

 dmEF.cdsEmpresa.Open;
 if not dmEF.cdsEmpresa.Locate('EMPRESAID', VarArrayOf([EmpresaAtualId]), [loPartialKey]) then
    begin
     MessageDlg('Problemas com o cadatro de empresas, favor comunidar o departamento de Informática.', mtInformation,[mbOk], 0);
     exit
    end;

 if ( trim( dmEF.cdsNfsPAIS.Value ) = 'BRASIL' ) or ( trim( dmEF.cdsNfsPAIS.Value ) = 'BRAZIL' ) then
    begin
     // Para dentro do Estado = 1 para fora = 2 Ex. Origem ->TABOÃO Destino->Recife = 1;
     if dmEF.cdsNfsSIGLAUFID.Value = dmEF.cdsEmpresaSIGLAUFID.Value then
        CfopInicial := '5'
     else
        CfopInicial := '6';
    end
 else
    CfopInicial := '7';  // Exterior;

 iSql := iSql + '  AND SUBSTR( EF_NATUREZAOP.CFOP, 1, 1 ) =  ' + CfopInicial +
                '  AND EF_NATUREZAEMPRESA.EMPRESAID = ' + dmEF.cdsNfsEMPRESAID.AsString;

 CriaFormLookUp( dmEF.cdsNaturezaOp.Name,iSql, dmEF.cdsNfsNATUREZAOPID,'NATUREZAOPID', 'NATUREZAOPID' );
 dmEF.cdsEmpresa.Close;
end;

end.
