object Form1: TForm1
  Left = 192
  Top = 114
  Width = 544
  Height = 375
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 48
    Top = 136
    Width = 137
    Height = 25
    Caption = 'Processar Atualiza'#231#227'o'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 192
    Top = 136
    Width = 137
    Height = 25
    Caption = 'Atualizar BD'
    TabOrder = 1
    OnClick = Button2Click
  end
  object sqlcnnTOSHIBA: TSQLConnection
    ConnectionName = 'TOSHIBA'
    DriverName = 'Oracle'
    GetDriverFunc = 'getSQLDriverORACLE'
    LibraryName = 'dbexpora.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Oracle'
      'BlobSize=-1'
      'DataBase=TOSHIBA'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Password=gsi'
      'Oracle TransIsolation=ReadCommited'
      'User_Name=gsi')
    VendorLib = 'OCI.DLL'
    Connected = True
    Left = 32
    Top = 16
  end
  object sqldtsNovo: TSQLDataSet
    NoMetadata = True
    CommandText = 'SELECT *'#13#10'FROM'#13#10'PP_CATALOGO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlcnnTOSHIBA
    Left = 136
    Top = 16
    object sqldtsNovoMODELOID: TStringField
      FieldName = 'MODELOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object sqldtsNovoDESCRICAOPORTUGUES: TStringField
      FieldName = 'DESCRICAOPORTUGUES'
      Size = 100
    end
    object sqldtsNovoDESCRICAOINGLES: TStringField
      FieldName = 'DESCRICAOINGLES'
      Size = 100
    end
    object sqldtsNovoCOMENTARIO: TStringField
      FieldName = 'COMENTARIO'
      Size = 100
    end
    object sqldtsNovoGRUPOID: TStringField
      FieldName = 'GRUPOID'
      Size = 5
    end
    object sqldtsNovoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object sqldtsNovoFORNECEDORID: TBCDField
      FieldName = 'FORNECEDORID'
      Precision = 8
      Size = 0
    end
    object sqldtsNovoCUSTOHORAID: TBCDField
      FieldName = 'CUSTOHORAID'
      Precision = 8
      Size = 0
    end
    object sqldtsNovoREGANVISAID: TStringField
      FieldName = 'REGANVISAID'
      Size = 40
    end
    object sqldtsNovoDESCRICAOANVISA: TStringField
      FieldName = 'DESCRICAOANVISA'
      Size = 100
    end
    object sqldtsNovoIMAGEM: TBlobField
      FieldName = 'IMAGEM'
      BlobType = ftOraBlob
      Size = 1
    end
    object sqldtsNovoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsAntigo: TSQLDataSet
    NoMetadata = True
    CommandText = 'SELECT *'#13#10'FROM GSI2.PP_CATALOGO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlcnnTOSHIBA
    Left = 136
    Top = 80
    object sqldtsAntigoMODELOID: TStringField
      FieldName = 'MODELOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object sqldtsAntigoDESCRICAOPORTUGUES: TStringField
      FieldName = 'DESCRICAOPORTUGUES'
      Size = 100
    end
    object sqldtsAntigoDESCRICAOINGLES: TStringField
      FieldName = 'DESCRICAOINGLES'
      Size = 100
    end
    object sqldtsAntigoCOMENTARIO: TStringField
      FieldName = 'COMENTARIO'
      Size = 100
    end
    object sqldtsAntigoGRUPOID: TStringField
      FieldName = 'GRUPOID'
      Size = 5
    end
    object sqldtsAntigoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object sqldtsAntigoFORNECEDORID: TBCDField
      FieldName = 'FORNECEDORID'
      Precision = 8
      Size = 0
    end
    object sqldtsAntigoCUSTOHORAID: TBCDField
      FieldName = 'CUSTOHORAID'
      Precision = 8
      Size = 0
    end
    object sqldtsAntigoREGANVISAID: TStringField
      FieldName = 'REGANVISAID'
      Size = 40
    end
    object sqldtsAntigoIMAGEM: TBlobField
      FieldName = 'IMAGEM'
      BlobType = ftOraBlob
      Size = 1
    end
    object sqldtsAntigoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsAntigo: TDataSource
    DataSet = sqldtsAntigo
    Left = 360
    Top = 80
  end
  object cdsNovo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsprvNovo'
    Left = 280
    Top = 16
    object cdsNovoMODELOID: TStringField
      FieldName = 'MODELOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object cdsNovoDESCRICAOPORTUGUES: TStringField
      FieldName = 'DESCRICAOPORTUGUES'
      Size = 100
    end
    object cdsNovoDESCRICAOINGLES: TStringField
      FieldName = 'DESCRICAOINGLES'
      Size = 100
    end
    object cdsNovoCOMENTARIO: TStringField
      FieldName = 'COMENTARIO'
      Size = 100
    end
    object cdsNovoGRUPOID: TStringField
      FieldName = 'GRUPOID'
      Size = 5
    end
    object cdsNovoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object cdsNovoFORNECEDORID: TBCDField
      FieldName = 'FORNECEDORID'
      Precision = 8
      Size = 0
    end
    object cdsNovoCUSTOHORAID: TBCDField
      FieldName = 'CUSTOHORAID'
      Precision = 8
      Size = 0
    end
    object cdsNovoREGANVISAID: TStringField
      FieldName = 'REGANVISAID'
      Size = 40
    end
    object cdsNovoDESCRICAOANVISA: TStringField
      FieldName = 'DESCRICAOANVISA'
      Size = 100
    end
    object cdsNovoIMAGEM: TBlobField
      FieldName = 'IMAGEM'
      BlobType = ftOraBlob
      Size = 1
    end
    object cdsNovoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvNovo: TDataSetProvider
    DataSet = sqldtsNovo
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 200
    Top = 16
  end
  object dsprvAntigo: TDataSetProvider
    DataSet = sqldtsAntigo
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 208
    Top = 80
  end
  object cdsAntigo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsprvAntigo'
    Left = 288
    Top = 80
    object cdsAntigoMODELOID: TStringField
      FieldName = 'MODELOID'
      Required = True
      Size = 40
    end
    object cdsAntigoDESCRICAOPORTUGUES: TStringField
      FieldName = 'DESCRICAOPORTUGUES'
      Size = 100
    end
    object cdsAntigoDESCRICAOINGLES: TStringField
      FieldName = 'DESCRICAOINGLES'
      Size = 100
    end
    object cdsAntigoCOMENTARIO: TStringField
      FieldName = 'COMENTARIO'
      Size = 100
    end
    object cdsAntigoGRUPOID: TStringField
      FieldName = 'GRUPOID'
      Size = 5
    end
    object cdsAntigoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object cdsAntigoFORNECEDORID: TBCDField
      FieldName = 'FORNECEDORID'
      Precision = 8
      Size = 0
    end
    object cdsAntigoCUSTOHORAID: TBCDField
      FieldName = 'CUSTOHORAID'
      Precision = 8
      Size = 0
    end
    object cdsAntigoREGANVISAID: TStringField
      FieldName = 'REGANVISAID'
      Size = 40
    end
    object cdsAntigoIMAGEM: TBlobField
      FieldName = 'IMAGEM'
      BlobType = ftOraBlob
      Size = 1
    end
    object cdsAntigoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsNovo: TDataSource
    DataSet = cdsNovo
    Left = 360
    Top = 16
  end
end
