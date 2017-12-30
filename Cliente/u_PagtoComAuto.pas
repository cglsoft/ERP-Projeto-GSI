unit u_PagtoComAuto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ActnMan, ActnCtrls, ExtCtrls, ImgList, ActnList,
  XPStyleActnCtrls, Grids, DBGrids, ComCtrls, fcStatusBar, DB, DBClient;

type
  TfrmPagtoComAuto = class(TForm)
    fcstbarStatus: TfcStatusBar;
    pgctrlAnalise: TPageControl;
    TabSheet5: TTabSheet;
    dbgrdAnalise: TDBGrid;
    actmngPagto: TActionManager;
    actFechMensal: TAction;
    actExportar: TAction;
    actFechar: TAction;
    ImageList1: TImageList;
    ControlBar1: TControlBar;
    ActionToolBar1: TActionToolBar;
    dsPagtoAuto: TDataSource;
    cdsPagtoAuto: TClientDataSet;
    cdsPagtoAutoEMPRESAID: TBCDField;
    cdsPagtoAutoNFSID: TBCDField;
    cdsPagtoAutoDATAEMISSAOID: TSQLTimeStampField;
    cdsPagtoAutoPARCELAID: TBCDField;
    cdsPagtoAutoDATAVENCIMENTO: TSQLTimeStampField;
    cdsPagtoAutoDATAPAGTO: TSQLTimeStampField;
    cdsPagtoAutoVLRPARCELA: TBCDField;
    cdsPagtoAutoVLRBASECOMISSAO: TBCDField;
    cdsPagtoAutoPAGTOVENDEDOR: TBCDField;
    cdsPagtoAutoPEDVENDID: TStringField;
    cdsPagtoAutoPROCESSAR: TFMTBCDField;
    cdsPagtoAutoVLRBAIXA: TFMTBCDField;
    procedure actFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actExportarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbgrdAnaliseDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actFechMensalExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPagtoComAuto: TfrmPagtoComAuto;

implementation

uses u_Exportar, FuncoesCliente, u_dmPP, u_dmGSI;

{$R *.dfm}

procedure TfrmPagtoComAuto.actExportarExecute(Sender: TObject);
begin
 if not cdsPagtoAuto.IsEmpty then
    begin
     frmExportar := TfrmExportar.Create(nil);
     frmExportar.DataSource := dsPagtoAuto;
     frmExportar.Show;
    end
 else
    MessageDlg('É necessário Gerar o Relatório primeiro!',mtWarning, [mbok],0 );
end;

procedure TfrmPagtoComAuto.actFecharExecute(Sender: TObject);
begin
 Close;
end;

procedure TfrmPagtoComAuto.actFechMensalExecute(Sender: TObject);
begin
 cdsPagtoAuto.First;
 while not cdsPagtoAuto.Eof  do
 begin
  if cdsPagtoAutoPROCESSAR.AsInteger = 0 then
     begin
      cdsPagtoAuto.Next;
      Continue;
     end;
     
  if ( cdsPagtoAutoVLRPARCELA.AsFloat <> cdsPagtoAutoVLRBAIXA.AsFloat ) then
     begin
      cdsPagtoAuto.Next;
      Continue;
     end;

  dmPP.shdcnnPP.AppServer.IBaixaDuplicata( cdsPagtoAutoPEDVENDID.AsString,
                                           cdsPagtoAutoDATAPAGTO.AsDateTime,
                                           cdsPagtoAutoPARCELAID.AsString,
                                           cdsPagtoAutoVLRBASECOMISSAO.AsString,
                                           cdsPagtoAutoPAGTOVENDEDOR.AsInteger,
                                           dmGSI.UsuarioAtivo );
  cdsPagtoAuto.Next;
 end;

end;

procedure TfrmPagtoComAuto.dbgrdAnaliseDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var HoldColor : TColor;
begin
 HoldColor := TDBGrid( Sender ).Canvas.Brush.Color;
 if ( Column.FieldName = 'PEDVENDID' ) or ( Column.FieldName = 'EMPRESAID' ) or
    ( Column.FieldName = 'NFSID' ) or ( Column.FieldName = 'DATAEMISSAOID' ) or
    ( Column.FieldName = 'DATAPAGTO' ) or ( Column.FieldName = 'VLRPARCELA' ) or
    ( Column.FieldName = 'PARCELAID' ) or ( Column.FieldName = 'VLRBAIXA' ) or
    ( Column.FieldName = 'VLRBASECOMISSAO' ) or ( Column.FieldName = 'DATAVENCIMENTO' ) or
    ( Column.FieldName = 'PAGTOVENDEDOR' ) then
    begin
     if not cdsPagtoAutoDATAPAGTO.IsNull then
        begin
         TDBGrid( Sender ).Canvas.Brush.Color := clRed;
         TDBGrid( Sender ).DefaultDrawColumnCell(Rect, DataCol, Column, State);
         TDBGrid( Sender ).Canvas.Brush.Color := HoldColor;
        end
    else
        begin
         TDBGrid( Sender ).DefaultDrawColumnCell(Rect, DataCol, Column, State);
         TDBGrid( Sender ).Canvas.Brush.Color := HoldColor;
        end;
    end;
end;

procedure TfrmPagtoComAuto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := caFree;
 frmPagtoComAuto := Nil;
end;

procedure TfrmPagtoComAuto.FormCreate(Sender: TObject);
var sSQL : String;
begin
 sSQL := 'SELECT DISTINCT PP_ANALISEVENDA.PEDVENDID,' +
         '                PP_ANALISEVENDA.EMPRESAID,' +
         '                PP_ANALISEVENDA.NFSID,' +
         '                PP_ANALISEVENDA.DATAEMISSAOID,' +
         '                EF_NFSPARCELA.PARCELAID,' +
         '                EF_NFSPARCELA.DATAVENCIMENTO,' +
         '                PKG_GSI_UTILS.FC_DTPAGTOTITULO( PP_ANALISEVENDA.NFSID, EF_NFSPARCELA.PARCELAID ) AS DATAPAGTO,' +
         '                EF_NFSPARCELA.VLRBASECOMISSAO,' +
         '                EF_NFSPARCELA.VLRPARCELA, ' +
         '                EF_NFSPARCELA.PAGTOVENDEDOR,' +
         '                DECODE( PKG_GSI_UTILS.FC_DTPAGTOTITULO( PP_ANALISEVENDA.NFSID, EF_NFSPARCELA.PARCELAID ), NULL, 0,1) PROCESSAR, ' +
         '                PKG_GSI_UTILS.FC_VLRBAIXAPAGTOTITULO( PP_ANALISEVENDA.NFSID, EF_NFSPARCELA.PARCELAID )  VLRBAIXA ' +
         '  FROM PP_ANALISEVENDA, EF_NFSPARCELA, PP_PEDVEND, EF_NFS' +
         ' WHERE PP_ANALISEVENDA.EMPRESAID = EF_NFSPARCELA.EMPRESAID' +
         '   AND PP_ANALISEVENDA.NFSID = EF_NFSPARCELA.NFSID' +
         '   AND PP_ANALISEVENDA.DATAEMISSAOID = EF_NFSPARCELA.DATAEMISSAOID' +
         '   AND PP_PEDVEND.PEDVENDID = PP_ANALISEVENDA.PEDVENDID' +
         '   AND PP_ANALISEVENDA.EMPRESAID = EF_NFS.EMPRESAID' +
         '   AND PP_ANALISEVENDA.NFSID = EF_NFS.NFSID' +
         '   AND PP_ANALISEVENDA.DATAEMISSAOID = EF_NFS.DATAEMISSAOID' +
         '   AND NVL(EF_NFSPARCELA.PAGTOVENDEDOR, 0) = 0' +
         '   AND NVL(PP_PEDVEND.CANCELADO, 0) = 0' +
         '   AND NVL( EF_NFSPARCELA.CANCELADA, 0 ) = 0 ' +
         '   AND NVL( EF_NFS.CANCELADA,0 ) = 0' +
         ' ORDER BY PP_ANALISEVENDA.EMPRESAID,' +
         '          PP_ANALISEVENDA.NFSID,' +
         '          PP_ANALISEVENDA.DATAEMISSAOID,' +
         '          EF_NFSPARCELA.PARCELAID';

 ExecDynamicProvider( -1, sSQL, cdsPagtoAuto );
end;

end.
