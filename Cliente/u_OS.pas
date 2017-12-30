unit u_OS;

interface

uses
  Windows, SysUtils, Forms, Dialogs, Classes, ActnList, XPStyleActnCtrls,
  ActnMan, ImgList, Controls, ActnCtrls, ActnMenus, Grids, DBGrids,
  PnAjustaGrid, tmbToolEdicaoLista, StdCtrls, DBCtrls, ComCtrls, Graphics,
  wwclearbuttongroup, wwradiogroup, ExtCtrls, wwdbdatetimepicker, wwdbedit,
  Wwdotdot, Mask, ToolWin, tmbToolEdicaoBottom, DB, DBClient, Buttons,
  Variants, QuickRpt;


type TStatus = ( Visivel, NaoVisivel, Derivada );
type TTipoNovoReg = ( Comum, Derivadas );

type
  TfrmOS = class(TForm)
    ImageList1: TImageList;
    actmngManutencao: TActionManager;
    actPedEntrada: TAction;
    actPedSaida: TAction;
    actImpOS: TAction;
    StatusBar1: TStatusBar;
    actImpEmpenho: TAction;
    actLiberarRDV: TAction;
    actLibHoras: TAction;
    actDerivaOS: TAction;
    actImpOSNovo: TAction;
    actAbreOS: TAction;
    actFechaOS: TAction;
    actBloqueiaOS: TAction;
    actDesbloqueiaOS: TAction;
    Panel3: TPanel;
    tmbEdicaoBottom2: TtmbEdicaoBottom;
    Panel2: TPanel;
    Panel4: TPanel;
    Label10: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label1: TLabel;
    DBEdit10: TDBEdit;
    dbedtDtAbertura: TDBEdit;
    wwDBComboDlg2: TwwDBComboDlg;
    DBEdit17: TDBEdit;
    dbedtDtValidade: TDBEdit;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    grpbxDadosOS: TGroupBox;
    Label2: TLabel;
    Label6: TLabel;
    Label11: TLabel;
    Label65: TLabel;
    Label9: TLabel;
    Label4: TLabel;
    Label34: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    wwDBComboDlg1: TwwDBComboDlg;
    DBEdit12: TDBEdit;
    DBEdit19: TDBEdit;
    DBComboBox2: TDBComboBox;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    wwdbcdlgSerie: TwwDBComboDlg;
    wwdbcdlgModelo: TwwDBComboDlg;
    wwDBComboDlg6: TwwDBComboDlg;
    DBEdit6: TDBEdit;
    wwRadioGroup1: TwwRadioGroup;
    Splitter1: TSplitter;
    pgctrlOSPastas: TPageControl;
    tbshtCliente: TTabSheet;
    grpbxDadosCliente: TGroupBox;
    Label30: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit9: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    wwDBComboDlg8: TwwDBComboDlg;
    DBEdit38: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    wwDBComboDlg9: TwwDBComboDlg;
    DBEdit13: TDBEdit;
    DBEdit18: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit14: TDBEdit;
    tbshtHoras: TTabSheet;
    tmbedtListHora: TtmbEdicaoLista;
    tPanel11: tPanel1;
    dbgrdHoras: TDBGrid;
    tbshtServico: TTabSheet;
    Label33: TLabel;
    DBEdit25: TDBEdit;
    tmbEdtListServico: TtmbEdicaoLista;
    tPanel12: tPanel1;
    tbshtAssistInter: TTabSheet;
    tmbEdtListEmpenho: TtmbEdicaoLista;
    dbgrdEmpenho: TDBGrid;
    tbshtCtrlHora: TTabSheet;
    wwDBComboDlg3: TwwDBComboDlg;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    actViewNFE: TAction;
    tbshtRDVDespesas: TTabSheet;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    actViewContrato: TAction;
    BitBtn1: TBitBtn;
    TabSheet1: TTabSheet;
    DBGrid2: TDBGrid;
    tmbEdtListTubo: TtmbEdicaoLista;
    SpeedButton1: TSpeedButton;
    Label22: TLabel;
    DBEdit15: TDBEdit;
    tbshtMaterial: TTabSheet;
    dbgrdOSMaterial: TDBGrid;
    tmbEdtListMaterial: TtmbEdicaoLista;
    tPanel13: tPanel1;
    QRCompositeReport1: TQRCompositeReport;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    DBEdit24: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit21: TDBEdit;
    Label45: TLabel;
    DBEdit27: TDBEdit;
    DBEdit23: TDBEdit;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label24: TLabel;
    GroupBox2: TGroupBox;
    Label31: TLabel;
    DBEdit39: TDBEdit;
    Label32: TLabel;
    DBEdit40: TDBEdit;
    Label53: TLabel;
    DBEdit41: TDBEdit;
    TabSheet3: TTabSheet;
    grpbxDadosOrcamento: TGroupBox;
    Label46: TLabel;
    Label20: TLabel;
    Label51: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    Label29: TLabel;
    Label8: TLabel;
    wwDBComboDlg4: TwwDBComboDlg;
    DBComboBox3: TDBComboBox;
    DBEdit29: TDBEdit;
    DBEdit20: TDBEdit;
    wwDBComboDlg5: TwwDBComboDlg;
    DBEdit16: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    GroupBox3: TGroupBox;
    Label47: TLabel;
    Label52: TLabel;
    wwDBDateTimePicker5: TwwDBDateTimePicker;
    wwDBDateTimePicker6: TwwDBDateTimePicker;
    Label25: TLabel;
    DBEdit30: TDBEdit;
    Label26: TLabel;
    DBEdit31: TDBEdit;
    Label27: TLabel;
    DBEdit35: TDBEdit;
    BitBtn2: TBitBtn;
    Label55: TLabel;
    Label56: TLabel;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    Label57: TLabel;
    DBEdit45: TDBEdit;
    TabSheet5: TTabSheet;
    GroupBox4: TGroupBox;
    dbgrdOcOperacional: TDBGrid;
    DBRichEdit1: TDBRichEdit;
    tmbEdtListOcOperac: TtmbEdicaoLista;
    Splitter2: TSplitter;
    Label28: TLabel;
    DBEdit28: TDBEdit;
    Label54: TLabel;
    DBEdit42: TDBEdit;
    DBEdit47: TDBEdit;
    dbckbxOSOFFLine: TDBCheckBox;
    dbckbxOSImpressa: TDBCheckBox;
    tPanel14: tPanel1;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    ScrollBox1: TScrollBox;
    DBEdit22: TDBEdit;
    Label3: TLabel;
    dbgrdServico: TDBGrid;
    Label58: TLabel;
    DBMemo2: TDBMemo;
    DBCheckBox1: TDBCheckBox;
    DBEdit46: TDBEdit;
    Label59: TLabel;
    Label60: TLabel;
    DBEdit48: TDBEdit;
    GroupBox6: TGroupBox;
    Label64: TLabel;
    Label66: TLabel;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    DBCheckBox2: TDBCheckBox;
    DBEdit52: TDBEdit;
    CoolBar1: TCoolBar;
    ActionMainMenuBar1: TActionMainMenuBar;
    ActionToolBar1: TActionToolBar;
    Label68: TLabel;
    actDemo: TAction;
    SpeedButton4: TSpeedButton;
    procedure actPedEntradaExecute(Sender: TObject);
    procedure actPedSaidaExecute(Sender: TObject);
    procedure wwDBComboDlg5CustomDlg(Sender: TObject);
    procedure wwDBComboDlg1CustomDlg(Sender: TObject);
    procedure wwDBComboDlg6CustomDlg(Sender: TObject);
    procedure wwdbcDlgSerieCustomDlg(Sender: TObject);
    procedure wwDBComboDlg3CustomDlg(Sender: TObject);
    procedure wwDBComboDlg8CustomDlg(Sender: TObject);
    procedure wwDBComboDlg9CustomDlg(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure wwdbtesteCustomDlg(Sender: TObject);
    procedure wwdbcdlgModeloCustomDlg(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure actImpOSExecute(Sender: TObject);
    procedure actLiberarRDVExecute(Sender: TObject);
    procedure actDerivaOSExecute(Sender: TObject);
    procedure actImpEmpenhoExecute(Sender: TObject);
    procedure actAbreOSExecute(Sender: TObject);
    procedure actDesbloqueiaOSExecute(Sender: TObject);
    procedure actBloqueiaOSExecute(Sender: TObject);
    procedure actImpOSNovoExecute(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure actLibHorasExecute(Sender: TObject);
    procedure actViewNFEExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgrdEmpenhoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure actFechaOSExecute(Sender: TObject);
    procedure actViewContratoExecute(Sender: TObject);
    procedure pgctrlOSPastasChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure QRCompositeReport1AddReports(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure wwDBComboDlg4CustomDlg(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure actDemoExecute(Sender: TObject);
  private
     procedure ExecPDE;
     procedure ExecPDS;
     procedure CriarTelaPDS;
     procedure HabilitaCampoOS( Editar : TStatus );
     procedure InicializaOS;
     procedure SetDataSetEdicaoLista;
     procedure ImprimeCondContratual;
   public
     Tecnico     : Boolean;
     TipoNovoReg : TTipoNovoReg;
     function ContratoInfo(ModeloID, SerieID: String): Olevariant;
   end;

var
  frmOS      : TfrmOS;
  StatusChek : Boolean;

implementation

uses u_dmOs, u_Principal, u_PDE, u_dmEF, u_PDS,FuncoesDsi, FuncoesCliente,
  u_Cep, u_dmCP,u_dmAS, u_dmRD, u_RelOS, u_dmGSI, u_RelEmpenho, u_RelOSNovo,
  u_PadraoEdicao, u_dmPP, u_VisualizadorPadrao, u_RDVSolicitacao,
  u_HoraSolicitacao, u_VisualizaContrato, u_dmCM, u_Aparelho, u_RelOSNovoB,
  u_OSMaterial, u_OSDefeito, u_OSDemo;

{$R *.dfm}

function TfrmOS.ContratoInfo( ModeloID, SerieID  : String) : Olevariant;
var cds : TClientDataSet;
    sSQL : String;
    InfoContrato : OleVariant;
begin
 try
  sSQL := 'SELECT CM_CONTRATO.EMPRESAID,'+
          '      CM_CONTRATO.CONTRATOID,'+
          '      CM_CONTRATO.CONTRATOANTIGOID,'+
          '      CM_CONTRATOANO.ANOID,'+
          '      CM_CORRETIVA.DESCRICAO'+
          ' FROM CM_CONTRATO CM_CONTRATO, CM_CONTRATOANO, CM_CONTRATOAPAR, CM_CORRETIVA'+
          ' WHERE CM_CONTRATOANO.EMPRESAID = CM_CONTRATO.EMPRESAID'+
          '  AND CM_CONTRATOANO.CONTRATOID = CM_CONTRATO.CONTRATOID'+
          '  AND CM_CONTRATOAPAR.EMPRESAID = CM_CONTRATO.EMPRESAID'+
          '  AND CM_CONTRATOAPAR.CONTRATOID = CM_CONTRATO.CONTRATOID'+
          '  AND CM_CONTRATOAPAR.ANOID = CM_CONTRATOANO.ANOID'+
          '  AND CM_CONTRATOAPAR.CORRETIVAID = CM_CORRETIVA.CORRETIVAID(+)'+
          '  AND (CM_CONTRATO.EMPRESAID, CM_CONTRATO.CONTRATOID, CM_CONTRATOANO.ANOID) IN'+
          '      (SELECT CM_CONTRATO.EMPRESAID,'+
          '              CM_CONTRATO.CONTRATOID,'+
          '              MAX(CM_CONTRATOANO.ANOID)'+
          '         FROM CM_CONTRATO     CM_CONTRATO,'+
          '              CM_CONTRATOANO  CM_CONTRATOANO,'+
          '              CM_CONTRATOAPAR CM_CONTRATOAPAR,'+
          '              CM_TIPOCONTRATO CM_TIPOCONTRATO'+
          '        WHERE CM_CONTRATOANO.EMPRESAID = CM_CONTRATO.EMPRESAID'+
          '          AND CM_CONTRATOANO.CONTRATOID = CM_CONTRATO.CONTRATOID'+
          '          AND CM_CONTRATOAPAR.EMPRESAID = CM_CONTRATOANO.EMPRESAID'+
          '          AND CM_CONTRATOAPAR.CONTRATOID = CM_CONTRATOANO.CONTRATOID'+
          '          AND CM_CONTRATOAPAR.ANOID = CM_CONTRATOANO.ANOID'+
          '          AND CM_CONTRATOAPAR.SERIEID = '+ QuotedStr( ModeloID ) +
          '          AND CM_CONTRATOAPAR.MODELOID = ' + QuotedStr( SerieID ) +
          '        GROUP BY CM_CONTRATO.EMPRESAID, CM_CONTRATO.CONTRATOID)';

  ExecDynamicProvider( -1, sSQL, cds );

  InfoContrato := VarArrayCreate([0,1],varVariant);

  InfoContrato[0] := cds.FieldByName('CONTRATOID').AsString + '-' + cds.FieldByName('CONTRATOANTIGOID').AsString;
  InfoContrato[1] := cds.FieldByName('DESCRICAO').AsString;

  Result := InfoContrato;

  cds.Close;

 finally
  FreeAndNil( cds );
 end;
end;

procedure TfrmOS.ExecPDE;
begin
 try
  if ( dmOS.cdsOSTIPOASSIST.Value = 'I' ) and ( EmpresaAtualId <> 4 )then
     raise Exception.Create('Tipo de Assistência Técnica ( Interna ),inclusão de Pedido de Entrada não permitida.');

  if ( dmOS.cdsOSSTATUS.Value = 'F' ) and ( dmOS.cdsOSSTATUS.Value = 'B' ) then
     if not CheckSenha(dmGsi.UsuarioAtivo,'Ordem de Servico','Pedido de Entrada - Quarentena',False ) then
        raise Exception.Create('Ordem de Serviço já esta Fechada ou Bloqueada, inclusão de Pedido de Entrada não permitida.');

  if CheckSenha(dmGsi.UsuarioAtivo,'Ordem de Servico','Pedido de Entrada',True) then
     begin
      if dmOS.cdsOs.State in [dsEdit,dsInsert] then
         dmOS.cdsOs.Post;

      dmEF.cdsPde.Open;
      dmEF.cdsPDE.Insert;
      dmEF.cdsPdeOSID.Value := dmOS.cdsOsOSID.Value;

      Application.CreateForm( TfrmPDE, frmPDE );
      frmPDE.Show;
     end;

 except
 on E: Exception do
  MessageDlg( E.Message, mtInformation,[mbOk], 0);
 end;
end;

procedure TfrmOS.ExecPDS;
begin
 try
  if ( dmOS.cdsOSSTATUS.Value = 'F' ) and ( dmOS.cdsOSSTATUS.Value = 'B' ) then
     if not CheckSenha(dmGsi.UsuarioAtivo,'Ordem de Servico','Pedido de Saída - Quarentena',False ) then
        raise Exception.Create('Ordem de Serviço já esta Fechada ou Bloqueada,inclusão de Pedido de Saída não permitida.');

  if      ( dmOS.cdsOSTIPOASSIST.Value = 'E' ) or ( EmpresaAtualId = 4 ) then
          begin
           if CheckSenha(dmGsi.UsuarioAtivo,'Ordem de Servico','Pedido de Saída',True) then
              CriarTelaPDS
          end
  else if ( dmOS.cdsOSTIPOASSIST.Value = 'I' ) then
          begin
           if CheckSenha(dmGsi.UsuarioAtivo,'Ordem de Servico','Pedido de Saída para OS do Tipo Interna',True) then
              CriarTelaPDS;
          end;

 except
 on E: Exception do
  MessageDlg( E.Message, mtInformation,[mbOk], 0);
 end;
end;

procedure TfrmOS.CriarTelaPDS;
begin
 with dmEF do
 begin
  if dmOS.cdsOs.State in [dsEdit,dsInsert] then
     dmOS.cdsOs.Post;
  if not Assigned( frmPDS ) then
     begin
      cdsPds.Open;
      cdsPDS.Insert;
      cdsPdsOSID.Value := dmOS.cdsOsOSID.Value;
      frmPDS := TfrmPDS.Create( Self );
      frmPDS.Show;
     end;
 end;
end;


procedure TfrmOS.HabilitaCampoOS( Editar : TStatus );
begin
 case Editar of
  Visivel :     try
                 wwDBComboDlg2.Enabled     := True; { FilialId  }
                 wwDBComboDlg1.Enabled     := True; { TipoOS    }
                 wwDBComboDlg8.Enabled     := True; { ClienteId }
                 wwdbcdlgSerie.Enabled     := True; { SerieId   }
                 wwdbcdlgModelo.Enabled    := True; { ModeloId  }
                except
                 beep;
                end;
  NaoVisivel :  try
                 wwDBComboDlg2.Enabled     := False; { FilialId  }
                 wwDBComboDlg1.Enabled     := False; { TipoOS    }
                 wwDBComboDlg8.Enabled     := False; { ClienteId }
                 wwdbcdlgSerie.Enabled     := True; { SerieId   }
                 wwdbcdlgModelo.Enabled    := True; { ModeloId  }
                except
                  beep;
                end;
  Derivada :    try
                 wwDBComboDlg2.Enabled     := False; { FilialId  }
                 DBEdit10.Enabled          := False; { OsId      }
                 wwDBComboDlg1.Enabled     := True;  { TipoOS    }
                 wwDBComboDlg8.Enabled     := False; { ClienteId }
                except
                  beep;
                end;
 end;
end;


procedure TfrmOS.InicializaOS ;
begin
 case dmOs.cdsOs.State of
  dsInsert :  begin
               { Abilitar os campos principais da Ordem de Serviço }
               HabilitaCampoOS( Visivel );
               TipoNovoReg := Comum;
              end;
  dsEdit   :  begin
               { Abilitar os campos principais da Ordem de Serviço }
               HabilitaCampoOS( NaoVisivel );

               if ( dmOs.cdsOsSERIEID.AsString = ' ' ) or ( dmOs.cdsOsSERIEID.AsString = '' ) then
                  wwDBComboDlg8.Enabled := True; { ClienteId }
               if dmOs.cdsOsTIPOOSID.AsString <> 'D' then
                  begin
                   wwdbcdlgSerie.Enabled  := True; { SerieId  }
                   wwdbcdlgModelo.Enabled := True  { ModeloId }
                  end;
              end;
 end;
end;

procedure TfrmOS.SetDataSetEdicaoLista;
begin
 tmbEdtListHora.TtmbClassOwnerEspec     := TFrmPadraoEdicao;
 tmbEdtListHora.TtmbFormOwnerEspec      := FrmPadraoEdicao;
 tmbEdtListServico.TtmbClassOwnerEspec  := TfrmOSDefeito;
 tmbEdtListServico.TtmbFormOwnerEspec   := frmOSDefeito;

 tmbEdtListMaterial.TtmbClassOwnerEspec := TfrmOSMaterial;
 tmbEdtListMaterial.TtmbFormOwnerEspec  := frmOSMaterial;

 tmbEdtListOcOperac.TtmbClassOwnerEspec := TFrmPadraoEdicao;
 tmbEdtListOcOperac.TtmbFormOwnerEspec  := FrmPadraoEdicao;
 tmbEdtListEmpenho.TtmbClassOwnerEspec  := TFrmPadraoEdicao;
 tmbEdtListEmpenho.TtmbFormOwnerEspec   := FrmPadraoEdicao;
 tmbEdtListTubo.TtmbClassOwnerEspec     := TfrmPadraoEdicao;
 tmbEdtListTubo.TtmbFormOwnerEspec      := frmPadraoEdicao;
end;

procedure TfrmOS.actPedEntradaExecute(Sender: TObject);
var Exec : Boolean;
begin
 Exec := True;

 if dmOS.cdsOsLIBCHEFIA.AsInteger = 0 then
    if not dmOS.VerifStatusTIPOOS( Copy( dmOS.cdsOsOSID.AsString,13, 1 ), 'EXIGIRLIBERACAO' ) then
       Exec := False;

 if Exec then
    ExecPDE
end;

procedure TfrmOS.actPedSaidaExecute(Sender: TObject);
var Exec : Boolean;
begin
 Exec := True;

 if dmOS.cdsOsLIBCHEFIA.AsInteger = 0 then
    if not dmOS.VerifStatusTIPOOS( Copy( dmOS.cdsOsOSID.AsString,13, 1 ), 'EXIGIRLIBERACAO' ) then
       Exec := False;

 if Exec then
    ExecPDS
end;

procedure TfrmOS.wwDBComboDlg5CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa( dmEF.dsFilial,'FILIALID',dmOs.cdsOsFILIALID.AsString ) ;
 ExecLoockupRetorno( dmOs.cdsOs,'FILIALID','FILIALID' );
end;

procedure TfrmOS.wwDBComboDlg1CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmOs.dsTipoOS, 'TIPOOSID', dmOs.cdsOsTIPOOSID.AsString );
 ExecLoockupRetorno(dmOs.cdsOs, 'TIPOOSID', 'TIPOOSID');
end;

procedure TfrmOS.wwDBComboDlg6CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmEF.dsEntidade,'ENTIDADEID',dmOs.cdsOsTECNICOID.AsString);
 ExecLoockupRetorno(dmOs.cdsOs,'TECNICOID','ENTIDADEID');
end;

procedure TfrmOS.wwdbcDlgSerieCustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa( dmOs.dsAparelho,'SERIEID',dmOs.cdsOsSERIEID.AsString );
 ExecLoockupRetorno(dmOs.cdsOs,'SERIEID','SERIEID');
end;

procedure TfrmOS.wwDBComboDlg3CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmOS.dsLocalizacaoOS,'LOCALIZACAOOSID',dmOs.cdsOsLOCALIZACAOOSID.AsString );
 ExecLoockupRetorno(dmOs.cdsOs,'LOCALIZACAOOSID','LOCALIZACAOOSID');
end;

procedure TfrmOS.wwDBComboDlg8CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmEF.dsEntidade,'ENTIDADEID',dmOs.cdsOsCLIENTEID.AsString);
 ExecLoockupRetorno(dmOs.cdsOs,'CLIENTEID','ENTIDADEID' );
end;

procedure TfrmOS.wwDBComboDlg9CustomDlg(Sender: TObject);
begin
 frmCEP := TfrmCEP.Create( Self );
 frmCEP.ShowModal;

 try
  if Assigned( frmCEP ) then
     if frmCEP.AtualizaCEP then
        if not dmCP.cdsPesquisa.IsEmpty then
           dmEF.cdsEntidadeCEPID.Value := dmCP.cdsPesquisaCEPID.Value;
 finally
  FreeAndNil( frmCEP );
 end;

end;

procedure TfrmOS.FormCreate(Sender: TObject);
begin
 dmAS.cdsConfig.Open;
 InicializaOS;
 SetDatasetEdicaoLista;

 frmRDVSolicitacao := TfrmRDVSolicitacao.Create( Self );
 frmRDVSolicitacao.actFechar.Visible := False;
 frmRDVSolicitacao.BorderIcons := [];
 frmRDVSolicitacao.Align  := alClient;
 frmRDVSolicitacao.Parent := tbshtRDVDespesas;
 frmRDVSolicitacao.Show;

 frmHoraSolicitacao := TfrmHoraSolicitacao.Create( Self );
 frmHoraSolicitacao.actFechar.Visible := False;
 frmHoraSolicitacao.BorderIcons := [];
 frmHoraSolicitacao.Align := alClient;
 frmHoraSolicitacao.Parent := tbshtCtrlHora;
 frmHoraSolicitacao.Show;
end;

procedure TfrmOS.wwdbtesteCustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa( dmOs.dsAparelho,'SERIEID;MODELOID',dmOs.cdsOsSERIEID.AsString  +';'+ dmOs.cdsOsMODELOID.AsString);
 ExecLoockupRetorno(dmOs.cdsOs,'SERIEID;MODELOID','SERIEID;MODELOID');
end;

procedure TfrmOS.wwdbcdlgModeloCustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmPP.dsCatalogo,'MODELOID',dmOs.cdsOsMODELOID.AsString );
 ExecLoockupRetorno(dmOs.cdsOs,'MODELOID','MODELOID');
end;

procedure TfrmOS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if not FinalFormulario(dmOs.cdsOs,' da Ordem de Serviço') then
    Action := caNone
 else
    begin
     Action := caFree;
     frmOS  := Nil;

     FreeAndNil( frmRDVSolicitacao );
     FreeAndNil( frmHoraSolicitacao );
    end;
end;

procedure TfrmOS.FormKeyPress(Sender: TObject; var Key: Char);
begin
 {Habilitar a propriedade KeyPreview do Form para funcionar o Enter como Tab}
 {ENTER}
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;

procedure TfrmOS.actImpOSExecute(Sender: TObject);
begin
 Screen.Cursor := crHourGlass;
 try
  if ( dmOS.cdsOsSTATUS.Value = 'F' ) or ( dmOS.cdsOsSTATUS.Value = 'B' ) then
      begin
       MessageDlg('Ordem de Serviço fechada ou bloqueada, impressão não permitida.', mtInformation,[mbOk], 0);
       exit;
      end;

  if not dmOS.VerifStatusTIPOOS( Copy( dmOS.cdsOsOSID.AsString,13, 1 ), 'EXIGIRLIBERACAO' ) then
     exit;

  if dmOS.cdsOs.State = dsInsert then
     dmOS.cdsOs.Post;

  if CheckSenha( dmGsi.UsuarioAtivo,'Ordem de Serviço','Imprimir Ordem de Serviço',True ) then
     with dmOS do
     begin
      try
       GerarPesquisa( cdsOs, 'OS_OS.OSID = ' + QuotedStr( cdsOsOSID.AsString ) );

       frmRelOs := TfrmRelOs.Create( Nil );
       if MessageDlg('Imprimir valores de servicos na O.S. ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          frmRelOS.ImprimirValores := True;

       if cdsOsTIPOOSID.AsString = 'D' then
          ImprimeCondContratual;

       frmRelOs.QuickRep1.Preview;
      finally
       FreeAndNil( FrmRelOs.QuickRep1 );
       FreeAndNil( FrmRelOs );
      end;
     end;
 finally
  Screen.Cursor := crDefault;
 end;
end;

procedure TfrmOS.actLiberarRDVExecute(Sender: TObject);
begin
 if not Assigned( frmRDVSolicitacao ) then
    Application.CreateForm( TfrmRDVSolicitacao, frmRDVSolicitacao );

 frmRDVSolicitacao.FParamAdicional := ' AND RD_ADIANTAMENTO.OSID = ' + QuotedStr( dmOS.cdsOsOSID.Value );
 frmRDVSolicitacao.FOSID           := dmOS.cdsOsOSID.Value;

 frmRDVSolicitacao.ParentWindow := tbshtRDVDespesas.ParentWindow;
 frmRDVSolicitacao.Show;
end;

procedure TfrmOS.actDemoExecute(Sender: TObject);
begin
 GerarPesquisa( dmOS.cdsDemoCatalogo, '1=1' );


 if not Assigned( frmOSDemo ) then
    begin
     dmEF.cdsPds.Open;
     dmEF.cdsPDS.Insert;
     dmEF.cdsPdsOSID.Value := dmOS.cdsOsOSID.Value;
     frmOSDemo := TfrmOSDemo.Create( Self );
     frmOSDemo.Show;
    end
 else
    frmOSDemo.Show;
end;

procedure TfrmOS.actDerivaOSExecute(Sender: TObject);
var sSQL, OSAntiga : String;
    cds          : TClientDataSet;
    FilialId     : Integer;
begin
 if not CheckSenha( dmGsi.UsuarioAtivo,'Ordem de Servico','Gerar Ordem de Serviço Derivada',True ) then
    exit;

 cds := nil;

 sSQL := 'SELECT OS_OS.SERIEID,' + #13#10 +
         '       OS_OS.MODELOID,' + #13#10 +
         '       OS_OS.SOLICITANTE,' + #13#10 +
         '       OS_OS.SETOR,' + #13#10 +
         '       OS_OS.SERVICO,' + #13#10 +
         '       OS_OS.STATUS,' + #13#10 +
         '       OS_OS.TIPOASSIST,' + #13#10 +
         '       OS_TIPOOS.DERIVADA' + #13#10 +
         '  FROM OS_OS OS_OS,' + #13#10 +
         '       OS_TIPOOS OS_TIPOOS' + #13#10 +
         ' WHERE OS_TIPOOS.TIPOOSID(+) = OS_OS.TIPOOSID' + #13#10 +
         '  AND OS_OS.OSID = ' + QuotedStr( dmOs.cdsOsOSID.AsString ) + #13#10 +
         '  AND OS_TIPOOS.DERIVADA = 1 ';

 try
  ExecDynamicProvider( -1,sSQL,cds );

  if cds.IsEmpty then
     begin
      MessageDlg('Para este tipo de O.S. não é permitido gerar a sua derivada.', mtInformation, [mbOk], 0);
      Exit;
     end;

  // Criar nova OS derivada
  OSAntiga                  := Copy( dmOS.cdsOsOSID.AsString, 1, 12 );
  FilialId                  := dmOS.cdsOsFILIALID.AsInteger;
  TipoNovoReg               := Derivadas;
  dmOS.cdsOs.Insert;
  dmOS.cdsOsFILIALID.AsInteger   := FilialId;
  dmOS.cdsOsOSID.AsString        := OSAntiga;
  dmOS.cdsOsTIPOOSID.Clear;
  dmOS.cdsOsSERIEID.AsString     := cds.FieldByName('SERIEID').AsString;
  dmOS.cdsOsMODELOID.AsString    := cds.FieldByName('MODELOID').AsString;
  dmOS.cdsOsSOLICITANTE.AsString := cds.FieldByName('SOLICITANTE').AsString;
  dmOS.cdsOsSETOR.AsString       := cds.FieldByName('SETOR').AsString;
  dmOS.cdsOsSERVICO.AsString     := cds.FieldByName('SERVICO').AsString;
  dmOS.cdsOsSTATUS.AsString      := cds.FieldByName('STATUS').AsString;
  dmOS.cdsOsTIPOASSIST.AsString  := cds.FieldByName('TIPOASSIST').AsString;
  HabilitaCampoOS( Derivada );
 finally
  FreeAndNil( cds );
 end;
end;

procedure TfrmOS.actImpEmpenhoExecute(Sender: TObject);
var OsId   : String;
    ItemId : String;
begin
 if dmOS.cdsOSPecaDATAPECA.AsDateTime <> pCnnMain.AppServer.IServerDate then
    if not CheckSenha( dmGsi.UsuarioAtivo,'Ordem de Serviço','Re-impressão de Empenho',True ) then
       begin
        MessageDlg('Empenho já foi impresso, não é permitido imprimir novamente.', mtError, [mbOk], 0);
        Exit;
       end;

 if dmOS.cdsOsLIBCHEFIA.AsInteger = 0 then
    if not dmOS.VerifStatusTIPOOS( Copy( dmOS.cdsOsOSID.AsString,13, 1 ), 'EXIGIRLIBERACAO' ) then
       exit;

 if pgctrlOSPastas.ActivePageIndex <> 5 then
    begin
     MessageDlg('Ativar a página ( Assist. Técnica Externa (Empenho) ) para executar esta operação.', mtInformation, [mbOk], 0);
     exit;
    end;

 if not CheckSenha( dmGsi.UsuarioAtivo,'Ordem de Serviço','Imprimir Empenho',True ) then
    exit;

 OsId   := dmOS.cdsOsOSID.AsString;
 ItemId := dmOS.cdsOSPecaPECAID.AsString;

 try
  OsId    := dmOS.cdsOSPecaOSID.AsString;
  dmOS.cdsOSPeca.Filter   := 'OSID = '+ QuotedStr( dmOS.cdsOSPecaOSID.AsString )+' AND PECAID = '+ ItemId;
  dmOS.cdsOsPeca.Filtered := True;

  frmRelEmpenho  := TfrmRelEmpenho.Create( nil );
  frmRelEmpenho.QuickRep1.PrinterSettings.PrinterIndex := Impressora( 'MULT_ALM_01', False );

  frmRelEmpenho.QuickRep1.Print;
 finally
  FreeAndNil( frmRelEmpenho.QuickRep1 );
  FreeAndNil( frmRelEmpenho );
 end;

 dmOS.cdsOSPeca.Filter   := '';
 dmOS.cdsOSPeca.Filtered := False;
end;

procedure TfrmOS.actAbreOSExecute(Sender: TObject);
begin
  with dmOS do
  begin
   if CheckSenha( dmGsi.UsuarioAtivo,'Ordem de Serviço','Abrir O.S. Fechada',True ) then
      if MessageDlg( 'Confirma a Abertura da O.S. ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
         begin
          cdsOs.Edit;
          cdsOsSTATUS.AsString := 'A';
          cdsOs.Post;
          cdsOs.Edit;
         end;
  end;
end;

procedure TfrmOS.actDesbloqueiaOSExecute(Sender: TObject);
begin
 with dmOs do
 begin
  if cdsOsSTATUS.AsString = 'B' then
    if CheckSenha(dmGsi.UsuarioAtivo,'Ordem de Serviço','Desbloquear O.S.!',True) then
       begin
        cdsOs.Edit;
        cdsOsSTATUS.AsString := 'A';
        cdsOs.Post;
       end;
 end;
end;

procedure TfrmOS.actBloqueiaOSExecute(Sender: TObject);
begin
 with dmOs do
 begin
  if ( cdsOsSTATUS.AsString = 'A' )then
    if CheckSenha(dmGsi.UsuarioAtivo,'Ordem de Serviço','Bloquear OS!',True) then
       begin
        if not( cdsOs.State in [dsInsert,dsEdit ] ) then
           cdsOs.Edit;
        cdsOsSTATUS.AsString := 'B';
        cdsOs.Post;
       end;
 end;
end;

procedure TfrmOS.actImpOSNovoExecute(Sender: TObject);
var ParamPesquisa : String;
    dsState : TDataSetState;
    InfoContrato : OleVariant;
begin
 if not CheckSenha( dmGsi.UsuarioAtivo,'Ordem de Serviço','Imprimir Ordem de Serviço',True ) then
    exit;

 if dmOS.cdsOsLIBCHEFIA.AsInteger = 0 then
    if not dmOS.VerifStatusTIPOOS( Copy( dmOS.cdsOsOSID.AsString,13, 1 ), 'EXIGIRLIBERACAO' ) then
       exit;

 // if not CheckSenha( dmGsi.UsuarioAtivo,'Ordem de Serviço','Re-imprimir Ordem de Serviço',False ) then
 if dmOS.cdsOsOSIMPRESSA.AsInteger = 1 then
    MessageDlg('Atenção: Ordem de Serviço já foi impressa!',mtInformation,[mbOK], 0);

 dsState := dmOS.cdsOs.State;
 if dsState in [dsInsert,dsEdit] then
    dmOS.cdsOs.Post;

 dmAS.cdsConfig.Open;
 frmRelOSNovo  := TfrmRelOSNovo.Create( Nil );
 frmRelOSNovoB := TfrmRelOSNovoB.Create( Nil );
 try
  ParamPesquisa := 'RD_ADIANTAMENTO.OSID = ' + QuotedStr( dmOS.cdsOsOSID.AsString ) ;
  GerarPesquisa( dmRD.cdsAdiantamento, ParamPesquisa );

  GerarPesquisa( dmOS.cdsOs, 'OS_OS.OSID = ' + QuotedStr( dmOS.cdsOsOSID.AsString ) );

  frmRelOSNovo.TipoRelat  := 1;
  frmRelOSNovoB.TipoRelat := 1;

  InfoContrato := VarArrayCreate([0,1],varVariant);

  InfoContrato := ContratoInfo( dmOS.cdsOsSERIEID.AsString, dmOS.cdsOsMODELOID.AsString );

  frmRelOSNovo.qrlblContratoID.Caption := InfoContrato[0];
  frmRelOSNovo.QRLDescTermo.Caption    := InfoContrato[1];

  QRCompositeReport1.Preview;

  if MessageDlg('Impressão final da Ordem de Serviço ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
      if not ( dmOS.cdsOs.State in [dsInsert,dsEdit] ) then
         begin
          dmOS.cdsOs.Edit;
          dmOS.cdsOsOSIMPRESSA.Value := 1;
          dmOS.cdsOs.Post;
          dmOS.cdsOs.Edit;
         end;
     end
  else
    if not ( dsState in [dsInsert,dsEdit] ) then
       dmOS.cdsOs.Edit;

 finally
  FreeAndNil( frmRelOSNovo.QuickRep1 );
  FreeAndNil( frmRelOSNovo );
  FreeAndNil( frmRelOSNovoB.QuickRep1 );
  FreeAndNil( frmRelOSNovoB );
 end;
end;

procedure TfrmOS.Action1Execute(Sender: TObject);
var BookMark      : TBookMark;
    iSQL          : String;
begin
 BookMark := dmOS.cdsOs.GetBookmark;
 Screen.Cursor := crHourGlass;
 if not dmOS.cdsOs.BookmarkValid( BookMark ) then
    begin
     MessageDlg('Ordem de Serviço precisa ser gravada !', mtInformation,[mbOk], 0);
     exit
    end;

 if ( dmOS.cdsOsSTATUS.Value = 'F' ) or ( dmOS.cdsOsSTATUS.Value = 'B' ) then
     begin
      MessageDlg('Ordem de Serviço fechada ou bloqueada, impressão não permitida.', mtInformation,[mbOk], 0);
      exit;
     end;

 if CheckSenha( dmGsi.UsuarioAtivo,'Ordem de Serviço','Imprimir Ordem de Serviço',True ) then
    with dmOS do
    begin
     try
      iSQL := 'OS_OS.OSID = ' + QuotedStr( cdsOsOSID.AsString );
      GerarPesquisa( cdsOs, iSQL );

      frmRelOs := TFrmRelOs.Create( Nil );
      frmRelOs.QuickRep1.Preview;
     finally
      FreeAndNil( frmRelOs.QuickRep1 );
      FreeAndNil( frmRelOs );
     end;
    end;
end;

procedure TfrmOS.ImprimeCondContratual;
var cds  : TClientDataSet;
    iSQL : String;
begin
 iSQL     := 'SELECT'+
             '  CM_CONTRATOAPAR.EMPRESAID, CM_CONTRATOAPAR.CONTRATOID, CM_CONTRATOAPAR.ANOID,CM_CONTRATOANO.DATAFIMCONTRATO,CM_CONTRATOAPAR.SERIEID,'+
             '  CM_CONTRATOAPAR.MODELOID, CM_CONTRATOAPAR.TIPOCONTRATOID,  CM_CONTRATOAPAR.VLRMENSAL,  CM_CONTRATOAPAR.HORASESPERA,'+
             '  CM_CONTRATOAPAR.QTDPREVENTIVAS,  CM_CONTRATOAPAR.QTDPREVENTIVASUTIL,  CM_CONTRATOAPAR.BLOQUEARPREVENTIVAS,'+
             '  CM_CONTRATOAPAR.QTDCORRETIVAS,  CM_CONTRATOAPAR.QTDCORRETIVASUTIL,  CM_CONTRATOAPAR.BLOQUEARCORRETIVAS,'+
             '  CM_CONTRATOAPAR.QTDPECAS,  CM_CONTRATOAPAR.QTDPECASUTIL,  CM_CONTRATO.CANCELADO,  CM_CONTRATOANO.PERIODOCONCLUIDO,'+
             '  CM_TERMOCONTRATO.DESCRICAO, '+
             '  CM_CONTRATOAPAR.IMPRCONDCONTR '+
             '  FROM'+
             '  CM_CONTRATO CM_CONTRATO,'+
             '  CM_CONTRATOANO CM_CONTRATOANO,'+
             '  CM_CONTRATOAPAR CM_CONTRATOAPAR,'+
             '  CM_TERMOCONTRATO ' +
             ' WHERE'+
             '  CM_CONTRATO.EMPRESAID = CM_CONTRATOANO.EMPRESAID'+
             '  AND CM_CONTRATO.CONTRATOID = CM_CONTRATOANO.CONTRATOID'+
             '  AND CM_CONTRATO.EMPRESAID = CM_CONTRATOAPAR.EMPRESAID'+
             '  AND CM_CONTRATO.CONTRATOID = CM_CONTRATOAPAR.CONTRATOID'+
             '  AND CM_CONTRATO.CANCELADO = 0'+
             '  AND CM_CONTRATOANO.ANOID = CM_CONTRATOAPAR.ANOID'+
             '  AND CM_CONTRATOAPAR.SERIEID = ' + QuotedStr( dmOS.cdsOsSERIEID.AsString ) +
             '  AND CM_CONTRATOAPAR.MODELOID = ' + QuotedStr( dmOS.cdsOsMODELOID.AsString ) +
             '  AND CM_CONTRATOAPAR.TERMOCONTRATOID = CM_TERMOCONTRATO.TERMOCONTRATOID(+) '+
             '  AND NVL( CM_CONTRATOANO.PERIODOCONCLUIDO,0 ) = 0';

 try
  ExecDynamicProvider(-1, iSQL, cds );

  if not cds.IsEmpty then
     if cds.FieldByName('IMPRCONDCONTR').AsInteger = 1 then
         begin
         frmRelOS.QRLDescTermo.Enabled   := True;
         frmRelOS.QRLObsContrato.Enabled := True;
         frmRelOS.QRLDescTermo.Caption   := cds.FieldByName('DESCRICAO').AsString;
        end;
 finally
  FreeAndNil( cds );
 end;
end;

procedure TfrmOS.actLibHorasExecute(Sender: TObject);
begin
 if not Assigned( frmRDVSolicitacao ) then
    begin
     Application.CreateForm( TfrmHoraSolicitacao, frmHoraSolicitacao );
     frmHoraSolicitacao.FFiltroLiberado := False;
    end;

 frmHoraSolicitacao.FParamAdicional := ' AND RD_BANCOHORA.OSID = ' + QuotedStr( dmOS.cdsOsOSID.Value );
 frmHoraSolicitacao.FOSID           := dmOS.cdsOsOSID.Value;

 frmHoraSolicitacao.ParentWindow := tbshtRDVDespesas.ParentWindow;
 frmHoraSolicitacao.Show;
end;

procedure TfrmOS.actViewNFEExecute(Sender: TObject);
var cds, cds2 : TClientDataSet;
    iSQL, iSQL2 : String;
begin
 cds  := nil;
 cds2 := nil;
 iSQL := 'SELECT' +
         '  EF_NFS.EMPRESAID "Empresa ID",' +
         '  EF_NFS.DATAEMISSAOID "Dt.Emissao",' +
         '  EF_NFS.NFSID "NFS ID",' +
         '  EF_NFS.OSID "OSID",' +
         '  EF_NFS.ENTIDADEID "Entidade ID",' +
         '  EF_NFS.NOME "Nome Nota",' +
         '  EF_NFS.CIDADE "Cidade",' +
         '  EF_NFS.SIGLAUFID "Sigla UF",' +
         '  EF_NFS.VLRTOTALNOTA "Vlr.Total Nota",' +
         '  EF_NFSITEM.PRODUTOID "Produto ID",' +
         '  EF_NFSITEM.DESCRICAOPRODUTO "Descr. Produto",' +
         '  EF_NFSITEM.QUANTIDADE "Qtd",' +
         '  EF_NFSITEM.EMPENHO "Empenho",' +
         '  EF_NFSITEM.QUANTIDADEEMPENHO "Qtd.Empenhada",' +
         '  EF_NFSITEM.RETORNO "Retorno Empenho",' +
         '  EF_NFSITEM.QTDRETORNA "Qtd. Retorn. Empenho",' +
         '  EF_NFS.NATUREZAOPID "Nat.Op ID",' +
         '  EF_NATUREZAOP.CFOP "CFOP",' +
         '  EF_NATUREZAOP.DESCRICAOOPERACAOUSUARIO "Descr. Nat.Op."' +
         '  FROM' +
         '  EF_NFS EF_NFS,' +
         '  EF_NFSITEM EF_NFSITEM,' +
         '  EF_NATUREZAOP EF_NATUREZAOP' +
         ' WHERE' +
         '  EF_NFS.EMPRESAID = EF_NFSITEM.EMPRESAID(+)' +
         '  AND EF_NFS.NFSID = EF_NFSITEM.NFSID(+)' +
         '  AND EF_NFS.DATAEMISSAOID = EF_NFSITEM.DATAEMISSAOID(+)' +
         '  AND EF_NATUREZAOP.NATUREZAOPID(+) = EF_NFS.NATUREZAOPID' +
         '  AND EF_NFS.OSID = ' + QuotedStr( dmOS.cdsOsOSID.AsString );


 iSQL2 := 'SELECT' +
         '  EF_NFE.EMPRESAID "Empresa ID",' +
         '  EF_NFE.NFEID "NFE ID",' +
         '  EF_NFE.DATAEMISSAOID "Dt.Emissao",' +
         '  EF_NFE.OSID "OSID",' +
         '  EF_NFE.ENTIDADEID "Entidade ID",' +
         '  EF_NFE.NOME "Nome Nota",' +
         '  EF_NFE.CIDADE "Cidade",' +
         '  EF_NFE.SIGLAUFID "Sigla UF",' +
         '  EF_NFE.VLRTOTALNOTA "Vlr.Total Nota",' +
         '  EF_NFEITEM.NFSID "NFS ID",' +
         '  EF_NFEITEM.DATAEMISSAONFSID "Dt. Emissão NFS ID",' +
         '  EF_NFEITEM.PRODUTOID "Produto ID",' +
         '  EF_NFEITEM.DESCRICAOPRODUTO "Descr. Produto",' +
         '  EF_NFEITEM.QUANTIDADE "Qtd",' +
         '  EF_NFEITEM.EMPENHO "Empenho",' +
         '  EF_NFEITEM.QTDEMPENHO "Qtd.Empenhada",' +
         '  EF_NFEITEM.RETORNO "Retorno Empenho",' +
         '  EF_NFEITEM.QTDRETORNA "Qtd. Retorn. Empenho",' +
         '  EF_NFE.NATUREZAOPID "Nat.Op ID",' +
         '  EF_NATUREZAOP.CFOP "CFOP",' +
         '  EF_NATUREZAOP.DESCRICAOOPERACAOUSUARIO "Descr. Nat.Op."' +
         '  FROM' +
         '  EF_NFE EF_NFE,' +
         '  EF_NFEITEM EF_NFEITEM,' +
         '  EF_NATUREZAOP EF_NATUREZAOP' +
         ' WHERE' +
         '  EF_NFE.EMPRESAID = EF_NFEITEM.EMPRESAID(+)' +
         '  AND EF_NFE.NFSID = EF_NFEITEM.NFSID(+)' +
         '  AND EF_NFE.DATAEMISSAOID = EF_NFEITEM.DATAEMISSAOID(+)' +
         '  AND EF_NATUREZAOP.NATUREZAOPID(+) = EF_NFE.NATUREZAOPID' +
         '  AND EF_NFE.OSID = ' + QuotedStr( dmOS.cdsOsOSID.AsString );


 Screen.Cursor := crHourGlass;
 try
  ExecDynamicProvider( -1, iSQL, Cds );
  ExecDynamicProvider( -1, iSQL2, Cds2 );

  if ( not Cds.IsEmpty ) or ( not Cds2.IsEmpty )  then
     begin
      frmVisualizadorPadrao := TfrmVisualizadorPadrao.Create( Self );
      frmVisualizadorPadrao.TabSheet1.Caption     := 'Notas Fiscais de Saída';
      frmVisualizadorPadrao.TabSheet2.Caption     := 'Notas Fiscais de Entrada';
      frmVisualizadorPadrao.dsVisualizar.DataSet  := Cds;
      frmVisualizadorPadrao.dsVisualizar2.DataSet := Cds2;
      frmVisualizadorPadrao.ShowModal;
     end
  else
     MessageDlg('Não há notas fiscais atreladas nesta Ordem de Serviço', mtInformation, [mbOK], 0 );

  cds.Close;
  cds2.Close;
 finally
  Screen.Cursor := crDefault;
  FreeAndNil( Cds );
  FreeAndNil( Cds2 );
 end;
end;

procedure TfrmOS.FormShow(Sender: TObject);
var ParamSQL : String; 
begin
 // Encontrado tubo se houver
 ParamSQL := ' OS_APARELHO.SERIEID  = '+ QuotedStr( dmOS.cdsOsSERIEID.AsString  )+' AND'+
             ' OS_APARELHO.MODELOID = '+ QuotedStr( dmOS.cdsOsMODELOID.AsString );
 GerarPesquisa( dmOS.cdsAparelho, ParamSQL );

 if CheckSenha(dmGsi.UsuarioAtivo,'Ordem de Servico','Alterar Data de Abertura da O.S.',False) then
    begin
     dbedtDtAbertura.ReadOnly := False;
     dbedtDtAbertura.Color    := clWindow;
     dbedtDtValidade.ReadOnly := False;
     dbedtDtValidade.Color    := clWindow;
     dbckbxOSOFFLine.Enabled  := True;
     dbckbxOSImpressa.Enabled := True;
    end
 else
    begin
     dbedtDtAbertura.ReadOnly := True;
     dbedtDtAbertura.Color    := clInactiveBorder;
     dbedtDtValidade.ReadOnly := True;
     dbedtDtValidade.Color    := clInactiveBorder;
     dbckbxOSOFFLine.Enabled  := False;
     dbckbxOSImpressa.Enabled := False;
    end;

 if ( dmOS.cdsOsSTATUS.Value = 'F' ) or ( dmOS.cdsOsSTATUS.Value = 'E' ) or  ( not dmOS.ValidadeOS ) then
    begin
     if not CheckSenha( dmGsi.UsuarioAtivo,'Ordem de Serviço', 'Editar O.S. Fechada/Bloqueada/Expirada' , False ) then
        begin
         MessageDlg('Atenção !!!'+ #13 + 'Ordem de Serviço fechada/encerrada/expirada alterações não serão permitidas na O.S.', mtInformation, [mbOk], 0);
         grpbxDadosOS.Enabled        := False;
         tbshtCliente.Enabled        := False;
         tbshtHoras.Enabled          := False;
//         tbshtServico.Enabled        := False;
//         tbshtMaterial.Enabled       := False;
         tbshtAssistInter.Enabled    := False;
//         tbshtRDVDespesas.Enabled    := False;

         actImpOS.Enabled            := False;
         actImpEmpenho.Enabled       := False;
         actImpOSNovo.Enabled        := False;
         actDerivaOS.Enabled         := False;
        end;
    end;
end;

procedure TfrmOS.dbgrdEmpenhoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var HoldColor : TColor;
begin
 HoldColor := TDBGrid( Sender).Canvas.Brush.Color;
 if ( Column.FieldName = 'PECAID' ) or ( Column.FieldName = 'EMPRESAID' ) or
    ( Column.FieldName = 'PRODUTOID' ) or ( Column.FieldName = 'L_DESCRICAOPRODUTO' ) then
    begin
     if  dmOS.cdsOSPecaUTILIZADO.AsInteger = 0 then
         begin
          TDBGrid( Sender).Canvas.Brush.Color := clRed;
          TDBGrid( Sender).Canvas.Font.Color  := clWhite;
         end
      else
         begin
          TDBGrid( Sender).Canvas.Brush.Color := clBlue;
          TDBGrid( Sender).Canvas.Font.Color  := clWhite;
         end
    end;

 TDBGrid( Sender).DefaultDrawColumnCell(Rect, DataCol, Column, State);
 TDBGrid( Sender).Canvas.Brush.Color := HoldColor;
end;

procedure TfrmOS.actFechaOSExecute(Sender: TObject);
var cdsO : TClientDataSet;
    FecharOS : Boolean;
    sSQL : string;
begin
  FecharOS := False;

  dmOS.cdsOs.Post;

  if CheckSenha(dmGsi.UsuarioAtivo,'Ordem de Serviço','Fechar O.S.',False ) then
     FecharOS := True;

  if not FecharOS then
     begin
      if CheckSenha(dmGsi.UsuarioAtivo,'Ordem de Serviço','Fechar O.S. específica',False ) then
         begin
          cdsO := Nil;
          try
           sSQL := 'SELECT FECHESPECIFICO FROM OS_TIPOOS WHERE TIPOOSID = ' + QuotedStr( dmOS.cdsOsTIPOOSID.AsString );

           ExecDynamicProvider( -1, sSQL, cdsO );

           if cdsO.FieldByName('FECHESPECIFICO').AsInteger = 1 then
              FecharOS := True;
           cdsO.Close;
          finally
           FreeAndNil( cdsO );
          end;
         end;
      end;

  if FecharOS then
     begin
      if MessageDlg( 'Confirma o Fechamento da O.S. ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
         exit;

      dmOS.shdcnnOs.AppServer.IFecharOS( dmOS.cdsOsOSID.Value );
      dmOS.cdsOs.RefreshRecord;
      dmOS.cdsOs.Edit;
     end
  else
      MessageDlg( 'Usuário não pode fechar O.S.', mtError, [mbOK], 0 );
end;

procedure TfrmOS.actViewContratoExecute(Sender: TObject);
var ParamSQL : String;
begin
 if not Assigned( frmVisualizaContrato ) then
    Application.CreateForm( TfrmVisualizaContrato,frmVisualizaContrato );

 ParamSQL := ' 1 = 1 ';

 if dmOS.cdsOsSERIEID.AsString <> '' then
    ParamSQL := ' CM_CONTRATOAPAR.SERIEID ='+ QuotedStr( dmOS.cdsOsSERIEID.AsString ) + ' AND '+
                ' CM_CONTRATOAPAR.MODELOID ='+ QuotedStr( dmOS.cdsOsMODELOID.AsString );

 GerarPesquisa( dmCM.cdsVisualContrato,ParamSQL );
 frmVisualizaContrato.Show;
end;

procedure TfrmOS.pgctrlOSPastasChange(Sender: TObject);
var ParamPesquisa : String;
begin
 case pgctrlOSPastas.ActivePageIndex of
 4 : begin
      ParamPesquisa := 'RD_ADIANTAMENTO.OSID = ' + QuotedStr( dmOS.cdsOsOSID.AsString ) ;
      frmRDVSolicitacao.FOSID := dmOS.cdsOsOSID.AsString;
      GerarPesquisa( dmRD.cdsAdiantamento, ParamPesquisa );
     end;
 6 : begin
      ParamPesquisa := 'RD_BANCOHORA.OSID = ' + QuotedStr( dmOS.cdsOsOSID.AsString ) ;
      frmHoraSolicitacao.FOSID := dmOS.cdsOsOSID.AsString;
      GerarPesquisa( dmRD.cdsBancoHora, ParamPesquisa );
     end;
 end;
end;

procedure TfrmOS.SpeedButton1Click(Sender: TObject);
begin
 if not Assigned( frmAparelho ) then
    Application.CreateForm( TfrmAparelho, frmAparelho );
 frmAparelho.PageControl1.ActivePageIndex := 1;
 frmAparelho.Show;
end;

procedure TfrmOS.SpeedButton2Click(Sender: TObject);
begin
 dmOS.cdsOsDATAHORACHEGADA.Clear;
end;

procedure TfrmOS.SpeedButton3Click(Sender: TObject);
begin
 dmOS.cdsOsDATAHORASAIDA.Clear;
end;

procedure TfrmOS.QRCompositeReport1AddReports(Sender: TObject);
begin
  // The OnAddReports event is called by the CompositeReport
  // to add the reports to list of reports
  with QRCompositeReport1.Reports do
  begin
    Add(frmRelOSNovo.QuickRep1);
    Add(frmRelOSNovoB.QuickRep1);
  end;
end;

procedure TfrmOS.BitBtn2Click(Sender: TObject);
var dsState : TDataSetState;
begin
 dsState := dmOS.cdsOs.State;

 if dmOS.cdsOs.State in [dsInsert,dsEdit] then
    dmOS.cdsOs.Post;

 if dmOS.cdsOs.ChangeCount > 0 then
    dmOS.cdsOs.ApplyUpdates(-1);

 dmOS.shdcnnOS.AppServer.ITotalOS( dmOS.cdsOsOSID.AsString );

 dmOS.cdsOs.RefreshRecord;

 if dsState in [dsEdit,dsInsert] then
    dmOS.cdsOs.Edit;
end;

procedure TfrmOS.wwDBComboDlg4CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmEF.dsCondPagto, 'CONDPAGTOID', dmOs.cdsOsCONDPAGTOID.AsString );
 ExecLoockupRetorno(dmOs.cdsOs, 'CONDPAGTOID', 'CONDPAGTOID');
end;

end.
