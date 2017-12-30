unit u_TabelaPreco;

interface

uses
  SysUtils, Forms, ActnMan, ActnCtrls, tmbToolEdicaoTop, Classes, ActnList,
  ExtCtrls, Menus, Dialogs, XPStyleActnCtrls, ImgList, Controls, ComCtrls,
  ToolWin, tmbToolEdicaoBottom, wwdbedit, Wwdotdot, StdCtrls, DBCtrls,
  wwdbdatetimepicker, tmbToolEdicaoLista, Grids, DBGrids, Mask, ShellApi,
  PnAjustaGrid;

type
  TfrmTabelaPreco = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    GroupBox1: TGroupBox;
    Panel4: TPanel;
    Label14: TLabel;
    Label4: TLabel;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    Label6: TLabel;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit4: TDBEdit;
    Label3: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBImage1: TDBImage;
    Label10: TLabel;
    DBEdit3: TDBEdit;
    Label11: TLabel;
    edAtalhoDoc: TDBEdit;
    DBCheckBox11: TDBCheckBox;
    GroupBox2: TGroupBox;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    Label15: TLabel;
    DBEdit12: TDBEdit;
    wwDBComboDlg2: TwwDBComboDlg;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Panel1: TPanel;
    StatusBar: TStatusBar;
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    tmbEdicaoBottom1: TtmbEdicaoBottom;
    Panel7: TPanel;
    PopupMenu1: TPopupMenu;
    abrir1: TMenuItem;
    DBGrid1: TDBGrid;
    tmbEdicaoLista1: TtmbEdicaoLista;
    TabSheet2: TTabSheet;
    GroupBox4: TGroupBox;
    DBRhDescEquipamento: TDBMemo;
    Panel2: TPanel;
    tmbEdicaoLista3: TtmbEdicaoLista;
    DBGrid3: TDBGrid;
    Splitter1: TSplitter;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    DBGrid2: TDBGrid;
    tmbEdicaoLista2: TtmbEdicaoLista;
    TabSheet4: TTabSheet;
    TabSheet7: TTabSheet;
    DBGrid4: TDBGrid;
    DBGrid5: TDBGrid;
    CoolBar1: TCoolBar;
    ActionToolBar1: TActionToolBar;
    tmbEdicaoTop2: TtmbEdicaoTop;
    actmngManutencao: TActionManager;
    actMontarComposicao: TAction;
    ImageList1: TImageList;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbRetornarClick(Sender: TObject);
    procedure wwDBComboDlg2CustomDlg(Sender: TObject);
    procedure edAtalhoDocKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure wwDBComboDlg2Exit(Sender: TObject);
    procedure abrir1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure DBImage1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DBEdit14Exit(Sender: TObject);
    procedure DBRichEdit1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actMontarComposicaoExecute(Sender: TObject);
  private
    { Private declarations }
   function  VerificaIdAparelho(msg : boolean = true) : boolean;
   procedure AjustarGrade(Grade : TDBGrid);
  public
    { Public declarations }
    function ConsisteCampo(Sender : TObject):boolean;
  end;
var
  frmTabelaPreco: TfrmTabelaPreco;

implementation

uses u_dmPP, u_PadraoEdicao, u_VisualComponente, FuncoesCliente;

{$R *.dfm}

procedure TfrmTabelaPreco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 if not FinalFormulario(dmPP.cdsEquipamento,' do Equipamento e seus acessórios ') then
    Action := caNone
 else
    begin
     Action         := caFree;
     frmTabelaPreco := Nil;
    end;
    Application.OnHint := nil;
end;

procedure TfrmTabelaPreco.tbRetornarClick(Sender: TObject);
begin
 ModalResult := mrOk;
end;

procedure TfrmTabelaPreco.wwDBComboDlg2CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmPP.dsCatalogo, 'MODELOID', wwDBComboDlg2.Text );
 ExecLoockupRetorno(dmPP.cdsEquipamento, 'MODELOEQUIPAMENTOID', 'MODELOID');
end;

procedure TfrmTabelaPreco.edAtalhoDocKeyPress(Sender: TObject; var Key: Char);
begin
(* if Trim(DBEdit2.Text) = '' then
    begin
     Application.MessageBox('Informe um modelo de Aparelho para cadastro.','Mensagem', 0);
     Key := #0;
    end; *)
end;

function TfrmTabelaPreco.VerificaIdAparelho(msg : boolean = true): boolean;
begin
 Result := true;
 if Trim(DBEdit2.Text) = '' then
    begin
     if msg then
        Application.MessageBox('Informe um modelo de Aparelho para cadastro.','Mensagem', 0);
     Result := false;
    end;
end;

procedure TfrmTabelaPreco.Button1Click(Sender: TObject);
begin
 if OpenDialog1.Execute then
    dmPP.cdsEquipamentoDOC.value := OpenDialog1.FileName;
end;

procedure TfrmTabelaPreco.FormShow(Sender: TObject);
var y : integer;
begin
 for y := 1 to 3 do
 begin
  TtmbEdicaoLista( FindComponent('tmbEdicaoLista'+ intToStr(y))).TtmbClassOwnerEspec := TFrmPadraoEdicao;
  TtmbEdicaoLista( FindComponent('tmbEdicaoLista'+ intToStr(y))).TtmbFormOwnerEspec  := FrmPadraoEdicao;
  TtmbEdicaoLista( FindComponent('tmbEdicaoLista'+ intToStr(y))).TtmbFontDefaut      := false;
  TtmbEdicaoLista( FindComponent('tmbEdicaoLista'+ intToStr(y))).TtmbCriar           := true;
  TtmbEdicaoLista( FindComponent('tmbEdicaoLista'+ intToStr(y))).ParentFont          := false;
 end;
 tmbEdicaoLista1.TtmbClientDataSet := dmPP.cdsComposicao;
 tmbEdicaoLista1.TtmbDataSource    := dmPP.dsComposicao;
 tmbEdicaoLista2.TtmbClientDataSet := dmPP.cdsDependencia;
 tmbEdicaoLista2.TtmbDataSource    := dmPP.dsDependencia;
 tmbEdicaoLista3.TtmbClientDataSet := dmPP.cdsOpcional;
 tmbEdicaoLista3.TtmbDataSource    := dmPP.dsOpcional;

 StatusBar.Panels.Items[0].Text := 'Tabela: '+ Copy( dmPP.cdsEquipamento.Name, (Pos('cds', dmPP.cdsEquipamento.Name)+3), Length(dmPP.cdsEquipamento.Name));
 StatusBar.Panels.Items[1].Text := 'Status: Pesquisa';

 if dmPP.cdsComposicao.Active = false then
    dmPP.cdsComposicao.Open;
 if dmPP.cdsDependencia.Active = false then
    dmPP.cdsDependencia.Open;
 if DMpp.cdsOpcional.Active = false then
    DMpp.cdsOpcional.Open;
end;


procedure TfrmTabelaPreco.DBGrid1TitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column, dmPP.dsComposicao, DBGrid1);
end;

procedure TfrmTabelaPreco.FormKeyPress(Sender: TObject; var Key: Char);
begin
 {Habilitar a propriedade KeyPreview do Form para funcionar o Enter como Tab}
 //if Key = #13 then
  //  SelectNext( Screen.ActiveControl, True, True );
end;

function TfrmTabelaPreco.ConsisteCampo(Sender: TObject): boolean;
begin
 Result := true;
 if (Sender is  TDBEdit) then
    if ( (Sender as TDBEdit).Text = '') then
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

procedure TfrmTabelaPreco.wwDBComboDlg2Exit(Sender: TObject);
begin
 ConsisteCampo(Sender);
end;

procedure TfrmTabelaPreco.abrir1Click(Sender: TObject);
begin
 ShellExecute(Handle, 'OPEN', PChar(edAtalhoDoc.Text), nil, nil, 0);
end;

procedure TfrmTabelaPreco.AjustarGrade(Grade: TDBGrid);
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

procedure TfrmTabelaPreco.DBGrid1DblClick(Sender: TObject);
begin
 AjustarGrade( TDBGrid(Sender) );
end;

procedure TfrmTabelaPreco.DBGrid2DblClick(Sender: TObject);
begin
 AjustarGrade( TDBGrid(Sender) );
end;

procedure TfrmTabelaPreco.DBGrid3DblClick(Sender: TObject);
begin
 AjustarGrade( TDBGrid(Sender) );
end;

procedure TfrmTabelaPreco.DBImage1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 DBImage1.Hint := DBRhDescEquipamento.Text;
end;

procedure TfrmTabelaPreco.DBEdit14Exit(Sender: TObject);
begin
 PageControl1.TabIndex := 1;
end;

procedure TfrmTabelaPreco.DBRichEdit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if DBCheckBox11.CanFocus then
    DBCheckBox11.SetFocus;
 if DBRhDescEquipamento.CanFocus then
    DBRhDescEquipamento.SetFocus;
end;

procedure TfrmTabelaPreco.actMontarComposicaoExecute(Sender: TObject);
begin
 if VerificaIdAparelho then
    begin
     frmVisualComponente := TfrmVisualComponente.Create( Self );
     frmVisualComponente.ShowModal;
    end;
end;

end.

