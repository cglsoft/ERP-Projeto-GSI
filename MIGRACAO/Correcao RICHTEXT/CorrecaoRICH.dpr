program CorrecaoRICH;

uses
  Forms,
  u_Principal in 'u_Principal.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
