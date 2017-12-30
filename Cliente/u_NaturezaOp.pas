unit u_NaturezaOp;

interface

uses
  SysUtils, Forms, Graphics, ComCtrls, tmbToolEdicaoBottom, ToolWin,
  tmbToolEdicaoTop, Buttons, ExtCtrls, DBCtrls, StdCtrls, wwdbedit,
  Wwdotdot, Mask, Controls, Classes, DB, DBClient,  DBGrids, Grids, wwriched;

type
  TfrmNaturezaOp = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet5: TTabSheet;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    wwDBComboDlg3: TwwDBComboDlg;
    DBEdit8: TDBEdit;
    GroupBox4: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    wwDBComboDlg1: TwwDBComboDlg;
    Label7: TLabel;
    DBMemo1: TDBMemo;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    wwDBComboDlg2: TwwDBComboDlg;
    DBEdit6: TDBEdit;
    GroupBox2: TGroupBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    DBRadioGroup2: TDBRadioGroup;
    GroupBox3: TGroupBox;
    DBCheckBox18: TDBCheckBox;
    DBCheckBox19: TDBCheckBox;
    GroupBox5: TGroupBox;
    DBCheckBox20: TDBCheckBox;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    PageControl3: TPageControl;
    TabSheet4: TTabSheet;
    Panel4: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBCheckBox21: TDBCheckBox;
    tmbEdicaoTop1: TtmbEdicaoTop;
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    tmbEdicaoBottom1: TtmbEdicaoBottom;
    wwDBRichEdit3: TwwDBRichEdit;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox22: TDBCheckBox;
    DBCheckBox23: TDBCheckBox;
    DBCheckBox24: TDBCheckBox;
    DBCheckBox25: TDBCheckBox;
    DBCheckBox26: TDBCheckBox;
    GroupBox9: TGroupBox;
    DBCheckBox27: TDBCheckBox;
    DBCheckBox28: TDBCheckBox;
    DBCheckBox29: TDBCheckBox;
    Label9: TLabel;
    DBComboBox1: TDBComboBox;
    DBCheckBox17: TDBCheckBox;
    Label10: TLabel;
    DBEdit7: TDBEdit;
    dbgrdPadraoPesquisa: TDBGrid;
    DBGrid1: TDBGrid;
    DBCheckBox30: TDBCheckBox;
    DBCheckBox31: TDBCheckBox;
    DBCheckBox32: TDBCheckBox;
    DBCheckBox33: TDBCheckBox;
    DBCheckBox34: TDBCheckBox;
    DBCheckBox35: TDBCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure wwDBComboDlg2CustomDlg(Sender: TObject);
    procedure wwDBComboDlg1CustomDlg(Sender: TObject);
  private
    { Private declarations }
    function ProcurarEmpresa( Natureza, Empresa : String ) : Boolean;
  public
    { Public declarations }
  end;

var
  frmNaturezaOp: TfrmNaturezaOp;

implementation

uses FuncoesCliente, u_dmEF;

{$R *.dfm}

procedure TfrmNaturezaOp.FormCreate(Sender: TObject);
begin
 with dmEF do
 begin
  {dmEF.cdsNaturezaOp.PacketRecords := 1;}
  cdsNaturezaEmpresa.Open;
  cdsEmpresa.Open;
 end;
end;

procedure TfrmNaturezaOp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 if not FinalFormulario(dmEF.cdsNaturezaOp,' da Natureza de Operação') then
    Action := caNone
 else
    begin
     Action := caFree;
     frmNaturezaOp := nil;
    end;
end;

procedure TfrmNaturezaOp.FormKeyPress(Sender: TObject; var Key: Char);
begin
 // Habilitar a propriedade KeyPreview do Form para funcionar o Enter como Tab
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;

function TfrmNaturezaOp.ProcurarEmpresa( Natureza, Empresa : String ) : Boolean;
var iSql : String;
    Cds : TClientDataSet;
begin
 Cds  := nil;
 iSql := 'SELECT * FROM EF_NATUREZAEMPRESA WHERE NATUREZAOPID =' + Natureza + ' AND EMPRESAID =' + Empresa;
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     Result := True
  else
     Result := False;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TfrmNaturezaOp.SpeedButton1Click(Sender: TObject);
begin
 with dmEF do
 begin
  cdsEmpresa.First;
  while not cdsEmpresa.Eof do
  begin
   if not ProcurarEmpresa( cdsNaturezaOpNATUREZAOPID.AsString, cdsEmpresaEMPRESAID.AsString ) then
      begin
       cdsNaturezaEmpresa.Insert;
       cdsNaturezaEmpresaEMPRESAID.Value := cdsEmpresaEMPRESAID.Value;
       cdsNaturezaEmpresa.Post;
      end;
   cdsEmpresa.Next;
  end;
 end;
end;

procedure TfrmNaturezaOp.SpeedButton4Click(Sender: TObject);
begin
 with dmEF do
 begin
  cdsNaturezaEmpresa.First;
  while not cdsNaturezaEmpresa.Eof do
   cdsNaturezaEmpresa.Delete;
 end;
end;

procedure TfrmNaturezaOp.SpeedButton2Click(Sender: TObject);
begin
 if not ProcurarEmpresa( dmEF.cdsNaturezaOpNATUREZAOPID.AsString, dmEF.cdsEmpresaEMPRESAID.AsString ) then
    begin
     dmEF.cdsNaturezaEmpresa.Insert;
     dmEF.cdsNaturezaEmpresaEMPRESAID.Value := dmEF.cdsEmpresaEMPRESAID.Value;
     dmEF.cdsNaturezaEmpresa.Post;
    end;
   dmEF.cdsEmpresa.Next;
end;

procedure TfrmNaturezaOp.SpeedButton3Click(Sender: TObject);
begin
 dmEF.cdsNaturezaEmpresa.Delete
end;

procedure TfrmNaturezaOp.wwDBComboDlg2CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmEF.dsSiglaNatureza, 'SIGLANATUREZAOPID',  dmEF.cdsNaturezaOpSIGLANATUREZAID.AsString, 'Sigla Natureza Operação' );
 ExecLoockupRetorno(dmEF.cdsNaturezaOp, 'SIGLANATUREZAOPID', 'SIGLANATUREZAOPID');
end;

procedure TfrmNaturezaOp.wwDBComboDlg1CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmEF.dsObservacao, 'OBSERVACAOID', dmEF.cdsNaturezaOpOBSERVACAOID.AsString, 'Observação' );
 ExecLoockupRetorno(dmEF.cdsNaturezaOp, 'OBSERVACAOID', 'OBSERVACAOID');
end;

end.
