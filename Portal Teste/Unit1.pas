unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, SHDocVw, StdCtrls, Buttons, FMTBcd, Provider, DB, SqlExpr,
  DBClient, DBXpress, WideStrings;

type
  TForm1 = class(TForm)
    opdlgAttachFile: TOpenDialog;
    opdlgCorpoMSG: TOpenDialog;
    btnAttachCorpo: TBitBtn;
    Label2: TLabel;
    WebBrowser1: TWebBrowser;
    Button1: TButton;
    sqldtsConfig: TSQLDataSet;
    dsprvConfig: TDataSetProvider;
    cdsConfig: TClientDataSet;
    dsConfig: TDataSource;
    sqlcnnTOSHIBA: TSQLConnection;
    sqldtsConfigEMPRESAID: TBCDField;
    sqldtsConfigTIPOOSID: TStringField;
    sqldtsConfigFILIALID: TBCDField;
    sqldtsConfigTIPOOSGARANTIAID: TStringField;
    sqldtsConfigSTATUS: TBCDField;
    sqldtsConfigDIRETORIOEXPORT: TStringField;
    sqldtsConfigDIASVALIDADEOS: TBCDField;
    sqldtsConfigMESATUAL: TBCDField;
    sqldtsConfigVLRDIARIA: TBCDField;
    sqldtsConfigVLRREFEICOES: TBCDField;
    sqldtsConfigVLRKM: TBCDField;
    sqldtsConfigKMID: TBCDField;
    sqldtsConfigADIANTAMENTOID: TBCDField;
    sqldtsConfigMEMOPAGARID: TBCDField;
    sqldtsConfigMEMORECEBERID: TBCDField;
    sqldtsConfigHORASCREDID: TBCDField;
    sqldtsConfigPP_MARGEMCABECALHO: TBCDField;
    sqldtsConfigPP_MARGEMPARAGRAFO: TBCDField;
    sqldtsConfigPP_ESTILOFONTE: TStringField;
    sqldtsConfigPP_TAMANHOFONTE: TBCDField;
    sqldtsConfigPP_IMPRIMIR: TBCDField;
    sqldtsConfigPP_VISUALIZAR: TBCDField;
    sqldtsConfigPP_DIRETORIODESTINO: TStringField;
    sqldtsConfigPP_NOMEGERENTE: TStringField;
    sqldtsConfigPP_CARGO: TStringField;
    sqldtsConfigRS_DATAFECHAMENTO: TSQLTimeStampField;
    sqldtsConfigHTMLPORTAL: TMemoField;
    cdsConfigEMPRESAID: TBCDField;
    cdsConfigTIPOOSID: TStringField;
    cdsConfigFILIALID: TBCDField;
    cdsConfigTIPOOSGARANTIAID: TStringField;
    cdsConfigSTATUS: TBCDField;
    cdsConfigDIRETORIOEXPORT: TStringField;
    cdsConfigDIASVALIDADEOS: TBCDField;
    cdsConfigMESATUAL: TBCDField;
    cdsConfigVLRDIARIA: TBCDField;
    cdsConfigVLRREFEICOES: TBCDField;
    cdsConfigVLRKM: TBCDField;
    cdsConfigKMID: TBCDField;
    cdsConfigADIANTAMENTOID: TBCDField;
    cdsConfigMEMOPAGARID: TBCDField;
    cdsConfigMEMORECEBERID: TBCDField;
    cdsConfigHORASCREDID: TBCDField;
    cdsConfigPP_MARGEMCABECALHO: TBCDField;
    cdsConfigPP_MARGEMPARAGRAFO: TBCDField;
    cdsConfigPP_ESTILOFONTE: TStringField;
    cdsConfigPP_TAMANHOFONTE: TBCDField;
    cdsConfigPP_IMPRIMIR: TBCDField;
    cdsConfigPP_VISUALIZAR: TBCDField;
    cdsConfigPP_DIRETORIODESTINO: TStringField;
    cdsConfigPP_NOMEGERENTE: TStringField;
    cdsConfigPP_CARGO: TStringField;
    cdsConfigRS_DATAFECHAMENTO: TSQLTimeStampField;
    cdsConfigHTMLPORTAL: TMemoField;
    procedure btnAttachCorpoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnAttachCorpoClick(Sender: TObject);
var Flags : OleVariant;
begin
 if opdlgCorpoMSG.Execute then
    WebBrowser1.Navigate(WideString(opdlgCorpoMSG.FileName), Flags, Flags, Flags, Flags);

end;

procedure TForm1.Button1Click(Sender: TObject);
var Flags : OleVariant;
begin
 cdsConfig.Open;
 cdsConfigHTMLPORTAL.SaveToFile( 'C:\PORTAL.HTML' );
 WebBrowser1.Navigate( WideString('C:\PORTAL.HTML'), Flags, Flags, Flags, Flags);

end;

end.
