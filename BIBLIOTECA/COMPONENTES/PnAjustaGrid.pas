unit PnAjustaGrid;

interface

uses
  SysUtils, Classes, Controls, ExtCtrls, DBGrids, Buttons, Grids, Types, Forms;

type
  tPanel1 = class(TPanel)
  private
    FtmbDBGrid: TDBGrid;
    FtmbCria: boolean;
    FAjusta: boolean;
    procedure SettmbDBGrid(const Value: TDBGrid);
    procedure SettmbCria(const Value: boolean);
    procedure SetAjusta(const Value: boolean);
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    i : array [0..99] of integer;
    SpeedButton : TSpeedButton;
    procedure Ajustar(Sender : TObject); {Ajusta Grid}
    procedure AjustarDinamic(Range : integer = 7); {Ajusta somente Fileds visiveis em um intervalo}

  procedure DrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);

  published
    { Published declarations }
    constructor Create(AOwner : TComponent); override;
    destructor Destroy; override;
    property tmbDBGrid : TDBGrid read FtmbDBGrid write SettmbDBGrid;
    property tmbCria: boolean read FtmbCria write SettmbCria;
    property tmbAjusta: boolean read FAjusta write SetAjusta;
  end;

procedure Register;

implementation

var PathBMP : String;

procedure Register;
begin
 RegisterComponents('CGLSOFT', [tPanel1]);
end;

{ tPanel1 }

procedure tPanel1.Ajustar(Sender: TObject);
var y : integer;
begin
 AjustarDinamic();
 for y := 0 to FtmbDBGrid.Columns.Count -1 do
 begin
  FtmbDBGrid.Columns.Items[y].Width := (Length(Trim(FtmbDBGrid.Columns.Items[y].Title.Caption))*  ( (Canvas.TextWidth('W') + Canvas.TextWidth('i') ) div 2)) + 8;

  if i[y] >= Length(Trim(FtmbDBGrid.Columns.Items[y].Title.Caption)) then
     FtmbDBGrid.Columns.Items[y].Width := ( ( (i[y])* ( ( Canvas.TextWidth('W') + Canvas.TextWidth('I') ) div 2)  ) )+ 8;
 end;
 for y := Low(i) to high(i) do
     i[y] := 0;
end;

{Ajusta apenas registros visiveis}
procedure tPanel1.AjustarDinamic(Range : integer = 7);
var MinRec, MaxRec, yy, x : integer;
    Rec : integer;
begin
 Rec := FtmbDBGrid.DataSource.DataSet.RecNo;
 MaxRec := Rec+Range;
 {consiste variaveis}
 try
  if Rec <= Range then
     Range := 0;
  if MaxRec > FtmbDBGrid.DataSource.DataSet.RecordCount then
     MaxRec := MaxRec - (MaxRec - FtmbDBGrid.DataSource.DataSet.RecordCount) ;
  {}
  MinRec := Rec-Range;
  FtmbDBGrid.DataSource.DataSet.RecNo := MinRec;
  {}
  for yy := MinRec to MaxRec do
  begin
   for x := 0 to FtmbDBGrid.Columns.Count-1 do
       if Length(FtmbDBGrid.Columns.Items[x].Field.AsString) > i[x] then
          i[x] := (Length(FtmbDBGrid.Columns.Items[x].Field.AsString));

   FtmbDBGrid.DataSource.DataSet.RecNo := yy;
  end;
  {}
  FtmbDBGrid.DataSource.DataSet.RecNo := Rec;
 Except
  On E:Exception do
     Application.ProcessMessages;
 end;
end;

constructor tPanel1.Create(AOwner: TComponent);
begin
 inherited;
 Caption := 'Alinha Grid';
 AutoSize := true;
 PathBMP := ExtractFileDir( Application.ExeName )+ '\imagens';
end;

destructor tPanel1.Destroy;
begin
 inherited;
end;

procedure tPanel1.DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
 if Length(FtmbDBGrid.Columns.Items[DataCol].Field.AsString) > i[DataCol] then
    i[DataCol] := (Length(FtmbDBGrid.Columns.Items[DataCol].Field.AsString));
end;

procedure tPanel1.SetAjusta(const Value: boolean);
begin
 FAjusta := Value;
 if (FAjusta  = true) and (FtmbDBGrid <> nil) and (FtmbCria = true ) then
    Ajustar(self);
end;

procedure tPanel1.SettmbCria(const Value: boolean);
begin
 PathBMP := ExtractFileDir( Application.ExeName )+ '\imagens';
 FtmbCria := Value;
 if FtmbCria = true then
    begin
     if SpeedButton = nil then
        begin
         Self.Caption := '';
         SpeedButton := TSpeedButton.Create(self);
         with SpeedButton do
         begin
          Parent := self;
          Caption := '&Alinhar     ';
          Glyph.LoadFromFile(PathBMP + '\ajusta.bmp');
          height := 22;
          Width := 68;
          SpeedButton.NumGlyphs := 2;
          SpeedButton.OnClick := Ajustar;
         end;
         Autosize := true;
         Self.Caption := '';
         SpeedButton.flat := TRUE;
        end;
    end;
end;

procedure tPanel1.SettmbDBGrid(const Value: TDBGrid);
begin
 FtmbDBGrid := Value;
 //FtmbDBGrid.OnDrawColumnCell := DrawColumnCell; {desnecessario linkar o evento}
end;

end.
