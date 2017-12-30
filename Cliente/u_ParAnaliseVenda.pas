unit u_ParAnaliseVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, DB, wwdbdatetimepicker, Mask, DBClient,
  cDateTime;

type
  TfrmParAnaliseVenda = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    grpbxPeriodo: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    BitBtn3: TBitBtn;
    Label3: TLabel;
    wwDBDateTimePicker3: TwwDBDateTimePicker;
    Label4: TLabel;
    wwDBDateTimePicker4: TwwDBDateTimePicker;
    mktProvisaoComissao: TMaskEdit;
    Label5: TLabel;
    Label6: TLabel;
    mktPercEncargos: TMaskEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function ProcurarHistFech( AnoMesID : String ) : Boolean;
    function ProcurarAnaliseVenda( PedVendID : String ) : Boolean;
  end;

var
  frmParAnaliseVenda: TfrmParAnaliseVenda;

implementation

uses u_dmPP, FuncoesCliente, FuncoesDSI, u_dmGSI;

{$R *.dfm}

function TfrmParAnaliseVenda.ProcurarHistFech( AnoMesID : String ) : Boolean;
var cdsHist : TClientDataSet;
    iSQLHist : String;
begin
 Result   := True;
 cdsHist  := Nil;
 iSQLHist := 'SELECT ANOMESID ' +
             ' FROM PP_HISTFECHCOMISSAO ' +
             ' WHERE ANOMESID = ' + QuotedStr( AnoMesID );

 try
  ExecDynamicProvider( -1, iSQLHist, cdsHist );
  if cdsHist.IsEmpty then
     Result := False;

  cdsHist.Close;
 finally
  FreeAndNil( cdsHist );
 end;
end;


function TfrmParAnaliseVenda.ProcurarAnaliseVenda( PedVendID : String ) : Boolean;
var cdsAnal : TClientDataSet;
    iSQLAnal : String;
begin
 Result   := True;
 cdsAnal  := Nil;
 iSQLAnal := 'SELECT PEDVENDID ' +
             ' FROM PP_ANALISEVENDA ' +
             ' WHERE PEDVENDID = ' + QuotedStr( PedVendID );

 try
  ExecDynamicProvider( -1, iSQLAnal, cdsAnal );
  if cdsAnal.IsEmpty then
     Result := False;

  cdsAnal.Close;
 finally
  FreeAndNil( cdsAnal );
 end;
end;

procedure TfrmParAnaliseVenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 frmParAnaliseVenda := Nil;
end;

procedure TfrmParAnaliseVenda.BitBtn2Click(Sender: TObject);
begin
 Close
end;

procedure TfrmParAnaliseVenda.BitBtn3Click(Sender: TObject);
begin
 if not CheckSenha( dmGsi.UsuarioAtivo, 'Analise de Venda', 'Processar Provisão de Pagamentos', True ) then
    exit;

 Screen.Cursor := crHourGlass;
 try
  if MessageDlg('Confirma o processamento das provisões de pagamentos?',
     mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
      dmPP.shdcnnPP.AppServer.IProvisaoComissao( wwDBDateTimePicker1.Date,
                                                 wwDBDateTimePicker2.Date,
                                                 StrToFloat( mktProvisaoComissao.Text ),
                                                 StrToFloat( mktPercEncargos.Text ) );

      MessageDlg('Provisão processada com sucesso',mtInformation,[mbok],0);
     end;
 finally
  Screen.Cursor := crDefault;
 end;
end;

procedure TfrmParAnaliseVenda.BitBtn1Click(Sender: TObject);
var Dia, Mes, Ano : Word;
    Dia2, Mes2, Ano2 : Word;
begin
 if not CheckSenha( dmGsi.UsuarioAtivo, 'Analise de Venda', 'Fechamento mensal de vendas', True ) then
    exit;

 DecodeDate(wwDBDateTimePicker1.Date, Ano, Mes, Dia );
 DecodeDate(wwDBDateTimePicker2.Date, Ano2, Mes2, Dia2 );

 if ProcurarHistFech( IntToStr( Ano )  + StrZero( Mes,  2, 0 ) ) or
    ProcurarHistFech( IntToStr( Ano2 ) + StrZero( Mes2, 2, 0 ) ) then
    begin
     MessageDlg('Não é permitido fazer o fechamento para este período, o mesmo já foi fechado.', mtInformation, [mbOk], 0);
     Exit;
    end;

 if MessageDlg('Confirma o processamento dos dados de Analise de Venda?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
     dmPP.shdcnnPP.AppServer.IAnaliseVenda( dmGsi.UsuarioAtivo,  FormatDateTime( 'dd/mm/yyyy', wwDBDateTimePicker1.Date ), FormatDateTime( 'dd/mm/yyyy', wwDBDateTimePicker2.Date ) );
     MessageDlg('Fechamento Realizado com Sucesso!',mtInformation,[mbok],0);
    end;

end;

procedure TfrmParAnaliseVenda.FormCreate(Sender: TObject);
begin
 wwDBDateTimePicker1.DateTime := Date;
 wwDBDateTimePicker2.DateTime := Date;

 wwDBDateTimePicker4.DateTime := LastDayOfMonth( Date );
end;

end.


