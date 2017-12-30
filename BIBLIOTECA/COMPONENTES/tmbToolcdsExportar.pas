unit tmbToolcdsExportar;

interface

uses
  SysUtils, Classes, Controls, ExtCtrls, DB,
  dbWeb, StdCtrls, Windows, ComObj, XMLDoc, XMLIntf, Variants,
  ShellAPI, Dialogs;

type
  TExportarTbl = class(TComponent)
  private
    FTtmbExportDoc: boolean;
    FTtmbExportExcel: boolean;
    FPathExcel: String;
    FPathDoc: String;
    FDataSet: TDataSet;
    FTtmbExportHTML: boolean;
    FPathHTML: String;
    FTtmbExportXML: boolean;
    FPathXML: String;
    procedure SetPathDoc(const Value: String);
    procedure SetPathExcel(const Value: String);
    procedure SetTtmbExportDoc(const Value: boolean);
    procedure SetTtmbExportExcel(const Value: boolean);
    procedure SetPathHTML(const Value: String);
    procedure SetTtmbExportHTML(const Value: boolean);
    procedure SetPathXML(const Value: String);
    procedure SetTtmbExportXML(const Value: boolean);

    function ConsisteDataSet: boolean;
    { Private declarations }
  protected
    { Protected declarations }
    procedure ExpDOC(DataSet: TDataSet; Arq: string);
    procedure ExpXLS(DataSet: TDataSet; Arq: string);
    procedure ExpHTML(DataSet: TDataSet; Arq: string);
    procedure ExpXML(DataSet: TDataSet; Arq: string);
  public
    { Public declarations }
    constructor Create(AOwner : TComponent); override;
    Destructor Destroy; override;
  published
    { Published declarations }
    property TtmbDataSet      : TDataSet  read FDataSet         write FDataSet;
    {WORD}
    property TtmbExportDoc    : boolean   read FTtmbExportDoc   write SetTtmbExportDoc;
    property TtmbPathDoc      : String    read FPathDoc         write SetPathDoc;
    {EXCEL}
    property TtmbExportExcel  : boolean   read FTtmbExportExcel write SetTtmbExportExcel;
    property TtmbPathExcel    : String    read FPathExcel       write SetPathExcel;
    {HTML}
    property TtmbExportHTML   : boolean   read FTtmbExportHTML  write SetTtmbExportHTML;
    property TtmbPathHTML     : String    read FPathHTML        write SetPathHTML;
    {XML}
    property TtmbExportXML   : boolean   read FTtmbExportXML   write SetTtmbExportXML;
    property TtmbPathXML     : String    read FPathXML         write SetPathXML;

  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('CGLSOFT', [TExportarTbl]);
end;

{ TExportarTbl }

function TExportarTbl.ConsisteDataSet: boolean;
begin
 {Tempo de Desenvolvimento}
 Result := true;
 if (FDataSet = nil) and (csDesigning in ComponentState) then
    begin
     Result := false;
     Exit;
    end;
end;

constructor TExportarTbl.Create(AOwner: TComponent);
begin
 inherited;
end;

destructor TExportarTbl.Destroy;
begin
 inherited;
end;

procedure TExportarTbl.ExpDOC(DataSet: TDataSet; Arq: string);
var
 WordApp, WordDoc, WordTable, WordRange: Variant;
 Row, Column: integer;
begin
 WordApp := CreateOleobject('Word.basic');
 WordApp.Appshow;
 WordDoc := CreateOleobject('Word.Document');
 WordRange := WordDoc.Range;
 WordTable := WordDoc.tables.Add( WordDoc.Range, 1, DataSet.FieldCount);

 for Column:=0 to DataSet.FieldCount-1 do
     WordTable.cell(1, Column+1 ).range.text := DataSet.Fields.Fields[Column].FieldName;

 Row := 2;
 DataSet.First;
 while not DataSet.Eof do
 begin
  WordTable.Rows.Add;
  for Column:=0 to DataSet.FieldCount-1 do
      WordTable.cell(Row, Column+1).range.text := DataSet.Fields.Fields[Column].DisplayText;
  DataSet.next;
  Row := Row+1;
 end;
 WordDoc.SaveAs(Arq);
end;

procedure TExportarTbl.ExpHTML(DataSet: TDataSet; Arq: string);
var
 sl : TStringList;
 dp : TDataSetTableProducer;
 Buffer : String;
 Hd : TPanel;
begin
 sl := TStringList.Create;
 hd := TPanel.Create( Self );
 try
  dp := TDataSetTableProducer.Create(nil);
  try
   DataSet.First;
   dp.DataSet := DataSet;
   dp.TableAttributes.Border := 1;
   sl.Text := dp.Content;
   sl.SaveToFile(Arq+'.html');
  finally
   Buffer := Arq;
   ShellExecute(  Hd.Parent.Handle, nil, PChar(Buffer), nil, nil, SW_SHOWMAXIMIZED);
   dp.free;
  end;
 finally
  sl.Free;
  Hd.Free;
 end;
end;

procedure TExportarTbl.ExpXLS(DataSet: TDataSet; Arq: string);
var
  ExcApp: OleVariant;
  i,l: integer;
begin
 ExcApp := CreateOleObject('Excel.Application');
 ExcApp.Visible := True;
 ExcApp.WorkBooks.Add;
 DataSet.First;
 l := 1;
 DataSet.First;

 for i := 0 to DataSet.FieldCount - 1 do
 begin
   ExcApp.WorkBooks[1].Sheets[1].Cells[1,i + 1] :=
     DataSet.Fields[i].DisplayName;
 end;

 l := 2;
 while not DataSet.EOF do
 begin
  for i := 0 to DataSet.Fields.Count - 1 do
//    ExcApp.WorkBooks[1].Sheets[1].Cells[l,i + 1] :=
//      DataSet.Fields[i].Value;

    case DataSet.Fields[i].DataType of
         ftString                   : ExcApp.WorkBooks[1].Sheets[1].Cells[l,i + 1] := DataSet.Fields[i].AsString;
         ftInteger,ftAutoInc        : ExcApp.WorkBooks[1].Sheets[1].Cells[l,i + 1] := DataSet.Fields[i].AsInteger;
         ftBoolean                  : ExcApp.WorkBooks[1].Sheets[1].Cells[l,i + 1] := DataSet.Fields[i].AsBoolean;
         ftFloat, ftCurrency,ftBCD  : ExcApp.WorkBooks[1].Sheets[1].Cells[l,i + 1] := DataSet.Fields[i].AsCurrency;
         ftDate, ftTime, ftDateTime : ExcApp.WorkBooks[1].Sheets[1].Cells[l,i + 1] := DataSet.Fields[i].AsDateTime;
    else
         ExcApp.WorkBooks[1].Sheets[1].Cells[l,i + 1] := DataSet.Fields[i].AsString;
    end;

  DataSet.Next;

  l := l + 1;


 end;
 ExcApp.WorkBooks[1].SaveAs(Arq);
end;

procedure TExportarTbl.ExpXML(DataSet: TDataSet; Arq: string);
var
 i           : integer;
 xml         : TXMLDocument;
 reg, campo  : IXMLNode;
begin
 xml := TXMLDocument.Create(self);
 try
  xml.Active := True;
  DataSet.First;
  xml.DocumentElement := xml.CreateElement('DataSet','');
  DataSet.First;
  while not DataSet.Eof do
  begin
   reg := xml.DocumentElement.AddChild('row');
   for i := 0 to DataSet.Fields.Count - 1 do
   begin
    campo := reg.AddChild(DataSet.Fields[i].DisplayLabel);
    campo.Text := DataSet.Fields[i].DisplayText;
   end;
    DataSet.Next;
  end;
  xml.SaveToFile(Arq + '.xml');
 finally
  xml.free;
 end;
end;

procedure TExportarTbl.SetPathDoc(const Value: String);
begin
 FPathDoc     := Value;
end;

procedure TExportarTbl.SetPathExcel(const Value: String);
begin
 FPathExcel   := Value;
end;

procedure TExportarTbl.SetPathHTML(const Value: String);
begin
 FPathHTML   := Value;
end;

procedure TExportarTbl.SetPathXML(const Value: String);
begin
 FPathXML := Value;
end;

procedure TExportarTbl.SetTtmbExportDoc(const Value: boolean);
begin
 FTtmbExportDoc := Value;
 if ConsisteDataSet then
    if (FTtmbExportDoc = true) and (FPathDoc <> '') then
       ExpDOC(FDataSet, FPathDoc);
end;

procedure TExportarTbl.SetTtmbExportExcel(const Value: boolean);
begin
 FTtmbExportExcel := Value;
 if ConsisteDataSet then
    if (FTtmbExportExcel = true) and (FPathExcel <> '') then
       ExpXLS(FDataSet, FPathExcel);
end;

procedure TExportarTbl.SetTtmbExportHTML(const Value: boolean);
begin
 FTtmbExportHTML := Value;
 if ConsisteDataSet then
    if (FTtmbExportHTML = true) and (FPathHTML <> '') then
       ExpHTML(FDataSet, FPathHTML);
end;

procedure TExportarTbl.SetTtmbExportXML(const Value: boolean);
begin
 FTtmbExportXML := Value;
 if ConsisteDataSet then
    if (FTtmbExportXML = true) and (FPathXML <> '') then
       ExpXML(FDataSet, FPathXML);
end;

end.
