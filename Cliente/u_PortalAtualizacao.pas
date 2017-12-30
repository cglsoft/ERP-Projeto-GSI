unit u_PortalAtualizacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FMTBcd, DB, SqlExpr;

type
  TfrmPortalAtualizacao = class(TForm)
    btnAcumuladoPortal: TButton;
    btnCancelarAcumulado: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure btnAcumuladoPortalClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
    procedure btnCancelarAcumuladoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPortalAtualizacao: TfrmPortalAtualizacao;

implementation

uses FuncoesCliente, u_dmGSI;

{$R *.dfm}

procedure TfrmPortalAtualizacao.btnAcumuladoPortalClick(Sender: TObject);
begin
 if MessageDlg('Confirma a execução desta rotina?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
     ExecProcedure( 'pkg_bi', 'PC_FINANCEIRO', 'GSI' );
     ExecProcedure( 'pkg_bi', 'PC_ACUMULADO', 'GSI' );
    end;
end;

procedure TfrmPortalAtualizacao.btnCancelarAcumuladoClick(Sender: TObject);
begin
 if MessageDlg('Confirma a execução desta rotina?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
     ExecProcedure( 'pkg_bi', 'PC_FINANCEIRO', 'GSI' );
     ExecProcedure( 'pkg_bi', 'PC_LIMPA_ACUMULADOANTERIOR', 'GSI' );
    end;

end;

procedure TfrmPortalAtualizacao.Button1Click(Sender: TObject);
begin
 ExecProcedure( 'pkg_bi', 'PC_FINANCEIRO', 'GSI' );
end;

procedure TfrmPortalAtualizacao.Button2Click(Sender: TObject);
begin
 ExecDML( 'EXECUTE PKG_DISCOVERER.PC_EXECUTAR;' );
end;

procedure TfrmPortalAtualizacao.Button3Click(Sender: TObject);
begin
 ExecProcedure( 'pkg_bi_vendas', 'pc_executar', 'GSI' );
end;

procedure TfrmPortalAtualizacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 frmPortalAtualizacao := nil;
end;

end.
