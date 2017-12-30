object dmDicionario: TdmDicionario
  OldCreateOrder = False
  Height = 301
  Width = 479
  object sqlcnnTOSHIBA: TSQLConnection
    ConnectionName = 'TOSHIBA'
    DriverName = 'Oracle'
    GetDriverFunc = 'getSQLDriverORACLE'
    LibraryName = 'dbxora30.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Oracle'
      'DataBase=TMBCGL'
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
    AfterConnect = sqlcnnTOSHIBAAfterConnect
    Left = 32
    Top = 16
  end
  object sqlqryDicionario: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM AS_DICIONARIO'
      'ORDER BY DICIONARIOID')
    SQLConnection = sqlcnnTOSHIBA
    Left = 120
    Top = 16
    object sqlqryDicionarioDICIONARIOID: TBCDField
      FieldName = 'DICIONARIOID'
      Required = True
      Precision = 8
      Size = 0
    end
    object sqlqryDicionarioNOMETABELA: TStringField
      FieldName = 'NOMETABELA'
      Size = 50
    end
    object sqlqryDicionarioNOMECAMPO: TStringField
      FieldName = 'NOMECAMPO'
      Size = 50
    end
    object sqlqryDicionarioNOVONOMECAMPO: TStringField
      FieldName = 'NOVONOMECAMPO'
      Size = 50
    end
    object sqlqryDicionarioITENS: TStringField
      FieldName = 'ITENS'
      Size = 200
    end
    object sqlqryDicionarioTITULOITENS: TStringField
      FieldName = 'TITULOITENS'
      Size = 200
    end
  end
  object dsprvDicionario: TDataSetProvider
    DataSet = sqlqryDicionario
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 208
    Top = 16
  end
  object cdsDicionario: TClientDataSet
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
    Params = <>
    ProviderName = 'dsprvDicionario'
    StoreDefs = True
    OnNewRecord = cdsDicionarioNewRecord
    OnReconcileError = cdsDicionarioReconcileError
    Left = 288
    Top = 16
    object cdsDicionarioDICIONARIOID: TBCDField
      FieldName = 'DICIONARIOID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsDicionarioNOMETABELA: TStringField
      FieldName = 'NOMETABELA'
      Size = 50
    end
    object cdsDicionarioNOMECAMPO: TStringField
      FieldName = 'NOMECAMPO'
      Size = 50
    end
    object cdsDicionarioNOVONOMECAMPO: TStringField
      FieldName = 'NOVONOMECAMPO'
      Size = 50
    end
    object cdsDicionarioITENS: TStringField
      FieldName = 'ITENS'
      Size = 200
    end
    object cdsDicionarioTITULOITENS: TStringField
      FieldName = 'TITULOITENS'
      Size = 200
    end
  end
  object sqlqryGeral: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlcnnTOSHIBA
    Left = 120
    Top = 72
  end
  object dsprovGeral: TDataSetProvider
    DataSet = sqlqryGeral
    Options = [poAllowCommandText]
    Left = 208
    Top = 72
  end
  object cdsGeral: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsprovGeral'
    OnReconcileError = cdsGeralReconcileError
    Left = 288
    Top = 72
  end
  object dsDicionario: TDataSource
    DataSet = cdsDicionario
    Left = 368
    Top = 16
  end
  object sqlqry: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlcnnTOSHIBA
    Left = 120
    Top = 136
  end
  object dsprov: TDataSetProvider
    DataSet = sqlqry
    Options = [poAllowCommandText]
    Left = 208
    Top = 136
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsprov'
    OnReconcileError = cdsGeralReconcileError
    Left = 288
    Top = 136
  end
end
