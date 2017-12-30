unit u_Recibo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ActnList, ImgList, XPStyleActnCtrls, ActnMan,
  ToolWin, ComCtrls, ActnCtrls, ActnMenus, tmbToolEdicaoBottom, ExtCtrls,
  wwdbedit, Wwdotdot, Mask;

type
  TfrmRecibo = class(TForm)
    CoolBar1: TCoolBar;
    actmngRecibo: TActionManager;
    ImageList1: TImageList;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    ActionMainMenuBar1: TActionMainMenuBar;
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    tmbEdicaoBottom1: TtmbEdicaoBottom;
    Panel2: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    wwDBComboDlg1: TwwDBComboDlg;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet3: TTabSheet;
    GroupBox3: TGroupBox;
    wwDBComboDlg2: TwwDBComboDlg;
    DBEdit7: TDBEdit;
    GroupBox2: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBMemo3: TDBMemo;
    wwDBComboDlg4: TwwDBComboDlg;
    Label7: TLabel;
    GroupBox4: TGroupBox;
    Label23: TLabel;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    Label24: TLabel;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    DBEdit13: TDBEdit;
    Label11: TLabel;
    Label16: TLabel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    Label17: TLabel;
    Label21: TLabel;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    Label22: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Action1Execute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Action2Execute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRecibo: TfrmRecibo;

implementation

uses u_dmRS,FuncoesCliente, u_RelRPS, u_RelBaseINSS, u_ParRPS;

{$R *.dfm}


procedure TfrmRecibo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if not FinalFormulario( dmRS.cdsRecibo,'do Recibo') then
    Action := caNone
 else
    begin
     Action    := cafree;
     frmRecibo := nil;
    end;
end;

procedure TfrmRecibo.Action1Execute(Sender: TObject);
begin
 close;
end;

procedure TfrmRecibo.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
    SelectNext( screen.ActiveControl,True, True );
end;

procedure TfrmRecibo.Action2Execute(Sender: TObject);
begin
 frmRelRPS := TfrmRelRPS.Create(nil);
 try
  frmRelRPS.QuickRep1.Preview;
 finally
  FreeAndNil( frmRelRPS.QuickRep1 );
  FreeAndNil( frmRelRPS );
 end;
end;

procedure TfrmRecibo.Action3Execute(Sender: TObject);
begin
 frmParRPS := TfrmParRPS.Create(nil);
 try
  frmParRPS.ShowModal;
 finally
  FreeAndNil( frmParRPS);
 end;
end; 
end.
