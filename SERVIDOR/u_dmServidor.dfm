object dmServidor: TdmServidor
  OldCreateOrder = False
  Height = 120
  Width = 447
  object cdsUserAtivo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsprvUserAtivo'
    Left = 300
    Top = 12
    object cdsUserAtivoUSERATIVOID: TBCDField
      FieldName = 'USERATIVOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
      Precision = 8
      Size = 0
    end
    object cdsUserAtivoUSUARIOID: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 18
      FieldName = 'USUARIOID'
    end
    object cdsUserAtivoDATACONECCAO: TSQLTimeStampField
      DisplayLabel = 'Data/Hora Conec'#231#227'o'
      DisplayWidth = 20
      FieldName = 'DATACONECCAO'
    end
    object cdsUserAtivoIP: TStringField
      DisplayWidth = 13
      FieldName = 'IP'
      Size = 50
    end
    object cdsUserAtivoNOMEMAQUINA: TStringField
      DisplayLabel = 'Nome da m'#225'quina'
      DisplayWidth = 28
      FieldName = 'NOMEMAQUINA'
      Size = 50
    end
  end
  object dsUserAtivo: TDataSource
    DataSet = cdsUserAtivo
    Left = 384
    Top = 12
  end
  object dsprvUserAtivo: TDataSetProvider
    DataSet = sqldtsUserAtivo
    Left = 208
    Top = 12
  end
  object sqldtsUserAtivo: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT'#13#10'  AS_USERATIVO.USERATIVOID,'#13#10'  AS_USERATIVO.USUARIOID,'#13#10 +
      '  AS_USERATIVO.DATACONECCAO,'#13#10'  AS_USERATIVO.IP,'#13#10'  AS_USERATIVO' +
      '.NOMEMAQUINA'#13#10'  FROM'#13#10'  AS_USERATIVO AS_USERATIVO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlcnnTOSHIBA
    Left = 122
    Top = 12
    object sqldtsUserAtivoUSERATIVOID: TBCDField
      FieldName = 'USERATIVOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsUserAtivoUSUARIOID: TStringField
      FieldName = 'USUARIOID'
    end
    object sqldtsUserAtivoDATACONECCAO: TSQLTimeStampField
      FieldName = 'DATACONECCAO'
    end
    object sqldtsUserAtivoIP: TStringField
      FieldName = 'IP'
      Size = 50
    end
    object sqldtsUserAtivoNOMEMAQUINA: TStringField
      FieldName = 'NOMEMAQUINA'
      Size = 50
    end
  end
  object sqlcnnTOSHIBA: TSQLConnection
    ConnectionName = 'Oracle by Core Lab'
    DriverName = 'Oracle by Core Lab'
    GetDriverFunc = 'getSQLDriverORA'
    LibraryName = 'dbexpoda30.dll'
    LoginPrompt = False
    Params.Strings = (
      'BlobSize=-1'
      'DataBase=TMBCGL'
      'DriverName=Oracle by Core Lab'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Password=novaera6'
      'Oracle TransIsolation=ReadCommited'
      'RoleName=Normal'
      'User_Name=gsi'
      'LongStrings=True'
      'EnableBCD=True'
      'InternalName='
      'UseQuoteChar=False'
      'FetchAll=False'
      'CharLength=0'
      'Charset='
      'UseUnicode=False')
    VendorLib = 'OCI.DLL'
    Left = 32
    Top = 16
  end
end
