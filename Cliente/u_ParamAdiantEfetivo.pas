unit u_ParamAdiantEfetivo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, fcLabel, Buttons, Mask;

type
  TfrmParamAdiantEfetivos = class(TForm)
    fcLabel1: TfcLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    btnImpAnalitica: TBitBtn;
    btnFechar: TBitBtn;
    btnImpContabil: TBitBtn;
    btnBaixaAdiantamento: TBitBtn;
    mktFuncionario: TMaskEdit;
    Label3: TLabel;
    procedure btnImpAnaliticaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnImpContabilClick(Sender: TObject);
    procedure btnBaixaAdiantamentoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmParamAdiantEfetivos: TfrmParamAdiantEfetivos;

implementation

uses u_dmRD, u_RelAdiantamento,FuncoesCliente, u_RelAdiantEfetivo, u_dmAS,
  u_dmGSI, u_RDVSolicitacao;

{$R *.dfm}

procedure TfrmParamAdiantEfetivos.btnImpAnaliticaClick(Sender: TObject);
var ParamPesquisa, AdiantamentoId,ParamAdicional : String;
begin
 try
  dmAS.cdsConfig.Open;
  AdiantamentoId := dmAS.cdsConfigADIANTAMENTOID.AsString;

  Screen.Cursor := crHourGlass;

  ParamAdicional := '';

  if mktFuncionario.Text <> '' then
     ParamAdicional := 'AND RD_ADIANTAMENTO.FUNCIONARIOID = ' + mktFuncionario.Text;

  ParamPesquisa := ' RD_ADIANTAMENTO.LIBERADO = 0 AND RD_ADIANTAMENTO.OPERACAOID <> ' + AdiantamentoId +
                   ' AND RD_ADIANTAMENTO.DATADEPOSITO BETWEEN TO_DATE( ' + QuotedStr( DateToStr( DateTimePicker1.DateTime ) ) +  ',' + QuotedStr('DD/MM/YYYY')+ ')'+
                   ' AND TO_DATE( ' + QuotedStr( DateToStr( DateTimePicker2.DateTime ) ) + ',' + QuotedStr('DD/MM/YYYY')+ ')' +
                   ParamAdicional +
                   ' AND RD_ADIANTAMENTO.FUNCIONARIOID IN' +
                   '(' +
                   ' SELECT EF_ENTIDADE.ENTIDADEID' +
                   '   FROM EF_ENTIDADE' +
                   '  WHERE EF_ENTIDADE.DEPARTAMENTOID IN' +
                   '        (SELECT EF_ENTIDADEDEPTO.DEPARTAMENTOID' +
                   '           FROM EF_ENTIDADEDEPTO' +
                   '          WHERE EF_ENTIDADEDEPTO.ENTIDADEID = ' + IntToStr( dmGsi.FuncionarioId )+ '))';

  GerarPesquisa( dmRD.cdsAdiantamento,  ParamPesquisa );

  // Caso o usuário não tenha nenhuma visão visualizar somente o seu RDV
  if dmRD.cdsAdiantamento.IsEmpty then
     begin
      ParamPesquisa := 'RD_ADIANTAMENTO.LIBERADO = 0 AND RD_ADIANTAMENTO.OPERACAOID <> ' + AdiantamentoId +
                       ParamAdicional +
                       ' AND RD_ADIANTAMENTO.FUNCIONARIOID = ' + QuotedStr( IntToStr( dmGsi.FuncionarioId ) ) +
                       ' ORDER BY  RD_ADIANTAMENTO.FUNCIONARIOID, RD_ADIANTAMENTO.DATADEPOSITO ' ;

      GerarPesquisa( dmRD.cdsAdiantamento, ParamPesquisa );
     end;

 dmRD.cdsAdiantamento.Last;    

  Screen.Cursor := crDefault;

  frmRelAdiantEfetivo := TfrmRelAdiantEfetivo.Create(self);
  frmRelAdiantEfetivo.QRLabel14.Caption := DateToStr( DateTimePicker1.DateTime ) + ' à ' + DateToStr( DateTimePicker2.DateTime );
  frmRelAdiantEfetivo.QuickRep1.Preview;

  FreeAndNil( frmRelAdiantEfetivo.QuickRep1 );
  FreeAndNil( frmRelAdiantEfetivo );

  frmRDVSolicitacao.FiltroDespesa;

  except on
   E : Exception do
   raise Exception.create(E.message);
 end;
end;

procedure TfrmParamAdiantEfetivos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 frmParamAdiantEfetivos := nil;
end;

procedure TfrmParamAdiantEfetivos.btnFecharClick(Sender: TObject);
begin
 close;
end;

procedure TfrmParamAdiantEfetivos.FormShow(Sender: TObject);
begin
 DateTimePicker1.DateTime := pCnnMain.AppServer.IServerDate;
 DateTimePicker2.DateTime := pCnnMain.AppServer.IServerDate;
end;

procedure TfrmParamAdiantEfetivos.btnImpContabilClick(Sender: TObject);
var ParamPesquisa, AdiantamentoId : String;
begin
 if not CheckSenha(dmGsi.UsuarioAtivo,'Despesas de Viagem','Impressão contábil de adiantamento',True) then
    exit;

 Screen.Cursor := crHourGlass;
 dmAS.cdsConfig.Open;
 AdiantamentoId := dmAS.cdsConfigADIANTAMENTOID.AsString;

 if CheckSenha( dmGsi.UsuarioAtivo,'Despesas de Viagem','Visualizar Todos Adiantamentos/Despesas', False ) then
    begin
    ParamPesquisa := 'RD_ADIANTAMENTO.LIBERADO = 1 AND NVL( RD_ADIANTAMENTO.IMPRESSO, 0 ) = 0 AND ' +
                     'RD_ADIANTAMENTO.OPERACAOID = ' + AdiantamentoId + ' AND ' +
                     'RD_ADIANTAMENTO.DATASOLICITACAO BETWEEN ' + QuotedStr( DateToStr( DateTimePicker1.Date ) ) +
                                                              ' AND ' + QuotedStr( DateToStr( DateTimePicker2.Date ) );
    end
 else
    begin
     ParamPesquisa := 'RD_ADIANTAMENTO.FUNCIONARIOID IN' +
                      '(' +
                      ' SELECT EF_ENTIDADE.ENTIDADEID' +
                      '   FROM EF_ENTIDADE' +
                      '  WHERE EF_ENTIDADE.DEPARTAMENTOID IN' +
                      '        (SELECT EF_ENTIDADEDEPTO.DEPARTAMENTOID' +
                      '           FROM EF_ENTIDADEDEPTO' +
                      '          WHERE EF_ENTIDADEDEPTO.ENTIDADEID = ' + IntToStr( dmGsi.FuncionarioId )+ ')) AND '+
                      'RD_ADIANTAMENTO.LIBERADO = 1 AND NVL( RD_ADIANTAMENTO.IMPRESSO, 0 ) = 0 AND ' +
                      'RD_ADIANTAMENTO.OPERACAOID = ' + AdiantamentoId + ' AND ' +
                      'RD_ADIANTAMENTO.DATASOLICITACAO BETWEEN ' + QuotedStr( DateToStr( DateTimePicker1.Date ) ) +
                                                               ' AND ' + QuotedStr( DateToStr( DateTimePicker2.Date ) );
    end;

 GerarPesquisa( dmRD.cdsAdiantamento, ParamPesquisa );

 Application.CreateForm(  TfrmRelAdiantamento, frmRelAdiantamento );
 try
  try
   Screen.Cursor := crDefault;
   frmRelAdiantamento.QuickRep1.Preview;

  except on
   E : Exception do
   raise Exception.Create(E.Message);
  end;

 finally
  FreeAndNil( frmRelAdiantamento.QuickRep1 );
  FreeAndNil( frmRelAdiantamento );
  Screen.Cursor := crDefault;
 end;
end;

procedure TfrmParamAdiantEfetivos.btnBaixaAdiantamentoClick(Sender: TObject);
var AdiantamentoId, UpdDML : String;
begin
 if not CheckSenha(dmGsi.UsuarioAtivo,'Despesas de Viagem','Impressão contábil de adiantamento',True) then
    exit;

 Screen.Cursor := crHourGlass;
 dmAS.cdsConfig.Open;
 AdiantamentoId := dmAS.cdsConfigADIANTAMENTOID.AsString;

 UpdDML := 'UPDATE RD_ADIANTAMENTO SET IMPRESSO = 1 ' +
           ' WHERE ' +
           'LIBERADO = 1 AND NVL( IMPRESSO, 0 ) = 0 AND ' +
           'OPERACAOID = ' + AdiantamentoId + ' AND ' +
           'RD_ADIANTAMENTO.DATASOLICITACAO BETWEEN ' + QuotedStr( DateToStr( DateTimePicker1.Date ) ) +
           ' AND ' + QuotedStr( DateToStr( DateTimePicker2.Date ) );
 try
  ExecDML( UpdDML );

 finally
  Screen.Cursor := crDefault;
 end;

end;

end.
