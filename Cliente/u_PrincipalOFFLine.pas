unit u_PrincipalOFFLine;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ActnList, XPStyleActnCtrls, ActnMan, XPMan, DB,
  ImgList, ComCtrls, ActnCtrls, ActnMenus, ToolWin, fcStatusBar, StdCtrls,
  ExtCtrls, Grids, DBGrids, DBClient, QRPDFFilt;

type
  TAcao = ( Inserir, Editar );
type
  TProcessar = ( Only, ALL );

type
  TfrmPrincipalOFFLine = class(TForm)
    fcstbarStatus: TfcStatusBar;
    CoolBar1: TCoolBar;
    ActionMainMenuBar1: TActionMainMenuBar;
    ToolBar1: TToolBar;
    tbRDV: TToolButton;
    tbBancoHoras: TToolButton;
    ToolButton4: TToolButton;
    tbFechar: TToolButton;
    ToolBar2: TToolBar;
    ToolBar3: TToolBar;
    tbPesquisasGerais: TToolButton;
    ToolButton7: TToolButton;
    tbSair: TToolButton;
    imglstMenu: TImageList;
    XPManifest1: TXPManifest;
    actmngPrincipal: TActionManager;
    actPesquisa: TAction;
    actOSSincronismo: TAction;
    actSair: TAction;
    actSobre: TAction;
    actSolicRDV: TAction;
    actSolicHora: TAction;
    imglstBarraFerramenta: TImageList;
    actGravarXML: TAction;
    actTransferencia: TAction;
    actGravarDisquete: TAction;
    actRecuperarDisquete: TAction;
    actExportar: TAction;
    actExcluir: TAction;
    ActionToolBar1: TActionToolBar;
    pgctrlOFFLINE: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dbgrdHoras: TDBGrid;
    Timer1: TTimer;
    dbgrdDespesa: TDBGrid;
    tbHoraTecnica: TToolButton;
    TabSheet3: TTabSheet;
    dbgrdHoraTecnica: TDBGrid;
    actSolicOSHora: TAction;
    TabSheet4: TTabSheet;
    dbgrdOSDefeito: TDBGrid;
    tbOSDefeito: TToolButton;
    actSolicOSDefeito: TAction;
    actTransfTotal: TAction;
    tbOS: TToolButton;
    TabSheet5: TTabSheet;
    dbgrdOS: TDBGrid;
    actOS: TAction;
    QRPDFFilter1: TQRPDFFilter;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actTransferenciaExecute(Sender: TObject);
    procedure actGravarXMLExecute(Sender: TObject);
    procedure actGravarDisqueteExecute(Sender: TObject);
    procedure actRecuperarDisqueteExecute(Sender: TObject);
    procedure actExportarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actSolicRDVExecute(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure actSobreExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure dbgrdDespesaTitleClick(Column: TColumn);
    procedure dbgrdDespesaDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure actSolicHoraExecute(Sender: TObject);
    procedure dbgrdDespesaDblClick(Sender: TObject);
    procedure dbgrdHorasDblClick(Sender: TObject);
    procedure dbgrdHoraTecnicaDblClick(Sender: TObject);
    procedure actSolicOSHoraExecute(Sender: TObject);
    procedure actSolicOSDefeitoExecute(Sender: TObject);
    procedure dbgrdOSDefeitoDblClick(Sender: TObject);
    procedure actTransfTotalExecute(Sender: TObject);
    procedure actOSExecute(Sender: TObject);
    procedure dbgrdOSDblClick(Sender: TObject);
    procedure actOSSincronismoExecute(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    procedure AbrirFormularioRDV( Acao : TAcao ) ;
    procedure AbrirFormularioBANCOHORAS( Acao : TAcao ) ;
    procedure AbrirFormularioOSHORA( Acao : TAcao ) ;
    procedure AbrirFormularioOSDEFEITO( Acao : TAcao ) ;
    procedure TransferenciaONLINE(TipoTransf: Integer);
    procedure AbrirFormularioOS(Acao: TAcao);
    procedure TimerBackupXMLDespesaALL( Processar : TProcessar );
  end;

var
  frmPrincipalOFFLine: TfrmPrincipalOFFLine;

const xml_Operacao        = 'OPERACAO.XML';
      xml_CondPagto       = 'CONDPAGTO.XML';
      xml_Entidade        = 'ENTIDADE.XML';
      xml_Config          = 'CONFIG.XML';
      xml_Despesa         = 'DESPESAS.XML';
      xml_Feriado         = 'FERIADO.XML';
      xml_Defeito         = 'DEFEITO.XML';
      xml_Filial          = 'FILIAL.XML';
      xml_BcoHora         = 'BANCOHORAS.XML';
      xml_OSHORAOFF       = 'OSHORAOFF.XML';
      xml_OSDEFEITOOFF    = 'OSDEFEITOOFF.XML';
      xml_CustoHora       = 'CUSTOHORA.XML';
      xml_OcOperacional   = 'OCOPERACIONAL.XML';
      xml_Produto         = 'PRODUTO.XML';
      xml_OS              = 'OS.XML';
      xml_OSHORA          = 'OSHORA.XML';
      xml_OSDEFEITO       = 'OSDEFEITO.XML';
      xml_OSMATERIAL      = 'OSMATERIAL.XML';
      xml_OSOCOPERACIONAL = 'OSOCOPERACIONAL.XML';


implementation

uses u_dmOFFLine, u_Exportar, FuncoesDSI, FuncoesCliente, u_dmRD, u_DespesaOFFLine,
  u_Sobre, u_BancoHorasOFFLine, u_HoraTecnicaOFFLine, u_OSDefeitoOFFLine,
  u_OSOFFLine, u_OSSincronismo;

{$R *.dfm}

procedure TfrmPrincipalOFFLine.TransferenciaONLINE( TipoTransf : Integer);
var SincroOffLine, idx : string;
    cdsData : OleVariant;
    idxA : array[0..6] of string;

 function SaveIdx( cds : TClientDataSet; DeleteIdx : Boolean = True ) : string;
 begin
  Result := cds.IndexFieldNames;
  if DeleteIdx then
     cds.DeleteIndex( 'idx1');
  cds.MasterSource := nil;
  cds.MasterFields := '';
  cds.IndexName    := '';
 end;

 procedure RestoreIdx( var cds : TClientDataSet; idx : string;
  MasterSource : Boolean = True );
 begin
  cds.AddIndex('idx1', idx, [ixPrimary],'','',0);
  cds.IndexName := 'idx1';

  if MasterSource then
     begin
      cds.MasterSource := dmOFFLine.dsOS;
      cds.MasterFields := 'OSID';
     end;
 end;

 procedure TransfOS;
 begin
  cdsData := dmRD.shdcnnRD.AppServer.ITransfOS( dmOFFLine.cdsOSOSID.Value,
  dmOFFLine.cdsOS.Data, dmOFFLine.cdsOSHora.Data, dmOFFLine.cdsOSDefeito.Data,
  dmOFFLine.cdsOSMaterial.Data,  dmOFFLine.cdsOSOCOperacional.Data,
  dmOFFLine.cdsAdiantamento.Data, dmOFFLine.cdsBancoHora.Data );

  idxA[0] := SaveIdx( dmOFFLine.cdsOS );
  idxA[1] := SaveIdx( dmOFFLine.cdsOSDefeito, False );
  idxA[2] := SaveIdx( dmOFFLine.cdsOSHora, False );
  idxA[3] := SaveIdx( dmOFFLine.cdsAdiantamento, False );
  idxA[4] := SaveIdx( dmOFFLine.cdsBancoHora, False );
  idxA[5] := SaveIdx( dmOFFLine.cdsOSMaterial, False );
  idxA[6] := SaveIdx( dmOFFLine.cdsOSOCOperacional, False );

  dmOFFLine.cdsOs.Data              := cdsData[0];
  dmOFFLine.cdsOSDefeito.Data       := cdsData[1];
  dmOFFLine.cdsOSHora.Data          := cdsData[2];
  dmOFFLine.cdsAdiantamento.Data    := cdsData[3];
  dmOFFLine.cdsBancoHora.Data       := cdsData[4];
  dmOFFLine.cdsOSMaterial.Data      := cdsData[5];
  dmOFFLine.cdsOSOCOperacional.Data := cdsData[6];

  RestoreIdx( dmOFFLine.cdsOs, idxA[0], False );
  RestoreIdx( dmOFFLine.cdsOSDefeito, 'OSID;ITEMID' );
  RestoreIdx( dmOFFLine.cdsOSHora, 'OSID;ENTIDADEID;DATATRABALHOID' );
  RestoreIdx( dmOFFLine.cdsAdiantamento, 'OSID' );
  RestoreIdx( dmOFFLine.cdsBancoHora, 'OSID' );
  RestoreIdx( dmOFFLine.cdsOSMaterial, 'OSID;ITEMID' );
  RestoreIdx( dmOFFLine.cdsOSOCOperacional, 'OSID;ITEMID' );
 end;

begin
 SincroOffLine := LoadStringFromRegistry( Registro_Principal, 'SINCRONISMO_OFFLINE_OS', 'NAO' );

 Timer1.Enabled := False;
 Screen.Cursor := crHourGlass;
 try
  try
    if not pCnnMain.Connected then
       pCnnMain.Connected := True;

    case TipoTransf of
    0 : begin
         if UpperCase( SincroOffLine ) = 'SIM' then
            TransfOS
         else
            begin
             idx := SaveIdx( dmOFFLine.cdsAdiantamento );
             dmOFFLine.cdsAdiantamento.Data := dmRD.shdcnnRD.AppServer.ITransfOFFLine( dmOFFLine.cdsAdiantamento.Data );
             RestoreIdx( dmOFFLine.cdsAdiantamento, idx );

             idx := SaveIdx( dmOFFLine.cdsBancoHora );
             dmOFFLine.cdsBancoHora.Data    := dmRD.shdcnnRD.AppServer.ITransfOFFBancoHora( dmOFFLine.cdsBancoHora.Data );
             RestoreIdx( dmOFFLine.cdsBancoHora, idx );

             dmOFFLine.cdsOsHoraOFF.Data    := dmRD.shdcnnRD.AppServer.ITransfHoraTecnica( dmOFFLine.cdsOsHoraOFF.Data );
             dmOFFLine.cdsOsDefeitoOFF.Data := dmRD.shdcnnRD.AppServer.ITransfOSDefeito( dmOFFLine.cdsOsDefeitoOFF.Data );
            end;
        end;
    else
        case pgctrlOFFLINE.ActivePageIndex of
         0 : if UpperCase( SincroOffLine ) = 'SIM' then
                TransfOS;
         1 : begin
              idx := SaveIdx( dmOFFLine.cdsAdiantamento );
              dmOFFLine.cdsAdiantamento.Data := dmRD.shdcnnRD.AppServer.ITransfOFFLine( dmOFFLine.cdsAdiantamento.Data );
              RestoreIdx( dmOFFLine.cdsAdiantamento, idx );
             end;
         2 : begin
              idx := SaveIdx( dmOFFLine.cdsBancoHora );
              dmOFFLine.cdsBancoHora.Data    := dmRD.shdcnnRD.AppServer.ITransfOFFBancoHora( dmOFFLine.cdsBancoHora.Data );
              RestoreIdx( dmOFFLine.cdsBancoHora, idx );
             end;
         3 : begin
              dmOFFLine.cdsOsHoraOFF.Data    := dmRD.shdcnnRD.AppServer.ITransfHoraTecnica( dmOFFLine.cdsOsHoraOFF.Data );
             end;
         4 : begin
              dmOFFLine.cdsOsDefeitoOFF.Data := dmRD.shdcnnRD.AppServer.ITransfOSDefeito( dmOFFLine.cdsOsDefeitoOFF.Data );
             end;
        end;
    end;

    if pCnnMain.Connected then
      pCnnMain.Connected := False;

  except
  on E: Exception do
   raise Exception.Create( E.Message );
  end;

 finally
  Screen.Cursor := crDefault;
 end;
end;

procedure TfrmPrincipalOFFLine.AbrirFormularioRDV(  Acao : TAcao ) ;
begin
 if not Assigned( frmDespesaOFFLine ) then
    Application.CreateForm( TfrmDespesaOFFLine, frmDespesaOFFLine );
 frmDespesaOFFLine.Show;

 case Acao of
 Inserir : dmOFFLine.cdsAdiantamento.Insert;
 Editar  : dmOFFLine.cdsAdiantamento.Edit;
 end;

end;

procedure TfrmPrincipalOFFLine.AbrirFormularioBANCOHORAS(  Acao : TAcao ) ;
begin
 if not Assigned( frmBancoHorasOFFLine ) then
    Application.CreateForm( TfrmBancoHorasOFFLine, frmBancoHorasOFFLine );
 frmBancoHorasOFFLine.Show;

 case Acao of
 Inserir : dmOFFLine.cdsBancoHora.Insert;
 Editar  : dmOFFLine.cdsBancoHora.Edit;
 end;
end;

procedure TfrmPrincipalOFFLine.AbrirFormularioOSHORA(  Acao : TAcao ) ;
begin
 if not Assigned( frmHoraTecnicaOFFLine ) then
    Application.CreateForm( TfrmHoraTecnicaOFFLine, frmHoraTecnicaOFFLine );
 frmHoraTecnicaOFFLine.Show;

 case Acao of
 Inserir : dmOFFLine.cdsOsHoraOFF.Insert;
 Editar  : dmOFFLine.cdsOsHoraOFF.Edit;
 end;
end;

procedure TfrmPrincipalOFFLine.AbrirFormularioOSDEFEITO(  Acao : TAcao ) ;
begin
 if not Assigned( frmOSDefeitoOFFLine ) then
    Application.CreateForm( TfrmOSDefeitoOFFLine, frmOSDefeitoOFFLine );
 frmOSDefeitoOFFLine.Show;

 case Acao of
 Inserir : dmOFFLine.cdsOsDefeitoOFF.Insert;
 Editar  : dmOFFLine.cdsOsDefeitoOFF.Edit;
 end;
end;

procedure TfrmPrincipalOFFLine.AbrirFormularioOS(  Acao : TAcao ) ;
begin
 if not Assigned( frmOSOFFLine ) then
    Application.CreateForm( TfrmOSOFFLine, frmOSOFFLine );
 frmOSOFFLine.Show;

 case Acao of
 Inserir : dmOFFLine.cdsOS.Insert;
 Editar  : dmOFFLine.cdsOS.Edit;
 end;
end;


procedure TfrmPrincipalOFFLine.TimerBackupXMLDespesaALL( Processar : TProcessar );
begin
 case Processar of
 Only : begin
         case pgctrlOFFLINE.ActivePageIndex of
         0 : begin
              TimerBackupXML( xml_OS,       dmOFFLine.cdsOs );
              TimerBackupXML( xml_OSHORA, dmOFFLine.cdsOSHora );
              TimerBackupXML( xml_OSDEFEITO, dmOFFLine.cdsOSDefeito );
              TimerBackupXML( xml_OSMATERIAL, dmOFFLine.cdsOSMaterial );
              TimerBackupXML( xml_OSOCOPERACIONAL, dmOFFLine.cdsOSOCOperacional );
             end;
         1 : TimerBackupXML( xml_Despesa,  dmOFFLine.cdsAdiantamento );
         2 : TimerBackupXML( xml_BcoHora,  dmOFFLine.cdsBancoHora );
         3 : TimerBackupXML( xml_OSHORAOFF,dmOFFLine.cdsOsHoraOFF );
         4 : TimerBackupXML( xml_OSDEFEITOOFF,dmOFFLine.cdsOsDefeitoOFF );
         end;
        end;
 ALL  : begin
         TimerBackupXML( xml_Despesa, dmOFFLine.cdsAdiantamento );
         TimerBackupXML( xml_BcoHora, dmOFFLine.cdsBancoHora );
         TimerBackupXML( xml_OSHORAOFF, dmOFFLine.cdsOsHoraOFF );
         TimerBackupXML( xml_OSDEFEITOOFF, dmOFFLine.cdsOsDefeitoOFF );
         TimerBackupXML( xml_OS, dmOFFLine.cdsOs );
         TimerBackupXML( xml_OSHORA, dmOFFLine.cdsOSHora );
         TimerBackupXML( xml_OSDEFEITO, dmOFFLine.cdsOSDefeito );
         TimerBackupXML( xml_OSMATERIAL, dmOFFLine.cdsOSMaterial );
         TimerBackupXML( xml_OSOCOPERACIONAL, dmOFFLine.cdsOSOCOperacional );
        end;
 end;
end;

procedure TfrmPrincipalOFFLine.FormCreate(Sender: TObject);
begin
 try
  OpenXMLFile( True, xml_Operacao, 'OPERACAOID', dmOFFLine.cdsOperacao );
  OpenXMLFile( True, xml_CondPagto, 'CONDPAGTOID', dmOFFLine.cdsCondPagto );
  OpenXMLFile( True, xml_Entidade, 'ENTIDADEID', dmOFFLine.cdsEntidade );
  OpenXMLFile( True, xml_Feriado,'FERIADOID', dmOFFLine.cdsFeriado );
  OpenXMLFile( True, xml_CustoHora,'MODELOID', dmOFFLine.cdsCustoHora );
  OpenXMLFile( True, xml_Produto,'EMPRESAID;PRODUTOID', dmOFFLine.cdsProduto );
  OpenXMLFile( True, xml_OcOperacional,'OCOPERACIONALID', dmOFFLine.cdsOcOperacional );
  OpenXMLFile( True, xml_Config, '', dmOFFLine.cdsConfig );
  OpenXMLFile( False,xml_Despesa, 'OSID', dmOFFLine.cdsAdiantamento );
  OpenXMLFile( False,xml_Defeito, '', dmOFFLine.cdsDefeito );
  OpenXMLFile( False,xml_Filial, 'FILIALID', dmOFFLine.cdsFilial );
  OpenXMLFile( False,xml_BcoHora, 'OSID', dmOFFLine.cdsBancoHora );
  OpenXMLFile( False,xml_OSHORAOFF, '', dmOFFLine.cdsOsHoraOFF );
  OpenXMLFile( False,xml_OSDEFEITOOFF, '', dmOFFLine.cdsOsDefeitoOFF );
  OpenXMLFile( False,xml_OS, 'OSID', dmOFFLine.cdsOS );
  OpenXMLFile( False,xml_OSHORA, 'OSID;ENTIDADEID;DATATRABALHOID', dmOFFLine.cdsOSHora );
  OpenXMLFile( False,xml_OSDEFEITO, 'OSID;ITEMID', dmOFFLine.cdsOSDefeito );
  OpenXMLFile( False,xml_OSMATERIAL, 'OSID;ITEMID', dmOFFLine.cdsOSMaterial );
  OpenXMLFile( False,xml_OSOCOPERACIONAL, 'OSID;ITEMID', dmOFFLine.cdsOSOcOperacional );

 except
  on E: Exception do
  begin
   MessageDlg( E.Message + #13 + 'Você deverá acessar a base ON-LINE para carregar as informações no acesso primeiro acesso',
              mtWarning, [mbOK], 0 );
   Close;
  end;
 end;
end;

procedure TfrmPrincipalOFFLine.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Timer1.Enabled := False;
 try
  try
   if ( Screen.FormCount > 2 ) then
      raise Exception.Create('Sistema não pode ser Finalizado, ainda há janelas abertas.');

   if MessageDlg('Confirma a saída do sistema ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      Action := caNone;

   if pCnnMain.Connected then
      pCnnMain.Connected := False;

   if ( dmOFFLine.cdsAdiantamento.State in [dsInsert,dsEdit] ) then
      dmOFFLine.cdsAdiantamento.Post;

   if ( dmOFFLine.cdsBancoHora.State in [dsInsert,dsEdit] ) then
      dmOFFLine.cdsBancoHora.Post;

   TimerBackupXMLDespesaALL( ALL );

   dmOFFLine.cdsAdiantamento.Close;
   dmOFFLine.cdsBancoHora.Close;
   dmOFFLine.cdsOsHoraOFF.Close;
   dmOFFLine.cdsOsDefeitoOFF.Close;
   dmOFFLine.cdsOs.Close;
   dmOFFLine.cdsOSHora.Close;
   dmOFFLine.cdsOSDefeito.Close;
   dmOFFLine.cdsOSMaterial.Close;
   dmOFFLine.cdsOSOCOperacional.Close;

   MessageDlg( 'Utilize a conexão ON-LINE para gerenciamento ON-LINE!', mtWarning, [mbOK], 0 );
   Action := caFree;

  except
   on E:Exception do
   begin
    raise Exception.Create( E.Message );
    Action := caNone;
   end;
  end;

 finally
  Application.Terminate;
 end;

end;

procedure TfrmPrincipalOFFLine.actTransferenciaExecute(Sender: TObject);
begin
 TransferenciaONLINE( 1 );
end;

procedure TfrmPrincipalOFFLine.actTransfTotalExecute(Sender: TObject);
begin
 TransferenciaONLINE( 0 );
end;

procedure TfrmPrincipalOFFLine.actGravarXMLExecute(Sender: TObject);
begin
 TimerBackupXMLDespesaALL( Only );
end;

procedure TfrmPrincipalOFFLine.actOSExecute(Sender: TObject);
begin
 AbrirFormularioOS( Inserir );
end;

procedure TfrmPrincipalOFFLine.actOSSincronismoExecute(Sender: TObject);
var SincroOffLine : string;
begin
 SincroOffLine := LoadStringFromRegistry( Registro_Principal, 'SINCRONISMO_OFFLINE_OS', 'NAO' );

 if UpperCase( SincroOffLine ) = 'SIM' then
    begin
     if not Assigned( frmOSSincronismo ) then
        Application.CreateForm( TfrmOSSincronismo, frmOSSincronismo );
     frmOSSincronismo.Show;
    end
 else
    MessageDlg('O.S Eletrônica não está disponível na versão final somente para teste com usuários específicos', mtInformation, [mbOK], 0 );
end;

procedure TfrmPrincipalOFFLine.actGravarDisqueteExecute(Sender: TObject);
begin
 MessageDlg('Atenção, executando está operação o sistema irá apagar os ' +
            'dados atuais e você só terá o backup para recuperar, pois se ' +
            'pressupõe que o seu RDV está sendo feito em transito e você ' +
            'irá transferir em outro local', mtWarning, [mbOK], 0 );

 if MessageDlg('Deseja gravar os dados no disquete?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;

 case pgctrlOFFLINE.ActivePageIndex of
 0 : begin
      GravarDiskete( xml_OS, dmOFFLine.cdsOs );
      GravarDiskete( xml_OSHORA, dmOFFLine.cdsOSHora );
      GravarDiskete( xml_OSDEFEITO, dmOFFLine.cdsOSDefeito );
      GravarDiskete( xml_OSMATERIAL, dmOFFLine.cdsOSMaterial );
      GravarDiskete( xml_OSOCOPERACIONAL, dmOFFLine.cdsOSOCOperacional );
     end;

 1 : GravarDiskete( xml_Despesa, dmOFFLine.cdsAdiantamento );
 2 : GravarDiskete( xml_BcoHora, dmOFFLine.cdsBancoHora );
 3 : GravarDiskete( xml_OSHORAOFF, dmOFFLine.cdsOsHoraOFF );
 4 : GravarDiskete( xml_OSDEFEITOOFF,dmOFFLine.cdsOsDefeitoOFF );
 end;
end;

procedure TfrmPrincipalOFFLine.actRecuperarDisqueteExecute(
  Sender: TObject);
begin
 if MessageDlg('Deseja recuperar os dados do disquete?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;

 case pgctrlOFFLINE.ActivePageIndex of
 0 : begin
      RecuperarDisquete( xml_OS, dmOFFLine.cdsOs );
      RecuperarDisquete( xml_OSHORA, dmOFFLine.cdsOSHora );
      RecuperarDisquete( xml_OSDEFEITO, dmOFFLine.cdsOSDefeito );
      RecuperarDisquete( xml_OSMATERIAL, dmOFFLine.cdsOSMaterial );
      RecuperarDisquete( xml_OSOCOPERACIONAL, dmOFFLine.cdsOSOCOperacional );
     end;
 1 : RecuperarDisquete( xml_Despesa,  dmOFFLine.cdsAdiantamento );
 2 : RecuperarDisquete( xml_BcoHora,  dmOFFLine.cdsBancoHora );
 3 : RecuperarDisquete( xml_OSHORAOFF,   dmOFFLine.cdsOsHoraOFF );
 4 : RecuperarDisquete( xml_OSDEFEITOOFF,dmOFFLine.cdsOsDefeitoOFF );
 end;
end;

procedure TfrmPrincipalOFFLine.actExportarExecute(Sender: TObject);
begin
  if not dmOFFLine.cdsAdiantamento.IsEmpty then
    begin
     frmExportar := TfrmExportar.Create(nil);
     frmExportar.DataSource :=  dmOFFLine.dsAdiantamento;
     frmExportar.Show;
    end
 else
    MessageDlg('É necessário Gerar um Relatório!',mtWarning, [mbok],0 );
end;

procedure TfrmPrincipalOFFLine.actExcluirExecute(Sender: TObject);
begin
 if MessageDlg('Confirma a exclusão do registro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;

 case pgctrlOFFLINE.ActivePageIndex  of
 0 : dmOFFLine.cdsOS.Delete;
 1 : dmOFFLine.cdsAdiantamento.Delete;
 2 : dmOFFLine.cdsBancoHora.Delete;
 3 : dmOFFLine.cdsOsHoraOFF.Delete;
 4 : dmOFFLine.cdsOsDefeitoOFF.Delete;
 end;
end;

procedure TfrmPrincipalOFFLine.actSolicRDVExecute(Sender: TObject);
begin
 AbrirFormularioRDV( Inserir );
end;

procedure TfrmPrincipalOFFLine.actSairExecute(Sender: TObject);
begin
 Close;
end;

procedure TfrmPrincipalOFFLine.actSobreExecute(Sender: TObject);
begin
 frmSobre := TfrmSobre.Create( Self );
 frmSobre.ShowModal;
end;

procedure TfrmPrincipalOFFLine.Timer1Timer(Sender: TObject);
begin
 TimerBackupXMLDespesaALL( Only );
end;

procedure TfrmPrincipalOFFLine.FormActivate(Sender: TObject);
begin
 Timer1.Enabled := True;
end;

procedure TfrmPrincipalOFFLine.FormDeactivate(Sender: TObject);
begin
 Timer1.Enabled := False;
end;

procedure TfrmPrincipalOFFLine.dbgrdDespesaTitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column,  Column.Grid.DataSource, TDBGrid( Column.Grid ) );
end;

procedure TfrmPrincipalOFFLine.dbgrdDespesaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var HoldColor : TColor;
begin
 holdColor := TDBGrid( Sender ).Canvas.Brush.Color;

 if TDBGrid( Sender ).DataSource.DataSet.FieldByName('PROBLEMATRANSF').AsBoolean then
    begin
     TDBGrid( Sender ).Canvas.Brush.Color := clRed;
     TDBGrid( Sender ).DefaultDrawColumnCell(Rect, DataCol, Column, State);
     TDBGrid( Sender ).Canvas.Brush.Color := HoldColor;
    end;
end;

procedure TfrmPrincipalOFFLine.actSolicHoraExecute(Sender: TObject);
begin
 AbrirFormularioBANCOHORAS( Inserir );
end;

procedure TfrmPrincipalOFFLine.dbgrdDespesaDblClick(Sender: TObject);
begin
 AbrirFormularioRDV( Editar );
end;

procedure TfrmPrincipalOFFLine.dbgrdHorasDblClick(Sender: TObject);
begin
 AbrirFormularioBANCOHORAS( Editar );
end;

procedure TfrmPrincipalOFFLine.dbgrdHoraTecnicaDblClick(Sender: TObject);
begin
 AbrirFormularioOSHORA( Editar );
end;

procedure TfrmPrincipalOFFLine.actSolicOSHoraExecute(Sender: TObject);
begin
 AbrirFormularioOSHORA( Inserir );
end;

procedure TfrmPrincipalOFFLine.actSolicOSDefeitoExecute(Sender: TObject);
begin
 AbrirFormularioOSDEFEITO( Inserir );
end;

procedure TfrmPrincipalOFFLine.dbgrdOSDblClick(Sender: TObject);
begin
 AbrirFormularioOS( Editar );
end;

procedure TfrmPrincipalOFFLine.dbgrdOSDefeitoDblClick(Sender: TObject);
begin
 AbrirFormularioOSDEFEITO( Editar );
end;

end.
