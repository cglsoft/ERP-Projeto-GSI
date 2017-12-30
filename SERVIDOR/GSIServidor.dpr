 program GSIServidor;

{$SetPEFlags $20}
{$define NeverUninstall}
{$define NoMessageBoxes}
{$define AssumeMultiThreaded}
{$define UseCustomFixedSizeMoveRoutines}

uses
  FastMM4,
  Midas,
  MidasLib,
  Forms,
  u_Principal in 'u_Principal.pas' {frmPrincipal},
  GSIServidor_TLB in 'GSIServidor_TLB.pas',
  u_rmSrvAppGSI in 'u_rmSrvAppGSI.pas' {SrvAppGSI: TRemoteDataModule} {SrvAppGSI: CoClass},
  u_rmSrvAppIT in 'u_rmSrvAppIT.pas' {SrvAppIT: TRemoteDataModule} {SrvAppIT: CoClass},
  u_rmSrvAppRD in 'u_rmSrvAppRD.pas' {SrvAppRD: TRemoteDataModule} {SrvAppRD: CoClass},
  u_rmSrvAppOS in 'u_rmSrvAppOS.pas' {SrvAppOS: TRemoteDataModule} {SrvAppOS: CoClass},
  u_rmSrvAppEF in 'u_rmSrvAppEF.pas' {SrvAppEF: TRemoteDataModule} {SrvAppEF: CoClass},
  u_rmSrvAppAS in 'u_rmSrvAppAS.pas' {SrvAppAS: TRemoteDataModule} {SrvAppAS: CoClass},
  u_dmServidor in 'u_dmServidor.pas' {dmServidor: TDataModule},
  u_rmSrvAppCP in 'u_rmSrvAppCP.pas' {SrvAppCP: TRemoteDataModule} {SrvAppCP: CoClass},
  u_rmSrvAppPP in 'u_rmSrvAppPP.pas' {SrvAppPP: TRemoteDataModule} {SrvAppPP: CoClass},
  u_rmSrvAppCM in 'u_rmSrvAppCM.pas' {SrvAppCM: TRemoteDataModule} {SrvAppCM: CoClass},
  u_rmSrvAppRS in 'u_rmSrvAppRS.pas' {SrvAppRS: TRemoteDataModule} {SrvAppRS: CoClass},
  u_rmSrvAppFC in 'u_rmSrvAppFC.pas' {SrvAppFC: TRemoteDataModule} {SrvAppFC: CoClass},
  u_rmSrvAppGR in 'u_rmSrvAppGR.pas' {SrvAppGR: TRemoteDataModule} {SrvAppGR: CoClass},
  FuncoesServidor in '..\BIBLIOTECA\DLL\FuncoesServidor.pas',
  FuncoesDSI in '..\BIBLIOTECA\DLL\FuncoesDSI.pas',
  u_rmSrvAppFI in 'u_rmSrvAppFI.pas' {srvAppFI: TRemoteDataModule} {srvAppFI: CoClass};

{$R *.TLB}

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'GSI Servidor e-mail';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
