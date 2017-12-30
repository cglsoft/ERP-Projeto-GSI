object dmGsi: TdmGsi
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 206
  Width = 223
  object sckcnnGsi: TSocketConnection
    ServerGUID = '{928AC209-D54F-47B3-9679-42D1360500D5}'
    ServerName = 'GSIServidor.SrvAppGSI'
    ObjectBroker = smobbrkGsi
    Left = 28
    Top = 60
  end
  object smobbrkGsi: TSimpleObjectBroker
    Left = 28
    Top = 108
  end
  object cdsDataInspector: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsprvDataInspector'
    RemoteServer = cnnbrkGsi
    Left = 128
    Top = 12
  end
  object cnnbrkGsi: TConnectionBroker
    Connection = sckcnnGsi
    Left = 28
    Top = 12
  end
  object cdsSQL: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    Left = 128
    Top = 112
    object cdsSQLNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsSQLSQL: TStringField
      FieldName = 'SQL'
      Size = 5000
    end
  end
end
