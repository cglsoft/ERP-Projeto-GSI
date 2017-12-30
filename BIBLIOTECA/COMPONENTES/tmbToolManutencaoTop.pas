unit tmbToolManutencaoTop;

interface

uses
  SysUtils, Classes, Controls, ToolWin, ComCtrls,  ExtCtrls, Buttons, StdCtrls,
  Forms, DB, DBClient, Dialogs, Mask , u_dmGSI, FuncoesDSI;

type
  TtmbManutTop = class(TCoolBar)
  private
    FCria: boolean;
    FPreencheCombos: boolean;
    FDmGsiLoc: TClientDataSet;
    FDataSource: TDataSource;
    FRetornoVisivel: boolean;
    FTtmbPesquisar: boolean;
    FTTmbValuesPesquisa: String;
    FTtmbCamposPesquisa: String;
    FUsuario: String;
    function PosCampoIdxPesq : Integer;
    procedure SetCria(const Value: boolean);
    procedure SetDataSource(const Value: TDataSource);
    procedure SetPreencheCombos(const Value: boolean);
    procedure SetDmGsiLoc(const Value: TClientDataSet);
    procedure SetRetornoVisivel(const Value: boolean);
    procedure SetTtmbPesquisar(const Value: boolean);
    procedure SetTtmbCamposPesquisa(const Value: String);
    procedure SetTTmbValuesPesquisa(const Value: String);
    function QuebraString(var Str: String): String;
    function AddParametroPesquisa( var CampoPesquisa : String ) : String; overload;
    function AddParametroPesquisa( var CampoPesquisa : String; Item : Integer ) : String; overload;
    procedure PesquisaNoForm;
    procedure PesquisaLoockup;
    procedure InicioDoCampo(Sender: TObject);
    procedure SetaComboCampo(Cp : String);
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    PnTool  : TPanel;
    sbParametros,
    sbPesquisa,
    sbRetornar,
    sbAddFiltro,
    sbFindPadrao   : TSpeedButton;
    cbxCampos,
    cbxCondicao    : TComboBox;
    strlstIdxCampo : TStrings;
    mktConteudo    : TMaskEdit;
    Bevel          : TBevel;
    FDataSet       : TClientDataSet;
    cdsAddFiltro   : TClientDataSet;
    FSQLParam      : WideString;
    constructor Create(AOwner : TComponent);  override;
    Destructor  Destroy; override;
    procedure ControiComponente(opc: boolean);
    function  AnalisarParamPesq( Campo, Condicao, Conteudo : String ) : String;
    procedure PesquisaSql(Sender : TObject);
    procedure AddFiltro( Sender : TObject);
    procedure AddFindPadrao( Sender : TObject);
    procedure Retornar(Sender :TObject);
    procedure PressionarEnter( Sender: TObject; var Key: Char );
    procedure PressionarTecla( Sender: TObject; var Key: Char);
    procedure AdicionarMascara( Sender: TObject );
  published
    { Published declarations }
    property TtmbCria           : boolean        read FCria               write SetCria;
    property TtmbPreencheCombos : boolean        read FPreencheCombos     write SetPreencheCombos;
    property TtmbDataSource     : TDataSource    read FDataSource         write SetDataSource;
    property TtmbDmGsiCdsSQL    : TClientDataSet read FDmGsiLoc           write SetDmGsiLoc;
    property TtmbRetornoVisivel : boolean        read FRetornoVisivel     write SetRetornoVisivel;
    property TtmbPesquisar      : boolean        read FTtmbPesquisar      write SetTtmbPesquisar;
    property TtmbCamposPesquisa : String         read FTtmbCamposPesquisa write SetTtmbCamposPesquisa;
    property TTmbValuesPesquisa : String         read FTTmbValuesPesquisa write SetTTmbValuesPesquisa;
    property TtmbUsuario        : String         read FUsuario            write FUsuario;
  end;

procedure Register;

implementation

uses FuncoesCliente, u_AdicionarPesquisa, StrUtils, MaskUtils;

var PathBMP : String;

procedure Register;
begin
 RegisterComponents('CGLSOFT', [TtmbManutTop]);
end;

function TtmbManutTop.PosCampoIdxPesq : Integer;
begin
 Result := StrToInt( strlstIdxCampo.Strings[cbxCampos.ItemIndex] );
end;

procedure TtmbManutTop.SetaComboCampo(Cp : String);
var i : Integer;
    Campo : String;
begin
 for i := 0 to cbxCampos.Items.Count -1 do
     begin
      Campo := cbxCampos.Items[i];
      RemoveString(Campo, ' ');
      RemoveString(Cp, ' ');
      if AnsiUpperCase(Campo) = AnsiUpperCase(Cp) then
         begin
          cbxCampos.ItemIndex := i;
          Break;
         end;
     end;
end;


procedure TtmbManutTop.PressionarEnter( Sender: TObject; var Key: Char );
begin
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;

procedure TtmbManutTop.PressionarTecla( Sender: TObject; var Key: Char );
begin
 if Key = #13 then
    begin
     if CheckSenha( FUsuario, TForm(Self.Owner).Caption, sbPesquisa.Hint, true) then
        begin
         if FTTmbValuesPesquisa = '' then
            PesquisaNoForm {Pesquisa internamente pelo botão Pesquisar}
         else
            PesquisaLoockup; {Pesquisa inicial chamada por um campo de Loockup}
        end;
    end;
end;

procedure TtmbManutTop.AdicionarMascara(Sender: TObject);
begin
 if (Trim(cbxCampos.Text ) <> '' ) and (Trim(cbxCondicao.Text) <> '') then
     mktConteudo.EditMask := FDataSet.Fields.Fields[PosCampoIdxPesq].EditMask;
end;

procedure TtmbManutTop.InicioDoCampo(Sender: TObject);
begin
 mktConteudo.SelStart := 0;
end;

{ TtmbManutTop }
function TtmbManutTop.AnalisarParamPesq(Campo, Condicao,
  Conteudo: String): String;
var ParSQL : String;
begin
 ParSQL := '';  {Todos}

 if Condicao = 'Igual' then
     ParSQL := Campo + ' = ' + QuotedStr( Conteudo )
    else
 if Condicao = 'Diferente' then
     ParSQL := Campo + ' <> ' + QuotedStr( Conteudo )
    else
 if Condicao = 'Maior' then
     ParSQL := Campo + '>' + QuotedStr( Conteudo )
    else
 if Condicao = 'Maior e Igual' then
     ParSQL := Campo + ' >= ' + QuotedStr( Conteudo )
    else
 if Condicao = 'Menor' then
     ParSQL := Campo + ' < ' + QuotedStr( Conteudo )
    else
 if Condicao = 'Menor e Igual' then
     ParSQL := Campo + ' <= ' + QuotedStr( Conteudo )
    else
 if Condicao = 'Contido' then
     ParSQL := Campo + ' LIKE ' + QuotedStr( '%' + Conteudo + '%' )
    else
 if Condicao = 'Não Contido' then
     ParSQL := Campo + ' NOT LIKE ' + QuotedStr( '%' + Conteudo + '%' )
    else
 if Condicao = 'Não Preenchido' then
     ParSQL := Campo + ' IS NULL '
    else
 if Condicao = 'Preenchido' then
     ParSQL := Campo + ' IS NOT NULL '
    else
 if Condicao = 'Inicie com' then
     ParSQL := Campo + ' LIKE ' + QuotedStr(  Conteudo + '%' );


 Result := ParSQL;
end;


procedure TtmbManutTop.ControiComponente(opc: boolean);
begin
 if (opc = true) then
    begin
     cdsAddFiltro := TClientDataSet.Create( self );
     cdsAddFiltro.FieldDefs.Add( 'Id', ftInteger, 0, False );
     cdsAddFiltro.FieldDefs.Add( 'S1', ftString, 100, False, );  // Separador "("
     cdsAddFiltro.FieldDefs.Add( 'Campo', ftString, 50, False, );
     cdsAddFiltro.FieldDefs.Add( 'Condicao', ftString, 15, False, );
     cdsAddFiltro.FieldDefs.Add( 'Conteudo', ftString, 100, False, );
     cdsAddFiltro.FieldDefs.Add( 'Relacional', ftString, 5, False, );
     cdsAddFiltro.FieldDefs.Add( 'S2', ftString, 200, False, );  // Separador ")"
     cdsAddFiltro.FieldDefs.Add( 'InstrucaoSQL', ftString,200, False, );
     cdsAddFiltro.CreateDataSet;
     cdsAddFiltro.AddIndex( 'idx1','Id',[ixPrimary],'','',0);
     cdsAddFiltro.IndexName := 'idx1';

     if PnTool = nil then
        PnTool := TPanel.Create(self);
     PnTool.Height     := 28;
     PnTool.Width      := 33;
     PnTool.BevelOuter := bvNone;
     PnTool.Caption    := '';
     {}
     if sbParametros = nil then
        sbParametros := TSpeedButton.Create(self);
     sbParametros.Name      := 'SpParametro';
     sbParametros.Caption   := '&Parametros';
     sbParametros.Left      := 0;
     sbParametros.Height    := 28;
     sbParametros.Width     := 75;
     sbParametros.Flat      := true;
     sbParametros.Parent    := PnTool;
     sbParametros.Glyph.LoadFromFile(PathBMP +'\parametros.bmp');
     {}
     if cbxCampos = nil then
        cbxCampos := TComboBox.Create(self);
     cbxCampos.Parent     := PnTool;
     cbxCampos.Name       := 'cbxCampos';
     cbxCampos.Text       := '';
     cbxCampos.Top        := 3;
     cbxCampos.Left       := sbParametros.Left+sbParametros.width+8;
     cbxCampos.Height     := 21;
     cbxCampos.BevelInner :=  bvLowered;
     cbxCampos.BevelKind  :=  bkNone;
     cbxCampos.Width      := 160;
     cbxCampos.OnKeyPress := PressionarEnter;
     cbxCampos.OnExit     := AdicionarMascara;
     {}
     if cbxCondicao = nil then
        cbxCondicao := TComboBox.Create(self);
     cbxCondicao.Name     := 'cbxCondicao';
     cbxCondicao.Text     := '';
     cbxCondicao.Top      := 3;
     cbxCondicao.Left     := cbxCampos.Left+cbxCampos.width+4;
     cbxCondicao.Height   := 21;
     cbxCondicao.BevelInner :=  bvLowered;
     cbxCondicao.BevelKind  :=  bkNone;
     cbxCondicao.Width      := 102;
     cbxCondicao.Parent   := PnTool;
     cbxCondicao.OnKeyPress  := PressionarEnter;
     {}
     if mktConteudo = nil then
        mktConteudo := TMaskEdit.Create(self);
     mktConteudo.Parent   := PnTool;
     mktConteudo.Name     := 'mktConteudo';
     mktConteudo.Text     := '';
     mktConteudo.Top      := 3;
     mktConteudo.Left     := cbxCondicao.Left+cbxCondicao.width+4;
     mktConteudo.Height   := 21;
     mktConteudo.BevelInner  := bvRaised;
     mktConteudo.BevelKind   := bkFlat;
     mktConteudo.BorderStyle := bsNone;
     mktConteudo.BevelOuter  := bvLowered;
     mktConteudo.Width       := 116;
     mktConteudo.CharCase    := ecUpperCase;
     mktConteudo.OnKeyPress  := PressionarTecla;
     mktConteudo.OnClick     := InicioDoCampo;
     {}
     if sbPesquisa = nil then
        sbPesquisa := TSpeedButton.Create(self);
     sbPesquisa.Name      := 'sbPesquisa';
     sbPesquisa.Caption   := 'P&esquisar';
     sbPesquisa.Left      := mktConteudo.Left+mktConteudo.width+4;
     sbPesquisa.Height    := 28;
     sbPesquisa.Width     := 80;
     sbPesquisa.Flat      := true;
     sbPesquisa.Parent    := PnTool;
     sbPesquisa.Hint      := 'Pesquisar';
     sbPesquisa.Glyph.LoadFromFile(PathBMP +'\pesquisa.bmp');
     sbPesquisa.OnClick   := PesquisaSql;
     {}
     Bevel := TBevel.Create(self);
     Bevel.Parent := PnTool;
     Bevel.Shape := bsLeftLine;
     Bevel.Width := 2;
     Bevel.Top   := 3;
     Bevel.Height := 22;
     Bevel.Left := sbPesquisa.Left+ sbPesquisa.width+4;
     {}
     if sbAddFiltro = nil then
        sbAddFiltro := TSpeedButton.Create(self);
     sbAddFiltro.Name      := 'sbAddFiltro';
     sbAddFiltro.Left      := sbPesquisa.Left+sbPesquisa.Width + 8;
     sbAddFiltro.Height    := 28;
     sbAddFiltro.Width     := 30;
     sbAddFiltro.Flat      := true;
     sbAddFiltro.Parent    := PnTool;
     sbAddFiltro.Hint      := 'Adicionar filtro à pesquisa';
     sbAddFiltro.Glyph.LoadFromFile(PathBMP +'\filtro.bmp');
     sbAddFiltro.Visible   := True;
     sbAddFiltro.OnClick   := AddFiltro;
     {}
     if sbFindPadrao = nil then
        sbFindPadrao := TSpeedButton.Create(self);
     sbFindPadrao.Name      := 'sbFindPadrao';
     sbFindPadrao.Left      := sbAddFiltro.Left+sbAddFiltro.Width + 5;
     sbFindPadrao.Height    := 28;
     sbFindPadrao.Width     := 30;
     sbFindPadrao.Flat      := true;
     sbFindPadrao.Parent    := PnTool;
     sbFindPadrao.Hint      := 'Adicionar filtro padrão à pesquisa';
     sbFindPadrao.Glyph.LoadFromFile(PathBMP +'\find.bmp');
     sbFindPadrao.Visible   := True;
     sbFindPadrao.OnClick   := AddFindPadrao;
     {}
     if sbRetornar = nil then
        sbRetornar := TSpeedButton.Create( Self );

     sbRetornar.Name      := 'sbRetornar';
     {sbRetornar.Caption   := '&Retornar';}
     sbRetornar.Left      := sbFindPadrao.Left + sbFindPadrao.Width + 4;
     sbRetornar.Height    := 28;
     sbRetornar.Width     := 30;
     sbRetornar.Flat      := true;
     sbRetornar.Parent    := PnTool;
     sbRetornar.Hint      := 'Retornar registro selecionado da pesquisa';
     sbRetornar.Glyph.LoadFromFile(PathBMP +'\retorno.bmp');
     sbRetornar.Visible   := True;
     sbRetornar.OnClick   := Retornar;
     {}
     PnTool.Parent         := self;
     Self.Bands[0].Control := PnTool;
     Self.align            := alTop;
     Self.AutoSize         := true;
     Self.EdgeBorders      := [ebLeft,ebTop,ebRight,ebBottom];
     {}

     strlstIdxCampo :=  TStringList.Create;
    end

 else
    begin
     if PnTool         <> nil then
        FreeAndNil(PnTool);
     if sbParametros   <> nil then
        FreeAndNil(sbParametros);
     if cbxCampos      <> nil then
        FreeAndNil(cbxCampos);
     if cbxCondicao    <> nil then
        FreeAndNil(cbxCondicao);
     if mktConteudo    <> nil then
        FreeAndNil(mktConteudo);
     if Bevel          <> nil then
        FreeAndNil(Bevel);
     if cdsAddFiltro <> nil then
        FreeAndNil(cdsAddFiltro);
     if strlstIdxCampo <> nil then
        FreeAndNil( strlstIdxCampo );

    end;
end;

constructor TtmbManutTop.Create(AOwner: TComponent);
begin
 inherited;
 if Assigned(dmGsi) then
    FUsuario := dmGsi.UsuarioAtivo;
 PathBMP := ExtractFileDir( Application.ExeName )+ '\imagens';
end;

destructor TtmbManutTop.Destroy;
begin
 inherited;
end;

procedure TtmbManutTop.PesquisaLoockup;
var ParamPesquisa, StrCampo, StrValor, VrAnd : String;
begin
 VrAnd := '';
 while Trim(FTtmbCamposPesquisa) <> '' do
 begin
  StrCampo := QuebraString(FTtmbCamposPesquisa);
  StrValor := QuebraString(FTTmbValuesPesquisa);
  if Trim(StrValor) <> '' then
     begin
      if Pos('cpf', AnsiLowerCase(StrCampo) ) > 0 then
         StrValor := TransfNum(StrValor);

      if Trim(StrCampo) <> '' then
         ParamPesquisa := ParamPesquisa + VrAnd + AnalisarParamPesq( IdentificarNomeTabela( FDataSet.Name ) + '.' + StrCampo,
                          cbxCondicao.Text,
                          StrValor );
      VrAnd := ' AND ';
     end;
 end;
 if Trim(ParamPesquisa) <> '' then
    GerarPesquisa( FDataSet, ParamPesquisa );
 FTTmbValuesPesquisa := '';
end;

procedure TtmbManutTop.PesquisaNoForm;
var ParamPesquisa, CampoPesquisa : String;
begin
 ParamPesquisa := AddParametroPesquisa( CampoPesquisa );
 try
 if FSQLParam = '' then
   GerarPesquisa( FDataSet, ParamPesquisa )
 else
   begin
    ExecDynamicProvider( -1, FSQLParam + ' AND ' + ParamPesquisa, FDataSet );
    FDataSet.PacketRecords := -1;
   end;

 except
 on E:Exception do
 begin
  MessageDlg('Pesquisa não realizada. '+ #13+ 'O valor passado deve ser númerico.', mtInformation, [mbOk], 0);
  raise;
 end;
 end;
end;

procedure TtmbManutTop.PesquisaSql(Sender: TObject);
begin
 if CheckSenha( FUsuario, TForm(Self.Owner).Caption, sbPesquisa.Hint, true) then
    begin
     if FTTmbValuesPesquisa = '' then
        PesquisaNoForm {Pesquisa internamente pelo botão Pesquisar}
     else
        PesquisaLoockup; {Pesquisa inicial chamada por um campo de Loockup}
    end;
end;

function TtmbManutTop.QuebraString(var Str: String): String;
var ParteString : String;
begin
 ParteString := '';
 if Pos(';', Str) > 0 then
    begin
     ParteString := Copy( Str, 1 , Pos(';', Str) );
     if Pos(';', ParteString) > 0 then
        Delete(ParteString, length(ParteString), 1);
    end
 else
    ParteString := Copy( Str,1 , Length(Str) );
 Delete(Str,1, (Length(ParteString)+1) );
 Result := ParteString;
end;

procedure TtmbManutTop.Retornar(Sender: TObject);
begin
 if CheckSenha( FUsuario, TForm(self.Owner).Caption, sbRetornar.Hint, true) then
    begin
     TForm(Self.Parent).ModalResult := mrOk;
     TForm(Self.Parent).Close;
    end;
end;

procedure TtmbManutTop.SetCria(const Value: boolean);
begin
 PathBMP := ExtractFileDir( Application.ExeName )+ '\imagens';
 FCria := Value;
 if FCria = true then ControiComponente(true);
end;

procedure TtmbManutTop.SetDataSource(const Value: TDataSource);
begin
 FDataSource := Value;
 FDataSet := ( FDataSource.DataSet as TClientDataSet );
end;

procedure TtmbManutTop.SetDmGsiLoc(const Value: TClientDataSet);
begin
 FDmGsiLoc := Value;
end;

procedure TtmbManutTop.SetPreencheCombos(const Value: boolean);
var i : integer;
    NomeTabelaDic : String;

 procedure AdicCamposCombo( Sender : TObject ; Campos : TFields );
 var a : Integer;
 begin
  TComboBox( Sender ).Items.Clear;
  strlstIdxCampo.Clear;
  for a := 0 to Campos.Count - 1 do
  begin
   if Campos[a].FieldKind = fkData then
      if Campos[a].DataType <> ftDataSet then
         begin
          TComboBox( Sender ).Items.Add( Campos[a].DisplayLabel );
          strlstIdxCampo.Add( IntToStr( Campos[a].Index ) );
         end;
  end;
 end;

begin
 FPreencheCombos := Value;
 if (FPreencheCombos = true ) and (FDataSet <> nil ) then
    begin
     NomeTabelaDic :=  UpperCase( IdentificarNomeTabela( FDataSet.Name ) );
     AtualizarDicionario( NomeTabelaDic, FDataSet );

     AdicCamposCombo( cbxCampos, FDataSet.Fields );
    end;

 cbxCondicao.Clear;
 for i := Low(CondicoesPesqSQL) to High(CondicoesPesqSQL) do
     cbxCondicao.Items.Add(CondicoesPesqSQL[i]);
end;

procedure TtmbManutTop.SetRetornoVisivel(const Value: boolean);
begin
 FRetornoVisivel := Value;
 if FRetornoVisivel = true then
    TSpeedButton(sbRetornar).Visible := true
 else
  TSpeedButton(sbRetornar).Visible := false;
end;

procedure TtmbManutTop.SetTtmbCamposPesquisa(const Value: String);
begin
 FTtmbCamposPesquisa := Value;
end;

procedure TtmbManutTop.SetTtmbPesquisar(const Value: boolean);
var Cp : String;
begin
 FTtmbPesquisar := Value;
 if FTtmbPesquisar = true then
    begin
     if Trim(FTTmbValuesPesquisa) <> '' then
        begin
         cbxCondicao.ItemIndex := 1;
         if Pos(';', FTTmbValuesPesquisa) > 0 then
            begin
             Cp    := Copy( FTTmbCamposPesquisa, 1, Pos(';', FTTmbCamposPesquisa)-1);
             SetaComboCampo(Cp);
             mktConteudo.Text      := Copy( FTTmbValuesPesquisa, 1, Pos(';', FTTmbValuesPesquisa)-1)
            end
         else
            begin
             mktConteudo.Text      := FTTmbValuesPesquisa;
             SetaComboCampo(FTTmbCamposPesquisa);
            end;
        end
     else
        begin
         cbxCondicao.ItemIndex := 0;
         mktConteudo.Text      := '';
         cbxCampos.ItemIndex   := 0;
        end;
     sbPesquisa.Click;
    end;
end;

procedure TtmbManutTop.SetTTmbValuesPesquisa(const Value: String);
begin
 FTTmbValuesPesquisa := Value;
end;

function TtmbManutTop.AddParametroPesquisa( var CampoPesquisa : String ) : String;
var NomeCampo, Conteudo : String;
begin
 Result := '';
 if (Trim(cbxCampos.Text ) <> '' ) and (Trim(cbxCondicao.Text) <> '') then
    begin
     NomeCampo   := FDataSet.Fields.Fields[PosCampoIdxPesq].FieldName;

     if Pos('cpf', AnsiLowerCase(NomeCampo) ) > 0 then
        Conteudo := TransfNum( mktConteudo.Text )
     else
        Conteudo := mktConteudo.Text;

     CampoPesquisa := IdentificarNomeTabelaCampo( IdentificarNomeTabela( FDataSet.Name ), NomeCampo );

     Result := AnalisarParamPesq( CampoPesquisa, cbxCondicao.Text, Trim( Conteudo ) );
    end;
end;

function TtmbManutTop.AddParametroPesquisa( var CampoPesquisa : String; Item : Integer ) : String;
var NomeCampo, Conteudo : String;
begin
 Result := '';

 NomeCampo := FDataSet.Fields.Fields[Item].FieldName;
 if Pos('cpf', AnsiLowerCase(NomeCampo) ) > 0 then
    Conteudo := TransfNum( mktConteudo.Text )
 else
    Conteudo := mktConteudo.Text;

 CampoPesquisa := IdentificarNomeTabelaCampo( IdentificarNomeTabela( FDataSet.Name ), NomeCampo );

 Result := AnalisarParamPesq( CampoPesquisa, cbxCondicao.Text, Trim( Conteudo ) );
end;

procedure TtmbManutTop.AddFiltro(Sender: TObject);
var ParamPesquisa, Relacional, CampoPesquisa : String;
begin
 ParamPesquisa := AddParametroPesquisa( CampoPesquisa );
 Relacional    := '';

 if not cdsAddFiltro.IsEmpty then
    Relacional    := 'E ';

 cdsAddFiltro.Insert;
 cdsAddFiltro.FieldByName('Id').AsInteger          := cdsAddFiltro.RecordCount + 1;
 cdsAddFiltro.FieldByName('Campo').AsString        := cbxCampos.Text;
 cdsAddFiltro.FieldByName('Condicao').AsString     := cbxCondicao.Text;
 cdsAddFiltro.FieldByName('Conteudo').AsString     := mktConteudo.Text;
 cdsAddFiltro.FieldByName('Relacional').AsString   := Relacional;
 cdsAddFiltro.FieldByName('InstrucaoSQL').AsString := CampoPesquisa;
 cdsAddFiltro.Post;

 if not Assigned( frmAdicionarPesquisa ) then
    frmAdicionarPesquisa := TfrmAdicionarPesquisa.Create( Self );

 // frmAdicionarPesquisa.Parent := Self; { Efeito legal de tela }
 frmAdicionarPesquisa.FcdsAdicionarPesquisa := FDataSet;
 frmAdicionarPesquisa.dsAddFiltro.DataSet   := cdsAddFiltro;
 frmAdicionarPesquisa.Show;
end;


procedure TtmbManutTop.AddFindPadrao(Sender: TObject);
var ParamPesquisa, Relacional, CampoPesquisa, TipoCondicao : String;
    i : Integer;

 procedure InserirItens( Campo, Condicao, Relacional, CampoPesquisa : String );
 begin
  cdsAddFiltro.Insert;
  cdsAddFiltro.FieldByName('Id').AsInteger          := cdsAddFiltro.RecordCount + 1;
  cdsAddFiltro.FieldByName('Campo').AsString        := Campo;
  cdsAddFiltro.FieldByName('Condicao').AsString     := TipoCondicao;
  cdsAddFiltro.FieldByName('Conteudo').AsString     := '';
  cdsAddFiltro.FieldByName('Relacional').AsString   := Relacional;
  cdsAddFiltro.FieldByName('InstrucaoSQL').AsString := CampoPesquisa;
  cdsAddFiltro.Post;
 end;

begin
 cdsAddFiltro.EmptyDataSet;
 Relacional    := '';
// for i := 0 to cbxCampos.Items.Count - 1 do
 for i := 0 to strlstIdxCampo.Count - 1 do
 begin
  ParamPesquisa := AddParametroPesquisa( CampoPesquisa,  StrToInt( strlstIdxCampo.Strings[i] ) );

  case FDataSet.Fields.Fields[i].DataType  of
  ftString   :  TipoCondicao := cbxCondicao.Items[7];
  ftDate,
  ftDateTime,
  ftTimeStamp :  TipoCondicao := cbxCondicao.Items[4];
  else ;
                 TipoCondicao := cbxCondicao.Items[1];
  end;

  InserirItens( cbxCampos.Items[i], TipoCondicao, Relacional, CampoPesquisa );

  if FDataSet.Fields.Fields[i].DataType in [ftDate,ftDateTime,ftTimeStamp] then
     begin
      TipoCondicao := cbxCondicao.Items[6];
      InserirItens( cbxCampos.Items[i], TipoCondicao, Relacional, CampoPesquisa );
     end;

  Relacional    := 'E ';
 end;

 if not Assigned( frmAdicionarPesquisa ) then
    frmAdicionarPesquisa := TfrmAdicionarPesquisa.Create( Self );

 // frmAdicionarPesquisa.Parent := Self; { Efeito legal de tela }
 frmAdicionarPesquisa.Top    := 1;
 frmAdicionarPesquisa.Height := 500;

 cdsAddFiltro.First;

 frmAdicionarPesquisa.FcdsAdicionarPesquisa := FDataSet;
 frmAdicionarPesquisa.dsAddFiltro.DataSet   := cdsAddFiltro;
 frmAdicionarPesquisa.Show;
end;


end.
