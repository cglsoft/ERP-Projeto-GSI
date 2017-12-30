program Correcao;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  u_reconcilie2 in 'u_reconcilie2.pas' {ReconcileErrorForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
