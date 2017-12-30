program MigracaoCEP;

uses
  Forms,
  u_principal in 'u_principal.pas' {frmPrincipal},
  u_dmCEP in 'u_dmCEP.pas' {dmCEP: TDataModule},
  uReconcileErrorForm in 'uReconcileErrorForm.pas' {ReconcileErrorForm},
  funcoes in '..\..\..\..\..\bibliotecas\CGLSOFT\funcoes.pas',
  u_dbAdm in '..\..\..\..\..\projetos\ADMSist\u_dbAdm.pas' {dmAdm: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TdmCEP, dmCEP);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdmAdm, dmAdm);
  Application.Run;
end.
