unit u_dmRS;

interface

uses
  SysUtils, Classes, DB, DBClient, MConnect;

type
  TdmRS = class(TDataModule)
    shdcnnRS: TSharedConnection;
    cdsImpostoServico: TClientDataSet;
    dsImpostoServico: TDataSource;
    cdsLimiteContribuicao: TClientDataSet;
    dsLimiteContribuicao: TDataSource;
    cdsPrestador: TClientDataSet;
    dsPrestador: TDataSource;
    cdsPrestadorReceb: TClientDataSet;
    dsPrestadorReceb: TDataSource;
    cdsRecibo: TClientDataSet;
    dsRecibo: TDataSource;
    cdsImpostoServicoIMPOSTOSERVICOID: TBCDField;
    cdsImpostoServicoDESCRICAO: TStringField;
    cdsImpostoServicoVLRALIQUOTA: TBCDField;
    cdsImpostoServicoFRETE: TBCDField;
    cdsImpostoServicoUSUARIO: TStringField;
    cdsLimiteContribuicaoDATAVIGENCIA: TSQLTimeStampField;
    cdsLimiteContribuicaoVLRCONTRIBUICAO: TBCDField;
    cdsLimiteContribuicaoUSUARIO: TStringField;
    cdsPrestadorPRESTADORID: TBCDField;
    cdsPrestadorNOME: TStringField;
    cdsPrestadorCEPID: TBCDField;
    cdsPrestadorNUMERO: TStringField;
    cdsPrestadorCOMPLEMENTO: TStringField;
    cdsPrestadorENDERECO: TStringField;
    cdsPrestadorBAIRRO: TStringField;
    cdsPrestadorCIDADE: TStringField;
    cdsPrestadorSIGLAUFID: TStringField;
    cdsPrestadorCPFCNPJ: TStringField;
    cdsPrestadorINSCRPREFMUNICIPAL: TStringField;
    cdsPrestadorINSCRORGAOCLASSE: TStringField;
    cdsPrestadorINSCRINSS: TStringField;
    cdsPrestadorINSCRPIS: TStringField;
    cdsPrestadorTELEFONE: TStringField;
    cdsPrestadorFAX: TStringField;
    cdsPrestadorBENEFICIOTRIBTRANSP: TBCDField;
    cdsPrestadorUSUARIO: TStringField;
    cdsPrestadorsqldtsPrestadorReceb: TDataSetField;
    cdsPrestadorRecebPRESTADORID: TBCDField;
    cdsPrestadorRecebITEMID: TBCDField;
    cdsPrestadorRecebDATAEXECUCAO: TSQLTimeStampField;
    cdsPrestadorRecebCPFCNPJ: TStringField;
    cdsPrestadorRecebRAZAOSOCIAL: TStringField;
    cdsPrestadorRecebVLRSERVICO: TBCDField;
    cdsPrestadorRecebVLRRETIDO: TBCDField;
    cdsPrestadorRecebUSUARIO: TStringField;
    cdsReciboRECIBOID: TBCDField;
    cdsReciboFILIALID: TBCDField;
    cdsReciboL_FILIAL: TStringField;
    cdsReciboDATACALCULO: TSQLTimeStampField;
    cdsReciboDATAVENCIMENTO: TSQLTimeStampField;
    cdsReciboPRESTADORID: TBCDField;
    cdsReciboL_NOME: TStringField;
    cdsReciboL_CEPID: TBCDField;
    cdsReciboL_NUMERO: TStringField;
    cdsReciboL_COMPLEMENTO: TStringField;
    cdsReciboL_ENDERECO: TStringField;
    cdsReciboL_BAIRRO: TStringField;
    cdsReciboL_CIDADE: TStringField;
    cdsReciboL_SIGLAUFID: TStringField;
    cdsReciboL_CPFCNPJ: TStringField;
    cdsReciboL_INSCRPREFMUNICIPAL: TStringField;
    cdsReciboL_INSCRORGAOCLASSE: TStringField;
    cdsReciboL_INSCRINSS: TStringField;
    cdsReciboL_INSCRPIS: TStringField;
    cdsReciboL_TELEFONE: TStringField;
    cdsReciboFRETE: TBCDField;
    cdsReciboIMPOSTOSERVICOID: TBCDField;
    cdsReciboVLRSERVICO: TBCDField;
    cdsReciboVLRIRRF: TBCDField;
    cdsReciboVLRISS: TBCDField;
    cdsReciboVLRINSS: TBCDField;
    cdsReciboVLRDESCONTO: TBCDField;
    cdsReciboVLRLIQUIDO: TBCDField;
    cdsReciboVLRBASEINSSEMPRESA: TBCDField;
    cdsReciboVLRINSSEMPRESA: TBCDField;
    cdsReciboDESCRICAOSERVICO: TMemoField;
    cdsReciboOBSERVACAO: TMemoField;
    cdsReciboUSUARIO: TStringField;
    cdsReciboL_NOMEFILIAL: TStringField;
    cdsReciboL_ENDERECOFILIAL: TStringField;
    cdsReciboL_NUMEROFILIAL: TStringField;
    cdsReciboL_CIDADEFILIAL: TStringField;
    cdsReciboL_CPEIDFILIAL: TBCDField;
    cdsReciboL_CPFCNPJFILIAL: TStringField;
    cdsReciboL_SIGLAUFIDFILIAL: TStringField;
    cdsRelBaseINSS: TClientDataSet;
    dscdsRelBaseINSS: TDataSource;
    cdsRelBaseINSSRECIBOID: TBCDField;
    cdsRelBaseINSSFILIALID: TBCDField;
    cdsRelBaseINSSNOMEFANTASIA: TStringField;
    cdsRelBaseINSSDATACALCULO: TSQLTimeStampField;
    cdsRelBaseINSSPRESTADORID: TBCDField;
    cdsRelBaseINSSFRETE: TBCDField;
    cdsRelBaseINSSVLRSERVICORECIBO: TBCDField;
    cdsRelBaseINSSVLRIRRF: TBCDField;
    cdsRelBaseINSSVLRISS: TBCDField;
    cdsRelBaseINSSVLRINSS: TBCDField;
    cdsRelBaseINSSVLRDESCONTO: TBCDField;
    cdsRelBaseINSSVLRLIQUIDO: TBCDField;
    cdsRelBaseINSSVLRBASEINSSEMPRESA: TBCDField;
    cdsRelBaseINSSVLRINSSEMPRESA: TBCDField;
    cdsRelBaseINSSDESCRICAOSERVICO: TMemoField;
    cdsRelBaseINSSOBSERVACAO: TMemoField;
    cdsRelBaseINSSDATAVENCIMENTO: TSQLTimeStampField;
    cdsRelBaseINSSUSUARIO: TStringField;
    cdsRelBaseINSSNOME: TStringField;
    cdsRelBaseINSSENDERECO: TStringField;
    cdsRelBaseINSSCIDADE: TStringField;
    cdsRelBaseINSSNUMERO: TStringField;
    cdsRelBaseINSSSIGLAUFID: TStringField;
    cdsRelBaseINSSCEPID: TBCDField;
    cdsRelBaseINSSCPFCNPJ: TStringField;
    cdsRelBaseINSSINSCRPREFMUNICIPAL: TStringField;
    cdsRelBaseINSSINSCRORGAOCLASSE: TStringField;
    cdsRelBaseINSSTELEFONE: TStringField;
    cdsRelBaseINSSFAX: TStringField;
    cdsRelBaseINSSDATAEXECUCAO: TSQLTimeStampField;
    cdsRelBaseINSSRAZAOSOCIAL: TStringField;
    cdsRelBaseINSSVLRSERVICO: TBCDField;
    cdsRelBaseINSSVLRRETIDO: TBCDField;
    procedure cdsImpostoServicoReconcileError(
      DataSet: TCustomClientDataSet; E: EReconcileError;
      UpdateKind: TUpdateKind; var Action: TReconcileAction);
    procedure cdsImpostoServicoAfterDelete(DataSet: TDataSet);
    procedure cdsImpostoServicoAfterPost(DataSet: TDataSet);
    procedure cdsPrestadorRecebAfterDelete(DataSet: TDataSet);
    procedure cdsPrestadorAfterDelete(DataSet: TDataSet);
    procedure cdsPrestadorAfterPost(DataSet: TDataSet);
    procedure cdsPrestadorRecebAfterPost(DataSet: TDataSet);
    procedure cdsImpostoServicoNewRecord(DataSet: TDataSet);
    procedure cdsLimiteContribuicaoNewRecord(DataSet: TDataSet);
    procedure cdsPrestadorNewRecord(DataSet: TDataSet);
    procedure cdsPrestadorRecebNewRecord(DataSet: TDataSet);
    procedure cdsReciboNewRecord(DataSet: TDataSet);
    procedure cdsPrestadorINSCRPREFMUNICIPALValidate(Sender: TField);
    procedure cdsPrestadorINSCRORGAOCLASSEValidate(Sender: TField);
    procedure cdsPrestadorINSCRINSSValidate(Sender: TField);
    procedure cdsPrestadorINSCRPISValidate(Sender: TField);
    procedure cdsPrestadorRecebCPFCNPJValidate(Sender: TField);
  private
    { Private declarations }
    procedure InserePrestadorReceb;
  public
    { Public declarations }
  end;

var
  dmRS: TdmRS;

implementation

uses u_dmGSI, u_ReconcileError, FuncoesCliente,FuncoesDSI,u_dmAS;

{$R *.dfm}

procedure TdmRS.cdsImpostoServicoReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
 Action := HandleReconcileError( DataSet, UpdateKind, E);
end;

procedure TdmRS.cdsImpostoServicoAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates( -1 );
 InserePrestadorReceb;
end;

procedure TdmRS.cdsImpostoServicoAfterPost(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates( -1 );
end;

procedure TdmRS.cdsPrestadorRecebAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsPrestador.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsPrestador.Edit;
end;

procedure TdmRS.cdsPrestadorAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates( -1 );

end;

procedure TdmRS.cdsPrestadorAfterPost(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates( -1 );

end;

procedure TdmRS.cdsPrestadorRecebAfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsPrestador.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

 if dsState in [dsEdit,dsInsert] then
    cdsPrestador.Edit;

end;

procedure TdmRS.cdsImpostoServicoNewRecord(DataSet: TDataSet);
begin
 cdsImpostoServicoIMPOSTOSERVICOID.AsInteger := ContadorDB('RS_IMPOSTOSERVICO','IMPOSTOSERVICOID','');
 cdsImpostoServicoVLRALIQUOTA.Value          := 0;
 cdsImpostoServicoFRETE.Value                := 0;
 cdsImpostoServicoUSUARIO.Value              := dmGsi.UsuarioAtivo;
end;

procedure TdmRS.cdsLimiteContribuicaoNewRecord(DataSet: TDataSet);
begin
 cdsLimiteContribuicaoVLRCONTRIBUICAO.Value := 0;
 cdsLimiteContribuicaoUSUARIO.Value         := dmGsi.UsuarioAtivo;
end;

procedure TdmRS.cdsPrestadorNewRecord(DataSet: TDataSet);
begin
 cdsPrestadorPRESTADORID.AsInteger := ContadorDB('RS_PRESTADOR','PRESTADORID','');
 cdsPrestadorUSUARIO.Value         := dmGsi.UsuarioAtivo;
end;

procedure TdmRS.cdsPrestadorRecebNewRecord(DataSet: TDataSet);
var ParamSQL : String;
begin
 ParamSQL := 'WHERE RS_PRESTADORRECEB.PRESTADORID = '+cdsPrestadorPRESTADORID.AsString;
 cdsPrestadorRecebITEMID.Value     := ContadorDB('RS_PRESTADORRECEB','ITEMID',ParamSQL);
 cdsPrestadorRecebVLRSERVICO.Value := 0;
 cdsPrestadorRecebVLRRETIDO.Value  := 0;
 cdsPrestadorUSUARIO.Value         := dmGsi.UsuarioAtivo;
end;

procedure TdmRS.cdsReciboNewRecord(DataSet: TDataSet);
begin
 cdsReciboRECIBOID.Value := ContadorDB('RS_RECIBO','RECIBOID','' );
 cdsReciboFRETE.Value    := 0;
 cdsReciboUSUARIO.Value  := dmGsi.UsuarioAtivo; 
end;

procedure TdmRS.InserePrestadorReceb;
var iSQL   : String;
    itemId : Integer;
begin
 try
  itemId := ContadorDB('RS_PRESTADORRECEB','ITEMID','WHERE PRESTADORID = '+ cdsReciboPRESTADORID.AsString );
  iSQL   := 'INSERT INTO RS_PRESTADORRECEB'+
            '     VALUES('+ cdsReciboPRESTADORID.AsString
            +','+ IntToStr( itemId )
            +','+ QuotedStr( cdsReciboDATAVENCIMENTO.AsString )
            +','+ QuotedStr( cdsReciboL_CPFCNPJFILIAL.AsString )
            +','+ QuotedStr( cdsReciboL_NOMEFILIAL.AsString )
            +','+ cdsReciboVLRSERVICO.AsString
            +','+ cdsReciboIMPOSTOSERVICOID.AsString
            +','+ cdsReciboL_INSCRINSS.AsString
            +','+ QuotedStr( cdsReciboUSUARIO.AsString );
  ExecDML( iSQL );
 except on
  E : Exception do
  raise Exception.Create(E.Message);
 end;
end;

procedure TdmRS.cdsPrestadorINSCRPREFMUNICIPALValidate(Sender: TField);
begin
 if Length( Trim( TransfNum( TField(sender).AsString ) ) ) <> 11 then
    raise Exception.Create('Valor do Campo é Inválido');
end;

procedure TdmRS.cdsPrestadorINSCRORGAOCLASSEValidate(Sender: TField);
begin
 if Length( Trim( TransfNum( TField(sender).AsString ) ) ) <> 11 then
    raise Exception.Create('Valor do Campo é Inválido');
end;

procedure TdmRS.cdsPrestadorINSCRINSSValidate(Sender: TField);
begin
 if Length( Trim( TransfNum( TField(sender).AsString ) ) ) <> 11 then
    raise Exception.Create('Valor do Campo é Inválido');
end;

procedure TdmRS.cdsPrestadorINSCRPISValidate(Sender: TField);
begin
 if Length( Trim( TransfNum( TField(sender).AsString ) ) ) <> 11 then
    raise Exception.Create('Valor do Campo é Inválido');
end;

procedure TdmRS.cdsPrestadorRecebCPFCNPJValidate(Sender: TField);
var cds  : TClientDataSet;
    iSQL : String;
begin
 if not ValidCnPJ_CnPF( cdsPrestadorRecebCPFCNPJ.AsString ) then
    raise Exception.Create( 'Cnpj Inválido' );

 iSQL := 'SELECT EF_FILIAL.CPFCNPJ'+
         '  FROM EF_FILIAL'+
         ' WHERE EF_FILIAL.CPFCNPJ = '+ TField( Sender ).AsString;

 ExecDynamicProvider(-1,iSQL,cds);
 if not cds.IsEmpty then
    raise Exception.Create( 'Cnpj não pode ser da Toshiba' );
end;

end .
