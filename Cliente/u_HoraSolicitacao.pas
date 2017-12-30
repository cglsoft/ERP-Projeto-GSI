unit u_HoraSolicitacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ActnList, XPStyleActnCtrls, ActnMan, ActnCtrls,
  ActnMenus, ToolWin, ComCtrls, Grids, DBGrids, ExtCtrls, PnAjustaGrid,
  fcStatusBar, Buttons, DB, tmbToolcdsExportar, DBClient;

type
  TfrmHoraSolicitacao = class(TForm)
    imglstRDV: TImageList;
    actmngRDV: TActionManager;
    actDespExtra: TAction;
    actLiberacao: TAction;
    actFechar: TAction;
    pgctrlSolic: TPageControl;
    TabSheet2: TTabSheet;
    fcstbarStatus: TfcStatusBar;
    actHora: TAction;
    actHoraPendente: TAction;
    actDeletar: TAction;
    actExportar: TAction;
    actHoraMensal: TAction;
    cdsRelBancoHoras: TClientDataSet;
    dsRelBancoHoras: TDataSource;
    dbgrdBancoHora: TDBGrid;
    CoolBar1: TCoolBar;
    ActionMainMenuBar1: TActionMainMenuBar;
    tmbAjusta: tPanel1;
    actHoraApuracao: TAction;
    actMultiLanc: TAction;
    actHoraCompensada: TAction;
    procedure pgctrlSolicChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actDespExtraExecute(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgrdBancoHoraDblClick(Sender: TObject);
    procedure actHoraExecute(Sender: TObject);
    procedure actLiberacaoExecute(Sender: TObject);
    procedure actDeletarExecute(Sender: TObject);
    procedure actExportarExecute(Sender: TObject);
    procedure dbgrdBancoHoraTitleClick(Column: TColumn);
    procedure actHoraPendenteExecute(Sender: TObject);
    procedure actHoraMensalExecute(Sender: TObject);
    procedure tmbAjustaClick(Sender: TObject);
    procedure actHoraApuracaoExecute(Sender: TObject);
    procedure actMultiLancExecute(Sender: TObject);
    procedure actHoraCompensadaExecute(Sender: TObject);
    procedure dbgrdBancoHoraDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    FFiltroLiberado : Boolean;
    FParamAdicional : String;
    FOSID : String;
    procedure LiberarSolic( Sender : TDBGrid );
    procedure FiltroBancoHora;
  end;

var
  frmHoraSolicitacao: TfrmHoraSolicitacao;

implementation

uses u_dmRD, FuncoesCliente, u_dmGSI, u_dmEF, u_dmAS, u_VisualizaRDV,
  u_ParamAdiantEfetivo, StrUtils, u_BancoHoras, u_Exportar, DateUtils,
   u_RelHorasPendentes, u_parImpHora, u_BancoHorasMulti;

{$R *.dfm}

procedure TfrmHoraSolicitacao.LiberarSolic( Sender : TDBGrid );
var i : Integer;
begin
 if Sender.SelectedRows.Count > 0 then
    for i := 0 to Sender.SelectedRows.Count - 1 do
    begin
     Sender.DataSource.DataSet.GotoBookmark( Pointer( Sender.SelectedRows.Items[i] ) );
     dmRD.LiberarBancoHoras( dmRD.cdsBancoHoraBancoHoraID.AsString );
    end
 else
    dmRD.LiberarBancoHoras( dmRD.cdsBancoHoraBancoHoraID.AsString );

 MessageDlg( 'Liberação do Item do Banco de Horas ocorrida com sucesso.', mtInformation,[mbOK], 0  );
end;

procedure TfrmHoraSolicitacao.FiltroBancoHora;
var ParamPesquisa, FiltroLib : String;
begin
 dmAS.cdsConfig.Open;

 if FFiltroLiberado then
    FiltroLib := 'RD_BANCOHORA.LIBERADO = 0'
 else
    FiltroLib := '1=1';

 if CheckSenha( dmGsi.UsuarioAtivo,'Banco de Horas','Visualizar Todos Bancos de Horas', False ) then
    begin
     ParamPesquisa := FiltroLib +
                      FParamAdicional;
     GerarPesquisa( dmRD.cdsBancoHora, ParamPesquisa );
    end
 else
    begin
     ParamPesquisa := FiltroLib +
                      FParamAdicional +
                      ' AND RD_BANCOHORA.FUNCIONARIOID IN' +
                      '(' +
                      ' SELECT EF_ENTIDADE.ENTIDADEID' +
                      '   FROM EF_ENTIDADE' +
                      '  WHERE EF_ENTIDADE.DEPARTAMENTOID IN' +
                      '        (SELECT EF_ENTIDADEDEPTO.DEPARTAMENTOID' +
                      '           FROM EF_ENTIDADEDEPTO' +
                      '          WHERE EF_ENTIDADEDEPTO.ENTIDADEID = ' + IntToStr( dmGsi.FuncionarioId )+ '))';
     GerarPesquisa( dmRD.cdsBancoHora, ParamPesquisa );

     // Caso o usuário não tenha nenhuma visão visualizar somente o seu RDV
     if dmRD.cdsBancoHora.IsEmpty then
        begin
         ParamPesquisa := FiltroLib +
                          FParamAdicional +
                          ' AND RD_BANCOHORA.FUNCIONARIOID = ' + QuotedStr( IntToStr( dmGsi.FuncionarioId ) );
         GerarPesquisa( dmRD.cdsBancoHora, ParamPesquisa );
        end;
    end;

 dmAS.cdsConfig.Close;
end;

procedure TfrmHoraSolicitacao.pgctrlSolicChange(Sender: TObject);
begin
 FiltroBancoHora;
end;

procedure TfrmHoraSolicitacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 frmHoraSolicitacao := Nil;
end;

procedure TfrmHoraSolicitacao.actDespExtraExecute(Sender: TObject);
begin
 if not Assigned(frmBancoHora) then
    begin
     Application.CreateForm( TfrmBancoHora,frmBancoHora );

     frmBancoHora.Show;

     dmRD.cdsBancoHora.Insert;
     dmRD.cdsBancoHoraTIPODESPESAOS.Value := IfThen( FOSID = '', 'S', 'C');
     dmRD.cdsBancoHoraOSID.Value          := IfThen( FOSID = '', '', FOSID );
    end;
end;

procedure TfrmHoraSolicitacao.actFecharExecute(Sender: TObject);
begin
 Close;
end;

procedure TfrmHoraSolicitacao.FormShow(Sender: TObject);
begin
 FiltroBancoHora;
 dmAS.cdsConfig.Open;
end;

procedure TfrmHoraSolicitacao.dbgrdBancoHoraDblClick(Sender: TObject);
begin
 dmRD.cdsBancoHora.Edit;

 if dmRD.cdsBancoHoraMULTILANCAMENTO.AsInteger = 0 then
    begin
     if not Assigned( frmBancoHora ) then
        Application.CreateForm( TfrmBancoHora, frmBancoHora );
     frmBancoHora.Show;
    end
 else
     begin
      if not CheckSenha( dmGsi.UsuarioAtivo,'Banco de Horas','Multi Lançamentos de Banco de Horas', True ) then
         exit;

      if not Assigned( frmBancoHoraMulti ) then
         Application.CreateForm( TfrmBancoHoraMulti, frmBancoHoraMulti );
      frmBancoHoraMulti.Show;
    end
end;

procedure TfrmHoraSolicitacao.dbgrdBancoHoraDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var HoldColor : TColor;
begin
 HoldColor := TDBGrid( Sender).Canvas.Brush.Color;
 if ( Column.FieldName = 'OPERACAOID' ) or ( Column.FieldName = 'L_OPERACAO' ) or
    ( Column.FieldName = 'DATASOLICITACAO' ) or ( Column.FieldName = 'ITEMID' ) or
    ( Column.FieldName = 'BANCOHORAID' ) or ( Column.FieldName = 'LIBERADO' ) then
    begin
     if  dmRD.cdsBancoHoraLIBERADO.AsInteger = 0 then
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

procedure TfrmHoraSolicitacao.actHoraApuracaoExecute(Sender: TObject);
begin
 if not Assigned( frmParImpHora ) then
    frmParImpHora := TfrmParImpHora.Create(nil);
 frmParImpHora.RelatorioId := 4;
 frmParImpHora.ShowModal;
end;

procedure TfrmHoraSolicitacao.actHoraCompensadaExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo,'Banco de Horas','Relatório de Horas Compensadas', True ) then
    begin
     if not Assigned( frmParImpHora ) then
        frmParImpHora := TfrmParImpHora.Create(nil);
     frmParImpHora.RelatorioId := 5;
     frmParImpHora.ShowModal;
    end;
end;

procedure TfrmHoraSolicitacao.actHoraExecute(Sender: TObject);
var ParamPesquisa : String;
    iSQL : String;
begin
 try
  iSQL    := LocateSQL( dmRD.cdsHora.ProviderName );

  if CheckSenha( dmGsi.UsuarioAtivo,'Banco de Horas','Visualizar Todos Adiantamentos/Despesas', False ) then
     begin
      ParamPesquisa := iSQL;
      ExecDynamicProvider( -1, ParamPesquisa, dmRD.cdsHoraVisualiza );
     end
  else
     begin
      ParamPesquisa := iSQL +
                       ' AND RD_HORA.HORAID IN' +
                       '(' +
                       ' SELECT EF_ENTIDADE.ENTIDADEID' +
                       '   FROM EF_ENTIDADE' +
                       '  WHERE NVL( EF_ENTIDADE.DESLIGADO, 0) = 0' +
                       '        AND EF_ENTIDADE.DEPARTAMENTOID IN' +
                       '        (SELECT EF_ENTIDADEDEPTO.DEPARTAMENTOID' +
                       '           FROM EF_ENTIDADEDEPTO' +
                       '          WHERE EF_ENTIDADEDEPTO.ENTIDADEID = ' + IntToStr( dmGsi.FuncionarioId )+ '))';

      ExecDynamicProvider( -1, ParamPesquisa, dmRD.cdsHoraVisualiza );
      // Caso o usuário não tenha nenhuma visão visualizar somente o seu RDV
      if dmRD.cdsHoraVisualiza.IsEmpty then
         begin
          ParamPesquisa := iSQL +
                           ' AND RD_HORA.HORAID = ' + IntToStr( dmGsi.FuncionarioId );
          ExecDynamicProvider( -1, ParamPesquisa, dmRD.cdsHoraVisualiza );
         end;
     end;

   frmVisualizaRDV := TfrmVisualizaRDV.Create( Self );
   frmVisualizaRDV.pgctrlVisualizar.ActivePageIndex := 1;
   frmVisualizaRDV.Show;

  except
  on E: Exception do
   MessageDlg( E.Message, mtError, [mbOK], 0 );
  end;
end;

procedure TfrmHoraSolicitacao.actLiberacaoExecute(Sender: TObject);
var BookMark : TBookmark;
begin
 BookMark  := dmRD.cdsBancoHora.GetBookmark;

 LiberarSolic( dbgrdBancoHora );

 // Atualizar a Pesquisa;
 if FFiltroLiberado then
    pgctrlSolicChange( Sender );

 dbgrdBancoHora.Repaint;

 if not dmRD.cdsBancoHora.Eof then
    try
     dmRD.cdsBancoHora.GotoBookmark( BookMark );
    except
     beep;
    end; 
end;

procedure TfrmHoraSolicitacao.actMultiLancExecute(Sender: TObject);
begin
 if not Assigned(frmBancoHoraMulti) then
    begin
     Application.CreateForm( TfrmBancoHoraMulti,frmBancoHoraMulti );

     frmBancoHoraMulti.Show;

     dmRD.cdsBancoHora.Insert;
     dmRD.cdsBancoHoraMULTILANCAMENTO.AsInteger := 1;
    end;
end;

procedure TfrmHoraSolicitacao.actDeletarExecute(Sender: TObject);
begin
 if MessageDlg('Deseja excluir este item?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    dmRD.cdsBancoHora.Delete;
end;

procedure TfrmHoraSolicitacao.actExportarExecute(Sender: TObject);
begin
 if not dmRD.cdsBancoHora.IsEmpty then
    begin
     frmExportar := TfrmExportar.Create(nil);
     frmExportar.DataSource := dmRD.dsBancoHora;
     frmExportar.Show;
    end
 else
    MessageDlg('Não há dados a serem Exportados!',mtWarning, [mbok],0 );
end;

procedure TfrmHoraSolicitacao.dbgrdBancoHoraTitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column,  dmRD.dsBancoHora, dbgrdBancoHora );
end;

procedure TfrmHoraSolicitacao.actHoraPendenteExecute(Sender: TObject);
begin
 if not Assigned( frmParImpHora ) then
    frmParImpHora := TfrmParImpHora.Create(nil);
 frmParImpHora.RelatorioId := 2;
 frmParImpHora.ShowModal;
end;

procedure TfrmHoraSolicitacao.actHoraMensalExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo,'Banco de Horas','Relatório de Banco de Horas Mensal / Apuração', True ) then
    begin
     if not Assigned( frmParImpHora ) then
        frmParImpHora := TfrmParImpHora.Create(nil);
     frmParImpHora.RelatorioId := 3;
     frmParImpHora.ShowModal;
    end;
end;

procedure TfrmHoraSolicitacao.tmbAjustaClick(Sender: TObject);
begin
 tmbAjusta.tmbAjusta := true;
end;

end.
