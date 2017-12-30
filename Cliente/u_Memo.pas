unit u_Memo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, wwdbedit, Wwdotdot, ExtCtrls, DBClient,
  tmbToolEdicaoBottom, fcStatusBar, ToolWin, ComCtrls, tmbToolEdicaoTop,
  ActnList, XPStyleActnCtrls, ActnMan, ActnCtrls,DB, wwdbdatetimepicker,
  wwcheckbox, ImgList;

type
  TfrmMemo = class(TForm)
    fcStatusBar1: TfcStatusBar;
    Panel1: TPanel;
    wwDBComboDlg5: TwwDBComboDlg;
    DBEdit3: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    GroupBox1: TGroupBox;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    actmngMemo: TActionManager;
    actImpMemo: TAction;
    actAtualRDV: TAction;
    CoolBar1: TCoolBar;
    ActionToolBar1: TActionToolBar;
    tmbEdicaoTop1: TtmbEdicaoTop;
    ActionToolBar2: TActionToolBar;
    wwDBDateTimePicker4: TwwDBDateTimePicker;
    wwDBDateTimePicker3: TwwDBDateTimePicker;
    wwDBComboDlg2: TwwDBComboDlg;
    DBCheckBox1: TDBCheckBox;
    ImageList1: TImageList;
    actGravar: TAction;
    actCancelar: TAction;
    actFechar: TAction;
    Panel2: TPanel;
    CoolBar2: TCoolBar;
    ActionToolBar3: TActionToolBar;
    ActionToolBar4: TActionToolBar;
    DBRadioGroup3: TDBRadioGroup;
    wwDtContabilizacao: TwwDBDateTimePicker;
    Label11: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actAtualRDVExecute(Sender: TObject);
    procedure wwDBComboDlg1CustomDlg(Sender: TObject);
    procedure actImpMemoExecute(Sender: TObject);
    procedure wwDBComboDlg2CustomDlg(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    Fechar : Boolean;
   function SomaDespesas( DataFechamento : String; RdvId : Integer; TipoMoeda : String ): Currency;
  public
    { Public declarations }
  end;

var
  frmMemo: TfrmMemo;
  MemoId : Integer;

implementation

uses u_dmRD,FuncoesCliente,FuncoesDsi, u_dmEF, u_RelMemo;

{$R *.dfm}

procedure TfrmMemo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if not Fechar then
    begin
     MessageDlg( 'Memo de Acerto de caixa não foi transferido.',mtWarning, [mbOK], 0);
     Action := caNone;
     exit;
    end;

 Action := caFree;
 frmMemo := Nil;
end;

procedure TfrmMemo.actAtualRDVExecute(Sender: TObject);

 procedure InserirRDVITEM( var cdsUpd : TClientDataset );
 begin
  cdsUpd.Insert;
  cdsUpd.FieldByName('DATAMOVIMENTOID').AsDateTime    := dmRD.cdsMemoDATASOLICITACAO.AsDateTime;
  cdsUpd.FieldByName('DATADOC').AsDateTime            := dmRD.cdsMemoDATADEPOSITO.AsDateTime;
  cdsUpd.FieldByName('TIPOMOEDA').AsString            := dmRD.cdsMemoTIPOMOEDA.AsString;
  cdsUpd.FieldByName('OPERACAOID').AsInteger          := dmRD.cdsMemoOPERACAOID.AsInteger;
  cdsUpd.FieldByName('VLRDESPESA').Value              := dmRD.cdsMemoVLRMEMO.Value;
  cdsUpd.FieldByName('HISTORICO').AsString            := dmRD.cdsMemoHISTORICO.AsString;
  cdsUpd.FieldByName('DATAFECHAMENTO').AsDateTime     := dmRD.cdsRdvDATAFECHAMENTO.AsDateTime;
  cdsUpd.FieldByName('DATACONTABILIZACAO').AsDateTime := wwDtContabilizacao.DateTime;
  cdsUpd.Post;

  dmRD.NovoRdv := False;
 end;

begin
 if dmRD.cdsMemoTRANSFERIDO.Value = 1 then
    raise Exception.Create('Memo ( Adiantamento de Despesas ) já foi Transferido!');

 if dmRD.cdsMemoLIBERADO.Value = 0 then
    raise Exception.Create('Falta Liberação do Memo!');

 if MessageDlg('Confirma o Memo ( Acerto de Caixa ) para o Funcionário ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
     try
      if dmRD.cdsMemoTIPOMOEDA.AsString = 'R' then
         InserirRDVITEM( dmRD.cdsRDVItem )
      else
         InserirRDVITEM( dmRD.cdsRDVItemUS );

     finally
      if dmRD.cdsMemo.State in [dsBrowse,dsInsert] then
         dmRD.cdsMemo.Edit;

      dmRD.cdsMemoTRANSFERIDO.Value := 1;

      Fechar := True;
      MessageDlg('Memo ( Acerto de Caixa ) para o funcionario Transferido com Sucesso para o seu RDV!', mtInformation, [mbOk], 0);

      dmRD.cdsMemo.Post;
     end;
    end;

 Close; // Fechar a tela do Memo
end;

procedure TfrmMemo.wwDBComboDlg1CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa( dmRD.dsOperacao,'OPERACAOID',dmRD.cdsMemoOPERACAOID.AsString );
 ExecLoockupRetorno( dmRD.cdsMemo,'OPERACAOID','OPERACAOID' );
end;

procedure TfrmMemo.actImpMemoExecute(Sender: TObject);
var VlrTotalDespesa : Currency;
begin
 try
  if dmRD.cdsMemo.State in [dsEdit,dsInsert] then
     if MessageDlg('Deseja Salvar os dados do Memo?',mtConfirmation,[mbYes,mbNo],0 )= mrYes then
        begin
         dmRD.cdsMemo.Post;
         Fechar := False;
        end
     else
        raise Exception.Create('É necessário Salvar os dados antes de imprimir o Relatório!');

  VlrTotalDespesa := SomaDespesas( dmRD.cdsRdvDATAFECHAMENTO.AsString, dmRD.cdsRdvRDVID.AsInteger,
                                             dmRD.cdsMemoTIPOMOEDA.AsString );

  GerarPesquisa( dmRD.cdsMemo,'RD_MEMO.MEMOID = '+ dmRD.cdsMemoMEMOID.AsString );

  frmRelMemo := TfrmRelMemo.Create( Self );
  frmRelMemo.QrlVlrDespesa.Caption := FormatFloat( '##,###,##0.00', VlrTotalDespesa );
  frmRelMemo.QuickRep1.Preview;

 finally
  FreeAndNil( frmRelMemo );
 end;

end;


procedure TfrmMemo.wwDBComboDlg2CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa( dmRD.dsOperacao,'OPERACAOID',dmRD.cdsMemoOPERACAOID.AsString );
 ExecLoockupRetorno( dmRD.cdsMemo,'OPERACAOID','OPERACAOID' );
end;

procedure TfrmMemo.actGravarExecute(Sender: TObject);
begin
 if dmRD.cdsMemo.State in [dsInsert,dsEdit] then
    dmRD.cdsMemo.Post;
end;

procedure TfrmMemo.actCancelarExecute(Sender: TObject);
begin
 Fechar := True;

 if dmRD.cdsMemo.State in [dsInsert,dsEdit] then
    begin
     dmRD.cdsMemo.Cancel;
     Close;
    end;
end;

procedure TfrmMemo.actFecharExecute(Sender: TObject);
begin
 if dmRD.cdsMemo.State in [dsInsert,dsEdit] then
    begin
     Fechar := True;
     dmRD.cdsMemo.Cancel;
     Close;
    end;

end;

procedure TfrmMemo.FormCreate(Sender: TObject);
begin
 Fechar := True;
end;

procedure TfrmMemo.FormKeyPress(Sender: TObject; var Key: Char);
begin
 // Habilitar a propriedade KeyPreview do Form para funcionar o Enter como Tab
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;

function TfrmMemo.SomaDespesas(DataFechamento: String;
  RdvId: Integer; TipoMoeda: String): Currency;
var iSQL : String;
    cds  : TClientDataSet;
begin
 Result := 0;

 cds  := nil;
 iSQL := 'SELECT RD_RDVITEM.RDVID,'+
         '       SUM(RD_RDVITEM.VLRDESPESA) VLRDESPESA'+
         '  FROM RD_OPERACAO, RD_RDVITEM, EF_ENTIDADE, EF_DEPARTAMENTO'+
         ' WHERE EF_ENTIDADE.ENTIDADEID = RD_RDVITEM.RDVID'+
         '   AND RD_OPERACAO.OPERACAOID = RD_RDVITEM.OPERACAOID'+
         '   AND EF_DEPARTAMENTO.DEPARTAMENTOID(+) = EF_ENTIDADE.DEPARTAMENTOID'+
         '   AND RD_RDVITEM.DATAFECHAMENTO = '+ QuotedStr( DataFechamento )+
         '   AND RD_RDVITEM.OPERACAOID NOT IN (10, 48, 53, 60, 46, 43, 55, 11, 16)'+
         '   AND RD_RDVITEM.RDVID = '+ IntToStr( RdvId )+
         '   AND ((RD_OPERACAO.OPERACAO = ''C'') OR (RD_OPERACAO.OPERACAOID in (61,75)) )'+
         '   AND RD_RDVITEM.TIPOMOEDA = '+ QuotedStr( TipoMoeda )+
         ' GROUP BY RD_RDVITEM.RDVID';

  try
   ExecDynamicProvider( -1,iSQL,cds );

   if not cds.IsEmpty then
      Result := cds.FieldByName('VLRDESPESA').AsCurrency;

   cds.Close;
  finally
    FreeAndNil( cds );
  end;

end;

end.
