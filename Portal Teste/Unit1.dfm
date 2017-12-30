object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 340
  ClientWidth = 553
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    553
    340)
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 8
    Top = 19
    Width = 135
    Height = 13
    Caption = 'Corpo da Mensagem (HTML)'
  end
  object btnAttachCorpo: TBitBtn
    Left = 149
    Top = 16
    Width = 37
    Height = 21
    Anchors = [akTop, akRight]
    Caption = '...'
    TabOrder = 0
    OnClick = btnAttachCorpoClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000120B0000120B00001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
      DADAADADA70007ADADADDADA70DAD07ADADAADAD0DA0AD0DADADDADA0A0A0A0A
      DADAADAD0D0D0D0DADADDADA0A0A0A0ADADAADAD0D0D0D0DADADDADA0A0A0A0A
      DADAADAD0D0D0D0DADADDADA0A0A0A0ADADAADAD0D0D0D0DADADDADADA0A0A0A
      DADAADADAD0DAD0DADADDADADAD000DADADAADADADADADADADAD}
  end
  object WebBrowser1: TWebBrowser
    Left = 8
    Top = 43
    Width = 491
    Height = 363
    TabOrder = 1
    ControlData = {
      4C000000BF320000842500000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object Button1: TButton
    Left = 448
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
    OnClick = Button1Click
  end
  object opdlgAttachFile: TOpenDialog
    Options = [ofReadOnly, ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 265
    Top = 4
  end
  object opdlgCorpoMSG: TOpenDialog
    Options = [ofReadOnly, ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 377
    Top = 4
  end
  object sqldtsConfig: TSQLDataSet
    SchemaName = 'GSI'
    CommandText = 'SELECT * FROM  AS_CONFIG'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlcnnTOSHIBA
    Left = 496
    Top = 56
    object sqldtsConfigEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      Precision = 8
      Size = 0
    end
    object sqldtsConfigTIPOOSID: TStringField
      FieldName = 'TIPOOSID'
      Size = 1
    end
    object sqldtsConfigFILIALID: TBCDField
      FieldName = 'FILIALID'
      Precision = 8
      Size = 0
    end
    object sqldtsConfigTIPOOSGARANTIAID: TStringField
      FieldName = 'TIPOOSGARANTIAID'
      Size = 1
    end
    object sqldtsConfigSTATUS: TBCDField
      FieldName = 'STATUS'
      Precision = 1
      Size = 0
    end
    object sqldtsConfigDIRETORIOEXPORT: TStringField
      FieldName = 'DIRETORIOEXPORT'
      Size = 40
    end
    object sqldtsConfigDIASVALIDADEOS: TBCDField
      FieldName = 'DIASVALIDADEOS'
      Precision = 8
      Size = 0
    end
    object sqldtsConfigMESATUAL: TBCDField
      FieldName = 'MESATUAL'
      Precision = 8
      Size = 0
    end
    object sqldtsConfigVLRDIARIA: TBCDField
      FieldName = 'VLRDIARIA'
      Precision = 14
      Size = 2
    end
    object sqldtsConfigVLRREFEICOES: TBCDField
      FieldName = 'VLRREFEICOES'
      Precision = 14
      Size = 2
    end
    object sqldtsConfigVLRKM: TBCDField
      FieldName = 'VLRKM'
      Precision = 14
      Size = 2
    end
    object sqldtsConfigKMID: TBCDField
      FieldName = 'KMID'
      Precision = 8
      Size = 0
    end
    object sqldtsConfigADIANTAMENTOID: TBCDField
      FieldName = 'ADIANTAMENTOID'
      Precision = 8
      Size = 0
    end
    object sqldtsConfigMEMOPAGARID: TBCDField
      FieldName = 'MEMOPAGARID'
      Precision = 8
      Size = 0
    end
    object sqldtsConfigMEMORECEBERID: TBCDField
      FieldName = 'MEMORECEBERID'
      Precision = 8
      Size = 0
    end
    object sqldtsConfigHORASCREDID: TBCDField
      FieldName = 'HORASCREDID'
      Precision = 8
      Size = 0
    end
    object sqldtsConfigPP_MARGEMCABECALHO: TBCDField
      FieldName = 'PP_MARGEMCABECALHO'
      Precision = 8
      Size = 0
    end
    object sqldtsConfigPP_MARGEMPARAGRAFO: TBCDField
      FieldName = 'PP_MARGEMPARAGRAFO'
      Precision = 8
      Size = 0
    end
    object sqldtsConfigPP_ESTILOFONTE: TStringField
      FieldName = 'PP_ESTILOFONTE'
      Size = 100
    end
    object sqldtsConfigPP_TAMANHOFONTE: TBCDField
      FieldName = 'PP_TAMANHOFONTE'
      Precision = 8
      Size = 0
    end
    object sqldtsConfigPP_IMPRIMIR: TBCDField
      FieldName = 'PP_IMPRIMIR'
      Precision = 1
      Size = 0
    end
    object sqldtsConfigPP_VISUALIZAR: TBCDField
      FieldName = 'PP_VISUALIZAR'
      Precision = 1
      Size = 0
    end
    object sqldtsConfigPP_DIRETORIODESTINO: TStringField
      FieldName = 'PP_DIRETORIODESTINO'
      Size = 250
    end
    object sqldtsConfigPP_NOMEGERENTE: TStringField
      FieldName = 'PP_NOMEGERENTE'
      Size = 100
    end
    object sqldtsConfigPP_CARGO: TStringField
      FieldName = 'PP_CARGO'
      Size = 100
    end
    object sqldtsConfigRS_DATAFECHAMENTO: TSQLTimeStampField
      FieldName = 'RS_DATAFECHAMENTO'
    end
    object sqldtsConfigHTMLPORTAL: TMemoField
      FieldName = 'HTMLPORTAL'
      BlobType = ftOraClob
      Size = 1
    end
  end
  object dsprvConfig: TDataSetProvider
    DataSet = sqldtsConfig
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 496
    Top = 104
  end
  object cdsConfig: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsprvConfig'
    Left = 496
    Top = 160
    object cdsConfigEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      Precision = 8
      Size = 0
    end
    object cdsConfigTIPOOSID: TStringField
      FieldName = 'TIPOOSID'
      Size = 1
    end
    object cdsConfigFILIALID: TBCDField
      FieldName = 'FILIALID'
      Precision = 8
      Size = 0
    end
    object cdsConfigTIPOOSGARANTIAID: TStringField
      FieldName = 'TIPOOSGARANTIAID'
      Size = 1
    end
    object cdsConfigSTATUS: TBCDField
      FieldName = 'STATUS'
      Precision = 1
      Size = 0
    end
    object cdsConfigDIRETORIOEXPORT: TStringField
      FieldName = 'DIRETORIOEXPORT'
      Size = 40
    end
    object cdsConfigDIASVALIDADEOS: TBCDField
      FieldName = 'DIASVALIDADEOS'
      Precision = 8
      Size = 0
    end
    object cdsConfigMESATUAL: TBCDField
      FieldName = 'MESATUAL'
      Precision = 8
      Size = 0
    end
    object cdsConfigVLRDIARIA: TBCDField
      FieldName = 'VLRDIARIA'
      Precision = 14
      Size = 2
    end
    object cdsConfigVLRREFEICOES: TBCDField
      FieldName = 'VLRREFEICOES'
      Precision = 14
      Size = 2
    end
    object cdsConfigVLRKM: TBCDField
      FieldName = 'VLRKM'
      Precision = 14
      Size = 2
    end
    object cdsConfigKMID: TBCDField
      FieldName = 'KMID'
      Precision = 8
      Size = 0
    end
    object cdsConfigADIANTAMENTOID: TBCDField
      FieldName = 'ADIANTAMENTOID'
      Precision = 8
      Size = 0
    end
    object cdsConfigMEMOPAGARID: TBCDField
      FieldName = 'MEMOPAGARID'
      Precision = 8
      Size = 0
    end
    object cdsConfigMEMORECEBERID: TBCDField
      FieldName = 'MEMORECEBERID'
      Precision = 8
      Size = 0
    end
    object cdsConfigHORASCREDID: TBCDField
      FieldName = 'HORASCREDID'
      Precision = 8
      Size = 0
    end
    object cdsConfigPP_MARGEMCABECALHO: TBCDField
      FieldName = 'PP_MARGEMCABECALHO'
      Precision = 8
      Size = 0
    end
    object cdsConfigPP_MARGEMPARAGRAFO: TBCDField
      FieldName = 'PP_MARGEMPARAGRAFO'
      Precision = 8
      Size = 0
    end
    object cdsConfigPP_ESTILOFONTE: TStringField
      FieldName = 'PP_ESTILOFONTE'
      Size = 100
    end
    object cdsConfigPP_TAMANHOFONTE: TBCDField
      FieldName = 'PP_TAMANHOFONTE'
      Precision = 8
      Size = 0
    end
    object cdsConfigPP_IMPRIMIR: TBCDField
      FieldName = 'PP_IMPRIMIR'
      Precision = 1
      Size = 0
    end
    object cdsConfigPP_VISUALIZAR: TBCDField
      FieldName = 'PP_VISUALIZAR'
      Precision = 1
      Size = 0
    end
    object cdsConfigPP_DIRETORIODESTINO: TStringField
      FieldName = 'PP_DIRETORIODESTINO'
      Size = 250
    end
    object cdsConfigPP_NOMEGERENTE: TStringField
      FieldName = 'PP_NOMEGERENTE'
      Size = 100
    end
    object cdsConfigPP_CARGO: TStringField
      FieldName = 'PP_CARGO'
      Size = 100
    end
    object cdsConfigRS_DATAFECHAMENTO: TSQLTimeStampField
      FieldName = 'RS_DATAFECHAMENTO'
    end
    object cdsConfigHTMLPORTAL: TMemoField
      FieldName = 'HTMLPORTAL'
      BlobType = ftOraClob
      Size = 1
    end
  end
  object dsConfig: TDataSource
    AutoEdit = False
    DataSet = cdsConfig
    Left = 496
    Top = 208
  end
  object sqlcnnTOSHIBA: TSQLConnection
    ConnectionName = 'GSI'
    DriverName = 'Oracle'
    GetDriverFunc = 'getSQLDriverORACLE'
    LibraryName = 'dbxora30.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Oracle'
      'DataBase=TOSHIBA'
      'User_Name=GSI'
      'Password=novaera6'
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
    Connected = True
    Left = 400
    Top = 64
  end
end
