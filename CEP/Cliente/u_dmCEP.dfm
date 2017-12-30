object dmCEP: TdmCEP
  OldCreateOrder = False
  Height = 199
  Width = 282
  object cdsPesq: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provPesq'
    RemoteServer = sktcnnCEP
    Left = 216
    Top = 8
    object cdsPesqSIGLAUFID: TStringField
      FieldName = 'SIGLAUFID'
      Size = 2
    end
    object cdsPesqCEPID: TBCDField
      FieldName = 'CEPID'
      DisplayFormat = '00000-000;1;'
      EditFormat = '00000-000;1;'
      Precision = 8
      Size = 0
    end
    object cdsPesqTIPOLOGRADOURO: TStringField
      DisplayWidth = 10
      FieldName = 'TIPOLOGRADOURO'
      Size = 26
    end
    object cdsPesqPREPOSICAO: TStringField
      FieldName = 'PREPOSICAO'
      Size = 3
    end
    object cdsPesqTITULOPATENTE: TStringField
      DisplayWidth = 10
      FieldName = 'TITULOPATENTE'
      Size = 72
    end
    object cdsPesqNOMELOGRADOURO: TStringField
      FieldName = 'NOMELOGRADOURO'
      Size = 72
    end
    object cdsPesqBAIRROLOGRADOURO: TStringField
      FieldName = 'BAIRROLOGRADOURO'
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
    object cdsPesqNOMEPAISPORTUGUES: TStringField
      FieldName = 'NOMEPAISPORTUGUES'
      Size = 72
    end
  end
  object sktcnnCEP: TSocketConnection
    ServerGUID = '{C0D8D0F2-9732-48D3-B392-38D1DD208EA6}'
    ServerName = 'CEPSERV.CEPSRV'
    Host = '127.0.0.1'
    Port = 9000
    Left = 48
    Top = 8
  end
  object dsPesq: TDataSource
    DataSet = cdsPesq
    Left = 136
    Top = 8
  end
  object cdsUF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provUF'
    RemoteServer = sktcnnCEP
    Left = 216
    Top = 120
    object cdsUFSIGLAUFID: TStringField
      FieldName = 'SIGLAUFID'
      Required = True
      Size = 2
    end
    object cdsUFSIGLAPAISID: TStringField
      FieldName = 'SIGLAPAISID'
      Size = 2
    end
    object cdsUFNOMEUF: TStringField
      FieldName = 'NOMEUF'
      Size = 72
    end
  end
end
