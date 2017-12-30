unit Unit1;

interface

uses
  Windows, SysUtils, Forms, StdCtrls, Menus, ComCtrls, wwriched, fcTreeView,
  Buttons, Controls, ExtCtrls, Classes, DB, DBClient, Variants, Messages, FMTBcd,
  DBTables, Dialogs, Grids, DBGrids,DateUtils, tmbToolcdsExportar, Mask;

type TGrupo = Record
      Descricao : array[1..8] of String;
      Origem    : array[1..8] of String;
      Destino   : array[1..8] of String;
      Primario  : array[1..8] of String;
end;

type
  TfrmMigra = class(TForm)
    StatusBar1: TStatusBar;
    PopupMenu3: TPopupMenu;
    Selecionartodos1: TMenuItem;
    Desmarcartodososselecionados1: TMenuItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    fctvwTabelas: TfcTreeView;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Pb1: TProgressBar;
    BitBtn3: TBitBtn;
    Splitter1: TSplitter;
    GroupBox2: TGroupBox;
    wwrichtxtLOG: TwwDBRichEdit;
    TabSheet2: TTabSheet;
    GroupBox4: TGroupBox;
    Splitter2: TSplitter;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Panel2: TPanel;
    BitBtn4: TBitBtn;
    Edit1: TEdit;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    TabSheet3: TTabSheet;
    GroupBox5: TGroupBox;
    Splitter3: TSplitter;
    GroupBox6: TGroupBox;
    Panel3: TPanel;
    BitBtn7: TBitBtn;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    TabSheet4: TTabSheet;
    GroupBox7: TGroupBox;
    BitBtn8: TBitBtn;
    wwdbrchMM: TwwDBRichEdit;
    Memo1: TMemo;
    TabSheet5: TTabSheet;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    Button1: TButton;
    TabSheet6: TTabSheet;
    BitBtn15: TBitBtn;
    Label1: TLabel;
    edtUltReg: TEdit;
    opdlgCorpoMSG: TOpenDialog;
    TabSheet7: TTabSheet;
    GroupBox12: TGroupBox;
    sbImportarPrecoJapao: TSpeedButton;
    mktImpPrecoJapao: TMaskEdit;
    btnAttachCorpo: TBitBtn;
    sbMunicipioIBGE: TSpeedButton;
    btnInsertTabPreco: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Sc1ReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    function  ValidCnPJ_CnPF( Text : String ) : Boolean;
    function  CnPJ( Cnpj : String ) : Boolean;
    function  CnPF( Cpf : String ) : Boolean;
    function  TransfNum( Txt : String ) : String;
    procedure Selecionartodos1Click(Sender: TObject);
    procedure Desmarcartodososselecionados1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure sbImportarPrecoJapaoClick(Sender: TObject);
    procedure sbMunicipioIBGEClick(Sender: TObject);
    procedure btnAttachCorpoClick(Sender: TObject);
    procedure btnInsertTabPrecoClick(Sender: TObject);
  private
    { Private declarations }
    CountId : array of array of Integer;
    procedure Conecta(Alias : String);
    procedure LimpaItem;
    function  NewValue(CampoId,Tabela,ParamSQL : String ):Integer;
    function Valor( Sequencia : String ) : Integer;
    function Estado( Valor : Integer ) : String;
// Rdv
    procedure Operacao;
    procedure Adiantamento;
    procedure AdiantamentoItem;
    procedure Memo;
    procedure Feriado;
    procedure Rdv;
    procedure ItemRdv;
    procedure ItemRdvEspelho;
    procedure RdvHora;
    procedure ItemRdvHora;
// Os
    procedure TipoOs;
    procedure TipoOsCfop;
    procedure Catalogo;
    procedure CustoHora;
    procedure Aparelho;
    procedure Aparelho_Omar;
    procedure Tecnico;
    procedure Defeito;
    procedure Tubo;
    procedure TuboDesativado;
    procedure Os;
    procedure OsHora;
    procedure OsDespesa;
    procedure OsDefeito;
    procedure OsVale;
    procedure OsEmpenho;
    procedure ClassifEmpenho;
    procedure OSClassifEmpenho;
    procedure OsBcoHora;
    procedure OsTerceiros;
// TecImp
    procedure TabelasAuxiliares;
    procedure Despachante;
    procedure ContatoJapao;
    procedure TipoProcesso;
    procedure Indice;
    procedure Preco;
    procedure LocalChegada;
    procedure ViaEmbarque;
    procedure Processo;
    procedure ProcessoItem;
    procedure ProcessoItemSerie ;
    procedure Declaracao;
    procedure Adicao;
    procedure Mercadoria;
// Sef
    procedure Empresa;
    procedure ContaContabil;
    procedure Departamento;
    procedure Observacao;
    procedure SiglaNatureza;
    procedure NaturezaOp;
    procedure NaturezaEmpresa;
    procedure Filial;
    procedure Entidade;
    procedure Banco;
    procedure CondPagto;
    procedure Imposto;
    procedure Grupo;
    procedure SubGrupo;
    procedure Uf;
    procedure Unidade;
    procedure TecWin;
    procedure Receita;
// Sef Empresa
    procedure Servico;
    procedure Produto;
    procedure Kardex;
    procedure Nfe;
    procedure NfeItem;
    procedure Nf3;
    procedure Nfs;
    procedure NfsParcela;
    procedure NfsServico;
    procedure CategoriaJuridica;
    procedure NaturezaJuridica;
// Contrato
   { ** Tabelas novas adicionas no novo sistema que não entram na migração
     -- TipoContrato - Tabela de Tipo de contrato
     -- Corretiva    - Tabela de manutenção Corretivas
     -- Preventiva   - Tabela de manutenção Preventiva
     }
      {Recursos para migração}
    procedure AbreTabela( TblDBX, TblDBE : String);
    procedure FechaTabela;
    procedure Migra(DestinoDBX, OrigemDBE: String; FieldOuValue : Char);
    procedure InsereTipoContrato;
    procedure InicializaCorretiva;
    procedure InicializaPreventiva;
    procedure InsereCorretiva;
    procedure InserePreventiva;
     {Tabelas de migração}
    procedure MgIndice;
    procedure MgValorIndice;
    procedure MgTermoContrato;
    procedure MgContratoPadrao;
    procedure MgContrato;
    procedure MgContratoAno;
    procedure MgContratoApar;
    procedure MgContratoServ;
    procedure MgContratoParc;
    procedure MgContratoAditivo;
    procedure ConvertCampos;

    {Importação/Comissão }
    procedure OrigemVenda;
    procedure TipoVenda;
    procedure ClasseVendedor;
    procedure TabFinanceira;
    procedure CondPagtoProp;
    procedure Bonificacao;
    procedure PedidoVenda;
    procedure PedidoVendaItem;
    procedure PedidoVendaComp;
    procedure PedidoVendaRevenda;
    procedure PedidoVendaVenda;
    procedure PedidoVendaBonif;
    procedure PedidoVendaInterv;
    procedure HistFechComissao;
    procedure AnaliseVenda;
    procedure AnalisevendaItem;
    procedure BasePagto;
    procedure PPProcesso;
    procedure PPProcessoParc;
    procedure PercentualVenda;
    procedure KdxTransf;

    procedure ProdutoParaPDX;
    procedure EntidadeParaCliente;
    procedure NaturezaOpParaPDX;
    procedure NfsParaPDX;
    procedure NfsParcelaParaPDX;

    { Horas }

    {Concatena uma data com uma Hora}
    function ConcatDateTimeF(VDate: TDate; VTime: TDateTime): TDateTime;

    {Calcula a Diferenca entre duas Datas}
    function DifDate(FirstDate, LastDate: TDateTime):Real;

    {Verifica se o dia e feriado}
    function GetFeriado( Data : TDateTime ):Integer;

//    function DifTime():Real;

    { Atualiza o valor das horas do funcionário e Retorna o Saldo Final}
    function GetSaldo():Real;

    { Transforma horas de Float para time }
    function FloatToTime(Value: Real): TDateTime;

    { Funcao para Calcular a Diferenca de Horas entre duas datas/Horas }
    function DiffTime( FilialID : Integer; TipoOperacao : String; HoraIni, HoraFim : TDateTime ): Real;

//    function DiferencaTime : Real;

    { Calcula a Diferenca da Hora final, quando a data inicial eh diferente da final }
    function DifSameDay( MFim,CIni,CFim : TTime; Data : TDateTime ) : Real;

    { Calcula a diferenca das datas entre dois intervalos (Data horas) }
    function DifIntervalTime(MIni,MFim,CIni,CFim : TTime ) : Real;

    { Formata um float (Min) para uma representação em String( Horas ) }
    function FormatTime( Value : Real ): String;

//    procedure TimeProcessing;

    { Concatena as datas da tabela Hora Item }
//    procedure ConcatDate;

    {Atualiza o Saldo de Horas de cada Funcionario}
    procedure UpdateSaldo;

  public
    { Public declarations }
    procedure MigrarTabela( Tabela : String );
    function LocalizarTecnico( TecnicoID : Integer ) : String;
    procedure AtivarMigracao( Item  : Integer );
    function Item( Valor: Integer ): Integer;
    function IExecDynamicProvider(Count: Integer; var RecsOut: Integer; const CommandText: WideString): OleVariant;
    function ExecDDL( iRecords: Integer; sCommandText: WideString; var cdsGeral: TClientDataSet): integer;
    procedure ExecQry2( ArqSQL : String );
    function  SubstituiString(Texto, Old, New: String): String;
  end;


var
  frmMigra: TfrmMigra;
  cdsLog  : TClientDataSet;
  Grupos  : TGrupo;
  Tabelas : TGrupo;

const SizeCorretiva = 8;
      SizePreventiva = 4;
var
  Corretiva  : array[1..SizeCorretiva] of String[100];
  Preventiva : array[1..SizePreventiva] of String[15];
  ViewEntidadeTecnico :  String =
  ' SELECT CPFCNPJ, ENTIDADEID' +
  ' FROM EF_ENTIDADE' +
  ' WHERE (ENTIDADEID BETWEEN 50000 AND 59999)' +
  ' OR ( ENTIDADEID = 20112 )' +
  ' OR ( ENTIDADEID = 690 )' +
  ' OR ( ENTIDADEID = 20105 )' +
  ' OR ( ENTIDADEID = 20377 )' +
  ' OR ( ENTIDADEID = 20729 )' +
  ' OR ( ENTIDADEID = 20388 )' +
  ' OR ( ENTIDADEID = 20103 )' +
  ' OR ( ENTIDADEID = 20700 )' +
  ' OR ( ENTIDADEID = 20104 )' +
  ' OR ( ENTIDADEID = 20161 )';

implementation

uses uReconcileError, uDMMigra, u_dmHora;

{$R *.dfm}

function ConvNumericoBooleano( Campo : TField ) : Boolean;
begin
 Result := False;
 if Campo.AsInteger = 1 then
    Result := True;
end;

procedure TfrmMigra.MigrarTabela( Tabela : String );
var i, x : Integer;
begin
 Tabela := Trim( Tabela );

 if ( Tabela = '' ) or ( Tabela = '*' )  then
    exit;

 DMMigra.cdsANTIGO.Close;
 DMMigra.cdsANTIGO.CommandText := 'SELECT * FROM GSI.' + Tabela;
 DMMigra.cdsANTIGO.Open;

 DMMigra.cdsNOVO.Close;
 DMMigra.cdsNOVO.CommandText := 'SELECT * FROM GSI.' + Tabela;
 DMMigra.cdsNOVO.Open;

 try
  x := 0;
  DMMigra.cdsANTIGO.First;
  while not DMMigra.cdsANTIGO.Eof do
  begin
   Inc( x );

   edtUltReg.Text := DMMigra.cdsANTIGO.Fields[0].AsString +' '+
                     DMMigra.cdsANTIGO.Fields[1].AsString +' '+
                     DMMigra.cdsANTIGO.Fields[2].AsString;

   DMMigra.cdsNOVO.Insert;

   for i := 0 to DMMigra.cdsANTIGO.FieldCount - 1  do
   begin
    if not DMMigra.cdsANTIGO.Fields[i].IsNull then
       DMMigra.cdsNOVO.FieldByName(DMMigra.cdsANTIGO.Fields[i].DisplayName).AsVariant := DMMigra.cdsANTIGO.Fields[i].AsVariant;
   end;

   DMMigra.cdsNOVO.Post;
   if x > 500 then
      begin
       x := 0;
       DMMigra.cdsNOVO.ApplyUpdates(-1);
      end;

   DMMigra.cdsANTIGO.Next;
  end;

  if DMMigra.cdsNOVO.ChangeCount > 0 then
     DMMigra.cdsNOVO.ApplyUpdates(-1);

 except
 on E: Exception do
  begin
   MessageDlg(E.Message, mtWarning, [mbOK], 0);
   Memo1.Lines.Add( iNTTOSTR(DMMigra.cdsANTIGO.RecNo) + DMMigra.cdsANTIGO.Fields[0].DisplayName +
                    DMMigra.cdsNOVO.FieldS[0].AsString + '  -  '  + DMMigra.cdsANTIGO.FieldS[0].AsString );
  end;
 end;

 DMMigra.cdsNOVO.ApplyUpdates(-1);
end;


function TfrmMigra.LocalizarTecnico( TecnicoID : Integer ) : String;
begin
 with DMMigra do
 begin
  if not DMMigra.tbTecnico.Active then
     DMMigra.tbTecnico.Open;

  if ( TecnicoID = 1  ) or ( TecnicoID = 90 ) then
     begin
      Result := '46563938000110';
      exit;
     end;

  if ( TecnicoID = 15  ) then
     begin
      Result := '00006119310';
      exit;
     end;

  if ( TecnicoID = 53  ) then
     begin
      Result := '00011560567';
      exit;
     end;

  if ( TecnicoID = 71  ) then
     begin
      Result := '00084955236';
      exit;
     end;

  if ( TecnicoID = 55  ) then
     begin
      Result := '00008121044';
      exit;
     end;

  if ( TecnicoID = 12  ) then
     begin
      Result := '00007472552';
      exit;
     end;

  if ( TecnicoID = 11  ) then
     begin
      Result := '00009133430';
      exit;
     end;

  if ( TecnicoID = 51  ) then
     begin
      Result := '00006113828';
      exit;
     end;

  if ( TecnicoID = 14  ) then
     begin
      Result := '00009501706';
      exit;
     end;



  if DMMigra.tbTecnico.FindKey([TecnicoID ]) then
     Result := TransfNum( tbTecnicoCPF.AsString );
 end;
end;

function TfrmMigra.Item( Valor: Integer ): Integer;
var
  i : Integer;
  Testa : Boolean;
begin
  Testa  := False;
  Result := 1;
  with DMMigra do begin
    for i := 0 to High( CountId ) do
      if CountId[i, 0] = Valor then
      begin
        CountId[i, 1] := CountId[i, 1] + 1;
        Result := CountId[i, 1];
        Testa  := True;
        Break;
      end;
    if Not Testa then
    begin
      SetLength( CountId, Length( CountId ) + 1 );
      SetLength( CountId[High( CountId )], 2 );
      CountId[High( CountId ), 0] := Valor;
      CountId[High( CountId ), 1] := 1;
    end;
  end;
end;


function TfrmMigra.IExecDynamicProvider(Count: Integer;
  var RecsOut: Integer; const CommandText: WideString): OleVariant;
begin
 Result := Null;
 try
  { Preparando Query }
  if dmMigra.sqldtsDynamic.Active then
     dmMigra.sqldtsDynamic.Close;

  if dmMigra.cdsDynamic.Active then
     begin
      dmMigra.cdsDynamic.CheckBrowseMode;
      dmMigra.cdsDynamic.Close;
     end;

  dmMigra.cdsDynamic.CommandText := CommandText;

  { Ativando ClientDataSet }
  dmMigra.cdsDynamic.PacketRecords := (Count);
  dmMigra.cdsDynamic.Open;

  { Retornando Data }
  RecsOut := dmMigra.cdsDynamic.RecordCount;
  Result  := dmMigra.cdsDynamic.Data;

  { Desativando ClientDataSet }
  dmMigra.cdsDynamic.Active := False;
 except
  on E:Exception do
     raise Exception.Create(E.Message);
 end;
end;


function TfrmMigra.ExecDDL( iRecords: Integer; sCommandText: WideString;
                  var cdsGeral: TClientDataSet): integer;
var OleVar: OleVariant;
begin
 Result := -1;
 OleVar := null;

 Screen.Cursor := crHourGlass;
 try
  try
   { Executando SQL }

   try
    OleVar := IExecDynamicProvider(iRecords, Result, sCommandText);
   except
    On E:Exception do
       Application.ProcessMessages;
    end;
   { Testando se cdsGeral está criado }
   if not Assigned(cdsGeral) then
      cdsGeral := TClientDataSet.Create(nil);

   { Testando se cdsGeral está ativo }
   if cdsGeral.Active then
      cdsGeral.Close;

   { Atribuindo e ativando }
   cdsGeral.Data := OleVar;
  except
   on E:Exception do
      ShowMessage(E.Message);
  end;
 finally
  Screen.Cursor := crDefault;
 end;
end;


procedure TfrmMigra.Conecta(Alias : String);
var AliasName : String;
begin
 with DMMigra do
 begin
  AliasName := dbMigra.AliasName;
  if Not ( AliasName = Alias ) then
     begin
      dbMigra.Close;
      dbMigra.AliasName := Alias;
      dbMigra.Open;
     end;
 end;
end;


function TfrmMigra.SubstituiString(Texto, Old, New: String): String;
var I : Integer;
begin
 while ( Pos( Old, Texto ) > 0 ) do
 begin
  i := Pos( Old, Texto );
  Delete( Texto, i, 1 );
  Insert( New, Texto, i );
 end;
 Result := Texto;

end;

procedure TfrmMigra.ExecQry2( ArqSQL : String );
var
 Arq : String;
begin
 Arq := 'Script Atualiza\' + ArqSQL;
 if not FileExists( Arq ) then
    exit;

 with DMMigra do begin
   with qryGeral do
   begin
    if Active then
       Active := False;
    SQL.Clear;
    SQL.LoadFromFile( Arq );
    ExecSQL;
   end;
 end;
end;

procedure TfrmMigra.BitBtn2Click(Sender: TObject);
begin
 DMMigra.SQLCon.Connected := False;
 Close;
end;

procedure TfrmMigra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  with DMMigra do begin
    Sc1.Close;
    Tb1.Close;
    SQLCon.Close;
    dbMigra.Close;
  end;
  Action := caFree;
  FreeAndNil(cdsLog);
end;

procedure TfrmMigra.FormDestroy(Sender: TObject);
begin
  frmMigra := nil;
end;

procedure TfrmMigra.Operacao;
begin
 exit;
  with DMMigra do begin
    Conecta('RDV');
    Tb1.TableName   := 'OPERACAO.DB';
    Sc1.CommandText := 'SELECT * FROM RD_OPERACAO';
    Tb1.Open;
    Sc1.Open;
    Tb1.First;
    Pb1.Max := Tb1.RecordCount;
    while Not Tb1.Eof do
    begin
      Sc1.Insert;
      Sc1.FieldByName('OPERACAOID').Value        := Tb1.FieldByName('CODIGO').Value;
      Sc1.FieldByName('FINALIDADE').Value        := Tb1.FieldByName('FINALIDADE').Value;
      Sc1.FieldByName('DESCRICAO').Value         := Tb1.FieldByName('DESCRICAO').Value;
      Sc1.FieldByName('CONTACONTABILID').Value   := Tb1.FieldByName('CONTA').Value;
      Sc1.FieldByName('OPERACAO').Value          := Tb1.FieldByName('OPERACAO').Value;
      Sc1.FieldByName('USUARIO').Value           := Tb1.FieldByName('USUARIO').Value;
      Sc1.Post;
      Tb1.Next;
      Pb1.StepIt;
      if Sc1.ChangeCount >= 500 then
         Sc1.ApplyUpdates(-1);
    end;
    if Sc1.ChangeCount > 0 then
       Sc1.ApplyUpdates(-1);
    Tb1.Close;
    Sc1.Close;
  end;
end;

procedure TfrmMigra.Adiantamento;
var sqlEntidade : String;
    cdsEntidade : TClientDataSet;
begin
 exit;

 sqlEntidade := 'SELECT ENTIDADEID, CPFCNPJ FROM EF_ENTIDADE';
 ExecDDL( -1, sqlEntidade, cdsEntidade );
 cdsEntidade.AddIndex( 'idx1','ENTIDADEID',[ixPrimary],'','',0);
 cdsEntidade.IndexName := 'idx1';

 try
  with DMMigra do
  begin
   Conecta('RDV');
   Tb1.TableName   := 'ADIANTAMENTO.DB';
   Sc1.CommandText := 'SELECT * FROM RD_ADIANTAMENTO';
   Tb1.Open;
   Sc1.Open;

   Tb1.First;
   Pb1.Max := Tb1.RecordCount;
   while Not Tb1.Eof do
   begin
    if not cdsEntidade.FindKey([(50000 + Tb1.FieldByName('CD_FUNCIONARIO').AsInteger)] ) then
       begin
        wwrichtxtLOG.Lines.Add( 'Tabela Adiantamento Entidade não cadastrada, AdiantID = ' + Tb1.FieldByName('CD_ADIANTAMENTO').AsString );
        Tb1.Next;
        Pb1.StepIt;
        Continue;
       end;

    Sc1.Insert;
    Sc1.FieldByName('ADIANTAMENTOID').Value    := Tb1.FieldByName('CD_ADIANTAMENTO').Value;
    Sc1.FieldByName('DATASOLICITACAO').Value   := Tb1.FieldByName('DT_SOLICITACAO').Value;
    Sc1.FieldByName('DATADEPOSITO').Value      := Tb1.FieldByName('DT_DEPOSITO').Value;
    Sc1.FieldByName('FUNCIONARIOID').AsInteger := 50000 + Tb1.FieldByName('CD_FUNCIONARIO').AsInteger;
    Sc1.FieldByName('OPERACAOID').Value        := Tb1.FieldByName('CD_OPERACAO').AsInteger;
    Sc1.FieldByName('VLROPERACAO').Value       := Tb1.FieldByName('VLR_OPERACAO').AsFloat;
    Sc1.FieldByName('HORASOLICITADA').Value    := Tb1.FieldByName('HORA_SOLIC').AsDateTime;
    Sc1.FieldByName('HISTORICO').Value         := Tb1.FieldByName('HISTORICO').AsString;

    if Tb1.FieldByName('LIB_CHEFIA').AsBoolean then
       begin
        Sc1.FieldByName('LIBCHEFIA').Value := 1;
        Sc1.FieldByName('NOMELIBCHEFIA').Value := Tb1.FieldByName('NM_LIB_CHEFIA').AsString;
       end
    else
       Sc1.FieldByName('LIBCHEFIA').Value  := 0;

    if Tb1.FieldByName('LIB_OK').Value then
       Sc1.FieldByName('LIBERADO').Value := 1
    else
       Sc1.FieldByName('LIBERADO').Value := 0;
    Sc1.FieldByName('KMSAIDA').Value   := Tb1.FieldByName('KM_SAIDA').Value;
    Sc1.FieldByName('KMCHEGADA').Value := Tb1.FieldByName('KM_ENTRADA').Value;
    Sc1.FieldByName('USUARIO').Value   := Tb1.FieldByName('SOLICITANTE').Value;
    Sc1.Post;
    Tb1.Next;
    Pb1.StepIt;
    if Sc1.ChangeCount >= 500 then
       Sc1.ApplyUpdates(-1);
   end;
   if Sc1.ChangeCount > 0 then
      Sc1.ApplyUpdates(-1);
   Tb1.Close;
   Sc1.Close;
  end;
  cdsEntidade.Close;
 finally
  FreeAndNil( cdsEntidade );
 end;
end;

procedure TfrmMigra.AdiantamentoItem;
var sqlAdiantamento : String;
    cdsAdiantamento : TClientDataSet;
begin
 exit;
 
 sqlAdiantamento := 'SELECT ADIANTAMENTOID FROM RD_ADIANTAMENTO';
 ExecDDL( -1, sqlAdiantamento, cdsAdiantamento );
 cdsAdiantamento.AddIndex( 'idx1','ADIANTAMENTOID',[ixPrimary],'','',0);
 cdsAdiantamento.IndexName := 'idx1';

 try
  with DMMigra do
  begin
   Conecta('RDV');
   Tb1.TableName   := 'ADIANTAMENTOITEM.DB';
   Sc1.CommandText := 'SELECT * FROM RD_ADIANTAMENTOITEM';
   Tb1.Open;
   Sc1.Open;
   Tb1.First;
   Pb1.Max := Tb1.RecordCount;
   while Not Tb1.Eof do
   begin
    if not cdsAdiantamento.FindKey([Tb1.FieldByName('CD_ADIANTAMENTO').AsInteger]) then
       begin
        wwrichtxtLOG.Lines.Add( 'Tabela Adiantamento Item Entidade não cadastrada, AdiantID = ' + Tb1.FieldByName('CD_ADIANTAMENTO').AsString );
        Sc1.Cancel;
        Tb1.Next;
        Continue;
      end;

    Sc1.Insert;
    Sc1.FieldByName('ADIANTAMENTOID').AsInteger := Tb1.FieldByName('CD_ADIANTAMENTO').AsInteger;
    Sc1.FieldByName('ITEMID').AsInteger         := Tb1.FieldByName('ITEM').AsInteger;
    Sc1.FieldByName('DATASOLICITACAO').Value    := Tb1.FieldByName('DT_SOLICITACAO').Value;
    Sc1.FieldByName('OPERACAOID').Value         := Tb1.FieldByName('CD_OPERACAO').Value;
    Sc1.FieldByName('VLROPERACAO').Value        := Tb1.FieldByName('VLR_OPERACAO').Value;
    Sc1.FieldByName('HISTORICO').Value          := Tb1.FieldByName('HISTORICO').Value;
    Sc1.FieldByName('KMSAIDA').Value            := Tb1.FieldByName('KM_SAIDA').Value;
    Sc1.FieldByName('KMCHEGADA').Value          := Tb1.FieldByName('KM_ENTRADA').Value;
    Sc1.FieldByName('USUARIO').Value            := Tb1.FieldByName('SOLICITANTE').Value;
    Sc1.Post;
    Tb1.Next;
    Pb1.StepIt;
    if Sc1.ChangeCount >= 500 then
       Sc1.ApplyUpdates(-1);
   end;

   if Sc1.ChangeCount > 0 then
      Sc1.ApplyUpdates(-1);
   Tb1.Close;
   Sc1.Close;
  end;
  cdsAdiantamento.Close;
 finally
  FreeAndNil( cdsAdiantamento );
 end;
end;

procedure TfrmMigra.Memo;
var sqlEntidade : String;
    cdsEntidade : TClientDataSet;
begin
 exit;
 
 sqlEntidade := 'SELECT ENTIDADEID, CPFCNPJ FROM EF_ENTIDADE';
 ExecDDL( -1, sqlEntidade, cdsEntidade );
 cdsEntidade.AddIndex( 'idx1','ENTIDADEID',[ixPrimary],'','',0);
 cdsEntidade.IndexName := 'idx1';

 try
  with DMMigra do begin
    Conecta('RDV');
    Tb1.TableName   := 'MEMO.DB';
    Sc1.CommandText := 'SELECT * FROM RD_MEMO';
    Tb1.Open;
    Sc1.Open;
    Tb1.First;
    Pb1.Max := Tb1.RecordCount;
    while Not Tb1.Eof do
    begin
     if not cdsEntidade.FindKey([(50000 + Tb1.FieldByName('CD_FUNCIONARIO').AsInteger)] ) then
        begin
         wwrichtxtLOG.Lines.Add( 'Tabela Memo Entidade não cadastrada, MemoID = ' + Tb1.FieldByName('CD_MEMO').AsString );
         Tb1.Next;
         Pb1.StepIt;
         Continue;
        end;

      if Not Tb1.FieldByName('CD_MEMO').IsNull then
      begin
        Sc1.Insert;
        Sc1.FieldByName('MEMOID').Value           := Tb1.FieldByName('CD_MEMO').Value;
        Sc1.FieldByName('DATASOLICITACAO').Value  := Tb1.FieldByName('DT_SOLICITACAO').Value;
        Sc1.FieldByName('DATADEPOSITO').Value     := Tb1.FieldByName('DT_DEPOSITO').Value;
        Sc1.FieldByName('FUNCIONARIOID').AsInteger := 50000 + Tb1.FieldByName('CD_FUNCIONARIO').AsInteger;
        Sc1.FieldByName('OPERACAOID').Value       := Tb1.FieldByName('CD_OPERACAO').Value;
        Sc1.FieldByName('VLRMEMO').Value          := Tb1.FieldByName('VALOR_MEMO').Value;
        Sc1.FieldByName('HISTORICO').Value        := Tb1.FieldByName('HISTORICO').Value;
        Sc1.FieldByName('SOLICITANTE').Value      := Tb1.FieldByName('SOLICITANTE').Value;

        if Tb1.FieldByName('LIBERADO').Value then
           Sc1.FieldByName('LIBERADO').Value := 1
        else
           Sc1.FieldByName('LIBERADO').Value := 0;

        if Tb1.FieldByName('PROCESSADO').Value then
           Sc1.FieldByName('TRANSFERIDO').Value := 1
        else
           Sc1.FieldByName('TRANSFERIDO').Value := 0;

        Sc1.Post;
        if Sc1.ChangeCount >= 500 then
           Sc1.ApplyUpdates(-1);
      end;
      Tb1.Next;
      Pb1.StepIt;
    end;
    if Sc1.ChangeCount > 0 then
       Sc1.ApplyUpdates(-1);
    Tb1.Close;
    Sc1.Close;
  end;
  cdsEntidade.Close;
 finally
  FreeAndNil( cdsEntidade );
 end;
end;

procedure TfrmMigra.Feriado;
var sqlFilial : String;
    cdsFilial : TClientDataSet;
begin
 sqlFilial  := 'SELECT EF_FILIAL.IDENTIFICADOR, EF_FILIAL.FILIALID ' +
               ' FROM EF_FILIAL ';
 ExecDDL( -1, sqlFilial, cdsFilial );
 cdsFilial.AddIndex( 'idx1','IDENTIFICADOR',[ixPrimary],'','',0);
 cdsFilial.IndexName := 'idx1';

 try
  with DMMigra do
  begin
   Conecta('RDV');
   Tb1.TableName   := 'FERIADOS.DB';
   Sc1.CommandText := 'SELECT * FROM RD_FERIADO';
   Tb1.Open;
   Sc1.Open;
   Tb1.First;
   Pb1.Max := Tb1.RecordCount;
   while Not Tb1.Eof do
   begin
    Sc1.Insert;
    Sc1.FieldByName('FERIADOID').Value    := Valor( 'SQ_RD_FERIADO_FERIADOID' );
    Sc1.FieldByName('DATAFERIADO').Value := Tb1.FieldByName('DT_FERIADO').Value;

    if not Tb1.FieldByName('FILIAL').IsNull then
       if cdsFilial.FindKey([UpperCase( Tb1.FieldByName('FILIAL').AsString ) ]) then
           Sc1.FieldByName('FILIALID').Value := cdsFilial.FieldByName('FILIALID').AsInteger;

    if Tb1.FieldByName('FERIADO_REGIONAL').Value then
       Sc1.FieldByName('FERIADOREGIONAL').Value := 1
    else
       Sc1.FieldByName('FERIADOREGIONAL').Value := 0;

    if Not Tb1.FieldByName('LIBERADOCIA').IsNull then
       begin
        if Tb1.FieldByName('LIBERADOCIA').Value then
           Sc1.FieldByName('LIBERADOEMPRESA').Value  := 1
        else
          Sc1.FieldByName('LIBERADOEMPRESA').Value   := 0;
       end
    else
       Sc1.FieldByName('LIBERADOEMPRESA').Value  := 0;

    Sc1.FieldByName('DESCRICAOFERIADO').Value := Tb1.FieldByName('DESCR_FERIADO').Value;
    Sc1.FieldByName('USUARIO').Value          := Tb1.FieldByName('USUARIO').Value;
    Sc1.Post;
    Tb1.Next;
    Pb1.StepIt;
   end;
   if Sc1.ChangeCount > 0 then
        Sc1.ApplyUpdates(-1);
   Tb1.Close;
   Sc1.Close;
  end;
  cdsFilial.Close;
 finally
  FreeAndNil( cdsFilial );
 end;
end;

procedure TfrmMigra.Rdv;
var sqlEntidade: String;
    cdsEntidade : TClientDataSet;
begin
 exit;
 
 sqlEntidade := 'SELECT ENTIDADEID, CPFCNPJ FROM EF_ENTIDADE';
 ExecDDL( -1, sqlEntidade, cdsEntidade );
 cdsEntidade.AddIndex( 'idx1','ENTIDADEID',[ixPrimary],'','',0);
 cdsEntidade.IndexName := 'idx1';

 try
  with DMMigra do
  begin
   Conecta('RDV');
   Tb1.TableName   := 'RDV.DB';
   Sc1.CommandText := 'SELECT * FROM RD_RDV';
   Tb1.Open;
   Sc1.Open;
   Tb1.First;
   Pb1.Max := Tb1.RecordCount;
   while not Tb1.Eof do
   begin
    if not cdsEntidade.FindKey([(50000 + Tb1.FieldByName('CD_RDV').AsInteger)] ) then
        begin
         wwrichtxtLOG.Lines.Add( 'Tabela RDV Entidade não cadastrada, RDV ID = ' + Tb1.FieldByName('CD_RDV').AsString );
         Tb1.Next;
         Pb1.StepIt;
         Continue;
        end;

    Sc1.Insert;
    Sc1.FieldByName('RDVID').Value          := cdsEntidade.FieldByName('ENTIDADEID').AsInteger;
    Sc1.FieldByName('DATAABERTURA').Value   := Tb1.FieldByName('DT_ABERTURA').Value;
    Sc1.FieldByName('VLRSALDO').Value       := Tb1.FieldByName('SALDO').Value;
    Sc1.FieldByName('DATAFECHAMENTO').Value := Tb1.FieldByName('DT_FECHAMENTO').Value;
    Sc1.FieldByName('DATAMESABERTO').Value  := Tb1.FieldByName('DT_MES_ABERTO').Value;

    if Not Tb1.FieldByName('BLOQUEADO').IsNull then
       begin
        if Tb1.FieldByName('BLOQUEADO').Value then
           Sc1.FieldByName('BLOQUEADO').Value := 1
        else
           Sc1.FieldByName('BLOQUEADO').Value := 0;
       end
    else
       Sc1.FieldByName('BLOQUEADO').Value := 0;

    Sc1.Post;
    if Sc1.ChangeCount > 100 then
       Sc1.ApplyUpdates(-1);

    Tb1.Next;
    Pb1.StepIt;
   end;
   if Sc1.ChangeCount > 0 then
      Sc1.ApplyUpdates(-1);
   Tb1.Close;
   Sc1.Close;
  end;
  cdsEntidade.Close;
 finally
  FreeAndNil( cdsEntidade );
 end;
end;

procedure TfrmMigra.ItemRdv;
var sqlOS, sqlEntidade : String;
    cdsOS, cdsEntidade : TClientDataSet;
begin
 exit;
 sqlOS := 'SELECT OSID FROM OS_OS';
 ExecDDL( -1, sqlOS, cdsOS );
 cdsOS.AddIndex( 'idx1','OSID',[ixPrimary],'','',0);
 cdsOS.IndexName := 'idx1';

 sqlEntidade := 'SELECT ENTIDADEID, CPFCNPJ FROM EF_ENTIDADE';
 ExecDDL( -1, sqlEntidade, cdsEntidade );
 cdsEntidade.AddIndex( 'idx1','ENTIDADEID',[ixPrimary],'','',0);
 cdsEntidade.IndexName := 'idx1';

 try
  with DMMigra do
  begin
   Conecta('RDV');
   Tb1.TableName   := 'ITENSRDV';
   Sc1.CommandText := 'SELECT * FROM RD_RDVITEM';
   Tb1.Open;
   Sc1.Open;
   Tb1.First;
   Pb1.Max := Tb1.RecordCount;
   while Not Tb1.Eof do
   begin
    if not cdsEntidade.FindKey([(50000 + Tb1.FieldByName('CD_RDV').AsInteger)] ) then
        begin
         wwrichtxtLOG.Lines.Add( 'Tabela RDVITEM Entidade não cadastrada, RDVID = ' + Tb1.FieldByName('CD_RDV').AsString );
         Tb1.Next;
         Pb1.StepIt;
         Continue;
        end;

    Sc1.Insert;
    Sc1.FieldByName('RDVID').Value            := cdsEntidade.FieldByName('ENTIDADEID').AsInteger;
    Sc1.FieldByName('DATAMOVIMENTOID').Value  := Tb1.FieldByName('DT_MOVIMENTO').Value;

    if Not Tb1.FieldByName('ITEM').IsNull then
       Sc1.FieldByName('ITEMID').Value        := Tb1.FieldByName('ITEM').Value;

    Sc1.FieldByName('DATADOC').Value          := Tb1.FieldByName('DT_DOC').Value;

    if not Tb1.FieldByName('IDENOS').IsNull then
       begin
        if cdsOS.FindKey([Tb1.FieldByName('IDENOS').AsString]) then
           Sc1.FieldByName('OSID').Value := Tb1.FieldByName('IDENOS').Value
        else
          wwrichtxtLOG.Lines.Add( 'Tabela Item RDV OS não localizada OS ID = ' + Tb1.FieldByName('IDENOS').AsString );
       end;

    Sc1.FieldByName('OPERACAOID').Value       := Tb1.FieldByName('CD_OPERACAO').Value;
    Sc1.FieldByName('VLRDESPESA').Value       := Tb1.FieldByName('VALOR').Value;
    Sc1.FieldByName('VLRSALDO').Value         := Tb1.FieldByName('SALDO').Value;
    Sc1.FieldByName('HISTORICO').Value        := Tb1.FieldByName('HISTORICO').Value;
    Sc1.FieldByName('KMSAIDA').Value          := Tb1.FieldByName('KM_SAIDA').Value;
    Sc1.FieldByName('KMCHEGADA').Value        := Tb1.FieldByName('KM_ENTRADA').Value;
    Sc1.FieldByName('DATAFECHAMENTO').Value   := Tb1.FieldByName('DT_FECHAMENTO').Value;
    Sc1.FieldByName('USUARIO').Value          := Tb1.FieldByName('USUARIO').Value;
    Sc1.Post;
    if Sc1.ChangeCount >= 500 then
       Sc1.ApplyUpdates(-1);

    Tb1.Next;
    Pb1.StepIt;
   end;

   if Sc1.ChangeCount > 0 then
      Sc1.ApplyUpdates(-1);
   Tb1.Close;
   Sc1.Close;
  end;
 finally
  FreeAndNil( cdsOS );
  FreeAndNil( cdsEntidade );
 end;
end;

procedure TfrmMigra.ItemRdvEspelho;
var sqlOS, sqlEntidade : String;
    cdsOS, cdsEntidade : TClientDataSet;
begin
 exit;
 sqlOS := 'SELECT OSID FROM OS_OS';
 ExecDDL( -1, sqlOS, cdsOS );
 cdsOS.AddIndex( 'idx1','OSID',[ixPrimary],'','',0);
 cdsOS.IndexName := 'idx1';

 sqlEntidade := 'SELECT ENTIDADEID, CPFCNPJ FROM EF_ENTIDADE';
 ExecDDL( -1, sqlEntidade, cdsEntidade );
 cdsEntidade.AddIndex( 'idx1','ENTIDADEID',[ixPrimary],'','',0);
 cdsEntidade.IndexName := 'idx1';

 try
  with DMMigra do
  begin
   Conecta('RDV');
   Tb1.TableName   := 'ITENSESPELHO';
   Sc1.CommandText := 'SELECT * FROM RD_RDVESPELHO';
   Tb1.Open;
   Sc1.Open;
   Tb1.First;
   Pb1.Max := Tb1.RecordCount;
   while Not Tb1.Eof do
   begin
    if not cdsEntidade.FindKey([(50000 + Tb1.FieldByName('CD_RDV').AsInteger)] ) then
        begin
         wwrichtxtLOG.Lines.Add( 'Tabela RDVESPELHO Entidade não cadastrada, RDVID = ' + Tb1.FieldByName('CD_RDV').AsString );
         Tb1.Next;
         Pb1.StepIt;
         Continue;
        end;

    Sc1.Insert;
    Sc1.FieldByName('RDVID').Value            := cdsEntidade.FieldByName('ENTIDADEID').AsInteger;
    Sc1.FieldByName('DATADOCID').Value          := Tb1.FieldByName('DT_DOC').Value;

    if Not Tb1.FieldByName('ITEM').IsNull then
       Sc1.FieldByName('ITEMID').Value        := Tb1.FieldByName('ITEM').Value;


    if not Tb1.FieldByName('IDENOS').IsNull then
       begin
        if cdsOS.FindKey([Tb1.FieldByName('IDENOS').AsString]) then
           Sc1.FieldByName('OSID').Value := Tb1.FieldByName('IDENOS').Value
        else
          wwrichtxtLOG.Lines.Add( 'Tabela Item RDV OS não localizada OS ID = ' + Tb1.FieldByName('IDENOS').AsString );
       end;

    Sc1.FieldByName('OPERACAOID').Value       := Tb1.FieldByName('CD_OPERACAO').Value;
    Sc1.FieldByName('VLRDESPESA').Value       := Tb1.FieldByName('VALOR').Value;
    Sc1.FieldByName('VLRSALDO').Value         := Tb1.FieldByName('SALDO').Value;
    Sc1.FieldByName('HISTORICO').Value        := Tb1.FieldByName('HISTORICO').Value;
    Sc1.FieldByName('KMSAIDA').Value          := Tb1.FieldByName('KM_SAIDA').Value;
    Sc1.FieldByName('KMCHEGADA').Value        := Tb1.FieldByName('KM_ENTRADA').Value;
    Sc1.FieldByName('USUARIO').Value          := Tb1.FieldByName('USUARIO').Value;
    Sc1.Post;
    if Sc1.ChangeCount >= 500 then
       Sc1.ApplyUpdates(-1);

    Tb1.Next;
    Pb1.StepIt;
   end;

   if Sc1.ChangeCount > 0 then
      Sc1.ApplyUpdates(-1);
   Tb1.Close;
   Sc1.Close;
  end;
 finally
  FreeAndNil( cdsOS );
  FreeAndNil( cdsEntidade );
 end;
end;


procedure TfrmMigra.RdvHora;
var sqlEntidade : String;
    cdsEntidade : TClientDataSet;
begin
 Exit;
 sqlEntidade := 'SELECT ENTIDADEID, CPFCNPJ FROM EF_ENTIDADE';
 ExecDDL( -1, sqlEntidade, cdsEntidade );
 cdsEntidade.AddIndex( 'idx1','ENTIDADEID',[ixPrimary],'','',0);
 cdsEntidade.IndexName := 'idx1';

 try
  with DMMigra do
  begin
   Conecta('RDV');
   Tb1.TableName   := 'HORAS';
   Sc1.CommandText := 'SELECT * FROM RD_HORA';
   Tb1.Open;
   Sc1.Open;
   Tb1.First;
   Pb1.Max := Tb1.RecordCount;
   while Not Tb1.Eof do
   begin
    if not cdsEntidade.FindKey([(50000 + Tb1.FieldByName('CD_HORAS').AsInteger)] ) then
       begin
        wwrichtxtLOG.Lines.Add( 'Tabela HORAS Entidade não cadastrada, HORAID = ' + Tb1.FieldByName('CD_HORAS').AsString );
        Tb1.Next;
        Pb1.StepIt;
        Continue;
       end;

    Sc1.Insert;
    Sc1.FieldByName('HORAID').AsInteger     := cdsEntidade.FieldByName('ENTIDADEID').AsInteger;
    Sc1.FieldByName('DATAABERTURA').Value   := Tb1.FieldByName('DT_ABERTURA').Value;
    Sc1.FieldByName('VLRSALDO').Value       := Tb1.FieldByName('SALDO').Value;
    Sc1.FieldByName('DATAFECHAMENTO').Value := Tb1.FieldByName('DT_FECHAMENTO').Value;
    Sc1.FieldByName('BLOQUEADO').Value      := Tb1.FieldByName('BLOQUEADO').Value;
    Sc1.Post;

    if Sc1.ChangeCount >= 500 then
       Sc1.ApplyUpdates(-1);

    Tb1.Next;
    Pb1.StepIt;
  end;
  if Sc1.ChangeCount > 0 then
     Sc1.ApplyUpdates(-1);
  Tb1.Close;
  Sc1.Close;
  end;
 finally
  FreeAndNil( cdsEntidade);
 end;
end;

procedure TfrmMigra.ItemRdvHora;
var sqlOS, sqlEntidade: String;
    cdsOS, cdsEntidade : TClientDataSet;
begin
 exit;
 sqlOS := 'SELECT OSID FROM OS_OS';
 ExecDDL( -1, sqlOS, cdsOS );
 cdsOS.AddIndex( 'idx1','OSID',[ixPrimary],'','',0);
 cdsOS.IndexName := 'idx1';

 sqlEntidade := 'SELECT ENTIDADEID, CPFCNPJ FROM EF_ENTIDADE';
 ExecDDL( -1, sqlEntidade, cdsEntidade );
 cdsEntidade.AddIndex( 'idx1','ENTIDADEID',[ixPrimary],'','',0);
 cdsEntidade.IndexName := 'idx1';

 try
  with DMMigra do
  begin
   Conecta('RDV');
   Tb1.TableName   := 'ITENSHORAS';
   Sc1.CommandText := 'SELECT * FROM RD_HORAITEM';
   Tb1.Open;
   Sc1.Open;
   Tb1.First;
   Pb1.Max := Tb1.RecordCount;
   while Not Tb1.Eof do
   begin
    if not cdsEntidade.FindKey([(50000 + Tb1.FieldByName('CD_HORAS').AsInteger)] ) then
       begin
        Tb1.Next;
        Pb1.StepIt;
        Continue;
       end;

    Sc1.Insert;
    Sc1.FieldByName('HORAID').AsInteger         := cdsEntidade.FieldByName('ENTIDADEID').AsInteger;
    Sc1.FieldByName('DATASERVICOID').Value      := Tb1.FieldByName('DT_SERVICO').Value;
    Sc1.FieldByName('ITEMID').Value             := Tb1.FieldByName('ITEM').Value;

    if not Tb1.FieldByName('IDENOS').IsNull then
       if not cdsOS.FindKey([Tb1.FieldByName('IDENOS').AsString]) then
          begin
           wwrichtxtLOG.Lines.Add( 'Tabela Item Horas OS não localizada OS ID = ' + Tb1.FieldByName('IDENOS').AsString );
           Sc1.Cancel;
           Tb1.Next;
           Continue;
          end;

    Sc1.FieldByName('OSID').Value := Tb1.FieldByName('IDENOS').Value;
    Sc1.FieldByName('OPERACAOID').Value         := Tb1.FieldByName('CD_OPERACAO').Value;
    Sc1.FieldByName('HORAINI').Value            := Tb1.FieldByName('HORA_INICIAL').Value;
    Sc1.FieldByName('HORAFIM').Value            := Tb1.FieldByName('HORA_TERMINO').Value;
    Sc1.FieldByName('DIFERENCAHORATRAB').Value  := Tb1.FieldByName('DIF_HORA_TRAB').Value;
    Sc1.FieldByName('VLRSALDO').Value           := Tb1.FieldByName('SALDO').Value;
    Sc1.FieldByName('HISTORICO').Value          := Tb1.FieldByName('HISTORICO').Value;
    Sc1.FieldByName('USUARIO').Value            := Tb1.FieldByName('USUARIO').Value;
    Sc1.Post;
    if Sc1.ChangeCount >= 500 then
       Sc1.ApplyUpdates(-1);

    Tb1.Next;
    Pb1.StepIt;
   end;

   if Sc1.ChangeCount > 0 then
      Sc1.ApplyUpdates(-1);
   Tb1.Close;
   Sc1.Close;
 end;
 finally
  FreeAndNil( cdsOS );
  FreeAndNil( cdsEntidade );
 end;
end;

procedure TfrmMigra.TipoOs;
begin
  exit;

  with DMMigra do
  begin
   Conecta('ORDEM DE SERVICO');
   Tb1.TableName   := 'TIPOOS.DB';
   Sc1.CommandText := 'SELECT * FROM OS_TIPOOS';
   Tb1.Open;
   Sc1.Open;
   Tb1.First;
   Pb1.Max := Tb1.RecordCount;
   while Not Tb1.Eof do
   begin
    Sc1.Insert;
    Sc1.FieldByName('TIPOOSID').Value         := Tb1.FieldByName('TIPO').Value;
    Sc1.FieldByName('DESCRICAO').Value        := Tb1.FieldByName('DESCRICAO').Value;

    if Not Tb1.FieldByName('BLOQUEADO').IsNull then
       begin
        if Tb1.FieldByName('BLOQUEADO').Value then
           Sc1.FieldByName('BLOQABERTURAOS').Value := 1
        else
           Sc1.FieldByName('BLOQABERTURAOS').Value := 0;
       end
    else
      Sc1.FieldByName('BLOQABERTURAOS').Value := 0;

    Sc1.FieldByName('BLOQLANCAMENTOS').Value  := 0;
    Sc1.FieldByName('USUARIO').Value          := Tb1.FieldByName('USUARIO').Value;
    Sc1.Post;
    Tb1.Next;
    Pb1.StepIt;
    if Sc1.ChangeCount > 100 then
       Sc1.ApplyUpdates(-1);
   end;
   if Sc1.ChangeCount > 0 then
       Sc1.ApplyUpdates(-1);
   Tb1.Close;
   Sc1.Close;
  end;
end;

procedure TfrmMigra.TipoOsCfop;
begin
  exit;
  with DMMigra do
  begin
   Conecta('ORDEM DE SERVICO');
   Tb1.TableName   := 'TIPOOS_CFOP.DB';
   Sc1.CommandText := 'SELECT * FROM OS_TIPOOSCFOP';
   Tb1.Open;
   Sc1.Open;
   Tb1.First;
   Pb1.Max := Tb1.RecordCount;
   while Not Tb1.Eof do
   begin
    Sc1.Insert;
    Sc1.FieldByName('TIPOOSID').Value     := Tb1.FieldByName('TIPO').Value;
    Sc1.FieldByName('NATUREZAOPID').Value := Tb1.FieldByName('CODIGO_OPERACAO').Value;
    Sc1.FieldByName('USUARIO').Value      := Tb1.FieldByName('USUARIO').Value;
    Sc1.Post;
    Tb1.Next;
    Pb1.StepIt;
    if Sc1.ChangeCount >= 100 then
       Sc1.ApplyUpdates(-1);
   end;
   if Sc1.ChangeCount > 0 then
      Sc1.ApplyUpdates(-1);
   Tb1.Close;
   Sc1.Close;
  end;
end;

procedure TfrmMigra.CustoHora;
begin
 exit;
 
 with DMMigra do
 begin
  Conecta('ORDEM DE SERVICO');
  Tb1.TableName   := 'CUSTHORA.DB';
  Sc1.CommandText := 'SELECT * FROM OS_CUSTOHORA';
  Tb1.Open;
  Sc1.Open;
  Tb1.First;
  Pb1.Max := Tb1.RecordCount;
  while Not Tb1.Eof do
  begin
   Sc1.Insert;
   Sc1.FieldByName('CUSTOHORAID').Value    := Tb1.FieldByName('HORTEC').Value;
   Sc1.FieldByName('VLRHORATRAB').Value    := Tb1.FieldByName('TRAB').Value;
   Sc1.FieldByName('VLRHORATRANSP').Value  := Tb1.FieldByName('TRANSP').Value;
   Sc1.FieldByName('VLRHORAESPERA').Value  := Tb1.FieldByName('ESPERA').Value;
   Sc1.FieldByName('VLRHORAOUTROS').Value  := Tb1.FieldByName('OUTROS').Value;
   Sc1.FieldByName('USUARIO').Value        := Tb1.FieldByName('USUARIO').Value;
   Sc1.Post;
   Tb1.Next;
   Pb1.StepIt;
   if Sc1.ChangeCount > 100 then
       Sc1.ApplyUpdates(-1);
  end;
  if Sc1.ChangeCount > 0 then
     Sc1.ApplyUpdates(-1);

  Tb1.Close;
  Sc1.Close;
 end;
end;

procedure TfrmMigra.Catalogo;
begin
 exit;

 with DMMigra do
 begin
  Conecta('ORDEM DE SERVICO');
  Tb1.TableName   := 'CATALOGO.DB';
  Sc1.CommandText := 'SELECT * FROM PP_CATALOGO';
  Tb1.Open;
  Sc1.Open;
  Tb1.First;
  Pb1.Max := Tb1.RecordCount;
  while Not Tb1.Eof do
  begin
   Sc1.Insert;
   Sc1.FieldByName('MODELOID').Value           := Tb1.FieldByName('MODAPA').Value;
   Sc1.FieldByName('DESCRICAOPORTUGUES').Value := Tb1.FieldByName('DESAPA').Value;
   Sc1.FieldByName('GRUPOID').Value            := Tb1.FieldByName('GRUAPA').Value;
   Sc1.FieldByName('TIPO').Value               := Tb1.FieldByName('TIPAPA').Value;
   Sc1.FieldByName('REGANVISAID').Value        := Tb1.FieldByName('REG_ANVISA').Value;
   Sc1.FieldByName('DESCRICAOANVISA').Value    := Tb1.FieldByName('DESCR_ANVISA').Value;
   Sc1.Post;
   if Sc1.ChangeCount >= 500 then
      Sc1.ApplyUpdates(-1);
   Tb1.Next;
   Pb1.StepIt;
  end;

  if Sc1.ChangeCount > 0 then
     Sc1.ApplyUpdates(-1);
  Tb1.Close;
  Sc1.Close;
 end;
end;

procedure TfrmMigra.Aparelho;
var  sqlAparelho, sqlCatalogo, sqlEntidade, Cep  : String;
     cdsAparelho, cdsCatalogo, cdsEntidade : TClientDataSet;
begin
 exit;

 sqlAparelho := 'SELECT OS_APARELHO.SERIEID,OS_APARELHO.MODELOID FROM OS_APARELHO ';
 ExecDDL( -1, sqlAparelho, cdsAparelho );
 cdsAparelho.AddIndex( 'idx1','SERIEID;MODELOID',[ixPrimary],'','',0);
 cdsAparelho.IndexName := 'idx1';

 sqlCatalogo  := 'SELECT MODELOID FROM PP_CATALOGO';
 ExecDDL( -1, sqlCatalogo, cdsCatalogo );
 cdsCatalogo.AddIndex( 'idx1','MODELOID',[ixPrimary],'','',0);
 cdsCatalogo.IndexName := 'idx1';

 sqlEntidade  := 'SELECT ENTIDADEID FROM EF_ENTIDADE';
 ExecDDL( -1, sqlEntidade, cdsEntidade );
 cdsEntidade.AddIndex( 'idx1','ENTIDADEID',[ixPrimary],'','',0);
 cdsEntidade.IndexName := 'idx1';

 try
  with DMMigra do
  begin
   Conecta('ORDEM DE SERVICO');
   Tb1.TableName   := 'APARELHO.DB';
   Sc1.CommandText := 'SELECT * FROM OS_APARELHO';

   Tb1.Open;
   Sc1.Open;
   Tb1.First;
   Pb1.Max := Tb1.RecordCount;
   while Not ( Tb1.Eof ) do
   begin
    if cdsAparelho.FindKey([Tb1.FieldByName('SERIE').AsString,Tb1.FieldByName('MODELO').AsString ]) then
       begin
        Tb1.Next;
        Continue;
       end;

    Sc1.Insert;
    Sc1.FieldByName('SERIEID').Value  := Tb1.FieldByName('SERIE').Value;
    Sc1.FieldByName('MODELOID').Value  := Tb1.FieldByName('MODELO').Value;

    if not Tb1.FieldByName('CDCLAT').IsNull then
       if cdsEntidade.FindKey([Tb1.FieldByName('CDCLAT').Value]) then
           Sc1.FieldByName('CLIENTEID').Value  := Tb1.FieldByName('CDCLAT').Value;

    if not Tb1.FieldByName('CDCLAN').IsNull then
       if cdsEntidade.FindKey([Tb1.FieldByName('CDCLAN').Value]) then
          Sc1.FieldByName('CLIENTEANTERIORID').Value  := Tb1.FieldByName('CDCLAN').Value;

    Sc1.FieldByName('VERSAOSOFT').Value      := Tb1.FieldByName('VERSAO').Value;
    Sc1.FieldByName('NIVELHELIO').Value      := Tb1.FieldByName('NIVHELIO').Value;
    Sc1.FieldByName('DATAINSTALACAO').Value  := Tb1.FieldByName('DATINS').Value;
    Sc1.FieldByName('DATAGARANTIA').Value    := Tb1.FieldByName('DATGAR').Value;

    Cep := Copy( TransfNum( Tb1.FieldByName('CEPSER').AsString ), 1, 8 );
    if Cep <> '' then
       SC1.FieldByName('CEPID').Value     := StrToInt( Cep );

    Sc1.FieldByName('ENDERECO').Value := Tb1.FieldByName('ENDSER').Value;
    Sc1.FieldByName('CIDADE').Value              := Tb1.FieldByName('CIDSER').Value;
    Sc1.FieldByName('SIGLAUFID').Value           := Tb1.FieldByName('ESTSER').Value;
    Sc1.FieldByName('TELEFONE').Value            := Tb1.FieldByName('TELEFONE').Value;
    Sc1.FieldByName('CONTRATOID').Value          := Tb1.FieldByName('NUCTMA').Value;
    Sc1.FieldByName('DATACONTGARANTIAINI').Value := Tb1.FieldByName('DATCTGAR').Value;
    Sc1.FieldByName('DATACONTGARANTIAFIM').Value := Tb1.FieldByName('DATCTGARFIM').Value;
    Sc1.FieldByName('NXID').Value                := Tb1.FieldByName('NX').Value;
    Sc1.FieldByName('INVOICEID').Value           := Tb1.FieldByName('INVOICE').Value;
    Sc1.FieldByName('TMBID').Value               := Tb1.FieldByName('TMBNUMBER').Value;

    if Not Tb1.FieldByName('VISUAL_OBS').IsNull then
       begin
        if Tb1.FieldByName('VISUAL_OBS').Value then
           Sc1.FieldByName('EXIBEOBS').Value := 1
        else Sc1.FieldByName('EXIBEOBS').Value := 0;
    end
    else
      Sc1.FieldByName('EXIBEOBS').Value := 0;

    Sc1.FieldByName('OBSERVACAO').Value := Tb1.FieldByName('OBS').Value;
    Sc1.FieldByName('USUARIO').Value := Tb1.FieldByName('USUARIO').Value;

    Sc1.Post;
    if Sc1.ChangeCount >= 500 then
       Sc1.ApplyUpdates(-1);
    Tb1.Next;
    Pb1.StepIt;
   end;

   if Sc1.ChangeCount > 0 then
      Sc1.ApplyUpdates(-1);

   Tb1.Close;
   Tb1.TableName := 'COMPONENTE.DB';
   Tb1.Open;
   Tb1.First;
   Pb1.Position := 0;
   Pb1.Max := Tb1.RecordCount;
   while Not Tb1.Eof do
   begin
    if not cdsCatalogo.FindKey([Tb1.FieldByName('MODELO').AsString ]) then
       begin
        Tb1.Next;
        Continue;
       end;

    if cdsAparelho.FindKey([Tb1.FieldByName('SERIE').AsString,Tb1.FieldByName('MODELO').AsString ]) then
       begin
        Tb1.Next;
        Continue;
       end;

    Sc1.Insert;
    Sc1.FieldByName('SERIEID').Value := Tb1.FieldByName('SERIE').Value;
    Sc1.FieldByName('MODELOID').Value := Tb1.FieldByName('MODELO').Value;
    Sc1.FieldByName('SERIEAPARELHOID').Value := Tb1.FieldByName('SERIE_APARELHO').Value;
    Sc1.FieldByName('MODELOAPARELHOID').Value := Tb1.FieldByName('MODELO_APARELHO').Value;

    if Not Tb1.FieldByName('CDCLAT').IsNull then
       if cdsEntidade.FindKey([Tb1.FieldByName('CDCLAT').Value]) then
           Sc1.FieldByName('CLIENTEID').Value  := Tb1.FieldByName('CDCLAT').Value;

    if Not Tb1.FieldByName('CDCLAN').IsNull then
       if cdsEntidade.FindKey([Tb1.FieldByName('CDCLAN').Value]) then
          Sc1.FieldByName('CLIENTEANTERIORID').Value := Tb1.FieldByName('CDCLAN').Value;

    Sc1.FieldByName('VERSAOSOFT').Value           := Tb1.FieldByName('VERSAO').Value;
    Sc1.FieldByName('DATAINSTALACAO').Value       := Tb1.FieldByName('DATINS').Value;
    Sc1.FieldByName('DATAGARANTIA').Value         := Tb1.FieldByName('DATGAR').Value;
    Sc1.FieldByName('CONTRATOID').Value           := Tb1.FieldByName('NUCTMA').Value;
    Sc1.FieldByName('DATACONTGARANTIAINI').Value  := Tb1.FieldByName('DATCTGAR').Value;
    Sc1.FieldByName('DATACONTGARANTIAFIM').Value  := Tb1.FieldByName('DATCTGARFIM').Value;
    Sc1.FieldByName('USUARIO').Value              := Tb1.FieldByName('USUARIO').Value;
    Sc1.Post;
    Tb1.Next;
    Pb1.StepIt;
    if Sc1.ChangeCount >= 500 then
       Sc1.ApplyUpdates(-1);
    end;
    if Sc1.ChangeCount > 0 then
       Sc1.ApplyUpdates(-1);
    Tb1.Close;
    Sc1.Close;
   end;

 finally
  FreeAndNil( cdsAparelho );
  FreeAndNil( cdsCatalogo );
  FreeAndNil( cdsEntidade );
 end;
end;


procedure TfrmMigra.Aparelho_Omar;
begin
  with DMMigra do
  begin
   Conecta('ORDEM DE SERVICO');
   Tb1.TableName   := 'APARELHO.DB';
   Sc1.CommandText := 'SELECT * FROM OS_APARELHO';

   Tb1.Open;
   Sc1.Open;
   SC1.AddIndex( 'idx1','SERIEID;MODELOID',[ixPrimary],'','',0);
   SC1.IndexName := 'idx1';

   Tb1.First;
   Pb1.Max := Tb1.RecordCount;
   while Not ( Tb1.Eof ) do
   begin
    if Tb1.FieldByName('SERIE').AsString = '2612164' then
       beep;

    if not SC1.FindKey([Tb1.FieldByName('SERIE').AsString,Tb1.FieldByName('MODELO').AsString ]) then
       begin
        Tb1.Next;
        Continue;
       end;

    Sc1.Edit;
    Sc1.FieldByName('MODELOJAPAOID').Value  := Tb1.FieldByName('MODELO_JP').Value;
    Sc1.Post;
    if Sc1.ChangeCount >= 500 then
       Sc1.ApplyUpdates(-1);
    Tb1.Next;
    Pb1.StepIt;
   end;

   if Sc1.ChangeCount > 0 then
      Sc1.ApplyUpdates(-1);
  end;

end;


procedure TfrmMigra.Tecnico;
var sqlFilial, Cep : String;
    cdsFilial : TClientDataSet;
begin
 exit;
 sqlFilial  := 'SELECT EF_FILIAL.IDENTIFICADOR, EF_FILIAL.FILIALID ' +
               ' FROM EF_FILIAL ';
 ExecDDL( -1, sqlFilial, cdsFilial );
 cdsFilial.AddIndex( 'idx1','IDENTIFICADOR',[ixPrimary],'','',0);
 cdsFilial.IndexName := 'idx1';

 try
  with DMMigra do begin
    Conecta('ORDEM DE SERVICO');
    Tb3.TableName   := 'FILIAL';
    Tb1.TableName   := 'TECNICOS';
    Sc1.CommandText := 'SELECT * FROM OS_TECNICO';
    Tb1.Open;
    Sc1.Open;
    Tb1.First;
    Pb1.Max := Tb1.RecordCount;
    while Not Tb1.Eof do
    begin
     Sc1.Insert;
     Sc1.FieldByName('TECNICOID').Value   := Tb1.FieldByName('CODIGO').Value;
     Sc1.FieldByName('NOMEPOPULAR').Value := Tb1.FieldByName('POPULAR').Value;
     Sc1.FieldByName('NOME').Value        := Tb1.FieldByName('NOME').Value;

     Cep := Copy( TransfNum( Tb1.FieldByName('CEP').AsString ), 1, 8 );
     if Cep <> '' then
        SC1.FieldByName('CEPID').Value     := StrToInt( Cep );

     Sc1.FieldByName('ENDERECO').Value := Tb1.FieldByName('ENDERECO').Value;
     Sc1.FieldByName('CIDADE').Value    := Tb1.FieldByName('CIDADE').Value;
     Sc1.FieldByName('SIGLAUFID').Value := Tb1.FieldByName('ESTADO').Value;

     // No campo telefone foi incorporado os campos DDD, Fone e Ramal
     Sc1.FieldByName('TELEFONE1').AsString := Tb1.FieldByName('DDD1').AsString + '-' +
                                 Tb1.FieldByName('FONE1').AsString + '-' +
                                 Tb1.FieldByName('RAMAL1').AsString;

     Sc1.FieldByName('CONTATO').Value := Tb1.FieldByName('CONTATO').Value;

     // No campo telefone2 foi incorporado os campos DDD2, Fone2 e Ramal2
     Sc1.FieldByName('TELEFONE2').AsString := Tb1.FieldByName('DDD2').AsString + '-' +
                                 Tb1.FieldByName('FONE2').AsString + '-' +
                                 Tb1.FieldByName('RAMAL2').AsString;

     Sc1.FieldByName('RG').Value            := Tb1.FieldByName('RG').Value;
     Sc1.FieldByName('CPF_CNPJ').Value      := Tb1.FieldByName('CPF').Value;
     Sc1.FieldByName('PASSAPORTE').Value    := Tb1.FieldByName('PAS').Value;
     Sc1.FieldByName('ESPECIALIDADE').Value := Tb1.FieldByName('ESPTEC').Value;

     if Not Tb1.FieldByName('FILIAL').IsNull then
        if cdsFilial.FindKey([UpperCase( Tb1.FieldByName('FILIAL').AsString ) ]) then
            Sc1.FieldByName('FILIALID').Value := cdsFilial.FieldByName('FILIALID').AsInteger;

     Sc1.FieldByName('USUARIO').Value := Tb1.FieldByName('USUARIO').Value;
     Sc1.Post;
     Tb1.Next;
     Pb1.StepIt;
     if Sc1.ChangeCount >= 100 then
        Sc1.ApplyUpdates(-1);
    end;

    if Sc1.ChangeCount > 0 then
       Sc1.ApplyUpdates(-1);
    Tb1.Close;
    Sc1.Close;
  end;
 finally
  FreeAndNil( cdsFilial );
 end;
end;

procedure TfrmMigra.Defeito;
begin
 exit;

 with DMMigra do
 begin
  Conecta('ORDEM DE SERVICO');
  Tb1.TableName   := 'DEFEITOS';
  Sc1.CommandText := 'SELECT * FROM OS_DEFEITO';
  Tb1.Open;
  Sc1.Open;
  Tb1.First;
  Pb1.Max := Tb1.RecordCount;
  while Not Tb1.Eof do
  begin
   Sc1.Insert;
   Sc1.FieldByName('DEFEITOID').Value := Tb1.FieldByName('CODDEF').Value;
   Sc1.FieldByName('DESCRICAO').Value := Tb1.FieldByName('DESCRICAO').Value;
   Sc1.FieldByName('USUARIO').Value   := Tb1.FieldByName('USUARIO').Value;
   Sc1.Post;
   Tb1.Next;
   Pb1.StepIt;
  end;

  if SC1.ChangeCount > 0 then
     Sc1.ApplyUpdates(-1);

  Tb1.Close;
  Sc1.Close;

  Conecta('EST_FAT_CADASTRO');
  Tb1.TableName   := 'GRUPODEF';
  Sc1.CommandText := 'SELECT * FROM OS_DEFEITOGRUPO';
  Tb1.Open;
  Sc1.Open;
  Tb1.First;
  Pb1.Max := Tb1.RecordCount;
  while Not Tb1.Eof do
  begin
   if Tb1.FieldByName('GRUPO').IsNull then
      begin
       Pb1.StepIt;
       Sc1.Cancel;
       Tb1.Next;
      end;
   Sc1.Insert;
   Sc1.FieldByName('DEFEITOID').Value := Tb1.FieldByName('CODDEF').Value;
   Sc1.FieldByName('GRUPOID').Value   := Tb1.FieldByName('GRUPO').Value;
   Sc1.Post;
   Tb1.Next;
   Pb1.StepIt;
  end;

  if SC1.ChangeCount > 0 then
     SC1.ApplyUpdates(-1);

  Tb1.Close;
  Sc1.Close;
 end;
end;

procedure TfrmMigra.Tubo;
var  sqlAparelho : String;
     cdsAparelho : TClientDataSet;
begin
 EXIT;
 sqlAparelho := 'SELECT OS_APARELHO.SERIEID,OS_APARELHO.MODELOID '+
                'FROM '+
                'OS_APARELHO ';
 ExecDDL( -1, sqlAparelho, cdsAparelho );
 cdsAparelho.AddIndex( 'idx1','SERIEID;MODELOID',[ixPrimary],'','',0);
 cdsAparelho.IndexName := 'idx1';
 try
  with DMMigra do
  begin
   Conecta('ORDEM DE SERVICO');
   Tb1.TableName   := 'TUBOS';
   Sc1.CommandText := 'SELECT * FROM OS_TUBO';
   Tb1.Open;
   Sc1.Open;
   Tb1.First;
   Pb1.Max := Tb1.RecordCount;
   while Not Tb1.Eof do
   begin
    if not cdsAparelho.FindKey([Tb1.FieldByName('SERIE').Value,Tb1.FieldByName('MODELO').Value ]) then
       begin
        wwrichtxtLOG.Lines.Add( 'Tabela TUBO Serie do Aparelho não cadastrada SERIE ID: = ' + Tb1.FieldByName('SERIE').AsString );
        Sc1.Cancel;
        Tb1.Next;
        Continue;
       end;

    if not cdsAparelho.FindKey([Tb1.FieldByName('SERTUB').Value,Tb1.FieldByName('MODTUB').Value ]) then
       begin
        wwrichtxtLOG.Lines.Add( 'Tabela TUBO Serie do Tubo não cadastrada SERIE ID: = ' + Tb1.FieldByName('SERTUB').AsString );
        Sc1.Cancel;
        Tb1.Next;
        Continue;
       end;

    Sc1.Insert;
    Sc1.FieldByName('SERIEID').Value         := Tb1.FieldByName('SERIE').Value;
    Sc1.FieldByName('MODELOID').Value        := Tb1.FieldByName('MODELO').Value;
    Sc1.FieldByName('SERIETUBOID').Value     := Tb1.FieldByName('SERTUB').Value;
    Sc1.FieldByName('MODELOTUBOID').Value    := Tb1.FieldByName('MODTUB').Value;
    Sc1.FieldByName('DATAATUALIZACAO').Value := Tb1.FieldByName('DATATU').Value;
    Sc1.FieldByName('NUMCORTESATUAL').Value  := Tb1.FieldByName('ATUAL').Value;
    Sc1.FieldByName('NUMCORTESTROCA').Value  := Tb1.FieldByName('TROCA').Value;
    Sc1.FieldByName('NUMCORTES').Value       := Tb1.FieldByName('CORTES').Value;
    Sc1.FieldByName('USUARIO').Value         := Tb1.FieldByName('USUARIO').Value;
    Sc1.Post;
    if Sc1.ChangeCount >= 100 then
       Sc1.ApplyUpdates(-1);
    Tb1.Next;
    Pb1.StepIt;
   end;
   if Sc1.ChangeCount > 0 then
      Sc1.ApplyUpdates(-1);
   Tb1.Close;
   Sc1.Close;
  end;
 finally
  FreeAndNil( cdsAparelho );
 end;
end;

procedure TfrmMigra.TuboDesativado;
var  sqlAparelho : String;
     cdsAparelho : TClientDataSet;
begin
 exit;
 sqlAparelho := 'SELECT OS_APARELHO.SERIEID,OS_APARELHO.MODELOID '+
                'FROM '+
                'OS_APARELHO ';
 ExecDDL( -1, sqlAparelho, cdsAparelho );
 cdsAparelho.AddIndex( 'idx1','SERIEID;MODELOID',[ixPrimary],'','',0);
 cdsAparelho.IndexName := 'idx1';
 try
  with DMMigra do
  begin
   Conecta('ORDEM DE SERVICO');
   Tb1.TableName   := 'TUBOSOFF';
   Sc1.CommandText := 'SELECT * FROM OS_TUBOINATIVO';
   Tb1.Open;
   Sc1.Open;
   Tb1.First;
   Pb1.Max := Tb1.RecordCount;
   while Not Tb1.Eof do
   begin
    if not cdsAparelho.FindKey([Tb1.FieldByName('SERIE').Value,Tb1.FieldByName('MODELO').Value ]) then
       begin
        wwrichtxtLOG.Lines.Add( 'Tabela TUBO Serie do Aparelho não cadastrada SERIE ID: = ' + Tb1.FieldByName('SERIE').AsString );
        Pb1.StepIt;
        Sc1.Cancel;
        Tb1.Next;
        Continue;
       end;

    if not cdsAparelho.FindKey([Tb1.FieldByName('SERTUB').Value,Tb1.FieldByName('MODTUB').Value ]) then
       begin
        wwrichtxtLOG.Lines.Add( 'Tabela TUBO Serie do Tubo não cadastrada SERIE ID: = ' + Tb1.FieldByName('SERTUB').AsString );
        Pb1.StepIt;
        Sc1.Cancel;
        Tb1.Next;
        Continue;
       end;

    Sc1.Insert;
    Sc1.FieldByName('SERIEID').Value          := Tb1.FieldByName('SERIE').Value;
    Sc1.FieldByName('MODELOID').Value         := Tb1.FieldByName('MODELO').Value;
    Sc1.FieldByName('SERIETUBOID').Value      := Tb1.FieldByName('SERTUB').Value;
    Sc1.FieldByName('MODELOTUBOID').Value     := Tb1.FieldByName('MODTUB').Value;
    Sc1.FieldByName('CORTESREALIZADOS').Value := Tb1.FieldByName('CORTES').Value;
    Sc1.FieldByName('CORTESTROCA').Value      := Tb1.FieldByName('CORTES_TROCA').Value;
    Sc1.FieldByName('DATASUBST').Value        := Tb1.FieldByName('DATSUB').Value;
    Sc1.FieldByName('USUARIO').Value          := Tb1.FieldByName('USUARIO').Value;
    Sc1.Post;
    Tb1.Next;
    Pb1.StepIt;
    if Sc1.ChangeCount >= 100 then
       Sc1.ApplyUpdates(-1);
   end;
   if Sc1.ChangeCount > 0 then
      Sc1.ApplyUpdates(-1);
   Tb1.Close;
   Sc1.Close;
  end;
 finally
  FreeAndNil( cdsAparelho );
 end;
end;

procedure TfrmMigra.Os;
var sqlAparelho, sqlCatalogo, sqlEntidade, sqlFilial, sqlEntiTec, Cep  : String;
    cdsAparelho, cdsCatalogo, cdsEntidade, cdsFilial, cdsEntiTec : TClientDataSet;

 procedure InserirLocalizacaoOS;
 var LocalizacaoOS : array[1..3] of String;
     iSQL : String;
     i    : Integer;
 begin
  LocalizacaoOS[1] := 'TECNIC0';
  LocalizacaoOS[2] := 'FILIAL';
  LocalizacaoOS[3] := 'MATRIZ';

  for i := 1 to 3 do
  begin
   iSQL := '';
   iSQL := 'INSERT INTO OS_LOCALIZACAOOS( LOCALIZACAOOSID, DESCRICAO, USUARIO ) VALUES( '+
            IntToStr( i ) + ', ' + QuotedStr( LocalizacaoOS[i] ) + ',' +
            QuotedStr('GSI') + ' ) ';
   DMMigra.ExecQry( iSQL );
  end;
 end;

begin
 exit;

 sqlAparelho := 'SELECT OS_APARELHO.SERIEID,OS_APARELHO.MODELOID '+
                'FROM '+
                'OS_APARELHO ';
 ExecDDL( -1, sqlAparelho, cdsAparelho );
 cdsAparelho.AddIndex( 'idx1','SERIEID;MODELOID',[ixPrimary],'','',0);
 cdsAparelho.IndexName := 'idx1';

 sqlCatalogo  := 'SELECT MODELOID FROM PP_CATALOGO';
 ExecDDL( -1, sqlCatalogo, cdsCatalogo );
 cdsCatalogo.AddIndex( 'idx1','MODELOID',[ixPrimary],'','',0);
 cdsCatalogo.IndexName := 'idx1';

 sqlEntidade  := 'SELECT ENTIDADEID FROM EF_ENTIDADE';
 ExecDDL( -1, sqlEntidade, cdsEntidade );
 cdsEntidade.AddIndex( 'idx1','ENTIDADEID',[ixPrimary],'','',0);
 cdsEntidade.IndexName := 'idx1';

 sqlEntiTec  := ViewEntidadeTecnico;
 ExecDDL( -1, sqlEntiTec, cdsEntiTec );
 cdsEntiTec.AddIndex( 'idx1','CPFCNPJ',[ixPrimary],'','',0);
 cdsEntiTec.IndexName := 'idx1';

 sqlFilial  := 'SELECT EF_FILIAL.IDENTIFICADOR, EF_FILIAL.FILIALID ' +
               ' FROM EF_FILIAL ';
 ExecDDL( -1, sqlFilial, cdsFilial );
 cdsFilial.AddIndex( 'idx1','IDENTIFICADOR',[ixPrimary],'','',0);
 cdsFilial.IndexName := 'idx1';

 // Inserir localização de OS
 InserirLocalizacaoOS;

 try
  with DMMigra do
  begin
   Conecta('ORDEM DE SERVICO');
   Tb1.TableName   := 'OS.DB';
   Sc1.CommandText := 'SELECT * FROM OS_OS';

   Tb1.Open;
   Sc1.Open;
   Tb1.First;
   Pb1.Max := Tb1.RecordCount;
   while Not ( Tb1.Eof ) do
   begin
    if ( Tb1.FieldByName('STATUS').AsString = 'Z' ) or ( Tb1.FieldByName('TIPOOS').AsString = 'Z' ) then
       begin
        Tb1.Next;
        Continue;
       end;

    Sc1.Insert;
    Sc1.FieldByName('OSID').Value := Tb1.FieldByName('IDENOS').Value;

    if Not Tb1.FieldByName('FILIAL').IsNull then
       begin
        if cdsFilial.FindKey([UpperCase( Tb1.FieldByName('FILIAL').AsString ) ]) then
           Sc1.FieldByName('FILIALID').Value := cdsFilial.FieldByName('FILIALID').AsInteger;
       end;

    Sc1.FieldByName('TIPOOSID').Value := Tb1.FieldByName('TIPOOS').Value;

    if Not Tb1.FieldByName('TIPO_ATENDIMENTO').IsNull then
       Sc1.FieldByName('TIPOATENDIMENTO').Value := UpperCase( Tb1.FieldByName('TIPO_ATENDIMENTO').Value );

    if Not Tb1.FieldByName('LOCALIZACAOOS').IsNull then
       begin
        if      UpperCase( Tb1.FieldByName('LOCALIZACAOOS').Value ) = 'T' then
                Sc1.FieldByName('LOCALIZACAOOSID').Value := 1
        else if UpperCase( Tb1.FieldByName('LOCALIZACAOOS').Value ) = 'F' then
                Sc1.FieldByName('LOCALIZACAOOSID').Value := 2
        else if UpperCase( Tb1.FieldByName('LOCALIZACAOOS').Value ) = 'M' then
                Sc1.FieldByName('LOCALIZACAOOSID').Value := 3;
       end;

    Sc1.FieldByName('DATAABERTURA').Value := Tb1.FieldByName('DATABE').Value;
    Sc1.FieldByName('DATACONCLUSAO') .Value := Tb1.FieldByName('DATCLS').Value;
    Sc1.FieldByName('DATAFECHAMENTO').Value := Tb1.FieldByName('DATFEC').Value;
    Sc1.FieldByName('DATAENTRLABORATORIO').Value := Tb1.FieldByName('DT_ENT_LAB').Value;
    Sc1.FieldByName('DATASAIDALABORATORIO').Value := Tb1.FieldByName('DT_SAI_LAB').Value;

    if Tb1.FieldByName('TIPO_ASSIST').Value = '' then
       Sc1.FieldByName('TIPOASSIST').Value := 'N'
    else
       Sc1.FieldByName('TIPOASSIST').Value := Tb1.FieldByName('TIPO_ASSIST').Value;

    if Tb1.FieldByName('STATUS').Value = '' then
       Sc1.FieldByName('STATUS').Value := 'A'
    else
       Sc1.FieldByName('STATUS').Value := Tb1.FieldByName('STATUS').Value;

    if Not Tb1.FieldByName('SERIE').IsNull then
       begin
        if cdsAparelho.FindKey([Tb1.FieldByName('SERIE').Value,Tb1.FieldByName('MODELO').Value ]) then
           Sc1.FieldByName('SERIEID').Value := Tb1.FieldByName('SERIE').Value;
       end;

    if Not Tb1.FieldByName('MODELO').IsNull then
       Sc1.FieldByName('MODELOID').Value := Tb1.FieldByName('MODELO').Value;

    if Not Tb1.FieldByName('CODCLI').IsNull then
       if Tb1.FieldByName('CODCLI').AsInteger > 0 then
          begin
           if cdsEntidade.FindKey([Tb1.FieldByName('CODCLI').Value]) then
              Sc1.FieldByName('CLIENTEID').Value  := Tb1.FieldByName('CODCLI').Value
           else
              wwrichtxtLOG.Lines.Add( 'Tabela OS Código do cliente inválido, OSID = ' + Tb1.FieldByName('IDENOS').AsString );
          end;

    Sc1.FieldByName('SOLICITANTE').Value := Tb1.FieldByName('SOLCLI').Value;
    Sc1.FieldByName('SETOR').Value := Tb1.FieldByName('SETSOL').Value;
    Sc1.FieldByName('SERVICO').Value := Tb1.FieldByName('SERSOL').Value;

    if Tb1.FieldByName('CODTEC').AsInteger >= 1 then
       begin
        if cdsEntiTec.FindKey( [LocalizarTecnico( Tb1.FieldByName('CODTEC').Value ) ] ) then
           Sc1.FieldByName('TECNICOID').Value := cdsEntiTec.FieldByName('ENTIDADEID').Value
        else
           wwrichtxtLOG.Lines.Add( 'Tabela OS Código do Técnico inválido' + Tb1.FieldByName('CODTEC').AsString + '-'+ Tb1.FieldByName('IDENOS').Value  );
       end;

    Sc1.FieldByName('ORCAMENTOID').Value := Tb1.FieldByName('NUMORC').Value;
    Sc1.FieldByName('VLRORCADO').Value := Tb1.FieldByName('VALORC').Value;

    if ( Tb1.FieldByName('MOEORC').AsString = 'US$' ) or ( Tb1.FieldByName('MOEORC').AsString = 'us$' ) then
       Sc1.FieldByName('MOEDAORCADA').Value := 'US$'
    else
       Sc1.FieldByName('MOEDAORCADA').Value := 'R$';

    Sc1.FieldByName('CONDPAGTO').Value := Tb1.FieldByName('CONPGT').Value;
    Sc1.FieldByName('VLRPAGTOANTEC').Value := Tb1.FieldByName('PAGANT').Value;

    Cep := Copy( TransfNum( Tb1.FieldByName('CEPSER').AsString ), 1, 8 );
    if Cep <> '' then
       SC1.FieldByName('CEPID').Value     := StrToInt( Cep );

    Sc1.FieldByName('ENDERECO').Value := Tb1.FieldByName('ENDSER').Value;
    Sc1.FieldByName('CIDADE').Value := Tb1.FieldByName('CIDSER').Value;
    Sc1.FieldByName('SIGLAUFID').Value := Tb1.FieldByName('ESTSER').Value;
    Sc1.FieldByName('USUARIO').Value := Tb1.FieldByName('USUARIO').Value;
    Sc1.Post;
    if Sc1.ChangeCount >= 500 then
       Sc1.ApplyUpdates(-1);
    Tb1.Next;
    Pb1.StepIt;
   end;
   if Sc1.ChangeCount > 0 then
      Sc1.ApplyUpdates(-1);
   Tb1.Close;
   Sc1.Close;

  cdsAparelho.Close;
  cdsCatalogo.Close;
  cdsEntidade.Close;
  cdsFilial.Close;
  cdsEntiTec.Close;

  end;
 finally
  FreeAndNil( cdsAparelho );
  FreeAndNil( cdsCatalogo );
  FreeAndNil( cdsEntidade );
  FreeAndNil( cdsFilial );
  FreeAndNil( cdsEntiTec );
 end;
end;


procedure TfrmMigra.OsHora;
var sqlOS, sqlEntiTec : String;
    cdsOS, cdsEntiTec : TClientDataSet;
begin
 exit;

 sqlOS := 'SELECT OSID FROM OS_OS';
 ExecDDL( -1, sqlOS, cdsOS );
 cdsOS.AddIndex( 'idx1','OSID',[ixPrimary],'','',0);
 cdsOS.IndexName := 'idx1';

 sqlEntiTec  := ViewEntidadeTecnico;
 ExecDDL( -1, sqlEntiTec, cdsEntiTec );
 cdsEntiTec.AddIndex( 'idx1','CPFCNPJ',[ixPrimary],'','',0);
 cdsEntiTec.IndexName := 'idx1';

 try
  with DMMigra do
  begin
   Conecta('ORDEM DE SERVICO');
   Tb1.TableName   := 'OSHORAS';
   Sc1.CommandText := 'SELECT * FROM OS_OSHORA';
   Sc1.Open;
   Tb1.Open;
   Tb1.First;
   Pb1.Max := Tb1.RecordCount;
   while Not Tb1.Eof do
   begin
    if not Tb1.FieldByName('IDENOS').IsNull then
       if not cdsOS.FindKey([Tb1.FieldByName('IDENOS').AsString]) then
          begin
           wwrichtxtLOG.Lines.Add( 'Tabela OSHORAS não localizada OS ID = ' + Tb1.FieldByName('IDENOS').AsString );
           Sc1.Cancel;
           Tb1.Next;
           Continue;
          end;

    Sc1.Insert;
    Sc1.FieldByName('OSID').Value := Tb1.FieldByName('IDENOS').Value;

    if Tb1.FieldByName('CODTEC').IsNull then
       begin
        wwrichtxtLOG.Lines.Add( 'Tabela OSHoras Código do Técnico inválido' + Tb1.FieldByName('CODTEC').AsString + '-'+ Tb1.FieldByName('IDENOS').Value  );
        Sc1.Cancel;
        Tb1.Next;
        Continue;
       end;

        if cdsEntiTec.FindKey( [LocalizarTecnico( Tb1.FieldByName('CODTEC').Value ) ] ) then
           Sc1.FieldByName('TECNICOID').Value := cdsEntiTec.FieldByName('ENTIDADEID').Value
        else
           begin
            wwrichtxtLOG.Lines.Add( 'Tabela OSHoras Código do Técnico inválido' + Tb1.FieldByName('CODTEC').AsString + '-'+ Tb1.FieldByName('IDENOS').Value  );
            Sc1.Cancel;
            Tb1.Next;
            Continue;
           end;

    if Tb1.FieldByName('DT_TRAB').IsNull then
       begin
        wwrichtxtLOG.Lines.Add( 'Tabela OS Horas Data da OS não preenchida OS ID = ' + Tb1.FieldByName('IDENOS').AsString );
        Sc1.FieldByName('DATATRABALHOID').AsDateTime := StrToDate( '01/01/0001');
       end
    else
       Sc1.FieldByName('DATATRABALHOID').AsDateTime := Tb1.FieldByName('DT_TRAB').AsDateTime;

    Sc1.FieldByName('QTDHORATRAB').Value   := Tb1.FieldByName('HORTRB').Value;
    Sc1.FieldByName('QTDHORATRANSP').Value := Tb1.FieldByName('HORTRA').Value;
    Sc1.FieldByName('QTDHORAESPERA').Value := Tb1.FieldByName('HORESP').Value;
    Sc1.FieldByName('QTDHORAOUTRA').Value  := Tb1.FieldByName('HOROUT').Value;
    Sc1.FieldByName('USUARIO').Value       := Tb1.FieldByName('USUARIO').Value;
    Sc1.Post;
    if Sc1.ChangeCount > 100 then
       Sc1.ApplyUpdates(-1);
    Tb1.Next;
    Pb1.StepIt;
   end;

   if Sc1.ChangeCount > 0 then
      Sc1.ApplyUpdates(-1);

   Tb1.Close;
   Sc1.Close;
   cdsOS.Close;
   cdsEntiTec.Close;
  end;
 finally
  FreeAndNil( cdsOS );
  FreeAndNil( cdsEntiTec );
 end;
end;

procedure TfrmMigra.OsDespesa;
var sqlOS, sqlOperacao, sqlEntiTec : String;
    cdsOS, cdsOperacao, cdsEntiTec : TClientDataSet;
begin
 exit;

 sqlOS := 'SELECT OSID FROM OS_OS';
 ExecDDL( -1, sqlOS, cdsOS );
 cdsOS.AddIndex( 'idx1','OSID',[ixPrimary],'','',0);
 cdsOS.IndexName := 'idx1';

 sqlOperacao := 'SELECT OPERACAOID FROM RD_OPERACAO';
 ExecDDL( -1, sqlOperacao, cdsOperacao );
 cdsOperacao.AddIndex( 'idx1','OPERACAOID',[ixPrimary],'','',0);
 cdsOperacao.IndexName := 'idx1';

 sqlEntiTec  := ViewEntidadeTecnico;
 ExecDDL( -1, sqlEntiTec, cdsEntiTec );
 cdsEntiTec.AddIndex( 'idx1','CPFCNPJ',[ixPrimary],'','',0);
 cdsEntiTec.IndexName := 'idx1';

 try
  with DMMigra do
  begin
    Conecta('ORDEM DE SERVICO');
    Tb1.TableName   := 'OSDESPESA';
    Sc1.CommandText := 'SELECT * FROM OS_OSDESPESA';

    Tb1.Open;
    Sc1.Open;
    Tb1.First;
    Pb1.Max := Tb1.RecordCount;
    while Not Tb1.Eof do
    begin
     if not Tb1.FieldByName('IDENOS').IsNull then
        if not cdsOS.FindKey([Tb1.FieldByName('IDENOS').AsString]) then
           begin
            wwrichtxtLOG.Lines.Add( 'Tabela OSDespesas não localizada OS ID = ' + Tb1.FieldByName('IDENOS').AsString );
            Sc1.Cancel;
            Tb1.Next;
            Continue;
           end;

      Sc1.Insert;
      Sc1.FieldByName('OSID').Value          := Tb1.FieldByName('IDENOS').Value;
      Sc1.FieldByName('ITEMID').Value        := Valor( 'OS_SQ_OSDESPESA_ItemId' );

      if Tb1.FieldByName('CODTEC').AsInteger >= 1 then
         begin
          if cdsEntiTec.FindKey( [LocalizarTecnico( Tb1.FieldByName('CODTEC').Value ) ] ) then
             Sc1.FieldByName('TECNICOID').Value := cdsEntiTec.FieldByName('ENTIDADEID').Value
          else
             wwrichtxtLOG.Lines.Add( 'Tabela OSDespesa Código do Técnico inválido' + Tb1.FieldByName('CODTEC').AsString + '-'+ Tb1.FieldByName('IDENOS').Value  );
         end;

      if not cdsOperacao.FindKey([Tb1.FieldByName('CODDES').AsString]) then
         begin
           wwrichtxtLOG.Lines.Add( 'Tabela OSDespesas não localizada o código da operação OS ID = ' + Tb1.FieldByName('IDENOS').AsString );
           Sc1.Cancel;
           Tb1.Next;
           Continue;
         end;

      Sc1.FieldByName('OPERACAOID').Value    := Tb1.FieldByName('CODDES').Value;
      Sc1.FieldByName('DATADESPESA').Value   := Tb1.FieldByName('DATDES').Value;
      Sc1.FieldByName('VLRDESPESA').Value    := Tb1.FieldByName('VLRDESPESA').Value;
      Sc1.FieldByName('HISTDESPESA').Value   := Tb1.FieldByName('HIST_DETALHADO').Value;
      Sc1.FieldByName('KMSAIDA').Value       := Tb1.FieldByName('KM_SAIDA').Value;
      Sc1.FieldByName('KMENTRADA').Value     := Tb1.FieldByName('KM_ENTRADA').Value;

      if Not Tb1.FieldByName('LIB_CHEFIA').IsNull then
      begin
       if Tb1.FieldByName('LIB_CHEFIA').Value then
          Sc1.FieldByName('LIBCHEFIA').Value := 1
       else
          Sc1.FieldByName('LIBCHEFIA').Value := 0;
      end
      else
         Sc1.FieldByName('LIBCHEFIA').Value := 0;

      Sc1.FieldByName('NOMELIBCHEFIA').Value := Tb1.FieldByName('NM_LIB_CHEFIA').Value;
      Sc1.FieldByName('USUARIO').Value := Tb1.FieldByName('USUARIO').Value;
      Sc1.Post;
      if Sc1.ChangeCount >= 500 then
        Sc1.ApplyUpdates(-1);
      Tb1.Next;
      Pb1.StepIt;
    end;
   if Sc1.ChangeCount > 0 then
      Sc1.ApplyUpdates(-1);

   Tb1.Close;
   Sc1.Close;
  end;
  cdsOS.Close;
  cdsOperacao.Close;
  cdsEntiTec.Close;
 finally
  FreeAndNil( cdsOS );
  FreeAndNil( cdsOperacao );
  FreeAndNil( cdsEntiTec );
 end;
end;

procedure TfrmMigra.OsDefeito;
var sqlOS, sqlDefeito : String;
    cdsOS, cdsDefeito : TClientDataSet;
begin
 exit;
 
 sqlOS := 'SELECT OSID FROM OS_OS';
 ExecDDL( -1, sqlOS, cdsOS );
 cdsOS.AddIndex( 'idx1','OSID',[ixPrimary],'','',0);
 cdsOS.IndexName := 'idx1';

 sqlDefeito := 'SELECT DEFEITOID FROM OS_DEFEITO';
 ExecDDL( -1, sqlDefeito, cdsDefeito );
 cdsDefeito.AddIndex( 'idx1','DEFEITOID',[ixPrimary],'','',0);
 cdsDefeito.IndexName := 'idx1';

 try
  with DMMigra do begin
    Conecta('ORDEM DE SERVICO');
    Tb1.TableName   := 'OSOBS';
    Sc1.CommandText := 'SELECT * FROM OS_OSDEFEITO';

    Tb1.Open;
    Sc1.Open;
    Tb1.First;
    Pb1.Max := Tb1.RecordCount;
    while Not Tb1.Eof do
    begin
     if not Tb1.FieldByName('IDENOS').IsNull then
        if not cdsOS.FindKey([Tb1.FieldByName('IDENOS').AsString]) then
           begin
            wwrichtxtLOG.Lines.Add( 'Tabela OSDefeito não localizada OS ID = ' + Tb1.FieldByName('IDENOS').AsString );
            Sc1.Cancel;
            Tb1.Next;
            Continue;
           end;

      if not cdsDefeito.FindKey([Tb1.FieldByName('CODDEF').AsString]) then
         begin
          wwrichtxtLOG.Lines.Add( 'Tabela OSDefeito não localizada o código do defeito OS ID = ' + Tb1.FieldByName('IDENOS').AsString );
          Sc1.Cancel;
          Tb1.Next;
          Continue;
         end;

      Sc1.Insert;
      Sc1.FieldByName('OSID').Value             := Tb1.FieldByName('IDENOS').Value;
      Sc1.FieldByName('ITEMID').Value           := Valor( 'OS_SQ_OSDefeito_ItemId' );
      Sc1.FieldByName('DEFEITOID').Value        := Tb1.FieldByName('CODDEF').Value;
      Sc1.FieldByName('LOCALDEFEITO').Value     := Tb1.FieldByName('LOCDEF').Value;
      Sc1.FieldByName('SERVICOEXECUTADO').Value := Tb1.FieldByName('SEREXE').Value;
      Sc1.FieldByName('USUARIO').Value          := Tb1.FieldByName('USUARIO').Value;
      Sc1.Post;
      if Sc1.ChangeCount > 500 then
         Sc1.ApplyUpdates(-1);
      Tb1.Next;
      Pb1.StepIt;
    end;
    if Sc1.ChangeCount > 0 then
       Sc1.ApplyUpdates(-1);
    Tb1.Close;
    Sc1.Close;
  end;
 finally
  FreeAndNil( cdsOS );
  FreeAndNil( cdsDefeito );
 end;
end;

procedure TfrmMigra.OsVale;
var sqlOS : String;
    cdsOS : TClientDataSet;
begin
 sqlOS := 'SELECT OSID FROM OS_OS';
 ExecDDL( -1, sqlOS, cdsOS );
 cdsOS.AddIndex( 'idx1','OSID',[ixPrimary],'','',0);
 cdsOS.IndexName := 'idx1';
 try
  with DMMigra do
  begin
    Conecta('ORDEM DE SERVICO');
    Tb1.TableName   := 'OSVALE';
    Sc1.CommandText := 'SELECT * FROM OS_OSPECA';
    Tb1.Open;
    Sc1.Open;
    Tb1.First;
    Pb1.Max := Tb1.RecordCount;
    while Not Tb1.Eof do
    begin
     if not Tb1.FieldByName('IDENOS').IsNull then
        if not cdsOS.FindKey([Tb1.FieldByName('IDENOS').AsString]) then
           begin
            wwrichtxtLOG.Lines.Add( 'Tabela OSVALE não localizada OS ID = ' + Tb1.FieldByName('IDENOS').AsString );
            Sc1.Cancel;
            Tb1.Next;
            Continue;
           end;

     Sc1.Insert;
     Sc1.FieldByName('OSID').Value              := Tb1.FieldByName('IDENOS').Value;
     Sc1.FieldByName('PECAID').Value            := Tb1.FieldByName('VALE').Value;
     Sc1.FieldByName('EMPRESAID').Value         := 1;
     Sc1.FieldByName('PRODUTOID').Value         := Tb1.FieldByName('CODPROD').Value;
     Sc1.FieldByName('QUANTIDADE').Value        := Tb1.FieldByName('QTDE').Value;
     Sc1.FieldByName('DATAPECA').Value          := Tb1.FieldByName('DAT_VALE').Value;
     Sc1.FieldByName('ESTOQUEUTILIZADO').Value  := 'V';

     if Not Tb1.FieldByName('REQUISITANTE').IsNull then
        Sc1.FieldByName('USUARIO').Value := Tb1.FieldByName('REQUISITANTE').Value
     else
        Sc1.FieldByName('USUARIO').Value := Tb1.FieldByName('USUARIO').Value;

     Sc1.Post;

     if Sc1.ChangeCount > 100 then
        Sc1.ApplyUpdates(-1);

     Tb1.Next;
     Pb1.StepIt;
    end;
    if Sc1.ChangeCount > 0 then
       Sc1.ApplyUpdates(-1);
    Tb1.Close;
    Sc1.Close;
  end;
 finally
  FreeAndNil( cdsOS );
 end;
end;

procedure TfrmMigra.OsEmpenho;
var sqlOS : String;
    cdsOS : TClientDataSet;
begin
 sqlOS := 'SELECT OSID FROM OS_OS';
 ExecDDL( -1, sqlOS, cdsOS );
 cdsOS.AddIndex( 'idx1','OSID',[ixPrimary],'','',0);
 cdsOS.IndexName := 'idx1';
 try
  with DMMigra do
  begin
    Conecta('ORDEM DE SERVICO');
    Tb1.TableName   := 'OSEMPENHO';
    Sc1.CommandText := 'SELECT * FROM OS_OSPECA';
    Tb1.Open;
    Sc1.Open;
    Tb1.First;
    Pb1.Max := Tb1.RecordCount;
    while Not Tb1.Eof do
    begin
     if not Tb1.FieldByName('IDENOS').IsNull then
        if not cdsOS.FindKey([Tb1.FieldByName('IDENOS').AsString]) then
           begin
            wwrichtxtLOG.Lines.Add( 'Tabela OSEMPENHO não localizada OS ID = ' + Tb1.FieldByName('IDENOS').AsString );
            Sc1.Cancel;
            Tb1.Next;
            Continue;
           end;

     Sc1.Insert;
     Sc1.FieldByName('OSID').Value          := Tb1.FieldByName('IDENOS').Value;
     Sc1.FieldByName('PECAID').Value        := Tb1.FieldByName('CD_EMPENHO').Value;
     Sc1.FieldByName('EMPRESAID').Value     := 1;
     Sc1.FieldByName('PRODUTOID').Value     := Tb1.FieldByName('CODIGO_PRODUTO').Value;
     Sc1.FieldByName('NFSID').Value  := Tb1.FieldByName('NUMERO_NOTA').Value;
     Sc1.FieldByName('DATAEMISSAOID').Value   := Tb1.FieldByName('DATA_EMISSAO').Value;
     Sc1.FieldByName('DATAPECA').Value      := Tb1.FieldByName('DATA_EMPENHO').Value;
     Sc1.FieldByName('QUANTIDADE').Value    := Tb1.FieldByName('QUANTIDADE').Value;

     if Tb1.FieldByName('UTILIZADO').AsBoolean then
        Sc1.FieldByName('UTILIZADO').AsInteger := 1
     else
        Sc1.FieldByName('UTILIZADO').AsInteger := 0;

     if Tb1.FieldByName('IMPRESSO').AsBoolean then
        Sc1.FieldByName('IMPRESSO').Value := 1
     else
        Sc1.FieldByName('IMPRESSO').Value := 0;

     Sc1.FieldByName('ESTOQUEUTILIZADO').Value := Tb1.FieldByName('ESTOQUE_UTILIZADO').Value;

     if not Tb1.FieldByName('MAT_AVALIADO').IsNull then
        begin
         if Tb1.FieldByName('MAT_AVALIADO').AsBoolean then
            Sc1.FieldByName('MATERIALAVALIADO').Value := 1
         else
            Sc1.FieldByName('MATERIALAVALIADO').Value := 0;
        end
     else
        Sc1.FieldByName('MATERIALAVALIADO').Value := 0;

     Sc1.FieldByName('AVALIADOR').Value        := Tb1.FieldByName('AVALIADOR').Value;
     Sc1.FieldByName('JUSTIFICATIVA').Value    := Tb1.FieldByName('JUSTIFICATIVA').Value;
     Sc1.FieldByName('USUARIO').Value          := Tb1.FieldByName('USUARIO').Value;
     Sc1.Post;
     if Sc1.ChangeCount > 100 then
        Sc1.ApplyUpdates(-1);
     Tb1.Next;
     Pb1.StepIt;
    end;
    if Sc1.ChangeCount > 0 then
       Sc1.ApplyUpdates(-1);
    Tb1.Close;
    Sc1.Close;
  end;
 finally
  FreeAndNil( cdsOS );
 end;

end;

procedure TfrmMigra.OsBcoHora;
var  sqlOS, sqlEntiTec : String;
     cdsOS, cdsEntiTec : TClientDataSet;
begin
 exit;

 sqlOS := 'SELECT OSID FROM OS_OS';
 ExecDDL( -1, sqlOS, cdsOS );
 cdsOS.AddIndex( 'idx1','OSID',[ixPrimary],'','',0);
 cdsOS.IndexName := 'idx1';

 sqlEntiTec  := ViewEntidadeTecnico;
 ExecDDL( -1, sqlEntiTec, cdsEntiTec );
 cdsEntiTec.AddIndex( 'idx1','CPFCNPJ',[ixPrimary],'','',0);
 cdsEntiTec.IndexName := 'idx1';

 try
  with DMMigra do
  begin
   Conecta('ORDEM DE SERVICO');
   Tb1.TableName   := 'OSBCOHORAS';
   Sc1.CommandText := 'SELECT * FROM OS_OSBCOHORA';

   Tb1.Open;
   Sc1.Open;
   Tb1.First;
   Pb1.Max := Tb1.RecordCount;
   while Not Tb1.Eof do
   begin
    if not Tb1.FieldByName('IDENOS').IsNull then
       if not cdsOS.FindKey([Tb1.FieldByName('IDENOS').AsString]) then
          begin
           Sc1.Cancel;
           Tb1.Next;
           Continue;
          end;

    Sc1.Insert;
    Sc1.FieldByName('OSID').Value          := Tb1.FieldByName('IDENOS').Value;
    Sc1.FieldByName('ITEMID').Value        := Valor( 'OS_SQ_OSBcoHora_ItemId' );
    Sc1.FieldByName('DATASERVICO').Value   := Tb1.FieldByName('DT_SERVICO').Value;

    if Tb1.FieldByName('CODTEC').AsInteger >= 1 then
       begin
        if cdsEntiTec.FindKey( [LocalizarTecnico( Tb1.FieldByName('CODTEC').Value ) ] ) then
           Sc1.FieldByName('TECNICOID').Value := cdsEntiTec.FieldByName('ENTIDADEID').Value
        else
           wwrichtxtLOG.Lines.Add( 'Tabela OS BcoHoras do Técnico inválido' + Tb1.FieldByName('CODTEC').AsString + '-'+ Tb1.FieldByName('IDENOS').Value  );
       end;

    Sc1.FieldByName('HORAINI').Value       := Tb1.FieldByName('HORA_INICIAL').Value;
    Sc1.FieldByName('HORAFIM').Value       := Tb1.FieldByName('HORA_TERMINO').Value;

    if Tb1.FieldByName('LIBERADO').AsBoolean then
       Sc1.FieldByName('LIBERADO').Value := 1
    else
       Sc1.FieldByName('LIBERADO').Value := 0;

    Sc1.FieldByName('USUARIO').Value := Tb1.FieldByName('USUARIO').Value;
    Sc1.Post;
    if Sc1.ChangeCount > 500 then
       Sc1.ApplyUpdates(-1);
    Tb1.Next;
    Pb1.StepIt;
   end;
   if Sc1.ChangeCount > 0 then
      Sc1.ApplyUpdates(-1);
   Tb1.Close;
   Sc1.Close;
  end;
  cdsOS.Close;
  cdsEntiTec.Close;
 finally
  FreeAndNil( cdsOS );
  FreeAndNil( cdsEntiTec );
 end;
end;

procedure TfrmMigra.OsTerceiros;
var sqlEntidade, sqlOS : String;
    cdsEntidade, cdsOS : TClientDataSet;
begin
 sqlEntidade := 'SELECT ENTIDADEID, CPFCNPJ FROM EF_ENTIDADE';
 ExecDDL( -1, sqlEntidade, cdsEntidade );
 cdsEntidade.AddIndex( 'idx1','ENTIDADEID',[ixPrimary],'','',0);
 cdsEntidade.IndexName := 'idx1';

 sqlOS := 'SELECT OSID FROM OS_OS';
 ExecDDL( -1, sqlOS, cdsOS );
 cdsOS.AddIndex( 'idx1','OSID',[ixPrimary],'','',0);
 cdsOS.IndexName := 'idx1';

 try
  with DMMigra do
  begin
    Conecta('ORDEM DE SERVICO');
    Tb1.TableName   := 'OSTERCEIROS';
    Sc1.CommandText := 'SELECT * FROM OS_OSTERCEIRO';
    Tb1.Open;
    Sc1.Open;
    Tb1.First;
    Pb1.Max := Tb1.RecordCount;
    while Not Tb1.Eof do
    begin
      Sc1.Insert;
      Sc1.FieldByName('NFSID').Value          := Tb1.FieldByName('NUMERO_NOTA').Value;
      Sc1.FieldByName('DATAEMISSAOID').Value  := Tb1.FieldByName('DATA_EMISSAO').Value;

      if not Tb1.FieldByName('IDENOS').IsNull then
         if not cdsOS.FindKey([Tb1.FieldByName('IDENOS').AsString]) then
            begin
             wwrichtxtLOG.Lines.Add( 'Tabela OSTERCEIRO OS não cadastrada OS ID = ' + Tb1.FieldByName('IDENOS').AsString );
             Sc1.Cancel;
             Tb1.Next;
             Continue;
            end;

      Sc1.FieldByName('OSID').Value              := Tb1.FieldByName('IDENOS').Value;
      Sc1.FieldByName('NOMENOTA').Value          := Tb1.FieldByName('NOME_NOTA').Value;
      Sc1.FieldByName('DATAPREVENTREGA').Value   := Tb1.FieldByName('DATA_PREV_ENTREGA').Value;
      if cdsEntidade.FindKey([Tb1.FieldByName('CODIGO_DESTIN').AsInteger]) then
         Sc1.FieldByName('DESTINATARIOID').Value    := Tb1.FieldByName('CODIGO_DESTIN').AsInteger
      else
         wwrichtxtLOG.Lines.Add( 'Tabela OS Terceiros Entidade não cadastrada, OSID = ' + Tb1.FieldByName('IDENOS').AsString );

      Sc1.FieldByName('MOTIVOATRASO').Value      := Tb1.FieldByName('MOTIVO').Value;
      Sc1.FieldByName('USUARIO').Value           := Tb1.FieldByName('USUARIO').Value;
      Sc1.Post;
      if Sc1.ChangeCount > 100 then
         Sc1.ApplyUpdates(-1);
      Tb1.Next;
      Pb1.StepIt;
    end;
    if Sc1.ChangeCount > 0 then
         Sc1.ApplyUpdates(-1);
    Tb1.Close;
    Sc1.Close;
   end;
   cdsOs.Close;
   cdsEntidade.Close;
 finally
  FreeAndNil( cdsOS );
  FreeAndNil( cdsEntidade );
 end;

end;

procedure TfrmMigra.ContatoJapao;
begin
  with DMMigra do begin
    Conecta('TECIMP_PROCESSO');
    Tb1.TableName   := 'OFFICE';
    Sc1.CommandText := 'SELECT * FROM IT_CONTATOJAPAO';
    Tb1.Open;
    Sc1.Open;
    Tb1.First;
    Pb1.Max := Tb1.RecordCount;
    while Not Tb1.Eof do
    begin
      Sc1.Insert;
      Sc1.FieldByName('CONTATOJAPAOID').Value  := Tb1.FieldByName('CODIGO').Value;
      Sc1.FieldByName('DESTINATARIO').Value    := Tb1.FieldByName('TO').Value;
      Sc1.FieldByName('DESTINATARIOCC').Value  := Tb1.FieldByName('CC').Value;
      Sc1.FieldByName('REMETENTE').Value       := Tb1.FieldByName('NAME').Value;
      Sc1.Post;
      Tb1.Next;
      Pb1.StepIt;
    end;
    if Sc1.ChangeCount > 0 then
       Sc1.ApplyUpdates(-1);
    Tb1.Close;
    Sc1.Close;
  end;
end;

procedure TfrmMigra.Despachante;
var sqlContaCTB : String;
    cdsContaCTB : TClientDataSet;
begin
 sqlContaCTB := 'SELECT CONTACONTABILID FROM EF_CONTACONTABIL';
 ExecDDL( -1, sqlContaCTB, cdsContaCTB );
 cdsContaCTB.AddIndex( 'idx1','CONTACONTABILID',[ixPrimary],'','',0);
 cdsContaCTB.IndexName := 'idx1';

 try
  with DMMigra do begin
    Conecta('TECIMP_CADASTRO');
    Tb1.TableName   := 'DESPACHANTE';
    Sc1.CommandText := 'SELECT * FROM IT_DESPACHANTE';
    Tb1.Open;
    Sc1.Open;
    Tb1.First;
    Pb1.Max := Tb1.RecordCount;
    while Not Tb1.Eof do
    begin
      Sc1.Insert;
      Sc1.FieldByName('DESPACHANTEID').Value  := Tb1.FieldByName('CODIGO').Value;
      Sc1.FieldByName('NOME').Value           := Tb1.FieldByName('DESPACHANTE').Value;
      if Not Tb1.FieldByName('CONTA').IsNull then
         if cdsContaCTB.FindKey([Tb1.FieldByName('CONTA').Value]) then
            Sc1.FieldByName('CONTACONTABILID').Value   := Tb1.FieldByName('CONTA').Value;
      Sc1.Post;
      Tb1.Next;
      Pb1.StepIt;
    end;
    if Sc1.ChangeCount > 0 then
       Sc1.ApplyUpdates(-1);
    Tb1.Close;
    Sc1.Close;
    dbMigra.Close;
  end;
 finally
  FreeAndNil( cdsContaCTB );
 end;
end;

procedure TfrmMigra.Indice;
begin
  with DMMigra do begin
    Conecta('TECIMP_DI');
    Tb1.TableName   := 'MOEDAS';
    Sc1.CommandText := 'SELECT * FROM IT_INDICE';
    Tb1.Open;
    Sc1.Open;
    Tb1.First;
    Pb1.Max := Tb1.RecordCount;
    while Not Tb1.Eof do
    begin
      Sc1.Insert;
      Sc1.FieldByName('DATAID').Value              := Tb1.FieldByName('DATA').Value;
      Sc1.FieldByName('DOLAROFICIALC').Value       := Tb1.FieldByName('US_FLUT_C').Value;
      Sc1.FieldByName('DOLAROFICIALV').Value       := Tb1.FieldByName('US_FLUT_V').Value;
      Sc1.FieldByName('DOLARPARALELOC').Value      := Tb1.FieldByName('US_PARL_C').Value;
      Sc1.FieldByName('DOLARPARALELOV').Value      := Tb1.FieldByName('US_PARL_V').Value;
      Sc1.FieldByName('DOLARFISCALDIARIO').Value   := Tb1.FieldByName('US_TURS_C').Value;
      if not Tb1.FieldByName('US_TURS_V').IsNull then
             Sc1.FieldByName('YENEFISCALDIARIO').AsbCD    := StrToBcd(Tb1.FieldByName('US_TURS_V').AsString);
      Sc1.Post;
      if Sc1.ChangeCount > 500 then
         Sc1.ApplyUpdates(-1);
      Tb1.Next;
      Pb1.StepIt;
    end;
    if Sc1.ChangeCount > 0 then
       Sc1.ApplyUpdates(-1);
    Tb1.Close;
    Sc1.Close;
  end;
end;

procedure TfrmMigra.Preco;
begin
  with DMMigra do begin
    Conecta('L_PRECO');
    Tb1.TableName   := 'PRECOS';
    Sc1.CommandText := 'SELECT * FROM IT_LISTAPRECO';
    Tb1.Open;
    Sc1.Open;
    Tb1.Open;
    Pb1.Max := Tb1.RecordCount;
    Tb1.First;
    while Not Tb1.Eof do
    begin
      if Tb1.FieldByName('PART_NO').IsNull then
         begin
          Tb1.Next;
          Pb1.StepIt;
          Continue;
         end;
         
      Sc1.Insert;
      Sc1.FieldByName('PARTNUMBERID').AsString     := Tb1.FieldByName('PART_NO').AsString;
      Sc1.FieldByName('DESCRICAOINGLES').AsString  := Tb1.FieldByName('DESCRIPTIP').AsString;
      Sc1.FieldByName('MODELOID').AsString         := Tb1.FieldByName('MODEL_NAME').AsString;
      Sc1.FieldByName('VLRFOB').AsString           := Tb1.FieldByName('PRECO').AsString;
      Sc1.FieldByName('VLRVENDA').AsString         := Tb1.FieldByName('PRC_VENDA').AsString;
      Sc1.FieldByName('VLRTROCA').AsString         := Tb1.FieldByName('PRC_TROCA').AsString;
      Sc1.Post;
      if Sc1.ChangeCount >= 500 then
         Sc1.ApplyUpdates(-1);
      Tb1.Next;
      Pb1.StepIt;
    end;
    if Sc1.ChangeCount > 0 then
       Sc1.ApplyUpdates(-1);
    Tb1.Close;
    Sc1.Close;
  end;
end;

procedure TfrmMigra.TipoProcesso;
begin
  with DMMigra do begin
    Conecta('IMP_CADASTRO');
    Tb1.TableName   := 'NUMERO';
    Sc1.CommandText := 'SELECT * FROM IT_TIPOPROCESSO';
    Tb1.Open;
    Sc1.Open;
    Tb1.First;
    Pb1.Max := Tb1.RecordCount;
    while Not Tb1.Eof do
    begin
      Sc1.Insert;
      Sc1.FieldByName('TIPOPROCESSOID').Value := Valor('IT_SQ_TECIMPTipoProcessoId');
      Sc1.FieldByName('SIGLA').AsString       := Tb1.FieldByName('DOCUMENTO').AsString;
      Sc1.FieldByName('NUMPROCESSO').Value    := Tb1.FieldByName('NUMERO_DOC').Value;
      Sc1.Post;
      Tb1.Next;
      Pb1.StepIt;
    end;
    if Sc1.ChangeCount > 0 then
       Sc1.ApplyUpdates(-1);
    Tb1.Close;
    Sc1.Close;

    {As Outras Tabelas Já foram Migradas}
    Exit;


    Conecta('TECIMP_PROCESSO');
    Tb1.TableName   := 'TIPO';
    Sc1.CommandText := 'SELECT * FROM IT_TIPOPROCESSO';
    Tb1.Open;
    Sc1.Open;
    Tb1.First;
    Pb1.Max := Tb1.RecordCount;
    while Not Tb1.Eof do
    begin
      Sc1.Insert;
      Sc1.FieldByName('TIPOPROCESSOID').Value := Tb1.FieldByName('CODIGO').Value;
      Sc1.FieldByName('SIGLA').Value          := Tb1.FieldByName('TIPO').Value;
      Sc1.FieldByName('DESCRICAO').Value      := Tb1.FieldByName('DESCRICAO').Value;
      Sc1.Post;
      Tb1.Next;
      Pb1.StepIt;
    end;
    if Sc1.ChangeCount > 0 then
       Sc1.ApplyUpdates(-1);
    Tb1.Close;
    Sc1.Close;

    Conecta('TECIMP_CADASTRO');
    Tb1.TableName   := 'NUMERO';
    Sc1.CommandText := 'SELECT * FROM IT_TIPOPROCESSO';
    Tb1.Open;
    Sc1.Open;
    Tb1.First;
    Pb1.Max := Tb1.RecordCount;
    while Not Tb1.Eof do
    begin
      Sc1.Insert;
      Sc1.FieldByName('TIPOPROCESSOID').Value := Valor('IT_SQ_TECIMPTipoProcessoId');
      if Tb1.FieldByName('DOCUMENTO').Value = 'TMJ' then
      begin
        Sc1.FieldByName('SIGLA').Value     := 'TMBJ';
        Sc1.FieldByName('DESCRICAO').Value := 'TMBJ';
      end
      else
      begin
        Sc1.FieldByName('SIGLA').Value     := Tb1.FieldByName('DOCUMENTO').Value;
        Sc1.FieldByName('DESCRICAO').Value := Tb1.FieldByName('DOCUMENTO').Value;
      end;
      Sc1.FieldByName('NUMPROCESSO').Value := Tb1.FieldByName('NUMERO_DOC').Value;
      Sc1.Post;
      if Sc1.ChangeCount >= 100 then
         Sc1.ApplyUpdates(-1);
      Tb1.Next;
      Pb1.StepIt;
    end;
    if Sc1.ChangeCount > 0 then
       Sc1.ApplyUpdates(-1);
    Tb1.Close;
    Sc1.Close;
  end;
end;

procedure TfrmMigra.TabelasAuxiliares;
const
  Tipo: array [1..12] of String = ('ADVANCED PAYMENT', 'CASH IN ADVANCE', 'D/A 30 DAYS AFTER B/L DATE',
                                   'D/A 150 DAYS AFTER B/L DATE', 'D/A 365 DAYS AFTER B/L DATE',
                                   'D/P - A/S', 'L/C - A/S', 'NET 30 DAYS TERMS', 'NO PAYMENT',
                                   'T/T REMITTANCE', 'D/A 240 DAYS AFTER B/L DATE', 'WIRE FUNDS');

  Categoria: array [1..2] of String = ('PARTS', 'TECHNICAL');

  Razao: array [1..10] of String = ('EXPENDABLE', 'FOR DEMO', 'LACK OF PART',
                                    'MAINTENANCE', 'NORMALTROUBLE', 'REPLENISH',
                                    'SHIPMENTTROUBLE', 'SYSTEMDOWN', 'TOOL', 'VERSIONUP');

  Frequencia: array [1..5] of String = ('1 TIMES/DAY', '1 TIMES/MONTH', '1 TIMES/WEEK',
                                        'CONTINUOUS', 'INTERMITTENT');



var
  i : Integer;
begin
  with DMMigra do begin
    Sc1.CommandText := 'SELECT * FROM IT_TERMOPAGTO';
    Sc1.Open;
    if Sc1.IsEmpty then
    begin
      for i := 1 to High(Tipo) do
      begin
        Sc1.Insert;
        Sc1.FieldByName('TERMOPAGTOID').Value := i;
        Sc1.FieldByName('DESCRICAO').AsString := Tipo[i];
        Sc1.Post;
        Sc1.ApplyUpdates(-1);
      end;
    end;
    Sc1.Close;

    Sc1.CommandText := 'SELECT * FROM IT_TIPOCATEGORIA';
    Sc1.Open;
    if Sc1.IsEmpty then
    begin
      for i := 1 to High(Categoria) do
      begin
        Sc1.Insert;
        Sc1.FieldByName('TIPOCATEGORIAID').Value := i;
        Sc1.FieldByName('DESCRICAO').AsString    := Categoria[i];
        Sc1.Post;
        Sc1.ApplyUpdates(-1);
      end;
    end;
    Sc1.Close;

    Sc1.CommandText := 'SELECT * FROM IT_RAZAOEXIGENCIA';
    Sc1.Open;
    if Sc1.IsEmpty then
    begin
      for i := 1 to High(Razao) do
      begin
        Sc1.Insert;
        Sc1.FieldByName('RAZAOEXIGENCIAID').Value := i;
        Sc1.FieldByName('DESCRICAO').AsString     := Razao[i];
        Sc1.Post;
        Sc1.ApplyUpdates(-1);
      end;
    end;
    Sc1.Close;

    Sc1.CommandText := 'SELECT * FROM IT_FREQUENCIA';
    Sc1.Open;
    if Sc1.IsEmpty then
    begin
      for i := 1 to High(Frequencia) do
      begin
        Sc1.Insert;
        Sc1.FieldByName('FREQUENCIAID').Value := i;
        Sc1.FieldByName('DESCRICAO').AsString := Frequencia[i];
        Sc1.Post;
        Sc1.ApplyUpdates(-1);
      end;
    end;
    Sc1.Close;
  end;
end;

procedure TfrmMigra.Processo;
var sqlTipoProcesso : String;
    sqlLocalChegada,sqlViaEmbarque : String;
    cdsTipoProcesso : TClientDataSet;
    cdsLocalChegada,cdsViaEmbarque : TClientDataSet;
    Tipo, Tipo2 : Integer;
begin
 sqlTipoProcesso := 'SELECT SIGLA, TIPOPROCESSOID FROM IT_TIPOPROCESSO ';
 ExecDDL( -1, sqlTipoProcesso, cdsTipoProcesso );
 cdsTipoProcesso.AddIndex( 'idx1','SIGLA',[ixDescending],'','',0);
 cdsTipoProcesso.IndexName := 'idx1';

 sqlLocalChegada := 'SELECT LOCALCHEGADAID,DESCRICAO FROM IT_LOCALCHEGADA';
 ExecDDL( -1, sqlLocalChegada, cdsLocalChegada );
 cdsLocalChegada.AddIndex( 'idx1','DESCRICAO',[ixDescending],'','',0);
 cdsLocalChegada.IndexName := 'idx1';

 sqlViaEmbarque := 'SELECT VIAEMBARQUEID,DESCRICAO FROM IT_VIAEMBARQUE';
 ExecDDL( -1, sqlViaEmbarque, cdsViaEmbarque );
 cdsViaEmbarque.AddIndex( 'idx1','DESCRICAO',[ixDescending],'','',0);
 cdsViaEmbarque.IndexName := 'idx1';

 // Normalizar base de dados de NX
 try
  with DMMigra do
  begin
   qryGeral.DatabaseName := 'TECIMP_PROCESSO';
   ExecQry2( 'Nx-150.sql' );
   ExecQry2( 'Nx-240.sql' );
   ExecQry2( 'Nx-30.sql' );
   ExecQry2( 'Nx-DP.sql' );
   ExecQry2( 'Nx-LC.sql' );
   ExecQry2( 'Nx-NO.sql' );
   ExecQry2( 'Nx-TT.sql' );
   ExecQry2( 'Pza-150.sql' );
   ExecQry2( 'Pza-30.sql' );
   ExecQry2( 'Pza-365.sql' );
   ExecQry2( 'Pza-AD.sql' );
   ExecQry2( 'Pza-CA.sql' );
   ExecQry2( 'Pza-DP.sql' );
   ExecQry2( 'Pza-TT.sql' );

   // Alimenta as tabelas de: Termo de Pagamento, Tipo de Categoria, Razão de Exigência,
   // Frequência, utilizadas na tabela de Processo

   TabelasAuxiliares;

   //-----------------------* NX *-----------------------//
   if cdsTipoProcesso.FindKey(['NX']) then
      Tipo := cdsTipoProcesso.FieldByName( 'TIPOPROCESSOID' ).AsInteger
   else
      begin
       Application.MessageBox( 'Tipo de processo não existente: NX', 'Erro !!!', MB_OK + MB_ICONERROR );
       Exit;
      end;

   if cdsTipoProcesso.FindKey(['NX2']) then
      Tipo2 := cdsTipoProcesso.FieldByName( 'TIPOPROCESSOID' ).AsInteger
   else
      begin
       Application.MessageBox( 'Tipo de processo não existente: NX2', 'Erro !!!', MB_OK + MB_ICONERROR );
       Exit;
      end;

   Conecta('TECIMP_PROCESSO');

   Tb1.TableName     := 'NX';
   Sc1.CommandText   := 'SELECT * FROM IT_PROCESSO';
   Sc1.Open;
   Tb1.Open;
   Tb1.First;
   Pb1.Max := Tb1.RecordCount;
   while Not Tb1.Eof do
   begin
    Sc1.Insert;
    Sc1.FieldByName('PROCESSOID').Value  := Tb1.FieldByName('NUMERO_NX').Value;

    // Definição do tip de Nx. Se é comercial ou técnica.
    if Length( Tb1.FieldByName('NUMERO_NX').AsString ) > 3 then
       Sc1.FieldByName('TIPOPROCESSOID').Value := Tipo2
    else
       Sc1.FieldByName('TIPOPROCESSOID').Value := Tipo;

    Sc1.FieldByName('PROCESSOANTIGOID').Value  := Tb1.FieldByName('NUMERO_NX').Value;
    Sc1.FieldByName('DATAPROCESSO').Value      := Tb1.FieldByName('DATA_ENVIO').Value;
    Sc1.FieldByName('CLIENTEID').Value         := Tb1.FieldByName('CODIGO_CLIENTE').Value;
    Sc1.FieldByName('STATUS').Value            := Copy( Tb1.FieldByName('STATUS').Value, 1, 1 );
    Sc1.FieldByName('OBSERVACAO').Value        := Tb1.FieldByName('OBS').Value;
    Sc1.FieldByName('PERGUNTA1').Value := 0;
    Sc1.FieldByName('PERGUNTA2').Value := 0;
    Sc1.FieldByName('PERGUNTA3').Value := 0;
    Sc1.FieldByName('PERGUNTA4').Value := 0;
    Sc1.FieldByName('PERGUNTA5').Value := 0;
    Sc1.FieldByName('USOMEDICO').Value := 0;

    if Tb1.FieldByName('LIBERA_CHEFIA').Value then
       Sc1.FieldByName('LIBERACHEFIA').Value := 1
    else
       Sc1.FieldByName('LIBERACHEFIA').Value := 0;

    Sc1.FieldByName('NOMELIBERANTE').Value := Tb1.FieldByName('NOME_LIBERANTE').Value;
    Sc1.FieldByName('DATALIBERACAO').Value := Tb1.FieldByName('DATA_LIBERACAO').Value;
    Sc1.FieldByName('FORNECEDORID').Value  := 20000 + Tb1.FieldByName('CODIGO_FORNECEDOR').Value;

    if Tb1.FieldByName('COND_PAGTO').Value = 'ADVANCED PAYMENT' then
       Sc1.FieldByName('TERMOPAGTOID').Value := 1
    else if Tb1.FieldByName('COND_PAGTO').Value = 'CASH IN ADVANCE' then
       Sc1.FieldByName('TERMOPAGTOID').Value := 2
    else if Tb1.FieldByName('COND_PAGTO').Value = 'D/A 30 DAYS AFTER B/' then
       Sc1.FieldByName('TERMOPAGTOID').Value := 3
    else if Tb1.FieldByName('COND_PAGTO').Value = 'D/A 150 DAYS AFTER B' then
       Sc1.FieldByName('TERMOPAGTOID').Value := 4
    else if Tb1.FieldByName('COND_PAGTO').Value = 'D/A 365 DAYS AFTER B' then
       Sc1.FieldByName('TERMOPAGTOID').Value := 5
    else if Tb1.FieldByName('COND_PAGTO').Value = 'D/P - A/S' then
       Sc1.FieldByName('TERMOPAGTOID').Value := 6
    else if Tb1.FieldByName('COND_PAGTO').Value = 'L/C - A/S' then
       Sc1.FieldByName('TERMOPAGTOID').Value := 7
    else if Tb1.FieldByName('COND_PAGTO').Value = 'NET 30 DAYS TERMS' then
       Sc1.FieldByName('TERMOPAGTOID').Value := 8
    else if Tb1.FieldByName('COND_PAGTO').Value = 'NO PAYMENT' then
       Sc1.FieldByName('TERMOPAGTOID').Value := 9
    else if Tb1.FieldByName('COND_PAGTO').Value = 'T/T REMITTANCE' then
       Sc1.FieldByName('TERMOPAGTOID').Value := 10
    else if Tb1.FieldByName('COND_PAGTO').Value = 'D/A 240 DAYS AFTER B' then
       Sc1.FieldByName('TERMOPAGTOID').Value := 11
    else if Tb1.FieldByName('COND_PAGTO').Value = 'WIRE FUNDS' then
       Sc1.FieldByName('TERMOPAGTOID').Value := 12;

    Sc1.FieldByName('DATAPREVISAO').Value     := Tb1.FieldByName('DATA_PREVISAO').Value;

    if cdsLocalChegada.FindKey( [ Tb1.FieldByName('DELIVERY').Value ] ) then
       Sc1.FieldByName('LOCALCHEGADAID').Value      := cdsLocalChegada.FieldByName('LOCALEMBARQUEID').Value;

    Sc1.FieldByName('NUMPROCESSOJAPAO').Value := Tb1.FieldByName('TOSHIBA_NUMBER').Value;

    if cdsViaEmbarque.FindKey( [ Tb1.FieldByName('VIA').Value ] ) then
       Sc1.FieldByName('VIAEMBARQUEID').Value      := cdsViaEmbarque.FieldByName('VIAEMBARQUEID').Value;

    Sc1.FieldByName('USUARIO').Value          := Tb1.FieldByName('REQUISITANTE').Value;
    Sc1.Post;
    if Sc1.ChangeCount >= 100 then
       Sc1.ApplyUpdates(-1);
    Tb1.Next;
    Pb1.StepIt;
   end;

   if Sc1.ChangeCount > 0 then
      Sc1.ApplyUpdates(-1);

   Tb1.Close;
   //-----------------------* PZA *-----------------------//
   if cdsTipoProcesso.FindKey(['PZA']) then
      Tipo := cdsTipoProcesso.FieldByName( 'TIPOPROCESSOID' ).AsInteger
   else
      begin
        Application.MessageBox( 'Tipo de processo não existente: PZA', 'Erro !!!', MB_OK + MB_ICONERROR );
        Exit;
      end;

   Tb1.Close;
   Tb1.TableName := 'PZA';
   Tb1.Open;
   Tb1.First;
   Pb1.Max := Tb1.RecordCount;
   while Not Tb1.Eof do
   begin
    Sc1.Insert;
    Sc1.FieldByName('PROCESSOID').Value        := Tb1.FieldByName('NUMERO_PZA').Value;
    Sc1.FieldByName('TIPOPROCESSOID').Value    := Tipo;
    Sc1.FieldByName('PROCESSOANTIGOID').Value  := Tb1.FieldByName('NUMERO_PZA').Value;
    Sc1.FieldByName('DATAPROCESSO').Value      := Tb1.FieldByName('DATA_PO').Value;
    Sc1.FieldByName('CLIENTEID').Value         := Tb1.FieldByName('CODIGO_CLIENTE').Value;
    Sc1.FieldByName('STATUS').Value            := Copy( Tb1.FieldByName('STATUS').Value, 1, 1 );
    Sc1.FieldByName('OBSERVACAO').Value  := Tb1.FieldByName('OBS').Value;
    Sc1.FieldByName('PERGUNTA1').Value := 0;
    Sc1.FieldByName('PERGUNTA2').Value := 0;
    Sc1.FieldByName('PERGUNTA3').Value := 0;
    Sc1.FieldByName('PERGUNTA4').Value := 0;
    Sc1.FieldByName('PERGUNTA5').Value := 0;
    Sc1.FieldByName('USOMEDICO').Value := 0;

    if Tb1.FieldByName('LIBERA_CHEFIA').Value then
       Sc1.FieldByName('LIBERACHEFIA').Value := 1
    else
       Sc1.FieldByName('LIBERACHEFIA').Value := 0;

    Sc1.FieldByName('NOMELIBERANTE').Value   := Tb1.FieldByName('NOME_LIBERANTE').Value;
    Sc1.FieldByName('DATALIBERACAO').Value   := Tb1.FieldByName('DATA_LIBERACAO').Value;
    Sc1.FieldByName('FORNECEDORID').Value  := 20000 + Tb1.FieldByName('CODIGO_FORNECEDOR').Value;

    if Tb1.FieldByName('COND_PAGTO').Value = 'ADVANCED PAYMENT' then
       Sc1.FieldByName('TERMOPAGTOID').Value := 1
    else if Tb1.FieldByName('COND_PAGTO').Value = 'CASH IN ADVANCE' then
       Sc1.FieldByName('TERMOPAGTOID').Value := 2
    else if Tb1.FieldByName('COND_PAGTO').Value = 'D/A 30 DAYS AFTER B/' then
       Sc1.FieldByName('TERMOPAGTOID').Value := 3
    else if Tb1.FieldByName('COND_PAGTO').Value = 'D/A 150 DAYS AFTER B' then
       Sc1.FieldByName('TERMOPAGTOID').Value := 4
    else if Tb1.FieldByName('COND_PAGTO').Value = 'D/A 365 DAYS AFTER B' then
       Sc1.FieldByName('TERMOPAGTOID').Value := 5
    else if Tb1.FieldByName('COND_PAGTO').Value = 'D/P - A/S' then
       Sc1.FieldByName('TERMOPAGTOID').Value := 6
    else if Tb1.FieldByName('COND_PAGTO').Value = 'L/C - A/S' then
       Sc1.FieldByName('TERMOPAGTOID').Value := 7
    else if Tb1.FieldByName('COND_PAGTO').Value = 'NET 30 DAYS TERMS' then
       Sc1.FieldByName('TERMOPAGTOID').Value := 8
    else if Tb1.FieldByName('COND_PAGTO').Value = 'NO PAYMENT' then
       Sc1.FieldByName('TERMOPAGTOID').Value := 9
    else if Tb1.FieldByName('COND_PAGTO').Value = 'T/T REMITTANCE' then
       Sc1.FieldByName('TERMOPAGTOID').Value := 10
    else if Tb1.FieldByName('COND_PAGTO').Value = 'D/A 240 DAYS AFTER B' then
       Sc1.FieldByName('TERMOPAGTOID').Value := 11
    else if Tb1.FieldByName('COND_PAGTO').Value = 'WIRE FUNDS' then
       Sc1.FieldByName('TERMOPAGTOID').Value := 12;

    if cdsLocalChegada.FindKey( [ Tb1.FieldByName('DELIVERY').Value ] ) then
       Sc1.FieldByName('LOCALCHEGADAID').Value      := cdsLocalChegada.FieldByName('LOCALEMBARQUEID').Value;

    Sc1.FieldByName('NUMPROCESSOJAPAO').Value := Tb1.FieldByName('TOSHIBA_NUMBER').Value;

    if cdsViaEmbarque.FindKey( [ Tb1.FieldByName('VIA').Value ] ) then
       Sc1.FieldByName('VIAEMBARQUEID').Value      := cdsViaEmbarque.FieldByName('VIAEMBARQUEID').Value;

    Sc1.FieldByName('USUARIO').Value          := Tb1.FieldByName('REQUISITANTE').Value;
    Sc1.Post;
    if Sc1.ChangeCount >= 100 then
       Sc1.ApplyUpdates(-1);
    Tb1.Next;
    Pb1.StepIt;
   end;

   if Sc1.ChangeCount > 0 then
      Sc1.ApplyUpdates(-1);

   Tb1.Close;
   //-----------------------* TMBJ *-----------------------//
   if cdsTipoProcesso.FindKey(['TMBJ']) then
      Tipo := cdsTipoProcesso.FieldByName( 'TIPOPROCESSOID' ).AsInteger
   else
      begin
       Application.MessageBox( 'Tipo de processo não existente: TMBJ', 'Erro !!!', MB_OK + MB_ICONERROR );
       Exit;
      end;

   Tb1.TableName := 'TMBJ';
   Tb1.Open;
   Tb1.First;
   Pb1.Max := Tb1.RecordCount;
   while Not Tb1.Eof do
   begin
    Sc1.Insert;
    Sc1.FieldByName('PROCESSOID').Value       := TransfNum( Tb1.FieldByName('NUMERO_TMBJ').Value );
    Sc1.FieldByName('TIPOPROCESSOID').Value   := Tipo;
    Sc1.FieldByName('PROCESSOANTIGOID').Value := Tb1.FieldByName('NUMERO_TMBJ').Value;
    Sc1.FieldByName('DATAPROCESSO').Value     := Tb1.FieldByName('DATA_TMBJ').Value;
    Sc1.FieldByName('CLIENTEID').Value        := Tb1.FieldByName('CODIGO_CLIENTE').Value;
    Sc1.FieldByName('STATUS').Value           := Copy( Tb1.FieldByName('STATUS').Value, 1, 1 );
    Sc1.FieldByName('OBSERVACAO').Value       := Tb1.FieldByName('OBS').Value;

    if Not Tb1.FieldByName('TIPO').IsNull then
       Sc1.FieldByName('TIPOSERVICO').Value := Tb1.FieldByName('TIPO').Value;

    if Not Tb1.FieldByName('REQUESTED').IsNull then
       Sc1.FieldByName('TIPOREQUISICAO').Value := Tb1.FieldByName('REQUESTED').Value;

    if ( Tb1.FieldByName('PERGUNTA_1').Value = 'S' ) or ( Tb1.FieldByName('PERGUNTA_1').Value = 's' ) then
       Sc1.FieldByName('PERGUNTA1').Value := 1
    else
       Sc1.FieldByName('PERGUNTA1').Value := 0;

    if ( Tb1.FieldByName('PERGUNTA_2').Value = 'S' ) or ( Tb1.FieldByName('PERGUNTA_2').Value = 's' ) then
       Sc1.FieldByName('PERGUNTA2').Value := 1
    else
       Sc1.FieldByName('PERGUNTA2').Value := 0;

    if ( Tb1.FieldByName('PERGUNTA_3').Value = 'S' ) or ( Tb1.FieldByName('PERGUNTA_3').Value = 's' ) then
       Sc1.FieldByName('PERGUNTA3').Value := 1
    else
       Sc1.FieldByName('PERGUNTA3').Value := 0;

    if ( Tb1.FieldByName('PERGUNTA_4').Value = 'S' ) or ( Tb1.FieldByName('PERGUNTA_4').Value = 's' ) then
       Sc1.FieldByName('PERGUNTA4').Value := 1
    else
       Sc1.FieldByName('PERGUNTA4').Value := 0;

    if ( Tb1.FieldByName('PERGUNTA_5').Value = 'S' ) or ( Tb1.FieldByName('PERGUNTA_5').Value = 's' ) then
       Sc1.FieldByName('PERGUNTA5').Value  := 1
    else
       Sc1.FieldByName('PERGUNTA5').Value := 0;

    if Not Tb1.FieldByName('CATEGORY').IsNull then
    begin
      if Copy( Tb1.FieldByName('CATEGORY').Value, 1, 1 ) = 'P' then
         Sc1.FieldByName('TIPOCATEGORIAID').Value := 1
      else if Copy( Tb1.FieldByName('CATEGORY').Value, 1, 1 ) = 'T' then
         Sc1.FieldByName('TIPOCATEGORIAID').Value := 2;
    end;

    if Not Tb1.FieldByName('REQUIREMENT').IsNull then
    begin
      if Copy( Tb1.FieldByName('REQUIREMENT').Value, 1, 1 ) = 'M' then
         Sc1.FieldByName('RAZAOEXIGENCIAID').Value  := 4
      else if Copy( Tb1.FieldByName('REQUIREMENT').Value, 1, 1 ) = 'N' then
         Sc1.FieldByName('RAZAOEXIGENCIAID').Value := 5
      else if Copy( Tb1.FieldByName('REQUIREMENT').Value, 1, 1 ) = 'R' then
         Sc1.FieldByName('RAZAOEXIGENCIAID').Value := 6
      else if Copy( Tb1.FieldByName('REQUIREMENT').Value, 1, 2 ) = 'Sh' then
         Sc1.FieldByName('RAZAOEXIGENCIAID').Value := 7
      else if Copy( Tb1.FieldByName('REQUIREMENT').Value, 1, 2 ) = 'Sy' then
         Sc1.FieldByName('RAZAOEXIGENCIAID').Value := 8;
    end;

    if Not Tb1.FieldByName('FREQUENCY').IsNull then
    begin
      if Copy( Tb1.FieldByName('FREQUENCY').Value, 1, 1 ) = '1' then
         Sc1.FieldByName('FREQUENCIAID').Value := 1
      else if Copy( Tb1.FieldByName('FREQUENCY').Value, 1, 1 ) = 'C' then
         Sc1.FieldByName('FREQUENCIAID').Value := 4
      else if Copy( Tb1.FieldByName('FREQUENCY').Value, 1, 1 ) = 'I' then
         Sc1.FieldByName('FREQUENCIAID').Value := 5;
    end;

    if Not Tb1.FieldByName('MEDICAL_USE').IsNull then
    begin
      if Tb1.FieldByName('MEDICAL_USE').Value then Sc1.FieldByName('USOMEDICO').Value := 1
      else Sc1.FieldByName('USOMEDICO').Value := 0;
    end
    else
      Sc1.FieldByName('USOMEDICO').Value := 0;

    Sc1.FieldByName('NUMREMESSA').Value   := Tb1.FieldByName('SHIPMENT_CODE').Value;
    Sc1.FieldByName('NUMAGENTE').Value    := Tb1.FieldByName('AGENTCODE').Value;
    Sc1.FieldByName('PAISDESTINO').Value  := Tb1.FieldByName('DESTINATION_COUNTRY').Value;

    if Not Tb1.FieldByName('LIBERA_CHEFIA').IsNull then
    begin
      if Tb1.FieldByName('LIBERA_CHEFIA').Value then Sc1.FieldByName('LIBERACHEFIA').Value := 1
      else Sc1.FieldByName('LIBERACHEFIA').Value := 0;
    end
    else
      Sc1.FieldByName('LIBERACHEFIA').Value := 0;

    Sc1.FieldByName('NOMELIBERANTE').Value  := Tb1.FieldByName('NOME_LIBERANTE').Value;
    Sc1.FieldByName('DATALIBERACAO').Value  := Tb1.FieldByName('DATA_LIBERACAO').Value;
    Sc1.FieldByName('FORNECEDORID').Value  := 20000 + Tb1.FieldByName('CODIGO_FORNECEDOR').Value;
    Sc1.FieldByName('NUMPROCESSOJAPAO').Value  := Tb1.FieldByName('TOSHIBA_NUMBER').Value;

    if Not Tb1.FieldByName('COBERTURA').IsNull then
    begin
      if Tb1.FieldByName('COBERTURA').Value then Sc1.FieldByName('COBERTURACAMBIAL').Value := 1
      else Sc1.FieldByName('COBERTURACAMBIAL').Value := 0;
    end
    else
      Sc1.FieldByName('COBERTURACAMBIAL').Value := 0;

    Sc1.FieldByName('USUARIO').Value  := Tb1.FieldByName('REQUISITANTE').Value;
    Sc1.Post;
    if Sc1.ChangeCount >= 100 then
       Sc1.ApplyUpdates(-1);
    Tb1.Next;
    Pb1.StepIt;
   end;

   if Sc1.ChangeCount > 0 then
     Sc1.ApplyUpdates(-1);

   Tb1.Close;

   //-----------------------* OUTROS *-----------------------//
   Tb1.TableName := 'OUTROS';
   Tb1.Open;
   Tb1.First;
   Pb1.Max := Tb1.RecordCount;
   while Not Tb1.Eof do
   begin
    Sc1.Insert;
    Sc1.FieldByName('PROCESSOID').Value        := Item( Tb1.FieldByName('TIPO').Value );
    Sc1.FieldByName('TIPOPROCESSOID').Value    := Tb1.FieldByName('TIPO').Value;
    Sc1.FieldByName('PROCESSOANTIGOID').Value  := Tb1.FieldByName('NUMERO').Value;
    Sc1.FieldByName('DATAPROCESSO').Value      := Tb1.FieldByName('DATA_PROC').Value;
    Sc1.FieldByName('CLIENTEID').Value         := Tb1.FieldByName('CODIGO_CLIENTE').Value;
    if Copy( Tb1.FieldByName('STATUS').Value, 1, 1 ) <> 'E' then
       Sc1.FieldByName('STATUS').Value := Copy( Tb1.FieldByName('STATUS').Value, 1, 1 )
    else
       Sc1.FieldByName('STATUS').Value := 'L';

    Sc1.FieldByName('PERGUNTA1').Value := 0;
    Sc1.FieldByName('PERGUNTA2').Value := 0;
    Sc1.FieldByName('PERGUNTA3').Value := 0;
    Sc1.FieldByName('PERGUNTA4').Value := 0;
    Sc1.FieldByName('PERGUNTA5').Value := 0;
    Sc1.FieldByName('USOMEDICO').Value := 0;

    if Tb1.FieldByName('LIBERA_CHEFIA').Value then
       Sc1.FieldByName('LIBERACHEFIA').Value := 1
    else
       Sc1.FieldByName('LIBERACHEFIA').Value := 0;

    Sc1.FieldByName('NOMELIBERANTE').Value    := Tb1.FieldByName('NOME_LIBERANTE').Value;
    Sc1.FieldByName('DATALIBERACAO').Value    := Tb1.FieldByName('DATA_LIBERACAO').Value;
    Sc1.FieldByName('FORNECEDORID').Value     := 20000 + Tb1.FieldByName('CODIGO_FORNECEDOR').Value;
    Sc1.FieldByName('NUMPROCESSOJAPAO').Value := Tb1.FieldByName('TOSHIBA_NUMBER').Value;
    Sc1.FieldByName('COBERTURACAMBIAL').Value := Tb1.FieldByName('COBERTURA').Value;
    Sc1.FieldByName('USUARIO').Value          := Tb1.FieldByName('REQUISITANTE').Value;
    Sc1.Post;
    if Sc1.ChangeCount >= 100 then
       Sc1.ApplyUpdates(-1);
    Tb1.Next;
    Pb1.StepIt;
   end;

   if Sc1.ChangeCount > 0 then
      Sc1.ApplyUpdates(-1);

   Tb1.Close;
   Sc1.Close;
  end;
  LimpaItem;
 finally
  FreeAndNil( cdsTipoProcesso );
  FreeAndNil( cdsLocalChegada );
  FreeAndNil( cdsViaEmbarque );
 end;
end;

procedure TfrmMigra.ProcessoItem;
var sqlDI, sqlTipoProcesso, sqlProcesso, sqlListPreco, ProcessoId  : String;
    cdsDI, cdsTipoProcesso, cdsListPreco, cdsProcesso : TClientDataSet;
    ItemId, Tipo, Tipo2 : Integer;
begin
 sqlDI := 'SELECT DECLARACAOID FROM IT_DECLARACAO';
 ExecDDL( -1, sqlDI, cdsDI );
 cdsDI.AddIndex( 'idx1','DECLARACAOID',[ixPrimary],'','',0);
 cdsDI.IndexName := 'idx1';

 sqlProcesso := 'SELECT TIPOPROCESSOID, PROCESSOANTIGOID, PROCESSOID FROM IT_PROCESSO';
 ExecDDL( -1, sqlProcesso, cdsProcesso );
 cdsProcesso.AddIndex( 'idx1','TIPOPROCESSOID;PROCESSOANTIGOID',[ixPrimary],'','',0);
 cdsProcesso.IndexName := 'idx1';

 sqlListPreco := 'SELECT PARTNUMBERID FROM IT_LISTAPRECO ';
 ExecDDL( -1, sqlListPreco, cdsListPreco );
 cdsListPreco.AddIndex( 'idx1','PARTNUMBERID',[ixDescending],'','',0);
 cdsListPreco.IndexName := 'idx1';

 sqlTipoProcesso := 'SELECT SIGLA, TIPOPROCESSOID FROM IT_TIPOPROCESSO ';
 ExecDDL( -1, sqlTipoProcesso, cdsTipoProcesso );
 cdsTipoProcesso.AddIndex( 'idx1','SIGLA',[ixDescending],'','',0);
 cdsTipoProcesso.IndexName := 'idx1';

 // Normalizar base de dados de NX
 try
  ItemId := 0;
   with DMMigra do
   begin
    Conecta('TECIMP_PROCESSO');
    //-----------------------* NX *-----------------------//
    if cdsTipoProcesso.FindKey(['NX']) then
       Tipo := cdsTipoProcesso.FieldByName( 'TIPOPROCESSOID' ).AsInteger
    else
       begin
        Application.MessageBox( 'Tipo de processo não existente: NX', 'Erro !!!', MB_OK + MB_ICONERROR );
        Exit;
       end;

    if cdsTipoProcesso.FindKey(['NX2']) then
       Tipo2 := cdsTipoProcesso.FieldByName( 'TIPOPROCESSOID' ).AsInteger
    else
       begin
        Application.MessageBox( 'Tipo de processo não existente: NX2', 'Erro !!!', MB_OK + MB_ICONERROR );
        Exit;
       end;

    Qr2.SQL.Text    := 'SELECT A.*, B.VIA, B.REQUISITANTE ' +
                       ' FROM ITEM_NX A, ' +
                       ' NX B ' +
                       ' WHERE A.NUMERO_NX = B.NUMERO_NX ';

    Sc1.CommandText := 'SELECT * FROM IT_PROCESSOITEM';
    Sc1.Open;
    Qr2.Open;
    Qr2.First;
    Pb1.Max := Qr2.RecordCount;
    while Not Qr2.Eof do
    begin
     Sc1.Insert;
     Sc1.FieldByName('PROCESSOID').Value := Qr2.FieldByName('NUMERO_NX').Value;

     // Definição do tip de Nx. Se é comercial ou técnica.
     if Length( Qr2.FieldByName('NUMERO_NX').AsString ) > 3 then
        Sc1.FieldByName('TIPOPROCESSOID').Value := Tipo2
     else
        Sc1.FieldByName('TIPOPROCESSOID').Value := Tipo;

     Sc1.FieldByName('ITEMID').Value              := Qr2.FieldByName('NUMERO_ITEM').Value;

     if cdsListPreco.FindKey([Qr2.FieldByName('PART_NUMBER').Value]) then
        Sc1.FieldByName('PARTNUMBERID').AsString     := Qr2.FieldByName('PART_NUMBER').Value
     else
        wwrichtxtLOG.Lines.Add( 'Tabela NX Partnumber não cadastrada, NX ID = ' + QR2.FieldByName('NUMERO_NX').AsString );


     Sc1.FieldByName('GRUPOID').Value             := Qr2.FieldByName('GRUPO').Value;
     Sc1.FieldByName('DESCRICAOINGLES').Value     := Qr2.FieldByName('DESCRICAO_INGLES').Value;
     Sc1.FieldByName('DESCRICAOPORTUGUES').Value  := Qr2.FieldByName('DESCRICAO_PORTUGUES').Value;

     if Qr2.FieldByName('PRIORITY').Value = 'SOS' then
        Sc1.FieldByName('PRIORIDADE').Value := 'S'
     else
        Sc1.FieldByName('PRIORIDADE').Value := Qr2.FieldByName('PRIORITY').Value;

     Sc1.FieldByName('QTDPEDIDA').Value           := Qr2.FieldByName('QUANTIDADE_PED').Value;
     Sc1.FieldByName('QTDLIBERADA').Value         := Qr2.FieldByName('QUANTIDADE').Value;
     Sc1.FieldByName('VLRFOBUS').Value            := Qr2.FieldByName('FOB').Value;
     Sc1.FieldByName('PRODUTOID').Value           := Qr2.FieldByName('CODIGO_PRODUTO').Value;
     Sc1.FieldByName('NCMID').Value               := Qr2.FieldByName('CODIGO_NCM').Value;
     Sc1.FieldByName('DATAPREVISAO').Value        := Qr2.FieldByName('DATA_PREVISAO').Value;
     Sc1.FieldByName('DATAEMBARQUE').Value        := Qr2.FieldByName('DATA_EMBARQUE').Value;
     Sc1.FieldByName('DATACHEGADA').Value         := Qr2.FieldByName('DATA_CHEGADA').Value;
     Sc1.FieldByName('INVOICEID').Value           := Qr2.FieldByName('INVOICE').Value;
     Sc1.FieldByName('TSBREFID').Value            := Qr2.FieldByName('TSB_REF').Value;
     Sc1.FieldByName('RETORNAPECADEF').Value      := 0;
     Sc1.FieldByName('REGANVISA').Value           := Qr2.FieldByName('REG_ANVISA').Value;

     if cdsDI.FindKey([Qr2.FieldByName('DIPROVISORIO').Value] ) then
        Sc1.FieldByName('DECLARACAOID').Value        := Qr2.FieldByName('DIPROVISORIO').Value;

     Sc1.FieldByName('USUARIO').Value             := Qr2.FieldByName('REQUISITANTE').Value;
     Sc1.Post;
     if Sc1.ChangeCount > 100 then
        Sc1.ApplyUpdates(-1);

     Qr2.Next;
     Pb1.StepIt;
    end;

    if Sc1.ChangeCount > 0 then
       Sc1.ApplyUpdates(-1);

    Qr2.Close;

    //-----------------------* PZAITEM *-----------------------//
    if cdsTipoProcesso.FindKey(['PZA']) then
       Tipo := cdsTipoProcesso.FieldByName( 'TIPOPROCESSOID' ).AsInteger
    else
       begin
        Application.MessageBox( 'Tipo de processo não existente: PZA', 'Erro !!!', MB_OK + MB_ICONERROR );
        Exit;
       end;

    Qr2.SQL.Text    := 'SELECT A.*, B.VIA, B.REQUISITANTE ' +
                       ' FROM ITEM_PZA A, ' +
                       ' PZA B ' +
                       ' WHERE A.NUMERO_PZA = B.NUMERO_PZA ';
    Sc1.CommandText := 'SELECT * FROM IT_PROCESSOITEM';
    Qr2.Open;
    Sc1.Open;
    Qr2.First;
    Pb1.Max := Qr2.RecordCount;
    while Not Qr2.Eof do
    begin
      Sc1.Insert;
      Sc1.FieldByName('PROCESSOID').Value      := Qr2.FieldByName('NUMERO_PZA').Value;
      Sc1.FieldByName('TIPOPROCESSOID').Value  := Tipo;
      Sc1.FieldByName('ITEMID').Value          := Qr2.FieldByName('NUMERO_ITEM').Value;

      if cdsListPreco.FindKey([Qr2.FieldByName('PART_NUMBER').Value]) then
         Sc1.FieldByName('PARTNUMBERID').AsString    := Qr2.FieldByName('PART_NUMBER').Value
      else
         wwrichtxtLOG.Lines.Add( 'Tabela PZA Partnumber não cadastrada, PZA ID = ' + QR2.FieldByName('NUMERO_PZA').AsString );

      Sc1.FieldByName('GRUPOID').Value            := Qr2.FieldByName('GRUPO').Value;
      Sc1.FieldByName('DESCRICAOINGLES').Value    := Qr2.FieldByName('DESCRICAO_INGLES').Value;
      Sc1.FieldByName('DESCRICAOPORTUGUES').Value := Qr2.FieldByName('DESCRICAO_PORTUGUES').Value;

      if Qr2.FieldByName('PRIORITY').Value = 'SOS' then
         Sc1.FieldByName('PRIORIDADE').Value := 'S'
      else
         Sc1.FieldByName('PRIORIDADE').Value   := Qr2.FieldByName('PRIORITY').Value;

      Sc1.FieldByName('QTDPEDIDA').Value        := Qr2.FieldByName('QUANTIDADE_PED').Value;
      Sc1.FieldByName('QTDLIBERADA').Value      := Qr2.FieldByName('QUANTIDADE').Value;
      Sc1.FieldByName('VLRFOBUS').Value         := Qr2.FieldByName('FOB').Value;
      Sc1.FieldByName('PRODUTOID').Value        := Qr2.FieldByName('CODIGO_PRODUTO').Value;
      Sc1.FieldByName('NCMID').Value            := Qr2.FieldByName('CODIGO_NCM').Value;
      Sc1.FieldByName('DATAPREVISAO').Value     := Qr2.FieldByName('DATA_PREVISAO').Value;
      Sc1.FieldByName('DATAEMBARQUE').Value     := Qr2.FieldByName('DATA_EMBARQUE').Value;
      Sc1.FieldByName('DATACHEGADA').Value      := Qr2.FieldByName('DATA_CHEGADA').Value;
      Sc1.FieldByName('INVOICEID').Value        := Qr2.FieldByName('INVOICE').Value;
      Sc1.FieldByName('TSBREFID').Value         := Qr2.FieldByName('TSB_REF').Value;

     if cdsDI.FindKey([Qr2.FieldByName('DIPROVISORIO').Value] ) then
         Sc1.FieldByName('DECLARACAOID').Value     := Qr2.FieldByName('DIPROVISORIO').Value;
         
      Sc1.FieldByName('RETORNAPECADEF').Value   := 0;
      Sc1.FieldByName('USUARIO').Value          := Qr2.FieldByName('REQUISITANTE').Value;
      Sc1.Post;
      if Sc1.ChangeCount > 100 then
         Sc1.ApplyUpdates(-1);
      Qr2.Next;
      Pb1.StepIt;
    end;

    if Sc1.ChangeCount > 0 then
       Sc1.ApplyUpdates(-1);
    Qr2.Close;

    //-----------------------* TMBJITEM *-----------------------//
    if cdsTipoProcesso.FindKey(['TMBJ']) then
       Tipo := cdsTipoProcesso.FieldByName( 'TIPOPROCESSOID' ).AsInteger
    else
       begin
        Application.MessageBox( 'Tipo de processo não existente: PZA', 'Erro !!!', MB_OK + MB_ICONERROR );
        Exit;
       end;

    Qr2.SQL.Text    := 'SELECT A.*, B.REQUISITANTE ' +
                       ' FROM ITEM_TMBJ A, ' +
                       ' TMBJ B ' +
                       ' WHERE A.NUMERO_TMBJ = B.NUMERO_TMBJ ';
    Sc1.CommandText := 'SELECT * FROM IT_PROCESSOITEM';
    Qr2.Open;
    Sc1.Open;
    Qr2.First;
    Pb1.Max := Qr2.RecordCount;
    while Not Qr2.Eof do
    begin
      Sc1.Insert;
      Sc1.FieldByName('PROCESSOID').Value      := TransfNum( Qr2.FieldByName('NUMERO_TMBJ').Value );
      Sc1.FieldByName('TIPOPROCESSOID').Value  := Tipo;
      Sc1.FieldByName('ITEMID').Value          := Qr2.FieldByName('NUMERO_ITEM').Value;

      if cdsListPreco.FindKey([Qr2.FieldByName('PART_NUMBER').Value]) then
         Sc1.FieldByName('PARTNUMBERID').AsString    := Qr2.FieldByName('PART_NUMBER').Value
      else
         wwrichtxtLOG.Lines.Add( 'Tabela TMBJ Partnumber não cadastrada, PZA ID = ' + QR2.FieldByName('NUMERO_TMBJ').AsString );

      Sc1.FieldByName('GRUPOID').Value             := Qr2.FieldByName('GRUPO').Value;
      Sc1.FieldByName('DESCRICAOINGLES').Value     := Qr2.FieldByName('DESCRICAO_INGLES').Value;
      Sc1.FieldByName('DESCRICAOPORTUGUES').Value  := Qr2.FieldByName('DESCRICAO_PORTUGUES').Value;
      Sc1.FieldByName('SERIEID').Value             := Qr2.FieldByName('SERIE_EQUIP').Value;
      Sc1.FieldByName('MODELOID').Value            := Qr2.FieldByName('EQUIPAMENTO').Value;
      Sc1.FieldByName('NOMEUNIDADE').Value         := Qr2.FieldByName('UNIT_NAME').Value;

      Sc1.FieldByName('PEDIDOORIGINAL').Value      := Qr2.FieldByName('NUM_AGT_ORIGINAL').Value;
      Sc1.FieldByName('DATAINSTALEQUIP').Value     := Qr2.FieldByName('DATA_INST_EQUIP').Value;
      Sc1.FieldByName('DATAFALHAEQUIP').Value      := Qr2.FieldByName('DATA_FALHA_EQUIP').Value;

      if Not Qr2.FieldByName('PRIORITY').IsNull then
        if Qr2.FieldByName('PRIORITY').Value = 'SOS' then
           Sc1.FieldByName('PRIORIDADE').Value := 'S'
        else
           Sc1.FieldByName('PRIORIDADE').Value := Qr2.FieldByName('PRIORITY').Value;

      Sc1.FieldByName('QTDPEDIDA').Value           := Qr2.FieldByName('QUANTIDADE_PED').Value;
      Sc1.FieldByName('QTDLIBERADA').Value         := Qr2.FieldByName('QUANTIDADE').Value;
      Sc1.FieldByName('VLRFOBUS').Value            := Qr2.FieldByName('FOB_PRICE').Value;
      Sc1.FieldByName('PRODUTOID').Value           := Qr2.FieldByName('CODIGO_PRODUTO').Value;
      Sc1.FieldByName('NCMID').Value               := Qr2.FieldByName('CODIGO_NCM').Value;
      Sc1.FieldByName('DATAEMBARQUE').Value        := Qr2.FieldByName('DATA_EMBARQUE').Value;
      Sc1.FieldByName('DATACHEGADA').Value         := Qr2.FieldByName('DATA_CHEGADA').Value;
      Sc1.FieldByName('INVOICEID').Value           := Qr2.FieldByName('NUM_INVOICE').Value;
      Sc1.FieldByName('DATADEVOLUCAO').Value       := Qr2.FieldByName('DATA_DEV_TEC').Value;
      Sc1.FieldByName('DATAPREVRETORNO').Value     := Qr2.FieldByName('DATA_RET_SCHED').Value;
      Sc1.FieldByName('DATAEMBTOKIO').Value        := Qr2.FieldByName('DATA_RET_TOKYO').Value;

      if Not Qr2.FieldByName('SCRAP').IsNull then
         Sc1.FieldByName('RETORNAPECADEF').Value := 1
      else
         Sc1.FieldByName('RETORNAPECADEF').Value := 0;

      Sc1.FieldByName('VLRYEN').Value           := Qr2.FieldByName('VALOR_YEN').Value;

     if cdsDI.FindKey([Qr2.FieldByName('DIPROVISORIO').Value] ) then
         Sc1.FieldByName('DECLARACAOID').Value     := Qr2.FieldByName('DIPROVISORIO').Value;
         
      Sc1.FieldByName('USUARIO').Value          := Qr2.FieldByName('REQUISITANTE').Value;
      Sc1.Post;
      if Sc1.ChangeCount > 100 then
         Sc1.ApplyUpdates(-1);
      Qr2.Next;
      Pb1.StepIt;
    end;

    if Sc1.ChangeCount > 0 then
       Sc1.ApplyUpdates(-1);
    Qr2.Close;

    //-----------------------* OUTROSITEM *-----------------------//
    ProcessoId := '';
    Qr2.SQL.Text    := 'SELECT A.*, B.REQUISITANTE ' +
                       ' FROM ITEM_OUTROS A, ' +
                       ' OUTROS B ' +
                       ' WHERE A.NUMERO = B.NUMERO ' +
                       ' AND A.TIPO   = B.TIPO ';

    Sc1.CommandText := 'SELECT * FROM IT_PROCESSOITEM';
    Qr2.Open;
    Sc1.Open;
    Qr2.First;
    Pb1.Max := Qr2.RecordCount;
    while Not Qr2.Eof do
    begin
      ProcessoId := Qr2.FieldByName('NUMERO').AsString;
      if ( copy(ProcessoId,1,3) = 'JPR' ) and ( copy(ProcessoId,4,1) <> ' ' ) then
         begin
          ProcessoId := 'JPR 2004';
          ItemId     := Qr2.FieldByName('NUMERO_ITEM').Value+1;
         end;

       if not cdsProcesso.FindKey([Qr2.FieldByName('TIPO').AsString, ProcessoId]) then
          begin
           wwrichtxtLOG.Lines.Add( 'Tabela OUTROS Processo não cadastrado, OUTROS ID = ' + Qr2.FieldByName('NUMERO').AsString );
           Pb1.StepIt;
           Qr2.Next;
           Continue;
          end;

      Sc1.Insert;
      Sc1.FieldByName('PROCESSOID').Value      := cdsProcesso.FieldByName('PROCESSOID').Value;
      Sc1.FieldByName('TIPOPROCESSOID').Value  := Qr2.FieldByName('TIPO').Value;

      if ItemId = 0 then
         ItemId                                := Qr2.FieldByName('NUMERO_ITEM').Value;

      Sc1.FieldByName('ITEMID').Value          := ItemId;
      ItemId := 0;

      if cdsListPreco.FindKey([Qr2.FieldByName('PART_NUMBER').Value]) then
         Sc1.FieldByName('PARTNUMBERID').AsString    := Qr2.FieldByName('PART_NUMBER').Value
      else
         wwrichtxtLOG.Lines.Add( 'Tabela OUTROS Partnumber não cadastrada, OUTROS ID = ' + Qr2.FieldByName('NUMERO').AsString );

      Sc1.FieldByName('GRUPOID').Value             := Qr2.FieldByName('GRUPO').Value;
      Sc1.FieldByName('DESCRICAOINGLES').Value     := Qr2.FieldByName('DESCRICAO_INGLES').Value;
      Sc1.FieldByName('DESCRICAOPORTUGUES').Value  := Qr2.FieldByName('DESCRICAO_PORTUGUES').Value;
      Sc1.FieldByName('QTDLIBERADA').Value         := Qr2.FieldByName('QUANTIDADE').Value;
      Sc1.FieldByName('VLRFOBUS').Value            := Qr2.FieldByName('FOB_PRICE').Value;
      Sc1.FieldByName('PRODUTOID').Value           := Qr2.FieldByName('CODIGO_PRODUTO').Value;
      Sc1.FieldByName('NCMID').Value               := Qr2.FieldByName('CODIGO_NCM').Value;
      Sc1.FieldByName('DATAEMBARQUE').Value        := Qr2.FieldByName('DATA_EMBARQUE').Value;
      Sc1.FieldByName('DATACHEGADA').Value         := Qr2.FieldByName('DATA_CHEGADA').Value;
      Sc1.FieldByName('INVOICEID').Value           := Qr2.FieldByName('NUM_INVOICE').Value;
      Sc1.FieldByName('TSBREFID').Value            := Qr2.FieldByName('TSB_REF').Value;
      Sc1.FieldByName('DATADEVOLUCAO').Value       := Qr2.FieldByName('DATA_DEV_TEC').Value;
      Sc1.FieldByName('DATAPREVRETORNO').Value     := Qr2.FieldByName('DATA_RET_SCHED').Value;
      Sc1.FieldByName('DATAEMBTOKIO').Value        := Qr2.FieldByName('DATA_RET_TOKYO').Value;

      if Not Qr2.FieldByName('SCRAP').IsNull then
         Sc1.FieldByName('RETORNAPECADEF').Value := 1
      else
         Sc1.FieldByName('RETORNAPECADEF').Value := 0;

      Sc1.FieldByName('VLRYEN').Value              := Qr2.FieldByName('VALOR_YEN').Value;

     if cdsDI.FindKey([Qr2.FieldByName('DIPROVISORIO').Value] ) then
         Sc1.FieldByName('DECLARACAOID').Value        := Qr2.FieldByName('DIPROVISORIO').Value;

      Sc1.FieldByName('USUARIO').Value             := Qr2.FieldByName('REQUISITANTE').Value;
      Sc1.Post;
      if Sc1.ChangeCount > 100 then
         Sc1.ApplyUpdates(-1);
      Qr2.Next;
      Pb1.StepIt;
    end;
    if Sc1.ChangeCount > 0 then
       Sc1.ApplyUpdates(-1);
    Qr2.Close;
    Sc1.Close;
    cdsTipoProcesso.Close;
    cdsProcesso.Close;
    cdsListPreco.Close;
    cdsDI.Close;
  end;
 finally
  FreeAndNil(cdsTipoProcesso);
  FreeAndNil(cdsProcesso);
  FreeAndNil(cdsListPreco);
  FreeAndNil(cdsDI);
 end;
end;

procedure TfrmMigra.ProcessoItemSerie;
var ProcessoId, sqlProcesso, sqlTipoProcesso : String;
    cdsProcesso, cdsTipoProcesso : TClientDataSet;
    ItemId, Tipo, Tipo2 : Integer;
begin
 sqlTipoProcesso := 'SELECT SIGLA, TIPOPROCESSOID FROM IT_TIPOPROCESSO ';
 ExecDDL( -1, sqlTipoProcesso, cdsTipoProcesso );
 cdsTipoProcesso.AddIndex( 'idx1','SIGLA',[ixDescending],'','',0);
 cdsTipoProcesso.IndexName := 'idx1';

 sqlProcesso := 'SELECT TIPOPROCESSOID, PROCESSOANTIGOID, PROCESSOID FROM IT_PROCESSO';
 ExecDDL( -1, sqlProcesso, cdsProcesso );
 cdsProcesso.AddIndex( 'idx1','TIPOPROCESSOID;PROCESSOANTIGOID',[ixPrimary],'','',0);
 cdsProcesso.IndexName := 'idx1';

 // Normalizar base de dados de NX
 try
  with DMMigra do
  begin
   Conecta('TECIMP_PROCESSO');

   Sc2.CommandText := 'SELECT * FROM IT_PROCESSOITEMSERIE';
   Sc2.Open;

   //===========ITEM_NX=============================================================
    if cdsTipoProcesso.FindKey(['NX']) then
       Tipo := cdsTipoProcesso.FieldByName( 'TIPOPROCESSOID' ).AsInteger
    else
       begin
        Application.MessageBox( 'Tipo de processo não existente: NX', 'Erro !!!', MB_OK + MB_ICONERROR );
        Exit;
       end;

    if cdsTipoProcesso.FindKey(['NX2']) then
       Tipo2 := cdsTipoProcesso.FieldByName( 'TIPOPROCESSOID' ).AsInteger
    else
       begin
        Application.MessageBox( 'Tipo de processo não existente: NX2', 'Erro !!!', MB_OK + MB_ICONERROR );
        Exit;
       end;


   qryItemSerie.Close;
   qryItemSerie.SQL.Clear;
   qryItemSerie.SQL.Add('SELECT * ');
   qryItemSerie.SQL.Add('FROM ');
   qryItemSerie.SQL.Add('ITEM_NX, ITEM_NX_SERIE');
   qryItemSerie.SQL.Add('WHERE ');
   qryItemSerie.SQL.Add('ITEM_NX.NUMERO_NX = ITEM_NX_SERIE.NUMERO_NX ');
   qryItemSerie.SQL.Add('AND ITEM_NX.NUMERO_ITEM = ITEM_NX_SERIE.NUMERO_ITEM ');
   qryItemSerie.Prepared := True;
   qryItemSerie.Open;
   qryItemSerie.First;
   while Not qryItemSerie.Eof do
   begin
    Sc2.Insert;
    Sc2.FieldByName('PROCESSOID').Value     := qryItemSerie.Fields[0].AsString;

    if Length( qryItemSerie.Fields[0].AsString ) > 3 then
       Sc2.FieldByName('TIPOPROCESSOID').Value := Tipo2
    else
       Sc2.FieldByName('TIPOPROCESSOID').Value := Tipo;

    Sc2.FieldByName('ITEMID').Value         := qryItemSerie.FieldByName('NUMERO_ITEM').Value;
    if ( qryItemSerie.FieldByName('SERIEID').IsNull ) or
       ( qryItemSerie.FieldByName('SERIEID').AsString = ' ' ) or
       ( qryItemSerie.FieldByName('SERIEID').AsString = '' )  then
       begin
        Sc2.Cancel;
        qryItemSerie.Next;
        Continue;
       end;
    Sc2.FieldByName('SERIEID').Value        := qryItemSerie.FieldByName('SERIEID').Value;
    Sc2.FieldByName('COMPOSICAO').Value     := qryItemSerie.FieldByName('COMPOSICAO').Value;
    Sc2.Post;
    Sc2.ApplyUpdates(-1);
    qryItemSerie.Next;
   end;
   qryItemSerie.Close;

   //===========ITEM_PZA=============================================================
   if cdsTipoProcesso.FindKey(['PZA']) then
      Tipo := cdsTipoProcesso.FieldByName( 'TIPOPROCESSOID' ).AsInteger
   else
      begin
       Application.MessageBox( 'Tipo de processo não existente: PZA', 'Erro !!!', MB_OK + MB_ICONERROR );
       Exit;
      end;

   qryItemSerie.Close;
   qryItemSerie.SQL.Clear;
   qryItemSerie.SQL.Add('SELECT * ');
   qryItemSerie.SQL.Add('FROM ');
   qryItemSerie.SQL.Add('ITEM_PZA, ITEM_PZA_SERIE');
   qryItemSerie.SQL.Add('WHERE ');
   qryItemSerie.SQL.Add('ITEM_PZA.NUMERO_PZA = ITEM_PZA_SERIE.NUMERO_PZA ');
   qryItemSerie.SQL.Add('AND ITEM_PZA.NUMERO_ITEM = ITEM_PZA_SERIE.NUMERO_ITEM ');
   qryItemSerie.Prepared := True;
   qryItemSerie.Open;
   qryItemSerie.First;
   while Not qryItemSerie.Eof do
   begin
    Sc2.Insert;
    Sc2.FieldByName('PROCESSOID').Value     := qryItemSerie.FieldByName('NUMERO_PZA').AsString;
    Sc2.FieldByName('TIPOPROCESSOID').Value := Tipo;

    Sc2.FieldByName('ITEMID').Value         := qryItemSerie.FieldByName('NUMERO_ITEM').Value;
    if ( qryItemSerie.FieldByName('SERIEID').IsNull ) or
       ( qryItemSerie.FieldByName('SERIEID').AsString = ' ' ) or
       ( qryItemSerie.FieldByName('SERIEID').AsString = '' )  then
       begin
        Sc2.Cancel;
        qryItemSerie.Next;
        Continue;
       end;
    Sc2.FieldByName('SERIEID').Value        := qryItemSerie.FieldByName('SERIEID').Value;
    Sc2.FieldByName('COMPOSICAO').Value     := qryItemSerie.FieldByName('COMPOSICAO').Value;
    Sc2.Post;
    Sc2.ApplyUpdates(-1);
    qryItemSerie.Next;
   end;
  qryItemSerie.Close;

  //===========ITEM_TMBJ=============================================================
  if cdsTipoProcesso.FindKey(['TMBJ']) then
     Tipo := cdsTipoProcesso.FieldByName( 'TIPOPROCESSOID' ).AsInteger
  else
     begin
      Application.MessageBox( 'Tipo de processo não existente: PZA', 'Erro !!!', MB_OK + MB_ICONERROR );
      Exit;
     end;

   qryItemSerie.Close;
   qryItemSerie.SQL.Clear;
   qryItemSerie.SQL.Add('SELECT * ');
   qryItemSerie.SQL.Add('FROM ');
   qryItemSerie.SQL.Add('ITEM_TMBJ, ITEM_TMBJ_SERIE');
   qryItemSerie.SQL.Add('WHERE ');
   qryItemSerie.SQL.Add('ITEM_TMBJ.NUMERO_TMBJ = ITEM_TMBJ_SERIE.NUMERO_TMBJ ');
   qryItemSerie.SQL.Add('AND ITEM_TMBJ.NUMERO_ITEM = ITEM_TMBJ_SERIE.NUMERO_ITEM ');
   qryItemSerie.Prepared := True;
   qryItemSerie.Open;
   qryItemSerie.First;
   while Not qryItemSerie.Eof do
   begin
    Sc2.Insert;
    Sc2.FieldByName('PROCESSOID').Value      := TransfNum( qryItemSerie.FieldByName('NUMERO_TMBJ').Value );
    Sc2.FieldByName('TIPOPROCESSOID').Value := Tipo;
    Sc2.FieldByName('ITEMID').Value         := qryItemSerie.FieldByName('NUMERO_ITEM').Value;
    if ( qryItemSerie.FieldByName('SERIEID').IsNull ) or
       ( qryItemSerie.FieldByName('SERIEID').AsString = ' ' ) or
       ( qryItemSerie.FieldByName('SERIEID').AsString = '' )  then
       begin
        Sc2.Cancel;
        qryItemSerie.Next;
        Continue;
       end;
    Sc2.FieldByName('SERIEID').Value        := qryItemSerie.FieldByName('SERIEID').Value;
    Sc2.FieldByName('COMPOSICAO').Value     := qryItemSerie.FieldByName('COMPOSICAO').Value;
    Sc2.Post;
    Sc2.ApplyUpdates(-1);
    qryItemSerie.Next;
   end;
  qryItemSerie.Close;

  //===========ITEM_OUTROS=============================================================
   qryItemSerie.Close;
   qryItemSerie.SQL.Clear;
   qryItemSerie.SQL.Add('SELECT * ');
   qryItemSerie.SQL.Add('FROM ');
   qryItemSerie.SQL.Add('ITEM_OUTROS, ITEM_OUTROS_SERIE');
   qryItemSerie.SQL.Add('WHERE ');
   qryItemSerie.SQL.Add('ITEM_OUTROS.NUMERO = ITEM_OUTROS_SERIE.NUMERO ');
   qryItemSerie.SQL.Add('AND ITEM_OUTROS.NUMERO_ITEM = ITEM_OUTROS_SERIE.NUMERO_ITEM ');
   qryItemSerie.SQL.Add('AND ITEM_OUTROS.TIPO = ITEM_OUTROS_SERIE.TIPO ');
   qryItemSerie.Prepared := True;
   qryItemSerie.Open;
   qryItemSerie.First;
   ItemId := 0;
   while Not qryItemSerie.Eof do
   begin

    ProcessoId := qryItemSerie.FieldByName('NUMERO').AsString;
    if ( copy(ProcessoId,1,3) = 'JPR' ) and ( copy(ProcessoId,4,1) <> ' ' ) then
       begin
        ProcessoId := 'JPR 2004';
        ItemId     := qryItemSerie.FieldByName('NUMERO_ITEM').Value+1;
       end;

     if not cdsProcesso.FindKey([qryItemSerie.FieldByName('TIPO').AsString, ProcessoId]) then
        begin
         wwrichtxtLOG.Lines.Add( 'Tabela OUTROS Processo não cadastrado, OUTROS ID = ' + qryItemSerie.FieldByName('NUMERO').AsString );
         Pb1.StepIt;
         Qr2.Next;
         Continue;
        end;

    Sc2.Insert;
    Sc2.FieldByName('PROCESSOID').Value     := cdsProcesso.FieldByName('PROCESSOID').Value;
    Sc2.FieldByName('TIPOPROCESSOID').Value := qryItemSerie.FieldByName('TIPO').Value;

    if ItemId = 0 then
       ItemId                                := qryItemSerie.FieldByName('NUMERO_ITEM').Value;

    Sc2.FieldByName('ITEMID').Value          := ItemId;
    ItemId := 0;

    if ( qryItemSerie.FieldByName('SERIEID').IsNull ) or
       ( qryItemSerie.FieldByName('SERIEID').AsString = ' ' ) or
       ( qryItemSerie.FieldByName('SERIEID').AsString = '' )  then
       begin
        Sc2.Cancel;
        qryItemSerie.Next;
        Continue;
       end;
    Sc2.FieldByName('SERIEID').Value        := qryItemSerie.FieldByName('SERIEID').Value;
    Sc2.FieldByName('COMPOSICAO').Value     := qryItemSerie.FieldByName('COMPOSICAO').Value;
    Sc2.Post;
    Sc2.ApplyUpdates(-1);
    qryItemSerie.Next;
   end;
  Sc2.Close;
  qryItemSerie.Close;
  cdsTipoProcesso.Close;
  cdsProcesso.Close;
 end;
 finally
  FreeAndNil( cdsTipoProcesso );
  FreeAndNil( cdsProcesso );
 end;
end;

procedure TfrmMigra.Declaracao;
var sqlEntidade, sqlDespachante : String;
    cdsEntidade, cdsDespachante : TClientDataSet;
begin
 sqlEntidade := 'SELECT ENTIDADEID, CPFCNPJ FROM EF_ENTIDADE';
 ExecDDL( -1, sqlEntidade, cdsEntidade );
 cdsEntidade.AddIndex( 'idx1','ENTIDADEID',[ixPrimary],'','',0);
 cdsEntidade.IndexName := 'idx1';

 sqlDespachante := 'SELECT DESPACHANTEID FROM IT_DESPACHANTE';
 ExecDDL( -1, sqlDespachante, cdsDespachante );
 cdsDespachante.AddIndex( 'idx1','DESPACHANTEID',[ixPrimary],'','',0);
 cdsDespachante.IndexName := 'idx1';

  // Desabilitar conta contábil para importação
  // A Tabela de ContaContabil deve ser normalizada
 try
  with DMMigra do
  begin
   ExecQry( 'ALTER TABLE IT_DECLARACAO DISABLE CONSTRAINT Fk_IT_Declar_ContaContabilId' );
   Conecta('TECIMP_DI');
   Tb1.TableName   := 'DECLARACAO';
   Sc1.CommandText := 'SELECT * FROM IT_DECLARACAO';
   Tb1.Open;
   Sc1.Open;
   Tb1.First;
   Pb1.Max := Tb1.RecordCount;
   while Not Tb1.Eof do
   begin
    Sc1.Insert;
    Sc1.FieldByName('DECLARACAOID').Value    := Tb1.FieldByName('DIPROVISORIO').Value;
    Sc1.FieldByName('EMPRESAID').Value       := Tb1.FieldByName('EMPRESA').Value;
    Sc1.FieldByName('DIID').Value            := Tb1.FieldByName('DINUME').Value;
    Sc1.FieldByName('DATAREGISTRO').Value    := Tb1.FieldByName('DIEMIS').Value;
    Sc1.FieldByName('REFERENCIA').Value      := Tb1.FieldByName('DIREFE').Value;
    Sc1.FieldByName('DATALIBERACAO').Value   := Tb1.FieldByName('DILLIBE').Value;
    Sc1.FieldByName('TIPOMOEDAFRETE').Value  := Tb1.FieldByName('TAXA_FRETE').Value;

    if not Tb1.FieldByName('CODIGO_IMPORTADOR').IsNull then
       begin
        if cdsEntidade.FindKey([Tb1.FieldByName('CODIGO_IMPORTADOR').Value]) then
           Sc1.FieldByName('IMPORTADORID').Value := Tb1.FieldByName('CODIGO_IMPORTADOR').Value
        else
           begin
            wwrichtxtLOG.Lines.Add( 'Tabela Declaracao Importador não cadastrado, DeclaracaoID = ' + Tb1.FieldByName('DIPROVISORIO').AsString );
            Tb1.Next;
            Pb1.StepIt;
            SC1.Cancel;
            Continue
           end;
        end;

    // Este campo deve ser feito o acerto pois o mesmo pega o dados de mercadoria, pois o fornecedor só será por declaracao e não mercadoria.
    // Sc1.FieldByName('FORNECEDORID').Value      := 20000 + Tb1.FieldByName('CODIGO_FORNECEDOR').Value;
    Sc1.FieldByName('CONTACONTABILID').Value   := Tb1.FieldByName('CONTA').Value;
    Sc1.FieldByName('CENTROCUSTOID').Value     := Tb1.FieldByName('CENTRO_CUSTO').Value;
    Sc1.FieldByName('NUMCONTRATOCAMBIO').Value := Tb1.FieldByName('NR_CONTR_CAMBIO').Value;
    Sc1.FieldByName('DATACONTRATO').Value      := Tb1.FieldByName('DT_CONTRATO').Value;

    // Checks
    if Not Tb1.FieldByName('ICMSSN').IsNull then
    begin
      if Tb1.FieldByName('ICMSSN').Value then Sc1.FieldByName('CREDITARICMS').Value := 1
      else Sc1.FieldByName('CREDITARICMS').Value := 0;
    end
    else Sc1.FieldByName('CREDITARICMS').Value := 0;

    if Not Tb1.FieldByName('AGRFOB').IsNull then
    begin
      if Tb1.FieldByName('AGRFOB').Value then Sc1.FieldByName('AGREGARVLRFOB').Value := 1
      else Sc1.FieldByName('AGREGARVLRFOB').Value := 0;
    end
    else Sc1.FieldByName('AGREGARVLRFOB').Value := 0;

    if Not Tb1.FieldByName('ICMRES').IsNull then
    begin
      if Tb1.FieldByName('ICMRES').Value then Sc1.FieldByName('RESTITUIRICMS').Value := 1
      else Sc1.FieldByName('RESTITUIRICMS').Value := 0;
    end
    else Sc1.FieldByName('RESTITUIRICMS').Value := 0;

    if Not Tb1.FieldByName('AGREGA_FRETE').IsNull then
    begin
      if Tb1.FieldByName('AGREGA_FRETE').Value then Sc1.FieldByName('AGREGARFRETE').Value := 1
      else Sc1.FieldByName('AGREGARFRETE').Value := 0;
    end
    else Sc1.FieldByName('AGREGARFRETE').Value := 0;

    if Not Tb1.FieldByName('FOB_ANT').IsNull then
    begin
      if Tb1.FieldByName('FOB_ANT').Value then Sc1.FieldByName('FOBANTECIPADO').Value := 1
      else Sc1.FieldByName('FOBANTECIPADO').Value := 0;
    end
    else Sc1.FieldByName('FOBANTECIPADO').Value := 0;

    if Not Tb1.FieldByName('ADM_TEMP').IsNull then
    begin
      if Tb1.FieldByName('ADM_TEMP').Value then Sc1.FieldByName('ADMISSAOTEMP').Value := 1
      else Sc1.FieldByName('ADMISSAOTEMP').Value := 0;
    end
    else Sc1.FieldByName('ADMISSAOTEMP').Value := 0;

    if Not Tb1.FieldByName('LIBERADO').IsNull then
    begin
      if Tb1.FieldByName('LIBERADO').Value then Sc1.FieldByName('LIBERARESTOQUE').Value := 1
      else Sc1.FieldByName('LIBERARESTOQUE').Value := 0;
    end
    else Sc1.FieldByName('LIBERARESTOQUE').Value := 0;

    if Not Tb1.FieldByName('FRETEPAGO').IsNull then
    begin
      if Tb1.FieldByName('FRETEPAGO').Value then Sc1.FieldByName('FRETEPAGO').Value := 1
      else Sc1.FieldByName('FRETEPAGO').Value := 0;
    end
    else Sc1.FieldByName('FRETEPAGO').Value := 0;

    //AtivoFixo - Se CFOP 3.91 valor será True
    if Tb1.FieldByName('CFOP').Value = '391' then
       Sc1.FieldByName('ATIVOFIXO').Value := 1
    else
       Sc1.FieldByName('ATIVOFIXO').Value := 0;

    if Not Tb1.FieldByName('CODDESP').IsNull then
       begin
        if cdsDespachante.FindKey([Tb1.FieldByName('CODDESP').Value]) then
           Sc1.FieldByName('DESPACHANTEID').Value := Tb1.FieldByName('CODDESP').Value
        else
           wwrichtxtLOG.Lines.Add( 'Tabela Declaracao Despachante não cadastrado, DeclaracaoID = ' + Tb1.FieldByName('DIPROVISORIO').AsString );
       end;

    Sc1.FieldByName('NUMDEMONSDESPESA').Value     := Tb1.FieldByName('DSPNUM').Value;
    Sc1.FieldByName('VLRDESPESAII').Value         := Tb1.FieldByName('DSPIIM').Value;
    Sc1.FieldByName('VLRTOTALICMS').Value         := Tb1.FieldByName('DSPICM').Value;
    Sc1.FieldByName('VLRDESPESADESEMB').Value     := Tb1.FieldByName('DSPDES').Value;
    Sc1.FieldByName('VLRTOTALDESPDESP').Value     := Tb1.FieldByName('DSPTOT').Value;
    Sc1.FieldByName('NFEID').Value                := Tb1.FieldByName('NFENUM').Value;
    Sc1.FieldByName('DATAEMISSAONFEID').Value     := Tb1.FieldByName('DT_EMISSAO_NF').Value;
    Sc1.FieldByName('DATAENTRADANFEID').Value     := Tb1.FieldByName('NFEENT').Value;
    Sc1.FieldByName('NATUREZAOPID').Value         := Tb1.FieldByName('CD_OPERACAO').Value;
    Sc1.FieldByName('VLRTOTALCIF').Value          := Tb1.FieldByName('TOTAL_CIF').Value;
    Sc1.FieldByName('VLRTOTALPESO').Value         := Tb1.FieldByName('TOTAL_PESO').Value;
    Sc1.FieldByName('VLRTOTALFOBUS').Value        := Tb1.FieldByName('TOTAL_FOB_US').Value;
    Sc1.FieldByName('VLRTOTALFOB').Value          := Tb1.FieldByName('TOTAL_FOB_REAL').Value;
    Sc1.FieldByName('VLRFRETE').Value             := Tb1.FieldByName('VALOR_FRETE').Value;
    Sc1.FieldByName('VLRTOTALFRETELOCAL').Value   := Tb1.FieldByName('VALOR_FRETE_LOCAL').Value;
    Sc1.FieldByName('VLRSEGUROINTERNAC').Value    := Tb1.FieldByName('SEGURO_INTERNAC').Value;
    Sc1.FieldByName('TAXAFOBANTECIPADO').Value    := Tb1.FieldByName('TX_FOB_ANT').Value;
    Sc1.FieldByName('VLRTOTALCOFINS').Value       := Tb1.FieldByName('TOTAL_COFINS').Value;
    Sc1.FieldByName('VLRTOTALPIS').Value          := Tb1.FieldByName('TOTAL_PIS').Value;
    Sc1.FieldByName('TAXASISCOMEX').Value         := Tb1.FieldByName('TX_SISCOMEX').Value;
    Sc1.FieldByName('VLRTOTALIPI').Value          := Tb1.FieldByName('DSPIPI').Value;

    if Not Tb1.FieldByName('OBS').IsNull then
       Sc1.FieldByName('OBSPEDIDO').Value         := Tb1.FieldByName('OBS').Value;

    Sc1.FieldByName('VLRTOTALSEGUROTRANSP').Value := Tb1.FieldByName('SEGURO').Value;
    Sc1.FieldByName('USUARIO').Value              := Tb1.FieldByName('USUARIO').Value;
    Sc1.Post;
    if Sc1.ChangeCount > 100 then
       Sc1.ApplyUpdates(-1);
    Tb1.Next;
    Pb1.StepIt;
  end;
  if Sc1.ChangeCount > 0 then
     Sc1.ApplyUpdates(-1);
  Tb1.Close;
  Sc1.Close;
  end;
 finally
  FreeAndNil( cdsEntidade );
  FreeAndNil( cdsDespachante );
 end;
end;

procedure TfrmMigra.Adicao;
var sqlDI : String;
    cdsDI : TClientDataSet;
begin
 sqlDI := 'SELECT DECLARACAOID FROM IT_DECLARACAO';
 ExecDDL( -1, sqlDI, cdsDI );
 cdsDI.AddIndex( 'idx1','DECLARACAOID',[ixPrimary],'','',0);
 cdsDI.IndexName := 'idx1';

  // Desabilitar conta contábil para importação
  // A Tabela de ContaContabil deve ser normalizada
 try
  with DMMigra do begin
    Conecta('TECIMP_DI');
    Tb1.TableName   := 'ADICAO';
    Sc1.CommandText := 'SELECT * FROM IT_ADICAO';
    Tb1.Open;
    Sc1.Open;
    Tb1.First;
    Pb1.Max := Tb1.RecordCount;
    while Not Tb1.Eof do
    begin
      if not cdsDI.FindKey([Tb1.FieldByName('DIPROVISORIO').Value]) then
         begin
          Sc1.Cancel;
          Tb1.Next;
          Pb1.StepIt;
          Continue;
        end;

      Sc1.Insert;
      Sc1.FieldByName('DECLARACAOID').Value   := Tb1.FieldByName('DIPROVISORIO').Value;
      Sc1.FieldByName('ADICAOID').Value       := Tb1.FieldByName('ADINUM').Value;
      Sc1.FieldByName('NCMID').Value          := Tb1.FieldByName('CODIGO_NCM').Value;
      Sc1.FieldByName('PESOLIQUIDO').AsString := Tb1.FieldByName('PESO_LIQUIDO').AsString;
      Sc1.FieldByName('VLRFOBUS').Value       := Tb1.FieldByName('VLRFOBUS').Value;
      Sc1.FieldByName('VLRFOB').Value         := Tb1.FieldByName('VLRFOB').Value;
      Sc1.FieldByName('VLRCIF').Value         := Tb1.FieldByName('VLRCIF').Value;
      Sc1.FieldByName('ALIQUOTAII').Value     := Tb1.FieldByName('ALIIM').Value;
      Sc1.FieldByName('VLRII').Value          := ( Tb1.FieldByName('VLRCIF').Value * Tb1.FieldByName('ALIIM').Value ) / 100;
      Sc1.FieldByName('ALIQUOTAIPI').Value    := Tb1.FieldByName('ALIIPI').Value;
      Sc1.FieldByName('VLRIPI').Value         := ( Tb1.FieldByName('VLRCIF').Value + Sc1.FieldByName('VLRII').Value ) * Tb1.FieldByName('ALIIPI').Value / 100;
      Sc1.Post;
      if Sc1.ChangeCount >= 100 then
         Sc1.ApplyUpdates(-1);
      Tb1.Next;
      Pb1.StepIt;
    end;
    if Sc1.ChangeCount > 0 then
       Sc1.ApplyUpdates(-1);
    Tb1.Close;
    Sc1.Close;
  end;
 finally
  FreeAndNil( cdsDI );
 end;
end;

procedure TfrmMigra.Mercadoria;
var sqlDI, sqlProcesso, sqlTipoProcesso : String;
    cdsDI, cdsProcesso, cdsTipoProcesso : TClientDataSet;
    Tipo, X : Integer;
    TipoProcesso, Ncm : String;
begin
 sqlDI := 'SELECT DECLARACAOID, EMPRESAID FROM IT_DECLARACAO';
 ExecDDL( -1, sqlDI, cdsDI );
 cdsDI.AddIndex( 'idx1','DECLARACAOID',[ixPrimary],'','',0);
 cdsDI.IndexName := 'idx1';

 sqlProcesso := 'SELECT TIPOPROCESSOID, PROCESSOANTIGOID, PROCESSOID FROM IT_PROCESSO';
 ExecDDL( -1, sqlProcesso, cdsProcesso );
 cdsProcesso.AddIndex( 'idx1','TIPOPROCESSOID;PROCESSOANTIGOID',[ixPrimary],'','',0);
 cdsProcesso.IndexName := 'idx1';

 sqlTipoProcesso := 'SELECT SIGLA, TIPOPROCESSOID FROM IT_TIPOPROCESSO ';
 ExecDDL( -1, sqlTipoProcesso, cdsTipoProcesso );
 cdsTipoProcesso.AddIndex( 'idx1','SIGLA',[ixDescending],'','',0);
 cdsTipoProcesso.IndexName := 'idx1';
 x := 0;
 try
  with DMMigra do begin
    Conecta('TECIMP_DI');
    Tb1.TableName     := 'MERCADORIAS';
    Sc1.CommandText   := 'SELECT * FROM IT_MERCADORIA';
    Tb1.Open;
    Sc1.Open;
    Tb1.First;
    Pb1.Max := Tb1.RecordCount;
    while Not Tb1.Eof do
    begin
      if not cdsDI.FindKey([Tb1.FieldByName('DIPROVISORIO').Value]) then
         begin
          Sc1.Cancel;
          Tb1.Next;
          Pb1.StepIt;
          Continue;
        end;

      Tipo := 0;
      Inc(x );
      Sc1.Insert;
      Sc1.FieldByName('DECLARACAOID').Value := Tb1.FieldByName('DIPROVISORIO').Value;
      Sc1.FieldByName('MERCADORIAID').Value := x;

      // Processo
      if Tb1.Fields[2].AsString = 'NX' then
         begin
           if Length( Tb1.FieldByName('NUMERO_PROCESSO').AsString ) > 3 then
              TipoProcesso := 'NX2'
           else
              TipoProcesso := 'NX';
         end
      else if ( copy(Tb1.FieldByName('NUMERO_PROCESSO').AsString,1,3) = 'JPR' ) or
              ( copy(Tb1.FieldByName('NUMERO_PROCESSO').AsString,1,5) = '2004' ) then
               TipoProcesso := 'JPR 2004'
      else
         TipoProcesso := Tb1.FieldByName('TIPO').AsString;

      if cdsTipoProcesso.FindKey([TipoProcesso]) then
         Tipo := cdsTipoProcesso.FieldByName( 'TIPOPROCESSOID' ).AsInteger;

      if cdsProcesso.FindKey([Tipo, Tb1.FieldByName('NUMERO_PROCESSO').Value  ]) then
         begin
          Sc1.FieldByName('PROCESSOID').Value      := cdsProcesso.FieldByName('PROCESSOID').Value;
          Sc1.FieldByName('TIPOPROCESSOID').Value  := cdsTipoProcesso.FieldByName('TIPOPROCESSOID').Value;
         end;

      Sc1.FieldByName('ITEMPROCESSOID').Value := Tb1.FieldByName('NUMERO_ITEM').AsInteger;

      Ncm := '';
      if not Tb1.FieldByName('NBMTAB').IsNull then
         Ncm := TransfNum( Tb1.FieldByName('NBMTAB').Value );
      if Ncm <> '' then
         SC1.FieldByName('NCMID').Value     := StrToInt( Ncm );

      if Not Tb1.FieldByName('LIBERADO').IsNull then
      begin
        if Tb1.FieldByName('LIBERADO').Value then Sc1.FieldByName('LIBERAESTOQUE').Value := 1
        else Sc1.FieldByName('LIBERAESTOQUE').Value := 0;
      end
      else Sc1.FieldByName('LIBERAESTOQUE').Value := 0;

      if not cdsDI.FieldByName('EMPRESAID').IsNull then
         Sc1.FieldByName('EMPRESAID').Value   := cdsDI.FieldByName('EMPRESAID').Value;

      Sc1.FieldByName('PRODUTOID').Value   := Tb1.FieldByName('CODIGO').Value;
      Sc1.FieldByName('QUANTIDADE').Value  := Tb1.FieldByName('QUANTI').Value;

      if Not Tb1.FieldByName('IMOBIL').IsNull then
      begin
        if Tb1.FieldByName('IMOBIL').AsBoolean then
            Sc1.FieldByName('IMOBILIZADO').Value := 1
        else
            Sc1.FieldByName('IMOBILIZADO').Value := 0;
      end
      else Sc1.FieldByName('IMOBILIZADO').Value := 0;

      if Not Tb1.FieldByName('MATERI').IsNull then
         Sc1.FieldByName('TIPOMATERIAL').Value := Tb1.FieldByName('MATERI').AsString;

      Sc1.FieldByName('PESOLIQUIDO').AsFloat := Tb1.FieldByName('PESO').AsFloat;

      if ( Not Tb1.FieldByName('PESO').IsNull ) and ( Not Tb1.FieldByName('QUANTI').IsNull ) then
         Sc1.FieldByName('PESOBRUTO').AsFloat := Tb1.FieldByName('PESO').Value * Tb1.FieldByName('QUANTI').Value
      else
         Sc1.FieldByName('PESOBRUTO').Value := 0;

      Sc1.FieldByName('VLRFOBUS').Value              := Tb1.FieldByName('VLRFOBUS').AsFloat;
      Sc1.FieldByName('VLRFOB').Value                := Tb1.FieldByName('VLRFOB').AsFloat;
      Sc1.FieldByName('VLRCUSTOMOVIMENTO').Value     := Tb1.FieldByName('CUSMOV').AsFloat;
      Sc1.FieldByName('VLRCUSTOTRANSFERENCIA').Value := Tb1.FieldByName('CUSTO_PTRANSF').AsFloat;
      Sc1.FieldByName('VLRBASEIPI').Value            := Tb1.FieldByName('BASIPI').AsFloat;
      Sc1.FieldByName('ALIQUOTAIPI').Value           := Tb1.FieldByName('ALIQUOTA_IPI').AsFloat;
      Sc1.FieldByName('VLRIPI').Value                := Tb1.FieldByName('VLRIPI').AsFloat;
      Sc1.FieldByName('VLRBASEICMS').Value           := Tb1.FieldByName('BASICM').AsFloat;
      Sc1.FieldByName('VLRICMS').Value               := Tb1.FieldByName('VLRICM').AsFloat;
      Sc1.FieldByName('ALIQUOTAII').Value            := Tb1.FieldByName('ALIQUOTA_II').AsFloat;
      Sc1.FieldByName('VLRFRETE').Value              := Tb1.FieldByName('FRETE').AsFloat;
      Sc1.FieldByName('VLRFRETEUS').Value            := Tb1.FieldByName('FRETEUS').AsFloat;
      Sc1.FieldByName('VLRPIS').Value                := Tb1.FieldByName('VALOR_PIS').AsFloat;
      Sc1.FieldByName('VLRCOFINS').Value             := Tb1.FieldByName('VALOR_COFINS').AsFloat;
      Sc1.Post;
      if Sc1.ChangeCount >= 100 then
         Sc1.ApplyUpdates(-1);
      Tb1.Next;
      Pb1.StepIt;
    end;
    if Sc1.ChangeCount > 0 then
       Sc1.ApplyUpdates(-1);

    Tb1.Close;
    Sc1.Close;
    cdsDI.Close;
    cdsProcesso.Close;
    cdsTipoProcesso.Close;
  end;
 finally
  FreeAndNil( cdsDI );
  FreeAndNil( cdsProcesso );
  FreeAndNil( cdsTipoProcesso );
 end;
end;

procedure TfrmMigra.Banco;
var Cep : String;
begin
  with DMMigra do begin
    Tb1.TableName   := 'BANCO';
    Sc1.CommandText := 'SELECT * FROM EF_BANCO';
    Tb1.Open;
    Sc1.Open;
    Tb1.First;
    tbUnidadeFED.Open;
    Pb1.Max := Tb1.RecordCount;
    while Not Tb1.Eof do
    begin
      Sc1.Insert;
      Sc1.FieldByName('BANCOID').Value  := Tb1.FieldByName('CODIGO').Value;
      Sc1.FieldByName('NOME').Value     := Tb1.FieldByName('NOME').Value;
      Sc1.FieldByName('NUMBANCO').Value := Tb1.FieldByName('NUMERO_BANCO').Value;
      Sc1.FieldByName('AGENCIA').Value  := Tb1.FieldByName('NUMERO_AGENCIA').Value;
      Sc1.FieldByName('CONTA').Value    := Tb1.FieldByName('NUMERO_CONTA').Value;

      Cep := Copy( TransfNum( Tb1.FieldByName('CEP').AsString ), 1, 8 );
      if Cep <> '' then
         SC1.FieldByName('CEPID').Value     := StrToInt( Cep );

      Sc1.FieldByName('ENDERECO').Value         := Tb1.FieldByName('ENDERECO').Value;
      Sc1.FieldByName('CIDADE').Value           := Tb1.FieldByName('CIDADE').Value;
      Sc1.FieldByName('SIGLAUFID').Value        := Estado( Tb1.FieldByName('CODIGO_UF').AsInteger );
      Sc1.FieldByName('TELEFONE').Value         := Tb1.FieldByName('TELEFONE').AsString;
      Sc1.FieldByName('FAX').Value              := Tb1.FieldByName('FAX').Value;
      Sc1.FieldByName('CONTATO').Value          := Tb1.FieldByName('CONTATO').Value;
      Sc1.FieldByName('CONTACONTABILID').Value  := Tb1.FieldByName('CONTA_CTB').Value;
      Sc1.Post;
      if Sc1.ChangeCount >= 50 then
         Sc1.ApplyUpdates(-1);
      Tb1.Next;
      Pb1.StepIt;
    end;
    if Sc1.ChangeCount > 0 then
       Sc1.ApplyUpdates(-1);
    Tb1.Close;
    Sc1.Close;
    tbUnidadeFED.Close;
  end;
end;

procedure TfrmMigra.CondPagto;
begin
  with DMMigra do begin
    Tb1.TableName   := 'COND_PAGTO';
    Sc1.CommandText := 'SELECT * FROM EF_CONDPAGTO';
    Tb1.Open;
    Sc1.Open;
    Tb1.First;
    Pb1.Max := Tb1.RecordCount;
    while Not Tb1.Eof do
    begin
      Sc1.Insert;
      Sc1.FieldByName('CONDPAGTOID').Value   := Tb1.FieldByName('CODIGO_CONDICAO').Value;
      Sc1.FieldByName('DESCRICAO').Value     := Tb1.FieldByName('DESCRICAO').Value;
      Sc1.FieldByName('NUMPARCELA').Value    := Tb1.FieldByName('NUMERO_PARCELAS').Value;
      Sc1.FieldByName('DIASPRIMEIRA').Value  := Tb1.FieldByName('DIAS_PRIMEIRA').Value;
      Sc1.FieldByName('DIASENTREPARC').Value := Tb1.FieldByName('DIAS_ENTRE_PARC').Value;
      Sc1.FieldByName('MULTA').Value         := Tb1.FieldByName('MULTA').Value;
      Sc1.FieldByName('DIASJUROS').Value      := Tb1.FieldByName('DIAS_JUROS').Value;
      Sc1.FieldByName('JUROS').Value         := Tb1.FieldByName('JUROS').Value;
      Sc1.FieldByName('DESCONTO').Value      := Tb1.FieldByName('DESCONTO').Value;

      if Not Tb1.FieldByName('EMITE_DUPLICATAS').IsNull then
      begin
        if Tb1.FieldByName('EMITE_DUPLICATAS').Value then Sc1.FieldByName('EMITEDUPLICATA').Value := 1
        else Sc1.FieldByName('EMITEDUPLICATA').Value := 0;
      end
      else Sc1.FieldByName('EMITEDUPLICATA').Value   := 0;

      if Not Tb1.FieldByName('DIA_UNICO').IsNull then
      begin
        if Tb1.FieldByName('DIA_UNICO').Value then Sc1.FieldByName('DIAUNICO').Value := 1
        else Sc1.FieldByName('DIAUNICO').Value := 0;
      end
      else Sc1.FieldByName('DIAUNICO').Value   := 0;

      if Not Tb1.FieldByName('IMPRIME_DESC').IsNull then
      begin
        if Tb1.FieldByName('IMPRIME_DESC').Value then Sc1.FieldByName('IMPRIMEDESCRICAO').Value := 1
        else Sc1.FieldByName('IMPRIMEDESCRICAO').Value := 0;
      end
      else Sc1.FieldByName('IMPRIMEDESCRICAO').Value   := 0;

      Sc1.FieldByName('DESCRICAOPAGTO').Value := Tb1.FieldByName('DESC_PAGTO').Value;

      if Not Tb1.FieldByName('DATA_IGUAL_EMIS').IsNull then
      begin
        if Tb1.FieldByName('DATA_IGUAL_EMIS').Value then Sc1.FieldByName('DATAIGUALEMISSAO').Value := 1
        else Sc1.FieldByName('DATAIGUALEMISSAO').Value := 0;
      end
      else Sc1.FieldByName('DATAIGUALEMISSAO').Value   := 0;

      if Not Tb1.FieldByName('IMPRIMEDUPLIC1PARCELA').IsNull then
      begin
        if Tb1.FieldByName('IMPRIMEDUPLIC1PARCELA').Value then Sc1.FieldByName('IMPRIMEDUPLIC1PARCELA').Value := 1
        else Sc1.FieldByName('IMPRIMEDUPLIC1PARCELA').Value := 0;
      end
      else Sc1.FieldByName('IMPRIMEDUPLIC1PARCELA').Value   := 0;

      Sc1.Post;
      if Sc1.ChangeCount >= 100 then
         Sc1.ApplyUpdates(-1);
      Tb1.Next;
      Pb1.StepIt;
    end;
    if Sc1.ChangeCount > 0 then
       Sc1.ApplyUpdates(-1);
    Tb1.Close;
    Sc1.Close;
  end;
end;

procedure TfrmMigra.ContaContabil;
var Conta : String;
begin
  with DMMigra do begin
    Tb1.TableName   := 'CONTA_CTB';
    Sc1.CommandText := 'SELECT * FROM EF_CONTACONTABIL';
    Tb1.Open;
    Sc1.Open;
    Sc1.AddIndex( 'idx1','CONTACONTABILID',[ixPrimary],'','',0);
    Sc1.IndexName := 'idx1';

    Tb1.First;
    Pb1.Max := Tb1.RecordCount;
    while Not Tb1.Eof do
    begin
      Conta :=  SubstituiString( Tb1.FieldByName('CONTA_CTB').asString,'.','');
      if SC1.FindKey([Conta]) then
         Sc1.Edit
      else
         Sc1.Insert;

      Sc1.FieldByName('CONTACONTABILID').Value := Conta;
      Sc1.FieldByName('DESCRICAO').Value       := Tb1.FieldByName('DESCRICAO').Value;
      Sc1.Post;
      Tb1.Next;
      Pb1.StepIt;
    end;
    if Sc1.ChangeCount > 0 then
       Sc1.ApplyUpdates(-1);
    Tb1.Close;
    Sc1.DeleteIndex( 'idx1' );
    Sc1.Close;
  end;
end;

procedure TfrmMigra.Departamento;
begin
  with DMMigra do begin
    Tb1.TableName   := 'DEPARTAMENTO';
    Sc1.CommandText := 'SELECT * FROM EF_DEPARTAMENTO';
    Tb1.Open;
    Sc1.Open;
    Tb1.First;
    Pb1.Max := Tb1.RecordCount;
    while Not Tb1.Eof do
    begin
      Sc1.Insert;
      Sc1.FieldByName('DEPARTAMENTOID').Value  := Tb1.FieldByName('CODIGO').Value;
      Sc1.FieldByName('DESCRICAO').Value       := Tb1.FieldByName('DEPARTAMENTO').Value;
      Sc1.FieldByName('SIGLA').Value           := Tb1.FieldByName('SIGLA').Value;
      Sc1.FieldByName('CONTACONTABILID').Value := Tb1.FieldByName('CONTA_CONTABIL').Value;
      Sc1.FieldByName('CENTROCUSTOID').Value   := Tb1.FieldByName('CENTRO_CUSTO').Value;
      Sc1.FieldByName('FILIALID').Value        := Tb1.FieldByName('CD_FILIAL').Value;
      Sc1.Post;
      Tb1.Next;
      Pb1.StepIt;
    end;
    if Sc1.ChangeCount > 0 then
       Sc1.ApplyUpdates(-1);
    Tb1.Close;
    Sc1.Close;
  end;
end;

procedure TfrmMigra.Empresa;
var Cep : String;
begin
  with DMMigra do begin
    Tb1.TableName   := 'EMPRESA';
    Sc1.CommandText := 'SELECT * FROM EF_EMPRESA';
    Tb1.Open;
    Sc1.Open;
    Tb1.First;
    Pb1.Max := Tb1.RecordCount;
    while Not Tb1.Eof do
    begin
      Sc1.Insert;
      Sc1.FieldByName('EMPRESAID').Value    := Tb1.FieldByName('CD_EMPRESA').Value;
      Sc1.FieldByName('NOME').Value         := Tb1.FieldByName('EMPRESA').Value;
      Sc1.FieldByName('NOMEFANTASIA').Value := Tb1.FieldByName('FANTASIA').Value;
      Sc1.FieldByName('CPF_CNPJ').Value     := Tb1.FieldByName('CNPJ').Value;
      Sc1.FieldByName('BLOQUEAR').Value     := Tb1.FieldByName('BLOQUEAR').Value;
      Sc1.FieldByName('DIRETORIO').Value    := Tb1.FieldByName('DIRETORIO').Value;

      Cep := Copy( TransfNum( Tb1.FieldByName('CEP').AsString ), 1, 8 );
      if Cep <> '' then
         SC1.FieldByName('CEPID').Value     := StrToInt( Cep );

      Sc1.FieldByName('ENDERECO').Value            := Tb1.FieldByName('ENDERECO').Value;
      Sc1.FieldByName('CIDADE').Value              := Tb1.FieldByName('CIDADE').Value;
      Sc1.FieldByName('SIGLAUFID').Value           := Tb1.FieldByName('UF').Value;
      Sc1.FieldByName('NUMNF').Value               := Tb1.FieldByName('NR_NF').AsInteger;
      Sc1.FieldByName('NUMNF3').Value              := Tb1.FieldByName('NR_NF3').AsInteger;
      Sc1.FieldByName('NUMPRODUTO').Value          := Tb1.FieldByName('NR_PRODUTO').AsString;
      Sc1.FieldByName('NUMDUPLICATA').Value        := Tb1.FieldByName('NR_DUPLICATA').AsInteger;
      Sc1.FieldByName('NUMPDE').Value              := Tb1.FieldByName('NR_PDE').AsInteger;
      Sc1.FieldByName('NUMPDS').Value              := Tb1.FieldByName('NR_PDS').AsInteger;
      Sc1.FieldByName('NUMTRANSFCONSUMO').Value    := Tb1.FieldByName('NR_TRANSF_CONSUMO').AsInteger;
      Sc1.FieldByName('MODELOIMPRESSAONOTA').Value := Tb1.FieldByName('MODELO_NOTA').AsInteger;
      Sc1.FieldByName('ALIQUOTAISS').Value         := Tb1.FieldByName('ALIQ_ISS').AsFloat;
      Sc1.FieldByName('NUMEMPRESAEXP').Value       := Tb1.FieldByName('CD_EMP_EXP').AsFloat;
      Sc1.FieldByName('SIGLADUPLICATA').Value      := Tb1.FieldByName('SIGLA_DUPLICAT').Value;
      Sc1.Post;
      Tb1.Next;
      Pb1.StepIt;
    end;
    if Sc1.ChangeCount > 0 then
       Sc1.ApplyUpdates(-1);
    Tb1.Close;
    Sc1.Close;
  end;
end;

procedure TfrmMigra.Entidade;
var CpfCnpj, Cep : String;
    cdsCateg : TClientDataSet;
    sqlCateg : String;
begin
 {  Migração da tabela de entidade ficará normal conforme conversão com
    Nelson no último dia do Flávio, depois será feito o acerto }

 sqlCateg := 'SELECT CATEGORIAID FROM EF_CATEGORIA';
 ExecDDL( -1, sqlCateg, cdsCateg );
 cdsCateg.AddIndex( 'idx1','CATEGORIAID',[ixPrimary],'','',0);
 cdsCateg.IndexName := 'idx1';

 try

   with DMMigra do
   begin
    if not cdsCateg.FindKey([1]) then
       DMMigra.ExecQry( 'INSERT INTO EF_CATEGORIA(CATEGORIAID,DESCRICAO) VALUES( ''1'',''CLIENTE'' )' );

    if not cdsCateg.FindKey([2]) then
       DMMigra.ExecQry( 'INSERT INTO EF_CATEGORIA(CATEGORIAID,DESCRICAO) VALUES( ''2'',''FORNECEDOR'' )' );

    if not cdsCateg.FindKey([3]) then
       DMMigra.ExecQry( 'INSERT INTO EF_CATEGORIA(CATEGORIAID,DESCRICAO) VALUES( ''3'',''FABRICANTE'' )' );

    if not cdsCateg.FindKey([4]) then
       DMMigra.ExecQry( 'INSERT INTO EF_CATEGORIA(CATEGORIAID,DESCRICAO) VALUES( ''4'',''TRANSPORTADOR'' )' );

    if not cdsCateg.FindKey([5]) then
       DMMigra.ExecQry( 'INSERT INTO EF_CATEGORIA(CATEGORIAID,DESCRICAO) VALUES( ''5'',''FUNCIONARIO'' )' );

    if not cdsCateg.FindKey([6]) then
       DMMigra.ExecQry( 'INSERT INTO EF_CATEGORIA(CATEGORIAID,DESCRICAO) VALUES( ''6'',''VENDEDOR'' )' );


    {*** Vendedor ***}
    Conecta('IMP_CADASTRO');
    Sc1.CommandText := 'SELECT * FROM EF_ENTIDADEGRUPO';
    Sc1.Open;
    Sc1.AddIndex( 'idx1','ENTIDADEID;CATEGORIAID',[ixPrimary],'','',0);
    Sc1.IndexName := 'idx1';
    Tb1.TableName := 'VENDEDOR';
    Tb1.Open;
    Tb1.First;
    Pb1.Max := Tb1.RecordCount;
    while ( Not Tb1.Eof ) do
    begin
     if ( not Tb1.FieldByName('ENTIDADEID').IsNull ) then
        if ( not SC1.FindKey([Tb1.FieldByName('ENTIDADEID').Value,6 ]) ) then
           ExecQry('INSERT INTO EF_ENTIDADEGRUPO VALUES ('+ Tb1.FieldByName('ENTIDADEID').AsString +','+
                   '6,'+ QuotedStr('GSI') + ')');
     Tb1.Next;
    end;
    Tb1.Close;
    SC1.Close;
    
    Exit;

     { Cliente }
     Conecta('IMP_CADASTRO');
     Tb1.TableName   := 'CLIENT';
     Sc1.CommandText := 'SELECT * FROM EF_ENTIDADE';
     Sc1.Open;
     Sc1.AddIndex( 'idx1','ENTIDADEID',[ixPrimary],'','',0);
     Sc1.IndexName := 'idx1';

     Sc2.CommandText := 'SELECT * FROM EF_ENTIDADEGRUPO';
     Sc2.Open;
     Sc2.AddIndex( 'idx1','ENTIDADEID;CATEGORIAID',[ixPrimary],'','',0);
     Sc2.IndexName := 'idx1';

     tbUnidadeFED.Open;
     Tb1.Open;
     Sc1.Open;
     Sc2.Open;

     Tb1.First;
     Pb1.Max := Tb1.RecordCount;
     while ( Not Tb1.Eof )  do
     begin
      CpfCnpj := '';

      if   Not Tb1.FieldByName('CPFCLI').IsNull then
           CpfCnpj := Tb1.FieldByName('CPFCLI').Value
      else if Not Tb1.FieldByName('CGCCLI').IsNull then
           CpfCnpj := Tb1.FieldByName('CGCCLI').Value;

      CpfCnpj := TransfNum( CpfCnpj );

      if Tb1.FieldByName('ESTADO').AsString <> 'EX' then
         if Not ValidCnPJ_CnPF( CpfCnpj ) then
            wwrichtxtLOG.Lines.Add( 'Tabela ENTIDADE CPF/CNPJ inválido Client ID = ' + Tb1.FieldByName('CODCLI').AsString+ ' CPFCNPJ '+CpfCnpj  );

      if SC2.FindKey([Tb1.FieldByName('CODCLI').Value, 1 ]) then
         Sc2.Edit
      else
         Sc2.Insert;

      SC2.FieldByName('ENTIDADEID').Value  := Tb1.FieldByName('CODCLI').Value;
      SC2.FieldByName('CATEGORIAID').Value := 1;
      SC2.FieldByName('USUARIO').Value     := 'GSI';
      Sc2.Post;

      if SC1.FindKey([Tb1.FieldByName('CODCLI').Value]) then
         Sc1.Edit
      else
         Sc1.Insert;

      Sc1.FieldByName('ENTIDADEID').Value := Tb1.FieldByName('CODCLI').Value;
      if      Not Tb1.FieldByName('CPFCLI').IsNull then
              Sc1.FieldByName('FISICAJURIDICA').Value := 'F'
      else if Not Tb1.FieldByName('CGCCLI').IsNull then
              Sc1.FieldByName('FISICAJURIDICA').Value := 'J';

      Sc1.FieldByName('CPFCNPJ').Value         := CpfCnpj;
      Sc1.FieldByName('INSCRESTADUAL').Value   := Tb1.FieldByName('INSEST').Value;
      Sc1.FieldByName('INSCRMUNICIPAL').Value  := Tb1.FieldByName('INSMUN').Value;
      Sc1.FieldByName('NOME').Value            := Tb1.FieldByName('NOMCLI').Value;
      Sc1.FieldByName('NOMEFANTASIA').Value    := Tb1.FieldByName('NOMFAN').Value;
      Sc1.FieldByName('PASTA').Value           := Tb1.FieldByName('NUMPAS').Value;

      if Tb1.FieldByName('MODTRV').Value = 'T' then
         Sc1.FieldByName('STATUSCOMERCIAL').Value := 1
      else
         Sc1.FieldByName('STATUSCOMERCIAL').Value := 0;

      if Not Tb1.FieldByName('BLOQUEADO').IsNull then
         begin
          if Tb1.FieldByName('BLOQUEADO').Value then
             Sc1.FieldByName('STATUSFINANCEIRO').Value := 1
          else Sc1.FieldByName('STATUSFINANCEIRO').Value := 0;
         end
      else Sc1.FieldByName('STATUSFINANCEIRO').Value := 0;

      Cep := Copy( TransfNum( Tb1.FieldByName('CEPCLI').AsString ), 1, 8 );
      if Cep <> '' then
         SC1.FieldByName('CEPID').Value     := StrToInt( Cep );

      Sc1.FieldByName('ENDERECO').Value  := Tb1.FieldByName('ENDERE').Value;
      Sc1.FieldByName('CIDADE').Value    := Tb1.FieldByName('CIDADE').Value;
      Sc1.FieldByName('SIGLAUFID').Value := Tb1.FieldByName('ESTADO').Value;
      Sc1.FieldByName('PAIS').Value      := Tb1.FieldByName('PAICLI').Value;

      Cep := Copy( TransfNum( Tb1.FieldByName('CEPCOB').AsString ), 1, 8 );
      if Cep <> '' then
         Sc1.FieldByName('CEPCOBID').Value := StrToInt( Copy(Cep,1,8) );

      Sc1.FieldByName('ENDERECOCOB').Value  := Tb1.FieldByName('ENDCOB').Value;
      Sc1.FieldByName('CIDADECOB').Value    := Tb1.FieldByName('CIDCOB').Value;
      Sc1.FieldByName('SIGLAUFCOBID').Value := Tb1.FieldByName('ESTCOB').Value;
      Sc1.FieldByName('PAISCOB').Value      := Tb1.FieldByName('PAICLI').Value;
      Sc1.FieldByName('CONTATO').Value      := Tb1.FieldByName('CONPRI').Value;
      Sc1.FieldByName('CONTATOCOB').Value   := Tb1.FieldByName('CONCOB').Value;
      Sc1.FieldByName('TELEFONE').Value   := Tb1.FieldByName('TELEFO').Value;
      Sc1.FieldByName('FAX').Value        := Tb1.FieldByName('FACSIM').Value;
      Sc1.FieldByName('EMAIL').Value      := Tb1.FieldByName('EMAIL').Value;
      Sc1.FieldByName('PAGINA').Value     := Tb1.FieldByName('HOME_PAGE').Value;
      Sc1.FieldByName('OBSERVACAO').Value := Tb1.FieldByName('OBSERVACAO').Value;

      Cep := Copy( TransfNum( Tb1.FieldByName('CEPCOB').AsString ), 1, 8 );
      if Cep <> '' then
         Sc1.FieldByName('CEPCOBID').Value := StrToInt( Copy(Cep,1,8) );

      Sc1.FieldByName('ENDERECOINST').Value  := Tb1.FieldByName('ENDINS').Value;
      Sc1.FieldByName('CIDADEINST').Value    := Tb1.FieldByName('CIDINS').Value;
      Sc1.FieldByName('SIGLAUFINSTID').Value := Tb1.FieldByName('ESTINS').Value;
      Sc1.FieldByName('PAISINST').Value      := Tb1.FieldByName('PAICLI').Value;
      Sc1.FieldByName('CONTATOINST').Value  := Tb1.FieldByName('CONINS').Value;

      if Not Tb1.FieldByName('ICMS').IsNull then
         begin
          if Tb1.FieldByName('ICMS').Value then
             Sc1.FieldByName('CONTRIBUINTEICMS').Value := 1
          else Sc1.FieldByName('CONTRIBUINTEICMS').Value := 0;
         end
      else Sc1.FieldByName('CONTRIBUINTEICMS').Value := 0;

      Sc1.FieldByName('RG').Value                  := Tb1.FieldByName('IDENTI').Value;
      Sc1.FieldByName('RGORGAOEMISSOR').Value      := Tb1.FieldByName('ORGIND').Value;
      Sc1.FieldByName('CRM').Value                 := Tb1.FieldByName('CRMCLI').Value;
      Sc1.FieldByName('CRMORGAOEMISSOR').Value     := Tb1.FieldByName('ORGCRM').Value;
      Sc1.FieldByName('NATUREZAJURIDICAID').Value  := Tb1.FieldByName('CD_NAT_JURIDICA').Value;
      Sc1.Post;

      if Sc1.ChangeCount > 1 then
         Sc1.ApplyUpdates(-1);

      Tb1.Next;
      Pb1.StepIt;
      Pb1.Refresh;
     end;
     if Sc1.ChangeCount > 0 then
        Sc1.ApplyUpdates(-1);

     if SC2.ChangeCount > 0 then
        SC2.ApplyUpdates(-1);

     Tb1.Close;

     // Funcionario
     Conecta('EST_FAT_CADASTRO');
     Tb1.TableName     := 'FUNCIONARIO';
     Tb1.Open;
     Tb1.First;
     Pb1.Max := Tb1.RecordCount;
     while ( Not Tb1.Eof ) do
     begin
      CpfCnpj := '';


      if not Tb1.FieldByName('CPF').IsNull then
         begin
          CpfCnpj := TransfNum( Tb1.FieldByName('CPF').Value );

          if Not ValidCnPJ_CnPF( CpfCnpj ) then
            wwrichtxtLOG.Lines.Add( 'Tabela ENTIDADE CPF/CNPJ inválido Funcionario ID = ' + Tb1.FieldByName('CODIGO').AsString + ' CPFCNPJ = '+ CpfCnpj );
         end;

      if SC2.FindKey([(50000 + Tb1.FieldByName('CODIGO').Value), 5 ]) then
         Sc2.Edit
      else
         Sc2.Insert;

      SC2.FieldByName('ENTIDADEID').Value  := 50000 + Tb1.FieldByName('CODIGO').Value;
      SC2.FieldByName('CATEGORIAID').Value := 5;
      SC2.FieldByName('USUARIO').Value     := 'GSI';
      Sc2.Post;

      if SC1.FindKey([(50000 + Tb1.FieldByName('CODIGO').Value)]) then
         Sc1.Edit
      else
         Sc1.Insert;

      Sc1.FieldByName('ENTIDADEID').Value := 50000 + Tb1.FieldByName('CODIGO').Value;

      wwrichtxtLOG.Lines.Add( Sc1.FieldByName('ENTIDADEID').Value );

      Sc1.FieldByName('CPFCNPJ').Value := CpfCnpj;
      Sc1.FieldByName('FISICAJURIDICA').Value := 'F';
      Sc1.FieldByName('NOME').Value := Tb1.FieldByName('NOME').Value;
      Sc1.FieldByName('NOMEFANTASIA').Value := Tb1.FieldByName('NOME_POPULAR').Value;

      Cep := Copy( TransfNum( Tb1.FieldByName('CEP').AsString ), 1, 8 );
      if Cep <> '' then
         Sc1.FieldByName('CEPID').Value := StrToInt( Copy(Cep,1,8) );

      Sc1.FieldByName('ENDERECO').Value := Tb1.FieldByName('ENDERECO').Value;
      Sc1.FieldByName('CIDADE').Value   := Tb1.FieldByName('CIDADE').Value;

      if Not Tb1.FieldByName('CODIGO_UF').IsNull then
         Sc1.FieldByName('SIGLAUFID').Value := Estado( Tb1.FieldByName('CODIGO_UF').Value );

      Sc1.FieldByName('TELEFONE').Value            := Tb1.FieldByName('TELEFONE').Value;
      Sc1.FieldByName('FAX').Value                 := Tb1.FieldByName('FAX').Value;
      Sc1.FieldByName('RG').Value                  := Tb1.FieldByName('RG').Value;
      Sc1.FieldByName('RGORGAOEMISSOR').Value      := Tb1.FieldByName('ORG_EMISSOR_RG').Value;
      Sc1.FieldByName('HABILITACAO').Value         := Tb1.FieldByName('NUMERO_HABILITACAO').Value;
      Sc1.FieldByName('VALIDADEHABILITACAO').Value := Tb1.FieldByName('VALIDADE_HABILITACAO').Value;
      Sc1.FieldByName('FILIALID').Value            := Tb1.FieldByName('CODIGO_FILIAL').Value;
      Sc1.FieldByName('DEPARTAMENTOID').Value      := Tb1.FieldByName('CODIGO_DEPTO').Value;
      Sc1.FieldByName('CONTACONTABILID').Value     := Tb1.FieldByName('CONTA_CTB').Value;
      Sc1.Post;

      if Sc1.ChangeCount > 500 then
         Sc1.ApplyUpdates(-1);

      Tb1.Next;
      Pb1.StepIt;
     end;

     if Sc1.ChangeCount > 0 then
        Sc1.ApplyUpdates(-1);

     if Sc2.ChangeCount > 0 then
        SC2.ApplyUpdates(-1);


     Tb1.Close;

     // Fornecedor
     Conecta('EST_FAT_CADASTRO');
     Tb1.TableName := 'FORNECEDOR';
     Tb1.Open;
     Tb1.First;
     Pb1.Max := Tb1.RecordCount;
     while ( Not Tb1.Eof ) do
     begin
      CpfCnpj := '';

      if   Not Tb1.FieldByName('CPF').IsNull then
           CpfCnpj := Tb1.FieldByName('CPF').Value
      else if Not Tb1.FieldByName('CGC').IsNull then
           CpfCnpj := Tb1.FieldByName('CGC').Value;

      if CpfCnpj <> '' then
         begin
          CpfCnpj := TransfNum( CpfCnpj );
          if Tb1.FieldByName('CODIGO_UF').AsInteger <> 38 then
             if Not ValidCnPJ_CnPF( CpfCnpj ) then
                wwrichtxtLOG.Lines.Add( 'Tabela ENTIDADE CPF/CNPJ inválido Fornecedor ID = ' + Tb1.FieldByName('CODIGO').AsString +' CPFCNPJ '+ CpfCnpj );
         end;

      if SC2.FindKey([(20000 + Tb1.FieldByName('CODIGO').Value), 2 ]) then
         Sc2.Edit
      else
         Sc2.Insert;

      SC2.FieldByName('ENTIDADEID').Value  := 20000 + Tb1.FieldByName('CODIGO').Value;
      SC2.FieldByName('CATEGORIAID').Value := 2;
      SC2.FieldByName('USUARIO').Value     := 'GSI';
      Sc2.Post;

      if SC1.FindKey([(20000 + Tb1.FieldByName('CODIGO').Value)]) then
         Sc1.Edit
      else
         Sc1.Insert;

      Sc1.FieldByName('ENTIDADEID').Value := 20000 + Tb1.FieldByName('CODIGO').Value;
      if ( StrToInt64Def( CpfCnpj, 0 ) <> 0 ) then
         Sc1.FieldByName('CPFCNPJ').Value := CpfCnpj;
      if Tb1.FieldByName('FISICO_JURIDICO').Value = 'F' then
         Sc1.FieldByName('FISICAJURIDICA').Value := 'F'
      else if Tb1.FieldByName('FISICO_JURIDICO').Value = 'J' then
         Sc1.FieldByName('FISICAJURIDICA').Value := 'J';

      Sc1.FieldByName('INSCRESTADUAL').Value   := Tb1.FieldByName('INSCRICAO_ESTADUAL').Value;
      Sc1.FieldByName('INSCRMUNICIPAL').Value := Tb1.FieldByName('INSCRICAO_MUNICIPAL').Value;
      Sc1.FieldByName('NOME').Value           := Tb1.FieldByName('NOME').Value;
      Sc1.FieldByName('NOMEFANTASIA').Value   := Tb1.FieldByName('NOME_POPULAR').Value;

      Cep := Copy( TransfNum( Tb1.FieldByName('CEP').AsString ), 1, 8 );
      if Cep <> '' then
         Sc1.FieldByName('CEPID').Value := StrToInt( Copy(Cep,1,8) );

      Sc1.FieldByName('ENDERECO').Value := Tb1.FieldByName('ENDERECO').Value;
      Sc1.FieldByName('CIDADE').Value := Tb1.FieldByName('CIDADE').Value;

      if Not Tb1.FieldByName('CODIGO_UF').IsNull then
         Sc1.FieldByName('SIGLAUFID').Value := Estado( Tb1.FieldByName('CODIGO_UF').Value );

      Sc1.FieldByName('PAIS').Value   := Tb1.FieldByName('PAIS').Value;
      Sc1.FieldByName('CONTATO').Value  := Tb1.FieldByName('CONTATO').Value;
      Sc1.FieldByName('TELEFONE').Value := Tb1.FieldByName('TELEFONE').Value;
      Sc1.FieldByName('FAX').Value      := Tb1.FieldByName('FAX').Value;

      if Not Tb1.FieldByName('ICMS').IsNull then
      begin
        if Tb1.FieldByName('ICMS').Value then Sc1.FieldByName('CONTRIBUINTEICMS').Value := 1
        else Sc1.FieldByName('CONTRIBUINTEICMS').Value := 0;
      end
      else Sc1.FieldByName('CONTRIBUINTEICMS').Value := 0;

      Sc1.FieldByName('RG').Value := Tb1.FieldByName('RG').Value;
      Sc1.Post;

      if Sc1.ChangeCount > 500 then
         Sc1.ApplyUpdates(-1);

      Tb1.Next;
      Pb1.StepIt;
     end;

     if Sc1.ChangeCount > 0 then
        Sc1.ApplyUpdates(-1);

     if Sc2.ChangeCount > 0 then
        Sc2.ApplyUpdates(-1);

     Tb1.Close;
     // Fabricante
     Conecta('EST_FAT_CADASTRO');
     Tb1.TableName := 'FABRICANTE';
     Tb1.Open;
     Tb1.First;
     Pb1.Max := Tb1.RecordCount;
     while Not Tb1.Eof do
     begin
      if SC2.FindKey([(30000 + Tb1.FieldByName('CODIGO').Value), 3 ]) then
         Sc2.Edit
      else
         Sc2.Insert;

      SC2.FieldByName('ENTIDADEID').Value  := 30000 + Tb1.FieldByName('CODIGO').Value;
      SC2.FieldByName('CATEGORIAID').Value := 3;
      SC2.FieldByName('USUARIO').Value     := 'GSI';
      Sc2.Post;

      if SC1.FindKey([(30000 + Tb1.FieldByName('CODIGO').Value)]) then
         Sc1.Edit
      else
         Sc1.Insert;

      Sc1.FieldByName('ENTIDADEID').Value := 30000 + Tb1.FieldByName('CODIGO').Value;
      Sc1.FieldByName('NOME').Value       := Tb1.FieldByName('DESCRICAO').Value;
      Sc1.Post;
      if Sc1.ChangeCount >= 500 then
         Sc1.ApplyUpdates(-1);
      Tb1.Next;
      Pb1.StepIt;
     end;

     if Sc1.ChangeCount > 0 then
        Sc1.ApplyUpdates(-1);

     if Sc2.ChangeCount > 0 then
        Sc2.ApplyUpdates(-1);

     Tb1.Close;

     // Transportador
     Conecta('EST_FAT_CADASTRO');
     Tb1.TableName := 'TRANSPORTADOR';
     Tb1.Open;
     Tb1.First;
     Pb1.Max := Tb1.RecordCount;
     while ( Not Tb1.Eof ) do
     begin
      CpfCnpj := '';

      if   Not Tb1.FieldByName('CPF').IsNull then
           CpfCnpj := Tb1.FieldByName('CPF').Value
      else if Not Tb1.FieldByName('CGC').IsNull then
           CpfCnpj := Tb1.FieldByName('CGC').Value;

      if CpfCnpj <> '' then
         begin
          CpfCnpj := TransfNum( CpfCnpj );
          if Tb1.FieldByName('CODIGO_UF').AsInteger <> 38 then
             if Not ValidCnPJ_CnPF( CpfCnpj ) then
                wwrichtxtLOG.Lines.Add( 'Tabela ENTIDADE CPF/CNPJ inválido Fornecedor ID = ' + Tb1.FieldByName('CODIGO').AsString +' CPFCNPJ '+ CpfCnpj );
         end;

      if SC2.FindKey([(40000 + Tb1.FieldByName('CODIGO').Value), 4 ]) then
         Sc2.Edit
      else
         Sc2.Insert;

      SC2.FieldByName('ENTIDADEID').Value  := 40000 + Tb1.FieldByName('CODIGO').Value;
      SC2.FieldByName('CATEGORIAID').Value := 4;
      SC2.FieldByName('USUARIO').Value     := 'GSI';
      Sc2.Post;

      if SC1.FindKey([(40000 + Tb1.FieldByName('CODIGO').Value)]) then
         Sc1.Edit
      else
         Sc1.Insert;

      Sc1.FieldByName('ENTIDADEID').Value := 40000 + Tb1.FieldByName('CODIGO').Value;
      if ( StrToInt64Def( CpfCnpj, 0 ) <> 0 ) then
         Sc1.FieldByName('CPFCNPJ').Value := CpfCnpj;
      if Tb1.FieldByName('FISICO_JURIDICO').Value = 'F' then
         Sc1.FieldByName('FISICAJURIDICA').Value := 'F'
      else if Tb1.FieldByName('FISICO_JURIDICO').Value = 'J' then
         Sc1.FieldByName('FISICAJURIDICA').Value := 'J';

      Sc1.FieldByName('INSCRESTADUAL').Value      := Tb1.FieldByName('INSCRICAO_ESTADUAL').Value;
      Sc1.FieldByName('INSCRMUNICIPAL').Value    := Tb1.FieldByName('INSCRICAO_MUNICIPAL').Value;
      Sc1.FieldByName('NOME').Value              := Tb1.FieldByName('NOME').Value;
      Sc1.FieldByName('NOMEFANTASIA').Value      := Tb1.FieldByName('NOME_POPULAR').Value;

      Cep := Copy( TransfNum( Tb1.FieldByName('CEP').AsString ), 1, 8 );
      if Cep <> '' then
         Sc1.FieldByName('CEPID').Value := StrToInt( Copy(Cep,1,8) );

      Sc1.FieldByName('ENDERECO').Value := Tb1.FieldByName('ENDERECO').Value;
      Sc1.FieldByName('CIDADE').Value := Tb1.FieldByName('CIDADE').Value;

      if Not Tb1.FieldByName('CODIGO_UF').IsNull then
         Sc1.FieldByName('SIGLAUFID').Value := Estado( Tb1.FieldByName('CODIGO_UF').Value );
      Sc1.FieldByName('PAIS').Value := Tb1.FieldByName('PAIS').Value;
      Sc1.FieldByName('CONTATO').Value  := Tb1.FieldByName('CONTATO').Value;
      Sc1.FieldByName('TELEFONE').Value := Tb1.FieldByName('TELEFONE').Value;
      Sc1.FieldByName('FAX').Value      := Tb1.FieldByName('FAX').Value;
      Sc1.FieldByName('RG').Value       := Tb1.FieldByName('RG').Value;
      Sc1.Post;

      Tb1.Next;
      Pb1.StepIt;
     end;
     if Sc1.ChangeCount > 0 then
        Sc1.ApplyUpdates(-1);

     if Sc2.ChangeCount > 0 then
        Sc2.ApplyUpdates(-1);

     Tb1.Close;

     {Vendedor}
{     Conecta('IMP_CADASTRO');
     Tb1.TableName := 'VENDEDOR';
     Tb1.Open;
     Tb1.First;
     Pb1.Max := Tb1.RecordCount;
     while ( Not Tb1.Eof ) do
     begin
      CpfCnpj := '';

      if   Not Tb1.FieldByName('CPF').IsNull then
           CpfCnpj := Tb1.FieldByName('CPF').Value
      else if Not Tb1.FieldByName('CGC').IsNull then
           CpfCnpj := Tb1.FieldByName('CGC').Value;

      if CpfCnpj <> '' then
         begin
          CpfCnpj := TransfNum( CpfCnpj );
          if Tb1.FieldByName('CODIGO_UF').AsInteger <> 38 then
             if Not ValidCnPJ_CnPF( CpfCnpj ) then
                wwrichtxtLOG.Lines.Add( 'Tabela ENTIDADE CPF/CNPJ inválido Fornecedor ID = ' + Tb1.FieldByName('CODIGO').AsString +' CPFCNPJ '+ CpfCnpj )
             else
                if Sc2.Locate('CPFCNPJ',QuotedStr(CpfCnpj),[]) then
                   begin
                    Tb1.Edit;
                    Tb1.FieldByName('ENTIDADEID').Value := SC2.FieldByName('ENTIDADEID').Value;
                    Tb1.Post;
                   end;
         end;
      Tb1.Next;
     end;}


     Sc1.DeleteIndex( 'idx1' );
     Sc2.DeleteIndex( 'idx1' );

     Tb1.Close;
     Sc1.Close;
     Sc2.Close;
     tbUnidadeFED.Close;
  //   ExecQry( 'ALTER TABLE EF_ENTIDADE ENABLE CONSTRAINT Un_EF_Entidade_CPFCNPJ' );
    end;
   cdsCateg.Close;
 finally
  FreeAndNil( cdsCateg );
 end;
end;

procedure TfrmMigra.Filial;
var Cep : String;
begin
  EXIT;
  with DMMigra do begin
    Tb1.TableName   := 'FILIAL';
    Sc1.CommandText := 'SELECT * FROM EF_FILIAL';
    Tb1.Open;
    Sc1.Open;
    Tb1.First;
    tbUnidadeFED.Open;
    Pb1.Max := Tb1.RecordCount;
    while Not Tb1.Eof do
    begin
      Sc1.Insert;
      Sc1.FieldByName('FILIALID').Value       := Tb1.FieldByName('CODIGO').Value;
      Sc1.FieldByName('CPF_CNPJ').Value       := Tb1.FieldByName('CGC').Value;
      Sc1.FieldByName('INSCRESTADUAL').Value   := Tb1.FieldByName('INSCRICAO_ESTADUAL').Value;
      Sc1.FieldByName('INSCRMUNICIPAL').Value := Tb1.FieldByName('INSCRICAO_MUNICIPAL').Value;
      Sc1.FieldByName('NOME').Value           := Tb1.FieldByName('RAZAO SOCIAL').Value;
      Sc1.FieldByName('NOMEFANTASIA').Value   := Tb1.FieldByName('FILIAL').Value;

      Cep := Copy( TransfNum( Tb1.FieldByName('CEP').AsString ), 1, 8 );
      if Cep <> '' then
         SC1.FieldByName('CEPID').Value     := StrToInt( Cep );

      Sc1.FieldByName('ENDERECO').Value      := Tb1.FieldByName('ENDERECO').Value;
      Sc1.FieldByName('BAIRRO').Value        := Tb1.FieldByName('BAIRRO').Value;
      Sc1.FieldByName('CIDADE').Value        := Tb1.FieldByName('CIDADE').Value;
      Sc1.FieldByName('SIGLAUFID').Value     := Estado( Tb1.FieldByName('CODIGO_UF').AsInteger );
      Sc1.FieldByName('CONTATO').Value       := Tb1.FieldByName('CONTATO').AsString;
      Sc1.FieldByName('TELEFONE').Value      := Tb1.FieldByName('TELEFONE').Value;
      Sc1.FieldByName('FAX').Value           := Tb1.FieldByName('FAX').Value;
      Sc1.FieldByName('EMAIL').Value         := Tb1.FieldByName('EMAIL').Value;
      Sc1.FieldByName('IDENTIFICADOR').Value := Tb1.FieldByName('CODFIL').Value;
      Sc1.FieldByName('ULTIMAOS').Value      := Tb1.FieldByName('OSFILIAL').Value;
      Sc1.FieldByName('CONTABANCARIA').Value := Tb1.FieldByName('CTB_BANCO').Value;
      Sc1.FieldByName('CONTACAIXA').Value    := Tb1.FieldByName('CTB_CAIXA').Value;
      Sc1.Post;
      if Sc1.ChangeCount >= 100 then
         Sc1.ApplyUpdates(-1);
      Tb1.Next;
      Pb1.StepIt;
    end;
    if Sc1.ChangeCount > 0 then
       Sc1.ApplyUpdates(-1);
    Tb1.Close;
    Sc1.Close;
    tbUnidadeFED.Close;
  end;
end;

procedure TfrmMigra.Grupo;
begin
  with DMMigra do begin
    Tb1.TableName   := 'GRUPO_PROD';
    Sc1.CommandText := 'SELECT * FROM EF_GRUPO';
    Tb1.Open;
    Sc1.Open;
    Tb1.First;
    Pb1.Max := Tb1.RecordCount;
    while Not Tb1.Eof do
    begin
      Sc1.Insert;
      Sc1.FieldByName('GRUPOID').Value   := Tb1.FieldByName('GRUPO').Value;
      Sc1.FieldByName('DESCRICAO').Value := Tb1.FieldByName('DESCRICAO').Value;
      Sc1.Post;
      if Sc1.ChangeCount >= 50 then
         Sc1.ApplyUpdates(-1);
      Tb1.Next;
      Pb1.StepIt;
    end;
    if Sc1.ChangeCount > 0 then
       Sc1.ApplyUpdates(-1);
    Tb1.Close;
    Sc1.Close;
  end;
end;

procedure TfrmMigra.Imposto;
begin
  with DMMigra do begin
    Tb1.TableName   := 'ALIQUOTAS';
    Sc1.CommandText := 'SELECT * FROM EF_IMPOSTO';
    Tb1.Open;
    Sc1.Open;
    Tb1.First;
    Pb1.Max := Tb1.RecordCount;
    while Not Tb1.Eof do
    begin
      Sc1.Insert;
      Sc1.FieldByName('IMPOSTOID').Value   := Tb1.FieldByName('SIGLA').Value;
      Sc1.FieldByName('VLRALIQUOTA').Value := Tb1.FieldByName('ALIQUOTA').Value;
      Sc1.Post;
      Sc1.ApplyUpdates(-1);
      Tb1.Next;
      Pb1.StepIt;
    end;
    Tb1.Close;
    Sc1.Close;
  end;
end;

procedure TfrmMigra.NaturezaEmpresa;
begin
 with DMMigra do
 begin
    if Not Tb1.FieldByName('EMP1').IsNull then
      if Tb1.FieldByName('EMP1').Value then
      begin
        if SC2.FindKey([Tb1.FieldByName('CODIGO').Value,1 ]) then
           SC2.Edit
        else
           Sc2.Insert;

        Sc2.FieldByName('NATUREZAOPID').Value := Tb1.FieldByName('CODIGO').Value;
        Sc2.FieldByName('EMPRESAID').Value    := 1;
        Sc2.Post;
      end;

    if Not Tb1.FieldByName('EMP2').IsNull then
      if Tb1.FieldByName('EMP2').Value then
      begin
        if SC2.FindKey([Tb1.FieldByName('CODIGO').Value,2 ]) then
           SC2.Edit
        else
           Sc2.Insert;

        Sc2.FieldByName('NATUREZAOPID').Value := Tb1.FieldByName('CODIGO').Value;
        Sc2.FieldByName('EMPRESAID').Value    := 2;
        Sc2.Post;
      end;
    if Not Tb1.FieldByName('EMP3').IsNull then
      if Tb1.FieldByName('EMP3').Value then
      begin
        if SC2.FindKey([Tb1.FieldByName('CODIGO').Value,3 ]) then
           SC2.Edit
        else
           Sc2.Insert;

        Sc2.FieldByName('NATUREZAOPID').Value := Tb1.FieldByName('CODIGO').Value;
        Sc2.FieldByName('EMPRESAID').Value    := 3;
        Sc2.Post;
      end;
    if Not Tb1.FieldByName('EMP4').IsNull then
      if Tb1.FieldByName('EMP4').Value then
      begin
        if SC2.FindKey([Tb1.FieldByName('CODIGO').Value,4 ]) then
           SC2.Edit
        else
           Sc2.Insert;

        Sc2.FieldByName('NATUREZAOPID').Value := Tb1.FieldByName('CODIGO').Value;
        Sc2.FieldByName('EMPRESAID').Value    := 4;
        Sc2.Post;
      end;
    if Not Tb1.FieldByName('EMP5').IsNull then
      if Tb1.FieldByName('EMP5').Value then
      begin
        if SC2.FindKey([Tb1.FieldByName('CODIGO').Value,5 ]) then
           SC2.Edit
        else
           Sc2.Insert;

        Sc2.FieldByName('NATUREZAOPID').Value := Tb1.FieldByName('CODIGO').Value;
        Sc2.FieldByName('EMPRESAID').Value    := 5;
        Sc2.Post;
      end;
    if Not Tb1.FieldByName('EMP6').IsNull then
      if Tb1.FieldByName('EMP6').Value then
      begin
        if SC2.FindKey([Tb1.FieldByName('CODIGO').Value,6 ]) then
           SC2.Edit
        else
           Sc2.Insert;

        Sc2.FieldByName('NATUREZAOPID').Value := Tb1.FieldByName('CODIGO').Value;
        Sc2.FieldByName('EMPRESAID').Value    := 6;
        Sc2.Post;
      end;
    if Not Tb1.FieldByName('EMP7').IsNull then
      if Tb1.FieldByName('EMP7').Value then
      begin
        if SC2.FindKey([Tb1.FieldByName('CODIGO').Value,7 ]) then
           SC2.Edit
        else
           Sc2.Insert;

        Sc2.FieldByName('NATUREZAOPID').Value := Tb1.FieldByName('CODIGO').Value;
        Sc2.FieldByName('EMPRESAID').Value    := 7;
        Sc2.Post;
      end;
    if Not Tb1.FieldByName('EMP8').IsNull then
      if Tb1.FieldByName('EMP8').Value then
      begin
        if SC2.FindKey([Tb1.FieldByName('CODIGO').Value,8 ]) then
           SC2.Edit
        else
           Sc2.Insert;

        Sc2.FieldByName('NATUREZAOPID').Value := Tb1.FieldByName('CODIGO').Value;
        Sc2.FieldByName('EMPRESAID').Value    := 8;
        Sc2.Post;
      end;
    if Not Tb1.FieldByName('EMP9').IsNull then
      if Tb1.FieldByName('EMP9').Value then
      begin
        if SC2.FindKey([Tb1.FieldByName('CODIGO').Value,9 ]) then
           SC2.Edit
        else
           Sc2.Insert;

        Sc2.FieldByName('NATUREZAOPID').Value := Tb1.FieldByName('CODIGO').Value;
        Sc2.FieldByName('EMPRESAID').Value    := 9;
        Sc2.Post;
      end;
    if Not Tb1.FieldByName('EMP10').IsNull then
      if Tb1.FieldByName('EMP10').Value then
      begin
        if SC2.FindKey([Tb1.FieldByName('CODIGO').Value,10 ]) then
           SC2.Edit
        else
           Sc2.Insert;

        Sc2.FieldByName('NATUREZAOPID').Value := Tb1.FieldByName('CODIGO').Value;
        Sc2.FieldByName('EMPRESAID').Value    := 10;
        Sc2.Post;
      end;
    if Not Tb1.FieldByName('EMP11').IsNull then
      if Tb1.FieldByName('EMP11').Value then
      begin
        if SC2.FindKey([Tb1.FieldByName('CODIGO').Value,11 ]) then
           SC2.Edit
        else
           Sc2.Insert;

        Sc2.FieldByName('NATUREZAOPID').Value := Tb1.FieldByName('CODIGO').Value;
        Sc2.FieldByName('EMPRESAID').Value    := 11;
        Sc2.Post;
      end;
    if Not Tb1.FieldByName('EMP12').IsNull then
      if Tb1.FieldByName('EMP12').Value then
      begin
        if SC2.FindKey([Tb1.FieldByName('CODIGO').Value,12 ]) then
           SC2.Edit
        else
           Sc2.Insert;

        Sc2.FieldByName('NATUREZAOPID').Value := Tb1.FieldByName('CODIGO').Value;
        Sc2.FieldByName('EMPRESAID').Value    := 12;
        Sc2.Post;
      end;
    if Not Tb1.FieldByName('EMP13').IsNull then
      if Tb1.FieldByName('EMP13').Value then
      begin
        if SC2.FindKey([Tb1.FieldByName('CODIGO').Value,13 ]) then
           SC2.Edit
        else
           Sc2.Insert;

        Sc2.FieldByName('NATUREZAOPID').Value := Tb1.FieldByName('CODIGO').Value;
        Sc2.FieldByName('EMPRESAID').Value    := 13;
        Sc2.Post;
      end;
 end;
end;

procedure TfrmMigra.NaturezaOp;
var sqlObservacao, sqlSiglaNatureza : String;
    cdsObservacao, cdsSiglaNatureza : TClientDataSet;
begin
 sqlObservacao := 'SELECT OBSERVACAOID FROM EF_OBSERVACAO';
 ExecDDL( -1, sqlObservacao, cdsObservacao );
 cdsObservacao.AddIndex( 'idx1','OBSERVACAOID',[ixPrimary],'','',0);
 cdsObservacao.IndexName := 'idx1';

 sqlSiglaNatureza := 'SELECT DESCRICAORESUMIDA, SIGLANATUREZAID FROM EF_SIGLANATUREZA';
 ExecDDL( -1, sqlSiglaNatureza, cdsSiglaNatureza );
 cdsSiglaNatureza.AddIndex( 'idx1','DESCRICAORESUMIDA',[ixPrimary],'','',0);
 cdsSiglaNatureza.IndexName := 'idx1';

 try
  with DMMigra do begin
    ExecQry( 'ALTER TABLE EF_NATUREZAOP DISABLE CONSTRAINT Fk_EF_Naturez_NaturezaOpId' );
    Tb1.TableName   := 'NAT_OPERACAO';
    Sc1.CommandText := 'SELECT * FROM EF_NATUREZAOP';
    Sc2.CommandText := 'SELECT * FROM EF_NATUREZAEMPRESA';
    Tb1.Open;
    Sc1.Open;
    SC1.AddIndex( 'idx1','NATUREZAOPID',[ixPrimary],'','',0);
    SC1.IndexName := 'idx1';

    Sc2.Open;
    SC2.AddIndex( 'idx1','NATUREZAOPID;EMPRESAID',[ixPrimary],'','',0);
    SC2.IndexName := 'idx1';

    Tb1.First;
    Pb1.Max := Tb1.RecordCount * 2;
    while Not Tb1.Eof do
    begin
      if SC1.FindKey([Tb1.FieldByName('CODIGO').Value ]) then
         SC1.Edit
      else
         Sc1.Insert;

      Sc1.FieldByName('NATUREZAOPID').Value             := Tb1.FieldByName('CODIGO').Value;
      Sc1.FieldByName('CFOP').Value                     := Tb1.FieldByName('CODIGO_FISCAL').Value;
      Sc1.FieldByName('TIPOMOVIMENTO').Value            := Tb1.FieldByName('TIPO_MOVIMENTO').Value;
      Sc1.FieldByName('DESCRICAOOPERACAOUSUARIO').Value := Tb1.FieldByName('DESCRICAO').Value;
      Sc1.FieldByName('DESCRICAOOPERACAONOTA').Value    := Tb1.FieldByName('NATUREZA_OPERACAO').Value;
      Sc1.FieldByName('DESCRICAOCOMPLETA').Value        := Tb1.FieldByName('DESCRICAO_FISCAL').Value;
      Sc1.FieldByName('MOVIMENTOESTOQUE').Value         := Tb1.FieldByName('EST_CONTROL3').Value;
      Sc1.FieldByName('NATUREZAOPRETORNOID').Value      := Tb1.FieldByName('CONTRA_PARTIDA').Value;

      if Not Tb1.FieldByName('VENDA').IsNull then
      begin
        if Tb1.FieldByName('VENDA').Value then Sc1.FieldByName('VENDADEFINITIVA').Value := 1
        else Sc1.FieldByName('VENDADEFINITIVA').Value := 0;
      end
      else Sc1.FieldByName('VENDADEFINITIVA').Value := 0;

      if Not Tb1.FieldByName('CALCULO_PRECO_MEDIO').IsNull then
      begin
        if Tb1.FieldByName('CALCULO_PRECO_MEDIO').Value then Sc1.FieldByName('CALCULAPRECOMEDIO').Value := 1
        else Sc1.FieldByName('CALCULAPRECOMEDIO').Value := 0;
      end
      else Sc1.FieldByName('CALCULAPRECOMEDIO').Value := 0;

      if Not Tb1.FieldByName('EMPENHO').IsNull then
      begin
        if Tb1.FieldByName('EMPENHO').Value then Sc1.FieldByName('UTILIZAEMPENHO').Value := 1
        else Sc1.FieldByName('UTILIZAEMPENHO').Value := 0;
      end
      else Sc1.FieldByName('UTILIZAEMPENHO').Value := 0;

      if Not Tb1.FieldByName('GERAR_DUPLICATA').IsNull then
      begin
        if Tb1.FieldByName('GERAR_DUPLICATA').Value then Sc1.FieldByName('GERARDUPLICATA').Value := 1
        else Sc1.FieldByName('GERARDUPLICATA').Value := 0;
      end
      else Sc1.FieldByName('GERARDUPLICATA').Value := 0;

      if Not Tb1.FieldByName('TRANSF_CONSUMO').IsNull then
      begin
        if Tb1.FieldByName('TRANSF_CONSUMO').Value then Sc1.FieldByName('TRANSFCONSUMO').Value := 1
        else Sc1.FieldByName('TRANSFCONSUMO').Value := 0;
      end
      else Sc1.FieldByName('TRANSFCONSUMO').Value := 0;

      if Not Tb1.FieldByName('CALCULO_IPI').IsNull then
      begin
        if Tb1.FieldByName('CALCULO_IPI').Value then Sc1.FieldByName('CALCULOIPI').Value := 1
        else Sc1.FieldByName('CALCULOIPI').Value := 0;
      end
      else Sc1.FieldByName('CALCULOIPI').Value := 0;

      if Not Tb1.FieldByName('CREDITO_IPI').IsNull then
      begin
        if Tb1.FieldByName('CREDITO_IPI').Value then Sc1.FieldByName('CREDITOIPI').Value := 1
        else Sc1.FieldByName('CREDITOIPI').Value := 0;
      end
      else Sc1.FieldByName('CREDITOIPI').Value := 0;

      if Not Tb1.FieldByName('IPI_BASE').IsNull then
      begin
        if Tb1.FieldByName('IPI_BASE').Value then Sc1.FieldByName('IPIBASE').Value := 1
        else Sc1.FieldByName('IPIBASE').Value := 0;
      end
      else Sc1.FieldByName('IPIBASE').Value := 0;

      if Not Tb1.FieldByName('FRETE_IPI').IsNull then
      begin
        if Tb1.FieldByName('FRETE_IPI').Value then Sc1.FieldByName('FRETEIPI').Value := 1
        else Sc1.FieldByName('FRETEIPI').Value := 0;
      end
      else Sc1.FieldByName('FRETEIPI').Value := 0;

      if Not Tb1.FieldByName('DESTACA_IPI').IsNull then
      begin
        if Tb1.FieldByName('DESTACA_IPI').Value then Sc1.FieldByName('DESTACAIPI').Value := 1
        else Sc1.FieldByName('DESTACAIPI').Value := 0;
      end
      else Sc1.FieldByName('DESTACAIPI').Value := 0;

      Sc1.FieldByName('GERAMOVIMENTO').Value := 0;

      if not Tb1.FieldByName('VENDAFATANTECIPADO').IsNull then
         begin
          if Tb1.FieldByName('VENDAFATANTECIPADO').AsBoolean then
             Sc1.FieldByName('VENDAFATANTECIPADO').Value := 1
          else
             Sc1.FieldByName('VENDAFATANTECIPADO').Value := 0;
         end
      else
         Sc1.FieldByName('VENDAFATANTECIPADO').Value := 0;

      Sc1.FieldByName('SITTRIBESTADUAL').Value := Tb1.FieldByName('SIT_TRIB_ESTADUAL').Value;

      if Not Tb1.FieldByName('CALCULO_ICM').IsNull then
      begin
        if Tb1.FieldByName('CALCULO_ICM').Value then Sc1.FieldByName('CALCULOICMS').Value := 1
        else Sc1.FieldByName('CALCULOICMS').Value := 0;
      end
      else Sc1.FieldByName('CALCULOICMS').Value := 0;

      if Not Tb1.FieldByName('CREDITO_ICM').IsNull then
      begin
        if Tb1.FieldByName('CREDITO_ICM').Value then Sc1.FieldByName('CREDITOICMS').Value := 1
        else Sc1.FieldByName('CREDITOICMS').Value := 0;
      end
      else Sc1.FieldByName('CREDITOICMS').Value := 0;

      if Not Tb1.FieldByName('INCENTIVO_ICMS').IsNull then
      begin
        if Tb1.FieldByName('INCENTIVO_ICMS').Value then Sc1.FieldByName('INCENTIVOICMS').Value := 1
        else Sc1.FieldByName('INCENTIVOICMS').Value := 0;
      end
      else Sc1.FieldByName('INCENTIVOICMS').Value := 0;

      if Not Tb1.FieldByName('CALCULO_ISS').IsNull then
      begin
        if Tb1.FieldByName('CALCULO_ISS').Value then Sc1.FieldByName('CALCULOISS').Value := 1
        else Sc1.FieldByName('CALCULOISS').Value := 0;
      end
      else Sc1.FieldByName('CALCULOISS').Value := 0;

      // Observacao
      if cdsObservacao.FindKey([Tb1.FieldByName('CODIGO_OBS').Value]) then
         Sc1.FieldByName('OBSERVACAOID').Value := Tb1.FieldByName('CODIGO_OBS').Value;

      if cdsSiglaNatureza.FindKey([Tb1.FieldByName('DESCRICAO_RESUMIDA').AsString]) then
         Sc1.FieldByName('SIGLANATUREZAID').Value := cdsSiglaNatureza.FieldByName('SIGLANATUREZAID').AsInteger;

      Sc1.FieldByName('NUMPADRAO').Value           := Tb1.FieldByName('COD_PADRAO_TEBAS').Value;

      if not Tb1.FieldByName('COBERTURACONTRATUAL').IsNull then
      begin
       if Tb1.FieldByName('COBERTURACONTRATUAL').AsBoolean then Sc1.FieldByName('COBERTURACONTRATUAL').Value := 1
       else Sc1.FieldByName('COBERTURACONTRATUAL').Value := 0;
      end
      else Sc1.FieldByName('COBERTURACONTRATUAL').Value := 0;

      if Not Tb1.FieldByName('CREDITOPIS').IsNull then
      begin
        if Tb1.FieldByName('CREDITOPIS').Value then Sc1.FieldByName('CREDITOPIS').Value := 1
        else Sc1.FieldByName('CREDITOPIS').Value := 0;
      end
      else Sc1.FieldByName('CREDITOPIS').Value := 0;

      if Not Tb1.FieldByName('CREDITOCOFINS').IsNull then
      begin
       if Tb1.FieldByName('CREDITOCOFINS').Value then Sc1.FieldByName('CREDITOPIS').Value := 1
       else Sc1.FieldByName('CREDITOCOFINS').Value := 0;
      end
      else Sc1.FieldByName('CREDITOCOFINS').Value := 0;

      if Not Tb1.FieldByName('ENTRADAPRECOTRANSF').IsNull then
      begin
        if Tb1.FieldByName('ENTRADAPRECOTRANSF').Value then Sc1.FieldByName('ENTRADAPRECOTRANSF').Value := 1
        else Sc1.FieldByName('ENTRADAPRECOTRANSF').Value := 0;
      end
      else Sc1.FieldByName('ENTRADAPRECOTRANSF').Value := 0;

      if Not Tb1.FieldByName('ENTRADADIP').IsNull then
      begin
        if Tb1.FieldByName('ENTRADADIP').Value then
           Sc1.FieldByName('ENTRADADIPJ').Value := 1
        else
           Sc1.FieldByName('ENTRADADIPJ').Value := 0;
      end
      else Sc1.FieldByName('ENTRADADIPJ').Value := 0;

      if Not Tb1.FieldByName('SAIDADIP').IsNull then
      begin
        if Tb1.FieldByName('SAIDADIP').Value then
           Sc1.FieldByName('SAIDADIPJ').Value := 1
        else
           Sc1.FieldByName('SAIDADIPJ').Value := 0;
      end
      else Sc1.FieldByName('SAIDADIPJ').Value := 0;

      // Gravar as empresas
      NaturezaEmpresa;

      Sc1.Post;
      Tb1.Next;
      Pb1.StepIt;
    end;

    if Sc1.ChangeCount > 0 then
       Sc1.ApplyUpdates(-1);

    if Sc2.ChangeCount > 0 then
       Sc2.ApplyUpdates(-1);

    Tb1.Close;
    SC1.DeleteIndex( 'idx1');
    SC2.DeleteIndex( 'idx1');
    Sc1.Close;
    Sc2.Close;
    ExecQry( 'ALTER TABLE EF_NATUREZAOP DISABLE CONSTRAINT Fk_EF_Naturez_NaturezaOpId' );
  end;
 finally
  FreeAndNil( cdsObservacao );
  FreeAndNil( cdsSiglaNatureza );
 end;
end;

procedure TfrmMigra.Observacao;
begin
  with DMMigra do begin
    Tb1.TableName   := 'OBSERVACAO';
    Sc1.CommandText := 'SELECT * FROM EF_OBSERVACAO';
    Tb1.Open;
    Sc1.Open;
    Tb1.First;
    Pb1.Max := Tb1.RecordCount;
    while Not Tb1.Eof do
    begin
      Sc1.Insert;
      Sc1.FieldByName('OBSERVACAOID').Value := Tb1.FieldByName('CODIGO_OBS').Value;
      Sc1.FieldByName('DESCRICAO').Value    := Tb1.FieldByName('DESCRICAO').Value;
      Sc1.Post;
      if Sc1.ChangeCount >= 100 then
         Sc1.ApplyUpdates(-1);
      Tb1.Next;
      Pb1.StepIt;
    end;
    if Sc1.ChangeCount > 0 then
       Sc1.ApplyUpdates(-1);
    Tb1.Close;
    Sc1.Close;
  end;
end;

procedure TfrmMigra.Receita;
begin
  with DMMigra do begin
    Tb1.TableName   := 'RECEITAS';
    Sc1.CommandText := 'SELECT * FROM EF_RECEITA';
    Tb1.Open;
    Sc1.Open;
    Tb1.First;
    Pb1.Max := Tb1.RecordCount;
    while Not Tb1.Eof do
    begin
      Sc1.Insert;
      Sc1.FieldByName('RECEITAID').Value := Valor( 'SQ_EF_RECEITAID' );
      Sc1.FieldByName('SIGLA').Value     := Tb1.FieldByName('TIPO_RECEITA').Value;

      if not Tb1.FieldByName('CONTA_CONTABIL').IsNull then
         Sc1.FieldByName('CONTACONTABILID').Value := TransfNum( Tb1.FieldByName('CONTA_CONTABIL').AsString );

      if not Tb1.FieldByName('CENTRO_CUSTO').IsNull then
         Sc1.FieldByName('CENTROCUSTOID').Value := TransfNum( Tb1.FieldByName('CENTRO_CUSTO').AsString );

      Sc1.Post;
      if Sc1.ChangeCount >= 50 then
         Sc1.ApplyUpdates(-1);
      Tb1.Next;
      Pb1.StepIt;
    end;
    if Sc1.ChangeCount > 0 then
       Sc1.ApplyUpdates(-1);
    Tb1.Close;
    Sc1.Close;
  end;
end;

procedure TfrmMigra.sbImportarPrecoJapaoClick(Sender: TObject);
var x : Integer;
    F : TextFile;
    sPrice, sRepair : string;
    Linha : WideString;
begin
 Screen.Cursor := crHourGlass;
 x := 0;

 AssignFile( F , mktImpPrecoJapao.Text );
 Reset( F );

 try
  try
   DMMigra.Sc1.CommandText := 'SELECT * FROM TESTE2';
   DMMigra.Sc1.Open;

   if Length( mktImpPrecoJapao.Text ) = 0 then
      raise Exception.Create('Arquivo não selecionado !');

   ReadLn( F , Linha );
   while not Eof( F ) do
   begin
    Inc( x );
    ReadLn( F , Linha );

    sPrice  := SubstituiString( SubstituiString( Copy( Linha,48,13 ),',','' ),'.',',' );
    sRepair := SubstituiString( SubstituiString( Copy( Linha,62,13 ),',','' ),'.',',' );

    DMMigra.SC1.Insert;
    DMMigra.SC1.FieldByName( 'PARTNUMBERID').AsString := Copy( Linha, 1, 8 );
    DMMigra.SC1.FieldByName( 'PARTNO').AsString      := Copy( Linha,14,16 );
    DMMigra.SC1.FieldByName( 'DESCRICAOINGLES').AsString    := Copy( Linha,31,16 );
    DMMigra.SC1.FieldByName( 'VLRFOB').AsFloat         := StrToFloat( sPrice );
    DMMigra.SC1.FieldByName( 'VLRCONSERTO').asFloat        := StrToFloat( sRepair );
    DMMigra.SC1.FieldByName( 'MODELOID').AsString       := Copy( Linha,76,16 );
    DMMigra.SC1.Post;

    if x > 100 then
       begin
        DMMigra.SC1.ApplyUpdates(-1);
        x := 0;
       end;
   end;

   DMMigra.SC1.ApplyUpdates(-1);

   MessageDlg('Importação concluida com sucesso!', mtInformation, [mbOk], 0);

   DMMigra.SC1.Close;

  except on
   E : Exception do
   raise Exception.Create( e.Message + ' Item ' + IntToStr( x ) );
  end;

 finally
  Screen.Cursor :=  crDefault;
//  FreeAndNil( cds );
  CloseFile( F );
 end;
end;

procedure TfrmMigra.sbMunicipioIBGEClick(Sender: TObject);
var x : Integer;
    F : TextFile;
    cds : TClientDataSet;
    Linha : WideString;
begin
 Screen.Cursor := crHourGlass;
 x := 0;

 AssignFile( F , mktImpPrecoJapao.Text );
 Reset( F );

 cds := TClientDataSet.Create( Nil );

 try
  cds.FieldDefs.Add( 'MUNICIPIOIBGEID', ftInteger,0,true );
  cds.FieldDefs.Add( 'DESCRICAO', ftString,100,true );
  cds.FieldDefs.Add( 'USUARIO', ftString,20,true );
  cds.CreateDataSet;

  if Length( mktImpPrecoJapao.Text ) = 0 then
     raise Exception.Create('Arquivo não selecionado !');

//  dmEF.cdsMunicipioIBGE.Open;
  ReadLn( F , Linha );
  while not Eof( F ) do
  begin
   Inc( x );
   ReadLn( F , Linha );

//   sMunicipio := UpperCase( RemoverAcentos( Copy( Linha, 9,100 ) ) );
//
//   dmEF.cdsMunicipioIBGE.InsertRecord( [Copy( Linha, 1, 7 ),
//                                        sMunicipio,
//                                        Nil ] );
   if x > 100 then
      begin
//       dmEF.cdsMunicipioIBGE.ApplyUpdates(-1);
       x := 0;
      end;
  end;

//  dmEF.cdsMunicipioIBGE.ApplyUpdates(-1);

  MessageDlg('Importação concluida com sucesso!', mtInformation, [mbOk], 0);

  cds.Close;
 finally
  Screen.Cursor :=  crDefault;
  FreeAndNil( cds );
  CloseFile( F );
 end;
end;

procedure TfrmMigra.SiglaNatureza;
begin
  with DMMigra do begin
    Qr2.SQL.Text    := 'SELECT DISTINCT DESCRICAO_RESUMIDA ' +
                       ' FROM NAT_OPERACAO ' +
                       ' WHERE DESCRICAO_RESUMIDA IS NOT NULL ';
    Sc1.CommandText := 'SELECT * FROM EF_SIGLANATUREZA';
    Qr2.Open;
    Sc1.Open;
    Qr2.First;
    Pb1.Max := Qr2.RecordCount;
    while Not Qr2.Eof do
    begin
      Qr1.SQL.Text    := 'SELECT DISTINCT NATUREZA_OPERACAO ' +
                         ' FROM NAT_OPERACAO ' +
                         ' WHERE DESCRICAO_RESUMIDA IS NOT NULL ' +
                         ' AND DESCRICAO_RESUMIDA = ''' + Qr2.FieldByName('DESCRICAO_RESUMIDA').AsString + '''';
      Qr1.Open;
      Sc1.Insert;
      Sc1.FieldByName('SIGLANATUREZAID').Value    := Valor( 'EF_SQ_SIGLANATUREZAID' );
      Sc1.FieldByName('DESCRICAORESUMIDA').Value  := Qr2.FieldByName('DESCRICAO_RESUMIDA').Value;
      Sc1.FieldByName('DESCRICAO').Value          := Qr1.FieldByName('NATUREZA_OPERACAO').Value;
      Sc1.Post;
      Qr2.Next;
      Pb1.StepIt;
    end;
    if Sc1.ChangeCount > 0 then
       Sc1.ApplyUpdates(-1);
    Qr2.Close;
    Sc1.Close;
  end;
end;

procedure TfrmMigra.SubGrupo;
begin
  with DMMigra do begin
    Tb1.TableName   := 'SUB_GRUPO';
    Sc1.CommandText := 'SELECT * FROM EF_SUBGRUPO';
    Tb1.Open;
    Sc1.Open;
    Tb1.First;
    Pb1.Max := Tb1.RecordCount;
    while Not Tb1.Eof do
    begin
      Sc1.Insert;
      Sc1.FieldByName('SUBGRUPOID').Value := Tb1.FieldByName('CODIGO').Value;
      if Tb1.FieldByName('SUB_GRUPO').Value = 'APA' then
         Sc1.FieldByName('TIPO').Value := 'A'
      else
         Sc1.FieldByName('TIPO').Value := 'C';

      Sc1.FieldByName('SIGLAGRUPO').Value := Tb1.FieldByName('SUB_GRUPO').Value;
      Sc1.FieldByName('DESCRICAO').Value  := Tb1.FieldByName('DESCRICAO').Value;
      Sc1.Post;
      Tb1.Next;
      Pb1.StepIt;
    end;
    if Sc1.ChangeCount > 0 then
       Sc1.ApplyUpdates(-1);
    Tb1.Close;
    Sc1.Close;
  end;
end;

procedure TfrmMigra.TecWin;
begin
  with DMMigra do begin
    Tb1.TableName   := 'TECWIN';
    Sc1.CommandText := 'SELECT * FROM EF_TECWIN';
    Tb1.Open;
    Sc1.Open;
    Tb1.First;
    Pb1.Max := Tb1.RecordCount;
    while Not Tb1.Eof do
    begin
      Sc1.Insert;
      Sc1.FieldByName('NCMID').Value       := Tb1.FieldByName('CODIGO_NCM').Value;
      Sc1.FieldByName('DESCRICAO').Value   := Tb1.FieldByName('DESCRICAO').Value;
      Sc1.FieldByName('ALIQUOTAII').Value  := Tb1.FieldByName('ALIQUOTA_II').Value;
      Sc1.FieldByName('ALIQUOTAIPI').Value := Tb1.FieldByName('ALIQUOTA_IPI').Value;

      if Not Tb1.FieldByName('ISENTO').IsNull then
      begin
        if Tb1.FieldByName('ISENTO').Value then Sc1.FieldByName('ISENTOIPI').Value := 1
        else Sc1.FieldByName('ISENTOIPI').Value := 0;
      end
      else Sc1.FieldByName('ISENTOIPI').Value   := 0;

      Sc1.FieldByName('NUMTRIBISENTO').Value    := Tb1.FieldByName('SIT_TRIB_ISENTO').Value;
      Sc1.FieldByName('ARTIGOISENTO').Value     := Tb1.FieldByName('ARTIGO_ISENTO').Value;

      if Not Tb1.FieldByName('SUSPENSAO').IsNull then
      begin
        if Tb1.FieldByName('SUSPENSAO').Value then Sc1.FieldByName('SUSPENSAOIPI').Value := 1
        else Sc1.FieldByName('SUSPENSAOIPI').Value := 0;
      end
      else Sc1.FieldByName('SUSPENSAO').Value := 0;

      Sc1.FieldByName('NUMTRIBSUSPENSAO').Value := Tb1.FieldByName('SIT_TRIB_SUSPENSAO').Value;
      Sc1.FieldByName('ARTIGOSUSPENSAO').Value  := Tb1.FieldByName('ARTIGO_SUSPENSAO').Value;

      if Not Tb1.FieldByName('TRIBUTADO').IsNull then
      begin
        if Tb1.FieldByName('TRIBUTADO').Value then Sc1.FieldByName('TRIBUTADO').Value := 1
        else Sc1.FieldByName('TRIBUTADO').Value := 0;
      end
      else Sc1.FieldByName('TRIBUTADO').Value := 0;

      Sc1.FieldByName('NUMTRIBTRIBUTADO').Value    := Tb1.FieldByName('SIT_TRIB_TRIBUTADO').Value;
      Sc1.FieldByName('ARTIGOTRIBUTADO').Value     := Tb1.FieldByName('ARTIGO_TRIBUTADO').Value;
      Sc1.FieldByName('NUMTRIBNAOTRIBUTADO').Value := Tb1.FieldByName('SIT_TRIB_NAO_TRIB').Value;
      Sc1.FieldByName('ARTIGONAOTRIBUTADO').Value  := Tb1.FieldByName('ARTIGO_NAO_TRIB').Value;
      Sc1.FieldByName('DATAINICIALIPI').Value      := Tb1.FieldByName('DATA_INICIAL_IPI').Value;
      Sc1.FieldByName('DATAFINALIPI').Value        := Tb1.FieldByName('DATA_FINAL_IPI').Value;
      Sc1.FieldByName('DATAINICIALII').Value       := Tb1.FieldByName('DATA_INICIAL_II').Value;
      Sc1.FieldByName('DATAFINALII').Value         := Tb1.FieldByName('DATA_FINAL_II').Value;
      Sc1.FieldByName('ALIQUOTATEMPIPI').Value     := Tb1.FieldByName('ALIQ_TMP_IPI').Value;
      Sc1.FieldByName('ALIQUOTATEMPII').Value      := Tb1.FieldByName('ALIQ_TMP_II').Value;
      Sc1.Post;
      if Sc1.ChangeCount >= 500 then
         Sc1.ApplyUpdates(-1);
      Tb1.Next;
      Pb1.StepIt;
    end;
    if Sc1.ChangeCount > 0 then
       Sc1.ApplyUpdates(-1);
    Tb1.Close;
    Sc1.Close;
  end;
end;

procedure TfrmMigra.Uf;
begin
  with DMMigra do begin
    Tb1.TableName   := 'UNIDADE_FED';
    Sc1.CommandText := 'SELECT * FROM EF_UF';
    Tb1.Open;
    Sc1.Open;
    Tb1.First;
    Pb1.Max := Tb1.RecordCount;
    while Not Tb1.Eof do
    begin
      Sc1.Insert;
      Sc1.FieldByName('SIGLAUFID').Value := Tb1.FieldByName('SIGLA').Value;
      Sc1.FieldByName('DESCRICAO').Value := Tb1.FieldByName('DESCRICAO').Value;
      if Tb1.FieldByName('INTERNACIONAL').Value = 'N' then
         Sc1.FieldByName('INTERNACIONAL').Value := 0
      else
         Sc1.FieldByName('INTERNACIONAL').Value       := 1;
      Sc1.FieldByName('ALIQUOTAICMSCONTRIB').Value    := Tb1.FieldByName('ALIQUOTA_ICMS').Value;
      Sc1.FieldByName('ALIQUOTAICMSNAOCONTRIB').Value := Tb1.FieldByName('ICMS_OUTROS_UF').Value;
      Sc1.Post;
      Tb1.Next;
      Pb1.StepIt;
    end;

    Sc1.ApplyUpdates(-1);
    Tb1.Close;
    Sc1.Close;
  end;
end;

procedure TfrmMigra.Unidade;
begin
  with DMMigra do begin
    Tb1.TableName   := 'UNIDADE';
    Sc1.CommandText := 'SELECT * FROM EF_UNIDADE';
    Tb1.Open;
    Sc1.Open;
    Tb1.First;
    Pb1.Max := Tb1.RecordCount;
    while Not Tb1.Eof do
    begin
      Sc1.Insert;
      Sc1.FieldByName('UNIDADEID').Value := Tb1.FieldByName('UNIDADE').Value;
      Sc1.FieldByName('DESCRICAO').Value := Tb1.FieldByName('DESCRICAO').Value;
      Sc1.Post;
      if Sc1.ChangeCount >= 50 then
         Sc1.ApplyUpdates(-1);
      Tb1.Next;
      Pb1.StepIt;
    end;
    if Sc1.ChangeCount > 0 then
       Sc1.ApplyUpdates(-1);
    Tb1.Close;
    Sc1.Close;
  end;
end;

procedure TfrmMigra.Kardex;
var i : Integer;
begin
 with DMMigra do
 begin
   Tb1.TableName   := 'KARDEX';
   Sc1.CommandText := 'SELECT * FROM EF_KARDEX';
   Sc1.Open;
   for i := 1 to 13 do
   begin
     dbMigra.Connected := False;
     dbMigra.AliasName := 'EST_FAT_EMPRESA_' + FormatFloat( '000', i );
     dbMigra.Connected := True;
     Tb1.Open;
     Tb1.First;
     Pb1.Max := Tb1.RecordCount;
     while Not Tb1.Eof do
     begin
       Sc1.Insert;
       Sc1.FieldByName('EMPRESAID').Value         := i;
       Sc1.FieldByName('KARDEXID').Value          := Tb1.FieldByName('NUMERO_REGISTRO').Value;
       Sc1.FieldByName('DATAOCORRENCIA').Value    := Tb1.FieldByName('DATA_OCORRENCIA').Value;
       Sc1.FieldByName('NUMDOCUMENTO').Value      := Tb1.FieldByName('NUMERO_DOCUMENTO').Value;
       Sc1.FieldByName('TIPODOCUMENTO').Value     := Tb1.FieldByName('TIPO_DOCUMENTO').Value;
       Sc1.FieldByName('TIPOESTOQUE').Value       := Tb1.FieldByName('TIPO_ESTOQUE').Value;

       if not Tb1.FieldByName('IDENOS').IsNull then
          Sc1.FieldByName('OSID').Value           := Tb1.FieldByName('IDENOS').Value;

       if Tb1.FieldByName('CODIGO_OPERACAO').Value > 0 then
          Sc1.FieldByName('NATUREZAOPID').Value          := Tb1.FieldByName('CODIGO_OPERACAO').Value;

       Sc1.FieldByName('TIPOOPERACAO').Value          := Tb1.FieldByName('TIPO_OPERACAO').Value;
       Sc1.FieldByName('PRODUTOID').Value             := Tb1.FieldByName('CODIGO_PRODUTO').Value;
       Sc1.FieldByName('QUANTIDADE').Value            := Tb1.FieldByName('QUANTIDADE').Value;
       Sc1.FieldByName('VLRCUSTOUNITARIO').Value      := Tb1.FieldByName('CUSTO_UNITARIO').Value;
       Sc1.FieldByName('VLRCUSTOTOTAL').Value         := Tb1.FieldByName('CUSTO_TOTAL').Value;
       Sc1.FieldByName('QUANTIDADESALDO').Value       := Tb1.FieldByName('SALDO').Value;
       Sc1.FieldByName('VLRCUSTOMEDIO').Value         := Tb1.FieldByName('PRECO_MEDIO').Value;
       Sc1.FieldByName('VLRCUSTOMEDIOTOTAL').Value    := Tb1.FieldByName('PRECO_MEDIO').Value * Tb1.FieldByName('SALDO').Value;
       Sc1.FieldByName('VLRCUSTOMEDIOANTERIOR').Value := Tb1.FieldByName('PRECO_MEDIO_OLD').Value;
       Sc1.FieldByName('ESTOQUEFISICO').Value         := Tb1.FieldByName('ESTOQUE_FISICO').Value;
       Sc1.FieldByName('ESTOQUEPEDENTRADA').Value     := Tb1.FieldByName('ESTOQUE_ENTRADA').Value;
       Sc1.FieldByName('ESTOQUEPEDSAIDA').Value       := Tb1.FieldByName('ESTOQUE_SAIDA').Value;
       Sc1.FieldByName('ESTOQUEEMTERCEIRO').Value     := Tb1.FieldByName('ESTOQUE_EM_TERC').Value;
       Sc1.FieldByName('ESTOQUEDETERCEIRO').Value     := Tb1.FieldByName('ESTOQUE_DE_TERC').Value;
       Sc1.FieldByName('ESTOQUEVALE').Value           := Tb1.FieldByName('ESTOQUE_VALE').Value;
       Sc1.Post;
       if Sc1.ChangeCount >= 500 then
          Sc1.ApplyUpdates(-1);

       Tb1.Next;
       Pb1.StepIt;
     end;
     if Sc1.ChangeCount > 0 then
        Sc1.ApplyUpdates(-1);
     Tb1.Close;
   end;
   Sc1.Close;
 end;

end;

procedure TfrmMigra.Nf3;
var sqlEntidade,DataEmissaoId, Cep : String;
    cdsEntidade,cdsNFE  : TClientDataSet;
    i, Cont, qtdMigrados,qtdDuplicidade : Integer;
    Aliquota             : Extended;
begin
 qtdMigrados    := 0;
 qtdDuplicidade := 0;
 sqlEntidade := 'SELECT ENTIDADEID, NOME FROM EF_ENTIDADE';
 ExecDDL( -1, sqlEntidade, cdsEntidade );
 cdsEntidade.AddIndex( 'idx1','ENTIDADEID',[ixPrimary],'','',0);
 cdsEntidade.IndexName := 'idx1';

 cdsNFE := TClientDataSet.Create( Self );
 cdsNFE.FieldDefs.Add( 'EMPRESAID',ftInteger, 0 );
 cdsNFE.FieldDefs.Add( 'NFEID',ftInteger, 0 );
 cdsNFE.FieldDefs.Add( 'DATAEMISSAOID',ftDate, 0 );
 cdsNFE.FieldDefs.Add( 'ENTIDADEID',ftInteger, 0 );
 cdsNFE.CreateDataSet;
 cdsNFE.AddIndex( 'idx1','EMPRESAID;NFEID;DATAEMISSAOID;ENTIDADEID',[ixPrimary],'','',0);
 cdsNFE.IndexName := 'idx1';

 Cont := 0;
 try
  // Corrigir as constraints com problemas desta tabela
  with DMMigra do
  begin
   ExecQry( 'ALTER TABLE EF_NFE DISABLE CONSTRAINTS Fk_EF_NFE_OsId' );
   Sc1.CommandText := 'SELECT * FROM EF_NFE';
   Sc1.Open;
   Sc1.AddIndex( 'idx1','EMPRESAID;NFEID;DATAEMISSAOID;ENTIDADEID',[ixPrimary],'','',0);
   Sc1.IndexName := 'idx1';

   Sc2.CommandText := 'SELECT * FROM EF_NFEITEM';
   sC2.Open;

   tbMaster.TableName  := 'NF3';
   tbDetails.TableName := 'ITEM_NF3';
   for i := 1 to 13 do
   begin
    dbMigra.Connected := False;
    dbMigra.AliasName := 'EST_FAT_EMPRESA_' + FormatFloat( '000', i );
    dbMigra.Connected := True;

    tbDetails.IndexFieldNames := 'NUMERO_SEQ';
    tbDetails.MasterSource := dsMaster;
    tbDetails.MasterFields := 'NUMERO_SEQ';
    tbMaster.Open;
    tbDetails.Open;
    tbMaster.First;
    Pb1.Max := tbMaster.RecordCount;
    while Not tbMaster.Eof do
    begin
     while Length( tbMaster.FieldByName('NUMERO_NOTA').AsString ) > 8  do
     begin
      wwrichtxtLOG.Lines.Add('NF3ID Maior que 8 '+ tbMaster.FieldByName('NUMERO_NOTA').AsString );
      Sc1.Cancel;
      tbMaster.Next;
      Continue;
     end;

     Sc1.Insert;
     Sc1.FieldByName('EMPRESAID').Value      := i;
     Sc1.FieldByName('NFEID').Value          := tbMaster.FieldByName('NUMERO_NOTA').Value;

     if Not tbMaster.FieldByName('DATA_EMISSAO').IsNull then
        DataEmissaoId  := tbMaster.FieldByName('DATA_EMISSAO').AsString
     else
        DataEmissaoId  := tbMaster.FieldByName('DATA_ENTRADA').AsString;

     Sc1.FieldByName('DATAEMISSAOID').Value      := StrToDate( DataEmissaoId );

     if Not tbMaster.FieldByName('SERIE_SUB').IsNull then
        Sc1.FieldByName('SERIE').Value := tbMaster.FieldByName('SERIE_SUB').Value
     else
        Sc1.FieldByName('SERIE').Value := '3';

     Sc1.FieldByName('DATAENTRADA').Value    := tbMaster.FieldByName('DATA_ENTRADA').Value;

     if Not tbMaster.FieldByName('CANCELADA').IsNull then
     begin
       if tbMaster.FieldByName('CANCELADA').Value then Sc1.FieldByName('CANCELADA').Value := 1
       else Sc1.FieldByName('CANCELADA').Value := 0;
     end
     else Sc1.FieldByName('CANCELADA').Value := 0;

     if Not tbMaster.FieldByName('EXPORTADO').IsNull then
     begin
       if tbMaster.FieldByName('EXPORTADO').Value then Sc1.FieldByName('EXPORTADO').Value := 1
       else Sc1.FieldByName('EXPORTADO').Value := 0;
     end
     else Sc1.FieldByName('EXPORTADO').Value := 0;

     Sc1.FieldByName('OSID').Value             := tbMaster.FieldByName('NUMERO_OS').Value;
     Sc1.FieldByName('NFSID').Value            := tbMaster.FieldByName('NUMERO_NOTA_SAIDA').Value;
     Sc1.FieldByName('DATAEMISSAONFSID').Value := tbMaster.FieldByName('DATA_NOTA_SAIDA').Value;
     Sc1.FieldByName('TIPONOTA').Value         := 'F';

     if Not tbMaster.FieldByName('ALIQUOTA_ICM').IsNull then
        Aliquota := tbMaster.FieldByName('ALIQUOTA_ICM').Value
     else
        Aliquota := 0;

     if      UpperCase( tbMaster.FieldByName('TIPO_DESTIN').Value ) = 'C' then
             begin
              Sc1.FieldByName('CATEGORIAID').Value := 1;
              Sc1.FieldByName('ENTIDADEID').Value := tbMaster.FieldByName('CODIGO_DESTIN').Value;
             end
     else if UpperCase( tbMaster.FieldByName('TIPO_DESTIN').Value ) = 'F' then
             begin
              Sc1.FieldByName('CATEGORIAID').Value := 2;
              Sc1.FieldByName('ENTIDADEID').Value  := 20000 + tbMaster.FieldByName('CODIGO_DESTIN').Value;
             end
     else if UpperCase( tbMaster.FieldByName('TIPO_DESTIN').Value ) = 'U' then
             begin
              Sc1.FieldByName('CATEGORIAID').Value := 5;
              Sc1.FieldByName('ENTIDADEID').Value  := 50000 + tbMaster.FieldByName('CODIGO_DESTIN').Value;
             end;

     if tbMaster.FieldByName('NOME_NOTA').IsNull then
        begin
         if cdsEntidade.FindKey([Sc1.FieldByName('ENTIDADEID').Value] ) then
            Sc1.FieldByName('NOME').Value          := cdsEntidade.FieldByName('NOME').Value;
        end
     else
        Sc1.FieldByName('NOME').Value     := tbMaster.FieldByName('NOME_NOTA').Value;

     Cep := Copy( TransfNum( tbMaster.FieldByName('CEP_NOTA').AsString ), 1, 8 );
     if Cep <> '' then
        Sc1.FieldByName('CEPID').Value     := StrToInt( Cep );

     Sc1.FieldByName('ENDERECO').Value  := tbMaster.FieldByName('ENDERECO_NOTA').Value;
     Sc1.FieldByName('CIDADE').Value    := tbMaster.FieldByName('CIDADE_NOTA').Value;
     Sc1.FieldByName('SIGLAUFID').Value := tbMaster.FieldByName('ESTADO_NOTA').Value;
     Sc1.FieldByName('PAIS').Value      := tbMaster.FieldByName('PAIS_NOTA').Value;

     if Not tbMaster.FieldByName('ICMS_NOTA').IsNull then
        begin
         if tbMaster.FieldByName('ICMS_NOTA').Value then
            Sc1.FieldByName('CONTRIBUINTEICMS').Value := 1
         else Sc1.FieldByName('CONTRIBUINTEICMS').Value := 0;
        end
     else Sc1.FieldByName('CONTRIBUINTEICMS').Value := 0;

     Sc1.FieldByName('NATUREZAOPID').Value        := tbMaster.FieldByName('CODIGO_OPERACAO').Value;

     if Not ( tbMaster.FieldByName('CODIGO_OBS').IsNull ) and ( tbMaster.FieldByName('CODIGO_OBS').AsInteger <> 0 ) then
        Sc1.FieldByName('OBSERVACAOID').Value     := tbMaster.FieldByName('CODIGO_OBS').Value;

     if Not ( tbMaster.FieldByName('CODIGO_OBS').IsNull ) then
        Sc1.FieldByName('DESCRICAOOBSERVACAO').Value := tbMaster.FieldByName('OBS').Value;

     if not tbMaster.FieldByName('CODIGO_TRANSP').IsNull then
        if cdsEntidade.FindKey([(40000 + tbMaster.FieldByName('CODIGO_TRANSP').AsInteger )] ) then
           Sc1.FieldByName('TRANSPORTADORID').Value := 40000 + tbMaster.FieldByName('CODIGO_TRANSP').AsInteger;

     Sc1.FieldByName('PLACAVEICULO').Value        := tbMaster.FieldByName('PLACA_VEICULO').Value;
     Sc1.FieldByName('MODALIDADEFRETE').Value     := tbMaster.FieldByName('RESPONSAVEL_FRETE').Value;
     Sc1.FieldByName('VLRFRETE').Value            := tbMaster.FieldByName('VALOR_FRETE').Value;
     Sc1.FieldByName('VLRSEGURO').Value           := tbMaster.FieldByName('VALOR_SEGURO').Value;
     Sc1.FieldByName('VLRDESPESAACESSORIA').Value := tbMaster.FieldByName('DESPESA_ACESS').Value;
     Sc1.FieldByName('EMBQTDVOLUMES').Value       := tbMaster.FieldByName('EMB_QUANTIDADE').Value;
     Sc1.FieldByName('EMBNUMERO').Value           := tbMaster.FieldByName('EMB_NUMERO').Value;
     Sc1.FieldByName('EMBMARCA').Value            := tbMaster.FieldByName('EMB_MARCA').Value;
     Sc1.FieldByName('EMBESPECIE').Value          := tbMaster.FieldByName('EMB_ESPECIE').Value;
     Sc1.FieldByName('EMBPESOBRUTO').Value        := tbMaster.FieldByName('EMB_PESO_BRUTO').Value;
     Sc1.FieldByName('EMBPESOLIQUIDO').Value      := tbMaster.FieldByName('EMB_PESO_LIQUIDO').Value;
     Sc1.FieldByName('VLRTOTALCOFINS').Value      := tbMaster.FieldByName('TOTAL_COFINS').Value;
     Sc1.FieldByName('VLRTOTALPIS').Value         := tbMaster.FieldByName('TOTAL_PIS').Value;
     Sc1.FieldByName('VLRTOTALBASEICMS').Value    := tbMaster.FieldByName('TOTAL_BASE_ICMS').Value;
     Sc1.FieldByName('VLRTOTALICMS').Value        := tbMaster.FieldByName('TOTAL_ICMS').Value;
     Sc1.FieldByName('VLRTOTALISENTASICMS').Value := tbMaster.FieldByName('TOTAL_ISENTAS_ICMS').Value;
     Sc1.FieldByName('VLRTOTALOUTRASICMS').Value  := tbMaster.FieldByName('TOTAL_OUTRAS_ICMS').Value;
     Sc1.FieldByName('VLRTOTALBASEIPI').Value     := tbMaster.FieldByName('TOTAL_BASE_IPI').Value;
     Sc1.FieldByName('VLRTOTALIPI').Value         := tbMaster.FieldByName('TOTAL_IPI').Value;
     Sc1.FieldByName('VLRTOTALISENTASIPI').Value  := tbMaster.FieldByName('TOTAL_ISENTAS_IPI').Value;
     Sc1.FieldByName('VLRTOTALOUTRASIPI').Value   := tbMaster.FieldByName('TOTAL_OUTRAS_IPI').Value;
     Sc1.FieldByName('VLRTOTALPRODUTO').Value     := tbMaster.FieldByName('TOTAL_PRODUTO').Value;
     Sc1.FieldByName('VLRTOTALNOTA').Value        := tbMaster.FieldByName('TOTAL_NOTA').Value;
     Sc1.FieldByName('VLRTOTALCREDCOFINS').Value  := tbMaster.FieldByName('TOTAL_CRED_COFINS').Value;
     Sc1.FieldByName('VLRTOTALCREDPIS').Value     := tbMaster.FieldByName('TOTAL_CRED_PIS').Value;
     Sc1.FieldByName('USUARIO').Value             := tbMaster.FieldByName('USUARIO').Value;
     Inc( qtdMigrados );

     if not cdsNFE.FindKey([IntToStr( i ),tbMaster.FieldByName('NUMERO_NOTA').Value, DATAEMISSAOID, Sc1.FieldByName('ENTIDADEID').AsInteger ]) then
     begin
      Pb1.StepIt;
      Sc1.Post;
      Sc1.ApplyUpdates(-1);
      cdsNFE.InsertRecord([IntToStr( i ),tbMaster.FieldByName('NUMERO_NOTA').Value, DATAEMISSAOID, Sc1.FieldByName('ENTIDADEID').AsInteger ]);
     end;

     tbDetails.First;
     while Not ( tbDetails.Eof ) do
     begin
      Inc( Cont );
      Sc2.Insert;
      Sc2.FieldByName('EMPRESAID').Value        := i;
      Sc2.FieldByName('NFEID').Value            := tbMaster.FieldByName('NUMERO_NOTA').Value;
      Sc2.FieldByName('DATAEMISSAOID').Value    := StrToDate( DataEmissaoId );
      Sc2.FieldByName('ENTIDADEID').Value       := cdsNFE.FieldByName('ENTIDADEID').Value;
      Sc2.FieldByName('ITEMID').Value           := Cont;
      Sc2.FieldByName('PRODUTOID').Value        := tbDetails.FieldByName('CODIGO_PRODUTO').Value;
      Sc2.FieldByName('DESCRICAOPRODUTO').Value := tbDetails.FieldByName('DESCRICAO').Value;
      Sc2.FieldByName('QUANTIDADE').Value       := tbDetails.FieldByName('QUANTIDADE').Value;
      Sc2.FieldByName('VLRPRECOUNITARIO').Value := tbDetails.FieldByName('VALOR_UNITARIO').Value;
      Sc2.FieldByName('VLRPRECOTOTAL').Value    := tbDetails.FieldByName('VALOR_TOTAL').Value;

      if Not tbDetails.FieldByName('EMPENHO').IsNull then
      begin
        if tbDetails.FieldByName('EMPENHO').Value then
           Sc2.FieldByName('EMPENHO').Value := 1
        else Sc2.FieldByName('EMPENHO').Value := 0;
      end
      else Sc2.FieldByName('EMPENHO').Value := 0;

      Sc2.FieldByName('QTDEMPENHO').Value := tbDetails.FieldByName('QTD_EMPENHADA').Value;

      if Not tbDetails.FieldByName('RETORNO').IsNull then
         Sc2.FieldByName('RETORNO').Value := tbDetails.FieldByName('RETORNO').Value;

      Sc2.FieldByName('QTDRETORNA').Value            := tbDetails.FieldByName('QTD_RETORNAR').Value;
      Sc2.FieldByName('VLRBASEICMS').Value           := tbDetails.FieldByName('BASE_ICMS').Value;
      Sc2.FieldByName('ALIQUOTAICMS').Value          := Aliquota;
      Sc2.FieldByName('VLRICMS').Value               := tbDetails.FieldByName('VALOR_ICMS').Value;
      Sc2.FieldByName('VLRISENTASICMS').Value        := tbDetails.FieldByName('ISENTAS_ICMS').Value;
      Sc2.FieldByName('VLROUTRASICMS').Value         := tbDetails.FieldByName('OUTRAS_ICMS').Value;
      Sc2.FieldByName('PORCREDUCAOICMS').Value       := tbDetails.FieldByName('REDUCAO_ICMS').Value;
      Sc2.FieldByName('SITTRIBUTARIAESTADUAL').Value := tbDetails.FieldByName('SIT_TRIB_ESTADUAL').Value;
      Sc2.FieldByName('ALIQUOTACOFINS').Value        := tbDetails.FieldByName('ALIQUOTA_COFINS').Value;
      Sc2.FieldByName('VLRCOFINS').Value             := tbDetails.FieldByName('VALOR_COFINS').Value;
      Sc2.FieldByName('ALIQUOTAPIS').Value           := tbDetails.FieldByName('ALIQUOTA_PIS').Value;
      Sc2.FieldByName('VLRPIS').Value                := tbDetails.FieldByName('VALOR_PIS').Value;
      Sc2.FieldByName('VLRBASEIPI').Value            := tbDetails.FieldByName('BASE_IPI').Value;
      Sc2.FieldByName('ALIQUOTAIPI').Value           := tbDetails.FieldByName('ALIQUOTA_IPI').Value;
      Sc2.FieldByName('VLRIPI').Value                := tbDetails.FieldByName('VALOR_IPI').Value;
      Sc2.FieldByName('VLRISENTASIPI').Value         := tbDetails.FieldByName('ISENTAS_IPI').Value;
      Sc2.FieldByName('VLROUTRASIPI').Value          := tbDetails.FieldByName('OUTRAS_IPI').Value;

      if Not tbDetails.FieldByName('TIPO_IPI').IsNull then
         Sc2.FieldByName('TIPOIPI').Value := tbDetails.FieldByName('TIPO_IPI').Value;

      Sc2.FieldByName('SITTRIBUTARIAFEDERAL').Value := tbDetails.FieldByName('SIT_TRIB_FEDERAL').Value;
      Sc2.FieldByName('ARTIGO').Value               := tbDetails.FieldByName('ARTIGO').Value;

      if not tbDetails.FieldByName('DATA_INICIAL').IsNull then
         Sc2.FieldByName('DATAINICIALIPI').Value       := tbDetails.FieldByName('DATA_INICIAL').Value;

      if not tbDetails.FieldByName('DATA_FINAL').IsNull then
         Sc2.FieldByName('DATAFINALIPI').Value         := tbDetails.FieldByName('DATA_FINAL').Value;

      if Not tbDetails.FieldByName('PROD_INCENTIVADO').IsNull then
      begin
        if tbDetails.FieldByName('PROD_INCENTIVADO').Value then
           Sc2.FieldByName('PRODINCENTIVADO').Value := 1
        else Sc2.FieldByName('PRODINCENTIVADO').Value := 0;
      end
      else Sc2.FieldByName('PRODINCENTIVADO').Value := 0;

      Sc2.FieldByName('VLRCREDCOFINS').Value        := tbDetails.FieldByName('VALOR_CRED_COFINS').Value;
      Sc2.FieldByName('VLRCREDPIS').Value           := tbDetails.FieldByName('VALOR_CRED_PIS').Value;
      Sc2.Post;
      Sc2.ApplyUpdates(-1);
      tbDetails.Next;
     end;

     if cdsNFE.FindKey([IntToStr( i ),tbMaster.FieldByName('NUMERO_NOTA').Value, DATAEMISSAOID, Sc1.FieldByName('ENTIDADEID').AsInteger ]) then
        begin
         inc( qtdDuplicidade );
         Sc1.Cancel;
         wwrichtxtLOG.Lines.Add( 'Tabela NF3 com problemas de duplicidade, NF3 ID = ' + IntToStr( i ) + ' -' + tbMaster.FieldByName('NUMERO_NOTA').AsString  );
        end;

     tbMaster.Next;
    end;
   StatusBar1.Panels[1].Text := 'Notas: = '+IntToStr( qtdMigrados );
   StatusBar1.Panels[2].Text := 'Notas: = '+IntToStr( qtdDuplicidade );
   tbMaster.Close;
   tbDetails.Close;
  end;
  cdsEntidade.Close;
  Sc1.DeleteIndex( 'idx1' );
  Sc1.Close;
  Sc2.Close;
  cdsNFE.DeleteIndex( 'idx1' );
  cdsNFE.Close;
 end;
 finally
  FreeAndNil( cdsEntidade );
  FreeAndNil( cdsNFE );
 end;
end;

procedure TfrmMigra.Nfe;
var sqlEntidade, Cep : String;
    cdsEntidade : TClientDataSet;
    i   : Integer;
begin
 sqlEntidade := 'SELECT ENTIDADEID, CPFCNPJ FROM EF_ENTIDADE';
 ExecDDL( -1, sqlEntidade, cdsEntidade );
 cdsEntidade.AddIndex( 'idx1','ENTIDADEID',[ixPrimary],'','',0);
 cdsEntidade.IndexName := 'idx1';

 try
  DMMigra.ExecQry( 'ALTER TABLE EF_NFE DISABLE CONSTRAINTS Fk_EF_NFE_OsId' );
  with DMMigra do
  begin
   Tb1.TableName   := 'NFE';
   Sc1.CommandText := 'SELECT * FROM EF_NFE';
   Sc1.Open;
   for i := 1 to 13 do
   begin
     dbMigra.Connected := False;
     dbMigra.AliasName := 'EST_FAT_EMPRESA_' + FormatFloat( '000', i );
     dbMigra.Connected := True;
     Tb1.Open;
     Tb1.First;
     Pb1.Max := Tb1.RecordCount;
     while Not Tb1.Eof do
     begin
         if Tb1.FieldByName('DATA_EMISSAO').IsNull then
            begin
             wwrichtxtLOG.Lines.Add( 'Tabela NFE Fornecedor não migrado corretamente Empresa : ' + IntToStr(i) + 'NFE ID = ' + Tb1.FieldByName('NUMERO_NOTA').AsString + ' Data :' + Tb1.FieldByName('DATA_EMISSAO').AsString );
             Tb1.Next;
             Continue;
            end;

         Sc1.Insert;
         Sc1.FieldByName('EMPRESAID').Value     := i;
         Sc1.FieldByName('NFEID').Value         := Tb1.FieldByName('NUMERO_NOTA').Value;
         Sc1.FieldByName('DATAEMISSAOID').Value := Tb1.FieldByName('DATA_EMISSAO').Value;
//         Sc1.FieldByName('SERIE').Value         := 'S';
         Sc1.FieldByName('DATAENTRADA').Value   := Tb1.FieldByName('DATA_ENTRADA').Value;

         if Not Tb1.FieldByName('CANCELADA').IsNull then
         begin
           if Tb1.FieldByName('CANCELADA').Value then Sc1.FieldByName('CANCELADA').Value := 1
           else Sc1.FieldByName('CANCELADA').Value := 0;
         end
         else Sc1.FieldByName('CANCELADA').Value := 0;

         if Not Tb1.FieldByName('EXPORTADO').IsNull then
         begin
           if Tb1.FieldByName('EXPORTADO').Value then Sc1.FieldByName('EXPORTADO').Value := 1
           else Sc1.FieldByName('EXPORTADO').Value := 0;
         end
         else Sc1.FieldByName('EXPORTADO').Value := 0;

         Sc1.FieldByName('DIID').Value                 := Tb1.FieldByName('NUMERO_DI').Value;
         Sc1.FieldByName('DESCRICAOIMPORTACAO').Value  := Tb1.FieldByName('DESCRICAO_IMP').Value;
         Sc1.FieldByName('OSID').Value                 := Tb1.FieldByName('NUMERO_OS').Value;

         if Not Tb1.FieldByName('IMPRESSO').IsNull then
         begin
           if Tb1.FieldByName('IMPRESSO').Value then Sc1.FieldByName('CREDITARICMS').Value := 1
           else Sc1.FieldByName('CREDITARICMS').Value := 0;
         end
         else Sc1.FieldByName('CREDITARICMS').Value := 0;

         if Not Tb1.FieldByName('LIBERACAO').IsNull then
         begin
           if Tb1.FieldByName('LIBERACAO').Value then Sc1.FieldByName('LIBCHEFIA').Value := 1
           else Sc1.FieldByName('LIBCHEFIA').Value := 0;
         end
         else Sc1.FieldByName('LIBCHEFIA').Value := 0;

         Sc1.FieldByName('LIBCHEFIANOME').Value  := Tb1.FieldByName('NOME_1').Value;
         Sc1.FieldByName('LIBCHEFIADATA').Value  := Tb1.FieldByName('DATA_1').Value;

         if Not Tb1.FieldByName('LIBERA_FIN').IsNull then
         begin
           if Tb1.FieldByName('LIBERA_FIN').Value then Sc1.FieldByName('LIBFINANCEIRO').Value := 1
           else Sc1.FieldByName('LIBFINANCEIRO').Value := 0;
         end
         else Sc1.FieldByName('LIBFINANCEIRO').Value   := 0;

         Sc1.FieldByName('LIBFINANCEIRONOME').Value := Tb1.FieldByName('NOME_2').Value;
         Sc1.FieldByName('LIBFINANCEIRODATA').Value := Tb1.FieldByName('DATA_2').Value;

         if Not Tb1.FieldByName('LIBERA_CTB').IsNull then
         begin
           if Tb1.FieldByName('LIBERA_CTB').Value then Sc1.FieldByName('LIBCONTABIL').Value := 1
           else Sc1.FieldByName('LIBCONTABIL').Value := 0;
         end
         else Sc1.FieldByName('LIBCONTABIL').Value := 0;

         Sc1.FieldByName('LIBCONTABILNOME').Value := Tb1.FieldByName('NOME_3').Value;
         Sc1.FieldByName('LIBCONTABILDATA').Value := Tb1.FieldByName('DATA_3').Value;

         Sc1.FieldByName('PDEID').Value            := Tb1.FieldByName('NUMERO_PEDIDO').Value;
         Sc1.FieldByName('DATAPEDIDO').Value       := Tb1.FieldByName('DATA_PEDIDO').Value;
         Sc1.FieldByName('REQUISITANTE').Value     := Tb1.FieldByName('REQUISITANTE').Value;
         Sc1.FieldByName('NFSID').Value            := Tb1.FieldByName('NUMERO_NOTA_SAIDA').Value;
         Sc1.FieldByName('DATAEMISSAONFSID').Value := Tb1.FieldByName('DATA_NOTA_SAIDA').Value;

         if Tb1.FieldByName('TIPO_NOTA').Value = 'N' then
         begin
           if Tb1.FieldByName('CODIGO_OPERACAO').Value > 33 then
              Sc1.FieldByName('TIPONOTA').Value := 'I'
           else
              Sc1.FieldByName('TIPONOTA').Value := 'C';
         end
         else
           Sc1.FieldByName('TIPONOTA').Value := Tb1.FieldByName('TIPO_NOTA').Value;

         if      UpperCase( Tb1.FieldByName('TIPO_DESTIN').Value ) = 'C' then
                 begin
                  Sc1.FieldByName('CATEGORIAID').Value := 1;
                  Sc1.FieldByName('ENTIDADEID').Value  := Tb1.FieldByName('CODIGO_DESTIN').Value;
                 end
         else if UpperCase( Tb1.FieldByName('TIPO_DESTIN').Value ) = 'F' then
                 begin
                  Sc1.FieldByName('CATEGORIAID').Value := 2;
                  Sc1.FieldByName('ENTIDADEID').Value  := 20000 + Tb1.FieldByName('CODIGO_DESTIN').Value;
                 end
         else if UpperCase( Tb1.FieldByName('TIPO_DESTIN').Value ) = 'U' then
                 begin
                  Sc1.FieldByName('CATEGORIAID').Value := 5;
                  Sc1.FieldByName('ENTIDADEID').Value  := 50000 + Tb1.FieldByName('CODIGO_DESTIN').Value;
                 end;

         Sc1.FieldByName('NOME').Value      := Tb1.FieldByName('NOME_NOTA').Value;

         Cep := Copy( TransfNum( Tb1.FieldByName('CEP_NOTA').AsString ), 1, 8 );

         if Cep <> '' then
            Sc1.FieldByName('CEPID').Value     := StrToInt( Cep );

         Sc1.FieldByName('ENDERECO').Value  := Tb1.FieldByName('ENDERECO_NOTA').Value;
         Sc1.FieldByName('CIDADE').Value    := Tb1.FieldByName('CIDADE_NOTA').Value;
         Sc1.FieldByName('SIGLAUFID').Value := Tb1.FieldByName('ESTADO_NOTA').Value;
         Sc1.FieldByName('PAIS').Value      := Tb1.FieldByName('PAIS_NOTA').Value;

         if Not Tb1.FieldByName('ICMS_NOTA').IsNull then
         begin
           if Tb1.FieldByName('ICMS_NOTA').Value then Sc1.FieldByName('CONTRIBUINTEICMS').Value := 1
           else Sc1.FieldByName('CONTRIBUINTEICMS').Value := 0;
         end
         else Sc1.FieldByName('CONTRIBUINTEICMS').Value := 0;

         Sc1.FieldByName('NATUREZAOPID').Value := Tb1.FieldByName('CODIGO_OPERACAO').Value;

         if Tb1.FieldByName('CODIGO_OBS').Value <> 0 then
            Sc1.FieldByName('OBSERVACAOID').Value := Tb1.FieldByName('CODIGO_OBS').Value;

         Sc1.FieldByName('DESCRICAOOBSERVACAO').Value := Tb1.FieldByName('OBS').Value;

         if not Tb1.FieldByName('CODIGO_TRANSP').IsNull then
            if cdsEntidade.FindKey([(40000 + Tb1.FieldByName('CODIGO_TRANSP').AsInteger )] ) then
               Sc1.FieldByName('TRANSPORTADORID').Value := 40000 + Tb1.FieldByName('CODIGO_TRANSP').AsInteger;

         Sc1.FieldByName('PLACAVEICULO').AsString := Tb1.FieldByName('PLACA_VEICULO').AsString;

         if Not Tb1.FieldByName('RESPONSAVEL_FRETE').IsNull then
            Sc1.FieldByName('MODALIDADEFRETE').Value := Tb1.FieldByName('RESPONSAVEL_FRETE').Value;

         Sc1.FieldByName('VLRFRETE').Value            := Tb1.FieldByName('VALOR_FRETE').Value;
         Sc1.FieldByName('VLRSEGURO').Value           := Tb1.FieldByName('VALOR_SEGURO').Value;
         Sc1.FieldByName('VLRDESPESAACESSORIA').Value := Tb1.FieldByName('DESPESA_ACESS').Value;
         Sc1.FieldByName('EMBQTDVOLUMES').Value       := Tb1.FieldByName('EMB_QUANTIDADE').Value;
         Sc1.FieldByName('EMBNUMERO').Value           := Tb1.FieldByName('EMB_NUMERO').Value;
         Sc1.FieldByName('EMBMARCA').Value            := Tb1.FieldByName('EMB_MARCA').Value;
         Sc1.FieldByName('EMBESPECIE').Value          := Tb1.FieldByName('EMB_ESPECIE').Value;
         Sc1.FieldByName('EMBPESOBRUTO').Value        := Tb1.FieldByName('EMB_PESO_BRUTO').Value;
         Sc1.FieldByName('EMBPESOLIQUIDO').Value      := Tb1.FieldByName('EMB_PESO_LIQUIDO').Value;
         Sc1.FieldByName('VLRTOTALCOFINS').Value      := Tb1.FieldByName('TOTAL_COFINS').Value;
         Sc1.FieldByName('VLRTOTALPIS').Value         := Tb1.FieldByName('TOTAL_PIS').Value;
         Sc1.FieldByName('VLRTOTALBASEICMS').Value    := Tb1.FieldByName('TOTAL_BASE_ICMS').Value;
         Sc1.FieldByName('VLRTOTALICMS').Value        := Tb1.FieldByName('TOTAL_ICMS').Value;
         Sc1.FieldByName('VLRTOTALISENTASICMS').Value := Tb1.FieldByName('TOTAL_ISENTAS_ICMS').Value;
         Sc1.FieldByName('VLRTOTALOUTRASICMS').Value  := Tb1.FieldByName('TOTAL_OUTRAS_ICMS').Value;
         Sc1.FieldByName('VLRTOTALBASEIPI').Value     := Tb1.FieldByName('TOTAL_BASE_IPI').Value;
         Sc1.FieldByName('VLRTOTALIPI').Value         := Tb1.FieldByName('TOTAL_IPI').Value;
         Sc1.FieldByName('VLRTOTALISENTASIPI').Value  := Tb1.FieldByName('TOTAL_ISENTAS_IPI').Value;
         Sc1.FieldByName('VLRTOTALOUTRASIPI').Value   := Tb1.FieldByName('TOTAL_OUTRAS_IPI').Value;
         Sc1.FieldByName('VLRTOTALPRODUTO').Value     := Tb1.FieldByName('TOTAL_PRODUTO').Value;
         Sc1.FieldByName('VLRTOTALNOTA').Value        := Tb1.FieldByName('TOTAL_NOTA').Value;
         Sc1.FieldByName('USUARIO').Value             := Tb1.FieldByName('REQUISITANTE').Value;
         Sc1.Post;
         if Sc1.ChangeCount > 1000 then
            Sc1.ApplyUpdates(-1);
       Tb1.Next;
     end;
     if Sc1.ChangeCount > 0 then
        Sc1.ApplyUpdates(-1);
     Tb1.Close;
     Pb1.StepIt;
   end;
   Sc1.Close;
  end;
  cdsEntidade.Close;
 finally
  FreeAndNil( cdsEntidade );
 end;
end;

procedure TfrmMigra.NfeItem;
var sqlNFE : String;
    cdsNFE : TClientDataSet;
    i, x : Integer;
begin
 sqlNFE := 'SELECT EMPRESAID, NFEID, DATAEMISSAOID, ENTIDADEID, NFSID, DATAEMISSAONFSID FROM EF_NFE';
 ExecDDL( -1, sqlNFE, cdsNFE );
 cdsNFE.AddIndex( 'idx1','EMPRESAID;NFEID;DATAEMISSAOID',[ixPrimary],'','',0);
 cdsNFE.IndexName := 'idx1';

 try
   with DMMigra do begin
    Tb2.TableName    := 'NFE';
    Tb1.TableName    := 'ITEM_NFE';
    Sc1.CommandText := 'SELECT * FROM EF_NFEITEM';
    Sc1.Open;
    for i := 1 to 13 do
    begin
      dbMigra.Connected := False;
      dbMigra.AliasName := 'EST_FAT_EMPRESA_' + FormatFloat( '000', i );
      dbMigra.Connected := True;
      x := 1;
      Tb2.Open;
      Tb1.Open;
      Tb1.First;
      Pb1.Max := Tb1.RecordCount;
      while Not Tb1.Eof do
      begin
       if not cdsNFE.FindKey([IntToStr( i ), Tb1.FieldByName('NUMERO_NOTA').Value, Tb1.FieldByName('DATA_EMISSAO').Value] ) then
          begin
            wwrichtxtLOG.Lines.Add( 'Tabela NFEITEM Empresa : ' + IntToStr(i) + 'NFE ID = ' + Tb1.FieldByName('NUMERO_NOTA').AsString + ' Data :' + Tb1.FieldByName('DATA_EMISSAO').AsString );
            Tb1.Next;
            Continue;
          end;

       Sc1.Insert;
       Sc1.FieldByName('EMPRESAID').Value     := i;
       Sc1.FieldByName('NFEID').Value         := Tb1.FieldByName('NUMERO_NOTA').Value;
       Sc1.FieldByName('DATAEMISSAOID').Value := Tb1.FieldByName('DATA_EMISSAO').Value;

       Inc(x);
       if not Tb1.FieldByName('NUMERO_ITEM').IsNull then
          Sc1.FieldByName('ITEMID').Value        := Tb1.FieldByName('NUMERO_ITEM').Value
       else
          Sc1.FieldByName('ITEMID').Value        := x;

       Sc1.FieldByName('ENTIDADEID').Value    := cdsNFE.FieldByName('ENTIDADEID').Value;
       if Tb1.FieldByName('CODIGO_PRODUTO').Value <> 0 then
          Sc1.FieldByName('PRODUTOID').Value := Tb1.FieldByName('CODIGO_PRODUTO').Value;

       Sc1.FieldByName('DESCRICAOPRODUTO').Value := Tb1.FieldByName('DESCRICAO_PRODUTO').Value;
       Sc1.FieldByName('QUANTIDADE').Value       := Tb1.FieldByName('QUANTIDADE').Value;
       Sc1.FieldByName('VLRPRECOUNITARIO').Value := Tb1.FieldByName('VALOR_UNITARIO').Value;
       Sc1.FieldByName('VLRPRECOTOTAL').Value    := Tb1.FieldByName('VALOR_TOTAL').Value;

       Sc1.FieldByName('NFSID').Value            := cdsNFE.FieldByName('NFSID').Value;
       Sc1.FieldByName('DATAEMISSAONFSID').Value := cdsNFE.FieldByName('DATAEMISSAONFSID').Value;

       if Not Tb1.FieldByName('EMPENHO').IsNull then
       begin
         if Tb1.FieldByName('EMPENHO').Value then Sc1.FieldByName('EMPENHO').Value := 1
         else Sc1.FieldByName('EMPENHO').Value := 0;
       end
       else Sc1.FieldByName('EMPENHO').Value := 0;

       if Not Tb1.FieldByName('RETORNO').IsNull then
          Sc1.FieldByName('RETORNO').Value := Tb1.FieldByName('RETORNO').Value;

       Sc1.FieldByName('QTDRETORNA').Value  := Tb1.FieldByName('QTD_RETORNAR').Value;
       Sc1.FieldByName('VLRBASEICMS').Value := Tb1.FieldByName('BASE_ICMS').Value;

       if Tb2.FindKey([Tb1.FieldByName('NUMERO_NOTA').Value, Tb1.FieldByName('DATA_EMISSAO').Value ]) then
          Sc1.FieldByName('ALIQUOTAICMS').Value := Tb2.FieldByName('ALIQUOTA_ICM').Value
       else
          wwrichtxtLOG.Lines.Add( 'Tabela NFEITEM Não localizado NFE pai para o ICMS Empresa ID: ' + IntToStr(i) + 'NFE ID = ' + Tb1.FieldByName('NUMERO_NOTA').AsString + ' Data :' + Tb1.FieldByName('DATA_EMISSAO').AsString );

       Sc1.FieldByName('VLRICMS').Value               := Tb1.FieldByName('VALOR_ICMS').Value;
       Sc1.FieldByName('VLRISENTASICMS').Value        := Tb1.FieldByName('VALOR_COFINS').Value;
       Sc1.FieldByName('VLROUTRASICMS').Value         := Tb1.FieldByName('OUTRAS_ICMS').Value;
       Sc1.FieldByName('PORCREDUCAOICMS').Value       := Tb1.FieldByName('REDUCAO_ICMS').Value;
       Sc1.FieldByName('SITTRIBUTARIAESTADUAL').Value := Tb1.FieldByName('SIT_TRIB_ESTADUAL').Value;
       Sc1.FieldByName('ALIQUOTACOFINS').Value        := Tb1.FieldByName('ALIQUOTA_COFINS').Value;
       Sc1.FieldByName('VLRCOFINS').Value             := Tb1.FieldByName('VALOR_COFINS').Value;
       Sc1.FieldByName('ALIQUOTAPIS').Value           := Tb1.FieldByName('ALIQUOTA_PIS').Value;
       Sc1.FieldByName('VLRPIS').AsFloat              := Tb1.FieldByName('VALOR_PIS').AsFloat;
       Sc1.FieldByName('VLRBASEIPI').Value            := Tb1.FieldByName('BASE_IPI').Value;
       Sc1.FieldByName('ALIQUOTAIPI').Value           := Tb1.FieldByName('ALIQUOTA_IPI').Value;
       Sc1.FieldByName('VLRIPI').Value                := Tb1.FieldByName('VALOR_IPI').Value;
       Sc1.FieldByName('VLRISENTASIPI').Value         := Tb1.FieldByName('ISENTAS_IPI').Value;
       Sc1.FieldByName('VLROUTRASIPI').Value          := Tb1.FieldByName('OUTRAS_IPI').Value;

       if Not Tb1.FieldByName('TIPO_IPI').IsNull then
          Sc1.FieldByName('TIPOIPI').Value := Tb1.FieldByName('TIPO_IPI').Value;

       Sc1.FieldByName('SITTRIBUTARIAFEDERAL').Value := Tb1.FieldByName('SIT_TRIB_FEDERAL').Value;
       Sc1.FieldByName('ARTIGO').Value               := Tb1.FieldByName('ARTIGO').Value;
       Sc1.FieldByName('DATAINICIALIPI').Value       := Tb1.FieldByName('DATA_INICIAL').Value;
       Sc1.FieldByName('DATAFINALIPI').Value         := Tb1.FieldByName('DATA_FINAL').Value;
       Sc1.FieldByName('PRODINCENTIVADO').Value      := Tb1.FieldByName('PROD_INCENTIVADO').Value;
       Sc1.Post;
       if Sc1.ChangeCount > 500 then
          Sc1.ApplyUpdates(-1);

        Tb1.Next;
        Pb1.StepIt;
      end;
       Tb1.Close;
    end;
    if Sc1.ChangeCount > 0 then
       Sc1.ApplyUpdates(-1);
    Tb2.Close;
    Sc1.Close;
  end;
  cdsNFE.Close;
 finally
  FreeAndNil( cdsNFE );
 end;
end;

procedure TfrmMigra.Nfs;
var sqlEntidade : String;
    cdsEntidade : TClientDataSet;
    i, x : Integer;
    Cep : String;
    GerouLog : Boolean;
begin
 GerouLog := False;
 sqlEntidade := 'SELECT ENTIDADEID FROM EF_ENTIDADE';
 ExecDDL( -1, sqlEntidade, cdsEntidade );
 cdsEntidade.AddIndex( 'idx1','ENTIDADEID',[ixPrimary],'','',0);
 cdsEntidade.IndexName := 'idx1';

 try
  // Corrigir as constraints com problemas desta tabela
  with DMMigra do
  begin
    ExecQry( 'ALTER TABLE EF_NFS DISABLE CONSTRAINTS Fk_EF_NFS_OsId' );

    tbMaster.TableName  := 'NFS';
    tbDetails.TableName := 'ITEM_NFS';

    Sc1.CommandText := 'SELECT * FROM EF_NFS';
    Sc1.Open;
    Sc2.CommandText := 'SELECT * FROM EF_NFSITEM';
    Sc2.Open;
    for i := 1 to 13 do
    begin
      dbMigra.Connected := False;
      dbMigra.AliasName := 'EST_FAT_EMPRESA_' + FormatFloat( '000', i );
      dbMigra.Connected := True;

      tbDetails.IndexFieldNames := 'NUMERO_NOTA;DATA_EMISSAO';
      tbDetails.MasterSource := dsMaster;
      tbDetails.MasterFields := 'NUMERO_NOTA;DATA_EMISSAO';
      tbMaster.Open;
      tbDetails.Open;
      tbMaster.First;
      Pb1.Position := 0;
      Pb1.Max := tbMaster.RecordCount;
      wwrichtxtLOG.Lines.Add( '*********  Log da Tabela EF_NFS: ********* ');
      while Not tbMaster.Eof do
      begin
       try
       Sc1.Insert;
       Sc1.FieldByName('EMPRESAID').Value      := i;
       Sc1.FieldByName('NFSID').Value          := tbMaster.FieldByName('NUMERO_NOTA').Value;
       Sc1.FieldByName('DATAEMISSAOID').Value  := tbMaster.FieldByName('DATA_EMISSAO').Value;

       if Not tbMaster.FieldByName('CANCELADA').IsNull then
       begin
         if tbMaster.FieldByName('CANCELADA').Value then Sc1.FieldByName('CANCELADA').Value := 1
         else Sc1.FieldByName('CANCELADA').Value := 0;
       end
       else Sc1.FieldByName('CANCELADA').Value := 0;

       if Not tbMaster.FieldByName('EXPORTADO').IsNull then
       begin
         if tbMaster.FieldByName('EXPORTADO').Value then Sc1.FieldByName('EXPORTADO').Value := 1
         else Sc1.FieldByName('EXPORTADO').Value := 0;
       end
       else Sc1.FieldByName('EXPORTADO').Value := 0;

       Sc1.FieldByName('OSID').Value                := tbMaster.FieldByName('NUMERO_OS').Value;
       Sc1.FieldByName('PDSID').Value               := tbMaster.FieldByName('NUMERO_PEDIDO').Value;
       Sc1.FieldByName('DATAPEDIDO').Value          := tbMaster.FieldByName('DATA_PEDIDO').Value;
       Sc1.FieldByName('REQUISITANTE').Value        := tbMaster.FieldByName('REQUISITANTE').Value;

       if Not tbMaster.FieldByName('LIBERACAO').IsNull then
       begin
         if tbMaster.FieldByName('LIBERACAO').Value then Sc1.FieldByName('LIBCHEFIA').Value := 1
         else Sc1.FieldByName('LIBCHEFIA').Value := 0;
       end
       else Sc1.FieldByName('LIBCHEFIA').Value := 0;

       Sc1.FieldByName('LIBCHEFIANOME').Value := tbMaster.FieldByName('NOME_1').Value;
       Sc1.FieldByName('LIBCHEFIADATA').Value := tbMaster.FieldByName('DATA_1').Value;

       if Not tbMaster.FieldByName('LIBERA_FIN').IsNull then
       begin
         if tbMaster.FieldByName('LIBERA_FIN').Value then Sc1.FieldByName('LIBFINANCEIRO').Value := 1
         else Sc1.FieldByName('LIBFINANCEIRO').Value := 0;
       end
       else Sc1.FieldByName('LIBFINANCEIRO').Value := 0;

       Sc1.FieldByName('LIBFINANCEIRONOME').Value := tbMaster.FieldByName('NOME_3').Value;
       Sc1.FieldByName('LIBFINANCEIRODATA').Value := tbMaster.FieldByName('DATA_3').Value;

       if Not tbMaster.FieldByName('LIBERA_CTB').IsNull then
       begin
         if tbMaster.FieldByName('LIBERA_CTB').Value then Sc1.FieldByName('LIBCONTABIL').Value := 1
         else Sc1.FieldByName('LIBCONTABIL').Value := 0;
       end
       else Sc1.FieldByName('LIBCONTABIL').Value := 0;

       Sc1.FieldByName('LIBCONTABILNOME').Value := tbMaster.FieldByName('NOME_2').Value;
       Sc1.FieldByName('LIBCONTABILDATA').Value := tbMaster.FieldByName('DATA_2').Value;

       Sc1.FieldByName('NFEID').Value            := tbMaster.FieldByName('NUMERO_NOTA_ENTRADA').Value;
       Sc1.FieldByName('DATAEMISSAONFEID').Value := tbMaster.FieldByName('DATA_NOTA_ENTRADA').Value;

       if Not tbMaster.FieldByName('TIPO_NOTA_ENTRADA').IsNull then
          Sc1.FieldByName('TIPONOTAENTRADA').Value := tbMaster.FieldByName('TIPO_NOTA_ENTRADA').Value ;

       if Not tbMaster.FieldByName('TIPO_NOTA').IsNull then
          Sc1.FieldByName('TIPONOTA').Value := tbMaster.FieldByName('TIPO_NOTA').Value ;

       if      UpperCase( tbMaster.FieldByName('TIPO_DESTIN').Value ) = 'C' then
               begin
                Sc1.FieldByName('CATEGORIAID').Value := 1;
                Sc1.FieldByName('ENTIDADEID').Value := tbMaster.FieldByName('CODIGO_DESTIN').Value;
               end
       else if UpperCase( tbMaster.FieldByName('TIPO_DESTIN').Value ) = 'F' then
               begin
                Sc1.FieldByName('CATEGORIAID').Value := 2;
                Sc1.FieldByName('ENTIDADEID').Value  := 20000 + tbMaster.FieldByName('CODIGO_DESTIN').Value;
               end
       else if UpperCase( tbMaster.FieldByName('TIPO_DESTIN').Value ) = 'U' then
               begin
                Sc1.FieldByName('CATEGORIAID').Value := 5;
                Sc1.FieldByName('ENTIDADEID').Value  := 50000 + tbMaster.FieldByName('CODIGO_DESTIN').Value;
               end;

       // Verificar os cadastro errados para correção
       if not cdsEntidade.FindKey([Sc1.FieldByName('ENTIDADEID').Value] ) then
          begin
           if GerouLog = False then
              begin
               GerouLog := True;
               wwrichtxtLOG.Lines.Add( 'Tabela NFS Cliente não cadastrado na tabela de clientes : NFS Id = ' );
              end;
           wwrichtxtLOG.Lines.Add(  'EMPRESA = '+Sc1.FieldByName('EMPRESAID').AsString +'  '+
                                    'NFSID = '+tbMaster.FieldByName('NUMERO_NOTA').AsString +'  '+
                                    'DT EMISSAO = '+tbMaster.FieldByName('DATA_EMISSAO').AsString +'  '+
                                    'ENTIDADEID = '+tbMaster.FieldByName('CODIGO_DESTIN').AsString );
           SC1.Cancel;
           tbMaster.Next;
           Pb1.StepIt;
           Continue;
          end;

       Cep := Copy( TransfNum( tbMaster.FieldByName('CEP_NOTA').AsString ), 1, 8 );
       if Cep <> '' then
          Sc1.FieldByName('CEPID').Value     := StrToInt( Cep );

       Sc1.FieldByName('NOME').Value              := tbMaster.FieldByName('NOME_NOTA').Value;
       Sc1.FieldByName('ENDERECO').Value          := tbMaster.FieldByName('ENDERECO_NOTA').Value;
       Sc1.FieldByName('CIDADE').Value            := tbMaster.FieldByName('CIDADE_NOTA').Value;
       Sc1.FieldByName('SIGLAUFID').Value         := tbMaster.FieldByName('ESTADO_NOTA').Value;
       Sc1.FieldByName('PAIS').Value              := tbMaster.FieldByName('PAIS_NOTA').Value;
       Sc1.FieldByName('ENDERECOENTREGA').Value   := tbMaster.FieldByName('END_ENTREGA').Value;
       Sc1.FieldByName('ENDERECOCOBRANCA').Value  := tbMaster.FieldByName('END_COBRANCA').Value;

       if Not tbMaster.FieldByName('ICMS_NOTA').IsNull then
       begin
         if tbMaster.FieldByName('ICMS_NOTA').Value then Sc1.FieldByName('CONTRIBUINTEICMS').Value := 1
         else Sc1.FieldByName('CONTRIBUINTEICMS').Value := 0;
       end
       else Sc1.FieldByName('CONTRIBUINTEICMS').Value := 0;

       if Not tbMaster.FieldByName('CODIGO_OPERACAO').IsNull then
          if tbMaster.FieldByName('CODIGO_OPERACAO').Value <> 0 then
             Sc1.FieldByName('NATUREZAOPID').Value := tbMaster.FieldByName('CODIGO_OPERACAO').Value;

       if Not tbMaster.FieldByName('COND_PAGTO').IsNull then
          if tbMaster.FieldByName('COND_PAGTO').Value <> 0 then
             Sc1.FieldByName('CONDPAGTOID').Value := tbMaster.FieldByName('COND_PAGTO').Value;

       Sc1.FieldByName('DESCRICAOCONDPAGTO').Value := tbMaster.FieldByName('DESC_PAGTO').Value;

       if Not tbMaster.FieldByName('CODIGO_OBS').IsNull then
          if tbMaster.FieldByName('CODIGO_OBS').Value <> 0 then
             Sc1.FieldByName('OBSERVACAOID').Value := tbMaster.FieldByName('CODIGO_OBS').Value;

       Sc1.FieldByName('DESCRICAOOBSERVACAO').Value := tbMaster.FieldByName('OBS').Value;

       if not tbMaster.FieldByName('CODIGO_TRANSP').IsNull then
          if cdsEntidade.FindKey([(40000 + tbMaster.FieldByName('CODIGO_TRANSP').AsInteger )] ) then
             Sc1.FieldByName('TRANSPORTADORID').Value := 40000 + tbMaster.FieldByName('CODIGO_TRANSP').AsInteger;

       Sc1.FieldByName('PLACAVEICULO').Value         := tbMaster.FieldByName('PLACA_VEICULO').Value;
       Sc1.FieldByName('MODALIDADEFRETE').Value      := tbMaster.FieldByName('RESPONSAVEL_FRETE').Value;
       Sc1.FieldByName('VLRFRETE').Value             := tbMaster.FieldByName('VALOR_FRETE').Value;
       Sc1.FieldByName('VLRSEGURO').Value            := tbMaster.FieldByName('VALOR_SEGURO').Value;
       Sc1.FieldByName('VLRDESPESAACESSORIA').Value  := tbMaster.FieldByName('DESPESA_ACESS').Value;
       Sc1.FieldByName('EMBQTDVOLUMES').Value        := tbMaster.FieldByName('EMB_QUANTIDADE').Value;
       Sc1.FieldByName('EMBNUMERO').Value            := tbMaster.FieldByName('EMB_NUMERO').Value;
       Sc1.FieldByName('EMBMARCA').Value             := tbMaster.FieldByName('EMB_MARCA').Value;
       Sc1.FieldByName('EMBESPECIE').Value           := tbMaster.FieldByName('EMB_ESPECIE').Value;
       Sc1.FieldByName('EMBPESOBRUTO').Value         := tbMaster.FieldByName('EMB_PESO_BRUTO').Value;
       Sc1.FieldByName('EMBPESOLIQUIDO').Value       := tbMaster.FieldByName('EMB_PESO_LIQUIDO').Value;
       Sc1.FieldByName('VLRTOTALSERVICO').Value      := tbMaster.FieldByName('VALOR_TOT_SERV').Value;
       Sc1.FieldByName('VLRTOTALISS').Value          := tbMaster.FieldByName('VALOR_ISS').Value;
       Sc1.FieldByName('VLRTOTALCOFINS').Value       := tbMaster.FieldByName('TOTAL_COFINS').Value;
       Sc1.FieldByName('VLRTOTALPIS').Value          := tbMaster.FieldByName('TOTAL_PIS').Value;
       Sc1.FieldByName('VLRTOTALBASEICMS').Value     := tbMaster.FieldByName('TOTAL_BASE_ICMS').Value;
       Sc1.FieldByName('VLRTOTALICMS').Value         := tbMaster.FieldByName('TOTAL_ICMS').Value;
       Sc1.FieldByName('VLRTOTALISENTASICMS').Value  := tbMaster.FieldByName('TOTAL_ISENTAS_ICMS').Value;
       Sc1.FieldByName('VLRTOTALOUTRASICMS').Value   := tbMaster.FieldByName('TOTAL_OUTRAS_ICMS').Value;
       Sc1.FieldByName('VLRTOTALBASEIPI').Value      := tbMaster.FieldByName('TOTAL_BASE_IPI').Value;
       Sc1.FieldByName('VLRTOTALIPI').Value          := tbMaster.FieldByName('TOTAL_IPI').Value;
       Sc1.FieldByName('VLRTOTALISENTASIPI').Value   := tbMaster.FieldByName('TOTAL_ISENTAS_IPI').Value;
       Sc1.FieldByName('VLRTOTALOUTRASIPI').Value    := tbMaster.FieldByName('TOTAL_OUTRAS_IPI').Value;
       Sc1.FieldByName('VLRTOTALPRODUTO').Value      := tbMaster.FieldByName('TOTAL_PRODUTO').Value;
       Sc1.FieldByName('VLRTOTALNOTA').Value         := tbMaster.FieldByName('TOTAL_NOTA').Value;
       Sc1.FieldByName('USUARIO').Value              := tbMaster.FieldByName('EMISSOR').Value;
       SC1.Post;

       except
       on E: Exception do
       begin
       wwrichtxtLOG.Lines.Add( 'Problemas de migração desta nota: verificar NFS Id = Empresa ID' +
                               IntToStr( I ) +
                               'NFS :' + tbMaster.FieldByName('NUMERO_NOTA').AsString +
                               'DT  :' + tbMaster.FieldByName('DATA_EMISSAO').AsString );
       end;

       end;

       if Sc1.ChangeCount > 500 then
          begin
           Sc1.ApplyUpdates(-1);
           Sc2.ApplyUpdates(-1);
          end;

       // ****** Tabela NFsItem *********
       x := 0;
       tbDetails.First;
       while Not tbDetails.Eof do
       begin
        Inc( x );
        Sc2.Insert;
        Sc2.FieldByName('EMPRESAID').Value     := i;
        Sc2.FieldByName('NFSID').Value         := tbDetails.FieldByName('NUMERO_NOTA').Value;
        Sc2.FieldByName('DATAEMISSAOID').Value := tbDetails.FieldByName('DATA_EMISSAO').Value;

        if not tbDetails.FieldByName('NUMERO_ITEM').IsNull then
           Sc2.FieldByName('ITEMID').Value        := tbDetails.FieldByName('NUMERO_ITEM').Value
        else
           Sc2.FieldByName('ITEMID').Value        := x;

        if tbDetails.FieldByName('CODIGO_PRODUTO').Value <> 0 then
           Sc2.FieldByName('PRODUTOID').Value := tbDetails.FieldByName('CODIGO_PRODUTO').Value;

        Sc2.FieldByName('DESCRICAOPRODUTO').Value         := tbDetails.FieldByName('DESCRICAO').Value;
        Sc2.FieldByName('QUANTIDADE').Value               := tbDetails.FieldByName('QUANTIDADE').Value;
        Sc2.FieldByName('VLRPRECOUNITARIO').Value         := tbDetails.FieldByName('VALOR_UNITARIO').Value;
        Sc2.FieldByName('VLRPRECOTOTAL').Value            := tbDetails.FieldByName('VALOR_TOTAL').Value;
        Sc2.FieldByName('PORCDESCONTO').Value             := tbDetails.FieldByName('DESCONTO').Value;
        Sc2.FieldByName('VLRDESCONTO').Value              := tbDetails.FieldByName('VALOR_DESCONTO').Value;
        Sc2.FieldByName('VLRPRECOUNITDESC').Value         := tbDetails.FieldByName('VALOR_U_D').Value;
        Sc2.FieldByName('VLRPRECOTOTALDESC').Value        := tbDetails.FieldByName('TOTALCOMDESCONTO').Value;
        Sc2.FieldByName('NFEID').Value                    := tbMaster.FieldByName('NUMERO_NOTA_ENTRADA').Value;
        Sc2.FieldByName('DATAEMISSAONFEID').Value         := tbMaster.FieldByName('DATA_NOTA_ENTRADA').Value;

        if Not tbDetails.FieldByName('EMPENHO').IsNull then
        begin
          if tbDetails.FieldByName('EMPENHO').Value then Sc2.FieldByName('EMPENHO').Value := 1
          else Sc2.FieldByName('EMPENHO').Value := 0;
        end
        else Sc2.FieldByName('EMPENHO').Value := 0;

        Sc2.FieldByName('RETORNO').Value               := tbDetails.FieldByName('RETORNO').Value;
        Sc2.FieldByName('QTDRETORNA').Value            := tbDetails.FieldByName('QTD_RETORNAR').Value;
        Sc2.FieldByName('VLRBASEICMS').Value           := tbDetails.FieldByName('BASE_ICMS').Value;
        Sc2.FieldByName('ALIQUOTAICMS').Value          := tbMaster.FieldByName('ALIQUOTA_ICM').Value;
        Sc2.FieldByName('VLRICMS').Value               := tbDetails.FieldByName('VALOR_ICMS').Value;
        Sc2.FieldByName('VLRISENTASICMS').Value        := tbDetails.FieldByName('ISENTAS_ICMS').Value;
        Sc2.FieldByName('VLROUTRASICMS').Value         := tbDetails.FieldByName('OUTRAS_ICMS').Value;
        Sc2.FieldByName('PORCREDUCAOICMS').Value       := tbDetails.FieldByName('REDUCAO_ICMS').Value;
        Sc2.FieldByName('SITTRIBUTARIAESTADUAL').Value := tbDetails.FieldByName('SIT_TRIB_ESTADUAL').Value;
        Sc2.FieldByName('ALIQUOTACOFINS').Value        := tbDetails.FieldByName('ALIQUOTA_COFINS').Value;
        Sc2.FieldByName('VLRCOFINS').Value             := tbDetails.FieldByName('VALOR_COFINS').Value;
        Sc2.FieldByName('ALIQUOTAPIS').Value           := tbDetails.FieldByName('ALIQUOTA_PIS').Value;
        Sc2.FieldByName('VLRPIS').Value                := tbDetails.FieldByName('VALOR_PIS').Value;
        Sc2.FieldByName('VLRBASEIPI').Value            := tbDetails.FieldByName('BASE_IPI').Value;
        Sc2.FieldByName('ALIQUOTAIPI').Value           := tbDetails.FieldByName('ALIQUOTA_IPI').Value;
        Sc2.FieldByName('VLRIPI').Value                := tbDetails.FieldByName('VALOR_IPI').Value;
        Sc2.FieldByName('VLRISENTASIPI').Value          := tbDetails.FieldByName('ISENTAS_IPI').Value;
        Sc2.FieldByName('VLROUTRASIPI').Value           := tbDetails.FieldByName('OUTRAS_IPI').Value;
        Sc2.FieldByName('TIPOIPI').Value               := tbDetails.FieldByName('TIPO_IPI').Value;
        Sc2.FieldByName('SITTRIBUTARIAFEDERAL').Value  := tbDetails.FieldByName('SIT_TRIB_FEDERAL').Value;
        Sc2.FieldByName('ARTIGO').Value                := tbDetails.FieldByName('ARTIGO').Value;
        Sc2.FieldByName('DATAINICIALIPI').Value        := tbDetails.FieldByName('DATA_INICIAL').Value;
        Sc2.FieldByName('DATAFINALIPI').Value          := tbDetails.FieldByName('DATA_FINAL').Value;

        if Not tbDetails.FieldByName('PROD_INCENTIVADO').IsNull then
           begin
            if tbDetails.FieldByName('PROD_INCENTIVADO').Value then
               Sc2.FieldByName('PRODINCENTIVADO').Value  := 1
            else
               Sc2.FieldByName('PRODINCENTIVADO').Value  := 0
           end
        else
           Sc2.FieldByName('PRODINCENTIVADO').Value  := 1;

        Sc2.FieldByName('ESTOQUEUTILIZADO').Value    := tbDetails.FieldByName('ESTOQUE_UTILIZADO').Value;

        Sc2.Post;
        tbDetails.Next;
       end;
       tbMaster.Next;
       Pb1.StepIt;
      end;
      if Sc1.ChangeCount > 0 then
         begin
          Sc1.ApplyUpdates(-1);
          Sc2.ApplyUpdates(-1);
         end;
      tbMaster.Close;
      tbDetails.Close;
    end;
    Sc1.Close;
    Sc2.Close;
  end;

 finally
  FreeAndNil( cdsEntidade );
 end;
end;

procedure TfrmMigra.NfsParcela;
var sqlNFS : String;
    cdsNFS : TClientDataSet;
    i, x : Integer;
begin
 sqlNFS := 'SELECT EMPRESAID, NFSID, DATAEMISSAOID, ENTIDADEID FROM EF_NFS';
 ExecDDL( -1, sqlNFS, cdsNFS );
 cdsNFS.AddIndex( 'idx1','EMPRESAID;NFSID;DATAEMISSAOID',[ixPrimary],'','',0);
 cdsNFS.IndexName := 'idx1';

 try
  with DMMigra do begin
    Tb1.TableName   := 'PARCELA_NFS';
    Sc1.CommandText := 'SELECT * FROM EF_NFSPARCELA';
    Sc1.Open;

    for i := 1 to 13 do
    begin
      if ( i <> 1 ) then
         if ( i <> 12 ) then
            Continue;

      x := 1;
      dbMigra.Connected := False;
      dbMigra.AliasName := 'EST_FAT_EMPRESA_' + FormatFloat( '000', i );
      dbMigra.Connected := True;
      Tb1.Open;
      Tb1.First;
      Pb1.Max := Tb1.RecordCount;
      while Not Tb1.Eof do
      begin
       if not cdsNFS.FindKey([IntToStr( i ), Tb1.FieldByName('NUMERO_NOTA').Value, Tb1.FieldByName('DATA_EMISSAO').Value] ) then
          begin
           Tb1.Next;
           Continue;
          end;

       Sc1.Insert;
       Sc1.FieldByName('EMPRESAID').Value := i;
       Sc1.FieldByName('NFSID').Value          := Tb1.FieldByName('NUMERO_NOTA').Value;
       Sc1.FieldByName('DATAEMISSAOID').Value  := Tb1.FieldByName('DATA_EMISSAO').Value;

       Inc( x );
       if Tb1.FieldByName('NUMERO_PARCELA').IsNull then
          Sc1.FieldByName('PARCELAID').AsInteger  := x
       else
          Sc1.FieldByName('PARCELAID').Value      := Tb1.FieldByName('NUMERO_PARCELA').Value;

       Sc1.FieldByName('DATAVENCIMENTO').Value := Tb1.FieldByName('DATA_VECTO').Value;
       Sc1.FieldByName('DATAPAGTO').Value      := Tb1.FieldByName('DATA_PAGTO').Value;

       Sc1.FieldByName('VLRPARCELA').Value     := Tb1.FieldByName('VALOR_PARCELA').Value;
       Sc1.FieldByName('DUPLICATAID').Value    := Tb1.FieldByName('NUMERO_DUPLICATA').Value;

       if Not Tb1.FieldByName('EXPORTADO').IsNull then
       begin
         if Tb1.FieldByName('EXPORTADO').Value then
             Sc1.FieldByName('EXPORTADO').Value := 1
         else
             Sc1.FieldByName('EXPORTADO').Value := 0;
       end
       else Sc1.FieldByName('EXPORTADO').Value := 0;

       Sc1.FieldByName('VLRBASECOMISSAO').Value    := Tb1.FieldByName('VLRBASECOMISSAO').Value;

       if Not Tb1.FieldByName('PAGTOVENDEDOR').IsNull then
       begin
         if Tb1.FieldByName('PAGTOVENDEDOR').Value then Sc1.FieldByName('PAGTOVENDEDOR').Value := 1
         else Sc1.FieldByName('PAGTOVENDEDOR').Value := 0;
       end
       else Sc1.FieldByName('PAGTOVENDEDOR').Value := 0;

       Sc1.Post;
       if Sc1.ChangeCount > 100 then
          Sc1.ApplyUpdates(-1);

       Tb1.Next;
       Pb1.StepIt;
      end;

      if Sc1.ChangeCount > 0 then
         Sc1.ApplyUpdates(-1);
      Tb1.Close;
    end;
    Sc1.Close;
  end;
  cdsNFS.Close;
 finally
  FreeAndNil( cdsNFS );
 end;
end;


procedure TfrmMigra.NfsServico;
var sqlNFS : String;
    cdsNFS : TClientDataSet;
    i, x : Integer;
begin
 sqlNFS := 'SELECT EMPRESAID, NFSID, DATAEMISSAOID, ENTIDADEID FROM EF_NFS';
 ExecDDL( -1, sqlNFS, cdsNFS );
 cdsNFS.AddIndex( 'idx1','EMPRESAID;NFSID;DATAEMISSAOID',[ixPrimary],'','',0);
 cdsNFS.IndexName := 'idx1';

 try
  // Desabilitar conta contábil para importação
  // A Tabela de ContaContabil deve ser normalizada
  with DMMigra do begin
    ExecQry( 'ALTER TABLE EF_NFSSERVICO DISABLE CONSTRAINT FK_EF_NFSSERVICO_EMIDSERVICOID' );

    Tb1.TableName   := 'SERVICO_NFS';
    Sc1.CommandText := 'SELECT * FROM EF_NFSSERVICO';
    Sc1.Open;
    for i := 1 to 13 do
    begin
      x := 1;
      dbMigra.Connected := False;
      dbMigra.AliasName := 'EST_FAT_EMPRESA_' + FormatFloat( '000', i );
      dbMigra.Connected := True;
      Tb1.Open;
      Tb1.First;
      Pb1.Max := Tb1.RecordCount;
      while Not Tb1.Eof do
      begin
       if not cdsNFS.FindKey([IntToStr( i ), Tb1.FieldByName('NUMERO_NOTA').Value, Tb1.FieldByName('DATA_EMISSAO').Value] ) then
          begin
           Tb1.Next;
           Continue;
          end;

       Sc1.Insert;
       Sc1.FieldByName('EMPRESAID').Value         := i;
       Sc1.FieldByName('NFSID').Value             := Tb1.FieldByName('NUMERO_NOTA').Value;
       Sc1.FieldByName('DATAEMISSAOID').Value     := Tb1.FieldByName('DATA_EMISSAO').Value;

       Inc(x);
       if Tb1.FieldByName('NUMERO_SERVICO').IsNull then
          Sc1.FieldByName('ITEMID').Value := x
       else
          Sc1.FieldByName('ITEMID').Value := Tb1.FieldByName('NUMERO_SERVICO').Value;

       Sc1.FieldByName('SERVICOID').Value         := Tb1.FieldByName('CODIGO_SERVICO').Value;
       Sc1.FieldByName('DESCRICAOSERVICO').Value  := Tb1.FieldByName('SERVICO').Value;
       Sc1.FieldByName('VLRISS').Value            := Tb1.FieldByName('VALOR_ISS').Value;
       Sc1.FieldByName('VLRSERVICO').Value        := Tb1.FieldByName('VALOR_SERVICO').Value;
       Sc1.FieldByName('ALIQUOTACOFINS').Value    := Tb1.FieldByName('ALIQUOTA_COFINS').Value;
       Sc1.FieldByName('VLRCOFINS').Value         := Tb1.FieldByName('VALOR_COFINS').Value;
       Sc1.FieldByName('ALIQUOTAPIS').Value       := Tb1.FieldByName('ALIQUOTA_PIS').Value;
       Sc1.FieldByName('VLRPIS').Value            := Tb1.FieldByName('VALOR_PIS').Value;
       Sc1.FieldByName('VLRRETCOFINS').Value      := Tb1.FieldByName('VALOR_RET_COFINS').Value;
       Sc1.FieldByName('VLRRETPIS').Value         := Tb1.FieldByName('VALOR_RET_PIS').Value;
       Sc1.FieldByName('VLRRETCSLL').Value        := Tb1.FieldByName('VALOR_RET_CSLL').Value;
       Sc1.Post;
       if Sc1.ChangeCount > 500 then
          Sc1.ApplyUpdates(-1);
       Sc1.ApplyUpdates(-1);

       Tb1.Next;
       Pb1.StepIt;
      end;
      Tb1.Close;
      if Sc1.ChangeCount > 0 then
         Sc1.ApplyUpdates(-1);
    end;
    Sc1.Close;
  end;
  cdsNFS.Close;
 finally
  FreeAndNil( cdsNFS );
 end;
end;

procedure TfrmMigra.Produto;
var sqlEntidade,sqlUnidade : String;
    cdsEntidade, cdsUnidade : TClientDataSet;
    i : Integer;
begin
 sqlEntidade := 'SELECT ENTIDADEID, CPFCNPJ FROM EF_ENTIDADE';
 ExecDDL( -1, sqlEntidade, cdsEntidade );
 cdsEntidade.AddIndex( 'idx1','ENTIDADEID',[ixPrimary],'','',0);
 cdsEntidade.IndexName := 'idx1';

 sqlUnidade := 'SELECT UNIDADEID FROM EF_UNIDADE';
 ExecDDL( -1, sqlUnidade, cdsUnidade );
 cdsUnidade.AddIndex( 'idx1','UNIDADEID',[ixPrimary],'','',0);
 cdsUnidade.IndexName := 'idx1';

 try
  with DMMigra do
  begin
   Tb1.TableName   := 'PRODUTO';
   Sc1.CommandText := 'SELECT * FROM EF_PRODUTO';
   Sc1.Open;
   SC1.AddIndex( 'idx1','EMPRESAID;PRODUTOID',[ixPrimary],'','',0);
   SC1.IndexName := 'idx1';

   for i := 1 to 13 do
   begin
     dbMigra.Close;
     dbMigra.AliasName := 'EST_FAT_EMPRESA_' + FormatFloat( '000', i );
     Tb1.Open;
     Tb1.First;
     Pb1.Max := Tb1.RecordCount;
     while Not Tb1.Eof do
     begin
       if SC1.FindKey([i,Tb1.FieldByName('CODIGO_PRODUTO').Value ]) then
          SC1.Edit
       else
          Sc1.Insert;

       Sc1.FieldByName('PRODUTOID').Value := Tb1.FieldByName('CODIGO_PRODUTO').Value;
       Sc1.FieldByName('EMPRESAID').Value := i;
       Sc1.FieldByName('ORIGEM').Value := Tb1.FieldByName('ORIGEM').Value;

       if Not Tb1.FieldByName('ATIVO').IsNull then
       begin
         if Tb1.FieldByName('ATIVO').Value then Sc1.FieldByName('ATIVO').Value := 1
         else Sc1.FieldByName('ATIVO').Value := 0;
       end
       else Sc1.FieldByName('ATIVO').Value := 0;

       if Not Tb1.FieldByName('NOVO_USADO').IsNull then
          Sc1.FieldByName('NOVOUSADO').Value := Tb1.FieldByName('NOVO_USADO').Value;

       Sc1.FieldByName('GRUPOID').Value     := Tb1.FieldByName('GRUPO').Value;
       Sc1.FieldByName('SUBGRUPOID').Value  := Tb1.FieldByName('SUB_GRUPO').Value;
       Sc1.FieldByName('PARTNUMBERID').Value       := Tb1.FieldByName('CODIGO_JAPAO').Value;
       Sc1.FieldByName('DESCRICAOPORTUGUES').Value := Tb1.FieldByName('DESCRICAO_PORTUGUES').Value;
       Sc1.FieldByName('DESCRICAOINGLES').Value    := Tb1.FieldByName('DESCRICAO_INGLES').Value;

       if cdsEntidade.FindKey([(20000 + Tb1.FieldByName('CODIGO_FORNECEDOR').AsInteger)] ) then
          Sc1.FieldByName('FORNECEDORID').Value       := 20000 + Tb1.FieldByName('CODIGO_FORNECEDOR').AsInteger;

       Sc1.FieldByName('LOCALIZACAO').Value        := Tb1.FieldByName('LOCALIZACAO').Value;

       if cdsUnidade.FindKey([Tb1.FieldByName('UNIDADE').Value]) then
          Sc1.FieldByName('UNIDADEID').Value := Tb1.FieldByName('UNIDADE').Value;

       Sc1.FieldByName('PESO').asBCD          := Tb1.FieldByName('PESO').AsBCD;
       Sc1.FieldByName('APLICACAO').Value     := Tb1.FieldByName('APLICACAO').Value;
       Sc1.FieldByName('OBSERVACAO').Value    := Tb1.FieldByName('OBS').Value;
       Sc1.FieldByName('NCMID').Value         := Tb1.FieldByName('NCM').Value;
       Sc1.FieldByName('DESCRICAONCM').Value  := Tb1.FieldByName('DESCRICAO_NCM').Value;

       if Not Tb1.FieldByName('PROD_INCENTIVADO').IsNull then
       begin
         if Tb1.FieldByName('PROD_INCENTIVADO').Value then Sc1.FieldByName('INCENTIVOICMS').Value := 1
         else Sc1.FieldByName('INCENTIVOICMS').Value := 0;
       end
       else Sc1.FieldByName('INCENTIVOICMS').Value := 0;

       Sc1.FieldByName('REDUCAOICMS').Value    := Tb1.FieldByName('REDUCAO_ICM').Value;
       Sc1.FieldByName('ALIQUOTAII').Value     := Tb1.FieldByName('ALIQUOTA_II').Value;
       Sc1.FieldByName('DATAINICIALII').Value  := Tb1.FieldByName('DATA_INICIAL_II').Value;
       Sc1.FieldByName('DATAFINALII').Value    := Tb1.FieldByName('DATA_FINAL_II').Value;
       Sc1.FieldByName('ALIQUOTAIPI').Value    := Tb1.FieldByName('ALIQUOTA_IPI').Value;
       Sc1.FieldByName('DATAINICIALIPI').Value := Tb1.FieldByName('DATA_INICIAL_IPI').Value;
       Sc1.FieldByName('DATAFINALIPI').Value   := Tb1.FieldByName('DATA_FINAL_IPI').Value;

       if Not Tb1.FieldByName('SUSPENSAO_IPI').IsNull then
       begin
         if Tb1.FieldByName('SUSPENSAO_IPI').Value then Sc1.FieldByName('SUSPENSAOIPI').Value := 1
         else Sc1.FieldByName('SUSPENSAOIPI').Value := 0;
       end
       else Sc1.FieldByName('SUSPENSAOIPI').Value := 0;

       if Not Tb1.FieldByName('ISENTO_IPI').IsNull then
       begin
         if Tb1.FieldByName('ISENTO_IPI').Value then Sc1.FieldByName('ISENTOIPI').Value := 1
         else Sc1.FieldByName('ISENTOIPI').Value := 0;
       end
       else Sc1.FieldByName('ISENTOIPI').Value := 0;

       Sc1.FieldByName('CONTACTBATIVO').Value        := Tb1.FieldByName('CONTA_CTB_ATIVO').Value;
       Sc1.FieldByName('CONTACTBDESPESA').Value      := Tb1.FieldByName('CONTA_CTB_DESPESA').Value;
       Sc1.FieldByName('CONTACTBRECEITA').Value      := Tb1.FieldByName('CONTA_CTB_RECEITA').Value;
       Sc1.FieldByName('CUSTOMEDIOUS').Value         := Tb1.FieldByName('PRECO_MEDIO_US').Value;
       Sc1.FieldByName('CUSTOMEDIO').Value           := Tb1.FieldByName('PRECO_MEDIO_REAL').Value;
       Sc1.FieldByName('CUSTOTOTAL').Value           := Tb1.FieldByName('CUSTO_TOTAL').Value;
       Sc1.FieldByName('PRECOVENDAMINIMO').Value     := Tb1.FieldByName('PRECO_MINIMO').Value;
       Sc1.FieldByName('PRECOVENDA').Value           := Tb1.FieldByName('PRECO_IDEAL').Value;
       Sc1.FieldByName('VLRFOB').Value               := Tb1.FieldByName('VALOR_FOB').Value;
       Sc1.FieldByName('VLRFOBUS').Value             := Tb1.FieldByName('VALOR_FOB_US').Value;
       Sc1.FieldByName('ESTOQUENOVO').Value          := Tb1.FieldByName('ESTOQUE_NOVO').Value;
       Sc1.FieldByName('ESTOQUEREVISADO').Value      := Tb1.FieldByName('ESTOQUE_REVISADO').Value;
       Sc1.FieldByName('ESTOQUEFISICO').Value        := Tb1.FieldByName('ESTOQUE_FISICO').Value;
       Sc1.FieldByName('ESTOQUEPEDENTRADA').Value    := Tb1.FieldByName('ESTOQUE_PED_ENTRADA').Value;
       Sc1.FieldByName('ESTOQUEPEDSAIDA').Value      := Tb1.FieldByName('ESTOQUE_PED_SAIDA').Value;
       Sc1.FieldByName('ESTOQUEEMTERCEIRO').Value    := Tb1.FieldByName('ESTOQUE_EM_TERCEIROS').Value;
       Sc1.FieldByName('ESTOQUEDETERCEIRO').Value    := Tb1.FieldByName('ESTOQUE_DE_TERCEIROS').Value;
       Sc1.FieldByName('ESTOQUEMINIMO').Value        := Tb1.FieldByName('ESTOQUE_MINIMO').Value;
       Sc1.FieldByName('ESTOQUEVALE').Value          := Tb1.FieldByName('ESTOQUE_VALE').Value;
       Sc1.FieldByName('ESTOQUEEMPENHO').Value       := Tb1.FieldByName('ESTOQUE_EMPENHO').Value;
       Sc1.FieldByName('ESTOQUETOTAL').Value         := Sc1.FieldByName('ESTOQUEFISICO').Value +
                                                        Sc1.FieldByName('ESTOQUEPEDSAIDA').Value +
                                                        Sc1.FieldByName('ESTOQUEDETERCEIRO').Value +
                                                        Sc1.FieldByName('ESTOQUEVALE').Value +
                                                        Sc1.FieldByName('ESTOQUEEMPENHO').Value +
                                                        Sc1.FieldByName('ESTOQUEEMTERCEIRO').Value;
       Sc1.FieldByName('NCM2ID').Value               := Tb1.FieldByName('CODIGO_NCM_2').Value;
       Sc1.FieldByName('NCM3ID').Value               := Tb1.FieldByName('CODIGO_NCM_3').Value;
       Sc1.FieldByName('DATANCM').Value              := Tb1.FieldByName('DATA_NCM_1').Value;
       Sc1.FieldByName('DATANCM2').Value             := Tb1.FieldByName('DATA_NCM_2').Value;
       Sc1.FieldByName('DATANCM3').Value             := Tb1.FieldByName('DATA_NCM_3').Value;
       Sc1.FieldByName('ALIQUOTATEMPIPI').Value      := Tb1.FieldByName('ALIQ_TMP_IPI').Value;
       Sc1.FieldByName('ALIQUOTATEMPII').Value       := Tb1.FieldByName('ALIQ_TMP_II').Value;
       Sc1.Post;
       if Sc1.ChangeCount >= 500 then
          Sc1.ApplyUpdates(-1);
       Tb1.Next;
       Pb1.StepIt;
     end;
     if Sc1.ChangeCount > 0 then
        Sc1.ApplyUpdates(-1);

     Tb1.Close;
   end;
   SC1.DeleteIndex( 'idx1');
   Sc1.Close;
  end;
  cdsEntidade.Close;
  cdsUnidade.Close;
 finally
  FreeAndNil( cdsEntidade );
  FreeAndNil(cdsUnidade);
 end;
end;

procedure TfrmMigra.Servico;
var sqlReceita : String;
    cdsReceita : TClientDataSet;
    i : Integer;
begin
 sqlReceita := 'SELECT SIGLA, RECEITAID FROM EF_RECEITA';
 ExecDDL( -1, sqlReceita, cdsReceita );
 cdsReceita.AddIndex( 'idx1','SIGLA',[ixCaseInsensitive],'','',0);
 cdsReceita.IndexName := 'idx1';

 try
  with DMMigra do begin
    Tb1.TableName   := 'SERVICO';
    Sc1.CommandText := 'SELECT * FROM EF_SERVICO';
    Sc1.Open;
    wwrichtxtLOG.Lines.Add( 'Tabela SERVICO campo RECEITA ID deve ser Atualizado na nova versão em produção' );
    for i := 1 to 13 do
    begin
      dbMigra.Connected := False;
      dbMigra.AliasName := 'EST_FAT_EMPRESA_' + FormatFloat( '000', i );
      dbMigra.Connected := True;

      // Atualizar os grupos de produtos das empresas
      qryGeral.DatabaseName := dbMigra.AliasName;
      ExecQry2( 'Servico_MRI.sql' );

      Tb1.Open;
      Tb1.First;
      Pb1.Max := Tb1.RecordCount;
      while Not Tb1.Eof do
      begin
        Sc1.Insert;
        Sc1.FieldByName('EMPRESAID').Value := i;
        Sc1.FieldByName('SERVICOID').Value := Tb1.FieldByName('CODIGO_SERVICO').Value;

        if cdsReceita.FindKey([Tb1.FieldByName('TIPO_RECEITA').AsString ]) then
           Sc1.FieldByName('RECEITAID').Value := cdsReceita.FieldByName('RECEITAID').Value;

        Sc1.FieldByName('DESCRICAOCOMPLETA').Value  := Tb1.FieldByName('DESCRICAO_COMPLETA').Value;
        Sc1.FieldByName('GRUPOID').Value            := Tb1.FieldByName('GRUPO').Value;
        Sc1.FieldByName('PERCRETENCAOPIS').Value    := Tb1.FieldByName('PERCRETENCAOPIS').Value;
        Sc1.FieldByName('PERCRETENCAOCOFINS').Value := Tb1.FieldByName('PERCRETENCAOCOFINS').Value;
        Sc1.FieldByName('PERCRETENCAOCSLL').Value   := Tb1.FieldByName('PERCRETENCAOCSLL').Value;
        Sc1.Post;
        if Sc1.ChangeCount >= 50 then
           Sc1.ApplyUpdates(-1);
        Tb1.Next;
        Pb1.StepIt;
      end;
      if Sc1.ChangeCount > 0 then
         Sc1.ApplyUpdates(-1);
      Tb1.Close;
    end;
    Sc1.Close;
  end;
 finally
  FreeAndNil( cdsReceita );
 end;
end;

procedure TfrmMigra.LimpaItem;
var
  i : Integer;
begin
  for i := 0 to High( CountId ) do
  begin
    CountId[i][0] := 0;
    CountId[i][1] := 0;
  end;
  SetLength( CountId, 0 );
end;

function TfrmMigra.Valor(Sequencia: String): Integer;
begin
  with DMMigra.Seq do
  begin
    SQL.Text := 'SELECT ' + Sequencia + '.NEXTVAL VALOR FROM DUAL';
    Open;
    Result := FieldByName( 'VALOR' ).AsInteger;
    Close;
  end;
end;

function TfrmMigra.Estado(Valor: Integer): String;
begin
 Result := '';
 with DMMigra do
 begin
  if tbUnidadeFED.FindKey([ Valor ]) then
     Result :=  tbUnidadeFED.FieldByName('SIGLA').AsString;
 end;
end;

{procedure TfrmMigra.Usuario;
begin
  with DMMigra do begin
    Tb1.TableName   := 'USUARIOS';
    Sc1.CommandText := 'SELECT * FROM ADMSIST.USUARIOS';
    Tb1.Open;
    Sc1.Open;
    Tb1.First;
    Pb1.Max := Tb1.RecordCount;
    while Not Tb1.Eof do
    begin
      Sc1.Insert;
      Sc1.Fields[0].Value := Tb1.Fields[0].Value;
      Sc1.Fields[1].Value := 50000 + Tb1.Fields[1].Value;
      Sc1.Fields[2].Value := Tb1.Fields[7].Value;
      Sc1.Fields[3].Value := Tb1.Fields[8].Value;
      Sc1.Post;
      Tb1.Next;
      Pb1.StepIt;
      if Sc1.ChangeCount >= 100 then
         Sc1.ApplyUpdates(-1);
    end;
    if Sc1.ChangeCount > 0 then
       Sc1.ApplyUpdates(-1);
    Tb1.Close;
    Sc1.Close;
  end;
end;}

procedure TfrmMigra.CategoriaJuridica;
begin
  with DMMigra do begin
    Tb1.TableName   := 'CATEGJURIDICA';
    Sc1.CommandText := 'SELECT * FROM EF_CATEGJURIDICA';
    Tb1.Open;
    Sc1.Open;
    Tb1.First;
    Pb1.Max := Tb1.RecordCount;
    while Not Tb1.Eof do
    begin
      Sc1.Insert;
      Sc1.FieldByName('CATEGJURIDICAID').Value  := Tb1.FieldByName('CD_CATEGJURIDICA').Value;
      Sc1.FieldByName('DESCRICAO').Value        := Tb1.FieldByName('DESCRICAO').Value;
      Sc1.FieldByName('USUARIO').Value          := Tb1.FieldByName('USUARIO').Value;
      Sc1.Post;
      Sc1.ApplyUpdates(-1);
      Tb1.Next;
      Pb1.StepIt;
    end;
    if Sc1.ChangeCount > 0 then
       Sc1.ApplyUpdates(-1);
    Tb1.Close;
    Sc1.Close;
  end;
end;

procedure TfrmMigra.NaturezaJuridica;
begin
  with DMMigra do begin
    Tb1.TableName   := 'NAT_JURIDICA';
    Sc1.CommandText := 'SELECT * FROM EF_NATUREZAJURIDICA';
    Tb1.Open;
    Sc1.Open;
    Tb1.First;
    Pb1.Max := Tb1.RecordCount;
    while Not Tb1.Eof do
    begin
      Sc1.Insert;
      Sc1.FieldByName('NATUREZAJURIDICAID').Value  := Tb1.FieldByName('CD_NAT_JURIDICA').Value;
      Sc1.FieldByName('CATEGJURIDICAID').Value     := Tb1.FieldByName('CD_CATEGJURIDICA').Value;
      Sc1.FieldByName('DESCRICAO').Value           := Tb1.FieldByName('DESCRICAO').Value;

      if Not Tb1.FieldByName('RETENCAOPIS').IsNull then
         begin
          if Tb1.FieldByName('RETENCAOPIS').Value then Sc1.FieldByName('RETENCAOPIS').Value := 1
          else Sc1.FieldByName('RETENCAOPIS').Value := 0;
         end
      else Sc1.FieldByName('RETENCAOPIS').Value := 0;

      if Not Tb1.FieldByName('RETENCAOCOFINS').IsNull then
         begin
          if Tb1.FieldByName('RETENCAOCOFINS').Value then Sc1.FieldByName('RETENCAOCOFINS').Value := 1
          else Sc1.FieldByName('RETENCAOCOFINS').Value := 0;
         end
      else Sc1.FieldByName('RETENCAOCOFINS').Value := 0;

      if Not Tb1.FieldByName('RETENCAOCSLL').IsNull then
         begin
          if Tb1.FieldByName('RETENCAOCSLL').Value then Sc1.FieldByName('RETENCAOCSLL').Value := 1
          else Sc1.FieldByName('RETENCAOCSLL').Value := 0;
         end
      else Sc1.FieldByName('RETENCAOCSLL').Value := 0;

      if Not Tb1.FieldByName('IMPRIMIRDUPLICATA').IsNull then
         begin
          if Tb1.FieldByName('IMPRIMIRDUPLICATA').Value then Sc1.FieldByName('IMPRIMIRDUPLICATA').Value := 1
          else Sc1.FieldByName('IMPRIMIRDUPLICATA').Value := 0;
         end
      else Sc1.FieldByName('IMPRIMIRDUPLICATA').Value := 0;

      Sc1.Post;
      Sc1.ApplyUpdates(-1);
      Tb1.Next;
      Pb1.StepIt;
    end;
    if Sc1.ChangeCount > 0 then
       Sc1.ApplyUpdates(-1);
    Tb1.Close;
    Sc1.Close;
  end;
end;

{Recursos de migração}
procedure TfrmMigra.AbreTabela(TblDBX, TblDBE  : String);
begin
 with DMMigra do
 begin
  Tb1.TableName   := TblDBE;
  Sc1.CommandText := 'SELECT * FROM CM_'+ TblDBX;
  Tb1.Open;
  Sc1.Open;
  Tb1.First;
  frmMigra.Pb1.Max := Tb1.RecordCount;
 end;
end;

procedure TfrmMigra.Migra( DestinoDBX, OrigemDBE  : String; FieldOuValue : Char);
begin
 {Insere direto pelo 'field' ou um 'valor' passado em caso de condições}
 case AnsiUpperCase( FieldOuValue )[1] of
   'F' : DMMigra.Sc1.FieldByName( DestinoDBX ).Value  := DMMigra.Tb1.FieldByName(OrigemDBE).Value;
   'V' : DMMigra.Sc1.FieldByName( DestinoDBX ).Value  := StrToInt( OrigemDBE );
   'B' :
   begin
    if  Not DMMigra.Tb1.FieldByName( OrigemDBE ).IsNull then
        begin
         if DMMigra.Tb1.FieldByName( OrigemDBE ).Value then
            DMMigra.Sc1.FieldByName( DestinoDBX ).Value := 1
         else
            DMMigra.Sc1.FieldByName( DestinoDBX ).Value := 0;
        end
    else
       DMMigra.Sc1.FieldByName( DestinoDBX ).Value := 0;
   end;
 end;
end;

procedure TfrmMigra.InsereTipoContrato;
var sqlTipoContrato, iSQL : String;
    cdsTipoContrato : TClientDataSet;
begin
 sqlTipoContrato  := 'SELECT TipoContratoID FROM CM_TipoContrato';
 ExecDDL( -1, sqlTipoContrato, cdsTipoContrato );
 cdsTipoContrato.AddIndex( 'idx1','TipoContratoID',[ixPrimary],'','',0);
 cdsTipoContrato.IndexName := 'idx1';

 try
  if not cdsTipoContrato.FindKey([1]) then
     begin
      iSQL := 'INSERT INTO CM_TIPOCONTRATO ( TIPOCONTRATOID,DESCRICAO ) '+
              'VALUES (1,'+ QuotedStr('C/PECA') +')';
      DMMigra.ExecQry( iSQL );
     end;

  if not cdsTipoContrato.FindKey([2]) then
     begin
      iSQL := 'INSERT INTO CM_TIPOCONTRATO ( TIPOCONTRATOID,DESCRICAO ) '+
              'VALUES (2,'+ QuotedStr('S/PECA') +')';
      DMMigra.ExecQry( iSQL );
     end;

 finally
  cdsTipoContrato.DeleteIndex('idx1');
  cdsTipoContrato.Close;
  FreeAndNil(cdsTipoContrato);
 end;
end;

procedure TfrmMigra.InicializaCorretiva();
begin
 Corretiva[1] := 'A - Ilimitada podem nos chamar qtas. vezes for necessário, sem nenhuma cobrança';
 Corretiva[2] := 'B - Ilimitada, cobrando-se deslocamento do técnico (sem cobrar as horas técnicas)';
 Corretiva[3] := 'C - 3/ano; além deste limite, cobrar do cliente as despesas de deslocamento';
 Corretiva[4] := 'D - 3/ano; além deste limite, cobrar tudo do cliente: deslocamento e horas técnicas';
 Corretiva[5] := 'E - 3/ano, cobrando-se deslocamento (a partir da 4ª, cobraremos tudo)';
 Corretiva[6] := 'F - 4/ano (a partir da 5ª, cobraremos tudo)';
 Corretiva[7] := 'G - 4/ano, cobrando-se deslocamento (a partir da 5ª, cobraremos tudo)';
 Corretiva[8] := 'H - 2/mês';
end;

procedure TfrmMigra.InicializaPreventiva();
begin
 Preventiva[1] := 'Mensal';
 Preventiva[2] := 'Bimestral';
 Preventiva[3] := 'Trimestral';
 Preventiva[4] := 'Quadrimenstral';
end;

procedure TfrmMigra.InsereCorretiva;
var sqlCorretiva, iSQL : String;
    i    : Integer;
    cdsCorretiva : TClientDataSet;
begin
 sqlCorretiva  := 'SELECT CORRETIVAID FROM CM_CORRETIVA';
 ExecDDL( -1, sqlCorretiva, cdsCorretiva );
 cdsCorretiva.AddIndex( 'idx1','CORRETIVAID',[ixPrimary],'','',0);
 cdsCorretiva.IndexName := 'idx1';

 try
  for i := 1 to SizeCorretiva do
    begin
     if not cdsCorretiva.FindKey([i]) then
        begin
         iSQL := '';
         iSQL := 'INSERT INTO CM_CORRETIVA( CORRETIVAID,DESCRICAO ) VALUES( '+
                 IntToStr( i )+', '+ QuotedStr( Corretiva[i] )+ ' ) ';
         DMMigra.ExecQry( iSQL );
        end;
    end;

 finally
  cdsCorretiva.DeleteIndex('idx1');
  cdsCorretiva.Close;
  FreeAndNil(cdsCorretiva);
 end;
end;

procedure TfrmMigra.InserePreventiva;
var sqlPreventiva, iSQL : String;
    i    : Integer;
    cdsPreventiva : TClientDataSet;
begin
 sqlPreventiva  := 'SELECT PreventivaID FROM CM_Preventiva';
 ExecDDL( -1, sqlPreventiva, cdsPreventiva );
 cdsPreventiva.AddIndex( 'idx1','PreventivaID',[ixPrimary],'','',0);
 cdsPreventiva.IndexName := 'idx1';

 try
  for i := 1 to SizePreventiva do
    begin
     if not cdsPreventiva.FindKey([i]) then
        begin
         iSQL := '';
         iSQL := 'INSERT INTO CM_PREVENTIVA( PREVENTIVAID,DESCRICAO ) VALUES( '+
                 IntToStr( i )+', '+ QuotedStr( Preventiva[i] )+' ) ';
         DMMigra.ExecQry( iSQL );
        end;
    end;
 finally
  cdsPreventiva.DeleteIndex('idx1');
  cdsPreventiva.Close;
  FreeAndNil(cdsPreventiva);
 end;
end;


procedure TfrmMigra.FechaTabela;
begin
 with DMMigra do
 begin
  if Sc1.ChangeCount > 0 then
     Sc1.ApplyUpdates(-1);
  Tb1.Close;
  Sc1.Close;
 end;
end;

{Tabelas de Migração}
procedure TfrmMigra.MgContrato;
var  i : Integer;
begin
 with DMMigra do
 begin
  for i:= 1 to 13 do
  begin
    dbMigra.Connected := False;
    dbMigra.AliasName := 'EST_FAT_EMPRESA_' + FormatFloat( '000', i );
    dbMigra.Connected := True;

    AbreTabela( 'CONTRATO', 'CONTRATO' ); {Destino, Origem}

    SC1.AddIndex( 'idx1','EMPRESAID;CONTRATOID',[ixPrimary],'','',0);
    SC1.IndexName := 'idx1';

    while Not Tb1.Eof do
    begin
     if SC1.FindKey([i,Tb1.FieldByName('NUM_CONTRATO').Value ]) then
        SC1.Edit
     else
        Sc1.Insert;

    {Campos=16} {Migra = Destino <- Origem}
     Migra('EMPRESAID',         IntToStr(i),                 'V');
     Migra('CONTRATOID',        'NUM_CONTRATO',              'F'); {}
     Migra('DATAEMISSAO',       'DATA_EMISSAO',              'F'); {}
     Migra('CONTRATOANTIGOID',  'NUM_CONTRATO_ANT',          'F'); {}
     Migra('CLIENTEID',         'COD_CLIENTE',               'F'); {}
     Migra('CONTATO',           'CONTATO',                   'F'); {}
     Migra('FILIALID',          'COD_FILIAL',                'F'); {}
     Migra('NATUREZAOPID',      'CODIGO_OPERACAO',           'F'); {}
     Migra('ALIQUOTAICMS',      'ALIQUOTA_ICM',              'F'); {}
     Migra('OBSERVACAOID',      'COD_OBS',                   'F'); {}
     Migra('OBSPDS',            'OBSERVACAO',                'F'); {}
     Migra('TRANSPORTADORID',   'COD_TRANSP',                'F'); {}
     Migra('OBSCLIENTE',        'OBS_CLIENTE',               'F'); {}
     Migra('CONTRATOMEMO',      'CONTRATO_MEMO',             'F'); {}
     Migra('CANCELADO',         'CONTRATO_IMP',              'B'); {}
     {}
     Sc1.Post;
     if Sc1.ChangeCount >= 100 then
        Sc1.ApplyUpdates(-1);

     Tb1.Next;
     frmMigra.Pb1.StepIt;
    end;
   end;
   SC1.DeleteIndex('idx1');
   FechaTabela;
 end;
end;

procedure TfrmMigra.MgContratoAno;
var sqlContrato : String;
    cdsContrato : TClientDataSet;
    i : Integer;
begin
 cdsContrato := Nil;
 sqlContrato := 'SELECT EMPRESAID,CONTRATOID FROM CM_CONTRATO';

 ExecDDL( -1, sqlContrato, cdsContrato );
 cdsContrato.AddIndex( 'idx1','EMPRESAID;CONTRATOID',[ixPrimary],'','',0);
 cdsContrato.IndexName := 'idx1';

 try
  with DMMigra do
  begin
  for i:= 1 to 13 do
   begin
    dbMigra.Connected := False;
    dbMigra.AliasName := 'EST_FAT_EMPRESA_' + FormatFloat( '000', i );
    dbMigra.Connected := True;

    AbreTabela( 'CONTRATOANO', 'ITEMCONTRATO' ); {Destino, Origem}

    SC1.AddIndex( 'idx1','EMPRESAID;CONTRATOID;ANOID',[ixPrimary],'','',0);
    SC1.IndexName := 'idx1';

    while Not Tb1.Eof do
    begin
     if not cdsContrato.FindKey([i,Tb1.FieldByName('NUM_CONTRATO').AsString]) then
        begin
         Tb1.Next;
         Continue;
        end;

     if SC1.FindKey([i,Tb1.FieldByName('NUM_CONTRATO').Value, Tb1.FieldByName('ANO_CONTRATO').Value ]) then
        SC1.Edit
     else
        Sc1.Insert;

     Migra('EMPRESAID',          IntToStr(i),          'V');
     Migra('CONTRATOID',         'NUM_CONTRATO',       'F');
     Migra('ANOID',              'ANO_CONTRATO',       'F');
     Migra('INDCONTRATOID',      'COD_INDICE',         'F');
     Migra('DATAINICIOCONTRATO', 'DT_INICIO_CONTRATO', 'F');
     Migra('DATAFIMCONTRATO',    'DT_FIM_CONTRATO',    'F');
     Migra('VLRCONTRATOMENSAL',  'VL_CONTRATO_MES',    'F');
     Migra('VLRTOTALCONTRATO',   'VL_TOTAL_CONTRATO',  'F');
     Migra('QTDPARCELA',         'QTD_PARCELA',        'F');
     Migra('PAGAMENTO',          'PAGAMENTO',          'F');
     Migra('PERIODOCONCLUIDO',   'PERIODO_CONC',       'B');
     {}
     Sc1.Post;
     Sc1.ApplyUpdates(-1);
     Tb1.Next;
     frmMigra.Pb1.StepIt;
    end;
    SC1.DeleteIndex('idx1');
    FechaTabela;
   end;
  end;
 finally
  FreeAndNil( cdsContrato );
 end;
end;

procedure TfrmMigra.MgContratoParc;
var sqlNFS, sqlContratoAno : String;
    cdsNFS, cdsContratoAno : TClientDataSet;
    i : Integer;
begin
 sqlNFS := 'SELECT EMPRESAID, NFSID, DATAEMISSAOID, ENTIDADEID FROM EF_NFS';
 ExecDDL( -1, sqlNFS, cdsNFS );
 cdsNFS.AddIndex( 'idx1','EMPRESAID;NFSID;DATAEMISSAOID',[ixPrimary],'','',0);
 cdsNFS.IndexName := 'idx1';

 sqlContratoAno := 'SELECT EMPRESAID,CONTRATOID,ANOID FROM CM_CONTRATOANO';
 ExecDDL( -1, sqlContratoAno, cdsContratoAno );
 cdsContratoAno.AddIndex( 'idx1','EMPRESAID;CONTRATOID;ANOID',[ixPrimary],'','',0);
 cdsContratoAno.IndexName := 'idx1';

 try
  for i:= 1 to 13 do
  begin
   with DMMigra do begin
   dbMigra.Connected := False;
   dbMigra.AliasName := 'EST_FAT_EMPRESA_' + FormatFloat( '000', i );
   dbMigra.Connected := True;

   AbreTabela( 'CONTRATOPARC', 'PARCCONTRATO'); {Destino, Origem}
   SC1.AddIndex( 'idx1','EMPRESAID;CONTRATOID;ANOID;PARCELAID',[ixPrimary],'','',0);
   SC1.IndexName := 'idx1';

   while Not Tb1.Eof do
   begin
    if not cdsContratoAno.FindKey([i, Tb1.FieldByName('NUM_CONTRATO').Value, Tb1.FieldByName('ANO_CONTRATO').AsString ]) then
       begin
        frmMigra.wwrichtxtLOG.Lines.Add( 'Tabela ContratoParc Parcela do contrato não cadastrado, ContratoID = ' + Tb1.FieldByName('NUM_CONTRATO').AsString );
        Tb1.Next;
        Continue;
       end;

    if not Tb1.FieldByName('NUMERO_NOTA').IsNull then
       if not cdsNFS.FindKey([i,Tb1.FieldByName('NUMERO_NOTA').Value, Tb1.FieldByName('DATA_EMISSAO').Value]) then
          begin
           frmMigra.wwrichtxtLOG.Lines.Add( 'Tabela ContratoParc NFS não cadastrada, ContratoID = ' + Tb1.FieldByName('NUM_CONTRATO').AsString );
           Tb1.Next;
           Continue;
          end;

    if SC1.FindKey([i,Tb1.FieldByName('NUM_CONTRATO').Value, Tb1.FieldByName('ANO_CONTRATO').Value,Tb1.FieldByName('PARCELA').Value ]) then
       SC1.Edit
    else
       Sc1.Insert;

    Migra('EMPRESAID',         IntToStr(i),          'V');
    Migra('CONTRATOID',        'NUM_CONTRATO',       'F');
    Migra('ANOID',     'ANO_CONTRATO',       'F');
    Migra('PARCELAID',         'PARCELA',            'F');
    Migra('PERIODOINICIAL',    'PERIODO_INICIO',     'F');
    Migra('PERIODOFINAL',      'PERIODO_FIM',        'F');
    Migra('MESVENCIMENTO',     'MES',                'F');
    Migra('DATAVENCIMENTO',    'DT_VENCIMENTO',      'F');
    Migra('DATAPAGAMENTO',     'DT_PAGAMENTO',       'F');
    Migra('VLRCONTRATO',       'VL_CONTRATO',        'F');
    Migra('PDSID',             'NUMERO_PEDIDO',      'F');
    Migra('NFSID',             'NUMERO_NOTA',        'F');
    Migra('DATAEMISSAOID',     'DATA_EMISSAO',       'F');
    Migra('GERADA',            'GERADA',             'B');
    //Migra('USUARIO',           'USUARIO',            'F');
    Sc1.Post;

    if Sc1.ChangeCount >= 500 then
       Sc1.ApplyUpdates(-1);

    Tb1.Next;
    frmMigra.Pb1.StepIt;
   end;
   SC1.DeleteIndex('idx1');
   FechaTabela;
   end;
  end;
  cdsNFS.Close;
  cdsContratoAno.Close;
 finally
  FreeAndNil( cdsNFS );
  FreeAndNil( cdsContratoAno );
 end;
end;

procedure TfrmMigra.MgContratoApar;
var sqlContratoAno, sqlAparelho, sqlCatalogo, sqlTipoContrato, sqlCorretiva, sqlPreventiva : String;
    cdsContratoAno, cdsAparelho, cdsCatalogo, cdsTipoContrato, cdsCorretiva, cdsPreventiva : TClientDataSet;
    i : integer;
    Descricao : String;
begin
 sqlContratoAno := 'SELECT EMPRESAID, CONTRATOID,ANOID FROM CM_CONTRATOANO';
 ExecDDL( -1, sqlContratoAno, cdsContratoAno );
 cdsContratoAno.AddIndex( 'idx1','EMPRESAID;CONTRATOID;ANOID',[ixDescending],'','',0);
 cdsContratoAno.IndexName := 'idx1';

 sqlAparelho := 'SELECT OS_APARELHO.SERIEID,OS_APARELHO.MODELOID FROM OS_APARELHO ';
 ExecDDL( -1, sqlAparelho, cdsAparelho );
 cdsAparelho.AddIndex( 'idx1','SERIEID;MODELOID',[ixPrimary],'','',0);
 cdsAparelho.IndexName := 'idx1';

 sqlCatalogo  := 'SELECT MODELOID FROM PP_CATALOGO';
 ExecDDL( -1, sqlCatalogo, cdsCatalogo );
 cdsCatalogo.AddIndex( 'idx1','MODELOID',[ixPrimary],'','',0);
 cdsCatalogo.IndexName := 'idx1';

 sqlTipoContrato  := 'SELECT DESCRICAO, TIPOCONTRATOID FROM CM_TIPOCONTRATO';
 ExecDDL( -1, sqlTipoContrato, cdsTipoContrato );
 cdsTipoContrato.AddIndex( 'idx1','DESCRICAO',[ixPrimary],'','',0);
 cdsTipoContrato.IndexName := 'idx1';

 sqlCorretiva  := 'SELECT DESCRICAO, CORRETIVAID FROM CM_CORRETIVA';
 ExecDDL( -1, sqlCorretiva, cdsCorretiva );
 cdsCorretiva.AddIndex( 'idx1','DESCRICAO',[ixPrimary],'','',0);
 cdsCorretiva.IndexName := 'idx1';

 sqlPreventiva  := 'SELECT DESCRICAO, PREVENTIVAID FROM CM_PREVENTIVA';
 ExecDDL( -1, sqlPreventiva, cdsPreventiva );
 cdsPreventiva.AddIndex( 'idx1','DESCRICAO',[ixPrimary],'','',0);
 cdsPreventiva.IndexName := 'idx1';

 try
  InicializaCorretiva;
  InsereCorretiva;
  InicializaPreventiva;
  InserePreventiva;
  InsereTipoContrato;

  with DMMigra do
  begin
   for i:= 1 to 13 do
   begin
    dbMigra.Connected := False;
    dbMigra.AliasName := 'EST_FAT_EMPRESA_' + FormatFloat( '000', i );
    dbMigra.Connected := True;

    AbreTabela( 'CONTRATOAPAR', 'APARCONTRATO');

    SC1.AddIndex( 'idx1','EMPRESAID;CONTRATOID;ANOID;SERIEID;MODELOID',[ixPrimary],'','',0);
    SC1.IndexName := 'idx1';

    while not Tb1.Eof do
    begin
     if not cdsContratoAno.FindKey([IntToStr(i), Tb1.FieldByName('NUM_CONTRATO').Value, Tb1.FieldByName('ANO_CONTRATO').AsString ]) then
        begin
         Tb1.Next;
         Continue;
        end;

     if not cdsAparelho.FindKey([Tb1.FieldByName('SERIE').Value,Tb1.FieldByName('MODELO').AsString]) then
        begin
         Tb1.Next;
         Continue;
        end;

     if not cdsCatalogo.FindKey([Tb1.FieldByName('MODELO').Value]) then
        begin
         Tb1.Next;
         Continue;
        end;

     if SC1.FindKey([i,Tb1.FieldByName('NUM_CONTRATO').Value, Tb1.FieldByName('ANO_CONTRATO').Value,
                       Tb1.FieldByName('SERIE').Value, Tb1.FieldByName('MODELO').Value]) then
        SC1.Edit
     else
        Sc1.Insert;

     Migra('EMPRESAID',          IntToStr(i),           'V');
     Migra('CONTRATOID',         'NUM_CONTRATO',        'F');
     Migra('ANOID',      'ANO_CONTRATO',        'F');
     Migra('SERIEID',            'SERIE',               'F');
     Migra('MODELOID',           'MODELO',              'F');

     if Not ( Tb1.FieldByName('TIPO_CONTRATO').IsNull ) then
        begin
         Descricao := Trim( copy(Tb1.FieldByName('TIPO_CONTRATO').AsString,1,1)+'/PECA');
         if cdsTipoContrato.FindKey([Descricao]) then
            Migra('TIPOCONTRATOID',cdsTipoContrato.FieldByName('TIPOCONTRATOID').Value,'V');
        end;

     Migra('VLRMENSAL',          'VALOR_MENSAL',        'F');

     if ( Tb1.FieldByName('MANUT_CORRETIVA').Value <> 'I' ) then
        begin
         Descricao := Trim( Tb1.FieldByName('MANUT_CORRETIVA').AsString );
         if cdsCorretiva.Locate('DESCRICAO',Descricao,[loPartialKey,loCaseInsensitive]) then
            Migra('CORRETIVAID',cdsCorretiva.FieldByName('CORRETIVAID').AsString,'V');
        end;

     if Not ( Tb1.FieldByName('MANUT_PREVENTIVA').IsNull ) then
        begin
         Descricao := Trim( Copy(Tb1.FieldByName('MANUT_PREVENTIVA').AsString,1,3));
         if cdsPreventiva.Locate('DESCRICAO',Descricao,[loPartialKey,loCaseInsensitive]) then
            Migra('PREVENTIVAID', cdsPreventiva.FieldByName('PREVENTIVAID').Value, 'V');
        end;


     if not Tb1.FieldByName('QTDPREVENTIVAS_UTIL').IsNull then
        Migra('QTDPREVENTIVASUTIL', 'QTDPREVENTIVAS_UTIL', 'F')
     else
        SC1.FieldByName('QTDPREVENTIVASUTIL').Value := 0;

     if not Tb1.FieldByName('QTDCORRETIVAS_UTIL').IsNull then
        Migra('QTDCORRETIVASUTIL',  'QTDCORRETIVAS_UTIL' , 'F')
     else
        SC1.FieldByName('QTDCORRETIVASUTIL').Value := 0;

     if not Tb1.FieldByName('QTDPECAS_UTIL').IsNull then
        Migra('QTDPECASUTIL', 'QTDPECAS_UTIL',       'F')
     else
        SC1.FieldByName('QTDPECASUTIL').Value := 0;


     Migra('HORASESPERA',        'ATENDIMENTO',         'F');
     Migra('QTDPREVENTIVAS',     'QTDPREVENTIVAS',      'F');
     Migra('BLOQUEARPREVENTIVAS','BLOQUEAR_PREVENTIVAS','B');
     Migra('QTDCORRETIVAS',      'QTDCORRETIVAS',       'F');
     Migra('BLOQUEARCORRETIVAS', 'BLOQUEAR_CORRETIVAS', 'B');
     Migra('QTDPECAS',           'QTDPECAS',            'F');
     Migra('TERMOCONTRATOID',    'CD_TERMO',            'F');
     Migra('IMPRCONDCONTR',      'IMPR_COND_CONTR',     'B');
  //     Migra('USUARIO',            'USUARIO',             'F');
     Sc1.Post;
     if Sc1.ChangeCount >= 100 then
        Sc1.ApplyUpdates(-1);
     Tb1.Next;
     frmMigra.Pb1.StepIt;
    end;
   end;
   SC1.DeleteIndex('idx1');
   FechaTabela;
  end;

 finally
  FreeAndNil( cdsContratoAno );
  FreeAndNil( cdsAparelho );
  FreeAndNil( cdsCatalogo );
  FreeAndNil( cdsTipoContrato );
  FreeAndNil( cdsCorretiva );
  FreeAndNil( cdsPreventiva );
 end;
end;

procedure TfrmMigra.MgContratoServ;
var sqlContratoAno : String;
    cdsContratoAno : TClientDataSet;
    i : Integer;
begin
 sqlContratoAno := 'SELECT EMPRESAID,CONTRATOID,ANOID FROM CM_CONTRATOANO';
 ExecDDL( -1, sqlContratoAno, cdsContratoAno );
 cdsContratoAno.AddIndex( 'idx1','EMPRESAID;CONTRATOID;ANOID',[ixPrimary],'','',0);
 cdsContratoAno.IndexName := 'idx1';

 try

 with DMMigra do
 begin
  for i:= 1 to 13 do
  begin
   dbMigra.Connected := False;
   dbMigra.AliasName := 'EST_FAT_EMPRESA_' + FormatFloat( '000', i );
   dbMigra.Connected := True;

   AbreTabela( 'CONTRATOSERV', 'SERVCONTRATO'); {Destino, Origem}

   SC1.AddIndex( 'idx1','EMPRESAID;CONTRATOID;ANOID;ITEMID;SERVICOID',[ixPrimary],'','',0);
   SC1.IndexName := 'idx1';

   while Not Tb1.Eof do
   begin
    if not cdsContratoAno.Findkey([i,Tb1.FieldByName('NUM_CONTRATO').Value,Tb1.FieldByName('ANO_CONTRATO').Value]) then
       begin
        Tb1.Next;
        Continue;
       end;


    if SC1.FindKey([i,Tb1.FieldByName('NUM_CONTRATO').Value, Tb1.FieldByName('ANO_CONTRATO').Value,
                      Tb1.FieldByName('ITEM').Value, Tb1.FieldByName('CODIGO_SERVICO').Value]) then
       SC1.Edit
    else
       Sc1.Insert;

    Migra('EMPRESAID',          IntToStr(i),         'V');
    Migra('CONTRATOID',         'NUM_CONTRATO',      'F');
    Migra('ANOID',      'ANO_CONTRATO',      'F');
    Migra('ITEMID',             'ITEM',              'F');
    Migra('SERVICOID',          'CODIGO_SERVICO',    'F');
    Migra('VLRSERVICO',         'VALOR_SERVICO',     'F');
    Migra('GRUPOID',            'GRUPO_SERVICO',     'F');
    Migra('HISTORICO',          'HISTORICO',         'F');
   // Migra('USUARIO',            'USUARIO',           'F');
   {}
    Sc1.Post;
    if Sc1.ChangeCount >= 100 then
       Sc1.ApplyUpdates(-1);
    Tb1.Next;
    frmMigra.Pb1.StepIt;
   end;
   SC1.DeleteIndex('idx1');
   FechaTabela;
  end;
 end;
 finally
  FreeAndNil( cdsContratoAno );
 end;
end;

procedure TfrmMigra.MgContratoAditivo;
var sqlContrato : String;
    cdsContrato : TClientDataSet;
    i : Integer;
begin
 sqlContrato := 'SELECT EMPRESAID,CONTRATOID FROM CM_CONTRATO';
 ExecDDL( -1, sqlContrato, cdsContrato );
 cdsContrato.AddIndex( 'idx1','EMPRESAID;CONTRATOID',[ixPrimary],'','',0);
 cdsContrato.IndexName := 'idx1';

 try
  with DMMigra do
  begin
   for i:= 1 to 13 do
   begin
     dbMigra.Connected := False;
     dbMigra.AliasName := 'EST_FAT_EMPRESA_' + FormatFloat( '000', i );
     dbMigra.Connected := True;

     AbreTabela( 'CONTRATOADITIVO', 'ADITIVO'); {Destino, Origem}
     SC1.AddIndex( 'idx1','EMPRESAID;CONTRATOID;ADITIVOID',[ixPrimary],'','',0);
     SC1.IndexName := 'idx1';

     while Not Tb1.Eof do
     begin
      if not cdsContrato.FindKey([i,Tb1.FieldByName('NUM_CONTRATO').Value]) then
         begin
          Tb1.Next;
          Continue;
         end;

      if SC1.FindKey([i,Tb1.FieldByName('NUM_CONTRATO').Value, Tb1.FieldByName('SEQ_ADITIVO').Value]) then
         SC1.Edit
      else
         Sc1.Insert;

      {Campos=5} {Migra = Destino <- Origem}
      Migra('EMPRESAID',      IntToStr(i),       'V');
      Migra('CONTRATOID',     'NUM_CONTRATO',    'F');
      Migra('ADITIVOID',      'SEQ_ADITIVO',     'F');
      Migra('DATAADITIVO',    'DATA',            'F');
 //     Migra('USUARIO',        'USUARIO',         'F');
      {}
      Sc1.Post;
      if Sc1.ChangeCount >= 100 then
         Sc1.ApplyUpdates(-1);
      Tb1.Next;
      frmMigra.Pb1.StepIt;
     end;
    SC1.DeleteIndex('idx1');
    FechaTabela;
   end;
  end;
  cdsContrato.Close;
 finally
  FreeAndNil( cdsContrato );
 end;
end;

procedure TfrmMigra.MgIndice;
begin
 try
  with DMMigra do
  begin
   dbMigra.Connected := False;
   dbMigra.AliasName := 'EST_FAT_CADASTRO';
   dbMigra.Connected := True;

   AbreTabela( 'INDCONTRATO', 'INDICE'); {Destino, Origem}

   while Not Tb1.Eof do
   begin
    Sc1.Insert;
    {Campos=3} {Migra = Destino <- Origem}
     Migra('INDCONTRATOID',         'COD_INDICE',     'F');
     Migra('DESCRICAO',        'DESCRICAO',      'F');
    // Migra('USUARIO',          'USUARIO',        'F'); {}
    {}
    Sc1.Post;
    if Sc1.ChangeCount >= 100 then Sc1.ApplyUpdates(-1);
    Tb1.Next;
    frmMigra.Pb1.StepIt;
   end;
  end;
 Except
 On E:Exception do
    ShowMessage('O Erro ocorreu na tabela MgIndice');
 end;
 FechaTabela;
end;

procedure TfrmMigra.MgValorIndice;
begin
 try
  with DMMigra do
  begin
   dbMigra.Connected := False;
   dbMigra.AliasName := 'EST_FAT_CADASTRO';
   dbMigra.Connected := True;

   AbreTabela( 'VALORINDICE', 'VALORINDICE'); {Destino, Origem}

   while Not Tb1.Eof do
   begin
    Sc1.Insert;
    {Campos=4} {Migra = Destino <- Origem}
    Migra('INDICEID',         'COD_INDICE',     'F');
    Migra('DATAINDICE',       'DATA',           'F');
    Migra('VLRINDICE',        'VALOR_INDICE',   'F');
//     Migra('USUARIO',          'USUARIO',        'F'); {}
    {}
    Sc1.Post;
    if Sc1.ChangeCount >= 100 then Sc1.ApplyUpdates(-1);
    Tb1.Next;
    frmMigra.Pb1.StepIt;
   end;
  end;
 Except
 On E:Exception do
    ShowMessage('O Erro ocorreu na tabela MgValorIndice');
 end;
 FechaTabela;
end;

procedure TfrmMigra.MgContratoPadrao;
begin
 with DMMigra do begin
 dbMigra.Connected := False;
 dbMigra.AliasName := 'EST_FAT_CADASTRO';
 dbMigra.Connected := True;

 AbreTabela( 'CONTRATOPADRAO', 'CONTRATOPADRAO');
 try
   while Not Tb1.Eof do
    begin
     Sc1.Insert;
     Migra('ANEXO',            'CONTRATO',      'F');
     Migra('ADITIVO',           'ADTIVO',       'F');
     Migra('ULTIMOCONTRATO',    'SEQ_CONTRATO',  'F');
//     Migra('USUARIO',           'USUARIO',       'F');

     Sc1.Post;
     if Sc1.ChangeCount >= 100 then Sc1.ApplyUpdates(-1);
     Tb1.Next;
     frmMigra.Pb1.StepIt;
    end;
 Except
 On E:Exception do
    ShowMessage('O Erro ocorreu na tabela MgContratoPadrao');
 end;
 end;
 FechaTabela;
end;

procedure TfrmMigra.MgTermoContrato;
begin
 try
  with DMMigra do
  begin
   dbMigra.Connected := False;
   dbMigra.AliasName := 'EST_FAT_CADASTRO';
   dbMigra.Connected := True;

   AbreTabela( 'TERMOCONTRATO', 'TERMOCONTRATO'); {Destino, Origem}
   while Not Tb1.Eof do
   begin
    Sc1.Insert;
    {Campos=3} {Migra = Destino <- Origem}

    Migra('TERMOCONTRATOID', 'CD_TERMO',      'F'); {}
    Migra('DESCRICAO',       'DESC_TERMO',    'F');                    {}

   //     Migra('USUARIO',         'USUARIO',       'F');                    {}
    {}
    Sc1.Post;
    if Sc1.ChangeCount >= 1 then
       Sc1.ApplyUpdates(-1);
    Tb1.Next;
    frmMigra.Pb1.StepIt;
   end;
  end;
 Except
 On E:Exception do
    ShowMessage('O Erro ocorreu na tabela MgTermoContrato');
 end;
 FechaTabela;

end;


procedure TfrmMigra.Sc1ReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
 Action := HandleReconcileError( DataSet, UpdateKind, E);
end;

function TfrmMigra.TransfNum( Txt : String ) : String;
var NovoTxt : String;
    x : integer;
begin
 for x := 1 to LengTh( Txt ) do begin
  if Txt[x] in ['0'..'9'] then
     NovoTxt := NovoTxt + Txt[x];
 end;
 Result := NovoTxt;
end;

function TfrmMigra.ValidCnPJ_CnPF( Text : String ) : Boolean;
begin
 if LengTh( Trim( TransfNum( Text ) ) ) > 13 then
    Result := CnPJ( Text )
 else
    Result := CnPF( Text );
end;

function TfrmMigra.CnPJ( Cnpj : String ) : Boolean;
var i, code : Integer;
    d2 : Array[1..12] of Integer;
    Df4, Df5, Df6, Resto1, PriDig, SegDig : Integer;
    Pridig2, Segdig2, Cnpj_Conv           : String;
begin

 Cnpj_Conv := TransfNum( Cnpj );

 if Cnpj_Conv = '' then
    begin
     Result := False;
     exit
    end;

 for i := 1 to 12 do
  Val( Cnpj_Conv[i],D2[i], Code );

 DF4    := 5 * D2[1] + 4 * D2[2] + 3 * D2[3] + 2 * D2[4] + 9 * D2[5] + 8 * D2[6] + 7 * D2[7] + 6 * D2[8] + 5 * D2[9] + 4 * D2[10] + 3 * D2[11] + 2 * D2[12];
 DF5    := DF4 div 11;
 DF6    := DF5 * 11;
 Resto1 := Df4 - DF6;

 if ( Resto1 = 0 ) or ( Resto1 = 1 ) then
    PriDig := 0
 else
    Pridig := 11 - Resto1;

 for i := 1 to 12 do
  Val( Cnpj_Conv[i], D2[i], Code );

 DF4    := 6 * D2[1] + 5 * D2[2] + 4 * D2[3] + 3 * D2[4] + 2 * D2[5] + 9 * D2[6] + 8 * D2[7] + 7 * D2[8] + 6 * D2[9] + 5 * D2[10] +4 * D2[11] + 3 * D2[12] + 2 * Pridig;
 DF5    := DF4 div 11;
 DF6    := DF5 * 11;
 Resto1 := Df4 - DF6;

 if ( Resto1 = 0 ) or ( Resto1 = 1 ) then
    SegDig := 0
 else
    SegDig := 11 - Resto1;

 Str( PriDig, PriDig2);
 Str( SegDig, SegDig2);

 if not ( PriDig2 =Cnpj_Conv[13] ) or not ( SegDig2 = Cnpj_Conv[14] ) then
    Result := False
 else
    Result := True;
end;

function TfrmMigra.CnPF( Cpf : String ) : Boolean;
var i, code : Integer;
    d2 : Array[1..12] of Integer;
    DF4, DF5, DF6, Resto1, PriDig, SegDig : Integer;
    Pridig2, Segdig2, Cpf_Conv  : String;
begin
 Cpf_Conv := TransfNum( Cpf );

 if Cpf_Conv = '' then
    begin
     Result := False;
     exit
    end;

 for i := 1 to 9 do
  Val( Cpf_Conv[i], D2[i], Code );

 DF4    := 10 * D2[1] + 9 * D2[2] + 8 * D2[3] + 7 * D2[4] + 6 * D2[5] + 5 * D2[6] + 4 * D2[7] + 3 * D2[8] + 2 * D2[9];
 DF5    := DF4 div 11;
 DF6    := DF5 * 11;
 Resto1 := Df4 - DF6;

 if ( Resto1 = 0 ) or ( Resto1 = 1 ) then
    PriDig := 0
 else
    PriDig := 11 - Resto1;

 For i := 1 to 9 do Val(Cpf_Conv [i],D2[i],Code);
     DF4 := 11 * D2[1] + 10 * D2[2] + 9 * D2[3] + 8 * D2[4] + 7 * D2[5] + 6 * D2[6] + 5 * D2[7] + 4 * D2[8] + 3 * D2[9] + 2 * Pridig;

 DF5    := DF4 div 11;
 DF6    := DF5 * 11;
 Resto1 := Df4 - DF6;

 if ( Resto1 = 0 ) or ( Resto1 = 1 ) then
    SegDig := 0
 else
    SegDig := 11 - Resto1;

 Str( Pridig, Pridig2 );
 Str( Segdig, Segdig2 );

 if not ( PriDig2 = Cpf_Conv[10]) or not (SegDig2 = Cpf_Conv[11]) then
    Result := False
 else
    Result := True;
end;

procedure TfrmMigra.Selecionartodos1Click(Sender: TObject);
var i : Integer;
begin
 for i := 0 to fctvwTabelas.Items.Count - 1 do
  fctvwTabelas.Items[i].Checked := True;

end;

procedure TfrmMigra.Desmarcartodososselecionados1Click(Sender: TObject);
begin
 fctvwTabelas.UnselectAll;
end;

procedure TfrmMigra.BitBtn1Click(Sender: TObject);
var i, TotItens : Integer;
    HoraIni, HoraIniTotal : TTime;
begin
 HoraIniTotal := Time;
 TotItens     := fctvwTabelas.Items.Count - 1;
 StatusBar1.Panels[0].Text := 'Hora Ini Proc.: ' + TimeToStr( Time );
 for i := 0 to TotItens do
 begin
  DMMigra.dbMigra.Connected := False;
  case i of
    0..18 : dmMigra.dbMigra.AliasName := 'EST_FAT_CADASTRO';
   19..42 : dmMigra.dbMigra.AliasName := 'Ordem de Servico';
   43..54 : dmMigra.dbMigra.AliasName := 'EST_FAT_CADASTRO';
   57..68 : dmMigra.dbMigra.AliasName := 'TECIMP_PROCESSO';
   69..79 : dmMigra.dbMigra.AliasName := 'EST_FAT_CADASTRO';
   80..99 : dmMigra.dbMigra.AliasName := 'IMP_DADOS';
  end;

  DMMigra.dbMigra.Connected := True;

  if fctvwTabelas.Items[i].Checked then
     begin
      HoraIni := Time;
      StatusBar1.Panels[1].Text := 'Item: ' + IntToStr( i ) + '/' + IntToStr(TotItens);
      StatusBar1.Panels[2].Text := 'Tabela: ' + fctvwTabelas.Items[i].Text;
      StatusBar1.Panels[3].Text := 'Hora Inicial: ' + TimeToStr( Time );

      AtivarMigracao( i );

      fctvwTabelas.Items[i].Checked := False;
      StatusBar1.Panels[4].Text     := 'Tempo Decorrido: ' + TimeToStr( Time - HoraIni );
      StatusBar1.Refresh;
      frmMigra.Refresh;
     end;
 end;
 StatusBar1.Panels[5].Text := 'Tempo Total: ' + TimeToStr( Time - HoraIniTotal );
end;

procedure TfrmMigra.AtivarMigracao( Item  : Integer );
begin
 case Item of
 0: Uf;
 1: Empresa;
 2: ContaContabil;
 3: CategoriaJuridica;
 4: NaturezaJuridica;
 5: Filial;
 6: Departamento;
 7: Observacao;
 8: SiglaNatureza;
 9: NaturezaOp;
 10: Entidade;
 11: Banco;
 12: CondPagto;
 13: Imposto;
 14: Grupo;
 15: SubGrupo;
 16: Unidade;
 17: TecWin;
 18: Receita;
 19: TipoOs;
 20: TipoOsCfop;
 21: CustoHora;
 22: Catalogo;
 23: Aparelho;
 24: Tecnico;
 25: Defeito;
 26: Tubo;
 27: TuboDesativado;
 28: Os;
 29: OsBcoHora;
 30: Operacao;
 31: Adiantamento;
 32: AdiantamentoItem;
 33: Memo;
 34: Feriado;
 35: Rdv;
 36: ItemRdv;
 37: ItemRdvEspelho;
 38: RdvHora;
 39: ItemRdvHora;
 40: OsHora;
 41: OsDespesa;
 42: OsDefeito;
 43: OsTerceiros;
 44: Servico;
 45: Produto;
 46: Kardex;
 47: Nfe;
 48: NfeItem;
 49: Nf3;
 50: Nfs;
 51: NfsParcela;
 52: NfsServico;
 53: OsVale;
 54: OsEmpenho;
 55: ClassifEmpenho;
 56: OSClassifEmpenho;
 57: Despachante;
 58: ContatoJapao;
 59: TipoProcesso;
 60: Indice;
 61: Preco;
 62: LocalChegada;
 63: ViaEmbarque;
 64: Processo;
 65: Declaracao;
 66: Adicao;
 67: Mercadoria;
 68: ProcessoItem;
 69: ProcessoItemSerie;
 70: MgContrato;
 71: MgIndice;
 72: MgTermoContrato;
 73: MgContratoAno;
 74: MgContratoParc;
 75: MgContratoApar;
 76: MgContratoServ;
 77: MgContratoAditivo;
 78: MgContratoPadrao;
 79: MgValorIndice;
 80: OrigemVenda;
 81: TipoVenda;
 82: ClasseVendedor;
 83: TabFinanceira;
 84: CondPagtoProp;
 85: Bonificacao;
 86: PedidoVenda;
 87: PedidoVendaItem;
 88: PedidoVendaComp;
 89: PedidoVendaRevenda;
 90: PedidoVendaVenda;
 91: PedidoVendaBonif;
 92: PedidoVendaInterv;
 93: HistFechComissao;
 94: AnaliseVenda;
 95: AnalisevendaItem;
 96: BasePagto;
 97: PPProcesso;
 98: PPProcessoParc;
 99: PercentualVenda;
 100: KdxTransf;
 end;
end;

procedure TfrmMigra.ConvertCampos;
var TbGeral : TTable;
    Texto   : String;
begin
 TbGeral := TTable.Create(self);
 try

  //Convertendo os campos para a tabela NX
  TbGeral.DatabaseName := 'GSI';
  TbGeral.TableName    := 'NX.DBF';
  TbGeral.Open;

  with DMMigra do
  begin
   Conecta('TECIMP_PROCESSO');
   Tb1.TableName := 'NX';
   Tb1.Open;
   Pb1.Max := Tb1.RecordCount;
   Tb1.First;
   while not ( Tb1.Eof ) do
   begin
    Tb1.Edit;
    if TbGeral.Locate('VIA',Tb1.FieldByName('VIA').AsString,[loCaseInsensitive]) then
       Tb1.FieldByName('VIA').AsString      := TbGeral.FieldByName('VIANOVA').AsString;

    Texto := SubstituiString( Tb1.FieldByName('DELIVERY').AsString,'''','X');
    if TbGeral.Locate('DELIVERY',Texto, [loCaseInsensitive] ) then
       Tb1.FieldByName('DELIVERY').AsString := TbGeral.FieldByName('DELIVERYNO').AsString;

    Texto := '';
    Tb1.Post;
    Tb1.Next;
    Pb1.StepIt;
   end;
   Tb1.Close;
   TbGeral.Close;

   //Convertendo os campos para a tabela PZA
   TbGeral.DatabaseName := 'GSI';
   TbGeral.TableName    := 'PZA.DBF';
   TbGeral.Open;

   Conecta('TECIMP_PROCESSO');
   Tb1.TableName := 'PZA';
   Tb1.Open;
   Pb1.Max := Tb1.RecordCount;
   Tb1.First;
   while not ( Tb1.Eof ) do
   begin
    Tb1.Edit;
    if TbGeral.Locate('VIA',Tb1.FieldByName('VIA').AsString,[loCaseInsensitive]) then
       Tb1.FieldByName('VIA').AsString      := TbGeral.FieldByName('VIANOVA').AsString;

    Texto := SubstituiString( Tb1.FieldByName('DELIVERY').AsString,'''','X');
    if TbGeral.Locate('DELIVERY',Texto, [loCaseInsensitive] ) then
       Tb1.FieldByName('DELIVERY').AsString := TbGeral.FieldByName('DELIVERYNO').AsString;

    Texto := '';
    Tb1.Post;
    Tb1.Next;
    Pb1.StepIt;
   end;
   Tb1.Close;
   TbGeral.Close;
  end;
 finally
  FreeAndNil( TbGeral );
 end;
end;

procedure TfrmMigra.BitBtn3Click(Sender: TObject);
begin
 ConvertCampos;
end;

procedure TfrmMigra.LocalChegada;
var LocalChegadaId : Integer;
begin
 LocalChegadaId := 1;
 try
  with DMMigra do begin
    Conecta('TECIMP_PROCESSO');
    Tb1.TableName   := 'LOCALCHEGADA';
    Sc1.CommandText := 'SELECT * FROM IT_LOCALCHEGADA';
    Tb1.Open;
    Sc1.Open;
    Tb1.First;
    Pb1.Max := Tb1.RecordCount;
    while Not Tb1.Eof do
    begin
      Sc1.Insert;
      Sc1.FieldByName('LOCALCHEGADAID').Value  := LocalChegadaId;
      Sc1.FieldByName('DESCRICAO').AsString    := Tb1.FieldByName('DELIVERYNO').Value;
      Sc1.Post;
      LocalChegadaId := LocalChegadaId +1;
      Tb1.Next;
      Pb1.StepIt;
    end;
    if Sc1.ChangeCount > 0 then
       Sc1.ApplyUpdates(-1);
    Tb1.Close;
    Sc1.Close;
    dbMigra.Close;
  end;
 except on
   E : Exception do
   Exception.Create( E.Message );
 end;
end;

procedure TfrmMigra.ViaEmbarque;
var ViaEmbarqueId : Integer;
begin
 ViaEmbarqueId := 1;
 try
  with DMMigra do begin
    Conecta('TECIMP_PROCESSO');
    Tb1.TableName   := 'VIAEMBARQUE';
    Sc1.CommandText := 'SELECT * FROM IT_VIAEMBARQUE';
    Tb1.Open;
    Sc1.Open;
    Tb1.First;
    Pb1.Max := Tb1.RecordCount;
    while Not Tb1.Eof do
    begin
      Sc1.Insert;
      Sc1.FieldByName('VIAEMBARQUEID').Value  := ViaEmbarqueId;
      Sc1.FieldByName('DESCRICAO').AsString   := Tb1.FieldByName('VIANOVA').Value;
      Sc1.Post;
      ViaEmbarqueId := ViaEmbarqueId +1;
      Tb1.Next;
      Pb1.StepIt;
    end;
    if Sc1.ChangeCount > 0 then
       Sc1.ApplyUpdates(-1);
    Tb1.Close;
    Sc1.Close;
    dbMigra.Close;
  end;
 except on
   E : Exception do
   Exception.Create( E.Message );
 end;
end;

procedure TfrmMigra.ClassifEmpenho;
begin
 with DMMigra do
 begin
  Conecta('ORDEM DE SERVICO');
  Tb1.TableName   := 'CLASSIFEMPENHO.DB';
  Sc1.CommandText := 'SELECT * FROM OS_CLASSIFPECA';
  Tb1.Open;
  Sc1.Open;
  Tb1.First;
  Pb1.Max := Tb1.RecordCount;
  while not( Tb1.Eof ) do
  begin
   Sc1.Insert;
   Sc1.FieldByName('CLASSIFPECAID').Value    := Tb1.FieldByName('CD_CLASSIFEMPENHO').Value;
   Sc1.FieldByName('DESCRICAO').Value        := Tb1.FieldByName('DESCRICAO').Value;
   Sc1.FieldByName('USUARIO').Value          := Tb1.FieldByName('USUARIO').Value;
   Sc1.Post;
   Tb1.Next;
   Pb1.StepIt;
  end;
  if Sc1.ChangeCount > 0 then
     Sc1.ApplyUpdates(-1);
  Tb1.Close;
  Sc1.Close;
 end;
end;

procedure TfrmMigra.OSClassifEmpenho;
var sqlCatalago,sqlOS,sqlProduto : String;
    cdsCatalago,cdsOS,cdsProduto : TClientDataSet;
begin
 sqlCatalago := 'SELECT PP_CATALOGO.MODELOID FROM PP_CATALOGO';
 ExecDDL( -1, sqlCatalago, cdsCatalago );
 cdsCatalago.AddIndex( 'idx1','MODELOID',[ixPrimary],'','',0);
 cdsCatalago.IndexName := 'idx1';

 sqlOS := 'SELECT OS_OS.OSID FROM OS_OS';
 ExecDDL( -1, sqlOS, cdsOS );
 cdsOS.AddIndex( 'idx1','OSID',[ixPrimary],'','',0);
 cdsOS.IndexName := 'idx1';

 sqlProduto := 'SELECT EF_PRODUTO.PRODUTOID FROM EF_PRODUTO';
 ExecDDL(-1,sqlProduto,cdsProduto );
 cdsProduto.AddIndex('idx1','PRODUTOID',[ixPrimary],'','',0);
 cdsProduto.IndexName := 'idx1';

 with DMMigra do
 begin
  Conecta('ORDEM DE SERVICO');
  Tb1.TableName   := 'OSCLASSIFEMPENHO.DB';
  Sc1.CommandText := 'SELECT * FROM OS_OSCLASSIFPECA';
  Tb1.Open;
  Sc1.Open;
  Tb1.First;
  Pb1.Max := Tb1.RecordCount;
  while not( Tb1.Eof ) do
  begin
   Sc1.Insert;

   if ( not Tb1.FieldByName('IDENOS').IsNull ) and ( cdsOS.FindKey([Tb1.FieldByName('IDENOS').AsString]) ) then
          Sc1.FieldByName('OSID').Value := Tb1.FieldByName('IDENOS').Value
       else
         begin
          wwrichtxtLOG.Lines.Add( 'Tabela ClassifPeca: O.S. não cadastrada! N.O.S. = ' + Tb1.FieldByName('IDENOS').AsString );
          Pb1.StepIt;
          Continue;
         end;

   Sc1.FieldByName('PECAID').Value            := Tb1.FieldByName('CD_EMPENHO').Value;
   Sc1.FieldByName('ITEMID').Value            := Tb1.FieldByName('ITEM').Value;
   Sc1.FieldByName('CODIGOBARRASID').Value    := Tb1.FieldByName('CD_BARRAS').Value;
   Sc1.FieldByName('SERIEID').Value           := Tb1.FieldByName('SERIE').Value;

   if ( not Tb1.FieldByName('MODELO').IsNull ) then
      begin
       if not ( cdsCatalago.FindKey([Tb1.FieldByName('MODELO').AsString ]) ) then
            wwrichtxtLOG.Lines.Add( 'Tabela OSClassifPeca: Modelo não Cadastrado, ModeloID = ' + Tb1.FieldByName('MODELO').AsString+ 'N.O.S. = '+ Tb1.FieldByName('IDENOS').AsString )
       else
          Sc1.FieldByName('MODELOID').Value          := Tb1.FieldByName('MODELO').Value;
      end;

  //   Sc1.FieldByName('EMPRESAID').Value      := Tb1.FieldByName('SERIE').Value;

   if not cdsProduto.FindKey([Tb1.FieldByName('CODIGO_PRODUTO').AsInteger ]) then
      wwrichtxtLOG.Lines.Add( 'Tabela OSClassifPeca: Produto não Cadastrado, ProdutoID = ' + Tb1.FieldByName('CODIGO_PRODUTO').AsString+ 'N.O.S. = '+ Tb1.FieldByName('IDENOS').AsString )
   else
     Sc1.FieldByName('PRODUTOID').Value          := Tb1.FieldByName('CODIGO_PRODUTO').Value;

   if ( Tb1.FieldByName('CD_CLASSIFEMPENHO').Value <> 0 ) or
      ( not Tb1.FieldByName('CD_CLASSIFEMPENHO').IsNull ) then
      Sc1.FieldByName('CLASSIFPECAID').Value     := Tb1.FieldByName('CD_CLASSIFEMPENHO').Value;

   Sc1.FieldByName('DATACLASSIFICACAO').Value := Tb1.FieldByName('DT_CLASSIF').Value;
   Sc1.FieldByName('QUANTIDADE').Value        := Tb1.FieldByName('QUANTIDADE').Value;
   Sc1.FieldByName('VLRFOB').Value            := Tb1.FieldByName('VLRFOB').Value;
   Sc1.FieldByName('OBSERVACAO').Value        := Tb1.FieldByName('OBSERVACAO').Value;
   Sc1.FieldByName('USUARIO').Value           := Tb1.FieldByName('USUARIO').Value;
   Sc1.Post;
   Tb1.Next;
   Pb1.StepIt;
  end;
  if Sc1.ChangeCount > 0 then
     Sc1.ApplyUpdates(-1);
  Tb1.Close;
  Sc1.Close;
 end;
end;



{procedure TfrmMigra.ConcatDate;
begin
 if dmHoras.cdsHoraItemOPERACAOID.Value <> 46 then
    begin
     dmHoras.cdsHoraItem.Edit;
     dmHoras.cdsHoraItemHORAINI.AsDateTime := ConcatDateTimeF( dmHoras.cdsHoraItemDATASERVICOID.AsDateTime,
                                                    dmHoras.cdsHoraItemHORAINI.AsDateTime  );
     dmHoras.cdsHoraItemHORAFIM.AsDateTime := ConcatDateTimeF( dmHoras.cdsHoraItemDATASERVICOID.AsDateTime,
                                                    dmHoras.cdsHoraItemHORAFim.AsDateTime );
     dmHoras.cdsHoraItemDIFERENCAMINTRAB.AsFloat := DifDate(0,dmHoras.cdsHoraItemDIFERENCAHORATRAB.AsDateTime );
     dmHoras.cdsHoraItemDIFERENCAHORATRAB.AsString := FormatTime( dmHoras.cdsHoraItemDIFERENCAMINTRAB.AsFloat );
     dmHoras.cdsHoraItem.Post;
    end;
end;}

function TfrmMigra.ConcatDateTimeF(VDate: TDate;
  VTime: TDateTime): TDateTime;
var PDate,PTime : TDateTime;
begin
 PDate       := DateOf( VDate );
 PTime       := TimeOf( VTime );
 Result      := PDate + PTime;
end;

function TfrmMigra.DifDate(FirstDate, LastDate: TDateTime): Real;
begin
 if TimeOf(LastDate) = 0 then
    if ( DateOf( FirstDate ) = DateOf( LastDate ) ) then
       LastDate := LastDate +1;
 Result :=(LastDate - FirstDate);
end;

{function TfrmMigra.DiferencaTime: Real;
var Empresa                       : String;
    Operacao                      : Integer;
    Dif,DFinal,DifSame            : Real;
    MIni,MFim,CIni,CFim           : TTime;
begin
 Result := 0;
 with dmHoras do
 begin
 Empresa  := 'MATRIZ';
 if cdsHoraL_FILIALID.Value <> 16 then
    Empresa := 'FILIAL';

 DifSame  := 0;

 DFinal := DifDate( cdsHoraItemHORAINI.AsDateTime,cdsHoraItemHORAFIM.AsDateTime );

 try
  Operacao := GetFeriado( DateOf( dmHoras.cdsHoraItemHORAINI.AsDateTime ) );
  // Feriado ou Sabado ou Domingo
  if      Operacao = 1 then
          begin
           Dif := DifDate( cdsHoraItemHORAINI.AsDateTime,cdsHoraItemHORAFIM.AsDateTime);
           Result := Dif;
          end
  // Dias Normais
  else if Operacao = 0 then
          begin
           // Hora Inicial e Final da tabela HoraItem
           MIni := TimeOf( cdsHoraItemHORAINI.AsDateTime );
           MFim := TimeOf( cdsHoraItemHORAFIM.AsDateTime );

           // Hora Inicial e Final da tabela de Configuracao
           Cini := TimeOf( cdsConfig.FieldByName('HORA'+ Empresa +'INI' ).AsDateTime );
           CFim := TimeOf( cdsConfig.FieldByName('HORA'+ Empresa +'FIM' ).AsDateTime );

           if not IsSameDay( DateOf(cdsHoraItemHORAINI.AsDateTime),
                             DateOf(cdsHoraItemHORAFIM.AsDateTime) ) then
              begin
               if      MIni <= CIni then
                       DifSame := DifIntervalTime(CIni,CFim,CIni,CFim)
               else if ( MIni > CIni ) and ( MIni < CFim ) then
                       DifSame := DifIntervalTime( MIni,CFim,CIni,CFim );

               Dif := DifSame + DifSameDay( MFim,CIni,CFim, cdsHoraItemHORAFIM.AsDateTime );
              end
           else Dif := DifIntervalTime(MIni,MFim,CIni,CFim );

           Result := DFinal - Dif;
          end;
  except on
   E : Exception do
   raise Exception.create(E.Message);
  end;
 end;
end;}

function TfrmMigra.DifIntervalTime(MIni, MFim, CIni, CFim: TTime): Real;
var Dif : Real;
begin
 with dmHoras do
 begin
  Dif := 0;
  if ( MIni < CIni ) then
     begin
      if ( MFim >= CFim ) or ( MFim = 0 ) then
         Dif := DifDate( ConcatDateTimeF( date,CIni ),
                         ConcatDateTimeF( date, CFim ) )
      else if ( MFim > CIni ) then
              Dif := DifDate( ConcatDateTimeF( date,CIni),
                              ConcatDateTimeF( date,MFim ) );
     end
  else if MIni < CFim then
          begin
           if ( MFim >= CFim ) then
              Dif := DifDate( ConcatDateTimeF(date, MIni),
                              ConcatDateTimeF( date, CFim ) )
           else
              Dif := DifDate( ConcatDateTimeF(date,MIni),
                              ConcatDateTimeF(date,MFim) );
          end;
  Result := Dif;
 end;
end;

function TfrmMigra.DifSameDay(MFim, CIni, CFim: TTime;
  Data: TDateTime): Real;
var Feriado : Integer;
begin
 Result := 0;
 Feriado := GetFeriado( Data );
 if Feriado = 0 then
    begin
     if ( MFim > CIni ) then
        begin
         if  ( MFim >= CFim ) then
             Result := DifDate( ConcatDateTimeF( StrToDate('01/01/2004'),CIni ),
                                ConcatDateTimeF( StrToDate('01/01/2004'),CFim ) )
         else
             Result := DifDate( ConcatDateTimeF( StrToDate('01/01/2004'),CIni ),
                                ConcatDateTimeF( StrToDate('01/01/2004'),MFim ) )
        end
    end;
end;

{function TfrmMigra.DifTime: Real;
var Empresa       : String;
    Operacao      : Integer;
    Hini,Hfim,Dif : Real;
    HEmpresa      : TDateTime;
    MIni,MFim,CIni,CFim : TTime;
begin
 Result := 0;
 Empresa  := 'MATRIZ';
 if dmHoras.cdsHoraL_FILIALID.Value <> 16 then
    Empresa := 'FILIAL';

 Hini :=0;
 HFim :=0;

 try
  Operacao := GetFeriado( DateOf( dmHoras.cdsHoraItemHORAINI.AsDateTime ) );
  // Feriado ou Sabado ou Domingo
  if      Operacao = 1 then
          begin
           Dif := DifDate(dmHoras.cdsHoraItemHORAINI.AsDateTime,dmHoras.cdsHoraItemHORAFIM.AsDateTime);
           Result := Dif;
          end
  // Dias Normais
  else if Operacao = 0 then
          begin
           // Hora Inicial e Final da tabela HoraItem
           MIni := TimeOf( dmHoras.cdsHoraItemHORAINI.AsDateTime );
           MFim := TimeOf( dmHoras.cdsHoraItemHORAFIM.AsDateTime );

           // Hora Inicial e Final da tabela de Configuracao
           Cini := TimeOf( dmHoras.cdsConfig.FieldByName('HORA'+ Empresa +'INI' ).AsDateTime );
           CFim := TimeOf( dmHoras.cdsConfig.FieldByName('HORA'+ Empresa +'FIM' ).AsDateTime );

           if       ( ( Mini < CIni ) and ( MFim < CIni ) ) or
                    ( Mini > CFim )  then
                    Hini := DifDate( dmHoras.cdsHoraItemHORAINI.AsDateTime,dmHoras.cdsHoraItemHORAFim.AsDateTime )
           else if  Hini = 0 then
                    begin
                     if ( MIni < CIni ) then
                        begin
                         HEmpresa := ConcatDateTimeF( dmHoras.cdsHoraItemHORAINI.AsDateTime,
                                                      dmHoras.cdsConfig.FieldByName('HORA'+ Empresa +'INI' ).AsDateTime);
                         Hini := DifDate( dmHoras.cdsHoraItemHORAINI.AsDateTime,HEmpresa );
                        end;
                     if ( MFim > CFim ) or ( MFim = 0 ) then
                        begin
                         HEmpresa := ConcatDateTimeF( dmHoras.cdsHoraItemHORAFIM.AsDateTime,
                                                      dmHoras.cdsConfig.FieldByName('HORA'+ Empresa +'FIM' ).AsDateTime );
                         HFim := DifDate( HEmpresa,dmHoras.cdsHoraItemHORAFIM.AsDateTime );
                       end;
                    end;
           Result := Hini + Hfim;
          end;
  except on
   E : Exception do
   raise Exception.create(E.Message);
  end;
end;}

function TfrmMigra.FloatToTime(Value: Real): TDateTime;
var Vint,VFrac,VTime : Real;
    Fator : Integer;
begin
 Fator := 1;
 if Value < 0 then
    begin
     Fator := -1;
     Value := Value * Fator;
    end;

 Value  := Value * 24;
 Vint   := Int( Value );
 VFrac  := round(Frac( Value )*60);
 if VFrac > 58 then
    VTime := Vint + 1
 else
    VTime   := Vint + VFrac/100;
 Result := Vtime * Fator;
end;

function TfrmMigra.FormatTime(Value: Real): String;
var Vint,VFrac : Real;
begin
 Value  := Value * 24;
 Vint   := Int( Value );
 VFrac  := round(Frac( Value )*60);
 if VFrac > 58 then
    begin
     Vint  := Vint + 1;
     VFrac := 0;
    end;

 Result := FormatFloat( '0', Vint ) + ':' + FormatFloat('00', VFrac ) ;
end;

function TfrmMigra.GetFeriado(Data: TDateTime): Integer;
var iSQL : String;
begin
 Result := 0;
 try
  iSQL := 'SELECT RD_FERIADO.DATAFERIADO,'+
          '       RD_FERIADO.FERIADOREGIONAL,'+
          '       RD_FERIADO.FILIALID'+
          '  FROM RD_FERIADO'+
          ' WHERE RD_FERIADO.DATAFERIADO = '+ QuotedStr( DateToStr( Data ) );

  dmhoras.cdsGeral.Close;
  dmhoras.cdsGeral.CommandText := iSQL;
  dmhoras.cdsGeral.Open;

{Se Feriado }
  if      not dmhoras.cdsGeral.IsEmpty then
          begin
           dmhoras.cdsGeral.First;
           while not ( dmhoras.cdsGeral.Eof )  do
           begin
            if ( ( dmhoras.cdsGeral.FieldByName('FERIADOREGIONAL').Value = 1 ) ) then
               begin
                if ( ( dmhoras.cdsGeral.FieldByName('FILIALID').Value = dmHoras.cdsHoraL_FILIALID.Value ) ) then
                   Result := 1;
               end
            else
               Result := 1;
            dmhoras.cdsGeral.Next;
           end;
          end
  { Sabado e Domingo }
  else if ( DayOfWeek( Data ) ) in [1,7] then
          Result := 1;
 except on
  E : Exception do
  raise Exception.Create(E.Message);
 end;
end;

function TfrmMigra.GetSaldo: Real;
var Saldo : Real;
begin
 Saldo := 0;
 with dmHoras do
 begin
  cdsHoraItem.First;
  while not ( cdsHoraItem.Eof ) do
  begin
   if      cdsHoraItemOPERACAOID.Value = 25 then
           Saldo := Saldo + cdsHoraItemDIFERENCAMINTRAB.AsFloat
   else if cdsHoraItemOPERACAOID.Value = 26 then
           Saldo := Saldo - cdsHoraItemDIFERENCAMINTRAB.AsFloat
   else if cdsHoraItemOPERACAOID.Value = 46 then
           Saldo := Saldo + cdsHoraItemVLRSALDO.AsFloat / 24;

   cdsHoraItem.Edit;
   cdsHoraItemVLRSALDO.AsFloat := FloatToTime( Saldo );
   cdsHoraItem.Post;
   cdsHoraItem.Next;
  end;
 end;
Result := Saldo;
end;

{procedure TfrmMigra.TimeProcessing;
var Diferenca : TTime;
begin
 ConcatDate;
 if ( dmHoras.cdsHoraItemOPERACAOID.Value <> 46 ) and
      (  ( TimeOf( dmHoras.cdsHoraItemHORAINI.AsDateTime ) <> 0 ) and
         ( TimeOf( dmHoras.cdsHoraItemHORAFIM.AsDateTime ) = 0 )
         or

         ( TimeOf( dmHoras.cdsHoraItemHORAINI.AsDateTime ) = 0 ) and
         ( TimeOf( dmHoras.cdsHoraItemHORAFIM.AsDateTime ) <> 0 )
      )
       or ( ( dmHoras.cdsHoraItemDIFERENCAHORATRAB.IsNull ) and
            ( dmHoras.cdsHoraItemOPERACAOID.Value <> 46 ) ) then
    begin
     dmHoras.cdsHoraItem.Edit;
     Diferenca := DifTime;
     dmHoras.cdsHoraItemDIFERENCAHORATRAB.AsDateTime := Diferenca;
     dmHoras.cdsHoraItemDIFERENCAMINTRAB.AsFloat     := Diferenca;
     dmHoras.cdsHoraItem.Post;
    end;
end;}

procedure TfrmMigra.UpdateSaldo;
var Saldo : Real;
begin
 dmHoras.cdsHora.First;
 while not (dmHoras.cdsHora.eof ) do
 begin
  Saldo := GetSaldo;
  dmHoras.cdsHora.Edit;
  dmHoras.cdsHoraVLRSALDO.Value := FloatToTime( Saldo );
  dmHoras.cdsHora.Post;
  dmHoras.cdsHora.ApplyUpdates(-1);
  dmHoras.cdsHora.Next;
 end;
end;

procedure TfrmMigra.PageControl1Change(Sender: TObject);
begin
 if PageControl1.ActivePageIndex = 2 then
    begin
     with dmHoras do
     begin
      cdsOsBcoHora.Open;
      cdsBancoHora.Open;
      cdsConfig.Open;
     end;
    end;
end;

procedure TfrmMigra.BitBtn4Click(Sender: TObject);
begin
 try
  dmHoras.cdsHora.First;
  while not( dmHoras.cdsHora.Eof ) do
  begin
   dmHoras.cdsHoraItem.First;
   while not ( dmHoras.cdsHoraItem.Eof ) do
   begin
    {TimeProcessing;}

    { Atualizando Horas Trabalhadas para representacao em Time (String) }
    dmHoras.cdsHoraItem.Edit;
    dmHoras.cdsHoraItemDIFERENCAHORATRAB.AsString := FormatTime( dmHoras.cdsHoraItemDIFERENCAMINTRAB.AsFloat );
    dmHoras.cdsHoraItem.Post;

    dmHoras.cdsHoraItem.Next;
   end;
   dmHoras.cdsHora.ApplyUpdates(-1);
   dmHoras.cdsHora.Next;
  end;
 except on
  E : Exception do
  raise Exception.Create(E.Message);
 end;
end;

procedure TfrmMigra.BitBtn6Click(Sender: TObject);
begin
 UpdateSaldo;
end;

procedure TfrmMigra.BitBtn5Click(Sender: TObject);
begin
 Edit1.Text := FloatToStr( FloatToTime( dmHoras.cdsHoraItemDIFERENCAMINTRAB.AsFloat ) );
end;

procedure TfrmMigra.BitBtn7Click(Sender: TObject);
var BancoHoraId : Integer;
    cds  : TClientDataSet;
    iSQL : String;
begin
 iSQL := 'SELECT NVL(MAX( BANCOHORAID ),0) BANCOHORAID '+
         '  FROM RD_BANCOHORA ';
 ExecDDL(-1,iSQL,cds );
 BancoHoraId := cds.FieldByName('BANCOHORAID').AsInteger;

 with dmHoras do
 begin
  cdsOsBcoHora.First;
  while not ( cdsOsBcoHora.Eof ) do
  begin
   cdsBancoHora.Insert;
   cdsBancoHoraBANCOHORAID.Value           := BancoHoraId+1;
   cdsBancoHoraDATASOLICITACAO.AsDateTime  := cdsOsBcoHoraDATASERVICO.AsDateTime;
   cdsBancoHoraFUNCIONARIOID.Value         := cdsOsBcoHoraENTIDADEID.Value;
   cdsBancoHoraTIPODESPESAOS.AsString      := 'C';
   cdsBancoHoraOSID.AsString               := cdsOsBcoHoraOSID.AsString;
   cdsBancoHoraOPERACAOID.Value            := 25;
   cdsBancoHoraHORAINI.AsDateTime          := ConcatDateTimeF( DateOf(cdsOsBcoHoraDATASERVICO.AsDateTime),
                                                               TimeOf(cdsOsBcoHoraHORAINI.AsDateTime));
   cdsBancoHoraHORAFIM.AsDateTime          := ConcatDateTimeF( DateOf(cdsOsBcoHoraDATASERVICO.AsDateTime),
                                                               TimeOf(cdsOsBcoHoraHORAFIM.AsDateTime));
   cdsBancoHoraDIFERENCAMINTRAB.AsFloat    := DiffTime( cdsOsBcoHoraL_FILIALID.AsInteger,'C',
                                                        cdsBancoHoraHORAINI.AsDateTime,cdsBancoHoraHORAFIM.AsDateTime );
   cdsBancoHoraDIFERENCAHORATRAB.AsString  := FormatTime( cdsBancoHoraDIFERENCAMINTRAB.AsFloat );
   cdsBancoHoraLIBERADO.Value              := 0;
   cdsBancoHoraUSUARIO.AsString            := cdsOsBcoHoraUSUARIO.AsString;
   cdsBancoHora.Post;

   if cdsBancoHora.ChangeCount > 20 then
      cdsBancoHora.ApplyUpdates(-1);

   Inc( BancoHoraId );
   cdsOsBcoHora.Next;
  end;
 end;
end;

function TfrmMigra.DiffTime( FilialID : Integer; TipoOperacao : String; HoraIni, HoraFim : TDateTime ): Real;
var Empresa                       : String;
    Operacao                      : Integer;
    Dif,DFinal,DifSame            : Real;
    MIni,MFim,CIni,CFim           : TTime;
begin
 Empresa  := 'MATRIZ';
 if FilialID <> 16 then
    Empresa := 'FILIAL';

 DifSame  := 0;
 DFinal := DifDate( HoraIni, HoraFim );
 Result := DFinal;

 try
  if TipoOperacao = 'C' then
     begin
      Operacao := GetFeriado( DateOf( HoraIni ) );
      { Feriado ou Sabado ou Domingo }
      if      Operacao = 1 then
              begin
               Dif := DifDate( HoraIni,HoraFim);
               Result := Dif;
              end
      { Dias Normais }
      else if Operacao = 0 then
              begin
               { Hora Inicial e Final da tabela HoraItem }
               MIni := TimeOf( HoraIni );
               MFim := TimeOf( HoraFim );

               { Hora Inicial e Final da tabela de Configuracao }
               Cini := TimeOf( dmHoras.cdsConfig.FieldByName('HORA'+ Empresa +'INI' ).AsDateTime );
               CFim := TimeOf( dmHoras.cdsConfig.FieldByName('HORA'+ Empresa +'FIM' ).AsDateTime );

               if not IsSameDay( DateOf(HoraIni),
                                 DateOf(HoraFim) ) then
                  begin
                   if      MIni <= CIni then
                           DifSame := DifIntervalTime(CIni,CFim,CIni,CFim)
                   else if ( MIni > CIni ) and ( MIni < CFim ) then
                           DifSame := DifIntervalTime( MIni,CFim,CIni,CFim );

                   Dif := DifSame + DifSameDay( MFim,CIni,CFim, HoraFim );
                  end
               else Dif := DifIntervalTime(MIni,MFim,CIni,CFim );

               Result := DFinal - Dif;
              end;
     end
  except on
   E : Exception do
   raise Exception.create(E.Message);
  end;
end;

procedure TfrmMigra.BitBtn8Click(Sender: TObject);
var i, TotItens : Integer;
    HoraIni : TTime;
begin
 TotItens     := wwdbrchMM.Lines.Count - 1;
 StatusBar1.Panels[0].Text := 'Hora Ini Proc.: ' + TimeToStr( Time );

 for i := 0 to wwdbrchMM.Lines.Count - 1 do
 begin
  if      UpperCase( trim( wwdbrchMM.Lines[i] ) ) = 'EF_NATUREZAOP' then
          DMMigra.ExecQry( 'ALTER TABLE EF_NATUREZAOP DISABLE CONSTRAINT Fk_EF_Naturez_NaturezaOpId' )
  else if UpperCase( trim( wwdbrchMM.Lines[i] ) ) = 'EF_NFE' then
          DMMigra.ExecQry( 'ALTER TABLE EF_NFE DISABLE CONSTRAINT Fk_EF_Nfe_OsId' )
  else if UpperCase( trim( wwdbrchMM.Lines[i] ) ) = 'EF_NFS' then
          DMMigra.ExecQry( 'ALTER TABLE EF_NFS DISABLE CONSTRAINT Fk_EF_Nfs_OsId' )
  else if UpperCase( trim( wwdbrchMM.Lines[i] ) ) = 'EF_PRODUTO' then
          begin
           DMMigra.ExecQry( 'ALTER TABLE EF_PRODUTO DISABLE CONSTRAINT Fk_EF_PRODUTO_EMPRSIMILARID' );
           DMMigra.ExecQry( 'ALTER TABLE EF_PRODUTO DISABLE CONSTRAINT Fk_EF_PRODUTO_EMPPRODSIMILAR' );
          end;

  HoraIni := Time;
  StatusBar1.Panels[1].Text := 'Item: ' + IntToStr( i ) + '/' + IntToStr(TotItens);
  StatusBar1.Panels[2].Text := 'Tabela: ' + wwdbrchMM.Lines[i];
  StatusBar1.Panels[3].Text := 'Hora Inicial: ' + TimeToStr( Time );

  MigrarTabela( UpperCase( wwdbrchMM.Lines[i] ) );

  if      UpperCase( trim( wwdbrchMM.Lines[i] ) ) = 'EF_NATUREZAOP' then
          DMMigra.ExecQry( 'ALTER TABLE EF_NATUREZAOP ENABLE CONSTRAINT Fk_EF_Naturez_NaturezaOpId' )
  else if UpperCase( trim( wwdbrchMM.Lines[i] ) ) = 'EF_NFE' then
          DMMigra.ExecQry( 'ALTER TABLE EF_NFE ENABLE CONSTRAINT Fk_EF_Nfe_OsId ENABLE NOVALIDATE' )
  else if UpperCase( trim( wwdbrchMM.Lines[i] ) ) = 'EF_NFS' then
          DMMigra.ExecQry( 'ALTER TABLE EF_NFS ENABLE CONSTRAINT Fk_EF_Nfs_OsId' )
  else if UpperCase( trim( wwdbrchMM.Lines[i] ) ) = 'EF_PRODUTO' then
          begin
           DMMigra.ExecQry( 'ALTER TABLE EF_PRODUTO ENABLE CONSTRAINT Fk_EF_PRODUTO_EMPRSIMILARID' );
           DMMigra.ExecQry( 'ALTER TABLE EF_PRODUTO ENABLE CONSTRAINT Fk_EF_PRODUTO_EMPPRODSIMILAR' );
          end;

  StatusBar1.Panels[4].Text := 'Tempo Decorrido: ' + TimeToStr( Time - HoraIni );
  StatusBar1.Refresh;
  frmMigra.Refresh;
 end;

end;

procedure TfrmMigra.TipoVenda;
var cdsTipoVenda : TClientDataSet;
    iSQL : String;
begin
 {*** Os dados Antigos não serão migrados, a tabela passa a ter uma nova conotação ***}
 iSQL  := 'SELECT TIPOVENDAID FROM PP_TIPOVENDA';
 cdsTipoVenda := nil;
 ExecDDL( -1, iSQL, cdsTipoVenda );
 cdsTipoVenda.AddIndex( 'idx1','TIPOVENDAID',[ixPrimary],'','',0);
 cdsTipoVenda.IndexName := 'idx1';

 try
  if not cdsTipoVenda.FindKey([1]) then
     DMMigra.ExecQry( 'INSERT INTO PP_TIPOVENDA VALUES( '+
                     QuotedStr('1')+','+QuotedStr('Publico')+','+ QuotedStr('GSI')+')');

  if not cdsTipoVenda.FindKey([2]) then
     DMMigra.ExecQry( 'INSERT INTO PP_TIPOVENDA VALUES( '+
                     QuotedStr('2')+','+QuotedStr('Privado')+','+ QuotedStr('GSI')+')');

  if not cdsTipoVenda.FindKey([3]) then
     DMMigra.ExecQry( 'INSERT INTO PP_TIPOVENDA VALUES( '+
                     QuotedStr('3')+','+QuotedStr('Especial')+','+ QuotedStr('GSI')+')');
 finally
  FreeAndNil( cdsTipoVenda );
 end;
end;

procedure TfrmMigra.ClasseVendedor;
begin
  with DMMigra do
  begin
   Conecta('IMP_CADASTRO');
   Tb1.TableName   := 'FUNCAO';
   Sc1.CommandText := 'SELECT * FROM PP_CLASSEVENDEDOR';
   Tb1.Open;
   Sc1.Open;
   Tb1.First;
   Pb1.Max := Tb1.RecordCount;
   while Not Tb1.Eof do
   begin
     Sc1.Insert;
     Sc1.FieldByName('CLASSEVENDEDORID').Value   := Tb1.FieldByName('CD_FUNCAO').Value;
     Sc1.FieldByName('DESCRICAO').AsString       := Tb1.FieldByName('DESCRICAO').AsString;
     Sc1.FieldByName('USUARIO').AsString         := Tb1.FieldByName('USUARIO').AsString;
     Sc1.Post;
     Sc1.ApplyUpdates(-1);
     Tb1.Next;
     Pb1.StepIt;
   end;
   Tb1.Close;
   Sc1.Close;
  end;
end;

procedure TfrmMigra.TabFinanceira;
begin
  with DMMigra do
  begin
   Conecta('IMP_CADASTRO');
   Tb1.TableName   := 'FINANCEIRA';
   Sc1.CommandText := 'SELECT * FROM PP_TABFINANCEIRA';
   Tb1.Open;
   Sc1.Open;
   Tb1.First;
   Pb1.Max := Tb1.RecordCount;
   while Not Tb1.Eof do
   begin
     Sc1.Insert;
     Sc1.FieldByName('TABFINANCEIRAID').Value   := Tb1.FieldByName('CODIGO').Value;
     Sc1.FieldByName('DESCRICAO').AsString      := Tb1.FieldByName('NOME').AsString;
     Sc1.FieldByName('USUARIO').AsString        := 'GSI';
     Sc1.Post;
     Sc1.ApplyUpdates(-1);
     Tb1.Next;
     Pb1.StepIt;
   end;
   Tb1.Close;
   Sc1.Close;
  end;
end;

procedure TfrmMigra.PedidoVenda;
var cdsEntidade : TClientDataSet;
    iSQL : String;
    OrigemVendaId,TipoVendaId : Integer;
begin
 iSQL  := 'SELECT '+
          '  ENTIDADEID,'+
          '  CEPID,'+
          '  NUMERO,'+
          '  COMPLEMENTO,'+
          '  ENDERECO,'+
          '  BAIRRO,'+
          '  CIDADE,'+
          '  SIGLAUFID,'+
          '  PAIS,'+
          '  TELEFONE,'+
          '  CONTATO'+
          '  FROM '+
          '  EF_ENTIDADE';
          
 ExecDDL( -1, iSQL, cdsEntidade );
 cdsEntidade.AddIndex( 'idx1','ENTIDADEID',[ixPrimary],'','',0);
 cdsEntidade.IndexName := 'idx1';

 wwrichtxtLOG.Lines.Append('Log de Ítens dos Pedidos!');
 wwrichtxtLOG.Lines.Append('');


 with DMMigra do
 begin
  Tb1.TableName   := 'PEDIDOS';
  Sc1.CommandText := 'SELECT * FROM PP_PEDVEND';
  Tb1.Open;
  Sc1.Open;
  Tb1.First;
  Pb1.Max := Tb1.RecordCount;
  while Not Tb1.Eof do
  begin
    OrigemVendaId := 0;
    TipoVendaId   := 0;

    Sc1.Insert;
    Sc1.FieldByName('PEDVENDID').Value         := Tb1.FieldByName('NUMERO_PED').Value;
    Sc1.FieldByName('DATAPEDIDO').Value        := Tb1.FieldByName('DATA_PED').Value;
    Sc1.FieldByName('NUMPEDVENDEDORID').Value  := Tb1.FieldByName('NUM_PED_VENDEDOR').Value;

    if      Tb1.FieldByName('ORIGEM_VENDA').AsString = Trim('I') then
            OrigemVendaId := 1
    else if Tb1.FieldByName('ORIGEM_VENDA').AsString = Trim('R') then
            OrigemVendaId := 2
    else if Tb1.FieldByName('ORIGEM_VENDA').AsString = Trim('E') then
            OrigemVendaId := 3;

    if OrigemVendaId <> 0 then
       Sc1.FieldByName('ORIGEMVENDAID').Value     := OrigemVendaId;

    if      Tb1.FieldByName('TIPO_VENDA').AsString = Trim('C') then
            TipoVendaId := 1
    else if Tb1.FieldByName('TIPO_VENDA').AsString = Trim('V') then
            TipoVendaId := 2;

    if TipoVendaId <> 0 then
       Sc1.FieldByName('TIPOVENDAID').Value     := TipoVendaId;

    Sc1.FieldByName('EMPRESAID').Value       := Tb1.FieldByName('CD_EMPRESA').Value;

    if Tb1.FieldByName('CANCELADO').AsBoolean then
       Sc1.FieldByName('CANCELADO').Value := 1
    else
      Sc1.FieldByName('CANCELADO').Value  := 0;

    if cdsEntidade.FindKey([Tb1.FieldByName('CD_CLIENTE').Value]) then
       begin
        Sc1.FieldByName('CLIENTEID').Value      := Tb1.FieldByName('CD_CLIENTE').Value;
        Sc1.FieldByName('CEPORIGID').Value          := cdsEntidade.FieldByName('CEPID').Value;
        Sc1.FieldByName('NUMEROORIG').Value         := cdsEntidade.FieldByName('NUMERO').Value;
        Sc1.FieldByName('COMPLEMENTOORIG').AsString := cdsEntidade.FieldByName('COMPLEMENTO').AsString;
        Sc1.FieldByName('ENDERECOORIG').AsString    := cdsEntidade.FieldByName('ENDERECO').AsString;
        Sc1.FieldByName('BAIRROORIG').AsString      := cdsEntidade.FieldByName('BAIRRO').AsString;
        Sc1.FieldByName('CIDADEORIG').AsString      := cdsEntidade.FieldByName('CIDADE').AsString;
        Sc1.FieldByName('SIGLAUFORIGID').AsString   := cdsEntidade.FieldByName('SIGLAUFID').AsString;
        Sc1.FieldByName('TELEFONEORIG').AsString    := cdsEntidade.FieldByName('TELEFONE').AsString;
        Sc1.FieldByName('CONTATOORIG').AsString     := cdsEntidade.FieldByName('CONTATO').AsString;
        Sc1.FieldByName('PAISORIG').AsString        := cdsEntidade.FieldByName('PAIS').AsString;
       end
    else
      begin
       wwrichtxtLOG.Lines.Append('EntidadeId :'+ Tb1.FieldByName('CD_CLIENTE').AsString+
                                ' não Encontrada! Pedido: '+ Tb1.FieldByName('NUMERO_PED').AsString );
       Pb1.StepIt;
       Sc1.Cancel;
       Tb1.Next;
       Continue;
      end;                          

    if ( Tb1.FieldByName('CD_FOB').Value <> 0 ) then
       Sc1.FieldByName('CONDPAGTOPROPID').Value         := Tb1.FieldByName('CD_FOB').Value;
       
    Sc1.FieldByName('VLRFOB').AsFloat                := Tb1.FieldByName('VALOR_FOB').AsFloat;

    if ( not Tb1.FieldByName('CD_INTERV').IsNull ) and
       ( Tb1.FieldByName('CD_INTERV').Value <> 0 ) then
       Sc1.FieldByName('CONDINTERVID').Value            := (100 + Tb1.FieldByName('CD_INTERV').Value);

    Sc1.FieldByName('DESCRICAOINTERV').AsString      := Tb1.FieldByName('DESCR_INTERV').AsString;
    Sc1.FieldByName('VLRINTERVENIENCIA').AsFloat     := Tb1.FieldByName('VALOR_INTERV').AsFloat;

    if ( not Tb1.FieldByName('CD_EMPR_SUPL').IsNull ) and
       ( Tb1.FieldByName('CD_EMPR_SUPL').Value <> 0 ) then
         Sc1.FieldByName('CONDEMPRSUPLID').AsInteger      := ( 300 + Tb1.FieldByName('CD_EMPR_SUPL').AsInteger );
       
    Sc1.FieldByName('VLREMPRSUPLEMENTAR').AsFloat    := Tb1.FieldByName('VALOR_EMPR_SUPL').AsFloat;
    Sc1.FieldByName('BONIFICACAO').AsString          := Tb1.FieldByName('BONIFICACAO').AsString;
    Sc1.FieldByName('VLRBONIFICACAO').AsFloat        := Tb1.FieldByName('VALOR_BONIFICACAO').AsFloat;
    Sc1.FieldByName('OBSERVACAO').AsString           := Tb1.FieldByName('OBS').AsString;
    Sc1.FieldByName('TIPODESPESA').AsString          := Tb1.FieldByName('TIPO_DESPESA').AsString;
    Sc1.FieldByName('VLRDESPESA').AsFloat            := Tb1.FieldByName('VALOR_DESPESA').AsFloat;
    Sc1.FieldByName('PORCDESPESA').AsFloat           := Tb1.FieldByName('PORC_DESPESA').AsFloat;
    Sc1.FieldByName('PORCVENDA').AsFloat             := Tb1.FieldByName('PORC_VENDA').AsFloat;
    Sc1.FieldByName('PORCFOB').AsFloat               := Tb1.FieldByName('PORC_FOB').AsFloat;
    Sc1.FieldByName('NOMEAPARELHOINTERV').AsString   := Tb1.FieldByName('AP_INTERV').AsString;
    Sc1.FieldByName('VLRAPARELHOINTERV').AsFloat     := Tb1.FieldByName('VALOR_AP_INTERV').AsFloat;
    Sc1.FieldByName('VLRFRETEINTERNACIONAL').AsFloat := Tb1.FieldByName('FRETE_INTERNAC').AsFloat;

    if not Tb1.FieldByName('CD_CONDICAO').IsNull then
       Sc1.FieldByName('CONDPAGTOID').Value             := Tb1.FieldByName('CD_CONDICAO').Value;

    if ( Tb1.FieldByName('CD_OPERACAO').Value <> 0 ) then
       Sc1.FieldByName('NATUREZAOPID').Value            := Tb1.FieldByName('CD_OPERACAO').Value;

    Sc1.FieldByName('PDSID').Value                   := Tb1.FieldByName('NUMERO_PEDIDO').Value;
    Sc1.FieldByName('DATAPEDIDOPDSID').AsDateTime    := Tb1.FieldByName('DATA_PEDIDO').AsDateTime;
    Sc1.FieldByName('VLRTOTALINTERVCRED').AsFloat    := Tb1.FieldByName('TOTAL_INTERV_CRED').AsFloat;
    Sc1.FieldByName('VLRTOTALINTERVDEB').AsFloat     := Tb1.FieldByName('TOTAL_INTERV_DEB').AsFloat;

    Sc1.FieldByName('VLRTOTALVENDA').AsFloat         := Tb1.FieldByName('TOTAL_VENDA').AsFloat;

    if ( Tb1.FieldByName('TOTAL_VENDA').IsNull ) or ( Tb1.FieldByName('TOTAL_VENDA').Value = 0 ) then
       {*** Calculando o Total Geral do Pedido de Venda ***}
       Sc1.FieldByName('VLRTOTALGERAL').AsFloat         := ( Tb1.FieldByName('TOTAL_INTERV_CRED').AsFloat +
                                                            Tb1.FieldByName('TOTAL_INTERV_DEB').AsFloat +
                                                            Tb1.FieldByName('VALOR_FOB').AsFloat +
                                                            Tb1.FieldByName('VALOR_DESPESA').AsFloat +
                                                            Tb1.FieldByName('FRETE_INTERNAC').AsFloat
                                                          )
    else
       Sc1.FieldByName('VLRTOTALGERAL').AsFloat := Tb1.FieldByName('TOTAL_VENDA').AsFloat;

    Sc1.FieldByName('USUARIO').AsString              := Tb1.FieldByName('USUARIO').AsString;
    Sc1.Post;

    if Sc1.ChangeCount > 1000 then
       Sc1.ApplyUpdates(-1);

    Tb1.Next;
    Pb1.StepIt;
  end;

  if Sc1.ChangeCount > 0 then
     Sc1.ApplyUpdates(-1);

  Tb1.Close;
  Sc1.Close;
 end;
end;


procedure TfrmMigra.OrigemVenda;
var cdsOrigemVenda : TClientDataSet;
    iSQL : String;
begin
 iSQL  := 'SELECT ORIGEMVENDAID FROM PP_ORIGEMVENDA';
 cdsOrigemVenda := nil;
 ExecDDL( -1, iSQL, cdsOrigemVenda );
 cdsOrigemVenda.AddIndex( 'idx1','ORIGEMVENDAID',[ixPrimary],'','',0);
 cdsOrigemVenda.IndexName := 'idx1';

 try
  if not cdsOrigemVenda.FindKey([1]) then
     DMMigra.ExecQry( 'INSERT INTO PP_ORIGEMVENDA VALUES( '+
                     QuotedStr('1')+','+QuotedStr('Importação')+','+ QuotedStr('GSI')+')');

  if not cdsOrigemVenda.FindKey([2]) then
     DMMigra.ExecQry( 'INSERT INTO PP_ORIGEMVENDA VALUES( '+
                     QuotedStr('2')+','+QuotedStr('Revenda')+','+ QuotedStr('GSI')+')');

  if not cdsOrigemVenda.FindKey([3]) then
     DMMigra.ExecQry( 'INSERT INTO PP_ORIGEMVENDA VALUES( '+
                     QuotedStr('3')+','+QuotedStr('Exportação')+','+ QuotedStr('GSI')+')');
 finally
  FreeAndNil( cdsOrigemVenda );
 end;
end;

procedure TfrmMigra.PedidoVendaItem;
var cdsPedido : TClientDataSet;
    iSQL,Cep : String;
begin
 {*** Desbilitando Constraint do Catalago para migrar o ModeloID ***}
 DMMigra.ExecQry('ALTER TABLE PP_PEDVENDITEM DISABLE CONSTRAINTS FK_PP_PEDVENDITEM_MODELOID');

 iSQL  := 'SELECT '+
          '  PEDVENDID'+
          '  FROM'+
          '  PP_PEDVEND';

 try
  ExecDDL( -1, iSQL, cdsPedido );
  cdsPedido.AddIndex( 'idx1','PEDVENDID',[ixPrimary],'','',0);
  cdsPedido.IndexName := 'idx1';

  iSQL  := 'SELECT '+
           '  MODELOID'+
           '  FROM'+
           '  PP_CATALOGO';

  {*** Desabilitado para a migracao dos registros ***
  ExecDDL( -1, iSQL, cdsCatalogo );
  cdsCatalogo.AddIndex( 'idx1','MODELOID',[ixPrimary],'','',0);
  cdsCatalogo.IndexName := 'idx1';}

  wwrichtxtLOG.Lines.Append( 'Pedido de Venda Item ');
  wwrichtxtLOG.Lines.Append('');


  with DMMigra do
  begin
   Tb1.TableName   := 'ITENSAPAR';
   Sc1.CommandText := 'SELECT * FROM PP_PEDVENDITEM';
   Tb1.Open;
   Sc1.Open;
   Tb1.First;
   Pb1.Max := Tb1.RecordCount;
   while Not Tb1.Eof do
   begin
    if not cdsPedido.FindKey([(Tb1.FieldByName('NUMERO_PED').Value)] ) then
       begin
        wwrichtxtLOG.Lines.Append( 'Pedido: '+ Tb1.FieldByName('NUMERO_PED').AsString+ ' Não Encontrado na Tabela de Pedidos' );
        Tb1.Next;
        Pb1.StepIt;
        Continue;
       end;

    { *** Desabilitado para a migracao dos registros ***
    if not cdsCatalogo.FindKey([(Tb1.FieldByName('MODELO').AsString)] ) then
       begin
        if not cdsLog.FindKey([Tb1.FieldByName('MODELO').AsString]) then
           begin
            wwrichtxtLOG.Lines.Append( Tb1.FieldByName('MODELO').AsString );
            cdsLog.Append;
            cdsLog.FieldByName('MODELOID').AsString := Tb1.FieldByName('MODELO').AsString;
            cdsLog.Post;
           end;
        Tb1.Next;
        Pb1.StepIt;
        Continue;
       end; ***}

    Sc1.Insert;
    Sc1.FieldByName('PEDVENDID').Value           := Tb1.FieldByName('NUMERO_PED').Value;
    Sc1.FieldByName('ITEMID').Value              := Tb1.FieldByName('ITEM').Value;
    Sc1.FieldByName('SERIEID').AsString           := Tb1.FieldByName('SERIE').AsString;
    Sc1.FieldByName('MODELOID').AsString         := Tb1.FieldByName('MODELO').AsString;
    Sc1.FieldByName('VOLTAGEM').Value            := Tb1.FieldByName('VOLTAGEM').Value;
    Sc1.FieldByName('QUANTIDADE').AsInteger      := Tb1.FieldByName('QTD').AsInteger;
    Sc1.FieldByName('VLRFOB').AsFloat            := Tb1.FieldByName('VALOR_FOB_TABELA').AsFloat;
    Sc1.FieldByName('VLRFOBREVENDA').AsFloat       := Tb1.FieldByName('VALOR_FOB_VENDA').AsFloat;
    Sc1.FieldByName('VLRINTERVENIENCIA').AsFloat := Tb1.FieldByName('VALOR_INTERV').AsFloat;
    Sc1.FieldByName('VLRCOMISSAO').AsFloat       := Tb1.FieldByName('COMISSAO_TMB').AsFloat;

    Cep := Copy( TransfNum( Tb1.FieldByName('CEP_INST').AsString ), 1, 8 );
    if Cep <> '' then
       SC1.FieldByName('CEPINSTID').Value     := StrToInt( Cep );

    Sc1.FieldByName('ENDERECOINST').AsString           := Tb1.FieldByName('ENDERECO_INST').AsString;
    Sc1.FieldByName('CIDADEINST').AsString             := Tb1.FieldByName('CIDADE_INST').AsString;
    Sc1.FieldByName('SIGLAUFINSTID').AsString          := Tb1.FieldByName('ESTADO_INST').AsString;
    Sc1.FieldByName('TELEFONEINST').AsString           := Tb1.FieldByName('FONE_INST').AsString;
    Sc1.FieldByName('CONTATOINST').AsString            := Tb1.FieldByName('CONTATO_INST').AsString;
    Sc1.FieldByName('EMBJAPAOID').AsString             := Tb1.FieldByName('EMB_REF_JP').AsString;

    if Tb1.FieldByName('LI_DISPENSA').AsString = 'S' then
       Sc1.FieldByName('LIDISPENSA').Value := 1
    else
       Sc1.FieldByName('LIDISPENSA').Value := 0;

    Sc1.FieldByName('LIDATATRANSMISSAO').AsDateTime    := Tb1.FieldByName('LI_TRANSMISSAO').AsDateTime;
    Sc1.FieldByName('LIDATAAPROVACAO').AsDateTime      := Tb1.FieldByName('LI_APROVACAO').AsDateTime;
    Sc1.FieldByName('LINUMERO').AsString               := Tb1.FieldByName('LI_NUMERO').AsString;
    Sc1.FieldByName('LIDATAVALIDADE').AsDateTime       := Tb1.FieldByName('LI_VALIDADE').AsDateTime;
    Sc1.FieldByName('LIVLRCOMISSAO').AsFloat           := Tb1.FieldByName('LI_COMISSAO').AsFloat;
    Sc1.FieldByName('LIADITIVO1').AsString             := Tb1.FieldByName('LI_ADITIVO_1').AsString;
    Sc1.FieldByName('LIDATAVALIDADE1').AsDateTime      := Tb1.FieldByName('LI_VALIDADE_1').AsDateTime;
    Sc1.FieldByName('LIADITIVO2').AsString             := Tb1.FieldByName('LI_ADITIVO_2').AsString;
    Sc1.FieldByName('LIDATAVALIDADE2').AsDateTime      := Tb1.FieldByName('LI_VALIDADE_2').AsDateTime;
    Sc1.FieldByName('LIADITIVO3').AsString             := Tb1.FieldByName('LI_ADITIVO_3').AsString;
    Sc1.FieldByName('LIDATAVALIDADE3').AsDateTime      := Tb1.FieldByName('LI_VALIDADE_3').AsDateTime;
    Sc1.FieldByName('LIADITIVO4').AsString             := Tb1.FieldByName('LI_ADITIVO_4').AsString;
    Sc1.FieldByName('LIDATAVALIDADE4').AsDateTime      := Tb1.FieldByName('LI_VALIDADE_4').AsFloat;
    Sc1.FieldByName('RTINVOICEID').AsString            := Tb1.FieldByName('RT_NUMERO_INVOICE').AsString;
    Sc1.FieldByName('RTCLIENTEID').AsInteger           := Tb1.FieldByName('RT_CODIGO_CLIENTE').AsInteger;
    Sc1.FieldByName('RTOBSERVACAO').AsString           := Tb1.FieldByName('RT_OBS').AsString;
    Sc1.FieldByName('RTCABOK7').AsString               := Tb1.FieldByName('RT_CABO_K7').AsString;
    Sc1.FieldByName('RTCABOVIDEOPRINTER').AsString     := Tb1.FieldByName('RT_CABO_VIDEO_P').AsString;
    Sc1.FieldByName('RTCABOMONITORAUXILIAR').AsString  := Tb1.FieldByName('RT_CABO_MA').AsString;
    Sc1.FieldByName('RTMULTIFORMATO').AsString         := Tb1.FieldByName('RT_MULTIFORMATO').AsString;
    Sc1.FieldByName('RTESTABILIZADOR').AsString        := Tb1.FieldByName('RT_ESTABILIZADOR').AsString;
    Sc1.FieldByName('RTDATASAIDA').AsDateTime          := Tb1.FieldByName('RT_DATA_SAIDA').AsDateTime;
    Sc1.FieldByName('RTNOMETRANSPORTADOR').AsString    := Tb1.FieldByName('RT_TRANSPORTADORA').AsString;
    Sc1.FieldByName('RTTRANSPORTADORID').AsInteger     := 40000 + Tb1.FieldByName('RT_CODIGO_TRANSP').AsInteger;
    Sc1.FieldByName('RTOSID').AsString                 := Tb1.FieldByName('RT_NUMERO_OS').AsString;

    if Tb1.FieldByName('RT_IMPRESSO').AsBoolean then
       Sc1.FieldByName('RTIMPRESSO').Value := 1
    else
       Sc1.FieldByName('RTIMPRESSO').Value := 0;

    Sc1.FieldByName('RTDATAPREVCHEGADA').AsDateTime    := Tb1.FieldByName('RT_DATA_PREV_CHEG').AsDateTime;
    Sc1.FieldByName('RTUSUARIO').AsString              := Tb1.FieldByName('RT_NOME_USUARIO').AsString;

    if Tb1.FieldByName('RT_LIBERADO').AsBoolean then
       Sc1.FieldByName('RTLIBERADO').Value   := 1
    else
       Sc1.FieldByName('RTLIBERADO').Value   := 0;

    Sc1.FieldByName('USUARIO').AsString                := Tb1.FieldByName('RT_NOME_USUARIO').AsString;
    Sc1.Post;

    if Sc1.ChangeCount >= 800 then
       Sc1.ApplyUpdates(-1);

    Tb1.Next;
    Pb1.StepIt;
   end;

   if Sc1.ChangeCount > 0 then
      Sc1.ApplyUpdates(-1);

   Tb1.Close;
   Sc1.Close;

   {*** Habilitando Constraint ***}
//   DMMigra.ExecQry('ALTER TABLE PP_PEDVENDITEM ENABLE CONSTRAINTS FK_PP_PEDVENDITEM_MODELOID');
  end;
 finally
  FreeAndNil(cdsPedido);
//  FreeAndNil(cdsCatalogo);
 end;
end;

procedure TfrmMigra.PedidoVendaRevenda;
var cdsPedido,cdsProduto : TClientDataSet;
    iSQL,Cep : String;
begin
 iSQL  := 'SELECT '+
          '  PEDVENDID,'+
          '  EMPRESAID'+
          '  FROM'+
          '  PP_PEDVEND';

 try
  ExecDDL( -1, iSQL, cdsPedido );
  cdsPedido.AddIndex( 'idx1','PEDVENDID',[ixPrimary],'','',0);
  cdsPedido.IndexName := 'idx1';

  iSQL  := 'SELECT '+
           '  EMPRESAID,'+
           '  PRODUTOID'+
           '  FROM'+
           '  EF_PRODUTO';

  ExecDDL( -1, iSQL, cdsProduto );
  cdsProduto.AddIndex( 'idx1','EMPRESAID;PRODUTOID',[ixPrimary],'','',0);
  cdsProduto.IndexName := 'idx1';

  wwrichtxtLOG.Lines.Append('Log de Pedido Revenda!');
  wwrichtxtLOG.Lines.Append('');


  with DMMigra do
  begin
   Tb1.TableName   := 'ITENSREV';
   Sc1.CommandText := 'SELECT * FROM PP_PEDVENDITEM';
   Tb1.Open;
   Sc1.Open;
   Tb1.First;
   Pb1.Max := Tb1.RecordCount;
   while Not Tb1.Eof do
   begin
    if not cdsPedido.FindKey([(Tb1.FieldByName('NUMERO_PED').Value)] ) then
       begin
        wwrichtxtLOG.Lines.Append( 'Pedido: '+ Tb1.FieldByName('NUMERO_PED').AsString+ ' Não Encontrado na Tabela de Pedidos' );
        Tb1.Next;
        Pb1.StepIt;
        Continue;
       end;

    if not cdsProduto.FindKey([cdsPedido.FieldByName('EMPRESAID').Value,Tb1.FieldByName('CODIGO_PRODUTO').Value ]) then
       begin
        wwrichtxtLOG.Lines.Append( 'Produto: '+ Tb1.FieldByName('CODIGO_PRODUTO').AsString +' não Encontrado para o Pedido: '+ Tb1.FieldByName('NUMERO_PED').AsString + '!' );
        Tb1.Next;
        Pb1.StepIt;
        Continue;
       end;

    Sc1.Insert;
    Sc1.FieldByName('PEDVENDID').Value           := Tb1.FieldByName('NUMERO_PED').Value;
    Sc1.FieldByName('ITEMID').Value              := Tb1.FieldByName('ITEM').Value;
    Sc1.FieldByName('EMPRESAID').Value           := cdsPedido.FieldByName('EMPRESAID').Value;
    Sc1.FieldByName('PRODUTOID').Value           := Tb1.FieldByName('CODIGO_PRODUTO').Value;
    Sc1.FieldByName('ESTOQUEUTILIZADO').AsString := Tb1.FieldByName('ESTOQUE_UTILIZADO').AsString;
    Sc1.FieldByName('SERIEID').AsString          := Tb1.FieldByName('SERIE').AsString;
    Sc1.FieldByName('QUANTIDADE').Value          := Tb1.FieldByName('QUANTIDADE').Value;
    Sc1.FieldByName('VLRPRECOUNITARIO').AsFloat  := Tb1.FieldByName('VALOR_UNITARIO').AsFloat;
    Sc1.FieldByName('VLRPRECOTOTAL').AsFloat     := Tb1.FieldByName('VALOR_TOTAL').AsFloat;
    Sc1.FieldByName('NXID').AsString             := Tb1.FieldByName('NX').AsString;
    Sc1.FieldByName('INVOICEID').AsString        := Tb1.FieldByName('INVOICE').AsString;
    Sc1.FieldByName('VOLTAGEM').AsString         := Tb1.FieldByName('VOLTAGEM').AsString;

    Cep := Copy( TransfNum( Tb1.FieldByName('CEP_INST').AsString ), 1, 8 );
    if Cep <> '' then
       SC1.FieldByName('CEPINSTID').Value     := StrToInt( Cep );

    Sc1.FieldByName('ENDERECOINST').AsString           := Tb1.FieldByName('ENDERECO_INST').AsString;
    Sc1.FieldByName('CIDADEINST').AsString             := Tb1.FieldByName('CIDADE_INST').AsString;
    Sc1.FieldByName('SIGLAUFINSTID').AsString          := Tb1.FieldByName('ESTADO_INST').AsString;
    Sc1.FieldByName('TELEFONEINST').AsString           := Tb1.FieldByName('FONE_INST').AsString;
    Sc1.FieldByName('CONTATOINST').AsString            := Tb1.FieldByName('CONTATO_INST').AsString;
    Sc1.FieldByName('RTCABOK7').AsString               := Tb1.FieldByName('RT_CABO_K7').AsString;
    Sc1.FieldByName('RTCABOVIDEOPRINTER').AsString     := Tb1.FieldByName('RT_CABO_VIDEO_P').AsString;
    Sc1.FieldByName('RTCABOMONITORAUXILIAR').AsString  := Tb1.FieldByName('RT_CABO_MA').AsString;
    Sc1.FieldByName('RTMULTIFORMATO').AsString         := Tb1.FieldByName('RT_MULTIFORMATO').AsString;
    Sc1.FieldByName('RTESTABILIZADOR').AsString        := Tb1.FieldByName('RT_ESTABILIZADOR').AsString;
    Sc1.FieldByName('RTDATASAIDA').AsDateTime          := Tb1.FieldByName('RT_DATA_SAIDA').AsDateTime;
    Sc1.FieldByName('RTTRANSPORTADORID').AsInteger     := 40000 + Tb1.FieldByName('RT_CODIGO_TRANSP').AsInteger;
    Sc1.FieldByName('RTOSID').AsString                 := Tb1.FieldByName('RT_NUMERO_OS').AsString;
    Sc1.FieldByName('RTDATAPREVCHEGADA').AsDateTime    := Tb1.FieldByName('RT_DATA_PREV_CHEG').AsDateTime;
    Sc1.FieldByName('RTDATAEMBARQUE').AsDateTime       := Tb1.FieldByName('RT_DT_EMBARQUE').AsDateTime;

    if Tb1.FieldByName('RT_LIBERADO').AsBoolean then
       Sc1.FieldByName('RTLIBERADO').Value   := 1
    else
       Sc1.FieldByName('RTLIBERADO').Value   := 0;

    Sc1.FieldByName('USUARIO').AsString                := 'GSI';
    Sc1.Post;

    if Sc1.ChangeCount >= 800 then
       Sc1.ApplyUpdates(-1);

    Tb1.Next;
    Pb1.StepIt;
   end;

   if Sc1.ChangeCount > 0 then
      Sc1.ApplyUpdates(-1);

   Tb1.Close;
   Sc1.Close;
  end;
 finally
  FreeAndNil(cdsPedido);
  FreeAndNil(cdsProduto);
 end;
end;

procedure TfrmMigra.PedidoVendaVenda;
var cdsPedido : TClientDataSet;
    iSQL : String;
begin
 iSQL  := 'SELECT '+
          '  PEDVENDID,'+
          '  EMPRESAID'+
          '  FROM'+
          '  PP_PEDVEND';

 try
  ExecDDL( -1, iSQL, cdsPedido );
  cdsPedido.AddIndex( 'idx1','PEDVENDID',[ixPrimary],'','',0);
  cdsPedido.IndexName := 'idx1';

  wwrichtxtLOG.Lines.Append('Log de Itens Pedido de Venda!');
  wwrichtxtLOG.Lines.Append('');

  with DMMigra do
  begin
   dbMigra2.Close;
   dbMigra2.AliasName := 'IMP_CADASTO';
   dbMigra2.Open;
   Tb1.TableName   := 'ITENSVEND';
   Tb3.TableName   := 'VENDEDOR';
   Sc1.CommandText := 'SELECT * FROM PP_PEDVENDVEND';
   Tb1.Open;
   Tb3.Open;
   Sc1.Open;
   Tb1.First;
   Pb1.Max := Tb1.RecordCount;
   while Not Tb1.Eof do
   begin
    if not cdsPedido.FindKey([(Tb1.FieldByName('NUMERO_PED').Value)] ) then
       begin
        wwrichtxtLOG.Lines.Append( 'Pedido: '+ Tb1.FieldByName('NUMERO_PED').AsString+ ' Não Encontrado na Tabela de Pedidos' );
        Tb1.Next;
        Pb1.StepIt;
        Continue;
       end;

    if not Tb3.FindKey([Tb1.FieldByName('CD_VENDEDOR').Value ]) or
       ( Tb3.FieldByName('ENTIDADEID').IsNull ) then
       begin
        wwrichtxtLOG.Lines.Append( 'Vendedor: '+ Tb1.FieldByName('CD_VENDEDOR').AsString + ' não Encontrado para o Pedido: '+ Tb1.FieldByName('NUMERO_PED').AsString + '!' );
        Tb1.Next;
        Pb1.StepIt;
        Continue;
       end;

    Sc1.Insert;
    Sc1.FieldByName('PEDVENDID').Value           := Tb1.FieldByName('NUMERO_PED').Value;
    Sc1.FieldByName('ITEMID').Value              := Tb1.FieldByName('ITEM').Value;
    Sc1.FieldByName('VENDEDORID').Value          := Tb3.FieldByName('ENTIDADEID').Value;

    if not Tb1.FieldByName('CD_FUNCAO').IsNull then
       Sc1.FieldByName('CLASSEVENDEDORID').Value    := Tb1.FieldByName('CD_FUNCAO').Value;

    Sc1.FieldByName('PORCENTAGEM').AsFloat       := Tb1.FieldByName('PORC_VENDA').AsFloat;
    Sc1.FieldByName('USUARIO').AsString          := 'GSI';
    Sc1.Post;

    if Sc1.ChangeCount >= 1000 then
       Sc1.ApplyUpdates(-1);

    Tb1.Next;
    Pb1.StepIt;
   end;

   if Sc1.ChangeCount > 0 then
      Sc1.ApplyUpdates(-1);

   Tb1.Close;
   Tb3.Close;
   Sc1.Close;
  end;
 finally
  FreeAndNil(cdsPedido);
 end;
end;


procedure TfrmMigra.PedidoVendaBonif;
var cdsPedido : TClientDataSet;
    iSQL : String;
begin
 iSQL  := 'SELECT '+
          '  PEDVENDID,'+
          '  EMPRESAID'+
          '  FROM'+
          '  PP_PEDVEND';

 try
  ExecDDL( -1, iSQL, cdsPedido );
  cdsPedido.AddIndex( 'idx1','PEDVENDID',[ixPrimary],'','',0);
  cdsPedido.IndexName := 'idx1';

  wwrichtxtLOG.Lines.Append('Log de Ítens de Pedido de Bonificacao!');
  wwrichtxtLOG.Lines.Append('');


  with DMMigra do
  begin
   Tb1.TableName   := 'ITENSBONIF';
   Sc1.CommandText := 'SELECT * FROM PP_PEDVENDBONIF';
   Tb1.Open;
   Sc1.Open;
   Tb1.First;
   Pb1.Max := Tb1.RecordCount;
   while Not Tb1.Eof do
   begin
    if not cdsPedido.FindKey([(Tb1.FieldByName('NUMERO_PED').Value)] ) then
       begin
        wwrichtxtLOG.Lines.Append( 'Pedido: '+ Tb1.FieldByName('NUMERO_PED').AsString+ ' Não Encontrado na Tabela de Pedidos' );
        Tb1.Next;
        Pb1.StepIt;
        Continue;
       end;

    Sc1.Insert;
    Sc1.FieldByName('PEDVENDID').Value           := Tb1.FieldByName('NUMERO_PED').Value;
    Sc1.FieldByName('ITEMID').Value              := Tb1.FieldByName('ITEM').Value;

    if ( not Tb1.FieldByName('CD_BONIF').IsNull ) and
       ( Tb1.FieldByName('CD_BONIF').Value <> 0 ) then
       Sc1.FieldByName('BONIFICACAOID').Value    := Tb1.FieldByName('CD_BONIF').Value;

    Sc1.FieldByName('DESCRICAO').AsString        := Tb1.FieldByName('DESCR_BONIF').AsString;
    Sc1.FieldByName('VLRBONIFICACAO').AsFloat    := Tb1.FieldByName('VALOR_BONIF').AsFloat;
    Sc1.FieldByName('USUARIO').AsString          := 'GSI';
    Sc1.Post;
    Sc1.ApplyUpdates(-1);
    Tb1.Next;
    Pb1.StepIt;
   end;
   Tb1.Close;
   Sc1.Close;
  end;
 finally
  FreeAndNil(cdsPedido);
 end;
end;

procedure TfrmMigra.PedidoVendaInterv;
var cdsPedido : TClientDataSet;
    iSQL: String;
begin
 iSQL  := 'SELECT '+
          '  PEDVENDID,'+
          '  EMPRESAID'+
          '  FROM'+
          '  PP_PEDVEND';

 try
  ExecDDL( -1, iSQL, cdsPedido );
  cdsPedido.AddIndex( 'idx1','PEDVENDID',[ixPrimary],'','',0);
  cdsPedido.IndexName := 'idx1';

  wwrichtxtLOG.Lines.Append('Log de Ítens de Pedido de Interveniencia!');
  wwrichtxtLOG.Lines.Append('');


  with DMMigra do
  begin
   Tb1.TableName   := 'ITENSINTERV';
   Sc1.CommandText := 'SELECT * FROM PP_PEDVENDINTERV';
   Tb1.Open;
   Sc1.Open;
   Tb1.First;
   Pb1.Max := Tb1.RecordCount;
   while Not Tb1.Eof do
   begin
    if not cdsPedido.FindKey([(Tb1.FieldByName('NUMERO_PED').Value)] ) then
       begin
        wwrichtxtLOG.Lines.Append( 'Pedido: '+ Tb1.FieldByName('NUMERO_PED').AsString+ ' Não Encontrado na Tabela de Pedidos' );
        Tb1.Next;
        Pb1.StepIt;
        Continue;
       end;

    Sc1.Insert;
    Sc1.FieldByName('PEDVENDID').Value           := Tb1.FieldByName('NUMERO_PED').Value;
    Sc1.FieldByName('ITEMID').Value              := Tb1.FieldByName('ITEM').Value;

    if ( not Tb1.FieldByName('CD_INTERV').IsNull ) and
       ( Tb1.FieldByName('CD_INTERV').Value <> 0 ) then
       Sc1.FieldByName('CONDINTERVID').Value  := (100 + Tb1.FieldByName('CD_INTERV').Value);

    Sc1.FieldByName('DESCRICAO').AsString         := Tb1.FieldByName('DESCR_INTERV').AsString;
    Sc1.FieldByName('VLRINTERVENIENCIA').AsFloat  := Tb1.FieldByName('VALOR_INTERV').AsFloat;
    Sc1.FieldByName('USUARIO').AsString           := 'GSI';
    Sc1.Post;
    Sc1.ApplyUpdates(-1);
    Tb1.Next;
    Pb1.StepIt;
   end;
   Tb1.Close;
   Sc1.Close;
  end;
 finally
  FreeAndNil(cdsPedido);
 end;
end;

procedure TfrmMigra.HistFechComissao;
begin
 with DMMigra do
 begin
  Tb1.TableName   := 'HIST_FECH_COM';
  Sc1.CommandText := 'SELECT * FROM PP_HISTFECHCOMISSAO';
  Tb1.Open;
  Sc1.Open;
  Tb1.First;
  Pb1.Max := Tb1.RecordCount;
  while Not Tb1.Eof do
  begin
    Sc1.Insert;
    Sc1.FieldByName('ANOMESID').AsString   := Tb1.FieldByName('ANOMES').AsString;
    Sc1.FieldByName('MOTIVO').AsString     := Tb1.FieldByName('MOTIVO').AsString;
    Sc1.FieldByName('USUARIO').AsString    := Tb1.FieldByName('USUARIO').AsString;
    Sc1.Post;
    Sc1.ApplyUpdates(-1);
    Tb1.Next;
    Pb1.StepIt;
  end;
  Tb1.Close;
  Sc1.Close;
 end;
end;

procedure TfrmMigra.AnaliseVenda;
var cdsPedido,cdsNfs : TClientDataSet;
    iSQL : String;
begin
 iSQL  := 'SELECT '+
          '  PEDVENDID,'+
          '  EMPRESAID'+
          '  FROM'+
          '  PP_PEDVEND';

 try
  ExecDDL( -1, iSQL, cdsPedido );
  cdsPedido.AddIndex( 'idx1','PEDVENDID',[ixPrimary],'','',0);
  cdsPedido.IndexName := 'idx1';

 {*** Notas Fiscais de Saída ***}
 iSQL  := 'SELECT '+
          '  EMPRESAID,'+
          '  NFSID,'+
          '  DATAEMISSAOID'+
          '  FROM'+
          '  EF_NFS';

  ExecDDL( -1, iSQL, cdsNfs );
  cdsNfs.AddIndex( 'idx1','EMPRESAID;NFSID;DATAEMISSAOID',[ixPrimary],'','',0);
  cdsNfs.IndexName := 'idx1';

 wwrichtxtLOG.Lines.Append('Log da Analise Venda!');
 wwrichtxtLOG.Lines.Append('');

  with DMMigra do
  begin
   Tb1.TableName   := 'ANALISEVENDA';
   Sc1.CommandText := 'SELECT * FROM PP_ANALISEVENDA';
   Tb1.Open;
   Sc1.Open;
   Tb1.First;
   Pb1.Max := Tb1.RecordCount;
   while Not Tb1.Eof do
   begin
    if not cdsPedido.FindKey([(Tb1.FieldByName('NUMERO_PED').Value)] ) then
       begin
        wwrichtxtLOG.Lines.Append( 'Pedido: '+ Tb1.FieldByName('NUMERO_PED').AsString+ ' Não Encontrado na Tabela de Pedidos' );
        Tb1.Next;
        Pb1.StepIt;
        Continue;
       end;

    if not Tb1.FieldByName('NUMERO_NOTA').IsNull then
       if not cdsNfs.FindKey([Tb1.FieldByName('CD_EMPRESA').Value,Tb1.FieldByName('NUMERO_NOTA').Value,
                               Tb1.FieldByName('DATA_EMISSAO').Value ]) then
          begin
           wwrichtxtLOG.Lines.Append( 'Nota Fiscal: '+ Tb1.FieldByName('NUMERO_NOTA').AsString+ ' Data: '+
                                      Tb1.FieldByName('DATA_EMISSAO').AsString +' Não Encontrada para o Pedido '+
                                      Tb1.FieldByName('NUMERO_PED').AsString );
           Tb1.Next;
           Pb1.StepIt;
           Continue;
          end;

    Sc1.Insert;
    Sc1.FieldByName('PEDVENDID').Value     := Tb1.FieldByName('NUMERO_PED').Value;

    if ( not Tb1.FieldByName('CD_EMPRESA').IsNull ) and
       ( Tb1.FieldByName('CD_EMPRESA').Value <> 0 ) then
       Sc1.FieldByName('EMPRESAID').Value  := Tb1.FieldByName('CD_EMPRESA').Value
    else
       Sc1.FieldByName('EMPRESAID').Value  := cdsPedido.FieldByName('EMPRESAID').Value;

    if not Tb1.FieldByName('NUMERO_NOTA').IsNull then
       begin
        Sc1.FieldByName('NFSID').Value                := Tb1.FieldByName('NUMERO_NOTA').Value;
        Sc1.FieldByName('DATAEMISSAOID').AsDateTime   := Tb1.FieldByName('DATA_EMISSAO').AsDateTime;
       end;

    Sc1.FieldByName('DATAFECHAMENTO').AsDateTime  := Tb1.FieldByName('DATA_FECHAMENTO').AsDateTime;
    Sc1.FieldByName('VLRFOB').AsFloat             := Tb1.FieldByName('VALOR_FOB').AsFloat;
    Sc1.FieldByName('VLRVENDA').AsFloat           := Tb1.FieldByName('VALOR_VENDA').AsFloat;
    Sc1.FieldByName('VLRINTERVENIENCIA').AsFloat  := Tb1.FieldByName('VALOR_INTERV').AsFloat;
    Sc1.FieldByName('VLRIPI').AsFloat             := Tb1.FieldByName('VALOR_IPI').AsFloat;
    Sc1.FieldByName('VLRCOMISSAO').AsFloat        := Tb1.FieldByName('VALOR_COMISSAO').AsFloat;
    Sc1.FieldByName('VLRCOMISSAOUS').AsFloat      := Tb1.FieldByName('VALOR_COMISSAO_US').AsFloat;

    if Tb1.FieldByName('LIBERAR_PAGTO_FIN').AsBoolean then
       Sc1.FieldByName('LIBPAGTOFIN').Value := 1
    else
      Sc1.FieldByName('LIBPAGTOFIN').Value  := 0;

    if Tb1.FieldByName('STATUS').AsBoolean then
       Sc1.FieldByName('STATUS').Value := 1
    else
      Sc1.FieldByName('STATUS').Value  := 0;

    Sc1.FieldByName('USUARIO').AsString    := Tb1.FieldByName('USUARIO').AsString;
    Sc1.Post;
    Tb1.Next;
    Pb1.StepIt;
  end;
  Sc1.ApplyUpdates(-1);
  Tb1.Close;
  Sc1.Close;
 end;

 finally
  FreeAndNil(cdsPedido);
  FreeAndNil(cdsNfs);
 end;
end;

procedure TfrmMigra.AnalisevendaItem;
var cdsPedido,cdsCatalogo : TClientDataSet;
    iSQL : String;
begin

 {*** Desbilitando Constraint do Catalago para migrar o ModeloId ***}
 DMMigra.ExecQry('ALTER TABLE PP_ANALISEVENDAITEM DISABLE CONSTRAINTS FK_PP_ANALISEVENDAITEM_MODELID');
 iSQL  := 'SELECT '+
          '  PEDVENDID'+
          '  FROM'+
          '  PP_PEDVEND';

 try
  ExecDDL( -1, iSQL, cdsPedido );
  cdsPedido.AddIndex( 'idx1','PEDVENDID',[ixPrimary],'','',0);
  cdsPedido.IndexName := 'idx1';


  iSQL  := 'SELECT '+
           '  MODELOID'+
           '  FROM'+
           '  PP_CATALOGO';

  {*** Desabilitado para a migracao dos registros ***}
  {ExecDDL( -1, iSQL, cdsCatalogo );
  cdsCatalogo.AddIndex( 'idx1','MODELOID',[ixPrimary],'','',0);
  cdsCatalogo.IndexName := 'idx1'; }


  wwrichtxtLOG.Lines.Append('Log da Análise Item');
  wwrichtxtLOG.Lines.Append('');
 
  with DMMigra do
  begin
   Tb1.TableName   := 'ANALISEITENS';
   Sc1.CommandText := 'SELECT * FROM PP_ANALISEVENDAITEM';
   Tb1.Open;
   Sc1.Open;
   Tb1.First;
   Pb1.Max := Tb1.RecordCount;
   while Not Tb1.Eof do
   begin
    if not cdsPedido.FindKey([ Tb1.FieldByName('NUMERO_PED').Value ]) then
       begin
        wwrichtxtLOG.Lines.Append( 'Pedido: '+ Tb1.FieldByName('NUMERO_PED').AsString+ ' Não Encontrado na Tabela de Pedidos' );
        Tb1.Next;
        Pb1.StepIt;
        Continue;
       end;

  {*** Desabilitado para a migracao dos registros ***
   if not cdsCatalogo.FindKey([(Tb1.FieldByName('MODELO').AsString)] ) then
     begin
      if ( not cdsLog.FindKey([Tb1.FieldByName('MODELO').AsString])) and ( Tb1.FieldByName('MODELO').AsString <> '' ) then
         begin
          wwrichtxtLOG.Lines.Append( Tb1.FieldByName('MODELO').AsString );
          cdsLog.Append;
          cdsLog.FieldByName('MODELOID').AsString := Tb1.FieldByName('MODELO').AsString;
          cdsLog.Post;
         end;
      Tb1.Next;
      Pb1.StepIt;
      Continue;
     end; }

   Sc1.Insert;
   Sc1.FieldByName('PEDVENDID').Value      := Tb1.FieldByName('NUMERO_PED').Value;
   Sc1.FieldByName('ITEMID').Value         := Tb1.FieldByName('ITEM').Value;
   Sc1.FieldByName('MODELOID').AsString    := Tb1.FieldByName('MODELO').AsString;
   Sc1.FieldByName('GRUPOID').AsString     := Tb1.FieldByName('GRUPO').AsString;
   Sc1.FieldByName('TIPO').AsString        := Tb1.FieldByName('TIPO').AsString;
   Sc1.Post;

   if SC1.ChangeCount >= 1000 then
      Sc1.ApplyUpdates(-1);
   Tb1.Next;
   Pb1.StepIt;
  end;
{  ExportarTbl1.TtmbDataSet     := cdsLog;
  ExportarTbl1.TtmbPathExcel   := ExtractFilePath(Application.ExeName)+'AnaliseItemCata';
  ExportarTbl1.TtmbExportExcel := True;}

  if SC1.ChangeCount >= 0 then
     Sc1.ApplyUpdates(-1);

  Tb1.Close;
  Sc1.Close;

  {*** Desbilitando Constraint do Catalago para migrar o ModeloId ***}
//  DMMigra.ExecQry('ALTER TABLE PP_ANALISEVENDAITEM ENABLE CONSTRAINTS FK_PP_ANALISEVENDAITEM_MODELID');
 end;

 finally
  FreeAndNil(cdsPedido);
  FreeAndNil(cdsCatalogo);
  FreeAndNil(cdsLog);
 end;
end;

procedure TfrmMigra.BasePagto;
var cdsPedido: TClientDataSet;
    iSQL : String;
    ItemId : Integer;
begin
 iSQL  := 'SELECT '+
          '  PEDVENDID'+
          '  FROM'+
          '  PP_PEDVEND';

 try
  ExecDDL( -1, iSQL, cdsPedido );
  cdsPedido.AddIndex( 'idx1','PEDVENDID',[ixPrimary],'','',0);
  cdsPedido.IndexName := 'idx1';

  with DMMigra do
  begin
   dbMigra2.Close;
   dbMigra2.AliasName := 'IMP_CADASTO';
   dbMigra2.Open;
   Tb1.TableName   := 'BASEPGTO';
   Tb3.TableName   := 'VENDEDOR';
   Sc1.CommandText := 'SELECT * FROM PP_BASEPAGTO';
   Tb1.Open;
   Tb3.Open;
   Sc1.Open;
   Tb1.First;
   Pb1.Max := Tb1.RecordCount;
   while Not Tb1.Eof do
   begin
    if not cdsPedido.FindKey([ Tb1.FieldByName('NUMERO_PED').Value ]) then
       begin
        wwrichtxtLOG.Lines.Append( 'Pedido: '+ Tb1.FieldByName('NUMERO_PED').AsString+ ' Não Encontrado na Tabela de Pedidos' );
        Tb1.Next;
        Pb1.StepIt;
        Continue;
       end;

    if ( not Tb3.FindKey([Tb1.FieldByName('CD_VENDEDOR').Value ]) ) or
       ( Tb3.FieldByName('ENTIDADEID').IsNull ) then
       begin
        wwrichtxtLOG.Lines.Append( 'Vendedor: '+ Tb1.FieldByName('CD_VENDEDOR').AsString + ' não Encontrado para o Pedido: '+ Tb1.FieldByName('NUMERO_PED').AsString + '!' );
        Tb1.Next;
        Pb1.StepIt;
        Continue;
       end;   

   if Tb1.FieldByName('ITEM').IsNull then
      begin
       iSQL := 'WHERE '+
               '  VENDEDORID = '+ Tb3.FieldByName('ENTIDADEID').AsString +
               '  AND PEDVENDID = '+ QuotedStr( Tb1.FieldByName('NUMERO_PED').AsString );
       ItemId := NewValue( 'ITEMID','PP_BASEPAGTO',iSQL );
      end
   else
     ItemId := Tb1.FieldByName('ITEM').Value;

   Sc1.Insert;
   Sc1.FieldByName('VENDEDORID').Value           := Tb3.FieldByName('ENTIDADEID').Value;
   Sc1.FieldByName('PEDVENDID').Value            := Tb1.FieldByName('NUMERO_PED').Value;
   Sc1.FieldByName('ITEMID').Value               := ItemId;
   Sc1.FieldByName('DATACONVFOB').AsDateTime     := Tb1.FieldByName('DATA_CONV_FOB').AsDateTime;
   Sc1.FieldByName('DATALIBPAGTOFIN').AsDateTime := Tb1.FieldByName('DATA_LIB_PAGTO_FIN').AsDateTime;
   Sc1.FieldByName('DATAPAGTOCOM').AsDateTime    := Tb1.FieldByName('DATA_PAGTO').AsDateTime;

   if (not Tb1.FieldByName('CD_FUNCAO').IsNull) and
      (Tb1.FieldByName('CD_FUNCAO').Value <> 0) then
      Sc1.FieldByName('CLASSEVENDEDORID').Value     := Tb1.FieldByName('CD_FUNCAO').Value;

   Sc1.FieldByName('NIVELVENDA').AsString        := Tb1.FieldByName('NIVEL_VENDA').AsString;
   Sc1.FieldByName('VLRCOMISSAO').AsFloat        := Tb1.FieldByName('VALOR_COMISSAO').AsFloat;
   Sc1.FieldByName('PORCVENDA').AsFloat          := Tb1.FieldByName('PORC_VENDA').AsFloat;
   Sc1.FieldByName('VLRBASECOMISSAO').AsFloat    := Tb1.FieldByName('VALOR_BASE_COMISSAO').AsFloat;
   Sc1.FieldByName('VLRBASECOMISSAOUS').AsFloat  := Tb1.FieldByName('VALOR_BASE_COMISSAO_US').AsFloat;
   Sc1.FieldByName('VLRDSR').AsFloat             := Tb1.FieldByName('VALOR_DSR').AsFloat;
   Sc1.FieldByName('VLRLIQUIDO').AsFloat         := Tb1.FieldByName('VALOR_LIQUIDO').AsFloat;
   Sc1.FieldByName('OBSERVACAO').AsString        := Tb1.FieldByName('OBS').AsString;
   Sc1.FieldByName('USUARIO').AsString           := Tb1.FieldByName('USUARIO').AsString;
   Sc1.Post;

   if Sc1.ChangeCount >= 1000 then
      Sc1.ApplyUpdates(-1);

   Tb1.Next;
   Pb1.StepIt;
  end;
  if Sc1.ChangeCount >= 0 then
     Sc1.ApplyUpdates(-1);

  Tb1.Close;
  Tb3.Close;
  Sc1.Close;
 end;

 finally
  FreeAndNil(cdsPedido);
 end;
end;

procedure TfrmMigra.PPProcesso;
var cdsPedido,cdsEntidade : TClientDataSet;
    iSQL : String;
begin
 iSQL  := 'SELECT '+
          '  PEDVENDID'+
          '  FROM'+
          '  PP_PEDVEND';

 try
  ExecDDL( -1, iSQL, cdsPedido );
  cdsPedido.AddIndex( 'idx1','PEDVENDID',[ixPrimary],'','',0);
  cdsPedido.IndexName := 'idx1';

 {*** Entidade ***}
 iSQL  := 'SELECT '+
          '  ENTIDADEID'+
          '  FROM'+
          '  EF_ENTIDADE';

  ExecDDL( -1, iSQL, cdsEntidade );
  cdsEntidade.AddIndex( 'idx1','ENTIDADEID',[ixPrimary],'','',0);
  cdsEntidade.IndexName := 'idx1';

  wwrichtxtLOG.Lines.Append('Log do Processo!');
  wwrichtxtLOG.Lines.Append('');


  with DMMigra do
  begin
   Tb1.TableName   := 'PROCESSO';
   Sc1.CommandText := 'SELECT * FROM PP_PROCESSOIMP';
   Tb1.Open;
   Sc1.Open;
   Tb1.First;
   Pb1.Max := Tb1.RecordCount;
   while Not Tb1.Eof do
   begin
    if not cdsPedido.FindKey([(Tb1.FieldByName('NUMERO_PED').Value)] ) then
       begin
        wwrichtxtLOG.Lines.Append( 'Pedido: '+ Tb1.FieldByName('NUMERO_PED').AsString+ ' Não Encontrado na Tabela de Pedidos' );
        Tb1.Next;
        Pb1.StepIt;
        Continue;
       end;

    if not cdsEntidade.FindKey([ Tb1.FieldByName('CD_CLIENTE').AsInteger ]) then
       begin
        wwrichtxtLOG.Lines.Append( 'Cliente: '+ Tb1.FieldByName('CD_CLIENTE').AsString+ ' Não Encontrado para o Pedido '+
                                   Tb1.FieldByName('NUMERO_PED').AsString );
        Tb1.Next;
        Pb1.StepIt;
        Continue;
       end;

    Sc1.Insert;
    Sc1.FieldByName('PEDVENDID').Value               := Tb1.FieldByName('NUMERO_PED').Value;
    Sc1.FieldByName('DATAPROCESSO').AsDateTime       := Tb1.FieldByName('DATA_PROC').Value;
    Sc1.FieldByName('DATAPDI').AsDateTime            := Tb1.FieldByName('DATA_PDI').AsDateTime;
    Sc1.FieldByName('DATAPEDIDO').AsDateTime         := Tb1.FieldByName('DATA_PED').AsDateTime;
    Sc1.FieldByName('CLIENTEID').Value               := Tb1.FieldByName('CD_CLIENTE').Value;
    Sc1.FieldByName('OBSERVACAOVENDA').AsString      := Tb1.FieldByName('OBS_VENDA').AsString;
    Sc1.FieldByName('OBSERVACAOPROCESSO').AsString   := Tb1.FieldByName('OBS_PROC').AsString;

    if Tb1.FieldByName('SOLICITA_ESQUEMA').AsString = 'S' then
       Sc1.FieldByName('SOLICESQUEMA').Value          := 1
    else
       Sc1.FieldByName('SOLICESQUEMA').Value          := 0;

    if Tb1.FieldByName('SOLICITA_NOTA_PROMI').AsString = 'S' then
       Sc1.FieldByName('SOLICNOTAPROMISSORIA').Value  := 1
    else
       Sc1.FieldByName('SOLICNOTAPROMISSORIA').Value  := 0;

    Sc1.FieldByName('EMBDATA').AsDateTime             := Tb1.FieldByName('EMB_DATA').AsDateTime;
    Sc1.FieldByName('EMBDATAPREVISAO').AsDateTime     := Tb1.FieldByName('EMB_DATA_PREVISAO').AsDateTime;
    Sc1.FieldByName('EMBDATABL').AsDateTime           := Tb1.FieldByName('EMB_DATA_BL').AsDateTime;
    Sc1.FieldByName('EMBNUMCONHEC').Value             := Tb1.FieldByName('EMB_NUMERO_CONHEC').Value;
    Sc1.FieldByName('EMBPESOLIQUIDO').AsFloat         := Tb1.FieldByName('EMB_PESO_LIQ').AsFloat;
    Sc1.FieldByName('EMBNOMENAVIO').AsString          := Tb1.FieldByName('EMB_NOME_NAVIO').AsString;
    Sc1.FieldByName('EMBPESOBRUTO').AsFloat           := Tb1.FieldByName('EMB_PESO_BRUTO').AsFloat;
    Sc1.FieldByName('EMBSINALFOB').AsFloat            := Tb1.FieldByName('EMB_SINAL_FOB').AsFloat;
    Sc1.FieldByName('EMBDATAPAGTOSINAL').AsDateTime   := Tb1.FieldByName('EMB_DATA_PGT_SINAL_FOB').AsDateTime;
    Sc1.FieldByName('EMBFOBAVISTA').AsFloat           := Tb1.FieldByName('EMB_FOB_VISTA').AsFloat;
    Sc1.FieldByName('EMBDATAPAGTOFOBV').AsDateTime    := Tb1.FieldByName('EMB_DATA_PGT_FOB_VISTA').AsDateTime;
    Sc1.FieldByName('EMBDATASOLSEGINT').AsDateTime    := Tb1.FieldByName('EMB_DATA_SOL_SEG_INT').AsDateTime;
    Sc1.FieldByName('EMBDATAAPOLICE').AsDateTime      := Tb1.FieldByName('EMB_DATA_APOLICE').AsDateTime;
    Sc1.FieldByName('EMBDATAPAGTOSEGINT').AsDateTime  := Tb1.FieldByName('EMB_DATA_PGT_SEG_INT').AsDateTime;
    Sc1.FieldByName('EMBSEGINT').AsFloat              := Tb1.FieldByName('EMB_SEGURO_INT').AsFloat;
    Sc1.FieldByName('EMBDESPACHANTE').AsString        := Tb1.FieldByName('EMB_DESPACHANTE').AsString;
    Sc1.FieldByName('EMBVLRDESEMBARACO').AsFloat      := Tb1.FieldByName('EMB_VLR_DESEMBARACO').AsFloat;
    Sc1.FieldByName('EMBVLRFRETEINTERNAC').AsFloat    := Tb1.FieldByName('EMB_VLR_FRETE_INTERNAC').AsFloat;
    Sc1.FieldByName('EMBVLRFRETEINTERNO').AsFloat     := Tb1.FieldByName('EMB_VLR_FRETE_INTERNO').AsFloat;
    Sc1.FieldByName('EMBDATACHEGAPAR').AsDateTime     := Tb1.FieldByName('EMB_DATA_CHEG_APA').AsDateTime;
    Sc1.FieldByName('EMBDATALIBALFANDEGA').AsDateTime := Tb1.FieldByName('EMB_DATA_LIB_ALFAND').AsDateTime;
    Sc1.FieldByName('EMBDATALIBTMB').AsDateTime       := Tb1.FieldByName('EMB_DATA_LIB_TMB').AsDateTime;
    Sc1.FieldByName('EMBDATAENTREGACLI').AsDateTime    := Tb1.FieldByName('EMB_DATA_ENTREGA_CLI').AsDateTime;
    Sc1.FieldByName('EMBDATATERMOACEIT').AsDateTime      := Tb1.FieldByName('EMB_DATA_TERMO_ACEIT').AsDateTime;
    Sc1.FieldByName('EMBOBS').AsString                := Tb1.FieldByName('EMB_OBS').AsString;
    Sc1.FieldByName('EMBDIID').AsString               := Tb1.FieldByName('EMB_NUMERO_DI').AsString;
    Sc1.FieldByName('EMBDATADI').AsDateTime           := Tb1.FieldByName('EMB_DATA_DI').AsDateTime;
    Sc1.FieldByName('EMBFATINVOICEID').AsString       := Tb1.FieldByName('EMB_FT_INVOICE').AsString;
    Sc1.FieldByName('EMBJAPAOID').AsString            := Tb1.FieldByName('EMB_REF_JP').AsString;
    Sc1.FieldByName('EMBDATAFATURA').AsDateTime       := Tb1.FieldByName('EMB_DT_FATURA').AsDateTime;
    Sc1.FieldByName('ROFRESPONSAVEL').AsString        := Tb1.FieldByName('ROF_RESPONSAVEL').AsString;

    if Tb1.FieldByName('ROF_DISPENSA').AsString = 'S' then
       Sc1.FieldByName('ROFDISPENSA').AsFloat := 1
    else
       Sc1.FieldByName('ROFDISPENSA').AsFloat := 0;

    Sc1.FieldByName('ROFDATATRANSMISSAO').AsDateTime     := Tb1.FieldByName('ROF_DATA_TRANSMISSAO').AsDateTime;
    Sc1.FieldByName('ROFDATAAPROVACAO').AsDateTime       := Tb1.FieldByName('ROF_DATA_APROVACAO').AsDateTime;
    Sc1.FieldByName('ROFID').AsString                    := Tb1.FieldByName('ROF_NUMERO').AsString;
    Sc1.FieldByName('ROFOBSEXIGENCIA').AsString          := Tb1.FieldByName('ROF_OBS_EXIGENCIAS').AsString;
    Sc1.FieldByName('PPDATASOLICITACAO').AsDateTime      := Tb1.FieldByName('PP_DATA_SOLICITA').AsDateTime;
    Sc1.FieldByName('PPDATAENVIOCLIENTE').AsDateTime     := Tb1.FieldByName('PP_DATA_ENVIO_CLI').AsDateTime;
    Sc1.FieldByName('PPDATAAPROVACAO').AsDateTime        := Tb1.FieldByName('PP_DATA_APROV').AsDateTime;
    Sc1.FieldByName('PPOBS').AsString                    := Tb1.FieldByName('PP_OBS').AsString;
    Sc1.FieldByName('LIRESPONSAVEL').AsString            := Tb1.FieldByName('LI_RESPONSAVEL').AsString;
    Sc1.FieldByName('LIOBSEXIGENCIA').AsString           := Tb1.FieldByName('LI_OBS_EXIGENCIAS').AsString;

    Sc1.FieldByName('PODATATRANSMISSAOEMAIL').AsDateTime := Tb1.FieldByName('PO_DATA_TRANSM_EMAIL').AsDateTime;
    Sc1.FieldByName('PONXID').AsString                   := Tb1.FieldByName('PO_NUMERO_NX').AsString;
    Sc1.FieldByName('PODATAENVIOFORM').AsDateTime        := Tb1.FieldByName('PO_DATA_ENVIO_FORM').AsDateTime;
    Sc1.FieldByName('POTRANSMISSAO1').AsDateTime         := Tb1.FieldByName('PO_TRANSMI_01').AsDateTime;
    Sc1.FieldByName('POTRANSMISSAO2').AsDateTime         := Tb1.FieldByName('PO_TRANSMI_02').AsDateTime;
    Sc1.FieldByName('POTRANSMISSAO3').AsDateTime         := Tb1.FieldByName('PO_TRANSMI_03').AsDateTime;
    Sc1.FieldByName('POTRANSMISSAO4').AsDateTime         := Tb1.FieldByName('PO_TRANSMI_04').AsDateTime;
    Sc1.FieldByName('POTRANSMISSAO5').AsDateTime         := Tb1.FieldByName('PO_TRANSMI_05').AsDateTime;
    Sc1.FieldByName('POTRANSMISSAO6').AsDateTime         := Tb1.FieldByName('PO_TRANSMI_06').AsDateTime;
    Sc1.FieldByName('PONUMFATPROFORMA').AsString         := Tb1.FieldByName('PO_NUMERO_FAT_PROFORMA').AsString;
    Sc1.FieldByName('PODATAFATPROFORMA').AsDateTime      := Tb1.FieldByName('PO_DATA_FAT_PROFORMA').AsDateTime;
    Sc1.FieldByName('EPRESPONSAVEL').AsString            := Tb1.FieldByName('EP_RESPONSAVEL').AsString;

    if Tb1.FieldByName('EP_DISPENSA').AsString = 'S' then
       Sc1.FieldByName('EPDISPENSA').Value := 1
    else
       Sc1.FieldByName('EPDISPENSA').Value := 0;

    Sc1.FieldByName('EPDATATRANSMISSAO').AsDateTime    := Tb1.FieldByName('EP_DATA_TRANSMISSAO').AsDateTime;
    Sc1.FieldByName('EPDATAAPROVACAO').AsDateTime      := Tb1.FieldByName('EP_DATA_APROVACAO').AsDateTime;
    Sc1.FieldByName('EPNUMERO').AsString               := Tb1.FieldByName('EP_NUMERO').AsString;
    Sc1.FieldByName('EPOBS').AsString                  := Tb1.FieldByName('EP_OBS').AsString;
    Sc1.FieldByName('TIDATA').AsDateTime               := Tb1.FieldByName('TI_DATA').AsDateTime;
    Sc1.FieldByName('TICLIENTEID').Value               := Tb1.FieldByName('TI_CODIGO_CLIENTE').Value;
    Sc1.FieldByName('TIOBS').AsString                  := Tb1.FieldByName('TI_OBS').AsString;
    Sc1.FieldByName('DOCDATARECDOC').AsDateTime        := Tb1.FieldByName('DOC_DATA_REC_DOCS').AsDateTime;
    Sc1.FieldByName('DOCPEDCONFCONTRATO').AsDateTime   := Tb1.FieldByName('DOC_PED_CONFEC_CONTRATO').AsDateTime;
    Sc1.FieldByName('DOCRECCONTRATO').AsDateTime       := Tb1.FieldByName('DOC_RECEB_CONTRATO').AsDateTime;
    Sc1.FieldByName('DOCDATAREQUISICAOMI').AsDateTime  := Tb1.FieldByName('DOC_DATA_REQUIS_MIC').AsDateTime;
    Sc1.FieldByName('DOCOBS').AsString                 := Tb1.FieldByName('DOC_OBS').AsString;
    Sc1.FieldByName('DOCNUMCONTRATO').AsString         := Tb1.FieldByName('DOC_NR_CONTRATO').AsString;
    Sc1.FieldByName('DOCDATACONTRATO').AsDateTime      := Tb1.FieldByName('DOC_DT_CONTRATO').AsDateTime;

    if Tb1.FieldByName('LC_DISPENSA').AsBoolean then
       Sc1.FieldByName('LCDISPENSA').AsFloat := 1
    else
       Sc1.FieldByName('LCDISPENSA').AsFloat := 0;

    Sc1.FieldByName('LCNUMERO').AsString               := Tb1.FieldByName('LC_NUMERO').AsString;
    Sc1.FieldByName('LCDATAEMISSAOID').AsDateTime      := Tb1.FieldByName('LC_DATA_EMISSAO').AsDateTime;
    Sc1.FieldByName('LCDATAVALIDADE').AsDateTime       := Tb1.FieldByName('LC_DATA_VALIDADE').AsDateTime;
    Sc1.FieldByName('LCULTDATAEMBARQUE').AsDateTime    := Tb1.FieldByName('LC_ULT_DATA_EMBARQUE').AsDateTime;
    Sc1.FieldByName('LCBANCOEMISSOR').AsString         := Tb1.FieldByName('LC_BANCO_EMISSOR').AsString;
    Sc1.FieldByName('LCPRACA').Value                   := Tb1.FieldByName('LC_PRACA').Value;
    Sc1.FieldByName('LCINSTITUICAO').Value             := Tb1.FieldByName('LC_INSTITUICAO').Value;

    if Tb1.FieldByName('CB_DISPENSA').AsBoolean then
       Sc1.FieldByName('CBDISPENSA').AsFloat := 1
    else
       Sc1.FieldByName('CBDISPENSA').AsFloat := 0;

    Sc1.FieldByName('CBNUMERO').AsString               := Tb1.FieldByName('CB_NUMERO').AsString;
    Sc1.FieldByName('CBDATA').AsDateTime               := Tb1.FieldByName('CB_DATA').AsDateTime;

    if Tb1.FieldByName('CANCELADO').AsBoolean then
       Sc1.FieldByName('CANCELADO').AsFloat := 1
    else
       Sc1.FieldByName('CANCELADO').AsFloat := 0;

    Sc1.FieldByName('DATACANCELAMENTO').AsDateTime     := Tb1.FieldByName('DATA_CANCELADO').AsDateTime;
    Sc1.FieldByName('OBSCANCELADO').AsString           := Tb1.FieldByName('OBS_CANCELADO').AsString;
    Sc1.FieldByName('USUARIO').AsString                := Tb1.FieldByName('USUARIO').AsString;
    Sc1.Post;

   if SC1.ChangeCount >= 500 then
      Sc1.ApplyUpdates(-1);

   Tb1.Next;
   Pb1.StepIt;
  end;

  if SC1.ChangeCount >= 0 then
     Sc1.ApplyUpdates(-1);

   Tb1.Close;
   Sc1.Close;
  end;
 finally
  FreeAndNil(cdsPedido);
  FreeAndNil(cdsEntidade);
 end;
end;

procedure TfrmMigra.PPProcessoParc;
var cdsPedido : TClientDataSet;
    iSQL : String;
begin
 iSQL  := 'SELECT '+
          '  PEDVENDID'+
          '  FROM'+
          '  PP_PEDVEND';

 try
  ExecDDL( -1, iSQL, cdsPedido );
  cdsPedido.AddIndex( 'idx1','PEDVENDID',[ixPrimary],'','',0);
  cdsPedido.IndexName := 'idx1';

 wwrichtxtLOG.Lines.Append('Log das Parcelas do Processo!');
 wwrichtxtLOG.Lines.Append('');

 with DMMigra do
  begin
   Tb1.TableName   := 'ITENSPARCELAS';
   Sc1.CommandText := 'SELECT * FROM PP_PROCESSOIMPPARC';
   Tb1.Open;
   Sc1.Open;
   Tb1.First;
   Pb1.Max := Tb1.RecordCount;
   while Not Tb1.Eof do
   begin
    if not cdsPedido.FindKey([(Tb1.FieldByName('NUMERO_PED').Value)] ) then
       begin
        wwrichtxtLOG.Lines.Append( 'Pedido: '+ Tb1.FieldByName('NUMERO_PED').AsString+ ' Não Encontrado na Tabela de Pedidos' );
        Tb1.Next;
        Pb1.StepIt;
        Continue;
       end;

    Sc1.Insert;
    Sc1.FieldByName('PEDVENDID').Value           := Tb1.FieldByName('NUMERO_PED').Value;
    Sc1.FieldByName('PARCELAID').Value           := Tb1.FieldByName('PARCELA_ATUAL').Value;
    Sc1.FieldByName('QTDPARCELAS').Value         := Tb1.FieldByName('NUMERO_PARC').Value;
    Sc1.FieldByName('DATAVENCIMENTO').AsDateTime := Tb1.FieldByName('DATA_VECTO').AsDateTime;
    Sc1.FieldByName('VLRPARCELA').AsFloat        := Tb1.FieldByName('VALOR_PARC').AsFloat;
    Sc1.FieldByName('LIBOR').AsFloat             := Tb1.FieldByName('LIBOR').AsFloat;
    Sc1.FieldByName('SPREED').AsFloat            := Tb1.FieldByName('SPREED').AsFloat;
    Sc1.FieldByName('VLRJUROS').AsFloat          := Tb1.FieldByName('VALOR_JUROS').AsFloat;
    Sc1.FieldByName('POSICAOJUROS').AsString     := Tb1.FieldByName('POSICAO_JUROS').AsString;
    Sc1.FieldByName('VLRTOTAL').AsFloat          := Tb1.FieldByName('VALOR_TOTAL').AsFloat;
    Sc1.FieldByName('JUROSMORA').AsFloat         := Tb1.FieldByName('JUROS_MORA').AsFloat;
    Sc1.FieldByName('DATAPAGAMENTO').AsDateTime  := Tb1.FieldByName('DATA_PAGTO').AsDateTime;
    Sc1.FieldByName('MOTIVOATRASO').AsString     := Tb1.FieldByName('MOTIVO_ATRASO').AsString;
    Sc1.FieldByName('PRAZOPARCELA').Value        := Tb1.FieldByName('PRAZO_PARCELA').Value;
    Sc1.FieldByName('PAGTOPARCIAL').AsFloat      := Tb1.FieldByName('PAGTO_PARCIAL').AsFloat;
    Sc1.FieldByName('VLRSALDO').AsFloat          := Tb1.FieldByName('SALDO').AsFloat;
    Sc1.FieldByName('USUARIO').AsString          := 'GSI';
    Sc1.Post;

   if SC1.ChangeCount >= 1000 then
      Sc1.ApplyUpdates(-1);

   Tb1.Next;
   Pb1.StepIt;
  end;

  if SC1.ChangeCount > 0 then
     Sc1.ApplyUpdates(-1);

   Tb1.Close;
   Sc1.Close;
  end;
 finally
  FreeAndNil(cdsPedido);
 end;
end;

procedure TfrmMigra.CondPagtoProp;
begin
 with DMMigra do
 begin
  CONECTA('IMP_CADASTRO');
  Tb1.TableName   := 'PAGTO_FOB';
  Sc1.CommandText := 'SELECT * FROM PP_CONDPAGTOPROP';
  Tb1.Open;
  Sc1.Open;
  Tb1.First;
  Pb1.Max := Tb1.RecordCount;
  while Not Tb1.Eof do
  begin
    Sc1.Insert;
    Sc1.FieldByName('CONDPAGTOPROPID').Value      := Tb1.FieldByName('CODIGO').Value;
    Sc1.FieldByName('TABFINANCEIRAID').Value     := Tb1.FieldByName('CODIGO_FINANCEIRA').Value;
    Sc1.FieldByName('DESCRICAO').AsString        := Tb1.FieldByName('DESCRICAO').AsString;
    Sc1.FieldByName('SPREAD').AsFloat            := Tb1.FieldByName('SPREAD').AsFloat;
    Sc1.FieldByName('JUROS').AsFloat             := Tb1.FieldByName('JUROS').AsFloat;
    Sc1.FieldByName('NUMPARCELA').Value          := Tb1.FieldByName('NUM_PARCELAS').Value;
    Sc1.FieldByName('NUMPARCJUROS').Value        := Tb1.FieldByName('NUM_PARC_JUROS').Value;
    Sc1.FieldByName('PORCPAGTOAVISTA').AsFloat   := Tb1.FieldByName('PORCENT_VISTA').AsFloat;

    if Tb1.FieldByName('LEASING').AsBoolean then
       Sc1.FieldByName('LEASING').Value    := 1
    else
       Sc1.FieldByName('LEASING').Value    := 0;

    Sc1.FieldByName('RESIDUALPORC').AsFloat       := Tb1.FieldByName('RESIDUAL_PORCENT').AsFloat;
    Sc1.FieldByName('RESIDUALNUM').AsFloat        := Tb1.FieldByName('RESIDUAL_NUMERO').AsFloat;
    Sc1.FieldByName('TIPOPAGTO').AsString         := Tb1.FieldByName('TIPO').AsString;
    Sc1.FieldByName('DESCRICAOPAGTO').AsString    := Tb1.FieldByName('DESCRICAO_COMPLETA').AsString;
    Sc1.FieldByName('COMISSAOFINANCEIRA').AsFloat := Tb1.FieldByName('COMISSAO_FINANC').AsFloat;
    Sc1.FieldByName('USUARIO').AsString           := 'GSI';
    Sc1.Post;
    Sc1.ApplyUpdates(-1);
    Tb1.Next;
    Pb1.StepIt;
  end;
  Tb1.Close;
  Sc1.Close;


  {*** PagtoDespAdm ***}
  CONECTA('IMP_CADASTRO');
  Tb1.TableName   := 'PAGTO_DESP';
  Sc1.CommandText := 'SELECT * FROM PP_CONDPAGTOPROP';
  Tb1.Open;
  Sc1.Open;
  Tb1.First;
  Pb1.Max := Tb1.RecordCount;
  while Not Tb1.Eof do
  begin
    Sc1.Insert;
    Sc1.FieldByName('CONDPAGTOPROPID').Value      := (100 + Tb1.FieldByName('CODIGO').Value);
    Sc1.FieldByName('DESCRICAOPAGTO').AsString    := Tb1.FieldByName('DESCRICAO').AsString;
    Sc1.FieldByName('NUMPARCELA').Value           := Tb1.FieldByName('NUM_PARCELAS').Value;

    if Tb1.FieldByName('DEDUZIR_COMISSAO').AsBoolean then
      Sc1.FieldByName('DEDUZIRCOMISSAO').Value := 1
    else
      Sc1.FieldByName('DEDUZIRCOMISSAO').Value := 0;

    Sc1.FieldByName('USUARIO').AsString          := 'GSI';
    Sc1.Post;
    Sc1.ApplyUpdates(-1);
    Tb1.Next;
    Pb1.StepIt;
  end;
  Tb1.Close;
  Sc1.Close;


  {*** PagtoSuplementar ***}
  CONECTA('IMP_CADASTRO');
  Tb1.TableName   := 'PAGTO_SUPLEMENTAR';
  Sc1.CommandText := 'SELECT * FROM PP_CONDPAGTOPROP';
  Tb1.Open;
  Sc1.Open;
  Tb1.First;
  Pb1.Max := Tb1.RecordCount;
  while Not Tb1.Eof do
  begin
    if ( Tb1.FieldByName('CODIGO').IsNull ) then
       begin
        Pb1.StepIt;
        Tb1.Next;
        Continue;
       end;

    Sc1.Insert;
    Sc1.FieldByName('CONDPAGTOPROPID').Value      := (300 + Tb1.FieldByName('CODIGO').Value);
    Sc1.FieldByName('TABFINANCEIRAID').Value     := Tb1.FieldByName('CODIGO_FINANCEIRA').Value;
    Sc1.FieldByName('DESCRICAOPAGTO').AsString        := Tb1.FieldByName('DESCRICAO').AsString;
    Sc1.FieldByName('SPREAD').AsFloat            := Tb1.FieldByName('SPREAD').AsFloat;
    Sc1.FieldByName('JUROS').AsFloat             := Tb1.FieldByName('JUROS').AsFloat;
    Sc1.FieldByName('NUMPARCELA').Value          := Tb1.FieldByName('NUM_PARCELAS').Value;
    Sc1.FieldByName('NUMPARCJUROS').Value        := Tb1.FieldByName('NUM_PARC_JUROS').Value;
    Sc1.FieldByName('PORCPAGTOAVISTA').AsFloat   := Tb1.FieldByName('PORCENT_VISTA').AsFloat;

    if Tb1.FieldByName('LEASING').AsBoolean then
       Sc1.FieldByName('LEASING').Value    := 1
    else
       Sc1.FieldByName('LEASING').Value    := 0;

    Sc1.FieldByName('RESIDUALPORC').AsFloat       := Tb1.FieldByName('RESIDUAL_PORCENT').AsFloat;
    Sc1.FieldByName('RESIDUALNUM').AsFloat        := Tb1.FieldByName('RESIDUAL_NUMERO').AsFloat;
    Sc1.FieldByName('TIPOPAGTO').AsString         := Tb1.FieldByName('TIPO').AsString;
    Sc1.FieldByName('DESCRICAOPAGTO').AsString    := Tb1.FieldByName('DESCRICAO_COMPLETA').AsString;
    Sc1.Post;
    Sc1.ApplyUpdates(-1);
    Tb1.Next;
    Pb1.StepIt;
  end;
  Tb1.Close;
  Sc1.Close;
 end;
end;

procedure TfrmMigra.Bonificacao;
begin
 with DMMigra do
 begin
  Conecta('IMP_CADASTRO');
  Tb1.TableName   := 'BONIFICACAO';
  Sc1.CommandText := 'SELECT * FROM PP_BONIFICACAO';
  Tb1.Open;
  Sc1.Open;
  Tb1.First;
  Pb1.Max := Tb1.RecordCount;
  while Not Tb1.Eof do
  begin
    Sc1.Insert;
    Sc1.FieldByName('BONIFICACAOID').Value     := Tb1.FieldByName('CODIGO').Value;
    Sc1.FieldByName('DESCRICAO').AsString      := Tb1.FieldByName('DESCRICAO').AsString;
    Sc1.FieldByName('USUARIO').AsString       := 'GSI';
    Sc1.Post;
    Sc1.ApplyUpdates(-1);
    Tb1.Next;
    Pb1.StepIt;
  end;
  Tb1.Close;
  Sc1.Close;
 end;
end;

procedure TfrmMigra.btnAttachCorpoClick(Sender: TObject);
begin
 if opdlgCorpoMSG.Execute then
    mktImpPrecoJapao.Text := opdlgCorpoMSG.FileName;
end;

procedure TfrmMigra.btnInsertTabPrecoClick(Sender: TObject);
begin
  DMMigra.Sc1.CommandText := 'SELECT * FROM TESTE2';
  DMMigra.Sc2.CommandText := 'SELECT * FROM IT_LISTAPRECO';

  DMMigra.Sc1.Open;
  DMMigra.Sc2.Open;

  DMMigra.SC2.AddIndex( 'idx1','PARTNUMBERID',[ixPrimary],'','',0);
  DMMigra.SC2.IndexName := 'idx1';

  DMMigra.Sc1.First;
  while not DMMigra.SC1.Eof do
  begin
   if DMMigra.SC2.FindKey([ DMMigra.SC1.FieldByName('PARTNUMBERID').AsString  ]) then
      DMMigra.SC2.Edit
   else
      begin
       DMMigra.SC2.Insert;
       DMMigra.SC2.FieldByName( 'PARTNUMBERID').AsString := DMMigra.SC1.FieldByName( 'PARTNUMBERID').AsString;
      end;

   DMMigra.SC2.FieldByName( 'PARTNO').AsString          := DMMigra.SC1.FieldByName( 'PARTNO').AsString;
   DMMigra.SC2.FieldByName( 'DESCRICAOINGLES').AsString := DMMigra.SC1.FieldByName( 'DESCRICAOINGLES').AsString;
   DMMigra.SC2.FieldByName( 'VLRFOB').AsFloat           := DMMigra.SC1.FieldByName( 'VLRFOB').AsFloat;
   DMMigra.SC2.FieldByName( 'VLRCONSERTO').asFloat      := DMMigra.SC1.FieldByName( 'VLRCONSERTO').asFloat;
   DMMigra.SC2.FieldByName( 'MODELOID').AsString        := DMMigra.SC1.FieldByName( 'MODELOID').AsString;
   DMMigra.SC2.Post;

   DMMigra.SC1.Next;
  end;

  DMMigra.Sc1.Close;
  DMMigra.Sc2.Close;
end;

function TfrmMigra.NewValue(CampoId, Tabela, ParamSQL : String ): Integer;
var iSQL : String;
    cds : TClientDataSet;
begin
 try
  cds    := nil;
  iSQL   := 'SELECT NVL( MAX(' + CampoId + '),0) from ' + Tabela;

  if ParamSQL <> '' then
     iSQL := iSQL +' '+ ParamSQL;

  Result := ExecDDL(-1,iSQL,cds );
  Result := cds.Fields[0].Value + 1;

 finally
  FreeAndNil( cds );
 end;
end;

procedure TfrmMigra.FormCreate(Sender: TObject);
begin
 {*** Criando Client de Log ***}
 cdsLog := TClientDataSet.Create(nil);
 cdsLog.FieldDefs.Add('MODELOID', ftString,70,True );
 cdsLog.CreateDataSet;
 cdsLog.AddIndex('idx1','MODELOID',[ixPrimary],'','',0);
 cdsLog.IndexName := 'idx1';
end;

procedure TfrmMigra.EntidadeParaCliente;
begin
 {  Migração da tabela de entidade ficará normal conforme conversão com
    Nelson no último dia do Flávio, depois será feito o acerto }

 try

   with DMMigra do
   begin
     Conecta('IMP_CADASTRO');
     Tb1.TableName   := 'CLIENT';
     Sc1.CommandText := 'SELECT * FROM EF_ENTIDADE WHERE ENTIDADEID >= 1 AND ENTIDADEID <= 10000';

     tbUnidadeFED.Open;
     Tb1.Open;
     Sc1.Open;

     SC1.First;
     Pb1.Max := SC1.RecordCount;
     while Not SC1.Eof do
     begin
      if Tb1.FindKey([Sc1.FieldByName('ENTIDADEID').Value]) then
         begin
          SC1.Next;
          Continue;
         end;


      Tb1.Insert;
      Tb1.FieldByName('CODCLI').Value := Sc1.FieldByName('ENTIDADEID').Value;
      Tb1.FieldByName('CPFCLI').Value := Sc1.FieldByName('CPFCNPJ').Value;
      Tb1.FieldByName('CGCCLI').Value := Sc1.FieldByName('CPFCNPJ').Value;

      Tb1.FieldByName('INSEST').Value := Sc1.FieldByName('INSCRESTADUAL').Value;
      Tb1.FieldByName('INSMUN').Value := Sc1.FieldByName('INSCRMUNICIPAL').Value;
      Tb1.FieldByName('NOMCLI').Value := Sc1.FieldByName('NOME').Value;
      Tb1.FieldByName('NOMFAN').Value := Sc1.FieldByName('NOMEFANTASIA').Value;
      Tb1.FieldByName('NUMPAS').Value := Sc1.FieldByName('PASTA').Value;
      Tb1.FieldByName('CEPCLI').AsString := SC1.FieldByName('CEPID').Value;
      Tb1.FieldByName('ENDERE').Value    := Sc1.FieldByName('ENDERECO').Value;
      Tb1.FieldByName('CIDADE').Value    := Sc1.FieldByName('CIDADE').Value;
      Tb1.FieldByName('ESTADO').Value    := Sc1.FieldByName('SIGLAUFID').Value;
      Tb1.FieldByName('PAICLI').Value    := Sc1.FieldByName('PAIS').Value;
      Tb1.FieldByName('CEPCOB').AsString := Sc1.FieldByName('CEPCOBID').Value;

      Tb1.FieldByName('ENDCOB').Value    := Sc1.FieldByName('ENDERECOCOB').Value;
      Tb1.FieldByName('CIDCOB').Value    := Sc1.FieldByName('CIDADECOB').Value;
      Tb1.FieldByName('ESTCOB').Value    := Sc1.FieldByName('SIGLAUFCOBID').Value;
      Tb1.FieldByName('PAICLI').Value    := Sc1.FieldByName('PAISCOB').Value;
      Tb1.FieldByName('CONPRI').Value    := Sc1.FieldByName('CONTATO').Value;
      Tb1.FieldByName('CONCOB').Value    := Sc1.FieldByName('CONTATOCOB').Value;
      Tb1.FieldByName('TELEFO').Value    := Sc1.FieldByName('TELEFONE').Value;
      Tb1.FieldByName('FACSIM').Value    := Sc1.FieldByName('FAX').Value;
      Tb1.FieldByName('EMAIL').Value     := Sc1.FieldByName('EMAIL').Value;
      Tb1.FieldByName('HOME_PAGE').Value := Sc1.FieldByName('PAGINA').Value;
      Tb1.FieldByName('OBSERVACAO').Value:= Sc1.FieldByName('OBSERVACAO').Value;
      Tb1.FieldByName('CEPCOB').Value    := Sc1.FieldByName('CEPCOBID').Value;

      Tb1.FieldByName('ENDINS').Value    := Sc1.FieldByName('ENDERECOINST').Value;
      Tb1.FieldByName('CIDINS').Value    := Sc1.FieldByName('CIDADEINST').Value;
      Tb1.FieldByName('ESTINS').Value    := Sc1.FieldByName('SIGLAUFINSTID').Value;
      Tb1.FieldByName('PAICLI').Value    := Sc1.FieldByName('PAISINST').Value;
      Tb1.FieldByName('CONINS').Value    := Sc1.FieldByName('CONTATOINST').Value;
      Tb1.FieldByName('IDENTI').Value    := Sc1.FieldByName('RG').Value;
      Tb1.FieldByName('ORGIND').Value    := Sc1.FieldByName('RGORGAOEMISSOR').Value;
      Tb1.FieldByName('CRMCLI').Value    := Sc1.FieldByName('CRM').Value;
      Tb1.FieldByName('ORGCRM').Value    := Sc1.FieldByName('CRMORGAOEMISSOR').Value;
      Tb1.FieldByName('CD_NAT_JURIDICA').Value := Sc1.FieldByName('NATUREZAJURIDICAID').Value;
      Tb1.Post;

      SC1.Next;
      Pb1.StepIt;
      Pb1.Refresh;
     end;

     Tb1.Close;
     Sc1.Close;
     tbUnidadeFED.Close;
    end;

 finally

 end;
end;


procedure TfrmMigra.ProdutoParaPDX;
var i : Integer;
begin
 try
  with DMMigra do
  begin
   Tb1.TableName   := 'PRODUTO';

   for i := 1 to 12 do
   begin
     if i <> 1 then
        if i <> 12 then
            Continue;

     SC1.Close;
     Sc1.CommandText := 'SELECT * FROM EF_PRODUTO WHERE EMPRESAID = ' + IntToStr( i ) +
                         'ORDER BY EMPRESAID, PRODUTOID';
     Sc1.Open;



     dbMigra.Close;
     dbMigra.AliasName := 'EST_FAT_EMPRESA_' + FormatFloat( '000', i );

     Tb1.Open;
     SC1.First;
     Pb1.Max := Tb1.RecordCount;
     while Not SC1.Eof do
     begin
       if Tb1.FindKey([Sc1.FieldByName('PRODUTOID').Value]) then
          begin
           SC1.Next;
           Continue;
          end;

       Tb1.Insert;
       Tb1.FieldByName('CODIGO_PRODUTO').Value := Sc1.FieldByName('PRODUTOID').Value;
       Tb1.FieldByName('ORIGEM').Value         := Sc1.FieldByName('ORIGEM').Value;

       if Not Sc1.FieldByName('NOVOUSADO').IsNull then
          Tb1.FieldByName('NOVO_USADO').Value := Sc1.FieldByName('NOVOUSADO').Value;

       Tb1.FieldByName('GRUPO').Value := Sc1.FieldByName('GRUPOID').Value;
       Tb1.FieldByName('SUB_GRUPO').Value := Sc1.FieldByName('SUBGRUPOID').Value;
       Tb1.FieldByName('CODIGO_JAPAO').Value := Sc1.FieldByName('PARTNUMBERID').Value;
       Tb1.FieldByName('DESCRICAO_PORTUGUES').Value := Sc1.FieldByName('DESCRICAOPORTUGUES').Value;
       Tb1.FieldByName('DESCRICAO_INGLES').Value := Sc1.FieldByName('DESCRICAOINGLES').Value;

       Tb1.FieldByName('LOCALIZACAO').Value := Sc1.FieldByName('LOCALIZACAO').Value;

       Tb1.FieldByName('PESO').AsBCD        := Sc1.FieldByName('PESO').asBCD;
       Tb1.FieldByName('APLICACAO').Value   := Sc1.FieldByName('APLICACAO').Value;
       Tb1.FieldByName('OBS').Value := Sc1.FieldByName('OBSERVACAO').Value;
       Tb1.FieldByName('NCM').Value := Sc1.FieldByName('NCMID').Value;
       Tb1.FieldByName('DESCRICAO_NCM').Value := Sc1.FieldByName('DESCRICAONCM').Value;

       Tb1.Post;

       SC1.Next;
       Pb1.StepIt;
     end;

     Tb1.Close;
   end;
   Sc1.Close;
  end;
 finally
 end;
end;

procedure TfrmMigra.NaturezaOpParaPDX;
begin
 try
  with DMMigra do
  begin
    Conecta('EST_FAT_CADASTRO');
    Tb1.TableName   := 'NAT_OPERACAO';
    Sc1.CommandText := 'SELECT * FROM EF_NATUREZAOP';
    SC1.Open;
    Tb1.Open;

    SC1.First;
    Pb1.Max := Tb1.RecordCount * 2;
    while Not SC1.Eof do
    begin
      if Tb1.FindKey([Sc1.FieldByName('NATUREZAOPID').Value]) then
         begin
          SC1.Next;
          Continue;
         end;

      Tb1.Insert;
      Tb1.FieldByName('CODIGO').Value := Sc1.FieldByName('NATUREZAOPID').Value;
      Tb1.FieldByName('CODIGO_FISCAL').Value := Sc1.FieldByName('CFOP').Value;
      Tb1.FieldByName('TIPO_MOVIMENTO').Value := Sc1.FieldByName('TIPOMOVIMENTO').Value;
      Tb1.FieldByName('DESCRICAO').Value := Sc1.FieldByName('DESCRICAOOPERACAOUSUARIO').Value;
      Tb1.FieldByName('NATUREZA_OPERACAO').Value := Sc1.FieldByName('DESCRICAOOPERACAONOTA').Value;
      Tb1.FieldByName('DESCRICAO_FISCAL').Value := Sc1.FieldByName('DESCRICAOCOMPLETA').Value;
      Tb1.FieldByName('EST_CONTROL3').Value := Sc1.FieldByName('MOVIMENTOESTOQUE').Value;
      Tb1.FieldByName('CONTRA_PARTIDA').Value := Sc1.FieldByName('NATUREZAOPRETORNOID').Value;


      if Not Sc1.FieldByName('VENDADEFINITIVA').IsNull then
      begin
        if Sc1.FieldByName('VENDADEFINITIVA').Value = 1 then
           Tb1.FieldByName('VENDA').Value := True
        else
           Tb1.FieldByName('VENDA').Value := False;
      end
      else Tb1.FieldByName('VENDA').Value := False;


      if Not Sc1.FieldByName('VENDAFATANTECIPADO').IsNull then
      begin
        if Sc1.FieldByName('VENDAFATANTECIPADO').Value = 1 then
           Tb1.FieldByName('VENDAFATANTECIPADO').Value := True
        else
           Tb1.FieldByName('VENDAFATANTECIPADO').Value := False;
      end
      else Tb1.FieldByName('VENDAFATANTECIPADO').Value := False;


      Tb1.FieldByName('SIT_TRIB_ESTADUAL').Value := Sc1.FieldByName('SITTRIBESTADUAL').Value;
      Tb1.FieldByName('COD_PADRAO_TEBAS').Value  := Sc1.FieldByName('NUMPADRAO').Value;

      Tb1.Post;
      SC1.Next;

      Pb1.StepIt;
    end;

    Tb1.Close;
    Sc1.Close;
    Sc2.Close;
  end;
 finally
 end;
end;

procedure TfrmMigra.NfsParaPDX;
var i: Integer;
begin

 try
  // Corrigir as constraints com problemas desta tabela
  with DMMigra do
  begin
    tbMaster.TableName  := 'NFS';

    for i := 1 to 12 do
    begin
     if i <> 1 then
        if i <> 12 then
            Continue;

      SC1.Close;
      Sc1.CommandText := 'SELECT * FROM EF_NFS WHERE DATAEMISSAOID >= ''01/01/2005'' AND EMPRESAID =  ' +
                          IntToStr( i ) + ' ORDER BY EMPRESAID, NFSID, DATAEMISSAOID';
      Sc1.Open;

      dbMigra.Connected := False;
      dbMigra.AliasName := 'EST_FAT_EMPRESA_' + FormatFloat( '000', i );
      dbMigra.Connected := True;
      tbMaster.Open;

      SC1.First;
      Pb1.Position := 0;
      Pb1.Max := SC1.RecordCount;
      while Not SC1.Eof do
      begin
       if tbMaster.FindKey([Sc1.FieldByName('NFSID').Value, Sc1.FieldByName('DATAEMISSAOID').Value ]) then
          begin
           SC1.Next;
           Continue;
          end;

       tbMaster.Insert;
       tbMaster.FieldByName('NUMERO_NOTA').Value := Sc1.FieldByName('NFSID').Value;
       tbMaster.FieldByName('DATA_EMISSAO').Value := Sc1.FieldByName('DATAEMISSAOID').Value;
       tbMaster.FieldByName('CANCELADA').Value    := ConvNumericoBooleano( Sc1.FieldByName('CANCELADA') );
       tbMaster.FieldByName('EXPORTADO').Value := ConvNumericoBooleano(  Sc1.FieldByName('EXPORTADO') );
       tbMaster.FieldByName('NUMERO_OS').Value := Sc1.FieldByName('OSID').Value;
       tbMaster.FieldByName('NUMERO_PEDIDO').Value := Sc1.FieldByName('PDSID').Value;
       tbMaster.FieldByName('DATA_PEDIDO').Value := Sc1.FieldByName('DATAPEDIDO').Value;
       tbMaster.FieldByName('REQUISITANTE').Value := Sc1.FieldByName('REQUISITANTE').Value;
       tbMaster.FieldByName('LIBERACAO').Value := ConvNumericoBooleano( Sc1.FieldByName('LIBCHEFIA') );
       tbMaster.FieldByName('NOME_1').Value := Sc1.FieldByName('LIBCHEFIANOME').Value;
       tbMaster.FieldByName('DATA_1').Value := Sc1.FieldByName('LIBCHEFIADATA').Value;
       tbMaster.FieldByName('LIBERA_FIN').Value := ConvNumericoBooleano( Sc1.FieldByName('LIBFINANCEIRO') );
       tbMaster.FieldByName('NOME_3').Value := Sc1.FieldByName('LIBFINANCEIRONOME').Value;
       tbMaster.FieldByName('DATA_3').Value := Sc1.FieldByName('LIBFINANCEIRODATA').Value;
       tbMaster.FieldByName('LIBERA_CTB').Value := ConvNumericoBooleano( Sc1.FieldByName('LIBCONTABIL') );
       tbMaster.FieldByName('NOME_2').Value := Sc1.FieldByName('LIBCONTABILNOME').Value;
       tbMaster.FieldByName('DATA_2').Value := Sc1.FieldByName('LIBCONTABILDATA').Value;
       tbMaster.FieldByName('NUMERO_NOTA_ENTRADA').Value := Sc1.FieldByName('NFEID').Value;
       tbMaster.FieldByName('DATA_NOTA_ENTRADA').Value := Sc1.FieldByName('DATAEMISSAONFEID').Value;
       tbMaster.FieldByName('TIPO_NOTA_ENTRADA').Value := Sc1.FieldByName('TIPONOTAENTRADA').Value;
       tbMaster.FieldByName('TIPO_NOTA').Value := Sc1.FieldByName('TIPONOTA').Value;

       if      Sc1.FieldByName('CATEGORIAID').Value = 1 then
               tbMaster.FieldByName('CODIGO_DESTIN').Value := Sc1.FieldByName('ENTIDADEID').Value
       else if Sc1.FieldByName('CATEGORIAID').Value = 2 then
               tbMaster.FieldByName('CODIGO_DESTIN').Value := ( Sc1.FieldByName('ENTIDADEID').Value - 20000 )
       else if Sc1.FieldByName('CATEGORIAID').Value = 5 then
               tbMaster.FieldByName('CODIGO_DESTIN').Value := ( Sc1.FieldByName('ENTIDADEID').Value - 50000 );


       tbMaster.FieldByName('CEP_NOTA').AsString := Sc1.FieldByName('CEPID').Value;
       tbMaster.FieldByName('NOME_NOTA').Value := Sc1.FieldByName('NOME').Value;
       tbMaster.FieldByName('ENDERECO_NOTA').Value := Sc1.FieldByName('ENDERECO').Value;
       tbMaster.FieldByName('CIDADE_NOTA').Value := Sc1.FieldByName('CIDADE').Value;
       tbMaster.FieldByName('ESTADO_NOTA').Value := Sc1.FieldByName('SIGLAUFID').Value;
       tbMaster.FieldByName('PAIS_NOTA').Value := Sc1.FieldByName('PAIS').Value;
       tbMaster.FieldByName('END_ENTREGA').Value := Sc1.FieldByName('ENDERECOENTREGA').Value;
       tbMaster.FieldByName('END_COBRANCA').Value := Sc1.FieldByName('ENDERECOCOBRANCA').Value;
       tbMaster.FieldByName('ICMS_NOTA').Value := ConvNumericoBooleano( Sc1.FieldByName('CONTRIBUINTEICMS') );
       tbMaster.FieldByName('CODIGO_OPERACAO').Value := Sc1.FieldByName('NATUREZAOPID').Value;
       tbMaster.FieldByName('COND_PAGTO').Value := Sc1.FieldByName('CONDPAGTOID').Value;
       tbMaster.FieldByName('DESC_PAGTO').Value := Sc1.FieldByName('DESCRICAOCONDPAGTO').Value;
       tbMaster.FieldByName('CODIGO_OBS').Value := Sc1.FieldByName('OBSERVACAOID').Value;
       tbMaster.FieldByName('OBS').Value           := Sc1.FieldByName('DESCRICAOOBSERVACAO').Value;
       tbMaster.FieldByName('CODIGO_TRANSP').Value := ( Sc1.FieldByName('TRANSPORTADORID').Value - 40000 );

       tbMaster.FieldByName('PLACA_VEICULO').Value :=             Sc1.FieldByName('PLACAVEICULO').Value;
       tbMaster.FieldByName('RESPONSAVEL_FRETE').Value:=              Sc1.FieldByName('MODALIDADEFRETE').Value;
       tbMaster.FieldByName('VALOR_FRETE').Value:=            Sc1.FieldByName('VLRFRETE').Value;
       tbMaster.FieldByName('VALOR_SEGURO').Value:=              Sc1.FieldByName('VLRSEGURO').Value;
       tbMaster.FieldByName('DESPESA_ACESS').Value:=              Sc1.FieldByName('VLRDESPESAACESSORIA').Value;
       tbMaster.FieldByName('EMB_QUANTIDADE').Value:=              Sc1.FieldByName('EMBQTDVOLUMES').Value;
       tbMaster.FieldByName('EMB_NUMERO').Value:=              Sc1.FieldByName('EMBNUMERO').Value;
       tbMaster.FieldByName('EMB_MARCA').Value:=              Sc1.FieldByName('EMBMARCA').Value;
       tbMaster.FieldByName('EMB_ESPECIE').Value:=             Sc1.FieldByName('EMBESPECIE').Value;
       tbMaster.FieldByName('EMB_PESO_BRUTO').Value:=              Sc1.FieldByName('EMBPESOBRUTO').Value;
       tbMaster.FieldByName('EMB_PESO_LIQUIDO').Value:=              Sc1.FieldByName('EMBPESOLIQUIDO').Value;
       tbMaster.FieldByName('VALOR_TOT_SERV').Value:=              Sc1.FieldByName('VLRTOTALSERVICO').Value;
       tbMaster.FieldByName('VALOR_ISS').Value:=              Sc1.FieldByName('VLRTOTALISS').Value;
       tbMaster.FieldByName('TOTAL_COFINS').Value:=              Sc1.FieldByName('VLRTOTALCOFINS').Value;
       tbMaster.FieldByName('TOTAL_PIS').Value:=              Sc1.FieldByName('VLRTOTALPIS').Value;
       tbMaster.FieldByName('TOTAL_BASE_ICMS').Value:=              Sc1.FieldByName('VLRTOTALBASEICMS').Value;
       tbMaster.FieldByName('TOTAL_ICMS').Value:=              Sc1.FieldByName('VLRTOTALICMS').Value;
       tbMaster.FieldByName('TOTAL_ISENTAS_ICMS').Value:=              Sc1.FieldByName('VLRTOTALISENTASICMS').Value;
       tbMaster.FieldByName('TOTAL_OUTRAS_ICMS').Value:=              Sc1.FieldByName('VLRTOTALOUTRASICMS').Value;
       tbMaster.FieldByName('TOTAL_BASE_IPI').Value:=              Sc1.FieldByName('VLRTOTALBASEIPI').Value;
       tbMaster.FieldByName('TOTAL_IPI').Value:=              Sc1.FieldByName('VLRTOTALIPI').Value;
       tbMaster.FieldByName('TOTAL_ISENTAS_IPI').Value:=              Sc1.FieldByName('VLRTOTALISENTASIPI').Value;
       tbMaster.FieldByName('TOTAL_OUTRAS_IPI').Value:=              Sc1.FieldByName('VLRTOTALOUTRASIPI').Value;
       tbMaster.FieldByName('TOTAL_PRODUTO').Value:=              Sc1.FieldByName('VLRTOTALPRODUTO').Value;
       tbMaster.FieldByName('TOTAL_NOTA').Value:=              Sc1.FieldByName('VLRTOTALNOTA').Value;
       tbMaster.FieldByName('EMISSOR').Value:=             Sc1.FieldByName('USUARIO').Value;
       tbMaster.Post;

       SC1.Next;
       Pb1.StepIt;
      end;

      tbMaster.Close;
    end;
    Sc1.Close;
  end;

 finally
 end;
end;

procedure TfrmMigra.NfsParcelaParaPDX;
var i : Integer;
begin
  with DMMigra do
  begin
    Tb1.TableName   := 'PARCELA_NFS';

    for i := 1 to 12 do
    begin
     if i <> 1 then
        if i <> 12 then
            Continue;

      Sc1.Close;
      Sc1.CommandText := 'SELECT * FROM EF_NFSPARCELA WHERE DATAEMISSAOID >= ''01/01/2005'' AND ' +
                         'EMPRESAID = ' + IntToStr( i ) + ' ORDER BY EMPRESAID, NFSID, DATAEMISSAOID, PARCELAID';
      Sc1.Open;

      dbMigra.Connected := False;
      dbMigra.AliasName := 'EST_FAT_EMPRESA_' + FormatFloat( '000', i );
      dbMigra.Connected := True;

      Tb1.Open;
      SC1.First;
      Pb1.Max := Tb1.RecordCount;
      while Not SC1.Eof do
      begin
       if Tb1.FindKey([Sc1.FieldByName('NFSID').Value,
                           Sc1.FieldByName('DATAEMISSAOID').Value,
                           Sc1.FieldByName('PARCELAID').AsInteger]) then
          begin
           SC1.Next;
           Continue;
          end;

       Tb1.Insert;
       Tb1.FieldByName('NUMERO_NOTA').Value := Sc1.FieldByName('NFSID').Value;
       Tb1.FieldByName('DATA_EMISSAO').Value := Sc1.FieldByName('DATAEMISSAOID').Value;
       Tb1.FieldByName('NUMERO_PARCELA').Value := Sc1.FieldByName('PARCELAID').AsInteger;
       Tb1.FieldByName('DATA_VECTO').Value := Sc1.FieldByName('DATAVENCIMENTO').Value;
       Tb1.FieldByName('VALOR_PARCELA').Value := Sc1.FieldByName('VLRPARCELA').Value;
       Tb1.FieldByName('NUMERO_DUPLICATA').Value := Sc1.FieldByName('DUPLICATAID').Value;
       Tb1.FieldByName('EXPORTADO').Value := ConvNumericoBooleano(Sc1.FieldByName('EXPORTADO') );
       Tb1.FieldByName('VLRBASECOMISSAO').Value := Sc1.FieldByName('VLRBASECOMISSAO').Value;
       Tb1.FieldByName('PAGTOVENDEDOR').Value := ConvNumericoBooleano( Sc1.FieldByName('PAGTOVENDEDOR') );
       Tb1.Post;

       SC1.Next;
       Pb1.StepIt;
      end;

      Tb1.Close;
    end;
    Sc1.Close;
  end;

end;


procedure TfrmMigra.BitBtn9Click(Sender: TObject);
begin
 EntidadeParaCliente
end;

procedure TfrmMigra.BitBtn10Click(Sender: TObject);
begin
 ProdutoParaPDX;
end;

procedure TfrmMigra.BitBtn11Click(Sender: TObject);
begin
 NaturezaOpParaPDX;
end;

procedure TfrmMigra.BitBtn12Click(Sender: TObject);
begin
 NfsParaPDX
end;

procedure TfrmMigra.BitBtn13Click(Sender: TObject);
begin
 NfsParcelaParaPDX
end;

procedure TfrmMigra.PedidoVendaComp;
var cdsPedido,cdsPedidoItem : TClientDataSet;
    iSQL      : String;
begin
 iSQL  := 'SELECT '+
          '  PEDVENDID'+
          '  FROM'+
          '  PP_PEDVEND';

 try
  ExecDDL( -1, iSQL, cdsPedido );
  cdsPedido.AddIndex( 'idx1','PEDVENDID',[ixPrimary],'','',0);
  cdsPedido.IndexName := 'idx1';

 iSQL  := 'SELECT '+
          '  PEDVENDID,'+
          '  ITEMID'+
          '  FROM'+
          '  PP_PEDVENDITEM';

 ExecDDL( -1, iSQL, cdsPedidoItem );
 cdsPedidoItem.AddIndex( 'idx1','PEDVENDID;ITEMID',[ixPrimary],'','',0);
 cdsPedidoItem.IndexName := 'idx1';

  wwrichtxtLOG.Lines.Append( ' Pedido de Venda Componente ');
  wwrichtxtLOG.Lines.Append('');

  with DMMigra do
  begin
   Tb1.TableName   := 'ITENSCOMP';
   Sc1.CommandText := 'SELECT * FROM PP_PEDVENDCOMP';
   Tb1.Open;
   Sc1.Open;
   Tb1.First;
   Pb1.Max := Tb1.RecordCount;
   while Not Tb1.Eof do
   begin
    if not cdsPedido.FindKey([(Tb1.FieldByName('NUMERO_PED').Value)] ) then
       begin
        wwrichtxtLOG.Lines.Append( 'Pedido: '+ Tb1.FieldByName('NUMERO_PED').AsString+ ' Não Encontrado na Tabela de Pedidos' );
        Tb1.Next;
        Pb1.StepIt;
        Continue;
       end;

    if not cdsPedidoItem.FindKey([ Tb1.FieldByName('NUMERO_PED').Value,Tb1.FieldByName('ITEM_AP').Value ]) then
       begin
        wwrichtxtLOG.Lines.Append( Tb1.FieldByName('NUMERO_PED').AsString+' '+ Tb1.FieldByName('ITEM_AP').AsString );
        Tb1.Next;
        Pb1.StepIt;
        Continue;
       end;

    Sc1.Insert;
    Sc1.FieldByName('PEDVENDID').Value            := Tb1.FieldByName('NUMERO_PED').Value;
    if not Tb1.FieldByName('ITEM_AP').IsNull then
       Sc1.FieldByName('ITEMID').Value     := Tb1.FieldByName('ITEM_AP').Value
    else
       Sc1.FieldByName('ITEMID').Value     := NewValue('ITEMID','PP_PEDVENDCOMP',' WHERE PP_PEDVENDCOMP.PEDVENDID = '+ QuotedStr(Tb1.FieldByName('NUMERO_PED').Value)  );

    if not Tb1.FieldByName('ITEM').IsNull then
       Sc1.FieldByName('ITEMCOMPID').Value := Tb1.FieldByName('ITEM').Value
    else
       Sc1.FieldByName('ITEMCOMPID').Value := NewValue('ITEMCOMPID','PP_PEDVENDCOMP',' WHERE PP_PEDVENDCOMP.PEDVENDID = '+ QuotedStr(Tb1.FieldByName('NUMERO_PED').Value)  );

    Sc1.FieldByName('SERIEID').AsString           := Tb1.FieldByName('SERIE_COMP').AsString;
    Sc1.FieldByName('MODELOID').AsString          := Tb1.FieldByName('MODELO_COMP').AsString;
    Sc1.FieldByName('QUANTIDADE').Value           := Tb1.FieldByName('QTD').Value;
    Sc1.FieldByName('VLRUNITARIOFOB').AsFloat     := Tb1.FieldByName('VALOR_FOB_TABELA').AsFloat;
    Sc1.FieldByName('VLRTOTALFOB').AsFloat        := 0;
    Sc1.FieldByName('VLRUNITARIOREVENDA').AsFloat := Tb1.FieldByName('VALOR_FOB_VENDA').AsFloat;
    Sc1.FieldByName('VLRTOTALREVENDA').AsFloat    := 0;
    Sc1.FieldByName('USUARIO').AsString           := 'GSI';

    if Sc1.ChangeCount > 2000 then
       Sc1.ApplyUpdates(-1);

    Tb1.Next;
    Pb1.StepIt;
   end;

   if Sc1.ChangeCount > 0 then
      Sc1.ApplyUpdates(-1);

   Tb1.Close;
   Sc1.Close;
  end;
 finally
  FreeAndNil(cdsPedido);
 end;
end;

procedure TfrmMigra.BitBtn14Click(Sender: TObject);
begin
 try
  with DMMigra do begin
    Conecta('TECIMP_DI');
    Tb1.TableName     := 'MERCADORIAS';
    Sc1.CommandText   := 'SELECT * FROM IT_DECLARACAO';

    Tb1.Open;
    Sc1.Open;
    Sc1.AddIndex( 'idx1','DECLARACAOID',[ixPrimary],'','',0);
    Sc1.IndexName := 'idx1';

    Tb1.First;
    Pb1.Max := Tb1.RecordCount;
    while Not Tb1.Eof do
    begin
      if not DMMigra.SC1.FindKey([Tb1.FieldByName('DIPROVISORIO').Value]) then
         begin
          Tb1.Next;
          Pb1.StepIt;
          Continue;
         end;

      if DMMigra.SC1.FieldByName('FORNECEDORID').AsInteger > 0 then
         begin
          Tb1.Next;
          Pb1.StepIt;
          Continue;
         end;

      if DMMigra.Tb1.FieldByName('CODIGO_FORNECEDOR').AsInteger < 2 then
         begin
          Tb1.Next;
          Pb1.StepIt;
          Continue;
         end;

      DMMigra.SC1.Edit;
      DMMigra.SC1.FieldByName('FORNECEDORID').AsInteger := 20000 + DMMigra.Tb1.FieldByName('CODIGO_FORNECEDOR').Value;
      DMMigra.Sc1.Post;

      if DMMigra.Sc1.ChangeCount >= 100 then
         DMMigra.Sc1.ApplyUpdates(-1);

      Tb1.Next;
      Pb1.StepIt;
    end;

    if Sc1.ChangeCount > 0 then
       Sc1.ApplyUpdates(-1);

    Tb1.Close;
    Sc1.Close;
  end;
 finally

 end;
end;

procedure TfrmMigra.PercentualVenda;
begin
 try
  with DMMigra do
  begin
   Tb1.TableName     := 'PERCCOMREPR';
   Sc1.CommandText   := 'SELECT * FROM PP_PERCENTUAL';

   Tb1.Open;
   Sc1.Open;
   Sc1.AddIndex( 'idx1','GRUPOID;ORIGEMVENDAID;TIPOVENDAID',[ixPrimary],'','',0);
   Sc1.IndexName := 'idx1';

   Tb1.First;
   Pb1.Max := Tb1.RecordCount;
   while Not Tb1.Eof do
   begin
    SC1.Insert;
    SC1.FieldByName('GRUPOID').AsString := Tb1.FieldByName('GRUPO').AsString;

    if Tb1.FieldByName('ORIGEM').AsString = 'I' then
       SC1.FieldByName('ORIGEMVENDAID').AsInteger := 1
    else
       SC1.FieldByName('ORIGEMVENDAID').AsInteger := 2;

    if Tb1.FieldByName('TIPO_VENDA').AsString = 'C' then
       SC1.FieldByName('TIPOVENDAID').AsInteger := 1
    else
       SC1.FieldByName('TIPOVENDAID').AsInteger := 2;

    SC1.FieldByName('VLRPERCENTUAL').AsCurrency := Tb1.FieldByName('PERCENTUAL').AsCurrency;
    SC1.FieldByName('VLRIRRF').AsString         := Tb1.FieldByName('IRRF').AsString;
    SC1.Post;
    SC1.ApplyUpdates(-1);
    Pb1.StepIt;
    Tb1.Next;
   end;
   SC1.Close;
   Tb1.Close;
  end;
 except on
  E : Exception do
  raise Exception.Create(E.Message);
 end;
end;

procedure TfrmMigra.KdxTransf;
var i : Integer;
begin
 try
  with DMMigra do
  begin
   SC2.CommandText   := 'SELECT EMPRESAID,'+
                        '       KARDEXID,'+
                        '       DATAOCORRENCIA,'+
                        '       NUMDOCUMENTO,'+
                        '       TIPODOCUMENTO,'+
                        '       TIPOESTOQUE,'+
                        '       OSID,'+
                        '       DIID,'+
                        '       NATUREZAOPID,'+
                        '       TIPOOPERACAO,'+
                        '       PRODUTOID,'+
                        '       NVL(QUANTIDADE,0)QUANTIDADE  ,'+
                        '       NVL(VLRCUSTOUNITARIO,0)VLRCUSTOUNITARIO,'+
                        '       NVL(VLRCUSTOTOTAL,0)VLRCUSTOTOTAL,'+
                        '       NVL(QUANTIDADESALDO,0)QUANTIDADESALDO,'+
                        '       NVL(VLRCUSTOMEDIO,0)VLRCUSTOMEDIO,'+
                        '       NVL(VLRCUSTOMEDIOTOTAL,0)VLRCUSTOMEDIOTOTAL,'+
                        '       NVL(VLRCUSTOMEDIOANTERIOR,0)VLRCUSTOMEDIOANTERIOR,'+
                        '       NVL(ESTOQUENOVO,0)ESTOQUENOVO,'+
                        '       NVL(ESTOQUEREVISADO,0)ESTOQUEREVISADO,'+
                        '       NVL(ESTOQUEFISICO,0)ESTOQUEFISICO,'+
                        '       NVL(ESTOQUEPEDENTRADA,0)ESTOQUEPEDENTRADA,'+
                        '       NVL(ESTOQUEPEDSAIDA,0)ESTOQUEPEDSAIDA,'+
                        '       NVL(ESTOQUEEMTERCEIRO,0)ESTOQUEEMTERCEIRO,'+
                        '       NVL(ESTOQUEDETERCEIRO,0)ESTOQUEDETERCEIRO,'+
                        '       NVL(ESTOQUEMINIMO,0)ESTOQUEMINIMO,'+
                        '       NVL(ESTOQUEEMPENHO,0)ESTOQUEEMPENHO,'+
                        '       NVL(ESTOQUEVALE,0)ESTOQUEVALE,'+
                        '       NVL(ESTOQUEESTORNO,0)ESTOQUEESTORNO,'+
                        '       NVL(ESTOQUEQUARENTENA,0)ESTOQUEQUARENTENA,'+
                        '       NVL(ESTOQUETOTAL,0)ESTOQUETOTAL,'+
                        '       USUARIO'+
                        '  FROM EF_KDXTRANSF'+
                        ' ORDER BY EF_KDXTRANSF.EMPRESAID,'+
                        '          EF_KDXTRANSF.PRODUTOID,'+
                        '          EF_KDXTRANSF.DATAOCORRENCIA,'+
                        '          EF_KDXTRANSF.KARDEXID';

   Sc1.CommandText   := 'SELECT * FROM EF_KDXTRANSF2';
   Sc2.Open;
   Sc1.Open;

   Sc2.AddIndex( 'idx1','EMPRESAID;PRODUTOID;DATAOCORRENCIA;KARDEXID',[ixPrimary],'','',0);
   Sc2.IndexName := 'idx1';
   SC2.IndexFieldNames := 'EMPRESAID;PRODUTOID;DATAOCORRENCIA;KARDEXID';

   Sc1.AddIndex( 'idx1','EMPRESAID;PRODUTOID;DATAOCORRENCIA;KARDEXID',[ixPrimary],'','',0);
   Sc1.IndexName := 'idx1';

   Sc2.First;
   Pb1.Max := Sc2.RecordCount;
   i := 1;
   while Not Sc2.Eof do
   begin
    SC1.Insert;
    SC1.FieldByName('EMPRESAID').AsInteger        := Sc2.FieldByName('EMPRESAID').AsInteger;
    SC1.FieldByName('KARDEXID').AsInteger         :=  i;
    Sc1.FieldByName('DATAOCORRENCIA').AsDateTime  := Sc2.FieldByName('DATAOCORRENCIA').AsDateTime;
    Sc1.FieldByName('NUMDOCUMENTO').AsInteger     := Sc2.FieldByName('NUMDOCUMENTO').AsInteger;

    if not Sc2.FieldByName('TIPODOCUMENTO').IsNull then
       Sc1.FieldByName('TIPODOCUMENTO').AsString := Sc2.FieldByName('TIPODOCUMENTO').AsString;

    if not Sc2.FieldByName('TIPOESTOQUE').IsNull then
       Sc1.FieldByName('TIPOESTOQUE').AsString := Sc2.FieldByName('TIPOESTOQUE').AsString;

    if not Sc2.FieldByName('OSID').IsNull then
       Sc1.FieldByName('OSID').AsString  := Sc2.FieldByName('OSID').AsString;

    if not Sc2.FieldByName('DIID').IsNull then
       Sc1.FieldByName('DIID').AsString := Sc2.FieldByName('DIID').AsString;

    SC1.FieldByName('NATUREZAOPID').AsInteger         := SC2.FieldByName('NATUREZAOPID').AsInteger;   

    if not Sc2.FieldByName('TIPOOPERACAO').IsNull then
       Sc1.FieldByName('TIPOOPERACAO').AsString  := Sc2.FieldByName('TIPOOPERACAO').AsString;

    SC1.FieldByName('PRODUTOID').AsInteger            := SC2.FieldByName('PRODUTOID').AsInteger;
    Sc1.FieldByName('QUANTIDADE').AsFloat             := Sc2.FieldByName('QUANTIDADE').AsFloat;
    Sc1.FieldByName('VLRCUSTOUNITARIO').AsFloat       := Sc2.FieldByName('VLRCUSTOUNITARIO').AsFloat;
    Sc1.FieldByName('VLRCUSTOTOTAL').AsFloat          := Sc2.FieldByName('VLRCUSTOTOTAL').AsFloat;
    Sc1.FieldByName('QUANTIDADESALDO').AsFloat        := Sc2.FieldByName('QUANTIDADESALDO').AsFloat;
    Sc1.FieldByName('VLRCUSTOMEDIO').AsFloat          := Sc2.FieldByName('VLRCUSTOMEDIO').AsFloat;
    Sc1.FieldByName('VLRCUSTOMEDIOTOTAL').AsFloat     := Sc2.FieldByName('VLRCUSTOMEDIOTOTAL').AsFloat;
    Sc1.FieldByName('VLRCUSTOMEDIOANTERIOR').AsFloat  := Sc2.FieldByName('VLRCUSTOMEDIOANTERIOR').AsFloat;
    Sc1.FieldByName('ESTOQUENOVO').AsFloat            := Sc2.FieldByName('ESTOQUENOVO').AsFloat;
    Sc1.FieldByName('ESTOQUEREVISADO').AsFloat        := Sc2.FieldByName('ESTOQUEREVISADO').AsFloat;
    Sc1.FieldByName('ESTOQUEFISICO').AsFloat          := Sc2.FieldByName('ESTOQUEFISICO').AsFloat;
    Sc1.FieldByName('ESTOQUEPEDENTRADA').AsFloat      := Sc2.FieldByName('ESTOQUEPEDENTRADA').AsFloat;
    Sc1.FieldByName('ESTOQUEPEDSAIDA').AsFloat        := Sc2.FieldByName('ESTOQUEPEDSAIDA').AsFloat;
    Sc1.FieldByName('ESTOQUEEMTERCEIRO').AsFloat      := Sc2.FieldByName('ESTOQUEEMTERCEIRO').AsFloat;
    Sc1.FieldByName('ESTOQUEDETERCEIRO').AsFloat      := Sc2.FieldByName('ESTOQUEDETERCEIRO').AsFloat;
    Sc1.FieldByName('ESTOQUEMINIMO').AsFloat          := Sc2.FieldByName('ESTOQUEMINIMO').AsFloat;
    Sc1.FieldByName('ESTOQUEEMPENHO').AsFloat         := Sc2.FieldByName('ESTOQUEEMPENHO').AsFloat;
    Sc1.FieldByName('ESTOQUEVALE').AsFloat            := Sc2.FieldByName('ESTOQUEVALE').AsFloat;
    Sc1.FieldByName('ESTOQUEESTORNO').AsFloat         := Sc2.FieldByName('ESTOQUEESTORNO').AsFloat;
    Sc1.FieldByName('ESTOQUEQUARENTENA').AsFloat      := Sc2.FieldByName('ESTOQUEQUARENTENA').AsFloat;
    Sc1.FieldByName('ESTOQUETOTAL').AsFloat           := Sc2.FieldByName('ESTOQUETOTAL').AsFloat;
    Sc1.FieldByName('USUARIO').AsString               := Sc2.FieldByName('USUARIO').AsString;

    SC1.Post;
    if SC1.ChangeCount >= 2000 then
       SC1.ApplyUpdates(-1);
    inc(i);
    Pb1.StepIt;
    Sc2.Next;
   end;
   if SC1.ChangeCount > 0  then
      SC1.ApplyUpdates(-1);

   SC1.Close;
   Sc2.Close;
  end;
 except on
  E : Exception do
  raise Exception.Create(E.Message);
 end;
end;

procedure TfrmMigra.Button1Click(Sender: TObject);
begin
 Aparelho_Omar;
end;

procedure TfrmMigra.BitBtn15Click(Sender: TObject);
begin
  with DMMigra do begin
    Tb1.TableName   := 'C:\projetos\GSI\MIGRACAO\Geral\Dados\SERVICOS.DBF';
    Sc1.CommandText := 'SELECT * FROM EF_SERVICO';
    Sc1.Open;
    Sc1.AddIndex( 'idx1','EMPRESAID;SERVICOID',[ixPrimary],'','',0);
    Sc1.IndexName := 'idx1';

    Tb1.Open;
    Tb1.First;
    Pb1.Max := Tb1.RecordCount;
    while Not Tb1.Eof do
    begin
      if SC1.FindKey([ Tb1.FieldByName('EMPRESAID').Value, Tb1.FieldByName('SERVICOID').Value ]) then
         begin
          SC1.Edit;
          Sc1.FieldByName('RECEITAID').Value := Tb1.FieldByName('RECEITAID').Value;
          Sc1.Post;
         end;

      Tb1.Next;
      Pb1.StepIt;
    end;

    if Sc1.ChangeCount > 0 then
       Sc1.ApplyUpdates(-1);

    Tb1.Close;
    Sc1.Close;
  end;
end;

end.
