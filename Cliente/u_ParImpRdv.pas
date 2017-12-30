unit u_ParImpRdv;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, fcLabel, Mask, Buttons, ComCtrls, dbtables,DB, DBClient;

type
  TfrmParImpRDV = class(TForm)
    fcLabel1: TfcLabel;
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn6: TBitBtn;
    Label2: TLabel;
    dtpctFechInicial: TDateTimePicker;
    dtpctFechFinal: TDateTimePicker;
    Label1: TLabel;
    btnCancelarDtFechamento: TBitBtn;
    BitBtn3: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure btnCancelarDtFechamentoClick(Sender: TObject);
  private
    { Private declarations }
    procedure ImprimeRdv;
    procedure PesquisaItensRdv( Tipo : Integer;DataMovimento : TDateTime );
    procedure GeraSaldo;
    procedure PreencheResumo;

  public
    FTipoMoeda : String;
    Conferencia   : Boolean;
    DataMovimento : TDateTime;
    { Public declarations }
  end;

var
  frmParImpRDV: TfrmParImpRDV;

implementation

uses FuncoesCliente, u_dmGSI, u_dmRD, u_ParDataMovimento, u_dmAS,u_RelRDV;

{$R *.DFM}

procedure TfrmParImpRDV.BitBtn1Click(Sender: TObject);
begin
 Conferencia := False;
 ImprimeRdv;
end;

procedure TfrmParImpRDV.ImprimeRdv;
var Year, Month, Day, Year2, Month2, Day2 : Word;
    Tipo : Integer;
    SaldoAnterior, SaldoAtual : Real;
    cdsVrfDt : TClientDataSet;
    sqlVrfDt : String;

 function PosicaoSaldoRDV( Posicao : Byte ) : Real;
 begin
  Result := 0;
  case Posicao of
  0 : begin
       dmRD.cdsGeral.First;
       if dmRD.cdsGeral.FieldByName('OPERACAO').AsString <> 'N' then
          if not dmRD.cdsGeral.FieldByName('VLRSALDO').IsNull then
             if dmRD.cdsGeral.FieldByName('VLRSALDO').Value > 0 then
                Result := ( dmRD.cdsGeral.FieldByName('VLRSALDO').Value ) - ( dmRD.cdsGeral.FieldByName('VLRDESPESA').Value )
             else
                Result := ( dmRD.cdsGeral.FieldByName('VLRSALDO').Value ) + ( dmRD.cdsGeral.FieldByName('VLRDESPESA').Value );
      end;
  1 : begin
       dmRD.cdsGeral.Last;
       Result := dmRD.cdsGeral.FieldByName('VLRSALDO').AsCurrency;
      end;
  end;
 end;
begin
 cdsVrfDt := Nil;

 frmParDataMovimento := TfrmParDataMovimento.Create( Self );
 try
  if not CheckSenha( dmGsi.UsuarioAtivo,'Despesas de Viagem','Parametro Final de impressão do RDV',False ) then
     begin
      DecodeDate( dtpctFechInicial.DateTime, Year, Month, Day);
      DecodeDate( dmRD.cdsRdvDATAMESABERTO.AsDateTime, Year2, Month2, Day2);

      if not( ( Month = Month2 ) and ( Year = Year2 ) ) then
         raise Exception.Create('O período informado ' + FormatDateTime( 'dd/mm/yyyy', dtpctFechInicial.DateTime ) + ', ' +
                                'não está compreendido no período permitido para fechamento do RDV. ' + #13 +
                                'Este período deve estar compreendido ' +
                                'no mês (  ' + FormatDateTime( 'mmmm/yyyy', dmRD.cdsRdvDATAMESABERTO.AsDateTime ) + ') até a data de : ' +
                                 dmRD.cdsRdvDATAMESABERTO.AsString );

      sqlVrfDt :=  'SELECT DATAFECHAMENTO FROM RD_RDVITEM ' +
                   ' WHERE ' +
                   '  RDVID = ' + dmRD.cdsRdvRDVID.AsString;

      if ( FTipoMoeda = 'R' ) or ( FTipoMoeda = '' ) then
         sqlVrfDt := sqlVrfDt + '  AND ( RD_RDVITEM.TIPOMOEDA = ''R'' OR RD_RDVITEM.TIPOMOEDA IS NULL ) '
      else
         sqlVrfDt := sqlVrfDt + '  AND RD_RDVITEM.TIPOMOEDA = ''D''';

      sqlVrfDt := sqlVrfDt + '  AND DATAFECHAMENTO IS NOT NULL ' +
                             '  AND DATAFECHAMENTO = ' + QuotedStr( FormatDateTime( 'dd/mm/yyyy', dtpctFechInicial.DateTime ) );

      ExecDynamicProvider( -1, sqlVrfDt, cdsVrfDt );

      try
       if cdsVrfDt.RecordCount > 0 then
          raise Exception.Create('Esta data de fechamento informada :' + FormatDateTime( 'dd/mm/yyyy', dtpctFechInicial.DateTime ) +
                                 ' já foi utilizada em fechamentos anteriores. ' + #13 +
                                 'Informe uma nova data de fechamento.' + #13 +
                                 'Atenção: Este período deve estar compreendido ' +
                                 'no mês (  ' + FormatDateTime( 'mmmm/yyyy', dmRD.cdsRdvDATAMESABERTO.AsDateTime ) + ') até a data de : ' +
                                  dmRD.cdsRdvDATAMESABERTO.AsString );
       cdsVrfDt.Close;
      finally
       FreeAndNil(cdsVrfDt);
      end;

     end;

  frmParDataMovimento.Showmodal;

  if CheckSenha( dmGsi.UsuarioAtivo,'Despesas de Viagem','Parametro Final de impressão do RDV',False ) then
     Tipo := 1
  else
     Tipo := 2;

  PesquisaItensRdv( Tipo,DataMovimento );

  dmRD.cdsGeral.IndexFieldNames := '';

  SaldoAnterior := PosicaoSaldoRDV( 0 );
  SaldoAtual    := PosicaoSaldoRDV( 1 );

  // Atualizar Data de Fechamento do RDV
  if Tipo = 2 then
     if not Conferencia then
        begin
         Screen.Cursor := crHourGlass;
         dmRD.cdsRdv.Edit;

         if ( FTipoMoeda = 'R' ) or ( FTipoMoeda = '' ) then
            dmRD.cdsRdvDATAFECHAMENTO.AsDateTime   := dtpctFechInicial.DateTime
         else
            dmRD.cdsRdvDATAFECHAMENTOUS.AsDateTime := dtpctFechInicial.DateTime;

         dmRD.cdsRdv.Post;
         // Atualizar a data do fechamento nos ítens do RDV
         dmRD.shdcnnRD.AppServer.IAtualizaDataFechamento( DateToStr( DataMovimento ),dtpctFechInicial.DateTime,dmRD.cdsRdvRDVID.AsString, FTipoMoeda );
         dmRD.cdsRdv.Refresh;
        end;

  // Ordenando pela Data do Documento
  dmRD.cdsGeral.IndexFieldNames := 'DATADOC';

  frmRelRDV := TfrmRelRDV.Create( Application );

  if ( FTipoMoeda = 'R' ) or ( FTipoMoeda = '' ) then
     frmRelRDV.qrlblTipoMoeda.Caption := 'MOEDA: REAL'
  else
     frmRelRDV.qrlblTipoMoeda.Caption := 'MOEDA: DOLAR';

  frmRelRDV.SaldoAnterior  := SaldoAnterior;
  frmRelRDV.SaldoAtual     := SaldoAtual;

  // Preeche dados para o Relatório
  PreencheResumo;

  frmRelRDV.QuickRep1.Preview;

  dmRD.cdsGeral.Close;

 finally
  if frmRelRDV <> nil then
     begin
      FreeAndNil( frmRelRDV.QuickRep1  );
      FreeAndNil( frmRelRDV );
     end;
 end;

end;

procedure TfrmParImpRDV.PesquisaItensRdv( Tipo : Integer;DataMovimento : TDateTime );
var iSQL : String;
begin
 try
  dmAS.cdsConfig.Open;

  iSQL := 'SELECT DISTINCT '+
           'RD_RDVITEM.RDVID, '+
           'RD_RDVITEM.DATAMOVIMENTOID, '+
           'RD_RDVITEM.ITEMID, '+
           'RD_RDVITEM.DATADOC, '+
           'RD_RDVITEM.OSID, '+
           'RD_RDVITEM.ADIANTAMENTOID, '+
           'RD_RDVITEM.OPERACAOID, '+
           'RD_RDVITEM.VLRDESPESA, '+
           'RD_RDVITEM.VLRSALDO, '+
           'RD_RDVITEM.HISTORICO, '+
           'RD_RDVITEM.KMSAIDA, '+
           'RD_RDVITEM.KMCHEGADA, '+
           'RD_OPERACAO.CONTACONTABILID,'+
           'RD_OPERACAO.OPERACAO,'+
           'RD_OPERACAO.DESCRICAO,'+
           'RD_ADIANTAMENTO.IDENTIFSOLIC L_IDENTIFSOLIC,' +
           'RD_RDVITEM.USUARIO '+
          'FROM '+
           'RD_RDVITEM, '+
           'RD_OPERACAO, '+
           'RD_ADIANTAMENTO' +
           ' WHERE '+
           ' RD_RDVITEM.RDVID = '+ dmRD.cdsRdvItemRDVID.AsString +
           ' AND RD_OPERACAO.OPERACAOID(+) = RD_RDVITEM.OPERACAOID ' +
           ' AND RD_RDVITEM.ADIANTAMENTOID = RD_ADIANTAMENTO.ADIANTAMENTOID(+) ';

   if ( FTipoMoeda = 'R' ) or ( FTipoMoeda = '' ) then
      iSql := iSql + '  AND ( RD_RDVITEM.TIPOMOEDA = ''R'' OR RD_RDVITEM.TIPOMOEDA IS NULL ) '
   else
      iSql := iSql + '  AND RD_RDVITEM.TIPOMOEDA = ''D'' ';


   if     Tipo = 1 then
          begin
           iSQL := iSQL + 'AND ( RD_RDVITEM.DATAMOVIMENTOID >= '+ QuotedStr( DateToStr( dtpctFechInicial.DateTime ) )+' ) '+
                          'AND ( RD_RDVITEM.DATAMOVIMENTOID <= '+ QuotedStr( DateToStr( dtpctFechFinal.DateTime ) )+' ) '+
                          'AND ( RD_RDVITEM.OPERACAOID <> '+ dmAS.cdsConfigMEMOPAGARID.AsString+   ' ) '+
                          'AND ( RD_RDVITEM.OPERACAOID <> '+ dmAS.cdsConfigMEMORECEBERID.AsString+ ' ) ';
          end
  else if Tipo = 2 then
          begin
           iSQL := iSQL + 'AND ( RD_RDVITEM.DATAFECHAMENTO IS NULL ) '+
                          'AND ( RD_RDVITEM.OPERACAOID <> ' + dmAS.cdsConfigMEMOPAGARID.AsString+ ' ) '+
                          'AND ( RD_RDVITEM.OPERACAOID <> '+ dmAS.cdsConfigMEMORECEBERID.AsString+ ' ) '+
                          'AND ( RD_RDVITEM.DATAMOVIMENTOID <= '+ QuotedStr( DateToStr( DataMovimento ) )+' ) ';
          end;

  iSQL := iSQL + 'ORDER BY RDVID, DATAMOVIMENTOID, ITEMID';
  ExecDynamicProvider(-1, iSQL, dmRD.cdsGeral );
 except
  on E : Exception do
     raise Exception.Create( E.Message );
 end;
end;

procedure TfrmParImpRDV.BitBtn3Click(Sender: TObject);
begin
 Conferencia := True;
 ImprimeRdv;
end;

procedure TfrmParImpRDV.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 frmParImpRDV := nil;
 action       := cafree;
end;

procedure TfrmParImpRDV.FormCreate(Sender: TObject);
begin
 dtpctFechInicial.DateTime := ( dmRD.cdsRdvDATAFECHAMENTO.AsDateTime );

 if CheckSenha( dmGsi.UsuarioAtivo, 'Despesas de Viagem','Parametro Final de impressão do RDV', False ) then
    begin
     dtpctFechFinal.Visible  := True;
     dtpctFechFinal.DateTime := Date;
     Label1.Visible          := True;
    end
 else
    begin
     dtpctFechFinal.Visible  := False;
     Label1.Visible           := False;
    end;
end;

procedure TfrmParImpRDV.GeraSaldo;
begin
 with dmRD do
 begin
  with frmRelRDV do
  begin
   if      cdsGeral.FieldByName('OPERACAO').AsString = 'D' then
            begin
             case cdsGeral.FieldByName('OPERACAOID').Value of
              10,55 : DebAdi     := DebAdi + cdsGeral.FieldByName('VLRDESPESA').Value;
              17    : DebPas     := DebPas + cdsGeral.FieldByName('VLRDESPESA').Value;
              48    : DebAdiBD   := DebAdiBD + cdsGeral.FieldByName('VLRDESPESA').Value;
              53    : DebAdiAmex := DebAdiAmex + cdsGeral.FieldByName('VLRDESPESA').Value;
              56    : DebAdiBDE  := DebAdiBDE + cdsGeral.FieldByName('VLRDESPESA').Value;
             end;
             Saldo := Saldo - cdsGeral.FieldByName('VLRDESPESA').Value;
            end
    else if ( ( cdsGeral.FieldByName('OPERACAO').AsString = 'C' ) or
              ( cdsGeral.FieldByName('OPERACAOID').AsInteger = 61 ) ) then
            begin
             Credito := Credito + cdsGeral.FieldByName('VLRDESPESA').Value;
             Saldo := Saldo + cdsGeral.FieldByName('VLRDESPESA').Value;
            end;
  end;
 end;
end;

procedure TfrmParImpRDV.PreencheResumo;
var Cred    : Real;
    Pos     : Integer;
begin
 with dmRD do
 begin
  with frmRelRDV do
  begin
   Saldo      := 0;
   DebAdi     := 0;
   DebAdiBD   := 0;
   DebAdiBDE  := 0;
   DebAdiAmex := 0;
   DebPas     := 0;
   Credito    := 0;
   Cred       := 0;

   cdsGeral.First;
   while not cdsGeral.Eof do
    begin
     GeraSaldo;

     // Não gerar resumo contábil para os casos onde a conta contábil for em branco
     if not cdsGeral.FieldByName('CONTACONTABILID').IsNull then
        if ( Copy( cdsGeral.FieldByName('CONTACONTABILID').Value,1,1 ) <> '' ) then
           begin
            Pos := frmRelRDV.AcharOp( CdsGeral.FieldByName('OPERACAOID').AsInteger );
            if ( cdsGeral.FieldByName('OPERACAO').AsString = 'C' ) or
               ( cdsGeral.FieldByName('OPERACAOID').AsInteger = 61 ) or
               ( cdsGeral.FieldByName('OPERACAOID').AsInteger = 75 ) then
               Cred := Cred + cdsGeral.FieldByName('VLRDESPESA').AsFloat;

            if ( Pos = -1 ) then
               begin
                SetLength( Resumo, Length( Resumo ) + 1 );
                Resumo[Length(Resumo)-1].CdOperacao := cdsGeral.FieldByName('OPERACAOID').Value;
                Resumo[Length(Resumo)-1].Conta      := cdsGeral.FieldByName('CONTACONTABILID').Value;
                Resumo[Length(Resumo)-1].Descricao  := cdsGeral.FieldByName('DESCRICAO').Value;
                Resumo[Length(Resumo)-1].Operacao   := cdsGeral.FieldByName('OPERACAO').Value;
                Resumo[Length(Resumo)-1].Valor      := cdsGeral.FieldByName('VLRDESPESA').Value;
               end
            else
               Resumo[Pos].Valor    := Resumo[Pos].Valor + cdsGeral.FieldByName('VLRDESPESA').Value;
           end;
        cdsGeral.Next;
    end;

   // Adicionar o registro para a conta do funcionario com o total de débitos
   SetLength( Resumo, Length( Resumo ) + 1 );
   Resumo[Length(Resumo)-1].CdOperacao := 9999;
   Resumo[Length(Resumo)-1].Conta      := cdsRdvL_CONTACONTABIL.Value;
   Resumo[Length(Resumo)-1].Descricao  := cdsRDVL_NOMEFUNCIONARIO.Value;
   Resumo[Length(Resumo)-1].Operacao   := 'D';
   Resumo[Length(Resumo)-1].Valor      := Cred;
  end;
 end;
end;

procedure TfrmParImpRDV.BitBtn6Click(Sender: TObject);
begin
 frmParImpRDV.Close;
end;


procedure TfrmParImpRDV.btnCancelarDtFechamentoClick(Sender: TObject);
begin
   dmRD.cdsRdvItem.Last;
   if ( dmRD.cdsRdvItemOPERACAOID.AsInteger = dmAS.cdsConfigMEMOPAGARID.AsInteger ) or
      ( dmRD.cdsRdvItemOPERACAOID.AsInteger = dmAS.cdsConfigMEMORECEBERID.AsInteger ) then
      raise Exception.Create('Não é permitido alterar a data de fechamento, pois o período já está encerrado');

   if dmRD.cdsRdvItemDATAFECHAMENTO.IsNull then
      raise Exception.Create('O Sistema não consegue detectar problemas de impressão neste RDV, não é necessário executar esta rotina');

   if MessageDlg('Confirma o cancelamento da data de fechamento ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      if MessageDlg('Tem certeza de deseja realizar o cancelado da data de fechamento ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
         begin
          try
           Screen.Cursor := crHourGlass;
           dmRD.shdcnnRD.AppServer.IAtualizaDataFechamento( '', dtpctFechInicial.DateTime,dmRD.cdsRdvItemRDVID.AsString, FTipoMoeda );
          finally
           dmRD.cdsrdv.Refresh;
           Screen.Cursor := crDefault;
          end;
         end;
end;

end.
