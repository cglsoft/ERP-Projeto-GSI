unit u_parDI;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Buttons,DB;

type
  TfrmParDI = class(TForm)
    DBMemo1: TDBMemo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmParDI: TfrmParDI;

implementation

uses u_dmIT, u_RelPedidoDI;

{$R *.dfm}

procedure TfrmParDI.BitBtn1Click(Sender: TObject);
begin
 if dmIT.cdsDeclaracao.State in [dsEdit, dsInsert] then
    dmIT.cdsDeclaracao.Post;

 try
  frmRelPedidoDI := TfrmRelPedidoDI.Create(nil);
  frmRelPedidoDI.QuickRep1.Preview;
 finally
  FreeAndNil( frmRelPedidoDI.QuickRep1 );
  FreeAndNil( frmRelPedidoDI );
 end;
end;

procedure TfrmParDI.FormCreate(Sender: TObject);
begin
 dmIT.cdsDeclaracao.Edit;

end;

procedure TfrmParDI.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action   := cafree;
 frmParDI := nil;
end;

procedure TfrmParDI.BitBtn2Click(Sender: TObject);
begin
 Close;
end;

end.
