unit u_ParImpHora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, fcLabel, ComCtrls, DB, DBClient,DateUtils,cDateTime,
  Mask;

type
  TfrmParImpHora = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    fcLabel1: TfcLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cdsRelHoras: TClientDataSet;
    dsHoras: TDataSource;
    Label3: TLabel;
    StatusBar1: TStatusBar;
    ckbxDTHoraInicial: TCheckBox;
    Label4: TLabel;
    cmbbxDepto: TComboBox;
    ckbxTodosDepto: TCheckBox;
    ckbxDemitidos: TCheckBox;
    Label5: TLabel;
    cmbbxGrupoCat: TComboBox;
    mktFunc: TMaskEdit;
    Label6: TLabel;
    ckbxProcBloq: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure HorasPendente;
    procedure HorasMensalResumo( Tipo : Integer );
    procedure HorasControle;
    function RetornoDeptoPesquisa: String;
    function RetornoGrupoCatPesquisa : String;
    procedure HorasCompensadas;
  public
    { Public declarations }
    RelatorioId : Integer;
  end;

var
  frmParImpHora: TfrmParImpHora;

implementation

uses u_RelHoras, u_dmRD,FuncoesCliente, FuncoesDSI, u_RelHorasPendentes,
  u_RelHorasMensal, u_RelHorasApuracao, u_dmGSI, u_RelHoraCompensada;

{$R *.dfm}

function TfrmParImpHora.RetornoDeptoPesquisa : String;
var cdsSub : TClientDataSet;
var iSQL : String;
begin
 iSQL := ' SELECT DEPARTAMENTOID, DESCRICAO '+
         '   FROM '+
         '   EF_DEPARTAMENTO WHERE DESCRICAO = ' + QuotedStr( cmbbxDepto.Text );
 try
  ExecDynamicProvider( -1, iSQL, cdsSub );

  if cdsSub.RecordCount < 1 then
     Result := '1'
  else
     Result := cdsSub.FieldByName('DEPARTAMENTOID').AsString;

 finally
  FreeAndNil( cdsSub );
 end;
end;

function TfrmParImpHora.RetornoGrupoCatPesquisa : String;
var cdsSub : TClientDataSet;
var iSQL : String;
begin
 iSQL := ' SELECT CATEGORIAID, DESCRICAO '+
         '   FROM '+
         '   EF_CATEGORIA WHERE DESCRICAO = ' + QuotedStr( cmbbxGrupoCat.Text );
 try
  ExecDynamicProvider( -1, iSQL, cdsSub );

  if cdsSub.RecordCount < 1 then
     Result := '1'
  else
     Result := cdsSub.FieldByName('CATEGORIAID').AsString;
 finally
  FreeAndNil( cdsSub );
 end;
end;

procedure TfrmParImpHora.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action       := cafree;
 frmparImpHora := nil;
end;

procedure TfrmParImpHora.FormCreate(Sender: TObject);
var iSQL : String;
begin
 iSQL := ' SELECT DESCRICAO FROM EF_DEPARTAMENTO';
 AdicionarCamposCombo( cmbbxDepto,iSQL,'DESCRICAO' );

 iSQL := ' SELECT DESCRICAO FROM EF_CATEGORIA';
 AdicionarCamposCombo( cmbbxGrupoCat,iSQL,'DESCRICAO' );
end;

procedure TfrmParImpHora.BitBtn2Click(Sender: TObject);
begin
 frmParImpHora.Close;
end;

procedure TfrmParImpHora.HorasMensalResumo( Tipo : Integer );
var iSQL : String;
    LastDay,LastDayOld,FirstDay : string;
    Month, Day, Year : Word;
    Date1 : TDateTime;

 function SubtrairMesesData( Dt : TDate; DifMeses : Integer; PrimeiroDia : Boolean = False ) : TDate;
 begin
  if PrimeiroDia then
     Result :=  AddMonths( FirstDayOfMonth(Dt), DifMeses )
  else
     Result := AddMonths( Dt, DifMeses );
 end;

begin
 if      Tipo = 1 then
         begin
          FirstDay   := FormatDateTime('DD/MM/YYYY', DateTimePicker1.DateTime );
          LastDay    := FormatDateTime('DD/MM/YYYY', DateTimePicker2.DateTime );
          Date1      := SubtrairMesesData( DateTimePicker1.DateTime, -1 );
          LastDayOld := FormatDateTime('DD/MM/YYYY', LastDayOfMonth( Date1 ) );
         end
 else if Tipo = 2 then
         begin
          DecodeDate( DateTimePicker2.DateTime, Year, Month, Day );
          Day        := 1;

          Date1      := SubtrairMesesData( DateTimePicker2.DateTime, -4, True );

          FirstDay   := FormatDateTime('DD/MM/YYYY', FirstDayOfMonth( Date1 ) );
          LastDay    := FormatDateTime('DD/MM/YYYY', DateTimePicker2.DateTime );

          Date1      := SubtrairMesesData( DateTimePicker2.DateTime, -5 );
          LastDayOld := FormatDateTime('DD/MM/YYYY', LastDayOfMonth( Date1 ) );
         end;


 iSQL := 'SELECT RD_HORA.HORAID,'+
         '       NVL( RD_HORA.BLOQUEADO, 0 ) BLOQUEADO, ' +
         '       EF_ENTIDADE.NOME,'+
         '       EF_GRUPOCATEGORIA.DESCRICAO,' +
         '       EF_GRUPOCATEGORIA.CATEGORIAID,' +
         '       PKG_GSI_HORAS.FC_TO_HOUR( NVL(RDSALDO.SLDCREDITO, 0) - NVL(RDSALDO.SLDDEBITO, 0) ) DIFCREDDEB, ' +
         '       NVL( RDSALDOANTERIOR.SALDOANTERIOR,0) SALDOANTERIOR,'+
         '       PKG_GSI_HORAS.FC_TO_HOUR( NVL( RDSALDO.SLDCREDITO,0) ) SALDOCREDITO,'+
         '       PKG_GSI_HORAS.FC_TO_HOUR( NVL( RDSALDO.SLDDEBITO,0) ) SALDODEBITO,'+
         '       NVL( RDSALDOATUAL.SLDATUAL,0 ) SALDOATUAL,'+
         '       NVL( RDSALDOATUAL.SLDATUALMINUTOS,0 ) - NVL( RDSALDO.SLDCREDITO,0) SALDOPAGARMINUTOS,'+
         '       PKG_GSI_HORAS.FC_TO_HOUR( NVL( RDSALDOATUAL.SLDATUALMINUTOS,0 ) - NVL( RDSALDO.SLDCREDITO,0) ) SALDOPAGARHORAS'+
         '  FROM RD_HORA,'+
         '       EF_ENTIDADE,'+
         '       EF_DEPARTAMENTO,'+
         ' ( SELECT VW_RD_LANCHORAS.HORAID,' +
         '       VW_RD_LANCHORAS.HORAINI,' +
         '       VW_RD_LANCHORAS.VLRSALDO SALDOANTERIOR' +
         '  FROM VW_RD_LANCHORAS' +
         ' WHERE (HORAID, ID_ROW ) IN' +
         '       (SELECT HORAID,' +
         '               MAX(ID_ROW)' +
         '          FROM VW_RD_LANCHORAS' +
         '         WHERE TO_DATE(TO_CHAR(VW_RD_LANCHORAS.HORAINI,'+ QuotedStr( 'DD/MM/YYYY')+ ')) <= '+ QuotedStr( LastDayOld )+
         '         GROUP BY VW_RD_LANCHORAS.HORAID  )' +
         '         ORDER BY 1) RDSALDOANTERIOR, ' +
         ' ' +
         '       (SELECT '+
         '               NVL(SUM(CASE'+
         '                        WHEN RD_HORAITEM.OPERACAOID IN (29,25,66,46) THEN '+
         '                         NVL(RD_HORAITEM.DIFERENCAMINTRAB, 0)'+
         '                        ELSE'+
         '                         0'+
         '                      END),'+
         '                  0) SLDCREDITO,'+
         '               NVL(SUM(CASE'+
         '                        WHEN RD_HORAITEM.OPERACAOID IN (26,65) THEN' +
         '                         nvl(RD_HORAITEM.DIFERENCAMINTRAB, 0)'+
         '                        ELSE'+
         '                         0'+
         '                      END),'+
         '                  0) SLDDEBITO,'+
         '             RD_HORAITEM.HORAID'+
         '          FROM RD_HORAITEM'+
         '         WHERE TO_DATE(TO_CHAR(RD_HORAITEM.HORAFIM,'+ QuotedStr( 'DD/MM/YYYY')+ ')) BETWEEN'+
         '               '+ QuotedStr( FirstDay )+ ' AND '+ QuotedStr( LastDay )+
         '         GROUP BY RD_HORAITEM.HORAID) RDSALDO,'+
         ' ( SELECT VW_RD_LANCHORAS.HORAID,' +
         '       VW_RD_LANCHORAS.HORAINI,' +
         '       VW_RD_LANCHORAS.VLRSALDOMINUTOS SLDATUALMINUTOS,' +
         '       VW_RD_LANCHORAS.VLRSALDO SLDATUAL' +
         '  FROM VW_RD_LANCHORAS' +
         ' WHERE (HORAID, ID_ROW ) IN' +
         '       (SELECT HORAID,' +
         '               MAX(ID_ROW)' +
         '          FROM VW_RD_LANCHORAS' +
         '         WHERE TO_DATE(TO_CHAR(VW_RD_LANCHORAS.HORAINI,'+ QuotedStr( 'DD/MM/YYYY')+ ')) <= '+ QuotedStr( LastDay )+
         '         GROUP BY VW_RD_LANCHORAS.HORAID  )' +
         '         ORDER BY 1) RDSALDOATUAL, ' +
         '  ( SELECT EF_ENTIDADEGRUPO.ENTIDADEID, ' +
         '       EF_ENTIDADEGRUPO.CATEGORIAID, ' +
         '       EF_CATEGORIA.DESCRICAO, ' +
         '       EF_ENTIDADEGRUPO.USUARIO ' +
         '  FROM EF_ENTIDADEGRUPO EF_ENTIDADEGRUPO, ' +
         '       EF_CATEGORIA EF_CATEGORIA ' +
         ' WHERE EF_ENTIDADEGRUPO.CATEGORIAID >= 7 ' +
         '       AND EF_CATEGORIA.CATEGORIAID = EF_ENTIDADEGRUPO.CATEGORIAID ) EF_GRUPOCATEGORIA ' +
         ' WHERE EF_ENTIDADE.ENTIDADEID = RD_HORA.HORAID'+
         '   AND EF_DEPARTAMENTO.DEPARTAMENTOID = EF_ENTIDADE.DEPARTAMENTOID' +
         '   AND EF_ENTIDADE.ENTIDADEID = EF_GRUPOCATEGORIA.ENTIDADEID(+) ';


  if ckbxProcBloq.Checked  = True then
     iSQL := iSQL + ' AND NVL( RD_HORA.BLOQUEADO, 0 ) = 1 '
  else
     iSQL := iSQL + ' AND NVL( RD_HORA.BLOQUEADO, 0 ) = 0 ';

  if ( ckbxTodosDepto.Checked = False ) and ( cmbbxDepto.Text <> '' ) then
     iSQL := iSQL + ' AND EF_DEPARTAMENTO.DEPARTAMENTOID = ' + RetornoDeptoPesquisa;

  if cmbbxGrupoCat.Text <> '' then
     iSQL := iSQL + ' AND EF_ENTIDADE.ENTIDADEID IN ( SELECT ENTIDADEID FROM EF_ENTIDADEGRUPO WHERE EF_ENTIDADEGRUPO.CATEGORIAID = ' +
             RetornoGrupoCatPesquisa + ')';

  if ckbxDemitidos.Checked = True then
     iSQL := iSQL + ' AND NVL( EF_ENTIDADE.DESLIGADO, 0 ) = 1 '
  else
     iSQL := iSQL + ' AND NVL( EF_ENTIDADE.DESLIGADO, 0 ) = 0 ';

  if not CheckSenha( dmGsi.UsuarioAtivo,'Banco de Horas','Visualizar Todos Adiantamentos/Despesas', False ) then
     iSQL := iSQL + ' AND RD_HORA.HORAID IN' +
                       '(' +
                       ' SELECT EF_ENTIDADE.ENTIDADEID' +
                       '   FROM EF_ENTIDADE' +
                       '  WHERE EF_ENTIDADE.DEPARTAMENTOID IN' +
                       '        (SELECT EF_ENTIDADEDEPTO.DEPARTAMENTOID' +
                       '           FROM EF_ENTIDADEDEPTO' +
                       '          WHERE EF_ENTIDADEDEPTO.ENTIDADEID = ' + IntToStr( dmGsi.FuncionarioId )+ '))';

  iSQL := iSQL +
         '   AND RDSALDOANTERIOR.HORAID(+) = RD_HORA.HORAID'+
         '   AND RDSALDO.HORAID(+) = RD_HORA.HORAID'+
         '   AND RDSALDOATUAL.HORAID(+) = RD_HORA.HORAID'+
         ' ORDER BY EF_GRUPOCATEGORIA.DESCRICAO, EF_ENTIDADE.NOME';

  try
   ExecDynamicProvider(-1,iSQL, cdsRelHoras );

   cdsRelHoras.AddIndex('idx1','CATEGORIAID;NOME',[ixCaseInsensitive],'','',0 );
   cdsRelHoras.IndexName := 'idx1';

   case Tipo of
   1 : begin
        frmRelHorasMensal := TfrmRelHorasMensal.Create(nil);
        frmRelHorasMensal.QRLabel25.Caption := frmRelHorasMensal.QRLabel25.Caption +'  '+ FirstDay +' a '+ LastDay;
        frmRelHorasMensal.QuickRep1.Preview;
       end;
   2 : begin
        frmRelHorasApuracao := TfrmRelHorasApuracao.Create(nil);
        frmRelHorasApuracao.QRLabel25.Caption   := frmRelHorasApuracao.QRLabel25.Caption +'  '+ FirstDay +' a '+ LastDay;
        frmRelHorasApuracao.qrlblFxData.Caption := FirstDay +' a '+ LastDay;
        frmRelHorasApuracao.qrlblDataSaldo.Caption := LastDayOld;
        frmRelHorasApuracao.qrlblDataSaldoAtual.Caption := LastDay;
        frmRelHorasApuracao.QuickRep1.Preview;
       end;
   end;

   cdsRelHoras.DeleteIndex('idx1');
   cdsRelHoras.Close;

  finally
   case Tipo of
   1 : begin
        FreeAndNil( frmRelHorasMensal.QuickRep1 );
        FreeAndNil( frmRelHorasMensal );
       end;
   2 : begin
        FreeAndNil( frmRelHorasApuracao.QuickRep1 );
        FreeAndNil( frmRelHorasApuracao );
       end;
   end;
  end;
end;

procedure TfrmParImpHora.HorasPendente;
var iSQL : String;
begin
 iSQL := 'SELECT FUNCIONARIOID,'+
         '       NOME,'+
         '       DESCRICAO,'+
         '       DEPARTAMENTOID,'+
         '       NVL( SLDDEBITO,0) SLDDEBITO,'+
         '       NVL( SLDCREDITO,0) SLDCREDITO,'+
         '       NVL( SLDTOTAL,0 ) SLDTOTAL,'+
         '       NVL( QTDITENS,0) QTDITENS'+
         '  FROM (SELECT RD_BANCOHORA.FUNCIONARIOID,'+
         '               EF_ENTIDADE.NOME,'+
         '               EF_DEPARTAMENTO.DESCRICAO,'+
         '               EF_DEPARTAMENTO.DEPARTAMENTOID,'+
         '               PKG_GSI_HORAS.FC_TO_HOUR('+
         '               SUM(CASE'+
         '                     WHEN (RD_BANCOHORA.OPERACAOID IN (26,65)) '+
         '                           THEN'+
         '                      RD_BANCOHORA.DIFERENCAMINTRAB'+
         '                     ELSE'+
         '                      0'+
         '                   END)) SLDDEBITO,'+
         '               PKG_GSI_HORAS.FC_TO_HOUR('+
         '               SUM(CASE'+
         '                     WHEN (RD_BANCOHORA.OPERACAOID IN (29,25,66,46) )  THEN'+
         '                      RD_BANCOHORA.DIFERENCAMINTRAB'+
         '                     ELSE'+
         '                      0'+
         '                   END)) SLDCREDITO,'+
         '             ( PKG_GSI_HORAS.FC_TO_HOUR('+
         '               SUM(CASE'+
         '                     WHEN ( RD_BANCOHORA.OPERACAOID IN (29,25,66,46) ) THEN'+
         '                      RD_BANCOHORA.DIFERENCAMINTRAB'+
         '                     ELSE'+
         '                      0'+
         '                   END)) -'+
         '               PKG_GSI_HORAS.FC_TO_HOUR('+
         '               SUM(CASE'+
         '                     WHEN (RD_BANCOHORA.OPERACAOID IN (26,65)) '+
         '                           THEN'+
         '                      RD_BANCOHORA.DIFERENCAMINTRAB'+
         '                     ELSE'+
         '                      0'+
         '                   END))) SLDTOTAL,  '+
         '               COUNT(*) QTDITENS'+
         '          FROM EF_ENTIDADE, RD_BANCOHORA,EF_DEPARTAMENTO'+
         '         WHERE EF_ENTIDADE.ENTIDADEID = RD_BANCOHORA.FUNCIONARIOID'+
         '           AND EF_DEPARTAMENTO.DEPARTAMENTOID = EF_ENTIDADE.DEPARTAMENTOID';

  if ( ckbxTodosDepto.Checked = False ) and ( cmbbxDepto.Text <> '' ) then
     iSQL := iSQL + ' AND EF_DEPARTAMENTO.DEPARTAMENTOID = ' + RetornoDeptoPesquisa;

  iSQL := iSQL +
         '           AND TO_DATE( TO_CHAR(RD_BANCOHORA.HORAFIM,'+ QuotedStr('DD/MM/YYYY')+ '),'+ QuotedStr('DD/MM/YYYY')+') BETWEEN '+  QuotedStr( DateToStr( DateTimePicker1.Date ) )+ ' AND '+ QuotedStr( DateToStr( DateTimePicker2.Date ) )+
         '         GROUP BY RD_BANCOHORA.FUNCIONARIOID, EF_ENTIDADE.NOME,EF_DEPARTAMENTO.DESCRICAO,EF_DEPARTAMENTO.DEPARTAMENTOID'+
         '         ORDER BY EF_DEPARTAMENTO.DEPARTAMENTOID)';


 try
  ExecDynamicProvider(-1,iSQL,cdsRelHoras );

  frmRelHorasPendentes := TfrmRelHorasPendentes.Create(nil);
  frmRelHorasPendentes.QRLabel25.Caption :=frmRelHorasPendentes.QRLabel25.Caption+'  '+ DateToStr( DateTimePicker1.date )+' a '+ DateToStr( DateTimePicker2.date );
  frmRelHorasPendentes.QuickRep1.Preview;
 finally
  FreeAndNil( frmRelHorasPendentes.QuickRep1 );
  FreeAndNil( frmRelHorasPendentes );
 end;

end;

procedure TfrmParImpHora.HorasControle;
var iSQL  : String;
    SaldoAnterior : Real;
begin
 iSQL := 'SELECT RD_HORAITEM.HORAID,'+
         '       RD_HORA.BLOQUEADO,'+
         '       RD_HORAITEM.HORAINI,'+
         '       RD_HORAITEM.ITEMID,'+
         '       RD_HORAITEM.OSID,'+
         '       RD_HORAITEM.OPERACAOID,'+
         '       EF_ENTIDADE.NOME L_NOMEFUNCIONARIO,'+
         '       RD_OPERACAO.DESCRICAO L_DESCRICAOOPERACAO,'+
         '       RD_OPERACAO.OPERACAO L_OPERACAO,'+
         '       RD_HORAITEM.HORAINI AS DATAHORAINICIAL,'+
         '       RD_HORAITEM.DATASERVICOID,'+
         '       RD_HORAITEM.HORAFIM,'+
         '       RD_HORAITEM.DIFERENCAHORATRAB,'+
         '       RD_HORAITEM.VLRSALDO,'+
         '       RD_HORAITEM.HISTORICO,'+
         '       RD_HORAITEM.USUARIO'+
         '  FROM RD_HORAITEM,'+
         '       RD_HORA,' +
         '       RD_OPERACAO, ' +
         '       EF_DEPARTAMENTO, ' +
         '       EF_ENTIDADE ' +
         ' WHERE RD_OPERACAO.OPERACAOID(+) = RD_HORAITEM.OPERACAOID'+
         '       AND RD_HORAITEM.HORAID = RD_HORA.HORAID ' +
         '       AND RD_HORAITEM.HORAID = EF_ENTIDADE.ENTIDADEID ' +
         '       AND EF_ENTIDADE.DEPARTAMENTOID = EF_DEPARTAMENTO.DEPARTAMENTOID(+)';

 if ckbxProcBloq.Checked  = True then
    iSQL := iSQL + ' AND NVL( RD_HORA.BLOQUEADO, 0 ) = 1 '
 else
    iSQL := iSQL + ' AND NVL( RD_HORA.BLOQUEADO, 0 ) = 0 ';

 if ( ckbxTodosDepto.Checked = False ) and ( cmbbxDepto.Text <> '' ) then
    iSQL := iSQL + ' AND EF_ENTIDADE.DEPARTAMENTOID = ' + RetornoDeptoPesquisa;

 if mktFunc.Text <> '' then
    iSQL := iSQL + '  AND RD_HORAITEM.HORAID = ' + mktFunc.Text;

 if ckbxDTHoraInicial.Checked then
    iSQL := iSQL + '  AND RD_HORAITEM.HORAINI'
 else
    iSQL := iSQL + '  AND RD_HORAITEM.HORAINI';

 iSQL := iSQL + '  BETWEEN TO_DATE( ' +  QuotedStr( DateToStr( DateTimePicker1.Date ) )+ '''00:00'', ''DD/MM/YYYY HH24:MI'' )' +
                '  AND TO_DATE( '+ QuotedStr( DateToStr( DateTimePicker2.Date ) )+ '''23:59'', ''DD/MM/YYYY HH24:MI'' )' +
                ' ORDER BY RD_HORAITEM.HORAID, RD_HORAITEM.HORAINI, RD_HORAITEM.ITEMID';

 ExecDynamicProvider( -1,iSQL, dmRD.cdsRelHoraitem );

 dmRD.cdsRelHoraItem.First;
 SaldoAnterior := 0;
 if not dmRD.cdsRelHoraItemVLRSALDO.IsNull then
    if dmRD.cdsRelHoraItemVLRSALDO.Value < 0 then
       SaldoAnterior := dmRD.cdsRelHoraItemVLRSALDO.Value + dmRD.cdsRelHoraItemVLRSALDO.Value;

 frmRelHoras := TfrmRelHoras.Create(nil);
 frmRelHoras.QrlSaldoAnterior.Caption := FloatToStr( SaldoAnterior );
 frmRelHoras.QrlHoraid.Caption        := dmRD.cdsHoraHORAID.AsString;
 frmRelHoras.QrlNome.Caption          := dmRD.cdsHoraL_NOMEFUNCIONARIO.AsString;
 frmRelHoras.QrlSaldo.Caption         := dmRD.cdsHoraVLRSALDO.AsString;
 frmRelHoras.QRLabel25.Caption        := frmRelHoras.QRLabel25.Caption + ' ' + DateToStr( DateTimePicker1.DateTime ) + ' à ' + DateToStr( DateTimePicker2.DateTime );
 try
  frmRelHoras.QuickRep1.PreviewModal;
 finally
  FreeAndNil( frmRelHoras.QuickRep1 );
  FreeAndNil( frmRelHoras );
 end;
end;


procedure TfrmParImpHora.HorasCompensadas;
var iSQL  : String;
begin
 iSQL := 'SELECT RD_HORAITEM.HORAID,'+
         '       RD_HORA.BLOQUEADO,' +
         '       RD_HORAITEM.HORAINI,'+
         '       RD_HORAITEM.ITEMID,'+
         '       EF_ENTIDADE.NOME L_NOMEFUNCIONARIO, ' +
         '       RD_HORAITEM.OSID,'+
         '       RD_HORAITEM.OPERACAOID,'+
         '       RD_OPERACAO.DESCRICAO L_DESCRICAOOPERACAO,'+
         '       RD_OPERACAO.OPERACAO L_OPERACAO,'+
         '       RD_HORAITEM.HORAINI AS DATAHORAINICIAL,'+
         '       RD_HORAITEM.DATASERVICOID,'+
         '       RD_HORAITEM.HORAFIM,'+
         '       RD_HORAITEM.DIFERENCAHORATRAB,'+
         '       RD_HORAITEM.VLRSALDO,'+
         '       RD_HORAITEM.HISTORICO,'+
         '       RD_HORAITEM.USUARIO'+
         '  FROM RD_HORAITEM,'+
         '       RD_HORA,'+
         '       RD_OPERACAO, ' +
         '       EF_DEPARTAMENTO, ' +
         '       EF_ENTIDADE ' +
         ' WHERE RD_OPERACAO.OPERACAOID(+) = RD_HORAITEM.OPERACAOID'+
         '       AND RD_HORA.HORAID = RD_HORAITEM.HORAID ' +
         '       AND RD_HORAITEM.HORAID = EF_ENTIDADE.ENTIDADEID ' +
         '       AND RD_HORAITEM.OPERACAOID = 26 ' +
         '       AND EF_ENTIDADE.DEPARTAMENTOID = EF_DEPARTAMENTO.DEPARTAMENTOID(+)';


 if ckbxProcBloq.Checked  = True then
    iSQL := iSQL + ' AND NVL( RD_HORA.BLOQUEADO, 0 ) = 1 '
 else
    iSQL := iSQL + ' AND NVL( RD_HORA.BLOQUEADO, 0 ) = 0 ';

 if ( ckbxTodosDepto.Checked = False ) and ( cmbbxDepto.Text <> '' ) then
    iSQL := iSQL + ' AND EF_ENTIDADE.DEPARTAMENTOID = ' + RetornoDeptoPesquisa;

 if cmbbxGrupoCat.Text <> '' then
    iSQL := iSQL + ' AND EF_ENTIDADE.ENTIDADEID IN ( SELECT ENTIDADEID FROM EF_ENTIDADEGRUPO WHERE EF_ENTIDADEGRUPO.CATEGORIAID = ' +
            RetornoGrupoCatPesquisa + ')';

 if ckbxDemitidos.Checked = True then
    iSQL := iSQL + ' AND NVL( EF_ENTIDADE.DESLIGADO, 0 ) = 1 '
 else
    iSQL := iSQL + ' AND NVL( EF_ENTIDADE.DESLIGADO, 0 ) = 0 ';


 if not CheckSenha( dmGsi.UsuarioAtivo,'Banco de Horas','Visualizar Todos Adiantamentos/Despesas', False ) then
    iSQL := iSQL + ' AND RD_HORAITEM.HORAID IN' +
                      '(' +
                      ' SELECT EF_ENTIDADE.ENTIDADEID' +
                      '   FROM EF_ENTIDADE' +
                      '  WHERE EF_ENTIDADE.DEPARTAMENTOID IN' +
                      '        (SELECT EF_ENTIDADEDEPTO.DEPARTAMENTOID' +
                      '           FROM EF_ENTIDADEDEPTO' +
                      '          WHERE EF_ENTIDADEDEPTO.ENTIDADEID = ' + IntToStr( dmGsi.FuncionarioId )+ '))';

 iSQL := iSQL + ' AND RD_HORAITEM.HORAINI BETWEEN TO_DATE( ' +  QuotedStr( DateToStr( DateTimePicker1.Date ) )+ '''00:00'', ''DD/MM/YYYY HH24:MI'' )' +
                '  AND TO_DATE( '+ QuotedStr( DateToStr( DateTimePicker2.Date ) )+ '''23:59'', ''DD/MM/YYYY HH24:MI'' )' +
                ' ORDER BY RD_HORAITEM.HORAID, RD_HORAITEM.HORAINI, RD_HORAITEM.ITEMID';

 ExecDynamicProvider( -1,iSQL, dmRD.cdsRelHoraitem );

 StringToSQLFile( iSQL );

 frmRelHoraCompensada := TfrmRelHoraCompensada.Create(nil);
 frmRelHoraCompensada.QRLabel25.Caption        := frmRelHoraCompensada.QRLabel25.Caption + ' ' + DateToStr( DateTimePicker1.DateTime ) + ' à ' + DateToStr( DateTimePicker2.DateTime );
 try
  frmRelHoraCompensada.QuickRep1.PreviewModal;
 finally
  FreeAndNil( frmRelHoraCompensada.QuickRep1 );
  FreeAndNil( frmRelHoraCompensada );
 end;
end;

procedure TfrmParImpHora.BitBtn1Click(Sender: TObject);
begin
 if      RelatorioId = 1 then
         HorasControle
 else if RelatorioId = 2 then
         HorasPendente
 else if RelatorioId = 3 then
         HorasMensalResumo( 1 )
 else if RelatorioId = 4 then
         HorasMensalResumo( 2 )
 else if RelatorioId = 5 then
         HorasCompensadas;
end;

procedure TfrmParImpHora.FormShow(Sender: TObject);
var DInicial,DFinal : String;
    day,Month, year : Word;
begin
 DecodeDate( pCnnMain.AppServer.iServerDate,year,Month,day );

 if Month = 1 then
    begin
     Month := 13;
     year  := year -1;
    end;

 DInicial := '01/'+ FormatFloat('00',Month-1 ) + '/'+ IntToStr( year );
 DFinal   := FormatDateTime('DD/MM/YYYY', LastDayOfMonth( pCnnMain.AppServer.iServerDate - 30 ) );

 DateTimePicker1.Date :=  StrToDate( DInicial );
 DateTimePicker2.Date :=  StrToDate( DFinal );

 if ( RelatorioId = 4 ) then
    begin
     DateTimePicker1.Visible := False;
     Label1.Visible := False;
    end;
end;

end.
