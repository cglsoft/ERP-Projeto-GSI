unit u_Processo;

interface

uses
  Windows, Forms, SysUtils, Dialogs, ImgList, Controls, Classes, ActnList,
  XPStyleActnCtrls, ActnMan, tmbToolEdicaoTop, ActnCtrls, ToolWin, ComCtrls,
  tmbToolEdicaoBottom, fcStatusBar, tmbToolEdicaoLista, Grids, DateUtils,
  Wwdbigrd, Wwdbgrid, Buttons, ExtCtrls, DBCtrls, wwdbdatetimepicker,
  wwdbedit, Wwdotdot, StdCtrls, Mask, DBGrids, DBClient;

type
  TfrmProcesso = class(TForm)
    actmngManutencao: TActionManager;
    ImageList1: TImageList;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    actImpressao: TAction;
    actExportar: TAction;
    tbsTmbj: TTabSheet;
    Panel4: TPanel;
    Label6: TLabel;
    Label2: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    DBEdit3: TDBEdit;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    GroupBox3: TGroupBox;
    Label17: TLabel;
    DBCheckBox2: TDBCheckBox;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit2: TDBEdit;
    Label21: TLabel;
    TabSheet2: TTabSheet;
    Label22: TLabel;
    wwDBComboDlg1: TwwDBComboDlg;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    Label5: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBRadioGroup2: TDBRadioGroup;
    DBEdit9: TDBEdit;
    DBRadioGroup3: TDBRadioGroup;
    DBEdit11: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    GroupBox5: TGroupBox;
    DBRadioGroup4: TDBRadioGroup;
    DBRadioGroup5: TDBRadioGroup;
    DBRadioGroup6: TDBRadioGroup;
    DBRadioGroup7: TDBRadioGroup;
    DBRadioGroup8: TDBRadioGroup;
    wwDBComboDlg2: TwwDBComboDlg;
    wwDBComboDlg5: TwwDBComboDlg;
    wwDBComboDlg6: TwwDBComboDlg;
    wwDBComboDlg7: TwwDBComboDlg;
    wwDBComboDlg8: TwwDBComboDlg;
    ActionToolBar1: TActionToolBar;
    tmbEdicaoTop2: TtmbEdicaoTop;
    CoolBar1: TCoolBar;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    tmbEdicaoBottom1: TtmbEdicaoBottom;
    tmbEdicaoLista1: TtmbEdicaoLista;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBEdit8: TDBEdit;
    Label24: TLabel;
    Label23: TLabel;
    DBEdit5: TDBEdit;
    wwDBComboDlg9: TwwDBComboDlg;
    dbgrdPadraoPesquisa: TDBGrid;
    BitBtn1: TBitBtn;
    actCadastrarProduto: TAction;
    Label28: TLabel;
    wwDBComboDlg12: TwwDBComboDlg;
    DBEdit16: TDBEdit;
    Label29: TLabel;
    DBEdit20: TDBEdit;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    GroupBox4: TGroupBox;
    Label10: TLabel;
    Label18: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label1: TLabel;
    Label27: TLabel;
    Label30: TLabel;
    DBEdit23: TDBEdit;
    DBEdit25: TDBEdit;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    DBEdit26: TDBEdit;
    DBCheckBox3: TDBCheckBox;
    wwDBComboDlg3: TwwDBComboDlg;
    wwDBComboDlg4: TwwDBComboDlg;
    DBCheckBox4: TDBCheckBox;
    DBEdit1: TDBEdit;
    wwDBComboDlg10: TwwDBComboDlg;
    DBEdit10: TDBEdit;
    DBEdit12: TDBEdit;
    wwDBComboDlg11: TwwDBComboDlg;
    DBEdit14: TDBEdit;
    DBEdit24: TDBEdit;
    TabSheet4: TTabSheet;
    Label9: TLabel;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    Label31: TLabel;
    actCopiarProcesso: TAction;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure actExportarExecute(Sender: TObject);
    procedure DBEdit3Change(Sender: TObject);
    procedure wwDBComboDlg1CustomDlg(Sender: TObject);
    procedure wwDBComboDlg2CustomDlg(Sender: TObject);
    procedure wwDBComboDlg3CustomDlg(Sender: TObject);
    procedure wwDBComboDlg4CustomDlg(Sender: TObject);
    procedure wwDBComboDlg5CustomDlg(Sender: TObject);
    procedure wwDBComboDlg6CustomDlg(Sender: TObject);
    procedure wwDBComboDlg7CustomDlg(Sender: TObject);
    procedure wwDBComboDlg8CustomDlg(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure actImpressaoExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure wwDBComboDlg9CustomDlg(Sender: TObject);
    procedure wwgrdProcessoItensDblClick(Sender: TObject);
    procedure wwDBComboDlg10CustomDlg(Sender: TObject);
    procedure wwDBComboDlg11CustomDlg(Sender: TObject);
    procedure actCadastrarProdutoExecute(Sender: TObject);
    procedure wwDBComboDlg12CustomDlg(Sender: TObject);
    procedure actCopiarProcessoExecute(Sender: TObject);
  private
    { Private declarations }
    function ExportaTMBJ( Caminho : String ): String;
  public
    { Public declarations }
  end;

var
  frmProcesso: TfrmProcesso;

implementation

uses FuncoesCliente, FuncoesDSI, u_dmIT, u_dmEF, u_RelPedidoTmbj, u_RelPedidoNx,
 u_RelPedidoPza, u_ProcessoItem, u_ProcessoUtil;

{$R *.dfm}

function TfrmProcesso.ExportaTMBJ( Caminho : String ): String;
var Ano, Request, Arq, X, Grupo : String;
    F : TextFile;
    i : Integer;
begin
 Result := '';

 Ano := FormatDateTime( 'yy', dmIT.cdsProcessoDATAPROCESSOID.AsDateTime );

 try
  try   // Except
   { Retornar o Procedimento quando não houver nenhum registro }
   if dmIT.cdsProcesso.IsEmpty then
      Exit;

   Arq := Caminho + dmIT.cdsProcesso.FieldByName('L_SIGLAPROCESSO').AsString +
          '-' + dmIT.cdsProcesso.FieldByName('PROCESSOID').AsString + '.TXT';

   AssignFile( F, Arq );
   ReWrite(F);

   Grupo := dmIT.cdsProcessoItemL_SIGLAGRUPO.AsString;

   Writeln( F, '//Parts' );

   Writeln( F, 'Category : ' + dmIT.cdsProcesso.FieldByName('L_DESCRICAOTIPOCATEGORIA').AsString );
   if dmIT.cdsProcessoItem.FieldByName('PRIORIDADE').AsString = 'S' then
      Writeln( F, 'Priority : SOS' )
   else
      Writeln( F, 'Priority : ' + dmIT.cdsProcessoItem.FieldByName('PRIORIDADE').AsString );
   Writeln( F, 'Requirement Reason : ' + dmIT.cdsProcesso.FieldByName('L_DESCRICAORAZAOEXIGENCIA').AsString );
   Writeln( F, 'Claim Number : ' + dmIT.cdsProcesso.FieldByName('PROCESSOID').AsString + '/' + Ano  );
   Writeln( F, 'Agent Code : ' + dmIT.cdsProcesso.FieldByName('NUMAGENTE').AsString );
   Writeln( F, 'Agent Name : TMB' );
   Writeln( F, 'Country Name : BRAZIL' );
   Writeln( F, 'Destination Country : ' + dmIT.cdsProcesso.FieldByName('PAISDESTINO').AsString );
   Writeln( F, 'Reported By : ' + dmIT.cdsProcesso.FieldByName('L_REMETENTEJAPAO').AsString );
   Writeln( F, 'Customer Name : ' + dmIT.cdsProcesso.FieldByName('L_NOMECLIENTE').AsString );
   Writeln( F, 'Customer Address : ' + dmIT.cdsProcesso.FieldByName('L_ENDERECOCLIENTE').AsString );
   Writeln( F, 'Shipment Code : ' + dmIT.cdsProcesso.FieldByName('NUMREMESSA').AsString );
   Writeln( F, 'Modality : ' + Grupo );
   Writeln( F, 'System Model Name : ' + dmIT.cdsProcessoItem.FieldByName('MODELOID').AsString );
   Writeln( F, 'System Pet Name : ' );
   Writeln( F, 'System Serial Number : ' + dmIT.cdsProcessoItem.FieldByName('SERIEID').AsString );
   Writeln( F, 'System Installed Date : ' + FormatDateTime( 'YYYY/MM/DD', dmIT.cdsProcessoItem.FieldByName('DATAINSTALEQUIP').AsDateTime ) );
   Writeln( F, 'System Billing Date : ' );
   Writeln( F, 'PO Number : ' + dmIT.cdsProcessoItemPEDIDOORIGINAL.Value );
   Writeln( F, 'NQ Number : ' + dmIT.cdsProcessoItem.FieldByName('TSBREFID').AsString );
   Writeln( F, 'Unit Model Name : ' + dmIT.cdsProcessoItem.FieldByName('NOMEUNIDADE').AsString );
   Writeln( F, 'Unit Pet Name : ' );
   Writeln( F, 'Unit Serial Number : ' );
   Writeln( F, 'Failure Date : ' + FormatDateTime( 'YYYY/MM/DD', dmIT.cdsProcessoItem.FieldByName('DATAFALHAEQUIP').AsDateTime ) );
   Writeln( F, 'Error Code : ' );
   Writeln( F, 'Software Revision : ' );
   Writeln( F, 'Frequency : ' + dmIT.cdsProcesso.FieldByName('L_DESCRICAOFREQUENCIA').AsString );
   Writeln( F, 'Description : ' + dmIT.cdsProcesso.FieldByName('OBSERVACAO').AsString );
   Writeln( F, 'Supplement : ' );

   if dmIT.cdsProcesso.FieldByName('TIPOREQUISICAO').AsString = 'A' then
      Request := 'REPAIR';
   if dmIT.cdsProcesso.FieldByName('TIPOREQUISICAO').AsString = 'B' then
      Request := 'REPLACEMENT';
   if dmIT.cdsProcesso.FieldByName('TIPOREQUISICAO').AsString = 'C' Then
      Request := 'CREDIT';
   Writeln( F, 'Request Type : ' + Request );

   if dmIT.cdsProcesso.FieldByName('USOMEDICO').AsInteger = 1 then
      X := 'Y'
   else
      X := 'N';
   Writeln( F, 'Medical Use : ' + X );

   if dmIT.cdsProcesso.FieldByName('PERGUNTA1').AsInteger = 1 then
      X := 'Y'
   else
      X := 'N';
   Writeln( F, 'Q1 Other Site : ' + X );

   if dmIT.cdsProcesso.FieldByName('PERGUNTA2').AsInteger = 1 then
      X := 'Y'
   else
      X := 'N';
   Writeln( F, 'Q2 Relapse : ' + X );

   if dmIT.cdsProcesso.FieldByName('PERGUNTA3').AsInteger = 1 then
      X := 'Y'
   else
      X := 'N';
   Writeln( F, 'Q3 Specification Failure : ' + X );

   if dmIT.cdsProcesso.FieldByName('PERGUNTA4').AsInteger = 1 then
      X := 'Y'
   else
      X := 'N';
   Writeln( F, 'Q4 Software Failure : ' + X );

   if dmIT.cdsProcesso.FieldByName('PERGUNTA5').AsInteger = 1 then
      X := 'Y'
   else
      X := 'N';
   Writeln( F, 'Q5 MDR : ' + X );

   dmIT.cdsProcessoItem.First;
   while not dmIT.cdsProcessoItem.Eof do
   begin
    for i := 1 to dmIT.cdsProcessoItem.FieldByName('QTDLIBERADA').AsInteger do
    begin
     Writeln( F, '//Parts Request' );
     Writeln( F, 'Requested Parts Number : ' + dmIT.cdsProcessoItem.FieldByName('PARTNUMBERID').AsString );
     Writeln( F, 'Requested Parts MCode : ' );
     Writeln( F, 'Requested Parts Name  : ' + dmIT.cdsProcessoItem.FieldByName('DESCRICAOINGLES').AsString );
     Writeln( F, 'Defective Parts Number To Be Returned : Gr ' );
     Writeln( F, 'Defective Parts MCode To Be Returned : ' );
    end;
    dmIT.cdsProcessoItem.Next;
   end;

   Writeln( F, '//End' );
   CloseFile( F );
   Result := Arq;
  except
    on E:Exception do
       raise Exception.Create(E.Message);
  end;
 finally

 end;
end;

procedure TfrmProcesso.FormCreate(Sender: TObject);
begin
 tmbEdicaoLista1.TtmbClassOwnerEspec := TfrmProcessoItem;
 tmbEdicaoLista1.TtmbFormOwnerEspec  := frmProcessoItem;
end;

procedure TfrmProcesso.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 if not FinalFormulario(dmIT.cdsProcesso,' do Processo de Importação') then
    Action := caNone
 else
    begin
     Action      := caFree;
     frmProcesso := Nil;
    end;
end;

procedure TfrmProcesso.actCopiarProcessoExecute(Sender: TObject);
begin
 if not Assigned( frmProcessoUtil ) then
    Application.CreateForm( TfrmProcessoUtil, frmProcessoUtil );

 frmProcessoUtil.ShowModal;
end;

procedure TfrmProcesso.actExportarExecute(Sender: TObject);
var Arq, ParamPesquisa : String;
begin
 Arq := '';
 with dmIT do
 begin
  if cdsProcessoL_SIGLAPROCESSO.Value <> 'TMBJ' then
  begin
   MessageDlg( 'Processo não é do tipo TMBJ.' + #13 + 'Operação cancelada.',
               mtInformation, [mbOK], 0 );
   Exit;
  end;

  ParamPesquisa := 'IT_PROCESSO.PROCESSOID = ' + cdsProcessoPROCESSOID.AsString + ' AND ' +
                   'IT_PROCESSO.TIPOPROCESSOID = ' + cdsProcessoTIPOPROCESSOID.AsString + ' AND ' +
                   'IT_PROCESSO.DATAPROCESSOID = ' + QuotedStr( cdsProcessoDATAPROCESSOID.AsString );

  GerarPesquisa( cdsProcesso, ParamPesquisa );

  Arq := ExportaTMBJ( ExtractFileDir( Application.ExeName ) + '\EXPORT\' );
  if Arq <> '' then
     MessageDlg( 'Arquivo ' + Arq + ' gerado com sucesso.', mtInformation, [mbOk], 0 )
  else
     MessageDlg( 'Falha ao gerar Arquivo.' + #13 + 'Contacte o DSI.', mtInformation, [mbOk], 0 );
 end;
end;

procedure TfrmProcesso.DBEdit3Change(Sender: TObject);
begin
 tbsTmbj.TabVisible := ( dmIT.cdsProcessoL_SIGLAPROCESSO.Value = 'TMBJ' ) or ( dmIT.cdsProcessoL_SIGLAPROCESSO.Value = 'TMBC' );
end;

procedure TfrmProcesso.wwDBComboDlg1CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa( dmIT.dsTipoProcesso,'TIPOPROCESSOID', dmIT.cdsProcessoTIPOPROCESSOID.AsString );
 ExecLoockupRetorno( dmIT.cdsProcesso,'TIPOPROCESSOID','TIPOPROCESSOID' );
end;

procedure TfrmProcesso.wwDBComboDlg2CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa( dmEF.dsEntidade,'ENTIDADEID',dmIT.cdsProcessoCLIENTEID.AsString );
 ExecLoockupRetorno( dmIT.cdsProcesso,'CLIENTEID','ENTIDADEID' );
end;

procedure TfrmProcesso.wwDBComboDlg3CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa( dmEF.dsEntidade,'ENTIDADEID',dmIT.cdsProcessoFORNECEDORID.AsString );
 ExecLoockupRetorno( dmIT.cdsProcesso,'FORNECEDORID','ENTIDADEID' );
end;

procedure TfrmProcesso.wwDBComboDlg4CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa( dmIT.dsTermoPagto,'TERMOPAGTOID',dmIT.cdsProcessoTERMOPAGTOID.AsString );
 ExecLoockupRetorno( dmIT.cdsProcesso,'TERMOPAGTOID','TERMOPAGTOID' );
end;

procedure TfrmProcesso.wwDBComboDlg5CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa( dmIT.dsContatoJapao ,'CONTATOJAPAOID', dmIT.cdsProcessoCONTATOJAPAOID.AsString );
 ExecLoockupRetorno( dmIT.cdsProcesso ,'CONTATOJAPAOID','CONTATOJAPAOID' );
end;

procedure TfrmProcesso.wwDBComboDlg6CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa( dmIT.dsTipoCategoria ,'TIPOCATEGORIAID', dmIT.cdsProcessoTIPOCATEGORIAID.AsString );
 ExecLoockupRetorno( dmIT.cdsProcesso ,'TIPOCATEGORIAID','TIPOCATEGORIAID' );
end;

procedure TfrmProcesso.wwDBComboDlg7CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa( dmIT.dsRazaoExigencia ,'RAZAOEXIGENCIAID', dmIT.cdsProcessoRAZAOEXIGENCIAID.AsString );
 ExecLoockupRetorno( dmIT.cdsProcesso ,'RAZAOEXIGENCIAID','RAZAOEXIGENCIAID' );
end;

procedure TfrmProcesso.wwDBComboDlg8CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa( dmIT.dsFrequencia ,'FREQUENCIAID',dmIT.cdsProcessoFREQUENCIAID.AsString );
 ExecLoockupRetorno( dmIT.cdsProcesso ,'FREQUENCIAID','FREQUENCIAID' );
end;

procedure TfrmProcesso.FormKeyPress(Sender: TObject; var Key: Char);
begin
 // Habilitar a propriedade KeyPreview do Form para funcionar o Enter como Tab
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;

procedure TfrmProcesso.actImpressaoExecute(Sender: TObject);
var ParamPesquisa : String;
begin
 with dmIT do
 begin
  ParamPesquisa := 'IT_PROCESSO.PROCESSOID = ' + cdsProcessoPROCESSOID.AsString + ' AND ' +
                   'IT_PROCESSO.TIPOPROCESSOID = ' + cdsProcessoTIPOPROCESSOID.AsString + ' AND ' +
                   'IT_PROCESSO.DATAPROCESSOID = ' + QuotedStr( cdsProcessoDATAPROCESSOID.AsString );
  GerarPesquisa( dmIT.cdsProcesso, ParamPesquisa );

  if ( cdsProcessoL_SIGLAPROCESSO.Value = 'NX' ) or ( cdsProcessoL_SIGLAPROCESSO.Value = 'NX2' ) then
          begin
           frmRelPedidoNx := TfrmRelPedidoNx.Create( nil );
           try
            frmRelPedidoNx.qrdbtxtPartnumber.DataField := 'PARTNUMBERFABID';
            frmRelPedidoNx.qrlblSigla1.Caption         := 'NX';
            frmRelPedidoNx.qrlblSigla2.Caption         := 'NX';
            frmRelPedidoNx.QuickRep1.Preview;
           finally
            FreeAndNil( frmRelPedidoNx.QuickRep1 );
            FreeAndNil( frmRelPedidoNx );
           end;
          end
  else if ( cdsProcessoL_SIGLAPROCESSO.Value = 'PZA' ) then
          begin
           frmRelPedidoPza := TfrmRelPedidoPza.Create( nil );
           try
            frmRelPedidoPza.QuickRep1.Preview;
           finally
            FreeAndNil( frmRelPedidoPza.QuickRep1 );
            FreeAndNil( frmRelPedidoPza );
           end;
          end
  else if ( cdsProcessoL_SIGLAPROCESSO.Value = 'TMBJ' ) then
          begin
           frmRelPedidoTmbj := TfrmRelPedidoTmbj.Create( nil );
           try
            frmRelPedidoTmbj.QuickRep1.Preview;
           finally
            FreeAndNil( frmRelPedidoTmbj.QuickRep1 );
            FreeAndNil( frmRelPedidoTmbj );
           end;
          end
  else if ( cdsProcessoL_SIGLAPROCESSO.Value = 'TMBC' ) then
          begin
           frmRelPedidoTmbj := TfrmRelPedidoTmbj.Create( nil );
           frmRelPedidoPza := TfrmRelPedidoPza.Create( nil );
           try
            frmRelPedidoTmbj.QuickRep1.Preview;
            frmRelPedidoPza.QuickRep1.Preview;
           finally
            FreeAndNil( frmRelPedidoTmbj.QuickRep1 );
            FreeAndNil( frmRelPedidoTmbj );

            FreeAndNil( frmRelPedidoPza.QuickRep1 );
            FreeAndNil( frmRelPedidoPza );
           end;
          end
  else
          begin
           frmRelPedidoNx := TfrmRelPedidoNx.Create( nil );
           try
            frmRelPedidoNx.qrdbtxtPartnumber.DataField := 'PARTNUMBERFABID';
            frmRelPedidoNx.qrlblSigla1.Caption         := dmIT.cdsProcessoL_SIGLAPROCESSO.Value;
            frmRelPedidoNx.qrlblSigla2.Caption         := dmIT.cdsProcessoL_SIGLAPROCESSO.Value;
            frmRelPedidoNx.QuickRep1.Preview;
           finally
            FreeAndNil( frmRelPedidoNx.QuickRep1 );
            FreeAndNil( frmRelPedidoNx );
           end;
          end

 end;
end;

procedure TfrmProcesso.DBGrid1DblClick(Sender: TObject);
begin
 frmProcessoItem := TfrmProcessoItem.Create( Application );
 frmProcessoItem.ShowModal;
end;

procedure TfrmProcesso.wwDBComboDlg9CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa( dmEF.dsEmpresa,'EMPRESAID', dmIT.cdsProcessoEMPRESAID.AsString );
 ExecLoockupRetorno( dmIT.cdsProcesso,'EMPRESAID','EMPRESAID' );
end;

procedure TfrmProcesso.wwgrdProcessoItensDblClick(Sender: TObject);
begin
 frmProcessoItem := TfrmProcessoItem.Create( Application );
 frmProcessoItem.ShowModal;
end;

procedure TfrmProcesso.wwDBComboDlg10CustomDlg(Sender: TObject);
begin
 with dmIT do
 begin
  ExecLoockupPesquisa( dsLocalChegada,'LOCALCHEGADAID',cdsProcessoLOCALCHEGADAID.AsString );
  ExecLoockupRetorno( cdsProcesso,'LOCALCHEGADAID','LOCALCHEGADAID');
 end;
end;

procedure TfrmProcesso.wwDBComboDlg11CustomDlg(Sender: TObject);
begin
 with dmIT do
 begin
  ExecLoockupPesquisa( dsViaEmbarque,'VIAEMBARQUEID',cdsProcessoVIAEMBARQUEID.AsString );
  ExecLoockupRetorno( cdsProcesso,'VIAEMBARQUEID','VIAEMBARQUEID');
 end;
end;

procedure TfrmProcesso.actCadastrarProdutoExecute(Sender: TObject);
begin
 frmProcessoItem.NovoProdProcesso;
end;

procedure TfrmProcesso.wwDBComboDlg12CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa( dmEF.dsEntidade,'ENTIDADEID',dmIT.cdsProcessoIMPORTADORID.AsString );
 ExecLoockupRetorno( dmIT.cdsProcesso,'IMPORTADORID','ENTIDADEID' );
end;

end.
