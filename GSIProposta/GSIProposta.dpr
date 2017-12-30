{ Sistema de Gestão Sistemas Integrados 1.00
  Módulo de Proposta OFF Line
  Autor : Claudio Gervasio de Lisboa                by CGLSOFT

  Inicio do Projeto
          Análise : 17/Ago/2005
  Desenvolvimento : xx/xx/xx - Data Implantação do Sistema }

program GSIProposta;

{$R *.res}

uses
  MidasMemPatch,
  MidasLib,
  Forms,
  u_Principal in 'u_Principal.pas' {frmPrincipal},
  u_PedidoProposta in 'u_PedidoProposta.pas' {frmPedidoProposta},
  u_Login in '..\Cliente\u_Login.pas' {frmLogin},
  u_RDVOFFLine in '..\Cliente\u_RDVOFFLine.pas' {frmRDVOFFLine},
  u_dmGSI in '..\Cliente\u_dmGSI.pas' {dmGsi: TDataModule},
  u_dmOs in '..\Cliente\u_dmOs.PAS' {dmOS: TDataModule},
  u_dmAS in '..\Cliente\u_dmAS.pas' {dmAS: TDataModule},
  u_dmEF in '..\Cliente\u_dmEF.pas' {dmEF: TDataModule},
  u_dmIT in '..\Cliente\u_dmIT.pas' {dmIT: TDataModule},
  u_dmRD in '..\Cliente\u_dmRD.PAS' {dmRD: TDataModule},
  u_dmCP in '..\Cliente\u_dmCP.pas' {dmCP: TDataModule},
  u_dmPP in '..\Cliente\u_dmPP.pas' {dmPP: TDataModule},
  u_dmGR in '..\Cliente\u_dmGR.pas' {dmGR: TDataModule},
  u_dmRS in '..\Cliente\u_dmRS.pas' {dmRS: TDataModule},
  u_dmFC in '..\Cliente\u_dmFC.pas' {dmFC: TDataModule},
  u_dmCM in '..\Cliente\u_dmCM.pas' {dmCM: TDataModule},
  u_VisualTabelaPreco in '..\Cliente\u_VisualTabelaPreco.pas' {frmVisualTabelaPreco};

begin
  Application.Initialize;
  Application.Title := 'GSI Proposta OFF Line 1.00';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdmGsi, dmGsi);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TdmOS, dmOS);
  Application.CreateForm(TdmAS, dmAS);
  Application.CreateForm(TdmEF, dmEF);
  Application.CreateForm(TdmIT, dmIT);
  Application.CreateForm(TdmRD, dmRD);
  Application.CreateForm(TdmCP, dmCP);
  Application.CreateForm(TdmPP, dmPP);
  Application.CreateForm(TdmGR, dmGR);
  Application.CreateForm(TdmRS, dmRS);
  Application.CreateForm(TdmFC, dmFC);
  Application.CreateForm(TdmCM, dmCM);
  frmLogin.ShowModal;

  case frmLogin.FLogAcesso of
  1 : begin
       frmLogin.Free;
       frmLogin := Nil;
       Application.Run
      end;
  0 : Application.Terminate;
  -1: begin
       Application.CreateForm(TfrmRDVOFFLine, frmRDVOFFLine);
       frmRDVOFFLine.ShowModal;
       Application.Run
      end;
  end;

end.
