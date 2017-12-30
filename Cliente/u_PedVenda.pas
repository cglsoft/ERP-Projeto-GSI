unit u_PedVenda;

interface

uses
  Windows, Messages, Forms, SysUtils, DB, DBClient, ImgList, Controls, Classes,
  ActnList, XPStyleActnCtrls, ActnMan, ActnCtrls, ToolWin, ComCtrls, Dialogs,
  tmbToolEdicaoBottom, StdCtrls, DBCtrls, fcStatusBar, PnAjustaGrid, Variants,
  tmbToolEdicaoLista, Grids, DBGrids, ExtCtrls, wwdbdatetimepicker,
  wwdbedit, Wwdotdot, Mask;

type
  TfrmPedVenda = class(TForm)
    pgctrlDI: TPageControl;
    TabSheet1: TTabSheet;
    fcStatusBar1: TfcStatusBar;
    pnTopPedVend: TPanel;
    Label14: TLabel;
    Label16: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    Panel1: TPanel;
    tmbEdicaoBottom1: TtmbEdicaoBottom;
    DBEdit61: TDBEdit;
    Label18: TLabel;
    wwDBComboDlg9: TwwDBComboDlg;
    Label7: TLabel;
    wwDBComboDlg1: TwwDBComboDlg;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    wwDBComboDlg3: TwwDBComboDlg;
    DBEdit8: TDBEdit;
    DBCheckBox10: TDBCheckBox;
    grpbxDadosCliente: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit2: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBMemo3: TDBMemo;
    wwDBComboDlg4: TwwDBComboDlg;
    PageControl1: TPageControl;
    tbshtImpCondPagto: TTabSheet;
    tbshtRevCondPagto: TTabSheet;
    grpbxCondPagtoImp: TGroupBox;
    Label15: TLabel;
    DBEdit12: TDBEdit;
    wwDBComboDlg5: TwwDBComboDlg;
    Label23: TLabel;
    Label22: TLabel;
    DBEdit4: TDBEdit;
    wwDBComboDlg6: TwwDBComboDlg;
    DBEdit13: TDBEdit;
    DBEdit22: TDBEdit;
    Label24: TLabel;
    Splitter1: TSplitter;
    grpbxCondPagtoRev: TGroupBox;
    Label25: TLabel;
    Label31: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label41: TLabel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    wwDBComboDlg7: TwwDBComboDlg;
    DBEdit26: TDBEdit;
    wwDBComboDlg8: TwwDBComboDlg;
    Label10: TLabel;
    wwDBComboDlg2: TwwDBComboDlg;
    DBEdit5: TDBEdit;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    wwDBComboDlg10: TwwDBComboDlg;
    DBEdit11: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    Label43: TLabel;
    Label32: TLabel;
    Label17: TLabel;
    Label26: TLabel;
    DBEdit25: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    Label27: TLabel;
    Label11: TLabel;
    grpResumoImp: TGroupBox;
    Label29: TLabel;
    Label28: TLabel;
    Label30: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label59: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit44: TDBEdit;
    grpbxResumoRev: TGroupBox;
    Label33: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label42: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    DBEdit9: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit34: TDBEdit;
    tbshtAparelhoImp: TTabSheet;
    tbshtAparelhoRev: TTabSheet;
    tbshtInterv: TTabSheet;
    tbshtVendedores: TTabSheet;
    tbshtObsGerais: TTabSheet;
    tmbedtlstApRev: TtmbEdicaoLista;
    GroupBox6: TGroupBox;
    dbgrdRevenda: TDBGrid;
    GroupBox7: TGroupBox;
    dbgrdPDEItem: TDBGrid;
    tmbedtlstInterv: TtmbEdicaoLista;
    DBMemo1: TDBMemo;
    Panel2: TPanel;
    GroupBox12: TGroupBox;
    dbgrdItem: TDBGrid;
    GroupBox10: TGroupBox;
    dbgrdItemBar: TDBGrid;
    tmbedtlstApImpComp: TtmbEdicaoLista;
    tPanel11: tPanel1;
    tmbedtlstApImp: TtmbEdicaoLista;
    tmbAjtgrdPDSItem: tPanel1;
    actmngManutencao: TActionManager;
    ImageList1: TImageList;
    actGerarFat: TAction;
    CoolBar1: TCoolBar;
    ActionToolBar1: TActionToolBar;
    actCancFat: TAction;
    actImpressao: TAction;
    actTransfProcesso: TAction;
    tbshtBonif: TTabSheet;
    GroupBox9: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox8: TGroupBox;
    dbgrdPDEItemBar: TDBGrid;
    tmbedtlstBonif: TtmbEdicaoLista;
    tmbedtlstVend: TtmbEdicaoLista;
    DBRichEdit1: TDBRichEdit;
    Label51: TLabel;
    cdsRelPedVend: TClientDataSet;
    dsRelPedVend: TDataSource;
    Label52: TLabel;
    DBEdit35: TDBEdit;
    wwDBDateTimePicker3: TwwDBDateTimePicker;
    Label53: TLabel;
    DBEdit36: TDBEdit;
    Label54: TLabel;
    Label55: TLabel;
    wwDBComboDlg11: TwwDBComboDlg;
    DBEdit37: TDBEdit;
    tbshtServico: TTabSheet;
    Label56: TLabel;
    DBEdit39: TDBEdit;
    GroupBox1: TGroupBox;
    dbgrdServico: TDBGrid;
    tmbedtlstServico: TtmbEdicaoLista;
    dbckbxPagtoComissao: TDBCheckBox;
    GroupBox4: TGroupBox;
    Label57: TLabel;
    Label58: TLabel;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBComboDlg6CustomDlg(Sender: TObject);
    procedure wwDBComboDlg5CustomDlg(Sender: TObject);
    procedure wwDBComboDlg2CustomDlg(Sender: TObject);
    procedure wwDBComboDlg10CustomDlg(Sender: TObject);
    procedure wwDBComboDlg4CustomDlg(Sender: TObject);
    procedure wwDBComboDlg8CustomDlg(Sender: TObject);
    procedure wwDBComboDlg7CustomDlg(Sender: TObject);
    procedure wwDBComboDlg9CustomDlg(Sender: TObject);
    procedure wwDBComboDlg1CustomDlg(Sender: TObject);
    procedure wwDBComboDlg3CustomDlg(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actGerarFatExecute(Sender: TObject);
    procedure actCancFatExecute(Sender: TObject);
    procedure actImpressaoExecute(Sender: TObject);
    procedure actTransfProcessoExecute(Sender: TObject);
  private
    { Private declarations }
    procedure GerarPDSFat;
    procedure CancelarReservaPDS(var cds: TClientDataSet; Operacao: Char );
  public
    { Public declarations }
  end;

var
  frmPedVenda: TfrmPedVenda;

implementation

uses u_dmPP, FuncoesCliente, FuncoesDSI, u_dmEF, u_dmCP, u_PedVendaItemRev,
  u_PadraoEdicao, u_dmGSI, u_RelPedidoVenda, u_ParPedVend,
  u_PedVendaVendedor, u_PedVendaInterv, u_PedVendaItemImp, u_Principal,
  u_Cep;

{$R *.dfm}

procedure TfrmPedVenda.CancelarReservaPDS( var cds : TClientDataSet; Operacao : Char );
var sUpd : String;
begin
 if not Assigned( cds ) then
    exit;

 cds.First;
 while not cds.Eof do
 begin
  sUpd := ' UPDATE EF_PRODUTO SET ' +
          '  ESTOQUERESERVA = NVL( ESTOQUERESERVA, 0 ) ' + Operacao + ' ' + SubstituiString( cds.FieldByName('QUANTIDADE').AsString,  ',', '.' ) +
          ' WHERE ' +
          '      EMPRESAID = ' + cds.FieldByName('EMPRESAID').AsString +
          '  AND PRODUTOID = ' + cds.FieldByName('PRODUTOID').AsString;

  ExecDML( sUpd );
  cds.Next;
 end;
end;

procedure TfrmPedVenda.GerarPDSFat;
var cdsNat, cdsProd : TClientDataSet;
    iSQLNat, iSQLProd : String;
    EmpresaAnterior : Integer;

 // Verificar a quantidade física do produto
 procedure VerifQtdFisica;
 begin
  iSQLNat  := 'SELECT NATUREZAOPID, VENDAFATANTECIPADO, VENDADEFINITIVA ' +
              ' FROM EF_NATUREZAOP ' +
              ' WHERE NATUREZAOPID = ' + dmPP.cdsPedVendNATUREZAOPID.AsString;

  iSQLProd := 'SELECT' +
              ' PP_PEDVENDITEM.PEDVENDID,' +
              ' PP_PEDVENDITEM.ITEMID,' +
              ' PP_PEDVENDITEM.QUANTIDADE,' +
              ' PP_PEDVENDITEM.EMPRESAID,' +
              ' PP_PEDVENDITEM.PRODUTOID,' +
              ' PP_PEDVENDITEM.ESTOQUEUTILIZADO,' +
              ' PP_PEDVENDITEM.VLRPRECOUNITARIO,' +
              ' PP_PEDVENDITEM.VLRPRECOTOTAL,' +
              ' PP_PEDVENDITEM.VLRPRECOTOTAL,' +
              ' PP_PEDVENDITEM.RTTRANSPORTADORID,' +
              ' EF_PRODUTO.EMPRESAID,' +
              ' EF_PRODUTO.PRODUTOID,' +
              ' EF_PRODUTO.ESTOQUENOVO,' +
              ' EF_PRODUTO.ESTOQUEREVISADO,' +
              ' EF_PRODUTO.ESTOQUERESERVA' +
              ' FROM' +
              ' PP_PEDVENDITEM PP_PEDVENDITEM,' +
              ' EF_PRODUTO EF_PRODUTO ' +
              'WHERE' +
              ' EF_PRODUTO.EMPRESAID = PP_PEDVENDITEM.EMPRESAID' +
              ' AND EF_PRODUTO.PRODUTOID = PP_PEDVENDITEM.PRODUTOID' +
              ' AND PP_PEDVENDITEM.PEDVENDID = ' + QuotedStr( dmPP.cdsPedVendPEDVENDID.Value );

  ExecDynamicProvider( -1, iSQLNat, cdsNat );
  if cdsNat.IsEmpty then
    raise Exception.Create('Natureza de operação não identificada.');

  ExecDynamicProvider( -1, iSQLProd, cdsProd );

  // Para Faturamento Venda Faturamento Antecipado não é necessário
  // saldo no estoque
  if cdsNat.FieldByName('VENDAFATANTECIPADO').AsInteger = 1 then
     exit;

  if cdsNat.FieldByName('VENDADEFINITIVA').AsInteger = 1 then
     begin
      if dmPP.cdsPedVendCondPagtoID.AsInteger < 1 then
         raise Exception.Create('Falta preencher a condição de pagamento !');
     end;

  if cdsProd.IsEmpty then
     exit;

  if ( cdsProd.FieldByName('ESTOQUENOVO').AsInteger = 0 ) and
     ( cdsProd.FieldByName('ESTOQUEREVISADO').AsInteger = 0 ) then
     raise Exception.Create('Não há saldo em Estoque! Favor consultar o Estoque'); { acrescentado Weles 21/06/2005 }

  cdsProd.First;
  while not cdsProd.Eof do
  begin
   case cdsProd.FieldByName('ESTOQUEUTILIZADO').AsString[1] of
   'N' : if cdsProd.FieldByName('ESTOQUENOVO').AsInteger < cdsProd.FieldByName('QUANTIDADE').AsInteger then
            raise Exception.Create( 'Produto ' + cdsProd.FieldByName('PRODUTOID').AsString + ' não tem quantidade física disponível para criação do pedido ! ');
   'R' : if cdsProd.FieldByName('ESTOQUEREVISADO').AsInteger < cdsProd.FieldByName('QUANTIDADE').AsInteger then
            raise Exception.Create( 'Produto ' + cdsProd.FieldByName('PRODUTOID').AsString + ' não tem quantidade física disponível para criação do pedido ! ');
   end;

   cdsProd.Next;
  end;
 end;

begin
 EmpresaAnterior := EmpresaAtualId;
 EmpresaAtualId  := dmPP.cdsPedVendEMPRESAID.AsInteger;

 cdsNat   := Nil;
 cdsProd  := Nil;

 Screen.Cursor := crHourGlass;
 try
  try
   if dmPP.cdsPedVendPDSID.AsInteger > 0 then
      raise Exception.Create('Pedido já foi criado !');

   if dmPP.cdsPedVendNaturezaOPID.Value < 1 then
      raise Exception.Create('Falta preencher a condição de pagamento !');

   VerifQtdFisica;

   dmEF.cdsPds.Open;
   dmEF.cdsPds.Insert;
   dmEF.cdsPdsEMPRESAID.Value       := dmPP.cdsPedVendEMPRESAID.Value;
   dmEF.cdsPdsENTIDADEID.Value      := dmPP.cdsPedVendCLIENTEID.Value;
   dmEF.cdsPdsNATUREZAOPID.Value    := dmPP.cdsPedVendNATUREZAOPID.Value;

   if dmPP.cdsPedVendItemRTTRANSPORTADORID.Value > 0 then
      dmEF.cdsPdsTRANSPORTADORID.Value := dmPP.cdsPedVendItemRTTRANSPORTADORID.Value;

   if dmPP.cdsPedVendCONDPAGTOID.AsInteger > 0 then
      dmEF.cdsPdsCONDPAGTOID.AsInteger    := dmPP.cdsPedVendCONDPAGTOID.AsInteger;

   dmEF.cdsPds.Post;

   if Assigned( cdsProd ) then
      begin
       cdsProd.First;
       while not cdsProd.Eof do
       begin
        dmEF.cdsPdsItem.Insert;
        dmEF.cdsPdsItemESTOQUEUTILIZADO.Value := cdsProd.FieldByName('ESTOQUEUTILIZADO').Value;
        dmEF.cdsPdsItemEMPENHO.Value          := 1; // Não usar rotina de mensagem
        dmEF.cdsPdsItemPRODUTOID.Value        := cdsProd.FieldByName('PRODUTOID').AsInteger;
        dmEF.cdsPdsItemEMPENHO.Value          := 0; // Voltar situação atual
        dmEF.cdsPdsItemQUANTIDADE.Value       := cdsProd.FieldByName('QUANTIDADE').AsFloat;
        dmEF.cdsPdsItemVLRPRECOUNITARIO.Value := cdsProd.FieldByName('VLRPRECOUNITARIO').AsFloat;
        dmEF.cdsPdsItemVLRPRECOTOTAL.Value    := cdsProd.FieldByName('VLRPRECOTOTAL').AsFloat;
        dmEF.cdsPdsItem.Post;
        cdsProd.Next;
       end;
      end;

   dmPP.cdsPedVendServ.First;
   while not dmPP.cdsPedVendServ.Eof do
   begin
    dmEF.cdsPDSServico.Insert;
    dmEF.cdsPdsServicoSERVICOID.Value  := dmPP.cdsPedVendServSERVICOID.Value;
    dmEF.cdsPdsServicoVLRSERVICO.Value := dmPP.cdsPedVendServVLRSERVICO.AsCurrency;
    dmEF.cdsPdsServicoDESCRICAOSERVICO.Assign( dmPP.cdsPedVendServDESCRICAOSERVICO );
    dmEF.cdsPDSServico.Post;

    dmPP.cdsPedVendServ.Next;
   end;

   dmEF.cdsPds.Post;

   if dmPP.cdsPedVend.State <> dsEdit then
      dmPP.cdsPedVend.Edit;

   dmPP.cdsPedVendPDSID.Value           := dmEF.cdsPdsPDSID.Value;
   dmPP.cdsPedVendDATAPEDIDOPDSID.Value := dmEF.cdsPdsDATAPEDIDO.Value;
   dmPP.cdsPedVend.Post;

   // Gerar as parcelas da duplicate
   dmEF.GerarDuplicata( Date );

   CancelarReservaPDS( cdsProd, '-' );

   cdsProd.Close;
   cdsNat.Close;

   MessageDlg( 'Pedido ' + dmEF.cdsPdsPDSID.AsString + ' criado com sucesso ! ',mtInformation, [mbOk], 0);

  except
  on E:Exception do MessageDlg( E.Message, mtInformation, [mbOk], 0);
  end;
 finally
  EmpresaAtualId  := EmpresaAnterior;
  Screen.Cursor := crDefault;
  FreeAndNil( cdsNat );
  FreeAndNil( cdsProd );
 end;
end;


procedure TfrmPedVenda.FormKeyPress(Sender: TObject; var Key: Char);
begin
 // Habilitar a propriedade KeyPreview do Form para funcionar o Enter como Tab
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;

procedure TfrmPedVenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 if not FinalFormulario(dmPP.cdsPedVend,' da Pedido de Venda?') then
    Action := caNone
 else
    begin
     Action        := caFree;
     frmPedVenda := Nil;
    end;
end;

procedure TfrmPedVenda.wwDBComboDlg6CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmEF.dsEntidade,'ENTIDADEID', dmPP.cdsPedVendCLIENTEID.AsString);
 ExecLoockupRetorno(dmPP.cdsPedVend,'CLIENTEID','ENTIDADEID' );
end;

procedure TfrmPedVenda.wwDBComboDlg5CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmPP.dsCondPagtoProp,'CONDPAGTOPROPID', dmPP.cdsPedVendCONDPAGTOPROPID.AsString);
 ExecLoockupRetorno(dmPP.cdsPedVend,'CONDPAGTOPROPID','CONDPAGTOPROPID');
end;

procedure TfrmPedVenda.wwDBComboDlg2CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmPP.dsCondPagtoProp,'CONDPAGTOPROPID', dmPP.cdsPedVendCONDINTERVID.AsString);
 ExecLoockupRetorno(dmPP.cdsPedVend,'CONDINTERVID','CONDPAGTOPROPID');
end;

procedure TfrmPedVenda.wwDBComboDlg10CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmPP.dsCondPagtoProp,'CONDPAGTOPROPID', dmPP.cdsPedVendCONDEMPRSUPLID.AsString);
 ExecLoockupRetorno(dmPP.cdsPedVend,'CONDEMPRSUPLID','CONDPAGTOPROPID' );
end;

procedure TfrmPedVenda.wwDBComboDlg4CustomDlg(Sender: TObject);
begin
 try
  frmCEP := TfrmCEP.Create( Self );
  frmCEP.ShowModal;

  if Assigned( frmCEP ) then
     if frmCEP.AtualizaCEP then
        if not dmCP.cdsPesquisa.IsEmpty then
           dmEF.cdsEntidadeCEPID.Value     := dmCP.cdsPesquisaCEPID.Value;
 finally
  FreeAndNil( frmCEP );
 end;
end;

procedure TfrmPedVenda.wwDBComboDlg8CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmEF.dsCondPagto,'CONDPAGTOID',dmPP.cdsPedVendCONDPAGTOID.AsString);
 ExecLoockupRetorno(dmPP.cdsPedVend,'CONDPAGTOID','CONDPAGTOID');
end;

procedure TfrmPedVenda.wwDBComboDlg7CustomDlg(Sender: TObject);
var iSql, CfopInicial : String;
begin
 iSQL    := ' SELECT' +
            '  EF_NATUREZAOP.NATUREZAOPID,' +
            '  EF_NATUREZAOP.CFOP,' +
            '  EF_NATUREZAOP.TIPOMOVIMENTO,' +
            '  EF_NATUREZAOP.DESCRICAOOPERACAOUSUARIO' +
            '  FROM' +
            '  EF_NATUREZAOP EF_NATUREZAOP,' +
            '  EF_NATUREZAEMPRESA EF_NATUREZAEMPRESA' +
            ' WHERE' +
            '  EF_NATUREZAOP.NATUREZAOPID = EF_NATUREZAEMPRESA.NATUREZAOPID(+)';

 dmEF.cdsEmpresa.Open;
 if not dmEF.cdsEmpresa.Locate('EMPRESAID', VarArrayOf([ dmPP.cdsPedVendEMPRESAID.AsString]), [loPartialKey]) then
    begin
     MessageDlg('Problemas com o cadatro de empresas, favor comunidar o departamento de Informática.', mtInformation,[mbOk], 0);
     exit
    end;

 if ( trim( dmPP.cdsPedVendPAISORIG.Value ) = 'BRASIL' ) or ( trim( dmPP.cdsPedVendPAISORIG.Value ) = 'BRAZIL' ) then
    begin
     // Para dentro do Estado = 1 para fora = 2 Ex. Origem ->TABOÃO Destino->Recife = 1;
     if dmPP.cdsPedVendSIGLAUFORIGID.Value = dmEF.cdsEmpresaSIGLAUFID.Value then
        CfopInicial := '5'
     else
        CfopInicial := '6';
    end
 else
    CfopInicial := '7';  // Exterior;

 iSql := iSql + '  AND SUBSTR( EF_NATUREZAOP.CFOP, 1, 1 ) =  ' + CfopInicial +
                '  AND EF_NATUREZAEMPRESA.EMPRESAID = ' + dmPP.cdsPedVendEMPRESAID.AsString;

 CriaFormLookUp( dmEF.cdsNaturezaOp.Name, iSql, dmPP.cdsPedVendNATUREZAOPID,'NATUREZAOPID', 'NATUREZAOPID' );
 dmEF.cdsEmpresa.Close;
end;

procedure TfrmPedVenda.wwDBComboDlg9CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmEF.dsEmpresa,'EMPRESAID',dmPP.cdsPedVendEMPRESAID.AsString);
 ExecLoockupRetorno(dmPP.cdsPedVend,'EMPRESAID','EMPRESAID');
end;

procedure TfrmPedVenda.wwDBComboDlg1CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmPP.dsOrigemVenda,'ORIGEMVENDAID',dmPP.cdsPedVendORIGEMVENDAID.AsString);
 ExecLoockupRetorno(dmPP.cdsPedVend,'ORIGEMVENDAID','ORIGEMVENDAID');
end;

procedure TfrmPedVenda.wwDBComboDlg3CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmPP.dsTipoVenda,'TIPOVENDAID',dmPP.cdsPedVendTIPOVENDAID.AsString);
 ExecLoockupRetorno(dmPP.cdsPedVend,'TIPOVENDAID','TIPOVENDAID');
end;

procedure TfrmPedVenda.FormShow(Sender: TObject);
begin
 if CheckSenha(dmGsi.UsuarioAtivo,'Pedido de Venda / Importação Direta','Alterar Campo Pagto Comissão',False) then
    dbckbxPagtoComissao.Enabled := True
 else
    dbckbxPagtoComissao.Enabled := False;


 case dmPP.cdsPedVendORIGEMVENDAID.AsInteger of
 1 :     begin
          tbshtRevCondPagto.TabVisible := False;
          tbshtAparelhoRev.TabVisible := False;
          tbshtServico.TabVisible     := False;
         end;

 2,3,4 : begin
          tbshtImpCondPagto.TabVisible := False;
          tbshtAparelhoImp.TabVisible := False;
          tbshtServico.TabVisible     := True;
         end;
 end;

 if not dmPP.VerifEdicaoComissaoEfetuada( dmPP.cdsPedVendPEDVENDID.Value ) then
    begin
     pnTopPedVend.Enabled := False;
     grpbxDadosCliente.Enabled  := False;
     grpbxCondPagtoImp.Enabled  := False;
     grpbxCondPagtoRev.Enabled  := False;
     grpResumoImp.Enabled       := False;
     grpbxResumoRev.Enabled     := False;

     tmbedtlstApImp.Enabled     := False;
     tmbedtlstApImpComp.Enabled := False;
     tmbedtlstApRev.Enabled     := False;
     tmbedtlstServico.Enabled   := False;
     tmbedtlstInterv.Enabled    := False;
     tmbedtlstVend.Enabled      := False;
     tmbedtlstBonif.Enabled     := False;

{     tbshtAparelhoImp.Enabled  := False;
     tbshtAparelhoRev.Enabled  := False;
     tbshtServico.Enabled      := False;
     tbshtInterv.Enabled       := False;
     tbshtVendedores.Enabled   := False;
     tbshtBonif.Enabled        := False;}
    end;

 tmbedtlstApImp.TtmbClassOwnerEspec     := TfrmPedVendaItemImp;
 tmbedtlstApImp.TtmbFormOwnerEspec      := frmPedVendaItemImp;

 tmbedtlstApImpComp.TtmbClassOwnerEspec := TfrmPadraoEdicao;
 tmbedtlstApImpComp.TtmbFormOwnerEspec  := frmPadraoEdicao;

 tmbedtlstApRev.TtmbClassOwnerEspec     := TfrmPedVendaItemRev;
 tmbedtlstApRev.TtmbFormOwnerEspec      := frmPedVendaItemRev;

 tmbedtlstServico.TtmbClassOwnerEspec    := TfrmPadraoEdicao;
 tmbedtlstServico.TtmbFormOwnerEspec     := frmPadraoEdicao;

 tmbedtlstInterv.TtmbClassOwnerEspec    := TfrmPadraoEdicao;
 tmbedtlstInterv.TtmbFormOwnerEspec     := frmPadraoEdicao;

 tmbedtlstVend.TtmbClassOwnerEspec      := TfrmPedVendVendedor;
 tmbedtlstVend.TtmbFormOwnerEspec       := frmPedVendVendedor;

 tmbedtlstBonif.TtmbClassOwnerEspec     := TfrmPadraoEdicao;
 tmbedtlstBonif.TtmbFormOwnerEspec      := frmPadraoEdicao;

 tmbedtlstInterv.TtmbClassOwnerEspec    := TfrmPedVendaInterv;
 tmbedtlstInterv.TtmbFormOwnerEspec     := frmPedVendaInterv;

end;

procedure TfrmPedVenda.actGerarFatExecute(Sender: TObject);
begin
 if not CheckSenha( dmGsi.UsuarioAtivo, 'Pedido de Venda / Importação Direta','Gerar Pedido', True) then
    exit;

 if dmPP.cdsPedVendLIBCHEFIA.AsInteger = 0 then
    begin
     MessageDlg('Pedido de Venda não está liberado para faturamento!', mtInformation, [mbOK], 0 );
     exit;
    end;

 if Application.MessageBox( 'Confirma Operação ?','Confirmação', MB_YESNO + MB_ICONQUESTION ) = IDYES then
    GerarPDSFat;
end;

procedure TfrmPedVenda.actCancFatExecute(Sender: TObject);
var ParamPesquisa : String;
begin
 if not CheckSenha( dmGsi.UsuarioAtivo, 'Pedido de Venda / Importação Direta','Cancelar Pedido de Saída', True) then
    exit;

 ParamPesquisa := ' EF_PDS.EMPRESAID      = ' +  dmPP.cdsPedVendEMPRESAID.AsString +
                  ' AND EF_PDS.PDSID      = ' +  dmPP.cdsPedVendPDSID.AsString +
                  ' AND EF_PDS.DATAPEDIDO = ' +  'TO_DATE(' + QuotedStr( dmPP.cdsPedVendDATAPEDIDOPDSID.AsString ) + ', ''dd/mm/yyyy HH24:MI:SS'' )';

 GerarPesquisa( dmEF.cdsPds, ParamPesquisa );
 if dmEF.cdsPds.RecordCount = 0 then
    exit;

 CancelarReservaPDS( dmEF.cdsPdsItem, '+' );
 dmEF.cdsPds.Delete;

 if dmPP.cdsPedVendL_NFSID.AsInteger < 1 then
    begin
     dmPP.cdsPedVendPDSID.Clear;
     dmPP.cdsPedVendDATAPEDIDOPDSID.Clear;
    end;

 MessageDlg('Pedido excluido com sucesso!', mtInformation, [mbOK], 0 );
end;

procedure TfrmPedVenda.actImpressaoExecute(Sender: TObject);
begin
 if dmPP.cdsPedVendORIGEMVENDAID.Value = 1 then
    begin
    try
     frmRelPedidoVenda := TfrmRelPedidoVenda.Create(nil);
     frmRelPedidoVenda.QuickRep1.Preview;

    finally
     FreeAndNil( frmRelPedidoVenda.QuickRep1 );
     FreeAndNil( frmRelPedidoVenda );
    end;
   end
else
  begin
   if not Assigned( frmParPedVend ) then
      frmParPedVend := TfrmParPedVend.Create(nil);
   frmParPedVend.TipoRelatorio := Revenda;
   frmParPedVend.Show;
  end;
end;

procedure TfrmPedVenda.actTransfProcessoExecute(Sender: TObject);
var cds : TClientDataSet;
    iSql : String;
begin
 if not CheckSenha( dmGsi.UsuarioAtivo, 'Pedido de Venda / Importação Direta','Gerar Processo de importação direta', True) then
    exit;

 cds  := Nil;
 iSql := 'SELECT PEDVENDID FROM PP_PROCESSOIMP WHERE PEDVENDID = ' +
          QuotedStr( dmPP.cdsPedVendPEDVENDID.Value );
 ExecDynamicProvider( -1, iSQL, cds );
 try
  try
   if not cds.IsEmpty then
      raise Exception.Create('Pedido já convertido para processo operação cancelada.');

   if dmPP.cdsPedVendORIGEMVENDAID.AsInteger <> 1 then
      raise Exception.Create('Pedido de Venda não de origem de importação.');

   if MessageDlg('Confirma transformar pedido em processo de importação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
       dmPP.cdsProcessoImp.Open;
       dmPP.cdsProcessoImp.Insert;
       dmPP.cdsProcessoImpPEDVENDID.Value             := dmPP.cdsPedVendPEDVENDID.Value;
       dmPP.cdsProcessoImpDATAPROCESSO.AsDateTime     := Date;
       dmPP.cdsProcessoImpDATAPEDIDO.Value            := dmPP.cdsPedVendDATAPEDIDO.Value;
       dmPP.cdsProcessoImpCLIENTEID.Value             := dmPP.cdsPedVendCLIENTEID.Value;
       dmPP.cdsProcessoImpEMBDATAPREVISAO.AsDateTime  := Date + 90;
       dmPP.cdsProcessoImpLCDISPENSA.Value            := 0;
       dmPP.cdsProcessoImpCBDISPENSA.Value            := 0;
       dmPP.cdsProcessoImp.Post;
       dmPP.cdsProcessoImp.Close;
       MessageDlg('Processo de importação criado com sucesso!', mtInformation, [mbOk], 0);
      end;

  except
  on E: Exception do MessageDlg( E.Message, mtError, [mbOK], 0 );
  end;

 finally
  FreeAndNil( cds );
 end;

end;

end.
