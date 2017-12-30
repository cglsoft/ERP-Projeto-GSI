unit u_ProcessoItem;

interface

uses
  SysUtils, Dialogs, Graphics, Forms, ImgList, Controls, Classes, ActnList,
  XPStyleActnCtrls, ActnMan, tmbToolEdicaoTop, ActnCtrls, fcStatusBar,
  ToolWin, ComCtrls, tmbToolEdicaoBottom, Grids, wwDataInspector,
  tmbDataInspector, DB, DbClient;

type
  TfrmProcessoItem = class(TForm)
    actmngManutencao: TActionManager;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    tmbdtinspCadastro: TtmbDataInspector;
    ImageList1: TImageList;
    actCadProduto: TAction;
    tmbEdicaoBottom1: TtmbEdicaoBottom;
    fcStatusBar1: TfcStatusBar;
    CoolBar1: TCoolBar;
    ActionToolBar1: TActionToolBar;
    tmbEdicaoTop2: TtmbEdicaoTop;
    Action1: TAction;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tmbdtinspCadastroButtonClick(Sender: TtmbDataInspector;
      Item: TwwInspectorItem; TableNameReference: String);
    procedure actCadProdutoExecute(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure tmbdtinspCadastroItemChanged(Sender: TwwDataInspector;
      Item: TwwInspectorItem; NewValue: String);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure NovoProdProcesso;
  end;

var
  frmProcessoItem: TfrmProcessoItem;

implementation

uses FuncoesCliente, u_NovoProduto,  FuncoesDsi, u_dmIT, u_dmEF,
  u_ProcessoSerie;

{$R *.dfm}

procedure TfrmProcessoItem.NovoProdProcesso;
var InstSQL : String;
    Cds : TClientDataSet;
    EmpresaAnterior : Integer;
begin
 EmpresaAnterior := EmpresaAtualId;
 EmpresaAtualId  := dmIT.cdsProcessoItemEMPRESAID.AsInteger;

 try
  if dmIT.cdsProcessoItemEMPRESAID.IsNull then
     begin
      MessageDlg('Devido ao processo ser antigo, é necessário atualizar o código da empresa neste item de processo.', mtInformation,[mbOk], 0);
      exit;
     end;

  InstSQL := '';
  if dmIT.cdsProcessoItemEMPRESAID.Value > 0 then
     InstSQL := 'EF_PRODUTO.EMPRESAID = ' + dmIT.cdsProcessoItemEMPRESAID.AsString + ' AND ';

  InstSQL := InstSQL + 'EF_PRODUTO.PARTNUMBERID = ' + QuotedStr( dmIT.cdsProcessoItemPARTNUMBERID.Value );

  GerarPesquisa( dmEF.cdsProduto, InstSQL );
  if dmEF.cdsProduto.IsEmpty then
      begin
       Cds := TClientDataSet.Create(nil);
       try
        InstSQL := ' PARTNUMBERID = ' + QuotedStr( dmIT.cdsProcessoItemPARTNUMBERID.Value );
        ExecDynamicProvider( -1, AnalisarAddSQL( LocateSQL( 'dsprvListaPreco' ), InstSQL ), Cds );

        if not Cds.IsEmpty then
           begin
            InstSQL := ' EF_PRODUTO.EMPRESAID    = ' + dmIT.cdsProcessoItemEMPRESAID.AsString + ' AND ' +
                       ' EF_PRODUTO.PARTNUMBERID = ' + QuotedStr( Cds.FieldByName('PARTNUMBERID').AsString );
            GerarPesquisa( dmEF.cdsProduto, InstSQL );
           end;
       finally
        Cds.Close;
        FreeAndNil( Cds );
       end;
      end;

  if dmIT.cdsProcessoItem.State <> dsEdit then
     dmIT.cdsProcessoItem.Edit;

  if ( dmIT.cdsProcessoAGRUPANCM.Value = 1 ) and ( dmIT.cdsProcessoItemITEMID.Value > 1 ) then
     begin
      Cds := TClientDataSet.Create(nil);
      try
       InstSQL := ' SELECT NCMID ' +
                    ' FROM IT_PROCESSOITEM ' +
                   ' WHERE PROCESSOID = ' + dmIT.cdsProcessoItemPROCESSOID.AsString +
                     ' AND TIPOPROCESSOID = ' + dmIT.cdsProcessoTIPOPROCESSOID.AsString +
                     ' AND DATAPROCESSOID = ' + QuotedStr( dmIT.cdsProcessoDATAPROCESSOID.AsString ) +
                     ' AND ITEMID = 1 ';
       ExecDynamicProvider( -1, InstSQL, Cds );

       if not Cds.IsEmpty then
          dmIT.cdsProcessoItemNCMID.Value := Cds.Fields[0].AsString;
      finally
       Cds.Close;
       FreeAndNil( Cds );
      end;
     end;

  if dmEF.cdsProduto.RecordCount < 1 then
     begin
      dmEF.cdsProduto.Insert;
      dmEF.cdsProdutoEMPRESAID.Value          := dmIT.cdsProcessoItemEMPRESAID.Value;
      dmEF.cdsProdutoDESCRICAOPORTUGUES.Value := dmIT.cdsProcessoItemDESCRICAOPORTUGUES.Value;
      dmEF.cdsProdutoDESCRICAOINGLES.Value    := dmIT.cdsProcessoItemDESCRICAOINGLES.Value;
      dmEF.cdsProdutoGRUPOID.Value            := dmIT.cdsProcessoItemGRUPOID.Value;
      dmEF.cdsProdutoUNIDADEID.Value          := 'UN';
      dmEF.cdsProdutoORIGEM.Value             := 'I';
      dmEF.cdsProdutoNOVOUSADO.Value          := 'N';
      dmEF.cdsProdutoFORNECEDORID.Value       := dmIT.cdsProcessoFORNECEDORID.Value;

      if not dmIT.cdsProcessoItemNCMID.IsNull then
         dmEF.cdsProdutoNCMID.Value := dmIT.cdsProcessoItemNCMID.Value;
     end
  else
     dmEF.cdsProduto.Edit;

  frmNovoProduto := TfrmNovoProduto.Create( Application );
  frmNovoProduto.ShowModal;

  dmEF.cdsProdutoPARTNUMBERID.Value := dmIT.cdsProcessoItemPARTNUMBERID.Value;
  dmEF.cdsProduto.Post;

  dmIT.shdcnnIT.AppServer.IRecalculaListaPreco( dmIT.cdsProcessoItemPARTNUMBERID.Value );

//  dmIT.cdsProcessoItemNCMID.Value     := dmEF.cdsProdutoNCMID.Value;
  dmIT.cdsProcessoItemPRODUTOID.Value := dmEF.cdsProdutoPRODUTOID.Value;
  dmIT.cdsProcessoItem.Post;
  MessageDlg('O Cadastro do Produto foi efetuado com sucesso.', mtInformation,[mbOk], 0);
 finally
  EmpresaAtualId  := EmpresaAnterior;
 end;
end;


procedure TfrmProcessoItem.FormCreate(Sender: TObject);
begin
 with tmbdtinspCadastro.Toshiba do
 begin
  ClientDataSet  := DataInspector;
  TableName      := IdentificarNomeTabela( dmIT.cdsProcessoItem.Name );
  Active         := True;
 end;
end;

procedure TfrmProcessoItem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 if not FinalFormulario(dmIT.cdsProcessoItem,' do Item do Processo de Importação') then
    Action := caNone
 else
    begin
     Action          := caFree;
     frmProcessoItem := Nil;
    end;
end;

procedure TfrmProcessoItem.tmbdtinspCadastroButtonClick(
  Sender: TtmbDataInspector; Item: TwwInspectorItem;
  TableNameReference: String);
var i, j: Integer;
begin
 for i := 0 to Screen.DataModuleCount - 1 do
  for j := 0 to Screen.DataModules[i].ComponentCount-1 do
   if Screen.DataModules[i].Components[j] is TDataSource then
      if StrComp( PChar( UpperCase( Screen.DataModules[i].Components[j].Name ) ), PChar( UpperCase( 'ds' + TableNameReference ) ) ) = 0 then
         begin
          CriaFormLookUp( (Screen.DataModules[i].Components[j] as TDataSource), Item.Field,'' );
          Break;
         end;
end;

procedure TfrmProcessoItem.actCadProdutoExecute(Sender: TObject);
begin
 NovoProdProcesso;
end;

procedure TfrmProcessoItem.Action1Execute(Sender: TObject);
begin
 frmProcessoSerie := TfrmProcessoSerie.Create( Self );
 frmProcessoSerie.ShowModal;
end;

procedure TfrmProcessoItem.tmbdtinspCadastroItemChanged(
  Sender: TwwDataInspector; Item: TwwInspectorItem; NewValue: String);
begin
 if Item.Field.Tag <> 5 then
    case Item.Field.DataType of
    ftString,
    ftMemo,
    ftOraClob : Item.Field.Value := AnsiUpperCase( NewValue );
    end;
end;

end.
