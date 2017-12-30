unit u_LocalizacaoProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons;

type
  TfrmLocalizacaoProduto = class(TForm)
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit10: TDBEdit;
    Label10: TLabel;
    DBEdit11: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    pnSaldoProduto: TPanel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLocalizacaoProduto: TfrmLocalizacaoProduto;

implementation

uses u_dmEF, u_SaldoProduto;

{$R *.dfm}

procedure TfrmLocalizacaoProduto.BitBtn1Click(Sender: TObject);
begin
 dmEF.cdsProduto.Post;
 Close;
end;

procedure TfrmLocalizacaoProduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 frmLocalizacaoProduto := Nil;
end;

procedure TfrmLocalizacaoProduto.BitBtn2Click(Sender: TObject);
begin
 dmEF.cdsProduto.Cancel;
 Close;
end;

procedure TfrmLocalizacaoProduto.FormCreate(Sender: TObject);
begin
 frmSaldoProduto := TfrmSaldoProduto.Create( Self );
 frmSaldoProduto.Parent := pnSaldoProduto;
 frmSaldoProduto.Show;
end;

end.
