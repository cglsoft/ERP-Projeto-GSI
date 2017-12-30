unit u_ParDataMovimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fcLabel, ComCtrls, StdCtrls, Buttons;

type
  TfrmParDataMovimento = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    DateTimePicker1: TDateTimePicker;
    fcLabel1: TfcLabel;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmParDataMovimento: TfrmParDataMovimento;

implementation

uses u_ParImpRdv;

{$R *.dfm}

procedure TfrmParDataMovimento.FormCreate(Sender: TObject);
begin
 DateTimePicker1.DateTime := Now;
end;

procedure TfrmParDataMovimento.BitBtn1Click(Sender: TObject);
begin
 frmParImpRDV.DataMovimento := frmParDataMovimento.DateTimePicker1.Date;
 frmParDataMovimento.Close;
end;

procedure TfrmParDataMovimento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 frmParDataMovimento := nil;
end;

end.
