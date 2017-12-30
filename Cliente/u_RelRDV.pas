unit u_RelRDV;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, MaskUtils;

type
  TResumo = Record
   CdOperacao : Integer;
   Conta      : String;
   Descricao  : String;
   Operacao   : String;
   Valor      : Real;
  end;

  TfrmRelRDV = class(TForm)
    QuickRep1: TQuickRep;
    QRBand2: TQRBand;
    QRShape17: TQRShape;
    QRLabel8: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape6: TQRShape;
    QRLabel5: TQRLabel;
    QRShape7: TQRShape;
    QRLabel6: TQRLabel;
    QRShape8: TQRShape;
    QRLabel7: TQRLabel;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape12: TQRShape;
    QRLabel11: TQRLabel;
    QRShape13: TQRShape;
    QRLabel12: TQRLabel;
    QRShape14: TQRShape;
    QRLabel13: TQRLabel;
    QRShape25: TQRShape;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape33: TQRShape;
    QRLabel24: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRShape23: TQRShape;
    QRShape18: TQRShape;
    QRShape20: TQRShape;
    QRShape16: TQRShape;
    QRShape15: TQRShape;
    QRShape5: TQRShape;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRShape19: TQRShape;
    QRDBText11: TQRDBText;
    QRShape21: TQRShape;
    QRDBText12: TQRDBText;
    QRShape24: TQRShape;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    PageHeaderBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRShape2: TQRShape;
    QRMemo1: TQRMemo;
    QRLabel4: TQRLabel;
    QRLabel25: TQRLabel;
    SummaryBand1: TQRBand;
    QRShape31: TQRShape;
    QRShape30: TQRShape;
    QRShape29: TQRShape;
    QRShape22: TQRShape;
    QRLabel18: TQRLabel;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRShape32: TQRShape;
    QRLabel23: TQRLabel;
    QRShape36: TQRShape;
    QRLabel27: TQRLabel;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRLabel28: TQRLabel;
    QRLabel30: TQRLabel;
    QRShape39: TQRShape;
    QRLabel29: TQRLabel;
    QRShape40: TQRShape;
    QRLabel31: TQRLabel;
    QRShape41: TQRShape;
    QRLabel32: TQRLabel;
    QRShape42: TQRShape;
    QRLabel33: TQRLabel;
    QRRichText1: TQRRichText;
    QRRichText2: TQRRichText;
    QRRichText3: TQRRichText;
    QRRichText4: TQRRichText;
    QRLabel14: TQRLabel;
    QRLabel34: TQRLabel;
    QRShape9: TQRShape;
    QRLabel35: TQRLabel;
    QRExpr4: TQRExpr;
    QRLabel36: TQRLabel;
    PageFooterBand1: TQRBand;
    QRShape34: TQRShape;
    QRLabel37: TQRLabel;
    QRExpr5: TQRExpr;
    QrlFuncionario: TQRLabel;
    QrlDepartamento: TQRLabel;
    QrlConta: TQRLabel;
    qrlblSaldoAtual: TQRLabel;
    QRShape43: TQRShape;
    QRLabel38: TQRLabel;
    QRExpr6: TQRExpr;
    QRShape44: TQRShape;
    QRLabel39: TQRLabel;
    QRExpr7: TQRExpr;
    QRShape45: TQRShape;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRShape46: TQRShape;
    QRLabel53: TQRLabel;
    QRShape47: TQRShape;
    QRDBText1: TQRDBText;
    QRSysData5: TQRSysData;
    QRShape48: TQRShape;
    QRSysData4: TQRSysData;
    QRLabel54: TQRLabel;
    qrlblTipoMoeda: TQRLabel;
    QRShape49: TQRShape;
    QrlTotalDespesas: TQRLabel;
    QRLabel55: TQRLabel;
    QRShape35: TQRShape;
    QRLabel26: TQRLabel;
    QRShape26: TQRShape;
    QRLabel17: TQRLabel;
    QRLabel56: TQRLabel;
    QRShape51: TQRShape;
    QRLabel57: TQRLabel;
    QRShape50: TQRShape;
    QRLabel58: TQRLabel;
    QRDBText2: TQRDBText;
    procedure QRExpr1Print(sender: TObject; var Value: String);
    procedure QRExpr2Print(sender: TObject; var Value: String);
    procedure QRExpr3Print(sender: TObject; var Value: String);
    procedure QRLabel25Print(sender: TObject; var Value: String);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel14Print(sender: TObject; var Value: String);
    procedure QRExpr4Print(sender: TObject; var Value: String);
    procedure QRLabel36Print(sender: TObject; var Value: String);
    procedure QRExpr5Print(sender: TObject; var Value: String);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qrlblSaldoAtualPrint(sender: TObject; var Value: String);
    procedure QRExpr6Print(sender: TObject; var Value: String);
    procedure QRExpr7Print(sender: TObject; var Value: String);
    procedure QRDBText2Print(sender: TObject; var Value: string);
  private
    { Private declarations }
  public
    { Public declarations }
    DebAdi        : Real;
    DebAdiBD      : Real;
    DebAdiBDE     : Real;
    DebAdiAmex    : Real;
    DebPas        : Real;
    Credito       : Real;
    Saldo         : Real;
    SaldoAnterior : Real;
    SaldoAtual    : Real;
    Resumo   : Array of TResumo;
    function AcharOp( CdOp : Integer ) : Integer;
  end;

var
  frmRelRDV: TfrmRelRDV;

implementation

uses u_dmRD,FuncoesCliente, u_dmGSI, u_ParImpRdv;

{$R *.DFM}

procedure TfrmRelRDV.QRExpr1Print(sender: TObject; var Value: String);
begin
 Value := Formatfloat( '#,##0.00', DebAdi );
end;

procedure TfrmRelRDV.QRExpr2Print(sender: TObject; var Value: String);
begin
value := Formatfloat( '#,##0.00', Credito );
end;

procedure TfrmRelRDV.QRExpr3Print(sender: TObject; var Value: String);
begin
 if Saldo < 1 then
    QRExpr3.Font.Color := clRed;

 Value := Formatfloat( '#,##0.00', Saldo );
end;

procedure TfrmRelRDV.QRLabel25Print(sender: TObject; var Value: String);
begin
 if not CheckSenha( dmGsi.UsuarioAtivo,'Despesas de Viagem', 'Parametro Final de impressão do RDV', False ) then
    Value := Value + ' ' + DateToStr( frmParImpRDV.dtpctFechInicial.DateTime )
 else
    Value := Value + ' ' + DateToStr( frmParImpRDV.dtpctFechInicial.DateTime ) + ' - ' + DateToStr( frmParImpRDV.dtpctFechFinal.DateTime );

end;

function TfrmRelRDV.AcharOp( CdOp : Integer ) : Integer;
var i,x : Integer;
begin
 x := -1;
 for i := 0 to Length(  Resumo ) - 1 do
     if ( CdOp = Resumo[i].CdOperacao ) then
        x := i;
 Result := x;
end;

procedure TfrmRelRDV.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var i : Integer;
begin
 QRRichText1.Lines.Clear;
 QRRichText2.Lines.Clear;
 QRRichText3.Lines.Clear;
 QRRichText4.Lines.Clear;

 for i := 0 to LengTh( Resumo ) - 1 do
    begin
     if Resumo[i].Operacao = 'C' then
        begin
         QRRichText1.Lines.Add( FormatMaskText( '9.9.9.99.999;0;',Resumo[i].Conta ) + ' - ' + Resumo[i].Descricao );
         QRRichText2.Lines.Add( FormatFloat( '###,###,##0.00', Resumo[i].Valor ) )
        end
     else
        begin
         QRRichText3.Lines.Add( FormatMaskText( '9.9.9.99.999;0;',Resumo[i].Conta ) + ' - ' + Resumo[i].Descricao );
         QRRichText4.Lines.Add( FormatFloat( '###,###,##0.00', Resumo[i].Valor ) );
         QrlTotalDespesas.Caption := FormatFloat( '###,###,##0.00', Resumo[i].Valor );
        end
    end;
end;

procedure TfrmRelRDV.QRLabel14Print(sender: TObject; var Value: String);
begin
 Value := Formatfloat( '#,##0.00', SaldoAnterior );

 if SaldoAnterior < 1 then
    QRLabel14.Font.Color := clRed;
end;

procedure TfrmRelRDV.QRExpr4Print(sender: TObject; var Value: String);
begin
 Value := Formatfloat( '#,##0.00', DebPas );
end;

procedure TfrmRelRDV.QRLabel36Print(sender: TObject; var Value: String);
begin
 if not frmParImpRDV.Conferencia then
    Value := '';
end;

procedure TfrmRelRDV.QRExpr5Print(sender: TObject; var Value: String);
begin
 Value := Formatfloat( '#,##0.00', DebAdiBD );
end;

procedure TfrmRelRDV.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 with dmRD.cdsRdv do
 begin
  QrlFuncionario.Caption  := FieldByName('RDVID').AsString + FieldByName('L_NOMEFUNCIONARIO').AsString;
  QrlDepartamento.Caption := FieldByName('L_DEPARTAMENTO').AsString;
  QrlConta.Caption        := FieldByName('L_CONTACONTABIL').AsString;
 end;
end;

procedure TfrmRelRDV.QRDBText2Print(sender: TObject; var Value: string);
begin
 Value := Value + 'AD'
end;

procedure TfrmRelRDV.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action    := cafree;
 frmRelRDV := nil;
end;

procedure TfrmRelRDV.qrlblSaldoAtualPrint(sender: TObject; var Value: String);
begin
 Value := FormatFloat( '#,##0.00', SaldoAtual );

 if Saldo < 1 then
    qrlblSaldoAtual.Font.Color := clRed;
end;

procedure TfrmRelRDV.QRExpr6Print(sender: TObject; var Value: String);
begin
 Value := Formatfloat( '#,##0.00', DebAdiBDE );
end;

procedure TfrmRelRDV.QRExpr7Print(sender: TObject; var Value: String);
begin
 Value := Formatfloat( '#,##0.00', DebAdiAmex );
end;

end.


