unit u_PadraoPesquisa;

interface

uses SysUtils, Forms, Graphics, Menus, ComCtrls, tmbToolManutencaoBottom, ExtCtrls,
  PnAjustaGrid, ToolWin, tmbToolManutencaoTop, Controls, Grids, DBGrids,
  Buttons, Classes, Types, DB, DBClient, Dialogs, StdCtrls;

type
  TfrmPadraoPesquisa = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    mnuFechar: TMenuItem;
    tmbManutTop1: TtmbManutTop;
    Panel1: TPanel;
    tmbManutBottom1: TtmbManutBottom;
    dbgrdPadraoPesquisa: TDBGrid;
    tPanel11: tPanel1;
    StatusBar: TStatusBar;
    PopupMenu1: TPopupMenu;
    PnLocalizar: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mnuFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgrdPadraoPesquisaDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure dbgrdPadraoPesquisaTitleClick(Column: TColumn);
    procedure dbgrdPadraoPesquisaDblClick(Sender: TObject);
  private
    { Private declarations }
    FDataSetOpen    : Boolean;
    FPesquisar     : boolean;
    FRetornar: boolean;
    FTTmbValuesPesquisa: String;
    FTtmbCamposPesquisa: String;
    FFDataSource: TDataSource;
    procedure AtualizaComponentes;
    procedure SetPesquisar(const Value: boolean);
    procedure SetRetornar(const Value: boolean);
    procedure SetTtmbCamposPesquisa(const Value: String);
    procedure SetTTmbValuesPesquisa(const Value: String);
    procedure SetFDataSource(const Value: TDataSource);
    procedure RecuperaRegistro;
    procedure MostraColunas(Grade: TDBGrid; Menu: TPopupMenu);
    procedure Clicou(Sender: TObject);
    procedure PermutaCheckMenu(Sender: TObject);
    procedure PesquisaIncremental(Sender: TObject);

  public
    { Public declarations }
    cdsDestino      : TClientDataSet;
    cpDestino,
    cpOrigem        : String;
    ClassOwnerEspec : TComponentClass;
    FormOwnerEspec  : TForm;
    FClienteDataSet : TClientDataSet;
    FDataSet        : TClientDataSet;
    FFrmPadrao      : boolean;
    property PesquisarLookup    : boolean     read FPesquisar          write SetPesquisar;
    property RetornarVisivel    : boolean     read FRetornar           write SetRetornar;
    property TtmbCamposPesquisa : String      read FTtmbCamposPesquisa write SetTtmbCamposPesquisa;
    property TTmbValuesPesquisa : String      read FTTmbValuesPesquisa write SetTTmbValuesPesquisa;
    property FDataSource        : TDataSource read FFDataSource        write SetFDataSource;
  end;

var
  frmPadraoPesquisa      : TfrmPadraoPesquisa;
  VlrRegistroSelecionado : String;
  LnRegSelecionado       : integer;

implementation

uses FuncoesCliente, Math;

{$R *.dfm}

procedure TfrmPadraoPesquisa.AtualizaComponentes;
begin
 tmbManutBottom1.TtmbClassOwnerEspec := ClassOwnerEspec;
 tmbManutBottom1.TtmbFormOwnerEspec  := FormOwnerEspec;
 FDataSource.DataSet.Close;
 dbgrdPadraoPesquisa.DataSource      := FDataSource;
 tmbManutBottom1.TtmbClientDataSet   := TClientDataSet( FDataSource.DataSet );
 tmbManutBottom1.TtmbDataSource      := FDataSource;
 tmbManutBottom1.TtmbFormulario      := frmPadraoPesquisa;
 tmbManutBottom1.TtmbClientDataSet.Open;
 tmbManutTop1.TtmbDataSource         := FDataSource;
 tmbManutTop1.TtmbPreencheCombos     := true;
end;

procedure TfrmPadraoPesquisa.FormClose(Sender: TObject;
  var Action: TCloseAction);

 procedure RetornoPesquisa;
 var Cp, CpOg : String;
 begin
  if Trim(VlrRegistroSelecionado) <> '' then
     begin
      while Trim(cpDestino) <> '' do
      begin
       if Pos(';', cpDestino) > 0 then
          begin
           Cp := Copy( cpDestino, 1 , Pos(';', cpDestino) );
           CpOg := Copy( cpOrigem, 1 , Pos(';', cpOrigem) );
           if Pos(';', Cp) > 0 then
              begin
               Delete(Cp, length(Cp), 1);
               Delete(CpOg, length(CpOg), 1);
              end;
          end
       else
          begin
           Cp := Copy( cpDestino, 1 , Length(cpDestino));
           CpOg := Copy( cpOrigem, 1 , Length(cpOrigem));
          end;

       Delete(cpDestino,1, (Length(Cp)+1) );
       Delete(cpOrigem,1, (Length(CpOg)+1) );

       FDataSource.DataSet.RecNo := LnRegSelecionado;
       if Trim(Cp) <> '' then
          try
            TClientDataSet(cdsDestino).FieldByName(Cp).Value := FDataSource.DataSet.FieldByName(CpOg).Value;
          except
            Application.ProcessMessages;
          end;
      end;
     end
  else
   Application.MessageBox('Não foi Selecionado nenhum Registro para Retorno.','Mensagem', 0);
 end;

begin
 try
  RecuperaRegistro;
  dbgrdPadraoPesquisa.DataSource.Tag := 0; {Controla se o formulario ja não esta criado pelo DataSource corrente}
  try
   if (ModalResult = mrOk) then
      RetornoPesquisa;
  Except
   On E:Exception do
      Application.ProcessMessages;
  end;

 Finally
  FDataSet        := nil;
  FDataSource     := nil;
  FClienteDataSet := nil;
 end;
 Action := caFree;
 frmPadraoPesquisa := nil;
end;

procedure TfrmPadraoPesquisa.mnuFecharClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmPadraoPesquisa.FormShow(Sender: TObject);
var z : integer;
begin
 FDataSetOpen           := FDataSet.Active;
 VlrRegistroSelecionado := '';
 AtualizaComponentes;

 {Adiciona Fields no Grid}
 if FDataSetOpen then
    for z := 0 to FFDataSource.DataSet.FieldCount-1 do
    begin
     dbgrdPadraoPesquisa.Columns.Add;
     dbgrdPadraoPesquisa.Columns.Items[z].FieldName := FFDataSource.DataSet.Fields[z].FieldName;
    end;

 MostraColunas(dbgrdPadraoPesquisa, PopupMenu1);

 tPanel11.tmbAjusta := True;

 tmbManutTop1.cbxCampos.ItemIndex   := 0;
 tmbManutTop1.cbxCondicao.ItemIndex := 1;
 tmbManutTop1.cbxCampos.OnExit( Sender );

 if Assigned( frmPadraoPesquisa ) then
    frmPadraoPesquisa.ActiveControl := tmbManutTop1.mktConteudo;

 StatusBar.Panels.Items[0].Text := 'Tabela: '+ Copy( FFDataSource.DataSet.Name, (Pos('cds', FFDataSource.DataSet.Name)+3), Length(FFDataSource.DataSet.Name));
 StatusBar.Panels.Items[1].Text := 'Status: Pesquisa';
end;

procedure TfrmPadraoPesquisa.dbgrdPadraoPesquisaDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
 dbgrdPadraoPesquisa.Columns[0].Color      := clGray;
 dbgrdPadraoPesquisa.Columns[0].Font.Color := clWhite;
end;

procedure TfrmPadraoPesquisa.SetPesquisar(const Value: boolean);
begin
 FPesquisar := Value;
 tmbManutTop1.TtmbPesquisar  := FPesquisar;
end;

procedure TfrmPadraoPesquisa.SetRetornar(const Value: boolean);
begin
 FRetornar := Value;
 if FRetornar = true then
    TmbManutTop1.TtmbRetornoVisivel := true;
end;

procedure TfrmPadraoPesquisa.dbgrdPadraoPesquisaTitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column, FDataSource, dbgrdPadraoPesquisa);
end;

procedure TfrmPadraoPesquisa.SetTtmbCamposPesquisa(const Value: String);
begin
 FTtmbCamposPesquisa := Value;
 tmbManutTop1.TtmbCamposPesquisa := Trim(FTtmbCamposPesquisa);
end;

procedure TfrmPadraoPesquisa.SetTTmbValuesPesquisa(const Value: String);
begin
 FTTmbValuesPesquisa := Value;
 tmbManutTop1.TtmbValuesPesquisa := Trim(FTTmbValuesPesquisa);
end;

procedure TfrmPadraoPesquisa.SetFDataSource(const Value: TDataSource);
begin
 FFDataSource := Value;
end;

procedure TfrmPadraoPesquisa.RecuperaRegistro;
begin
 VlrRegistroSelecionado := '';
 if not dbgrdPadraoPesquisa.DataSource.DataSet.IsEmpty then
    begin
     VlrRegistroSelecionado := FDataSource.DataSet.Fields[0].Value;
     LnRegSelecionado := FDataSource.DataSet.RecNo;
    end;
end;

procedure TfrmPadraoPesquisa.MostraColunas(Grade: TDBGrid; Menu: TPopupMenu);
var z : integer;
   M1 : TMenuItem;
begin
 M1              := TMenuItem.Create(self);
 M1.Checked      := false;
 M1.Tag          := -1;
 M1.Caption      := 'Pesquisa incremental..';
 M1.name         := 'MitemPesq';
 M1.OnClick      := PesquisaIncremental;
 Menu.Items.Add(M1);

 M1              := TMenuItem.Create(self);
 M1.Checked      := true;
 M1.Tag          := -2;
 M1.Caption      := 'Desabilita Todos';
 M1.name         := 'MitemDesab';
 M1.OnClick      := PermutaCheckMenu;
 Menu.Items.Add(M1);

 M1              := TMenuItem.Create(self);
 M1.Tag          := -3;
 M1.Caption      := '-';
 M1.name         := 'MitemBarra';
 Menu.Items.Add(M1);

 for z := 0 to Grade.Columns.Count-1 do
 begin
  M1 := TMenuItem.Create(self);
  M1.Checked := true;
  M1.Caption := Grade.Columns.Items[z].Title.Caption;
  M1.Tag     := z;
  M1.name    := Grade.Columns.Items[z].FieldName;
  M1.OnClick := Clicou;
  Menu.Items.Add(M1);
 end;
end;

procedure TfrmPadraoPesquisa.Clicou(Sender: TObject);
begin
 TMenuItem(Sender).Checked := not TMenuItem(Sender).Checked;
 if not TMenuItem(Sender).Checked then
    TDBGrid( dbgrdPadraoPesquisa).Columns[TMenuItem(Sender).Tag].Visible := false
 else
  TDBGrid( dbgrdPadraoPesquisa).Columns[TMenuItem(Sender).Tag].Visible := true;
end;

procedure TfrmPadraoPesquisa.PermutaCheckMenu(Sender: TObject);
 procedure DesabilitaTodos(check:boolean);
 var z : integer;
 begin
  for z := 0 to dbgrdPadraoPesquisa.Columns.Count-1 do
  begin
   dbgrdPadraoPesquisa.Columns[z].Visible    := check;
   PopupMenu1.Items.Items[z+3].Checked := check;
  end;
 end;

begin
 TMenuItem(Sender).Checked := not TMenuItem(Sender).Checked;
 DesabilitaTodos(TMenuItem(Sender).Checked);
 Case TMenuItem(Sender).Checked of
  true : TMenuItem(Sender).Caption := 'Desabilita Todos';
  false: TMenuItem(Sender).Caption := 'Habilita Todos';
 end;
end;

procedure TfrmPadraoPesquisa.PesquisaIncremental(Sender: TObject);
begin
 PnLocalizar.Visible := true;
 Edit1.SetFocus;
end;

procedure TfrmPadraoPesquisa.dbgrdPadraoPesquisaDblClick(Sender: TObject);
begin
 if tmbManutTop1.sbRetornar.Visible then
    tmbManutTop1.sbRetornar.OnClick( Sender )
 else
    begin
     if not dbgrdPadraoPesquisa.DataSource.DataSet.IsEmpty then
        tmbManutBottom1.SpEditar.OnClick( Sender );
    end;
end;

end.
