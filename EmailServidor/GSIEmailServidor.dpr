program GSIEmailServidor;

uses
  FastMM4,
  Midas,
  MidasLib,
  Forms,
  u_Principal in 'u_Principal.pas' {frmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'GSI Servidor de e-mail ';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
