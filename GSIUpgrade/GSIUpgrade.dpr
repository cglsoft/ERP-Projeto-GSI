program GSIUpgrade;

{$R *.res}

uses
  Forms,
  u_principal in 'u_principal.pas' {frmPrincipal},
  FuncoesDsi in '..\Biblioteca\DLL\FuncoesDSI.pas';

begin
  Application.Initialize;
  Application.Title := 'GSIUpgrade - Atualiza��o de Vers�o';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
