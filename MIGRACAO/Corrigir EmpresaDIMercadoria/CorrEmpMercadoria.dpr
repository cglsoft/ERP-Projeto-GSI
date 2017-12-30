program CorrEmpMercadoria;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  u_reconci in 'u_reconci.pas' {ReconcileErrorForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
