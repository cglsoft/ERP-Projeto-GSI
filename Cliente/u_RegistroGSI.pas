unit u_RegistroGSI;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, fcStatusBar, ActnList, ActnMan, ActnCtrls,
  XPStyleActnCtrls, ToolWin, ComCtrls, DBClient, ImgList;

type
  TfrmRegistroGSI = class(TForm)
    cdsRegistro: TClientDataSet;
    dsRegistro: TDataSource;
    CoolBar1: TCoolBar;
    actmngRegistro: TActionManager;
    ActionToolBar1: TActionToolBar;
    actNovoRegistro: TAction;
    actRecarregar: TAction;
    actGravarRegistro: TAction;
    actExcluirChave: TAction;
    actFechar: TAction;
    fcstbarStatus: TfcStatusBar;
    dbgrdReg: TDBGrid;
    cdsRegistroCHAVE: TStringField;
    cdsRegistroVALOR: TStringField;
    imglstMenu: TImageList;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actNovoRegistroExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure actRecarregarExecute(Sender: TObject);
    procedure actGravarRegistroExecute(Sender: TObject);
    procedure actExcluirChaveExecute(Sender: TObject);
  private
    procedure RecarregarRegistro;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRegistroGSI: TfrmRegistroGSI;

implementation

uses FuncoesDsi;

{$R *.dfm}

procedure TfrmRegistroGSI.RecarregarRegistro;
var slReg : TStrings;
    i : Byte;
begin
 slReg := TStringList.Create;
 try
  SaveStringToRegistry( Registro_Principal, 'Data Criação',
                        FormatDateTime( 'mm/dd/yyyy hh:nn:ss', Now ) );
  cdsRegistro.Close;
  cdsRegistro.CreateDataSet;

  LoadALLKeyFromRegistry( Registro_Principal, slReg );

  for i := 0 to slReg.Count - 1 do
  begin
   cdsRegistro.Insert;
   cdsRegistroCHAVE.Value := slReg[i];
   cdsRegistroVALOR.Value := LoadStringFromRegistry( Registro_Principal, slReg[i], '' );
   cdsRegistro.Post;
  end;
 finally
  FreeAndNil( slReg );
 end;
end;

procedure TfrmRegistroGSI.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 frmRegistroGSI := Nil;
end;

procedure TfrmRegistroGSI.actNovoRegistroExecute(Sender: TObject);
begin
 RecarregarRegistro;
end;

procedure TfrmRegistroGSI.FormShow(Sender: TObject);
begin
 RecarregarRegistro;
end;

procedure TfrmRegistroGSI.actFecharExecute(Sender: TObject);
begin
 Close;
end;

procedure TfrmRegistroGSI.actRecarregarExecute(Sender: TObject);
begin
 RecarregarRegistro;
end;

procedure TfrmRegistroGSI.actGravarRegistroExecute(Sender: TObject);
begin
 cdsRegistro.First;
 while not cdsRegistro.Eof do
 begin
  SaveStringToRegistry( Registro_Principal, cdsRegistroCHAVE.Value, cdsRegistroVALOR.Value );
  cdsRegistro.Next;
 end;
end;

procedure TfrmRegistroGSI.actExcluirChaveExecute(Sender: TObject);
var i : Byte;
 procedure DeletarItem;
 begin
  DeleteStringToRegistry( Registro_Principal, cdsRegistroCHAVE.Value );
  cdsRegistro.Delete;
 end;

begin
 if dbgrdReg.SelectedRows.Count > 0 then
    for i := 0 to dbgrdReg.SelectedRows.Count - 1 do
    begin
     dbgrdReg.DataSource.DataSet.GotoBookmark( Pointer( dbgrdReg.SelectedRows.Items[i] ) );
     DeletarItem;
    end
 else
    DeletarItem;
end;

end.
