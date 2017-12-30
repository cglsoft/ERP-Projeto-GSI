unit tmbToolEdicaoBottom;

interface

uses
  SysUtils, Classes, Controls, ToolWin, ComCtrls,  ExtCtrls, Buttons,
  DBClient, Forms, DB, Windows;

type
  TtmbEdicaoBottom = class(TCoolBar)
  private
    FCria: boolean;
    FClientDataSet: TClientDataSet;
    FForm: TCustomForm;
    FCloseEvento: boolean;
    procedure SetCria(const Value: Boolean);
    procedure SetClientDataSet(const Value: TClientDataSet);
    procedure SetForm(const Value: TCustomForm);
    procedure SetCloseEvento(const Value: Boolean);
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    CoolBar : TCoolBar;
    PnTool,
    PnComandos,
    PnFechar    : TPanel;
    SpPrimeiro,
    SpProximo,
    SpUltimo,
    SpAnterior,
    SpConfirmar,
    SpCancelar,
    SpClose  : TSpeedButton;
    constructor Create(AOwner : TComponent);  override;
    Destructor  Destroy; override;
    procedure ClickToolEdit(Sender : TObject);
    procedure ControiComponente( Ativar : boolean);
    procedure Navegacao(Seta: Char);
    procedure HabilitaComponentes(Start: byte);
    procedure eventoNavegacao(Sender : TObject);
    procedure Fechar(Sender : TObject);
    procedure Comandos(Cm : Char);
  published
    { Published declarations }
    property TtmbCria          : boolean        read FCria          write SetCria;
    property TtmbClientDataSet : TClientDataSet read FClientDataSet write SetClientDataSet;
    property TtmbFormulario    : TCustomForm    read FForm          write SetForm;
    property TtmbCloseComando  : boolean        read FCloseEvento   write SetCloseEvento;
  end;

procedure Register;

implementation

var PathBMP : String;

procedure Register;
begin
 RegisterComponents('CGLSOFT', [TtmbEdicaoBottom]);
end;

{ TtmbEdicaoBottom }

procedure TtmbEdicaoBottom.ClickToolEdit(Sender: TObject);
begin
end;

procedure TtmbEdicaoBottom.Comandos(Cm: Char);
ResourceString
 MsgErroInsertNull = 'Operação não realizada.'+#13+'Ocorreu um erro ao salvar o registro.';  {usado no OnClose dos formulários}
var CloseFrm : Boolean;
begin
 CloseFrm := true;
 try
  case Cm of
  'C': if FClientDataSet <> nil then
          begin{Confirma}
           if FClientDataSet.State in [dsEdit, dsInsert] then
              FClientDataSet.Post;
          end;

  'U': if FClientDataSet <> nil then
          begin{Undo - Cancela}
           if (FClientDataSet.State = dsEdit) then
               CloseFrm := false;
           FClientDataSet.Cancel;
          end;
  end;

  if not CloseFrm then
     begin {volta ao modo de edição no caso de cancelar e continuar na tela}
      if FClientDataSet <> nil then
         FClientDataSet.Edit
     end
  else
     if FCloseEvento then
        TtmbFormulario.Close;
 except
  On E:Exception do
     begin
      Application.MessageBox(PChar(MsgErroInsertNull + #13 + 'Mensagem original: ' + #13 + E.Message) , 'Mensagem', 0);
     end;
 end;
end;

procedure TtmbEdicaoBottom.ControiComponente( Ativar : Boolean);
begin
 case Ativar of
  True :  begin
           if PnTool = nil then
              PnTool := TPanel.Create(self);

           PnTool.Height     := 28;
           PnTool.Width      := 33;
           PnTool.BevelOuter := bvNone;
           PnTool.Caption    := '';

           {Primeiro}
           if SpPrimeiro = nil then
              SpPrimeiro := TSpeedButton.Create(self);

           SpPrimeiro.Name      := 'SpPrimeiro';
           SpPrimeiro.Caption   := '';
           SpPrimeiro.Left      := 0;
           SpPrimeiro.Height    := 28;
           SpPrimeiro.Width     := 33;
           SpPrimeiro.Flat      := true;
           SpPrimeiro.Parent    := PnTool;
           SpPrimeiro.Glyph.LoadFromFile(PathBMP +'\primeiro.bmp');
           SpPrimeiro.OnClick   := EventoNavegacao;

           {Anterior}
           if SpAnterior = nil then
              SpAnterior := TSpeedButton.Create(self);

           SpAnterior.Parent  := PnTool;
           SpAnterior.Name    := 'SpAnterior';
           SpAnterior.Caption := '';
           SpAnterior.Left    := SpPrimeiro.Left+SpPrimeiro.width+1;
           SpAnterior.Height  := 28;
           SpAnterior.Width   := 33;
           SpAnterior.Flat    := true;
           SpAnterior.Glyph.LoadFromFile(PathBMP +'\anterior.bmp');
           SpAnterior.OnClick := EventoNavegacao;

           {Proximo}
           if SpProximo = nil then
              SpProximo := TSpeedButton.Create(self);

           SpProximo.Parent     := PnTool;
           SpProximo.Name       := 'SpProximo';
           SpProximo.Caption    := '';
           SpProximo.Left       := SpAnterior.Left+SpAnterior.width+1;
           SpProximo.Height     := 28;
           SpProximo.Width      := 33;
           SpProximo.Flat       := true;
           SpProximo.Glyph.LoadFromFile(PathBMP +'\proximo.bmp');
           SpProximo.OnClick    := EventoNavegacao;

           {Ultimo}
           if SpUltimo = nil then
              SpUltimo := TSpeedButton.Create(self);

           SpUltimo.Parent   := PnTool;
           SpUltimo.Name     := 'SpUltimo';
           SpUltimo.Caption  := '';
           SpUltimo.Left     := SpProximo.Left+SpProximo.width+1;
           SpUltimo.Height   := 28;
           SpUltimo.Width    := 33;
           SpUltimo.Flat     := true;
           SpUltimo.Glyph.LoadFromFile(PathBMP +'\ultimo.bmp');
           SpUltimo.OnClick  := EventoNavegacao;
           {}
           PnTool.Parent                 := Self;
           Self.Bands[0].HorizontalOnly  := false;
           Self.Bands[0].Control         := PnTool;
           Self.Bands[0].Width           := SpPrimeiro.Width + SpProximo.Width + SpAnterior.Width + SpUltimo.Width+5;
           Self.Bands[0].MinWidth        := SpPrimeiro.Width + SpProximo.Width + SpAnterior.Width + SpUltimo.Width+5;

           {Comandos - Confirmar | Cancelar}
           if PnComandos = nil then
              PnComandos := TPanel.Create(Self);

           PnComandos.Height     := 28;
           PnComandos.Width      := 33;
           PnComandos.BevelOuter := bvNone;
           PnComandos.Caption    := '';
           PnComandos.Parent     := Self;
           Self.Bands[1].Control := PnComandos;

           {Confirmar}
           if SpConfirmar = nil then
              SpConfirmar := TSpeedButton.Create(Self);

           SpConfirmar.Name      := 'SpConfirmar';
           SpConfirmar.Caption   := 'C&onfirmar';
           SpConfirmar.Left      := 0;
           SpConfirmar.Height    := 28;
           SpConfirmar.Width     := 90;
           SpConfirmar.Flat      := true;
           SpConfirmar.Parent    := PnComandos;
           SpConfirmar.Hint      := 'Confirmar';
           SpConfirmar.ShowHint  := True;
           SpConfirmar.Glyph.LoadFromFile(PathBMP +'\salvar.bmp');
           SpConfirmar.OnClick   := eventoNavegacao;

           {Cancelar}
           if SpCancelar = nil then
              SpCancelar := TSpeedButton.Create(self);

           SpCancelar.Parent  := PnComandos;
           SpCancelar.Name    := 'SpCancelar';
           SpCancelar.Caption := '&Cancelar';
           SpCancelar.Left    := SpConfirmar.Left+SpConfirmar.width+1;
           SpCancelar.Height  := 28;
           SpCancelar.Width   := 90;
           SpCancelar.Flat    := true;
           SpCancelar.Hint    := 'Cancelar';
           SpCancelar.ShowHint:= True;
           SpCancelar.Glyph.LoadFromFile(PathBMP +'\cancelar.bmp');
           SpCancelar.OnClick := eventoNavegacao;

           {Fechar}
           if PnFechar = nil then
              PnFechar := TPanel.Create(self);

           PnFechar.Height     := 26;
           PnFechar.Width      := 33;
           PnFechar.BevelOuter := bvNone;
           PnFechar.Caption    := '';
           PnFechar.Parent     := self;
           Self.Bands[2].Control := PnFechar;

           if SpClose = nil then
              SpClose := TSpeedButton.Create(self);

           SpClose.Name      := 'SpClose';
           SpClose.Left      := 0;
           SpClose.Height    := 26;
           SpClose.Width     := 30;
           SpClose.Flat      := true;
           SpClose.Parent    := PnFechar;
           SpClose.Glyph.LoadFromFile(PathBMP +'\close.bmp');
           SpClose.OnClick   := Fechar;

           Self.align            := alBottom;
           Self.AutoSize         := true;
           Self.EdgeBorders      := [ebLeft,ebTop,ebRight,ebBottom];
          end;
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
end;

constructor TtmbEdicaoBottom.Create(AOwner: TComponent);
begin
 inherited;
 PathBMP := ExtractFileDir( Application.ExeName )+ '\imagens';
end;

destructor TtmbEdicaoBottom.Destroy;
begin
 inherited;
end;

procedure TtmbEdicaoBottom.eventoNavegacao(Sender: TObject);
begin
 if      Sender = spPrimeiro  then
         begin
          Navegacao('<');
          HabilitaComponentes(1);
         end
 else if Sender = spAnterior  then
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

 else if (Sender = SpConfirmar) then
         Comandos('C')
 else if ( Sender = SpCancelar ) then
         Comandos('U');

end;

procedure TtmbEdicaoBottom.Fechar(Sender: TObject);
begin
 FForm.Close;
end;

procedure TtmbEdicaoBottom.HabilitaComponentes(Start: byte);
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

procedure TtmbEdicaoBottom.Navegacao(Seta: Char);
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

procedure TtmbEdicaoBottom.SetClientDataSet(const Value: TClientDataSet);
begin
 FClientDataSet := Value;
end;

procedure TtmbEdicaoBottom.SetCloseEvento(const Value: boolean);
begin
 FCloseEvento := Value;
end;

procedure TtmbEdicaoBottom.SetCria(const Value: boolean);
begin
 PathBMP := ExtractFileDir( Application.ExeName )+ '\imagens';
 FCria := Value;
 if FCria = True then
    ControiComponente(true);
end;

procedure TtmbEdicaoBottom.SetForm(const Value: TCustomForm);
begin
 FForm := Value;
end;

end.
