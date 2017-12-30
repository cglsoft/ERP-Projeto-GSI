program Project1;

uses
  Forms,
  u_Email in 'u_Email.pas' {frmEmail},
  FuncoesDSI in 'C:\projetos\GSI\BIBLIOTECA\DLL\FuncoesDSI.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmEmail, frmEmail);
  Application.Run;
end.
