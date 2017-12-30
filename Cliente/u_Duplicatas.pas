unit u_Duplicatas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, ValEdit, Buttons, DBGrids, StdCtrls, ComCtrls, ExtCtrls;

type
  TFrmDuplicatas = class(TForm)
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
    procedure grdNotaDblClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    SqlAntigo : String;
    procedure CriaRelatorio;
    procedure ImprimeRelatorio;

  public
    { Public declarations }
  end;

var
  FrmDuplicatas: TFrmDuplicatas;

implementation

{$R *.dfm}

procedure TFrmDuplicatas.BitBtn3Click(Sender: TObject);
begin
 {Retorna dados da NFS de cada Empresa }
 SQL := 'SELECT * FROM NFS WHERE EMPRESAID = ' + EmpresaAtiva;
 ExcecutaSQL(cdsNFS, SQL);

 Screen.Cursor := crSQLWait;
 try
  CriaRelatorio;
 finally
  dmqrySEF.cdsNFS.Close;
  dmqrySEF.cdsNFS.SQL.Text := SqlAntigo;
  dmqrySEF.cdsNFS.Open;
  Screen.Cursor := crDefault;
 end;
end;

procedure TFrmDuplicatas.CriaRelatorio;
var i : Integer;
    Sql : String;
begin
 with dmEF do
 begin
  cdsNFS.Close;
  SqlAntigo := cdsNFS.SQL.Text;
  Sql       := SqlAntigo;
  Sql       := Sql + ' AND NFS.NFSID IN ( ';
  for i := 1 to vleEtiqueta.RowCount - 1 do
   Sql := Sql + vleEtiqueta.Keys[i] + ', ';
  Sql := Sql + '0 )';
  cdsNFS.SQL.Text := Sql;
  cdsNFS.Open;

  while not cdsNFS.Eof do
  begin
   if TB_NFS.FindKey([cdsNFS.FieldByName('NUMERO_NOTA').Value, cdsNFS.FieldByName('DATA_EMISSAO')] ) then
      ImprimeRelatorio;

   cdsNFS.Next;
  end;
 end;
end;

procedure TFrmDuplicatas.ImprimeRelatorio;
var Endereco, Cidade, Estado, CEP, CNPJ, InscrEst : String;
    lOrgPubl : Boolean;
begin
 {Retorna dados da NFSParcela de cada Empresa }
 SQL := 'SELECT * FROM NFSParcela WHERE EMPRESAID = ' + EmpresaAtiva;
 ExcecutaSQL(cdsNFSParcela, SQL);

 with dmEF do
 begin
  {Limpar arquivo de duplicatas}
  if cdsNFS.Active then
     cdsNFS.Close;

  cdsNFS.EmptyTable;
  cdsNFS.Open;

  {Atualizar duplicatas}
  cdsNFSParcela.First;
  while not cdsNFSParcela.Eof do
   begin
    Endereco   := '';
    Cidade     := '';
    Estado     := '';
    CEP        := '';
    InscrEst   := '';
    lOrgPubl   := False;

    {Retorna dados da  ENTIDADE}
    Sql := ' SELECT * FROM ENTIDADE WHERE ENTIDADEID = ' + cdsNfs.FieldByName('EntidadeId').Value;
    ExcecutaSQL(cdsEntidade, SQL);

    if      cdsNFS.FieldByName('TIPO_DESTIN').Value = 'C' then
            begin
             cdsEntidade.IndexName := '';
             cdsEntidade.Refresh;
             cdsEntidade.First;
             if cdsEntidade.FindKey([cdsNFS.FieldByName('CODIGO_DESTIN').Value]) then
                begin
                 if Trim( cdsEntidade.FieldByName('CPFCLI').Value ) = '' then
                    CNPJ := FormatCNPF_CNPJ_CCM( cdsEntidade.FieldByName('CGCCLI').Value )
                  else
                    CNPJ := FormatCNPF_CNPJ_CCM( cdsEntidade.FieldByName('CPFCLI').Value );


                 if not cdsEntidade.FieldByName('L_IMPRDUPL').Value then
                    lOrgPubl := True
                 else
                    lOrgPubl := False;

                  Endereco := cdsEntidade.FieldByName('ENDCOB').Value;
                  Cidade   := cdsEntidade.FieldByName('CIDCOB').Value;
                  Estado   := cdsEntidade.FieldByName('ESTCOB').Value;
                  CEP      := cdsEntidade.FieldByName('CEPCOB').Value;
                  InscrEst := cdsEntidade.FieldByName('INSEST').Value;
                end;
             end

     else if cdsNFS.FieldByName('TIPO_DESTIN').Value = 'F' Then
             begin
              cdsEntidade.IndexName := '';
              cdsEntidade.Refresh;
              cdsEntidade.First;
              if cdsEntidade.FindKey( [ cdsNFS.FieldByName('CODIGO_DESTIN').Value] ) then
                 begin
                  if cdsEntidade.FieldByName('FISICO_JURIDICO').Value = 'J' then
                     CNPJ := FormatCNPF_CNPJ_CCM( cdsEntidade.FieldByName('CGC').Value )
                  else
                     CNPJ := FormatCNPF_CNPJ_CCM( cdsEntidade.FieldByName('CPF').Value );

                  lOrgPubl := False;
                  Endereco := cdsEntidade.FieldByName('ENDERECO').Value;
                  Cidade   := cdsEntidade.FieldByName('CIDADE').Value;
                  Estado   := cdsEntidade.FieldByName('ESTADO').Value;
                  CEP      := cdsEntidade.FieldByName('CEP').Value;
                  InscrEst := cdsEntidade.FieldByName('INSCRICAO_ESTADUAL').Value;
                 end;
             end;

    if lOrgPubl then
       begin
        cdsNFSParcela.Next;
        Continue;
       end;

    if cdsNFSParcela.FindKey([cdsNFS.FieldByName('NUMERO_NOTA').Value, cdsNFSParcela.FieldByName('DATA_EMISSAO').Value]) then
       cdsNFSParcela.Edit
    else
       cdsNFSParcela.Insert;

    cdsNFS.FieldByName('NUMERO_NOTA').Value      := cdsNFS.FieldByName('NUMERO_NOTA').Value;
    cdsNFS.FieldByName('DATA_EMISSAO').Value     := cdsNFS.FieldByName('DATA_EMISSAO').Value;
    cdsNFS.FieldByName('NUMERO_PEDIDO').Value    := cdsNFS.FieldByName('NUMERO_PEDIDO').Value;
    cdsNFS.FieldByName('NUMERO_PARCELA').Value   := cdsNFSParcela.FieldByName('NUMERO_PARCELA').Value;
    cdsNFS.FieldByName('DATA_VECTO').Value       := cdsNFSParcela.FieldByName('DATA_VECTO').Value;
    cdsNFS.FieldByName('DATA_PAGTO').Value       := cdsNFSParcela.FieldByName('DATA_PAGTO').Value;
    cdsNFS.FieldByName('VALOR_PARCELA').Value    := cdsNFSParcela.FieldByName('VALOR_PARCELA').Value;
    cdsNFS.FieldByName('NUMERO_DUPLICATA').Value := cdsNFSParcela.FieldByName('NUMERO_NOTA').Value;
    cdsNFS.FieldByName('EXPORTADO').Value        := cdsNFSParcela.FieldByName('EXPORTADO').Value;
    cdsNFS.FieldByName('ENDERECO').Value         := Endereco;
    cdsNFS.FieldByName('CIDADE').Value           := Cidade;
    cdsNFS.FieldByName('ESTADO').Value           := Estado;
    cdsNFS.FieldByName('CEP').Value              := CEP;
    cdsNFS.FieldByName('INSCRESTADUAL').Value    := InscrEst;
    cdsNFS.FieldByName('CNPJCPF').Value          := CNPJ;

    tbDuplicata.Post;

    cdsNFSParcela.Next;
   end;
  Screen.Cursor := crDefault;
  frmRelDuplicata := TfrmRelDuplicata.Create( Self );
  frmRelDuplicata.QuickRep1.Preview;

  FreeAndNil( frmRelDuplicata.QuickRep1 );
  FreeAndNil( frmRelDuplicata );
 end;
end;

procedure TFrmDuplicatas.BitBtn2Click(Sender: TObject);
begin
 Screen.Cursor := crAppStart ;
 try
 with dmEF do
  MsExcelOLE( cdsNFS, 'Duplicata' );
 finally
  Screen.Cursor := crDefault;
 end;

end;

procedure TFrmDuplicatas.BitBtn1Click(Sender: TObject);
begin
 Screen.Cursor := crSQLWait;
 try
  with dmqrySEF do
  begin
   if cdsNFS.Active then
      cdsNFS.Close;
   cdsNFS.Params[0].AsDate := dtpIni.Date;
   cdsNFS.Params[1].AsDate := dtpFim.Date;
   cdsNFS.Open;
  end;
 finally
  Screen.Cursor := crDefault;
 end;
end;

procedure TFrmDuplicatas.grdNotaDblClick(Sender: TObject);
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

procedure TFrmDuplicatas.SpeedButton1Click(Sender: TObject);
var R : Integer;
begin
 Screen.Cursor := crSQLWait;
 try
   with dmEF do
   begin
    cdsNFS.First;
    while not cdsNFS.Eof do
    begin
     if not vleEtiqueta.FindRow( cdsNFS.FieldByName('NUMERO_NOTA').AsString, R ) then
        vleEtiqueta.InsertRow( cdsNFS.FieldByName('NUMERO_NOTA').AsString, cdsNFS.FieldByName('DATA_EMISSAO').AsString, True );
     cdsNFS.Duplicata.Next;
    end;
   end;
 finally
  Screen.Cursor := crDefault;
 end;
end;

procedure TFrmDuplicatas.SpeedButton2Click(Sender: TObject);
var i, R : Integer;
begin
 with dmEF do
 begin
  for i := 0 to grdNota.SelectedRows.Count - 1 do
  begin
   cdsDuplicata.GotoBookMark(TBookMark(grdNota.SelectedRows.Items[i]));
   if not vleEtiqueta.FindRow( cdsDuplicata.FieldByName('NUMERO_NOTA').AsString, R ) then
      vleEtiqueta.InsertRow( cdsDuplicata.FieldByName('NUMERO_NOTA').AsString, cdsDuplicata.FieldByName('DATA_EMISSAO').AsString, True );
  end;
 end;
end;

procedure TFrmDuplicatas.SpeedButton3Click(Sender: TObject);
begin
 vleEtiqueta.DeleteRow( vleEtiqueta.Row );
end;

procedure TFrmDuplicatas.SpeedButton4Click(Sender: TObject);
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

procedure TFrmDuplicatas.FormCreate(Sender: TObject);
begin
 Top := 0;
 dtpIni.Date := Date;
 dtpFim.Date := Date;
end;

procedure TFrmDuplicatas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 FrmDuplicatas = nil;
end;

end.
