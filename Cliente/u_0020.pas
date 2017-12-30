unit u_0020;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Mask, Buttons,DB, DBClient, Grids,
  DBGrids;

type
  Tfrm0020 = class(TForm)
    Panel20: TPanel;
    Panel23: TPanel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit3: TMaskEdit;
    Label3: TLabel;
    MaskEdit4: TMaskEdit;
    Label5: TLabel;
    Label6: TLabel;
    MaskEdit2: TMaskEdit;
    Label1: TLabel;
    ComboBox1: TComboBox;
    RadioButton1: TCheckBox;
    CheckBox2: TCheckBox;
    StatusBar1: TStatusBar;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label4: TLabel;
    Panel11: TPanel;
    lblContador: TLabel;
    Label7: TLabel;
    cds0020: TClientDataSet;
    cds0020SUBGRUPO: TStringField;
    cds0020NCMID: TIntegerField;
    cds0020PRODUTOID: TIntegerField;
    cds0020CODIGOJAPAO: TStringField;
    cds0020DESCRICAO: TStringField;
    cds0020LOCALIZACAO: TStringField;
    cds0020ESTOQUEFISICO: TFloatField;
    cds0020ESTOQUESAIDA: TFloatField;
    cds0020ESTOQUEENTRADA: TFloatField;
    cds0020ESTOQUEVALE: TFloatField;
    cds0020ESTOQUEDETERCEIRO: TFloatField;
    cds0020ESTOQUEEMTERCEIRO: TFloatField;
    cds0020SALDO: TFloatField;
    cds0020PRECOMEDIO: TFloatField;
    cds0020SALDOATUAL: TFloatField;
    cds0020UNIDADE: TStringField;
    ds0020: TDataSource;
    RadioGroup2: TRadioGroup;
    chkbxSaldo: TCheckBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure InicializaCds0020;
  public
    { Public declarations }
  end;

var
  frm0020: Tfrm0020;

implementation

uses FuncoesCliente, u_Rel0020, u_Exportar;

{$R *.dfm}



procedure Tfrm0020.BitBtn1Click(Sender: TObject);
var cdsAuxProduto,cdsAuxKardex : TCLientDataSet;
    iSQL : String;
begin
 InicializaCds0020;

 {*** Produto ***}
 cdsAuxProduto := nil;
 iSQL := 'SELECT'+
         '  EF_PRODUTO.EMPRESAID,'+
         '  EF_PRODUTO.PRODUTOID,'+
         '  EF_PRODUTO.SUBGRUPOID,'+
         '  EF_SUBGRUPO.SIGLAGRUPO,'+
         '  EF_PRODUTO.DESCRICAOPORTUGUES,'+
         '  EF_PRODUTO.LOCALIZACAO,'+
         '  EF_PRODUTO.PARTNUMBERID,'+
         '  EF_PRODUTO.NCMID,'+
         '  EF_PRODUTO.UNIDADEID,'+
         '  EF_PRODUTO.ESTOQUEFISICO,'+
         '  EF_PRODUTO.ESTOQUEPEDSAIDA,'+
         '  EF_PRODUTO.ESTOQUEPEDENTRADA,'+
         '  EF_PRODUTO.ESTOQUEVALE,+'+
         '  EF_PRODUTO.ESTOQUEDETERCEIRO ,'+
         '  EF_PRODUTO.ESTOQUEEMTERCEIRO,'+
         '  EF_PRODUTO.ESTOQUEEMPENHO,'+
         '  EF_PRODUTO.CUSTOMEDIO,'+
         '  ( NVL(EF_PRODUTO.ESTOQUEFISICO,0) +'+
         '    NVL(EF_PRODUTO.ESTOQUEPEDSAIDA,0) +'+
         '    NVL(EF_PRODUTO.ESTOQUEDETERCEIRO,0) +'+
         '    NVL(EF_PRODUTO.ESTOQUEVALE,0) +'+
         '    NVL(EF_PRODUTO.ESTOQUEEMPENHO,0) +'+
         '    NVL(EF_PRODUTO.ESTOQUEEMTERCEIRO,0) ) ESTTOTAL'+
         '  FROM'+
         '  EF_PRODUTO,'+
         '  EF_SUBGRUPO'+
         ' WHERE'+
         '  EF_PRODUTO.PRODUTOID >= ' + MaskEdit3.Text +
         '  AND EF_SUBGRUPO.SUBGRUPOID(+) = EF_PRODUTO.SUBGRUPOID '+
         '  AND EF_PRODUTO.PRODUTOID <= '+ MaskEdit4.Text +
         '  AND EF_PRODUTO.EMPRESAID = '+ IntToStr( EmpresaAtualId );

 if RadioGroup2.ItemIndex = 0 then
    iSQL := iSQL + '  AND ( ( EF_PRODUTO.ORIGEM = '+ QuotedStr('N') + ')'+
                   '         OR ( EF_PRODUTO.ORIGEM = '+ QuotedStr('B') +') )';

 if RadioGroup2.ItemIndex = 1 then
    iSQL := iSQL + '  AND ( EF_PRODUTO.ORIGEM = '+ QuotedStr('I')+')';

 if ( RadioButton1.Checked = False ) and ( ComboBox1.Text <> '' ) then
    iSQL := iSQL + ' AND EF_SUBGRUPO.SIGLAGRUPO = '+ QuotedStr( ComboBox1.Text );

 if chkbxSaldo.Checked then
    iSQL := iSQL + ' AND ESTTOTAL > 0';

 try
  ExecDynamicProvider( -1,iSQL,cdsAuxProduto );
 except on
  E : Exception do
  raise Exception.Create(E.Message);
 end;

 cdsAuxProduto.AddIndex('idx1','EMPRESAID;PRODUTOID',[ixPrimary],'','',0 );
 cdsAuxProduto.IndexName := 'idx1';

 {*** Kardex ***}
 cdsAuxKardex := nil;
 iSQL := 'SELECT'+
         '  EF_KARDEX.EMPRESAID,'+
         '  EF_KARDEX.KARDEXID,'+
         '  EF_KARDEX.PRODUTOID,'+
         '  EF_KARDEX.DATAOCORRENCIA,'+
         '  EF_KARDEX.ESTOQUEFISICO,'+
         '  EF_KARDEX.ESTOQUEPEDSAIDA,'+
         '  EF_KARDEX.ESTOQUEPEDENTRADA,'+
         '  EF_KARDEX.ESTOQUEVALE,'+
         '  EF_KARDEX.ESTOQUEDETERCEIRO,'+
         '  EF_KARDEX.ESTOQUEEMTERCEIRO,'+
         '  EF_KARDEX.ESTOQUEEMPENHO,'+
         '  EF_KARDEX.QUANTIDADESALDO,'+
         '  EF_KARDEX.VLRCUSTOMEDIO,'+
         '  EF_KARDEX.VLRCUSTOMEDIOTOTAL'+
         '  FROM'+
         '  EF_KARDEX'+
         ' WHERE '+
         '  EF_KARDEX.EMPRESAID = '+ IntToStr( EmpresaAtualId )+
         '  AND EF_KARDEX.DATAOCORRENCIA <= '+ QuotedStr( MaskEdit1.Text )+
         '  ORDER BY EF_KARDEX.DATAOCORRENCIA';

 try
  ExecDynamicProvider( -1,iSQL,cdsAuxKardex );
 except on
  E : Exception do
  raise Exception.Create(E.Message);
 end;

 cdsAuxKardex.AddIndex('idx1','DATAOCORRENCIA;KARDEXID',[ixPrimary],'','',0 );
 cdsAuxKardex.IndexName := 'idx1';

 cdsAuxProduto.First;
 while not cdsAuxProduto.Eof do
 begin
  if ( MaskEdit2.Text <> '' ) then
     if      CheckBox2.Checked then
             begin
             if Copy( MaskEdit2.Text, 1, Length( MaskEdit2.Text ) ) = Copy( cdsAuxProduto.FieldByName('LOCALIZACAO').AsString, 1, Length( MaskEdit2.Text ) ) then
                begin
                 cdsAuxProduto.Next;
                 lblContador.Caption := cdsAuxProduto.FieldByName('PRODUTOID').AsString;
                 Continue;
                end;
             end
     else if Copy( MaskEdit2.Text, 1, Length( MaskEdit2.Text ) ) <> Copy( cdsAuxProduto.FieldByName('LOCALIZACAO').AsString, 1, Length( MaskEdit2.Text ) ) then
             begin
              cdsAuxProduto.Next;
              lblContador.Caption := cdsAuxProduto.FieldByName('PRODUTOID').AsString;
              Continue;
             end;

  cds0020.Insert;
  if ( not cdsAuxProduto.FieldbyName('NCMID').IsNull ) then
      cds0020NCMID.AsInteger        := cdsAuxProduto.FieldbyName('NCMID').AsInteger;

  cds0020LOCALIZACAO.AsString   := cdsAuxProduto.FieldbyName('LOCALIZACAO').AsString;
  cds0020SUBGRUPO.AsString      := cdsAuxProduto.FieldbyName('SIGLAGRUPO').AsString;
  cds0020PRODUTOID.AsInteger    := cdsAuxProduto.FieldbyName('PRODUTOID').AsInteger;
  cds0020DESCRICAO.AsString     := cdsAuxProduto.FieldbyName('DESCRICAOPORTUGUES').AsString;
  cds0020UNIDADE.AsString       := cdsAuxProduto.FieldbyName('UNIDADEID').AsString;
  cds0020CODIGOJAPAO.AsString   := cdsAuxProduto.FieldbyName('PARTNUMBERID').AsString;

  cdsAuxKardex.Filter   := 'EMPRESAID = '+ cdsAuxProduto.FieldByName('EMPRESAID').AsString +
                           ' AND PRODUTOID = '+ cdsAuxProduto.FieldByName('PRODUTOID').AsString;
  cdsAuxKardex.Filtered := True;
  cdsAuxKardex.IndexName := 'idx1';
  cdsAuxKardex.First;

  if cdsAuxKardex.FieldByName('PRODUTOID').AsInteger <> cdsAuxProduto.FieldByName('PRODUTOID').AsInteger then
     begin
      cds0020ESTOQUEFISICO.AsFloat        := cdsAuxProduto.FieldByName('ESTOQUEFISICO').AsFloat;
      cds0020ESTOQUESAIDA.AsFloat         := cdsAuxProduto.FieldByName('ESTOQUEPEDSAIDA').AsFloat;
      cds0020ESTOQUEENTRADA.AsFloat       := cdsAuxProduto.FieldByName('ESTOQUEVALE').AsFloat;
      cds0020ESTOQUEDETERCEIRO.AsFloat    := cdsAuxProduto.FieldByName('ESTOQUEDETERCEIRO').AsFloat;
      cds0020ESTOQUEEMTERCEIRO.AsFloat    := cdsAuxProduto.FieldByName('ESTOQUEEMTERCEIRO').AsFloat;
      cds0020SALDO.AsFloat                := cdsAuxProduto.FieldByName('ESTTOTAL').AsFloat;
      cds0020SALDOATUAL.AsFloat           := cdsAuxProduto.FieldByName('CUSTOMEDIO').AsFloat * cdsAuxProduto.FieldByName('ESTTOTAL').AsFloat;
      cds0020PRECOMEDIO.AsFloat           := cdsAuxProduto.FieldByName('CUSTOMEDIO').AsFloat;
     end;

      while not cdsAuxKardex.Eof do
      begin
       cds0020ESTOQUEFISICO.AsFloat      := cdsAuxKardex.FieldByName('ESTOQUEFISICO').AsFloat;
       cds0020ESTOQUESAIDA.AsFloat       := cdsAuxKardex.FieldByName('ESTOQUEPEDSAIDA').AsFloat;
       cds0020ESTOQUEENTRADA.AsFloat     := cdsAuxKardex.FieldByName('ESTOQUEPEDENTRADA').AsFloat;
       cds0020ESTOQUEVALE.AsFloat        := cdsAuxKardex.FieldByName('ESTOQUEVALE').AsFloat;
       cds0020ESTOQUEDETERCEIRO.AsFloat  := cdsAuxKardex.FieldByName('ESTOQUEDETERCEIRO').AsFloat;
       cds0020ESTOQUEEMTERCEIRO.AsFloat  := cdsAuxKardex.FieldByName('ESTOQUEEMTERCEIRO').AsFloat;
       cds0020SALDO.AsFloat              := cdsAuxProduto.FieldByName('ESTTOTAL').AsFloat;
       cds0020SALDOATUAL.AsFloat         := cdsAuxKardex.FieldByName('VLRCUSTOMEDIO').AsFloat * cdsAuxKardex.FieldByName('QUANTIDADESALDO').AsFloat;
       cds0020PRECOMEDIO.AsFloat         := cdsAuxKardex.FieldByName('VLRCUSTOMEDIO').AsFloat;
       cdsAuxKardex.Next;
      end;

  cds0020.Post;
  cdsAuxProduto.Next;
  cdsAuxKardex.Filter   := '';
  cdsAuxKardex.Filtered := False;
 end;

// cds0020.IndexFieldNames := 'SUBGRUPO';
 try
  frmRel0020 := TfrmRel0020.Create(nil);
  frmRel0020.QuickRep1.Preview;
 finally
  FreeAndNil( frmRel0020.QuickRep1 );
  FreeAndNil( frmRel0020 );
 end;
end;

procedure Tfrm0020.BitBtn3Click(Sender: TObject);
begin
 frm0020.Close;
end;

procedure Tfrm0020.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action  := cafree;
 frm0020 := nil;
end;

procedure Tfrm0020.BitBtn2Click(Sender: TObject);
begin
 if not cds0020.IsEmpty then
    begin
     frmExportar := TfrmExportar.Create(nil);
     frmExportar.DataSource := ds0020;
     frmExportar.Show;
    end
 else
    MessageDlg('É necessário Gerar o Relatório primeiro!',mtWarning, [mbok],0 );
end;

procedure Tfrm0020.FormCreate(Sender: TObject);
var iSQL : String;
begin
 iSQL := ' SELECT'+
         '   EF_SUBGRUPO.SIGLAGRUPO'+
         '   FROM '+
         '   EF_SUBGRUPO';
 AdicionarCamposCombo( ComboBox1,iSQL,'SIGLAGRUPO' );
end;

procedure Tfrm0020.InicializaCds0020;
begin
 cds0020.EmptyDataSet;
 cds0020.Close;
 cds0020.Open;
end;

end.
