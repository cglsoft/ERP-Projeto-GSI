unit u_RDVSolicitacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ActnList, XPStyleActnCtrls, ActnMan, ActnCtrls, StrUtils,
  ActnMenus, ToolWin, ComCtrls, Grids, DBGrids, ExtCtrls, PnAjustaGrid,
  fcStatusBar, Buttons, DB, tmbToolcdsExportar;

type
  TfrmRDVSolicitacao = class(TForm)
    imglstRDV: TImageList;
    actmngRDV: TActionManager;
    actAdiantamento: TAction;
    actDespExtra: TAction;
    actLiberacao: TAction;
    actFechar: TAction;
    pgctrlSolic: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dbgrdAdiantamento: TDBGrid;
    CoolBar1: TCoolBar;
    ActionToolBar1: TActionToolBar;
    tmbajtGeral: tPanel1;
    fcstbarStatus: TfcStatusBar;
    dbgrdDespesa: TDBGrid;
    actRDV: TAction;
    actImprAnalitica: TAction;
    actDeletar: TAction;
    actExportar: TAction;
    procedure pgctrlSolicChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actAdiantamentoExecute(Sender: TObject);
    procedure actDespExtraExecute(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgrdAdiantamentoDblClick(Sender: TObject);
    procedure dbgrdDespesaDblClick(Sender: TObject);
    procedure actRDVExecute(Sender: TObject);
    procedure actImprAnaliticaExecute(Sender: TObject);
    procedure actLiberacaoExecute(Sender: TObject);
    procedure actDeletarExecute(Sender: TObject);
    procedure dbgrdAdiantamentoTitleClick(Column: TColumn);
    procedure dbgrdDespesaTitleClick(Column: TColumn);
    procedure actExportarExecute(Sender: TObject);
    procedure dbgrdDespesaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    FFiltroLiberado : Boolean;
    FParamAdicional : String;
    FOSID : String;
    procedure LiberarSolic( Sender : TDBGrid );
    procedure FiltroAdiantamento;
    procedure FiltroDespesa;
  end;

var
  frmRDVSolicitacao: TfrmRDVSolicitacao;

implementation

uses u_dmRD, FuncoesCliente, u_dmGSI, u_dmEF, u_adiantamento,
  u_Despesa, u_dmAS, u_VisualizaRDV, u_ParamAdiantEfetivo,  u_Exportar;

{$R *.dfm}

procedure TfrmRDVSolicitacao.LiberarSolic( Sender : TDBGrid );
var i : Integer;
begin
 if Sender.SelectedRows.Count > 0 then
    for i := 0 to Sender.SelectedRows.Count - 1 do
    begin
     Sender.DataSource.DataSet.GotoBookmark( Pointer( Sender.SelectedRows.Items[i] ) );
     dmRD.LiberarAdiantDespesa( dmRD.cdsAdiantamentoADIANTAMENTOID.AsString );
    end
 else
    dmRD.LiberarAdiantDespesa( dmRD.cdsAdiantamentoADIANTAMENTOID.AsString );

 MessageDlg( 'Liberação do Adiantamento / Despesa ocorrida com sucesso.', mtInformation,[mbOK], 0  );
end;

procedure TfrmRDVSolicitacao.FiltroAdiantamento;
var ParamPesquisa, AdiantamentoId : String;
begin
 dmAS.cdsConfig.Open;
 AdiantamentoId := dmAS.cdsConfigADIANTAMENTOID.AsString;
 if CheckSenha( dmGsi.UsuarioAtivo,'Despesas de Viagem','Visualizar Todos Adiantamentos/Despesas', False ) then
    begin
     ParamPesquisa := 'RD_ADIANTAMENTO.LIBERADO = 0 AND RD_ADIANTAMENTO.OPERACAOID = ' + AdiantamentoId  ;
     GerarPesquisa( dmRD.cdsAdiantamento, ParamPesquisa );
    end
 else
    begin
     ParamPesquisa := 'RD_ADIANTAMENTO.LIBERADO = 0 AND RD_ADIANTAMENTO.OPERACAOID = ' + AdiantamentoId +
                      'AND RD_ADIANTAMENTO.FUNCIONARIOID IN' +
                      '(' +
                      ' SELECT EF_ENTIDADE.ENTIDADEID' +
                      '   FROM EF_ENTIDADE' +
                      '  WHERE EF_ENTIDADE.DEPARTAMENTOID IN' +
                      '        (SELECT EF_ENTIDADEDEPTO.DEPARTAMENTOID' +
                      '           FROM EF_ENTIDADEDEPTO' +
                      '          WHERE EF_ENTIDADEDEPTO.ENTIDADEID = ' + IntToStr( dmGsi.FuncionarioId )+ '))';
     GerarPesquisa( dmRD.cdsAdiantamento, ParamPesquisa );

     // Caso o usuário não tenha nenhuma visão visualizar somente o seu RDV
     if dmRD.cdsAdiantamento.IsEmpty then
        begin
         ParamPesquisa := 'RD_ADIANTAMENTO.LIBERADO = 0 AND RD_ADIANTAMENTO.OPERACAOID = ' + AdiantamentoId +
                          ' AND RD_ADIANTAMENTO.FUNCIONARIOID = ' + QuotedStr( IntToStr( dmGsi.FuncionarioId ) );
         GerarPesquisa( dmRD.cdsAdiantamento, ParamPesquisa );
        end;

    end;
 dmAS.cdsConfig.Close;
end;

procedure TfrmRDVSolicitacao.FiltroDespesa;
var ParamPesquisa, AdiantamentoId, FiltroLib : String;
begin
 dmAS.cdsConfig.Open;
 AdiantamentoId := dmAS.cdsConfigADIANTAMENTOID.AsString;
 dmRD.cdsAdiantamento.IndexName := '';

 if FFiltroLiberado then
    FiltroLib := 'RD_ADIANTAMENTO.LIBERADO = 0'
 else
    FiltroLib := '1=1';

 if CheckSenha( dmGsi.UsuarioAtivo,'Despesas de Viagem','Visualizar Todos Adiantamentos/Despesas', False ) then
    begin
     ParamPesquisa := FiltroLib + 'AND RD_ADIANTAMENTO.OPERACAOID <> ' + AdiantamentoId +
                      FParamAdicional;
     GerarPesquisa( dmRD.cdsAdiantamento, ParamPesquisa );
    end
 else
    begin
     ParamPesquisa := FiltroLib + ' AND RD_ADIANTAMENTO.OPERACAOID <> ' + AdiantamentoId +
                      FParamAdicional + ' AND RD_ADIANTAMENTO.FUNCIONARIOID IN ' +
                      '(' +
                      ' SELECT EF_ENTIDADE.ENTIDADEID' +
                      '   FROM EF_ENTIDADE' +
                      '  WHERE EF_ENTIDADE.DEPARTAMENTOID IN' +
                      '        (SELECT EF_ENTIDADEDEPTO.DEPARTAMENTOID' +
                      '           FROM EF_ENTIDADEDEPTO' +
                      '          WHERE EF_ENTIDADEDEPTO.ENTIDADEID = ' + IntToStr( dmGsi.FuncionarioId )+ '))';

     GerarPesquisa( dmRD.cdsAdiantamento, ParamPesquisa );

     // Caso o usuário não tenha nenhuma visão visualizar somente o seu RDV
     if dmRD.cdsAdiantamento.IsEmpty then
        begin
         ParamPesquisa := FiltroLib + ' AND RD_ADIANTAMENTO.OPERACAOID <> ' + AdiantamentoId +
                          FParamAdicional +
                          ' AND RD_ADIANTAMENTO.FUNCIONARIOID = ' + QuotedStr( IntToStr( dmGsi.FuncionarioId ) );
         GerarPesquisa( dmRD.cdsAdiantamento, ParamPesquisa );
        end;
    end;

 dmAS.cdsConfig.Close;
end;

procedure TfrmRDVSolicitacao.pgctrlSolicChange(Sender: TObject);
begin
 case pgctrlSolic.ActivePageIndex of
 0 : begin
      FiltroAdiantamento;
      tmbajtGeral.tmbDBGrid := dbgrdAdiantamento;
     end;
 1 : begin
      FiltroDespesa;
      tmbajtGeral.tmbDBGrid := dbgrdDespesa;
     end;
 end;
end;

procedure TfrmRDVSolicitacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin    
 Action := caFree;
 frmRDVSolicitacao := Nil;
end;

procedure TfrmRDVSolicitacao.actAdiantamentoExecute(Sender: TObject);
begin
 if pgctrlSolic.ActivePageIndex <> 0 then
    begin
     pgctrlSolic.ActivePageIndex := 0;
     pgctrlSolicChange( Sender );
    end;

 dmRD.cdsAdiantamento.Insert;

 if not Assigned( frmAdiantamento ) then
    Application.CreateForm( TfrmAdiantamento, frmAdiantamento );

 frmAdiantamento.Show;
end;

procedure TfrmRDVSolicitacao.actDespExtraExecute(Sender: TObject);
begin
 if pgctrlSolic.ActivePageIndex <> 1 then
    begin
     pgctrlSolic.ActivePageIndex := 1;
     pgctrlSolicChange( Sender );
    end;

 if not Assigned(frmDespesa ) then
    Application.CreateForm( TfrmDespesa,frmDespesa );

 frmDespesa.Show;

 dmRD.cdsAdiantamento.Insert;
 dmRD.cdsAdiantamentoTIPODESPESAOS.Value := IfThen( FOSID = '', 'S', 'C');
 dmRD.cdsAdiantamentoOSID.Value          := IfThen( FOSID = '', '', FOSID );
 dmRD.cdsAdiantamentoOPERACAOID.Clear;
end;

procedure TfrmRDVSolicitacao.actFecharExecute(Sender: TObject);
begin
 Close;
end;

procedure TfrmRDVSolicitacao.FormShow(Sender: TObject);
begin
 FiltroDespesa;
 dmAS.cdsConfig.Open;
end;

procedure TfrmRDVSolicitacao.dbgrdAdiantamentoDblClick(Sender: TObject);
begin
 dmRD.cdsAdiantamento.Edit;
 frmAdiantamento := TfrmAdiantamento.Create( Self );
 frmAdiantamento.Show;
end;

procedure TfrmRDVSolicitacao.dbgrdDespesaDblClick(Sender: TObject);
begin
 dmRD.cdsAdiantamento.Edit;
 frmDespesa := TfrmDespesa.Create( Self );
 frmDespesa.Show;
end;

procedure TfrmRDVSolicitacao.dbgrdDespesaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var HoldColor : TColor;
begin
 HoldColor := TDBGrid( Sender).Canvas.Brush.Color;
 if ( Column.FieldName = 'OPERACAOID' ) or ( Column.FieldName = 'L_OPERACAO' ) or
    ( Column.FieldName = 'DATASOLICITACAO' ) or ( Column.FieldName = 'ITEMID' ) or
    ( Column.FieldName = 'ADIANTAMENTOID' ) or ( Column.FieldName = 'LIBERADO' ) then
    begin
     if  dmRD.cdsAdiantamentoLIBERADO.AsInteger = 0 then
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

procedure TfrmRDVSolicitacao.actRDVExecute(Sender: TObject);
var ParamPesquisa : String;
    iSQL : String;
begin
 try
  iSQL    := LocateSQL( dmRD.cdsRdv.ProviderName );

  if CheckSenha( dmGsi.UsuarioAtivo,'Despesas de Viagem','Visualizar Todos Adiantamentos/Despesas', False ) then
     begin
      ParamPesquisa := iSQL;
      ExecDynamicProvider( -1, ParamPesquisa, dmRD.cdsRDVVisualiza );
     end
  else
     begin
      ParamPesquisa := iSQL +
                       ' AND RD_RDV.RDVID IN' +
                       '(' +
                       ' SELECT EF_ENTIDADE.ENTIDADEID' +
                       '   FROM EF_ENTIDADE' +
                       '  WHERE NVL( EF_ENTIDADE.DESLIGADO, 0) = 0' +
                       '        AND  EF_ENTIDADE.DEPARTAMENTOID IN' +
                       '        (SELECT EF_ENTIDADEDEPTO.DEPARTAMENTOID' +
                       '           FROM EF_ENTIDADEDEPTO' +
                       '          WHERE EF_ENTIDADEDEPTO.ENTIDADEID = ' + IntToStr( dmGsi.FuncionarioId )+ '))';

      ExecDynamicProvider( -1, ParamPesquisa, dmRD.cdsRDVVisualiza );
      // Caso o usuário não tenha nenhuma visão visualizar somente o seu RDV
      if dmRD.cdsRDVVisualiza.IsEmpty then
         begin
          ParamPesquisa := iSQL +
                           ' AND RD_RDV.RDVID = ' + IntToStr( dmGsi.FuncionarioId );
          ExecDynamicProvider( -1, ParamPesquisa, dmRD.cdsRDVVisualiza );
         end;
     end;

   frmVisualizaRDV := TfrmVisualizaRDV.Create( Self );
   frmVisualizaRDV.Show;

  except
  on E: Exception do
   MessageDlg( E.Message, mtError, [mbOK], 0 );
  end;
end;

procedure TfrmRDVSolicitacao.actImprAnaliticaExecute(Sender: TObject);
begin
 try
  frmParamAdiantEfetivos := TfrmParamAdiantEfetivos.Create(self);
  frmParamAdiantEfetivos.ShowModal;
 finally
   FreeAndNil( frmParamAdiantEfetivos );
   // Atualizar a Pesquisa;
   pgctrlSolicChange( Sender );
 end;
end;

procedure TfrmRDVSolicitacao.actLiberacaoExecute(Sender: TObject);
var BookMark : TBookmark;
begin
 // Rosana libera por questões de liberação em lote
 //if MessageDlg('Deseja liberar a despesa?',mtconfirmation,[mbyes,mbno],0) = mrNo then
 //  exit;

 BookMark  := dmRD.cdsAdiantamento.GetBookmark;

 case pgctrlSolic.ActivePageIndex of
 0 : begin
      LiberarSolic( dbgrdAdiantamento );
     end;
 1 : begin
      LiberarSolic( dbgrdDespesa );
     end;
 end;

 // Atualizar a Pesquisa;
 if FFiltroLiberado then
    pgctrlSolicChange( Sender );

 dbgrdDespesa.Repaint;

 if not dmRD.cdsAdiantamento.Eof then
    try
     dmRD.cdsAdiantamento.GotoBookmark( BookMark );
    except
     beep;
    end;
end;

procedure TfrmRDVSolicitacao.actDeletarExecute(Sender: TObject);
begin
 dmRD.cdsAdiantamento.Delete;
end;

procedure TfrmRDVSolicitacao.dbgrdAdiantamentoTitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column,  dmRD.dsAdiantamento, dbgrdAdiantamento );
end;

procedure TfrmRDVSolicitacao.dbgrdDespesaTitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column,  dmRD.dsAdiantamento, dbgrdDespesa );
end;

procedure TfrmRDVSolicitacao.actExportarExecute(Sender: TObject);
begin
  if not dmRD.cdsAdiantamento.IsEmpty then
    begin
     frmExportar := TfrmExportar.Create(nil);
     frmExportar.DataSource := dmRD.dsAdiantamento ;
     frmExportar.Show;
    end
 else
    MessageDlg('Não há dados à serem Exportados!',mtWarning, [mbok],0 );
end;

end.
