unit u_ContratoAuto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ComCtrls, DB, DBClient, fcStatusBar;

type
  TfrmContratoAuto = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    btnImpContabil: TBitBtn;
    btnProcessarContratos: TBitBtn;
    btnFechar: TBitBtn;
    cmbCategNaoProcessar: TComboBox;
    Label4: TLabel;
    mmLog: TMemo;
    Label5: TLabel;
    fcstbarStatus: TfcStatusBar;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnImpContabilClick(Sender: TObject);
    procedure btnProcessarContratosClick(Sender: TObject);
  private
    procedure AdicionarCateg;
    procedure ProcessarContratos;
    procedure GerarPDSContrato;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContratoAuto: TfrmContratoAuto;

implementation

uses u_dmEF, FuncoesCliente, u_Exportar, cDateTime, u_dmCM;

{$R *.dfm}

procedure TfrmContratoAuto.GerarPDSContrato;
var EmpresaAnterior : Integer;

 procedure ProcessarServContrato;
 begin
  dmCM.cdsContratoAutoServ.First;
  while Not dmCM.cdsContratoAutoServ.Eof do
  begin
   dmEF.cdsPDSServico.Insert;
   dmEF.cdsPdsServicoSERVICOID.Value  := dmCM.cdsContratoAutoServSERVICOID.Value;
   dmEF.cdsPdsServicoVLRSERVICO.Value := dmCM.cdsContratoAutoServVLRSERVICO.Value;

   dmEF.cdsPdsServicoDESCRICAOSERVICO.Assign( dmCM.cdsContratoAutoServHISTORICO );

   dmEF.cdsPdsServicoDESCRICAOSERVICO.Value := dmEF.cdsPdsServicoDESCRICAOSERVICO.Value +
                                               ' REF AO PERIODO DOS SERVIÇOS DE: ' + dmCM.cdsContratoAUTOPERIODOINICIAL.AsString + ' a ' +
                                               dmCM.cdsContratoAUTOPERIODOFINAL.AsString;

   dmEF.cdsPDSServico.Post;
   dmCM.cdsContratoAutoServ.Next;
  end;
 end;


 procedure AtualizaParcela;
 var iSql : String;
 begin
  dmCM.cdsContratoParcPDSID.Value  := dmEF.cdsPdsPDSID.Value;
  dmCM.cdsContratoParcGERADA.Value := 1;

  iSQL := 'UPDATE CM_CONTRATOPARC SET ' +
           ' PDSID   = ' + dmEF.cdsPdsPDSID.AsString +
           ',GERADA  =  1' +
           ' WHERE ' +
           '  EMPRESAID      = ' + dmCM.cdsContratoAutoEMPRESAID.AsString +
           '  AND CONTRATOID = ' + dmCM.cdsContratoAutoCONTRATOID.AsString +
           '  AND ANOID      = ' + dmCM.cdsContratoAutoANOID.AsString +
           '  AND PARCELAID  = ' + dmCM.cdsContratoAutoPARCELAID.AsString;

  ExecDML( iSQL);
 end;

begin
 EmpresaAnterior := EmpresaAtualId;
 EmpresaAtualId  := dmCM.cdsContratoAutoEMPRESAID.AsInteger;
 try
  dmEF.cdsPds.Open;
  dmEF.cdsPds.Insert;
  dmEF.cdsPdsENTIDADEID.Value      := dmCM.cdsContratoAutoCLIENTEID.Value;
  dmEF.cdsPdsNATUREZAOPID.Value    := dmCM.cdsContratoAutoNATUREZAOPID.Value;
  dmEF.cdsPdsTRANSPORTADORID.Value := dmCM.cdsContratoAutoTRANSPORTADORID.Value;

  if dmCM.cdsContratoAutoOBSERVACAOID.Value > 1 then
     dmEF.cdsPdsOBSERVACAOID.Value   := dmCM.cdsContratoAuto.FieldByName('OBSERVACAOID').Value;

  dmEF.cdsPdsDESCRICAOOBSERVACAO.Assign( dmCM.cdsContratoAuto.FieldByName('OBSPDS') );

  dmEF.cdsPdsCONDPAGTOID.Value     := 3;
  dmEF.cdsPds.Post;

  ProcessarServContrato;

  dmEF.cdsPDSParcela.Insert;
  dmEF.cdsPdsParcelaPARCELAID.Value      := 1;
  dmEF.cdsPdsParcelaDATAVENCIMENTO.Value := dmCM.cdsContratoAutoDATAVENCIMENTO.AsSQLTimeStamp;
  dmEF.cdsPdsParcelaVLRPARCELA.Value     := dmEF.cdsPdsVLRTOTALNOTA.Value;
  dmEF.cdsPDSParcela.Post;

  AtualizaParcela;

  // Para recalcular os valores.
  dmEF.cdsPds.Post;

 finally
  EmpresaAtualId  := EmpresaAnterior;
 end;
end;


procedure TfrmContratoAuto.ProcessarContratos;
var  iSql : String;
begin
 iSql := 'c.datavencimento BETWEEN TO_DATE( ' + QuotedStr( DateToStr( DateTimePicker1.DateTime ) ) +  ',' + QuotedStr('DD/MM/YYYY')+ ')'+
         ' AND TO_DATE( ' + QuotedStr( DateToStr( DateTimePicker2.DateTime ) ) + ',' + QuotedStr('DD/MM/YYYY')+ ')';

 if ( cmbCategNaoProcessar.Text <> '' ) then
    iSQL := iSQL + ' AND EF_CATEGJURIDICA.DESCRICAO <> ' + QuotedStr( cmbCategNaoProcessar.Text );

 GerarPesquisa( dmCM.cdsContratoAuto, iSql );
end;

procedure  TfrmContratoAuto.AdicionarCateg;
var iSQL : String;
begin
 iSQL := ' SELECT * FROM EF_CATEGJURIDICA';
 AdicionarCamposCombo( cmbCategNaoProcessar ,iSQL,'DESCRICAO');
end;

procedure TfrmContratoAuto.btnProcessarContratosClick(Sender: TObject);
begin
 if Application.MessageBox( 'Confirma geração dos pedidos de faturamentos de Contrato de Manutenção?',
                            'Confirmação', MB_YESNO + MB_ICONQUESTION ) = IDNO then
    Exit;

 Screen.Cursor := crHourGlass;
 try
  try
   mmLog.Lines.Clear;
   mmLog.Lines.Add('Iniciando processamento...');

   mmLog.Lines.Add('Processando filtro de contratos...');
   ProcessarContratos;

   mmLog.Lines.Add('Gerando pedidos de faturamento...');
   dmCM.cdsContratoAuto.First;
   while not dmCM.cdsContratoAuto.Eof do
   begin
    if dmCM.cdsContratoAutoSTATUSFINANCEIRO.AsInteger = 1 then
       begin
        mmLog.Lines.Add('Contrato: ' + dmCM.cdsContratoAutoCONTRATOID.AsString + ' está bloqueado pelo departamento financeiro' );
        dmCM.cdsContratoAuto.Next;
        Continue;
       end;
    GerarPDSContrato;

    dmCM.cdsContratoAuto.Next;
   end;

   mmLog.Lines.Add('Processo concluído com sucesso')
  except
   on E: Exception do
   begin
    mmLog.Lines.Add( 'Error:' +  E.Message );
   end;
  end;

 finally
  Screen.Cursor := crDefault;
 end;
end;

procedure TfrmContratoAuto.btnFecharClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmContratoAuto.btnImpContabilClick(Sender: TObject);
begin
 ProcessarContratos;

 if not dmCM.cdsContratoAuto.IsEmpty then
    begin
     frmExportar := TfrmExportar.Create(nil);
     frmExportar.DataSource := dmCM.dsContratoAuto;
     frmExportar.Show;
    end
 else
    MessageDlg('Não há dados a serem Exportados!',mtWarning, [mbok],0 );
end;

procedure TfrmContratoAuto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := caFree;
 frmContratoAuto := Nil;
end;

procedure TfrmContratoAuto.FormCreate(Sender: TObject);
begin
 DateTimePicker1.Date :=  FirstDayOfMonth(  pCnnMain.AppServer.IServerDate );
 DateTimePicker2.Date :=  LastDayOfMonth(  pCnnMain.AppServer.IServerDate );

 AdicionarCateg;
end;

end.
