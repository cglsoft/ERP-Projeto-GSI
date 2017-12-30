unit u_Adiantamento;

interface

uses
  Windows, Forms, SysUtils, Classes, ActnList, XPStyleActnCtrls, ActnMan, ImgList,
  Controls, tmbToolEdicaoBottom, ComCtrls, ActnCtrls, tmbToolEdicaoTop,
  ToolWin, tmbToolEdicaoLista, Grids, DBGrids, wwdbedit, Wwdotdot,
  StdCtrls, DBCtrls, Mask, wwdbdatetimepicker, ExtCtrls, DB, Dialogs;

type
  TfrmAdiantamento = class(TForm)
    ImageList1: TImageList;
    actmngRdv: TActionManager;
    actNovo: TAction;
    actCancela: TAction;
    pnlAdiantamento: TPanel;
    lblDataSolicitacao: TLabel;
    lblDataDeposito: TLabel;
    lblAdiantamentoId: TLabel;
    wwDBDateTimePicker3: TwwDBDateTimePicker;
    wwDBDateTimePicker4: TwwDBDateTimePicker;
    DBEdit2: TDBEdit;
    gbDadosAdiantamento: TGroupBox;
    lblValor: TLabel;
    lblSaldo: TLabel;
    lblHistorico: TLabel;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    dbgrdItensAdiantamento: TDBGrid;
    CoolBar1: TCoolBar;
    tmbEdicaoTop2: TtmbEdicaoTop;
    tmbEdicaoTop1: TtmbEdicaoTop;
    ActionToolBar2: TActionToolBar;
    tmbEdtListAdiantItem: TtmbEdicaoLista;
    Splitter1: TSplitter;
    lblFuncionarioId: TLabel;
    wwDBComboDlg5: TwwDBComboDlg;
    DBEdit3: TDBEdit;
    lblHorasSolicitadas: TLabel;
    DBEdit7: TDBEdit;
    lblSolicitante: TLabel;
    DBEdit1: TDBEdit;
    StatusBar: TStatusBar;
    Panel3: TPanel;
    DBCheckBox1: TDBCheckBox;
    tmbEdicaoBottom1: TtmbEdicaoBottom;
    DBCheckBox2: TDBCheckBox;
    actImpAdiant: TAction;
    DBRadioGroup3: TDBRadioGroup;
    Label1: TLabel;
    DBEdit4: TDBEdit;
    Label2: TLabel;
    DBEdit5: TDBEdit;
    DBEdit16: TDBEdit;
    Label18: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBComboDlg5CustomDlg(Sender: TObject);
    procedure wwDBComboDlg1CustomDlg(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure actNovoExecute(Sender: TObject);
    procedure actCancelaExecute(Sender: TObject);
    procedure actImpAdiantExecute(Sender: TObject);
  private
    procedure SetDataSetEdicaoLista;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAdiantamento: TfrmAdiantamento;

implementation

uses u_dmRD, FuncoesCliente, u_RelAdiantamento, u_PadraoEdicao, u_dmGSI, u_dmEF;

{$R *.dfm}

procedure TfrmAdiantamento.SetDataSetEdicaoLista;
begin
 tmbEdtListAdiantItem.TtmbClassOwnerEspec    := TFrmPadraoEdicao;
 tmbEdtListAdiantItem.TtmbFormOwnerEspec     := FrmPadraoEdicao;
end;

procedure TfrmAdiantamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 if not FinalFormulario(dmRD.cdsAdiantamento,' do Adiantamento ') then
    Action := caNone
 else
    begin
     Action          := caFree;
     frmAdiantamento := Nil;
    end;
end;

procedure TfrmAdiantamento.wwDBComboDlg5CustomDlg(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo,'Despesas de Viagem','Visualizar Todos Adiantamentos/Despesas', False ) then
    begin
     ExecLoockupPesquisa(dmEF.dsEntidade,'ENTIDADEID',dmRD.cdsAdiantamentoFUNCIONARIOID.AsString );
     ExecLoockupRetorno( dmRD.cdsAdiantamento,'FUNCIONARIOID','ENTIDADEID' );
    end
 else
    dmRD.FiltroFuncionarioRDV( dmRD.cdsAdiantamentoFUNCIONARIOID );
end;

procedure TfrmAdiantamento.wwDBComboDlg1CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa( dmRD.dsOperacao,'OPERACAOID',dmRD.cdsAdiantamentoOPERACAOID.AsString );
 ExecLoockupRetorno( dmRD.cdsAdiantamento,'OPERACAOID','OPERACAOID' );
end;

procedure TfrmAdiantamento.FormCreate(Sender: TObject);
begin
 SetDataSetEdicaoLista;
end;

procedure TfrmAdiantamento.FormShow(Sender: TObject);
begin
 StatusBar.Panels.Items[0].Text := 'Tabela: '+ Copy( dmRD.cdsAdiantamento.Name, (Pos('cds', dmRD.cdsAdiantamento.Name)+3), Length(dmRD.cdsAdiantamento.Name));
 Case dmRD.cdsAdiantamento.State of
  dsEdit  : StatusBar.Panels.Items[1].Text := 'Status: Alteração';
  dsInsert: StatusBar.Panels.Items[1].Text := 'Status: Inserção';
 end;
end;

procedure TfrmAdiantamento.FormKeyPress(Sender: TObject; var Key: Char);
begin
 {ENTER}
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;

procedure TfrmAdiantamento.actNovoExecute(Sender: TObject);
begin
 dmRD.cdsAdiantamento.Insert;
end;

procedure TfrmAdiantamento.actCancelaExecute(Sender: TObject);
begin
 if CheckSenha( dmGsi.UsuarioAtivo,'Despesas de Viagem','Cancelar Adiantamento', False ) then
    if MessageDlg('Confirma o Cancelamento do Adiantamento para o Funcionário ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
       begin
        dmRD.cdsAdiantamento.Delete;
        MessageDlg('Adiantamento Cancelado com Sucesso!', mtInformation, [mbOk], 0);
       end;
end;

procedure TfrmAdiantamento.actImpAdiantExecute(Sender: TObject);
var ParamPesquisa : String;
begin
 ParamPesquisa := 'RD_ADIANTAMENTO.ADIANTAMENTOID = ' + QuotedStr( dmRD.cdsAdiantamentoADIANTAMENTOID.AsString );
 GerarPesquisa( dmRD.cdsAdiantamento,  ParamPesquisa );

 Application.CreateForm(  TfrmRelAdiantamento, frmRelAdiantamento );
 try
  try
   Screen.Cursor := crDefault;
   frmRelAdiantamento.QuickRep1.Preview;

  except on
   E : Exception do
   raise Exception.Create(E.Message);
  end;

 finally
  FreeAndNil( frmRelAdiantamento.QuickRep1 );
  FreeAndNil( frmRelAdiantamento );
  Screen.Cursor := crDefault;
 end;
end;

end.
