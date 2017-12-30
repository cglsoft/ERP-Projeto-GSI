unit u_ParRPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, fcLabel, ComCtrls;

type
  TfrmParRPS = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    fcLabel1: TfcLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmParRPS: TfrmParRPS;

implementation

uses u_dmRS, u_RelBaseINSS, FuncoesCliente;

{$R *.dfm}

procedure TfrmParRPS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action    := cafree;
 frmParRPS := nil;
end;

procedure TfrmParRPS.BitBtn2Click(Sender: TObject);
var iSQL : String;
begin
{ if DateTimePicker2.Date <= dmAS.cdsConfigDATA_FECHAMENTO.Value then
   begin
    ShowMessage('Período final de fechamento  está menor do que o fechamento anterior' + #13 +
                'O último fechamento foi em ' + DateToStr( tbConfigDATA_FECHAMENTO.Value ) );
    exit
   end; }


 with dmRS do
 begin
  iSQL := 'SELECT RS_RECIBO.RECIBOID,'+
          '       EF_FILIAL.FILIALID,'+
          '       EF_FILIAL.NOMEFANTASIA,'+
          '       RS_RECIBO.DATACALCULO,'+
          '       RS_RECIBO.PRESTADORID,'+
          '       RS_RECIBO.FRETE,'+
          '       RS_RECIBO.VLRSERVICO VLRSERVICORECIBO,'+
          '       RS_RECIBO.VLRIRRF,'+
          '       RS_RECIBO.VLRISS,'+
          '       RS_RECIBO.VLRINSS,'+
          '       RS_RECIBO.VLRDESCONTO,'+
          '       RS_RECIBO.VLRLIQUIDO,'+
          '       RS_RECIBO.VLRBASEINSSEMPRESA,'+
          '       RS_RECIBO.VLRINSSEMPRESA,'+
          '       RS_RECIBO.DESCRICAOSERVICO,'+
          '       RS_RECIBO.OBSERVACAO,'+
          '       RS_RECIBO.DATAVENCIMENTO,'+
          '       RS_RECIBO.USUARIO,'+
          '       RS_PRESTADOR.NOME,'+
          '       RS_PRESTADOR.ENDERECO,'+
          '       RS_PRESTADOR.CIDADE,'+
          '       RS_PRESTADOR.NUMERO,'+
          '       RS_PRESTADOR.SIGLAUFID,'+
          '       RS_PRESTADOR.CEPID,'+
          '       RS_PRESTADOR.CPFCNPJ,'+
          '       RS_PRESTADOR.INSCRPREFMUNICIPAL,'+
          '       RS_PRESTADOR.INSCRORGAOCLASSE,'+
          '       RS_PRESTADOR.TELEFONE,'+
          '       RS_PRESTADOR.FAX,'+
          '       RS_PRESTADORRECEB.DATAEXECUCAO,'+
          '       RS_PRESTADORRECEB.RAZAOSOCIAL,'+
          '       RS_PRESTADORRECEB.VLRSERVICO,'+
          '       RS_PRESTADORRECEB.VLRRETIDO'+
          '  FROM RS_RECIBO,'+
          '       RS_PRESTADOR,'+
          '       RS_PRESTADORRECEB,'+
          '       EF_FILIAL'+
          ' WHERE RS_PRESTADORRECEB.PRESTADORID(+) = RS_PRESTADOR.PRESTADORID'+
          '       AND RS_RECIBO.PRESTADORID = RS_PRESTADOR.PRESTADORID'+
          '       AND RS_RECIBO.FILIALID = EF_FILIAL.FILIALID';

          if DateTimePicker1.Checked then
             begin
              iSQL := iSQL + ' AND ( RS_PRESTADORRECEB.DATAEXECUCAO >= '+ QuotedStr( DateToStr( DateTimePicker1.Date ))+
                             ' OR  RS_PRESTADORRECEB.DATAEXECUCAO IS NULL ) ' +
                             ' AND ( RS_RECIBO.DATAVENCIMENTO >= '+ QuotedStr( DateToStr( DateTimePicker1.Date ));
             end;

          if DateTimePicker2.Checked then
             begin
              iSQL := iSQL + ' AND ( RS_PRESTADORRECEB.DATAEXECUCAO <= '+ QuotedStr( DateToStr( DateTimePicker1.Date ))+
                             ' OR  RS_PRESTADORRECEB.DATAEXECUCAO IS NULL ) ' +
                             ' AND ( RS_RECIBO.DATAVENCIMENTO <= '+ QuotedStr( DateToStr( DateTimePicker1.Date ));
             end;

         iSQL := iSQL + ' ORDER BY EF_FILIAL.FILIALID, RS_RECIBO.DATACALCULO';

  try
   ExecDynamicProvider(-1,iSQL,dmRS.cdsRelBaseINSS );
   if not cdsRelBaseINSS.IsEmpty then
      begin
        frmRelBaseINSS := TfrmRelBaseINSS.Create(nil);
        frmRelBaseINSS.QRLabel16.Caption := frmRelBaseINSS.QRLabel16.Caption +' '+ DateToStr(DateTimePicker1.Date)+ ' à ' +  DateToStr( DateTimePicker2.Date);
       try
        frmRelBaseINSS.QuickRep1.Preview;
       finally
        FreeAndNil( frmRelBaseINSS.QuickRep1 );
        FreeAndNil( frmRelBaseINSS );
       end;
      end;
  except on
   E : Exception do
   raise Exception.Create( E.message );
  end;
 end;
end;

end.
