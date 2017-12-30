unit u_Sobre;

interface

uses
  Windows, SysUtils, Forms, StdCtrls, Buttons, Controls, jpeg, Classes,
  ExtCtrls;

type
  TfrmSobre = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Memo1: TMemo;
    Label3: TLabel;
    btnFechar: TBitBtn;
    Label6: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSobre: TfrmSobre;

implementation

uses FuncoesDSI;

{$R *.DFM}

procedure TfrmSobre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := caFree;
end;

procedure TfrmSobre.btnFecharClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmSobre.FormCreate(Sender: TObject);
var slVersionInfo : TStringList;
begin
 slVersionInfo := TStringList.Create;
 try
  GetProjectVersionInfo(slVersionInfo, Application.ExeName);
  Memo1.Lines.Add( slVersionInfo.Text );
 finally
  FreeAndNil( slVersionInfo );
 end;
end;

end.
