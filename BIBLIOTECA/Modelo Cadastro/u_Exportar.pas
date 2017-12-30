unit u_Exportar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ActnList, XPStyleActnCtrls, ActnMan, ActnCtrls,
  ActnMenus, ToolWin, ComCtrls, wwclearbuttongroup, wwradiogroup, StdCtrls,
  Mask, wwdbedit, wwcheckbox, ExtCtrls, DBGrids, Grids, Wwdbigrd, Wwdbgrid,
  DB, wwExport, ShellAPI, fcStatusBar;

type
  TfrmExportar = class(TForm)
    Panel3: TPanel;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    BestColumnFitCB: TwwCheckBox;
    ShowCheckboxCB: TwwCheckBox;
    ShowURLCB: TwwCheckBox;
    ShowColorsCB: TwwCheckBox;
    AlternatingCB: TwwCheckBox;
    GroupBox2: TGroupBox;
    ExportSelectedCB: TwwCheckBox;
    MultiselectCB: TwwCheckBox;
    ShowRecCB: TwwCheckBox;
    ShowHeaderCB: TwwCheckBox;
    ShowTitleCB: TwwCheckBox;
    wwRadioGroup1: TwwRadioGroup;
    CoolBar1: TCoolBar;
    ActionMainMenuBar1: TActionMainMenuBar;
    ActionToolBar1: TActionToolBar;
    ActionManager1: TActionManager;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    Action5: TAction;
    Action6: TAction;
    ImageList1: TImageList;
    macgreenImageList: TImageList;
    fcStatusBar1: TfcStatusBar;
    mktHtml: TMaskEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure Action4Execute(Sender: TObject);
    procedure Action5Execute(Sender: TObject);
    procedure Action6Execute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
     procedure SetDataSource(const Value: TDataSource);
  public
    { Public declarations }
   FDataSource: TDataSource;
   FwwDBGrid : TwwDBGrid;
   procedure SetExportOptions(AOptions: TwwExportOptions);
   property  DataSource: TDataSource read FDataSource write SetDataSource;
  end;

var
  frmExportar: TfrmExportar;

implementation

uses Math, u_dmGSI;

{$R *.dfm}

procedure TfrmExportar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:= caFree;
 frmExportar := nil;
end;

procedure TfrmExportar.Action1Execute(Sender: TObject);
begin
 Screen.Cursor := crAppStart;
 try
  with FwwDBGrid,FwwDBGrid.ExportOptions do
  begin
   ExportType := wwgetHTML;
   FileName   := 'wwexporttest.html';
   SetExportOptions(FwwDBGrid.ExportOptions);
   Save;
   if not(esoClipboard in Options) then
      ShellExecute(Handle, 'OPEN', PChar( FwwDBGrid.exportoptions.Filename), nil, nil, sw_shownormal);
  end;
 finally
  Screen.Cursor := crDefault;
 end;
end;

procedure TfrmExportar.Action2Execute(Sender: TObject);
begin
 Screen.Cursor := crAppStart;
 try
  with FwwDBGrid,FwwDBGrid.ExportOptions do
  begin
   ExportType := wwgetTxt;
   FileName   := 'wwexporttest.txt';
   Delimiter  := ',';
   SetExportOptions(FwwDBGrid.ExportOptions);
   Save;
   if not(esoClipboard in Options) then
     ShellExecute(Handle, 'OPEN', PChar(FwwDBGrid.exportoptions.Filename), nil, nil, sw_shownormal);
  end;
 finally
  Screen.Cursor := crDefault;
 end;
end;

procedure TfrmExportar.Action3Execute(Sender: TObject);
begin
 Screen.Cursor := crAppStart;
 try
  with FwwDBGrid,FwwDBGrid.ExportOptions do
  begin
   ExportType := wwgetTxt;
   FileName   := 'wwexporttest.txt';
   Delimiter  := '';
   SetExportOptions(FwwDBGrid.ExportOptions);
   Save;
   if not(esoClipboard in Options) then
      ShellExecute(Handle, 'OPEN', PChar(FwwDBGrid.exportoptions.Filename), nil, nil, sw_shownormal);
  end;
 finally
  Screen.Cursor := crDefault;
 end;
end;

procedure TfrmExportar.Action4Execute(Sender: TObject);
var i : Extended;
begin
 i := 10 * Random;
 Screen.Cursor := crAppStart;
 try
  with FwwDBGrid, FwwDBGrid.ExportOptions do
  begin
   ExportType := wwgetSYLK;
   FileName   := ExtractFilePath( Application.ExeName )+ 'EXPORT\EXP' + dmGsi.UsuarioAtivo +
     FloatToStr( i ) + '.slk';


   SetExportOptions(ExportOptions);
   Save;
   if not(esoClipboard in Options) then
      ShellExecute(Handle, 'Open', PChar(FwwDBGrid.exportoptions.Filename), nil, nil, sw_shownormal);
  end;
 finally
  Screen.Cursor := crDefault;
 end;
end;

procedure TfrmExportar.Action5Execute(Sender: TObject);
begin
 Screen.Cursor := crAppStart;
 try
  with FwwDBGrid,FwwDBGrid.ExportOptions do
  begin
   ExportType := wwgetTxt;
   FileName   := 'wwexporttest.txt';
   Delimiter  := #9;
   SetExportOptions(ExportOptions);
   Save;
   if not(esoClipboard in Options) then
      ShellExecute(Handle, 'OPEN', PChar(FwwDBGrid.exportoptions.Filename), nil, nil, sw_shownormal);
  end;
 finally
  Screen.Cursor := crDefault;
 end;
end;

procedure TfrmExportar.Action6Execute(Sender: TObject);
begin
 Close;
end;

procedure TfrmExportar.FormKeyPress(Sender: TObject; var Key: Char);
begin
 // Habilitar a propriedade KeyPreview do Form para funcionar o Enter como Tab
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;

procedure TfrmExportar.SetExportOptions(AOptions: TwwExportOptions);
begin
 AOptions.Options := [esoDblQuoteFields,esoShowFooter];
 if ShowTitleCB.Checked then
    AOptions.Options := AOptions.Options + [esoShowTitle];

 if ShowHeaderCB.Checked then
    AOptions.Options := AOptions.Options + [esoShowHeader];

 if ShowRecCB.Checked then
    AOptions.Options := AOptions.Options + [esoShowRecordNo];

 if ExportSelectedCB.Checked then
    AOptions.Options := AOptions.Options + [esoSaveSelectedOnly];

 if BestColumnFitCB.Checked then
    AOptions.Options := AOptions.Options + [esoBestColFit];

 if ShowCheckBoxCB.Checked then
    AOptions.Options := AOptions.Options + [esoAddControls];

 if ShowURLCB.Checked then
    AOptions.Options := AOptions.Options + [esoEmbedURL];

 if ShowColorsCB.Checked then
    AOptions.Options := AOptions.Options + [esoDynamicColors];

 if AlternatingCB.Checked then
    AOptions.Options := AOptions.Options + [esoShowAlternating];

 AOptions.OutputWidthinTwips := StrToInt(mktHtml.Text)*1440;

 if wwRadioGroup1.ItemIndex = 0 then
    AOptions.Options := AOptions.Options + [esoClipboard]
 else
    AOptions.Options := AOptions.Options - [esoClipboard];

end;

procedure TfrmExportar.SetDataSource(const Value: TDataSource);
begin
 FDataSource := Value;
end;

procedure TfrmExportar.FormShow(Sender: TObject);
begin
 FwwDBGrid            := TwwDBGrid.Create(self);
 FwwDBGrid.Parent     := Panel3.Parent;
 FwwDBGrid.DataSource := FDataSource;
 FwwDBGrid.Visible    := False;
end;

end.
