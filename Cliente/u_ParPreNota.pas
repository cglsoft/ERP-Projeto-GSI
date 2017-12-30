unit u_ParPreNota;

interface

uses
  Windows, Forms, StdCtrls, Buttons, Controls, ExtCtrls, Classes, SysUtils,
  DBCtrls;

type
  TfrmParPreNota = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn5: TBitBtn;
    DBMemo1: TDBMemo;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmParPreNota: TfrmParPreNota;

implementation

uses u_RelPreNota, u_dmEF, FuncoesDSI, FuncoesCliente;

{$R *.dfm}

procedure TfrmParPreNota.BitBtn1Click(Sender: TObject);
begin
 Screen.Cursor := crHourGlass;
 try
  dmEF.cdsPds.Post;

  GerarPesquisa( dmEF.cdsPds,'EF_PDS.PDSID = ' + dmEF.cdsPdsPDSID.AsString );

  dmEF.cdsPds.Edit;

  if not (dmEF.cdsPdsEMPRESAID.AsInteger in [12,13,15,17])   then
     begin
      // 1ª Via Expedição
      frmRelPreNota := TfrmRelPreNota.Create( Application );
      frmRelPreNota.Via := '1º VIA - Almoxarifado';
      Screen.Cursor := crDefault;
      try
       frmRelPreNota.QuickRep1.PrinterSettings.PrinterIndex := Impressora( 'MULT_ALM_01' );
       frmRelPreNota.QuickRep1.PrinterSettings.Copies := 1;
       frmRelPreNota.QuickRep1.Print;
      finally
       FreeAndNil( frmRelPreNota.QuickRep1 );
       FreeAndNil( frmRelPreNota );
      end;

      frmRelPreNota := TfrmRelPreNota.Create( Application );
      frmRelPreNota.Via := 'Via Expedição';
      Screen.Cursor := crDefault;
      try
       frmRelPreNota.QuickRep1.PrinterSettings.PrinterIndex := Impressora( 'MULT_ALM_01' );
       frmRelPreNota.QuickRep1.Print;
      finally
       FreeAndNil( frmRelPreNota.QuickRep1 );
       FreeAndNil( frmRelPreNota );
      end;
     end;

  if ( dmEF.cdsPdsEMPRESAID.AsInteger in [12,13,15,17])  then
     begin
      try
       frmRelPreNota := TfrmRelPreNota.Create( nil );
       frmRelPreNota.Via := 'Via Marketing';
       Screen.Cursor := crDefault;
       frmRelPreNota.QuickRep1.Preview;
      finally
        FreeAndNil( frmRelPreNota.QuickRep1 );
        FreeAndNil( frmRelPreNota );
      end;
     end;
 except on
   E : Exception do
   raise Exception.Create(E.Message);
 end;
 frmParPreNota.Close;
end;

procedure TfrmParPreNota.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin                                                
 Action        := cafree;
 frmParPreNota := nil;
end;

procedure TfrmParPreNota.BitBtn5Click(Sender: TObject);
begin
 frmParPreNota.Close;
end;

end.
