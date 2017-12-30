unit u_DivisaoDuplicata;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DB, DBClient, StdCtrls, Buttons, Mask,
  DBCtrls, DBTables;

type
  TfrmDivisaoDuplicata = class(TForm)
    Panel1: TPanel;
    cdsDuplic: TClientDataSet;
    cdsDuplicNumParc: TAutoIncField;
    cdsDuplicDtVencto: TDateField;
    cdsDuplicVlrParc: TFloatField;
    dsDuplic: TDataSource;
    DBGrid5: TDBGrid;
    BitBtn1: TBitBtn;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDivisaoDuplicata: TfrmDivisaoDuplicata;

implementation

uses u_dmPP, u_dmGSI, FuncoesCliente, FuncoesDSI;


{$R *.dfm}

procedure TfrmDivisaoDuplicata.BitBtn1Click(Sender: TObject);
begin
 case cdsDuplic.State of
 dsInsert : begin
             if cdsDuplicVlrParc.IsNull then
                cdsDuplic.Cancel
             else
                cdsDuplic.Post;
            end;
 dsEdit   : cdsDuplic.Post;
 end;

 dmPP.shdcnnPP.AppServer.IReparcelarDuplicata( cdsDuplic.Data,
                                               dmPP.cdsNfsParcelaEMPRESAID.AsString,
                                               dmPP.cdsNfsParcelaNFSID.AsString,
                                               dmPP.cdsNfsParcelaDATAEMISSAOID.AsString,
                                               dmPP.cdsNfsParcelaPARCELAID.AsString,
                                               dmPP.cdsNfsParcelaVLRPARCELA.AsCurrency,
                                               dmPP.cdsNfsParcelaL_VLRVENDA.AsCurrency,
                                               dmPP.cdsNfsParcelaL_VLRCOMISSAO.AsCurrency,
                                               dmGsi.UsuarioAtivo );
 dmPP.cdsNfsParcela.Refresh;

 Close;
end;

procedure TfrmDivisaoDuplicata.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 cdsDuplic.Close;
 Action := caFree;
 frmDivisaoDuplicata := Nil;
end;

end.
