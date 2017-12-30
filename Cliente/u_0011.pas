unit u_0011;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Buttons, DB, DBClient, DBTables,
  Mask, Grids, DBGrids;

type
  Tfrm0011 = class(TForm)
    Panel23: TPanel;
    Label59: TLabel;
    rgpEmpresa: TRadioGroup;
    GroupBox1: TGroupBox;
    chkTodosOS: TCheckBox;
    Panel11: TPanel;
    lblContador: TLabel;
    Label4: TLabel;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox3: TGroupBox;
    ComboBox1: TComboBox;
    Label3: TLabel;
    CheckBox1: TCheckBox;
    ComboBox2: TComboBox;
    Label5: TLabel;
    StatusBar1: TStatusBar;
    chkProdepe: TCheckBox;
    BitBtn10: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    btnFluxoJapao: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn8: TBitBtn;
    ds0011: TDataSource;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    ClientDataSet1: TClientDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    DateField1: TDateField;
    IntegerField3: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    ClientDataSet2: TClientDataSet;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    DateField2: TDateField;
    IntegerField6: TIntegerField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    ComboBox3: TComboBox;
    cds0011Analitico: TClientDataSet;
    cds0011AnaliticoEMPRESAID: TIntegerField;
    cds0011AnaliticoNOTAID: TIntegerField;
    cds0011AnaliticoDATAEMISSAOID: TDateField;
    cds0011AnaliticoITEMID: TIntegerField;
    cds0011AnaliticoGRUPOID: TIntegerField;
    cds0011AnaliticoSIGLA: TStringField;
    cds0011AnaliticoSUBGRUPO: TStringField;
    cds0011AnaliticoSIGLAGRUPO: TStringField;
    cds0011AnaliticoSIGLARECEITA: TStringField;
    cds0011AnaliticoDESCRICAOSIGLA: TStringField;
    cds0011AnaliticoDESCRICAOSUBGRUPO: TStringField;
    cds0011AnaliticoVLRRECEITA: TFloatField;
    cds0011AnaliticoVLRSERVICO: TFloatField;
    cds0011AnaliticoVLRPIS: TFloatField;
    cds0011AnaliticoVLRCOFINS: TFloatField;
    cds0011AnaliticoVLRISS: TFloatField;
    cds0011AnaliticoVLRICMS: TFloatField;
    cds0011AnaliticoVLRIPI: TFloatField;
    cds0011: TClientDataSet;
    cds0011RECEITAID: TIntegerField;
    cds0011GRUPOID: TIntegerField;
    cds0011SIGLA: TStringField;
    cds0011SIGLAGRUPO: TStringField;
    cds0011DESCRICAORECEITA: TStringField;
    cds0011DATASAIDA: TDateField;
    cds0011NOTAID: TIntegerField;
    cds0011TIPONOTA: TStringField;
    cds0011NOMENOTA: TStringField;
    cds0011CFOP: TIntegerField;
    cds0011NATUREZAOPID: TIntegerField;
    cds0011DESCRICAONATUREZA: TStringField;
    cds0011VLRTOTALRECEITA: TFloatField;
    cds0011OSID: TStringField;
    cds0011PEDIDOID: TIntegerField;
    cds0011VLRDESCONTO: TFloatField;
    cds0011VLRCONTABIL: TFloatField;
    cds0011VLRICMS: TFloatField;
    cds0011VLRIPI: TFloatField;
    cds0011VLRPIS: TFloatField;
    cds0011TIPO: TStringField;
    cds0011VLRISS: TFloatField;
    cds0011VLRIR: TFloatField;
    cds0011VLRSERVICO: TFloatField;
    cds0011VLRCOFINS: TFloatField;
    cds0011PRODUTOID: TIntegerField;
    cds0011DESCRICAOPRODUTO: TStringField;
    cds0011VLRUNITARIOPRODUTO: TFloatField;
    cds0011VLRICMSPRODUTO: TFloatField;
    cds0011QUANTIDADE: TIntegerField;
    cds0011VLRIPIPRODUTO: TFloatField;
    cds0011VLRPISPRODUTO: TFloatField;
    cds0011VLRCOFINSPRODUTO: TFloatField;
    cds0011VLRTOTALPRODUTO: TFloatField;
    cds0011CIDADE: TStringField;
    cds0011SIGLAUFID: TStringField;
    cds0011NOVOUSADO: TStringField;
    cds0011SUBGRUPOID: TIntegerField;
    cds0011SUBGRUPO: TStringField;
    cds0011VLRICMSPROD: TFloatField;
    cds0011VLRIPIPROD: TFloatField;
    cds0011VLRPISPROD: TFloatField;
    cds0011VLRCOFINSPROD: TFloatField;
    cds0011VLRTOTALPROD: TFloatField;
    cds0011VLRUNITARIOPROD: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure btnFluxoJapaoClick(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
    procedure AbreNFSVenMercadoria;
    procedure AbreNFSItem;
    procedure AbreNFSVenMercGrupo;
    procedure AbreNFSItemVenMercGrupo;
    procedure AbreNFSVenMercSubGrupo;
    procedure AbreNFSItemVenSubGrupo;
    procedure AbreNFSReceita;
    procedure AbreNFSServico;
    procedure AbreNFSJapao;
    procedure AbreNFSItemJapao;
    procedure AbreNFSServicoJapao( var cdsAuxNFSServico : TClientDataSet );
    procedure GeraRelatorioVendas( Sender : TObject );
    procedure InicializaCds0011;
    function NaturezaVenda( NfsId,DataEmissaoid : String ):integer;
  public
    { Public declarations }
   Devolucao  : Integer;
   Titulo     : String;
  end;

var
  frm0011         : Tfrm0011;
  cdsPai,cdsFilho : TClientDataSet;

implementation

uses FuncoesCliente, u_Rel0011, u_dmAS, u_Rel0011Dev, u_rel0011A,
  u_Rel0011B, u_Rel0011C, Math, u_Exportar;

{$R *.dfm}

procedure Tfrm0011.FormCreate(Sender: TObject);
var iSQL : String;
begin
 iSQL := ' SELECT'+
         '   DISTINCT EF_RECEITA.SIGLA'+
         '   FROM '+
         '   EF_RECEITA';
 AdicionarCamposCombo( ComboBox1,iSQL,'SIGLA' );

 iSQL := ' SELECT'+
         '   EF_SUBGRUPO.SIGLAGRUPO'+
         '   FROM '+
         '   EF_SUBGRUPO';
 AdicionarCamposCombo( ComboBox2,iSQL,'SIGLAGRUPO' );
 iSQL := ' SELECT'+
         '   EF_EMPRESA.EMPRESAID'+
         '   FROM '+
         '   EF_EMPRESA';
 AdicionarCamposCombo( ComboBox3,iSQL,'EMPRESAID' );
end;

procedure Tfrm0011.BitBtn10Click(Sender: TObject);
begin
 GeraRelatorioVendas( Sender );
end;

procedure Tfrm0011.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 cds0011.Close;
 Action  := cafree;
 Frm0011 := nil;
end;

procedure Tfrm0011.AbreNFSVenMercadoria;
var iSQL : String;
begin
  cdsPai := nil;
  iSQL := 'SELECT'+
         '  EF_NFS.EMPRESAID,'+
         '  EF_NFS.NFSID,'+
         '  EF_NFS.DATAEMISSAOID,'+
         '  EF_NATUREZAOP.CFOP,'+
         '  EF_NFS.NATUREZAOPID,'+
         '  EF_NATUREZAOP.MOVIMENTOESTOQUE,'+
         '  EF_NATUREZAOP.VENDADEFINITIVA,'+
         '  EF_NATUREZAOP.TIPOMOVIMENTO,'+
         '  EF_NATUREZAOP.VENDAFATANTECIPADO,'+
         '  EF_NFS.NOME,'+
         '  EF_NFS.OSID,'+
         '  EF_NFS.PDSID,'+
         '  EF_NFS.TIPONOTA'+
         '  FROM'+
         '  EF_NFS,'+
         '  EF_NATUREZAOP'+
         '  WHERE'+
         '  NVL( EF_NFS.CANCELADA, 0 ) = 0 '+
         '  AND EF_NATUREZAOP.NATUREZAOPID = EF_NFS.NATUREZAOPID'+
         '  AND EF_NATUREZAOP.MOVIMENTOESTOQUE = '+ QuotedStr('N');

 if rgpEmpresa.ItemIndex = 1 then
    iSQL := iSQL + ' AND EF_NFS.EMPRESAID = '+ IntToStr( EmpresaAtualId );

 if ( MaskEdit1.Text <> '  /  /    ' ) and ( MaskEdit1.Text <> '  /  /    '  ) then
    iSQL := iSQL + '  AND EF_NFS.DATAEMISSAOID BETWEEN '+ QuotedStr( MaskEdit1.Text ) +
                   '  AND '+ QuotedStr( MaskEdit2.Text );

    iSQL := iSQL + ' ORDER BY EF_NFS.NFSID,EF_NFS.DATAEMISSAOID';

 try
  ExecDynamicProvider( -1,iSQL,cdsPai );
 except on
  E : Exception do
  raise Exception.Create(E.Message);
 end;
end;

procedure Tfrm0011.AbreNFSItem;
var iSQL : String;
begin
 cdsFilho := nil;
 iSQL := ' SELECT'+
         '  EF_NFSITEM.EMPRESAID, '+
         '  EF_NFSITEM.NFSID,'+
         '  EF_NFSITEM.DATAEMISSAOID,'+
         '  EF_NFSITEM.VLRPRECOUNITARIO,'+
         '  EF_NFSITEM.QUANTIDADE,'+
         '  EF_NFSITEM.VLRICMS,'+
         '  EF_NFSITEM.VLRIPI,'+
         '  EF_NFSITEM.VLRISENTASIPI,'+
         '  EF_NFSITEM.VLRPIS,'+
         '  EF_NFSITEM.VLRCOFINS,'+
         '  EF_NFSITEM.VLRDESCONTO,'+
         '  EF_NFSITEM.VLRPRECOTOTAL,'+
         '  EF_NFSITEM.PRODUTOID,'+
         '  EF_PRODUTO.ORIGEM,'+
         '  EF_PRODUTO.INCENTIVOICMS,'+
         '  EF_PRODUTO.DESCRICAOPORTUGUES,'+
         '  EF_SUBGRUPO.SUBGRUPOID,'+
         '  EF_SUBGRUPO.SIGLAGRUPO'+
         '  FROM'+
         '  EF_NFS,'+
         '  EF_NFSITEM,'+
         '  EF_NATUREZAOP,'+
         '  EF_PRODUTO,'+
         '  EF_SUBGRUPO'+
         ' WHERE'+
         '  EF_NATUREZAOP.NATUREZAOPID ='+
         '  EF_NFS.NATUREZAOPID'+
         '  AND NVL( EF_NFS.CANCELADA, 0 ) = 0 '+
         '  AND EF_PRODUTO.EMPRESAID =   EF_NFS.EMPRESAID'+
         '  AND EF_PRODUTO.PRODUTOID(+) =   EF_NFSITEM.PRODUTOID'+
         '  AND EF_SUBGRUPO.SUBGRUPOID(+) =   EF_PRODUTO.SUBGRUPOID'+
         '  AND EF_NATUREZAOP.MOVIMENTOESTOQUE = '+ QuotedStr('N')+
         '  AND EF_NFS.EMPRESAID = EF_NFSITEM.EMPRESAID(+) '+
         '  AND EF_NFS.NFSID = EF_NFSITEM.NFSID(+) '+
         '  AND EF_NFS.DATAEMISSAOID = EF_NFSITEM.DATAEMISSAOID ';

 if rgpEmpresa.ItemIndex = 1 then
    iSQL := iSQL + ' AND EF_NFS.EMPRESAID = '+ IntToStr( EmpresaAtualId );

 if chkProdepe.State = cbChecked then
    iSQL := iSQL + ' AND EF_PRODUTO.INCENTIVOICMS = 1'; 

 if ( MaskEdit1.Text <> '  /  /    ' ) and ( MaskEdit1.Text <> '  /  /    '  ) then
    iSQL := iSQL + '  AND EF_NFS.DATAEMISSAOID BETWEEN '+ QuotedStr( MaskEdit1.Text ) +
                   '  AND '+ QuotedStr( MaskEdit2.Text );
 iSQL := iSQL + ' ORDER BY EF_NFS.NFSID,EF_NFS.DATAEMISSAOID';

 try
  ExecDynamicProvider( -1,iSQL,cdsFilho );
 except on
  E : Exception do
  raise Exception.Create(E.Message);
 end;

 cdsFilho.AddIndex('idx1','NFSID;DATAEMISSAOID',[ixPrimary],'','',0);
 cdsFilho.IndexName := 'idx1';
end;

procedure Tfrm0011.BitBtn3Click(Sender: TObject);
begin
 GeraRelatorioVendas( Sender );
end;

procedure Tfrm0011.GeraRelatorioVendas( Sender : TObject );
var  Contador : Integer;
     Vlr1, Vlr2, Vlr3, Vlr4, Vlr5, Vlr6 : Currency;
     ICMSI,ICMSN,COFINSI,COFINSN  : Currency;
     IPII,IPIN,PISI,PISN : Currency;
begin
 Devolucao  := 0;
 InicializaCds0011;
 Titulo     :=  'Relatorio de Receita de Venda Mercadorias no periodo de ';
 Contador   := 0;
 AbreNFSVenMercadoria;
 AbreNFSItem;

 cdsPai.First;
 while not cdsPai.eof do
 begin
  Vlr1    :=0;
  Vlr2    :=0;
  Vlr3    :=0;
  Vlr4    :=0;
  Vlr5    :=0;
  Vlr6    :=0;
  ICMSN   :=0;
  ICMSI   :=0;
  IPIN    :=0;
  IPII    :=0;
  COFINSN :=0;
  COFINSI :=0;
  PISN    :=0;
  PISI    :=0;

  if      chkProdepe.State = cbChecked then
          begin
           if ( ( cdsPai.FieldByName('TIPOMOVIMENTO').Value <>  'S' ) and ( cdsPai.FieldByName('TIPOMOVIMENTO').Value <>  'N') ) then
              begin
               cdsPai.Next;
               Inc( Contador );
               Continue;
              end;

           if  cdsPai.FieldByName('VENDAFATANTECIPADO').Value = 1 then
             begin
              cdsPai.Next;
              Inc( Contador );
              Continue;
             end;
          end
  else if cdsPai.FieldByName('VENDADEFINITIVA').Value = 0 then
          begin
           cdsPai.Next;
           Inc( Contador );
           Continue;
          end;

  cdsFilho.Filter   :=  'EMPRESAID = ' + cdsPai.FieldByName('EMPRESAID').AsString + ' AND ' +
                        'NFSID = '+ CdsPai.FieldByName('NFSID').AsString +' AND '+
                       'DATAEMISSAOID = '+ QuotedStr( CdsPai.FieldByName('DATAEMISSAOID').AsString );
  cdsFilho.Filtered := True;
  cdsFilho.First;
  while not cdsFilho.Eof do
  begin
   if cdsFilho.FieldByName('ORIGEM').Value = 'I' then
      begin
       Vlr1    := Vlr1    + cdsFilho.FieldByName('VLRPRECOTOTAL').Value;
       Vlr2    := Vlr2    + cdsFilho.FieldByName('VLRDESCONTO').Value;
       Vlr3    := Vlr3    + cdsFilho.FieldByName('VLRPRECOTOTAL').Value + cdsFilho.FieldByName('VLRIPI').Value;
       ICMSI   := ICMSI   + cdsFilho.FieldByName('VLRICMS').Value;
       IPII    := IPII    + cdsFilho.FieldByName('VLRIPI').Value;
       COFINSI := COFINSI + cdsFilho.FieldByName('VLRCOFINS').Value;
       PISI    := PISI    + cdsFilho.FieldByName('VLRPIS').Value;
      end
   else
      begin
       Vlr4    := Vlr4    + cdsFilho.FieldByName('VLRPRECOTOTAL').Value;
       Vlr5    := Vlr5    + cdsFilho.FieldByName('VLRDESCONTO').Value;
       Vlr6    := Vlr6    + cdsFilho.FieldByName('VLRPRECOTOTAL').Value + cdsFilho.FieldByName('VLRIPI').Value;
       ICMSN   := ICMSN   + cdsFilho.FieldByName('VLRICMS').Value;
       IPIN    := IPIN    + cdsFilho.FieldByName('VLRIPI').Value;
       COFINSN := COFINSN + cdsFilho.FieldByName('VLRCOFINS').Value;
       PISN    := PISN    + cdsFilho.FieldByName('VLRPIS').Value;
      end;

   cdsFilho.Next;
  end;

  if     TButton( Sender ).Tag = 1 then
         begin
          cdsFilho.First;
          while not cdsFilho.Eof do
          begin
           cds0011.Insert;
           cds0011RECEITAID.Value           := 1;
           cds0011DESCRICAORECEITA.Value    := 'Importados';
           cds0011DATASAIDA.AsDateTime      := cdsPai.FieldByName('DATAEMISSAOID').AsDateTime;
           cds0011NOTAID.Value              := cdsPai.FieldByName('NFSID').Value;
           cds0011TIPONOTA.Value            := '';
           cds0011CFOP.Value                := cdsPai.FieldByName('CFOP').Value;
           cds0011NATUREZAOPID.Value        := cdsPai.FieldByName('NATUREZAOPID').Value;
           cds0011NOMENOTA.AsString         := cdsPai.FieldByName('NOME').AsString;
           cds0011VLRTOTALRECEITA.Value     := Vlr1 + Vlr4;
           cds0011VLRDESCONTO.Value         := Vlr2 + Vlr5;
           cds0011VLRCONTABIL.AsFloat       := Vlr3 + Vlr6;
           cds0011OSID.AsString             := cdsPai.FieldByName('OSID').AsString;
           cds0011PEDIDOID.Value            := cdsPai.FieldByName('PDSID').Value;
           cds0011VLRICMS.Value             := ICMSI;
           cds0011VLRIPI.Value              := IPII;
           cds0011VLRPIS.Value              := PISI;
           cds0011VLRCOFINS.Value           := COFINSI;
           cds0011PRODUTOID.Value           := cdsFilho.FieldByName('PRODUTOID').Value;
           cds0011DESCRICAOPRODUTO.AsString := cdsFilho.FieldByName('DESCRICAOPORTUGUES').AsString;
           cds0011VLRUNITARIOPROD.Value     := cdsFilho.FieldByName('VLRPRECOUNITARIO').Value;
           cds0011QUANTIDADE.Value          := cdsFilho.FieldByName('QUANTIDADE').Value;
           cds0011VLRIPIPROD.Value          := cdsFilho.FieldByName('VLRIPI').Value;
           cds0011VLRICMSPROD.Value         := cdsFilho.FieldByName('VLRICMS').Value;
           cds0011VLRPISPROD.Value          := cdsFilho.FieldByName('VLRPIS').Value;
           cds0011VLRCOFINSPROD.Value       := cdsFilho.FieldByName('VLRCOFINS').Value;
           cds0011VLRTOTALPROD.Value     := cdsFilho.FieldByName('VLRPRECOTOTAL').Value;
           cds0011.Post;
           Inc( Contador );
           lblContador.Caption := IntToStr(Contador );
           lblContador.Refresh;
           cdsFilho.Next;
          end;
         end
  else begin
        if ( Vlr1 > 0 ) or ( IPII > 0 ) then
           begin
            cds0011.Insert;
            cds0011RECEITAID.Value := 1;
            cds0011DESCRICAORECEITA.Value := 'Importados';
            cds0011DATASAIDA.AsDateTime   := cdsPai.FieldByName('DATAEMISSAOID').AsDateTime;
            cds0011NOTAID.Value           := cdsPai.FieldByName('NFSID').Value;
            cds0011TIPONOTA.Value         := '';
            cds0011CFOP.Value             := cdsPai.FieldByName('CFOP').Value;
            cds0011NATUREZAOPID.Value     := cdsPai.FieldByName('NATUREZAOPID').Value;
            cds0011NOMENOTA.AsString      := cdsPai.FieldByName('NOME').AsString;
            cds0011VLRTOTALRECEITA.Value  := Vlr1;
            cds0011VLRDESCONTO.Value      := Vlr2;
            cds0011VLRCONTABIL.AsFloat    := Vlr3;
            cds0011OSID.AsString          := cdsPai.FieldByName('OSID').AsString;
            cds0011PEDIDOID.Value         := cdsPai.FieldByName('PDSID').Value;
            cds0011VLRICMS.Value          := ICMSI;
            cds0011VLRIPI.Value           := IPII;
            cds0011VLRPIS.Value           := PISI;
            cds0011VLRCOFINS.Value        := COFINSI;
            cds0011.Post;
            Inc( Contador );
            lblContador.Caption := IntToStr(Contador );
            lblContador.Refresh
           end;

        if ( Vlr4 > 0 ) or ( IPIN > 0 ) then
           begin
            cds0011.Insert;
            cds0011RECEITAID.Value := 2;
            cds0011DESCRICAORECEITA.Value := 'Nacionais';
            cds0011DATASAIDA.AsDateTime   := cdsPai.FieldByName('DATAEMISSAOID').AsDateTime;
            cds0011NOTAID.Value           := cdsPai.FieldByName('NFSID').Value;
            cds0011TIPONOTA.Value         := cdsPai.FieldByName('TIPONOTA').Value;
            cds0011CFOP.Value             := cdsPai.FieldByName('CFOP').Value;
            cds0011NATUREZAOPID.Value     := cdsPai.FieldByName('NATUREZAOPID').Value;
            cds0011NOMENOTA.AsString      := cdsPai.FieldByName('NOME').AsString;
            cds0011VLRTOTALRECEITA.Value  := Vlr4;
            cds0011VLRDESCONTO.Value      := Vlr5;
            cds0011VLRCONTABIL.Value      := Vlr6;
            cds0011OSID.AsString          := cdsPai.FieldByName('OSID').AsString;
            cds0011PEDIDOID.Value         := cdsPai.FieldByName('PDSID').Value;
            cds0011VLRICMS.Value          := ICMSN;
            cds0011VLRIPI.Value           := IPIN;
            cds0011VLRPIS.Value           := PISN;
            cds0011VLRCOFINS.Value        := COFINSN;
            cds0011.Post;
            Inc( Contador );
            lblContador.Caption := IntToStr(Contador);
            lblContador.Refresh
           end;
       end;
  cdsPai.Next
 end;

 cds0011.IndexFieldNames := 'RECEITAID;NOTAID';

 if TButton( Sender ).Tag = 1 then
    begin
     if chkProdepe.State = cbChecked then
        Titulo :=  'Relatório de Notas Fiscais de Saídas com Mercadorias Incentivadas de '
     else
        Titulo :=  'Relatorio de Receita de Venda Mercadorias Detalhadas no Periodo de ';

     try
      FrmRel0011Dev := TFrmRel0011Dev.Create(Self);

      if chkProdepe.State = cbChecked then
         begin
          FrmRel0011Dev.qrlblProdete.Enabled      := True;
          FrmRel0011Dev.qrlblTotalReceita.Enabled := False;
          FrmRel0011Dev.qrdbTotalReceita.Enabled  := False;
         end;

      FrmRel0011Dev.Quickrep1.Preview;
     finally
      FreeAndNil( frmRel0011Dev.QuickRep1 );
      FreeAndNil( FrmRel0011Dev );
     end;
    end
 else begin
       try
        frmRel0011 := TfrmRel0011.Create(nil);
        frmRel0011.QuickRep1.Preview;
       finally
        FreeAndNil( frmRel0011.QuickRep1 );
        FreeAndNil( frmRel0011 );
       end;
      end;
// cds0011.IndexFieldNames := '';
end;

procedure Tfrm0011.InicializaCds0011;
begin
 cds0011.EmptyDataSet;
 cds0011.Close;
 cds0011.Open;
end;

function Tfrm0011.NaturezaVenda( NfsId, DataEmissaoid: String ): integer;
var iSQL : String;
    cdsAuxNaturezaOp,cdsAuxNfs : TClientDataSet;
begin
 Result := 0;
 cdsAuxNfs := nil;
 iSQL := 'SELECT'+
         '  EF_NFS.NATUREZAOPID'+
         '  FROM '+
         '  EF_NFS'+
         ' WHERE '+
         '  EF_NFS.NFSID = '+ NfsId +
         '  AND EF_NFS.DATAEMISSAOID = '+ QuotedStr( DataEmissaoid );
 try
  ExecDynamicProvider(-1,iSQL,cdsAuxNfs);
 except on
  E : Exception do
  raise Exception.Create( E.Message );
 end;

 if not cdsAuxNfs.IsEmpty then
    begin
     cdsAuxNaturezaOp := nil;
     iSQL := 'SELECT'+
             '  EF_NATUREZAOP.VENDADEFINITIVA'+
             '  FROM'+
             '  EF_NATUREZAOP'+
             ' WHERE EF_NATUREZAOP.NATUREZAOPID = ' + cdsAuxNfs.FieldByName('NATUREZAOPID').AsString;
     try
      ExecDynamicProvider( -1,iSQL,cdsAuxNaturezaOp );
     except on
      E : Exception do
      raise Exception.Create( E.Message );
     end;

     if not cdsAuxNaturezaOp.IsEmpty then
        Result := cdsAuxNaturezaOp.FieldByName('VENDADEFINITIVA').AsInteger;
    end;
end;

procedure Tfrm0011.BitBtn7Click(Sender: TObject);
var iSQL : String;
begin
 Devolucao := 1;
 InicializaCds0011;
 iSQL := 'SELECT'+
         '  EF_NFE.EMPRESAID,'+
         '  EF_NFE.NFEID,'+
         '  EF_NFE.DATAEMISSAOID,'+
         '  EF_NFE.DATAENTRADA,'+
         '  EF_NFE.NFSID,'+
         '  EF_NFE.DATAEMISSAONFSID,'+
         '  EF_NFE.NATUREZAOPID,'+
         '  EF_NATUREZAOP.DESCRICAOOPERACAONOTA,'+
         '  EF_NATUREZAOP.CFOP,'+
         '  EF_NFE.PDEID,'+
         '  EF_NFE.OSID,'+
         '  EF_NFE.TIPONOTA,'+
         '  EF_NFE.NOME,'+
         '  EF_NFE.VLRTOTALNOTA,'+
         '  EF_NFE.VLRTOTALPRODUTO,'+
         '  EF_NFE.VLRTOTALICMS,'+
         '  EF_NFE.VLRTOTALIPI,'+
         '  EF_NFE.VLRTOTALPIS,'+
         '  EF_NFE.VLRTOTALCOFINS'+
         '  FROM'+
         '  EF_NFE,'+
         '  EF_NATUREZAOP'+
         ' WHERE'+
         '  EF_NATUREZAOP.NATUREZAOPID = EF_NFE.NATUREZAOPID'+
         '  AND EF_NFE.DATAENTRADA IS NOT NULL'+
         '  AND EF_NATUREZAOP.MOVIMENTOESTOQUE = '+ QuotedStr('V')+
         '  AND EF_NATUREZAOP.CFOP <> 1949'+
         '  AND EF_NATUREZAOP.CFOP <> 2949';

 if rgpEmpresa.ItemIndex = 1 then
    iSQL := iSQL + ' AND EF_NFE.EMPRESAID = '+ IntToStr( EmpresaAtualId );

 if chkTodosOS.Checked then
    iSQL := iSQL + ' AND EF_NFE.OSID IS NOT NULL ';

 if ( MaskEdit1.Text <> '  /  /    ' ) and ( MaskEdit1.Text <> '  /  /    '  ) then
    iSQL := iSQL + '  AND EF_NFE.DATAENTRADA BETWEEN '+ QuotedStr( MaskEdit1.Text ) +
                   '  AND '+ QuotedStr( MaskEdit2.Text );
 iSQL := iSQL + ' ORDER BY EF_NFE.NFEID,EF_NFE.DATAENTRADA';

 try
  ExecDynamicProvider( -1,iSQL,cdsPai );
 except on
  E : Exception do
  raise Exception.Create(E.Message);
 end;

 cdsPai.First;
 while not cdsPai.Eof do
 begin
  cds0011.Insert;
  cds0011RECEITAID.Value            := cdsPai.FieldByName('NATUREZAOPID').Value;
  cds0011DESCRICAORECEITA.AsString  := cdsPai.FieldByName('DESCRICAOOPERACAONOTA').AsString;
  cds0011DATASAIDA.Value            := cdsPai.FieldByName('DATAEMISSAOID').Value;
  cds0011NOTAID.Value               := cdsPai.FieldByName('NFEID').Value;
  cds0011TIPO.Value                 := '';
  cds0011CFOP.Value                 := cdsPai.FieldByName('CFOP').Value;
  cds0011DESCRICAONATUREZA.AsString := cdsPai.FieldByName('DESCRICAOOPERACAONOTA').AsString;
  cds0011NOMENOTA.AsString          := cdsPai.FieldByName('NOME').AsString;
  cds0011VLRTOTALRECEITA.Value      := cdsPai.FieldByName('VLRTOTALPRODUTO').Value;
  cds0011VLRCONTABIL.Value          := cdsPai.FieldByName('VLRTOTALNOTA').Value;
  cds0011OSID.AsString              := cdsPai.FieldByName('OSID').AsString;
  cds0011VLRICMS.Value              := cdsPai.FieldByName('VLRTOTALICMS').Value;
  cds0011VLRIPI.Value               := cdsPai.FieldByName('VLRTOTALIPI').Value;

  cds0011VLRPIS.Value      := 0;
  cds0011VLRCOFINS.Value   := 0;
  if NaturezaVenda( cdsPai.FieldByName('NFSID').AsString,
                    cdsPai.FieldByName('DATAEMISSAONFSID').AsString ) = 1 then
     begin
      cds0011VLRPIS.Value    := cdsPai.FieldByName('VLRTOTALPIS').Value;
      cds0011VLRCOFINS.Value := cdsPai.FieldByName('VLRTOTALCOFINS').Value;
     end;

  cds0011.Post;
  cdsPai.Next;
 end;

 cds0011.IndexFieldNames := 'RECEITAID;NOTAID';
 try
  frmRel0011 := TfrmRel0011.Create(nil);
  frmRel0011.QuickRep1.Preview;
 finally
  FreeAndNil( frmRel0011.QuickRep1 );
  FreeAndNil( frmRel0011 );
 end;
 cds0011.IndexFieldNames := '';
end;

procedure Tfrm0011.AbreNFSVenMercGrupo;
var iSQL : String;
begin
 cdsPai := nil;
 iSQL := 'SELECT'+
         '  EF_NFS.EMPRESAID,'+
         '  EF_NFS.NFSID,'+
         '  EF_NFS.DATAEMISSAOID,'+
         '  EF_NATUREZAOP.CFOP,'+
         '  EF_NFS.NATUREZAOPID,'+
         '  EF_NATUREZAOP.DESCRICAOOPERACAONOTA,'+
         '  EF_NFS.NOME,'+
         '  EF_NFS.OSID,'+
         '  EF_NFS.PDSID,'+
         '  EF_NFS.TIPONOTA'+
         '  FROM'+
         '  EF_NFS,'+
         '  EF_NATUREZAOP'+
         '  WHERE'+
         '  EF_NATUREZAOP.NATUREZAOPID = EF_NFS.NATUREZAOPID'+
         '  AND EF_NATUREZAOP.MOVIMENTOESTOQUE = '+ QuotedStr('N')+
         '  AND EF_NATUREZAOP.VENDADEFINITIVA = 1'+
         '  AND NVL( EF_NFS.CANCELADA, 0 ) = 0 ';

 if rgpEmpresa.ItemIndex = 1 then
    iSQL := iSQL + ' AND EF_NFS.EMPRESAID = '+ IntToStr( EmpresaAtualId );

 if ( MaskEdit1.Text <> '  /  /    ' ) and ( MaskEdit1.Text <> '  /  /    '  ) then
    iSQL := iSQL + '  AND EF_NFS.DATAEMISSAOID BETWEEN '+ QuotedStr( MaskEdit1.Text ) +
                   '  AND '+ QuotedStr( MaskEdit2.Text );
    iSQL := iSQL + ' ORDER BY EF_NFS.NFSID,EF_NFS.DATAEMISSAOID';

 try
  ExecDynamicProvider( -1,iSQL,cdsPai );
 except on
  E : Exception do
  raise Exception.Create(E.Message);
 end;
end;

procedure Tfrm0011.AbreNFSItemVenMercGrupo;
var iSQL : String;
begin
 cdsFilho := nil;
 iSQL := 'SELECT'+
         '  EF_NFSITEM.EMPRESAID,'+  
         '  EF_NFSITEM.NFSID,'+
         '  EF_NFSITEM.DATAEMISSAOID,'+
         '  EF_NFSITEM.VLRICMS,'+
         '  EF_NFSITEM.VLRIPI,'+
         '  EF_NFSITEM.VLRPIS,'+
         '  EF_NFSITEM.VLRCOFINS,'+
         '  EF_NFSITEM.VLRDESCONTO,'+
         '  EF_NFSITEM.VLRPRECOTOTAL,'+
         '  EF_NFSITEM.PRODUTOID,'+
         '  EF_PRODUTO.DESCRICAOPORTUGUES,'+
         '  EF_GRUPO.SIGLAGRUPO'+
         '  FROM'+
         '  EF_NFS,'+
         '  EF_NFSITEM,'+
         '  EF_NATUREZAOP,'+
         '  EF_PRODUTO,'+
         '  EF_GRUPO'+
         ' WHERE'+
         '  EF_NATUREZAOP.NATUREZAOPID =  EF_NFS.NATUREZAOPID'+
         '  AND EF_PRODUTO.EMPRESAID =   EF_NFS.EMPRESAID'+
         '  AND EF_PRODUTO.PRODUTOID(+) =   EF_NFSITEM.PRODUTOID'+
         '  AND EF_NATUREZAOP.MOVIMENTOESTOQUE = '+ QuotedStr('N')+
         '  AND EF_NATUREZAOP.VENDADEFINITIVA = 1'+
         '  AND NVL( EF_NFS.CANCELADA, 0 ) = 0 '+
         '  AND EF_NFSITEM.EMPRESAID = EF_NFS.EMPRESAID'+
         '  AND EF_NFSITEM.NFSID = EF_NFS.NFSID'+
         '  AND EF_NFSITEM.DATAEMISSAOID = EF_NFS.DATAEMISSAOID'+
         '  AND EF_PRODUTO.GRUPOID = EF_GRUPO.GRUPOID(+)';

 if rgpEmpresa.ItemIndex = 1 then
    iSQL := iSQL + ' AND EF_NFS.EMPRESAID = '+ IntToStr( EmpresaAtualId );

 if ( MaskEdit1.Text <> '  /  /    ' ) and ( MaskEdit1.Text <> '  /  /    '  ) then
    iSQL := iSQL + '  AND EF_NFSITEM.DATAEMISSAOID BETWEEN '+ QuotedStr( MaskEdit1.Text )+
                   '  AND '+ QuotedStr( MaskEdit2.Text );
 iSQL := iSQL + ' ORDER BY EF_NFSITEM.NFSID,EF_NFSITEM.DATAEMISSAOID';

 try
  ExecDynamicProvider( -1,iSQL,cdsFilho );
 except on
  E : Exception do
  raise Exception.Create(E.Message);
 end;

 cdsFilho.AddIndex('idx1','EMPRESAID;NFSID;DATAEMISSAOID',[ixPrimary],'','',0);
 cdsFilho.IndexName := 'idx1';
end;

procedure Tfrm0011.BitBtn6Click(Sender: TObject);
var
   nC  : Integer;
   Vlr1 : Currency;
   Vlr2 : Currency;
   Vlr3 : Currency;
   Vlr4 : Currency;
   Vlr5 : Currency;
   Vlr6 : Currency;
   Vlr11 : Currency;
   Vlr21 : Currency;
   Vlr31 : Currency;
   Vlr41 : Currency;
   Vlr51 : Currency;
   Vlr61 : Currency;
   ICMS1,ICMS2,ACOFINS1,ACOFINS2 : Currency;
   IPI1,IPI2,APIS1,APIS2 : Currency;
   ICMS3,ICMS4,COFINS3,COFINS4 : Currency;
   IPI3,IPI4,PIS3,PIS4 : Currency;
   Contador : Integer;
begin
 Contador := 0;
 Devolucao := 0;
 InicializaCds0011;
 AbreNFSVenMercGrupo;
 AbreNFSItemVenMercGrupo;

 cdsPai.First;
 while not cdsPai.Eof do
 begin
  Vlr1  :=0;
  Vlr2  :=0;
  Vlr3  :=0;
  Vlr4  :=0;
  Vlr5  :=0;
  Vlr6  :=0;
  Vlr11 :=0;
  Vlr21 :=0;
  Vlr31 :=0;
  Vlr41 :=0;
  Vlr51 :=0;
  Vlr61 :=0;
  ICMS1  :=0;
  ICMS2  :=0;
  IPI1   :=0;
  IPI2   :=0;
  ACOFINS1:=0;
  ACOFINS2:=0;
  APIS1   :=0;
  APIS2   :=0;
  ICMS3  :=0;
  ICMS4  :=0;
  IPI3   :=0;
  IPI4   :=0;
  COFINS3:=0;
  COFINS4:=0;
  PIS3   :=0;
  PIS4   :=0;

  cdsFilho.Filter   := 'EMPRESAID = ' + cdsPai.FieldByName('EMPRESAID').AsString + ' AND ' +
                       'NFSID = '+ CdsPai.FieldByName('NFSID').AsString +' AND '+
                       'DATAEMISSAOID = '+ QuotedStr( CdsPai.FieldByName('DATAEMISSAOID').AsString );
  cdsFilho.Filtered := True;
  cdsFilho.First;
  while not cdsFilho.Eof Do
  begin
   if      Trim( cdsFilho.FieldByName('SIGLAGRUPO').Value) = 'US' then
           begin
            Vlr1     := Vlr1     + cdsFilho.FieldByName('VLRPRECOTOTAL').value;
            Vlr3     := Vlr3     + ( cdsFilho.FieldByName('VLRPRECOTOTAL').value + cdsFilho.FieldByname('VLRIPI').Value );
            ICMS1    := ICMS1    + cdsFilho.FieldByName('VLRICMS').Value;
            IPI1     := IPI1     + cdsFilho.FieldByName('VLRIPI').Value;
            ACOFINS1 := ACOFINS1 + cdsFilho.FieldByName('VLRCOFINS').Value;
            APIS1    := APIS1    + cdsFilho.FieldByName('VLRPIS').Value;
           end
   else if Trim( cdsFilho.FieldByName('SIGLAGRUPO').Value) = 'RX' then
           begin
            Vlr4 := Vlr4         + cdsFilho.FieldByName('VLRPRECOTOTAL').Value;
            Vlr5 := Vlr5         + cdsFilho.FieldByName('VLRDESCONTO').Value;
            Vlr6 := Vlr6         + ( cdsFilho.FieldByName('VLRPRECOTOTAL').value + cdsFilho.FieldByname('VLRIPI').Value);
            ICMS2   := ICMS2     + cdsFilho.FieldByName('VLRICMS').Value;
            IPI2    := IPI2      + cdsFilho.FieldByName('VLRIPI').Value;
            ACOFINS2 := ACOFINS2 + cdsFilho.FieldByName('VLRCOFINS').Value;
            APIS2    := APIS2    + cdsFilho.FieldByName('VLRPIS').Value;
           end
   else if Trim( cdsFilho.FieldByName('SIGLAGRUPO').Value) = 'CT' then
           begin
            Vlr11 := Vlr11       + cdsFilho.FieldByName('VLRPRECOTOTAL').Value;
            Vlr21 := Vlr21       + cdsFilho.FieldByName('VLRDESCONTO').Value;
            Vlr31 := Vlr31       + ( cdsFilho.FieldByName('VLRPRECOTOTAL').value + cdsFilho.FieldByname('VLRIPI').Value );
            ICMS3   := ICMS3     + cdsFilho.FieldByName('VLRICMS').Value;
            IPI3    := IPI3      + cdsFilho.FieldByName('VLRIPI').Value;
            COFINS3 := COFINS3   + cdsFilho.FieldByName('VLRCOFINS').Value;
            PIS3    := PIS3      + cdsFilho.FieldByName('VLRPIS').Value;
           end
   else if Trim(cdsFilho.FieldByName('SIGLAGRUPO').Value) = 'MRI' Then
           begin
            Vlr41 := Vlr41     + cdsFilho.FieldByName('VLRPRECOTOTAL').Value;
            Vlr51 := Vlr51     + cdsFilho.FieldByName('VLRDESCONTO').Value;
            Vlr61 := Vlr61     + ( cdsFilho.FieldByName('VLRPRECOTOTAL').value + cdsFilho.FieldByname('VLRIPI').Value );
            ICMS4   := ICMS4   + cdsFilho.FieldByName('VLRICMS').Value;
            IPI4    := IPI4    + cdsFilho.FieldByName('VLRIPI').Value;
            COFINS4 := COFINS4 + cdsFilho.FieldByName('VLRCOFINS').Value;
            PIS4    := PIS4 + cdsFilho.FieldByName('VLRPIS').Value;
           end;
   cdsFilho.Next;
  end;


  if Vlr1 > 0 Then
     begin
      cds0011.Insert;
      cds0011RECEITAID.Value           := 1;
      cds0011DESCRICAORECEITA.Value    := 'Ultrassom (US)';
      cds0011DATASAIDA.AsDateTime      := cdsPai.FieldByName('DATAEMISSAOID').AsDateTime;
      cds0011NOTAID.Value              := cdsPai.FieldByName('NFSID').Value;
      cds0011TIPONOTA.Value            := '';
      cds0011CFOP.Value                := cdsPai.FieldByName('CFOP').Value;
      cds0011NATUREZAOPID.Value        := cdsPai.FieldByName('NATUREZAOPID').Value;
      cds0011NOMENOTA.AsString         := cdsPai.FieldByName('NOME').AsString;
      cds0011VLRTOTALRECEITA.Value     := Vlr1;
      cds0011VLRDESCONTO.Value         := Vlr2;
      cds0011VLRCONTABIL.AsFloat       := Vlr3;
      cds0011OSID.AsString             := cdsPai.FieldByName('OSID').AsString;
      cds0011PEDIDOID.Value            := cdsPai.FieldByName('PDSID').Value;
      cds0011VLRICMS.Value             := ICMS1;
      cds0011VLRIPI.Value              := IPI1;
      cds0011VLRPIS.Value              := APIS1;
      cds0011VLRCOFINS.Value           := ACOFINS1;
      cds0011.Post;

      Inc( Contador );
      lblContador.Caption := IntToStr(Contador );
      lblContador.Refresh;
      cdsFilho.Next;
     end;
  if Vlr4 > 0 then
     begin
      cds0011.Insert;
      cds0011RECEITAID.Value           := 2;
      cds0011DESCRICAORECEITA.Value    := 'Raio-X (RX)';
      cds0011DATASAIDA.AsDateTime      := cdsPai.FieldByName('DATAEMISSAOID').AsDateTime;
      cds0011NOTAID.Value              := cdsPai.FieldByName('NFSID').Value;
      cds0011TIPONOTA.Value            := '';
      cds0011CFOP.Value                := cdsPai.FieldByName('CFOP').Value;
      cds0011NATUREZAOPID.Value        := cdsPai.FieldByName('NATUREZAOPID').Value;
      cds0011NOMENOTA.AsString         := cdsPai.FieldByName('NOME').AsString;
      cds0011VLRTOTALRECEITA.Value     := Vlr4;
      cds0011VLRDESCONTO.Value         := Vlr5;
      cds0011VLRCONTABIL.AsFloat       := Vlr6;
      cds0011OSID.AsString             := cdsPai.FieldByName('OSID').AsString;
      cds0011PEDIDOID.Value            := cdsPai.FieldByName('PDSID').Value;
      cds0011VLRICMS.Value             := ICMS2;
      cds0011VLRIPI.Value              := IPI2;
      cds0011VLRPIS.Value              := APIS2;
      cds0011VLRCOFINS.Value           := ACOFINS2;
      cds0011.Post;

      Inc( Contador );
      lblContador.Caption := IntToStr(Contador );
      lblContador.Refresh;
      cdsFilho.Next;
     end;

  if Vlr11 > 0 then
     begin
      cds0011.Insert;
      cds0011RECEITAID.Value           := 3;
      cds0011DESCRICAORECEITA.Value    := 'Tomografia (CT)';
      cds0011DATASAIDA.AsDateTime      := cdsPai.FieldByName('DATAEMISSAOID').AsDateTime;
      cds0011NOTAID.Value              := cdsPai.FieldByName('NFSID').Value;
      cds0011TIPONOTA.Value            := '';
      cds0011CFOP.Value                := cdsPai.FieldByName('CFOP').Value;
      cds0011NATUREZAOPID.Value        := cdsPai.FieldByName('NATUREZAOPID').Value;
      cds0011NOMENOTA.AsString         := cdsPai.FieldByName('NOME').AsString;
      cds0011VLRTOTALRECEITA.Value     := Vlr11;
      cds0011VLRDESCONTO.Value         := Vlr21;
      cds0011VLRCONTABIL.AsFloat       := Vlr31;
      cds0011OSID.AsString             := cdsPai.FieldByName('OSID').AsString;
      cds0011PEDIDOID.Value            := cdsPai.FieldByName('PDSID').Value;
      cds0011VLRICMS.Value             := ICMS3;
      cds0011VLRIPI.Value              := IPI3;
      cds0011VLRPIS.Value              := PIS3;
      cds0011VLRCOFINS.Value           := COFINS3;
      cds0011.Post;

      Inc( Contador );
      lblContador.Caption := IntToStr(Contador );
      lblContador.Refresh;
      cdsFilho.Next;
     end;
  if Vlr41 > 0 then
     begin
      cds0011.Insert;
      cds0011RECEITAID.Value           := 4;
      cds0011DESCRICAORECEITA.Value    := 'Ressonância (MRI)';
      cds0011DATASAIDA.AsDateTime      := cdsPai.FieldByName('DATAEMISSAOID').AsDateTime;
      cds0011NOTAID.Value              := cdsPai.FieldByName('NFSID').Value;
      cds0011TIPONOTA.Value            := '';
      cds0011CFOP.Value                := cdsPai.FieldByName('CFOP').Value;
      cds0011NATUREZAOPID.Value        := cdsPai.FieldByName('NATUREZAOPID').Value;
      cds0011NOMENOTA.AsString         := cdsPai.FieldByName('NOME').AsString;
      cds0011VLRTOTALRECEITA.Value     := Vlr41;
      cds0011VLRDESCONTO.Value         := Vlr51;
      cds0011VLRCONTABIL.AsFloat       := Vlr61;
      cds0011OSID.AsString             := cdsPai.FieldByName('OSID').AsString;
      cds0011PEDIDOID.Value            := cdsPai.FieldByName('PDSID').Value;
      cds0011VLRICMS.Value             := ICMS4;
      cds0011VLRIPI.Value              := IPI4;
      cds0011VLRPIS.Value              := PIS4;
      cds0011VLRCOFINS.Value           := COFINS4;
      cds0011.Post;

      Inc( Contador );
      lblContador.Caption := IntToStr(Contador );
      lblContador.Refresh;
      cdsFilho.Next;
     end;
  cdsPai.Next;
 end;

 try
  cds0011.IndexFieldNames := 'RECEITAID;SIGLAGRUPO;NOTAID';
  Titulo       := 'Relatorio de Receita de Venda Mercadorias por Grupo no período de ';
  frmRel0011 := TfrmRel0011.Create(nil);
  frmRel0011.QuickRep1.Preview;
 finally
  FreeAndNil( frmRel0011.QuickRep1 );
  FreeAndNil( frmRel0011 );
 end;
 cds0011.IndexFieldNames := '';
end;

procedure Tfrm0011.AbreNFSItemVenSubGrupo;
var iSQL : String;
begin
 cdsFilho := nil;
 iSQL := ' SELECT'+
         '  EF_NFSITEM.EMPRESAID,' +
         '  EF_NFSITEM.NFSID,'+
         '  EF_NFSITEM.DATAEMISSAOID,'+
         '  EF_NFSITEM.VLRPRECOUNITARIO,'+
         '  EF_NFSITEM.QUANTIDADE,'+
         '  EF_NFSITEM.VLRICMS,'+
         '  EF_NFSITEM.VLRIPI,'+
         '  EF_NFSITEM.VLRPIS,'+
         '  EF_NFSITEM.VLRCOFINS,'+
         '  EF_NFSITEM.VLRDESCONTO,'+
         '  EF_NFSITEM.VLRPRECOTOTAL,'+
         '  EF_NFSITEM.PRODUTOID,'+
         '  EF_PRODUTO.NOVOUSADO,'+
         '  EF_PRODUTO.DESCRICAOPORTUGUES,'+
         '  EF_SUBGRUPO.SUBGRUPOID,'+
         '  EF_PRODUTO.GRUPOID, ' +
         '  EF_SUBGRUPO.SIGLAGRUPO,'+
         '  EF_SUBGRUPO.DESCRICAO'+
         '  FROM'+
         '  EF_NFS,'+
         '  EF_NFSITEM,'+
         '  EF_NATUREZAOP,'+
         '  EF_PRODUTO,'+
         '  EF_SUBGRUPO'+
         ' WHERE'+
         '  EF_NATUREZAOP.NATUREZAOPID ='+
         '  EF_NFS.NATUREZAOPID'+
         '  AND EF_PRODUTO.EMPRESAID =   EF_NFS.EMPRESAID'+
         '  AND EF_PRODUTO.PRODUTOID(+) =   EF_NFSITEM.PRODUTOID'+
         '  AND EF_SUBGRUPO.SUBGRUPOID(+) =   EF_PRODUTO.SUBGRUPOID'+
         '  AND EF_NATUREZAOP.MOVIMENTOESTOQUE = '+ QuotedStr('N')+
         '  AND EF_NATUREZAOP.VENDADEFINITIVA = 1'+
         '  AND EF_NFS.EMPRESAID = EF_NFSITEM.EMPRESAID '+
         '  AND EF_NFS.NFSID = EF_NFSITEM.NFSID '+
         '  AND EF_NFS.DATAEMISSAOID = EF_NFSITEM.DATAEMISSAOID ';

 if rgpEmpresa.ItemIndex = 1 then
    iSQL := iSQL + ' AND EF_NFS.EMPRESAID = '+ IntToStr( EmpresaAtualId );

 if ( MaskEdit1.Text <> '  /  /    ' ) and ( MaskEdit1.Text <> '  /  /    '  ) then
    iSQL := iSQL + '  AND EF_NFS.DATAEMISSAOID BETWEEN '+ QuotedStr( MaskEdit1.Text ) +
                   '  AND '+ QuotedStr( MaskEdit2.Text );

 if CheckBox1.Checked = False then
    if ComboBox2.Text <> '' then
       iSQL := iSQL + ' AND EF_SUBGRUPO.SIGLAGRUPO = ' + QuotedStr( ComboBox2.Text );

 iSQL := iSQL + ' ORDER BY EF_NFS.EMPRESAID, EF_NFS.NFSID,EF_NFS.DATAEMISSAOID';

 try
  ExecDynamicProvider( -1,iSQL,cdsFilho );
 except on
  E : Exception do
  raise Exception.Create(E.Message);
 end;

 cdsFilho.AddIndex('idx1','EMPRESAID;NFSID;DATAEMISSAOID',[ixPrimary],'','',0);
 cdsFilho.IndexName := 'idx1';
end;

procedure Tfrm0011.AbreNFSVenMercSubGrupo;
var iSQL : String;
begin
 cdsPai := nil;
 iSQL := 'SELECT'+
         '  EF_NFS.EMPRESAID,'+
         '  EF_NFS.NFSID,'+
         '  EF_NFS.DATAEMISSAOID,'+
         '  EF_NATUREZAOP.CFOP,'+
         '  EF_NFS.NATUREZAOPID,'+
         '  EF_NATUREZAOP.DESCRICAOOPERACAONOTA,'+
         '  EF_NFS.NOME,'+
         '  EF_NFS.OSID,'+
         '  EF_NFS.PDSID,'+
         '  EF_NFS.TIPONOTA,'+
         '  EF_NFS.VLRTOTALNOTA'+
         '  FROM'+
         '  EF_NFS,'+
         '  EF_NATUREZAOP'+
         '  WHERE'+
         '  EF_NATUREZAOP.NATUREZAOPID = EF_NFS.NATUREZAOPID'+
         '  AND EF_NATUREZAOP.MOVIMENTOESTOQUE = '+ QuotedStr('N')+
         '  AND NVL( EF_NATUREZAOP.VENDADEFINITIVA,0 ) = 1'+
         '  AND NVL( EF_NFS.CANCELADA,0 ) = 0 ';

 if rgpEmpresa.ItemIndex = 1 then
    iSQL := iSQL + ' AND EF_NFS.EMPRESAID = '+ IntToStr( EmpresaAtualId );

 if chkTodosOS.Checked then
    iSQL := iSQL + ' AND EF_NFS.OSID IS NOT NULL ';

 if ( MaskEdit1.Text <> '  /  /    ' ) and ( MaskEdit1.Text <> '  /  /    '  ) then
    iSQL := iSQL + '  AND EF_NFS.DATAEMISSAOID BETWEEN '+ QuotedStr( MaskEdit1.Text ) +
                   '  AND '+ QuotedStr( MaskEdit2.Text );

 iSQL := iSQL + ' ORDER BY EF_NFS.EMPRESAID, EF_NFS.NFSID,EF_NFS.DATAEMISSAOID';

 try
  ExecDynamicProvider( -1,iSQL,cdsPai );
 except on
  E : Exception do
  raise Exception.Create(E.Message);
 end;
end;

procedure Tfrm0011.BitBtn4Click(Sender: TObject);
var cdsAuxNfsServ : TClientDataSet;
    iSQL          : String;
    Contador      : Integer;
begin
 Contador := 0;
 InicializaCds0011;
 AbreNFSVenMercSubGrupo;
 AbreNFSItemVenSubGrupo;

 cdsPai.First;
 while not cdsPai.Eof do
 begin
   cdsAuxNfsServ := nil;
   iSQL := 'SELECT'+
           '  EF_NFSSERVICO.VLRCOFINS,'+
           '  EF_NFSSERVICO.VLRPIS,'+
           '  EF_NFSSERVICO.VLRISS'+
           '  FROM EF_NFSSERVICO'+
           ' WHERE'+
           '  EF_NFSSERVICO.EMPRESAID = '         + cdsPai.FieldByName('EMPRESAID').AsString +
           '  AND EF_NFSSERVICO.NFSID = '         + cdsPai.FieldByName('NFSID').AsString +
           '  AND EF_NFSSERVICO.DATAEMISSAOID = ' + QuotedStr( cdsPai.FieldByName('DATAEMISSAOID').AsString );
  try
   ExecDynamicProvider( -1,iSQL,cdsAuxNfsServ );
  except on
    E : Exception do
    raise Exception.create( E.message );
  end;

  cdsFilho.Filter   := ' EMPRESAID = ' + cdsPai.FieldByName('EMPRESAID').AsString + ' AND ' +
                       ' NFSID = '+ CdsPai.FieldByName('NFSID').AsString +' AND '+
                       'DATAEMISSAOID = '+ QuotedStr( cdsPai.FieldByName('DATAEMISSAOID').AsString );
  cdsFilho.Filtered := True;
  cdsFilho.First;
  while not cdsFilho.Eof do
  begin
   cds0011.Insert;

   if cdsFilho.FieldByName('SUBGRUPOID').AsInteger  = 1 then
      cds0011RECEITAID.Value            := cdsFilho.FieldByName('GRUPOID').AsInteger
   else
      cds0011RECEITAID.Value            := cdsFilho.FieldByName('SUBGRUPOID').AsInteger;

   cds0011DESCRICAORECEITA.AsString  := cdsFilho.FieldByName('DESCRICAO').AsString;
   cds0011DATASAIDA.AsDateTime       := cdsFilho.FieldByName('DATAEMISSAOID').AsDateTime;
   cds0011NOTAID.Value               := cdsPai.FieldByName('NFSID').AsInteger;
   cds0011TIPONOTA.AsString          := cdsFilho.FieldByName('NOVOUSADO').AsString;
   cds0011CFOP.Value                 := cdsPai.FieldByName('CFOP').AsInteger;
   cds0011DESCRICAONATUREZA.AsString := cdsPai.FieldByName('DESCRICAOOPERACAONOTA').AsString;
   cds0011NOMENOTA.AsString          := cdsPai.FieldByName('NOME').AsString;
   cds0011VLRTOTALRECEITA.Value      := cds0011VLRTOTALRECEITA.Value + cdsFilho.FieldByName('VLRPRECOTOTAL').AsCurrency;
   cds0011VLRDESCONTO.Value          := cdsFilho.FieldByName('VLRDESCONTO').AsCurrency;
   cds0011VLRCONTABIL.Value          := cdsFilho.FieldByName('VLRPRECOTOTAL').AsCurrency + cdsFilho.FieldByName('VLRIPI').AsCurrency;
   cds0011OSID.AsString              := cdsPai.FieldByName('OSID').AsString;
   cds0011PEDIDOID.Value             := cdsPai.FieldByName('PDSID').AsInteger;

   if not cdsAuxNfsServ.IsEmpty then
      begin
       cds0011VLRCOFINS.Value            := cdsAuxNfsServ.FieldByName('VLRCOFINS').AsCurrency;
       cds0011VLRPIS.Value               := cdsAuxNfsServ.FieldByName('VLRPIS').AsCurrency;
       cds0011VLRISS.Value               := cdsAuxNfsServ.FieldByName('VLRISS').AsCurrency;
      end
   else
      begin
       cds0011VLRCOFINS.Value            := 0;
       cds0011VLRPIS.Value               := 0;
       cds0011VLRISS.Value               := 0;
      end;

   cds0011PRODUTOID.Value            := cdsFilho.FieldByName('PRODUTOID').AsInteger;
   cds0011DESCRICAOPRODUTO.AsString  := cdsFilho.FieldByName('DESCRICAOPORTUGUES').AsString;
   cds0011VLRIPI.Value               := cdsFilho.FieldByName('VLRIPI').AsCurrency;
   cds0011VLRICMS.Value              := cdsFilho.FieldByName('VLRICMS').AsCurrency;
   cds0011QUANTIDADE.Value           := cdsFilho.FieldByName('QUANTIDADE').AsInteger;
   cds0011.Post;

   Inc( Contador );
   lblContador.Caption := IntToStr(Contador );
   lblContador.Refresh;
   cdsFilho.Next;
  end;
  cdsPai.Next;
 end;

 try
  cds0011.IndexFieldNames := 'RECEITAID;NOTAID';
  Titulo :=  'Relatorio de Receita de Venda Mercadorias por Sub-Grupo no periodo de ';
  frmRel0011A := TfrmRel0011A.Create(nil);
  frmRel0011A.QuickRep1.Preview;
 finally
  FreeAndNil( frmRel0011A.QuickRep1 );
  FreeAndNil( frmRel0011A ) ;
 end;
 cds0011.IndexFieldNames := '';
// cds0011.Close;
end;

procedure Tfrm0011.AbreNFSReceita;
var iSQL : String;
begin
 cdsPai := nil;
 iSQL := 'SELECT'+
         '  EF_NFS.EMPRESAID,'+
         '  EF_NFS.NFSID,'+
         '  EF_NFS.DATAEMISSAOID,'+
         '  EF_NATUREZAOP.CFOP,'+
         '  EF_NFS.NATUREZAOPID,'+
         '  EF_NATUREZAOP.DESCRICAOOPERACAONOTA,'+
         '  EF_NFS.NOME,'+
         '  EF_NFS.OSID,'+
         '  EF_NFS.PDSID,'+
         '  EF_NFS.CIDADE,'+
         '  EF_NFS.SIGLAUFID,'+
         '  EF_NFS.TIPONOTA,'+
         '  EF_NFS.VLRTOTALNOTA'+
         '  FROM'+
         '  EF_NFS,'+
         '  EF_NATUREZAOP'+
         '  WHERE'+
         '  EF_NATUREZAOP.NATUREZAOPID = EF_NFS.NATUREZAOPID'+
         '  AND EF_NATUREZAOP.MOVIMENTOESTOQUE = '+ QuotedStr('N')+
         '  AND EF_NATUREZAOP.VENDADEFINITIVA = 1'+
         '  AND NVL( EF_NFS.CANCELADA, 0 ) = 0 ';

 if rgpEmpresa.ItemIndex = 1 then
    iSQL := iSQL + ' AND EF_NFS.EMPRESAID = '+ IntToStr( EmpresaAtualId );

 if ( MaskEdit1.Text <> '  /  /    ' ) and ( MaskEdit1.Text <> '  /  /    '  ) then
    iSQL := iSQL + '  AND EF_NFS.DATAEMISSAOID BETWEEN '+ QuotedStr( MaskEdit1.Text ) +
                   '  AND '+ QuotedStr( MaskEdit2.Text );
    iSQL := iSQL + ' ORDER BY EF_NFS.NFSID,EF_NFS.DATAEMISSAOID';

 try
  ExecDynamicProvider( -1,iSQL,cdsPai );
 except on
  E : Exception do
  raise Exception.Create(E.Message);
 end;
end;

procedure Tfrm0011.BitBtn5Click(Sender: TObject);
begin
 InicializaCds0011;
 AbreNFSReceita;
 AbreNFSServico;

 cdsFilho.Filtered := True;
 cdsPai.First;
 while not cdsPai.Eof do
 begin

  cdsFilho.Filter   := 'EMPRESAID = ' + cdsPai.FieldByName('EMPRESAID').AsString + ' AND ' +
                       'NFSID = '+ CdsPai.FieldByName('NFSID').AsString +' AND '+
                       'DATAEMISSAOID = '+ QuotedStr( cdsPai.FieldByName('DATAEMISSAOID').AsString );
  cdsFilho.First;
  while not cdsFilho.eof do
  begin
   cds0011.Insert;
   cds0011RECEITAID.Value         := cdsFilho.FieldByName('SERVICOID').Value;
   cds0011SIGLA.Value             := cdsFilho.FieldByName('SIGLA').Value;

   if Trim( cdsFilho.FieldByName('SIGLA').AsString ) = 'N-INT' then
      cds0011DESCRICAORECEITA.Value := 'Interveniência';

   if Trim( cdsFilho.FieldByName('SIGLA').AsString ) = 'N-COM' then
      cds0011DESCRICAORECEITA.Value := 'Comissões Recebidas do Exterior';

   if Trim( cdsFilho.FieldByName('SIGLA').AsString ) = 'N-AST' then
      cds0011DESCRICAORECEITA.Value := 'Assistência Técnica';

   if Trim( cdsFilho.FieldByName('SIGLA').AsString ) = 'N-CMP' then
      cds0011DESCRICAORECEITA.Value := 'Contrato Manutenção Preventiva';

   cds0011SIGLAGRUPO.AsString        := cdsFilho.FieldByName('SIGLAGRUPO').AsString;
   cds0011DATASAIDA.AsDateTime       := cdsFilho.FieldByName('DATAEMISSAOID').AsDateTime;
   cds0011NOTAID.Value               := cdsPai.FieldByName('NFSID').AsInteger;
   cds0011TIPONOTA.AsString          := '';
   cds0011CFOP.Value                 := cdsPai.FieldByName('CFOP').AsInteger;
   cds0011DESCRICAONATUREZA.AsString := cdsPai.FieldByName('DESCRICAOOPERACAONOTA').AsString;
   cds0011NOMENOTA.AsString          := cdsFilho.FieldByName('ENTIDADEID').AsString + '-' + cdsPai.FieldByName('NOME').AsString;
   cds0011CIDADE.AsString            := cdsPai.FieldByName('CIDADE').AsString;
   cds0011DESCRICAOPRODUTO.Value     := cdsFilho.FieldByName('CPFCNPJ').AsString;
   cds0011SIGLAUFID.AsString         := cdsPai.FieldByName('SIGLAUFID').AsString;
   cds0011VLRTOTALRECEITA.Value      := cdsFilho.FieldByName('VLRSERVICO').AsCurrency;
   cds0011OSID.AsString              := cdsPai.FieldByName('OSID').AsString;
   cds0011PEDIDOID.AsInteger          := cdsPai.FieldByName('PDSID').AsInteger;
   cds0011VLRCOFINS.Value            := cdsFilho.FieldByName('VLRCOFINS').AsCurrency;
   cds0011VLRPIS.Value               := cdsFilho.FieldByName('VLRPIS').AsCurrency;
   cds0011VLRISS.Value               := cdsFilho.FieldByName('VLRISS').AsCurrency;

   if Trim(cds0011SIGLA.AsString) = 'N-INT' then
        begin
         if cdsFilho.FieldByName('CATEGORIAID').AsInteger = 1 Then { Cliente }
            begin
             if cdsFilho.FieldByName('CPFCNPJ').AsString <> '' then
                cds0011VLRIR.Value := ( cdsFilho.FieldByName('VLRSERVICO').AsCurrency /100 )*1.5
             else
                cds0011VLRIR.Value := 0;
            end;

         if cdsFilho.FieldByName('CATEGORIAID').AsInteger = 2 Then { Fornecedor }
            begin
             if cdsFilho.FieldByName('FISICAJURIDICA').AsString = 'J' then
                 cds0011VLRIR.Value := ( cdsFilho.FieldByName('VLRSERVICO').AsCurrency /100 )*1.5
             else
                cds0011VLRIR.Value := 0;
             end;
        end;
   cds0011.Post;
   cdsFilho.Next;
  end;
  cdsPai.Next;
 end;

 if ( ComboBox1.Text <> '' ) and ( ComboBox1.Text <> Null ) then
     begin
      cds0011.Filter   := 'SIGLA = ' + QuotedStr( ComboBox1.Text );
      cds0011.Filtered := True;
     end;

 try
  cds0011.IndexFieldNames := 'RECEITAID;SIGLAGRUPO;NOTAID';
  frmRel0011B := TfrmRel0011B.Create( nil );
  Titulo := 'Relatorio de Receita de Serviços no período de ';
  frmRel0011B.Quickrep1.Preview;
 finally
  FreeAndNil( frmRel0011B.QuickRep1 );
  FreeAndNil( frmRel0011B );
 end;
 cds0011.IndexFieldNames := '';
end;

procedure Tfrm0011.AbreNFSServico;
var iSQL : String;
begin
 cdsFilho := nil;
 iSQL := 'SELECT'+
         '  EF_NFSSERVICO.EMPRESAID, ' +
         '  EF_NFSSERVICO.NFSID,'+
         '  EF_NFSSERVICO.DATAEMISSAOID,'+
         '  EF_NFS.NOME,'+
         '  EF_NFS.OSID,'+
         '  EF_NFS.PDSID,'+
         '  EF_NFS.CIDADE,'+
         '  EF_NFS.SIGLAUFID,'+
         '  EF_NFS.TIPONOTA,'+
         '  EF_NFS.ENTIDADEID,'+
         '  EF_NFS.VLRTOTALNOTA,'+
         '  EF_NFS.CATEGORIAID,'+
         '  EF_ENTIDADE.CPFCNPJ,'+
         '  EF_ENTIDADE.FISICAJURIDICA,'+
         '  EF_NFSSERVICO.EMPRESAID,'+
         '  EF_NFSSERVICO.VLRSERVICO,'+
         '  EF_NFSSERVICO.VLRPIS,'+
         '  EF_NFSSERVICO.VLRCOFINS,'+
         '  EF_NFSSERVICO.VLRISS,'+
         '  EF_SERVICO.SERVICOID,'+
         '  EF_GRUPO.SIGLAGRUPO,'+
         '  EF_RECEITA.SIGLA,'+
         '  EF_RECEITA.ORIGEM' +
         '  FROM'+
         '  EF_NFS,'+
         '  EF_NATUREZAOP,'+
         '  EF_ENTIDADE,'+
         '  EF_SERVICO,'+
         '  EF_GRUPO,'+
         '  EF_NFSSERVICO,'+
         '  EF_RECEITA'+
         ' WHERE'+
         '  EF_NATUREZAOP.NATUREZAOPID = EF_NFS.NATUREZAOPID'+
         '  AND EF_SERVICO.SERVICOID = EF_NFSSERVICO.SERVICOID'+
         '  AND EF_SERVICO.EMPRESAID = EF_NFSSERVICO.EMPRESAID'+
         '  AND EF_RECEITA.RECEITAID = EF_SERVICO.RECEITAID'+
         '  AND EF_NFSSERVICO.EMPRESAID = EF_NFS.EMPRESAID'+
         '  AND EF_NFSSERVICO.NFSID = EF_NFS.NFSID'+
         '  AND EF_NFSSERVICO.DATAEMISSAOID = EF_NFS.DATAEMISSAOID'+
         '  AND EF_NFS.ENTIDADEID = EF_ENTIDADE.ENTIDADEID '+
         '  AND EF_NATUREZAOP.MOVIMENTOESTOQUE = '+ QuotedStr('N')+
         '  AND EF_NATUREZAOP.VENDADEFINITIVA = 1'+
         '  AND EF_NFS.CANCELADA = 0 '+
         '  AND EF_NFS.DATAEMISSAOID = EF_NFS.DATAEMISSAOID'+
         '  AND EF_SERVICO.GRUPOID = EF_GRUPO.GRUPOID(+)';

 if  rgpEmpresa.ItemIndex = 1 then
     iSQL := iSQL + ' AND EF_NFS.EMPRESAID = '+ IntToStr( EmpresaAtualId ) ;

 if chkTodosOS.Checked then
    iSQL := iSQL + ' AND EF_RECEITA.ORIGEM = ' + QuotedStr('T');

 if ( MaskEdit1.Text <> '  /  /    ' ) and ( MaskEdit1.Text <> '  /  /    '  ) then
    iSQL := iSQL + '  AND EF_NFS.DATAEMISSAOID BETWEEN '+ QuotedStr( MaskEdit1.Text ) +
                   '  AND '+ QuotedStr( MaskEdit2.Text );
    iSQL := iSQL + ' ORDER BY EF_NFS.NFSID,EF_NFS.DATAEMISSAOID';


 try
  ExecDynamicProvider( -1,iSQL,cdsFilho );
 except on
  E : Exception do
  raise Exception.Create(E.Message);
 end;

 cdsFilho.AddIndex('idx1','EMPRESAID;NFSID;DATAEMISSAOID',[ixPrimary],'','',0);
 cdsFilho.IndexName := 'idx1';
end;

procedure Tfrm0011.BitBtn8Click(Sender: TObject);
begin
 frm0011.Close;
end;

procedure Tfrm0011.AbreNFSJapao;
var iSQL : String;
begin
 cdsPai := nil;

  iSQL := 'SELECT'+
          '  EF_NFS.EMPRESAID,'+
          '  EF_NFS.NFSID,'+
          '  EF_NFS.DATAEMISSAOID,'+
          '  EF_NFS.OSID'+
          '  FROM'+
          '  EF_NFS,'+
          '  EF_NATUREZAOP'+
          '  WHERE'+
          '  EF_NATUREZAOP.NATUREZAOPID = EF_NFS.NATUREZAOPID'+
          '  AND EF_NATUREZAOP.MOVIMENTOESTOQUE = '+ QuotedStr('N')+
          '  AND NVL( EF_NATUREZAOP.VENDADEFINITIVA,0) = 1'+
          '  AND NVL( EF_NFS.CANCELADA,0 ) = 0 '+
          '  AND EF_NFS.DATAEMISSAOID = EF_NFS.DATAEMISSAOID';

  if  rgpEmpresa.ItemIndex = 1 then
      iSQL := iSQL + ' AND EF_NFS.EMPRESAID = '+ IntToStr( EmpresaAtualId ) ;

  if ( MaskEdit1.Text <> '  /  /    ' ) and ( MaskEdit1.Text <> '  /  /    '  ) then
     iSQL := iSQL + '  AND EF_NFS.DATAEMISSAOID BETWEEN '+ QuotedStr( MaskEdit1.Text ) +
                    '  AND '+ QuotedStr( MaskEdit2.Text );

 try
  ExecDynamicProvider( -1,iSQL,cdsPai );
 except on
  E : Exception do
  raise Exception.Create(E.Message);
 end;
end;

procedure Tfrm0011.AbreNFSItemJapao;
var iSQL : String;
begin
 cdsFilho := nil;
 iSQL := 'SELECT'+
         '  EF_NFS.EMPRESAID,'+
         '  EF_NFS.NFSID,'+
         '  EF_NFS.DATAEMISSAOID,'+
         '  EF_NFSITEM.ITEMID,'+
         '  EF_NFSITEM.VLRPRECOTOTAL,'+
         '  EF_NFSITEM.VLRIPI,'+
         '  EF_NFSITEM.VLRICMS,'+
         '  EF_NFSITEM.VLRPIS,'+
         '  EF_NFSITEM.VLRCOFINS,'+
         '  EF_PRODUTO.GRUPOID,'+
         '  EF_GRUPO.SIGLAGRUPO,'+
         '  EF_PRODUTO.NOVOUSADO,'+
         '  EF_SUBGRUPO.SUBGRUPOID,'+
         '  EF_SUBGRUPO.SIGLAGRUPO SUBGRUPO,'+
         '  EF_SUBGRUPO.DESCRICAO DESCRICAOSUBGRUPO'+
         '  FROM'+
         '  EF_NFS,'+
         '  EF_NFSITEM,'+
         '  EF_PRODUTO,'+
         '  EF_GRUPO,'+
         '  EF_SUBGRUPO,'+
         '  EF_NATUREZAOP'+
         ' WHERE'+
         '  EF_NATUREZAOP.NATUREZAOPID = EF_NFS.NATUREZAOPID'+
         '  AND EF_PRODUTO.PRODUTOID = EF_NFSITEM.PRODUTOID'+
         '  AND EF_PRODUTO.EMPRESAID = EF_NFSITEM.EMPRESAID'+
         '  AND EF_PRODUTO.GRUPOID = EF_GRUPO.GRUPOID(+)'+
         '  AND EF_PRODUTO.SUBGRUPOID = EF_SUBGRUPO.SUBGRUPOID(+)'+
         '  AND EF_NATUREZAOP.MOVIMENTOESTOQUE = '+ QuotedStr('N')+
         '  AND EF_NATUREZAOP.VENDADEFINITIVA = 1'+
         '  AND NVL( EF_NFS.CANCELADA, 0 ) = 0 '+
         '  AND EF_NFSITEM.EMPRESAID = EF_NFS.EMPRESAID'+
         '  AND EF_NFSITEM.NFSID = EF_NFS.NFSID'+
         '  AND EF_NFSITEM.DATAEMISSAOID = EF_NFS.DATAEMISSAOID';

 if  rgpEmpresa.ItemIndex = 1 then
     iSQL := iSQL + ' AND EF_NFS.EMPRESAID = '+ IntToStr( EmpresaAtualId ) ;

 if ( MaskEdit1.Text <> '  /  /    ' ) and ( MaskEdit1.Text <> '  /  /    '  ) then
    iSQL := iSQL + '  AND EF_NFS.DATAEMISSAOID BETWEEN '+ QuotedStr( MaskEdit1.Text ) +
                   '  AND '+ QuotedStr( MaskEdit2.Text );

 if chkTodosOS.Checked = True then
    iSQL := iSQL + ' AND EF_NFS.OSID IS NOT NULL ';

 iSQL := iSQL + ' ORDER BY EF_NFS.EMPRESAID,EF_NFS.NFSID,EF_NFS.DATAEMISSAOID';

 try
  ExecDynamicProvider( -1,iSQL,cdsFilho );
 except on
  E : Exception do
  raise Exception.Create(E.Message);
 end;

 cdsFilho.AddIndex('idx1','EMPRESAID;NFSID;DATAEMISSAOID',[ixPrimary],'','',0);
 cdsFilho.IndexName := 'idx1';
end;

procedure Tfrm0011.AbreNFSServicoJapao( var cdsAuxNFSServico : TClientDataSet );
var iSQL : String;
begin
 cdsAuxNFSServico := nil;
 iSQL := 'SELECT'+
         '  EF_NFSSERVICO.EMPRESAID,'+
         '  EF_NFSSERVICO.NFSID,'+
         '  EF_NFSSERVICO.DATAEMISSAOID,'+
         '  EF_NFSSERVICO.ITEMID,'+
         '  EF_NFS.OSID,'+
         '  EF_NFSSERVICO.VLRSERVICO,'+
         '  EF_NFSSERVICO.VLRPIS,'+
         '  EF_NFSSERVICO.VLRCOFINS,'+
         '  EF_NFSSERVICO.VLRISS,'+
         '  EF_SERVICO.SERVICOID,'+
         '  EF_SERVICO.GRUPOID,'+
         '  EF_GRUPO.SIGLAGRUPO, ' +
         '  EF_SERVICO.DESCRICAOCOMPLETA,'+
         '  EF_RECEITA.SIGLA'+
         '  FROM'+
         '  EF_NFS,'+
         '  EF_NATUREZAOP,'+
         '  EF_SERVICO,'+
         '  EF_GRUPO,'+
         '  EF_NFSSERVICO,'+
         '  EF_RECEITA'+
         ' WHERE'+
         '  EF_NATUREZAOP.NATUREZAOPID = EF_NFS.NATUREZAOPID'+
         '  AND EF_SERVICO.SERVICOID = EF_NFSSERVICO.SERVICOID'+
         '  AND EF_SERVICO.EMPRESAID = EF_NFSSERVICO.EMPRESAID'+
         '  AND EF_RECEITA.RECEITAID = EF_SERVICO.RECEITAID'+
         '  AND EF_NFSSERVICO.EMPRESAID = EF_NFS.EMPRESAID'+
         '  AND EF_NFSSERVICO.NFSID = EF_NFS.NFSID'+
         '  AND EF_NFSSERVICO.DATAEMISSAOID = EF_NFS.DATAEMISSAOID'+
         '  AND EF_NATUREZAOP.MOVIMENTOESTOQUE = '+ QuotedStr('N')+
         '  AND NVL( EF_NATUREZAOP.VENDADEFINITIVA,0) = 1'+
         '  AND EF_SERVICO.GRUPOID = EF_GRUPO.GRUPOID(+)'+
         '  AND NVL(EF_NFS.CANCELADA,0) = 0';

 if  rgpEmpresa.ItemIndex = 1 then
     iSQL := iSQL + ' AND EF_NFS.EMPRESAID = '+ IntToStr( EmpresaAtualId );

 if ( MaskEdit1.Text <> '  /  /    ' ) and ( MaskEdit1.Text <> '  /  /    '  ) then
    iSQL := iSQL + '  AND EF_NFS.DATAEMISSAOID BETWEEN '+ QuotedStr( MaskEdit1.Text ) +
                   '  AND '+ QuotedStr( MaskEdit2.Text );

 if chkTodosOS.Checked = True then
    iSQL := iSQL + ' AND ( EF_NFS.OSID IS NOT NULL OR EF_RECEITA.SIGLA = '+ QuotedStr('N-CMP')+')';

 iSQL := iSQL + ' ORDER BY EF_NFS.EMPRESAID,EF_NFS.NFSID,EF_NFS.DATAEMISSAOID';

 try
  ExecDynamicProvider( -1,iSQL,cdsAuxNFSServico );
 except on
  E : Exception do
  raise Exception.Create(E.Message);
 end;

 cdsAuxNFSServico.AddIndex('idx1','EMPRESAID;NFSID;DATAEMISSAOID',[ixPrimary],'','',0);
 cdsAuxNFSServico.IndexName := 'idx1';
end;

procedure Tfrm0011.btnFluxoJapaoClick(Sender: TObject);
var cdsAuxNFSServico : TClientDataSet;
    Contador         : Integer;
begin
 Devolucao := 0;
 Contador  := 0;

 InicializaCds0011;
 cds0011.AddIndex( 'idx1','GRUPOID;SUBGRUPOID;SIGLA;NOVOUSADO',[ixPrimary],'','',0);
 cds0011.IndexName := 'idx1';
 cds0011.Open;

 AbreNFSJapao;
 AbreNFSItemJapao;
 AbreNFSServicoJapao( cdsAuxNFSServico );

 cdsPai.First;
 while not cdsPai.Eof do
 begin
  cdsAuxNFSServico.Filter   := 'EMPRESAID = '+ cdsPai.FieldByName('EMPRESAID').AsString +' AND '+
                               'NFSID = '+ cdsPai.FieldByName('NFSID').AsString +' AND '+
                               'DATAEMISSAOID = '+ QuotedStr( CdsPai.FieldByName('DATAEMISSAOID').AsString );

  cdsAuxNFSServico.Filtered := True;

  cdsAuxNFSServico.First;
  while not cdsAuxNFSServico.Eof do
  begin
   if not cds0011.FindKey([ cdsAuxNFSServico.FieldByName('GRUPOID').Value,'',
                            cdsAuxNFSServico.FieldByName('SIGLA').Value ]) then
      begin
       cds0011.Insert;
       if not cdsAuxNFSServico.FieldByName('GRUPOID').IsNull then
          cds0011GRUPOID.Value          := cdsAuxNFSServico.FieldByName('GRUPOID').AsInteger;

       cds0011SUBGRUPO.Value         := '';
       cds0011SIGLAGRUPO.Value       := cdsAuxNFSServico.FieldByName('SIGLAGRUPO').AsString;
       cds0011SIGLA.Value            := cdsAuxNFSServico.FieldByName('SIGLA').AsString;
       cds0011DESCRICAORECEITA.Value := cdsAuxNFSServico.FieldByName('DESCRICAOCOMPLETA').AsString;
       cds0011VLRSERVICO.Value       := cdsAuxNFSServico.FieldByName('VLRSERVICO').AsCurrency;
       cds0011VLRCOFINS.Value        := cdsAuxNFSServico.FieldByName('VLRCOFINS').AsCurrency;
       cds0011VLRPIS.Value           := cdsAuxNFSServico.FieldByName('VLRPIS').AsCurrency;
       cds0011VLRISS.Value           := cdsAuxNFSServico.FieldByName('VLRISS').AsCurrency;
       cds0011.Post;
      end
   else
      begin
       cds0011.Edit;
       cds0011VLRSERVICO.Value    := cds0011VLRSERVICO.Value + cdsAuxNFSServico.FieldByName('VLRSERVICO').AsCurrency;
       cds0011VLRCOFINS.Value     := cds0011VLRCOFINS.Value + cdsAuxNFSServico.FieldByName('VLRCOFINS').AsCurrency;
       cds0011VLRPIS.Value        := cds0011VLRPIS.Value + cdsAuxNFSServico.FieldByName('VLRPIS').AsCurrency;
       cds0011VLRISS.Value        := cds0011VLRISS.Value + cdsAuxNFSServico.FieldByName('VLRISS').AsCurrency;
       cds0011.Post;
      end;

   cds0011Analitico.Insert;
   cds0011AnaliticoEMPRESAID.Value       := cdsAuxNFSServico.FieldByName('EMPRESAID').AsInteger;
   cds0011AnaliticoNOTAID.Value          := cdsAuxNFSServico.FieldByName('NFSID').AsInteger;
   cds0011AnaliticoDATAEMISSAOID.Value   := cdsAuxNFSServico.FieldByName('DATAEMISSAOID').AsDateTime;
   cds0011AnaliticoITEMID.Value          := cdsAuxNFSServico.FieldByName('ITEMID').AsInteger;
   cds0011AnaliticoGRUPOID.Value         := cdsAuxNFSServico.FieldByName('GRUPOID').AsInteger;
   cds0011AnaliticoSIGLAGRUPO.Value      := cdsAuxNFSServico.FieldByName('SIGLAGRUPO').AsString;
   cds0011AnaliticoSUBGRUPO.Value        := '';
   cds0011AnaliticoSIGLARECEITA.Value    := cdsAuxNFSServico.FieldByName('SIGLA').AsString;
   cds0011AnaliticoDESCRICAOSIGLA.Value  := cdsAuxNFSServico.FieldByName('DESCRICAOCOMPLETA').AsString;
   cds0011AnaliticoVLRSERVICO.Value      := cdsAuxNFSServico.FieldByName('VLRSERVICO').AsCurrency;
   cds0011AnaliticoVLRCOFINS.Value       := cdsAuxNFSServico.FieldByName('VLRCOFINS').AsCurrency;
   cds0011AnaliticoVLRPIS.Value          := cdsAuxNFSServico.FieldByName('VLRPIS').AsCurrency;
   cds0011AnaliticoVLRISS.Value          := cdsAuxNFSServico.FieldByName('VLRISS').AsCurrency;
   cds0011Analitico.Post;

   Inc(Contador);
   lblContador.Caption := IntToStr( Contador );
   lblContador.Refresh;
   cdsAuxNFSServico.Next;
  end;


  cdsFilho.Filter   := 'EMPRESAID = '+ CdsPai.FieldByName('EMPRESAID').AsString +' AND '+
                       'NFSID = '+ CdsPai.FieldByName('NFSID').AsString +' AND '+
                       'DATAEMISSAOID = '+ QuotedStr( CdsPai.FieldByName('DATAEMISSAOID').AsString );

  cdsFilho.Filtered := True;

  cdsFilho.First;
  while not cdsFilho.Eof do
  begin
   if not cds0011.FindKey([ cdsFilho.FieldByName('GRUPOID').Value,
                            cdsFilho.FieldByName('SUBGRUPOID').AsString,'PROD',
                            cdsFilho.FieldByName('NOVOUSADO').Value ]) then
      begin
       cds0011.Insert;
       cds0011GRUPOID.Value             := cdsFilho.FieldByName('GRUPOID').AsInteger;
       cds0011SIGLAGRUPO.Value          := cdsFilho.FieldByName('SIGLAGRUPO').AsString;
       cds0011SUBGRUPOID.Value          := cdsFilho.FieldByName('SUBGRUPOID').AsInteger;
       cds0011SUBGRUPO.Value            := cdsFilho.FieldByName('SUBGRUPO').AsString;
       cds0011NOVOUSADO.AsString        := cdsFilho.FieldByName('NOVOUSADO').AsString;
       cds0011SIGLA.Value               := 'PROD';
       cds0011DESCRICAORECEITA.Value    := 'PRODUTOS';
       cds0011DESCRICAOPRODUTO.AsString := cdsFilho.FieldByName('DESCRICAOSUBGRUPO').AsString;
       cds0011VLRTOTALRECEITA.Value     := cdsFilho.FieldByName('VLRPRECOTOTAL').AsCurrency;
       cds0011VLRCOFINS.Value           := cdsFilho.FieldByName('VLRCOFINS').AsCurrency;
       cds0011VLRPIS.Value              := cdsFilho.FieldByName('VLRPIS').AsCurrency;
       cds0011VLRICMS.Value             := cdsFilho.FieldByName('VLRICMS').AsCurrency;
       cds0011VLRIPI.Value              := cdsFilho.FieldByName('VLRIPI').AsCurrency;

       cds0011.Post;
      end
   else
      begin
       cds0011.Edit;
       cds0011VLRTOTALRECEITA.Value := cds0011VLRTOTALRECEITA.Value + cdsFilho.FieldByName('VLRPRECOTOTAL').AsCurrency;
       cds0011VLRCOFINS.Value       := cds0011VLRCOFINS.Value + cdsFilho.FieldByName('VLRCOFINS').AsCurrency;
       cds0011VLRPIS.Value          := cds0011VLRPIS.Value + cdsFilho.FieldByName('VLRPIS').AsCurrency;
       cds0011VLRICMS.Value         := cds0011VLRICMS.Value + cdsFilho.FieldByName('VLRICMS').AsCurrency;
       cds0011VLRIPI.Value          := cds0011VLRIPI.Value + cdsFilho.FieldByName('VLRIPI').AsCurrency;
       cds0011.Post;
      end;

   cds0011Analitico.Insert;
   cds0011AnaliticoEMPRESAID.Value             := cdsFilho.FieldByName('EMPRESAID').AsInteger;
   cds0011AnaliticoNOTAID.Value                := cdsFilho.FieldByName('NFSID').AsInteger;
   cds0011AnaliticoDATAEMISSAOID.Value         := cdsFilho.FieldByName('DATAEMISSAOID').AsDateTime;
   cds0011AnaliticoITEMID.Value                := cdsFilho.FieldByName('ITEMID').AsInteger;
   cds0011AnaliticoGRUPOID.Value               := cdsFilho.FieldByName('GRUPOID').AsInteger;
   cds0011AnaliticoSIGLAGRUPO.Value            := cdsFilho.FieldByName('SIGLAGRUPO').AsString;
   cds0011AnaliticoSUBGRUPO.Value              := cdsFilho.FieldByName('SUBGRUPO').AsString;
   cds0011AnaliticoSIGLARECEITA.Value          := 'PROD';
   cds0011AnaliticoDESCRICAOSIGLA.Value        := 'PRODUTOS';
   cds0011AnaliticoDESCRICAOSUBGRUPO.AsString  := cdsFilho.FieldByName('DESCRICAOSUBGRUPO').AsString;
   cds0011AnaliticoVLRRECEITA.Value            := cdsFilho.FieldByName('VLRPRECOTOTAL').AsCurrency;
   cds0011AnaliticoVLRCOFINS.Value             := cdsFilho.FieldByName('VLRCOFINS').AsCurrency;
   cds0011AnaliticoVLRPIS.Value                := cdsFilho.FieldByName('VLRPIS').AsCurrency;
   cds0011AnaliticoVLRICMS.Value               := cdsFilho.FieldByName('VLRICMS').AsCurrency;
   cds0011AnaliticoVLRIPI.Value                := cdsFilho.FieldByName('VLRIPI').AsCurrency;
   cds0011Analitico.Post;

   Inc(Contador);
   lblContador.Caption := IntToStr( Contador );
   lblContador.Refresh;
   cdsFilho.Next;
  end;
 cdsPai.Next;
 end;

 try
  frmRel0011C := TfrmRel0011C.Create( nil );
  Titulo := 'Resumo Demonstrativo Japão no Período de ';
  frmRel0011C.Quickrep1.Preview;
 finally
  FreeAndNil( frmRel0011C.QuickRep1 );
  FreeAndNil( frmRel0011C );
 end;
 cds0011.IndexFieldNames := '';
end;


procedure Tfrm0011.BitBtn9Click(Sender: TObject);
begin
 if not cds0011.IsEmpty then
    begin
     frmExportar := TfrmExportar.Create(nil);
     frmExportar.DataSource := ds0011;
     frmExportar.Show;
    end
 else
    MessageDlg('É necessário Gerar o Relatório primeiro!',mtWarning, [mbok],0 );
end;

procedure Tfrm0011.ComboBox2Change(Sender: TObject);
begin
 if TComboBox( Sender ).Text <> ' ' then
    CheckBox1.Checked := False;
end;

procedure Tfrm0011.CheckBox1Click(Sender: TObject);
begin
 if CheckBox1.Checked then
    ComboBox2.ItemIndex := -1;
end;

end.
