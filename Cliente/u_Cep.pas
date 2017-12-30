unit u_Cep;

interface

uses Windows, ImgList, Controls, Grids, DBGrids, StdCtrls, Buttons, Mask,
     ComCtrls, ToolWin, jpeg, fcImager, ExtCtrls, Classes, fcLabel, Forms,
     DB, MMSystem, SysUtils, DBClient, PnAjustaGrid;

type
  TfrmCEP = class(TForm)
    ControlBar1: TControlBar;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    ImageList1: TImageList;
    StatusBar1: TStatusBar;
    PageControl1: TPageControl;
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
    mskCEP: TMaskEdit;
    PageControl2: TPageControl;
    TabSheet4: TTabSheet;
    DBGrid1: TDBGrid;
    sbLocalizar: TSpeedButton;
    Label4: TLabel;
    mskBairro: TMaskEdit;
    SpeedButton1: TSpeedButton;
    BitBtn2: TBitBtn;
    cmdTipo: TComboBox;
    Label9: TLabel;
    sbImportar: TSpeedButton;
    SpeedButton2: TSpeedButton;
    ToolButton1: TToolButton;
    tPanel11: tPanel1;
    procedure sbLocalizarClick(Sender: TObject);
    procedure cmbUFEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure mskLocalidadeChange(Sender: TObject);
  private
    { Private declarations }
    procedure VerificaFiltro;
  public
    { Public declarations }
    StartTick : Integer;
    EndTick   : Integer;
    AtualizaCEP : Boolean;
  end;

var
  frmCEP: TfrmCEP;

implementation

uses u_dmCP, FuncoesCliente;

{$R *.dfm}

procedure TfrmCEP.sbLocalizarClick(Sender: TObject);
var iSql : String;
    Cds  : TClientDataSet;
begin
 Cds     := nil;
 iSQL    := SQLCEPPadrao;

 if ( cmbUF.Text <> 'Todos' ) and ( cmbUF.Text <> '' ) then
    iSql := iSql + ' AND ( A.SIGLAUFID = ' + QuotedStr( Copy( cmbUF.Text, 1, 2 ) ) + ')' ;

 if mskCEP.Text <> '' then
    iSql := iSql + ' AND (A.CEPID = ' + mskCEP.Text + ')';

 if mskLocalidade.Text <> '' then
    iSql := iSql + ' AND (A.NOMELOCALIDADE LIKE ' + QuotedStr(  '%' + mskLocalidade.Text + '%' ) + ')';

 if mskLogradouro.Text <> '' then
    iSql := iSql + ' AND (A.NOMELOGRADOURO LIKE ' + QuotedStr(  '%' + mskLogradouro.Text + '%' ) + ')';

 if mskBairro.Text <> '' then
    iSql := iSql + ' AND (A.BAIRROLOGRADOURO LIKE ' + QuotedStr(  '%' + mskBairro.Text + '%' ) + ')';

 if cmdTipo.Text <> '' then
    iSql := iSql + ' AND (A.TIPOLOGRADOURO = ' + QuotedStr( cmdTipo.Text ) + ')';

 // Start inicial da importação
 StartTick := TimeGetTime;
 StatusBar1.Panels[1].Text := 'Starting tick: ' + IntToStr(StartTick);

 Screen.Cursor := crSQLWait;
 try
  ExecDynamicProvider( -1, iSQL, Cds );

  dmCP.cdsPesquisa.Data := Cds.Data;
  if not Cds.IsEmpty then
     tPanel11.Enabled := true
  else
     tPanel11.Enabled := false;

  Cds.Close;
 finally
  FreeAndNil( Cds );
  // Start Final da importação
  EndTick := TimeGetTime;
  StatusBar1.Panels[2].Text := 'Ending tick: ' +  IntToStr(EndTick);
  StatusBar1.Panels[3].Text := 'Duration (in milliseconds): ' + IntToStr(EndTick - StartTick);
  StatusBar1.Panels[4].Text := IntToStr( dmCP.cdsPesquisa.RecordCount );
  Screen.Cursor := crDefault;
 end;
end;

procedure TfrmCEP.cmbUFEnter(Sender: TObject);
var iSql : String;
    Cds  : TClientDataSet;
begin
 Cds     := nil;
 iSQL    := 'SELECT * FROM CP_UNIDADESFEDERACAO';

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      cmbUF.Items.Clear;
      while not Cds.Eof do
      begin
       cmbUF.Items.Add( Cds.FieldByName('SIGLAUFID').AsString  );
       Cds.Next;
      end;
     end;

  Cds.Close;
 finally
  FreeAndNil( Cds );
 end;
end;

procedure TfrmCEP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 if not AtualizaCEP then
    begin
     Action := caFree;
     frmCep := Nil;
    end;
end;

procedure TfrmCEP.FormCreate(Sender: TObject);
begin
 AtualizaCEP := False;
end;

procedure TfrmCEP.SpeedButton2Click(Sender: TObject);
begin
 Close
end;

procedure TfrmCEP.SpeedButton1Click(Sender: TObject);
begin
 AtualizaCEP := True;
 Close;
end;

procedure TfrmCEP.mskLocalidadeChange(Sender: TObject);
begin
 VerificaFiltro;
end;

procedure TfrmCEP.VerificaFiltro;
begin
 sbLocalizar.Enabled := ((cmbUF.Text   <> '') or (mskLocalidade.Text <> '') or (mskBairro.Text <> '')  or
                         (cmdTipo.Text <> '') or (mskLogradouro.Text <> '') or (mskCEP.Text    <> ''));
 BitBtn2.Enabled     := ((cmbUF.Text   <> '') or (mskLocalidade.Text <> '') or (mskBairro.Text <> '')  or
                         (cmdTipo.Text <> '') or (mskLogradouro.Text <> '') or (mskCEP.Text    <> ''));
end;

end.
