unit u_Declaracao;

interface

uses
  SysUtils, Forms, Dialogs, tmbToolEdicaoTop, ActnMan, ActnCtrls, Classes,
  ActnList, XPStyleActnCtrls, ImgList, Controls, ToolWin, ComCtrls,
  tmbToolEdicaoBottom, fcStatusBar, Grids, Wwdbigrd, Wwdbgrid, Buttons,
  ExtCtrls, wwdbdatetimepicker, wwdbedit, Wwdotdot, StdCtrls, DBCtrls, Mask,
  wwriched, tmbToolEdicaoLista, Variants, DB, DBGrids, PnAjustaGrid, DBClient;

type
  TfrmDeclaracao = class(TForm)
    pgctrlDI: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    GroupBox3: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    PageControl2: TPageControl;
    TabSheet4: TTabSheet;
    GroupBox5: TGroupBox;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label32: TLabel;
    Label30: TLabel;
    DBEdit25: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    wwDBDateTimePicker4: TwwDBDateTimePicker;
    wwDBDateTimePicker5: TwwDBDateTimePicker;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    wwDBDateTimePicker3: TwwDBDateTimePicker;
    Label12: TLabel;
    ImageList1: TImageList;
    actmngManutencao: TActionManager;
    actRelatorio: TAction;
    TabSheet3: TTabSheet;
    GroupBox2: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    Label31: TLabel;
    DBEdit26: TDBEdit;
    Label33: TLabel;
    DBEdit27: TDBEdit;
    Label34: TLabel;
    DBEdit29: TDBEdit;
    Label35: TLabel;
    DBEdit32: TDBEdit;
    Label36: TLabel;
    DBEdit33: TDBEdit;
    Label37: TLabel;
    DBEdit34: TDBEdit;
    Label38: TLabel;
    DBEdit35: TDBEdit;
    Label39: TLabel;
    DBEdit36: TDBEdit;
    Label40: TLabel;
    DBEdit37: TDBEdit;
    Label41: TLabel;
    DBEdit38: TDBEdit;
    Label42: TLabel;
    DBEdit39: TDBEdit;
    Label43: TLabel;
    DBEdit40: TDBEdit;
    Label44: TLabel;
    DBEdit41: TDBEdit;
    Label45: TLabel;
    DBEdit42: TDBEdit;
    Label46: TLabel;
    DBEdit43: TDBEdit;
    Label47: TLabel;
    DBEdit44: TDBEdit;
    wwDBComboDlg2: TwwDBComboDlg;
    wwDBComboDlg1: TwwDBComboDlg;
    wwDBComboDlg3: TwwDBComboDlg;
    fcStatusBar1: TfcStatusBar;
    actCalcularCIF: TAction;
    actCalcularResumo: TAction;
    Panel4: TPanel;
    Label14: TLabel;
    DBEdit1: TDBEdit;
    Label16: TLabel;
    DBEdit3: TDBEdit;
    DBRadioGroup2: TDBRadioGroup;
    Label4: TLabel;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    Label6: TLabel;
    Panel1: TPanel;
    tmbEdicaoBottom1: TtmbEdicaoBottom;
    CoolBar1: TCoolBar;
    ActionToolBar1: TActionToolBar;
    tmbEdicaoTop2: TtmbEdicaoTop;
    tmbEdicaoTop1: TtmbEdicaoTop;
    ActionToolBar2: TActionToolBar;
    TabSheet2: TTabSheet;
    GroupBox8: TGroupBox;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    wwDBComboDlg4: TwwDBComboDlg;
    DBEdit4: TDBEdit;
    wwDBRichEdit3: TwwDBRichEdit;
    Label1: TLabel;
    DBCheckBox6: TDBCheckBox;
    Label3: TLabel;
    DBEdit7: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    wwDBComboDlg5: TwwDBComboDlg;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label15: TLabel;
    DBEdit13: TDBEdit;
    Label17: TLabel;
    DBEdit14: TDBEdit;
    tmbEdicaoLista1: TtmbEdicaoLista;
    SpeedButton1: TSpeedButton;
    actRelatorioPedDI: TAction;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    actAdicionarProcessos: TAction;
    DBEdit15: TDBEdit;
    Label18: TLabel;
    Label51: TLabel;
    DBEdit16: TDBEdit;
    actPDE: TAction;
    tmbAjtgrdMercadoria: tPanel1;
    dbgrdMercadoria: TDBGrid;
    DBRadioGroup1: TDBRadioGroup;
    DBEdit17: TDBEdit;
    Label54: TLabel;
    Label55: TLabel;
    DBEdit28: TDBEdit;
    Label56: TLabel;
    DBEdit45: TDBEdit;
    Label57: TLabel;
    DBEdit48: TDBEdit;
    DBEdit51: TDBEdit;
    Label59: TLabel;
    DBEdit52: TDBEdit;
    Label60: TLabel;
    DBEdit53: TDBEdit;
    Label61: TLabel;
    DBEdit54: TDBEdit;
    Label62: TLabel;
    DBEdit55: TDBEdit;
    Label63: TLabel;
    DBEdit56: TDBEdit;
    Label58: TLabel;
    Label64: TLabel;
    DBEdit57: TDBEdit;
    Label65: TLabel;
    DBEdit58: TDBEdit;
    Label66: TLabel;
    DBEdit59: TDBEdit;
    TabSheet7: TTabSheet;
    DBRichEdit1: TDBRichEdit;
    Label67: TLabel;
    DBEdit60: TDBEdit;
    DBCheckBox9: TDBCheckBox;
    Label68: TLabel;
    DBEdit61: TDBEdit;
    Label69: TLabel;
    wwDBDateTimePicker6: TwwDBDateTimePicker;
    Label70: TLabel;
    DBEdit62: TDBEdit;
    Label71: TLabel;
    wwDBDateTimePicker7: TwwDBDateTimePicker;
    Label72: TLabel;
    DBEdit63: TDBEdit;
    DBGrid1: TDBGrid;
    DBEdit64: TDBEdit;
    Label73: TLabel;
    Label74: TLabel;
    DBEdit65: TDBEdit;
    Label75: TLabel;
    DBEdit66: TDBEdit;
    Label76: TLabel;
    DBEdit67: TDBEdit;
    Label77: TLabel;
    DBEdit68: TDBEdit;
    Label78: TLabel;
    DBEdit69: TDBEdit;
    Label79: TLabel;
    DBEdit70: TDBEdit;
    Label80: TLabel;
    DBEdit71: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure wwDBComboDlg2CustomDlg(Sender: TObject);
    procedure wwDBComboDlg3CustomDlg(Sender: TObject);
    procedure wwDBComboDlg1CustomDlg(Sender: TObject);
    procedure wwDBComboDlg4CustomDlg(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure actRelatorioExecute(Sender: TObject);
    procedure actCalcularResumoExecute(Sender: TObject);
    procedure actCalcularCIFExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure actRelatorioPedDIExecute(Sender: TObject);
    procedure actAdicionarProcessosExecute(Sender: TObject);
    procedure actPDEExecute(Sender: TObject);
    procedure pgctrlDIChange(Sender: TObject);
  private
    { Private declarations }
    procedure GerarPDE_DI;
  public
    { Public declarations }
  end;

var
  frmDeclaracao: TfrmDeclaracao;

implementation

uses FuncoesCliente, u_dmIT, u_VisualizaProcesso, u_RelFichaDI, u_dmEF,
  u_dmGSI, u_PadraoEdicao, u_parDI, u_DeclaracaoDadosPDE;

{$R *.dfm}

procedure BasesEntradaImportada;
var cdsProd, cdsNat : TClientDataSet;
    iSQLProd, iSQLNat : String;
begin
 cdsProd := Nil;
 cdsNat  := Nil;

 iSQLProd := 'SELECT EMPRESAID, PRODUTOID, SUSPENSAOIPI, ISENTOIPI, ALIQUOTAIPI, ' +
             ' DATAINICIALIPI, DATAFINALIPI, REDUCAOICMS ' +
             ' FROM EF_PRODUTO ' +
             ' WHERE EMPRESAID = ' + dmEF.cdsPdeItemEMPRESAID.AsString +
             '   AND PRODUTOID = ' + dmEF.cdsPdeItemPRODUTOID.AsString;
 iSQLNat  := 'SELECT NATUREZAOPID, TRIBUTADO, SUSPENSAOIPI, ISENTOIPI, SITTRIBESTADUAL, IPIBASE, MOVIMENTOESTOQUE, ' +
             ' CREDITOPIS, CREDITOCOFINS, CREDITOIPI ' +
             ' FROM EF_NATUREZAOP ' +
             ' WHERE NATUREZAOPID = ' + dmEF.cdsPdeItemNATUREZAOPID.AsString;

 try
  ExecDynamicProvider( -1, iSQLProd, cdsProd );
  ExecDynamicProvider( -1, iSQLNat, cdsNat );

  // Alíquota do ICMS
  dmEF.cdsPdeItemALIQUOTAICMS.AsFloat   := dmIT.cdsMercadoriaALIQUOTAICMS.AsFloat;
  dmEF.cdsPdeItemALIQUOTACOFINS.AsFloat := dmEF.shdcnnEF.AppServer.IAliquotaImposto('COFINS');
  dmEF.cdsPdeItemVLRCREDCOFINS.Value    := dmIT.cdsMercadoriaVLRCOFINS.Value;
  dmEF.cdsPdeItemALIQUOTAPIS.AsFloat    := dmEF.shdcnnEF.AppServer.IAliquotaImposto('PIS');
  dmEF.cdsPdeItemVLRCREDPIS.Value       := dmIT.cdsMercadoriaVLRPIS.Value;
  dmEF.cdsPdeItemVLRBASEIPI.Value       := 0;
  dmEF.cdsPdeItemALIQUOTAIPI.Value      := dmIT.cdsMercadoriaALIQUOTAIPI.Value;
  dmEF.cdsPdeItemVLRIPI.Value           := 0;
  dmEF.cdsPdeItemVLRISENTASIPI.Value    := 0;
  dmEF.cdsPdeItemVLROUTRASIPI.Value     := 0;
  dmEF.cdsPdeItemDATAINICIALIPI.Value   := cdsProd.FieldByName('DATAINICIALIPI').AsSQLTimeStamp;
  dmEF.cdsPdeItemDATAFINALIPI.Value     := cdsProd.FieldByName('DATAFINALIPI').AsSQLTimeStamp;

  // Tributado
  if      cdsNat.FieldByName('TRIBUTADO').AsInteger = 1 then
          begin
           dmEF.cdsPdeItemVLRBASEIPI.Value       := dmIT.cdsMercadoriaVLRBASEIPI.Value;
           dmEF.cdsPdeItemVLRIPI.Value           := dmIT.cdsMercadoriaVLRIPI.Value;;
           dmEF.cdsPdeItemVLRISENTASIPI.Value    := 0;
           dmEF.cdsPdeItemVLROUTRASIPI.Value     := 0;
           dmEF.cdsPdeItemTIPOIPI.Value          := 'T';
          end

  // Suspensão / Outras IPI
  else if ( cdsProd.FieldByName('SUSPENSAOIPI').AsInteger = 1 ) or
          ( cdsNat.FieldByName('SUSPENSAOIPI').AsInteger = 1 ) then
          begin
           dmEF.cdsPdeItemVLRBASEIPI.Value       := 0;
           dmEF.cdsPdeItemVLRIPI.Value           := 0;
           dmEF.cdsPdeItemVLRISENTASIPI.Value    := 0;
           dmEF.cdsPdeItemVLROUTRASIPI.Value     := dmIT.cdsMercadoriaVLRBASEIPI.Value;
           dmEF.cdsPdeItemTIPOIPI.Value          := 'S';
          end

  // Isento IPI / Não Tributado
  else if ( cdsProd.FieldByName('ISENTOIPI').AsInteger = 1 ) or
          ( cdsNat.FieldByName('ISENTOIPI').AsInteger = 1 ) then
          begin
           dmEF.cdsPdeItemVLRBASEIPI.Value       := 0;
           dmEF.cdsPdeItemVLRIPI.Value           := 0;
           dmEF.cdsPdeItemVLRISENTASIPI.Value    := dmIT.cdsMercadoriaVLRBASEIPI.Value;
           dmEF.cdsPdeItemVLROUTRASIPI.Value     := 0;
           dmEF.cdsPdeItemTIPOIPI.Value          := 'I';
          end
  { Compra tributado mas não tem direito a crédito.
    TRIBUTAÇÃO NA NATUREZA DE OPERAÇÃO TEM ESTAR SEM MARCAR NADA
    E A TRIBUTAÇÃO DO PRODUTO TAMBÉM }
  else
          begin
           dmEF.cdsPdeItemVLRBASEIPI.Value       := 0;

           if  cdsNat.FieldByName('CREDITOIPI').AsInteger = 1 then
               dmEF.cdsPdeItemVLRIPI.Value  := dmIT.cdsMercadoriaVLRIPI.Value
           else
               dmEF.cdsPdeItemVLRIPI.Value  := 0;

           dmEF.cdsPdeItemVLRISENTASIPI.Value    := 0;

           if  ( cdsNat.FieldByName('CREDITOIPI').AsInteger = 0 ) then
               dmEF.cdsPdeItemVLROUTRASIPI.Value := dmIT.cdsMercadoriaVLRBASEIPI.Value +
                                                        ( dmIT.cdsMercadoriaVLRBASEIPI.Value * ( dmEF.cdsPdeItemALIQUOTAIPI.AsCurrency / 100 ) )
           else
               dmEF.cdsPdeItemVLROUTRASIPI.Value := dmIT.cdsMercadoriaVLRBASEIPI.Value;

           dmEF.cdsPdeItemTIPOIPI.Value := 'N';
          end;

  // Cálculo das base ICMS
  case cdsNat.FieldByName('SITTRIBESTADUAL').AsInteger of
  0   : begin
         dmEF.cdsPdeItemVLRBASEICMS.Value := dmIT.cdsMercadoriaVLRBASEICMS.Value;
         dmEF.cdsPdeItemVLRICMS.Value     := dmIT.cdsMercadoriaVLRICMS.Value;
        end;
  // ICMS com redução
  20  : begin
         dmEF.cdsPdeItemPORCREDUCAOICMS.Value := cdsProd.FieldByName('REDUCAOICMS').Value;
         dmEF.cdsPdeItemVLRBASEICMS.Value     := dmIT.cdsMercadoriaVLRBASEICMS.Value;
         dmEF.cdsPdeItemVLRICMS.Value         := dmIT.cdsMercadoriaVLRICMS.Value;
         dmEF.cdsPdeItemVLRISENTASICMS.Value  := dmEF.cdsPdeItemVLRPRECOTOTAL.Value - dmIT.cdsMercadoriaVLRBASEICMS.Value;
        end;

  // ICMS isento
  40..41: dmEF.cdsPdeItemVLRISENTASICMS.Value := dmIT.cdsMercadoriaVLRBASEICMS.Value;

  // ICMS Suspensão
  50    : dmEF.cdsPdeItemVLROUTRASICMS.Value  := dmIT.cdsMercadoriaVLRBASEICMS.Value;

  // ICMS diferido
  51    : begin
           dmEF.cdsPdeItemVLRBASEICMS.Value    := dmIT.cdsMercadoriaVLRBASEICMS.Value;
           dmEF.cdsPdeItemVLRICMS.Value        := dmIT.cdsMercadoriaVLRICMS.Value;
          end;

  // ICMS Outras
  52..90: dmEF.cdsPdeItemVLROUTRASICMS.Value  := dmIT.cdsMercadoriaVLRBASEICMS.Value;

  end;

  cdsProd.Close;
  cdsNat.Close;

 finally
  FreeAndNil( cdsProd );
  FreeAndNil( cdsNat );
 end;
end;


procedure TfrmDeclaracao.GerarPDE_DI;
var cds : TClientDataSet;
    iSQL, Descricao : String;
    EmpresaAnterior : Integer;
begin
 EmpresaAnterior := EmpresaAtualId;
 EmpresaAtualId  := dmIT.cdsDeclaracaoEMPRESAID.AsInteger;

 cds  := nil;
 iSQL := 'SELECT PDEID, DIID '+
         'FROM EF_PDE '+
         'WHERE DIID = '+ QuotedStr( dmIT.cdsDeclaracaoDIID.AsString );

 try
  ExecDynamicProvider(-1,iSQL,cds);

  if not cds.IsEmpty then
     begin
      MessageDlg('Pedido de Nota Fiscal de Entrada já gerado com número : ' +
                 cds.FieldByName('PDEID').AsString, mtInformation,[mbOk], 0);
      Exit;
     end;

  with dmIT, dmEF do
  begin
   if not cdsDeclaracaoNFEID.IsNull then
      begin
       MessageDlg('Nota fiscal já foi emitida para esta DI!', mtInformation,[mbOk], 0);
       Exit;
      end;

   // Criar Pedido de Entrada para Importação
   if ( Length( cdsDeclaracaoDIID.Value) = 0 ) or (  cdsDeclaracaoDATAREGISTRO.IsNull  ) or
      ( cdsDeclaracaoL_DOLARFISCALDIARIO.AsCurrency = 0 ) or ( cdsDeclaracaoDATALIBERACAO.IsNull ) then
      begin
       MessageDlg('Há campos não preenchidos na Declaração.', mtInformation,[mbOk], 0);
       Exit;
      end;

   // Verificar se já existe CFOP
   if cdsDeclaracaoNATUREZAOPID.Value < 1 then
      begin
       MessageDlg('Natureza de Operação não existe.', mtInformation,[mbOk], 0);
       Exit;
      end;

   cdsPde.Open;
   cdsPDE.Insert;
   cdsPdeEMPRESAID.Value           := cdsDeclaracaoEMPRESAID.Value;
   cdsPdeDIID.Value                := cdsDeclaracaoDIID.Value;
   cdsPdeTIPONOTA.Value            := 'I';
   cdsPdeENTIDADEID.Value          := cdsDeclaracaoFORNECEDORID.Value;
   cdsPdeNATUREZAOPID.Value        := cdsDeclaracaoNATUREZAOPID.Value;
   cdsPdeDESCRICAOOBSERVACAO.Value := cdsPdeDESCRICAOOBSERVACAO.Value + ' ' +
                                     'VLR. DO PIS.:' + FormatFloat( '#,##0.00', cdsDeclaracaoVLRTOTALPIS.AsCurrency ) + '  ' +
                                     'VLR. DA COFINS.:' + FormatFloat( '#,##0.00', cdsDeclaracaoVLRTOTALCOFINS.AsCurrency ) + '  ';

   Descricao := 'Importacao de parts e pecas conforme processos: ';
   cdsMercadoria.First;
   while not cdsMercadoria.Eof do
   begin
    if Pos( Descricao, Trim( cdsMercadoriaL_SIGLA.Value) + ' ' + trim( cdsMercadoriaPROCESSOID.AsString) ) = 0 then
       Descricao := Descricao + Trim( cdsMercadoriaL_SIGLA.Value ) + ' ' + Trim( cdsMercadoriaPROCESSOID.AsString ) + '  ';
    cdsMercadoria.Next;
   end;

   cdsPdeDESCRICAOIMPORTACAO.Value := Descricao + ' pertencentes a DI :' + cdsDeclaracaoDIID.Value;

   cdsMercadoria.First;
   while not cdsMercadoria.Eof do
   begin
    cdsPdeItem.Insert;
    cdsPdeItemPRODUTOID.Value       := cdsMercadoriaPRODUTOID.Value;
    cdsPdeItemQUANTIDADE.Value      := cdsMercadoriaQUANTIDADE.Value;

    // Valor total CIF + VLR DO II
    cdsPdeItemVLRPRECOUNITARIO.Value := ( cdsMercadoriaVLRCIF.Value + ( ( cdsMercadoriaVLRCIF.Value * cdsMercadoriaALIQUOTAII.AsCurrency ) / 100 ) ) / cdsMercadoriaQUANTIDADE.Value;

//    cdsPdeItemVLRPRECOTOTAL.Value   := cdsMercadoriaVLRCIF.Value + ( ( cdsMercadoriaVLRCIF.Value * cdsMercadoriaALIQUOTAII.AsCurrency ) / 100 );

    BasesEntradaImportada;

    cdsPdeItem.Post;
    cdsMercadoria.Next;
   end;

   frmDeclaracaoDadosPDE := TfrmDeclaracaoDadosPDE.Create( Self );
   frmDeclaracaoDadosPDE.ShowModal;

   cdsPdeEMBPESOLIQUIDO.Value      := cdsDeclaracaoVLRTOTALPESO.AsCurrency;
   cdsPDE.Post;

   MessageDlg('Pedido de entrada ' + cdsPdePDEID.AsString + ' criado com sucesso.' , mtInformation, [mbOk], 0);
  end;
 finally
  EmpresaAtualId  := EmpresaAnterior;

  FreeAndNil( cds );
 end;
end;

procedure TfrmDeclaracao.FormCreate(Sender: TObject);
begin
 with dmIT do
 begin
  {cdsDeclaracao.PacketRecords := 0;}
  cdsAdicao.Open;
  cdsMercadoria.Open;
 end;
end;

procedure TfrmDeclaracao.actFecharExecute(Sender: TObject);
begin
 Close;
end;

procedure TfrmDeclaracao.wwDBComboDlg2CustomDlg(Sender: TObject);
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
 if not dmEF.cdsEmpresa.Locate('EMPRESAID', VarArrayOf([ EmpresaAtualId]), [loPartialKey]) then
    begin
     MessageDlg('Problemas com o cadatro de empresas, favor comunidar o departamento de Informática.', mtInformation,[mbOk], 0);
     exit
    end;

 CfopInicial := '3';  // Exterior;

 iSql := iSql + '  AND SUBSTR( EF_NATUREZAOP.CFOP, 1, 1 ) =  ' + CfopInicial +
                '  AND EF_NATUREZAEMPRESA.EMPRESAID = ' + dmIT.cdsDeclaracaoEMPRESAID.AsString;

 CriaFormLookUp( dmEF.cdsNaturezaOp.Name, iSql, dmIT.cdsDeclaracaoNATUREZAOPID ,'NATUREZAOPID','NATUREZAOPID' );
end;

procedure TfrmDeclaracao.wwDBComboDlg3CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa( dmEF.dsEntidade ,'ENTIDADEID', dmIT.cdsDeclaracaoFORNECEDORID.AsString );
 ExecLoockupRetorno( dmIT.cdsDeclaracao ,'FORNECEDORID','ENTIDADEID' );
end;

procedure TfrmDeclaracao.wwDBComboDlg1CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa( dmEF.dsEntidade ,'ENTIDADEID', dmIT.cdsDeclaracaoIMPORTADORID.AsString );
 ExecLoockupRetorno( dmIT.cdsDeclaracao ,'IMPORTADORID','ENTIDADEID' );
end;

procedure TfrmDeclaracao.wwDBComboDlg4CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa( dmIT.dsDespachante ,'DESPACHANTEID',dmIT.cdsDeclaracaoDESPACHANTEID.AsString );
 ExecLoockupRetorno( dmIT.cdsDeclaracao ,'DESPACHANTEID','DESPACHANTEID' );
end;

procedure TfrmDeclaracao.FormKeyPress(Sender: TObject; var Key: Char);
begin
 // Habilitar a propriedade KeyPreview do Form para funcionar o Enter como Tab
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;

procedure TfrmDeclaracao.actRelatorioExecute(Sender: TObject);
var ParamPesquisa : String;
begin
 if dmIT.cdsDeclaracaoDIID.AsString = '05/1378518-8' then
    MessageDlg('Valor do Icms Alterado no Relatório, segundo solicitações da Contabilidade! ',mtWarning,[mbok],0 );

 ParamPesquisa := 'IT_DECLARACAO.DECLARACAOID = ' + dmIT.cdsDeclaracaoDECLARACAOID.AsString;
 GerarPesquisa( dmIT.cdsDeclaracao, ParamPesquisa );
 try
  frmRelFichaDI := TfrmRelFichaDI.Create( Nil );
  frmRelFichaDI.QuickRep1.Preview;
 finally
  FreeAndNil( frmRelFichaDI.QuickRep1 );
  FreeAndNil( frmRelFichaDI );
 end;
end;

procedure TfrmDeclaracao.actCalcularResumoExecute(Sender: TObject);
begin
 dmIT.cdsDeclaracao.Post;
 dmIT.shdcnnIT.AppServer.ICalculoAdicao( dmIT.cdsDeclaracaoDECLARACAOID.AsInteger, dmGsi.UsuarioAtivo );
 dmIT.shdcnnIT.AppServer.IResumoDI( dmIT.cdsDeclaracaoDECLARACAOID.AsInteger, dmGSI.UsuarioAtivo  );
 dmIT.cdsDeclaracao.Refresh;
 dmIT.cdsDeclaracao.Edit;
 MessageDlg( 'Cálculo do resumo da DI realizado com sucesso',mtInformation, [mbOK], 0 );
end;

procedure TfrmDeclaracao.actCalcularCIFExecute(Sender: TObject);
var HistPadrao, ParamPesquisa : String;
begin
 if dmIT.cdsDeclaracaoREFERENCIA.IsNull then
    begin
     HistPadrao := '';
     dmIT.cdsMercadoria.First;
     while not dmIT.cdsMercadoria.Eof do
     begin
      HistPadrao := HistPadrao + dmIT.cdsMercadoriaL_SIGLA.Value + ' ' +
                    dmIT.cdsMercadoriaPROCESSOID.AsString + ' - ';

      dmIT.cdsMercadoria.Next;
     end;

     dmIT.cdsDeclaracaoREFERENCIA.Value := HistPadrao;
    end;

 dmIT.cdsDeclaracao.Post;

 dmIT.shdcnnIT.AppServer.ICalculoAdicao( dmIT.cdsDeclaracaoDECLARACAOID.AsInteger, dmGsi.UsuarioAtivo );

 ParamPesquisa := 'IT_DECLARACAO.DECLARACAOID = ' + dmIT.cdsDeclaracaoDECLARACAOID.AsString;
 GerarPesquisa( dmIT.cdsDeclaracao, ParamPesquisa );

 dmIT.cdsDeclaracao.Edit;
 MessageDlg( 'Cálculo CIF realizado com sucesso',mtInformation, [mbOK], 0 );
end;

procedure TfrmDeclaracao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 if not FinalFormulario(dmIT.cdsDeclaracao,' da Declaração') then
    Action := caNone
 else
    begin
     Action        := caFree;
     frmDeclaracao := Nil;
    end;
end;

procedure TfrmDeclaracao.FormShow(Sender: TObject);
begin
 tmbEdicaoLista1.TtmbClientDataSet   := dmIT.cdsMercadoria;
 tmbEdicaoLista1.TtmbDataSource      := dmIT.dsMercadoria;
 tmbEdicaoLista1.TtmbClassOwnerEspec := TFrmPadraoEdicao;
 tmbEdicaoLista1.TtmbFormOwnerEspec  := FrmPadraoEdicao;
 tmbEdicaoLista1.TtmbCriar           := true;
 tmbEdicaoLista1.TtmbDesativaInserir := False
end;

procedure TfrmDeclaracao.actRelatorioPedDIExecute(Sender: TObject);
var ParamPesquisa : String;
begin
 ParamPesquisa := 'IT_DECLARACAO.DECLARACAOID = '+ dmIT.cdsDeclaracaoDECLARACAOID.AsString;
 GerarPesquisa( dmIT.cdsDeclaracao,ParamPesquisa );

 frmParDI := TfrmParDI.Create(nil);
 frmParDI.Show;
end;

procedure TfrmDeclaracao.actAdicionarProcessosExecute(Sender: TObject);
begin
 if not Assigned( frmVisualizaProcesso ) then
    frmVisualizaProcesso := TfrmVisualizaProcesso.Create( Application )
 else
    frmVisualizaProcesso.ExecutaFiltro;

 frmVisualizaProcesso.ShowModal;
end;

procedure TfrmDeclaracao.actPDEExecute(Sender: TObject);
begin
 actCalcularCIFExecute( Sender );
 GerarPDE_DI;
end;

procedure TfrmDeclaracao.pgctrlDIChange(Sender: TObject);
begin
 if pgctrlDI.ActivePageIndex = 2 then
    tmbAjtgrdMercadoria.tmbAjusta := True;
end;

end.
