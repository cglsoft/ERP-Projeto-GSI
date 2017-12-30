unit u_AdicionarPesquisa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ImgList, ActnList, XPStyleActnCtrls,
  ActnMan, ActnCtrls, ToolWin, ComCtrls, DBClient, ExtCtrls, PnAjustaGrid;

type
  TfrmAdicionarPesquisa = class(TForm)
    StatusBar1: TStatusBar;
    CoolBar1: TCoolBar;
    ActionToolBar1: TActionToolBar;
    actmngAddFiltro: TActionManager;
    actPesquisar: TAction;
    actLimpar: TAction;
    actFechar: TAction;
    imglst: TImageList;
    dsAddFiltro: TDataSource;
    dbgrdParamPesq: TDBGrid;
    tmbajtgrdAddFiltro: tPanel1;
    actApagarTudo: TAction;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actFecharExecute(Sender: TObject);
    procedure actLimparExecute(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure actApagarTudoExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dbgrdParamPesqDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    procedure AddCondicoesGRID;
  public
    { Public declarations }
    FcdsAdicionarPesquisa : TClientDataSet;
    FCondicoes : array of String;
  end;

var
  frmAdicionarPesquisa: TfrmAdicionarPesquisa;

implementation

uses FuncoesCliente, StrUtils;

{$R *.dfm}

procedure TfrmAdicionarPesquisa.AddCondicoesGRID;
var i : Integer;
begin
 dbgrdParamPesq.Columns[1].PickList.Clear;
 dbgrdParamPesq.Columns[3].PickList.Clear;
 dbgrdParamPesq.Columns[5].PickList.Clear;
 dbgrdParamPesq.Columns[6].PickList.Clear;

 for i := 0 to High( CondicoesPesqSQL ) do
  dbgrdParamPesq.Columns[3].PickList.Add( CondicoesPesqSQL[i] );

 // Identificador
 dbgrdParamPesq.Columns[0].Font.Color := clRed;
 dbgrdParamPesq.Columns[0].Font.Style := [fsBold];

 dbgrdParamPesq.Columns[3].Font.Color := clBlue;
 dbgrdParamPesq.Columns[3].Font.Style := [fsBold];

 // Separador
 dbgrdParamPesq.Columns[1].PickList.Add('(' );
 dbgrdParamPesq.Columns[6].PickList.Add(')');

 // Relacional
 dbgrdParamPesq.Columns[5].PickList.Add('E');
 dbgrdParamPesq.Columns[5].PickList.Add('OU');
 dbgrdParamPesq.Columns[5].PickList.Add('');
 dbgrdParamPesq.Columns[5].Font.Color := clBlue;
 dbgrdParamPesq.Columns[5].Font.Style := [fsBold];

end;

procedure TfrmAdicionarPesquisa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 frmAdicionarPesquisa := Nil;
end;

procedure TfrmAdicionarPesquisa.actFecharExecute(Sender: TObject);
begin
 Close
end;

procedure TfrmAdicionarPesquisa.actLimparExecute(Sender: TObject);
begin
 TClientDataSet( dsAddFiltro.DataSet ).Delete;
end;

procedure TfrmAdicionarPesquisa.actPesquisarExecute(Sender: TObject);
var ParamPesquisa, ResolveSQL : String;
    PrimeiroParametro : Boolean;

 function ResolveRelacional( Value : String ) : String;
 begin
  Result := '';

  if PrimeiroParametro then
     begin
      PrimeiroParametro := False;
      exit;
     end;

  if      Trim( Value ) = 'E' then
          Result := 'AND'
  else if Trim( Value ) = 'OU' then
          Result := 'OR';
 end;

begin
 PrimeiroParametro := True;
 if dsAddFiltro.DataSet.State = dsEdit then
    dsAddFiltro.DataSet.Post;

 dsAddFiltro.DataSet.DisableControls;
 try
  dsAddFiltro.DataSet.First;
  while not dsAddFiltro.DataSet.Eof  do
  begin
   if Trim( dsAddFiltro.DataSet.FieldByName('Conteudo').Value ) = '' then
      begin
       dsAddFiltro.DataSet.Next;
       Continue;
      end;

   ResolveSQL := AnalisarParamPesq( dsAddFiltro.DataSet.FieldByName('InstrucaoSQL').AsString,
                                    dsAddFiltro.DataSet.FieldByName('Condicao').AsString,
                                    dsAddFiltro.DataSet.FieldByName('Conteudo').AsString );

   if ResolveSQL = '' then
      ParamPesquisa := ''
   else
      ParamPesquisa :=  ParamPesquisa +
                        ResolveRelacional( dsAddFiltro.DataSet.FieldByName('Relacional').AsString ) + ' ' +
                        dsAddFiltro.DataSet.FieldByName('S1').AsString + ' ' +
                        ResolveSQL +
                        dsAddFiltro.DataSet.FieldByName('S2').AsString;

   dsAddFiltro.DataSet.Next;
  end;
  GerarPesquisa( FcdsAdicionarPesquisa ,ParamPesquisa );

 finally
  dsAddFiltro.DataSet.EnableControls;
 end;
end;

procedure TfrmAdicionarPesquisa.actApagarTudoExecute(Sender: TObject);
begin
 TClientDataSet( dsAddFiltro.DataSet ).EmptyDataSet;
end;

procedure TfrmAdicionarPesquisa.FormShow(Sender: TObject);
begin
 tmbajtgrdAddFiltro.tmbAjusta := True;
end;

procedure TfrmAdicionarPesquisa.FormActivate(Sender: TObject);
begin
 AddCondicoesGRID;
end;

procedure TfrmAdicionarPesquisa.dbgrdParamPesqDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var HoldColor : TColor;
begin
 holdColor := dbgrdParamPesq.Canvas.Brush.Color;
 if ( Column.FieldName = 'S1' ) or ( Column.FieldName = 'S2' ) then
    if ( Column.Field.AsString = '(' ) or ( Column.Field.AsString = ')' ) then
       begin
        TDBGrid( Sender ).Canvas.Brush.Color := clRed;
        TDBGrid( Sender ).DefaultDrawColumnCell(Rect, DataCol, Column, State);
        TDBGrid( Sender ).Canvas.Brush.Color := HoldColor;
       end;
end;

procedure TfrmAdicionarPesquisa.FormDestroy(Sender: TObject);
begin
 frmAdicionarPesquisa := Nil;
end;

end.
