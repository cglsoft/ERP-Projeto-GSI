unit u_dmHora;

interface

uses
  SysUtils, Classes, DBXpress, FMTBcd, DB, DBClient, Provider, SqlExpr,
  WideStrings;

type
  TdmHoras = class(TDataModule)
    SQLConnection: TSQLConnection;
    sqlHoraItem: TSQLDataSet;
    dsprvHora: TDataSetProvider;
    dsMHora: TDataSource;
    cdsHoraItem: TClientDataSet;
    dsHoraItem: TDataSource;
    cdsFeriado: TClientDataSet;
    dsFeriado: TDataSource;
    sqlFeridado: TSQLDataSet;
    ddprvFeriado: TDataSetProvider;
    sqlFeridadoFERIADOID: TBCDField;
    sqlFeridadoDATAFERIADO: TSQLTimeStampField;
    sqlFeridadoFILIALID: TBCDField;
    sqlFeridadoFERIADOREGIONAL: TBCDField;
    sqlFeridadoLIBERADOEMPRESA: TBCDField;
    sqlFeridadoDESCRICAOFERIADO: TStringField;
    cdsFeriadoFERIADOID: TBCDField;
    cdsFeriadoDATAFERIADO: TSQLTimeStampField;
    cdsFeriadoFILIALID: TBCDField;
    cdsFeriadoFERIADOREGIONAL: TBCDField;
    cdsFeriadoLIBERADOEMPRESA: TBCDField;
    cdsFeriadoDESCRICAOFERIADO: TStringField;
    sqlHora: TSQLDataSet;
    dsHoraServer: TDataSource;
    cdsHora: TClientDataSet;
    dsHora: TDataSource;
    cdsConfig: TClientDataSet;
    sqlConfig: TSQLDataSet;
    sqlConfigHORAFILIALINI: TSQLTimeStampField;
    sqlConfigHORAFILIALFIM: TSQLTimeStampField;
    sqlConfigHORAMATRIZINI: TSQLTimeStampField;
    sqlConfigHORAMATRIZFIM: TSQLTimeStampField;
    dsprvConfig: TDataSetProvider;
    cdsConfigHORAFILIALINI: TSQLTimeStampField;
    cdsConfigHORAFILIALFIM: TSQLTimeStampField;
    cdsConfigHORAMATRIZINI: TSQLTimeStampField;
    cdsConfigHORAMATRIZFIM: TSQLTimeStampField;
    dsConfig: TDataSource;
    sqlGeral: TSQLDataSet;
    dsprvGeral: TDataSetProvider;
    cdsGeral: TClientDataSet;
    sqlOsBcoHora: TSQLDataSet;
    dsprvOsBcoHora: TDataSetProvider;
    cdsMHora: TClientDataSet;
    cdsMHoraHoraini: TDateTimeField;
    cdsMHoraHoraFim: TDateTimeField;
    cdsMHoraDifHoras: TFloatField;
    cdsMHoraTime: TTimeField;
    dsGeral: TDataSource;
    cdsOsBcoHora: TClientDataSet;
    dsOsBcoHora: TDataSource;
    cdsOsBcoHoraOSID: TStringField;
    cdsOsBcoHoraITEMID: TBCDField;
    cdsOsBcoHoraDATASERVICO: TSQLTimeStampField;
    cdsOsBcoHoraENTIDADEID: TBCDField;
    cdsOsBcoHoraL_NOMEPOPULARTECNICO: TStringField;
    cdsOsBcoHoraL_FILIALID: TBCDField;
    cdsOsBcoHoraHORAINI: TSQLTimeStampField;
    cdsOsBcoHoraHORAFIM: TSQLTimeStampField;
    cdsOsBcoHoraLIBERADO: TBCDField;
    cdsOsBcoHoraUSUARIO: TStringField;
    sqlOsBcoHoraOSID: TStringField;
    sqlOsBcoHoraITEMID: TBCDField;
    sqlOsBcoHoraDATASERVICO: TSQLTimeStampField;
    sqlOsBcoHoraENTIDADEID: TBCDField;
    sqlOsBcoHoraL_NOMEPOPULARTECNICO: TStringField;
    sqlOsBcoHoraL_FILIALID: TBCDField;
    sqlOsBcoHoraHORAINI: TSQLTimeStampField;
    sqlOsBcoHoraHORAFIM: TSQLTimeStampField;
    sqlOsBcoHoraLIBERADO: TBCDField;
    sqlOsBcoHoraUSUARIO: TStringField;
    sqlBancoHora: TSQLDataSet;
    dsprvBancoHora: TDataSetProvider;
    sqlBancoHoraBANCOHORAID: TBCDField;
    sqlBancoHoraDATASOLICITACAO: TSQLTimeStampField;
    sqlBancoHoraFUNCIONARIOID: TBCDField;
    sqlBancoHoraTIPODESPESAOS: TStringField;
    sqlBancoHoraOSID: TStringField;
    sqlBancoHoraOPERACAOID: TBCDField;
    sqlBancoHoraHORAINI: TSQLTimeStampField;
    sqlBancoHoraHORAFIM: TSQLTimeStampField;
    sqlBancoHoraLIBERADO: TBCDField;
    sqlBancoHoraUSUARIO: TStringField;
    sqlBancoHoraDIFERENCAMINTRAB: TFMTBCDField;
    cdsBancoHora: TClientDataSet;
    dsBancoHora: TDataSource;
    cdsBancoHoraBANCOHORAID: TBCDField;
    cdsBancoHoraDATASOLICITACAO: TSQLTimeStampField;
    cdsBancoHoraFUNCIONARIOID: TBCDField;
    cdsBancoHoraTIPODESPESAOS: TStringField;
    cdsBancoHoraOSID: TStringField;
    cdsBancoHoraOPERACAOID: TBCDField;
    cdsBancoHoraHORAINI: TSQLTimeStampField;
    cdsBancoHoraHORAFIM: TSQLTimeStampField;
    cdsBancoHoraDIFERENCAMINTRAB: TFMTBCDField;
    cdsBancoHoraLIBERADO: TBCDField;
    cdsBancoHoraUSUARIO: TStringField;
    sqlHoraItemHORAID: TBCDField;
    sqlHoraItemDATASERVICOID: TSQLTimeStampField;
    sqlHoraItemITEMID: TBCDField;
    sqlHoraItemOSID: TStringField;
    sqlHoraItemOPERACAOID: TBCDField;
    sqlHoraItemL_OPERACAO: TStringField;
    sqlHoraItemHORAINI: TSQLTimeStampField;
    sqlHoraItemHORAFIM: TSQLTimeStampField;
    sqlHoraItemDIFERENCAHORATRAB: TStringField;
    sqlHoraItemDIFERENCAMINTRAB: TFMTBCDField;
    sqlHoraItemVLRSALDO: TBCDField;
    sqlHoraItemHISTORICO: TStringField;
    sqlHoraItemUSUARIO: TStringField;
    sqlHoraHORAID: TBCDField;
    sqlHoraL_NOMEFUNCIONARIO: TStringField;
    sqlHoraDATAABERTURA: TSQLTimeStampField;
    sqlHoraVLRSALDO: TBCDField;
    sqlHoraDATAFECHAMENTO: TSQLTimeStampField;
    sqlHoraBLOQUEADO: TBCDField;
    cdsHoraHORAID: TBCDField;
    cdsHoraL_NOMEFUNCIONARIO: TStringField;
    cdsHoraDATAABERTURA: TSQLTimeStampField;
    cdsHoraVLRSALDO: TBCDField;
    cdsHoraDATAFECHAMENTO: TSQLTimeStampField;
    cdsHoraBLOQUEADO: TBCDField;
    cdsHorasqlHoraItem: TDataSetField;
    cdsHoraItemHORAID: TBCDField;
    cdsHoraItemDATASERVICOID: TSQLTimeStampField;
    cdsHoraItemITEMID: TBCDField;
    cdsHoraItemOSID: TStringField;
    cdsHoraItemOPERACAOID: TBCDField;
    cdsHoraItemL_OPERACAO: TStringField;
    cdsHoraItemHORAINI: TSQLTimeStampField;
    cdsHoraItemHORAFIM: TSQLTimeStampField;
    cdsHoraItemDIFERENCAHORATRAB: TStringField;
    cdsHoraItemDIFERENCAMINTRAB: TFMTBCDField;
    cdsHoraItemVLRSALDO: TBCDField;
    cdsHoraItemHISTORICO: TStringField;
    cdsHoraItemUSUARIO: TStringField;
    sqlHoraL_FILIALID: TBCDField;
    cdsHoraL_FILIALID: TBCDField;
    sqlBancoHoraDIFERENCAHORATRAB: TStringField;
    cdsBancoHoraDIFERENCAHORATRAB: TStringField;
    procedure cdsHoraItemHORAFIMValidate(Sender: TField);
    procedure cdsHora2AfterPost(DataSet: TDataSet);
    procedure cdsHora2AfterDelete(DataSet: TDataSet);
    procedure cdsHoraItem2AfterDelete(DataSet: TDataSet);
    procedure cdsHoraItem2AfterPost(DataSet: TDataSet);
    procedure cdsHoraAfterDelete(DataSet: TDataSet);
    procedure cdsHoraAfterPost(DataSet: TDataSet);
    procedure cdsHoraitemAfterDelete(DataSet: TDataSet);
    procedure cdsHoraitemAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmHoras: TdmHoras;

implementation

{$R *.dfm}

procedure TdmHoras.cdsHoraItemHORAFIMValidate(Sender: TField);
begin
{ if cdsHoraItemHORAINI.AsDateTime > cdsHoraItemHORAFIM.AsDateTime then
    raise Exception.Create('Hora Final deve ser maior do que a Hora Inicial');}
end;

procedure TdmHoras.cdsHora2AfterPost(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmHoras.cdsHora2AfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmHoras.cdsHoraItem2AfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsHora.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates( -1 );

 if dsState in [dsEdit, dsInsert] then
    cdsHora.Edit;
end;

procedure TdmHoras.cdsHoraItem2AfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsHora.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates( -1 );

 if dsState in [dsEdit, dsInsert] then
    cdsHora.Edit;
end;

procedure TdmHoras.cdsHoraAfterDelete(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);

end;

procedure TdmHoras.cdsHoraAfterPost(DataSet: TDataSet);
begin
 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates(-1);
end;

procedure TdmHoras.cdsHoraitemAfterDelete(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsHora.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates( -1 );

 if dsState in [dsEdit, dsInsert] then
    cdsHora.Edit;
end;

procedure TdmHoras.cdsHoraitemAfterPost(DataSet: TDataSet);
var dsState : TDataSetState;
begin
 dsState := cdsHora.State;

 if ( DataSet as TCustomClientDataSet ).ChangeCount > 0 then
    ( DataSet as TCustomClientDataSet ).ApplyUpdates( -1 );

 if dsState in [dsEdit, dsInsert] then
    cdsHora.Edit;
end;

end.
