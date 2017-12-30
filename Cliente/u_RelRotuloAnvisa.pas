unit u_RelRotuloAnvisa;

interface

uses
  Windows, Forms, DB, DBClient, QRCtrls, QuickRpt, Controls, ExtCtrls,
  Classes, StdCtrls;

type
  TfrmRelRotuloAnvisa = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape4: TQRShape;
    QRMemo1: TQRMemo;
    QRMemo2: TQRMemo;
    QRShape5: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    qrlbDataFab: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRShape7: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    qrlbDescricaoAparelho: TQRLabel;
    Label1: TLabel;
    cdsRotulo: TClientDataSet;
    cdsRotuloEMPRESAID: TBCDField;
    cdsRotuloPARTNUMBERID: TStringField;
    cdsRotuloREGANVISAID: TStringField;
    dsRotulo: TDataSource;
    cdsRotuloDESCRICAONCM: TStringField;
    cdsRotuloDESCRICAOANVISA: TStringField;
    cdsRotuloPRODUTOID: TBCDField;
    cdsRotuloMODELOID: TStringField;
    cdsRotuloSERIE: TStringField;
    cdsRotuloNCMID: TStringField;
    qrlblConteudo: TQRLabel;
    cdsRotuloDESCRICAOPORTUGUES: TStringField;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    function RetornarRegAnvisa : String;
  public
    { Public declarations }
  end;

var
  frmRelRotuloAnvisa: TfrmRelRotuloAnvisa;

implementation

uses FuncoesCliente, SysUtils;

{$R *.dfm}


function TfrmRelRotuloAnvisa.RetornarRegAnvisa : String;
var iSql : String;
    cds : TClientDataSet;
begin
 Cds     := nil;
 iSQL    := ' SELECT ' +
            ' PP_CATALOGO.DESCRICAOANVISA, ' +
            ' PP_CATALOGO.REGANVISAID ' +
            ' FROM ' +
            ' PP_CATALOGO PP_CATALOGO ' +
            ' WHERE PP_CATALOGO.TIPO = ' + QuotedStr('A') +
            ' AND REGANVISAID = ' + QuotedStr( cdsRotuloREGANVISAID.AsString );

 try
  ExecDynamicProvider( -1, iSQL, Cds );
  Result := cds.FieldByName('DESCRICAOANVISA').AsString;
 finally
  FreeAndNil( cds );
 end;
end;

procedure TfrmRelRotuloAnvisa.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 if cdsRotuloDESCRICAOANVISA.IsNull then
    qrlbDescricaoAparelho.Caption := RetornarRegAnvisa
 else
    qrlbDescricaoAparelho.Caption := cdsRotuloDESCRICAOANVISA.AsString;
end;

procedure TfrmRelRotuloAnvisa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 frmRelRotuloAnvisa := Nil;
end;

end.
