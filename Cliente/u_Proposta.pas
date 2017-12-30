unit u_Proposta;

interface

uses
  SysUtils, Extenso, Forms, Dialogs, ExtCtrls, DB, DBClient,
  ComCtrls, tmbToolEdicaoBottom, ToolWin, tmbToolEdicaoTop, DBCtrls,
  wwdbdatetimepicker, Grids, DBGrids, tmbToolEdicaoLista, Buttons,
  StdCtrls, Controls, wwdbedit, Wwdotdot, Mask, Classes, PnAjustaGrid, Variants,
  WordXP, OleServer, ActnList, XPStyleActnCtrls, ActnMan, ImgList,
  ActnCtrls, wwriched, ShellApi;

type
  TfrmProposta = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet5: TTabSheet;
    GroupBox1: TGroupBox;
    Panel4: TPanel;
    Label14: TLabel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    Label6: TLabel;
    wwDBComboDlg5: TwwDBComboDlg;
    GroupBox3: TGroupBox;
    Label13: TLabel;
    Label15: TLabel;
    DBEdit7: TDBEdit;
    wwDBDateTimePicker3: TwwDBDateTimePicker;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBRadioGroup1: TDBRadioGroup;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    Label10: TLabel;
    DBMemo3: TDBMemo;
    PageControl2: TPageControl;
    TabSheet4: TTabSheet;
    TabSheet3: TTabSheet;
    GroupBox9: TGroupBox;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label64: TLabel;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit52: TDBEdit;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit6: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBMemo1: TDBMemo;
    wwDBComboDlg4: TwwDBComboDlg;
    GroupBox4: TGroupBox;
    Label22: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label31: TLabel;
    DBEdit8: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    TabSheet11: TTabSheet;
    GroupBox5: TGroupBox;
    TabSheet10: TTabSheet;
    GroupBox6: TGroupBox;
    TabSheet12: TTabSheet;
    GroupBox7: TGroupBox;
    TabSheet13: TTabSheet;
    GroupBox8: TGroupBox;
    TabSheet14: TTabSheet;
    GroupBox10: TGroupBox;
    TabSheet15: TTabSheet;
    GroupBox11: TGroupBox;
    wwDBComboDlg9: TwwDBComboDlg;
    TabSheet16: TTabSheet;
    GroupBox12: TGroupBox;
    Panel1: TPanel;
    Label37: TLabel;
    Panel7: TPanel;
    sbAdicionar: TSpeedButton;
    Panel3: TPanel;
    Panel6: TPanel;
    wwDBComboDlg10: TwwDBComboDlg;
    Label36: TLabel;
    Panel8: TPanel;
    Panel9: TPanel;
    Splitter2: TSplitter;
    Panel10: TPanel;
    wwDBComboDlg1: TwwDBComboDlg;
    Label16: TLabel;
    Label32: TLabel;
    Label27: TLabel;
    DBEdit12: TDBEdit;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Splitter3: TSplitter;
    Panel14: TPanel;
    wwDBComboDlg2: TwwDBComboDlg;
    Label17: TLabel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    wwDBComboDlg3: TwwDBComboDlg;
    Label23: TLabel;
    Panel18: TPanel;
    Panel19: TPanel;
    wwDBComboDlg7: TwwDBComboDlg;
    Label34: TLabel;
    Panel20: TPanel;
    wwDBComboDlg8: TwwDBComboDlg;
    Label35: TLabel;
    DBGrid4: TDBGrid;
    DBGrid5: TDBGrid;
    DBGrid6: TDBGrid;
    Panel21: TPanel;
    Panel2: TPanel;
    tmbEdicaoLista1: TtmbEdicaoLista;
    Panel5: TPanel;
    Label40: TLabel;
    tmbEdicaoLista2: TtmbEdicaoLista;
    Splitter4: TSplitter;
    Label39: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    tmbEdicaoLista5: TtmbEdicaoLista;
    tmbEdicaoLista6: TtmbEdicaoLista;
    tmbEdicaoLista7: TtmbEdicaoLista;
    TabSheet2: TTabSheet;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    cdsAux: TClientDataSet;
    dsAux: TDataSource;
    Panel24: TPanel;
    Panel26: TPanel;
    sbUmUP: TSpeedButton;
    sbRetUmUP: TSpeedButton;
    sbRetTodosUP: TSpeedButton;
    Panel27: TPanel;
    PnEquipamento: TPanel;
    tmbEdicaoLista3: TtmbEdicaoLista;
    TabControl4: TTabControl;
    DBGrid7: TDBGrid;
    uu: TTabControl;
    DBGrid8: TDBGrid;
    StatusBar: TStatusBar;
    WordDocument: TWordDocument;
    WordApplication: TWordApplication;
    WordFont: TWordFont;
    Splitter5: TSplitter;
    Extenso1: TExtenso;
    Label30: TLabel;
    Label33: TLabel;
    Label38: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Panel28: TPanel;
    Label25: TLabel;
    wwDBComboDlg6: TwwDBComboDlg;
    Label55: TLabel;
    Panel25: TPanel;
    Label56: TLabel;
    Panel29: TPanel;
    Label57: TLabel;
    Splitter6: TSplitter;
    TabControl5: TTabControl;
    DBGrid9: TDBGrid;
    tmbEdicaoLista4: TtmbEdicaoLista;
    CoolBar1: TCoolBar;
    ActionToolBar1: TActionToolBar;
    tmbEdicaoTop1: TtmbEdicaoTop;
    actmngManutencao: TActionManager;
    actImpressao: TAction;
    tmbEdicaoBottom1: TtmbEdicaoBottom;
    ImageList1: TImageList;
    TabSheet6: TTabSheet;
    GroupBox13: TGroupBox;
    Panel22: TPanel;
    Label41: TLabel;
    wwDBComboDlg11: TwwDBComboDlg;
    Panel23: TPanel;
    Label47: TLabel;
    actConfig: TAction;
    Panel30: TPanel;
    cbCartasGeradas: TComboBox;
    Label66: TLabel;
    SpeedButton1: TSpeedButton;
    GroupBox14: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox15: TGroupBox;
    DBGrid2: TDBGrid;
    DBMemo2: TDBMemo;
    DBRhCartaApresentacao: TDBMemo;
    wwDBRichEdit3: TDBMemo;
    DBRhCodPagtoProp: TDBMemo;
    DBRhObsProp: TDBMemo;
    DBRhGarantia: TDBMemo;
    DBRhAssistTec: TDBMemo;
    DBRhPrazo: TDBMemo;
    DBRhValidade: TDBMemo;
    wwDBRichEdit2: TDBMemo;
    Label63: TLabel;
    wwDBComboDlg12: TwwDBComboDlg;
    DBEdit2: TDBEdit;
    wwDBComboDlg13: TwwDBComboDlg;
    Label65: TLabel;
    DBEdit10: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBComboDlg2CustomDlg(Sender: TObject);
    procedure wwDBComboDlg3CustomDlg(Sender: TObject);
    procedure wwDBComboDlg4CustomDlg(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure wwDBComboDlg9CustomDlg(Sender: TObject);
    procedure wwDBComboDlg5CustomDlg(Sender: TObject);
    procedure wwDBComboDlg1CustomDlg(Sender: TObject);
    procedure wwDBComboDlg6CustomDlg(Sender: TObject);
    procedure wwDBComboDlg7CustomDlg(Sender: TObject);
    procedure wwDBComboDlg8CustomDlg(Sender: TObject);
    procedure wwDBComboDlg10CustomDlg(Sender: TObject);
    procedure sbAdicionarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sbUmUPClick(Sender: TObject);
    procedure sbRetUmUPClick(Sender: TObject);
    procedure sbRetTodosUPClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid2TitleClick(Column: TColumn);
    procedure DBGrid7TitleClick(Column: TColumn);
    procedure DBGrid8TitleClick(Column: TColumn);
    procedure DBGrid4TitleClick(Column: TColumn);
    procedure DBGrid5TitleClick(Column: TColumn);
    procedure DBGrid6TitleClick(Column: TColumn);
    procedure DBMemo1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure wwDBComboDlg5Exit(Sender: TObject);
    procedure DBMemo3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure wwDBComboDlg10Exit(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid7DblClick(Sender: TObject);
    procedure DBGrid8DblClick(Sender: TObject);
    procedure DBGrid4DblClick(Sender: TObject);
    procedure DBGrid5DblClick(Sender: TObject);
    procedure DBGrid6DblClick(Sender: TObject);
    procedure DBGrid9TitleClick(Column: TColumn);
    procedure DBGrid9DblClick(Sender: TObject);
    procedure actImpressaoExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure wwDBComboDlg11CustomDlg(Sender: TObject);
    procedure actConfigExecute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure wwDBComboDlg12CustomDlg(Sender: TObject);
    procedure wwDBComboDlg13CustomDlg(Sender: TObject);
  private
    { Private declarations }
    Cds     : TClientDataSet;
    procedure MostraHint(Sender : TObject);
    procedure AjustarGrade(Grade : TDBGrid);
    procedure RetornaMoeda;
    function  RetornaNomeModelo: boolean;
    procedure GerenciaWord;
    function  CriaDocumento(Doc : String; Chave : String ): boolean;
    procedure ConectaWord(doc : String);
    procedure InsereParagrafo(conteudo: String; Font : String = 'Tahoma'; Size : integer = 9; Bold : integer = 0; underline : integer = 0; QuebraLn: integer = 0; Margem : integer = 10);
    procedure InsereComposicao;
    procedure DesconectaWord(SaveName: OleVariant);
    procedure QuebraPaginaWord;
    procedure AtualizaDependencia(Equipamento, Modelo: String);
    procedure FechaBancoDeDados;
    function  NotNul(Tok , Conteudo: String ):String;
    procedure StatusHint(Sender : TObject);
    function  VerificaRegistroExiste(Campo, Conteudo, Tabela : String):boolean;
    procedure InsereCabecalho(NoProposta: String; margem : integer);

    function  Preenchido(conteudo: String): boolean;
    function RetornaDiretorio: String;
  public
    { Public declarations }
    function  VerificaIdAparelho(msg : boolean = true) : boolean;
    function  ConsisteCampo(Sender : TObject):boolean;
  end;


var
  frmProposta: TfrmProposta;

const
 {Constantes para saida nos documentos Word}
  PathCadastroDoc   = 'Tabela de Preços - Dados do Aparelho - Atalho DOC';
  HeaderComposicao   = '     COMPOSIÇÃO DO APARELHO OFERTADO';
  Moeda              = 'US$';
  WordCaption        = 'Proposta Comercial - Cartas de Apresentação';
  AssinaturaTrailler = 'Estando V.Sas. de acordo com nossa proposta, solicitamos devolver-nos a '+
                        'cópia devidamente assinada, carimbada e datada, permanecendo a original '+
                        'para seu conhecimento e posterior arquivo.';


implementation

uses u_dmPP, FuncoesCliente, FuncoesDsi, u_Cep, u_VisualTabelaPreco, u_PadraoPesquisa,
   u_PadraoEdicao, u_dmEF, u_dmCP, u_PropostaConfig, u_dmAS;

{$R *.dfm}

procedure TfrmProposta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 if not FinalFormulario(dmPP.cdsProposta,' da Proposta ') then
    Action := caNone
 else
    begin
     Action       := caFree;
     frmProposta  := Nil;
    end;
    Application.OnHint := nil;
 FechaBancoDeDados;
end;

procedure TfrmProposta.wwDBComboDlg2CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmPP.dsObsProp, 'OBSPROPID', wwDBComboDlg2.Text, 'Observação da Proposta' );
 ExecLoockupRetorno(dmPP.cdsProposta, 'OBSPROPID', 'OBSPROPID');
end;

procedure TfrmProposta.wwDBComboDlg3CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmPP.dsGarantia, 'GARANTIAID', wwDBComboDlg3.Text, 'Garantia' );
 ExecLoockupRetorno(dmPP.cdsProposta, 'GARANTIAID', 'GARANTIAID');
end;

procedure TfrmProposta.wwDBComboDlg4CustomDlg(Sender: TObject);
begin
 try
  frmCEP := TfrmCEP.Create( Self );
  frmCEP.ShowModal;

  if Assigned( frmCEP ) then
     if frmCEP.AtualizaCEP then
        if not dmCP.cdsPesquisa.IsEmpty then
           dmPP.cdsPropostaCEPID.Value := dmCP.cdsPesquisaCEPID.Value;
 finally
  FreeAndNil( frmCEP );
 end;
end;

procedure TfrmProposta.FormKeyPress(Sender: TObject; var Key: Char);
begin
 {Habilitar a propriedade KeyPreview do Form para funcionar o Enter como Tab}
 {ENTER}
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;

procedure TfrmProposta.wwDBComboDlg9CustomDlg(Sender: TObject);
begin
 try
  ExecLoockupPesquisa(dmEF.dsEntidade, 'CPFCNPJ', wwDBComboDlg9.Text, 'Entidade' );
  ExecLoockupRetorno(dmPP.cdsProposta, 'CPFCNPJ', 'CPFCNPJ');
 finally
  Application.ProcessMessages;
 end;
end;

procedure TfrmProposta.wwDBComboDlg5CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmEF.dsFilial, 'FILIALID', wwDBComboDlg5.Text, 'Filial' );
 ExecLoockupRetorno(dmPP.cdsProposta, 'FILIALID', 'FILIALID');
end;

procedure TfrmProposta.wwDBComboDlg1CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmPP.dsCondPagtoProp, 'CONDPAGTOPROPID', wwDBComboDlg1.Text, 'Condição de Pagto'  );
 ExecLoockupRetorno(dmPP.cdsProposta, 'CONDPAGTOPROPID', 'CONDPAGTOPROPID');
end;

procedure TfrmProposta.wwDBComboDlg6CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmPP.dsAssistTec, 'ASSISTTECID', wwDBComboDlg6.Text, 'Assistencia Técnica' );
 ExecLoockupRetorno(dmPP.cdsProposta, 'ASSISTTECID', 'ASSISTTECID');
end;

procedure TfrmProposta.wwDBComboDlg7CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmPP.dsPrazo, 'PRAZOID', wwDBComboDlg7.Text, 'Prazo' );
 ExecLoockupRetorno(dmPP.cdsProposta, 'PRAZOID', 'PRAZOID');
end;

procedure TfrmProposta.wwDBComboDlg8CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmPP.dsValidade, 'VALIDADEID', wwDBComboDlg8.Text, 'Validade' );
 ExecLoockupRetorno(dmPP.cdsProposta, 'VALIDADEID', 'VALIDADEID');
end;

procedure TfrmProposta.wwDBComboDlg10CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmPP.dsCartaApresent, 'CARTAAPRESENTID', wwDBComboDlg10.Text, 'Carta de Apresentação' );
 ExecLoockupRetorno(dmPP.cdsProposta, 'CARTAAPRESENTID', 'CARTAAPRESENTID');
end;

procedure TfrmProposta.sbAdicionarClick(Sender: TObject);
begin
 frmVisualTabelaPreco := TfrmVisualTabelaPreco.Create( Self );
 frmVisualTabelaPreco.ShowModal;
end;

procedure TfrmProposta.FormShow(Sender: TObject);
var y : integer;
begin
 cbCartasGeradas.enabled := false;
 dmAS.cdsConfig.Open;
 dmAS.cdsConfig.First;
 tmbEdicaoLista1.TtmbClientDataSet := dmPP.cdsPropEquipamento;
 tmbEdicaoLista1.TtmbDataSource    := dmPP.dsPropEquipamento;
 tmbEdicaoLista2.TtmbClientDataSet := dmPP.cdsPropComposicao;
 tmbEdicaoLista2.TtmbDataSource    := dmPP.dsPropComposicao;
 tmbEdicaoLista3.TtmbClientDataSet := dmPP.cdsPropOpcional;
 tmbEdicaoLista3.TtmbDataSource    := dmPP.dsPropOpcional;
 tmbEdicaoLista4.TtmbClientDataSet := dmPP.cdsPropDependencia;
 tmbEdicaoLista4.TtmbDataSource    := dmPP.dsPropDependencia;
 tmbEdicaoLista5.TtmbClientDataSet := dmPP.cdsPropBonificacao;
 tmbEdicaoLista5.TtmbDataSource    := dmPP.dsPropBonificacao;
 tmbEdicaoLista6.TtmbClientDataSet := dmPP.cdsPropVendedor;
 tmbEdicaoLista6.TtmbDataSource    := dmPP.dsPropVendedor;
 tmbEdicaoLista7.TtmbClientDataSet := dmPP.cdsPropTradeIn;
 tmbEdicaoLista7.TtmbDataSource    := dmPP.dsPropTradeIn;
 for y := 1 to 7 do
 begin
  TtmbEdicaoLista( FindComponent('tmbEdicaoLista'+ intToStr(y))).TtmbClassOwnerEspec := TFrmPadraoEdicao;
  TtmbEdicaoLista( FindComponent('tmbEdicaoLista'+ intToStr(y))).TtmbFormOwnerEspec  := FrmPadraoEdicao;
  TtmbEdicaoLista( FindComponent('tmbEdicaoLista'+ intToStr(y))).TtmbCriar           := true;
  if y >=5 then
     TtmbEdicaoLista( FindComponent('tmbEdicaoLista'+ intToStr(y))).TtmbDesativaInserir := false;
 end;
 wwDBComboDlg5.SetFocus;
 tmbEdicaoTop1.TtmbFormulario := frmProposta;

 StatusBar.Panels.Items[0].Text := 'Tabela: '+ Copy( dmPP.cdsProposta.Name, (Pos('cds', dmPP.cdsProposta.Name)+3), Length(dmPP.cdsProposta.Name));

 Case dmPP.dsProposta.State of
  dsEdit  : StatusBar.Panels.Items[1].Text := 'Status: Alteração';
  dsInsert: StatusBar.Panels.Items[1].Text := 'Status: Inserção';
 end;
 
end;

function TfrmProposta.VerificaIdAparelho(msg: boolean): boolean;
begin
 Result := true;
end;

procedure TfrmProposta.sbUmUPClick(Sender: TObject);
begin
 with dmPP do
  begin
   if dsPropOpcional.State = dsInactive then
      cdsPropOpcional.Open;
   if cdsPropDependencia.State = dsInactive then
      cdsPropDependencia.Open;
   if cdsDependencia.State = dsInactive then
      cdsDependencia.Open;
   if cdsOpcional.State = dsInactive then
      cdsOpcional.Open;

      if (cdsAux.State <> dsInactive) and (not cdsAux.IsEmpty ) then
         begin
          if not VerificaRegistroExiste( 'MODELOCOMPONENTEID', cdsAux.FieldByName('MODELOCOMPONENTEID').AsString , 'PP_PROPOPCIONAL') then
          //if not cdsPropOpcional.Locate('MODELOCOMPONENTEID', cdsAux.FieldByName('MODELOCOMPONENTEID').AsString, []) then
             begin
              cdsPropOpcional.Insert;
              cdsPropOpcional.FieldByName('MODELOCOMPONENTEID').Value  := cdsAux.FieldValues['MODELOCOMPONENTEID'];
              cdsPropOpcional.Post;
              AtualizaDependencia(cdsAux.FieldValues['MODELOEQUIPAMENTOID'], cdsAux.FieldValues['MODELOCOMPONENTEID']);
             end
          else
           Application.MessageBox('Modelo já incluso.','Mensagem', 0);
         end;
  end;
end;

procedure TfrmProposta.sbRetUmUPClick(Sender: TObject);
begin
 if not dmPP.cdsPropOpcional.IsEmpty then
    dmPP.cdsPropOpcional.Delete;
end;

procedure TfrmProposta.sbRetTodosUPClick(Sender: TObject);
begin
 dmPP.cdsPropOpcional.First;
 while not dmPP.cdsPropOpcional.Eof do
  dmPP.cdsPropOpcional.Delete;
end;

procedure TfrmProposta.PageControl1Change(Sender: TObject);
var iSQL : String;
begin
 Case PageControl1.TabIndex of
  2 : begin
       iSQL := 'SELECT * FROM PP_OPCIONAL ' +
               'WHERE MODELOEQUIPAMENTOID = ' + QuotedStr( dmPP.CdsPropEquipamentoMODELOEQUIPAMENTOID.AsString );
       ExecDynamicProvider( -1, iSQL, cdsAux );
       cdsAux.Open;
       {}
       if cdsAux.IsEmpty then
          begin
           PnEquipamento.Caption := 'NÃO HÁ OPCIONAIS CADASTRADOS.';
          end
       else
          begin
           PnEquipamento.Caption := 'MODELO DO EQUIPAMENTO: '+ dmPP.CdsPropEquipamentoMODELOEQUIPAMENTOID.AsString;
          end;
      end;
    3: dmPP.cdsPropBonificacao.Open;
    4: dmPP.cdsPropVendedor.Open;
    5: dmPP.cdsPropTradeIn.Open;
 end;
end;

procedure TfrmProposta.DBGrid1TitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column, dmPP.dsPropEquipamento, DBGrid1);
end;

procedure TfrmProposta.DBGrid2TitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column, dmPP.dsPropComposicao, DBGrid2);
end;

procedure TfrmProposta.DBGrid7TitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column, dsAux, DBGrid7);
end;

procedure TfrmProposta.DBGrid8TitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column, dmPP.dsPropOpcional, DBGrid8);
end;

procedure TfrmProposta.DBGrid4TitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column, dmPP.dsPropBonificacao, DBGrid4);
end;

procedure TfrmProposta.DBGrid5TitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column, dmPP.dsPropVendedor, DBGrid5);
end;

procedure TfrmProposta.DBGrid6TitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column, dmPP.dsPropTradeIn, DBGrid6);
end;

procedure TfrmProposta.DBMemo1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 MostraHint(DBMemo1);
end;

function TfrmProposta.ConsisteCampo(Sender: TObject): boolean;
begin
 Result := true;
 if (Sender is TDBEdit) then
    if ( ( Sender as TDBEdit).Text = '' ) then
       begin
        if (MessageDlg('Campo ' + TDBEdit(Sender).Field.FieldName + ' é de preenchimento obrigatório.' , mtInformation, [mbOk, mbCancel], 0) = mrOk) then
           begin
            Result := false;
            (Sender as TDBEdit).SetFocus;
           end;
       end
 else
 if (Sender is  TwwDBComboDlg) then
    if ((Sender as TwwDBComboDlg).Text = '') then
       begin
        if (MessageDlg('Campo ' + TwwDBComboDlg(Sender).Field.FieldName + ' é de preenchimento obrigatório.' , mtInformation, [mbOk, mbCancel], 0) = mrOk) then
           begin
            Result := false;
           (Sender as TwwDBComboDlg).SetFocus;
           end;
       end;
end;

procedure TfrmProposta.wwDBComboDlg5Exit(Sender: TObject);
begin
 ConsisteCampo(Sender);
end;

procedure TfrmProposta.DBMemo3MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 MostraHint(DBMemo3);
end;

procedure TfrmProposta.MostraHint(Sender: TObject);
begin
 TDBMemo(Sender).Hint := TDBMemo(Sender).Text;
end;

procedure TfrmProposta.GerenciaWord;
var QtdDocs : integer;
begin
 QtdDocs := 0;
 try
  try
   Cds := nil;
   dmPP.cdsPropEquipamento.First;
   while not dmPP.cdsPropEquipamento.Eof do
   begin
    if RetornaNomeModelo then
       begin
        if FileExists(Trim(Cds.FieldByName('DOC').AsString)) then
           begin
            CriaDocumento(Trim(Cds.FieldByName('DOC').AsString), '');
            inc(QtdDocs);
           end
        else
         MessageDlg( 'Documento não existente para este Modelo de Aparelho: ' + dmPP.cdsPropEquipamentoMODELOEQUIPAMENTOID.AsString +#13+
                     QuotedStr(PathCadastroDoc), mtWarning, [mbOk], 0);
       end
    else
       begin
        MessageDlg( 'Não há um documento pré-cadastrado para este Modelo de Aparelho: ' + dmPP.cdsPropEquipamentoMODELOEQUIPAMENTOID.AsString +#13+
                    QuotedStr(PathCadastroDoc), mtWarning, [mbOk], 0);
       end;
     dmPP.cdsPropEquipamento.Next;
   end;

  Except
   On E:Exception do
   begin
      QtdDocs := -1;
      MessageDlg( '''Carta'' não pode ser gerada.'+#13+'O arquivo de ''Modelo'' pode estar em uso.', mtInformation, [mbOk], 0)
   end;
  end;

 finally
  if Cds <> nil then
     begin
      Cds.Close;
      FreeAndNil( Cds );
     end;
     if QtdDocs > 0 then
        MessageDlg( 'Documento gerado com sucesso.', mtInformation, [mbOk], 0)
      else
      if QtdDocs = 0 then
         MessageDlg( 'Não há Equipamento(s) cadastrado(s) para esta Proposta.', mtInformation, [mbOk], 0);
 end;
end;

function TfrmProposta.CriaDocumento(Doc : String; Chave : String): boolean;
var FileName : String;
begin
 ConectaWord(Doc);
 try
  Result := true;
  Extenso1.Numero := FormatFloat('###,###,###,##0.00', dmPP.cdsPropostaVLRTOTALFOB.value);

  InsereCabecalho( StrZero( dmPP.cdsPropostaPROPOSTAID.AsInteger, 5,0),  dmAS.cdsConfigPP_MARGEMCABECALHO.AsInteger );

  InsereParagrafo(#13);
  InsereParagrafo(     dmPP.cdsPropostaL_FILIAL.AsString +
                       ' '+RetornaData('D') + ' de '+
                       RetornaData('M') + ' de '+
                       RetornaData('A'), dmAS.cdsConfigPP_ESTILOFONTE.AsString, dmAS.cdsConfigPP_TAMANHOFONTE.AsInteger,0,0,5, dmAS.cdsConfigPP_MARGEMPARAGRAFO.AsInteger);

  InsereParagrafo( #13 + '(À / Ao) '+ #13 +
                       dmPP.cdsPropostaNOMECLIENTE.AsString       + #13 +
                       dmPP.cdsPropostaENDERECO.AsString          +
                       ',' + dmPP.cdsPropostaNUMERO.AsString      +
                       ',' + dmPP.cdsPropostaCOMPLEMENTO.AsString +
                       '-' + dmPP.cdsPropostaBAIRRO.AsString      +
                       #13 + dmPP.cdsPropostaCIDADE.AsString      +
                       '/' + dmPP.cdsPropostaSIGLAUFID.AsString   +
                       '-' + dmPP.cdsPropostaPAIS.AsString,dmAS.cdsConfigPP_ESTILOFONTE.AsString,dmAS.cdsConfigPP_TAMANHOFONTE.AsInteger,1,0,2,dmAS.cdsConfigPP_MARGEMPARAGRAFO.AsInteger);

  InsereParagrafo(#13);
  InsereParagrafo('At. '+'Dr(a). '+ dmPP.cdsPropostaREPRESENTSOCIO.AsString +#13,dmAS.cdsConfigPP_ESTILOFONTE.AsString,dmAS.cdsConfigPP_TAMANHOFONTE.AsInteger,0,0,0,dmAS.cdsConfigPP_MARGEMPARAGRAFO.AsInteger);
  InsereParagrafo(DBRhCartaApresentacao.Lines.Text ,  dmAS.cdsConfigPP_ESTILOFONTE.AsString, dmAS.cdsConfigPP_TAMANHOFONTE.AsInteger, 0, 0, 3, dmAS.cdsConfigPP_MARGEMPARAGRAFO.AsInteger); {Carta de Apresentação}
  InsereParagrafo(#13+#13+#13+ dmAS.cdsConfigPP_NOMEGERENTE.AsString + #13 + dmAS.cdsConfigPP_CARGO.AsString , dmAS.cdsConfigPP_ESTILOFONTE.AsString, dmAS.cdsConfigPP_TAMANHOFONTE.AsInteger, 1, 0, 3,dmAS.cdsConfigPP_MARGEMPARAGRAFO.AsInteger);

  QuebraPaginaWord;
  InsereCabecalho( StrZero( dmPP.cdsPropostaPROPOSTAID.AsInteger, 5,0),  dmAS.cdsConfigPP_MARGEMCABECALHO.AsInteger );

  InsereParagrafo(#13);
  InsereParagrafo(HeaderComposicao         , dmAS.cdsConfigPP_ESTILOFONTE.AsString, dmAS.cdsConfigPP_TAMANHOFONTE.AsInteger, 1, 0, 2,dmAS.cdsConfigPP_MARGEMPARAGRAFO.AsInteger);

  {Monta composição de cada equipamento da proposta}
  InsereComposicao;

  QuebraPaginaWord;
  RetornaMoeda;

  if Preenchido( FloatToStr( dmPP.cdsPropostaVLRTOTALFOB.value) ) then
     begin
      InsereParagrafo(#13+'PREÇO ESPECIAL FOB/TOKIO: '+Extenso1.Moeda+' '+ FormatFloat('###,###,###,##0.00', dmPP.cdsPropostaVLRTOTALFOB.value), dmAS.cdsConfigPP_ESTILOFONTE.AsString, dmAS.cdsConfigPP_TAMANHOFONTE.AsInteger, 1, 0, 2, dmAS.cdsConfigPP_MARGEMPARAGRAFO.AsInteger);
     end;

  if Preenchido(DBRhCodPagtoProp.Lines.Text) then
     begin
      InsereParagrafo('CONDIÇÃO DE PAGAMENTO',     dmAS.cdsConfigPP_ESTILOFONTE.AsString, dmAS.cdsConfigPP_TAMANHOFONTE.AsInteger, 1, 0, 1,dmAS.cdsConfigPP_MARGEMPARAGRAFO.AsInteger);
      InsereParagrafo(DBRhCodPagtoProp.Lines.Text, dmAS.cdsConfigPP_ESTILOFONTE.AsString, dmAS.cdsConfigPP_TAMANHOFONTE.AsInteger, 0, 0, 2,dmAS.cdsConfigPP_MARGEMPARAGRAFO.AsInteger); {Condição de Pagto.}
     end;

  if Preenchido(DBRhObsProp.Lines.Text) then
     begin
      InsereParagrafo('OBSERVAÇÕES',               dmAS.cdsConfigPP_ESTILOFONTE.AsString, dmAS.cdsConfigPP_TAMANHOFONTE.AsInteger, 1, 0, 1,dmAS.cdsConfigPP_MARGEMPARAGRAFO.AsInteger);
      InsereParagrafo(DBRhObsProp.Lines.Text,      dmAS.cdsConfigPP_ESTILOFONTE.AsString, dmAS.cdsConfigPP_TAMANHOFONTE.AsInteger, 0, 0, 2,dmAS.cdsConfigPP_MARGEMPARAGRAFO.AsInteger); {Observação da Proposta}
     end;

  if Preenchido(DBRhGarantia.Lines.Text) then
     begin
      InsereParagrafo('GARANTIA',                  dmAS.cdsConfigPP_ESTILOFONTE.AsString, dmAS.cdsConfigPP_TAMANHOFONTE.AsInteger, 1, 0, 1,dmAS.cdsConfigPP_MARGEMPARAGRAFO.AsInteger);
      InsereParagrafo(DBRhGarantia.Lines.Text,     dmAS.cdsConfigPP_ESTILOFONTE.AsString, dmAS.cdsConfigPP_TAMANHOFONTE.AsInteger, 0, 0, 2,dmAS.cdsConfigPP_MARGEMPARAGRAFO.AsInteger); {Garantia da Proposta}
     end;

  if Preenchido(DBRhAssistTec.Lines.Text) then
     begin
      InsereParagrafo('ASSISTÊNCIA TÉCNICA',       dmAS.cdsConfigPP_ESTILOFONTE.AsString, dmAS.cdsConfigPP_TAMANHOFONTE.AsInteger, 1, 0, 1,dmAS.cdsConfigPP_MARGEMPARAGRAFO.AsInteger);
      InsereParagrafo(DBRhAssistTec.Lines.Text,    dmAS.cdsConfigPP_ESTILOFONTE.AsString, dmAS.cdsConfigPP_TAMANHOFONTE.AsInteger, 0, 0, 2,dmAS.cdsConfigPP_MARGEMPARAGRAFO.AsInteger); {Asssitencia Tecnica}
     end;

  if Preenchido(DBRhPrazo.Lines.Text) then
     begin
      InsereParagrafo('PRAZO DE EMBARQUE',         dmAS.cdsConfigPP_ESTILOFONTE.AsString, dmAS.cdsConfigPP_TAMANHOFONTE.AsInteger, 1, 0, 1, dmAS.cdsConfigPP_MARGEMPARAGRAFO.AsInteger);
      InsereParagrafo(DBRhPrazo.Lines.Text,        dmAS.cdsConfigPP_ESTILOFONTE.AsString, dmAS.cdsConfigPP_TAMANHOFONTE.AsInteger, 0, 0, 2,dmAS.cdsConfigPP_MARGEMPARAGRAFO.AsInteger); {Prazo da Proposta}
     end;

  if Preenchido(DBRhValidade.Lines.Text) then
     begin
      InsereParagrafo('VALIDADE DA PROPOSTA',      dmAS.cdsConfigPP_ESTILOFONTE.AsString, dmAS.cdsConfigPP_TAMANHOFONTE.AsInteger, 1, 0, 1, dmAS.cdsConfigPP_MARGEMPARAGRAFO.AsInteger);
      InsereParagrafo(DBRhValidade.Lines.Text,     dmAS.cdsConfigPP_ESTILOFONTE.AsString, dmAS.cdsConfigPP_TAMANHOFONTE.AsInteger, 0, 0, 2,dmAS.cdsConfigPP_MARGEMPARAGRAFO.AsInteger); {Validade da Proposta}
     end;
  {FINALIDADE DO EQUIPAMENTO}
  InsereParagrafo(AssinaturaTrailler +#13);
  InsereParagrafo(#13+#13+'DE ACORDO EM  ____/____/____',       dmAS.cdsConfigPP_ESTILOFONTE.AsString, dmAS.cdsConfigPP_TAMANHOFONTE.AsInteger, 0, 0, 5, 80);
  InsereParagrafo(#13+#13+#13+#13+#13+'___________________________________________________________',dmAS.cdsConfigPP_ESTILOFONTE.AsString, dmAS.cdsConfigPP_TAMANHOFONTE.AsInteger,0,0,0,80);
  InsereParagrafo(dmPP.cdsPropostaNomeCliente.AsString,         dmAS.cdsConfigPP_ESTILOFONTE.AsString, dmAS.cdsConfigPP_TAMANHOFONTE.AsInteger, 0, 0, 0, 80);
  InsereParagrafo('CNPJ nº '+ dmPP.cdsPropostaCPFCNPJ.AsString, dmAS.cdsConfigPP_ESTILOFONTE.AsString, dmAS.cdsConfigPP_TAMANHOFONTE.AsInteger, 0, 0, 4, 80);
  InsereParagrafo(#13+#13+#13+#13+#13+#13+ dmAS.cdsConfigPP_NOMEGERENTE.AsString + #13 + dmAS.cdsConfigPP_CARGO.AsString , dmAS.cdsConfigPP_ESTILOFONTE.AsString, dmAS.cdsConfigPP_TAMANHOFONTE.AsInteger, 1, 0, 3,dmAS.cdsConfigPP_MARGEMPARAGRAFO.AsInteger);
  QuebraPaginaWord;

 finally
  FileName := 'TMB'+
              StrZero( dmPP.cdsPropostaPROPOSTAID.AsFloat, 5,0)    + '_' +
              StrZero( dmPP.cdsPropEquipamentoITEMID.AsFloat, 3,0) + '.doc';


  if not fileExists( RetornaDiretorio+FileName ) then
     DesconectaWord(FileName)
  else
   if (MessageDlg('O arquivo '''+FileName+''' já existe.'+#13+'Deseja sobrepor ?' , mtInformation, [mbOk, mbCancel], 0) = mrOk) then
      DesconectaWord(FileName);
 end;
end;

procedure TfrmProposta.RetornaMoeda;
begin
 if Pos('R', Moeda) > 0 then
    begin
     Extenso1.Moeda       := ' real';
     Extenso1.PluralMoeda := ' reais';
    end
 else
    begin
     Extenso1.Moeda       := ' dolar';
     Extenso1.PluralMoeda := ' dolares';
    end;
end;

procedure TfrmProposta.DesconectaWord(SaveName: OleVariant);
var ItemIndex, SalvaDoc : OleVariant;
begin
 cbCartasGeradas.enabled := true;
 SalvaDoc := RetornaDiretorio + SaveName;
 WordDocument.SaveAs(SalvaDoc);
 if dmAS.cdsConfigPP_IMPRIMIR.AsInteger = 1 then
    WordDocument.PrintOut;
 cbCartasGeradas.Items.Add(SaveName);
 itemindex := 0;
 WordApplication.Windows.Arrange(itemIndex);
 WordApplication.Disconnect;
end;

procedure TfrmProposta.InsereComposicao;
var
 Composicao : TStringList;

 function PadL(Str: String; n : integer): String; {Formata com espaços em branco}
 var TamOld,   i : integer;
     ValNew, Add : String;
 begin
  Add    := ' ';
  ValNew := Trim(Str);
  TamOld := Length(ValNew);
  for  i := (TamOld+1) to n do
      ValNew := ValNew + Add;
  Result := ValNew;
 end;

begin
 Composicao := TStringList.Create;
 try
  Composicao.Add(#13+' -'+ PadL( dmPP.cdsPropEquipamentoMODELOEQUIPAMENTOID.AsString, 50-length(dmPP.cdsPropEquipamentoMODELOEQUIPAMENTOID.AsString)+10) );
  if Trim(dmPP.cdsPropEquipamentoL_DESCRICAO_EQUIPAMENTO.AsString) <> '' then
     Composicao.Add(NotNul( #13, dmPP.cdsPropEquipamentoL_DESCRICAO_EQUIPAMENTO.AsString +#13) );

  dmPP.cdsPropComposicao.First;
  while not dmPP.cdsPropComposicao.Eof do
  begin
   Composicao.Add('  -' + PadL( dmPP.cdsPropComposicaoMODELOCOMPONENTEID.AsString, 50-length(dmPP.cdsPropComposicaoMODELOCOMPONENTEID.AsString)+14) +  NotNul( ' - ', dmPP.cdsPropComposicaoL_DESCRPORTUGUES.AsString  )   );
   while not dmPP.cdsPropDependencia.Eof do
   begin
    Composicao.Add('   -' + PadL( dmPP.cdsPropDependenciaMODELODEPENDENCIAID.AsString, 50-length(dmPP.cdsPropDependenciaMODELODEPENDENCIAID.AsString)+18) + NotNul(' - ', dmPP.cdsPropDependenciaL_DESCRPORTUGUES.AsString) );
    dmPP.cdsPropDependencia.Next;
   end;
   dmPP.cdsPropComposicao.Next;
  end;
  InsereParagrafo( Composicao.Text , dmAS.cdsConfigPP_ESTILOFONTE.AsString, dmAS.cdsConfigPP_TAMANHOFONTE.AsInteger, 0, 0, 3,dmAS.cdsConfigPP_MARGEMPARAGRAFO.AsInteger);
 finally
  Composicao.Free;
 end;
end;

procedure TfrmProposta.wwDBComboDlg10Exit(Sender: TObject);
begin
 if Trim(wwDBComboDlg10.Text) = '' then
    exit;
end;

procedure TfrmProposta.AjustarGrade(Grade : TDBGrid);
var PnAjusta : TPanel1;
begin
 PnAjusta := TPanel1.Create(self);
 try
  PnAjusta.Parent    := self;
  PnAjusta.tmbCria   := true;
  PnAjusta.visible   := false;
  PnAjusta.tmbDBGrid := Grade;
  PnAjusta.tmbAjusta := true;
 finally
  FreeAndNil(PnAjusta);
 end;
end;

procedure TfrmProposta.DBGrid1DblClick(Sender: TObject);
begin
 AjustarGrade( TDBGrid(Sender) );
end;

procedure TfrmProposta.DBGrid2DblClick(Sender: TObject);
begin
 AjustarGrade( TDBGrid(Sender) );
end;

procedure TfrmProposta.DBGrid7DblClick(Sender: TObject);
begin
 AjustarGrade( TDBGrid(Sender) );
end;

procedure TfrmProposta.DBGrid8DblClick(Sender: TObject);
begin
 AjustarGrade( TDBGrid(Sender) );
end;

procedure TfrmProposta.DBGrid4DblClick(Sender: TObject);
begin
 AjustarGrade( TDBGrid(Sender) );
end;

procedure TfrmProposta.DBGrid5DblClick(Sender: TObject);
begin
 AjustarGrade( TDBGrid(Sender) );
end;

procedure TfrmProposta.DBGrid6DblClick(Sender: TObject);
begin
 AjustarGrade( TDBGrid(Sender) );
end;

procedure TfrmProposta.InsereParagrafo(conteudo: String; Font : String = 'Tahoma'; Size : integer = 9; Bold : integer = 0; underline : integer = 0; QuebraLn: integer = 0; Margem : integer = 10);
var
 Paragrafo   : WordSelection;
 QuebraLinha : String;

 procedure NovaLn;
 var i : integer;
 begin
  i := 1;
  QuebraLinha := '';
  while i <= QuebraLn do
  begin
   QuebraLinha := QuebraLinha + #13;
   inc(i);
  end;
 end;

begin
 if Font = '' then
    Font := 'Tahoma';
 if Size = 0 then
    Size := 9;
 Paragrafo                            := WordApplication.Selection;
 Paragrafo.ParagraphFormat.LeftIndent := Margem;
 Paragrafo.Font.Name                  := Font;
 Paragrafo.Font.Size                  := Size;
 Paragrafo.Font.bold                  := Bold;
 Paragrafo.Font.underline             := Underline;
 Paragrafo.TypeText( conteudo + QuebraLinha );
 Paragrafo.TypeParagraph;
end;

procedure TfrmProposta.ConectaWord(doc: String);
var {Docs,} Template, NewTemplate, ItemIndex, FileName{, SenhaDoc}: OleVariant;
begin
 try
  ItemIndex := 1;
  try
   Wordapplication.Connect;
  except
   MessageDlg('Applicativo ''Word'' não instalado.', mtError, [mbOk], 0);
  end;
  Wordapplication.Visible := True;
  WordApplication.Caption := WordCaption;
  Template    := EmptyParam;
  NewTemplate := False;
  FileName    := Doc;
{  Docs :=  WordApplication.Documents.Open(FileName,
                                          EmptyParam, EmptyParam, EmptyParam,
                                          EmptyParam, EmptyParam, EmptyParam,
                                          EmptyParam, EmptyParam, EmptyParam);}
  WordDocument.ConnectTo( WordApplication.Documents.Item(ItemIndex));
  WordApplication.Options.CheckSpellingAsYouType := False;
  WordApplication.Options.CheckGrammarAsYouType  := False;
 except
  On E: Exception do
     begin
      WordApplication.Disconnect;
     end;
 end;
end;

function TfrmProposta.RetornaNomeModelo: boolean;
var InstSQL, iSql : String;
begin
 InstSQL := 'MODELOEQUIPAMENTOID = ' + QuotedStr(dmPP.cdsPropEquipamentoMODELOEQUIPAMENTOID.AsString);
 iSQL    := AnalisarAddSQL( LocateSQL( 'dsprvEquipamento' ), InstSQL );
 ExecDynamicProvider( -1, iSQL, Cds );
 Result := (Trim(Cds.FieldByName('DOC').AsString) <> '');
end;

procedure TfrmProposta.DBGrid9TitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column, dmPP.dsPropDependencia, DBGrid9);
end;

procedure TfrmProposta.DBGrid9DblClick(Sender: TObject);
begin
 AjustarGrade( TDBGrid(Sender) );
end;

procedure TfrmProposta.QuebraPaginaWord;
var PageBreak : OleVariant;
begin
 PageBreak := wdPageBreak;
 WordApplication.Selection.InsertBreak( PageBreak );
end;

procedure TfrmProposta.AtualizaDependencia(Equipamento, Modelo: String);
begin
 with dmPP do
 begin
  if cdsOpcional.Locate('MODELOEQUIPAMENTOID;MODELOCOMPONENTEID', VarArrayOf([Equipamento, Modelo]), []) then
  begin
   cdsDependencia.First;
   while not cdsDependencia.Eof do
   begin
    cdsPropDependencia.Insert;
    cdsPropDependenciaMODELODEPENDENCIAID.Value  := cdsDependenciaMODELODEPENDENCIAID.Value;
    cdsPropDependenciaQUANTIDADE.Value           := cdsDependenciaQUANTIDADE.Value;
    cdsPropDependenciaVLRUNITARIOREVENDA.Value   := cdsDependenciaVLRUNITARIOREVENDA.Value;
    cdsPropDependenciaVLRTOTALREVENDA.Value      := cdsDependenciaVLRTOTALREVENDA.Value;
    cdsPropDependenciaVLRUNITARIOFOB.Value       := cdsDependenciaVLRUNITARIOFOB.Value;
    cdsPropDependenciaVLRTOTALFOB.Value          := cdsDependenciaVLRTOTALFOB.Value;
    cdsPropDependenciaVLRUNITARIONET.Value       := cdsDependenciaVLRUNITARIONET.Value;
    cdsPropDependenciaVLRTOTALNET.Value          := cdsDependenciaVLRTOTALNET.Value;
    cdsPropDependencia.Post;
    cdsDependencia.Next;
   end;
  end;
 end;
end;

procedure TfrmProposta.actImpressaoExecute(Sender: TObject);
begin
 if Trim(wwDBComboDlg10.text) <> '' then
    begin
     cbCartasGeradas.Clear;
     GerenciaWord;
     cbCartasGeradas.ItemIndex := 0;
    end
 else
    MessageDlg('Selecione um ''nº de Carta'' para geração dos documentos.', mtInformation,[mbOk], 0);
end;

procedure TfrmProposta.FechaBancoDeDados;
begin
 dmPP.cdsPropBonificacao.Close;
 dmPP.cdsPropVendedor.Close;
 dmPP.cdsPropTradeIn.Close;
 dmAS.cdsConfig.Close;
end;

function TfrmProposta.NotNul(Tok, Conteudo: String): String;
begin
 if Trim(conteudo) <> '' then
    Result := Tok + Conteudo
 else
  Result := Conteudo;
end;

procedure TfrmProposta.FormCreate(Sender: TObject);
begin
 Application.OnHint := StatusHint;
end;


procedure TfrmProposta.StatusHint(Sender: TObject);
begin
 if StatusBar <> nil then
    StatusBar.Panels.Items[2].text := GetLongHint(Application.Hint);
end;

function TfrmProposta.VerificaRegistroExiste(Campo, Conteudo, Tabela: String): boolean;
var iSql : String;
    CdsSql : TClientDataSet;
begin
 CdsSql     := nil;
 iSQL    := 'SELECT  '+ Campo + ' FROM  '+ Tabela +
            ' WHERE '+
            Campo + '= '+QuotedStr( Conteudo);
 try
  ExecDynamicProvider( -1, iSQL, CdsSql );

  Result := (not CdsSql.IsEmpty);

 finally
  CdsSql.Close;
  FreeAndNil( CdsSql );
 end;
end;

procedure TfrmProposta.InsereCabecalho(NoProposta: String; margem : integer);
var S : WordSelection;
begin
 if margem = 0 then
    margem := 120;
 {Desabilitar a visualização das modificações em tela}
 WordApplication.ScreenUpdating := False;
 {Adicionar Cabeçalho no Documento do Word}
 WordDocument.ActiveWindow.ActivePane.View.ShowDrawings := True;
 WordDocument.ActiveWindow.ActivePane.View.SeekView     := wdSeekCurrentPageHeader;
 S := WordApplication.Selection;
 S.ParagraphFormat.LeftIndent := margem;
 S.Font.Name := 'Microstyle Bold Extended ATT';
 S.Font.Size := 9;
 S.TypeText( 'TOSHIBA MEDICAL DO BRASIL LTDA.' );
 S.TypeParagraph;
 S.ParagraphFormat.LeftIndent := margem;
 S.Font.Name := 'Arial';
 S.Font.Size := 8;
 S.TypeText( 'Rua Marcelo Moraes Cordeiro, 110  - Taboão da Serra - SP - CEP: 06765-280' + #13 );
 S.TypeText( 'Tel: (11) 4788-4384 / Fax: (11) 4788-4398' + #13 );
 S.TypeText( 'e-mail: commercial@toshibamedical.com.br' + #13 );
 S.TypeText( 'www.toshibamedical.com.br' + #13 );
 S.TypeParagraph;
 S.ParagraphFormat.LeftIndent := wdDefaultFirstRecord;
 S.Paragraphs.Alignment := wdAlignParagraphLeft;
 S.Font.Size := 9;
 S.Font.Bold := Integer( True );
 S.TypeText( 'TMB: '+ NoProposta +'_'+StrZero( dmPP.cdsPropEquipamentoITEMID.AsFloat, 3,0) );
 S.Font.Bold := Integer( False );
 {Adicionar Cabeçalho no Documento do Word}
 WordDocument.ActiveWindow.ActivePane.View.ShowDrawings := True;
 WordDocument.ActiveWindow.ActivePane.View.SeekView     := wdSeekMainDocument;
 {Abilitar a visualização das modificações em tela}
 WordApplication.ScreenUpdating := true;
 WordApplication.Visible := True;
end;

function TfrmProposta.Preenchido(conteudo: String): boolean;
begin
 Result := (Trim(conteudo)<>'');
end;

procedure TfrmProposta.wwDBComboDlg11CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmPP.dsInstalacao, 'INSTALACAOID', wwDBComboDlg11.Text, 'Instalação' );
 ExecLoockupRetorno(dmPP.cdsProposta, 'INSTALACAOID', 'INSTALACAOID');
end;

procedure TfrmProposta.actConfigExecute(Sender: TObject);
begin
 Application.CreateForm(TFrmPropostaConfig, FrmPropostaConfig);
 try
  FrmPropostaConfig.ShowModal;
 finally
  FrmPropostaConfig.Free;
 end;
end;

procedure TfrmProposta.SpeedButton1Click(Sender: TObject);
begin
 if cbCartasGeradas.Text <> '' then
     ShellExecute(Handle, 'OPEN', PChar(RetornaDiretorio+cbCartasGeradas.Text), nil, nil, 0)
 else
  Application.MessageBox('Não há cartas geradas.','Mensagem', 0);
end;

function TfrmProposta.RetornaDiretorio: String;
begin
 if dmAS.cdsConfigPP_DIRETORIODESTINO.AsString = '' then
    Result := 'S:\GSI\Doc\'
    else
     if Pos('\', Copy(dmAS.cdsConfigPP_DIRETORIODESTINO.AsString, Length(dmAS.cdsConfigPP_DIRETORIODESTINO.AsString), 1) ) <=0 then
        Result :=  dmAS.cdsConfigPP_DIRETORIODESTINO.AsString + '\'
     else
      Result :=  dmAS.cdsConfigPP_DIRETORIODESTINO.AsString;
end;

procedure TfrmProposta.wwDBComboDlg12CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmPP.dsOrigemVenda,'ORIGEMVENDAID',dmPP.cdsPropostaORIGEMVENDAID.AsString);
 ExecLoockupRetorno(dmPP.cdsProposta,'ORIGEMVENDAID','ORIGEMVENDAID');
end;

procedure TfrmProposta.wwDBComboDlg13CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmPP.dsTipoVenda,'TIPOVENDAID',dmPP.cdsPropostaTIPOVENDAID.AsString);
 ExecLoockupRetorno(dmPP.cdsProposta,'TIPOVENDAID','TIPOVENDAID');
end;

end.
