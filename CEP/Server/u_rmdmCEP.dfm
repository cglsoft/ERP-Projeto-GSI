object CEPSRV: TCEPSRV
  OldCreateOrder = False
  OnCreate = RemoteDataModuleCreate
  OnDestroy = RemoteDataModuleDestroy
  Height = 250
  Width = 317
  object sqlGeral: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'truncate table cp_paises')
    SQLConnection = sqlconnCEP
    Left = 112
    Top = 64
  end
  object dssqlcdsPesq: TDataSource
    Left = 32
    Top = 64
  end
  object sqlPesq: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      
        '   A.SIGLAUFID, A.TIPOLOGRADOURO, A.PREPOSICAO, A.TITULOPATENTE,' +
        ' A.NOMELOGRADOURO, A.BAIRROLOGRADOURO , A.NOMELOCALIDADE , D.NOM' +
        'EUF , A.CEPID'
      ' , E.NOMEPAISPORTUGUES'
      'FROM'
      '   CP_LOCALIDADES B'
      ' , CP_BAIRROS C'
      ' , CP_UNIDADESFEDERACAO D'
      ' , CP_PAISES E'
      ' , CP_LOGRADOUROS A'
      'WHERE'
      '     (B.SIGLAUFID = D.SIGLAUFID)'
      ' AND (C.SIGLAUFID = D.SIGLAUFID)'
      ' AND (B.SIGLAPAISID = E.SIGLAPAISID)'
      ' AND (D.SIGLAPAISID = E.SIGLAPAISID)'
      ' AND (A.LOCALIDADEDNEID = B.LOCALIDADEDNEID)'
      ' AND (A.BAIRRODNEID = C.BAIRRODNEID)'
      ' AND (NOMELOGRADOURO LIKE '#39'%JOANA VERA MALDONADO%'#39')'
      ' AND (CEPID=06770150)'
      ' AND (ROWNUM < 100)')
    SQLConnection = sqlconnCEP
    Left = 112
    Top = 112
    object sqlPesqSIGLAUFID: TStringField
      FieldName = 'SIGLAUFID'
      Size = 2
    end
    object sqlPesqTIPOLOGRADOURO: TStringField
      FieldName = 'TIPOLOGRADOURO'
      Size = 26
    end
    object sqlPesqPREPOSICAO: TStringField
      FieldName = 'PREPOSICAO'
      Size = 3
    end
    object sqlPesqTITULOPATENTE: TStringField
      FieldName = 'TITULOPATENTE'
      Size = 72
    end
    object sqlPesqNOMELOGRADOURO: TStringField
      FieldName = 'NOMELOGRADOURO'
      Size = 72
    end
    object sqlPesqBAIRROLOGRADOURO: TStringField
      FieldName = 'BAIRROLOGRADOURO'
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
  object provPesq: TDataSetProvider
    DataSet = sqlPesq
    Left = 184
    Top = 112
  end
  object sqlUF: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM CP_UNIDADESFEDERACAO')
    SQLConnection = sqlconnCEP
    Left = 112
    Top = 168
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
  object provCEP: TDataSetProvider
    DataSet = sqlCEP
    Left = 184
    Top = 8
  end
  object provUF: TDataSetProvider
    DataSet = sqlUF
    Left = 184
    Top = 168
  end
  object sqlCEP: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlconnCEP
    Left = 112
    Top = 8
  end
  object cdsCEP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provCEP'
    Left = 248
    Top = 8
  end
  object sqlconnCEP: TSQLConnection
    ConnectionName = 'Oracle by Core Lab'
    DriverName = 'Oracle by Core Lab'
    GetDriverFunc = 'getSQLDriverORA'
    LibraryName = 'dbexpoda30.dll'
    LoginPrompt = False
    Params.Strings = (
      'BlobSize=-1'
      'DataBase=CGLSOFT'
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
    Left = 24
    Top = 8
  end
end
