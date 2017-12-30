unit u_principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, jpeg, ImgList, ActnList,
  XPStyleActnCtrls, ActnMan, ActnCtrls, ToolWin, ActnMenus,
  fcStatusBar, ShellApi, Mask, HTTPGet;

type
  TfrmPrincipal = class(TForm)
    ProgressBar: TProgressBar;
    GroupBox1: TGroupBox;
    HTTPGetFile: THTTPGet;
    actmngRDV: TActionManager;
    actAtualizar: TAction;
    actSair: TAction;
    imglstRDV: TImageList;
    fcStatusBar1: TfcStatusBar;
    actConfiguracao: TAction;
    CoolBar1: TCoolBar;
    ActionToolBar1: TActionToolBar;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    UseCacheBox: TCheckBox;
    GroupBox3: TGroupBox;
    mmAtualizar: TMemo;
    Label1: TLabel;
    Label3: TLabel;
    mktURL: TMaskEdit;
    mktUsuario: TMaskEdit;
    mktSenha: TMaskEdit;
    GroupBox4: TGroupBox;
    ListBox1: TListBox;
    actParar: TAction;
    mktDiretInst: TMaskEdit;
    Label4: TLabel;
    mktUnidadePadrao: TMaskEdit;
    Label5: TLabel;
    chkbxAtualDespXML: TCheckBox;
    procedure UseCacheBoxClick(Sender: TObject);
    procedure HTTPGetFileDoneFile(Sender: TObject; FileName: String;
      FileSize: Integer);
    procedure HTTPGetFileError(Sender: TObject);
    procedure HTTPGetFileProgress(Sender: TObject; TotalSize,
      Readed: Integer);
    procedure actAtualizarExecute(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure actConfiguracaoExecute(Sender: TObject);
    procedure actPararExecute(Sender: TObject);
    procedure mktDiretInstExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure DownloadInternet;
    function LocalizarZipFile : Boolean;
    procedure DescompactarArquivo;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses SciZipFile, FuncoesDsi;

var
  ZipFileMem : TZipFile ;
  PosArqExecnoIdx : Integer;
  FilePath : String;

{$R *.dfm}

procedure TfrmPrincipal.DownloadInternet;
begin
 try
  if not DirectoryExists( FilePath ) then
     CreateDir( FilePath );

  mmAtualizar.Lines.Clear;
  mmAtualizar.Lines.Add('Verificando novas atualizações...');
  if FileExists( FilePath + 'gsi.exe') then
     ChangeFileExt(FilePath + 'gsi.exe', '.old');

  mmAtualizar.Lines.Add('Fazendo backup do arquivo atual do sistema...');

  HTTPGetFile.URL      := mktURL.Text;
  HTTPGetFile.UserName := mktUsuario.Text;
  HTTPGetFile.Password := mktSenha.Text;
  HTTPGetFile.FileName := FilePath + 'gsi.zip';
  HTTPGetFile.GetFile;

  mmAtualizar.Lines.Add('Fazendo download do arquivo...');

 except
 on E: Exception do
 MessageDlg('Problemas com a exclusão do registro' + #13 + 'Error: ' +
  E.Message, mtError, [mbOK], 0 )
 end;
end;

function TfrmPrincipal.LocalizarZipFile : Boolean;
var i : Integer;
begin
 Result := True;
 ListBox1.Items.Clear ;
 Screen.Cursor := crHourglass ;

 try
  { Carregar e descompactar o arquivo zip }
  ZipFileMem := TZipFile.Create ;
  ZipFileMem.LoadFromFile(FilePath + 'gsi.zip');

  if  ZipFileMem.Count = 0 then
      begin
       Result := False;
       mmAtualizar.Lines.Add( 'Problemas com o download do arquivo ZIP');
       exit;
      end;

  for i := 0 to ZipFileMem.Count -1 do
  begin
   { Paths currently use "/". Change them to "\" }
   ListBox1.Items.Add(StringReplace(ZipFileMem.Name[i],
                                    '/', '\', [rfReplaceAll])) ;
   if LowerCase(ExtractFileName(ListBox1.Items[i])) = 'gsi.exe' then
      PosArqExecnoIdx := i;
  end;

 finally
  Screen.Cursor := crDefault ;
 end;
end;

procedure TfrmPrincipal.DescompactarArquivo;
var Arquivo : String;
var i : Integer;
begin
 Arquivo := '';
 Screen.Cursor := crHourGlass;
 try
  if PosArqExecnoIdx = -1 then
     begin
      mmAtualizar.Lines.Add( 'Problemas na localização do arquivo no GSI.ZIP');
      Exit;
     end;

  for i := 0 to ZipFileMem.Count -1 do
  begin
   Arquivo := StringReplace( ZipFileMem.Name[i],'/', '\', [rfReplaceAll]);

   if LowerCase( ExtractFileName( Arquivo ) ) = 'gsi.exe' then
      beep;

   if not chkbxAtualDespXML.Checked then
      begin
       if LowerCase( ExtractFileName( Arquivo ) ) <> 'despesas.xml' then
          ZipFileMem.SaveToFileZIP( mktUnidadePadrao.Text+ Arquivo, i );
      end
   else
     ZipFileMem.SaveToFileZIP( mktUnidadePadrao.Text + Arquivo, i );
  end;

  mmAtualizar.Lines.Add( 'Atualização dos arquivos do GSI efetuados com sucesso');

  Screen.Cursor := crDefault;

  if MessageDlg('Deseja executar a nova versão do GSI?',
     mtConfirmation, [mbYes, mbNo], mrYes) = mrYes then
     begin
      WinExec('C:\GSI\GSI.EXE', SW_SHOWNORMAL);
      Close;
     end;

 finally
  Screen.Cursor := crDefault;
 end;
end;

procedure TfrmPrincipal.UseCacheBoxClick(Sender: TObject);
begin
 HTTPGetFile.UseCache := UseCacheBox.Checked;
end;

procedure TfrmPrincipal.HTTPGetFileDoneFile(Sender: TObject;
  FileName: String; FileSize: Integer);
begin
 mmAtualizar.Lines.Add( 'Download do arquivo executado com sucesso. Arquivo gravado: ' + FileName + #13#10 +
                        'tamanho do arquivo: ' + IntToStr(FileSize) + ' bytes');

 if LocalizarZipFile then
    DescompactarArquivo;
end;

procedure TfrmPrincipal.HTTPGetFileError(Sender: TObject);
begin
 mmAtualizar.Lines.Add( 'Error na transferência do arquivo');
end;

procedure TfrmPrincipal.HTTPGetFileProgress(Sender: TObject; TotalSize,
  Readed: Integer);
begin
  ProgressBar.Max := TotalSize;
  ProgressBar.Position := Readed;
end;

procedure TfrmPrincipal.actAtualizarExecute(Sender: TObject);
begin
 try
  if mktUsuario.Text = '' then
     raise Exception.Create('Falta o preenchimento do usuário do Metaframe para autenticação');

  if mktSenha.Text = '' then
     raise Exception.Create('Falta o preenchimento da senha do Metaframe para autenticação');

  DownloadInternet;
 except
  on E: Exception do
  begin
   MessageDlg( E.Message, mtInformation, [mbOK], 0 );
   mmAtualizar.Lines.Add( E.Message );
   mmAtualizar.Lines.Add( 'Processo de atualização cancelado' );
   exit;
  end;
 end;
end;

procedure TfrmPrincipal.actSairExecute(Sender: TObject);
begin
 Close
end;

procedure TfrmPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 ZipFileMem.Free;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
 PosArqExecnoIdx := 0;
 FilePath        :=  mktDiretInst.Text;
 mktUsuario.Text := LowerCase( LogUser );
end;

procedure TfrmPrincipal.actConfiguracaoExecute(Sender: TObject);
begin
 if LocalizarZipFile then
    DescompactarArquivo;
end;

procedure TfrmPrincipal.actPararExecute(Sender: TObject);
begin
 mmAtualizar.Lines.Add( 'Downloado do arquivo foi cancelado pelo usuário');
 HTTPGetFile.Abort;
end;

procedure TfrmPrincipal.mktDiretInstExit(Sender: TObject);
begin
 FilePath := mktDiretInst.Text;
end;

end.
