object dmCP: TdmCP
  OldCreateOrder = False
  Left = 192
  Top = 114
  Height = 207
  Width = 217
  object shdcnnCP: TSharedConnection
    ParentConnection = dmGsi.sckcnnGsi
    ChildName = 'dmSrvAppCP'
    Left = 12
    Top = 4
  end
  object dsPesquisa: TDataSource
    DataSet = cdsPesquisa
    Left = 152
    Top = 8
  end
  object cdsPesquisa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provPesq'
    RemoteServer = shdcnnCP
    Left = 88
    Top = 8
    object cdsPesquisaSIGLAUFID: TStringField
      FieldName = 'SIGLAUFID'
      Size = 2
    end
    object cdsPesquisaCEPID: TBCDField
      FieldName = 'CEPID'
      DisplayFormat = '00000-000;1;'
      EditFormat = '00000-000;1;'
      Precision = 8
      Size = 0
    end
    object cdsPesquisaTIPOLOGRADOURO: TStringField
      DisplayWidth = 10
      FieldName = 'TIPOLOGRADOURO'
      Size = 26
    end
    object cdsPesquisaPREPOSICAO: TStringField
      FieldName = 'PREPOSICAO'
      Size = 3
    end
    object cdsPesquisaTITULOPATENTE: TStringField
      DisplayWidth = 10
      FieldName = 'TITULOPATENTE'
      Size = 72
    end
    object cdsPesquisaNOMELOGRADOURO: TStringField
      FieldName = 'NOMELOGRADOURO'
      Size = 72
    end
    object cdsPesquisaBAIRROLOGRADOURO: TStringField
      FieldName = 'BAIRROLOGRADOURO'
      Size = 72
    end
    object cdsPesquisaNOMELOCALIDADE: TStringField
      FieldName = 'NOMELOCALIDADE'
      Size = 72
    end
    object cdsPesquisaNOMEUF: TStringField
      FieldName = 'NOMEUF'
      Size = 72
    end
    object cdsPesquisaNOMEPAISPORTUGUES: TStringField
      FieldName = 'NOMEPAISPORTUGUES'
      Size = 72
    end
  end
end
