object dmGR: TdmGR
  OldCreateOrder = False
  Height = 410
  Width = 437
  object cdsConfigEleicao: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvConfigEleicao'
    RemoteServer = shdcnnGR
    AfterPost = cdsConfigEleicaoAfterPost
    AfterDelete = cdsConfigEleicaoAfterDelete
    OnNewRecord = cdsConfigEleicaoNewRecord
    OnReconcileError = cdsConfigEleicaoReconcileError
    Left = 112
    Top = 8
    object cdsConfigEleicaoTIPOELEICAOATUALD: TBCDField
      FieldName = 'TIPOELEICAOATUALD'
      Required = True
      OnValidate = cdsConfigEleicaoTIPOELEICAOATUALDValidate
      Precision = 8
      Size = 0
    end
    object cdsConfigEleicaoL_DESCRICAOTIPOELEICAO: TStringField
      FieldName = 'L_DESCRICAOTIPOELEICAO'
      Size = 100
    end
    object cdsConfigEleicaoBLOQUEARVOTACAO: TBCDField
      FieldName = 'BLOQUEARVOTACAO'
      Precision = 1
      Size = 0
    end
    object cdsConfigEleicaoDTINICIOVIGENCIA: TSQLTimeStampField
      FieldName = 'DTINICIOVIGENCIA'
    end
    object cdsConfigEleicaoDTFINALVIGENCIA: TSQLTimeStampField
      FieldName = 'DTFINALVIGENCIA'
    end
    object cdsConfigEleicaoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsConfigEleicao: TDataSource
    AutoEdit = False
    DataSet = cdsConfigEleicao
    Left = 200
    Top = 8
  end
  object shdcnnGR: TSharedConnection
    ParentConnection = dmGsi.sckcnnGsi
    ChildName = 'dmSrvAppGR'
    Left = 28
    Top = 8
  end
  object cdsGrupoEleicao: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvGrupoEleicao'
    RemoteServer = shdcnnGR
    AfterPost = cdsGrupoEleicaoAfterPost
    AfterDelete = cdsGrupoEleicaoAfterDelete
    OnNewRecord = cdsGrupoEleicaoNewRecord
    OnReconcileError = cdsConfigEleicaoReconcileError
    Left = 112
    Top = 56
    object cdsGrupoEleicaoGRUPOELEICAOID: TBCDField
      FieldName = 'GRUPOELEICAOID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsGrupoEleicaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsGrupoEleicaoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsGrupoEleicao: TDataSource
    AutoEdit = False
    DataSet = cdsGrupoEleicao
    Left = 200
    Top = 56
  end
  object cdsEleitor: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvEleitor'
    RemoteServer = shdcnnGR
    AfterPost = cdsEleitorAfterPost
    AfterDelete = cdsEleitorAfterDelete
    OnNewRecord = cdsEleitorNewRecord
    OnReconcileError = cdsConfigEleicaoReconcileError
    Left = 112
    Top = 112
    object cdsEleitorELEITORID: TBCDField
      FieldName = 'ELEITORID'
      Required = True
      OnValidate = cdsEleitorELEITORIDValidate
      Precision = 8
      Size = 0
    end
    object cdsEleitorL_CPFCNPJ: TStringField
      FieldName = 'L_CPFCNPJ'
      Size = 18
    end
    object cdsEleitorL_NOMEELEITOR: TStringField
      FieldName = 'L_NOMEELEITOR'
      Size = 100
    end
    object cdsEleitorGRUPOELEICAOID: TBCDField
      FieldName = 'GRUPOELEICAOID'
      OnValidate = cdsEleitorGRUPOELEICAOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsEleitorL_DESCRICAOGRUPOELEICAO: TStringField
      FieldName = 'L_DESCRICAOGRUPOELEICAO'
      Size = 100
    end
    object cdsEleitorELEGIVEL: TBCDField
      FieldName = 'ELEGIVEL'
      Precision = 1
      Size = 0
    end
    object cdsEleitorUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsEleitor: TDataSource
    AutoEdit = False
    DataSet = cdsEleitor
    Left = 200
    Top = 112
  end
  object cdsTipoEleicao: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvTipoEleicao'
    RemoteServer = shdcnnGR
    AfterPost = cdsTipoEleicaoAfterPost
    AfterDelete = cdsTipoEleicaoAfterDelete
    OnNewRecord = cdsTipoEleicaoNewRecord
    OnReconcileError = cdsConfigEleicaoReconcileError
    Left = 112
    Top = 168
    object cdsTipoEleicaoTIPOELEICAOID: TBCDField
      FieldName = 'TIPOELEICAOID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsTipoEleicaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsTipoEleicaoDTINICIOVIGENCIA: TSQLTimeStampField
      FieldName = 'DTINICIOVIGENCIA'
    end
    object cdsTipoEleicaoDTFINALVIGENCIA: TSQLTimeStampField
      FieldName = 'DTFINALVIGENCIA'
    end
    object cdsTipoEleicaoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object cdsVoto: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvVoto'
    RemoteServer = shdcnnGR
    AfterPost = cdsVotoAfterPost
    AfterDelete = cdsVotoAfterDelete
    OnNewRecord = cdsVotoNewRecord
    OnReconcileError = cdsConfigEleicaoReconcileError
    Left = 112
    Top = 224
    object cdsVotoTIPOELEICAOID: TBCDField
      FieldName = 'TIPOELEICAOID'
      Required = True
      OnValidate = cdsVotoTIPOELEICAOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsVotoL_DESCRICAOTIPOELEICAO: TStringField
      FieldName = 'L_DESCRICAOTIPOELEICAO'
      Size = 100
    end
    object cdsVotoELEITORID: TBCDField
      FieldName = 'ELEITORID'
      Required = True
      OnValidate = cdsVotoELEITORIDValidate
      Precision = 8
      Size = 0
    end
    object cdsVotoL_CPFCNPJELEITOR: TStringField
      FieldName = 'L_CPFCNPJELEITOR'
      Size = 18
    end
    object cdsVotoL_NOMEELEITOR: TStringField
      FieldName = 'L_NOMEELEITOR'
      Size = 100
    end
    object cdsVotoGRUPOELEICAOID: TBCDField
      FieldName = 'GRUPOELEICAOID'
      Precision = 8
      Size = 0
    end
    object cdsVotoL_DESCRICAOGRUPOELEICAO: TStringField
      FieldName = 'L_DESCRICAOGRUPOELEICAO'
      Size = 100
    end
    object cdsVotoCANDIDATOID: TBCDField
      FieldName = 'CANDIDATOID'
      OnValidate = cdsVotoCANDIDATOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsVotoL_CPFCNPJCANDIDATO: TStringField
      FieldName = 'L_CPFCNPJCANDIDATO'
      Size = 18
    end
    object cdsVotoL_NOMECANDIDATO: TStringField
      FieldName = 'L_NOMECANDIDATO'
      Size = 100
    end
    object cdsVotoDATAVOTO: TSQLTimeStampField
      FieldName = 'DATAVOTO'
    end
    object cdsVotoNOMEPROGID: TBCDField
      FieldName = 'NOMEPROGID'
      OnValidate = cdsVotoNOMEPROGIDValidate
      Precision = 8
      Size = 0
    end
    object cdsVotoL_DESCRICAONOMEPROG: TStringField
      FieldName = 'L_DESCRICAONOMEPROG'
      ProviderFlags = []
      Size = 100
    end
    object cdsVotoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsTipoEleicao: TDataSource
    AutoEdit = False
    DataSet = cdsTipoEleicao
    Left = 200
    Top = 168
  end
  object dsVoto: TDataSource
    AutoEdit = False
    DataSet = cdsVoto
    Left = 200
    Top = 224
  end
  object cdsNomeProg: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsprvNomeProg'
    RemoteServer = shdcnnGR
    AfterPost = cdsNomeProgAfterPost
    AfterDelete = cdsNomeProgAfterDelete
    OnNewRecord = cdsNomeProgNewRecord
    OnReconcileError = cdsConfigEleicaoReconcileError
    Left = 112
    Top = 280
    object cdsNomeProgNOMEPROGID: TBCDField
      FieldName = 'NOMEPROGID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNomeProgDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsNomeProgUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsNomeProg: TDataSource
    AutoEdit = False
    DataSet = cdsNomeProg
    Left = 200
    Top = 280
  end
end
