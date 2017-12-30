unit PnFiltro;

interface

uses
  ExtCtrls, Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms,  Dialogs, Buttons, StdCtrls, Tabs, DB, DBGrids,
  DBClient;

type
  TPnFiltro = class(TPanel)
  private
    FtmbCria: boolean;
    FtmbDataSource: TDataSource;
    FtmbPreencheCombo: boolean;
    FtmbDBGrid: TDBGrid;
    procedure SettmbCria(const Value: boolean);
    procedure SettmbDataSource(const Value: TDataSource);
    procedure SettmbPreencheCombo(const Value: boolean);
    procedure SettmbDBGrid(const Value: TDBGrid);
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
     SbFiltra,
    SbDesfaz : TSpeedButton;
    Bevel2,
    Bevel3   : TBevel;
    Label1,
    Label2   : TLabel;
    edtFilter : TEdit;
    cbFilter  : TComboBox;
    TabSet1  : TTabSet;
    FCria: boolean;
    constructor Create(AOwner : TComponent); override;
    procedure EdtAlterado(Sender : TObject);
    procedure DesfazFiltro(Sender : TObject);
    procedure Filtra(Sender : TObject);
  published
    { Published declarations }
    property tmbCria:boolean read FtmbCria write SettmbCria;
    property tmbDataSource: TDataSource read FtmbDataSource write SettmbDataSource;
    property tmbPreencheCombo:boolean read FtmbPreencheCombo write SettmbPreencheCombo;
    property tmbDBGrid : TDBGrid read FtmbDBGrid write SettmbDBGrid;
  end;

procedure Register;

implementation

var PathBMP : String;

procedure Register;
begin
 RegisterComponents('CGLSOFT', [TPnFiltro]);
end;

{ TPnFiltro }

constructor TPnFiltro.Create(AOwner: TComponent);
begin
  inherited;
  PathBMP := ExtractFileDir( Application.ExeName )+ '\imagens';
end;

procedure TPnFiltro.DesfazFiltro(Sender: TObject);
begin
 tmbDataSource.DataSet.Filtered := false;
 SbDesfaz.Enabled := false;
 SbFiltra.Enabled := true;
end;

procedure TPnFiltro.EdtAlterado(Sender: TObject);
begin
end;

procedure TPnFiltro.Filtra(Sender: TObject);
var i :integer;
begin
 for I := 0 to TClientDataset(tmbDataSource.DataSet).IndexDefs.Count - 1 do
  if TClientDataset(tmbDataSource.DataSet).IndexDefs[I].Fields <> Trim(cbFilter.Text) then
  begin
     TClientDataset(tmbDataSource.DataSet).IndexDefs.Add('myindice',Trim(cbFilter.text),[]);
     TClientDataset(tmbDataSource.DataSet).IndexDefs.Items[0].Options := [ixPrimary];
     TClientDataset(tmbDataSource.DataSet).IndexDefs.AddIndexDef;
  end;
  TClientDataset(tmbDataSource.DataSet).Active :=false;
  for I := 0 to TClientDataset(tmbDataSource.DataSet).IndexDefs.Count - 1 do
     if TClientDataset(tmbDataSource.DataSet).IndexDefs[I].Fields = Trim(cbFilter.Text) then
        TClientDataset(tmbDataSource.DataSet).IndexName := TClientDataset(tmbDataSource.DataSet).IndexDefs[0].Name;
  TClientDataset(tmbDataSource.DataSet).Active := true;
  {}
   TClientDataset(tmbDataSource.DataSet).Filter := Trim(cbFilter.text)+' = ' +QuotedStr(edtFilter.text);
  try
   TClientDataset(tmbDataSource.DataSet).Filtered := true;
  Except
   On E:Exception do
    Application.ProcessMessages;
  end;
  {}
  SbFiltra.Enabled := false;
  SbDesfaz.Enabled := true;
end;

procedure TPnFiltro.SettmbCria(const Value: boolean);
begin
 PathBMP := ExtractFileDir( Application.ExeName )+ '\imagens';
 FtmbCria := Value;
 FTmbCria := Value;
 if FTmbCria = true then
    begin
     if SbFiltra  = nil then
        begin
         SbFiltra := TSpeedButton.Create(self);
         with SbFiltra do
         begin
          Parent  := self;
          Left    := 3;
          Top     := 8;
          Width   := 415;
          Height  := 36;
          Caption :=
            '                                                                ' +
            '                                                               &' +
            'Ok';
          Font.Color := clWindowText;
          Font.Height := -11;
          Font.Name := 'Tahoma';
          Font.Style := [fsBold];
          ParentFont := False;
          SbFiltra.OnClick := Filtra;
         end;

         if Bevel3  = nil then
            Bevel3   := TBevel.Create(self);
         with Bevel3 do
         begin
          Parent := self;
          Left := 384;
          Top := 37;
          Width := 30;
          Height := 4;
          Shape := bsBottomLine;
         end;

         if Bevel2  = nil then
            Bevel2:= TBevel.Create(self);
         with Bevel2 do
         begin
          Parent := self;
          Left := 382;
          Top := 16;
          Width := 4;
          Height := 18;
         end;

         if Label2  = nil then
            Label2 := TLabel.Create(self);
         with Label2 do
         begin
          Parent := self;
          Left := 215;
          Top := 25;
          Width := 35;
          Height := 11;
          Caption := 'Seleção:';
          Font.Charset := ANSI_CHARSET;
          Font.Color := clWindowText;
          Font.Height := -9;
          Font.Name := 'Tahoma';
          Font.Style := [];
          ParentFont := False;
          Transparent := True;
         end;

         if Label1  = nil then
            Label1 := TLabel.Create(self);
         with Label1 do
         begin
          Parent        := self;
          Left          := 20;
          Top           := 27;
          Width         := 32;
          Height        := 11;
          Caption       := 'Coluna:';
          Font.Charset  := ANSI_CHARSET;
          Font.Color    := clWindowText;
          Font.Height   := -9;
          Font.Name     := 'Tahoma';
          Font.Style    := [];
          ParentFont    := False;
          Transparent   := True;
         end;

         if SbDesfaz = nil then
            SbDesfaz := TSpeedButton.Create(self);
         with SbDesfaz do
         begin
          Parent := self;
          Left := 420;
          Top := 8;
          Width := 86;
          Height := 36;
          Caption := '&Desfazer';
          Enabled := False;
          Font.Charset := ANSI_CHARSET;
          Font.Color := clWindowText;
          Font.Height := -11;
          Font.Name := 'Tahoma';
          Font.Style := [fsBold];
          Glyph.LoadFromFile(PathBMP+'\FILTRO.bmp') ;
          NumGlyphs := 2;
          ParentFont := False;
          SbDesfaz.OnClick := DesfazFiltro;
         end;

         if edtFilter = nil then
            edtFilter := TEdit.Create(self);
         with edtFilter do
         begin
          Parent := self;
          Left := 258;
          Top := 18;
          Width := 121;
          Height := 21;
          BevelKind := bkFlat;
          BorderStyle := bsNone;
          TabOrder := 0;
          edtFilter.OnChange := EdtAlterado;
         end;

         if cbFilter = nil then
            cbFilter:= TComboBox.Create(self);
         with cbFilter do
         begin
          Parent := self;
          Left := 60;
          Top := 18;
          Width := 145;
          Height := 21;
          BevelKind := bkFlat;
          ItemHeight := 13;
          TabOrder := 1;
         end;

         if TabSet1 = nil then
         begin
          TabSet1:= TTabSet.Create(self);
          with TabSet1 do
          begin
           Parent                   := self;
           TabSet1.DitherBackground := false;
           TabSet1.SendToBack;
           Left                     := 6;
           Top                      := 10;
           Width                    := 375;
           Height                   := 14;
           Font.Charset             := DEFAULT_CHARSET;
           Font.Color               := clWindowText;
           Font.Height              := -8;
           Font.Name                := 'Verdana';
           Font.Style               := [];
           SoftTop                  := True;
           Tabs.Add ('FILTRO');
           TabIndex                 := 0;
          end;
         end;
         Self.AutoSize := true;
        end;
    end;
end;

procedure TPnFiltro.SettmbDataSource(const Value: TDataSource);
begin
 FtmbDataSource := Value;
end;

procedure TPnFiltro.SettmbDBGrid(const Value: TDBGrid);
begin
 FtmbDBGrid := Value;
end;

procedure TPnFiltro.SettmbPreencheCombo(const Value: boolean);
var x : integer;
begin
 FtmbPreencheCombo := Value;
 if FtmbPreencheCombo = true then
    begin
     cbFilter.Clear;
     if FtmbDBGrid = nil then
        ShowMessage('Ops.. Vc. esqueceu do DBGrid !! é melhor seta-lo ..')
     else
     for x := 0 to FtmbDBGrid.Columns.Count -1 do
         cbFilter.Items.Add(FtmbDBGrid.Columns.Items[x].FieldName);
    end;
end;

end.
