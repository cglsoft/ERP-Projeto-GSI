unit tmbToolManutencaoBottom;

interface

uses
  Windows, SysUtils, Classes, Controls, ToolWin, ComCtrls, ExtCtrls, Buttons,
  DBClient, Forms, DB, dialogs, Messages, Variants,  Graphics;

type
  TtmbManutBottom= class(TCoolBar)
  private
    FCria: boolean;
    FClientDataSet: TClientDataSet;
    FForm: TForm;
    FThFormEdicao: TForm;
    FThFormExport: TForm;
    FTtmbClassOwnerEspec: TComponentClass;
    FFormOwnerEspec: TForm;
    FDataSource : TDataSource;
    FUsuario: String;
    procedure SetCria(const Value: boolean);
    procedure SetForm(const Value: TForm);
    procedure SetThFormEdicao(const Value: TForm);
    procedure SetThFormExport(const Value: TForm);
    procedure SetTtmbClassOwnerEspec(const Value: TComponentClass);
    procedure SetFormOwnerEspec(const Value: TForm);
    procedure SetDataSource(const Value: TDataSource);
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    CoolBar : TCoolBar;
    PnTool,
    PnComandos,
    PnFechar,
    PnOpcoes    : TPanel;
    SpPrimeiro,
    SpProximo,
    SpUltimo,
    SpAnterior,
    SpExportar,
    SpImprimir,
    SpInserir,
    SpEditar,
    SpExcluir,
    SpRefresh,
    SpClose     : TSpeedButton;
    constructor Create(AOwner : TComponent);  override;
    Destructor  Destroy; override;
    procedure ClickToolEdit(Sender : TObject);
    procedure ControiComponente(opc: boolean);
    procedure Navegacao(Seta: Char);
    procedure HabilitaComponentes(Start: byte);
    procedure eventoNavegacao(Sender : TObject);
    procedure EventoEdtRegistro( Sender : TObject );
    procedure Fechar(Sender : TObject);
    procedure Comandos(Cm : Char);
    procedure AbreFrmExportar(Sender  :TObject);
    procedure AbreFrmEdicao;

  published
    { Published declarations }
    property TtmbCria             : boolean         read FCria                write SetCria;
    property TtmbClientDataSet    : TClientDataSet  read FClientDataSet       write FClientDataSet;
    property TtmbDataSource       : TDataSource     read FDataSource          write SetDataSource;
    property TtmbFormulario       : TForm           read FForm                write SetForm;
    property TtmbFormEdicao       : TForm           read FThFormEdicao        write SetThFormEdicao;
    property TtmbFormExport       : TForm           read FThFormExport        write SetThFormExport;
    property TtmbClassOwnerEspec  : TComponentClass read FTtmbClassOwnerEspec write SetTtmbClassOwnerEspec;
    property TtmbFormOwnerEspec   : TForm           read FFormOwnerEspec      write SetFormOwnerEspec;
    property TtmbUsuario          : String          read FUsuario             write FUsuario;
  end;

procedure Register;

implementation

uses u_PadraoEdicao, FuncoesCliente, u_dmGSI, u_Exportar;


var
 PathBMP : String;

procedure Register;
begin
 RegisterComponents('CGLSOFT', [TtmbManutBottom]);
end;

{ TtmbManutBottom }

procedure TtmbManutBottom.AbreFrmEdicao;
begin
 Application.CreateForm(TtmbClassOwnerEspec, FFormOwnerEspec);
 if TtmbClassOwnerEspec = TFrmPadraoEdicao then
    begin
     TFrmPadraoEdicao(FFormOwnerEspec).DataSource := FDataSource;
     TFrmPadraoEdicao(FFormOwnerEspec).tmbEdicaoBottom1.TtmbClientDataSet := FClientDataSet;
    end;

 FFormOwnerEspec.Show;
end;

procedure TtmbManutBottom.AbreFrmExportar(Sender: TObject);
 procedure Exportar;
 begin
  frmExportar := TfrmExportar.Create( Self );
  frmExportar.FDataSource := FDataSource;
  frmExportar.ShowModal;
 end;

begin
 if CheckSenha( FUsuario, TForm(self.Owner).Caption, SpExportar.Hint, true) then
    begin
     if FClientDataSet <> nil then
        begin
         if not FClientDataSet.IsEmpty then
            Exportar
         else
            Application.MessageBox('Não há registros na tabela.','Mensagem', MB_Ok );
        end
    end;
end;

procedure TtmbManutBottom.ClickToolEdit(Sender: TObject);
begin
 if CheckSenha( FUsuario, TForm(self.Owner).Caption, SpImprimir.Hint, true) then
    {...}
end;

procedure TtmbManutBottom.Comandos(Cm: Char);
 function ConfirmaExclusao: boolean;
 begin
  Result := ((application.MessageBox('Confirma exclusão do registro ?','Mensagem', MB_YesNo )) = IDYes);
 end;

begin
 case Cm of
  'I': begin
        if FClientDataSet <> nil then
           begin
            try
             FClientDataSet.Insert;
            except
             on E:Exception do
                raise Exception.Create(E.Message);
            end;
            AbreFrmEdicao;
           end;
       end;
  'E': begin
        if FClientDataSet <> nil then
           begin
            if FClientDataSet.RecordCount > 0 then
               begin
                try
                 if CheckSenha( FUsuario, TForm(self.Owner).Caption, SpEditar.Hint, True )  then
                    FClientDataSet.Edit;
                except
                 on E:Exception do
                    raise Exception.Create(E.Message);
                end;
                AbreFrmEdicao;
               end
            else
             Application.MessageBox('Não há registros na tabela para edição.','Mensagem', MB_Ok );
           end
        end;

  'D': begin
        if FClientDataSet <> nil then
           begin
            if FClientDataSet.RecordCount > 0 then
               begin
                try
                 if ConfirmaExclusao then
                    FClientDataSet.Delete;
                except
                 on E:Exception do
                    raise Exception.Create(E.Message);
                end;
               end
            else
             Application.MessageBox('Não há registros na tabela para exclusão.','Mensagem', MB_Ok );
           end;
       end;
  'R': if FClientDataSet <> nil then
          FClientDataSet.Refresh;
 end;
end;

procedure TtmbManutBottom.ControiComponente(opc: boolean);
begin
 if (opc = true) then
    begin
     if PnTool = nil then
        PnTool           := TPanel.Create(self);
     PnTool.Height     := 28;
     PnTool.Width      := 33;
     PnTool.BevelOuter := bvNone;
     PnTool.Caption    := '';
     {Primeiro}
     if SpPrimeiro = nil then
        SpPrimeiro   := TSpeedButton.Create(self);
     SpPrimeiro.Name      := 'SpPrimeiro';
     SpPrimeiro.Caption   := '';
     SpPrimeiro.Left      := 0;
     SpPrimeiro.Height    := 28;
     SpPrimeiro.Width     := 33;
     SpPrimeiro.Flat      := true;
     SpPrimeiro.Parent    := PnTool;
     SpPrimeiro.Glyph.LoadFromFile(PathBMP +'\primeiro.bmp');
     SpPrimeiro.OnClick   := eventoNavegacao;
     {Anterior}
     if SpAnterior = nil then
        SpAnterior   := TSpeedButton.Create(self);
     SpAnterior.Parent  := PnTool;
     SpAnterior.Name    := 'SpAnterior';
     SpAnterior.Caption := '';
     SpAnterior.Left    := SpPrimeiro.Left+SpPrimeiro.width+1;
     SpAnterior.Height  := 28;
     SpAnterior.Width   := 33;
     SpAnterior.Flat    := true;
     SpAnterior.Glyph.LoadFromFile(PathBMP +'\anterior.bmp');
     SpAnterior.OnClick := eventoNavegacao;
     {Proximo}
     if SpProximo = nil then
        SpProximo     := TSpeedButton.Create(self);
     SpProximo.Parent     := PnTool;
     SpProximo.Name       := 'SpProximo';
     SpProximo.Caption    := '';
     SpProximo.Left       := SpAnterior.Left+SpAnterior.width+1;
     SpProximo.Height     := 28;
     SpProximo.Width      := 33;
     SpProximo.Flat       := true;
     SpProximo.Glyph.LoadFromFile(PathBMP +'\proximo.bmp');
     SpProximo.OnClick    := eventoNavegacao;
     {Ultimo}
     if SpUltimo = nil then
        SpUltimo       := TSpeedButton.Create(self);
     SpUltimo.Parent   := PnTool;
     SpUltimo.Name     := 'SpUltimo';
     SpUltimo.Caption  := '';
     SpUltimo.Left     := SpProximo.Left+SpProximo.width+1;
     SpUltimo.Height   := 28;
     SpUltimo.Width    := 33;
     SpUltimo.Flat     := true;
     SpUltimo.Glyph.LoadFromFile(PathBMP +'\ultimo.bmp');
     SpUltimo.OnClick  := eventoNavegacao;
     {}
     PnTool.Parent                 := self;
     Self.Bands[0].HorizontalOnly  := false;
     Self.Bands[0].Control         := PnTool;
     Self.Bands[0].Width           := SpPrimeiro.Width + SpProximo.Width + SpAnterior.Width + SpUltimo.Width+5;
     Self.Bands[0].MinWidth        := SpPrimeiro.Width + SpProximo.Width + SpAnterior.Width + SpUltimo.Width+5;

     {Comandos - Exportar | Imprimir}
     if PnComandos = nil then
        PnComandos    := TPanel.Create(self);
     PnComandos.Height     := 28;
     PnComandos.Width      := 33;
     PnComandos.BevelOuter := bvNone;
     PnComandos.Caption    := '';
     PnComandos.Parent     := self;
     Self.Bands[1].Control := PnComandos;
     {Exportar}
     if SpExportar = nil then
        SpExportar   := TSpeedButton.Create(self);
     SpExportar.Name      := 'SpExportar';
     SpExportar.Caption   := '&Exportar';
     SpExportar.Left      := 0;
     SpExportar.Height    := 28;
     SpExportar.Width     := 70;
     SpExportar.Flat      := true;
     SpExportar.Parent    := PnComandos;
     SpExportar.Hint      := 'Exportar';
     SpExportar.Glyph.LoadFromFile(PathBMP +'\exportar.bmp');
     SpExportar.OnClick   := AbreFrmExportar;
     {Imprimir}
     if SpImprimir = nil then
        SpImprimir   := TSpeedButton.Create(self);
     SpImprimir.Parent  := PnComandos;
     SpImprimir.Name    := 'SpImprimir';
     SpImprimir.Left    := SpExportar.Left+SpExportar.width+1;
     SpImprimir.Height  := 28;
     SpImprimir.Width   := 30;
     SpImprimir.Flat    := true;
     SpImprimir.Hint    := 'Imprimir';
     SpImprimir.Glyph.LoadFromFile(PathBMP +'\imprimir.bmp');
     SpImprimir.OnClick := ClickToolEdit;
     {}
     {Comandos - Inserir | Editar | Excluir | Refresh}
     if PnOpcoes = nil then
       PnOpcoes        := TPanel.Create(self);
     PnOpcoes.Height     := 28;
     PnOpcoes.Width      := 33;
     PnOpcoes.BevelOuter := bvNone;
     PnOpcoes.Caption    := '';
     PnOpcoes.Parent     := self;
     Self.Bands[2].Control := PnOpcoes;
     {Inserir}
     if SpInserir = nil then
        SpInserir     := TSpeedButton.Create(self);
     SpInserir.Name      := 'SpInserir';
     SpInserir.Caption   := '&Inserir';
     SpInserir.Left      := 0;
     SpInserir.Height    := 28;
     SpInserir.Width     := 65;
     SpInserir.Flat      := true;
     SpInserir.Parent    := PnOpcoes;
     SpInserir.Hint      := 'Inserir';
     SpInserir.Glyph.LoadFromFile(PathBMP +'\inserir.bmp');
     SpInserir.OnClick   := eventoNavegacao;
     {Editar}
     if SpEditar = nil then
        SpEditar       := TSpeedButton.Create(self);
     SpEditar.Parent  := PnOpcoes;
     SpEditar.Name    := 'SpEditar';
     SpEditar.Caption := '&Editar';
     SpEditar.Left    := SpInserir.Left+SpInserir.width+1;
     SpEditar.Height  := 28;
     SpEditar.Width   := 65;
     SpEditar.Flat    := true;
     SpEditar.Hint    := 'Editar';
     SpEditar.Glyph.LoadFromFile(PathBMP +'\Editar.bmp');
     SpEditar.OnClick := EventoEdtRegistro;
     {}
     {Excluir}
     if SpExcluir = nil then
        SpExcluir     := TSpeedButton.Create(self);
     SpExcluir.Parent  := PnOpcoes;
     SpExcluir.Name    := 'SpExcluir';
     SpExcluir.Caption := '&Excluir';
     SpExcluir.Left    := SpEditar.Left+SpEditar.width+1;
     SpExcluir.Height  := 28;
     SpExcluir.Width   := 65;
     SpExcluir.Flat    := true;
     SpExcluir.Hint    := 'Excluir';
     SpExcluir.Glyph.LoadFromFile(PathBMP +'\Excluir.bmp');
     SpExcluir.OnClick := eventoNavegacao;
     {Refresh}
     if SpRefresh = nil then
        SpRefresh     := TSpeedButton.Create(self);
     SpRefresh.Parent  := PnOpcoes;
     SpRefresh.Name    := 'SpRefresh';
     {SpRefresh.Caption := '&Refresh';}
     SpRefresh.Left    := SpExcluir.Left+SpExcluir.width+1;
     SpRefresh.Height  := 28;
     SpRefresh.Width   := 30;
     SpRefresh.Flat    := true;
     SpRefresh.Hint    := 'Refresh';
     SpRefresh.Glyph.LoadFromFile(PathBMP +'\Refresh.bmp');
     SpRefresh.OnClick := eventoNavegacao;
     {}
     {Fechar}
     if PnFechar = nil then
        PnFechar       := TPanel.Create(self);
     PnFechar.Height     := 26;
     PnFechar.Width      := 33;
     PnFechar.BevelOuter := bvNone;
     PnFechar.Caption    := '';
     PnFechar.Parent     := self;
     Self.Bands[3].Control := PnFechar;
     {}
     if SpClose = nil then
        SpClose         := TSpeedButton.Create(self);
     SpClose.Name      := 'SpClose';
     {SpClose.Caption   := '&Fechar';}
     SpClose.Left      := 0;
     SpClose.Height    := 26;
     SpClose.Width     := 28;
     SpClose.Flat      := true;
     SpClose.Parent    := PnFechar;
     SpClose.Glyph.LoadFromFile(PathBMP +'\close.bmp');
     SpClose.OnClick   := Fechar;
     {}
     Self.align            := alBottom;
     Self.AutoSize         := true;
     Self.EdgeBorders      := [ebLeft,ebTop,ebRight,ebBottom];
    end
 else
    begin
     if PnTool       <> nil then
        FreeAndNil(PnTool);
     if PnComandos   <> nil then
        FreeAndNil(PnComandos);
     if SpPrimeiro   <> nil then
        FreeAndNil(SpPrimeiro);
     if SpProximo    <> nil then
        FreeAndNil(SpProximo);
     if SpUltimo     <> nil then
        FreeAndNil(SpUltimo);
     if SpAnterior   <> nil then
        FreeAndNil(SpAnterior);
     if PnFechar     <> nil then
        FreeAndNil(PnFechar);
     if SpClose      <> nil then
        FreeAndNil(SpClose);
    end;
end;

constructor TtmbManutBottom.Create(AOwner: TComponent);
begin
 inherited;
 if Assigned( dmGsi ) then
    FUsuario := dmGsi.UsuarioAtivo;
 PathBMP := ExtractFileDir( Application.ExeName )+ '\imagens';
end;

destructor TtmbManutBottom.Destroy;
begin
 inherited;
end;

procedure TtmbManutBottom.EventoEdtRegistro(Sender: TObject);
begin
 if not ( FClientDataSet.State = dsInactive ) then
    Comandos('E')
 else
    Application.MessageBox('Selecione uma pesquisa para alteração dos dados. ','Mensagem', mb_ok);

end;

procedure TtmbManutBottom.eventoNavegacao(Sender: TObject);
begin
 if not (FClientDataSet.State = dsInactive) then
    begin
     if      Sender = spPrimeiro then
             begin
              Navegacao('<');
              HabilitaComponentes(1);
             end
     else if Sender = spAnterior then
             begin
              Navegacao('-');
              if FClientDataSet.Bof then
                HabilitaComponentes(1)
              else
                begin
                 SpUltimo.Enabled := true;
                 SpUltimo.Glyph.LoadFromFile(PathBMP +'\ultimo.bmp');
                 SpProximo.Enabled := true;
                 SpProximo.Glyph.LoadFromFile(PathBMP +'\proximo.bmp');
                end;
             end
     else if Sender = spUltimo then
             begin
              Navegacao('>');
              HabilitaComponentes(0);
             end
     else if Sender = spProximo then
             begin
              Navegacao('+');
              if FClientDataSet.Eof then
                 HabilitaComponentes(0)
                 else
              begin
               SpPrimeiro.Enabled := true;
               SpPrimeiro.Glyph.LoadFromFile(PathBMP +'\primeiro.bmp');
               SpAnterior.Enabled := true;
               SpAnterior.Glyph.LoadFromFile(PathBMP +'\anterior.bmp');
              end;
             end
     else if Sender = SpInserir then
             begin
              if CheckSenha( FUsuario, TForm(self.Owner).Caption, SpInserir.Hint, True ) then
                 Comandos('I');
             end
     else if Sender = SpExcluir then
             begin
              if CheckSenha( FUsuario, TForm(self.Owner).Caption, SpExcluir.Hint, True ) then
                 Comandos('D')
             end
     else if Sender = SpRefresh then
             Comandos('R');
      end
  else
    Application.MessageBox('Selecione uma pesquisa para alteração dos dados. ','Mensagem', mb_ok);
end;

procedure TtmbManutBottom.Fechar(Sender: TObject);
begin
 if FForm <> nil then
    FForm.Close;
end;

procedure TtmbManutBottom.HabilitaComponentes(Start: byte);
begin
 Case Start of
  1: begin
      SpPrimeiro.Glyph.LoadFromFile(PathBMP +'\primeiro_size.bmp');
      SpAnterior.Glyph.LoadFromFile(PathBMP +'\anterior_size.bmp');
      SpUltimo.Glyph.LoadFromFile(PathBMP +'\ultimo.bmp');
      SpProximo.Glyph.LoadFromFile(PathBMP +'\proximo.bmp');
     end;
  0: begin
      SpPrimeiro.Glyph.LoadFromFile(PathBMP +'\primeiro.bmp');
      SpAnterior.Glyph.LoadFromFile(PathBMP +'\anterior.bmp');
      SpUltimo.Glyph.LoadFromFile(PathBMP +'\ultimo_size.bmp');
      SpProximo.Glyph.LoadFromFile(PathBMP +'\proximo_size.bmp');
     end;
 end;
end;

procedure TtmbManutBottom.Navegacao(Seta: Char);
begin
 case Seta of
  '<': if FClientDataSet <> nil then
          FClientDataSet.First;
  '-': if FClientDataSet <> nil then
          FClientDataSet.Prior;
  '+': if FClientDataSet <> nil then
          FClientDataSet.Next;
  '>': if FClientDataSet <> nil then
          FClientDataSet.Last;
 end;
end;

procedure TtmbManutBottom.SetCria(const Value: boolean);
begin
 PathBMP := ExtractFileDir( Application.ExeName )+ '\imagens';
 FCria := Value;
 if FCria = true then
    ControiComponente(true);
end;

procedure TtmbManutBottom.SetDataSource(const Value: TDataSource);
begin
 FDataSource := Value;
end;

procedure TtmbManutBottom.SetForm(const Value: TForm);
begin
 FForm := Value;
end;

procedure TtmbManutBottom.SetFormOwnerEspec(const Value: TForm);
begin
 FFormOwnerEspec := Value;
end;

procedure TtmbManutBottom.SetThFormEdicao(const Value: TForm);
begin
 FThFormEdicao := Value;
end;

procedure TtmbManutBottom.SetThFormExport(const Value: TForm);
begin
 FThFormExport := Value;
end;

procedure TtmbManutBottom.SetTtmbClassOwnerEspec(
  const Value: TComponentClass);
begin
 FTtmbClassOwnerEspec := Value;
end;

end.
