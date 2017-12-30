program Dicionario;

uses
  Forms,
  u_Principal in 'u_Principal.pas' {Form1},
  u_dmDicionario in 'u_dmDicionario.pas' {dmDicionario: TDataModule},
  u_ReconcileError in 'u_ReconcileError.pas' {ReconcileErrorForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TdmDicionario, dmDicionario);
  Application.Run;
end.
