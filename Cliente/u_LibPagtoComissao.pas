unit u_LibPagtoComissao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls;

type
  TfrmLibPagtoComissao = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    dtpcktDtPagto: TDateTimePicker;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    btnCancelarPagto: TBitBtn;
    BitBtn1: TBitBtn;
    GroupBox2: TGroupBox;
    mmObsCancelamento: TMemo;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure btnCancelarPagtoClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLibPagtoComissao: TfrmLibPagtoComissao;

implementation

uses u_dmPP, u_dmGSI;

{$R *.dfm}

procedure TfrmLibPagtoComissao.BitBtn2Click(Sender: TObject);
begin
 Close;
end;

procedure TfrmLibPagtoComissao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 frmLibPagtoComissao := Nil;
end;

procedure TfrmLibPagtoComissao.FormCreate(Sender: TObject);
begin
 mmObsCancelamento.Lines.Clear;
 mmObsCancelamento.Lines.Add( dmPP.cdsNfsParcelaOBSCANCELAMENTO.AsString );
 dtpcktDtPagto.Date := Date;
end;

procedure TfrmLibPagtoComissao.BitBtn3Click(Sender: TObject);
begin
 dmPP.shdcnnPP.AppServer.IBaixaDuplicata( dmPP.cdsNfsParcelaL_PEDVENDID.AsString,
                                          DateToStr( dtpcktDtPagto.Date ),
                                          dmPP.cdsNfsParcelaPARCELAID.AsString,
                                          dmPP.cdsNfsParcelaVLRBASECOMISSAO.AsString,
                                          dmPP.cdsNfsParcelaPAGTOVENDEDOR.AsInteger,
                                          dmGSI.UsuarioAtivo );
 dmPP.cdsNfsParcela.Refresh;
 Close;
end;

procedure TfrmLibPagtoComissao.btnCancelarPagtoClick(Sender: TObject);
begin
 dmPP.shdcnnPP.AppServer.ICancelarBaixaDuplicata( dmPP.cdsNfsParcelaL_PEDVENDID.AsString,
                                                  dmPP.cdsNfsParcelaPARCELAID.AsString,
                                                  dmPP.cdsNfsParcelaPAGTOVENDEDOR.AsInteger );
 dmPP.cdsNfsParcela.Refresh;

end;

procedure TfrmLibPagtoComissao.BitBtn1Click(Sender: TObject);
begin
 if MessageDlg( 'Confirma o Cancelamento da parcela e os pagamentos das comissões já efetuadas?',
     mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
     dmPP.shdcnnPP.AppServer.ICancelarParcelaDuplicata( dmPP.cdsNfsParcelaL_PEDVENDID.AsString,
                                                        dmPP.cdsNfsParcelaPARCELAID.AsString,
                                                        mmObsCancelamento.Lines.Text );
     dmPP.cdsNfsParcela.Refresh;
    end;
end;

end.
