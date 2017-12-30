program ModeloAdicionarPesquisa;

uses
  Forms,
  u_AdicionarPesquisa in 'u_AdicionarPesquisa.pas' {frmAdicionarPesquisa};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmAdicionarPesquisa, frmAdicionarPesquisa);
  Application.Run;
end.
