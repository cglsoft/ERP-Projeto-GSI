program CEP;
{$define NeverUninstall}
{$define NoMessageBoxes}
{$define AssumeMultiThreaded}
{$define UseCustomFixedSizeMoveRoutines}

uses
  FastMM4,
  Forms,
  u_principal in 'u_principal.pas' {frmPrincipal},
  u_dmCEP in 'u_dmCEP.pas' {dmCEP: TDataModule},
  u_ReconcileErrorFrm in 'u_ReconcileErrorFrm.pas' {ReconcileErrorForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TdmCEP, dmCEP);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
