unit CEPSERV_TLB;

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
// File generated on 18/02/2009 10:03:41 from Type Library described below.

// ************************************************************************  //
// Type Lib: I:\projetos\GSI\CEP\Server\CEPSERV.tlb (1)
// LIBID: {1AF7DABA-7C31-44E4-B6F6-2219EAFD571E}
// LCID: 0
// Helpfile: 
// HelpString: CEPSERV Library
// DepndLst: 
//   (1) v1.0 Midas, (C:\WINDOWS\system32\midas.dll)
//   (2) v2.0 stdole, (C:\WINDOWS\system32\Stdole2.tlb)
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
  CEPSERVMajorVersion = 1;
  CEPSERVMinorVersion = 0;

  LIBID_CEPSERV: TGUID = '{1AF7DABA-7C31-44E4-B6F6-2219EAFD571E}';

  IID_ICEPSRV: TGUID = '{97E69C2D-58DE-4951-8C50-9356FEB2F881}';
  CLASS_CEPSRV: TGUID = '{C0D8D0F2-9732-48D3-B392-38D1DD208EA6}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  ICEPSRV = interface;
  ICEPSRVDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  CEPSRV = ICEPSRV;


// *********************************************************************//
// Interface: ICEPSRV
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {97E69C2D-58DE-4951-8C50-9356FEB2F881}
// *********************************************************************//
  ICEPSRV = interface(IAppServer)
    ['{97E69C2D-58DE-4951-8C50-9356FEB2F881}']
    procedure ExecSelect(const CMD: WideString); safecall;
    procedure ExecPesq(const UF: WideString; const CEP: WideString; const Localidade: WideString; 
                       const Logradouro: WideString; const Bairro: WideString; 
                       const TipoLogra: WideString); safecall;
    procedure ExecImportCEP(const UF: WideString; const Diretorio: WideString; QtdCommit: Integer; 
                            Item: Integer); safecall;
  end;

// *********************************************************************//
// DispIntf:  ICEPSRVDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {97E69C2D-58DE-4951-8C50-9356FEB2F881}
// *********************************************************************//
  ICEPSRVDisp = dispinterface
    ['{97E69C2D-58DE-4951-8C50-9356FEB2F881}']
    procedure ExecSelect(const CMD: WideString); dispid 1;
    procedure ExecPesq(const UF: WideString; const CEP: WideString; const Localidade: WideString; 
                       const Logradouro: WideString; const Bairro: WideString; 
                       const TipoLogra: WideString); dispid 3;
    procedure ExecImportCEP(const UF: WideString; const Diretorio: WideString; QtdCommit: Integer; 
                            Item: Integer); dispid 4;
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
// The Class CoCEPSRV provides a Create and CreateRemote method to          
// create instances of the default interface ICEPSRV exposed by              
// the CoClass CEPSRV. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCEPSRV = class
    class function Create: ICEPSRV;
    class function CreateRemote(const MachineName: string): ICEPSRV;
  end;

implementation

uses ComObj;

class function CoCEPSRV.Create: ICEPSRV;
begin
  Result := CreateComObject(CLASS_CEPSRV) as ICEPSRV;
end;

class function CoCEPSRV.CreateRemote(const MachineName: string): ICEPSRV;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CEPSRV) as ICEPSRV;
end;

end.
