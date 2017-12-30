unit u_RecalculaListaPreco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, Mask, ExtCtrls, DBCtrls, DB;

type
  TfrmRecalculaListaPreco = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    PartNumber : String;
  end;

var
  frmRecalculaListaPreco: TfrmRecalculaListaPreco;

implementation

uses u_dmIT, FuncoesCliente, FuncoesDsi, u_dmGSI;

{$R *.dfm}

procedure TfrmRecalculaListaPreco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
end;

procedure TfrmRecalculaListaPreco.FormDestroy(Sender: TObject);
begin
 frmRecalculaListaPreco := nil;
end;

procedure TfrmRecalculaListaPreco.BitBtn1Click(Sender: TObject);
var dsState : TDataSetState;
begin
 dsState := dmIT.cdsListaPreco.State;

 try
  Screen.Cursor := crHourGlass;

  if dmIT.cdsListaPreco.State in [dsInsert, dsEdit] then
     dmIT.cdsListaPreco.Post;

  dmIT.shdcnnIT.AppServer.IRecalculaListaPreco( PartNumber );
  dmIT.cdsListaPreco.Close;
  dmIT.cdsListaPreco.Open;

  if dsState in [dsEdit,dsInsert] then
     dmIT.cdsListaPreco.Edit;

  Screen.Cursor := crDefault;
  MessageDlg( 'Recalculo efetuado com sucesso !', mtInformation, [mbOK], 0 );
  Close;

 except
  on E: Exception do
  begin
   Screen.Cursor := crDefault;
   MessageDlg( E.Message, mtInformation, [mbOK], 0 );
  end;
 end;
end;

procedure TfrmRecalculaListaPreco.FormCreate(Sender: TObject);
begin
 PartNumber := '';
 dmIT.cdsCorListaPreco.Open;
 dmIT.cdsCorListaPreco.Last;

 if dmIT.cdsCorListaPreco.RecordCount > 1 then
    begin
     MessageDlg( 'Já foi efetuado Recalculo mais recente', mtWarning, [mbOK], 0 );
     Exit;
    end;

end;

end.
