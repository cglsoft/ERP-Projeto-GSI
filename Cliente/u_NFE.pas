unit u_NFE;

interface

uses
  Windows, Forms, ImgList, Controls, Classes, ActnList, XPStyleActnCtrls,
  ActnMan, tmbToolEdicaoTop, ActnCtrls, ToolWin, ComCtrls, Dialogs,
  tmbToolEdicaoBottom, ExtCtrls, DBCtrls, StdCtrls, tmbToolEdicaoLista,
  Grids, DBGrids, wwriched, Mask, wwdbedit, Wwdotdot, DB, SysUtils,
  wwdbdatetimepicker, Variants,DBClient;

type
  TfrmNFE = class(TForm)
    StatusBar: TStatusBar;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
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
    GroupBox11: TGroupBox;
    DBMemo4: TDBMemo;
    Panel2: TPanel;
    GroupBox12: TGroupBox;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    GroupBox10: TGroupBox;
    DBGrid1: TDBGrid;
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
    DBRadioGroup4: TDBRadioGroup;
    GroupBox9: TGroupBox;
    Label2: TLabel;
    Label17: TLabel;
    Label20: TLabel;
    Label21: TLabel;
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
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
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
    GroupBox8: TGroupBox;
    Label41: TLabel;
    Label43: TLabel;
    DBEdit42: TDBEdit;
    wwDBComboDlg5: TwwDBComboDlg;
    DBEdit23: TDBEdit;
    Splitter2: TSplitter;
    tmbEdicaoLista2: TtmbEdicaoLista;
    tmbEdicaoLista1: TtmbEdicaoLista;
    Panel4: TPanel;
    tmbEdicaoBottom1: TtmbEdicaoBottom;
    CoolBar1: TCoolBar;
    ActionToolBar1: TActionToolBar;
    tmbEdicaoTop2: TtmbEdicaoTop;
    tmbEdicaoTop1: TtmbEdicaoTop;
    ActionToolBar2: TActionToolBar;
    actmngManutencao: TActionManager;
    actRelatorio: TAction;
    ImageList1: TImageList;
    Panel7: TPanel;
    Label9: TLabel;
    Label55: TLabel;
    DBEdit1: TDBEdit;
    DBRadioGroup5: TDBRadioGroup;
    GroupBox5: TGroupBox;
    DBCheckBox5: TDBCheckBox;
    DBEdit47: TDBEdit;
    PageControl2: TPageControl;
    TabSheet4: TTabSheet;
    GroupBox3: TGroupBox;
    Label45: TLabel;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    wwDBComboDlg1: TwwDBComboDlg;
    DBEdit21: TDBEdit;
    GroupBox2: TGroupBox;
    Label11: TLabel;
    Label24: TLabel;
    wwDBComboDlg2: TwwDBComboDlg;
    DBEdit12: TDBEdit;
    DBEdit30: TDBEdit;
    TabSheet5: TTabSheet;
    GroupBox6: TGroupBox;
    Label46: TLabel;
    Label47: TLabel;
    DBEdit22: TDBEdit;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    DBEdit2: TDBEdit;
    Label12: TLabel;
    wwDBDateTimePicker4: TwwDBDateTimePicker;
    Label1: TLabel;
    Label6: TLabel;
    Label44: TLabel;
    Label56: TLabel;
    DBEdit20: TDBEdit;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    wwDBDateTimePicker3: TwwDBDateTimePicker;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label8: TLabel;
    wwDBDateTimePicker5: TwwDBDateTimePicker;
    TabSheet6: TTabSheet;
    GroupBox13: TGroupBox;
    Label13: TLabel;
    wwDBComboDlg7: TwwDBComboDlg;
    wwDBRichEdit2: TwwDBRichEdit;
    Label14: TLabel;
    DBEdit6: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    GroupBox4: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label33: TLabel;
    Label57: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit48: TDBEdit;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    Label58: TLabel;
    DBEdit49: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure wwDBComboDlg5CustomDlg(Sender: TObject);
    procedure wwDBComboDlg4CustomDlg(Sender: TObject);
    procedure wwDBComboDlg3CustomDlg(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure actRelatorioExecute(Sender: TObject);
    procedure wwDBComboDlg2CustomDlg(Sender: TObject);
  private
    { Private declarations }
    procedure StatusHint(Sender : TObject);
  public
    { Public declarations }
  end;

var
  frmNFE: TfrmNFE;

implementation

uses u_dmEF, FuncoesCliente, FuncoesDSI, u_PadraoEdicao, u_RelNotaMatrizEntrada,
  u_RelDocInterno;

{$R *.dfm}

procedure TfrmNFE.FormShow(Sender: TObject);
begin
 StatusBar.Panels.Items[0].Text := 'Tabela: '+ Copy( dmEF.cdsNfe.Name, (Pos('cds', dmEF.cdsNfe.Name)+3), Length(dmEF.cdsNfe.Name));
 TtmbEdicaoLista( tmbEdicaoLista1).TtmbClassOwnerEspec := TFrmPadraoEdicao;
 TtmbEdicaoLista( tmbEdicaoLista1).TtmbFormOwnerEspec  := FrmPadraoEdicao;
 TmbEdicaoLista1.TtmbClientDataSet  := dmEF.cdsNfeItemBar;
 TmbEdicaoLista1.TtmbDataSource     := dmEF.dsNfeItemBar;
 TtmbEdicaoLista( tmbEdicaoLista2).TtmbClassOwnerEspec := TFrmPadraoEdicao;
 TtmbEdicaoLista( tmbEdicaoLista2).TtmbFormOwnerEspec  := FrmPadraoEdicao;
 TmbEdicaoLista2.TtmbClientDataSet  := dmEF.cdsNfeItem;
 TmbEdicaoLista2.TtmbDataSource     := dmEF.dsNfeItem;

 dmEF.cdsPdeItem.Open;
 case dmEF.dsNfe.State of
  dsEdit  : StatusBar.Panels.Items[1].Text := 'Status: Alteração';
  dsInsert: StatusBar.Panels.Items[1].Text := 'Status: Inserção';
 end;

end;

procedure TfrmNFE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if not FinalFormulario(dmEF.cdsNfe,' Nota Fiscal de Entrada ') then
    Action := caNone
 else
    begin
     Action   := caFree;
     frmNFE   := Nil;
    end;
    Application.OnHint := nil;
end;

procedure TfrmNFE.FormCreate(Sender: TObject);
begin
 Application.OnHint := StatusHint;
end;

procedure TfrmNFE.StatusHint(Sender: TObject);
begin
 if StatusBar <> nil then
    StatusBar.Panels.Items[2].text := GetLongHint(Application.Hint);
end;

procedure TfrmNFE.wwDBComboDlg5CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmEF.dsEntidade, 'ENTIDADEID', dmEF.cdsPdeTRANSPORTADORID.AsString, 'Transportador' );
 ExecLoockupRetorno(dmEF.cdsNfe, 'TRANSPORTADORID', 'ENTIDADEID');
end;

procedure TfrmNFE.wwDBComboDlg4CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmEF.dsEntidade, 'CEPID', wwDBComboDlg4.Text, 'Cep ID' );
 ExecLoockupRetorno(dmEF.cdsNfe, 'CEPID', 'CEPID');
end;

procedure TfrmNFE.wwDBComboDlg3CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmEF.dsEntidade, 'ENTIDADEID', wwDBComboDlg3.Text, 'Destinatário' );
 ExecLoockupRetorno(dmEF.cdsNfe, 'ENTIDADEID', 'ENTIDADEID');
end;

procedure TfrmNFE.FormKeyPress(Sender: TObject; var Key: Char);
begin
{ENTER}
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;

procedure TfrmNFE.actRelatorioExecute(Sender: TObject);
var  iSql : String;
     cds : TClientDataSet;
begin
 iSql := 'SELECT EF_NATUREZAOP.DOCINTERNO '+
         '  FROM EF_NATUREZAOP'+
         ' WHERE EF_NATUREZAOP.NATUREZAOPID = '+ dmEF.cdsNfeNATUREZAOPID.AsString;

 try
  ExecDynamicProvider( -1,iSql,cds );

  if cds.FieldByName('DOCINTERNO').AsInteger = 0 then
     Application.CreateForm( TfrmRelNotaMatrizEntrada, frmRelNotaMatrizEntrada )
  else
     begin
      Application.CreateForm( TfrmRelDocInterno, frmRelDocInterno );
      frmRelDocInterno.Relat := 0; // Documento de entrada
     end;

  if MessageDlg( 'Confirma a impressão da Nota Fiscal de Entrada? ', mtConfirmation, [mbYes,mbNo],0) = mrNo then
     exit;

  // Posicionar na Nota fiscal expecífica;
  iSQL := 'EF_NFE.EMPRESAID = ' + dmEF.cdsNfeEMPRESAID.AsString +
          ' AND EF_NFE.NFEID = ' + dmEF.cdsNfeNFEID.AsString +
          ' AND EF_NFE.DATAEMISSAOID = ' + QuotedStr( FormatDateTime( 'dd/mm/yyyy', dmEF.cdsNfeDATAEMISSAOID.AsDateTime ));
  GerarPesquisa( dmEF.cdsNfe, iSQL );

  case dmEF.cdsNfeEMPRESAID.AsInteger of
  1..6 : if cds.FieldByName('DOCINTERNO').AsInteger = 0 then
         frmRelNotaMatrizEntrada.QuickRep1.PrinterSettings.PrinterIndex := Impressora( 'EPSON-13' );
  end;

  if cds.FieldByName('DOCINTERNO').AsInteger = 0 then
     frmRelNotaMatrizEntrada.QuickRep1.Preview
  else
     begin
      frmRelDocInterno.QuickRep1.PrinterSettings.PrinterIndex := Impressora('MULT_ADM_01_BLACK');
      frmRelDocInterno.QuickRep1.Preview;
     end;

 finally
  if cds.FieldByName('DOCINTERNO').AsInteger = 0 then
     begin
      FreeAndNil( frmRelNotaMatrizEntrada.QuickRep1 );
      FreeAndNil( frmRelNotaMatrizEntrada );
     end
  else
     begin
      FreeAndNil( frmRelDocInterno.QuickRep1 );
      FreeAndNil( frmRelDocInterno );
     end;
  FreeandNil( cds );     
 end;
end;

procedure TfrmNFE.wwDBComboDlg2CustomDlg(Sender: TObject);
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

 if ( trim( dmEF.cdsNfePAIS.Value ) = 'BRASIL' ) or ( trim( dmEF.cdsNfePAIS.Value ) = 'BRAZIL' ) then
    begin
     // Para dentro do Estado = 1 para fora = 2 Ex. Origem ->TABOÃO Destino->Recife = 1;
     if dmEF.cdsNfeSIGLAUFID.Value = dmEF.cdsEmpresaSIGLAUFID.Value then
        CfopInicial := '5'
     else
        CfopInicial := '6';
    end
 else
    CfopInicial := '7';  // Exterior;

 iSql := iSql + '  AND SUBSTR( EF_NATUREZAOP.CFOP, 1, 1 ) =  ' + CfopInicial +
                '  AND EF_NATUREZAEMPRESA.EMPRESAID = ' + dmEF.cdsNfeEMPRESAID.AsString;

 CriaFormLookUp( dmEF.cdsNaturezaOp.Name, iSql, dmEF.cdsNfeNATUREZAOPID,'NATUREZAOPID', 'NATUREZAOPID' );
 dmEF.cdsEmpresa.Close;

end;

end.
