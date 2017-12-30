unit GSIServidor_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// PASTLWTR : 1.2
// File generated on 20/2/2013 11:26:37 from Type Library described below.

// ************************************************************************  //
// Type Lib: I:\projetos\GSI\Servidor\GSIServidor.tlb (1)
// LIBID: {8DAE64BA-8C8C-4583-AFED-AC7BEDE1A4DE}
// LCID: 0
// Helpfile: 
// HelpString: GSIServidor Library
// DepndLst: 
//   (1) v1.0 Midas, (C:\WINDOWS\system32\midas.dll)
//   (2) v2.0 stdole, (C:\WINDOWS\System32\stdole2.tlb)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, Midas, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  GSIServidorMajorVersion = 1;
  GSIServidorMinorVersion = 0;

  LIBID_GSIServidor: TGUID = '{8DAE64BA-8C8C-4583-AFED-AC7BEDE1A4DE}';

  IID_ISrvAppGSI: TGUID = '{BBBA4459-A6F9-45DE-BC29-6DAB4A9ECC92}';
  CLASS_SrvAppGSI: TGUID = '{928AC209-D54F-47B3-9679-42D1360500D5}';
  IID_IBaseRDM: TGUID = '{14B5DE08-803D-4058-868F-DFF54221F861}';
  IID_ISrvAppIT: TGUID = '{EF16E393-AE8B-416F-B20C-578E88D0AE0D}';
  CLASS_SrvAppIT: TGUID = '{26BBB0E1-6E82-4196-B2C3-34470C4B8B48}';
  IID_ISrvAppRD: TGUID = '{A597B74D-D9F2-4FD2-9742-CC554A16CEA5}';
  CLASS_SrvAppRD: TGUID = '{5D9010F2-67B6-4CD7-8331-E1871067F6EF}';
  IID_ISrvAppOS: TGUID = '{BB476160-486D-4E0C-A98D-4C5729669CD3}';
  CLASS_SrvAppOS: TGUID = '{A1E9C8B2-5B3F-4D7D-A593-985FE555C014}';
  IID_ISrvAppEF: TGUID = '{0912CB1C-413A-4B86-9783-6B526D1005E9}';
  CLASS_SrvAppEF: TGUID = '{3CBE2D20-3FCC-4F56-A8F7-9896B9C705D6}';
  IID_ISrvAppAS: TGUID = '{DE588F5B-40FE-45FA-B44E-8B263C2CFBF9}';
  CLASS_SrvAppAS: TGUID = '{EA15E1ED-F784-4ED5-88A1-23955C361DE1}';
  IID_ISrvAppCP: TGUID = '{7BA6360A-B64F-49B4-9FB2-22101D4D9DE1}';
  CLASS_SrvAppCP: TGUID = '{237C13B5-28B3-4EE2-9B51-71CFBF2F79D8}';
  IID_ISrvAppPP: TGUID = '{739C8F15-2CBB-4C7E-9562-0B9EFBFEB7B0}';
  CLASS_SrvAppPP: TGUID = '{4D990575-64FA-492E-BF58-4E5B1562BF0D}';
  IID_ISrvAppCM: TGUID = '{EF4959DB-121F-41F3-9B6E-25DC5F7CE9DD}';
  CLASS_SrvAppCM: TGUID = '{4C5855D7-9DA0-4F3A-A6E4-C7B56707BF0B}';
  IID_ISrvAppRS: TGUID = '{D974624F-2D67-4417-A229-59D5F4A91482}';
  CLASS_SrvAppRS: TGUID = '{B9A363AB-B501-4040-960A-86145DBA906F}';
  IID_ISrvAppFC: TGUID = '{D417C2CE-9481-4D4C-A535-032D3B777AAC}';
  CLASS_SrvAppFC: TGUID = '{D393D3C9-F23E-4581-9A82-0FC569DB7DB1}';
  IID_ISrvAppGR: TGUID = '{0C8566F6-3A7D-4452-B8C6-5BC584480F34}';
  CLASS_SrvAppGR: TGUID = '{330206BE-DDA1-40F1-B872-5DCBB24C4479}';
  IID_IsrvAppFI: TGUID = '{FA706EF4-3D52-43A2-AE23-CC2D7597F697}';
  CLASS_srvAppFI: TGUID = '{8E8973F2-CEE5-4440-9965-59CBAE8196C9}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  ISrvAppGSI = interface;
  ISrvAppGSIDisp = dispinterface;
  IBaseRDM = interface;
  IBaseRDMDisp = dispinterface;
  ISrvAppIT = interface;
  ISrvAppITDisp = dispinterface;
  ISrvAppRD = interface;
  ISrvAppRDDisp = dispinterface;
  ISrvAppOS = interface;
  ISrvAppOSDisp = dispinterface;
  ISrvAppEF = interface;
  ISrvAppEFDisp = dispinterface;
  ISrvAppAS = interface;
  ISrvAppASDisp = dispinterface;
  ISrvAppCP = interface;
  ISrvAppCPDisp = dispinterface;
  ISrvAppPP = interface;
  ISrvAppPPDisp = dispinterface;
  ISrvAppCM = interface;
  ISrvAppCMDisp = dispinterface;
  ISrvAppRS = interface;
  ISrvAppRSDisp = dispinterface;
  ISrvAppFC = interface;
  ISrvAppFCDisp = dispinterface;
  ISrvAppGR = interface;
  ISrvAppGRDisp = dispinterface;
  IsrvAppFI = interface;
  IsrvAppFIDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  SrvAppGSI = ISrvAppGSI;
  SrvAppIT = ISrvAppIT;
  SrvAppRD = ISrvAppRD;
  SrvAppOS = ISrvAppOS;
  SrvAppEF = ISrvAppEF;
  SrvAppAS = ISrvAppAS;
  SrvAppCP = ISrvAppCP;
  SrvAppPP = ISrvAppPP;
  SrvAppCM = ISrvAppCM;
  SrvAppRS = ISrvAppRS;
  SrvAppFC = ISrvAppFC;
  SrvAppGR = ISrvAppGR;
  srvAppFI = IsrvAppFI;


// *********************************************************************//
// Interface: ISrvAppGSI
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BBBA4459-A6F9-45DE-BC29-6DAB4A9ECC92}
// *********************************************************************//
  ISrvAppGSI = interface(IAppServer)
    ['{BBBA4459-A6F9-45DE-BC29-6DAB4A9ECC92}']
    function Get_dmSrvAppIT: ISrvAppIT; safecall;
    function Get_dmSrvAppRD: ISrvAppRD; safecall;
    function Get_dmSrvAppOS: ISrvAppOS; safecall;
    function Get_dmSrvAppEF: ISrvAppEF; safecall;
    function Get_dmSrvAppAS: ISrvAppAS; safecall;
    function IExecDynamicProvider(PacketRecord: Integer; const CommandText: WideString): OleVariant; safecall;
    function ILoginGSI(const Usuario: WideString; const Senha: WideString; const IP: WideString; 
                       const NomeMaquina: WideString; Versao: Integer): Integer; safecall;
    procedure ILogoutGSI(UserAtivoId: Integer); safecall;
    function IServerDate: TDateTime; safecall;
    function Get_dmSrvAppCP: ISrvAppCP; safecall;
    function Get_dmSrvAppPP: ISrvAppPP; safecall;
    procedure IExecDML(const CommandText: WideString; ParamsData: OleVariant); safecall;
    function Get_dmSrvAppCM: ISrvAppCM; safecall;
    function Get_dmSrvAppRS: ISrvAppRS; safecall;
    function Get_dmSrvAppFC: ISrvAppFC; safecall;
    function Get_dmSrvAppGR: ISrvAppGR; safecall;
    function Get_dmSrvAppFI: IsrvAppFI; safecall;
    procedure IExecProcedure(const PackageName: WideString; const StoredProcName: WideString; 
                             const SchemaName: WideString); safecall;
    property dmSrvAppIT: ISrvAppIT read Get_dmSrvAppIT;
    property dmSrvAppRD: ISrvAppRD read Get_dmSrvAppRD;
    property dmSrvAppOS: ISrvAppOS read Get_dmSrvAppOS;
    property dmSrvAppEF: ISrvAppEF read Get_dmSrvAppEF;
    property dmSrvAppAS: ISrvAppAS read Get_dmSrvAppAS;
    property dmSrvAppCP: ISrvAppCP read Get_dmSrvAppCP;
    property dmSrvAppPP: ISrvAppPP read Get_dmSrvAppPP;
    property dmSrvAppCM: ISrvAppCM read Get_dmSrvAppCM;
    property dmSrvAppRS: ISrvAppRS read Get_dmSrvAppRS;
    property dmSrvAppFC: ISrvAppFC read Get_dmSrvAppFC;
    property dmSrvAppGR: ISrvAppGR read Get_dmSrvAppGR;
    property dmSrvAppFI: IsrvAppFI read Get_dmSrvAppFI;
  end;

// *********************************************************************//
// DispIntf:  ISrvAppGSIDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BBBA4459-A6F9-45DE-BC29-6DAB4A9ECC92}
// *********************************************************************//
  ISrvAppGSIDisp = dispinterface
    ['{BBBA4459-A6F9-45DE-BC29-6DAB4A9ECC92}']
    property dmSrvAppIT: ISrvAppIT readonly dispid 301;
    property dmSrvAppRD: ISrvAppRD readonly dispid 302;
    property dmSrvAppOS: ISrvAppOS readonly dispid 303;
    property dmSrvAppEF: ISrvAppEF readonly dispid 304;
    property dmSrvAppAS: ISrvAppAS readonly dispid 305;
    function IExecDynamicProvider(PacketRecord: Integer; const CommandText: WideString): OleVariant; dispid 307;
    function ILoginGSI(const Usuario: WideString; const Senha: WideString; const IP: WideString; 
                       const NomeMaquina: WideString; Versao: Integer): Integer; dispid 308;
    procedure ILogoutGSI(UserAtivoId: Integer); dispid 306;
    function IServerDate: TDateTime; dispid 310;
    property dmSrvAppCP: ISrvAppCP readonly dispid 309;
    property dmSrvAppPP: ISrvAppPP readonly dispid 311;
    procedure IExecDML(const CommandText: WideString; ParamsData: OleVariant); dispid 312;
    property dmSrvAppCM: ISrvAppCM readonly dispid 313;
    property dmSrvAppRS: ISrvAppRS readonly dispid 316;
    property dmSrvAppFC: ISrvAppFC readonly dispid 317;
    property dmSrvAppGR: ISrvAppGR readonly dispid 314;
    property dmSrvAppFI: IsrvAppFI readonly dispid 315;
    procedure IExecProcedure(const PackageName: WideString; const StoredProcName: WideString; 
                             const SchemaName: WideString); dispid 318;
    function AS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: Integer; 
                             out ErrorCount: Integer; var OwnerData: OleVariant): OleVariant; dispid 20000000;
    function AS_GetRecords(const ProviderName: WideString; Count: Integer; out RecsOut: Integer; 
                           Options: Integer; const CommandText: WideString; var Params: OleVariant; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000001;
    function AS_DataRequest(const ProviderName: WideString; Data: OleVariant): OleVariant; dispid 20000002;
    function AS_GetProviderNames: OleVariant; dispid 20000003;
    function AS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant; dispid 20000004;
    function AS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: Integer; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000005;
    procedure AS_Execute(const ProviderName: WideString; const CommandText: WideString; 
                         var Params: OleVariant; var OwnerData: OleVariant); dispid 20000006;
  end;

// *********************************************************************//
// Interface: IBaseRDM
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {14B5DE08-803D-4058-868F-DFF54221F861}
// *********************************************************************//
  IBaseRDM = interface(IAppServer)
    ['{14B5DE08-803D-4058-868F-DFF54221F861}']
    function Get_dmSrvAppGSI: ISrvAppGSI; safecall;
    procedure Set_dmSrvAppGSI(const Value: ISrvAppGSI); safecall;
    function Get_SQLcnn: Integer; safecall;
    procedure Set_SQLcnn(Value: Integer); safecall;
    property dmSrvAppGSI: ISrvAppGSI read Get_dmSrvAppGSI write Set_dmSrvAppGSI;
    property SQLcnn: Integer read Get_SQLcnn write Set_SQLcnn;
  end;

// *********************************************************************//
// DispIntf:  IBaseRDMDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {14B5DE08-803D-4058-868F-DFF54221F861}
// *********************************************************************//
  IBaseRDMDisp = dispinterface
    ['{14B5DE08-803D-4058-868F-DFF54221F861}']
    property dmSrvAppGSI: ISrvAppGSI dispid 201;
    property SQLcnn: Integer dispid 301;
    function AS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: Integer; 
                             out ErrorCount: Integer; var OwnerData: OleVariant): OleVariant; dispid 20000000;
    function AS_GetRecords(const ProviderName: WideString; Count: Integer; out RecsOut: Integer; 
                           Options: Integer; const CommandText: WideString; var Params: OleVariant; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000001;
    function AS_DataRequest(const ProviderName: WideString; Data: OleVariant): OleVariant; dispid 20000002;
    function AS_GetProviderNames: OleVariant; dispid 20000003;
    function AS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant; dispid 20000004;
    function AS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: Integer; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000005;
    procedure AS_Execute(const ProviderName: WideString; const CommandText: WideString; 
                         var Params: OleVariant; var OwnerData: OleVariant); dispid 20000006;
  end;

// *********************************************************************//
// Interface: ISrvAppIT
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EF16E393-AE8B-416F-B20C-578E88D0AE0D}
// *********************************************************************//
  ISrvAppIT = interface(IBaseRDM)
    ['{EF16E393-AE8B-416F-B20C-578E88D0AE0D}']
    function ITaxaDiaria(const Data: WideString; const Campo: WideString): Currency; safecall;
    procedure ICalculoAdicao(DeclaracaoId: Integer; const Usuario: WideString); safecall;
    function ISQL_IT: OleVariant; safecall;
    function IResumoDI(DeclaracaoId: Integer; const Usuario: WideString): Integer; safecall;
    procedure IRecalculaListaPreco(const PartNumber: WideString); safecall;
  end;

// *********************************************************************//
// DispIntf:  ISrvAppITDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EF16E393-AE8B-416F-B20C-578E88D0AE0D}
// *********************************************************************//
  ISrvAppITDisp = dispinterface
    ['{EF16E393-AE8B-416F-B20C-578E88D0AE0D}']
    function ITaxaDiaria(const Data: WideString; const Campo: WideString): Currency; dispid 401;
    procedure ICalculoAdicao(DeclaracaoId: Integer; const Usuario: WideString); dispid 404;
    function ISQL_IT: OleVariant; dispid 406;
    function IResumoDI(DeclaracaoId: Integer; const Usuario: WideString): Integer; dispid 407;
    procedure IRecalculaListaPreco(const PartNumber: WideString); dispid 402;
    property dmSrvAppGSI: ISrvAppGSI dispid 201;
    property SQLcnn: Integer dispid 301;
    function AS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: Integer; 
                             out ErrorCount: Integer; var OwnerData: OleVariant): OleVariant; dispid 20000000;
    function AS_GetRecords(const ProviderName: WideString; Count: Integer; out RecsOut: Integer; 
                           Options: Integer; const CommandText: WideString; var Params: OleVariant; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000001;
    function AS_DataRequest(const ProviderName: WideString; Data: OleVariant): OleVariant; dispid 20000002;
    function AS_GetProviderNames: OleVariant; dispid 20000003;
    function AS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant; dispid 20000004;
    function AS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: Integer; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000005;
    procedure AS_Execute(const ProviderName: WideString; const CommandText: WideString; 
                         var Params: OleVariant; var OwnerData: OleVariant); dispid 20000006;
  end;

// *********************************************************************//
// Interface: ISrvAppRD
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A597B74D-D9F2-4FD2-9742-CC554A16CEA5}
// *********************************************************************//
  ISrvAppRD = interface(IBaseRDM)
    ['{A597B74D-D9F2-4FD2-9742-CC554A16CEA5}']
    function ISQL_RD: OleVariant; safecall;
    procedure IAtualizaSaldo(RdvId: Integer; const TipoMoeda: WideString); safecall;
    procedure IAtualizaSaldoHoras(HoraId: Integer); safecall;
    procedure IAtualizaDataFechamento(const DataMovimento: WideString; DataFechamento: TDateTime; 
                                      const RdvId: WideString; const TipoMoeda: WideString); safecall;
    procedure IAtualizaAdiantamento(AdiantamentoId: Integer); safecall;
    function ITransfEspelho(const RdvId: WideString; const Usuario: WideString; Todos: WordBool): Integer; safecall;
    procedure ITransfMovimento(const FuncionarioID: WideString; const AdiantamentoId: WideString; 
                               const DataMesAberto: WideString; const Usuario: WideString); safecall;
    function ITransfOFFLine(Data: OleVariant): OleVariant; safecall;
    procedure ITransfHoras(const FuncionarioID: WideString; const BancoHoraID: WideString; 
                           const UsuarioID: WideString); safecall;
    procedure ITransfLog(const RdvId: WideString; const DataMovimentoID: WideString; 
                         const ItemID: WideString); safecall;
    function ITransfOFFBancoHora(Data: OleVariant): OleVariant; safecall;
    function ITransfHoraTecnica(Data: OleVariant): OleVariant; safecall;
    function ITransfOSDefeito(Data: OleVariant): OleVariant; safecall;
    function IValidSaldoHoras(const FuncionarioID: WideString; const BancoHoraID: WideString; 
                              MinutosAdicionais: Single): WordBool; safecall;
    function IValidLimiteLancHoras(Data: TDateTime; Tipo: Integer): WordBool; safecall;
    function ITransfOS(const OSID: WideString; Data: OleVariant; DataOSHoras: OleVariant; 
                       DataOSDefeito: OleVariant; DataOSMaterial: OleVariant; 
                       DataOSOCOperacional: OleVariant; DataRDV: OleVariant; 
                       DataBancoHora: OleVariant): OleVariant; safecall;
  end;

// *********************************************************************//
// DispIntf:  ISrvAppRDDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A597B74D-D9F2-4FD2-9742-CC554A16CEA5}
// *********************************************************************//
  ISrvAppRDDisp = dispinterface
    ['{A597B74D-D9F2-4FD2-9742-CC554A16CEA5}']
    function ISQL_RD: OleVariant; dispid 401;
    procedure IAtualizaSaldo(RdvId: Integer; const TipoMoeda: WideString); dispid 402;
    procedure IAtualizaSaldoHoras(HoraId: Integer); dispid 403;
    procedure IAtualizaDataFechamento(const DataMovimento: WideString; DataFechamento: TDateTime; 
                                      const RdvId: WideString; const TipoMoeda: WideString); dispid 404;
    procedure IAtualizaAdiantamento(AdiantamentoId: Integer); dispid 406;
    function ITransfEspelho(const RdvId: WideString; const Usuario: WideString; Todos: WordBool): Integer; dispid 407;
    procedure ITransfMovimento(const FuncionarioID: WideString; const AdiantamentoId: WideString; 
                               const DataMesAberto: WideString; const Usuario: WideString); dispid 405;
    function ITransfOFFLine(Data: OleVariant): OleVariant; dispid 408;
    procedure ITransfHoras(const FuncionarioID: WideString; const BancoHoraID: WideString; 
                           const UsuarioID: WideString); dispid 409;
    procedure ITransfLog(const RdvId: WideString; const DataMovimentoID: WideString; 
                         const ItemID: WideString); dispid 410;
    function ITransfOFFBancoHora(Data: OleVariant): OleVariant; dispid 412;
    function ITransfHoraTecnica(Data: OleVariant): OleVariant; dispid 411;
    function ITransfOSDefeito(Data: OleVariant): OleVariant; dispid 413;
    function IValidSaldoHoras(const FuncionarioID: WideString; const BancoHoraID: WideString; 
                              MinutosAdicionais: Single): WordBool; dispid 414;
    function IValidLimiteLancHoras(Data: TDateTime; Tipo: Integer): WordBool; dispid 415;
    function ITransfOS(const OSID: WideString; Data: OleVariant; DataOSHoras: OleVariant; 
                       DataOSDefeito: OleVariant; DataOSMaterial: OleVariant; 
                       DataOSOCOperacional: OleVariant; DataRDV: OleVariant; 
                       DataBancoHora: OleVariant): OleVariant; dispid 416;
    property dmSrvAppGSI: ISrvAppGSI dispid 201;
    property SQLcnn: Integer dispid 301;
    function AS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: Integer; 
                             out ErrorCount: Integer; var OwnerData: OleVariant): OleVariant; dispid 20000000;
    function AS_GetRecords(const ProviderName: WideString; Count: Integer; out RecsOut: Integer; 
                           Options: Integer; const CommandText: WideString; var Params: OleVariant; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000001;
    function AS_DataRequest(const ProviderName: WideString; Data: OleVariant): OleVariant; dispid 20000002;
    function AS_GetProviderNames: OleVariant; dispid 20000003;
    function AS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant; dispid 20000004;
    function AS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: Integer; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000005;
    procedure AS_Execute(const ProviderName: WideString; const CommandText: WideString; 
                         var Params: OleVariant; var OwnerData: OleVariant); dispid 20000006;
  end;

// *********************************************************************//
// Interface: ISrvAppOS
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BB476160-486D-4E0C-A98D-4C5729669CD3}
// *********************************************************************//
  ISrvAppOS = interface(IBaseRDM)
    ['{BB476160-486D-4E0C-A98D-4C5729669CD3}']
    function ISQL_OS: OleVariant; safecall;
    procedure IAtualizaTubo(const Serie: WideString; const Modelo: WideString; 
                            const SerieTubo: WideString; const ModeloTubo: WideString; 
                            ClienteId: Integer; const Data: WideString; Cortes: Double); safecall;
    procedure IAtualizaUltimaOS(const FilialID: WideString); safecall;
    procedure IApagaDespesas(const OSID: WideString; TecnicoId: Integer; OperacaoID: Integer; 
                             VlrDespesa: Single; DataDoc: TDateTime); safecall;
    procedure IAtualizaContrato(const SerieId: WideString; const ModeloId: WideString; 
                                const TipoContrato: WideString; const Operacao: WideString; 
                                EmpresaId: Integer); safecall;
    procedure IApagarPecaOS(const EmpresaId: WideString; const ProdutoID: WideString; 
                            const EstoqueUtilizado: WideString; Quantidade: Integer); safecall;
    procedure IAtualPecaOS(const EmpresaId: WideString; const ProdutoID: WideString; 
                           const EstoqueUtilizado: WideString; Quantidade: Integer); safecall;
    procedure IFecharOS(const OSID: WideString); safecall;
    function IOSSincronismo(const OSID: WideString; const UsuarioOFFLine: WideString): OleVariant; safecall;
    procedure IOSSincronismoOK(const OSID: WideString; const UsuarioOFFLine: WideString); safecall;
    procedure ITotalOS(const OSID: WideString); safecall;
  end;

// *********************************************************************//
// DispIntf:  ISrvAppOSDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BB476160-486D-4E0C-A98D-4C5729669CD3}
// *********************************************************************//
  ISrvAppOSDisp = dispinterface
    ['{BB476160-486D-4E0C-A98D-4C5729669CD3}']
    function ISQL_OS: OleVariant; dispid 401;
    procedure IAtualizaTubo(const Serie: WideString; const Modelo: WideString; 
                            const SerieTubo: WideString; const ModeloTubo: WideString; 
                            ClienteId: Integer; const Data: WideString; Cortes: Double); dispid 402;
    procedure IAtualizaUltimaOS(const FilialID: WideString); dispid 403;
    procedure IApagaDespesas(const OSID: WideString; TecnicoId: Integer; OperacaoID: Integer; 
                             VlrDespesa: Single; DataDoc: TDateTime); dispid 404;
    procedure IAtualizaContrato(const SerieId: WideString; const ModeloId: WideString; 
                                const TipoContrato: WideString; const Operacao: WideString; 
                                EmpresaId: Integer); dispid 406;
    procedure IApagarPecaOS(const EmpresaId: WideString; const ProdutoID: WideString; 
                            const EstoqueUtilizado: WideString; Quantidade: Integer); dispid 407;
    procedure IAtualPecaOS(const EmpresaId: WideString; const ProdutoID: WideString; 
                           const EstoqueUtilizado: WideString; Quantidade: Integer); dispid 405;
    procedure IFecharOS(const OSID: WideString); dispid 408;
    function IOSSincronismo(const OSID: WideString; const UsuarioOFFLine: WideString): OleVariant; dispid 409;
    procedure IOSSincronismoOK(const OSID: WideString; const UsuarioOFFLine: WideString); dispid 411;
    procedure ITotalOS(const OSID: WideString); dispid 410;
    property dmSrvAppGSI: ISrvAppGSI dispid 201;
    property SQLcnn: Integer dispid 301;
    function AS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: Integer; 
                             out ErrorCount: Integer; var OwnerData: OleVariant): OleVariant; dispid 20000000;
    function AS_GetRecords(const ProviderName: WideString; Count: Integer; out RecsOut: Integer; 
                           Options: Integer; const CommandText: WideString; var Params: OleVariant; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000001;
    function AS_DataRequest(const ProviderName: WideString; Data: OleVariant): OleVariant; dispid 20000002;
    function AS_GetProviderNames: OleVariant; dispid 20000003;
    function AS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant; dispid 20000004;
    function AS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: Integer; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000005;
    procedure AS_Execute(const ProviderName: WideString; const CommandText: WideString; 
                         var Params: OleVariant; var OwnerData: OleVariant); dispid 20000006;
  end;

// *********************************************************************//
// Interface: ISrvAppEF
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0912CB1C-413A-4B86-9783-6B526D1005E9}
// *********************************************************************//
  ISrvAppEF = interface(IBaseRDM)
    ['{0912CB1C-413A-4B86-9783-6B526D1005E9}']
    function ISQL_EF: OleVariant; safecall;
    procedure IAtualSaldoPDE(const EmpresaId: WideString; const ProdutoID: WideString; 
                             QtdAntiga: Currency; QtdNova: Currency); safecall;
    function IAliquotaImposto(const ImpostoID: WideString): Currency; safecall;
    function IAliquotaICMS(const TipoMovimento: WideString; EmpresaId: Integer; 
                           const UfID: WideString; Contribuinte: Integer): Currency; safecall;
    procedure ICancSaldoPDE(const EmpresaId: WideString; const PdeID: WideString; 
                            const NFSID: WideString; const DataEmissaoNFSID: WideString; 
                            const OSID: WideString; const NaturezaOPID: WideString; 
                            const ItemID: WideString; const ProdutoID: WideString; 
                            Quantidade: Currency); safecall;
    procedure ITotalPDE(const EmpresaId: WideString; const PdeID: WideString); safecall;
    procedure ITotalPDS(const EmpresaId: WideString; const PdsID: WideString; 
                        const NaturezaOp: WideString); safecall;
    procedure IAtualSaldoPDS(const EmpresaId: WideString; const NaturezaOPID: WideString; 
                             const ProdutoID: WideString; QtdNova: Currency; 
                             const EstoqueUtilizado: WideString); safecall;
    procedure ICancSaldoPDS(const EmpresaId: WideString; const NFEID: WideString; 
                            const DataEmissaoNFEID: WideString; const OSID: WideString; 
                            const NaturezaOPID: WideString; const ProdutoID: WideString; 
                            const EstoqueUtilizado: WideString; const EmpenhoItemID: WideString; 
                            Quantidade: Currency); safecall;
    function IEmissaoNFE(PdeData: OleVariant; PdeItemData: OleVariant; PdeItemDataBar: OleVariant; 
                         const DataEmissao: WideString; const DataEntrada: WideString; 
                         RecebimentoEntrada: WordBool; const Usuario: WideString; 
                         DocInterno: WordBool): WideString; safecall;
    function IEmissaoNFS(PdsData: OleVariant; PdsItemData: OleVariant; 
                         const DataEmissao: WideString; const Usuario: WideString; 
                         DocInterno: WordBool): WideString; safecall;
    procedure IDeletarPDE(const EmpresaId: WideString; const PdeID: WideString); safecall;
    procedure IRecebimentoEntrada(PdeData: OleVariant; PdeItemData: OleVariant; 
                                  PdeItemDataBar: OleVariant; const DataEmissao: WideString; 
                                  const DataEntrada: WideString; const Usuario: WideString); safecall;
    procedure IRecebimentoImportacao(DeclaracaoData: OleVariant; MercadoriaData: OleVariant; 
                                     const DataEntradaNFEID: WideString; const Usuario: WideString); safecall;
    function IAtualNovoCustoKdxTransf: OleVariant; safecall;
    procedure IReprocessarKardex(const EmpresaId: WideString; const ProdutoID: WideString; 
                                 Tabela: Integer; Posicao: Integer); safecall;
    procedure IDesmembCusto(const EmpresaId: WideString; const ProdutoID: WideString; 
                            const ProdutoRecepID: WideString; QtdDesmemb: Single; 
                            VlrDesmemb: Single; const UsuarioID: WideString); safecall;
    procedure ICancelarNota(const EmpresaId: WideString; const NfId: WideString; 
                            const DataEmissaoId: WideString; const TipoNota: WideString); safecall;
  end;

// *********************************************************************//
// DispIntf:  ISrvAppEFDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0912CB1C-413A-4B86-9783-6B526D1005E9}
// *********************************************************************//
  ISrvAppEFDisp = dispinterface
    ['{0912CB1C-413A-4B86-9783-6B526D1005E9}']
    function ISQL_EF: OleVariant; dispid 401;
    procedure IAtualSaldoPDE(const EmpresaId: WideString; const ProdutoID: WideString; 
                             QtdAntiga: Currency; QtdNova: Currency); dispid 402;
    function IAliquotaImposto(const ImpostoID: WideString): Currency; dispid 403;
    function IAliquotaICMS(const TipoMovimento: WideString; EmpresaId: Integer; 
                           const UfID: WideString; Contribuinte: Integer): Currency; dispid 404;
    procedure ICancSaldoPDE(const EmpresaId: WideString; const PdeID: WideString; 
                            const NFSID: WideString; const DataEmissaoNFSID: WideString; 
                            const OSID: WideString; const NaturezaOPID: WideString; 
                            const ItemID: WideString; const ProdutoID: WideString; 
                            Quantidade: Currency); dispid 406;
    procedure ITotalPDE(const EmpresaId: WideString; const PdeID: WideString); dispid 405;
    procedure ITotalPDS(const EmpresaId: WideString; const PdsID: WideString; 
                        const NaturezaOp: WideString); dispid 407;
    procedure IAtualSaldoPDS(const EmpresaId: WideString; const NaturezaOPID: WideString; 
                             const ProdutoID: WideString; QtdNova: Currency; 
                             const EstoqueUtilizado: WideString); dispid 408;
    procedure ICancSaldoPDS(const EmpresaId: WideString; const NFEID: WideString; 
                            const DataEmissaoNFEID: WideString; const OSID: WideString; 
                            const NaturezaOPID: WideString; const ProdutoID: WideString; 
                            const EstoqueUtilizado: WideString; const EmpenhoItemID: WideString; 
                            Quantidade: Currency); dispid 409;
    function IEmissaoNFE(PdeData: OleVariant; PdeItemData: OleVariant; PdeItemDataBar: OleVariant; 
                         const DataEmissao: WideString; const DataEntrada: WideString; 
                         RecebimentoEntrada: WordBool; const Usuario: WideString; 
                         DocInterno: WordBool): WideString; dispid 410;
    function IEmissaoNFS(PdsData: OleVariant; PdsItemData: OleVariant; 
                         const DataEmissao: WideString; const Usuario: WideString; 
                         DocInterno: WordBool): WideString; dispid 411;
    procedure IDeletarPDE(const EmpresaId: WideString; const PdeID: WideString); dispid 412;
    procedure IRecebimentoEntrada(PdeData: OleVariant; PdeItemData: OleVariant; 
                                  PdeItemDataBar: OleVariant; const DataEmissao: WideString; 
                                  const DataEntrada: WideString; const Usuario: WideString); dispid 413;
    procedure IRecebimentoImportacao(DeclaracaoData: OleVariant; MercadoriaData: OleVariant; 
                                     const DataEntradaNFEID: WideString; const Usuario: WideString); dispid 414;
    function IAtualNovoCustoKdxTransf: OleVariant; dispid 415;
    procedure IReprocessarKardex(const EmpresaId: WideString; const ProdutoID: WideString; 
                                 Tabela: Integer; Posicao: Integer); dispid 416;
    procedure IDesmembCusto(const EmpresaId: WideString; const ProdutoID: WideString; 
                            const ProdutoRecepID: WideString; QtdDesmemb: Single; 
                            VlrDesmemb: Single; const UsuarioID: WideString); dispid 417;
    procedure ICancelarNota(const EmpresaId: WideString; const NfId: WideString; 
                            const DataEmissaoId: WideString; const TipoNota: WideString); dispid 418;
    property dmSrvAppGSI: ISrvAppGSI dispid 201;
    property SQLcnn: Integer dispid 301;
    function AS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: Integer; 
                             out ErrorCount: Integer; var OwnerData: OleVariant): OleVariant; dispid 20000000;
    function AS_GetRecords(const ProviderName: WideString; Count: Integer; out RecsOut: Integer; 
                           Options: Integer; const CommandText: WideString; var Params: OleVariant; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000001;
    function AS_DataRequest(const ProviderName: WideString; Data: OleVariant): OleVariant; dispid 20000002;
    function AS_GetProviderNames: OleVariant; dispid 20000003;
    function AS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant; dispid 20000004;
    function AS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: Integer; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000005;
    procedure AS_Execute(const ProviderName: WideString; const CommandText: WideString; 
                         var Params: OleVariant; var OwnerData: OleVariant); dispid 20000006;
  end;

// *********************************************************************//
// Interface: ISrvAppAS
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DE588F5B-40FE-45FA-B44E-8B263C2CFBF9}
// *********************************************************************//
  ISrvAppAS = interface(IBaseRDM)
    ['{DE588F5B-40FE-45FA-B44E-8B263C2CFBF9}']
    function ISQL_AS: OleVariant; safecall;
  end;

// *********************************************************************//
// DispIntf:  ISrvAppASDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DE588F5B-40FE-45FA-B44E-8B263C2CFBF9}
// *********************************************************************//
  ISrvAppASDisp = dispinterface
    ['{DE588F5B-40FE-45FA-B44E-8B263C2CFBF9}']
    function ISQL_AS: OleVariant; dispid 401;
    property dmSrvAppGSI: ISrvAppGSI dispid 201;
    property SQLcnn: Integer dispid 301;
    function AS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: Integer; 
                             out ErrorCount: Integer; var OwnerData: OleVariant): OleVariant; dispid 20000000;
    function AS_GetRecords(const ProviderName: WideString; Count: Integer; out RecsOut: Integer; 
                           Options: Integer; const CommandText: WideString; var Params: OleVariant; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000001;
    function AS_DataRequest(const ProviderName: WideString; Data: OleVariant): OleVariant; dispid 20000002;
    function AS_GetProviderNames: OleVariant; dispid 20000003;
    function AS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant; dispid 20000004;
    function AS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: Integer; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000005;
    procedure AS_Execute(const ProviderName: WideString; const CommandText: WideString; 
                         var Params: OleVariant; var OwnerData: OleVariant); dispid 20000006;
  end;

// *********************************************************************//
// Interface: ISrvAppCP
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7BA6360A-B64F-49B4-9FB2-22101D4D9DE1}
// *********************************************************************//
  ISrvAppCP = interface(IBaseRDM)
    ['{7BA6360A-B64F-49B4-9FB2-22101D4D9DE1}']
    function ISQL_CP: OleVariant; safecall;
  end;

// *********************************************************************//
// DispIntf:  ISrvAppCPDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7BA6360A-B64F-49B4-9FB2-22101D4D9DE1}
// *********************************************************************//
  ISrvAppCPDisp = dispinterface
    ['{7BA6360A-B64F-49B4-9FB2-22101D4D9DE1}']
    function ISQL_CP: OleVariant; dispid 401;
    property dmSrvAppGSI: ISrvAppGSI dispid 201;
    property SQLcnn: Integer dispid 301;
    function AS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: Integer; 
                             out ErrorCount: Integer; var OwnerData: OleVariant): OleVariant; dispid 20000000;
    function AS_GetRecords(const ProviderName: WideString; Count: Integer; out RecsOut: Integer; 
                           Options: Integer; const CommandText: WideString; var Params: OleVariant; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000001;
    function AS_DataRequest(const ProviderName: WideString; Data: OleVariant): OleVariant; dispid 20000002;
    function AS_GetProviderNames: OleVariant; dispid 20000003;
    function AS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant; dispid 20000004;
    function AS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: Integer; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000005;
    procedure AS_Execute(const ProviderName: WideString; const CommandText: WideString; 
                         var Params: OleVariant; var OwnerData: OleVariant); dispid 20000006;
  end;

// *********************************************************************//
// Interface: ISrvAppPP
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {739C8F15-2CBB-4C7E-9562-0B9EFBFEB7B0}
// *********************************************************************//
  ISrvAppPP = interface(IBaseRDM)
    ['{739C8F15-2CBB-4C7E-9562-0B9EFBFEB7B0}']
    function ISQL_PP: OleVariant; safecall;
    procedure ICalcPrecoEquipamento(const Value: WideString); safecall;
    procedure IAnaliseVenda(const UsuarioID: WideString; const DtInicial: WideString; 
                            const DtFinal: WideString); safecall;
    procedure IBaixaDuplicata(const PedVendID: WideString; const DataPgto: WideString; 
                              const ParcelaID: WideString; const VlrParcelaComissao: WideString; 
                              PagtoVendedor: Integer; const UsuarioID: WideString); safecall;
    procedure ICancelarBaixaDuplicata(const PedVendID: WideString; const ParcelaID: WideString; 
                                      PagtoVendedor: Integer); safecall;
    procedure IReparcelarDuplicata(DuplData: OleVariant; const EmpresaId: WideString; 
                                   const NFSID: WideString; const DataEmissaoId: WideString; 
                                   const ParcelaID: WideString; VlrParcela: Currency; 
                                   VlrVenda: Currency; VlrComissao: Currency; 
                                   const UsuarioID: WideString); safecall;
    procedure ICancelarParcelaDuplicata(const PedVendID: WideString; const ParcelaID: WideString; 
                                        const DescricaoCanc: WideString); safecall;
    procedure IAtualSaldoReserva(const EmpresaId: WideString; const ProdutoID: WideString; 
                                 Qtd: Currency; const Operacao: WideString); safecall;
    procedure IPagtoComissao(const DataIni: WideString; const DataFim: WideString; 
                             const DataPagto: WideString; const DataConvFob: WideString; 
                             const UsuarioAtivo: WideString); safecall;
    function IProvisaoComissao(DtPagtoIni: TDateTime; DtPagtoFim: TDateTime; 
                               VlrTxConvFOB: Currency; PercEncargos: Currency): OleVariant; safecall;
  end;

// *********************************************************************//
// DispIntf:  ISrvAppPPDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {739C8F15-2CBB-4C7E-9562-0B9EFBFEB7B0}
// *********************************************************************//
  ISrvAppPPDisp = dispinterface
    ['{739C8F15-2CBB-4C7E-9562-0B9EFBFEB7B0}']
    function ISQL_PP: OleVariant; dispid 401;
    procedure ICalcPrecoEquipamento(const Value: WideString); dispid 402;
    procedure IAnaliseVenda(const UsuarioID: WideString; const DtInicial: WideString; 
                            const DtFinal: WideString); dispid 403;
    procedure IBaixaDuplicata(const PedVendID: WideString; const DataPgto: WideString; 
                              const ParcelaID: WideString; const VlrParcelaComissao: WideString; 
                              PagtoVendedor: Integer; const UsuarioID: WideString); dispid 404;
    procedure ICancelarBaixaDuplicata(const PedVendID: WideString; const ParcelaID: WideString; 
                                      PagtoVendedor: Integer); dispid 405;
    procedure IReparcelarDuplicata(DuplData: OleVariant; const EmpresaId: WideString; 
                                   const NFSID: WideString; const DataEmissaoId: WideString; 
                                   const ParcelaID: WideString; VlrParcela: Currency; 
                                   VlrVenda: Currency; VlrComissao: Currency; 
                                   const UsuarioID: WideString); dispid 407;
    procedure ICancelarParcelaDuplicata(const PedVendID: WideString; const ParcelaID: WideString; 
                                        const DescricaoCanc: WideString); dispid 406;
    procedure IAtualSaldoReserva(const EmpresaId: WideString; const ProdutoID: WideString; 
                                 Qtd: Currency; const Operacao: WideString); dispid 409;
    procedure IPagtoComissao(const DataIni: WideString; const DataFim: WideString; 
                             const DataPagto: WideString; const DataConvFob: WideString; 
                             const UsuarioAtivo: WideString); dispid 410;
    function IProvisaoComissao(DtPagtoIni: TDateTime; DtPagtoFim: TDateTime; 
                               VlrTxConvFOB: Currency; PercEncargos: Currency): OleVariant; dispid 408;
    property dmSrvAppGSI: ISrvAppGSI dispid 201;
    property SQLcnn: Integer dispid 301;
    function AS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: Integer; 
                             out ErrorCount: Integer; var OwnerData: OleVariant): OleVariant; dispid 20000000;
    function AS_GetRecords(const ProviderName: WideString; Count: Integer; out RecsOut: Integer; 
                           Options: Integer; const CommandText: WideString; var Params: OleVariant; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000001;
    function AS_DataRequest(const ProviderName: WideString; Data: OleVariant): OleVariant; dispid 20000002;
    function AS_GetProviderNames: OleVariant; dispid 20000003;
    function AS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant; dispid 20000004;
    function AS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: Integer; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000005;
    procedure AS_Execute(const ProviderName: WideString; const CommandText: WideString; 
                         var Params: OleVariant; var OwnerData: OleVariant); dispid 20000006;
  end;

// *********************************************************************//
// Interface: ISrvAppCM
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EF4959DB-121F-41F3-9B6E-25DC5F7CE9DD}
// *********************************************************************//
  ISrvAppCM = interface(IBaseRDM)
    ['{EF4959DB-121F-41F3-9B6E-25DC5F7CE9DD}']
    function ISQL_CM: OleVariant; safecall;
    procedure IVerifParcEmitidas; safecall;
  end;

// *********************************************************************//
// DispIntf:  ISrvAppCMDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EF4959DB-121F-41F3-9B6E-25DC5F7CE9DD}
// *********************************************************************//
  ISrvAppCMDisp = dispinterface
    ['{EF4959DB-121F-41F3-9B6E-25DC5F7CE9DD}']
    function ISQL_CM: OleVariant; dispid 401;
    procedure IVerifParcEmitidas; dispid 402;
    property dmSrvAppGSI: ISrvAppGSI dispid 201;
    property SQLcnn: Integer dispid 301;
    function AS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: Integer; 
                             out ErrorCount: Integer; var OwnerData: OleVariant): OleVariant; dispid 20000000;
    function AS_GetRecords(const ProviderName: WideString; Count: Integer; out RecsOut: Integer; 
                           Options: Integer; const CommandText: WideString; var Params: OleVariant; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000001;
    function AS_DataRequest(const ProviderName: WideString; Data: OleVariant): OleVariant; dispid 20000002;
    function AS_GetProviderNames: OleVariant; dispid 20000003;
    function AS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant; dispid 20000004;
    function AS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: Integer; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000005;
    procedure AS_Execute(const ProviderName: WideString; const CommandText: WideString; 
                         var Params: OleVariant; var OwnerData: OleVariant); dispid 20000006;
  end;

// *********************************************************************//
// Interface: ISrvAppRS
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D974624F-2D67-4417-A229-59D5F4A91482}
// *********************************************************************//
  ISrvAppRS = interface(IBaseRDM)
    ['{D974624F-2D67-4417-A229-59D5F4A91482}']
    function ISQL_RS: OleVariant; safecall;
  end;

// *********************************************************************//
// DispIntf:  ISrvAppRSDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D974624F-2D67-4417-A229-59D5F4A91482}
// *********************************************************************//
  ISrvAppRSDisp = dispinterface
    ['{D974624F-2D67-4417-A229-59D5F4A91482}']
    function ISQL_RS: OleVariant; dispid 401;
    property dmSrvAppGSI: ISrvAppGSI dispid 201;
    property SQLcnn: Integer dispid 301;
    function AS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: Integer; 
                             out ErrorCount: Integer; var OwnerData: OleVariant): OleVariant; dispid 20000000;
    function AS_GetRecords(const ProviderName: WideString; Count: Integer; out RecsOut: Integer; 
                           Options: Integer; const CommandText: WideString; var Params: OleVariant; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000001;
    function AS_DataRequest(const ProviderName: WideString; Data: OleVariant): OleVariant; dispid 20000002;
    function AS_GetProviderNames: OleVariant; dispid 20000003;
    function AS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant; dispid 20000004;
    function AS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: Integer; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000005;
    procedure AS_Execute(const ProviderName: WideString; const CommandText: WideString; 
                         var Params: OleVariant; var OwnerData: OleVariant); dispid 20000006;
  end;

// *********************************************************************//
// Interface: ISrvAppFC
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D417C2CE-9481-4D4C-A535-032D3B777AAC}
// *********************************************************************//
  ISrvAppFC = interface(IBaseRDM)
    ['{D417C2CE-9481-4D4C-A535-032D3B777AAC}']
    function ISQL_FC: OleVariant; safecall;
  end;

// *********************************************************************//
// DispIntf:  ISrvAppFCDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D417C2CE-9481-4D4C-A535-032D3B777AAC}
// *********************************************************************//
  ISrvAppFCDisp = dispinterface
    ['{D417C2CE-9481-4D4C-A535-032D3B777AAC}']
    function ISQL_FC: OleVariant; dispid 401;
    property dmSrvAppGSI: ISrvAppGSI dispid 201;
    property SQLcnn: Integer dispid 301;
    function AS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: Integer; 
                             out ErrorCount: Integer; var OwnerData: OleVariant): OleVariant; dispid 20000000;
    function AS_GetRecords(const ProviderName: WideString; Count: Integer; out RecsOut: Integer; 
                           Options: Integer; const CommandText: WideString; var Params: OleVariant; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000001;
    function AS_DataRequest(const ProviderName: WideString; Data: OleVariant): OleVariant; dispid 20000002;
    function AS_GetProviderNames: OleVariant; dispid 20000003;
    function AS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant; dispid 20000004;
    function AS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: Integer; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000005;
    procedure AS_Execute(const ProviderName: WideString; const CommandText: WideString; 
                         var Params: OleVariant; var OwnerData: OleVariant); dispid 20000006;
  end;

// *********************************************************************//
// Interface: ISrvAppGR
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0C8566F6-3A7D-4452-B8C6-5BC584480F34}
// *********************************************************************//
  ISrvAppGR = interface(IBaseRDM)
    ['{0C8566F6-3A7D-4452-B8C6-5BC584480F34}']
    function ISQL_GR: OleVariant; safecall;
  end;

// *********************************************************************//
// DispIntf:  ISrvAppGRDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0C8566F6-3A7D-4452-B8C6-5BC584480F34}
// *********************************************************************//
  ISrvAppGRDisp = dispinterface
    ['{0C8566F6-3A7D-4452-B8C6-5BC584480F34}']
    function ISQL_GR: OleVariant; dispid 401;
    property dmSrvAppGSI: ISrvAppGSI dispid 201;
    property SQLcnn: Integer dispid 301;
    function AS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: Integer; 
                             out ErrorCount: Integer; var OwnerData: OleVariant): OleVariant; dispid 20000000;
    function AS_GetRecords(const ProviderName: WideString; Count: Integer; out RecsOut: Integer; 
                           Options: Integer; const CommandText: WideString; var Params: OleVariant; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000001;
    function AS_DataRequest(const ProviderName: WideString; Data: OleVariant): OleVariant; dispid 20000002;
    function AS_GetProviderNames: OleVariant; dispid 20000003;
    function AS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant; dispid 20000004;
    function AS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: Integer; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000005;
    procedure AS_Execute(const ProviderName: WideString; const CommandText: WideString; 
                         var Params: OleVariant; var OwnerData: OleVariant); dispid 20000006;
  end;

// *********************************************************************//
// Interface: IsrvAppFI
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FA706EF4-3D52-43A2-AE23-CC2D7597F697}
// *********************************************************************//
  IsrvAppFI = interface(IBaseRDM)
    ['{FA706EF4-3D52-43A2-AE23-CC2D7597F697}']
    function ISQL_FI: OleVariant; safecall;
  end;

// *********************************************************************//
// DispIntf:  IsrvAppFIDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FA706EF4-3D52-43A2-AE23-CC2D7597F697}
// *********************************************************************//
  IsrvAppFIDisp = dispinterface
    ['{FA706EF4-3D52-43A2-AE23-CC2D7597F697}']
    function ISQL_FI: OleVariant; dispid 401;
    property dmSrvAppGSI: ISrvAppGSI dispid 201;
    property SQLcnn: Integer dispid 301;
    function AS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: Integer; 
                             out ErrorCount: Integer; var OwnerData: OleVariant): OleVariant; dispid 20000000;
    function AS_GetRecords(const ProviderName: WideString; Count: Integer; out RecsOut: Integer; 
                           Options: Integer; const CommandText: WideString; var Params: OleVariant; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000001;
    function AS_DataRequest(const ProviderName: WideString; Data: OleVariant): OleVariant; dispid 20000002;
    function AS_GetProviderNames: OleVariant; dispid 20000003;
    function AS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant; dispid 20000004;
    function AS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: Integer; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000005;
    procedure AS_Execute(const ProviderName: WideString; const CommandText: WideString; 
                         var Params: OleVariant; var OwnerData: OleVariant); dispid 20000006;
  end;

// *********************************************************************//
// The Class CoSrvAppGSI provides a Create and CreateRemote method to          
// create instances of the default interface ISrvAppGSI exposed by              
// the CoClass SrvAppGSI. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSrvAppGSI = class
    class function Create: ISrvAppGSI;
    class function CreateRemote(const MachineName: string): ISrvAppGSI;
  end;

// *********************************************************************//
// The Class CoSrvAppIT provides a Create and CreateRemote method to          
// create instances of the default interface ISrvAppIT exposed by              
// the CoClass SrvAppIT. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSrvAppIT = class
    class function Create: ISrvAppIT;
    class function CreateRemote(const MachineName: string): ISrvAppIT;
  end;

// *********************************************************************//
// The Class CoSrvAppRD provides a Create and CreateRemote method to          
// create instances of the default interface ISrvAppRD exposed by              
// the CoClass SrvAppRD. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSrvAppRD = class
    class function Create: ISrvAppRD;
    class function CreateRemote(const MachineName: string): ISrvAppRD;
  end;

// *********************************************************************//
// The Class CoSrvAppOS provides a Create and CreateRemote method to          
// create instances of the default interface ISrvAppOS exposed by              
// the CoClass SrvAppOS. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSrvAppOS = class
    class function Create: ISrvAppOS;
    class function CreateRemote(const MachineName: string): ISrvAppOS;
  end;

// *********************************************************************//
// The Class CoSrvAppEF provides a Create and CreateRemote method to          
// create instances of the default interface ISrvAppEF exposed by              
// the CoClass SrvAppEF. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSrvAppEF = class
    class function Create: ISrvAppEF;
    class function CreateRemote(const MachineName: string): ISrvAppEF;
  end;

// *********************************************************************//
// The Class CoSrvAppAS provides a Create and CreateRemote method to          
// create instances of the default interface ISrvAppAS exposed by              
// the CoClass SrvAppAS. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSrvAppAS = class
    class function Create: ISrvAppAS;
    class function CreateRemote(const MachineName: string): ISrvAppAS;
  end;

// *********************************************************************//
// The Class CoSrvAppCP provides a Create and CreateRemote method to          
// create instances of the default interface ISrvAppCP exposed by              
// the CoClass SrvAppCP. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSrvAppCP = class
    class function Create: ISrvAppCP;
    class function CreateRemote(const MachineName: string): ISrvAppCP;
  end;

// *********************************************************************//
// The Class CoSrvAppPP provides a Create and CreateRemote method to          
// create instances of the default interface ISrvAppPP exposed by              
// the CoClass SrvAppPP. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSrvAppPP = class
    class function Create: ISrvAppPP;
    class function CreateRemote(const MachineName: string): ISrvAppPP;
  end;

// *********************************************************************//
// The Class CoSrvAppCM provides a Create and CreateRemote method to          
// create instances of the default interface ISrvAppCM exposed by              
// the CoClass SrvAppCM. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSrvAppCM = class
    class function Create: ISrvAppCM;
    class function CreateRemote(const MachineName: string): ISrvAppCM;
  end;

// *********************************************************************//
// The Class CoSrvAppRS provides a Create and CreateRemote method to          
// create instances of the default interface ISrvAppRS exposed by              
// the CoClass SrvAppRS. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSrvAppRS = class
    class function Create: ISrvAppRS;
    class function CreateRemote(const MachineName: string): ISrvAppRS;
  end;

// *********************************************************************//
// The Class CoSrvAppFC provides a Create and CreateRemote method to          
// create instances of the default interface ISrvAppFC exposed by              
// the CoClass SrvAppFC. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSrvAppFC = class
    class function Create: ISrvAppFC;
    class function CreateRemote(const MachineName: string): ISrvAppFC;
  end;

// *********************************************************************//
// The Class CoSrvAppGR provides a Create and CreateRemote method to          
// create instances of the default interface ISrvAppGR exposed by              
// the CoClass SrvAppGR. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSrvAppGR = class
    class function Create: ISrvAppGR;
    class function CreateRemote(const MachineName: string): ISrvAppGR;
  end;

// *********************************************************************//
// The Class CosrvAppFI provides a Create and CreateRemote method to          
// create instances of the default interface IsrvAppFI exposed by              
// the CoClass srvAppFI. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CosrvAppFI = class
    class function Create: IsrvAppFI;
    class function CreateRemote(const MachineName: string): IsrvAppFI;
  end;

implementation

uses ComObj;

class function CoSrvAppGSI.Create: ISrvAppGSI;
begin
  Result := CreateComObject(CLASS_SrvAppGSI) as ISrvAppGSI;
end;

class function CoSrvAppGSI.CreateRemote(const MachineName: string): ISrvAppGSI;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SrvAppGSI) as ISrvAppGSI;
end;

class function CoSrvAppIT.Create: ISrvAppIT;
begin
  Result := CreateComObject(CLASS_SrvAppIT) as ISrvAppIT;
end;

class function CoSrvAppIT.CreateRemote(const MachineName: string): ISrvAppIT;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SrvAppIT) as ISrvAppIT;
end;

class function CoSrvAppRD.Create: ISrvAppRD;
begin
  Result := CreateComObject(CLASS_SrvAppRD) as ISrvAppRD;
end;

class function CoSrvAppRD.CreateRemote(const MachineName: string): ISrvAppRD;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SrvAppRD) as ISrvAppRD;
end;

class function CoSrvAppOS.Create: ISrvAppOS;
begin
  Result := CreateComObject(CLASS_SrvAppOS) as ISrvAppOS;
end;

class function CoSrvAppOS.CreateRemote(const MachineName: string): ISrvAppOS;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SrvAppOS) as ISrvAppOS;
end;

class function CoSrvAppEF.Create: ISrvAppEF;
begin
  Result := CreateComObject(CLASS_SrvAppEF) as ISrvAppEF;
end;

class function CoSrvAppEF.CreateRemote(const MachineName: string): ISrvAppEF;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SrvAppEF) as ISrvAppEF;
end;

class function CoSrvAppAS.Create: ISrvAppAS;
begin
  Result := CreateComObject(CLASS_SrvAppAS) as ISrvAppAS;
end;

class function CoSrvAppAS.CreateRemote(const MachineName: string): ISrvAppAS;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SrvAppAS) as ISrvAppAS;
end;

class function CoSrvAppCP.Create: ISrvAppCP;
begin
  Result := CreateComObject(CLASS_SrvAppCP) as ISrvAppCP;
end;

class function CoSrvAppCP.CreateRemote(const MachineName: string): ISrvAppCP;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SrvAppCP) as ISrvAppCP;
end;

class function CoSrvAppPP.Create: ISrvAppPP;
begin
  Result := CreateComObject(CLASS_SrvAppPP) as ISrvAppPP;
end;

class function CoSrvAppPP.CreateRemote(const MachineName: string): ISrvAppPP;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SrvAppPP) as ISrvAppPP;
end;

class function CoSrvAppCM.Create: ISrvAppCM;
begin
  Result := CreateComObject(CLASS_SrvAppCM) as ISrvAppCM;
end;

class function CoSrvAppCM.CreateRemote(const MachineName: string): ISrvAppCM;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SrvAppCM) as ISrvAppCM;
end;

class function CoSrvAppRS.Create: ISrvAppRS;
begin
  Result := CreateComObject(CLASS_SrvAppRS) as ISrvAppRS;
end;

class function CoSrvAppRS.CreateRemote(const MachineName: string): ISrvAppRS;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SrvAppRS) as ISrvAppRS;
end;

class function CoSrvAppFC.Create: ISrvAppFC;
begin
  Result := CreateComObject(CLASS_SrvAppFC) as ISrvAppFC;
end;

class function CoSrvAppFC.CreateRemote(const MachineName: string): ISrvAppFC;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SrvAppFC) as ISrvAppFC;
end;

class function CoSrvAppGR.Create: ISrvAppGR;
begin
  Result := CreateComObject(CLASS_SrvAppGR) as ISrvAppGR;
end;

class function CoSrvAppGR.CreateRemote(const MachineName: string): ISrvAppGR;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SrvAppGR) as ISrvAppGR;
end;

class function CosrvAppFI.Create: IsrvAppFI;
begin
  Result := CreateComObject(CLASS_srvAppFI) as IsrvAppFI;
end;

class function CosrvAppFI.CreateRemote(const MachineName: string): IsrvAppFI;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_srvAppFI) as IsrvAppFI;
end;

end.
