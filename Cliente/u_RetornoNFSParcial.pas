unit u_RetornoNFSParcial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, DBClient;

type
  TfrmRetornoNFSParcial = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    mktBoas: TMaskEdit;
    btnFechar: TBitBtn;
    btnRetornar: TBitBtn;
    DBEdit8: TDBEdit;
    mktEmpenho: TMaskEdit;
    mktRevisadas: TMaskEdit;
    ckbxDocQuarent: TCheckBox;
    Label12: TLabel;
    mktDemo: TMaskEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure btnRetornarClick(Sender: TObject);
  private
    { Private declarations }
    function RetornoEmpenho : Boolean;
    procedure RetornoParcialNormal( QtdInformada : Real );
    procedure BaixaItemNFSRetornada( QtdInformada : Real; Sigla : String );
  public
    { Public declarations }
  end;

var
  frmRetornoNFSParcial: TfrmRetornoNFSParcial;

implementation

uses u_RetornoNFS, u_dmGSI, FuncoesCliente, FuncoesDSI, u_dmEF, DB, Math;

{$R *.dfm}


procedure TfrmRetornoNFSParcial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 frmRetornoNFSParcial := Nil;
end;

procedure TfrmRetornoNFSParcial.btnFecharClick(Sender: TObject);
begin
 Close
end;

procedure TfrmRetornoNFSParcial.btnRetornarClick(Sender: TObject);
var QtdInformada : Currency;
begin
 with frmRetornoNFS do
 begin
  QtdInformada     := StrToInt( mktBoas.Text ) +
                      StrToInt( mktRevisadas.Text ) +
                      StrToInt( mktEmpenho.Text ) +
                      StrToInt( mktDemo.Text );

  if QtdInformada < 1 then
     begin
      MessageDlg('Informar pelo menos um campo para dar seqüência no processo.', mtInformation, [mbOk], 0);
      exit;
     end;

  if ( QtdInformada > ( cdsRetornoNFS.FieldByName('QUANTIDADE').AsCurrency -
                        cdsRetornoNFS.FieldByName('QTDRETORNA').AsCurrency ) ) then
     begin
      MessageDlg('Quantidade total informada maior que a quantidade disponível para retorno.', mtInformation, [mbOk], 0);
      exit;
     end;

  if ( cdsRetornoNFS.FieldByName('RETORNO').Value = 'JR' ) or ( cdsRetornoNFS.FieldByName('RETORNO').Value = 'DV' ) then
     begin
      MessageDlg('Item da NF já retornou em outra NF ou já foi devolvido', mtInformation, [mbOk], 0);
      exit
     end;

  // Retorno Parcial
  if StrToInt( mktEmpenho.Text ) > 0 then
     if not RetornoEmpenho then
        Exit;

  // Retorno parcial normal
  if QtdInformada > 0 then
     RetornoParcialNormal( QtdInformada );

  MessageDlg('Item da Nota fiscal ' + IntToStr( cdsRetornoNFS.FieldByName('NFSID').Value ) + ' , retornada com sucesso. ', mtInformation, [mbOk], 0);
 end;
 Close;
end;

function TfrmRetornoNFSParcial.RetornoEmpenho : Boolean;
var cds : TClientDataSet;
    isql, sqlPeca : String;
    DocEntr : Integer;
begin
 DocEntr := IfThen( ckbxDocQuarent.Checked, 1, 0);
 Result  := False;
 cds     := Nil;

 try
  if frmRetornoNFS.cdsRetornoNFS.FieldByName('OSID').IsNull then
     begin
      MessageDlg('Não existe Ordem de Serviço para esta Nota Fiscal.', mtInformation, [mbOk], 0);
      Exit;
     end;

  isql  := 'SELECT OS_OSPECA.OSID, ( MAX( NVL( OS_OSPECA.PECAID, 0 ) ) + 1 ) AS PECAID ' +
           ' FROM OS_OS ' +
           ' LEFT OUTER JOIN OS_OSPECA ON ( OS_OSPECA.OSID = OS_OS.OSID ) ' +
           'WHERE OS_OS.OSID = ' + QuotedStr( frmRetornoNFS.cdsRetornoNFS.FieldByName('OSID').Value ) +
           'GROUP BY  OS_OSPECA.OSID ';

  ExecDynamicProvider( -1,isql, cds );

  if cds.IsEmpty then
     begin
      MessageDlg('Não existe Ordem de Serviço para esta Nota Fiscal.', mtInformation, [mbOk], 0);
      Exit;
     end;

  with frmRetornoNFS do
  sqlPeca := 'INSERT INTO OS_OSPECA( OSID, PECAID, EMPRESAID, PRODUTOID, NFSID, ' +
                                    'DATAEMISSAOID,DATAPECA,QUANTIDADE,UTILIZADO, IMPRESSO, ' +
                                    'ESTOQUEUTILIZADO, MATERIALAVALIADO, DOCUMENTOENTRADA, USUARIO )' +
                           'VALUES (' +
                                    QuotedStr( cdsRetornoNFS.FieldByName('OSID').AsString ) + ',' +
                                    QuotedStr( cds.FieldByName('PECAID').AsString ) + ',' +
                                    QuotedStr( cdsRetornoNFS.FieldByName('EMPRESAID').AsString ) + ',' +
                                    QuotedStr( cdsRetornoNFS.FieldByName('PRODUTOID').AsString ) + ',' +
                                    QuotedStr( cdsRetornoNFS.FieldByName('NFSID').AsString ) + ',' +
                                    QuotedStr( cdsRetornoNFS.FieldByName('DATAEMISSAOID').AsString ) + ',' +
                                    QuotedStr( DateToStr( Date ) )+ ',' +
                                    mktEmpenho.Text + ',' +
                                    '0' + ',' +
                                    '0' + ',' +
                                    QuotedStr( 'E' ) + ',' +
                                    '0' + ',' +
                                    IntToStr( DocEntr ) + ',' +
                                    QuotedStr( dmGSI.UsuarioAtivo) + ')';

  ExecDML( sqlPeca );
  Result := True;

 finally
  FreeAndNil( cds );
 end;
end;

procedure TfrmRetornoNFSParcial.RetornoParcialNormal( QtdInformada : Real );
begin
 with dmEF, frmRetornoNFS do
 begin
  cdsPdeItem.Insert;
  cdsPdeItemALIQUOTAICMS.AsFloat   := cdsRetornoNFS.FieldByName('ALIQUOTAICMS').AsFloat;
  cdsPdeItemPRODUTOID.Value        := cdsRetornoNFS.FieldByName('PRODUTOID').Value;
  cdsPdeItemNFSID.Value            := cdsRetornoNFS.FieldByName('NFSID').Value;
  cdsPdeItemDATAEMISSAONFSID.Value := cdsRetornoNFS.FieldByName('DATAEMISSAOID').AsSQLTimeStamp;

  if cdsRetornoNFS.FieldByName('QUANTIDADE').Value = QtdInformada then
     cdsPdeItemQUANTIDADE.Value := cdsRetornoNFS.FieldByName('QUANTIDADE').Value
  else
     cdsPdeItemQUANTIDADE.Value := QtdInformada;

  cdsPdeItemVLRPRECOUNITARIO.Value  := cdsRetornoNFS.FieldByName('VLRPRECOUNITARIO').AsFloat;

  // Na emissão da NFS o sistema irá gerar o saldo em Saldo em empenho
  if StrToInt( mktEmpenho.Text ) > 0 then
     begin
      cdsPdeItemEMPENHO.Value           := 1;
      cdsPdeItemQUANTIDADEEMPENHO.Value := StrToCurr( mktEmpenho.Text );
     end;

  cdsPdeItemQTDRETORNA.Value := QtdInformada;
  if cdsPdeItemQTDRETORNA.Value = cdsRetornoNFS.FieldByName('QUANTIDADE').Value then
     cdsPdeItemRETORNO.Value := 'JR'
  else
     cdsPdeItemRETORNO.Value := 'RP';

  // Baixar a Nota Fiscal de Saída que está sendo retornada
  BaixaItemNFSRetornada( QtdInformada, cdsPdeItemRETORNO.Value );

  // Posicionar o ponteiro no último registro para evitar gravar o itembar
  // errado igual ao primeiro registro e já grava o item.
  cdsPdeItem.Last;

  // Adicionar peças Novas
  if StrToInt( mktBoas.Text ) > 0 then
     begin
      cdsPdeItemBar.Insert;
      cdsPdeItemBarPRODUTOID.Value        := cdsRetornoNFS.FieldByName('PRODUTOID').Value;
      cdsPdeItemBarQUANTIDADE.Value       := StrToInt( mktBoas.Text );
      cdsPdeItemBarESTOQUEUTILIZADO.Value := 'N';
      cdsPdeItemBar.Post;
     end;

  // Adicionar peças Revisadas
  if StrToInt( mktRevisadas.Text ) > 0 then
     begin
      cdsPdeItemBar.Insert;
      cdsPdeItemBarPRODUTOID.Value        := cdsRetornoNFS.FieldByName('PRODUTOID').Value;
      cdsPdeItemBarQUANTIDADE.Value       := StrToInt( mktRevisadas.Text );
      cdsPdeItemBarESTOQUEUTILIZADO.Value := 'R';
      cdsPdeItemBar.Post;
     end;

  // Adicionar peças Empenho
  if StrToInt( mktEmpenho.Text ) > 0 then
     begin
      cdsPdeItemBar.Insert;
      cdsPdeItemBarPRODUTOID.Value        := cdsRetornoNFS.FieldByName('PRODUTOID').Value;
      cdsPdeItemBarQUANTIDADE.Value       := StrToInt( mktEmpenho.Text );
      cdsPdeItemBarESTOQUEUTILIZADO.Value := 'E';
      cdsPdeItemBar.Post;
     end;

  // Adicionar peças em Demonstração
  if StrToInt( mktDemo.Text ) > 0 then
     begin
      cdsPdeItemBar.Insert;
      cdsPdeItemBarPRODUTOID.Value        := cdsRetornoNFS.FieldByName('PRODUTOID').Value;
      cdsPdeItemBarQUANTIDADE.Value       := StrToInt( mktEmpenho.Text );
      cdsPdeItemBarESTOQUEUTILIZADO.Value := 'D';
      cdsPdeItemBar.Post;
     end;
 end;

end;

procedure TfrmRetornoNFSParcial.BaixaItemNFSRetornada( QtdInformada : Real; Sigla : String );
var isql : String;
begin
 isql := 'UPDATE EF_NFSITEM' +
         ' SET' +
         '  EF_NFSITEM.QTDRETORNA     = EF_NFSITEM.QTDRETORNA + ' + SubstituiString( FormatFloat( '#,##0.000000', QtdInformada) , ',', '.' )  + ',' +
         '  EF_NFSITEM.RETORNO        = ' +  QuotedStr( Sigla ) +
         ' WHERE' +
         '  EF_NFSITEM.EMPRESAID          = ' + dmEF.cdsPdeItemEMPRESAID.AsString +
         '  AND EF_NFSITEM.NFSID          = ' + dmEF.cdsPdeItemNFSID.AsString +
         '  AND EF_NFSITEM.DATAEMISSAOID  = ' + QuotedStr( dmEF.cdsPdeItemDATAEMISSAONFSID.AsString ) +
         '  AND EF_NFSITEM.PRODUTOID      = ' + dmEF.cdsPdeItemPRODUTOID.AsString;
  ExecDML(  isql );
end;


end.
