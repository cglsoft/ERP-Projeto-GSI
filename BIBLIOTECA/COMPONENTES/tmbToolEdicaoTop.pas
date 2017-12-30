unit tmbToolEdicaoTop;

interface

uses
  SysUtils, Classes, Controls, ToolWin, ComCtrls,
  ExtCtrls, Buttons, forms, StdCtrls, DBCtrls, tmbDataInspector;

type
  TtmbEdicaoTop = class(TCoolBar)
  private
    FCria: boolean;
    FForm: TCustomForm;
    procedure SetCria(const Value: boolean);
    procedure SetForm(const Value: TCustomForm);
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    CoolBar : TCoolBar;
    PnTool  : TPanel;
    SpCopy,
    SpCut,
    SpPaste,
    SpSelAll  : TSpeedButton;
    constructor Create(AOwner : TComponent);  override;
    Destructor  Destroy; override;
    procedure ControiComponente(opc: boolean);
    procedure eventoNavegacao(Sender : TObject);
    procedure BarraTransferencia(tool : Char);
    procedure HabilitaComponentes(Start : byte);
  published
    { Published declarations }
    property TtmbCria : boolean read FCria write SetCria;
    property TtmbFormulario : TCustomForm read FForm write SetForm;
  end;

procedure Register;

implementation

var PathBMP : String;

procedure Register;
begin
 RegisterComponents('CGLSOFT', [TtmbEdicaoTop]);
end;

{ TtmbEdicaoTop }

procedure TtmbEdicaoTop.BarraTransferencia(tool: Char);
var RamMemo : TMemo;

 procedure SelectAll;
 var i,y     : integer;
 begin
  for i := 0 to FForm.ComponentCount-1 do
      begin
       if (FForm.Components[i] is TEdit) then
          RamMemo.Lines.Add(TEdit(FForm.Components[i]).text);
       if (FForm.Components[i] is TDBEdit) then
          RamMemo.Lines.Add(TDBEdit(FForm.Components[i]).text);
       if (FForm.Components[i] is TDBMemo) then
          RamMemo.Lines.Add(TDBMemo(FForm.Components[i]).text);
       if (FForm.Components[i] is TMemo) then
          RamMemo.Lines.Add(TMemo(FForm.Components[i]).text);
       {}
       if (FForm.Components[i] is TtmbDataInspector) then
          begin
           for y := 0 to TtmbDataInspector(FForm.Components[i]).Items.Count-1 do
               RamMemo.Lines.Add(TtmbDataInspector(FForm.Components[i]).Items[y].DisplayText);
               RamMemo.SelectAll;
               RamMemo.CopyToClipboard;
          end;
      end;
 end;

 Procedure Copy;
 var i   : integer;
 begin
  for i := 0 to FForm.ComponentCount-1 do
      begin
       if (FForm.Components[i] is TEdit) then
          if TEdit(FForm.Components[i]).Focused then
             TEdit(FForm.Components[i]).CopyToClipboard;
       if (FForm.Components[i] is TDBEdit) then
          if TDBEdit(FForm.Components[i]).Focused then
             TDBEdit(FForm.Components[i]).CopyToClipboard;
       if (FForm.Components[i] is TDBMemo) then
          if TDBMemo(FForm.Components[i]).Focused then
             TDBMemo(FForm.Components[i]).CopyToClipboard;
       if (FForm.Components[i] is TMemo) then
          if TMemo(FForm.Components[i]).Focused then
             TMemo(FForm.Components[i]).CopyToClipboard;
       if (FForm.Components[i] is TtmbDataInspector) then
          begin
           RamMemo.Lines.Add(TtmbDataInspector(FForm.Components[i]).ActiveItem.Displaytext);
           RamMemo.SelectAll;
           RamMemo.CopyToClipboard;
          end;
      end;
 end;

 Procedure Paste;
 var i   : integer;
  begin
   for i := 0 to FForm.ComponentCount-1 do
       begin
        if (FForm.Components[i] is TEdit) then
           if TEdit(FForm.Components[i]).Focused then
              TEdit(FForm.Components[i]).PasteFromClipboard;
        if (FForm.Components[i] is TDBEdit) then
           if TDBEdit(FForm.Components[i]).Focused then
              TDBEdit(FForm.Components[i]).PasteFromClipboard;
        if (FForm.Components[i] is TDBMemo) then
           if TDBMemo(FForm.Components[i]).Focused then
              TDBMemo(FForm.Components[i]).PasteFromClipboard;
        if (FForm.Components[i] is TMemo) then
           if TMemo(FForm.Components[i]).Focused then
              TMemo(FForm.Components[i]).PasteFromClipboard;
        if (FForm.Components[i] is TtmbDataInspector) then
           TtmbDataInspector(FForm.Components[i]).ActiveItem.Displaytext := RamMemo.Text;
       end;
 end;

 Procedure Cut;
 var i   : integer;
 begin
  for i := 0 to FForm.ComponentCount-1 do
  begin
   if (FForm.Components[i] is TEdit) then
       if TEdit(FForm.Components[i]).Focused then
       begin
        TEdit(FForm.Components[i]).CopyToClipboard;
        TEdit(FForm.Components[i]).Text := '';
       end;
   if (FForm.Components[i] is TDBEdit) then
       if TDBEdit(FForm.Components[i]).Focused then
       begin
        TDBEdit(FForm.Components[i]).CopyToClipboard;
        TDBEdit(FForm.Components[i]).Text := '';
       end;
   if (FForm.Components[i] is TDBMemo) then
       if TDBMemo(FForm.Components[i]).Focused then
       begin
        TDBMemo(FForm.Components[i]).CopyToClipboard;
        TDBMemo(FForm.Components[i]).Text := '';
       end;
   if (FForm.Components[i] is TMemo) then
       if TMemo(FForm.Components[i]).Focused then
       begin
        TMemo(FForm.Components[i]).CopyToClipboard;
        TMemo(FForm.Components[i]).Text := '';
       end;
   if (FForm.Components[i] is TtmbDataInspector) then
       begin
        RamMemo.Lines.Add(TtmbDataInspector(FForm.Components[i]).ActiveItem.Displaytext);
        RamMemo.SelectAll;
        RamMemo.CutToClipboard;
        TtmbDataInspector(FForm.Components[i]).ActiveItem.Displaytext := '';
       end;
  end;
 end;

begin
 RamMemo := TMemo.Create(self);
 try
  RamMemo.Visible := false;
  RamMemo.Parent  := self;
  RamMemo.Text := '';
  {}
  Case tool of
   'C': Copy;{Copy}
   'R': Cut;{Cut}
   'P': Paste;{Pate}
   'S': SelectAll; {Select All}
  end;
 Finally
  FreeAndNil(RamMemo);
 end;
end;

procedure TtmbEdicaoTop.ControiComponente(opc: boolean);
begin
 if (opc = true) then
    begin
     Self.Tag := 255;
     if PnTool = nil then
        begin
         PnTool := TPanel.Create(self);
         PnTool.Height     := 28;
         PnTool.Width      := 33;
         PnTool.BevelOuter := bvNone;
         PnTool.Caption    := '';
         {}
         if SpCopy = nil then
            SpCopy := TSpeedButton.Create(self);
         SpCopy.Name      := 'SpCopy';
         SpCopy.Caption   := '';
         SpCopy.Hint      := 'Copiar';
         SpCopy.ShowHint  := True;
         SpCopy.Left      := 0;
         SpCopy.Height    := 28;
         SpCopy.Width     := 33;
         SpCopy.Flat      := true;
         SpCopy.Parent    := PnTool;
         SpCopy.Glyph.LoadFromFile(PathBMP + '\copy.bmp');
         SpCopy.OnClick   := eventoNavegacao;
         {}
         if SpPaste = nil then
            SpPaste := TSpeedButton.Create(self);
         SpPaste.Parent   := PnTool;
         SpPaste.Name     := 'SpPaste';
         SpPaste.Caption  := '';
         SpPaste.Hint     := 'Colar';
         SpPaste.ShowHint := True;
         SpPaste.Left     := SpCopy.Left+SpCopy.width+1;
         SpPaste.Height   := 28;
         SpPaste.Width    := 33;
         SpPaste.Flat     := true;
         SpPaste.Glyph.LoadFromFile(PathBMP + '\paste.bmp');
         SpPaste.OnClick  := eventoNavegacao;
         {}
         if SpCut = nil then
            SpCut := TSpeedButton.Create(self);
         SpCut.Parent     := PnTool;
         SpCut.Name       := 'SpCut';
         SpCut.Caption    := '';
         SpCut.Hint       := 'Recortar';
         SpCut.ShowHint   := True;
         SpCut.Left       := SpPaste.Left+SpPaste.width+1;
         SpCut.Height     := 28;
         SpCut.Width      := 33;
         SpCut.Flat       := true;
         SpCut.Glyph.LoadFromFile(PathBMP + '\recortar.bmp');
         SpCut.OnClick    := eventoNavegacao;
         {}
         if SpSelAll = nil then
            SpSelAll := TSpeedButton.Create(self);
         SpSelAll.Parent  := PnTool;
         SpSelAll.Name    := 'SpSelAll';
         SpSelAll.Caption := '';
         SpSelAll.Hint    := 'Selecionar tudo';
         SpSelAll.ShowHint:= True;
         SpSelAll.Left    := SpCut.Left+SpCut.width+1;
         SpSelAll.Height  := 28;
         SpSelAll.Width   := 33;
         SpSelAll.Flat    := true;
         SpSelAll.Glyph.LoadFromFile(PathBMP + '\selall.bmp');
         SpSelAll.OnClick := eventoNavegacao;
         {}
         PnTool.Parent         := self;
         Self.Bands[0].Control := PnTool;
         Self.align            := alTop;
         Self.Width            :=  152;
         Self.EdgeBorders      := [ebLeft,ebTop,ebRight,ebBottom];
         Self.FixedSize       := TRUE;
        end;
    end
 else
    begin
     if PnTool   <> nil then
        FreeAndNil(PnTool);
     if SpCopy   <> nil then
        FreeAndNil(SpCopy);
     if SpCut    <> nil then
        FreeAndNil(SpCut);
     if SpPaste  <> nil then
        FreeAndNil(SpPaste);
     if SpSelAll <> nil then
        FreeAndNil(SpSelAll);
    end;
end;

constructor TtmbEdicaoTop.Create(AOwner: TComponent);
begin
 inherited;
 PathBMP := ExtractFileDir( Application.ExeName )+ '\imagens';
end;

destructor TtmbEdicaoTop.Destroy;
begin
 inherited;
end;

procedure TtmbEdicaoTop.eventoNavegacao(Sender: TObject);
begin
 if Sender = SpCopy   then
    begin
     if SpCopy.Tag = 1 then
        BarraTransferencia('C');
     HabilitaComponentes(1)
    end;
 if Sender = SpCut    then
    begin
     if SpCut.Tag = 1 then
        BarraTransferencia('R');
     HabilitaComponentes(1)
    end;
 if Sender = SpPaste  then
    begin
     if SpPaste.Tag  = 1 then
        BarraTransferencia('P');
        HabilitaComponentes(0);
     end;
 if Sender = SpSelAll then
    begin
     if SpSelAll.Tag = 1 then
        BarraTransferencia('S');
     HabilitaComponentes(1)
    end;
end;

procedure TtmbEdicaoTop.HabilitaComponentes(Start: byte);
begin
 {}
 Case Start of
  1: begin
      SpCopy.Tag   := 0;
      SpCopy.Glyph.LoadFromFile(PathBMP + '\copy_size.bmp');
      SpCut.Tag    := 0;
      SpCut.Glyph.LoadFromFile(PathBMP + '\recortar_size.bmp');
      SpPaste.Tag  := 1;
      SpPaste.Glyph.LoadFromFile(PathBMP + '\paste.bmp');
      SpSelAll.Tag := 0;
      SpSelAll.Glyph.LoadFromFile(PathBMP + '\selAll_size.bmp');
     end;
  0: begin
      SpCopy.Tag   := 1;
      SpCopy.Glyph.LoadFromFile(PathBMP + '\copy.bmp');
      SpCut.Tag    := 1;
      SpCut.Glyph.LoadFromFile(PathBMP + '\recortar.bmp');
      SpPaste.Tag  := 0;
      SpPaste.Glyph.LoadFromFile(PathBMP + '\paste_size.bmp');
      SpSelAll.Tag := 1;
      SpSelAll.Glyph.LoadFromFile(PathBMP + '\selall.bmp');
     end;
  end;
end;

procedure TtmbEdicaoTop.SetCria(const Value: boolean);
begin
 PathBMP := ExtractFileDir( Application.ExeName )+ '\imagens';
 FCria := Value;
 if FCria = true then
    ControiComponente(true);
end;

procedure TtmbEdicaoTop.SetForm(const Value: TCustomForm);
begin
 FForm := Value;
end;

end.
