object DMMigra: TDMMigra
  OldCreateOrder = False
  Height = 468
  Width = 597
  object dbMigra: TDatabase
    AliasName = 'EST_FAT_EMPRESA_001'
    Connected = True
    DatabaseName = 'AMigra'
    LoginPrompt = False
    SessionName = 'Default'
    Left = 60
    Top = 8
  end
  object dbMigra2: TDatabase
    AliasName = 'IMP_CADASTRO'
    DatabaseName = 'Amigra2'
    SessionName = 'Default'
    Left = 112
    Top = 8
  end
  object Tb3: TTable
    DatabaseName = 'Amigra2'
    Left = 248
    Top = 8
  end
  object Tb1: TTable
    DatabaseName = 'AMigra'
    Left = 164
    Top = 8
  end
  object Tb2: TTable
    DatabaseName = 'AMigra'
    Left = 208
    Top = 8
  end
  object qryGeral: TQuery
    DatabaseName = 'AMigra'
    Left = 160
    Top = 64
  end
  object sqldsUpdate: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlcnnNOVO
    Left = 344
    Top = 168
  end
  object SQLCon: TSQLConnection
    ConnectionName = 'TOSHIBA'
    DriverName = 'Oracle'
    GetDriverFunc = 'getSQLDriverORACLE'
    LibraryName = 'dbxora30.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Oracle'
      'DataBase=TOSHIBA'
      'User_Name=GSI'
      'Password=NOVAERA6'
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Oracle TransIsolation=ReadCommited'
      'RowsetSize=20'
      'OS Authentication=False'
      'Multiple Transaction=True'
      'Trim Char=False'
      'Decimal Separator=.')
    VendorLib = 'oci.dll'
    Left = 8
    Top = 9
  end
  object Qr2: TQuery
    DatabaseName = 'AMigra'
    Left = 108
    Top = 64
  end
  object Seq: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLCon
    Left = 36
    Top = 184
  end
  object Teste: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLCon
    Left = 104
    Top = 184
  end
  object Teste2: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLCon
    Left = 155
    Top = 184
  end
  object tbMaster: TTable
    DatabaseName = 'AMigra'
    Left = 352
    Top = 8
  end
  object tbDetails: TTable
    DatabaseName = 'AMigra'
    Left = 408
    Top = 8
  end
  object dsMaster: TDataSource
    DataSet = tbMaster
    Left = 352
    Top = 56
  end
  object dsDetails: TDataSource
    DataSet = tbDetails
    Left = 408
    Top = 56
  end
  object qryItemSerie: TQuery
    DatabaseName = 'AMigra'
    Left = 216
    Top = 64
  end
  object sqldtsSC1: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLCon
    Left = 336
    Top = 232
  end
  object sqldtsSC2: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLCon
    Left = 336
    Top = 280
  end
  object dsprvSC1: TDataSetProvider
    DataSet = sqldtsSC1
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 408
    Top = 232
  end
  object dsprvSC2: TDataSetProvider
    DataSet = sqldtsSC2
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 408
    Top = 280
  end
  object SC1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsprvSC1'
    OnReconcileError = SC1ReconcileError
    Left = 472
    Top = 232
  end
  object SC2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsprvSC2'
    OnReconcileError = SC2ReconcileError
    Left = 472
    Top = 280
  end
  object sqldtsDynamic: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLCon
    Left = 40
    Top = 240
  end
  object dsprvDynamic: TDataSetProvider
    DataSet = sqldtsDynamic
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 112
    Top = 240
  end
  object cdsDynamic: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsprvDynamic'
    Left = 184
    Top = 240
  end
  object Qr1: TQuery
    DatabaseName = 'AMigra'
    Left = 60
    Top = 64
  end
  object tbUnidadeFED: TTable
    DatabaseName = 'EST_FAT_CADASTRO'
    TableName = 'UNIDADE_FED.DB'
    Left = 272
    Top = 208
  end
  object SqlGeral: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLCon
    Left = 264
    Top = 128
  end
  object testeSef: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLCon
    Left = 139
    Top = 120
  end
  object tbTecnico: TTable
    DatabaseName = 'Ordem de Servico'
    TableName = 'TECNICOS.DB'
    Left = 480
    Top = 16
    object tbTecnicoCODIGO: TFloatField
      FieldName = 'CODIGO'
    end
    object tbTecnicoPOPULAR: TStringField
      FieldName = 'POPULAR'
      Size = 10
    end
    object tbTecnicoNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object tbTecnicoDDD1: TStringField
      FieldName = 'DDD1'
      Size = 4
    end
    object tbTecnicoFONE1: TStringField
      FieldName = 'FONE1'
      Size = 9
    end
    object tbTecnicoRAMAL1: TStringField
      FieldName = 'RAMAL1'
      Size = 5
    end
    object tbTecnicoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 70
    end
    object tbTecnicoCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object tbTecnicoESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object tbTecnicoCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object tbTecnicoCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 40
    end
    object tbTecnicoDDD2: TStringField
      FieldName = 'DDD2'
      Size = 4
    end
    object tbTecnicoFONE2: TStringField
      FieldName = 'FONE2'
      Size = 9
    end
    object tbTecnicoRAMAL2: TStringField
      FieldName = 'RAMAL2'
      Size = 5
    end
    object tbTecnicoRG: TStringField
      FieldName = 'RG'
      Size = 13
    end
    object tbTecnicoCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object tbTecnicoPAS: TStringField
      FieldName = 'PAS'
      Size = 10
    end
    object tbTecnicoESPTEC: TStringField
      FieldName = 'ESPTEC'
      Size = 3
    end
    object tbTecnicoFILIAL: TStringField
      FieldName = 'FILIAL'
      Size = 1
    end
    object tbTecnicoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 10
    end
  end
  object sqlcnnNOVO: TSQLConnection
    ConnectionName = 'TOSHIBA'
    DriverName = 'Oracle'
    GetDriverFunc = 'getSQLDriverORACLE'
    LibraryName = 'dbxora30.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Oracle'
      'DataBase=TOSHIBA'
      'User_Name=GSI'
      'Password=NOVAERA6'
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Oracle TransIsolation=ReadCommited'
      'RowsetSize=20'
      'OS Authentication=False'
      'Multiple Transaction=True'
      'Trim Char=False'
      'Decimal Separator=.')
    VendorLib = 'oci.dll'
    Left = 32
    Top = 312
  end
  object sqlqryNOVO: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM AS_DICIONARIO'
      'ORDER BY DICIONARIOID')
    SQLConnection = sqlcnnNOVO
    Left = 120
    Top = 312
  end
  object dsprvNOVO: TDataSetProvider
    DataSet = sqlqryNOVO
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 208
    Top = 312
  end
  object cdsNOVO: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DICIONARIOID'
        Attributes = [faRequired]
        DataType = ftBCD
        Precision = 8
        Size = 4
      end
      item
        Name = 'NOMETABELA'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'NOMECAMPO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'NOMETABELAPESQ'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'NOMECAMPOTABELAPESQ'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'NOVONOMECAMPO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ITENS'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'TITULOITENS'
        DataType = ftString
        Size = 200
      end>
    IndexDefs = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvNOVO'
    StoreDefs = True
    OnReconcileError = SC1ReconcileError
    Left = 288
    Top = 312
  end
  object sqlcnnANTIGO: TSQLConnection
    ConnectionName = 'TOSHIBA'
    DriverName = 'Oracle'
    GetDriverFunc = 'getSQLDriverORACLE'
    LibraryName = 'dbxora30.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Oracle'
      'DataBase=TOSHIBA'
      'User_Name=GSI'
      'Password=NOVAERA6'
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Oracle TransIsolation=ReadCommited'
      'RowsetSize=20'
      'OS Authentication=False'
      'Multiple Transaction=True'
      'Trim Char=False'
      'Decimal Separator=.')
    VendorLib = 'oci.dll'
    Left = 32
    Top = 368
  end
  object sqlqryANTIGO: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM AS_DICIONARIO'
      'ORDER BY DICIONARIOID')
    SQLConnection = sqlcnnANTIGO
    Left = 120
    Top = 368
  end
  object dsprvANTIGO: TDataSetProvider
    DataSet = sqlqryANTIGO
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 208
    Top = 368
  end
  object cdsANTIGO: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DICIONARIOID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOMETABELA'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'NOMECAMPO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'NOMETABELAPESQ'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'NOMECAMPOTABELAPESQ'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'NOVONOMECAMPO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ITENS'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'TITULOITENS'
        DataType = ftString
        Size = 200
      end>
    IndexDefs = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvANTIGO'
    StoreDefs = True
    OnReconcileError = SC1ReconcileError
    Left = 288
    Top = 368
  end
end
