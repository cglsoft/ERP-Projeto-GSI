unit u_rmSrvAppRD;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr, DateUtils,
  DBClient, GSIServidor_TLB, StdVcl, FMTBcd, Provider, DB, SqlExpr, Dialogs,
  Forms, Variants;

type
  TSrvAppRD = class(TRemoteDataModule, ISrvAppRD)
    sqldtsOperacao: TSQLDataSet;
    sqldtsOperacaoOPERACAOID: TBCDField;
    sqldtsOperacaoFINALIDADE: TStringField;
    sqldtsOperacaoDESCRICAO: TStringField;
    sqldtsOperacaoCONTACONTABILID: TStringField;
    sqldtsOperacaoOPERACAO: TStringField;
    sqldtsOperacaoUSUARIO: TStringField;
    sqldtsAdiantamento: TSQLDataSet;
    sqldtsAdiantamentoADIANTAMENTOID: TBCDField;
    sqldtsAdiantamentoDATASOLICITACAO: TSQLTimeStampField;
    sqldtsAdiantamentoDATADEPOSITO: TSQLTimeStampField;
    sqldtsAdiantamentoFUNCIONARIOID: TBCDField;
    sqldtsAdiantamentoOPERACAOID: TBCDField;
    sqldtsAdiantamentoVLROPERACAO: TBCDField;
    sqldtsAdiantamentoHORASOLICITADA: TSQLTimeStampField;
    sqldtsAdiantamentoHISTORICO: TStringField;
    sqldtsAdiantamentoLIBCHEFIA: TBCDField;
    sqldtsAdiantamentoNOMELIBCHEFIA: TStringField;
    sqldtsAdiantamentoLIBERADO: TBCDField;
    sqldtsAdiantamentoKMSAIDA: TBCDField;
    sqldtsAdiantamentoKMCHEGADA: TBCDField;
    sqldtsAdiantamentoUSUARIO: TStringField;
    sqldtsAdiantamentoItem: TSQLDataSet;
    sqldtsAdiantamentoItemADIANTAMENTOID: TBCDField;
    sqldtsAdiantamentoItemITEMID: TBCDField;
    sqldtsAdiantamentoItemDATASOLICITACAO: TSQLTimeStampField;
    sqldtsAdiantamentoItemOPERACAOID: TBCDField;
    sqldtsAdiantamentoItemVLROPERACAO: TBCDField;
    sqldtsAdiantamentoItemHISTORICO: TStringField;
    sqldtsAdiantamentoItemKMSAIDA: TBCDField;
    sqldtsAdiantamentoItemKMCHEGADA: TBCDField;
    sqldtsAdiantamentoItemUSUARIO: TStringField;
    dsAdiantamentoLink: TDataSource;
    dsprvOperacao: TDataSetProvider;
    dsprvAdiantamento: TDataSetProvider;
    sqldtsFeriado: TSQLDataSet;
    sqldtsFeriadoFILIALID: TBCDField;
    sqldtsFeriadoFERIADOREGIONAL: TBCDField;
    sqldtsFeriadoDESCRICAOFERIADO: TStringField;
    sqldtsFeriadoUSUARIO: TStringField;
    dsprvFeriado: TDataSetProvider;
    sqldtsRdv: TSQLDataSet;
    sqldtsRdvRDVID: TBCDField;
    sqldtsRdvDATAABERTURA: TSQLTimeStampField;
    sqldtsRdvVLRSALDO: TBCDField;
    sqldtsRdvDATAFECHAMENTO: TSQLTimeStampField;
    sqldtsRdvDATAMESABERTO: TSQLTimeStampField;
    sqldtsRdvBLOQUEADO: TBCDField;
    sqldtsRdvItem: TSQLDataSet;
    sqldtsRdvItemRDVID: TBCDField;
    sqldtsRdvItemDATAMOVIMENTOID: TSQLTimeStampField;
    sqldtsRdvItemITEMID: TBCDField;
    sqldtsRdvItemDATADOC: TSQLTimeStampField;
    sqldtsRdvItemOSID: TStringField;
    sqldtsRdvItemOPERACAOID: TBCDField;
    sqldtsRdvItemHISTORICO: TStringField;
    sqldtsRdvItemKMSAIDA: TBCDField;
    sqldtsRdvItemKMCHEGADA: TBCDField;
    sqldtsRdvItemDATAFECHAMENTO: TSQLTimeStampField;
    sqldtsRdvItemUSUARIO: TStringField;
    dsRdvLink: TDataSource;
    dsprvRdv: TDataSetProvider;
    sqldtsRdvEspelho: TSQLDataSet;
    sqldtsRdvEspelhoRDVID: TBCDField;
    sqldtsRdvEspelhoDATADOCID: TSQLTimeStampField;
    sqldtsRdvEspelhoITEMID: TBCDField;
    sqldtsRdvEspelhoOSID: TStringField;
    sqldtsRdvEspelhoOPERACAOID: TBCDField;
    sqldtsRdvEspelhoVLRDESPESA: TBCDField;
    sqldtsRdvEspelhoVLRSALDO: TBCDField;
    sqldtsRdvEspelhoHISTORICO: TStringField;
    sqldtsRdvEspelhoKMSAIDA: TBCDField;
    sqldtsRdvEspelhoKMCHEGADA: TBCDField;
    sqldtsRdvEspelhoUSUARIO: TStringField;
    sqldtsHora: TSQLDataSet;
    sqldtsHoraHORAID: TBCDField;
    sqldtsHoraDATAABERTURA: TSQLTimeStampField;
    sqldtsHoraVLRSALDO: TBCDField;
    sqldtsHoraDATAFECHAMENTO: TSQLTimeStampField;
    sqldtsHoraBLOQUEADO: TBCDField;
    sqldtsHoraItem: TSQLDataSet;
    sqldtsHoraItemHORAID: TBCDField;
    sqldtsHoraItemDATASERVICOID: TSQLTimeStampField;
    sqldtsHoraItemITEMID: TBCDField;
    sqldtsHoraItemOSID: TStringField;
    sqldtsHoraItemOPERACAOID: TBCDField;
    sqldtsHoraItemHORAINI: TSQLTimeStampField;
    sqldtsHoraItemHORAFIM: TSQLTimeStampField;
    sqldtsHoraItemVLRSALDO: TBCDField;
    sqldtsHoraItemHISTORICO: TStringField;
    sqldtsHoraItemUSUARIO: TStringField;
    dsHoraLink: TDataSource;
    dsprvHora: TDataSetProvider;
    sqldtsFeriadoL_NOMEFANTASIAFILIAL: TStringField;
    sqldtsRdvL_NOMEFUNCIONARIO: TStringField;
    sqldtsRdvItemL_DESCRICAOOPERACAO: TStringField;
    sqldtsRdvEspelhoL_DESCRICAOOPERACAO: TStringField;
    sqldtsHoraItemL_DESCRICAOOPERACAO: TStringField;
    sqldtsAdiantamentoL_DESCRICAOOPERACAO: TStringField;
    sqldtsAdiantamentoL_NOMEFUNCIONARIO: TStringField;
    sqldtsAdiantamentoItemL_DESCRICAOOPERACAO: TStringField;
    sqldtsRdvItemVLRDESPESA: TBCDField;
    sqldtsRdvItemVLRSALDO: TBCDField;
    sqldtsHoraL_NOMEFUNCIONARIO: TStringField;
    sqldtsAdiantamentoL_OPERACAO: TStringField;
    sqldtsAdiantamentoL_VLRSALDO: TBCDField;
    sqldtsRdvItemL_OPERACAO: TStringField;
    sqldtsHoraItemL_OPERACAO: TStringField;
    sqldtsRelRdv: TSQLDataSet;
    dsprvRelRdv: TDataSetProvider;
    sqldtsRelRdvRDVID: TBCDField;
    sqldtsRelRdvDATAMOVIMENTOID: TSQLTimeStampField;
    sqldtsRelRdvITEMID: TBCDField;
    sqldtsRelRdvDATADOC: TSQLTimeStampField;
    sqldtsRelRdvOSID: TStringField;
    sqldtsRelRdvOPERACAOID: TBCDField;
    sqldtsRelRdvVLRDESPESA: TBCDField;
    sqldtsRelRdvVLRSALDO: TBCDField;
    sqldtsRelRdvHISTORICO: TStringField;
    sqldtsRelRdvKMSAIDA: TBCDField;
    sqldtsRelRdvKMCHEGADA: TBCDField;
    sqldtsRelRdvCONTACONTABILID: TStringField;
    sqldtsRelRdvOPERACAO: TStringField;
    sqldtsRelRdvDESCRICAO: TStringField;
    sqldtsRelRdvUSUARIO: TStringField;
    sqldtsRdvL_CONTACONTABIL: TStringField;
    sqldtsRdvL_DEPARTAMENTO: TStringField;
    sqldtsAdiantamentoL_DATAFECHAMENTO: TSQLTimeStampField;
    sqldtsRdvItemL_CONTACONTABIL: TStringField;
    sqldtsAdiantamentoTIPODESPESAOS: TStringField;
    sqldtsAdiantamentoOSID: TStringField;
    sqldtsRdvItemTIPODESPESAOS: TStringField;
    sqldtsRdvEspelhoTIPODESPESAOS: TStringField;
    sqldtsFeriadoFERIADOID: TBCDField;
    sqldtsFeriadoDATAFERIADO: TSQLTimeStampField;
    sqldtsOperacaoBLOQUEADO: TBCDField;
    sqldtsRDVLog: TSQLDataSet;
    sqldtsRDVLogRDVID: TBCDField;
    sqldtsRDVLogITEMID: TBCDField;
    sqldtsRDVLogDATAEXCLUSAO: TSQLTimeStampField;
    sqldtsRDVLogLOGRDVID: TBCDField;
    sqldtsRDVLogDATAMOVIMENTOID: TSQLTimeStampField;
    sqldtsRDVLogDATADOC: TSQLTimeStampField;
    sqldtsRDVLogTIPODESPESAOS: TStringField;
    sqldtsRDVLogOSID: TStringField;
    sqldtsRDVLogOPERACAOID: TBCDField;
    sqldtsRDVLogL_DESCRICAOOPERACAO: TStringField;
    sqldtsRDVLogL_OPERACAO: TStringField;
    sqldtsRDVLogVLRDESPESA: TBCDField;
    sqldtsRDVLogVLRSALDO: TBCDField;
    sqldtsRDVLogHISTORICO: TStringField;
    sqldtsRDVLogKMSAIDA: TBCDField;
    sqldtsRDVLogKMCHEGADA: TBCDField;
    sqldtsRDVLogDATAFECHAMENTO: TSQLTimeStampField;
    sqldtsRDVLogOBSERVACAO: TStringField;
    sqldtsRDVLogUSUARIO: TStringField;
    sqldtsLogRDV: TSQLDataSet;
    sqldtsLogRDVLOGRDVID: TBCDField;
    sqldtsLogRDVDESCRICAO: TStringField;
    sqldtsLogRDVUSUARIO: TStringField;
    dsprvLogRDV: TDataSetProvider;
    sqldtsRDVLogL_LOGRDVDESCRICAO: TStringField;
    sqldtsRDVLog2: TSQLDataSet;
    dsprvRDVLog2: TDataSetProvider;
    sqldtsRDVLog2RDVID: TBCDField;
    sqldtsRDVLog2ITEMID: TBCDField;
    sqldtsRDVLog2DATAEXCLUSAO: TSQLTimeStampField;
    sqldtsRDVLog2LOGRDVID: TBCDField;
    sqldtsRDVLog2L_LOGRDVDESCRICAO: TStringField;
    sqldtsRDVLog2DATAMOVIMENTOID: TSQLTimeStampField;
    sqldtsRDVLog2DATADOC: TSQLTimeStampField;
    sqldtsRDVLog2TIPODESPESAOS: TStringField;
    sqldtsRDVLog2OSID: TStringField;
    sqldtsRDVLog2OPERACAOID: TBCDField;
    sqldtsRDVLog2L_DESCRICAOOPERACAO: TStringField;
    sqldtsRDVLog2L_OPERACAO: TStringField;
    sqldtsRDVLog2VLRDESPESA: TBCDField;
    sqldtsRDVLog2VLRSALDO: TBCDField;
    sqldtsRDVLog2HISTORICO: TStringField;
    sqldtsRDVLog2KMSAIDA: TBCDField;
    sqldtsRDVLog2KMCHEGADA: TBCDField;
    sqldtsRDVLog2DATAFECHAMENTO: TSQLTimeStampField;
    sqldtsRDVLog2OBSERVACAO: TStringField;
    sqldtsRDVLog2USUARIO: TStringField;
    sqldtsRdvItemADIANTAMENTOID: TBCDField;
    sqldtsRdvEspelhoADIANTAMENTOID: TBCDField;
    sqldtsRDVLogADIANTAMENTOID: TBCDField;
    sqldtsRDVLog2ADIANTAMENTOID: TBCDField;
    sqldtsAdiantamentoIMPRESSO: TBCDField;
    sqldtsMemo: TSQLDataSet;
    sqldtsMemoMEMOID: TBCDField;
    sqldtsMemoDATASOLICITACAO: TSQLTimeStampField;
    sqldtsMemoDATADEPOSITO: TSQLTimeStampField;
    sqldtsMemoFUNCIONARIOID: TBCDField;
    sqldtsMemoL_NOMEFUNCIONARIO: TStringField;
    sqldtsMemoOPERACAOID: TBCDField;
    sqldtsMemoL_DESCRICAOOPERACAO: TStringField;
    sqldtsMemoL_OPERACAO: TStringField;
    sqldtsMemoVLRMEMO: TBCDField;
    sqldtsMemoHISTORICO: TStringField;
    sqldtsMemoSOLICITANTE: TStringField;
    sqldtsMemoLIBERADO: TBCDField;
    sqldtsMemoTRANSFERIDO: TBCDField;
    dsprvMemo: TDataSetProvider;
    sqldtsRDVLogITEMRDVID: TBCDField;
    sqldtsHoraItemDIFERENCAMINTRAB: TFMTBCDField;
    sqldtsBancoHora: TSQLDataSet;
    dsprvBancoHora: TDataSetProvider;
    sqldtsBancoHoraBANCOHORAID: TBCDField;
    sqldtsBancoHoraDATASOLICITACAO: TSQLTimeStampField;
    sqldtsBancoHoraFUNCIONARIOID: TBCDField;
    sqldtsBancoHoraL_NOMEFUNCIONARIO: TStringField;
    sqldtsBancoHoraTIPODESPESAOS: TStringField;
    sqldtsBancoHoraOSID: TStringField;
    sqldtsBancoHoraOPERACAOID: TBCDField;
    sqldtsBancoHoraL_DESCRICAOOPERACAO: TStringField;
    sqldtsBancoHoraL_OPERACAO: TStringField;
    sqldtsBancoHoraHORAINI: TSQLTimeStampField;
    sqldtsBancoHoraHORAFIM: TSQLTimeStampField;
    sqldtsBancoHoraDIFERENCAMINTRAB: TFMTBCDField;
    sqldtsBancoHoraHISTORICO: TStringField;
    sqldtsBancoHoraLIBCHEFIA: TBCDField;
    sqldtsBancoHoraNOMELIBCHEFIA: TStringField;
    sqldtsBancoHoraLIBERADO: TBCDField;
    sqldtsBancoHoraIMPRESSO: TBCDField;
    sqldtsBancoHoraUSUARIO: TStringField;
    sqldtsHoraL_FILIALID: TBCDField;
    sqldtsHoraItemDIFERENCAHORATRAB: TStringField;
    sqldtsBancoHoraL_FILIALID: TBCDField;
    sqldtsBancoHoraDIFERENCAHORATRAB: TStringField;
    sqldtsBancoHoraL_DATAFECHAMENTO: TSQLTimeStampField;
    sqldtsBancoHoraL_DATAMESABERTO: TSQLTimeStampField;
    sqldtsRdvVLRSALDOUS: TFMTBCDField;
    sqldtsRdvItemTIPOMOEDA: TStringField;
    sqldtsRdvEspelhoTIPOMOEDA: TStringField;
    sqldtsRDVLogTIPOMOEDA: TStringField;
    sqldtsAdiantamentoTIPOMOEDA: TStringField;
    sqldtsRdvItemUS: TSQLDataSet;
    sqldtsRDVLog2ITEMRDVID: TBCDField;
    sqldtsRDVLog2TIPOMOEDA: TStringField;
    sqldtsRdvDATAFECHAMENTOUS: TSQLTimeStampField;
    sqldtsMemoTIPOMOEDA: TStringField;
    sqldtsRdvItemDATACONTABILIZACAO: TSQLTimeStampField;
    sqldtsRdvItemUSDATACONTABILIZACAO: TSQLTimeStampField;
    sqldtsMemoDATACONTABILIZACAO: TSQLTimeStampField;
    sqldtsHoraItemVLRSALDOMINUTOS: TFMTBCDField;
    sqldtsBancoHoraMULTILANCAMENTO: TBCDField;
    sqldtsOperacaoHORASDEDUZIR: TFMTBCDField;
    sqldtsAdiantamentoDATALIBCHEFIA: TSQLTimeStampField;
    sqldtsBancoHoraDATALIBCHEFIA: TSQLTimeStampField;
    sqldtsHoraItemBANCOHORAID: TBCDField;
    sqldtsOperacaoLANCEXCLUSIVO: TBCDField;
    sqldtsHoraCFG: TSQLDataSet;
    dsprvHoraCFG: TDataSetProvider;
    sqldtsHoraCFGANOMES: TBCDField;
    sqldtsHoraCFGDATACADASTRO: TSQLTimeStampField;
    sqldtsHoraCFGDATALIMITEFECH: TSQLTimeStampField;
    sqldtsHoraCFGDATALIMITELIB: TSQLTimeStampField;
    sqldtsHoraCFGUSUARIO: TStringField;
    sqldtsBancoHoraFILIALID: TBCDField;
    sqldtsBancoHoraL_NOMEFANTASIAFILIAL: TStringField;
    sqldtsHorasCfgTrab: TSQLDataSet;
    dsprvHorasCfgTrab: TDataSetProvider;
    sqldtsHorasCfgTrabHORASCFGTRABID: TBCDField;
    sqldtsHorasCfgTrabDESCRICAO: TStringField;
    sqldtsHorasCfgTrabBLOQUEADO: TBCDField;
    sqldtsHorasCfgTrabHORAINICIOTRABALHO: TSQLTimeStampField;
    sqldtsHorasCfgTrabHORAFINALTRABALHO: TSQLTimeStampField;
    sqldtsHorasCfgTrabHORASALMOCO: TFMTBCDField;
    sqldtsHorasCfgTrabLIMITEBCOHORAS: TFMTBCDField;
    sqldtsHorasCfgTrabTRABSABADO: TBCDField;
    sqldtsHorasCfgTrabTRABDOMINGO: TBCDField;
    sqldtsHorasCfgTrabUSUARIO: TStringField;
    sqldtsHoraL_HORASCFGTRABID: TBCDField;
    sqldtsBancoHoraL_HORASCFGTRABID: TBCDField;
    sqldtsAdiantamentoIDENTIFSOLIC: TStringField;
    sqldtsOperacaoIDENTIFSOLIC: TBCDField;
    sqldtsAdiantamentoL_IDENTIFSOLIC: TBCDField;
    sqldtsRdvItemL_IDENTIFSOLIC: TStringField;
    sqldtsRelRdvL_IDENTIFSOLIC: TStringField;
  private
    { Private declarations }
    FSrvAppGSI : ISrvAppGSI;
    FSQLcnn: integer;
    procedure ReprocessarRDV(RDVID: String; var sqlRDV,
      sqlUpd: TSQLQuery; TipoMoeda: String);
    procedure ReprocessarHoras(HoraID: Integer; var sqlHora,
      sqlUpd: TSQLQuery);
    procedure ValidarQtdHorasEfetuadas(FuncionarioID, BancoHoraID: String;
      MinutosAdicionais: Real48; var sqlResumoHora: TSQLQuery);
    procedure ValidarMesAnoBancoHoras( dDate: Double; TipoValidacao : Integer;
      sqlHora : TSQLQuery );
  protected
    class procedure UpdateRegistry(Register: Boolean; const ClassID, ProgID: string); override;
    function Get_dmSrvAppGSI: ISrvAppGSI; safecall;
    procedure Set_dmSrvAppGSI(const Value: ISrvAppGSI); safecall;
    function Get_SQLcnn: Integer; safecall;
    procedure Set_SQLcnn(Value: Integer); safecall;
    function ISQL_RD: OleVariant; safecall;
    procedure IAtualizaSaldo(RdvId: Integer; const TipoMoeda: WideString);
      safecall;
    procedure IAtualizaSaldoHoras(HoraId: Integer); safecall;
    procedure IAtualizaDataFechamento(const DataMovimento: WideString;
      DataFechamento: TDateTime; const RdvId, TipoMoeda: WideString);
      safecall;
    procedure IAtualizaAdiantamento(AdiantamentoId: Integer); safecall;
    function ITransfEspelho(const RdvId, Usuario: WideString;
      Todos: WordBool): Integer; safecall;
    procedure ITransfMovimento(const FuncionarioID, AdiantamentoId,
      DataMesAberto, Usuario: WideString); safecall;
    function ITransfOFFLine(Data: OleVariant): OleVariant; safecall;
    procedure ITransfHoras(const FuncionarioID, BancoHoraID,
      UsuarioID: WideString); safecall;
    procedure ITransfLog(const RDVID, DataMovimentoID, ItemID: WideString);
      safecall;
    function ITransfOFFBancoHora(Data: OleVariant): OleVariant; safecall;
    function ITransfHoraTecnica(Data: OleVariant): OleVariant; safecall;
    function ITransfOSDefeito(Data: OleVariant): OleVariant; safecall;
    function IValidSaldoHoras(const FuncionarioID, BancoHoraID: WideString;
      MinutosAdicionais: Single): WordBool; safecall;
    function IValidLimiteLancHoras(Data: TDateTime; Tipo: Integer): WordBool;
      safecall;
    function ITransfOS(const OSID: WideString; Data, DataOSHoras, DataOSDefeito,
      DataOSMaterial, DataOSOCOperacional, DataRDV,
      DataBancoHora: OleVariant): OleVariant; safecall;
    procedure ValidarOSPadrao( cdsOFF : TClientDataSet; sqlOSVrf,
      sqlOSDef : TSQLQuery; ValidarDefeito : Boolean = True );
  public
    { Public declarations }
    procedure ValidarOSLancamentos( cdsOFF : TClientDataSet; sqlOSVrf,
             sqlOSDef : TSQLQuery; ValidarDefeito : Boolean = True );
    procedure ValidarOSLancamentosSemTry( cdsOFF : TClientDataSet; sqlOSVrf,
             sqlOSDef : TSQLQuery; ValidarDefeito : Boolean = True );
    procedure ProcessarOS( var cdsOff : TClientDataSet;
             sqlOSVrf, sqlUpd, sqlOSDef : TSQLQuery );
    procedure ProcessarBancoHorasOFF( Transacao : Boolean; var cdsOff : TClientDataSet;
             sqlHora, sqlSEQHoras, sqlOSVrf, sqlOSDef, sqlUpd : TSQLQuery );
    procedure ProcessarHoraTecnica( Transacao : Boolean; var cdsOff : TClientDataSet;
             sqlOSVrf, sqlUpd, sqlOSDef : TSQLQuery );
    procedure ProcessarOSDefeito( Transacao : Boolean; var cdsOff : TClientDataSet;
             sqlOSVrf, sqlUpd, sqlOSDef : TSQLQuery );
    procedure ProcessarRDV( Transacao : Boolean; var cdsOff: TClientDataSet;
             sqlUpd, sqladiant, sqlOSVrf, sqlOSDef : TSQLQuery );
    procedure ProcessarOSMaterial( Transacao : Boolean; var cdsOff : TClientDataSet;
             sqlOSVrf, sqlUpd, sqlOSDef : TSQLQuery );
    procedure ProcessarOSOcOperacional( Transacao : Boolean; var cdsOff : TClientDataSet;
             sqlOSVrf, sqlUpd, sqlOSDef : TSQLQuery );
  end;

var FSrvAppRD : TComponentFactory;

implementation

uses u_rmSrvAppGSI, FuncoesServidor, FuncoesDsi;

{$R *.DFM}

class procedure TSrvAppRD.UpdateRegistry(Register: Boolean; const ClassID, ProgID: string);
begin
  if Register then
  begin
    inherited UpdateRegistry(Register, ClassID, ProgID);
    EnableSocketTransport(ClassID);
    EnableWebTransport(ClassID);
  end else
  begin
    DisableSocketTransport(ClassID);
    DisableWebTransport(ClassID);
    inherited UpdateRegistry(Register, ClassID, ProgID);
  end;
end;

function TSrvAppRD.Get_dmSrvAppGSI: ISrvAppGSI;
begin
 Result := FSrvAppGSI;
end;

procedure TSrvAppRD.Set_dmSrvAppGSI(const Value: ISrvAppGSI);
begin
 FSrvAppGSI := Value;
end;

function TSrvAppRD.ISQL_RD: OleVariant;
var cdsGeral: TClientDataSet;
    i:integer;
begin
  Result := null;
  try
   cdsGeral := TClientDataSet.Create(nil);
   cdsGeral.FieldDefs.Add('Nome', ftString, 50, True);
   cdsGeral.FieldDefs.Add('SQL', ftString, 5000, False);
   cdsGeral.CreateDataSet;

   for i := 0 to ComponentCount -1 do
      if Components[i] is TDataSetProvider then
       begin
         cdsGeral.Append;
         cdsGeral.FieldByName('Nome').AsString := UpperCase((Components[i] as TDataSetProvider ).Name);
         cdsGeral.FieldByName('SQL').AsString := ((Components[i] as TDataSetProvider).DataSet as TSQLDataSet).CommandText;
         cdsGeral.Post;
       end;

   Result := cdsGeral.Data;
  finally
   FreeAndNil(cdsGeral);
  end;
end;

function TSrvAppRD.Get_SQLcnn: Integer;
begin
 Result := FSQLcnn;
end;

procedure TSrvAppRD.Set_SQLcnn(Value: Integer);
var i: integer;
begin
  FSQLcnn := Value;
  for i:=0 to ComponentCount-1 do
     if Components[i] is TSQLDataSet then
        TSQLDataSet(Components[i]).SQLConnection := TSQLConnection(FSQLcnn);
end;

procedure TSrvAppRD.ReprocessarRDV( RDVID : String; var sqlRDV, sqlUpd : TSQLQuery;
 TipoMoeda : String );
var Saldo  : Extended;
begin
 sqlRdv.Close;
 sqlRdv.SQL.Clear;
 sqlRdv.SQL.Add('SELECT ');
 sqlRdv.SQL.Add(' RD_RDVITEM.RDVID,');
 sqlRdv.SQL.Add(' RD_RDVITEM.DATAMOVIMENTOID,');
 sqlRdv.SQL.Add(' RD_RDVITEM.ITEMID,');
 sqlRdv.SQL.Add(' RD_OPERACAO.OPERACAO,');
 sqlRdv.SQL.Add(' RD_RDVITEM.VLRDESPESA');
 sqlRdv.SQL.Add('FROM ');
 sqlRdv.SQL.Add(' RD_RDVITEM,');
 sqlRdv.SQL.Add(' RD_OPERACAO');
 sqlRdv.SQL.Add('WHERE ');
 sqlRdv.SQL.Add(' RD_OPERACAO.OPERACAOID (+) = RD_RDVITEM.OPERACAOID');

 if TipoMoeda = 'R'  then
    sqlRdv.SQL.Add(' AND ( RD_RDVITEM.TIPOMOEDA = ''R'' OR RD_RDVITEM.TIPOMOEDA IS NULL ) ' )
 else
    sqlRdv.SQL.Add(' AND RD_RDVITEM.TIPOMOEDA = ''D''') ;

 sqlRdv.SQL.Add(' AND RD_RDVITEM.RDVID = '+ RdvId );
 sqlRdv.SQL.Add('ORDER BY RDVID, DATAMOVIMENTOID, ITEMID ');
 sqlRdv.Prepared := True;
 sqlRdv.Open;

 if sqlRdv.IsEmpty then
    raise Exception.Create('RDV principal não localizado!');

 Saldo  := 0;
 sqlRdv.First;
 while not sqlRdv.Eof do
 begin
  if      sqlRdv.FieldByName('OPERACAO').AsString = 'C' then
          Saldo := Saldo + sqlRdv.FieldByName('VLRDESPESA').AsCurrency
  else if sqlRdv.FieldByName('OPERACAO').AsString = 'D' then
          Saldo := Saldo - sqlRdv.FieldByName('VLRDESPESA').AsCurrency;

  sqlUpd.Close;
  sqlUpd.SQL.Clear;
  sqlUpd.SQL.Add('UPDATE ');
  sqlUpd.SQL.Add(' RD_RDVITEM');
  sqlUpd.SQL.Add('SET RD_RDVITEM.VLRSALDO = '+ SubstituiString( FloatToStr( Saldo ),',','.') );
  sqlUpd.SQL.Add('WHERE ');
  sqlUpd.SQL.Add(' RD_RDVITEM.RDVID = '+ RDVID );
  sqlUpd.SQL.Add(' AND RD_RDVITEM.DATAMOVIMENTOID = '+ QuotedStr( sqlRdv.FieldByName('DATAMOVIMENTOID').AsString ));
  sqlUpd.SQL.Add(' AND RD_RDVITEM.ITEMID = '+ sqlRdv.FieldByName('ITEMID').AsString );
  sqlUpd.Prepared := True;
  sqlUpd.ExecSQL;

  sqlRdv.Next;
 end;

 sqlUpd.Close;
 sqlUpd.SQL.Clear;
 sqlUpd.SQL.Add('UPDATE ');
 sqlUpd.SQL.Add(' RD_RDV');

 if TipoMoeda = 'R' then
    sqlUpd.SQL.Add('SET RD_RDV.VLRSALDO   = '+ SubstituiString( FloatToStr( Saldo ),',','.') )
 else
    sqlUpd.SQL.Add('SET RD_RDV.VLRSALDOUS = '+ SubstituiString( FloatToStr( Saldo ),',','.') );

 sqlUpd.SQL.Add('WHERE ');
 sqlUpd.SQL.Add(' RD_RDV.RDVID = '+ RDVID);
 sqlUpd.Prepared := True;
 sqlUpd.ExecSQL;
end;

procedure TSrvAppRD.IAtualizaSaldo(RdvId: Integer;
  const TipoMoeda: WideString);
var sqlRDV, sqlUpd : TSQLQuery;
begin
 sqlRdv := TSQLQuery.Create(nil);
 sqlRdv.SQLConnection := TSQLConnection(FSQLcnn);

 sqlUpd := TSQLQuery.Create(nil);
 sqlUpd.SQLConnection := TSQLConnection(FSQLcnn);

 try
  try
   { Iniciando a Transacao }
   TSQLConnection( FSQLcnn ).StartTransaction(TD);

   ReprocessarRDV( IntToStr( RDVID ), sqlRDV, sqlUpd, TipoMoeda );

   { Efetivar a transação no Banco de Dados }
   TSQLConnection(FSQLcnn).Commit(TD);

  except
   On E : Exception do
     begin
      if TSQLConnection(FSQLcnn).InTransaction then
         TSQLConnection(FSQLcnn).Rollback(TD);
      raise Exception.Create(E.Message);
     end;
  end;
 finally
  FreeAndNil(sqlRdv);
  FreeAndNil(sqlUpd);
 end;
end;

procedure TSrvAppRD.ReprocessarHoras( HoraID : Integer; var sqlHora, sqlUpd : TSQLQuery );
var Saldo : Extended;
begin
 sqlHora.Close;
 sqlHora.SQL.Clear;
 sqlHora.SQL.Add('SELECT');
 sqlHora.SQL.Add(' RD_HORAITEM.HORAID,');
 sqlHora.SQL.Add(' RD_HORAITEM.HORAINI,');
 sqlHora.SQL.Add(' RD_HORAITEM.ITEMID,');
 sqlHora.SQL.Add(' RD_HORAITEM.OPERACAOID,');
 sqlHora.SQL.Add(' RD_HORAITEM.VLRSALDO,');
 sqlHora.SQL.Add(' RD_HORAITEM.VLRSALDOMINUTOS,');
 sqlHora.SQL.Add(' RD_OPERACAO.OPERACAO,');
 sqlHora.SQL.Add(' RD_HORAITEM.DIFERENCAMINTRAB');
 sqlHora.SQL.Add('FROM');
 sqlHora.SQL.Add(' RD_HORAITEM,');
 sqlHora.SQL.Add(' RD_OPERACAO');
 sqlHora.SQL.Add('WHERE');
 sqlHora.SQL.Add(' RD_OPERACAO.OPERACAOID (+) = RD_HORAITEM.OPERACAOID');
 sqlHora.SQL.Add(' AND RD_HORAITEM.HORAID = '+ IntToStr( HoraId ) );
 sqlHora.SQL.Add(' ORDER BY  RD_HORAITEM.HORAID,RD_HORAITEM.HORAINI, RD_HORAITEM.ITEMID');
 sqlHora.Prepared := True;
 sqlHora.Open;

 Saldo := 0;
 sqlHora.First;
 while not sqlHora.Eof do
 begin
  if      (sqlHora.FieldByName('OPERACAO').AsString = 'C') OR
          (sqlHora.FieldByName('OPERACAO').AsString = 'N') then
          Saldo := Saldo + sqlHora.FieldByName('DIFERENCAMINTRAB').AsFloat
  else if sqlHora.FieldByName('OPERACAO').AsString = 'D' then
          Saldo := Saldo - sqlHora.FieldByName('DIFERENCAMINTRAB').AsFloat;

  sqlUpd.Close;
  sqlUpd.SQL.Clear;
  sqlUpd.SQL.Add('UPDATE');
  sqlUpd.SQL.Add(' RD_HORAITEM');
  sqlUpd.SQL.Add('SET VLRSALDO        = ' + SubstituiString( FloatToStr( FloatToTime( Saldo ) ),',','.' ) + ',' );
  sqlUpd.SQL.Add('    VLRSALDOMINUTOS = ' + SubstituiString( FloatToStr( Saldo ),',','.' ) );
  sqlUpd.SQL.Add('WHERE');
  sqlUpd.SQL.Add(' RD_HORAITEM.HORAID = '+ IntToStr( HoraID ) );
  sqlUpd.SQL.Add(' AND RD_HORAITEM.HORAINI = '+ 'TO_DATE(' + QuotedStr( sqlHora.FieldByName('HORAINI').AsString ) + ', ''dd/mm/yyyy HH24:MI:SS'' )' );
  sqlUpd.SQL.Add(' AND RD_HORAITEM.ITEMID = '+ sqlHora.FieldByName('ITEMID').AsString );
  sqlUpd.Prepared := True;
  sqlUpd.ExecSQL;

  sqlHora.Next;
 end;

 if not sqlHora.IsEmpty then
    begin
     sqlUpd.Close;
     sqlUpd.SQL.Clear;
     sqlUpd.SQL.Add('UPDATE ');
     sqlUpd.SQL.Add(' RD_HORA');
     sqlUpd.SQL.Add('SET RD_HORA.VLRSALDO = '+ SubstituiString( FloatToStr( FloatToTime( Saldo ) ),',','.' ) );
     sqlUpd.SQL.Add('WHERE ');
     sqlUpd.SQL.Add(' RD_HORA.HORAID = '+ IntToStr( HoraID ) );
     sqlUpd.Prepared := True;
     sqlUpd.ExecSQL;
    end;
end;

procedure TSrvAppRD.IAtualizaSaldoHoras(HoraId: Integer);
var sqlHora, sqlUpd : TSQLQuery;
begin
 sqlHora := TSQLQuery.Create(nil);
 sqlHora.SQLConnection := TSQLConnection(FSQLcnn);

 sqlUpd := TSQLQuery.Create(nil);
 sqlUpd.SQLConnection := TSQLConnection(FSQLcnn);

 try
  try
   { Iniciando a Transacao }
   TSQLConnection( FSQLcnn ).StartTransaction(TD);

   ReprocessarHoras( HoraId, sqlHora, sqlUpd );

   { Efetivar a transação no Banco de Dados }
   TSQLConnection(FSQLcnn).Commit(TD);

  except
   On E : Exception do
     begin
      if TSQLConnection(FSQLcnn).InTransaction then
         TSQLConnection(FSQLcnn).Rollback(TD);
      raise Exception.Create(E.message);
     end;
  end;
 finally
  FreeAndNil( sqlHora );
  FreeAndNil( sqlUpd );
 end;
end;

procedure TSrvAppRD.IAtualizaDataFechamento(
  const DataMovimento: WideString; DataFechamento: TDateTime; const RdvId,
  TipoMoeda: WideString);
var sqlUpd : TSQLQuery;
begin
 sqlUpd := TSQLQuery.Create(self);
 sqlUpd.SQLConnection := TSQLConnection(FSQLcnn);

 try
  try
   { Iniciando a Transacao }
   TSQLConnection(FSQLcnn).StartTransaction(TD);

   sqlUpd.SQL.Add('UPDATE RD_RDVITEM');
   if DataMovimento <> '' then
      begin
       sqlUpd.SQL.Add('   SET RD_RDVITEM.DATAFECHAMENTO = '+ QuotedStr( DateToStr( DataFechamento ) ) );
       sqlUpd.SQL.Add(' WHERE RD_RDVITEM.DATAFECHAMENTO IS NULL ');
       sqlUpd.SQL.Add('   AND RD_RDVITEM.DATAMOVIMENTOID <= '+ QuotedStr( ( DataMovimento ) ) );
       sqlUpd.SQL.Add('   AND RD_RDVITEM.RDVID = '+ RdvId );
      end
   else
      begin
       sqlUpd.SQL.Add('   SET RD_RDVITEM.DATAFECHAMENTO = NULL');
       sqlUpd.SQL.Add(' WHERE RD_RDVITEM.DATAFECHAMENTO = ' + QuotedStr( DateToStr( DataFechamento ) ) );
       sqlUpd.SQL.Add('   AND RD_RDVITEM.RDVID = '+ RdvId );
      end;

   if TipoMoeda = 'R'  then
      sqlUpd.SQL.Add(' AND ( RD_RDVITEM.TIPOMOEDA = ''R'' OR RD_RDVITEM.TIPOMOEDA IS NULL ) ' )
   else
      sqlUpd.SQL.Add(' AND RD_RDVITEM.TIPOMOEDA = ''D''') ;

   sqlUpd.Prepared := True;
   sqlUpd.ExecSQL;
   sqlUpd.Close;

   { Efetivar a transação no Banco de Dados }
   TSQLConnection(FSQLcnn).Commit(TD);
   except
    on E : Exception do
    begin
     if TSQLConnection(FSQLcnn).InTransaction then
        TSQLConnection(FSQLcnn).Rollback(TD);
     raise Exception.Create(E.message);
    end;
   end;
 finally
  FreeAndNil( sqlUpd );
 end;
end;

procedure TSrvAppRD.IAtualizaAdiantamento(AdiantamentoId: Integer);
var sqlUpdate : TSQLQuery;
begin
 sqlUpdate := TSQLQuery.Create(self);
 sqlUpdate.SQLConnection := TSQLConnection( FSQLcnn );
 try
  try
   { Iniciando a Transacao }
   TSQLConnection(FSQLcnn).StartTransaction(TD);
   with sqlUpdate do
   begin
    SQL.Add('UPDATE RD_ADIANTAMENTO');
    SQL.Add('   SET RD_ADIANTAMENTO.VLROPERACAO = ');
    SQL.Add('  ( SELECT SUM( NVL( RD_ADIANTAMENTOITEM.VLROPERACAO,0 ) ) AS VALOROPERACAO ');
    SQL.Add('      FROM RD_ADIANTAMENTOITEM RD_ADIANTAMENTOITEM ');
    SQL.Add('     WHERE RD_ADIANTAMENTOITEM.ADIANTAMENTOID = '+ IntToStr( AdiantamentoId )+' ) ');
    SQL.Add(' WHERE RD_ADIANTAMENTO.ADIANTAMENTOID = '+ IntToStr( AdiantamentoId ) );
    Prepared := True;
    ExecSQL;
   end;

   { Efetivar a transação no Banco de Dados }
   TSQLConnection(FSQLcnn).Commit(TD);
  except on
   E : Exception do
   begin
    if TSQLConnection( FSQLcnn ).InTransaction then
       TSQLConnection( FSQLcnn ).Rollback(TD);
    raise Exception.Create(E.Message);
   end;
  end;
 finally
  FreeAndNil( sqlUpdate );
 end;
end;

function TSrvAppRD.ITransfEspelho(const RdvId, Usuario: WideString;
  Todos: WordBool): Integer;
var sqlRdvEsp,sqlUpdate,sqlDelete : TSQLQuery;
    Saldo  : Extended;
    DataMesAberto : TDateTime;
    UltRDVId, RdvAtualID : Integer;
begin
 Result := 0;
 sqlRdvEsp := TSQLQuery.Create(nil);
 sqlRdvEsp.SQLConnection := TSQLConnection(FSQLcnn);

 sqlDelete := TSQLQuery.Create(nil);
 sqlDelete.SQLConnection := TSQLConnection(FSQLcnn);

 sqlUpdate := TSQLQuery.Create(nil);
 sqlUpdate.SQLConnection := TSQLConnection(FSQLcnn);

 try
  try
   // Iniciando a Transação
   TSQLConnection( FSQLcnn ).StartTransaction(TD);

   sqlRdvEsp.SQL.Clear;
   sqlRdvEsp.SQL.Add('SELECT');
   sqlRdvEsp.SQL.Add('  RD_RDVESPELHO.RDVID,');
   sqlRdvEsp.SQL.Add('  RD_RDVESPELHO.DATADOCID,');
   sqlRdvEsp.SQL.Add('  RD_RDVESPELHO.ITEMID,');
   sqlRdvEsp.SQL.Add('  RD_RDVESPELHO.TIPOMOEDA,');
   sqlRdvEsp.SQL.Add('  RD_RDVESPELHO.TIPODESPESAOS,');
   sqlRdvEsp.SQL.Add('  RD_RDVESPELHO.OSID,');
   sqlRdvEsp.SQL.Add('  RD_RDVESPELHO.OPERACAOID,');
   sqlRdvEsp.SQL.Add('  RD_OPERACAO.OPERACAO,');
   sqlRdvEsp.SQL.Add('  RD_RDVESPELHO.VLRDESPESA,');
   sqlRdvEsp.SQL.Add('  RD_RDVESPELHO.HISTORICO,');
   sqlRdvEsp.SQL.Add('  RD_RDVESPELHO.KMSAIDA,');
   sqlRdvEsp.SQL.Add('  RD_RDVESPELHO.KMCHEGADA,');
   sqlRdvEsp.SQL.Add('  RD_RDVESPELHO.ADIANTAMENTOID,');
   sqlRdvEsp.SQL.Add('  RD_RDVESPELHO.USUARIO,');
   sqlRdvEsp.SQL.Add('  RD_RDV.DATAMESABERTO,');
   sqlRdvEsp.SQL.Add('  NVL( RD_RDV.VLRSALDO, 0 ) VLRSALDO');
   sqlRdvEsp.SQL.Add(' FROM');
   sqlRdvEsp.SQL.Add('  RD_RDVESPELHO ,');
   sqlRdvEsp.SQL.Add('  RD_RDV, ');
   sqlRdvEsp.SQL.Add('  RD_OPERACAO   ');
   sqlRdvEsp.SQL.Add(' WHERE');
   sqlRdvEsp.SQL.Add('  RD_RDV.RDVID = RD_RDVESPELHO.RDVID' );
   sqlRdvEsp.SQL.Add('  AND RD_OPERACAO.OPERACAOID = RD_RDVESPELHO.OPERACAOID' );

   if not Todos then
      sqlRdvEsp.SQL.Add('  AND RD_RDV.RDVID = ' + RdvID );

   sqlRdvEsp.SQL.Add('  AND RD_RDVESPELHO.DATADOCID <= RD_RDV.DATAMESABERTO ' );
   sqlRdvEsp.Prepared := True;
   sqlRdvEsp.SQL.Add(' ORDER BY RD_RDV.RDVID' );
   sqlRdvEsp.Open;

   if sqlRdvEsp.IsEmpty then
      begin
       TSQLConnection(FSQLcnn).Rollback(TD);
       Result := 1;
       exit;
      end;

   DataMesAberto := sqlRdvEsp.FieldByName('DATAMESABERTO').AsDateTime;
   UltRDVId      := sqlRdvEsp.FieldByName('RDVID').AsInteger;

   sqlRdvEsp.First;
   Saldo := sqlRdvEsp.FieldByName('VLRSALDO').Value;
   while not sqlRdvEsp.Eof do
   begin
    if      sqlRdvEsp.FieldByName('OPERACAO').AsString = 'C' then
            Saldo := Saldo + sqlRdvEsp.FieldByName('VLRDESPESA').Value
    else if sqlRdvEsp.FieldByName('OPERACAO').AsString = 'D' then
            Saldo := Saldo - sqlRdvEsp.FieldByName('VLRDESPESA').Value;

    sqlUpdate.SQL.Clear;
    sqlUpdate.SQL.Add('INSERT INTO RD_RDVITEM');
    sqlUpdate.SQL.Add('   ( RDVID, DATAMOVIMENTOID,ITEMID,DATADOC, TIPOMOEDA, TIPODESPESAOS, OSID, OPERACAOID,');
    sqlUpdate.SQL.Add('     VLRDESPESA, VLRSALDO, HISTORICO, KMSAIDA,KMCHEGADA, ADIANTAMENTOID, USUARIO )');
    sqlUpdate.SQL.Add('VALUES (');
    sqlUpdate.SQL.Add( sqlRdvEsp.FieldByName('RDVID').AsString +  ',' );
    sqlUpdate.SQL.Add( QuotedStr( DateToStr( Date ) ) +  ',' );
    sqlUpdate.SQL.Add('( SELECT NVL( MAX( RD_RDVITEM.ITEMID ), 0 ) + 1');
    sqlUpdate.SQL.Add('   FROM RD_RDVITEM');
    sqlUpdate.SQL.Add('   WHERE RD_RDVITEM.RDVID = ' + sqlRdvEsp.FieldByName('RDVID').AsString + '),');
    sqlUpdate.SQL.Add( QuotedStr( DateToStr( sqlRdvEsp.FieldByName('DATADOCID').Value ) ) +  ',' );
    sqlUpdate.SQL.Add( QuotedStr( sqlRdvEsp.FieldByName('TIPOMOEDA').AsString ) +  ',' );
    sqlUpdate.SQL.Add( QuotedStr( sqlRdvEsp.FieldByName('TIPODESPESAOS').AsString ) +  ',' );
    sqlUpdate.SQL.Add( QuotedStr( sqlRdvEsp.FieldByName('OSID').AsString ) +  ',' );
    sqlUpdate.SQL.Add( sqlRdvEsp.FieldByName('OPERACAOID').AsString +  ',' );
    sqlUpdate.SQL.Add( SubstituiString( sqlRdvEsp.FieldByName('VLRDESPESA').AsString, ',', '.' ) + ',' );
    sqlUpdate.SQL.Add( SubstituiString( FloatToStr( Saldo ), ',', '.' ) + ',' );
    sqlUpdate.SQL.Add( QuotedStr( sqlRdvEsp.FieldByName('HISTORICO').AsString ) +  ',' );

    if sqlRdvEsp.FieldByName('KMSAIDA').IsNull then
       sqlUpdate.SQL.Add( QuotedStr('') + ',' )
    else
       sqlUpdate.SQL.Add( SubstituiString( sqlRdvEsp.FieldByName('KMSAIDA').AsString, ',', '.' ) + ',' );

    if sqlRdvEsp.FieldByName('KMCHEGADA').IsNull then
       sqlUpdate.SQL.Add( QuotedStr('') + ',' )
    else
       sqlUpdate.SQL.Add( SubstituiString( sqlRdvEsp.FieldByName('KMCHEGADA').AsString, ',', '.' ) + ',' );

    if sqlRdvEsp.FieldByName('ADIANTAMENTOID').IsNull then
       sqlUpdate.SQL.Add( 'NULL,' )
    else
       sqlUpdate.SQL.Add( sqlRdvEsp.FieldByName('ADIANTAMENTOID').AsString +  ',' );

    sqlUpdate.SQL.Add( QuotedStr( sqlRdvEsp.FieldByName('USUARIO').AsString ) +  ')' );
    sqlUpdate.Prepared := True;
    sqlUpdate.ExecSQL;

    RdvAtualID := sqlRdvEsp.FieldByName('RDVID').AsInteger;

    sqlRdvEsp.Next;

    // Mudou de registro atualizar o RDV
    if ( sqlRdvEsp.FieldByName('RDVID').AsInteger <> UltRDVId ) or ( sqlRdvEsp.Eof ) then
       begin
        sqlUpdate.Close;
        sqlUpdate.SQL.Clear;
        sqlUpdate.SQL.Add('UPDATE ');
        sqlUpdate.SQL.Add(' RD_RDV');
        sqlUpdate.SQL.Add('SET RD_RDV.VLRSALDO = '+ SubstituiString( FloatToStr( Saldo ),',','.') );
        sqlUpdate.SQL.Add('WHERE ');
        sqlUpdate.SQL.Add(' RD_RDV.RDVID = ' + IntToStr( RdvAtualID ) );
        sqlUpdate.Prepared := True;
        sqlUpdate.ExecSQL;

        UltRDVId := sqlRdvEsp.FieldByName('RDVID').AsInteger;
        if sqlRdvEsp.FieldByName('RDVID').AsInteger = 0 then
           Saldo := 0
        else
           Saldo := sqlRdvEsp.FieldByName('VLRSALDO').AsCurrency;
       end;
   end;

   // Delete os espelhos
   sqlDelete.SQL.Clear;
   sqlDelete.SQL.Add('DELETE FROM ');
   sqlDelete.SQL.Add('       RD_RDVESPELHO ');
   sqlDelete.SQL.Add(' WHERE RD_RDVESPELHO.DATADOCID <= '+ QuotedStr(DateToStr( DataMesAberto  ) ) );

   if not Todos then
      sqlDelete.SQL.Add('  AND RD_RDVESPELHO.RDVID = ' + RdvID );

   sqlDelete.Prepared := True;
   sqlDelete.ExecSQL;

  { Efetivar a transação no Banco de Dados }
  TSQLConnection(FSQLcnn).Commit(TD);

  except
   On E : Exception do
     begin
      if TSQLConnection(FSQLcnn).InTransaction then
         TSQLConnection(FSQLcnn).Rollback(TD);
      raise Exception.Create(E.Message);
     end;
  end;
 finally
  FreeAndNil(sqlRdvEsp);
  FreeAndNil(sqlUpdate);
  FreeAndNil(sqlDelete);
 end;
end;

procedure TSrvAppRD.ITransfMovimento(const FuncionarioID, AdiantamentoId,
  DataMesAberto, Usuario: WideString);
var sqlRDV, sqlAdiant, sqlUpdate : TSQLQuery;
    Saldo  : Extended;

 procedure AdicionarAdiantRDV;
 begin
  { Incluir o lançamento no RDV }
  if      sqlAdiant.FieldByName('OPERACAO').AsString = 'C' then
          Saldo := Saldo + sqlAdiant.FieldByName('VLROPERACAO').Value
  else if sqlAdiant.FieldByName('OPERACAO').AsString = 'D' then
          Saldo := Saldo - sqlAdiant.FieldByName('VLROPERACAO').Value;

  sqlUpdate.SQL.Clear;
  sqlUpdate.SQL.Add('INSERT INTO RD_RDVITEM');
  sqlUpdate.SQL.Add('   ( RDVID, DATAMOVIMENTOID,ITEMID,DATADOC, TIPOMOEDA, TIPODESPESAOS, OSID, OPERACAOID,');
  sqlUpdate.SQL.Add('     VLRDESPESA, VLRSALDO, HISTORICO, KMSAIDA,KMCHEGADA, ADIANTAMENTOID, USUARIO )');
  sqlUpdate.SQL.Add('VALUES (');
  sqlUpdate.SQL.Add( FuncionarioID +  ',' );
  sqlUpdate.SQL.Add( QuotedStr( DateToStr( Date ) ) +  ',' );
  sqlUpdate.SQL.Add('( SELECT NVL( MAX( RD_RDVITEM.ITEMID ), 0 ) + 1');
  sqlUpdate.SQL.Add('                             FROM RD_RDVITEM');
  sqlUpdate.SQL.Add('                             WHERE RD_RDVITEM.RDVID = ' + FuncionarioID + '),');
  sqlUpdate.SQL.Add( QuotedStr( DateToStr( sqlAdiant.FieldByName('DATADEPOSITO').Value ) ) +  ',' );
  sqlUpdate.SQL.Add( QuotedStr( sqlAdiant.FieldByName('TIPOMOEDA').AsString ) +  ',' );
  sqlUpdate.SQL.Add( QuotedStr( sqlAdiant.FieldByName('TIPODESPESAOS').AsString ) +  ',' );
  sqlUpdate.SQL.Add( QuotedStr( sqlAdiant.FieldByName('OSID').AsString ) +  ',' );
  sqlUpdate.SQL.Add( sqlAdiant.FieldByName('OPERACAOID').AsString +  ',' );
  sqlUpdate.SQL.Add( SubstituiString( sqlAdiant.FieldByName('VLROPERACAO').AsString, ',', '.' ) + ',' );
  sqlUpdate.SQL.Add( SubstituiString( FloatToStr( Saldo ), ',', '.' ) + ',' );
  sqlUpdate.SQL.Add( QuotedStr( sqlAdiant.FieldByName('HISTORICO').AsString ) +  ',' );

  if sqlAdiant.FieldByName('KMSAIDA').IsNull then
     sqlUpdate.SQL.Add( QuotedStr('') + ',' )
  else
     sqlUpdate.SQL.Add( SubstituiString( sqlAdiant.FieldByName('KMSAIDA').AsString, ',', '.' ) + ',' );

  if sqlAdiant.FieldByName('KMCHEGADA').IsNull then
     sqlUpdate.SQL.Add( QuotedStr('') + ',' )
  else
     sqlUpdate.SQL.Add( SubstituiString( sqlAdiant.FieldByName('KMCHEGADA').AsString, ',', '.' ) + ',' );

  sqlUpdate.SQL.Add( sqlAdiant.FieldByName('ADIANTAMENTOID').AsString +  ',' );
  sqlUpdate.SQL.Add( QuotedStr( sqlAdiant.FieldByName('USUARIO').AsString ) +  ')' );
  sqlUpdate.Prepared := True;
  sqlUpdate.ExecSQL;

  { Atualizar o Saldo }
  sqlUpdate.Close;
  sqlUpdate.SQL.Clear;
  sqlUpdate.SQL.Add('UPDATE ');
  sqlUpdate.SQL.Add(' RD_RDV SET');

  if sqlAdiant.FieldByName('TIPOMOEDA').AsString = 'R' then
     sqlUpdate.SQL.Add(' VLRSALDO = '+ SubstituiString( FloatToStr( Saldo ),',','.') )
  else
     sqlUpdate.SQL.Add(' VLRSALDOUS = '+ SubstituiString( FloatToStr( Saldo ),',','.'));

  sqlUpdate.SQL.Add('WHERE ');
  sqlUpdate.SQL.Add(' RDVID = ' + FuncionarioID );
  sqlUpdate.Prepared := True;
  sqlUpdate.ExecSQL;
 end;

 procedure TransfAdiantPEspelho;
 begin
  sqlUpdate.SQL.Clear;
  sqlUpdate.SQL.Add('INSERT INTO RD_RDVESPELHO');
  sqlUpdate.SQL.Add('   ( RDVID, DATADOCID,ITEMID, TIPOMOEDA, TIPODESPESAOS, OSID, OPERACAOID,');
  sqlUpdate.SQL.Add('     VLRDESPESA, VLRSALDO, HISTORICO, KMSAIDA,KMCHEGADA, ADIANTAMENTOID, USUARIO )');
  sqlUpdate.SQL.Add('VALUES (');
  sqlUpdate.SQL.Add( FuncionarioID +  ',' );
  sqlUpdate.SQL.Add( QuotedStr( DateToStr( sqlAdiant.FieldByName('DATADEPOSITO').Value ) ) +  ',' );
  sqlUpdate.SQL.Add('( SELECT NVL( MAX( RD_RDVESPELHO.ITEMID ) , 0 ) + 1');
  sqlUpdate.SQL.Add('                             FROM RD_RDVESPELHO');
  sqlUpdate.SQL.Add('                             WHERE RD_RDVESPELHO.RDVID = ' + FuncionarioID + '),');
  sqlUpdate.SQL.Add( QuotedStr( sqlAdiant.FieldByName('TIPOMOEDA').AsString ) +  ',' );
  sqlUpdate.SQL.Add( QuotedStr( sqlAdiant.FieldByName('TIPODESPESAOS').AsString ) +  ',' );
  sqlUpdate.SQL.Add( QuotedStr( sqlAdiant.FieldByName('OSID').AsString ) +  ',' );
  sqlUpdate.SQL.Add( sqlAdiant.FieldByName('OPERACAOID').AsString +  ',' );
  sqlUpdate.SQL.Add( SubstituiString( sqlAdiant.FieldByName('VLROPERACAO').AsString, ',', '.' ) + ',' );
  sqlUpdate.SQL.Add( SubstituiString( FloatToStr( Saldo ), ',', '.' ) + ',' );
  sqlUpdate.SQL.Add( QuotedStr( sqlAdiant.FieldByName('HISTORICO').AsString ) +  ',' );

  if sqlAdiant.FieldByName('KMSAIDA').IsNull then
     sqlUpdate.SQL.Add( QuotedStr('') + ',' )
  else
     sqlUpdate.SQL.Add( SubstituiString( sqlAdiant.FieldByName('KMSAIDA').AsString, ',', '.' ) + ',' );

  if sqlAdiant.FieldByName('KMCHEGADA').IsNull then
     sqlUpdate.SQL.Add( QuotedStr('') + ',' )
  else
     sqlUpdate.SQL.Add( SubstituiString( sqlAdiant.FieldByName('KMCHEGADA').AsString, ',', '.' ) + ',' );

  sqlUpdate.SQL.Add( sqlAdiant.FieldByName('ADIANTAMENTOID').AsString +  ',' );
  sqlUpdate.SQL.Add( QuotedStr( sqlAdiant.FieldByName('USUARIO').AsString ) +  ')' );
  sqlUpdate.Prepared := True;
  sqlUpdate.ExecSQL;
 end;

begin
 sqlRDV := TSQLQuery.Create(nil);
 sqlRDV.SQLConnection := TSQLConnection(FSQLcnn);

 sqlAdiant := TSQLQuery.Create(nil);
 sqlAdiant.SQLConnection := TSQLConnection(FSQLcnn);

 sqlUpdate := TSQLQuery.Create(nil);
 sqlUpdate.SQLConnection := TSQLConnection(FSQLcnn);

 try
  try
   // Iniciando a Transação
   TSQLConnection( FSQLcnn ).StartTransaction(TD);

   sqlRDV.SQL.Clear;
   sqlRDV.SQL.Add('SELECT RDVID, VLRSALDO, VLRSALDOUS, DATAMESABERTO ');
   sqlRDV.SQL.Add(' FROM RD_RDV');
   sqlRDV.SQL.Add('WHERE');
   sqlRDV.SQL.Add('  RDVID =  ' + FuncionarioID );
   sqlRDV.Prepared := True;
   sqlRDV.Open;

   sqlAdiant.SQL.Clear;
   sqlAdiant.SQL.Add('SELECT');
   sqlAdiant.SQL.Add('  RD_ADIANTAMENTO.ADIANTAMENTOID,');
   sqlAdiant.SQL.Add('  RD_ADIANTAMENTO.DATASOLICITACAO,');
   sqlAdiant.SQL.Add('  RD_ADIANTAMENTO.DATADEPOSITO,');
   sqlAdiant.SQL.Add('  RD_ADIANTAMENTO.FUNCIONARIOID,');
   sqlAdiant.SQL.Add('  RD_ADIANTAMENTO.TIPOMOEDA,');
   sqlAdiant.SQL.Add('  RD_ADIANTAMENTO.TIPODESPESAOS,');
   sqlAdiant.SQL.Add('  RD_ADIANTAMENTO.OSID,');
   sqlAdiant.SQL.Add('  RD_ADIANTAMENTO.OPERACAOID,');
   sqlAdiant.SQL.Add('  RD_ADIANTAMENTO.VLROPERACAO,');
   sqlAdiant.SQL.Add('  RD_ADIANTAMENTO.HORASOLICITADA,');
   sqlAdiant.SQL.Add('  RD_ADIANTAMENTO.HISTORICO,');
   sqlAdiant.SQL.Add('  RD_ADIANTAMENTO.LIBCHEFIA,');
   sqlAdiant.SQL.Add('  RD_ADIANTAMENTO.NOMELIBCHEFIA,');
   sqlAdiant.SQL.Add('  RD_ADIANTAMENTO.LIBERADO,');
   sqlAdiant.SQL.Add('  RD_ADIANTAMENTO.KMSAIDA,');
   sqlAdiant.SQL.Add('  RD_ADIANTAMENTO.KMCHEGADA,');
   sqlAdiant.SQL.Add('  RD_ADIANTAMENTO.IMPRESSO,');
   sqlAdiant.SQL.Add('  RD_ADIANTAMENTO.USUARIO,');
   sqlAdiant.SQL.Add('  RD_OPERACAO.OPERACAO');
   sqlAdiant.SQL.Add('  FROM');
   sqlAdiant.SQL.Add('  RD_ADIANTAMENTO RD_ADIANTAMENTO,');
   sqlAdiant.SQL.Add('  RD_OPERACAO RD_OPERACAO');
   sqlAdiant.SQL.Add(' WHERE');
   sqlAdiant.SQL.Add('  RD_OPERACAO.OPERACAOID = RD_ADIANTAMENTO.OPERACAOID');
   sqlAdiant.SQL.Add('  AND RD_ADIANTAMENTO.ADIANTAMENTOID = ' + AdiantamentoID );
   sqlAdiant.SQL.Add('  AND RD_ADIANTAMENTO.LIBERADO = 0 ' );
   sqlAdiant.Prepared := True;
   sqlAdiant.Open;

   { Criar o funcionário caso não existe o registro de RDV }
   if sqlRDV.IsEmpty then
      begin
       Saldo := 0;
       sqlUpdate.SQL.Clear;
       sqlUpdate.SQL.Add('INSERT INTO RD_RDV');
       sqlUpdate.SQL.Add('   ( RDVID, DATAABERTURA,DATAMESABERTO, VLRSALDO, VLRSALDOUS, BLOQUEADO )');
       sqlUpdate.SQL.Add('VALUES (');
       sqlUpdate.SQL.Add( FuncionarioID +  ',' );
       sqlUpdate.SQL.Add( QuotedStr( DateToStr( Date ) ) +  ',' );
       sqlUpdate.SQL.Add( QuotedStr( DataMesAberto ) +  ',' );
       sqlUpdate.SQL.Add( '0' + ',' );
       sqlUpdate.SQL.Add( '0' + ',' );
       sqlUpdate.SQL.Add( '0 )' );
       sqlUpdate.Prepared := True;
       sqlUpdate.ExecSQL;
      end
   else
      begin
       if sqlAdiant.FieldByName('TIPOMOEDA').AsString = 'D' then
          Saldo := sqlRDV.FieldByName('VLRSALDOUS').AsCurrency
       else
          Saldo := sqlRDV.FieldByName('VLRSALDO').AsCurrency
      end;

   { Se o adiantamento não existir ou já estiver liberado não fazer nada }
   if not sqlAdiant.IsEmpty then
      begin
       { Verificar se faz a transferência para o Espelho }
       if sqlAdiant.FieldByName('DATADEPOSITO').Value > sqlRDV.FieldByName('DATAMESABERTO').Value then
          TransfAdiantPEspelho
       else
          AdicionarAdiantRDV;
      end;

   { Atualizar o Adiantamento / Despesas Extra para não aparecer na tela }
   if not sqlAdiant.IsEmpty then
      begin
       sqlUpdate.SQL.Clear;
       sqlUpdate.SQL.Add('UPDATE RD_ADIANTAMENTO SET');
       sqlUpdate.SQL.Add('  LIBERADO = 1, LIBCHEFIA = 1, NOMELIBCHEFIA = ' + QuotedStr( Usuario ) );
       sqlUpdate.SQL.Add(' ,DATALIBCHEFIA = TO_DATE(' + QuotedStr( DateTimeToStr( Now ) ) + ', ''dd/mm/yyyy HH24:MI:SS'' )'  );
       sqlUpdate.SQL.Add('WHERE ');
       sqlUpdate.SQL.Add(' ADIANTAMENTOID = ' + AdiantamentoID );
       sqlUpdate.Prepared := True;
       sqlUpdate.ExecSQL;
      end;

   { Efetivar a transação no Banco de Dados }
   TSQLConnection(FSQLcnn).Commit(TD);

  except
   On E : Exception do
     begin
      if TSQLConnection(FSQLcnn).InTransaction then
         TSQLConnection(FSQLcnn).Rollback(TD);
      raise Exception.Create(E.Message);
     end;
  end;
 finally
  FreeAndNil(sqlRDV);
  FreeAndNil(sqlAdiant);
  FreeAndNil(sqlUpdate);
 end;
end;


procedure TSrvAppRD.ProcessarRDV( Transacao : Boolean; var cdsOff: TClientDataSet;
 sqlUpd, sqladiant, sqlOSVrf, sqlOSDef : TSQLQuery );
begin
 cdsOff.First;
 while not cdsOff.Eof do
 begin
  try
   // Iniciando a Transação
   if Transacao then
      TSQLConnection( FSQLcnn ).StartTransaction(TD);

   if Transacao then
      if ( not cdsOff.FieldByName('OSID').IsNull ) then
         if ( cdsOff.FieldByName('OSID').Value <> '' ) then
            ValidarOSLancamentos( cdsOff, sqlOSVrf , sqlOSDef, Transacao );

   // Atualizar o contador de adiantamento prevendo a inserção de outros usuários
   sqlAdiant.Close;
   sqlAdiant.SQL.Clear;
   sqlAdiant.SQL.Add('SELECT SQ_RD_ADIANT_ADIANTAMENTOID.NEXTVAL VALOR FROM DUAL');
   sqlAdiant.Prepared := True;
   sqlAdiant.Open;

   if Transacao then
      if cdsOff.FieldByName('TIPODESPESAOS').Value <> 'C' then
         begin
          cdsOff.Edit;
          cdsOff.FieldByName('OSID').Clear;
          cdsOff.Post;
         end;

   // Inserir registro
   sqlUpd.SQL.Clear;
   sqlUpd.SQL.Add('INSERT INTO RD_ADIANTAMENTO');
   sqlUpd.SQL.Add('   ( ADIANTAMENTOID, DATASOLICITACAO, DATADEPOSITO, FUNCIONARIOID, TIPOMOEDA, TIPODESPESAOS, OSID, OPERACAOID,');
   sqlUpd.SQL.Add('     VLROPERACAO, HORASOLICITADA, HISTORICO, LIBERADO, KMSAIDA, KMCHEGADA, IMPRESSO, IDENTIFSOLIC, USUARIO )');
   sqlUpd.SQL.Add('VALUES (');
   sqlUpd.SQL.Add( sqlAdiant.FieldByName('VALOR').AsString +  ',' );
   sqlUpd.SQL.Add( QuotedStr( cdsOff.FieldByName('DATASOLICITACAO').AsString ) +  ',' );
   sqlUpd.SQL.Add( QuotedStr( cdsOff.FieldByName('DATADEPOSITO').AsString ) +  ',' );
   sqlUpd.SQL.Add( cdsOff.FieldByName('FUNCIONARIOID').AsString +  ',' );
   sqlUpd.SQL.Add( QuotedStr( cdsOff.FieldByName('TIPOMOEDA').AsString ) +  ',' );
   sqlUpd.SQL.Add( QuotedStr( cdsOff.FieldByName('TIPODESPESAOS').AsString ) +  ',' );
   sqlUpd.SQL.Add( QuotedStr( cdsOff.FieldByName('OSID').AsString ) +  ',' );
   sqlUpd.SQL.Add( cdsOff.FieldByName('OPERACAOID').AsString +  ',' );
   sqlUpd.SQL.Add( SubstituiString( cdsOff.FieldByName('VLROPERACAO').AsString, ',', '.' ) + ',' );
   sqlUpd.SQL.Add( QuotedStr( DateToStr( cdsOff.FieldByName('HORASOLICITADA').AsDateTime ) ) +  ',' );
   sqlUpd.SQL.Add( QuotedStr( cdsOff.FieldByName('HISTORICO').AsString ) +  ',' );
   sqlUpd.SQL.Add( '0'+  ',' ); // LIBERAÇÃO CHEFIA PADRÃO NÃO LIBERADO

   if cdsOff.FieldByName('KMSAIDA').IsNull then
      sqlUpd.SQL.Add( QuotedStr('') + ',' )
   else
      sqlUpd.SQL.Add( SubstituiString( cdsOff.FieldByName('KMSAIDA').AsString, ',', '.' ) + ',' );

   if cdsOff.FieldByName('KMCHEGADA').IsNull then
      sqlUpd.SQL.Add( QuotedStr('') + ',' )
   else
      sqlUpd.SQL.Add( SubstituiString( cdsOff.FieldByName('KMCHEGADA').AsString, ',', '.' ) + ',' );

   sqlUpd.SQL.Add( '0'+  ',' ); // IMPRESSÃO CONTÁBIL
   sqlUpd.SQL.Add( QuotedStr( cdsOff.FieldByName('IDENTIFSOLIC').AsString ) +  ',' );
   sqlUpd.SQL.Add( QuotedStr( cdsOff.FieldByName('USUARIO').AsString ) +  ')' );
   sqlUpd.Prepared := True;
   sqlUpd.ExecSQL;

   sqlAdiant.Close;

   cdsOff.Delete;

   { Efetivar a. transação no Banco de Dados }
   if Transacao then
      TSQLConnection(FSQLcnn).Commit(TD);
  except
   on E: Exception do
   begin
    if Transacao then
       begin
        cdsOff.Edit;
        cdsOff.FieldByName('PROBLEMATRANSF').AsBoolean := True;
        cdsOff.FieldByName('LOGERRO').AsString         := E.Message;
        cdsOff.Next;

        { Efetivar a transação no Banco de Dados }
        TSQLConnection(FSQLcnn).Rollback(TD);

        Continue;
       end
    else
       raise Exception.Create( E.Message );
   end;
  end;
 end;
end;

function TSrvAppRD.ITransfOFFLine(Data: OleVariant): OleVariant;
var sqlAdiant, sqlUpd, sqlOSVrf, sqlOSDef : TSQLQuery;
    cdsOff : TClientDataSet;
begin
 Result := Null;
 sqlAdiant := TSQLQuery.Create(nil);
 sqlAdiant.SQLConnection := TSQLConnection(FSQLcnn);

 sqlUpd := TSQLQuery.Create(nil);
 sqlUpd.SQLConnection := TSQLConnection(FSQLcnn);

 sqlOSVrf := TSQLQuery.Create(nil);
 sqlOSVrf.SQLConnection := TSQLConnection(FSQLcnn);

 sqlOSDef := TSQLQuery.Create(nil);
 sqlOSDef.SQLConnection := TSQLConnection(FSQLcnn);

 cdsOff := TClientDataSet.Create( Self );
 cdsOff.Data := Data;

 try
  try
   ProcessarRDV( True, cdsOff, sqlUpd, sqlAdiant, sqlOSVrf, sqlOSDef );

  except
   On E : Exception do
     begin
      if TSQLConnection(FSQLcnn).InTransaction then
         TSQLConnection(FSQLcnn).Rollback(TD);
      raise Exception.Create(E.Message);
     end;
  end;
 finally
  Result := cdsOff.Data;
  cdsOff.Close;
  FreeAndNil(sqlAdiant);
  FreeAndNil(sqlUpd);
  FreeAndNil(sqlOSVrf);
  FreeAndNil(sqlOSDef);
 end;
end;

procedure TSrvAppRD.ValidarQtdHorasEfetuadas( FuncionarioID, BancoHoraID : String;
 MinutosAdicionais : Real48; var sqlResumoHora : TSQLQuery );
var SaldoPendente, SaldoAtual, SaldoLimite  : Real48;
begin
 sqlResumoHora.Close;
 sqlResumoHora.SQL.Clear;
 sqlResumoHora.SQL.Add('SELECT RD_HORA.HORAID,');
 sqlResumoHora.SQL.Add('       RD_HORA.DATAABERTURA,');
 sqlResumoHora.SQL.Add('       RD_HORA.VLRSALDO,');
 sqlResumoHora.SQL.Add('       RD_HORA.DATAFECHAMENTO,');
 sqlResumoHora.SQL.Add('       RD_HORA.BLOQUEADO,');
 sqlResumoHora.SQL.Add('       EF_FILIAL.LIMITEBCOHORAS,');
 sqlResumoHora.SQL.Add('       NVL( RESUMO_HORA.HORAPENDENTE, 0 ) HORAPENDENTE');
 sqlResumoHora.SQL.Add('  FROM RD_HORA RD_HORA,');
 sqlResumoHora.SQL.Add('       EF_FILIAL EF_FILIAL,');
 sqlResumoHora.SQL.Add('       EF_ENTIDADE EF_ENTIDADE,');
 sqlResumoHora.SQL.Add('       (SELECT FUNCIONARIOID, SUM(NVL(DIFERENCAMINTRAB, 0)) HORAPENDENTE');
 sqlResumoHora.SQL.Add('          FROM RD_BANCOHORA, RD_OPERACAO');
 sqlResumoHora.SQL.Add('         WHERE');
 sqlResumoHora.SQL.Add('           RD_BANCOHORA.LIBERADO = 0');
 sqlResumoHora.SQL.Add('           AND RD_BANCOHORA.OPERACAOID = RD_OPERACAO.OPERACAOID');
 sqlResumoHora.SQL.Add('           AND RD_OPERACAO.OPERACAO = ''C'' ');
 sqlResumoHora.SQL.Add('           AND RD_BANCOHORA.BANCOHORAID <> ' + BancoHoraID );
 sqlResumoHora.SQL.Add('         GROUP BY FUNCIONARIOID) RESUMO_HORA');
 sqlResumoHora.SQL.Add(' WHERE EF_FILIAL.FILIALID(+) = EF_ENTIDADE.FILIALID');
 sqlResumoHora.SQL.Add('   AND EF_ENTIDADE.ENTIDADEID = RD_HORA.HORAID');
 sqlResumoHora.SQL.Add('   AND RD_HORA.HORAID = RESUMO_HORA.FUNCIONARIOID(+)');
 sqlResumoHora.SQL.Add('   AND RD_HORA.HORAID = ' + FuncionarioID );
 sqlResumoHora.Prepared := True;
 sqlResumoHora.Open;

 if sqlResumoHora.IsEmpty then
    exit;

 SaldoPendente := StrToFloat( sqlResumoHora.FieldByName('HORAPENDENTE').AsString );
 SaldoAtual    := StrToFloat( sqlResumoHora.FieldByName('VLRSALDO').AsString );

 if Frac( SaldoAtual ) > 0 then
    SaldoAtual := HourToMinute( SaldoAtual )
 else
    SaldoAtual := SaldoAtual/24;

 SaldoAtual  := SaldoAtual + SaldoPendente + MinutosAdicionais;
 SaldoLimite := FloatToMinutos( sqlResumoHora.FieldByName('LIMITEBCOHORAS').AsFloat );
 if True then

 if sqlResumoHora.FieldByName('BLOQUEADO').AsInteger = 1 then
    raise Exception.Create('Funcionário está bloqueado de efetuar lançamentos');

 if SaldoAtual > SaldoLimite then
    raise Exception.Create('Valor de horas atingiu o limite máximo de lançamento. ' +
                           'Banco de Horas atual é de: ' + FormatTime( SaldoAtual ) +
                           ' e o Limite Permitido é de: ' + FormatTime( SaldoLimite ) );
end;

procedure TSrvAppRD.ITransfHoras(const FuncionarioID, BancoHoraID,
  UsuarioID: WideString);
var sqlHora, sqlHora2, sqlVrfHora, sqlBancoHora, sqlUpd, sqlFilial, sqlFunc : TSQLQuery;
    Saldo, SaldoAtual, SaldoLimite  : Real48;

 procedure AdicionarBcoHoras( FuncionarioID : String );
 begin
  // Incluir o lançamento no RDV
  if      ( sqlBancoHora.FieldByName('OPERACAO').AsString = 'C' ) or
          ( sqlBancoHora.FieldByName('OPERACAO').AsString = 'N' ) then
          Saldo := Saldo + sqlBancoHora.FieldByName('DIFERENCAMINTRAB').AsFloat
  else if sqlBancoHora.FieldByName('OPERACAO').AsString = 'D' then
          Saldo := Saldo - sqlBancoHora.FieldByName('DIFERENCAMINTRAB').AsFloat;

  sqlUpd.SQL.Clear;
  sqlUpd.SQL.Add('INSERT INTO RD_HORAITEM');
  sqlUpd.SQL.Add('   ( HORAID, DATASERVICOID,ITEMID, OSID, OPERACAOID,');
  sqlUpd.SQL.Add('     HORAINI, HORAFIM, DIFERENCAHORATRAB, DIFERENCAMINTRAB, VLRSALDOMINUTOS, VLRSALDO, HISTORICO, BANCOHORAID, USUARIO )');
  sqlUpd.SQL.Add('VALUES (');
  sqlUpd.SQL.Add( FuncionarioID +  ',' );
  sqlUpd.SQL.Add( QuotedStr( DateToStr( sqlBancoHora.FieldByName('DATASOLICITACAO').Value ) ) +  ',' );
  sqlUpd.SQL.Add('( SELECT NVL( MAX( RD_HORAITEM.ITEMID ), 0 ) + 1');
  sqlUpd.SQL.Add('                             FROM RD_HORAITEM');
  sqlUpd.SQL.Add('                             WHERE RD_HORAITEM.HORAID = ' + FuncionarioID + '),');
  sqlUpd.SQL.Add( QuotedStr( sqlBancoHora.FieldByName('OSID').AsString ) +  ',' );
  sqlUpd.SQL.Add( sqlBancoHora.FieldByName('OPERACAOID').AsString +  ',' );
  sqlUpd.SQL.Add( 'TO_DATE(' + QuotedStr( sqlBancoHora.FieldByName('HORAINI').AsString ) + ', ''dd/mm/yyyy HH24:MI:SS'' )' + ' ,' );
  sqlUpd.SQL.Add( 'TO_DATE(' + QuotedStr( sqlBancoHora.FieldByName('HORAFIM').AsString ) + ', ''dd/mm/yyyy HH24:MI:SS'' )' + ' ,' );
  sqlUpd.SQL.Add( QuotedStr( sqlBancoHora.FieldByName('DIFERENCAHORATRAB').AsString ) + ',' );
  sqlUpd.SQL.Add( SubstituiString( sqlBancoHora.FieldByName('DIFERENCAMINTRAB').AsString, ',', '.' ) + ',' );
  sqlUpd.SQL.Add( SubstituiString( FloatToStr( Saldo ),',','.' ) + ',' );
  sqlUpd.SQL.Add( SubstituiString( FloatToStr( FloatToTime( Saldo ) ),',','.' ) + ',' );
  sqlUpd.SQL.Add( QuotedStr( sqlBancoHora.FieldByName('HISTORICO').AsString ) +  ',' );
  sqlUpd.SQL.Add( sqlBancoHora.FieldByName('BANCOHORAID').AsString +  ',' );
  sqlUpd.SQL.Add( QuotedStr( sqlBancoHora.FieldByName('USUARIO').AsString ) +  ')' );
  sqlUpd.Prepared := True;
  sqlUpd.ExecSQL;

  // Atualizar o Saldo
  sqlUpd.Close;
  sqlUpd.SQL.Clear;
  sqlUpd.SQL.Add('UPDATE ');
  sqlUpd.SQL.Add(' RD_HORA');
  sqlUpd.SQL.Add('SET RD_HORA.VLRSALDO = ' + SubstituiString( FloatToStr( FloatToTime( Saldo ) ),',','.' ) );
  sqlUpd.SQL.Add('WHERE ');
  sqlUpd.SQL.Add(' RD_HORA.HORAID = ' + FuncionarioID );
  sqlUpd.Prepared := True;
  sqlUpd.ExecSQL;
 end;

 procedure VrfUltDataReprocessar( HoraID, DtServico : String );
 begin
  sqlHora.Close;
  sqlHora.SQL.Clear;
  sqlHora.SQL.Add('SELECT');
  sqlHora.SQL.Add(' RD_HORAITEM.HORAID,');
  sqlHora.SQL.Add(' RD_HORAITEM.HORAINI,');
  sqlHora.SQL.Add(' RD_HORAITEM.ITEMID,');
  sqlHora.SQL.Add(' RD_HORAITEM.OPERACAOID,');
  sqlHora.SQL.Add(' RD_HORAITEM.VLRSALDO,');
  sqlHora.SQL.Add(' RD_HORAITEM.VLRSALDOMINUTOS,');
  sqlHora.SQL.Add(' RD_OPERACAO.OPERACAO,');
  sqlHora.SQL.Add(' RD_HORAITEM.DIFERENCAMINTRAB');
  sqlHora.SQL.Add('FROM');
  sqlHora.SQL.Add(' RD_HORAITEM,');
  sqlHora.SQL.Add(' RD_OPERACAO');
  sqlHora.SQL.Add('WHERE');
  sqlHora.SQL.Add(' RD_OPERACAO.OPERACAOID (+) = RD_HORAITEM.OPERACAOID');
  sqlHora.SQL.Add(' AND RD_HORAITEM.HORAID = '+ HoraID );
  sqlHora.SQL.Add(' AND RD_HORAITEM.HORAINI >= ' +
                   'TO_DATE(' + QuotedStr( DtServico ) + ', ''dd/mm/yyyy HH24:MI:SS'' )'  );
  sqlHora.Prepared := True;
  sqlHora.Open;

  if not sqlHora.IsEmpty then
     ReprocessarHoras( StrToInt( HoraID ), sqlVrfHora, sqlUpd );
 end;

 procedure HorasMultLancamento;
 begin
  sqlFunc.Close;
  sqlFunc.SQL.Clear;
  sqlFunc.SQL.Add('SELECT EF_ENTIDADE.ENTIDADEID,');
  sqlFunc.SQL.Add('       EF_ENTIDADE.NOME,');
  sqlFunc.SQL.Add('       EF_ENTIDADE.FILIALID,');
  sqlFunc.SQL.Add('       RD_HORA.VLRSALDO');
  sqlFunc.SQL.Add('  FROM EF_ENTIDADE,');
  sqlFunc.SQL.Add('       EF_ENTIDADEGRUPO,');
  sqlFunc.SQL.Add('       RD_HORA RD_HORA');
  sqlFunc.SQL.Add(' WHERE EF_ENTIDADE.ENTIDADEID = EF_ENTIDADEGRUPO.ENTIDADEID');
  sqlFunc.SQL.Add('       AND EF_ENTIDADEGRUPO.CATEGORIAID = 5');
  sqlFunc.SQL.Add('       AND NVL( EF_ENTIDADE.DESLIGADO, 0 ) = 0 ');
  sqlFunc.SQL.Add('       AND EF_ENTIDADE.FILIALID = ' + sqlBancoHora.FieldByName('FILIALID').AsString );
  sqlFunc.SQL.Add('       AND EF_ENTIDADE.ENTIDADEID = RD_HORA.HORAID');
  sqlFunc.Prepared := True;
  sqlFunc.Open;

  while not sqlFunc.Eof do
  begin
   AdicionarBcoHoras( sqlFunc.FieldByName('ENTIDADEID').AsString );
   VrfUltDataReprocessar( sqlFunc.FieldByName('ENTIDADEID').AsString,
                          sqlBancoHora.FieldByName('DATASOLICITACAO').Value );
   sqlFunc.Next;
  end;
 end;

begin
 sqlHora := TSQLQuery.Create(nil);
 sqlHora.SQLConnection := TSQLConnection(FSQLcnn);

 sqlHora2 := TSQLQuery.Create(nil);
 sqlHora2.SQLConnection := TSQLConnection(FSQLcnn);

 sqlVrfHora := TSQLQuery.Create(nil);
 sqlVrfHora.SQLConnection := TSQLConnection(FSQLcnn);

 sqlBancoHora := TSQLQuery.Create(nil);
 sqlBancoHora.SQLConnection := TSQLConnection(FSQLcnn);

 sqlUpd := TSQLQuery.Create(nil);
 sqlUpd.SQLConnection := TSQLConnection(FSQLcnn);

 sqlFilial := TSQLQuery.Create(nil);
 sqlFilial.SQLConnection := TSQLConnection(FSQLcnn);

 sqlFunc := TSQLQuery.Create(nil);
 sqlFunc.SQLConnection := TSQLConnection(FSQLcnn);

 try
  try
   // Iniciando a Transação
   TSQLConnection( FSQLcnn ).StartTransaction(TD);

   sqlHora.SQL.Clear;
   sqlHora.SQL.Add('SELECT RD_HORAITEM.HORAID,');
   sqlHora.SQL.Add('       RD_HORAITEM.HORAINI,');
   sqlHora.SQL.Add('       RD_HORAITEM.ITEMID,');
   sqlHora.SQL.Add('       RD_HORAITEM.VLRSALDO,');
   sqlHora.SQL.Add('       RD_HORAITEM.VLRSALDOMINUTOS,');
   sqlHora.SQL.Add('       RD_HORAITEM.DIFERENCAMINTRAB');
   sqlHora.SQL.Add('  FROM RD_HORAITEM');
   sqlHora.SQL.Add(' WHERE RD_HORAITEM.HORAID = ' +  FuncionarioID );
   sqlHora.SQL.Add('   AND (RD_HORAITEM.HORAID, RD_HORAITEM.HORAINI) IN');
   sqlHora.SQL.Add('       (SELECT RD_HORAITEM.HORAID,');
   sqlHora.SQL.Add('               MAX(RD_HORAITEM.HORAINI)');
   sqlHora.SQL.Add('          FROM RD_HORAITEM');
   sqlHora.SQL.Add('         GROUP BY RD_HORAITEM.HORAID)');
   sqlHora.SQL.Add(' ORDER BY ITEMID DESC' );
   sqlHora.Prepared := True;
   sqlHora.Open;

   sqlHora2.SQL.Clear;
   sqlHora2.SQL.Add('SELECT HORAID ');
   sqlHora2.SQL.Add(' FROM RD_HORA');
   sqlHora2.SQL.Add('WHERE');
   sqlHora2.SQL.Add('  HORAID =  ' + FuncionarioID );
   sqlHora2.Prepared := True;
   sqlHora2.Open;

   sqlBancoHora.SQL.Clear;
   sqlBancoHora.SQL.Add('SELECT');
   sqlBancoHora.SQL.Add('  RD_BANCOHORA.BANCOHORAID,');
   sqlBancoHora.SQL.Add('  RD_BANCOHORA.DATASOLICITACAO,');
   sqlBancoHora.SQL.Add('  RD_BANCOHORA.MULTILANCAMENTO,');
   sqlBancoHora.SQL.Add('  RD_BANCOHORA.FILIALID,');
   sqlBancoHora.SQL.Add('  RD_BANCOHORA.FUNCIONARIOID,');
   sqlBancoHora.SQL.Add('  RD_BANCOHORA.TIPODESPESAOS,');
   sqlBancoHora.SQL.Add('  RD_BANCOHORA.OSID,');
   sqlBancoHora.SQL.Add('  RD_BANCOHORA.OPERACAOID,');
   sqlBancoHora.SQL.Add('  RD_BANCOHORA.HORAINI,');
   sqlBancoHora.SQL.Add('  RD_BANCOHORA.HORAFIM,');
   sqlBancoHora.SQL.Add('  RD_BANCOHORA.DIFERENCAHORATRAB,');
   sqlBancoHora.SQL.Add('  RD_BANCOHORA.DIFERENCAMINTRAB,');
   sqlBancoHora.SQL.Add('  RD_BANCOHORA.HISTORICO,');
   sqlBancoHora.SQL.Add('  RD_BANCOHORA.LIBCHEFIA,');
   sqlBancoHora.SQL.Add('  RD_BANCOHORA.NOMELIBCHEFIA,');
   sqlBancoHora.SQL.Add('  RD_BANCOHORA.LIBERADO,');
   sqlBancoHora.SQL.Add('  RD_BANCOHORA.IMPRESSO,');
   sqlBancoHora.SQL.Add('  RD_BANCOHORA.USUARIO,');
   sqlBancoHora.SQL.Add('  RD_OPERACAO.OPERACAO');
   sqlBancoHora.SQL.Add('  FROM');
   sqlBancoHora.SQL.Add('  RD_BANCOHORA RD_BANCOHORA,');
   sqlBancoHora.SQL.Add('  RD_OPERACAO RD_OPERACAO');
   sqlBancoHora.SQL.Add(' WHERE');
   sqlBancoHora.SQL.Add('  RD_OPERACAO.OPERACAOID = RD_BANCOHORA.OPERACAOID');
   sqlBancoHora.SQL.Add('  AND RD_BANCOHORA.BANCOHORAID = ' + BANCOHORAID );
   sqlBancoHora.SQL.Add('  AND RD_BANCOHORA.LIBERADO = 0 ' );
   sqlBancoHora.Prepared := True;
   sqlBancoHora.Open;

   if sqlBancoHora.IsEmpty then
      raise Exception.Create('Não há registro para liberação do banco de horas');

   // Criar o funcionário caso não existe o registro de RDV
   if sqlHora2.IsEmpty then
      begin
       Saldo := 0;
       sqlUpd.SQL.Clear;
       sqlUpd.SQL.Add('INSERT INTO RD_HORA');
       sqlUpd.SQL.Add('   ( HORAID, DATAABERTURA, VLRSALDO, BLOQUEADO )');
       sqlUpd.SQL.Add('VALUES (');
       sqlUpd.SQL.Add( FuncionarioID +  ',' );
       sqlUpd.SQL.Add( QuotedStr( DateToStr( Date ) ) +  ',' );
       sqlUpd.SQL.Add( '0' + ',' );
       sqlUpd.SQL.Add( '0 )' );
       sqlUpd.Prepared := True;
       sqlUpd.ExecSQL;
      end
   else
      Saldo := sqlHora.FieldByName('VLRSALDOMINUTOS').AsFloat;

   sqlFilial.SQL.Clear;
   sqlFilial.SQL.Add('SELECT EF_ENTIDADE.FILIALID,');
   sqlFilial.SQL.Add('       EF_FILIAL.LIMITEBCOHORAS,');
   sqlFilial.SQL.Add('       EF_ENTIDADE.ENTIDADEID');
   sqlFilial.SQL.Add('  FROM EF_ENTIDADE EF_ENTIDADE,');
   sqlFilial.SQL.Add('       EF_FILIAL EF_FILIAL');
   sqlFilial.SQL.Add(' WHERE EF_FILIAL.FILIALID(+) = EF_ENTIDADE.FILIALID');
   sqlFilial.SQL.Add('       AND EF_ENTIDADE.ENTIDADEID = ' + FuncionarioID );
   sqlFilial.Prepared := True;
   sqlFilial.Open;

   SaldoAtual  := Saldo + sqlBancoHora.FieldByName('DIFERENCAMINTRAB').AsFloat;
   SaldoLimite := FloatToMinutos( sqlFilial.FieldByName('LIMITEBCOHORAS').AsFloat );

   if sqlBancoHora.FieldByName('OPERACAO').Value = 'C' then
      if SaldoAtual > SaldoLimite then
         raise Exception.Create('Valor de horas atingiu o limite máximo de lançamento. ' +
                                'Banco de Horas atual é de: ' + FormatTime( SaldoAtual ) +
                                ' e o Limite Permitido é de: ' + FormatTime( SaldoLimite ) );

   ValidarMesAnoBancoHoras( sqlBancoHora.FieldByName('HORAINI').AsDateTime, 2, sqlHora );

   ValidarMesAnoBancoHoras( sqlBancoHora.FieldByName('HORAFIM').AsDateTime, 2, sqlHora );

   // Se o adiantamento não existir ou já estiver liberado não fazer nada
   if not sqlBancoHora.IsEmpty then
      begin
       // Verificar se processamento é multi lançamento
       case sqlBancoHora.FieldByName('MULTILANCAMENTO').AsInteger of
       0 : begin
            AdicionarBcoHoras( FuncionarioID );
            VrfUltDataReprocessar( FuncionarioID,
                                   sqlBancoHora.FieldByName('HORAINI').Value );
           end;
       1 : HorasMultLancamento;
       end;
      end;

   // Atualizar o Adiantamento / Despesas Extra para não aparecer na tela
   sqlUpd.SQL.Clear;
   sqlUpd.SQL.Add('UPDATE RD_BANCOHORA SET');
   sqlUpd.SQL.Add('  LIBERADO = 1, LIBCHEFIA = 1, NOMELIBCHEFIA = ' + QuotedStr( UsuarioID ) );
   sqlUpd.SQL.Add(' ,DATALIBCHEFIA = TO_DATE(' + QuotedStr( DateTimeToStr( Now ) ) + ', ''dd/mm/yyyy HH24:MI:SS'' )'  );
   sqlUpd.SQL.Add('WHERE ');
   sqlUpd.SQL.Add(' BANCOHORAID = ' + BANCOHORAID );
   sqlUpd.Prepared := True;
   sqlUpd.ExecSQL;

   // Efetivar a transação no Banco de Dados
   TSQLConnection(FSQLcnn).Commit(TD);

  except
   On E : Exception do
     begin
      if TSQLConnection(FSQLcnn).InTransaction then
         TSQLConnection(FSQLcnn).Rollback(TD);
      raise Exception.Create(E.Message);
     end;
  end;

 finally
  FreeAndNil(sqlHora);
  FreeAndNil(sqlHora2);
  FreeAndNil(sqlVrfHora);
  FreeAndNil(sqlBancoHora);
  FreeAndNil(sqlUpd);
  FreeAndNil(sqlFilial);
  FreeAndNil(sqlFunc);
 end;
end;



procedure TSrvAppRD.ITransfLog(const RDVID, DataMovimentoID,
  ItemID: WideString);
var sqlRdvLog,sqlUpd,sqlDelete : TSQLQuery;
    Saldo  : Extended;
begin
 sqlRdvLog := TSQLQuery.Create(nil);
 sqlRdvLog.SQLConnection := TSQLConnection(FSQLcnn);

 sqlDelete := TSQLQuery.Create(nil);
 sqlDelete.SQLConnection := TSQLConnection(FSQLcnn);

 sqlUpd := TSQLQuery.Create(nil);
 sqlUpd.SQLConnection := TSQLConnection(FSQLcnn);

 try
  try
   // Iniciando a Transação
   TSQLConnection( FSQLcnn ).StartTransaction(TD);

   sqlRdvLog.SQL.Clear;
   sqlRdvLog.SQL.Add('SELECT');
   sqlRdvLog.SQL.Add('  RD_RDVLOG.RDVID,');
   sqlRdvLog.SQL.Add('  RD_RDVLOG.DATAMOVIMENTOID,');
   sqlRdvLog.SQL.Add('  RD_RDVLOG.ITEMID,');
   sqlRdvLog.SQL.Add('  RD_RDVLOG.DATADOC,');
   sqlRdvLog.SQL.Add('  RD_RDVLOG.TIPOMOEDA,');
   sqlRdvLog.SQL.Add('  RD_RDVLOG.TIPODESPESAOS,');
   sqlRdvLog.SQL.Add('  RD_RDVLOG.OSID,');
   sqlRdvLog.SQL.Add('  RD_RDVLOG.OPERACAOID,');
   sqlRdvLog.SQL.Add('  RD_OPERACAO.OPERACAO,');
   sqlRdvLog.SQL.Add('  RD_RDVLOG.VLRDESPESA,');
   sqlRdvLog.SQL.Add('  RD_RDVLOG.HISTORICO,');
   sqlRdvLog.SQL.Add('  RD_RDVLOG.KMSAIDA,');
   sqlRdvLog.SQL.Add('  RD_RDVLOG.KMCHEGADA,');
   sqlRdvLog.SQL.Add('  RD_RDVLOG.ADIANTAMENTOID,');
   sqlRdvLog.SQL.Add('  RD_RDVLOG.USUARIO,');
   sqlRdvLog.SQL.Add('  RD_RDV.DATAMESABERTO,');
   sqlRdvLog.SQL.Add('  RD_RDV.VLRSALDO');
   sqlRdvLog.SQL.Add(' FROM');
   sqlRdvLog.SQL.Add('  RD_RDVLOG ,');
   sqlRdvLog.SQL.Add('  RD_RDV, ');
   sqlRdvLog.SQL.Add('  RD_OPERACAO   ');
   sqlRdvLog.SQL.Add(' WHERE');
   sqlRdvLog.SQL.Add('  RD_RDV.RDVID = RD_RDVLOG.RDVID' );
   sqlRdvLog.SQL.Add('  AND RD_OPERACAO.OPERACAOID = RD_RDVLOG.OPERACAOID' );
   sqlRdvLog.SQL.Add('  AND RD_RDV.RDVID = ' + RdvID );
   sqlRdvLog.SQL.Add('  AND RD_RDVLOG.DATAMOVIMENTOID = ' + QuotedStr( DataMovimentoID ) );
   sqlRdvLog.SQL.Add('  AND RD_RDVLOG.ITEMID = ' + QuotedStr( ItemID ) );
   sqlRdvLog.SQL.Add(' ORDER BY RD_RDV.RDVID' );
   sqlRdvLog.Prepared := True;
   sqlRdvLog.Open;

   if sqlRdvLog.IsEmpty then
      begin
       TSQLConnection(FSQLcnn).Rollback(TD);
       exit;
      end;

   Saldo := sqlRdvLog.FieldByName('VLRSALDO').Value;

   if      sqlRdvLog.FieldByName('OPERACAO').AsString = 'C' then
           Saldo := Saldo + sqlRdvLog.FieldByName('VLRDESPESA').Value
   else if sqlRdvLog.FieldByName('OPERACAO').AsString = 'D' then
           Saldo := Saldo - sqlRdvLog.FieldByName('VLRDESPESA').Value;

   sqlUpd.SQL.Clear;
   sqlUpd.SQL.Add('INSERT INTO RD_RDVITEM');
   sqlUpd.SQL.Add('   ( RDVID, DATAMOVIMENTOID,ITEMID,DATADOC, TIPOMOEDA, TIPODESPESAOS, OSID, OPERACAOID,');
   sqlUpd.SQL.Add('     VLRDESPESA, VLRSALDO, HISTORICO, KMSAIDA,KMCHEGADA, ADIANTAMENTOID, USUARIO )');
   sqlUpd.SQL.Add('VALUES (');
   sqlUpd.SQL.Add( sqlRdvLog.FieldByName('RDVID').AsString +  ',' );
   sqlUpd.SQL.Add( QuotedStr( DateToStr( Date ) ) +  ',' );
   sqlUpd.SQL.Add('( SELECT NVL( MAX( RD_RDVITEM.ITEMID ), 0 ) + 1');
   sqlUpd.SQL.Add('   FROM RD_RDVITEM');
   sqlUpd.SQL.Add('   WHERE RD_RDVITEM.RDVID = ' + sqlRdvLog.FieldByName('RDVID').AsString + '),');
   sqlUpd.SQL.Add( QuotedStr( DateToStr( sqlRdvLog.FieldByName('DATADOC').Value ) ) +  ',' );
   sqlUpd.SQL.Add( QuotedStr( sqlRdvLog.FieldByName('TIPOMOEDA').AsString ) +  ',' );
   sqlUpd.SQL.Add( QuotedStr( sqlRdvLog.FieldByName('TIPODESPESAOS').AsString ) +  ',' );
   sqlUpd.SQL.Add( QuotedStr( sqlRdvLog.FieldByName('OSID').AsString ) +  ',' );
   sqlUpd.SQL.Add( sqlRdvLog.FieldByName('OPERACAOID').AsString +  ',' );
   sqlUpd.SQL.Add( SubstituiString( sqlRdvLog.FieldByName('VLRDESPESA').AsString, ',', '.' ) + ',' );
   sqlUpd.SQL.Add( SubstituiString( FloatToStr( Saldo ), ',', '.' ) + ',' );
   sqlUpd.SQL.Add( QuotedStr( sqlRdvLog.FieldByName('HISTORICO').AsString ) +  ',' );

   if sqlRdvLog.FieldByName('KMSAIDA').IsNull then
      sqlUpd.SQL.Add( QuotedStr('') + ',' )
   else
      sqlUpd.SQL.Add( SubstituiString( sqlRdvLog.FieldByName('KMSAIDA').AsString, ',', '.' ) + ',' );

   if sqlRdvLog.FieldByName('KMCHEGADA').IsNull then
      sqlUpd.SQL.Add( QuotedStr('') + ',' )
   else
      sqlUpd.SQL.Add( SubstituiString( sqlRdvLog.FieldByName('KMCHEGADA').AsString, ',', '.' ) + ',' );

   if sqlRdvLog.FieldByName('ADIANTAMENTOID').IsNull then
      sqlUpd.SQL.Add( 'NULL,' )
   else
      sqlUpd.SQL.Add( sqlRdvLog.FieldByName('ADIANTAMENTOID').AsString +  ',' );

   sqlUpd.SQL.Add( QuotedStr( sqlRdvLog.FieldByName('USUARIO').AsString ) +  ')' );
   sqlUpd.Prepared := True;
   sqlUpd.ExecSQL;

   sqlUpd.Close;
   sqlUpd.SQL.Clear;
   sqlUpd.SQL.Add('UPDATE ');
   sqlUpd.SQL.Add(' RD_RDV');
   sqlUpd.SQL.Add('SET RD_RDV.VLRSALDO = '+ SubstituiString( FloatToStr( Saldo ),',','.') );
   sqlUpd.SQL.Add('WHERE ');
   sqlUpd.SQL.Add(' RD_RDV.RDVID = ' + RDVID );
   sqlUpd.Prepared := True;
   sqlUpd.ExecSQL;

   // Delete os espelhos
   sqlDelete.SQL.Clear;
   sqlDelete.SQL.Add('DELETE FROM RD_RDVLOG ');
   sqlDelete.SQL.Add(' WHERE ' );
   sqlDelete.SQL.Add('  RDVID = ' + RdvID );
   sqlDelete.SQL.Add('  AND DATAMOVIMENTOID = ' + QuotedStr( DataMovimentoID ) );
   sqlDelete.SQL.Add('  AND ITEMID = ' + QuotedStr( ItemID ) );
   sqlDelete.Prepared := True;
   sqlDelete.ExecSQL;

   { Efetivar a transação no Banco de Dados }
   TSQLConnection(FSQLcnn).Commit(TD);

  except
   On E : Exception do
     begin
      if TSQLConnection(FSQLcnn).InTransaction then
         TSQLConnection(FSQLcnn).Rollback(TD);
      raise Exception.Create(E.Message);
     end;
  end;
 finally
  FreeAndNil(sqlRdvLog);
  FreeAndNil(sqlUpd);
  FreeAndNil(sqlDelete);
 end;
end;

procedure TSrvAppRD.ValidarOSPadrao( cdsOFF : TClientDataSet; sqlOSVrf,
  sqlOSDef : TSQLQuery ; ValidarDefeito : Boolean = True );
begin
  sqlOSVrf.Close;
  sqlOSVrf.SQL.Clear;
  sqlOSVrf.SQL.Add('SELECT OS_OS.OSID, OS_OS.TIPOOSID, OS_TIPOOS.EXIGIRLIBERACAO, OS_OS.LIBCHEFIA, OS_TIPOOS.BLOQLANCAMENTOS, OS_TIPOOS.LANCRDVOSRESTRITA, OS_OS.STATUS, OS_OS.DATAVALIDADE ');
  sqlOSVrf.SQL.Add(' FROM OS_OS, OS_TIPOOS');
  sqlOSVrf.SQL.Add(' WHERE');
  sqlOSVrf.SQL.Add('  OS_OS.OSID = ' + QuotedStr(cdsOff.FieldByName('OSID').Value )  );
  sqlOSVrf.SQL.Add('  AND OS_OS.TIPOOSID = OS_TIPOOS.TIPOOSID(+)' );
  sqlOSVrf.Prepared := True;
  sqlOSVrf.Open;

  if sqlOSVrf.IsEmpty then
     raise Exception.Create('Número da Ordem de Serviço está inválido!');

  if sqlOSVrf.FieldByName('LANCRDVOSRESTRITA').AsInteger <> 1 then
     begin
      if sqlOSVrf.FieldByName('STATUS').AsString[1] in ['E','F','B'] then
         raise Exception.Create( 'Ordem de Serviço fechada / bloqueada' );

      if sqlOSVrf.FieldByName('BLOQLANCAMENTOS').AsInteger = 1 then
         raise Exception.Create( 'Tipo de O.S. com restrição no campo de Lançamentos' );

      if sqlOSVrf.FieldByName('EXIGIRLIBERACAO').AsInteger = 1 then
         begin
          if sqlOSVrf.FieldByName('LIBCHEFIA').AsInteger = 0 then
             raise Exception.Create( 'Tipo de O.S. requer liberação para lançamentos' );
         end;

      if not sqlOSVrf.FieldByName('DATAVALIDADE').IsNull then
         if Date > sqlOSVrf.FieldByName('DATAVALIDADE').AsDateTime then
            raise Exception.Create( 'Data de validade da Ordem de Serviço está expirada. ' + #13 +
                                    'A validade atual é : ' + sqlOSVrf.FieldByName('DATAVALIDADE').AsString );

      if ValidarDefeito then
         begin
          if sqlOSVrf.FieldByName('TIPOOSID').AsString[1] <> 'I' then
             begin
              sqlOSDef.Close;
              sqlOSDef.SQL.Clear;
              sqlOSDef.SQL.Add('SELECT OSID FROM OS_OSDEFEITO');
              sqlOSDef.SQL.Add(' WHERE');
              sqlOSDef.SQL.Add('  OS_OSDEFEITO.OSID = ' + QuotedStr(cdsOff.FieldByName('OSID').Value )  );
              sqlOSDef.Prepared := True;
              sqlOSDef.Open;

              if sqlOSDef.IsEmpty then
                 raise Exception.Create('Código do defeito não cadastrado para esta ordem de serviço');
             end;
         end;
     end;
end;

procedure TSrvAppRD.ValidarOSLancamentos( cdsOFF : TClientDataSet; sqlOSVrf,
  sqlOSDef : TSQLQuery; ValidarDefeito : Boolean = True );
begin
 try
  ValidarOSPadrao( cdsOFF, sqlOSVrf, sqlOSDef, ValidarDefeito );

 except
 on E : Exception do
    raise Exception.Create(E.Message);
 end;
end;


procedure TSrvAppRD.ValidarOSLancamentosSemTry( cdsOFF : TClientDataSet; sqlOSVrf,
  sqlOSDef : TSQLQuery; ValidarDefeito : Boolean = True );
begin
 ValidarOSPadrao( cdsOFF, sqlOSVrf, sqlOSDef, ValidarDefeito );
end;

procedure TSrvAppRD.ProcessarBancoHorasOFF( Transacao : Boolean; var cdsOff : TClientDataSet;
 sqlHora, sqlSEQHoras, sqlOSVrf, sqlOSDef, sqlUpd : TSQLQuery );
begin
  cdsOff.First;
  while not cdsOff.Eof do
  begin
   try
    // Iniciando a Transação
    if Transacao then
       TSQLConnection( FSQLcnn ).StartTransaction(TD);

    if Transacao then
       if not cdsOff.FieldByName('OSID').IsNull  then
          if cdsOff.FieldByName('OSID').Value <> '' then
             ValidarOSLancamentos( cdsOff, sqlOSVrf, sqlOSDef, Transacao );

    // Verificar lançamento restrito
    sqlOSVrf.Close;
    sqlOSVrf.SQL.Clear;
    sqlOSVrf.SQL.Add('SELECT OPERACAOID,');
    sqlOSVrf.SQL.Add('  FINALIDADE,');
    sqlOSVrf.SQL.Add('  BLOQUEADO,');
    sqlOSVrf.SQL.Add('  LANCEXCLUSIVO');
    sqlOSVrf.SQL.Add('FROM RD_OPERACAO');
    sqlOSVrf.SQL.Add(' WHERE');
    sqlOSVrf.SQL.Add('  OPERACAOID = ' + cdsOff.FieldByName('OPERACAOID').AsString );
    sqlOSVrf.Prepared := True;
    sqlOSVrf.Open;

    if sqlOSVrf.IsEmpty then
       raise Exception.Create('Tabela de operação não localizada para validar as informações');

    if sqlOSVrf.FieldByName('FINALIDADE').Value <> 'H' then
       raise Exception.Create('Código da Operação ID não refere-se ao lançamento do banco de horas');

    if sqlOSVrf.FieldByName('BLOQUEADO').AsInteger = 1 then
       raise Exception.Create('Código da Operação ID está bloqueado para utilização');

    if sqlOSVrf.FieldByName('LANCEXCLUSIVO').AsInteger = 1 then
       raise Exception.Create('Código da Operação ID é de lançamento exclusivo do RH');

    // Atualizar o contador de adiantamento prevendo a inserção de outros usuários
    sqlSEQHoras.Close;
    sqlSEQHoras.SQL.Clear;
    sqlSEQHoras.SQL.Add('SELECT SQ_RD_BANCOHORA_BANCOHORAID.NEXTVAL VALOR FROM DUAL');
    sqlSEQHoras.Prepared := True;
    sqlSEQHoras.Open;

    if Transacao then
       if cdsOff.FieldByName('TIPODESPESAOS').Value <> 'C' then
          begin
           cdsOff.Edit;
           cdsOff.FieldByName('OSID').Clear;
           cdsOff.Post;
          end;

    if cdsOff.FieldByName('OPERACAOID').IsNull then
       raise exception.Create('Operação não informada!');

    if DateOf( cdsOff.FieldByName('HORAINI').AsDateTime ) > Date then
       raise Exception.Create('A Data Informada é maior do que a data Atual!');

    if cdsOff.FieldByName('DATASOLICITACAO').AsDateTime < StrToDate( '03/04/2006') then
       raise Exception.Create('Lançamento não permitido para o novo Banco de Horas que vigora a partir de 03 Abril 2006!');

    ValidarMesAnoBancoHoras( cdsOff.FieldByName('HORAINI').AsDateTime, 1, sqlHora );

    ValidarMesAnoBancoHoras( cdsOff.FieldByName('HORAFIM').AsDateTime, 1, sqlHora );

    ValidarQtdHorasEfetuadas( cdsOff.FieldByName('FUNCIONARIOID').AsString,
                              '1',
                              cdsOff.FieldByName('DIFERENCAMINTRAB').AsFloat,
                              sqlHora );
    // Inserir registro
    sqlUpd.SQL.Clear;
    sqlUpd.SQL.Add('INSERT INTO RD_BANCOHORA');
    sqlUpd.SQL.Add('   ( BANCOHORAID, DATASOLICITACAO, MULTILANCAMENTO, FUNCIONARIOID, TIPODESPESAOS, OSID, ');
    sqlUpd.SQL.Add('     OPERACAOID, HORAINI, HORAFIM, DIFERENCAHORATRAB, DIFERENCAMINTRAB, ');
    sqlUpd.SQL.Add('     HISTORICO, LIBCHEFIA, LIBERADO, IMPRESSO, USUARIO ) ');
    sqlUpd.SQL.Add('VALUES (');
    sqlUpd.SQL.Add( sqlSEQHoras.FieldByName('VALOR').AsString +  ',' );
    sqlUpd.SQL.Add( QuotedStr( cdsOff.FieldByName('DATASOLICITACAO').AsString ) +  ',' );
    sqlUpd.SQL.Add( '0'+  ',' ); // Multi Lançamento de Horas
    sqlUpd.SQL.Add( cdsOff.FieldByName('FUNCIONARIOID').AsString +  ',' );
    sqlUpd.SQL.Add( QuotedStr( cdsOff.FieldByName('TIPODESPESAOS').AsString ) +  ',' );
    sqlUpd.SQL.Add( QuotedStr( cdsOff.FieldByName('OSID').AsString ) +  ',' );
    sqlUpd.SQL.Add( cdsOff.FieldByName('OPERACAOID').AsString +  ',' );
    sqlUpd.SQL.Add( 'TO_DATE(' + QuotedStr( cdsOff.FieldByName('HORAINI').AsString ) + ', ''dd/mm/yyyy HH24:MI:SS'' )' + ' ,' );
    sqlUpd.SQL.Add( 'TO_DATE(' + QuotedStr( cdsOff.FieldByName('HORAFIM').AsString ) + ', ''dd/mm/yyyy HH24:MI:SS'' )' + ' ,' );
    sqlUpd.SQL.Add( QuotedStr( cdsOff.FieldByName('DIFERENCAHORATRAB').AsString ) + ',' );
    sqlUpd.SQL.Add( SubstituiString( cdsOff.FieldByName('DIFERENCAMINTRAB').AsString, ',', '.' ) + ',' );
    sqlUpd.SQL.Add( QuotedStr( cdsOff.FieldByName('HISTORICO').AsString ) +  ',' );
    sqlUpd.SQL.Add( '0'+  ',' ); // LIBERAÇÃO CHEFIA PADRÃO NÃO LIBERADO
    sqlUpd.SQL.Add( '0'+  ',' ); // LIBERAÇÃO LIBERADO PADRÃO NÃO LIBERADO
    sqlUpd.SQL.Add( '0'+  ',' ); // LIBERAÇÃO IMPRESSO PADRÃO NÃO LIBERADO
    sqlUpd.SQL.Add( QuotedStr( cdsOff.FieldByName('USUARIO').AsString ) +  ')' );
    sqlUpd.Prepared := True;
    sqlUpd.ExecSQL;

    sqlSEQHoras.Close;

    cdsOff.Delete;

    { Efetivar a. transação no Banco de Dados }
    if Transacao then
       TSQLConnection(FSQLcnn).Commit(TD);
   except
    on E: Exception do
    begin
     if Transacao then
        begin
         cdsOff.Edit;
         cdsOff.FieldByName('PROBLEMATRANSF').AsBoolean := True;
         cdsOff.FieldByName('LOGERRO').AsString         := E.Message;
         cdsOff.Next;

         { Efetivar a transação no Banco de Dados }
         TSQLConnection(FSQLcnn).Rollback(TD);

         Continue;
        end
     else
        raise Exception.Create( E.Message );
    end;
   end;
  end;
end;

function TSrvAppRD.ITransfOFFBancoHora(Data: OleVariant): OleVariant;
var sqlSEQHoras, sqlUpd, sqlOSVrf, sqlOSDef : TSQLQuery;
    cdsOff : TClientDataSet;
  sqlHora: TSQLQuery;
begin
 Result := Null;
 sqlHora := TSQLQuery.Create(nil);
 sqlHora.SQLConnection := TSQLConnection(FSQLcnn);

 sqlSEQHoras := TSQLQuery.Create(nil);
 sqlSEQHoras.SQLConnection := TSQLConnection(FSQLcnn);

 sqlUpd := TSQLQuery.Create(nil);
 sqlUpd.SQLConnection := TSQLConnection(FSQLcnn);

 sqlOSVrf := TSQLQuery.Create(nil);
 sqlOSVrf.SQLConnection := TSQLConnection(FSQLcnn);

 sqlOSDef := TSQLQuery.Create(nil);
 sqlOSDef.SQLConnection := TSQLConnection(FSQLcnn);

 cdsOff := TClientDataSet.Create( Self );
 cdsOff.Data := Data;

 try
  try
   ProcessarBancoHorasOFF( True, cdsOff, sqlHora, sqlSEQHoras, sqlOSVrf, sqlOSDef,sqlUpd );
  except
   On E : Exception do
     begin
      if TSQLConnection(FSQLcnn).InTransaction then
         TSQLConnection(FSQLcnn).Rollback(TD);
      raise Exception.Create(E.Message);
     end;
  end;
 finally
  Result := cdsOff.Data;
  cdsOff.Close;
  FreeAndNil(sqlSEQHoras);
  FreeAndNil(sqlUpd);
  FreeAndNil(sqlOSVrf);
  FreeAndNil(sqlOSDef);
  FreeAndNil(sqlHora);
 end;
end;

procedure TSrvAppRD.ProcessarHoraTecnica( Transacao : Boolean; var cdsOff : TClientDataSet;
 sqlOSVrf, sqlUpd, sqlOSDef : TSQLQuery );
begin
 cdsOff.First;
 while not cdsOff.Eof do
 begin
  try
   // Iniciando a Transação
   if Transacao then
      TSQLConnection( FSQLcnn ).StartTransaction(TD);

   if Transacao then
      if not cdsOff.FieldByName('OSID').IsNull  then
         if cdsOff.FieldByName('OSID').Value <> '' then
            ValidarOSLancamentos( cdsOff, sqlOSVrf, sqlOSDef, Transacao );

   // Inserir registro
   sqlUpd.Close;
   sqlUpd.SQL.Clear;
   sqlUpd.SQL.Add('INSERT INTO OS_OSHORA');
   sqlUpd.SQL.Add('   ( OSID,ENTIDADEID, DATATRABALHOID, QTDHORATRAB, QTDHORATRANSP, QTDHORAESPERA, QTDHORAOUTRA, USUARIO  )');
   sqlUpd.SQL.Add('VALUES (');
   sqlUpd.SQL.Add( QuotedStr( cdsOff.FieldByName('OSID').AsString ) +  ',' );
   sqlUpd.SQL.Add( cdsOff.FieldByName('ENTIDADEID').AsString +  ',' );
   sqlUpd.SQL.Add( QuotedStr( cdsOff.FieldByName('DATATRABALHOID').AsString ) +  ',' );
   sqlUpd.SQL.Add( SubstituiString( cdsOff.FieldByName('QTDHORATRAB').AsString, ',', '.' ) + ',' );
   sqlUpd.SQL.Add( SubstituiString( cdsOff.FieldByName('QTDHORATRANSP').AsString, ',', '.' ) + ',' );
   sqlUpd.SQL.Add( SubstituiString( cdsOff.FieldByName('QTDHORAESPERA').AsString, ',', '.' ) + ',' );
   sqlUpd.SQL.Add( SubstituiString( cdsOff.FieldByName('QTDHORAOUTRA').AsString, ',', '.' ) + ',' );
   sqlUpd.SQL.Add( QuotedStr( cdsOff.FieldByName('USUARIO').AsString ) +  ')' );
   sqlUpd.Prepared := True;
   sqlUpd.ExecSQL;

   cdsOff.Delete;

   // Efetivar a. transação no Banco de Dados
   if Transacao then
      TSQLConnection(FSQLcnn).Commit(TD);
  except
   on E: Exception do
   begin
    if Transacao then
       begin
        cdsOff.Edit;
        cdsOff.FieldByName('PROBLEMATRANSF').AsBoolean := True;
        cdsOff.FieldByName('LOGERRO').AsString         := E.Message;
        cdsOff.Next;

        { Efetivar a transação no Banco de Dados }
        TSQLConnection(FSQLcnn).Rollback(TD);
        Continue;
       end
    else
       raise Exception.Create( E.Message );
   end;
  end;
 end;
end;

function TSrvAppRD.ITransfHoraTecnica(Data: OleVariant): OleVariant;
var sqlUpd, sqlOSVrf, sqlOSDef : TSQLQuery;
    cdsOff : TClientDataSet;
begin
 Result := Null;

 sqlUpd := TSQLQuery.Create(nil);
 sqlUpd.SQLConnection := TSQLConnection(FSQLcnn);

 sqlOSVrf := TSQLQuery.Create(nil);
 sqlOSVrf.SQLConnection := TSQLConnection(FSQLcnn);

 sqlOSDef := TSQLQuery.Create(nil);
 sqlOSDef.SQLConnection := TSQLConnection(FSQLcnn);

 cdsOff := TClientDataSet.Create( Self );
 cdsOff.Data := Data;

 try
  try
   ProcessarHoraTecnica( True, cdsOff, sqlOSVrf, sqlUpd, sqlOSDef );

  except
   On E : Exception do
     begin
      if TSQLConnection(FSQLcnn).InTransaction then
         TSQLConnection(FSQLcnn).Rollback(TD);
      raise Exception.Create(E.Message);
     end;
  end;
 finally
  Result := cdsOff.Data;
  cdsOff.Close;
  FreeAndNil(sqlUpd);
  FreeAndNil(sqlOSVrf);
  FreeAndNil(sqlOSDef);
 end;
end;

procedure TSrvAppRD.ProcessarOSDefeito( Transacao : Boolean; var cdsOff : TClientDataSet;
 sqlOSVrf, sqlUpd, sqlOSDef : TSQLQuery );
begin
 cdsOff.First;
 while not cdsOff.Eof do
 begin
  try
   // Iniciando a Transação
   if Transacao then
      TSQLConnection( FSQLcnn ).StartTransaction(TD);

   if Transacao then
      if not cdsOff.FieldByName('OSID').IsNull  then
         if cdsOff.FieldByName('OSID').Value <> '' then
            ValidarOSLancamentos( cdsOff, sqlOSVrf, sqlOSDef, False );

   // Inserir registro
   sqlUpd.SQL.Clear;
   sqlUpd.SQL.Add('INSERT INTO OS_OSDEFEITO');
   sqlUpd.SQL.Add('   ( OSID, ITEMID, DEFEITOID, LOCALDEFEITO, SERVICOEXECUTADO, USUARIO )');
   sqlUpd.SQL.Add('VALUES (');
   sqlUpd.SQL.Add( QuotedStr( cdsOff.FieldByName('OSID').AsString ) +  ',' );
   sqlUpd.SQL.Add('( SELECT NVL( MAX( OS_OSDEFEITO.ITEMID ), 0 ) + 1');
   sqlUpd.SQL.Add('   FROM OS_OSDEFEITO');
   sqlUpd.SQL.Add('   WHERE OS_OSDEFEITO.OSID = ' + QuotedStr( cdsOff.FieldByName('OSID').AsString ) + '),');
   sqlUpd.SQL.Add( cdsOff.FieldByName('DEFEITOID').AsString +  ',' );
   sqlUpd.SQL.Add( QuotedStr( cdsOff.FieldByName('LOCALDEFEITO').AsString ) +  ',' );
   sqlUpd.SQL.Add( QuotedStr( cdsOff.FieldByName('SERVICOEXECUTADO').AsString ) +  ',' );
   sqlUpd.SQL.Add( QuotedStr( cdsOff.FieldByName('USUARIO').AsString ) +  ')' );
   sqlUpd.Prepared := True;
   sqlUpd.ExecSQL;

   cdsOff.Delete;

   { Efetivar a. transação no Banco de Dados }
   if Transacao then
      TSQLConnection(FSQLcnn).Commit(TD);

  except
   on E: Exception do
   begin
    if Transacao then
       begin
        cdsOff.Edit;
        cdsOff.FieldByName('PROBLEMATRANSF').AsBoolean := True;
        cdsOff.FieldByName('LOGERRO').AsString         := E.Message;
        cdsOff.Next;

        { Efetivar a transação no Banco de Dados }
        TSQLConnection(FSQLcnn).Rollback(TD);

        Continue;
       end
    else
       raise Exception.Create( E.Message );
   end;
  end;
 end;
end;

function TSrvAppRD.ITransfOSDefeito(Data: OleVariant): OleVariant;
var sqlUpd, sqlOSVrf, sqlOSDef : TSQLQuery;
    cdsOff : TClientDataSet;
begin
 Result := Null;

 sqlUpd := TSQLQuery.Create(nil);
 sqlUpd.SQLConnection := TSQLConnection(FSQLcnn);

 sqlOSVrf := TSQLQuery.Create(nil);
 sqlOSVrf.SQLConnection := TSQLConnection(FSQLcnn);

 sqlOSDef := TSQLQuery.Create(nil);
 sqlOSDef.SQLConnection := TSQLConnection(FSQLcnn);

 cdsOff := TClientDataSet.Create( Self );
 cdsOff.Data := Data;

 try
  try
   ProcessarOSDefeito( True, cdsOff, sqlOSVrf, sqlUpd, sqlOSDef );
  except
   On E : Exception do
     begin
      if TSQLConnection(FSQLcnn).InTransaction then
         TSQLConnection(FSQLcnn).Rollback(TD);
      raise Exception.Create(E.Message);
     end;
  end;
 finally
  Result := cdsOff.Data;
  cdsOff.Close;
  FreeAndNil(sqlUpd);
  FreeAndNil(sqlOSVrf);
  FreeAndNil(sqlOSDef);
 end;
end;

function TSrvAppRD.IValidSaldoHoras(const FuncionarioID,
  BancoHoraID: WideString; MinutosAdicionais: Single): WordBool;
var sqlHora : TSQLQuery;
begin
 sqlHora := TSQLQuery.Create(nil);
 sqlHora.SQLConnection := TSQLConnection(FSQLcnn);
 Result := False;
 try
  try
   // Iniciando a Transação
   TSQLConnection( FSQLcnn ).StartTransaction(TD);

   ValidarQtdHorasEfetuadas( FuncionarioID, BancoHoraID, MinutosAdicionais, sqlHora );

   { Efetivar a transação no Banco de Dados }
   TSQLConnection(FSQLcnn).Commit(TD);
   Result := True;

  except
   On E : Exception do
     begin
      if TSQLConnection(FSQLcnn).InTransaction then
         TSQLConnection(FSQLcnn).Rollback(TD);
      raise Exception.Create(E.Message);
     end;
  end;
 finally
  FreeAndNil(sqlHora);
 end;
end;

procedure TSrvAppRD.ValidarMesAnoBancoHoras( dDate: Double; TipoValidacao : Integer;
 sqlHora : TSQLQuery );
begin
 try
  sqlHora.Close;
  sqlHora.SQL.Clear;
  sqlHora.SQL.Add('SELECT ANOMES, DATACADASTRO, DATALIMITEFECH, DATALIMITELIB');
  sqlHora.SQL.Add(' FROM RD_HORACFG');
  sqlHora.SQL.Add(' WHERE ANOMES = TO_CHAR(  TO_DATE( ' +  QuotedStr( DateToStr( dDate ) ) + ', ''DD/MM/YYYY''), ''YYYYMM'')');
  sqlHora.Prepared := True;
  sqlHora.Open;

  if sqlHora.IsEmpty then
     raise Exception.Create('Não há lançamentos na tabela de configuração de horas para validação!');

  case TipoValidacao of
  1 : if Date > sqlHora.FieldByName('DATALIMITEFECH').AsDateTime then
         raise Exception.Create('Lançamento do banco de horas expirou o prazo de 7 dias');

  2 : if Date > sqlHora.FieldByName('DATALIMITELIB').AsDateTime then
         raise Exception.Create('Liberação do banco de horas expirou o prazo de 10 dias');
  end;

 except
 on E : Exception do
  raise Exception.Create(E.Message);
 end;

end;

function TSrvAppRD.IValidLimiteLancHoras(Data: TDateTime;
  Tipo: Integer): WordBool;
var sqlHora : TSQLQuery;
begin
 sqlHora := TSQLQuery.Create(nil);
 sqlHora.SQLConnection := TSQLConnection(FSQLcnn);
 Result := False;
 try
  try
   // Iniciando a Transação
   TSQLConnection( FSQLcnn ).StartTransaction(TD);

   ValidarMesAnoBancoHoras( Data, Tipo, sqlHora );

   // Efetivar a transação no Banco de Dados
   TSQLConnection(FSQLcnn).Commit(TD);
   Result := True;

  except
   On E : Exception do
     begin
      if TSQLConnection(FSQLcnn).InTransaction then
         TSQLConnection(FSQLcnn).Rollback(TD);
      raise Exception.Create(E.Message);
     end;
  end;
 finally
  FreeAndNil(sqlHora);
 end;
end;

procedure TSrvAppRD.ProcessarOS( var cdsOff : TClientDataSet;
 sqlOSVrf, sqlUpd, sqlOSDef : TSQLQuery );
begin

 cdsOff.First;
  while not cdsOff.Eof do
  begin
//   try
    // Iniciando a Transação
    ValidarOSLancamentosSemTry( cdsOff, sqlOSVrf, sqlOSDef, False );

    // Atualizar O.S.
    sqlUpd.Close;
    sqlUpd.SQL.Clear;
    sqlUpd.SQL.Add('UPDATE ');
    sqlUpd.SQL.Add(' OS_OS ');
    sqlUpd.SQL.Add('SET ');
    sqlUpd.SQL.Add(' OSOFFLINE =  0,' );

    if cdsOff.FieldByName('CONDPAGTOID').AsInteger > 0 then
       sqlUpd.SQL.Add(' CONDPAGTOID = ' + cdsOff.FieldByName('CONDPAGTOID').AsString +  ',' );

    sqlUpd.SQL.Add(' DATAHORACHEGADA = ' + 'TO_DATE(' + QuotedStr( cdsOff.FieldByName('DATAHORACHEGADA').AsString ) + ', ''dd/mm/yyyy HH24:MI:SS'' ),' );
    sqlUpd.SQL.Add(' DATAHORASAIDA = ' + 'TO_DATE(' + QuotedStr( cdsOff.FieldByName('DATAHORASAIDA').AsString ) + ', ''dd/mm/yyyy HH24:MI:SS'' ),' );
    sqlUpd.SQL.Add(' OSIMPRESSA = ' + SubstituiString( FloatToStr( cdsOff.FieldByName('OSIMPRESSA').AsInteger ),',','.') +',');
    sqlUpd.SQL.Add(' VLRMAODEOBRA = ' + SubstituiString( FloatToStr( cdsOff.FieldByName('VLRMAODEOBRA').AsFloat ),',','.') +',');
    sqlUpd.SQL.Add(' VLRDESLOCAMENTO = ' +  SubstituiString( FloatToStr( cdsOff.FieldByName('VLRDESLOCAMENTO').AsFloat ),',','.') +',');
    sqlUpd.SQL.Add(' VLRFRETE = ' + SubstituiString( FloatToStr( cdsOff.FieldByName('VLRFRETE').AsFloat ),',','.') +',');
    sqlUpd.SQL.Add(' VLRPECA = ' + SubstituiString( FloatToStr( cdsOff.FieldByName('VLRPECA').AsFloat ),',','.') +',');
    sqlUpd.SQL.Add(' NUMCORTES = ' + SubstituiString( FloatToStr( cdsOff.FieldByName('NUMCORTES').AsFloat ),',','.') +',');
    sqlUpd.SQL.Add(' PORCDESCONTO = ' + SubstituiString( FloatToStr( cdsOff.FieldByName('PORCDESCONTO').AsFloat ),',','.') +',');
    sqlUpd.SQL.Add(' NOMELIBDESCONTO = ' +  QuotedStr( cdsOff.FieldByName('NOMELIBDESCONTO').AsString ) +',');
    sqlUpd.SQL.Add(' VLRTOTALORCCOMP = ' + SubstituiString( FloatToStr( cdsOff.FieldByName('VLRTOTALORCCOMP').AsFloat ),',','.') +',');
    sqlUpd.SQL.Add(' VLRTOTALMAODEOBRA = ' + SubstituiString( FloatToStr( cdsOff.FieldByName('VLRTOTALMAODEOBRA').AsFloat ),',','.') +',');
    sqlUpd.SQL.Add(' VLRTOTALDESLOCAMENTO = ' +  SubstituiString( FloatToStr( cdsOff.FieldByName('VLRTOTALDESLOCAMENTO').AsFloat ),',','.') +',');
    sqlUpd.SQL.Add(' VLRTOTALFRETE = ' +  SubstituiString( FloatToStr( cdsOff.FieldByName('VLRTOTALFRETE').AsFloat ),',','.') +',');
    sqlUpd.SQL.Add(' VLRTOTALPECA = ' +  SubstituiString( FloatToStr( cdsOff.FieldByName('VLRTOTALPECA').AsFloat ),',','.') +',');
    sqlUpd.SQL.Add(' VLRTOTALOUTRO = ' + SubstituiString( FloatToStr( cdsOff.FieldByName('VLRTOTALOUTRO').AsFloat ),',','.') +',');
    sqlUpd.SQL.Add(' VLRTOTALPAGAR = ' +  SubstituiString( FloatToStr( cdsOff.FieldByName('VLRTOTALPAGAR').AsFloat ),',','.') );
    sqlUpd.SQL.Add('WHERE ');
    sqlUpd.SQL.Add(' OSID = ' + QuotedStr( cdsOff.FieldByName('OSID').Value ) );
    sqlUpd.Prepared := True;
    sqlUpd.ExecSQL;

    cdsOff.Delete;

//   except
//    on E: Exception do
//     raise Exception.Create( E.Message );
//    end;
  end;

end;

procedure TSrvAppRD.ProcessarOSMaterial( Transacao : Boolean; var cdsOff : TClientDataSet;
 sqlOSVrf, sqlUpd, sqlOSDef : TSQLQuery );
begin
 cdsOff.First;
 while not cdsOff.Eof do
 begin
  try
   // Iniciando a Transação
   if Transacao then
      TSQLConnection( FSQLcnn ).StartTransaction(TD);

   if Transacao then
      ValidarOSLancamentos( cdsOff, sqlOSVrf, sqlOSDef, Transacao );

   // Inserir registro
   sqlUpd.SQL.Clear;
   sqlUpd.SQL.Add('INSERT INTO OS_OSMATERIAL');
   sqlUpd.SQL.Add('   ( OSID, ITEMID, EMPRESAID, PRODUTOID, DESCRICAOMATSERV, QUANTIDADE, ');
   sqlUpd.SQL.Add('     VLRPRECOUNITARIO, VLRPRECOTOTAL, USUARIO )');
   sqlUpd.SQL.Add('VALUES (');
   sqlUpd.SQL.Add( QuotedStr( cdsOff.FieldByName('OSID').AsString ) +  ',' );
   sqlUpd.SQL.Add('( SELECT NVL( MAX( OS_OSMATERIAL.ITEMID ), 0 ) + 1');
   sqlUpd.SQL.Add('   FROM OS_OSMATERIAL');
   sqlUpd.SQL.Add('   WHERE OS_OSMATERIAL.OSID = ' + QuotedStr( cdsOff.FieldByName('OSID').AsString ) + '),');
   sqlUpd.SQL.Add( cdsOff.FieldByName('EMPRESAID').AsString +  ',' );
   sqlUpd.SQL.Add( cdsOff.FieldByName('PRODUTOID').AsString +  ',' );
   sqlUpd.SQL.Add( QuotedStr( cdsOff.FieldByName('DESCRICAOMATSERV').AsString ) +  ',' );
   sqlUpd.SQL.Add( SubstituiString( cdsOff.FieldByName('QUANTIDADE').AsString, ',', '.' ) + ',' );
   sqlUpd.SQL.Add( SubstituiString( cdsOff.FieldByName('VLRPRECOUNITARIO').AsString, ',', '.' ) + ',' );
   sqlUpd.SQL.Add( SubstituiString( cdsOff.FieldByName('VLRPRECOTOTAL').AsString, ',', '.' ) + ',' );
   sqlUpd.SQL.Add( QuotedStr( cdsOff.FieldByName('USUARIO').AsString ) +  ')' );
   sqlUpd.Prepared := True;
   sqlUpd.ExecSQL;

   cdsOff.Delete;

   { Efetivar a. transação no Banco de Dados }
   if Transacao then
      TSQLConnection(FSQLcnn).Commit(TD);
  except
   on E: Exception do
   begin
    if Transacao then
       begin
        cdsOff.Edit;
        cdsOff.FieldByName('PROBLEMATRANSF').AsBoolean := True;
        cdsOff.FieldByName('LOGERRO').AsString         := E.Message;
        cdsOff.Next;

        { Efetivar a transação no Banco de Dados }
        TSQLConnection(FSQLcnn).Rollback(TD);

        Continue;
       end
    else
       raise Exception.Create( E.Message );
   end;
  end;
 end;
end;

procedure TSrvAppRD.ProcessarOSOcOperacional( Transacao : Boolean; var cdsOff : TClientDataSet;
 sqlOSVrf, sqlUpd, sqlOSDef : TSQLQuery );
begin
 cdsOff.First;
 while not cdsOff.Eof do
 begin
  try
   // Iniciando a Transação
   if Transacao then
      TSQLConnection( FSQLcnn ).StartTransaction(TD);

   if Transacao then
      ValidarOSLancamentos( cdsOff, sqlOSVrf, sqlOSDef, Transacao );

   // Inserir registro
   sqlUpd.SQL.Clear;
   sqlUpd.SQL.Add('INSERT INTO OS_OSOCOPERACIONAL');
   sqlUpd.SQL.Add('   ( OSID, ITEMID, DATAOCORRENCIA, OCOPERACIONALID, DATAACAOTOMADA, USUARIOACAOTOMADA, ');
   sqlUpd.SQL.Add('     ACAOTOMADA, USUARIO )');
   sqlUpd.SQL.Add('VALUES (');
   sqlUpd.SQL.Add( QuotedStr( cdsOff.FieldByName('OSID').AsString ) +  ',' );
   sqlUpd.SQL.Add('( SELECT NVL( MAX( OS_OSOCOPERACIONAL.ITEMID ), 0 ) + 1');
   sqlUpd.SQL.Add('   FROM OS_OSOCOPERACIONAL');
   sqlUpd.SQL.Add('   WHERE OS_OSOCOPERACIONAL.OSID = ' + QuotedStr( cdsOff.FieldByName('OSID').AsString ) + '),');
   sqlUpd.SQL.Add( QuotedStr( cdsOff.FieldByName('DATAOCORRENCIA').AsString ) +  ',' );
   sqlUpd.SQL.Add( cdsOff.FieldByName('OCOPERACIONALID').AsString +  ',' );
   sqlUpd.SQL.Add( QuotedStr( cdsOff.FieldByName('DATAACAOTOMADA').AsString ) +  ',' );
   sqlUpd.SQL.Add( QuotedStr( cdsOff.FieldByName('USUARIOACAOTOMADA').AsString ) +  ',' );
   sqlUpd.SQL.Add( QuotedStr( cdsOff.FieldByName('ACAOTOMADA').AsString ) +  ',' );
   sqlUpd.SQL.Add( QuotedStr( cdsOff.FieldByName('USUARIO').AsString ) +  ')' );
   sqlUpd.Prepared := True;

   sqlUpd.SQL.SaveToFile( 'c:\tt.sql');
   sqlUpd.ExecSQL;

   cdsOff.Delete;

   { Efetivar a. transação no Banco de Dados }
   if Transacao then
      TSQLConnection(FSQLcnn).Commit(TD);
  except
   on E: Exception do
   begin
    if Transacao then
       begin
        cdsOff.Edit;
        cdsOff.FieldByName('PROBLEMATRANSF').AsBoolean := True;
        cdsOff.FieldByName('LOGERRO').AsString         := E.Message;
        cdsOff.Next;

        { Efetivar a transação no Banco de Dados }
        TSQLConnection(FSQLcnn).Rollback(TD);

        Continue;
       end
    else
       raise Exception.Create( E.Message );
   end;
  end;
 end;
end;

function TSrvAppRD.ITransfOS(const OSID: WideString; Data, DataOSHoras,
  DataOSDefeito, DataOSMaterial, DataOSOCOperacional, DataRDV,
  DataBancoHora: OleVariant): OleVariant;
var sqlGeral, sqlUpd, sqlOSVrf, sqlOSDef, sqlHora : TSQLQuery;
    cdsOff, cdsOffOSHora, cdsOffOSDefeito, cdsOffOSMaterial,
    cdsOffOSOcOperacional, cdsOffRDV, cdsOffBancoHora : TClientDataSet;
    cdsData : OleVariant;

 procedure FiltroOS( pOSID : String );
 begin
  cdsOff.Filter                  := 'OSID = ' + QuotedStr( pOSID );
  cdsOffOSDefeito.Filter         := 'OSID = ' + QuotedStr( pOSID );
  cdsOffOSHora.Filter            := 'OSID = ' + QuotedStr( pOSID );
  cdsOffRDV.Filter               := 'OSID = ' + QuotedStr( pOSID );
  cdsOffBancoHora.Filter         := 'OSID = ' + QuotedStr( pOSID );
  cdsOffOSMaterial.Filter        := 'OSID = ' + QuotedStr( pOSID );
  cdsOffOSOcOperacional.Filter   := 'OSID = ' + QuotedStr( pOSID );
  cdsOff.Filtered                := True;
  cdsOffOSDefeito.Filtered       := True;
  cdsOffOSHora.Filtered          := True;
  cdsOffRDV.Filtered             := True;
  cdsOffBancoHora.Filtered       := True;
  cdsOffOSMaterial.Filtered      := True;
  cdsOffOSOcOperacional.Filtered := True;
 end;


begin
 Result := Null;

 sqlHora := TSQLQuery.Create(nil);
 sqlHora.SQLConnection := TSQLConnection(FSQLcnn);

 sqlGeral := TSQLQuery.Create(nil);
 sqlGeral.SQLConnection := TSQLConnection(FSQLcnn);

 sqlUpd := TSQLQuery.Create(nil);
 sqlUpd.SQLConnection := TSQLConnection(FSQLcnn);

 sqlOSVrf := TSQLQuery.Create(nil);
 sqlOSVrf.SQLConnection := TSQLConnection(FSQLcnn);

 sqlOSDef := TSQLQuery.Create(nil);
 sqlOSDef.SQLConnection := TSQLConnection(FSQLcnn);

 cdsOff := TClientDataSet.Create( Self );
 cdsOff.Data := Data;

 cdsOffOSHora := TClientDataSet.Create( Self );
 cdsOffOSHora.Data := DataOSHoras;

 cdsOffOSDefeito := TClientDataSet.Create( Self );
 cdsOffOSDefeito.Data := DataOSDefeito;

 cdsOffOSMaterial := TClientDataSet.Create( Self );
 cdsOffOSMaterial.Data := DataOSMaterial;

 cdsOffOSOcOperacional := TClientDataSet.Create( Self );
 cdsOffOSOcOperacional.Data := DataOSOCOperacional;

 cdsOffRDV := TClientDataSet.Create( Self );
 cdsOffRDV.Data := DataRDV;

 cdsOffBancoHora := TClientDataSet.Create( Self );
 cdsOffBancoHora.Data := DataBancoHora;

 cdsData := VarArrayCreate([0,6],varVariant);

 try
  try
    // Iniciando a Transação
    TSQLConnection( FSQLcnn ).StartTransaction(TD);

    FiltroOS( OSID );

    ProcessarOS( cdsOff, sqlOSVrf, sqlUpd, sqlOSDef );

    ProcessarOSDefeito( False, cdsOffOSDefeito, sqlOSVrf, sqlUpd, sqlOSDef );

    ProcessarHoraTecnica( False, cdsOffOSHora, sqlOSVrf, sqlUpd, sqlOSDef );

    ProcessarRDV( False, cdsOffRDV, sqlUpd, sqlGeral, sqlOSVrf, sqlOSDef );

    ProcessarBancoHorasOFF( False, cdsOffBancoHora, sqlHora, sqlGeral, sqlOSVrf, sqlOSDef,sqlUpd );

    ProcessarOSMaterial( False, cdsOffOSMaterial, sqlOSVrf, sqlUpd, sqlOSDef );

    ProcessarOSOcOperacional( False, cdsOffOSOcOperacional, sqlOSVrf, sqlUpd, sqlOSDef );

    cdsData[0] := cdsOff.Data;
    cdsData[1] := cdsOffOSDefeito.Data;
    cdsData[2] := cdsOffOSHora.Data;
    cdsData[3] := cdsOffRDV.Data;
    cdsData[4] := cdsOffBancoHora.Data;
    cdsData[5] := cdsOffOSMaterial.Data;
    cdsData[6] := cdsOffOSOcOperacional.Data;

    Result := cdsData;

    cdsOff.Close;
    cdsOffOSDefeito.Close;
    cdsOffOSHora.Close;
    cdsOffRDV.Close;
    cdsOffBancoHora.Close;
    cdsOffOSMaterial.Close;
    cdsOffOSOcOperacional.Close;

    { Efetivar a. transação no Banco de Dados }
    TSQLConnection(FSQLcnn).Commit(TD);
   except
   On E : Exception do
      begin
       if TSQLConnection(FSQLcnn).InTransaction then
          TSQLConnection(FSQLcnn).Rollback(TD);

       cdsOff := TClientDataSet.Create( Self );
       cdsOff.Data := Data;

       cdsOff.Edit;
       cdsOff.FieldByName('PROBLEMATRANSF').AsBoolean := True;
       cdsOff.FieldByName('LOGERRO').AsString         := E.Message;
       cdsOff.Post;

       cdsData[0] := cdsOff.Data;
       cdsData[1] := cdsOffOSDefeito.Data;
       cdsData[2] := cdsOffOSHora.Data;
       cdsData[3] := cdsOffRDV.Data;
       cdsData[4] := cdsOffBancoHora.Data;
       cdsData[5] := cdsOffOSMaterial.Data;
       cdsData[6] := cdsOffOSOcOperacional.Data;

       Result := cdsData;
       cdsOff.Close;
      end;
   end;

 finally
  FreeAndNil(sqlGeral);
  FreeAndNil(sqlUpd);
  FreeAndNil(sqlOSVrf);
  FreeAndNil(sqlOSDef);
  FreeAndNil(sqlHora);
  FreeAndNil(cdsOff);
  FreeAndNil(cdsOffOSHora);
  FreeAndNil(cdsOffOSDefeito);
  FreeAndNil(cdsOffOSMaterial);
  FreeAndNil(cdsOffOSOcOperacional);
  FreeAndNil(cdsOffRDV);
  FreeAndNil(cdsOffBancoHora);
 end;

end;

initialization
 FSrvAppRD := TComponentFactory.Create(ComServer, TSrvAppRD,
    Class_SrvAppRD, ciInternal, tmApartment);
end.

