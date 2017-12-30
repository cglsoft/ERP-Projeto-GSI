object dmCEP: TdmCEP
  OldCreateOrder = False
  Left = 248
  Top = 117
  Height = 260
  Width = 333
  object sqlconnCEP: TSQLConnection
    Connected = True
    ConnectionName = 'CEP'
    DriverName = 'Oracle'
    GetDriverFunc = 'getSQLDriverORACLE'
    LibraryName = 'dbexpora.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Oracle'
      'BlobSize=-1'
      'DataBase=toshiba'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Password=cep'
      'Oracle TransIsolation=ReadCommited'
      'User_Name=cep')
    VendorLib = 'OCI.DLL'
    Left = 32
    Top = 8
  end
  object sqlcds: TSQLClientDataSet
    Aggregates = <>
    Options = [poFetchDetailsOnDemand, poAllowCommandText]
    ObjectView = True
    Params = <>
    OnReconcileError = sqlcdsReconcileError
    DBConnection = sqlconnCEP
    Left = 112
    Top = 8
  end
  object sqlGeral: TSQLQuery
    NoMetadata = True
    SQLConnection = sqlconnCEP
    Params = <>
    SQL.Strings = (
      'truncate table cep.paises')
    Left = 112
    Top = 56
  end
  object dssqlcdsPesq: TDataSource
    DataSet = cdsPesq
    Left = 32
    Top = 104
  end
  object sqlPesq: TSQLQuery
    NoMetadata = True
    SQLConnection = sqlconnCEP
    Params = <>
    SQL.Strings = (
      'SELECT'
      
        '   A.SIGLAUFID, A.ENDERECO , A.NOMEBAIRROLOGRADOURO , A.NOMELOCA' +
        'LIDADE , D.NOMEUF , A.CEPID'
      ' , E.NOMEPAISPORTUGUES'
      'FROM'
      '   CEP.LOCALIDADES B'
      ' , CEP.BAIRROS C'
      ' , CEP.UNIDADESFEDERACAO D'
      ' , CEP.PAISES E'
      ' , CEP.LOGRADOUROS A'
      'WHERE'
      '     (B.SIGLAUFID = D.SIGLAUFID)'
      ' AND (C.SIGLAUFID = D.SIGLAUFID)'
      ' AND (B.SIGLAPAISID = E.SIGLAPAISID)'
      ' AND (D.SIGLAPAISID = E.SIGLAPAISID)'
      ' AND (A.LOCALIDADEDNEID = B.LOCALIDADEDNEID)'
      ' AND (A.BAIRRODNEID = C.BAIRRODNEID)'
      ' AND (ENDERECO LIKE '#39'%JOANA VERA MALDONADO%'#39')'
      ' AND (CEPID=06770150)'
      ' AND (ROWNUM < 100)')
    Left = 112
    Top = 104
    object sqlPesqSIGLAUFID: TStringField
      FieldName = 'SIGLAUFID'
      Size = 2
    end
    object sqlPesqENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 173
    end
    object sqlPesqNOMEBAIRROLOGRADOURO: TStringField
      FieldName = 'NOMEBAIRROLOGRADOURO'
      Size = 72
    end
    object sqlPesqNOMELOCALIDADE: TStringField
      FieldName = 'NOMELOCALIDADE'
      Size = 72
    end
    object sqlPesqNOMEUF: TStringField
      FieldName = 'NOMEUF'
      Size = 72
    end
    object sqlPesqCEPID: TBCDField
      FieldName = 'CEPID'
      Precision = 8
      Size = 0
    end
    object sqlPesqNOMEPAISPORTUGUES: TStringField
      FieldName = 'NOMEPAISPORTUGUES'
      Size = 72
    end
  end
  object dsprovPesq: TDataSetProvider
    DataSet = sqlPesq
    Constraints = True
    Left = 184
    Top = 104
  end
  object cdsPesq: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsprovPesq'
    Left = 264
    Top = 104
    object cdsPesqSIGLAUFID: TStringField
      FieldName = 'SIGLAUFID'
      Size = 2
    end
    object cdsPesqENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 173
    end
    object cdsPesqNOMEBAIRROLOGRADOURO: TStringField
      FieldName = 'NOMEBAIRROLOGRADOURO'
      Size = 72
    end
    object cdsPesqNOMELOCALIDADE: TStringField
      FieldName = 'NOMELOCALIDADE'
      Size = 72
    end
    object cdsPesqNOMEUF: TStringField
      FieldName = 'NOMEUF'
      Size = 72
    end
    object cdsPesqCEPID: TBCDField
      FieldName = 'CEPID'
      DisplayFormat = '00000-000;1;'
      EditFormat = '00000-000;1;'
      Precision = 8
      Size = 0
    end
    object cdsPesqNOMEPAISPORTUGUES: TStringField
      FieldName = 'NOMEPAISPORTUGUES'
      Size = 72
    end
  end
  object sqlUF: TSQLQuery
    NoMetadata = True
    SQLConnection = sqlconnCEP
    Params = <>
    SQL.Strings = (
      'SELECT * FROM CEP.UNIDADESFEDERACAO')
    Left = 112
    Top = 160
    object sqlUFSIGLAUFID: TStringField
      FieldName = 'SIGLAUFID'
      Required = True
      Size = 2
    end
    object sqlUFSIGLAPAISID: TStringField
      FieldName = 'SIGLAPAISID'
      Size = 2
    end
    object sqlUFNOMEUF: TStringField
      FieldName = 'NOMEUF'
      Size = 72
    end
  end
end
