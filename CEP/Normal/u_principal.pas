unit u_principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBXpress, ComCtrls, DB, SqlExpr, ImgList, StdCtrls, Buttons,
  ToolWin, ExtCtrls, fcTreeView, fcLabel, Grids, DBGrids, ExtDlgs, Mask,
  FileCtrl, jpeg, fcImager, fcCombo, fcCalcEdit, funcoes;

type
  TfrmPrincipal = class(TForm)
    fcLabel1: TfcLabel;
    ControlBar1: TControlBar;
    ToolBar1: TToolBar;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    ToolButton4: TToolButton;
    ImageList1: TImageList;
    StatusBar1: TStatusBar;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    fcTreeView1: TfcTreeView;
    GroupBox1: TGroupBox;
    lblDiretorio: TLabel;
    SpeedButton2: TSpeedButton;
    DirectoryListBox1: TDirectoryListBox;
    fcImager2: TfcImager;
    TabSheet3: TTabSheet;
    fcCalcEdit1: TfcCalcEdit;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    ComboBox1: TComboBox;
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
    SpeedButton4: TSpeedButton;
    Label4: TLabel;
    mskBairro: TMaskEdit;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure ComboBox1Enter(Sender: TObject);
  private
    { Private declarations }
    procedure GrvBD( Txt : String ; IdxNode : Integer  );
    procedure ExecQry( Cmd : String );
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses u_dmCEP;

{$R *.dfm}

procedure TfrmPrincipal.GrvBD( Txt : String ; IdxNode : Integer );
var TipoOficialLogradouro, Preposicao, TitPatenteOficLogra, NomeOficialLogradouro : String;

begin
 with dmCEP do
 begin
  case IdxNode of
  // Paises
  0 : begin
       sqlcds.Fields.Fields[0].AsString := Copy( Txt,  2, 2 );
       sqlcds.Fields.Fields[1].AsString := Copy( Txt,  4, 3 );
       sqlcds.Fields.Fields[2].AsString := Copy( Txt,  7,72 );
       sqlcds.Fields.Fields[3].AsString := Copy( Txt, 79,72 );
       sqlcds.Fields.Fields[4].AsString := Copy( Txt,151,72 );
      end;

  // Unidades Federativa
  1 : begin
       sqlcds.Fields.Fields[0].AsString  := Copy( Txt,  4, 2 );
       sqlcds.Fields.Fields[1].AsString  := Copy( Txt,  2, 2 );
       sqlcds.Fields.Fields[2].AsString  := Copy( Txt, 10,72 );
      end;

  // Localidades
  2 : begin
       sqlcds.Fields.Fields[0].AsString  := Copy( Txt,  2, 2 );
       sqlcds.Fields.Fields[1].AsString  := Copy( Txt,  4, 2 );

       if Copy( Txt, 6,01 ) <> ' ' then
          sqlcds.Fields.Fields[2].AsInteger := StrToInt( Copy( Txt,  6, 6 ) );

       if Copy( Txt,12,01 ) <> ' ' then
          sqlcds.Fields.Fields[3].AsInteger := StrToInt( Copy( Txt, 12, 8 ) );

       sqlcds.Fields.Fields[4].AsString  := Copy( Txt, 20,72 );

       sqlcds.Fields.Fields[5].AsString  := Copy( Txt,136,01 );
       sqlcds.Fields.Fields[6].AsString  := Copy( Txt,137,01 );
      end;

  // Bairros
  3 : begin
       sqlcds.Fields.Fields[0].AsString  := Copy( Txt,  2, 2 );

       if Copy( Txt, 4, 1 ) <> ' ' then
          sqlcds.Fields.Fields[1].AsInteger := StrToInt( Copy( Txt,  4, 6 ) );

       if Copy( Txt,10, 1 ) <> ' ' then
          sqlcds.Fields.Fields[2].AsInteger := StrToInt( Copy( Txt, 10, 8 ) );

       sqlcds.Fields.Fields[3].AsString  := Copy( Txt, 18,72 );

       if Copy( Txt,90, 1 ) <> ' ' then
          sqlcds.Fields.Fields[4].AsInteger := StrToInt( Copy( Txt, 90, 5 ) );

       if Copy( Txt,95, 1 ) <> ' ' then
          sqlcds.Fields.Fields[5].AsInteger := StrToInt( Copy( Txt, 95, 8 ) );

       sqlcds.Fields.Fields[6].AsString  := Copy( Txt,103,72 );
      end;

  // Logradouros
  5..30 : begin
       sqlcds.Fields.Fields[0].AsString  := Copy( Txt,  2, 2 );

       if Copy( Txt, 4, 1 ) <> ' ' then
          sqlcds.Fields.Fields[1].AsInteger := StrToInt( Copy( Txt,  4, 6 ) );

       if Copy( Txt,10, 1 ) <> ' ' then
          sqlcds.Fields.Fields[2].AsInteger := StrToInt( Copy( Txt, 10, 8 ) );

       sqlcds.Fields.Fields[3].AsString  := Copy( Txt, 18,72 );

       if Copy( Txt,90, 1 ) <> ' ' then
          sqlcds.Fields.Fields[4].AsInteger := StrToInt( Copy( Txt, 90, 5 ) );

       if Copy( Txt,95, 1 ) <> ' ' then
          sqlcds.Fields.Fields[5].AsInteger := StrToInt( Copy( Txt, 95, 8 ) );

       sqlcds.Fields.Fields[6].AsString  := Copy( Txt,103,72 );

       if Copy( Txt,175, 1 ) <> ' ' then
          sqlcds.Fields.Fields[7].AsInteger := StrToInt( Copy( Txt,175, 5 ) );

       if Copy( Txt,180, 1 ) <> ' ' then
          sqlcds.Fields.Fields[8].AsInteger := StrToInt( Copy( Txt,180, 8 ) );

       sqlcds.Fields.Fields[9].AsString  := Copy( Txt,188,72 );

       // Junção dos Campos do Endereço
       TipoOficialLogradouro := Trim( Copy( Txt,260,26 ) );
       Preposicao            := Trim( Copy( Txt,286, 3 ) );
       TitPatenteOficLogra   := Trim( Copy( Txt,289,72 ) );
       NomeOficialLogradouro := Trim( Copy( Txt,375,72 ) );

       if TipoOficialLogradouro <> '' then
          sqlcds.Fields.Fields[10].AsString  := TipoOficialLogradouro;

       if Preposicao <> '' then
          sqlcds.Fields.Fields[10].AsString := sqlcds.Fields.Fields[10].AsString + ' ' + Preposicao;

       if TitPatenteOficLogra <> '' then
          sqlcds.Fields.Fields[10].AsString := sqlcds.Fields.Fields[10].AsString + ' ' + TitPatenteOficLogra;

       if NomeOficialLogradouro <> '' then
          sqlcds.Fields.Fields[10].AsString := sqlcds.Fields.Fields[10].AsString + ' ' + NomeOficialLogradouro;

          
       if Copy( Txt,361, 1 ) <> ' ' then
          sqlcds.Fields.Fields[11].AsInteger := StrToInt( Copy( Txt,361, 6 ) );

       if Copy( Txt,367, 1 ) <> ' ' then
          sqlcds.Fields.Fields[12].AsInteger := StrToInt( Copy( Txt,367, 8 ) );

       sqlcds.Fields.Fields[13].AsString := Copy( Txt,483,36 );

       if Copy( Txt,519, 1 ) <> ' ' then
          sqlcds.Fields.Fields[14].AsInteger := StrToInt( Copy( Txt,519, 8 ) );
      end;

  // Tipos de Logradouro
  34: begin
       if Copy( Txt, 2, 1 ) <> ' ' then
          sqlcds.Fields.Fields[0].AsInteger := StrToInt( Copy( Txt,  2, 3 ) );

       if Copy( Txt, 5, 1 ) <> ' ' then
          sqlcds.Fields.Fields[1].AsInteger := StrToInt( Copy( Txt,  5, 8 ) );

       sqlcds.Fields.Fields[2].AsString  := Copy( Txt, 13,72 );

       sqlcds.Fields.Fields[3].AsString  := Copy( Txt, 85,15 );
      end;
  end;
 end;
end;


procedure TfrmPrincipal.ExecQry( Cmd : String );
begin
 if Cmd = '' then
    exit;

 with dmCEP.sqlGeral do
 begin
  if Active then
     Active := False;

  SQL.Clear;
  SQL.Add( Cmd );
  ExecSQL;
 end;
end;

procedure TfrmPrincipal.SpeedButton1Click(Sender: TObject);
var CmdTxt, CmdTrunc, CmdConst1E,CmdConst1D, CmdConst2E,CmdConst2D, Txt, Arq, UF : String;
    CmdConst3E,CmdConst3D,CmdConst4E,CmdConst4D : String;
    NodeItem : TfcTreeNode;
    F        : TextFile;
    Pular    : Boolean;
    i, QtdCommit : Integer;
begin
 NodeItem   := fcTreeView1.Selected;
 QtdCommit  := StrToInt( fcCalcEdit1.Text );

 // Disabilitar as constraints para na utilizar DML TRUNCATE para não gerar ROLLBACK
 CmdConst1D := 'ALTER TABLE CEP.UNIDADESFEDERACAO DISABLE CONSTRAINT FK_UF_SIGLAPAISID';
 CmdConst1E := 'ALTER TABLE CEP.UNIDADESFEDERACAO ENABLE  CONSTRAINT FK_UF_SIGLAPAISID';
 CmdConst2D := 'ALTER TABLE CEP.LOCALIDADES DISABLE CONSTRAINT Fk_Localidades_SiglaPaisId';
 CmdConst2E := 'ALTER TABLE CEP.LOCALIDADES ENABLE  CONSTRAINT Fk_Localidades_SiglaPaisId';
 CmdConst3D := 'ALTER TABLE CEP.LOCALIDADES DISABLE CONSTRAINT Fk_Localidades_SiglaUFId';
 CmdConst3E := 'ALTER TABLE CEP.LOCALIDADES ENABLE  CONSTRAINT Fk_Localidades_SiglaUFId';
 CmdConst4D := 'ALTER TABLE CEP.BAIRROS DISABLE CONSTRAINT Fk_Bairros_SiglaUFId';
 CmdConst4E := 'ALTER TABLE CEP.BAIRROS ENABLE  CONSTRAINT Fk_Bairros_SiglaUFId';

 case NodeItem.AbsoluteIndex of
 0     : begin
          CmdTrunc := 'TRUNCATE TABLE CEP.PAISES';
          CmdTxt   := 'SELECT * FROM CEP.PAISES';
          Arq      := 'DNE_GU_PAISES.TXT';
         end;

 1     : begin
          CmdTrunc := 'TRUNCATE TABLE CEP.UNIDADESFEDERACAO';
          CmdTxt   := 'SELECT * FROM CEP.UNIDADESFEDERACAO';
          Arq      := 'DNE_GU_UNIDADES_FEDERACAO.TXT';
         end;

 2     : begin
          CmdTrunc := 'TRUNCATE TABLE CEP.LOCALIDADES';
          CmdTxt   := 'SELECT * FROM CEP.LOCALIDADES';
          Arq      := 'DNE_GU_LOCALIDADES.TXT';
         end;

 3     : begin
          CmdTrunc := 'TRUNCATE TABLE CEP.BAIRROS';
          CmdTxt   := 'SELECT * FROM CEP.BAIRROS';
          Arq      := 'DNE_GU_BAIRROS.TXT';
         end;

 4     : begin
          CmdTrunc := 'TRUNCATE TABLE CEP.LOGRADOUROS';
          CmdTxt   := '';
          Arq      := '';
         end;

 5..30 : begin
          CmdTrunc := '';
          CmdTxt   := 'SELECT * FROM CEP.LOGRADOUROS WHERE ROWNUM = 1';
          UF       := Copy( fcTreeView1.Items.Item[NodeItem.AbsoluteIndex].Text, 1, 2 );
          Arq      := 'DNE_GU_' + UF + '_LOGRADOUROS.TXT';
         end;

 34    : begin
          CmdTrunc := 'TRUNCATE TABLE CEP.TIPOSLOGRADOURO';
          CmdTxt   := 'SELECT * FROM CEP.TIPOSLOGRADOURO WHERE ROWNUM = 1';
          Arq      := 'DNE_GU_TIPOS_LOGRADOURO.TXT';
         end;

 end;

 if Arq <> '' then
    begin
     AssignFile( F, lblDiretorio.Caption + '\' + Arq );
     Reset(F);
    end;

 with dmCep do
 begin
  // Desabilitar as constraints;
  ExecQry( CmdConst1D );
  ExecQry( CmdConst2D );
  ExecQry( CmdConst3D );
  ExecQry( CmdConst4D );

  // Abilitar as constraints
  ExecQry( CmdTrunc );

  // Somente gerar o arquivo ( atender a node = 4 )
  if Arq = '' then
     exit;

  with sqlcds do
  begin
   if Active then
      Active := False;
   CommandText    := CmdTxt;
   Active         := True;
   FetchOnDemand  := True;
  end;

  // Start inicial da importação
  StatusBar1.Panels.Items[0].Text := TimeToStr( Time );

  Pular := True;
  i     := 0;
  while not Eof(F) do
  begin
   Readln(F, Txt);

   Inc( i );

   if Pular or ( Copy( Txt,1, 1 ) = '#' ) then
      begin
       Pular := False;
       Continue;
      end;

   sqlcds.Insert;

   // Gravar as atualizações no BD conforme o arquivo
   GrvBD( Txt, NodeItem.AbsoluteIndex );

   sqlcds.Post;

   if i > QtdCommit then
      begin
       sqlcds.ApplyUpdates(-1);
       i := 0;
      end;
  end;

  if sqlcds.ChangeCount > 0 then
     sqlcds.ApplyUpdates(-1);

  // Start Final da importação
  StatusBar1.Panels.Items[1].Text := TimeToStr( Time );

 end;

 // Abilitar as constraints do OWNER CEP
 ExecQry( CmdConst1E );
 ExecQry( CmdConst2E );
 ExecQry( CmdConst3E );
 ExecQry( CmdConst4E );

 CloseFile(F);
end;

procedure TfrmPrincipal.SpeedButton3Click(Sender: TObject);
begin
 Close;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
 DirectoryListBox1.Directory := 'F:\Software\Guia de CEP';
end;

procedure TfrmPrincipal.SpeedButton4Click(Sender: TObject);
begin
 if PageControl1.ActivePageIndex <> 1 then
    begin
     MessageDlg('Ativar a Pasta de ( PESQUISA ) para executar a Procura.', mtInformation, [mbOk], 0);
     exit;
    end;

 with dmCEP do
 begin
  // Start inicial da importação
  StatusBar1.Panels.Items[0].Text := TimeToStr( Time );

  Screen.Cursor := crHourGlass;

  if cdsPesq.Active then
     cdsPesq.Active := False;

  sqlPesq.SQL.Clear;
  sqlPesq.SQL.Add('SELECT ' +
                  '    A.ENDERECO , A.NOMEBAIRROLOGRADOURO , A.NOMELOCALIDADE , D.NOMEUF , A.CEPID ' +
                  '  , E.NOMEPAISPORTUGUES ' +
                  ' FROM ' +
                  '    CEP.LOCALIDADES B ' +
                  '  , CEP.BAIRROS C ' +
                  '  , CEP.UNIDADESFEDERACAO D ' +
                  '  , CEP.PAISES E ' +
                  '  , CEP.LOGRADOUROS A ' +
                  ' WHERE ' +
                  '      (B.SIGLAUFID = D.SIGLAUFID) ' +
                  '  AND (C.SIGLAUFID = D.SIGLAUFID) ' +
                  '  AND (B.SIGLAPAISID = E.SIGLAPAISID) ' +
                  '  AND (D.SIGLAPAISID = E.SIGLAPAISID) ' +
                  '  AND (A.LOCALIDADEDNEID = B.LOCALIDADEDNEID) ' +
                  '  AND (A.BAIRRODNEID = C.BAIRRODNEID) ');

  if ( ComboBox1.Text <> 'Todos' ) and ( ComboBox1.Text <> '' ) then
     begin
      sqlPesq.SQL.Add( ' AND (A.SIGLAUFID = :pSiglaUFId ) ' );
      sqlPesq.Params.ParamValues['pSiglaUFId']  := Copy( ComboBox1.Text, 1, 2 );
     end;

  if mksCEP.Text <> '' then
     begin
      sqlPesq.SQL.Add( ' AND (A.CEPID = :pCEPId ) ' );
      sqlPesq.Params.ParamValues['pCEPId'] := mksCEP.Text;
     end;

  if mskLocalidade.Text <> '' then
     begin
      sqlPesq.SQL.Add( ' AND (A.NOMELOCALIDADE LIKE :pLoca ) ' );
      sqlPesq.Params.ParamValues['pLoca'] := '%' + mskLocalidade.Text + '%';
     end;

  if mskLogradouro.Text <> '' then
     begin
      sqlPesq.SQL.Add( ' AND (A.ENDERECO LIKE :pEnd ) ' );
      sqlPesq.Params.ParamValues['pEnd'] := '%' + mskLogradouro.Text + '%';
     end;

  if mskBairro.Text <> '' then
     begin
      sqlPesq.SQL.Add( ' AND (A.NOMEBAIRROLOGRADOURO LIKE :pBairro ) ' );
      sqlPesq.Params.ParamValues['pBairro'] := '%' + mskBairro.Text + '%';
     end;

  sqlPesq.Active := True;
  cdsPesq.Active := True;

  // Start Final da importação
  StatusBar1.Panels.Items[1].Text := TimeToStr( Time );
  StatusBar1.Panels.Items[2].Text := IntToStr( cdsPesq.Recno ) + '/' + IntToStr( cdsPesq.RecordCount );

  Screen.Cursor := crDefault;
 end;
end;

procedure TfrmPrincipal.ComboBox1Enter(Sender: TObject);
begin
 dmCEP.sqlUF.Active := True;
 AdicCombo( dmCEP, dmCEP.sqlUF, dmCEP.sqlUFSIGLAUFID, Sender );
 dmCEP.sqlUF.Active := False;
end;

end.
