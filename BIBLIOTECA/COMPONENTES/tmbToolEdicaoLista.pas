unit tmbToolEdicaoLista;

interface

  uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ToolWin, ComCtrls,  Buttons, DBClient, DB;

type
  TtmbEdicaoLista = class(TPanel)
  private
    { Private declarations }
    Bevel3,
    Bevel4       : TBevel;
    SpeedButton1 : TSpeedButton;
    SpeedButton2 : TSpeedButton;
    SpeedButton3 : TSpeedButton;
    SpeedButton4 : TSpeedButton;
    FCriar: boolean;
    FClientDataSet: TClientDataSet;
    FTtmbVertical: boolean;
    FTamMax: boolean;
    FTtmbDataSource: TDataSource;
    FTtmbFontDefaut: boolean;
    FTtmbDesativaInserir: boolean;
    FTtmbClassOwnerEspec: TComponentClass;
    FFormOwnerEspec: TForm;
    FDireito: String;
    procedure SetCriar(const Value: boolean);
    procedure SetClientDataSet(const Value: TClientDataSet);
    procedure SetTtmbVertical(const Value: boolean);
    procedure SetTamMax(const Value: boolean);
    procedure SetTtmbDataSource(const Value: TDataSource);
    procedure SetTtmbFontDefaut(const Value: boolean);
    procedure SetTtmbDesativaInserir(const Value: boolean);
    procedure SetFormOwnerEspec(const Value: TForm);
    procedure SetTtmbClassOwnerEspec(const Value: TComponentClass);
    
  protected
    { Protected declarations }
    procedure CmpPositionLayout(Vertical: boolean);
  public
    { Public declarations }
    Constructor Create(Aowner : TComponent); override;
    Destructor  Destroy; override;
    procedure   Comandos(Cm: Char);
    procedure   AbreFrmEdicao;
    procedure   eventoNavegacao(Sender : TObject);

  published
    { Published declarations }
   property TtmbCriar           : boolean        read FCriar               write SetCriar;
   property TtmbClientDataSet   : TClientDataSet read FClientDataSet       write SetClientDataSet;
   property TtmbVertical        : boolean        read FTtmbVertical        write SetTtmbVertical;
   property TtmbTamMax          : boolean        read FTamMax              write SetTamMax;
   property TtmbDataSource      : TDataSource    read FTtmbDataSource      write SetTtmbDataSource;
   property TtmbFontDefaut      : boolean        read FTtmbFontDefaut      write SetTtmbFontDefaut;
   property TtmbDesativaInserir : boolean        read FTtmbDesativaInserir write SetTtmbDesativaInserir;
   property TtmbClassOwnerEspec  : TComponentClass read FTtmbClassOwnerEspec write SetTtmbClassOwnerEspec;
   property TtmbFormOwnerEspec   : TForm           read FFormOwnerEspec      write SetFormOwnerEspec;

   property TtmbDireito   : String read FDireito write FDireito;
  end;

procedure Register;

implementation

uses
   u_PadraoEdicao,
    FuncoesCliente,
    u_dmGSI;

var
 PathGlyphInserir  : String;
 PathGlyphEditar   : String;
 PathGlyphExcluir  : String;
 PathGlyphRefresh  : String;

procedure Register;
begin
 RegisterComponents('CGLSOFT', [TtmbEdicaoLista]);
end;

{ TEdicaoLista }

procedure TtmbEdicaoLista.AbreFrmEdicao;
begin
 Application.CreateForm(TtmbClassOwnerEspec, FFormOwnerEspec);
 if TtmbClassOwnerEspec = TFrmPadraoEdicao then
    begin
     TFrmPadraoEdicao(FFormOwnerEspec).DataSource := FTtmbDataSource;
     TFrmPadraoEdicao(FFormOwnerEspec).tmbEdicaoBottom1.TtmbClientDataSet := FClientDataSet;
    end;
 FFormOwnerEspec.Show;
end;

procedure TtmbEdicaoLista.CmpPositionLayout(Vertical: boolean);
type
 TTpPanel = record
  Width,
  Height : integer;
 end;
 TTpBevel3 = record
  Left,
  Top,
  Width,
  Height : integer;
  Shape  : TBevelShape;
 end;
 TTpBevel4 = record
  Left,
  Top,
  Width,
  Height : integer;
  Shape  : TBevelShape;
 end;
 TTpBtnInserir = record
  Left,
  Top,
  Width,
  Height   : integer;
  Caption,
  Glyph    : String;
  Layout   : TButtonLayout;
 end;
 TTpBtnAlterar = record
  Left,
  Top,
  Width,
  Height   : integer;
  Caption,
  Glyph    : String;
  Layout   : TButtonLayout;
 end;
 TTpBtnExcluir = record
  Left,
  Top,
  Width,
  Height   : integer;
  Caption,
  Glyph    : String;
  Layout   : TButtonLayout;
 end;
 TTpBtnRefresh = record
  Left,
  Top,
  Width,
  Height   : integer;
  Caption,
  Glyph    : String;
  Layout   : TButtonLayout;
 end;

var
 vPanel      : TTpPanel;
 vBevel3     : TTpBevel3;
 vBevel4     : TTpBevel4;
 vBtnInserir : TTpBtnInserir;
 vBtnAlterar : TTpBtnAlterar;
 vBtnexcluir : TTpBtnExcluir;
 vBtnrefresh : TTpBtnRefresh;

 procedure Atributos(Vert : boolean);
 begin
  if Vert = true then
     begin
      if FTamMax = true then
         begin
          vPanel.Width   := 67;
          vPanel.Height  := 175;
          vBevel3.Left   :=  4;
          vBevel3.Top    :=  3;
          vBevel3.Width  :=  59;
          vBevel3.Height :=  6;
          vBevel3.Shape  :=  bsTopLine;
          {}
          vBevel4.Left   :=  4;
          vBevel4.Top    :=  6;
          vBevel4.Width  :=  59;
          vBevel4.Height :=  2;
          vBevel4.Shape  :=  bsTopLine;
          {}
          vBtnInserir.Left   := 3;
          vBtnInserir.Top    := 13;
          vBtnInserir.Width  := 62;
          vBtnInserir.Height := 39;
          vBtnInserir.Layout := blGlyphTop;
          {}
          vBtnAlterar.Left   :=  3;
          vBtnalterar.Top    :=  52;
          vBtnalterar.Width  :=  62;
          vBtnalterar.Height :=  39;
          vBtnalterar.Layout := blGlyphTop;
          {}
          vBtnexcluir.Left   :=  3;
          vBtnexcluir.Top    :=  91;
          vBtnexcluir.Width  :=  62;
          vBtnexcluir.Height :=  39;
          vBtnexcluir.Layout :=  blGlyphTop;
          {}
          vBtnrefresh.Left   := 2;
          vBtnrefresh.Top    := 130;
          vBtnrefresh.Width  := 63;
          vBtnrefresh.Height := 43;
          vBtnrefresh.Layout := blGlyphTop;
         end
      else
         begin
          vPanel.Width   := 67;
          vPanel.Height  := 120;
          {}
          vBevel3.Left   :=  4;
          vBevel3.Top    :=  3;
          vBevel3.Width  :=  59;
          vBevel3.Height :=  6;
          vBevel3.Shape  :=  bsTopLine;
          {}
          vBevel4.Left   :=  4;
          vBevel4.Top    :=  6;
          vBevel4.Width  :=  59;
          vBevel4.Height :=  2;
          vBevel4.Shape  :=  bsTopLine;
          {}
          vBtnInserir.Left   := 3;
          vBtnInserir.Top    := 13;
          vBtnInserir.Width  := 62;
          vBtnInserir.Height := 26;
          vBtnInserir.Layout := blGlyphLeft;
          {}
          vBtnAlterar.Left   :=  3;
          vBtnalterar.Top    :=  39;
          vBtnalterar.Width  :=  62;
          vBtnalterar.Height :=  26;
          vBtnalterar.Layout := blGlyphLeft;
          {}
          vBtnexcluir.Left   :=  3;
          vBtnexcluir.Top    :=  65;
          vBtnexcluir.Width  :=  62;
          vBtnexcluir.Height :=  26;
          vBtnexcluir.Layout :=  blGlyphLeft;
          {}
          vBtnrefresh.Left   := 2;
          vBtnrefresh.Top    := 91;
          vBtnrefresh.Width  := 63;
          vBtnrefresh.Height := 26;
          vBtnrefresh.Layout := blGlyphLeft;
         end;
     end
 else
     begin
      vPanel.Width   := 262;
      vPanel.Height  := 40;
      {}
      vBevel3.Left   :=  3;
      vBevel3.Top    :=  3;
      vBevel3.Width  :=  2;
      vBevel3.Height :=  35;
      vBevel3.Shape  :=  bsLeftLine;
      {}
      vBevel4.Left   :=  6;
      vBevel4.Top    :=  3;
      vBevel4.Width  :=  2;
      vBevel4.Height :=  35;
      vBevel4.Shape  :=  bsLeftLine;
      {}
      vBtnInserir.Left   := 10;
      vBtnInserir.Top    := 1;
      vBtnInserir.Width  := 61;
      vBtnInserir.Height := 38;
      vBtnInserir.Layout := blGlyphTop;
      {}
      vBtnAlterar.Left   :=  71;
      vBtnalterar.Top    :=  1;
      vBtnalterar.Width  :=  61;
      vBtnalterar.Height :=  38;
      vBtnalterar.Layout := blGlyphTop;
      {}
      vBtnexcluir.Left   :=  132;
      vBtnexcluir.Top    :=  1;
      vBtnexcluir.Width  :=  61;
      vBtnexcluir.Height :=  38;
      vBtnexcluir.Layout :=  blGlyphTop;
      {}
      vBtnrefresh.Left   := 193;
      vBtnrefresh.Top    := 1;
      vBtnrefresh.Width  := 67;
      vBtnrefresh.Height := 38;
      vBtnrefresh.Layout := blGlyphTop;
     end;
 end;

begin
 Atributos(Vertical);
 Width    := vPanel.Width;
 Height   := vPanel.Height;
 TabOrder := 0;
 if Bevel3 = nil then
    Bevel3 := TBevel.Create(self);
 with Bevel3 do
 begin
  Parent := Self;
  Left   := vBevel3.Left;
  Top    := vBevel3.Top;
  Width  := vBevel3.Width;
  Height := vBevel3.Height;
  Bevel3.Shape := vBevel3.Shape;
 end;
 if Bevel4 = nil then
    Bevel4 := TBevel.Create(self);
    with Bevel4 do
    begin
     Parent := self;
     Left   := vBevel4.Left;
     Top    := vBevel4.Top;
     Width  := vBevel4.Width;
     Height := vBevel4.Height;
     Bevel4.Shape := vBevel4.Shape;
    end;
 if SpeedButton1 = nil then
    SpeedButton1 := TSpeedButton.Create(self);
    with SpeedButton1 do
    begin
     Parent  :=  Self ;
     ParentFont     := false;
     ParentBiDiMode := false;
     Layout  := vBtnInserir.Layout;
     Left    := vBtnInserir.Left;
     Top     := vBtnInserir.Top;
     Width   := vBtnInserir.Width;
     Height  := vBtnInserir.Height;
     Caption := '&Inserir';
     Hint    := 'Inserir';
     Flat := true;
     Glyph.LoadFromFile(PathGlyphInserir);
     SpeedButton1.OnClick := eventoNavegacao;

     if TtmbDesativaInserir = true then
        SpeedButton1.Enabled := false
     else
        SpeedButton1.Enabled := true;
    end;
 if SpeedButton2 = nil then
    SpeedButton2:= TSpeedButton.Create(self);
    with SpeedButton2 do
    begin
     Parent  := self;
     ParentFont     := false;
     ParentBiDiMode := false;
     Layout  := vBtnAlterar.Layout;
     Left    := vBtnAlterar.Left;
     Top     := vBtnAlterar.Top;
     Width   := vBtnAlterar.Width;
     Height  := vBtnAlterar.Height;
     Caption := '&Editar';
     Hint    := 'Editar';
     Flat := true;
     Font.Style := Font.Style - [fsBold];
     Glyph.LoadFromFile(PathGlyphEditar);
     SpeedButton2.OnClick := eventoNavegacao;
    end;
 if SpeedButton3 = nil then
    SpeedButton3:= TSpeedButton.Create(self);
    with SpeedButton3 do
    begin
     Parent  := self;
     ParentFont     := false;
     ParentBiDiMode := false;
     Layout  := vBtnExcluir.Layout;
     Left    := vBtnExcluir.Left;
     Top     := vBtnExcluir.Top;
     Width   := vBtnExcluir.Width;
     Height  := vBtnExcluir.Height;
     Caption := '&Excluir';
     Hint    := 'Excluir';
     Flat := True;
     Font.Style := Font.Style - [fsBold];
     Glyph.LoadFromFile(PathGlyphExcluir);
     SpeedButton3.OnClick := eventoNavegacao;
    end;
 if SpeedButton4 = nil then
    SpeedButton4:= TSpeedButton.Create(self);
    with SpeedButton4 do
    begin
     Parent  := self;
     ParentFont     := false;
     ParentBiDiMode := false;
     Layout  := vBtnRefresh.Layout;
     Left    := vBtnRefresh.Left;
     Top     := vBtnRefresh.Top;
     Width   := vBtnRefresh.Width;
     Height  := vBtnRefresh.Height;
     Caption := '&Refresh';
     Hint    := 'Refresh';
     Flat := True;
     Font.Style := Font.Style - [fsBold];
     Glyph.LoadFromFile(PathGlyphRefresh);
     SpeedButton4.OnClick := eventoNavegacao;
    end;
end;

procedure TtmbEdicaoLista.Comandos(Cm: Char);

 function ConfirmaExclusao: boolean;
 begin
  Result := ((application.MessageBox('Confirma exclusão do registro ?','Mensagem', MB_YesNo )) = IDYes);
 end;

begin
 Case Cm of
  'I': begin
        if FClientDataSet <> nil then
           FClientDataSet.Append;
           AbreFrmEdicao;
       end;
  'E': begin
        if FClientDataSet <> nil then
           begin
            if FClientDataSet.RecordCount > 0 then
               begin
                try
                 try
                   FClientDataSet.Edit;
                 except
                 on E:Exception do
                    raise Exception.Create(E.Message);
                 end;
                finally
                 AbreFrmEdicao;
                end
               end
            else
             Application.MessageBox('Não há registros na tabela para edição.','Mensagem', MB_Ok );
           end;
       end;
  'D': if ConfirmaExclusao then
          if FClientDataSet <> nil then
             begin
              if FClientDataSet.RecordCount > 0 then
                 FClientDataSet.Delete
              else
               MessageDlg('Não há registros na tabela para exclusão.', mtInformation,[mbOk], 0);
             end;

  'R': if (FClientDataSet <> nil) then
          begin
           if not FClientDataSet.IsEmpty then
              FClientDataSet.Refresh
           else
            MessageDlg('Não há registros na tabela.', mtInformation,[mbOk], 0);
          end;
 end;
end;

constructor TtmbEdicaoLista.Create(Aowner: TComponent);
begin
 inherited;
 PathGlyphInserir  := ExtractFileDir( Application.ExeName )+ '\imagens\inserir.bmp';
 PathGlyphEditar   := ExtractFileDir( Application.ExeName )+ '\imagens\Editar.bmp';
 PathGlyphExcluir  := ExtractFileDir( Application.ExeName )+ '\imagens\Excluir.bmp';
 PathGlyphRefresh  := ExtractFileDir( Application.ExeName )+ '\imagens\Refresh.bmp';
 Self.Height       := 40;
 Self.Width        := 200;
 Self.Caption      := ' ';
 TtmbCriar         := true;
 TtmbVertical      := true;
 TtmbTamMax        := false;
 ParentColor       := false;
 ParentFont        := false;
end;

destructor TtmbEdicaoLista.Destroy;
begin
 inherited;
 if FrmPadraoEdicao <> nil then
    TForm(FrmPadraoEdicao).Free;
end;

procedure TtmbEdicaoLista.eventoNavegacao(Sender: TObject);
begin
 if      ( Sender = SpeedButton1 ) then
         begin
          if ( CheckSenha( dmGsi.UsuarioAtivo, TForm( Self.Owner ).Caption+'-'+TtmbDireito, SpeedButton1.Hint, true)) then
             Comandos('I')
         end
 else if ( Sender = SpeedButton2 ) then
         begin
          if ( CheckSenha( dmGsi.UsuarioAtivo, TForm(Self.Owner).Caption+'-'+TtmbDireito, SpeedButton2.Hint, true ) ) then
          Comandos('E');
         end
 else if ( Sender = SpeedButton3 ) then
         begin
          if (CheckSenha( dmGsi.UsuarioAtivo, TForm(Self.Owner).Caption+'-'+TtmbDireito, SpeedButton3.Hint, true)) then
             Comandos('D');
         end
 else if ( Sender = SpeedButton4 ) then
         Comandos('R');
end;

procedure TtmbEdicaoLista.SetClientDataSet(const Value: TClientDataSet);
begin
 FClientDataSet := Value;
end;

procedure TtmbEdicaoLista.SetCriar(const Value: boolean);
begin
 PathGlyphInserir  := ExtractFileDir( Application.ExeName )+ '\imagens\inserir.bmp';
 PathGlyphEditar   := ExtractFileDir( Application.ExeName )+ '\imagens\Editar.bmp';
 PathGlyphExcluir  := ExtractFileDir( Application.ExeName )+ '\imagens\Excluir.bmp';
 PathGlyphRefresh  := ExtractFileDir( Application.ExeName )+ '\imagens\Refresh.bmp';
 FCriar := Value;
 Caption := '';
 ParentColor := false;
 ParentFont  := false;
 if FCriar = true then
    begin
     if FTtmbVertical = true then
        CmpPositionLayout(true)
     else
      CmpPositionLayout(false);
    end;
    Self.Caption := ' ';
end;

procedure TtmbEdicaoLista.SetTamMax(const Value: boolean);
begin
 FTamMax := Value;
end;

procedure TtmbEdicaoLista.SetTtmbDesativaInserir(const Value: boolean);
begin
 FTtmbDesativaInserir := Value;
end;

procedure TtmbEdicaoLista.SetTtmbDataSource(const Value: TDataSource);
begin
 FTtmbDataSource := Value;
end;

procedure TtmbEdicaoLista.SetTtmbFontDefaut(const Value: boolean);
begin
 FTtmbFontDefaut := Value;
end;

procedure TtmbEdicaoLista.SetTtmbVertical(const Value: boolean);
begin
 FTtmbVertical := Value;
end;

procedure TtmbEdicaoLista.SetFormOwnerEspec(const Value: TForm);
begin
  FFormOwnerEspec := Value;
end;

procedure TtmbEdicaoLista.SetTtmbClassOwnerEspec(
  const Value: TComponentClass);
begin
  FTtmbClassOwnerEspec := Value;
end;

end.



















