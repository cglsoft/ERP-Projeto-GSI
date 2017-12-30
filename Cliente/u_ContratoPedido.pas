unit u_ContratoPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, XPStyleActnCtrls, ActnMan, ImgList,
  tmbToolcdsExportar, fcStatusBar, ExtCtrls, PnAjustaGrid, ActnCtrls,
  ToolWin, ComCtrls, Grids, DBGrids;

type
  TfrmContratoPedido = class(TForm)
    pgctrlSolic: TPageControl;
    TabSheet1: TTabSheet;
    dbgrdParcelas: TDBGrid;
    CoolBar1: TCoolBar;
    ActionToolBar1: TActionToolBar;
    fcstbarStatus: TfcStatusBar;
    imglstParc: TImageList;
    actmngParc: TActionManager;
    actAdiantamento: TAction;
    actCancelarPedido: TAction;
    actFechar: TAction;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgrdParcelasDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure actAdiantamentoExecute(Sender: TObject);
    procedure actCancelarPedidoExecute(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContratoPedido: TfrmContratoPedido;

implementation

uses u_dmCM, u_dmEF, FuncoesCliente;

{$R *.dfm}

procedure TfrmContratoPedido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 frmContratoPedido := Nil;
end;

procedure TfrmContratoPedido.dbgrdParcelasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var HoldColor : TColor;
begin
 if dmCM.cdsContratoParcGERADA.AsInteger = 1 then
    begin
     HoldColor := TDBGrid( Sender ).Canvas.Brush.Color;
     TDBGrid( Sender ).Canvas.Font.Color  := clNone;
     TDBGrid( Sender ).Canvas.Brush.Color := clTeal;
     TDBGrid( Sender ).DefaultDrawColumnCell(Rect, DataCol, Column, State);
     TDBGrid( Sender ).Canvas.Brush.Color := HoldColor;
    end;
end;

procedure TfrmContratoPedido.actAdiantamentoExecute(Sender: TObject);
var EmpresaAnterior : Integer;
begin
 if ( dmCM.cdsContratoCANCELADO.AsInteger = 1 ) then
    raise Exception.Create( 'O Contrato está CANCELADO! Não é permitido gerar Parcelas!' );

 if ( dmCM.cdsContratoParcGERADA.AsInteger = 1 ) or ( dmCM.cdsContratoParcPDSID.AsInteger > 0 ) then
    raise Exception.Create( 'O Contrato já faturado!' );

 EmpresaAnterior := EmpresaAtualId;
 EmpresaAtualId  := dmCM.cdsContratoEMPRESAID.AsInteger;
 try
  if Application.MessageBox( 'Confirma Operação ?',
                             'Confirmação', MB_YESNO + MB_ICONQUESTION ) = IDNO then
     Exit;

  dmEF.cdsPds.Open;
  dmEF.cdsPds.Insert;
  dmEF.cdsPdsENTIDADEID.Value      := dmCM.cdsContratoCLIENTEID.Value;
  dmEF.cdsPdsNATUREZAOPID.Value    := dmCM.cdsContratoNATUREZAOPID.Value;
  dmEF.cdsPdsTRANSPORTADORID.Value := dmCM.cdsContratoTRANSPORTADORID.Value;

  if dmCM.cdsContratoOBSERVACAOID.Value > 1 then
     dmEF.cdsPdsOBSERVACAOID.Value    := dmCM.cdsContratoOBSERVACAOID.Value;

  dmEF.cdsPdsDESCRICAOOBSERVACAO.Assign( dmCM.cdsContratoOBSPDS );

  dmEF.cdsPdsCONDPAGTOID.Value     := 3;
  dmEF.cdsPds.Post;

  dmCM.cdsContratoServ.First;
  while Not dmCM.cdsContratoServ.Eof do
  begin
   dmEF.cdsPDSServico.Insert;
   dmEF.cdsPdsServicoSERVICOID.Value  := dmCM.cdsContratoServSERVICOID.Value;
   dmEF.cdsPdsServicoVLRSERVICO.Value := dmCM.cdsContratoServVLRSERVICO.Value;

   dmEF.cdsPdsServicoDESCRICAOSERVICO.Assign( dmCM.cdsContratoServHISTORICO );

   dmEF.cdsPdsServicoDESCRICAOSERVICO.Value := dmEF.cdsPdsServicoDESCRICAOSERVICO.Value +
                                               ' Ref.: ' + dmCM.cdsContratoParcMESVENCIMENTO.Value + '/' +
                                FormatDateTime('YYYY', dmCM.cdsContratoParcPERIODOINICIAL.AsDateTime);
   dmEF.cdsPDSServico.Post;
   dmCM.cdsContratoServ.Next;
  end;

  dmEF.cdsPDSParcela.Insert;
  dmEF.cdsPdsParcelaPARCELAID.Value := 1;
  dmEF.cdsPdsParcelaDATAVENCIMENTO.Value := dmCM.cdsContratoParcDATAVENCIMENTO.Value;
  dmEF.cdsPdsParcelaVLRPARCELA.Value     := dmEF.cdsPdsVLRTOTALNOTA.Value;
  dmEF.cdsPDSParcela.Post;

  // Para recalcular os valores.
  dmEF.cdsPds.Post;

  dmCM.cdsContratoParc.Edit;
  dmCM.cdsContratoParcPDSID.Value  := dmEF.cdsPdsPDSID.Value;
  dmCM.cdsContratoParcGERADA.Value := 1;
  dmCM.cdsContratoParc.Post;

  MessageDlg( 'Pedido de serviços ' + dmCM.cdsContratoParcPDSID.AsString + ' gerado com sucesso!',  mtInformation, [mbNo], 0  );
 finally
  EmpresaAtualId  := EmpresaAnterior;
 end;
end;

procedure TfrmContratoPedido.actCancelarPedidoExecute(Sender: TObject);
var ParamPesqPDS : String;
begin
 if dmCM.cdsContratoCANCELADO.AsInteger = 1 then
    raise Exception.Create( 'O Contrato está CANCELADO! Não é permitido Cancelar Pedidos!' );

 if Application.MessageBox( 'Confirma Operação ?',
                            'Confirmação', MB_YESNO + MB_ICONQUESTION ) = IDNO then
    Exit;

 ParamPesqPDS := ' EF_PDS.EMPRESAID = ' + dmCM.cdsContratoParcEMPRESAID.AsString +
                 ' AND EF_PDS.PDSID = ' + dmCM.cdsContratoParcPDSID.AsString;
 GerarPesquisa( dmEF.cdsPds, ParamPesqPDS );

 if dmEF.cdsPds.RecordCount > 0 then
    dmEF.cdsPds.Delete;

 dmCM.cdsContratoParc.Edit;
 dmCM.cdsContratoParcPDSID.Clear;
 dmCM.cdsContratoParcGERADA.Value := 0;
 dmCM.cdsContratoParc.Post;
end;

procedure TfrmContratoPedido.actFecharExecute(Sender: TObject);
begin
 Close;
end;

end.
