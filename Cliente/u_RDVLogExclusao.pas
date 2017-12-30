unit u_RDVLogExclusao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ActnList, XPStyleActnCtrls, ActnMan, ExtCtrls, DBCtrls,
  wwdbedit, Wwdotdot, StdCtrls, Mask, wwdbdatetimepicker, tmbToolEdicaoTop,
  ActnCtrls, ToolWin, ComCtrls; 

type
  TfrmRDVLogExclusao = class(TForm)
    StatusBar1: TStatusBar;
    Panel3: TPanel;
    CoolBar2: TCoolBar;
    ActionToolBar3: TActionToolBar;
    ActionToolBar4: TActionToolBar;
    CoolBar1: TCoolBar;
    tmbEdicaoTop2: TtmbEdicaoTop;
    tmbEdicaoTop1: TtmbEdicaoTop;
    ActionToolBar2: TActionToolBar;
    Panel2: TPanel;
    Label3: TLabel;
    Label12: TLabel;
    wwDBDateTimePicker3: TwwDBDateTimePicker;
    DBEdit9: TDBEdit;
    actmngDespesa: TActionManager;
    actFechar: TAction;
    ImageList1: TImageList;
    Label16: TLabel;
    wwDBComboDlg5: TwwDBComboDlg;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    wwDBComboDlg1: TwwDBComboDlg;
    DBEdit1: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    Label15: TLabel;
    DBEdit11: TDBEdit;
    Label1: TLabel;
    wwDBComboDlg2: TwwDBComboDlg;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBComboDlg2CustomDlg(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRDVLogExclusao: TfrmRDVLogExclusao;

implementation

uses u_dmRD, FuncoesCliente, FuncoesDSI;

{$R *.dfm}

procedure TfrmRDVLogExclusao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 try
  Action := caFree;
  dmRD.cdsRdvLog2.Post;
  frmRDVLogExclusao := Nil;
 except
  Action := caNone;
 end;
end;

procedure TfrmRDVLogExclusao.wwDBComboDlg2CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa( dmRD.dsLogRdv,'LOGRDVID',dmRD.cdsRdvLog2LOGRDVID.AsString);
 ExecLoockupRetorno( dmRD.cdsRdvLog2,'LOGRDVID','LOGRDVID');
end;

procedure TfrmRDVLogExclusao.actFecharExecute(Sender: TObject);
begin
 Close
end;

procedure TfrmRDVLogExclusao.FormKeyPress(Sender: TObject; var Key: Char);
begin
 // Habilitar a propriedade KeyPreview do Form para funcionar o Enter como Tab
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;

end.
