unit u_DevolucaoNFEParcial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, DBClient;

type
  TfrmDevolucaoNFEParcial = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    mktBoas: TMaskEdit;
    btnFechar: TBitBtn;
    btnDevolver: TBitBtn;
    DBEdit8: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure btnDevolverClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDevolucaoNFEParcial: TfrmDevolucaoNFEParcial;

implementation

uses u_dmGSI, FuncoesCliente, FuncoesDSI, u_dmEF, u_DevolucaoNFE;

{$R *.dfm}


procedure TfrmDevolucaoNFEParcial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 frmDevolucaoNFEParcial := Nil;
end;

procedure TfrmDevolucaoNFEParcial.btnFecharClick(Sender: TObject);
begin
 Close
end;

procedure TfrmDevolucaoNFEParcial.btnDevolverClick(Sender: TObject);
var QtdInformada : Currency;
begin
 QtdInformada := StrToInt( mktBoas.Text );

 if frmDevolucaoNFE.DevolucaoNFEItem( QtdInformada ) then
    MessageDlg('Item da Nota fiscal ' + IntToStr( frmDevolucaoNFE.cdsDevolucaoNFE.FieldByName('NFEID').Value ) + ' , devolvida com sucesso. ', mtInformation, [mbOk], 0);

 Close;
end;

end.
