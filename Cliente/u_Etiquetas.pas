unit u_Etiquetas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, ValEdit, Buttons, DBGrids, StdCtrls, ComCtrls, ExtCtrls;

type
  TfrmEtiqueta = class(TForm)
    Panel1: TPanel;
    Panel20: TPanel;
    Panel23: TPanel;
    Label59: TLabel;
    GroupBox3: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    dtpIni: TDateTimePicker;
    dtpFim: TDateTimePicker;
    BitBtn1: TBitBtn;
    GroupBox4: TGroupBox;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    GroupBox1: TGroupBox;
    grdNota: TDBGrid;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    GroupBox2: TGroupBox;
    vleEtiqueta: TValueListEditor;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure grdNotaDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    SqlAntigo : String;
    procedure CriaRelatorio;
  public
    { Public declarations }
  end;

var
  frmEtiqueta: TfrmEtiqueta;

implementation

{$R *.dfm}

procedure TfrmEtiqueta.BitBtn3Click(Sender: TObject);
begin
 {Retorna dados da Empresas de cada Empresa }
 SQL := '';
 ExcecutaSQL(cdsEmpresa, SQL);
 CriaRelatorio;
 try
  if cdsEmpresa.FieldByName('CD_EMPRESA').Value <> 12 then
     frmRelEtiqueta.qrpEtiqueta.PrinterSettings.PrinterIndex := Impressora( 'EPSON-14' );

  frmRelEtiqueta.qrpEtiqueta.Print;
 finally
  FreeAndNil( frmRelEtiqueta.qrpEtiqueta );
  FreeAndNil( frmRelEtiqueta );
  cdsNFS.FieldByName('Etiqueta').Close;
  cdsNFS.FieldByName('Etiqueta').SQL.Text := SqlAntigo;
 end;
end;

procedure TfrmEtiqueta.CriaRelatorio;
var i : Integer;
    Sql : String;
begin
 cdsNFS.FieldByName('Etiqueta').Close;
 SqlAntigo := cdsNFS.FieldByName('Etiqueta').SQL.Text;
 Sql := SqlAntigo;
 Sql := Sql + ' AND NFS.NUMERO_NOTA IN ( ';
 for i := 1 to vleEtiqueta.RowCount - 1 do
  Sql := Sql + vleEtiqueta.Keys[i] + ', ';
 Sql := Sql + '0 )';
 cdsNFS.FieldByName('Etiqueta').SQL.Text := Sql;
 cdsNFS.FieldByName('Etiqueta').SQL.SaveToFile('c:\duplic.txt');
 cdsNFS.FieldByName('Etiqueta').Prepare;
 cdsNFS.FieldByName('Etiqueta').Open;
 frmRelEtiqueta := TfrmRelEtiqueta.Create( Application );
end;

procedure TfrmEtiqueta.BitBtn2Click(Sender: TObject);
begin
 CriaRelatorio;
 try
  if cdsEmpresa.FieldByName('CD_EMPRESA').Value <> 12 then
     frmRelEtiqueta.qrpEtiqueta.PrinterSettings.PrinterIndex := Impressora( 'EPSON-14' );

  frmRelEtiqueta.qrpEtiqueta.Preview;
 finally
  FreeAndNil( frmRelEtiqueta.qrpEtiqueta );
  FreeAndNil( frmRelEtiqueta );
 end;
end;

procedure TfrmEtiqueta.BitBtn1Click(Sender: TObject);
begin
 Screen.Cursor := crSQLWait;
 try
  with dmEF do
  begin
   if cdsNFS.FieldByName('Etiqueta').Active then
      cdsNFS.FieldByName('Etiqueta').Close;
   cdsNFS.FieldByName('Etiqueta').Params[0].AsDate := dtpIni.Date;
   cdsNFS.FieldByName('Etiqueta').Params[1].AsDate := dtpFim.Date;
   cdsNFS.FieldByName('Etiqueta').Open;
  end;
 finally
  Screen.Cursor := crDefault;
 end;
end;

procedure TfrmEtiqueta.SpeedButton1Click(Sender: TObject);
var R : Integer;
begin
 with dmEF do
 begin
  cdsNFS.FieldByName('Etiqueta').First;
  while not cdsNFS.Eof do
  begin
   if not vleEtiqueta.FindRow( cdsNFS.FieldByName('NUMERO_NOTA').AsString, R ) then
      vleEtiqueta.InsertRow( cdsNFS.FieldByName('NUMERO_NOTA').AsString, cdsNFS.FieldByName('DATA_EMISSAO').AsString, True );
   cdsNFS.Next;
  end;
 end;
end;

procedure TfrmEtiqueta.SpeedButton2Click(Sender: TObject);
var i, R : Integer;
begin
 with dmEF do
 begin
  for i := 0 to grdNota.SelectedRows.Count - 1 do
  begin
   cdsNFS.GotoBookMark(TBookMark(grdNota.SelectedRows.Items[i]));
   if not vleEtiqueta.FindRow( cdsNFS.FieldByName('NUMERO_NOTA').AsString, R ) then
      vleEtiqueta.InsertRow( cdsNFS.FieldByName('NUMERO_NOTA').AsString, cdsNFS.FieldByName('DATA_EMISSAO').AsString, True );
  end;
 end;
end;

procedure TfrmEtiqueta.SpeedButton3Click(Sender: TObject);
begin
 vleEtiqueta.DeleteRow( vleEtiqueta.Row );
end;

procedure TfrmEtiqueta.SpeedButton4Click(Sender: TObject);
begin
 while vleEtiqueta.RowCount > 1 do
 begin
  if vleEtiqueta.RowCount > 2 then
     vleEtiqueta.DeleteRow( vleEtiqueta.RowCount - 1 )
  else
  begin
   if vleEtiqueta.Keys[vleEtiqueta.RowCount - 1] <> '' then
      vleEtiqueta.DeleteRow( vleEtiqueta.RowCount - 1 );
   Break;
  end;
 end;
end;

procedure TfrmEtiqueta.grdNotaDblClick(Sender: TObject);
var i, R : Integer;
begin
 with dmEF do
 begin
  for i := 0 to grdNota.SelectedRows.Count - 1 do
  begin
   qryNFSEtiqueta.GotoBookMark(TBookMark(grdNota.SelectedRows.Items[i]));
   if not vleEtiqueta.FindRow( cdsNFS.FieldByName('NUMERO_NOTA').AsString, R ) then
      vleEtiqueta.InsertRow( cdsNFS.FieldByName('NUMERO_NOTA').AsString, cdsNFS.FieldByName('DATA_EMISSAO').AsString, True );
  end;
 end;
end;

procedure TfrmEtiqueta.FormCreate(Sender: TObject);
begin
 Top := 0;
 dtpIni.Date := Date;
 dtpFim.Date := Date;
end;

procedure TfrmEtiqueta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 frmEtiqueta := nil;
end;

end.
