program CEPSERV;

{$define NeverUninstall}
{$define NoMessageBoxes}
{$define AssumeMultiThreaded}
{$define UseCustomFixedSizeMoveRoutines}

uses
  FastMM4,
  Forms,
  u_principal in 'u_principal.pas' {frmPrincipal},
  CEPSERV_TLB in 'CEPSERV_TLB.pas',
  u_rmdmCEP in 'u_rmdmCEP.pas' {CEPSRV: TRemoteDataModule} {CEPSRV: CoClass};

{$R *.TLB}

{$R *.res}

begin
  Forms.Application.ShowMainForm := False;
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
