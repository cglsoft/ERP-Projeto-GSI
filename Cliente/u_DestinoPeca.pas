unit u_DestinoPeca;

interface

uses
  Windows, Forms, StdCtrls, Buttons, ExtCtrls, wwdbedit, Wwdotdot, DBCtrls,
  SysUtils, Mask, Barcode, Controls, Classes, Dialogs, DB;

type
  TfrmDestinoPeca = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    barcode: TBarcode;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit6: TDBEdit;
    DBMemo1: TDBMemo;
    Panel1: TPanel;
    btnClassificar: TBitBtn;
    btnFechar: TBitBtn;
    wwDBComboDlg1: TwwDBComboDlg;
    wwDBComboDlg2: TwwDBComboDlg;
    wwDBComboDlg3: TwwDBComboDlg;
    DBEdit3: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBComboDlg1CustomDlg(Sender: TObject);
    procedure wwDBComboDlg2CustomDlg(Sender: TObject);
    procedure btnClassificarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure wwDBComboDlg3CustomDlg(Sender: TObject);
  private
    { Private declarations }
    procedure AtualizaOSPeca(OsId : String;ProdutoId,PecaId : Integer );
    procedure ImprimeEtiqueta;
  public
    { Public declarations }
  end;

var
  frmDestinoPeca : TfrmDestinoPeca;
  QtdPeca        : Integer;

implementation

{$R *.dfm}

uses FuncoesDSI, FuncoesCliente, u_dmOs, u_dmPP, u_dmGSI, u_EtiquetaPeca;

procedure TfrmDestinoPeca.FormClose(Sender: TObject;
  var Action: TCloseAction);
var Sair : Boolean;  
begin
 Sair := True;
 if QtdPeca >= 1 then
    begin
     MessageDlg('Esta Peça ainda não foi Classificada!',mtWarning,[mbOK],0);
     if MessageDlg('Tem certeza que deseja Sair!',mtWarning,[mbYes,mbNo],0) = mrNo then
        begin
         action := caNone;
         Sair   := False;
        end 
     else
        Sair := True;
    end;

 if Sair then
    begin
     if dmOS.cdsOsClassifPeca.State = dsInsert then
        dmOS.cdsOsClassifPeca.Cancel;
     action := cafree;
     frmDestinoPeca := nil;
    end;
end;

procedure TfrmDestinoPeca.wwDBComboDlg1CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa( dmOS.dsAparelho,'SERIEID;MODELOID',
                      dmOS.cdsOsClassifPecaSERIEID.AsString+';'+
                      dmOS.cdsOsClassifPecaMODELOID.AsString);
 ExecLoockupRetorno( dmOS.cdsOsClassifPeca,'SERIEID;MODELOID','SERIEID;MODELOID');
end;

procedure TfrmDestinoPeca.wwDBComboDlg2CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmPP.dsCatalogo,'MODELOID',dmOs.cdsOsClassifPecaMODELOID.AsString );
 ExecLoockupRetorno(dmOs.cdsOsClassifPeca,'MODELOID','MODELOID');
end;

procedure TfrmDestinoPeca.btnClassificarClick(Sender: TObject);
var ProdutoId,PecaId : Integer;
    OsId : String;
begin
 try
  try
   if QtdPeca < 1 then
      raise Exception.Create('Quantidade de peças inferior ao permitido ');

   if dmOS.cdsOsClassifPecaCLASSIFPECAID.IsNull then
      raise Exception.Create('Todos os campos devem ser preenchidos!');

   OsId      := dmOS.cdsOsClassifPecaOSID.AsString;
   ProdutoId := dmOS.cdsOsClassifPecaPRODUTOID.AsInteger;
   PecaId    := dmOS.cdsOsClassifPecaPECAID.AsInteger;

   dmOS.cdsOsClassifPeca.Post;
   AtualizaOSPeca( OsId, ProdutoId, PecaId ) ;
   ImprimeEtiqueta;
   if QtdPeca > 1 then
      begin
       dmOS.cdsOsClassifPeca.Insert;
       barcode.Digits := dmOS.cdsOsClassifPecaCODIGOBARRASID.AsString;
      end
   else
      begin
       Dec( QtdPeca );
       frmDestinoPeca.Close;
      end;
   Dec( QtdPeca );

  except
   on E: Exception do frmDestinoPeca.Close;
  end;
 finally

 end;
end;

procedure TfrmDestinoPeca.AtualizaOSPeca(OsId : String;ProdutoId,PecaId : Integer );
var iSQL : String;
begin
 iSQL := 'UPDATE OS_OSPECA'+
         '   SET MATERIALAVALIADO = 1,'+
         '       AVALIADOR = '+ QuotedStr( dmGsi.UsuarioAtivo )+
         ' WHERE OSID = '+ QuotedStr( OSID )+
         '      AND PECAID = '+ IntToStr( PecaId )+
         '      AND PRODUTOID = '+ IntToStr( ProdutoId );
 ExecDML( iSQL );
end;

procedure TfrmDestinoPeca.ImprimeEtiqueta;
begin
 try
  frmEtiquetaPeca := TfrmEtiquetaPeca.Create(nil);
  with frmEtiquetaPeca do
  begin
   //alterando os datasets para impressao da pesquisa
   QrDbTOsId1.DataSet := dmOS.cdsOsClassifPeca;
   QrDbTProdutoId1.DataSet := dmOS.cdsOsClassifPeca;
   QrDbTClassifPeca1.DataSet := dmOS.cdsOsClassifPeca;

   QrDbTOsId2.DataSet := dmOS.cdsOsClassifPeca;
   QrDbTProdutoId2.DataSet := dmOS.cdsOsClassifPeca;
   QrDbTClassifPeca2.DataSet := dmOS.cdsOsClassifPeca;

   QRBarcode1.Digits := dmOS.cdsOsClassifPeca.FieldByName('CODIGOBARRASID').AsString;
   QRBarcode2.Digits := dmOS.cdsOsClassifPeca.FieldByName('CODIGOBARRASID').AsString;

   QuickRep1.PrinterSettings.PrinterIndex := Impressora( '\\Expedicao\Zebra' );
   QuickRep1.PreviewModal;
  end;
 finally
  FreeAndNil( frmEtiquetaPeca.QuickRep1 );
  FreeAndNil( frmEtiquetaPeca );
 end;
end;

procedure TfrmDestinoPeca.FormCreate(Sender: TObject);
begin
 QtdPeca         := dmOS.cdsOSPecaClassifQUANTIDADE.AsInteger;
 barcode.Digits  := dmOS.cdsOsClassifPecaCODIGOBARRASID.AsString;
end;

procedure TfrmDestinoPeca.btnFecharClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmDestinoPeca.wwDBComboDlg3CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa( dmOS.dsClassifPeca,'CLASSIFPECAID',dmOS.cdsOsClassifPecaCLASSIFPECAID.AsString );
 ExecLoockupRetorno( dmOS.cdsOSClassifPeca,'CLASSIFPECAID','CLASSIFPECAID' );
end;

end.
