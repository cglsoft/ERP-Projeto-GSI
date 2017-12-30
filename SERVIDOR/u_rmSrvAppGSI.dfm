object SrvAppGSI: TSrvAppGSI
  OldCreateOrder = False
  OnCreate = RemoteDataModuleCreate
  Height = 328
  Width = 416
  object sqldtsDataInspector: TSQLDataSet
    GetMetadata = False
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlcnnTOSHIBA
    Left = 132
    Top = 8
  end
  object dsprvDataInspector: TDataSetProvider
    DataSet = sqldtsDataInspector
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 236
    Top = 8
  end
  object sqldtsDynamic: TSQLDataSet
    GetMetadata = False
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlcnnTOSHIBA
    Left = 132
    Top = 56
  end
  object dsprvDynamic: TDataSetProvider
    DataSet = sqldtsDynamic
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 236
    Top = 56
  end
  object cdsDynamic: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsprvDynamic'
    Left = 332
    Top = 56
  end
  object sqlqryGeral: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlcnnTOSHIBA
    Left = 132
    Top = 120
  end
  object sqlcnnTOSHIBA: TSQLConnection
    ConnectionName = 'Oracle by Core Lab'
    DriverName = 'Oracle by Core Lab'
    GetDriverFunc = 'getSQLDriverORA'
    LibraryName = 'dbexpoda30.dll'
    LoginPrompt = False
    Params.Strings = (
      'BlobSize=-1'
      'DataBase=TOSHIBA'
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
    AfterConnect = sqlcnnTOSHIBAAfterConnect
    Left = 32
    Top = 8
  end
  object sqlstgProcDynamic: TSQLStoredProc
    SchemaName = 'GSI'
    MaxBlobSize = -1
    Params = <>
    PackageName = 'PKG_BI_VENDAS'
    SQLConnection = sqlcnnTOSHIBA
    StoredProcName = 'GSI.PC_EXECUTAR'
    Left = 136
    Top = 176
  end
end
