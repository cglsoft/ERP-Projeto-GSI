{ TAG = 0 permitido editar
  TAG = 1 não é permitido editar
  TAG = 3 sobrepoe as providers flag e deixar alterar
  TAG = 4 Para campos do ORACLE CLOB deixar como String normal sem formatação 
  TAG = 5 Para campos que não for fazer a conversão de minúscula para maiúscula }

unit tmbDataInspector;

interface

uses
  Windows, Messages, StdCtrls, SysUtils, Classes, Controls, Graphics, Grids, SqlExpr,
  DBClient, Dialogs, DB, wwDataInspector, wwdbdatetimepicker, fcImager,
  wwclearbuttongroup, wwradiogroup, wwcheckbox, wwframe, wwDialog,
  wwidlg, wwrcdpnl, wwpaintoptions, wwriched, wwdbedit;

type
  TtmbDataInspector = class;

  TButtonClickEvent = procedure(Sender: TtmbDataInspector; Item: TwwInspectorItem;
                                   TableNameReference: String) of object;
  TToshiba = class(TPersistent)
  private
    { Private declarations }
    FActive : Boolean;
    FClientDataSet : TClientDataSet;
    FTableName : String;
    Parent: TComponent;
    procedure SetTableName(const Value: String);
    procedure SetActive(const Value: Boolean);
  public
    { Public declarations }
    constructor Create(AOwner: TComponent);
    destructor Destroy; override;
  published
    { Published declarations }
    property TableName : String read FTableName write SetTableName;
    property ClientDataSet : TClientDataSet read FClientDataSet write FClientDataSet;
    property Active : Boolean read FActive write SetActive default False;
  end;

  TtmbDataInspector = class(TwwDataInspector)
  private
    { Private declarations }
    FToshiba: TToshiba;
    FSqlConstraint: String;
    FSqlDicionario: String;
    FSqlTableReference: String;
    ListaConstraint: array of String;
    ListaDicionario: array of array of String;
    ListaTableReference: array of array of String;
    FOnButtonClick: TButtonClickEvent;
    FDataSource: TDataSource;
    function QtdColunas(var Valor: String): Integer;
    procedure PegaListaConstraint;
    procedure PegaListaDicionario;
    procedure PegaListaTableReference;
    procedure LocalizaItem(ListaItens: TwwInspectorCollection);
    procedure VerificaTipoCampo(Item: TwwInspectorItem);
    procedure CriaLookUp(Item: TwwInspectorItem);
    procedure CriaData(Item: TwwInspectorItem);
    procedure CriaFigura(Item: TwwInspectorItem);
    procedure CriaDoc(Item: TwwInspectorItem);
    procedure CriaCheck(Item: TwwInspectorItem);
    procedure CriaRadio(Item: TwwInspectorItem; Valor,Titulo: String );
    procedure SetToshiba(const Value: TToshiba);
    procedure ClickBotaoItem(Sender: TwwDataInspector; Item: TwwInspectorItem);
    procedure AbilitarCampos( State : TDataSetState ; Item : TwwInspectorItem );
  protected
    { Protected declarations }
    procedure Executa;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    { Published declarations }
    property Toshiba : TToshiba read FToshiba write SetToshiba;
    property OnButtonClick: TButtonClickEvent read FOnButtonClick write FOnButtonClick;
  end;

procedure Register;

implementation

uses FuncoesDsi, StrUtils;

procedure Register;
begin
 RegisterComponents('CGLSOFT', [TtmbDataInspector]);
end;

{ TToshiba }
constructor TToshiba.Create(AOwner: TComponent);
begin
 FTableName     := '';
 FClientDataSet := nil;
 Parent         := AOwner;
end;

destructor TToshiba.Destroy;
begin
 inherited;
 FTableName := '';
 FClientDataSet := nil;
end;

procedure TToshiba.SetActive(const Value: Boolean);
begin
 FActive := Value;
 if Value then
   (Parent as TtmbDataInspector).Executa;
end;

procedure TToshiba.SetTableName(const Value: String);
begin
 FTableName := UpperCase( Value );
end;

{ TDataInspectorToshiba }
constructor TtmbDataInspector.Create(AOwner: TComponent);
begin
 inherited;
 Ctl3D            := False;
 CaptionIndent    := 16;
 LineStyleData    := ovDottedLine;
 LineStyleCaption := ovDottedLine;
 PaintOptions.AlternatingRowRegions := [arrFixedColumns];
 PaintOptions.BackgroundOptions     := [coFillDataCells,coBlendFixedColumn,
                                         coBlendActiveRecord,coBlendAlternatingRow];
 FToshiba  := TToshiba.Create( Self );
end;

destructor TtmbDataInspector.Destroy;
begin
 inherited;
 FreeAndNil( FToshiba );
 FreeAndNil( FDataSource );
 SetLength( ListaConstraint, 0 );
 SetLength( ListaDicionario, 0 );
 SetLength( ListaTableReference, 0 );
end;

procedure TtmbDataInspector.SetToshiba(const Value: TToshiba);
begin
 if Value <> nil then
    FToshiba := Value;
end;

procedure TtmbDataInspector.Executa;
begin
// if ( csDesigning in ComponentState) then
    if FToshiba.FTableName <> '' then
       begin
        FSqlConstraint := 'SELECT SEARCH_CONDITION ' +
                           ' FROM USER_CONSTRAINTS ' +
                          ' WHERE TABLE_NAME = ' + QuotedStr( UpperCase( FToshiba.FTableName ) );

        FSqlDicionario := 'SELECT NOMECAMPO, NOVONOMECAMPO, ITENS, TITULOITENS ' +
                           ' FROM AS_DICIONARIO ' +
                          ' WHERE NOMETABELA = ' + QuotedStr( FToshiba.FTableName );

        FSqlTableReference := 'SELECT DISTINCT UCCPK.COLUMN_NAME, UCCPK.TABLE_NAME ' +
                               ' FROM ALL_CONS_COLUMNS UCCPK, ' +
                                    ' ALL_CONS_COLUMNS UCCFK, ' +
                                    ' ALL_CONSTRAINTS  UC ' +
                              ' WHERE UCCPK.CONSTRAINT_NAME = UC.R_CONSTRAINT_NAME ' +
                                ' AND UCCFK.CONSTRAINT_NAME = UC.CONSTRAINT_NAME ' +
                                ' AND UCCFK.TABLE_NAME = ' + QuotedStr( UpperCase( FToshiba.FTableName ) );
        PegaListaDicionario;
        PegaListaTableReference;
        PegaListaConstraint;
        LocalizaItem( Items );
       end;
end;

procedure TtmbDataInspector.PegaListaDicionario;
var  i : Integer;
begin
 i := 0;
 with FToshiba.FClientDataSet do
 begin
  CommandText := FSqlDicionario;
  Open;

  if not IsEmpty then
     begin
      First;
      SetLength( ListaDicionario, RecordCount );
      while not Eof do
      begin
       SetLength( ListaDicionario[i], 4 );
       ListaDicionario[i][0] := Fields[0].AsString;
       ListaDicionario[i][1] := Fields[1].AsString;
       ListaDicionario[i][2] := Fields[2].AsString;
       ListaDicionario[i][3] := Fields[3].AsString;
       Inc( i );
       Next;
      end;
     end;
   Close;
 end;
end;

procedure TtmbDataInspector.PegaListaConstraint;
var i : Integer;
begin
 i := 0;
 with FToshiba.FClientDataSet do
 begin
  CommandText := FSqlConstraint;
  Open;
  if not IsEmpty then
     begin
      First;
      SetLength( ListaConstraint, RecordCount );
      while not Eof do
      begin
       ListaConstraint[i] := Fields[0].AsString;
       Inc( i );
       Next;
      end;
     end;
    Close;
  end;
end;

procedure TtmbDataInspector.PegaListaTableReference;
var i : Integer;
begin
 i := 0;
 with FToshiba.FClientDataSet do
 begin
  CommandText := FSqlTableReference;
  Open;
  if not IsEmpty then
     begin
      First;
      SetLength( ListaTableReference, RecordCount );
      while not Eof do
      begin
       SetLength( ListaTableReference[i], 2 );
       ListaTableReference[i][0] := Fields[0].AsString;
       ListaTableReference[i][1] := Fields[1].AsString;
       Inc( i );
       Next;
      end;
     end;

  Close;
 end;
end;

procedure TtmbDataInspector.LocalizaItem( ListaItens : TwwInspectorCollection );
var x : Integer;
begin
 for x := 0 to ListaItens.Count - 1 do
     VerificaTipoCampo( ListaItens[x] );
 RefreshActiveItem;
end;

procedure TtmbDataInspector.VerificaTipoCampo(Item: TwwInspectorItem);
var NomeCpBD, Teste : String;
    i, x : Integer;
begin
 AbilitarCampos( Item.DataSource.DataSet.State, Item );

 RefreshActiveItem;

 Item.Visible := Item.Field.Visible;

 case Item.Field.DataType of
 ftDataSet   : Item.Visible := False;

 ftTimeStamp : CriaData( Item );

 ftMemo,
 ftOraClob   : CriaDoc( Item );

 ftOraBlob   : CriaFigura( Item );

 ftBCD,
 ftInteger,
 ftString    : begin
                if Item.Field.DataType = ftString then
                   begin
                    case Item.Field.DataSize of
                    200..300   : Item.CellHeight := 50;
                    301..10000 :  Item.CellHeight := 150;
                    end;
                    Item.WordWrap   := True;
//                    CriaEditar( Item );
                   end;

                for i := 0 to High(ListaTableReference) do
                    if Item.DataField = ListaTableReference[i][0] then
                        begin
                         CriaLookUp( Item );
                         Break;
                        end;

                for i := 0 to High( ListaConstraint ) do
                begin
                 NomeCpBD := Trim( UpperCase( Copy( ListaConstraint[i], 1, Pos( ' ', Copy( ListaConstraint[i], 2,35 ) ) ) ) );

                 if Item.DataField = NomeCpBD then
                    begin
                     Teste := Copy( ListaConstraint[i],
                                    Pos( '(', UpperCase( ListaConstraint[i] ) ) + 1,
                                    Length( ListaConstraint[i] ) -
                                    Pos( '(', UpperCase( ListaConstraint[i] ) ) - 2 );
                     if Pos( ')', Teste ) > 0 then
                        Delete( Teste, Pos( ')', Teste ), 1 );

                     if Pos( '0', Teste ) > 0 then
                        begin
                         CriaCheck( Item );
                         Break;
                        end
                     else
                        begin
                         for x := 0 to High(ListaDicionario) do
                             if Item.DataField = ListaDicionario[x][0] then
                                begin
                                 CriaRadio( Item, Teste, ListaDicionario[x][3] );
                                 Break;
                                end;
                        end;
                    end;
                end;
               end;
 end;
end;

procedure TtmbDataInspector.CriaLookUp(Item: TwwInspectorItem);
begin
 Item.PickList.ButtonStyle := cbsEllipsis;
 Item.OnEditButtonClick    := ClickBotaoItem;
end;

procedure TtmbDataInspector.ClickBotaoItem(Sender: TwwDataInspector;
  Item: TwwInspectorItem);
var i : Integer;
begin
  for i := 0 to High( ListaTableReference ) do
  begin
    if Item.DataField = ListaTableReference[i][0] then
       begin
         if Assigned(FOnButtonClick) then
            FOnButtonClick((Sender as TtmbDataInspector), Item, Copy( ListaTableReference[i][1], 4, LengTh( ListaTableReference[i][1] ) ) );
         Break;
       end;
  end;
end;

procedure TtmbDataInspector.CriaData(Item: TwwInspectorItem);
var CompData : TwwDBDateTimePicker;
begin
 CompData := TwwDBDateTimePicker.Create( Parent );
 CompData.Parent    := Parent;

 Item.CustomControl := CompData;
end;

procedure TtmbDataInspector.CriaFigura(Item: TwwInspectorItem);
var CompFigura : TfcDBImager;
begin
 CompFigura         := TfcDBImager.Create( Parent );
 CompFigura.Parent  := Parent;
 Item.CustomControl := CompFigura;
 Item.CellHeight    := 300;
 Item.WordWrap      := True;
end;

procedure TtmbDataInspector.CriaDoc(Item: TwwInspectorItem);
var CompDoc : TwwDBRichEdit;
begin
 case Item.Field.Tag of
 1 : begin
      CompDoc               := TwwDBRichEdit.Create( Parent );
      CompDoc.Parent        := Parent;
      CompDoc.EditorOptions := [reoShowLoad, reoShowSaveAs, reoShowSaveExit, reoShowPrint, reoShowPageSetup, reoShowFormatBar, reoShowToolBar, reoShowStatusBar, reoShowHints, reoShowRuler, reoShowInsertObject, reoCloseOnEscape, reoFlatButtons, reoShowSpellCheck, reoShowMainMenuIcons, reoShowJustifyButton];
      Item.CustomControl    := CompDoc;
      Item.CellHeight       := 300;
      Item.WordWrap         := True;
     end;
 else ;
     begin
      Item.CellHeight       := 300;
      Item.WordWrap         := True;
     end;
 end;
end;

procedure TtmbDataInspector.CriaCheck(Item: TwwInspectorItem);
var CompCheck : TwwCheckBox;
begin
 CompCheck := TwwCheckBox.Create( Parent );
 with CompCheck do
 begin
  Parent                := Self.Parent;
  DisplayValueChecked   := 'Sim';
  DisplayValueUnchecked := 'Não';
  ValueChecked          := '1';
  ValueUnchecked        := '0';
 end;
 Item.CustomControl := CompCheck;
end;

procedure TtmbDataInspector.CriaRadio(Item: TwwInspectorItem;
  Valor, Titulo: String);
var CompRadio : TwwRadioGroup;
begin
 CompRadio := TwwRadioGroup.Create( Parent );
 with CompRadio do
 begin
  Parent := Self.Parent;
  CreateParented( Self.Parent.Handle );

  Columns := QtdColunas( Valor );
  Columns := QtdColunas( Titulo );

  Titulo := SubstituiString( Titulo, '_', ' ' );

  Item.CellHeight := 20;
  if Columns > 3 then
     begin
      Item.CellHeight := 8 * Columns;
      Columns := 3;
     end;

  if Trim( Titulo ) <> '' then
     Items.Text := Titulo
  else
     Items.Text := Valor;
  Values.Text := Valor;
 end;

 Item.CustomControl := CompRadio;
end;


function TtmbDataInspector.QtdColunas(var Valor: String ): Integer;
var Testa : Boolean;
    Texto : String;
begin
 Result := 0;
 Testa  := True;
 Texto  := '';

 RemoveString( Valor, '''');
 RemoveString( Valor, ' ');

 while Testa do
 begin
   if Pos( ',', Valor ) > 0 then
   begin
     Inc( Result );
     Texto := Texto + Copy( Valor, 1, Pos( ',', Valor ) - 1 ) + #13;
     Delete( Valor, 1, Pos( ',', Valor ) );
   end
   else
   begin
     Inc( Result );
     Texto := Texto + Copy( Valor, 1, Length( Valor ) );
     Testa := False;
   end;
 end;
 Valor := Texto;
end;

procedure TtmbDataInspector.AbilitarCampos( State : TDataSetState ; Item: TwwInspectorItem );
begin
 { Desabilitar os itens que são Lookup de outras tabelas }
 if ( Item.Field.ProviderFlags = [] ) then
    Item.Enabled := False;

 { Desabilitar as chaves primárias para alteração }
 case State of
 dsEdit   : begin
             if pfInKey in Item.Field.ProviderFlags then
                if Item.Field.Tag <> 3 then
                   Item.Enabled := False;
            end;

 dsInsert : begin
             if pfInKey in Item.Field.ProviderFlags then
                Item.Enabled := True;
            end;
 end;

 // Field Propriedade TAG = 1 desabilitar a edição do campo e sobrepor
 // caso seja campo chave e não for necessário editar
 if Item.Field.Tag = 1 then
    Item.Enabled := False;
end;

end.

