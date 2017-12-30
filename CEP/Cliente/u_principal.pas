unit u_principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, fcCombo, fcCalcEdit, StdCtrls, Grids,
  DBGrids, Buttons, Mask, fcTreeView, ComCtrls, ToolWin, jpeg, fcImager,
  ExtCtrls, fcLabel, dbiTypes, DB,  MMSystem, MidasLib, FileCtrl;

type
  TfrmPrincipal = class(TForm)
    fcLabel1: TfcLabel;
    ControlBar1: TControlBar;
    ToolBar1: TToolBar;
    sbImportar: TSpeedButton;
    sbConectar: TSpeedButton;
    ToolButton4: TToolButton;
    ImageList1: TImageList;
    StatusBar1: TStatusBar;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    fcTreeView1: TfcTreeView;
    GroupBox1: TGroupBox;
    lblDiretorio: TLabel;
    DirectoryListBox1: TDirectoryListBox;
    fcImager2: TfcImager;
    TabSheet3: TTabSheet;
    GroupBox2: TGroupBox;
    cmbUF: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    mskLocalidade: TMaskEdit;
    mskLogradouro: TMaskEdit;
    Label5: TLabel;
    Label6: TLabel;
    mksCEP: TMaskEdit;
    PageControl2: TPageControl;
    TabSheet4: TTabSheet;
    DBGrid1: TDBGrid;
    sbLocalizar: TSpeedButton;
    Label4: TLabel;
    mskBairro: TMaskEdit;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    mskHost: TMaskEdit;
    Label1: TLabel;
    fcCalcEdit1: TfcCalcEdit;
    fcCalcEdit2: TfcCalcEdit;
    BitBtn1: TBitBtn;
    SpeedButton1: TSpeedButton;
    BitBtn2: TBitBtn;
    cmdTipo: TComboBox;
    Label9: TLabel;
    procedure sbImportarClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sbLocalizarClick(Sender: TObject);
    procedure cmbUFEnter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    Config : SYSConfig;
    Direito : Boolean;
  public
    { Public declarations }
    StartTick : Integer;
    EndTick   : Integer;
    procedure AdicCombo( dmGeral : TObject; Tabela : TDataSet; Campo : TField; Sender : TOBject );
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses u_dmCEP;

{$R *.dfm}

{ Procedure dados de tabelas no ComboBox }
procedure TfrmPrincipal.AdicCombo( dmGeral : TObject; Tabela : TDataSet; Campo : TField; Sender : TOBject );
begin
 with dmGeral do begin
  Tabela.DisableControls;
  Tabela.First;
  try
   TComboBox( Sender ).Items.Clear;
   TComboBox( Sender ).Items.Add( 'Todos' );
   while not Tabela.eof do
    begin
     TComboBox( Sender ).Items.Add( Campo.AsString );
     Tabela.Next;
    end;
  finally
   Tabela.EnableControls;
  end;
 end;
end;

procedure TfrmPrincipal.sbImportarClick(Sender: TObject);
var NodeItem : TfcTreeNode;
    QtdCommit : Integer;
    Diretorio, UF   : String;
begin
// MessageDlg('Não é necessário executar esta rotina.', mtInformation,  [mbOk], 0);

// exit;

 NodeItem   := fcTreeView1.Selected;
 QtdCommit  := StrToInt( fcCalcEdit1.Text );

 with dmCep do
 begin
  // Start inicial da importação
  Screen.Cursor             := crHourGlass;
  StartTick                 := TimeGetTime;
  StatusBar1.Panels[1].Text := 'Starting tick: ' + IntToStr(StartTick);

  QtdCommit := StrToInt( fcCalcEdit1.Text );

  UF        := Copy( fcTreeView1.Items.Item[NodeItem.AbsoluteIndex].Text, 1, 2 );
  Diretorio := lblDiretorio.Caption;
  try
   sktcnnCEP.AppServer.ExecImportCEP( UF, Diretorio, QtdCommit, NodeItem.AbsoluteIndex );
  finally
   // Start Final da importação
   EndTick := TimeGetTime;
   StatusBar1.Panels[2].Text := 'Ending tick: ' +  IntToStr(EndTick);
   StatusBar1.Panels[3].Text := 'Duration (in milliseconds): ' + IntToStr(EndTick - StartTick);
   Screen.Cursor := crDefault;
  end;
 end;
end;

procedure TfrmPrincipal.SpeedButton3Click(Sender: TObject);
begin
 Close;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
var UserNet : String;
begin
 DbiInit( NIL );
 DbiGetSysConfig( Config );
 UserNet := trim( UpperCase( StrPas( Config.szUserName ) ) );
 Direito := True;

{ if tbUsuarios.findKey([UserNet] ) then
     begin
      if tbUsuariosDEPTO.Value = 'DSI' then
         Direito := True
      else
         Direito := False;
     end
  else
     begin
      MessageDlg('Usuário não tem acesso ao sistema', mtInformation,[mbOk], 0);
      Close;
     end;}


  dmCEP.sktcnnCEP.Connected := True;

  // Diretório padrão
  DirectoryListBox1.Directory     := 'C:\cep\';
  StatusBar1.Panels.Items[0].Text := UserNet;
end;

procedure TfrmPrincipal.sbLocalizarClick(Sender: TObject);
begin
 if PageControl1.ActivePageIndex <> 1 then
    begin
     MessageDlg('Ativar a Pasta de ( PESQUISA ) para executar a Procura.', mtInformation, [mbOk], 0);
     exit;
    end;

 with dmCEP do
 begin
  if not sktcnnCEP.Connected then
     sktcnnCEP.Connected := True;

  // Start inicial da importação
  StartTick := TimeGetTime;
  StatusBar1.Panels[1].Text := 'Starting tick: ' + IntToStr(StartTick);

  Screen.Cursor := crSQLWait;

  try
   if cdsPesq.Active then
      cdsPesq.Active := False;

   sktcnnCEP.AppServer.ExecPesq( cmbUF.Text, mksCEP.Text, mskLocalidade.Text,
                                 mskLogradouro.Text, mskBairro.Text, cmdTipo.Text );
   cdsPesq.Active := True;
  finally
   // Start Final da importação
   EndTick := TimeGetTime;
   StatusBar1.Panels[2].Text := 'Ending tick: ' +  IntToStr(EndTick);
   StatusBar1.Panels[3].Text := 'Duration (in milliseconds): ' + IntToStr(EndTick - StartTick);
   StatusBar1.Panels[4].Text := IntToStr( cdsPesq.RecordCount );

   Screen.Cursor := crDefault;
  end; 
 end;
end;

procedure TfrmPrincipal.cmbUFEnter(Sender: TObject);
begin
 dmCEP.cdsUF.Active := True;
 AdicCombo( dmCEP, dmCEP.cdsUF, dmCEP.cdsUFSIGLAUFID, Sender );
 dmCEP.cdsUF.Active := False;
end;

procedure TfrmPrincipal.BitBtn1Click(Sender: TObject);
begin
 if PageControl1.ActivePageIndex <> 2 then
    begin
     MessageDlg('Ativar a Pasta de ( Configuração ) para executar a Procura.', mtInformation, [mbOk], 0);
     exit;
    end;
    
 with dmCEP do
 begin
  Screen.Cursor       := crHourGlass;
  sbImportar.Enabled  := False;
  sbLocalizar.Enabled := False;
  try
   sktcnnCEP.Connected := False;
   sktcnnCEP.Host      := mskHost.Text;
   sktcnnCEP.Port      := StrToInt( fcCalcEdit2.Text );
   sktcnnCEP.Connected := True;
   sbImportar.Enabled  := True;
   sbLocalizar.Enabled := True;

  finally
   Screen.Cursor       := crDefault;
  end;
 end;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 dmCEP.sktcnnCEP.Connected := True;
end;

end.
