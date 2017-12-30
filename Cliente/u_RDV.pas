unit u_RDV;

interface

uses
  Windows, Messages, Forms, SysUtils, StdCtrls, tmbToolcdsExportar, Grids,
  DBGrids, PnAjustaGrid, tmbToolEdicaoLista, ComCtrls, ExtCtrls,Graphics,
  wwcheckbox, Buttons, wwdbdatetimepicker, DBCtrls, Mask, wwdbedit, Dialogs,
  Wwdotdot, Controls, ActnMan, ActnCtrls, ActnMenus, ImgList, Classes,
  ActnList, XPStyleActnCtrls, ToolWin, tmbToolEdicaoBottom, DBClient, DB,
  tmbToolEdicaoTop;

type
  TfrmRdv = class(TForm)
    actmngRdv: TActionManager;
    actImprimir: TAction;
    actanalisarExcel: TAction;
    actanalisarExcelItens: TAction;
    actMemo: TAction;
    ImageList1: TImageList;
    StatusBar: TStatusBar;
    Panel3: TPanel;
    tmbEdicaoBottom1: TtmbEdicaoBottom;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label15: TLabel;
    Label13: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    wwdbcmbFuncionarioID: TwwDBComboDlg;
    dbedtFuncionario: TDBEdit;
    wwdbdtpcktDtFech: TwwDBDateTimePicker;
    DBEdit1: TDBEdit;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    BitBtn1: TBitBtn;
    wwdbdtpcktDtMesAberto: TwwDBDateTimePicker;
    wwchbxBloqueado: TwwCheckBox;
    dbedtDtAbertura: TDBEdit;
    Splitter1: TSplitter;
    pgctrlRDVItem: TPageControl;
    TabSheet1: TTabSheet;
    tmbEdtListExtrato: TtmbEdicaoLista;
    tmbAjtgrdExtrato: tPanel1;
    dbgrdRDVItens: TDBGrid;
    TabSheet2: TTabSheet;
    DBGrid2: TDBGrid;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    btnFiltroDespesas: TBitBtn;
    TabSheet3: TTabSheet;
    tmbEdtListLancamento: TtmbEdicaoLista;
    tmbAjtgrdLanc: tPanel1;
    dbgrdPendentes: TDBGrid;
    TabSheet4: TTabSheet;
    tmbEdtListLog: TtmbEdicaoLista;
    dbgrdLog: TDBGrid;
    CoolBar1: TCoolBar;
    ActionMainMenuBar1: TActionMainMenuBar;
    actTransfIndividual: TAction;
    cdsConferencia: TClientDataSet;
    dsConferencia: TDataSource;
    tPanel11: tPanel1;
    actTransfLogIndividual: TAction;
    actExportarLog: TAction;
    Label9: TLabel;
    DBEdit2: TDBEdit;
    TabSheet5: TTabSheet;
    dbgrdExtratoUS: TDBGrid;
    tmbEdtListExtratoUS: TtmbEdicaoLista;
    tmbAjtgrdExtratoUS: tPanel1;
    Label10: TLabel;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    actAtualDtFech: TAction;
    Action1: TAction;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwdbcmbFuncionarioIDCustomDlg(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnFiltroDespesasClick(Sender: TObject);
    procedure dbgrdRDVItensDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actImprimirExecute(Sender: TObject);
    procedure actMemoExecute(Sender: TObject);
    procedure actanalisarExcelExecute(Sender: TObject);
    procedure actanalisarExcelItensExecute(Sender: TObject);
    procedure actTransfIndividualExecute(Sender: TObject);
    procedure actTransfLogIndividualExecute(Sender: TObject);
    procedure actExportarLogExecute(Sender: TObject);
    procedure dbgrdExtratoUSDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure actAtualDtFechExecute(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
  private
   procedure SetDataSetEdicaoLista;
   procedure ConsultaDespesas( EntidadeId : Integer; PeriodoInicial,PeriodoFinal : String  ) ;
    { Private declarations }
  public
    { Public declarations }
    procedure TransfereTodosEspelhos;
  end;

var
  frmRdv: TfrmRdv;

implementation

uses u_dmRD, u_PadraoEdicao,FuncoesCliente, u_dmEF, u_dmAS,
  u_ParImpRdv, u_dmGSI, u_Memo, u_Exportar;

{$R *.dfm}

procedure TfrmRdv.SetDataSetEdicaoLista;
begin
 tmbEdtListExtrato.TtmbClassOwnerEspec    := TFrmPadraoEdicao;
 tmbEdtListExtrato.TtmbFormOwnerEspec     := FrmPadraoEdicao;
 tmbEdtListExtratoUS.TtmbClassOwnerEspec  := TFrmPadraoEdicao;
 tmbEdtListExtratoUS.TtmbFormOwnerEspec   := FrmPadraoEdicao;
 tmbEdtListLancamento.TtmbClassOwnerEspec := TFrmPadraoEdicao;
 tmbEdtListLancamento.TtmbFormOwnerEspec  := FrmPadraoEdicao;
 tmbEdtListLog.TtmbClassOwnerEspec        := TFrmPadraoEdicao;
 tmbEdtListLog.TtmbFormOwnerEspec         := FrmPadraoEdicao;
end;

procedure TfrmRdv.FormCreate(Sender: TObject);
begin
 SetDataSetEdicaoLista;
 dmAS.cdsConfig.Open;

 //Setando a Data Atual para os componentes DatePickerTimer
 DateTimePicker1.DateTime := pCnnMain.AppServer.iServerDate;
 DateTimePicker2.DateTime := pCnnMain.AppServer.iServerDate;
 DateTimePicker3.DateTime := pCnnMain.AppServer.iServerDate;
 DateTimePicker4.DateTime := pCnnMain.AppServer.iServerDate;
end;

procedure TfrmRdv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if not FinalFormulario( dmRD.cdsRdv,' da Despesa  ') then
    Action := caNone
 else
    begin
     dmRD.cdsRdvItem.IndexFieldNames := '';
     cdsConferencia.Close;
     frmRdv       := Nil;
     Action       := caFree;
    end;
 Application.OnHint := nil;
 dmAS.cdsConfig.Close;
end;

procedure TfrmRdv.wwdbcmbFuncionarioIDCustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa( dmEF.dsEntidade,'ENTIDADEID', dmRD.cdsRdvRDVID.AsString );
 ExecLoockupRetorno( dmRD.cdsRdv,'RDVID','ENTIDADEID' );
end;

procedure TfrmRdv.FormShow(Sender: TObject);
begin
 tmbAjtgrdExtrato.tmbAjusta   := True;
 tmbAjtgrdExtratoUS.tmbAjusta := True;
 tmbAjtgrdLanc.tmbAjusta      := True;

 if CheckSenha(dmGsi.UsuarioAtivo,'Despesas de Viagem','Alterar dados principais',False) then
    begin
     wwdbcmbFuncionarioID.ReadOnly  := False;
     dbedtFuncionario.ReadOnly      := False;
     wwdbdtpcktDtFech.ReadOnly      := False;
     wwdbdtpcktDtMesAberto.ReadOnly := False;
     wwchbxBloqueado.ReadOnly       := False;
    end
 else
    begin
     wwdbcmbFuncionarioID.ReadOnly  := True;
     dbedtFuncionario.ReadOnly      := True;
     wwdbdtpcktDtFech.ReadOnly      := True;
     wwdbdtpcktDtMesAberto.ReadOnly := True;
     wwchbxBloqueado.ReadOnly       := True;
    end;

 dmRD.cdsRdvItem.Last;
// dmRD.cdsRDVItemUS.Refresh;
 dmRD.cdsRDVItemUS.Last;
end;

procedure TfrmRdv.BitBtn1Click(Sender: TObject);
begin
 with dmRD do
 begin
  cdsRdvItem.IndexFieldNames := 'RDVID;DATAMOVIMENTOID';
  cdsRdvItem.SetRangeStart;
  cdsRdvItem['RDVID']           := cdsRdvRDVID.Value;
  cdsRdvItem['DATAMOVIMENTOID'] := DateTimePicker1.Date;
  cdsRdvItem.SetRangeEnd;
  cdsRdvItem['RDVID']           := cdsRdvRDVID.Value;
  cdsRdvItem['DATAMOVIMENTOID'] := DateTimePicker2.Date+1;
  cdsRdvItem.ApplyRange;
 end;
end;

procedure TfrmRdv.ConsultaDespesas( EntidadeId : Integer; PeriodoInicial,PeriodoFinal : String  );
var iSQL : String;
begin
 try
  cdsConferencia.Close;
  iSQL := 'SELECT DISTINCT '+
                  'OS_OSDESPESA.OSID, '+
                  'OS_OSDESPESA.DATADESPESA, '+
                  'OS_TECNICO.NOME, '+
                  'OS_OSDESPESA.TECNICOID, '+
                  'OS_OSDESPESA.OPERACAOID, '+
                  'OS_OSDESPESA.VLRDESPESA, '+
                  'OS_OSDESPESA.HISTDESPESA, '+
                  'OS_OSDESPESA.KMSAIDA, '+
                  'OS_OSDESPESA.KMENTRADA, '+
                  'OS_OSDESPESA.LIBCHEFIA, '+
                  'OS_OSDESPESA.NOMELIBCHEFIA, '+
                  'OS_OSDESPESA.USUARIO, '+
                  'EF_ENTIDADE.CPFCNPJ, '+
                  'EF_ENTIDADE.ENTIDADEID '+
                 'FROM '+
                  'OS_OSDESPESA, '+
                  'OS_TECNICO, '+
                  'EF_ENTIDADE '+
                 'WHERE '+
                  'OS_TECNICO.TECNICOID = OS_OSDESPESA.TECNICOID '+
                  'AND EF_ENTIDADE.CPFCNPJ = OS_TECNICO.CPF_CNPJ '+
                  'AND EF_ENTIDADE.ENTIDADEID = '+ IntToStr( EntidadeId )+' '+
                  'AND OS_OSDESPESA.DATADESPESA BETWEEN '+ QuotedStr( PeriodoInicial ) +' '+
                  'AND '+ QuotedStr( PeriodoFinal ) +' '+
                 'ORDER BY '+
                  'OS_OSDESPESA.OSID, '+
                  'OS_OSDESPESA.DATADESPESA, '+
                  'OS_OSDESPESA.TECNICOID, '+
                  'OS_OSDESPESA.OPERACAOID, '+
                  'OS_OSDESPESA.VLRDESPESA, '+
                  'OS_OSDESPESA.HISTDESPESA, '+
                  'OS_OSDESPESA.KMSAIDA, '+
                  'OS_OSDESPESA.KMENTRADA, '+
                  'OS_OSDESPESA.LIBCHEFIA, '+
                  'OS_OSDESPESA.NOMELIBCHEFIA, '+
                  'OS_OSDESPESA.USUARIO, '+
                  'EF_ENTIDADE.CPFCNPJ ';

 ExecDynamicProvider(-1, iSQL, cdsConferencia );

 except
  on E : Exception do
     raise Exception.Create(E.message);
 end;
end;


procedure TfrmRdv.btnFiltroDespesasClick(Sender: TObject);
begin
 ConsultaDespesas( dmRD.cdsRdvRDVID.AsInteger,DateToStr( DateTimePicker3.DateTime ),DateToStr( DateTimePicker4.DateTime ) );
end;

procedure TfrmRdv.dbgrdRDVItensDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var HoldColor : TColor;
begin
 HoldColor := TDBGrid( Sender).Canvas.Brush.Color;

 if ( dmRD.cdsRdvItemOPERACAOID.Value = 61 ) then
     TDBGrid( Sender ).Canvas.Font.Style := [ fsBold ];

 if ( dmRD.cdsRdvItemOPERACAOID.Value = 62 ) then
     TDBGrid( Sender ).Canvas.Font.Style := [ fsItalic,fsBold ];

 if ( Column.FieldName = 'OPERACAOID' ) or ( Column.FieldName = 'L_OPERACAO' ) or
    ( Column.FieldName = 'DATADOC' ) or ( Column.FieldName = 'ITEMID' ) or
    ( Column.FieldName = 'VALOR' ) OR ( Column.FieldName = 'USUARIO' ) then
    begin
     if dmRD.cdsRdvItemL_OPERACAO.Value = 'D' then
        begin
         TDBGrid( Sender).Canvas.Brush.Color := clRed;
         TDBGrid( Sender).Canvas.Font.Color  := clWhite;
        end
     else
        begin
         TDBGrid( Sender).Canvas.Brush.Color := clBlue;
         TDBGrid( Sender).Canvas.Font.Color  := clWhite;
        end;
     end;

 if ( dmAS.cdsConfigMEMOPAGARID.Value = dmRD.cdsRdvItemOPERACAOID.Value ) or
    ( dmAS.cdsConfigMEMORECEBERID.Value = dmRD.cdsRdvItemOPERACAOID.Value ) or
    ( dmRD.cdsRdvItemOPERACAOID.Value = 42 ) then
    if ( Column.FieldName = 'DATAMOVIMENTOID' ) or ( Column.FieldName = 'L_OPERACAO' ) or
       ( Column.FieldName = 'OPERACAOID' ) or ( Column.FieldName = 'ITEMID' )
       or ( Column.FieldName = 'DATADOC' ) or ( Column.FieldName = 'HISTORICO' ) then
        begin
         TDBGrid( Sender).Canvas.Brush.Color := clGreen;
         TDBGrid( Sender).Canvas.Font.Color  := clWhite;
        end;

 if ( Column.FieldName = 'VLRSALDO' ) then
    begin
     if dmRD.cdsRdvItemVLRSALDO.Value < 0 then
        begin
         TDBGrid( Sender).Canvas.Brush.Color := clRed;
         TDBGrid( Sender).Canvas.Font.Color  := clWhite;
        end
     else
        begin
         dbgrdRDVItens.Canvas.Brush.Color := clBlue;
         dbgrdRDVItens.Canvas.Font.Color  := clWhite;
        end;
    end;

 TDBGrid( Sender).DefaultDrawColumnCell(Rect, DataCol, Column, State);
 TDBGrid( Sender).Canvas.Brush.Color := HoldColor;
end;

procedure TfrmRdv.actImprimirExecute(Sender: TObject);
begin
 frmParImpRDV := TfrmParImpRDV.Create(self);

 case pgctrlRDVItem.ActivePageIndex of
 0 : frmParImpRDV.FTipoMoeda := 'R';
 1 : frmParImpRDV.FTipoMoeda := 'D';
 else
     frmParImpRDV.FTipoMoeda := 'R';
 end;

 frmParImpRDV.Showmodal;
end;

procedure TfrmRdv.Action1Execute(Sender: TObject);
begin
 if not dmRD.cdsRdvItem.IsEmpty then
    begin
     frmExportar := TfrmExportar.Create(nil);
     frmExportar.DataSource := dmRD.dsRDVItemUS;
     frmExportar.Show;
    end
 else
    MessageDlg('Não há dados a serem Exportados!',mtWarning, [mbok],0 );

end;

procedure TfrmRdv.actMemoExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo, 'Despesas de Viagem','Memo - Acerto de Caixa', True) then
    begin
     dmRD.cdsMemo.Open;
     dmRD.cdsMemo.Insert;

     case pgctrlRDVItem.ActivePageIndex of
     0 : dmRD.cdsMemoTIPOMOEDA.Value := 'R';
     1 : dmRD.cdsMemoTIPOMOEDA.Value := 'D';
     else
         dmRD.cdsMemoTIPOMOEDA.Value := 'R';
     end;

     case dmRD.cdsMemoTIPOMOEDA.Value[1] of
     'R'  : begin
             if dmRD.cdsRdvItemVLRSALDO.Value < 0 then
                dmRD.cdsMemoVLRMEMO.Value := ( dmRD.cdsRdvItemVLRSALDO.Value * - 1 )
             else
                dmRD.cdsMemoVLRMEMO.Value := dmRD.cdsRdvItemVLRSALDO.Value;
            end;
     'D'  : begin
             if dmRD.cdsRDVItemUSVLRSALDO.Value < 0 then
                dmRD.cdsMemoVLRMEMO.Value := ( dmRD.cdsRdvItemUSVLRSALDO.Value * - 1 )
             else
                dmRD.cdsMemoVLRMEMO.Value := dmRD.cdsRdvItemUSVLRSALDO.Value;
            end;
     end;

     Application.CreateForm( TfrmMemo,frmMemo );
     frmMemo.ShowModal;

     dmRD.cdsMemo.Close;
    end;
end;

procedure TfrmRdv.actanalisarExcelExecute(Sender: TObject);
begin
 if not dmRD.cdsRdv.IsEmpty then
    begin
     frmExportar := TfrmExportar.Create(nil);
     frmExportar.DataSource := dmRD.dsRdv;
     frmExportar.Show;
    end
 else
    MessageDlg('Não há dados a serem Exportados!',mtWarning, [mbok],0 );
end;

procedure TfrmRdv.actanalisarExcelItensExecute(Sender: TObject);
begin
 if not dmRD.cdsRdvItem.IsEmpty then
    begin
     frmExportar := TfrmExportar.Create(nil);
     frmExportar.DataSource := dmRD.dsRdvItem;
     frmExportar.Show;
    end
 else
    MessageDlg('Não há dados a serem Exportados!',mtWarning, [mbok],0 );
end;

procedure TfrmRdv.actTransfIndividualExecute(Sender: TObject);
begin
 if not CheckSenha(dmGsi.UsuarioAtivo,'Despesas de Viagem','Transferência do espelho do RDV',True) then
    exit;

 Screen.Cursor := crHourGlass;
 try
// if dmRD.cdsRdv.ChangeCount > 0 then
     dmRD.cdsRdv.ApplyUpdates(-1);

  if dmRD.shdcnnRD.AppServer.ITransfEspelho( dmRD.cdsRdvRDVID.AsString, dmGsi.UsuarioAtivo, False ) = 1 then
     MessageDlg('A data do mês em aberto é diferente dos espelhos. Não é permitido transferir os espelhos.' +
     #13 + 'Informar o departamento responsável para as devidas alterações' ,mtInformation,[mbOK],0)
  else
     MessageDlg('Espelhos Transferidos com Sucesso!',mtInformation,[mbOK],0);

 finally
  Screen.Cursor := crDefault;
  dmRD.cdsRdv.Refresh;
  dmRD.cdsRdv.Edit;
 end;

end;

procedure TfrmRdv.TransfereTodosEspelhos;
begin
 Screen.Cursor := crHourGlass;
 try
  if dmRD.cdsRdv.ChangeCount > 0 then
     dmRD.cdsRdv.ApplyUpdates(-1);

  if dmRD.shdcnnRD.AppServer.ITransfEspelho( dmRD.cdsRdvRDVID.AsString, dmGsi.UsuarioAtivo, True ) = 1 then
     MessageDlg('A data do mês em aberto é diferente dos espelhos. Não é permitido transferir os espelhos.' +
     #13 + 'Informar o departamento responsável para as devidas alterações' ,mtInformation,[mbOK],0)
  else
     MessageDlg('Espelhos Transferidos com Sucesso!',mtInformation,[mbOK],0);

 finally
  Screen.Cursor := crDefault;
  dmRD.cdsRdv.Refresh;
  dmRD.cdsRdv.Edit;
 end;
end;

procedure TfrmRdv.actTransfLogIndividualExecute(Sender: TObject);
begin
 if not CheckSenha(dmGsi.UsuarioAtivo,'Despesas de Viagem','Transferência do Log do RDV',True) then
    exit;

 Screen.Cursor := crHourGlass;
 try
  dmRD.shdcnnRD.AppServer.ITransfLog( dmRD.cdsRdvRDVID.AsString,
                                      dmRD.cdsRdvLogDATAMOVIMENTOID.AsString,
                                      dmRD.cdsRdvLogITEMID.AsString );

  MessageDlg('Espelhos Transferidos com Sucesso!',mtInformation,[mbOK],0);

 finally
  Screen.Cursor := crDefault;
  dmRD.cdsRdv.Refresh;
  dmRD.cdsRdv.Edit;
 end;
end;

procedure TfrmRdv.actExportarLogExecute(Sender: TObject);
begin
 if not dmRD.cdsRdvLog.IsEmpty then
    begin
     frmExportar := TfrmExportar.Create(nil);
     frmExportar.DataSource := dmRD.dsRdvLog;
     frmExportar.Show;
    end
 else
    MessageDlg('Não há dados a serem Exportados!',mtWarning, [mbok],0 );
end;

procedure TfrmRdv.dbgrdExtratoUSDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var HoldColor : TColor;
begin
 HoldColor := TDBGrid( Sender).Canvas.Brush.Color;
 if ( Column.FieldName = 'OPERACAOID' ) or ( Column.FieldName = 'L_OPERACAO' ) or
    ( Column.FieldName = 'DATADOC' ) or ( Column.FieldName = 'ITEMID' ) or
    ( Column.FieldName = 'VALOR' ) OR ( Column.FieldName = 'USUARIO' ) then
    begin
     if dmRD.cdsRdvItemUSL_OPERACAO.Value = 'D' then
        begin
         TDBGrid( Sender).Canvas.Brush.Color := clRed;
         TDBGrid( Sender).Canvas.Font.Color  := clWhite;
        end
     else
        begin
         TDBGrid( Sender).Canvas.Brush.Color := clBlue;
         TDBGrid( Sender).Canvas.Font.Color  := clWhite;
        end;
     end;

 if ( dmAS.cdsConfigMEMOPAGARID.Value = dmRD.cdsRdvItemUSOPERACAOID.Value ) or
    ( dmAS.cdsConfigMEMORECEBERID.Value = dmRD.cdsRdvItemUSOPERACAOID.Value ) or
    ( dmRD.cdsRdvItemUSOPERACAOID.Value = 42 ) then
    if ( Column.FieldName = 'DATAMOVIMENTOID' ) or ( Column.FieldName = 'L_OPERACAO' ) or
       ( Column.FieldName = 'OPERACAOID' ) or ( Column.FieldName = 'ITEMID' )
       or ( Column.FieldName = 'DATADOC' ) or ( Column.FieldName = 'HISTORICO' ) then
        begin
         TDBGrid( Sender).Canvas.Brush.Color := clGreen;
         TDBGrid( Sender).Canvas.Font.Color  := clWhite;
        end;

 if ( Column.FieldName = 'VLRSALDO' ) then
    begin
     if dmRD.cdsRdvItemUSVLRSALDO.Value < 0 then
        begin
         TDBGrid( Sender).Canvas.Brush.Color := clRed;
         TDBGrid( Sender).Canvas.Font.Color  := clWhite;
        end
     else
        begin
         dbgrdRDVItens.Canvas.Brush.Color := clBlue;
         dbgrdRDVItens.Canvas.Font.Color  := clWhite;
        end;
    end;

 TDBGrid( Sender).DefaultDrawColumnCell(Rect, DataCol, Column, State);
 TDBGrid( Sender).Canvas.Brush.Color := HoldColor;

end;

procedure TfrmRdv.SpeedButton1Click(Sender: TObject);
begin
 if CheckSenha(dmGsi.UsuarioAtivo,'Despesa de Viagem','Alterar Data de Fechamento', true ) then
    begin
     dbgrdRDVItens.Options  := [dgEditing, dgTitles, dgIndicator,dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit ];
     dbgrdRDVItens.ReadOnly := false;
     dmRD.cdsRdvItem.Edit;
     dmRD.cdsRdvItemDATAFECHAMENTO.Clear;
    end;
end;

procedure TfrmRdv.SpeedButton2Click(Sender: TObject);
begin
 if CheckSenha(dmGsi.UsuarioAtivo,'Despesa de Viagem','Alterar Data de Fechamento', true ) then
    begin
     dbgrdExtratoUS.Options  := [dgEditing, dgTitles, dgIndicator,dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit ];
     dbgrdExtratoUS.ReadOnly := false;
     dmRD.cdsRDVItemUS.Edit;
     dmRD.cdsRDVItemUSDATAFECHAMENTO.Clear;
    end;
end;

procedure TfrmRdv.actAtualDtFechExecute(Sender: TObject);
var sSQL, InputString : String;
begin
 if CheckSenha(dmGsi.UsuarioAtivo,'Despesas de Viagem','Alterar data fechamento',False) then
    begin
     InputString := InputBox( 'Informe a data para cancelamento do fechamento ?',
                               'RDV ' + dmRD.cdsRdvL_NOMEFUNCIONARIO.Value,
                               DateToStr( Date ) );

     sSQL :=  'UPDATE RD_RDVITEM' + #13#10 +
              '   SET RD_RDVITEM.DATAFECHAMENTO = NULL' + #13#10 +
              ' WHERE DATAFECHAMENTO = ' + QuotedStr( InputString ) +
              '   AND RDVID = ' +  dmRD.cdsRdvRDVID.AsString;

      ExecDML( sSQL );
      dmRD.cdsRdv.Refresh;
    end;
end;

end.
