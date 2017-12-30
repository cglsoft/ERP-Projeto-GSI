object dmHoras: TdmHoras
  OldCreateOrder = False
  Height = 459
  Width = 538
  object SQLConnection: TSQLConnection
    ConnectionName = 'OracleConnection'
    DriverName = 'Oracle'
    GetDriverFunc = 'getSQLDriverORACLE'
    LibraryName = 'dbxora30.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Oracle'
      'DataBase=TOSHIBA'
      'User_Name=GSI'
      'Password=NOVAERA6'
      'RowsetSize=20'
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Oracle TransIsolation=ReadCommited'
      'OS Authentication=False'
      'Multiple Transaction=True'
      'Trim Char=False'
      'Decimal Separator=.')
    VendorLib = 'oci.dll'
    Left = 40
    Top = 9
  end
  object sqlHoraItem: TSQLDataSet
    CommandText = 
      'SELECT RD_HORAITEM.HORAID, '#13#10'       RD_HORAITEM.DATASERVICOID, '#13 +
      #10'       RD_HORAITEM.ITEMID, '#13#10'       RD_HORAITEM.OSID, '#13#10'       ' +
      'RD_HORAITEM.OPERACAOID, '#13#10'       RD_OPERACAO.OPERACAO L_OPERACAO' +
      ','#13#10'       RD_HORAITEM.HORAINI, '#13#10'       RD_HORAITEM.HORAFIM, '#13#10' ' +
      '      RD_HORAITEM.DIFERENCAHORATRAB, '#13#10'       RD_HORAITEM.DIFERE' +
      'NCAMINTRAB,'#13#10'       RD_HORAITEM.VLRSALDO, '#13#10'       RD_HORAITEM.H' +
      'ISTORICO, '#13#10'       RD_HORAITEM.USUARIO'#13#10'  FROM RD_HORAITEM,'#13#10'   ' +
      '    RD_OPERACAO  '#13#10' WHERE RD_OPERACAO.OPERACAOID(+) = RD_HORAITE' +
      'M.OPERACAOID'#13#10'       AND RD_HORAITEM.HORAID = :HORAID'
    DataSource = dsHoraServer
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBCD
        Name = 'HORAID'
        ParamType = ptInput
        Size = 34
      end>
    SQLConnection = SQLConnection
    Left = 32
    Top = 116
    object sqlHoraItemHORAID: TBCDField
      FieldName = 'HORAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqlHoraItemDATASERVICOID: TSQLTimeStampField
      FieldName = 'DATASERVICOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlHoraItemITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqlHoraItemOSID: TStringField
      FieldName = 'OSID'
      Size = 13
    end
    object sqlHoraItemOPERACAOID: TBCDField
      FieldName = 'OPERACAOID'
      Precision = 8
      Size = 0
    end
    object sqlHoraItemL_OPERACAO: TStringField
      FieldName = 'L_OPERACAO'
      ProviderFlags = []
      Size = 1
    end
    object sqlHoraItemHORAINI: TSQLTimeStampField
      FieldName = 'HORAINI'
    end
    object sqlHoraItemHORAFIM: TSQLTimeStampField
      FieldName = 'HORAFIM'
    end
    object sqlHoraItemDIFERENCAHORATRAB: TStringField
      FieldName = 'DIFERENCAHORATRAB'
      Size = 7
    end
    object sqlHoraItemDIFERENCAMINTRAB: TFMTBCDField
      FieldName = 'DIFERENCAMINTRAB'
      Precision = 14
      Size = 10
    end
    object sqlHoraItemVLRSALDO: TBCDField
      FieldName = 'VLRSALDO'
      Precision = 14
      Size = 2
    end
    object sqlHoraItemHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 200
    end
    object sqlHoraItemUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvHora: TDataSetProvider
    DataSet = sqlHora
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 105
    Top = 64
  end
  object dsMHora: TDataSource
    DataSet = cdsMHora
    Left = 401
    Top = 9
  end
  object cdsHoraItem: TClientDataSet
    Aggregates = <>
    DataSetField = cdsHorasqlHoraItem
    Params = <>
    AfterPost = cdsHoraItem2AfterPost
    AfterDelete = cdsHoraItem2AfterDelete
    Left = 205
    Top = 57
    object cdsHoraItemHORAID: TBCDField
      FieldName = 'HORAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsHoraItemDATASERVICOID: TSQLTimeStampField
      FieldName = 'DATASERVICOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsHoraItemITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsHoraItemOSID: TStringField
      FieldName = 'OSID'
      Size = 13
    end
    object cdsHoraItemOPERACAOID: TBCDField
      FieldName = 'OPERACAOID'
      Precision = 8
      Size = 0
    end
    object cdsHoraItemL_OPERACAO: TStringField
      FieldName = 'L_OPERACAO'
      ProviderFlags = []
      Size = 1
    end
    object cdsHoraItemHORAINI: TSQLTimeStampField
      FieldName = 'HORAINI'
    end
    object cdsHoraItemHORAFIM: TSQLTimeStampField
      FieldName = 'HORAFIM'
    end
    object cdsHoraItemDIFERENCAHORATRAB: TStringField
      FieldName = 'DIFERENCAHORATRAB'
      Size = 7
    end
    object cdsHoraItemDIFERENCAMINTRAB: TFMTBCDField
      FieldName = 'DIFERENCAMINTRAB'
      Precision = 14
      Size = 10
    end
    object cdsHoraItemVLRSALDO: TBCDField
      FieldName = 'VLRSALDO'
      Precision = 14
      Size = 2
    end
    object cdsHoraItemHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 200
    end
    object cdsHoraItemUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsHoraItem: TDataSource
    DataSet = cdsHoraItem
    Left = 291
    Top = 57
  end
  object cdsFeriado: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ddprvFeriado'
    Left = 204
    Top = 105
    object cdsFeriadoFERIADOID: TBCDField
      FieldName = 'FERIADOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsFeriadoDATAFERIADO: TSQLTimeStampField
      FieldName = 'DATAFERIADO'
    end
    object cdsFeriadoFILIALID: TBCDField
      FieldName = 'FILIALID'
      Precision = 8
      Size = 0
    end
    object cdsFeriadoFERIADOREGIONAL: TBCDField
      FieldName = 'FERIADOREGIONAL'
      Precision = 1
      Size = 0
    end
    object cdsFeriadoLIBERADOEMPRESA: TBCDField
      FieldName = 'LIBERADOEMPRESA'
      Precision = 1
      Size = 0
    end
    object cdsFeriadoDESCRICAOFERIADO: TStringField
      FieldName = 'DESCRICAOFERIADO'
      Size = 100
    end
  end
  object dsFeriado: TDataSource
    DataSet = sqlFeridado
    Left = 289
    Top = 105
  end
  object sqlFeridado: TSQLDataSet
    CommandText = 
      'SELECT FERIADOID, '#13#10'               DATAFERIADO, '#13#10'              ' +
      ' FILIALID, '#13#10'               FERIADOREGIONAL, '#13#10'               LI' +
      'BERADOEMPRESA, '#13#10'               DESCRICAOFERIADO'#13#10'FROM RD_FERIAD' +
      'O'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 32
    Top = 168
    object sqlFeridadoFERIADOID: TBCDField
      FieldName = 'FERIADOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqlFeridadoDATAFERIADO: TSQLTimeStampField
      FieldName = 'DATAFERIADO'
    end
    object sqlFeridadoFILIALID: TBCDField
      FieldName = 'FILIALID'
      Precision = 8
      Size = 0
    end
    object sqlFeridadoFERIADOREGIONAL: TBCDField
      FieldName = 'FERIADOREGIONAL'
      Precision = 1
      Size = 0
    end
    object sqlFeridadoLIBERADOEMPRESA: TBCDField
      FieldName = 'LIBERADOEMPRESA'
      Precision = 1
      Size = 0
    end
    object sqlFeridadoDESCRICAOFERIADO: TStringField
      FieldName = 'DESCRICAOFERIADO'
      Size = 100
    end
  end
  object ddprvFeriado: TDataSetProvider
    DataSet = sqlFeridado
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 105
    Top = 168
  end
  object sqlHora: TSQLDataSet
    CommandText = 
      'SELECT RD_HORA.HORAID,'#13#10'               EF_ENTIDADE.NOME L_NOMEFU' +
      'NCIONARIO,'#13#10'               EF_ENTIDADE.FILIALID L_FILIALID,'#13#10'   ' +
      '            RD_HORA.DATAABERTURA,'#13#10'               RD_HORA.VLRSAL' +
      'DO,'#13#10'               RD_HORA.DATAFECHAMENTO,'#13#10'               RD_H' +
      'ORA.BLOQUEADO'#13#10'    FROM RD_HORA,'#13#10'               EF_ENTIDADE'#13#10' W' +
      'HERE EF_ENTIDADE.ENTIDADEID(+) = RD_HORA.HORAID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 32
    Top = 64
    object sqlHoraHORAID: TBCDField
      FieldName = 'HORAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqlHoraL_NOMEFUNCIONARIO: TStringField
      FieldName = 'L_NOMEFUNCIONARIO'
      ProviderFlags = []
      Size = 100
    end
    object sqlHoraL_FILIALID: TBCDField
      FieldName = 'L_FILIALID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqlHoraDATAABERTURA: TSQLTimeStampField
      FieldName = 'DATAABERTURA'
    end
    object sqlHoraVLRSALDO: TBCDField
      FieldName = 'VLRSALDO'
      Precision = 14
      Size = 2
    end
    object sqlHoraDATAFECHAMENTO: TSQLTimeStampField
      FieldName = 'DATAFECHAMENTO'
    end
    object sqlHoraBLOQUEADO: TBCDField
      FieldName = 'BLOQUEADO'
      Precision = 1
      Size = 0
    end
  end
  object dsHoraServer: TDataSource
    DataSet = sqlHora
    Left = 105
    Top = 116
  end
  object cdsHora: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsprvHora'
    AfterPost = cdsHora2AfterPost
    AfterDelete = cdsHora2AfterDelete
    Left = 205
    Top = 9
    object cdsHoraHORAID: TBCDField
      FieldName = 'HORAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsHoraL_NOMEFUNCIONARIO: TStringField
      FieldName = 'L_NOMEFUNCIONARIO'
      ProviderFlags = []
      Size = 100
    end
    object cdsHoraL_FILIALID: TBCDField
      FieldName = 'L_FILIALID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object cdsHoraDATAABERTURA: TSQLTimeStampField
      FieldName = 'DATAABERTURA'
    end
    object cdsHoraVLRSALDO: TBCDField
      FieldName = 'VLRSALDO'
      Precision = 14
      Size = 2
    end
    object cdsHoraDATAFECHAMENTO: TSQLTimeStampField
      FieldName = 'DATAFECHAMENTO'
    end
    object cdsHoraBLOQUEADO: TBCDField
      FieldName = 'BLOQUEADO'
      Precision = 1
      Size = 0
    end
    object cdsHorasqlHoraItem: TDataSetField
      FieldName = 'sqlHoraItem'
    end
  end
  object dsHora: TDataSource
    DataSet = cdsHora
    Left = 289
    Top = 9
  end
  object cdsConfig: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsprvConfig'
    Left = 205
    Top = 154
    object cdsConfigHORAFILIALINI: TSQLTimeStampField
      FieldName = 'HORAFILIALINI'
    end
    object cdsConfigHORAFILIALFIM: TSQLTimeStampField
      FieldName = 'HORAFILIALFIM'
    end
    object cdsConfigHORAMATRIZINI: TSQLTimeStampField
      FieldName = 'HORAMATRIZINI'
    end
    object cdsConfigHORAMATRIZFIM: TSQLTimeStampField
      FieldName = 'HORAMATRIZFIM'
    end
  end
  object sqlConfig: TSQLDataSet
    CommandText = 
      'SELECT HORAFILIALINI, '#13#10'               HORAFILIALFIM, '#13#10'        ' +
      '       HORAMATRIZINI, '#13#10'               HORAMATRIZFIM'#13#10'    FROM A' +
      'S_CONFIG'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 32
    Top = 216
    object sqlConfigHORAFILIALINI: TSQLTimeStampField
      FieldName = 'HORAFILIALINI'
    end
    object sqlConfigHORAFILIALFIM: TSQLTimeStampField
      FieldName = 'HORAFILIALFIM'
    end
    object sqlConfigHORAMATRIZINI: TSQLTimeStampField
      FieldName = 'HORAMATRIZINI'
    end
    object sqlConfigHORAMATRIZFIM: TSQLTimeStampField
      FieldName = 'HORAMATRIZFIM'
    end
  end
  object dsprvConfig: TDataSetProvider
    DataSet = sqlConfig
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 106
    Top = 216
  end
  object dsConfig: TDataSource
    DataSet = cdsConfig
    Left = 289
    Top = 154
  end
  object sqlGeral: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 32
    Top = 264
  end
  object dsprvGeral: TDataSetProvider
    DataSet = sqlGeral
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 108
    Top = 265
  end
  object cdsGeral: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsprvGeral'
    Left = 351
    Top = 56
  end
  object sqlOsBcoHora: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  OS_OSBCOHORA.OSID,'#13#10'  OS_OSBCOHORA.ITEMID,'#13#10'  OS_OSBCO' +
      'HORA.DATASERVICO,'#13#10'  OS_OSBCOHORA.ENTIDADEID,'#13#10'  EF_ENTIDADE.NOM' +
      'E L_NOMEPOPULARTECNICO,'#13#10'  EF_ENTIDADE.FILIALID L_FILIALID,'#13#10'  O' +
      'S_OSBCOHORA.HORAINI,'#13#10'  OS_OSBCOHORA.HORAFIM,'#13#10'  OS_OSBCOHORA.LI' +
      'BERADO,'#13#10'  OS_OSBCOHORA.USUARIO'#13#10'  FROM'#13#10'  OS_OSBCOHORA,'#13#10'  EF_E' +
      'NTIDADE'#13#10' WHERE'#13#10'  EF_ENTIDADE.ENTIDADEID (+) = OS_OSBCOHORA.ENT' +
      'IDADEID'#13#10'  AND OS_OSBCOHORA.LIBERADO = 0'#13#10'  AND OS_OSBCOHORA.DAT' +
      'ASERVICO >= '#39'01/10/2004'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 32
    Top = 312
    object sqlOsBcoHoraOSID: TStringField
      FieldName = 'OSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 13
    end
    object sqlOsBcoHoraITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqlOsBcoHoraDATASERVICO: TSQLTimeStampField
      FieldName = 'DATASERVICO'
    end
    object sqlOsBcoHoraENTIDADEID: TBCDField
      FieldName = 'ENTIDADEID'
      Precision = 8
      Size = 0
    end
    object sqlOsBcoHoraL_NOMEPOPULARTECNICO: TStringField
      FieldName = 'L_NOMEPOPULARTECNICO'
      ProviderFlags = []
      Size = 100
    end
    object sqlOsBcoHoraL_FILIALID: TBCDField
      FieldName = 'L_FILIALID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqlOsBcoHoraHORAINI: TSQLTimeStampField
      FieldName = 'HORAINI'
    end
    object sqlOsBcoHoraHORAFIM: TSQLTimeStampField
      FieldName = 'HORAFIM'
    end
    object sqlOsBcoHoraLIBERADO: TBCDField
      FieldName = 'LIBERADO'
      Precision = 1
      Size = 0
    end
    object sqlOsBcoHoraUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvOsBcoHora: TDataSetProvider
    DataSet = sqlOsBcoHora
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 109
    Top = 312
  end
  object cdsMHora: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 352
    Top = 8
    Data = {
      580000009619E0BD010000001800000004000000000003000000580007486F72
      61696E69080008000000000007486F726146696D080008000000000008446966
      486F72617308000400000000000454696D6504000700000000000000}
    object cdsMHoraHoraini: TDateTimeField
      FieldName = 'Horaini'
    end
    object cdsMHoraHoraFim: TDateTimeField
      FieldName = 'HoraFim'
    end
    object cdsMHoraDifHoras: TFloatField
      FieldName = 'DifHoras'
    end
    object cdsMHoraTime: TTimeField
      FieldName = 'Time'
    end
  end
  object dsGeral: TDataSource
    DataSet = cdsGeral
    Left = 408
    Top = 56
  end
  object cdsOsBcoHora: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsprvOsBcoHora'
    Left = 207
    Top = 200
    object cdsOsBcoHoraOSID: TStringField
      FieldName = 'OSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 13
    end
    object cdsOsBcoHoraITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsOsBcoHoraDATASERVICO: TSQLTimeStampField
      FieldName = 'DATASERVICO'
    end
    object cdsOsBcoHoraENTIDADEID: TBCDField
      FieldName = 'ENTIDADEID'
      Precision = 8
      Size = 0
    end
    object cdsOsBcoHoraL_NOMEPOPULARTECNICO: TStringField
      FieldName = 'L_NOMEPOPULARTECNICO'
      ProviderFlags = []
      Size = 100
    end
    object cdsOsBcoHoraL_FILIALID: TBCDField
      FieldName = 'L_FILIALID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object cdsOsBcoHoraHORAINI: TSQLTimeStampField
      FieldName = 'HORAINI'
    end
    object cdsOsBcoHoraHORAFIM: TSQLTimeStampField
      FieldName = 'HORAFIM'
    end
    object cdsOsBcoHoraLIBERADO: TBCDField
      FieldName = 'LIBERADO'
      Precision = 1
      Size = 0
    end
    object cdsOsBcoHoraUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsOsBcoHora: TDataSource
    DataSet = cdsOsBcoHora
    Left = 288
    Top = 200
  end
  object sqlBancoHora: TSQLDataSet
    CommandText = 
      'SELECT RD_BANCOHORA.BANCOHORAID,'#13#10'               RD_BANCOHORA.DA' +
      'TASOLICITACAO,'#13#10'               RD_BANCOHORA.FUNCIONARIOID,'#13#10'    ' +
      '           RD_BANCOHORA.TIPODESPESAOS,'#13#10'               RD_BANCOH' +
      'ORA.OSID,'#13#10'               RD_BANCOHORA.OPERACAOID,'#13#10'            ' +
      '   RD_BANCOHORA.HORAINI,'#13#10'               RD_BANCOHORA.HORAFIM,'#13#10 +
      '               RD_BANCOHORA.DIFERENCAHORATRAB,'#13#10'               R' +
      'D_BANCOHORA.DIFERENCAMINTRAB,'#13#10'               RD_BANCOHORA.LIBER' +
      'ADO,'#13#10'               RD_BANCOHORA.USUARIO'#13#10'   FROM  RD_BANCOHORA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 32
    Top = 360
    object sqlBancoHoraBANCOHORAID: TBCDField
      FieldName = 'BANCOHORAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqlBancoHoraDATASOLICITACAO: TSQLTimeStampField
      FieldName = 'DATASOLICITACAO'
    end
    object sqlBancoHoraFUNCIONARIOID: TBCDField
      FieldName = 'FUNCIONARIOID'
      Precision = 8
      Size = 0
    end
    object sqlBancoHoraTIPODESPESAOS: TStringField
      FieldName = 'TIPODESPESAOS'
      Size = 1
    end
    object sqlBancoHoraOSID: TStringField
      FieldName = 'OSID'
      Size = 13
    end
    object sqlBancoHoraOPERACAOID: TBCDField
      FieldName = 'OPERACAOID'
      Precision = 8
      Size = 0
    end
    object sqlBancoHoraHORAINI: TSQLTimeStampField
      FieldName = 'HORAINI'
    end
    object sqlBancoHoraHORAFIM: TSQLTimeStampField
      FieldName = 'HORAFIM'
    end
    object sqlBancoHoraDIFERENCAHORATRAB: TStringField
      FieldName = 'DIFERENCAHORATRAB'
      Size = 7
    end
    object sqlBancoHoraDIFERENCAMINTRAB: TFMTBCDField
      FieldName = 'DIFERENCAMINTRAB'
      Precision = 14
      Size = 10
    end
    object sqlBancoHoraLIBERADO: TBCDField
      FieldName = 'LIBERADO'
      Precision = 1
      Size = 0
    end
    object sqlBancoHoraUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvBancoHora: TDataSetProvider
    DataSet = sqlBancoHora
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 112
    Top = 360
  end
  object cdsBancoHora: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsprvBancoHora'
    Left = 208
    Top = 248
    object cdsBancoHoraBANCOHORAID: TBCDField
      FieldName = 'BANCOHORAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsBancoHoraDATASOLICITACAO: TSQLTimeStampField
      FieldName = 'DATASOLICITACAO'
    end
    object cdsBancoHoraFUNCIONARIOID: TBCDField
      FieldName = 'FUNCIONARIOID'
      Precision = 8
      Size = 0
    end
    object cdsBancoHoraTIPODESPESAOS: TStringField
      FieldName = 'TIPODESPESAOS'
      Size = 1
    end
    object cdsBancoHoraOSID: TStringField
      FieldName = 'OSID'
      Size = 13
    end
    object cdsBancoHoraOPERACAOID: TBCDField
      FieldName = 'OPERACAOID'
      Precision = 8
      Size = 0
    end
    object cdsBancoHoraHORAINI: TSQLTimeStampField
      FieldName = 'HORAINI'
    end
    object cdsBancoHoraHORAFIM: TSQLTimeStampField
      FieldName = 'HORAFIM'
    end
    object cdsBancoHoraDIFERENCAHORATRAB: TStringField
      FieldName = 'DIFERENCAHORATRAB'
      Size = 7
    end
    object cdsBancoHoraDIFERENCAMINTRAB: TFMTBCDField
      FieldName = 'DIFERENCAMINTRAB'
      Precision = 14
      Size = 10
    end
    object cdsBancoHoraLIBERADO: TBCDField
      FieldName = 'LIBERADO'
      Precision = 1
      Size = 0
    end
    object cdsBancoHoraUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsBancoHora: TDataSource
    DataSet = cdsBancoHora
    Left = 288
    Top = 248
  end
end
