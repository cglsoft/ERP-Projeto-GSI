unit u_RelOS;

interface

uses
  Windows, Forms, SysUtils, QRCtrls, QuickRpt, Classes, Controls,
  ExtCtrls, DBClient;

type
  TfrmRelOS = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText16: TQRDBText;
    QRLDescTermo: TQRLabel;
    QRLObsContrato: TQRLabel;
    QrlEndereco: TQRLabel;
    QrlBairro: TQRLabel;
    QrlEmail: TQRLabel;
    QrlTelefone: TQRLabel;
    QrlFax: TQRLabel;
    QrlKM: TQRLabel;
    QrlRefeicoes: TQRLabel;
    QrlDiaria: TQRLabel;
    QrlHESP: TQRLabel;
    QrlHTRANSP: TQRLabel;
    QrlHTRAB: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText24: TQRDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QrlHTRABPrint(sender: TObject; var Value: String);
    procedure QRDBText5Print(sender: TObject; var Value: string);
  private
    { Private declarations }
    procedure PesquisaDadosFilial;
    procedure PesquisaDadosConfig;
  public
    { Public declarations }
    ImprimirValores : Boolean;
  end;

var
  frmRelOS: TfrmRelOS;

implementation

uses u_dmOs, FuncoesCliente, u_dmAS;

{$R *.DFM}

procedure TfrmRelOS.PesquisaDadosFilial;
var cds  : TClientDataSet;
    iSQL : String;
begin
 cds  := nil;
 iSQL := 'SELECT EF_FILIAL.ENDERECO,EF_FILIAL.BAIRRO,EF_FILIAL.EMAIL, '+
          'EF_FILIAL.FAX,EF_FILIAL.TELEFONE '+
         'FROM '+
          'EF_FILIAL '+
         'WHERE '+
          'EF_FILIAL.FILIALID = '+ dmOs.cdsOsFILIALID.AsString;
 try
  ExecDynamicProvider( -1,iSQL,cds );

  if not cds.IsEmpty then
     begin
      QrlEndereco.Caption := cds.FieldByName('ENDERECO').AsString;
      QrlBairro.Caption   := cds.FieldByName('BAIRRO').AsString;
      QrlEmail.Caption    := 'Email: '+cds.FieldByName('EMAIL').AsString;
      QrlFax.Caption      := 'Fax: '+cds.FieldByName('FAX').AsString;
      QrlTelefone.Caption := 'Fone: '+cds.FieldByName('TELEFONE').AsString;
      cds.Close;
     end
  else
    begin
     QrlEndereco.Caption := '';
     QrlBairro.Caption   := '';
     QrlEmail.Caption    := '';
     QrlFax.Caption      := '';
     QrlTelefone.Caption := '';
    end;
  finally
    FreeAndNil( cds );
  end;
end;

procedure TfrmRelOS.PesquisaDadosConfig;
var cds  : TClientDataSet;
    iSQL : String;
begin
 QrlDiaria.Caption    := FormatFloat('###0.00',dmAS.cdsConfigVLRDIARIA.AsFloat);
 QrlRefeicoes.Caption := FormatFloat('###0.00',dmAS.cdsConfigVLRREFEICOES.AsFloat);
 QrlKM.Caption        := FormatFloat('###0.00/Km',dmAS.cdsConfigVLRKM.AsFloat);

 cds  := nil;
 iSQL := 'SELECT OS_CUSTOHORA.VLRHORATRAB,'+
         '       OS_CUSTOHORA.VLRHORATRANSP,'+
         '       OS_CUSTOHORA.VLRHORAESPERA '+
         '  FROM PP_CATALOGO,'+
         '       OS_OS,'+
         '       OS_CUSTOHORA'+
         ' WHERE OS_OS.MODELOID = PP_CATALOGO.MODELOID AND '+
         '       PP_CATALOGO.CUSTOHORAID = OS_CUSTOHORA.CUSTOHORAID AND '+
         '       PP_CATALOGO.MODELOID = '+QuotedStr( dmOs.cdsOsMODELOID.AsString );
  try
   ExecDynamicProvider( -1,iSQL,cds );

   if not cds.IsEmpty then
      begin
       QrlHTRAB.Caption   := FormatFloat('###0.00/h',cds.FieldByName('VLRHORATRAB').AsFloat);
       QrlHTRANSP.Caption := FormatFloat('###0.00/h',cds.FieldByName('VLRHORATRANSP').AsFloat);
       QrlHESP.Caption    := FormatFloat('###0.00/h',cds.FieldByName('VLRHORAESPERA').AsFloat);
       cds.Close;
      end
   else
     begin
      QrlHTRAB.Caption   := '';
      QrlHTRANSP.Caption := '';
      QrlHESP.Caption    := '';
     end;
  finally
   FreeAndNil( cds );
  end;

end;


procedure TfrmRelOS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := caFree;
 frmRelOS  := Nil;
end;

procedure TfrmRelOS.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 PesquisaDadosFilial;
 PesquisaDadosConfig;
end;

procedure TfrmRelOS.QRDBText5Print(sender: TObject; var Value: string);
begin
 Value := Trim( Value ) + ' '  + dmOS.cdsOsNUMERO.Value;
end;

procedure TfrmRelOS.QrlHTRABPrint(sender: TObject; var Value: String);
begin
 if not ImprimirValores then
    Value := '';
end;

end.
