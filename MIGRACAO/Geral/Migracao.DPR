program Migracao;

{$R *.res}

uses
  FASTMM4,
  MidasLib,
  Midas,
  Forms,
  UNIT1 in 'UNIT1.PAS' {frmMigra},
  uDMMigra in 'uDMMigra.pas' {DMMigra: TDataModule},
  uReconcileError in 'uReconcileError.pas' {ReconcileErrorForm},
  u_dmHora in 'u_dmHora.pas' {dmHoras: TDataModule};

begin
  Application.Initialize;
  Application.CreateForm(TfrmMigra, frmMigra);
  Application.CreateForm(TDMMigra, DMMigra);
  Application.CreateForm(TdmHoras, dmHoras);
  Application.Run;
end.
