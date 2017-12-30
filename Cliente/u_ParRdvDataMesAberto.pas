unit u_ParRdvDataMesAberto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fcLabel, StdCtrls, Buttons, ComCtrls;

type
  TfrmParRdvDataMesAberto = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    DateTimePicker1: TDateTimePicker;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmParRdvDataMesAberto: TfrmParRdvDataMesAberto;

implementation

uses u_dmRD, u_RDV,FuncoesCliente;

{$R *.dfm}

procedure TfrmParRdvDataMesAberto.BitBtn1Click(Sender: TObject);
var iSQL : String;
begin
 iSQL := 'UPDATE RD_RDV'+
         '   SET RD_RDV.DATAMESABERTO = ' + QuotedStr( DateToStr( DateTimePicker1.Date ) );
 try
  Screen.Cursor := crHourGlass;
  ExecDML( iSQL );
  dmRD.cdsRdv.Refresh;
  MessageDlg('Data do Mês em Aberto Atualizada com Sucesso!',mtInformation,[mbok],0);

  //Transferir todos os Espelhos
  frmRdv.TransfereTodosEspelhos;
 except on
  E : Exception do
  raise Exception.Create(E.Message);
 end;
 Screen.Cursor := crDefault;

 frmParRdvDataMesAberto.Close;
end;

procedure TfrmParRdvDataMesAberto.BitBtn2Click(Sender: TObject);
begin
 frmParRdvDataMesAberto.Close;
end;

procedure TfrmParRdvDataMesAberto.FormCreate(Sender: TObject);
begin
 DateTimePicker1.Date := pCnnMain.AppServer.iServerDate;
end;

procedure TfrmParRdvDataMesAberto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := cafree;
 frmParRdvDataMesAberto := nil;
end;
end.
